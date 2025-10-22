#ifndef BW1_DECOMP_LH_SEGMENT_INCLUDED_H
#define BW1_DECOMP_LH_SEGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LHSegmentDesc
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint8_t field_0x8[0x1c];
  uint32_t offset;  /* 0x24 */
  uint32_t size;
};
static_assert(sizeof(struct LHSegmentDesc) == 0x2c, "Data type is of wrong size");

struct LHSegment
{
  uint8_t name[0x21];  /* 0x0 */
  uint32_t size;  /* 0x24 */
  uint8_t* buffer;
};
static_assert(sizeof(struct LHSegment) == 0x2c, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 1005c5c0 LHSegment::LHSegment(void)
struct LHSegment* __fastcall __ct__9LHSegmentFv(struct LHSegment* this) asm("??0LHSegment@@QAE@XZ");

#endif /* BW1_DECOMP_LH_SEGMENT_INCLUDED_H */
