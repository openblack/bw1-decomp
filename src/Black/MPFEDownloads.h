#ifndef BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H
#define BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

class MPFEDownloads
{
public:
    uint8_t field_0x4[0x27c];

    // Override methods

    // win1.41 0062e740 mac 103a49b0 MPFEDownloads::FileCompleted(void)
    virtual void FileCompleted();
    // win1.41 0062e750 mac 103a4970 MPFEDownloads::FileError(void)
    virtual void FileError();

    // Constructors

    // win1.41 0062e580 mac 103a4cc0 MPFEDownloads::MPFEDownloads(void)
    MPFEDownloads();
};

#endif /* BW1_DECOMP_MPFE_DOWNLOADS_INCLUDED_H */
