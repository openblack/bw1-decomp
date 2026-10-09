#define LH_MULTIPLAYER_EXPORTS
#include "LHFileDownload.h"

#include <io.h>
#include <stdio.h>
#include <string.h>
#include <windows.h>
#include <mmsystem.h>

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <zlib/zlib.h>

#define LH_FILE_DOWNLOAD_PARTIAL_FORMAT "%s_curr"

#define LH_FILE_DOWNLOAD_ROUND_UP(size, unit) ((size) / (unit) + ((size) % (unit) != 0))

LHFileDownload::LHFileDownload()
{
	BytesDownloaded = 0;
	TotalSize = 0;
	Http = NULL;
	Buffer = NULL;
	State = LH_FILE_DOWNLOAD_STATE_IDLE;
	Filename = NULL;
	Compressed = false;
	BytesReceived = 0;
	LastSpeedBytes = 0;
	LastSpeedTime = 0;
	Redirections = 0;
	Redirected = false;
}

LHFileDownload::~LHFileDownload()
{
	if (Filename != NULL)
	{
		delete Filename;
		Filename = NULL;
	}
	StopDownload();
}

LH_FILE_DOWNLOAD_RETURNS LHFileDownload::DownloadFile(char* host, unsigned short port, char* path, char* file,
                                                      char* local_file, bool32_t compressed)
{
	if (State == LH_FILE_DOWNLOAD_STATE_DOWNLOADING)
	{
		return LH_FILE_DOWNLOAD_IN_PROGRESS;
	}
	if (State == LH_FILE_DOWNLOAD_STATE_WAITING)
	{
		return LH_FILE_DOWNLOAD_NOT_ACTIVE;
	}

	Compressed = compressed;
	State = LH_FILE_DOWNLOAD_STATE_IDLE;
	if (Filename == NULL)
	{
		Filename = new char[LH_FILE_DOWNLOAD_FILENAME_LENGTH];
	}
	StopDownload();
	strcpy(Filename, local_file);

	Http = new LHHttp2;
	if (Http->Open(host, port) != LH_OK)
	{
		return LH_FILE_DOWNLOAD_CONNECT_FAILED;
	}
	if (Http->PrepareRequest(HTTP_REQUEST_TYPE_GET, LHSPrintf("%s%s", path, file), NULL, NULL, 0) !=
	    LH_HTTP_STATUS_REQUEST_PREPARED)
	{
		StopDownload();
		return LH_FILE_DOWNLOAD_CONNECT_FAILED;
	}

	Resume = false;
	Port = 0;
	RequestSize = 0;
	if (!Resume)
	{
		BytesDownloaded = 0;
	}
	TotalSize = 0;
	State = LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST;
	LastSpeedTime = timeGetTime();
	LastSpeedBytes = 0;
	FileSize = 0;
	RequestSize = 0;
	TransferSpeed = 0.0f;
	return LH_FILE_DOWNLOAD_OK;
}

float LHFileDownload::GetPercentageDownloaded()
{
	if (TotalSize == (unsigned long)-1)
	{
		return 0.0f;
	}
	if (TotalSize == 0)
	{
		return 0.0f;
	}
	if (BytesDownloaded == TotalSize)
	{
		return 1.0f;
	}
	return 1.0f / TotalSize * BytesDownloaded;
}

LH_FILE_DOWNLOAD_RETURNS LHFileDownload::Refresh()
{
	unsigned long sectorsPerCluster;
	unsigned long bytesPerSector;
	unsigned long freeClusters;
	unsigned long totalClusters;

	if (Http == NULL || State == LH_FILE_DOWNLOAD_STATE_IDLE)
	{
		return LH_FILE_DOWNLOAD_NOT_ACTIVE;
	}

	if (State == LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST)
	{
		if (Redirected == true)
		{
			char*          host = new char[strlen(HeaderStatus.GetLocationHost()) + 1];
			char*          uri = new char[strlen(HeaderStatus.GetLocationURI()) + 1];
			unsigned short port = HeaderStatus.GetLocationPort();
			strcpy(host, HeaderStatus.GetLocationHost());
			strcpy(uri, HeaderStatus.GetLocationURI());
			StopDownload();
			if (Redirections > LH_FILE_DOWNLOAD_MAX_REDIRECTIONS)
			{
				return LH_FILE_DOWNLOAD_REQUEST_FAILED;
			}

			Http = new LHHttp2;
			Http->Open(host, port);
			delete host;
			if (Http->PrepareRequest(HTTP_REQUEST_TYPE_GET, LHSPrintf("%s", uri), NULL, NULL, 0) !=
			    LH_HTTP_STATUS_REQUEST_PREPARED)
			{
				delete uri;
				HeaderStatus.Reset();
				StopDownload();
				return LH_FILE_DOWNLOAD_CONNECT_FAILED;
			}
			delete uri;
			Resume = false;
			HeaderStatus.Reset();
			Redirections++;
			Redirected = false;
		}

		switch (Http->SendRequestAsync())
		{
		case LH_HTTP_STATUS_TIMED_OUT:
			State = LH_FILE_DOWNLOAD_STATE_IDLE;
			StopDownload();
			return LH_FILE_DOWNLOAD_TIMED_OUT;
		case LH_HTTP_STATUS_SENDING:
			State = LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST;
			return LH_FILE_DOWNLOAD_IN_PROGRESS;
		case LH_HTTP_STATUS_REQUEST_SENT:
			State = LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER;
			return LH_FILE_DOWNLOAD_IN_PROGRESS;
		default:
			State = LH_FILE_DOWNLOAD_STATE_IDLE;
			StopDownload();
			return LH_FILE_DOWNLOAD_REQUEST_FAILED;
		}
	}
	else if (State == LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER)
	{
		switch (Http->ReceiveHeaderAsync())
		{
		case LH_HTTP_STATUS_TIMED_OUT:
			State = LH_FILE_DOWNLOAD_STATE_IDLE;
			StopDownload();
			return LH_FILE_DOWNLOAD_TIMED_OUT;
		case LH_HTTP_STATUS_RECEIVING_HEADER:
			State = LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER;
			return LH_FILE_DOWNLOAD_IN_PROGRESS;
		case LH_HTTP_STATUS_HEADER_RECEIVED:
			break;
		default:
			State = LH_FILE_DOWNLOAD_STATE_IDLE;
			StopDownload();
			return LH_FILE_DOWNLOAD_REQUEST_FAILED;
		}

		Http->GetHeader(HeaderStatus);
		if (HeaderStatus.Status != LH_HTTP_CODE_OK &&
		    (Resume != true || HeaderStatus.Status != LH_HTTP_CODE_PARTIAL_CONTENT))
		{
			if (HeaderStatus.Status >= LH_HTTP_CODE_MULTIPLE_CHOICES &&
			    HeaderStatus.Status < LH_HTTP_CODE_BAD_REQUEST && HeaderStatus.Location != NULL)
			{
				Redirected = true;
				State = LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST;
				return LH_FILE_DOWNLOAD_IN_PROGRESS;
			}
			HeaderStatus.Reset();
			State = LH_FILE_DOWNLOAD_STATE_IDLE;
			return LH_FILE_DOWNLOAD_REQUEST_FAILED;
		}

		HeaderStatus.Reset();
		TotalSize = HeaderStatus.ContentLength;
		BytesReceived = 0;
		BytesDownloaded = 0;
		if (TotalSize != (unsigned long)-1)
		{
			GetDiskFreeSpace(NULL, &sectorsPerCluster, &bytesPerSector, &freeClusters, &totalClusters);
			unsigned long sectors = LH_FILE_DOWNLOAD_ROUND_UP(BytesDownloaded, bytesPerSector);
			if (LH_FILE_DOWNLOAD_ROUND_UP(sectors, sectorsPerCluster) >= freeClusters)
			{
				Http->Close();
				delete Http;
				Http = NULL;
				State = LH_FILE_DOWNLOAD_STATE_IDLE;
				return LH_FILE_DOWNLOAD_DISK_FULL;
			}
		}
		Redirected = false;
		Redirections = 0;
		State = LH_FILE_DOWNLOAD_STATE_DOWNLOADING;
		return LH_FILE_DOWNLOAD_IN_PROGRESS;
	}
	else if (State == LH_FILE_DOWNLOAD_STATE_DOWNLOADING)
	{
		LH_HTTP_STATUS status = Http->ReceiveDocumentAsync();
		BytesDownloaded = Http->GetReadSize();
		BytesReceived = BytesDownloaded;

		float now = timeGetTime();
		float elapsed = (now - LastSpeedTime) * 0.001f;
		if (elapsed > LH_FILE_DOWNLOAD_SPEED_INTERVAL)
		{
			if (elapsed != 0.0f)
			{
				TransferSpeed = ((float)BytesDownloaded - (float)LastSpeedBytes) * 0.001f / elapsed;
			}
			LastSpeedBytes = BytesDownloaded;
			LastSpeedTime = now;
		}

		switch (status)
		{
		case LH_HTTP_STATUS_TIMED_OUT:
			StopDownload();
			return LH_FILE_DOWNLOAD_TIMED_OUT;
		case LH_HTTP_STATUS_RECEIVING:
			State = LH_FILE_DOWNLOAD_STATE_DOWNLOADING;
			return LH_FILE_DOWNLOAD_IN_PROGRESS;
		case LH_HTTP_STATUS_RECEIVED:
			break;
		default:
			StopDownload();
			return LH_FILE_DOWNLOAD_RECEIVE_FAILED;
		}

		FileSize = Http->GetDocumentSize();
		if (Buffer != NULL)
		{
			delete Buffer;
		}
		if (FileSize > 0)
		{
			Buffer = new char[FileSize];

			GetDiskFreeSpace(NULL, &sectorsPerCluster, &bytesPerSector, &freeClusters, &totalClusters);
			unsigned long sectors = LH_FILE_DOWNLOAD_ROUND_UP(FileSize, bytesPerSector);
			if (LH_FILE_DOWNLOAD_ROUND_UP(sectors, sectorsPerCluster) >= freeClusters)
			{
				Http->Close();
				delete Http;
				Http = NULL;
				State = LH_FILE_DOWNLOAD_STATE_IDLE;
				return LH_FILE_DOWNLOAD_DISK_FULL;
			}

			Http->GetDocument(Buffer);
			if (Resume)
			{
				FILE* fp = fopen(LHSPrintf(LH_FILE_DOWNLOAD_PARTIAL_FORMAT, Filename), "ab");
				if (fp == NULL)
				{
					delete Buffer;
					State = LH_FILE_DOWNLOAD_STATE_IDLE;
					StopDownload();
					return LH_FILE_DOWNLOAD_FILE_ERROR;
				}
				fwrite(Buffer, 1, FileSize, fp);
				fclose(fp);

				fp = fopen(LHSPrintf(LH_FILE_DOWNLOAD_PARTIAL_FORMAT, Filename), "rb");
				if (fp == NULL)
				{
					delete Buffer;
					State = LH_FILE_DOWNLOAD_STATE_IDLE;
					StopDownload();
					return LH_FILE_DOWNLOAD_FILE_ERROR;
				}
				fseek(fp, 0, SEEK_END);
				FileSize = ftell(fp);
				fseek(fp, 0, SEEK_SET);
				delete Buffer;
				Buffer = new char[FileSize];
				fread(Buffer, FileSize, 1, fp);
				fclose(fp);
			}
			_unlink(LHSPrintf(LH_FILE_DOWNLOAD_PARTIAL_FORMAT, Filename));

			if (Compressed)
			{
				uLongf size;
				memcpy(&size, Buffer, sizeof(size));
				char* data = new char[size];
				if (uncompress((Bytef*)data, &size, (Bytef*)Buffer + sizeof(size), FileSize - sizeof(size)) > Z_OK)
				{
					State = LH_FILE_DOWNLOAD_STATE_IDLE;
					StopDownload();
					return LH_FILE_DOWNLOAD_DECOMPRESS_FAILED;
				}
				char* compressedData = Buffer;
				Buffer = data;
				FileSize = size;
				delete compressedData;
			}

			Http->Close();
			delete Http;
			Http = NULL;
			State = LH_FILE_DOWNLOAD_STATE_IDLE;

			_unlink(Filename);
			FILE* fp = fopen(Filename, "wb+");
			if (fp == NULL)
			{
				delete Buffer;
				Buffer = NULL;
				return LH_FILE_DOWNLOAD_FILE_ERROR;
			}
			fwrite(Buffer, 1, FileSize, fp);
			fclose(fp);
			delete Buffer;
			Buffer = NULL;
			return LH_FILE_DOWNLOAD_COMPLETE;
		}
		StopDownload();
		State = LH_FILE_DOWNLOAD_STATE_IDLE;
		return LH_FILE_DOWNLOAD_RECEIVE_FAILED;
	}

	return LH_FILE_DOWNLOAD_OK;
}

void LHFileDownload::StopDownload()
{
	if (Buffer != NULL)
	{
		delete Buffer;
		Buffer = NULL;
	}

	if (State == LH_FILE_DOWNLOAD_STATE_DOWNLOADING || State == LH_FILE_DOWNLOAD_STATE_WAITING ||
	    State == LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER || State == LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST)
	{
		if (State == LH_FILE_DOWNLOAD_STATE_DOWNLOADING && !Resume)
		{
			unsigned long size = Http->GetDocumentSize();
			char*         document = new char[size];
			Http->GetDocument(document);
			_unlink(LHSPrintf(LH_FILE_DOWNLOAD_PARTIAL_FORMAT, Filename));
			FILE* fp = fopen(LHSPrintf(LH_FILE_DOWNLOAD_PARTIAL_FORMAT, Filename), "wb+");
			if (fp != NULL)
			{
				fwrite(document, 1, size, fp);
				fclose(fp);
			}
			delete document;
		}

		State = LH_FILE_DOWNLOAD_STATE_IDLE;
		if (Http != NULL)
		{
			Http->Close();
			delete Http;
			Http = NULL;
		}
		if (Buffer != NULL)
		{
			delete Buffer;
			Buffer = NULL;
		}
		LastSpeedBytes = 0;
		LastSpeedTime = 0;
		RequestSize = 0;
		FileSize = 0;
		BytesReceived = 0;
		Redirections = 0;
		Redirected = false;
		Resume = false;
		HeaderStatus.Reset();
	}
}
