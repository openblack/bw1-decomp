#include "MPFEDownloads.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>            /* For LHOSFile::Exists */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For LHLinkedListIterator */

#include "ColourConstants.h"     /* For White */
#include "LandscapeDetails.h"    /* For struct LandscapeDetails */
#include "MPFEData.h"            /* For MPFEData::Data */
#include "MPFEDatabase.h"        /* For MPFEDatabase::Landscapes */
#include "MPFEMapDownload.h"     /* For class MPFEMapDownload */
#include "MPFEMapErrorMessage.h" /* For MPFEMapErrorMessage */
#include "MPFEPlayerDetails.h"   /* For struct MPFEPlayerDetails */
#include "MPFEThumbDownload.h"   /* For class MPFEThumbDownload */

MPFEDownloads::MPFEDownloads() {}

MPFEDownloads::~MPFEDownloads()
{
	FileDownload.StopDownload();
	Downloading = false;
	FileNumber = 0;
	TransferSpeed = 0.0f;
	PercentageDownloaded = 0.0f;
}

bool MPFEDownloads::DownloadFile(LandscapeDetails* details)
{
	FileDownload.StopDownload();
	if (details == NULL)
	{
		return false;
	}

	char fileName[0x200];
	sprintf(fileName, "%s%s", details->FileName, dynamic_cast<MPFEMapDownload*>(this) != NULL ? ".map" : ".thm");
	sprintf(LocalFileName, "%s%s", MPFEDatabase::OnlineMapsPath, fileName);
	if (LHOSFile::Exists(LocalFileName) == LH_FILE_RESULT_OK)
	{
		Downloading = false;
		FileCompleted();
		FileNumber = 0;
		return true;
	}

	if (!details->FromDatabase)
	{
		return false;
	}

	char host[0x100];
	strcpy(host, details->ServerAddress);
	int i = 0;
	while (host[i] != ':')
	{
		i++;
	}
	host[i] = '\0';
	unsigned short port = atoi(&host[i + 1]);

	LH_FILE_DOWNLOAD_RETURNS result =
		FileDownload.DownloadFile(host, port, details->ServerPath, fileName, LocalFileName, true);
	if (result != LH_FILE_DOWNLOAD_REDIRECTED && result != LH_FILE_DOWNLOAD_OK &&
	    result != LH_FILE_DOWNLOAD_IN_PROGRESS)
	{
		return false;
	}
	Downloading = true;
	return true;
}

void MPFEDownloads::FileCompleted() {}

void MPFEDownloads::FileError() {}

void MPFEThumbDownload::GetFileNumber(unsigned long number)
{
	FileNumber = number;
	for (LHLinkedListIterator<LandscapeDetails*> it = MPFEDatabase::Landscapes.GetStart(); it; it++)
	{
		if (it.Get()->ID == number)
		{
			MPFEData::Data.D_FoundMapSetDetails(number);
			if (!DownloadFile(it.Get()))
			{
				FileError();
				return;
			}
			FileNumber = number;
			return;
		}
	}
	FileError();
}

void MPFEThumbDownload::Refresh()
{
	if (!Downloading)
	{
		return;
	}

	LH_FILE_DOWNLOAD_RETURNS result = FileDownload.Refresh();
	if (result == LH_FILE_DOWNLOAD_IN_PROGRESS || result == LH_FILE_DOWNLOAD_OK)
	{
		TransferSpeed = FileDownload.GetTransferSpeed();
		PercentageDownloaded = FileDownload.GetPercentageDownloaded();
	}
	else if (result == LH_FILE_DOWNLOAD_COMPLETE)
	{
		FileCompleted();
		Downloading = false;
		FileNumber = 0;
	}
	else if (result == LH_FILE_DOWNLOAD_REDIRECTED)
	{
		PercentageDownloaded = 0.0f;
		TransferSpeed = 0.0f;
	}
	else
	{
		Downloading = false;
		FileNumber = 0;
		FileError();
	}
}

void MPFEThumbDownload::Stop()
{
	FileDownload.StopDownload();
	Downloading = false;
}

void MPFEThumbDownload::FileCompleted()
{
	MPFEData::Data.D_GotThumbnail();
}

void MPFEThumbDownload::FileError()
{
	MPFEData::Data.D2A_CouldNotDownloadThumb();
}

MPFEMapDownload::MPFEMapDownload()
{
	RepopulatedDatabase = false;
}

void MPFEMapDownload::GetFileNumber(unsigned long number)
{
	FileNumber = number;
	bool found = false;
	for (LHLinkedListIterator<LandscapeDetails*> it = MPFEDatabase::Landscapes.GetStart(); it; it++)
	{
		if (it.Get()->ID == number)
		{
			if (!DownloadFile(it.Get()))
			{
				if (RepopulatedDatabase)
				{
					FileError();
					return;
				}
				found = true;
				RepopulatedDatabase = found;
			}
			else
			{
				FileNumber = number;
				return;
			}
		}
	}
	if (RepopulatedDatabase && !found)
	{
		FileError();
		return;
	}
	RepopulatedDatabase = true;
	RepopulateDatabase();
}

void MPFEMapDownload::Refresh()
{
	if (Querying)
	{
		RefreshDatabase();
		return;
	}
	if (!Downloading)
	{
		return;
	}

	LH_FILE_DOWNLOAD_RETURNS result = FileDownload.Refresh();
	if (result == LH_FILE_DOWNLOAD_IN_PROGRESS || result == LH_FILE_DOWNLOAD_OK)
	{
		TransferSpeed = FileDownload.GetTransferSpeed();
		PercentageDownloaded = FileDownload.GetPercentageDownloaded();
	}
	else if (result == LH_FILE_DOWNLOAD_COMPLETE)
	{
		FileCompleted();
		Downloading = false;
		FileNumber = 0;
	}
	else if (result == LH_FILE_DOWNLOAD_REDIRECTED)
	{
		PercentageDownloaded = 0.0f;
		TransferSpeed = 0.0f;
	}
	else if (RepopulatedDatabase)
	{
		Downloading = false;
		FileNumber = 0;
		FileError();
	}
	else
	{
		RepopulateDatabase();
		RepopulatedDatabase = true;
	}
}

void MPFEMapDownload::Stop()
{
	FileNumber = 0;
	FileDownload.StopDownload();
	RepopulatedDatabase = false;
	Downloading = false;
	StopQuerying();
}

void MPFEMapDownload::FileCompleted()
{
	MPFEData::Data.D_GotMapfile();
	MPFEData::Data.D2A_RefreshMaps();
	RepopulatedDatabase = false;
}

void MPFEMapDownload::FileError()
{
	Stop();
	MPFEData::Data.D2A_CouldNotDownloadMap();
	if (!MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		MPFEMapErrorMessage error;
		error.Send(MPFEData::Data.GetHostPlayer());
	}
	RepopulatedDatabase = false;
}

void MPFEMapDownload::DatabaseError()
{
	MPFEDatabase::DatabaseError();
	MPFEData::Data.D2A_CouldNotQueryDatabase();
	if (RepopulatedDatabase && !MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		MPFEMapErrorMessage error;
		error.Send(MPFEData::Data.GetHostPlayer());
	}
	Stop();
}

void MPFEMapDownload::DatabaseComplete()
{
	MPFEData::Data.D_FoundMapSetDetails(FileNumber);
	MPFEDatabase::DatabaseComplete();
	if (RepopulatedDatabase)
	{
		GetFileNumber(FileNumber);
	}
}
