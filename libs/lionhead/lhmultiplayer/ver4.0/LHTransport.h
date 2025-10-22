#ifndef BW1_DECOMP_LH_TRANSPORT_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LHNetEvent.h" /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */

// Forward Declares

struct LHDynamicQueue_pLHNetEvent_;
struct LHNetEvent;
struct LHTransport;
struct LHTransportInfo;

struct LHTransportVftable
{
  struct LHTransport* (__fastcall* __dt)(struct LHTransport* this, const void* edx, bool param_1);  /* 0x0 */
  enum LH_RETURN (__fastcall* Open)(struct LHTransport* this, const void* edx, struct LHDynamicQueue_pLHNetEvent_* param_1, struct LHDynamicQueue_pLHNetEvent_* param_2, struct LHTransportInfo* param_3);
  uintptr_t (__fastcall* OpenConnectionToTransport)(struct LHTransport* this);
  uintptr_t (__fastcall* Close)(struct LHTransport* this);
  uintptr_t (__fastcall* Disconnect)(struct LHTransport* this);  /* 0x10 */
  uintptr_t (__fastcall* Flushed)(struct LHTransport* this);
  uintptr_t (__fastcall* Flush)(struct LHTransport* this);
  void* (__fastcall* Read)(struct LHTransport* this, const void* edx, uint32_t size);
  void (__fastcall* Write)(struct LHTransport* this, const void* edx, struct LHNetEvent* net_event);  /* 0x20 */
  uintptr_t (__fastcall* AddToIncommingEventQ)(struct LHTransport* this);
  uintptr_t (__fastcall* AddToFrontOfIncomingEventQ)(struct LHTransport* this);
  uintptr_t (__fastcall* AddAtPositionInIncomingEventQ)(struct LHTransport* this);
  bool (__fastcall* CheckForEvents)(struct LHTransport* this);  /* 0x30 */
  uintptr_t (__fastcall* IsDisconnected)(struct LHTransport* this);
  uintptr_t (__fastcall* CheckForEvent)(struct LHTransport* this);
  uintptr_t (__fastcall* GetSignalDataToRead)(struct LHTransport* this);
  uintptr_t (__fastcall* GetTransportInfo)(struct LHTransport* this);  /* 0x40 */
  uintptr_t (__fastcall* WaitForEvent)(struct LHTransport* this);
  struct LHNetEvent* (__fastcall* ExtractEvent)(struct LHTransport* this, const void* edx, enum LH_NETEVENT_TYPE type, uint32_t size);
  uintptr_t (__fastcall* RawPeek)(struct LHTransport* this);
  uintptr_t (__fastcall* Peek)(struct LHTransport* this);  /* 0x50 */
};
static_assert(sizeof(struct LHTransportVftable) == 0x54, "Data type is of wrong size");

struct LHTransport
{
  struct LHTransportVftable* vftable;  /* 0x0 */
  uint32_t field_0x4;
  bool32_t owns_read_queue;
  bool32_t owns_wrtie_queue;
  struct LHNetEvent* current_event;  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  struct LHDynamicQueue_pLHNetEvent_* write_queue;
  struct LHDynamicQueue_pLHNetEvent_* read_queue;  /* 0x20 */
  uint8_t field_0x24;
};
static_assert(sizeof(struct LHTransport) == 0x28, "Data type is of wrong size");

// Static methods

// win1.41 10022a70 mac 10119960 LHTransport::Create(LH_TRANSPORT_TYPE)
struct LHTransport* __cdecl Create__11LHTransportF17LH_TRANSPORT_TYPE(enum LH_TRANSPORT_TYPE type) asm("?Create@LHTransport@@SAPAV1@W4LH_TRANSPORT_TYPE@@@Z");

// Non-virtual methods

// win1.41 10022550 mac 1011b170 LHTransport::OpenConnectionToTransport(LHTransport *, void (*)(void *), void *)
enum LH_RETURN __fastcall OpenConnectionToTransport__11LHTransportFP11LHTransportPFPv_vPv(struct LHTransport* this, const void* edx, struct LHTransport* param_1, void (__cdecl* param_2)(void * param_1), void* param_3) asm("?OpenConnectionToTransport@LHTransport@@QAE?AW4LH_RETURN@@PAV1@P6AXPAX@Z1@Z");

// Override methods

// win1.41 10022790 mac 1011acc0 LHTransport::Write(LHNetEvent *)
void __fastcall Write__11LHTransportFP10LHNetEvent(struct LHTransport* this, const void* edx, struct LHNetEvent* net_event) asm("?Write@LHTransport@@UAEXPAULHNetEvent@@@Z");

struct LHTransportRemote
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct LHTransportRemote) == 0x1, "Data type is of wrong size");

// Non-virtual methods

// win1.41 10023880 mac 101178b0 LHTransportRemote::RemoteTransportThread(void)
void __fastcall RemoteTransportThread__17LHTransportRemoteFv(struct LHTransportRemote* this) asm("?RemoteTransportThread@LHTransportRemote@@QAEXXZ");

#endif /* BW1_DECOMP_LH_TRANSPORT_INCLUDED_H */
