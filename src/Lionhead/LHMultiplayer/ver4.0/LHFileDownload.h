#ifndef BW1_DECOMP_LH_FILE_DOWNLOAD_INCLUDED_H
#define BW1_DECOMP_LH_FILE_DOWNLOAD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHHttp.h" /* For struct LHHttpHeaderStatus */
#include "LHMultiplayerExport.h"

class LHHttp2;

enum
{
	LH_FILE_DOWNLOAD_FILENAME_LENGTH = 400,
	LH_FILE_DOWNLOAD_MAX_REDIRECTIONS = 10,
	LH_FILE_DOWNLOAD_SPEED_INTERVAL = 4,
};

enum LH_FILE_DOWNLOAD_STATE
{
	LH_FILE_DOWNLOAD_STATE_IDLE = 0,
	LH_FILE_DOWNLOAD_STATE_WAITING = 1,
	LH_FILE_DOWNLOAD_STATE_DOWNLOADING = 2,
	LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST = 3,
	LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER = 4,
};

enum LH_FILE_DOWNLOAD_RETURNS
{
	LH_FILE_DOWNLOAD_OK = 0,
	LH_FILE_DOWNLOAD_COMPLETE = 1,
	LH_FILE_DOWNLOAD_CONNECT_FAILED = 3,
	LH_FILE_DOWNLOAD_DISK_FULL = 4,
	LH_FILE_DOWNLOAD_IN_PROGRESS = 5,
	LH_FILE_DOWNLOAD_NOT_ACTIVE = 6,
	LH_FILE_DOWNLOAD_TIMED_OUT = 7,
	LH_FILE_DOWNLOAD_REQUEST_FAILED = 8,
	LH_FILE_DOWNLOAD_RECEIVE_FAILED = 9,
	LH_FILE_DOWNLOAD_DECOMPRESS_FAILED = 10,
	LH_FILE_DOWNLOAD_FILE_ERROR = 11,
};

class LH_MULTIPLAYER_API LHFileDownload
{
public:
	LH_FILE_DOWNLOAD_STATE State;
	unsigned long          Status;          /* 0x4 */
	unsigned long          FileSize;        /* 0x8 */
	unsigned long          RequestSize;     /* 0xc */
	char*                  Buffer;          /* 0x10 */
	char*                  Filename;        /* 0x14 */
	LHHttp2*               Http;            /* 0x18 */
	unsigned short         Port;            /* 0x1c */
	unsigned long          TotalSize;       /* 0x20 */
	unsigned long          BytesDownloaded; /* 0x24 */
	bool32_t               Compressed;      /* 0x28 */
	unsigned long          LastSpeedTime;   /* 0x2c */
	unsigned long          LastSpeedBytes;  /* 0x30 */
	float                  TransferSpeed;   /* 0x34 */
	bool32_t               Resume;          /* 0x38 */
	unsigned long          BytesReceived;   /* 0x3c */
	unsigned short         Redirections;    /* 0x40 */
	bool32_t               Redirected;      /* 0x44 */
	LHHttpHeaderStatus     HeaderStatus;    /* 0x48 */

	// BW1W120 100084a0 BW1M119 inlined
	bool32_t IsReceivingHeader() { return State == LH_FILE_DOWNLOAD_STATE_RECEIVING_HEADER; }
	// BW1W120 100084b0 BW1M119 inlined
	bool32_t IsSendingRequest() { return State == LH_FILE_DOWNLOAD_STATE_SENDING_REQUEST; }
	// BW1W120 100084c0 BW1M119 inlined
	bool32_t IsDownloading() { return State == LH_FILE_DOWNLOAD_STATE_DOWNLOADING; }
	// BW1W120 100084d0 BW1M119 inlined
	bool32_t IsIdle() { return State == LH_FILE_DOWNLOAD_STATE_IDLE; }
	// BW1W120 100084e0 BW1M119 inlined
	bool32_t IsWaiting() { return State == LH_FILE_DOWNLOAD_STATE_WAITING; }
	// BW1W120 100084f0 BW1M119 inlined
	float GetTransferSpeed() { return TransferSpeed; }
	// BW1W120 10008500 BW1M119 inlined
	char* GetFilename() { return Filename; }

	// BW1W120 10008530 BW1M119 010e56e0 (LHCombined Release)
	LHFileDownload();
	// BW1W120 10008580 BW1M119 010e55a0 (LHCombined Release)
	~LHFileDownload();

	// BW1W120 10008600 BW1M119 010e53d0 (LHCombined Release)
	LH_FILE_DOWNLOAD_RETURNS DownloadFile(char* host, unsigned short port, char* path, char* file, char* local_file,
	                                      bool32_t compressed);
	// BW1W120 10008780 BW1M119 010e5310 (LHCombined Release)
	float GetPercentageDownloaded();
	// BW1W120 100087e0 BW1M119 010e4900 (LHCombined Release)
	LH_FILE_DOWNLOAD_RETURNS Refresh();
	// BW1W120 10008ee0 BW1M119 010e4700 (LHCombined Release)
	void StopDownload();
};
static_assert(sizeof(LHFileDownload) == 0x6c, "LHFileDownload size is incorrect");

#endif /* BW1_DECOMP_LH_FILE_DOWNLOAD_INCLUDED_H */
