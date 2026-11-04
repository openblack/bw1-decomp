#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHMultiplayer/ver4.0/LHFileDownload.h> /* For class LHFileDownload */

struct LandscapeDetails;

class MPFEDownloads
{
public:
	LHFileDownload FileDownload;
	bool           Downloading;          /* 0x70 */
	char           LocalFileName[0x200]; /* 0x71 */
	float          TransferSpeed;        /* 0x274 */
	float          PercentageDownloaded; /* 0x278 */
	unsigned long  FileNumber;           /* 0x27c */

	// New virtual methods

	// BW1W120 purecall BW1M119 purecall
	virtual void GetFileNumber(unsigned long number) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Refresh() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Stop() = 0;
	// BW1W120 0062e740 BW1M119 013ac730
	virtual void FileCompleted();
	// BW1W120 0062e750 BW1M119 013ac6f0
	virtual void FileError();

	// Constructors

	// BW1W120 0062e560 BW1M119 013aca60
	MPFEDownloads();
	// BW1W120 0062e580 BW1M119 013ac990
	~MPFEDownloads();

	// Non-virtual methods

	// BW1W120 0062e5c0 BW1M119 013ac770
	bool DownloadFile(LandscapeDetails* details);
	// Inliner IL size: 23
	// BW1W120 inlined BW1M119 inlined
	bool IsDownloading() { return Downloading; }
	// Inliner IL size: 23
	// BW1W120 inlined BW1M119 inlined
	unsigned long GetCurrentFileNumber() { return FileNumber; }
};

static_assert(sizeof(MPFEDownloads) == 0x280, "MPFEDownloads size is incorrect");

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
