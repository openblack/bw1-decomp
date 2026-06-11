#ifndef BW1_DECOMP_LHDLL_INCLUDED_H
#define BW1_DECOMP_LHDLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class LHTransport;

class LHDLL
{
public:
    uint8_t field_0x4;
    void* hmodule;
    LHTransport* transport;
    int field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    char* library_path; /* 0x20 */

    // Static methods

    // win1.41 007ad230 mac 100db740 LHDLL::AddToInternalList(LHDLL*)
    static LHDLL* AddToInternalList(LHDLL* param_1);

    // Constructors

    // win1.41 007ad370 mac 1061e11c LHDLL::LHDLL(const char*)
    LHDLL(char* library_path);

    // Non-virtual Destructors

    // win1.41 007ad4c0 mac 1061e14c LHDLL::~LHDLL(void)
    ~LHDLL();
};

#endif /* BW1_DECOMP_LHDLL_INCLUDED_H */
