#ifndef BW1_DECOMP_MPFE_MAP_DOWNLOAD_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_DOWNLOAD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MPFEDatabase.h"  /* For class MPFEDatabase */
#include "MPFEDownloads.h" /* For class MPFEDownloads */

class MPFEMapDownload : public MPFEDownloads, public MPFEDatabase
{
public:
	bool field_0x28c;

	// Override methods

	// BW1W120 0062e8c0 BW1M119 013ac1b0
	virtual void GetFileNumber(unsigned long number);
	// BW1W120 0062e960 BW1M119 013ac060
	virtual void Refresh();
	// BW1W120 0062ea20 BW1M119 013abfe0
	virtual void Stop();
	// BW1W120 0062ea50 BW1M119 013abf50
	virtual void FileCompleted();
	// BW1W120 0062ea70 BW1M119 013abe80
	virtual void FileError();
	// BW1W120 0062eae0 BW1M119 013abcf0
	virtual void DatabaseError();
	// BW1W120 0062eb60 BW1M119 013abc50
	virtual void DatabaseComplete();

	// Constructors

	// BW1W120 0062e890 BW1M119 013ac300
	MPFEMapDownload();
};

static_assert(sizeof(MPFEMapDownload) == 0x290, "MPFEMapDownload size is incorrect");

#endif /* BW1_DECOMP_MPFE_MAP_DOWNLOAD_INCLUDED_H */
