#ifndef BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

// Forward Declares

struct LHTransportInfo;

enum LH_TRANSPORT_TYPE
{
  LH_TRANSPORT_TYPE_BASE = 0x1,
  LH_TRANSPORT_TYPE_SYNC = 0x2,
  LH_TRANSPORT_TYPE_ASYNC = 0x3,
  LH_TRANSPORT_TYPE_TCP = 0x4,
  LH_TRANSPORT_TYPE_UDP = 0x5,
  _LH_TRANSPORT_TYPE_COUNT = 0x6
};
static_assert(sizeof(enum LH_TRANSPORT_TYPE) == 0x4, "Data type is of wrong size");

static const char* LH_TRANSPORT_TYPE_strs[_LH_TRANSPORT_TYPE_COUNT] = {
  "LH_TRANSPORT_TYPE_0x0",
  "LH_TRANSPORT_TYPE_BASE",
  "LH_TRANSPORT_TYPE_SYNC",
  "LH_TRANSPORT_TYPE_ASYNC",
  "LH_TRANSPORT_TYPE_TCP",
  "LH_TRANSPORT_TYPE_UDP",
};

struct LHTransportInfoVftable
{
  uint32_t (__fastcall* GetEncodedLength)(struct LHTransportInfo* this, const void* edx, uint32_t param1, void* param2);  /* 0x0 */
  uint32_t (__fastcall* EncodeToBuffer)(struct LHTransportInfo* this, const void* edx, uint8_t* buffer, uint32_t length, void* param3);
  uint32_t (__fastcall* DecodeFromBuffer)(struct LHTransportInfo* this, const void* edx, uint8_t* buffer);
  void (__fastcall* ClearObject)(struct LHTransportInfo* this);
};
static_assert(sizeof(struct LHTransportInfoVftable) == 0x10, "Data type is of wrong size");

struct LHTransportInfo
{
  struct LHTransportInfoVftable* vftable;  /* 0x0 */
  enum LH_TRANSPORT_TYPE type;
  int data_len;
  uint16_t port;
  char ip[0x64];
};
static_assert(sizeof(struct LHTransportInfo) == 0x74, "Data type is of wrong size");

// Non-virtual methods

// win1.41 100243b0 mac 1011b9e0 LHTransportInfo::DecodeFromBuffer(unsigned char *)
uint8_t* __fastcall DecodeFromBuffer__15LHTransportInfoFPUc(struct LHTransportInfo* this, const void* edx, const uint8_t* data) asm("?DecodeFromBuffer@LHTransportInfo@@QAEPAEPAE@Z");

#endif /* BW1_DECOMP_LH_TRANSPORT_INFO_INCLUDED_H */
