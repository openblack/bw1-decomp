#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

class MPFEDownloads
{
public:
	uint8_t       field_0x4[0x6c];
	bool          Downloading; /* 0x70 */
	uint8_t       field_0x71[0x20b];
	unsigned long FileNumber; /* 0x27c */

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

	// BW1W120 0062e580 BW1M119 013aca60
	MPFEDownloads();
};

static_assert(sizeof(MPFEDownloads) == 0x280, "MPFEDownloads size is incorrect");

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
