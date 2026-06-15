#ifndef BW1_DECOMP_LH_TRANSPORT_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <re_common.h> /* For bool32_t */

#include "LHNetEvent.h" /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */

// Forward Declares

struct LHDynamicQueue_pLHNetEvent_;
struct LHNetEvent;
class LHTransportInfo;

class LHTransport
{
public:
    uint32_t field_0x4;
    bool32_t owns_read_queue;
    bool32_t owns_wrtie_queue;
    LHNetEvent* current_event; /* 0x10 */
    uint32_t field_0x14;
    uint32_t field_0x18;
    LHDynamicQueue_pLHNetEvent_* write_queue;
    LHDynamicQueue_pLHNetEvent_* read_queue; /* 0x20 */
    uint8_t field_0x24;

    // Override methods

    // win1.41 10022790 mac 1011acc0 LHTransport::Write(LHNetEvent *)
    virtual void Write(LHNetEvent* net_event);

    // Static methods

    // win1.41 10022a70 mac 10119960 LHTransport::Create(LH_TRANSPORT_TYPE)
    static LHTransport* Create(LH_TRANSPORT_TYPE type);

    // Non-virtual methods

    // win1.41 10022550 mac 1011b170 LHTransport::OpenConnectionToTransport(LHTransport *, void (*)(void *), void *)
    LH_RETURN OpenConnectionToTransport(LHTransport* param_1, void (__cdecl*)(void *) param_2, void* param_3);
};

struct LHTransportRemote
{
    uint8_t field_0x0;

    // Non-virtual methods

    // win1.41 10023880 mac 101178b0 LHTransportRemote::RemoteTransportThread(void)
    void RemoteTransportThread();
};

#endif /* BW1_DECOMP_LH_TRANSPORT_INCLUDED_H */
