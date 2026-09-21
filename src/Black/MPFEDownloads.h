#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

class MPFEDownloads
{
public:
	uint8_t field_0x4[0x27c];

	// Override methods

	// BW1W120 0062e740 BW1M119 013ac730
	virtual void FileCompleted();
	// BW1W120 0062e750 BW1M119 013ac6f0
	virtual void FileError();

	// Constructors

	// BW1W120 0062e580 BW1M119 013aca60
	MPFEDownloads();
};

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
