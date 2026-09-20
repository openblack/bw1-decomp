#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

class MPFEDownloads
{
public:
	uint8_t field_0x4[0x27c];

	// Override methods

	// BW1W120 0062e740 BW1M100 103a49b0 MPFEDownloads::FileCompleted(void)
	virtual void FileCompleted();
	// BW1W120 0062e750 BW1M100 103a4970 MPFEDownloads::FileError(void)
	virtual void FileError();

	// Constructors

	// BW1W120 0062e580 BW1M100 103a4cc0 MPFEDownloads::MPFEDownloads(void)
	MPFEDownloads();
};

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
