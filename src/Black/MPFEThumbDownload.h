#ifndef BW1_DECOMP_MPFE_THUMB_DOWNLOAD_INCLUDED_H
#define BW1_DECOMP_MPFE_THUMB_DOWNLOAD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEDownloads.h" /* For class MPFEDownloads */

class MPFEThumbDownload : public MPFEDownloads
{
public:
	// Override methods

	// BW1W120 0062e760 BW1M119 013ac5e0
	virtual void GetFileNumber(unsigned long number);
	// BW1W120 0062e7d0 BW1M119 013ac4d0
	virtual void Refresh();
	// BW1W120 0062e850 BW1M119 013ac460
	virtual void Stop();
	// BW1W120 0062e870 BW1M119 013ac400
	virtual void FileCompleted();
	// BW1W120 0062e880 BW1M119 013ac3a0
	virtual void FileError();
};

static_assert(sizeof(MPFEThumbDownload) == 0x280, "MPFEThumbDownload size is incorrect");

#endif /* BW1_DECOMP_MPFE_THUMB_DOWNLOAD_INCLUDED_H */
