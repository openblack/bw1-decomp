#ifndef BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

class LHTransportInfo
{
public:
    LH_TRANSPORT_TYPE type; /* 0x4 */
    int data_len;
    uint16_t port;
    char ip[0x64];

    // Non-virtual methods

    // win1.41 100243b0 mac 1011b9e0 LHTransportInfo::DecodeFromBuffer(unsigned char *)
    uint8_t* DecodeFromBuffer(const uint8_t* data);
};

#endif /* BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H */
