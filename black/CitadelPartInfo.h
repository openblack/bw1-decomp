#ifndef BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

#ifdef __cplusplus

// win1.41 009ce960 mac inlined GCitadelPartInfo::`RTTI Type Descriptor'
// win1.41 009a8e30 mac inlined GCitadelPartInfo::`RTTI Base Class Descriptor'
class GCitadelPartInfo: public GMultiMapFixedInfo
{
public:
    uint32_t field_0x120;
    uint32_t field_0x124;
    float life;
    uint32_t field_0x12c;
    float field_0x130;
};

#else // __cplusplus

struct GCitadelPartInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
  uint32_t field_0x124;
  float life;
  uint32_t field_0x12c;
  float field_0x130;
};
static_assert(sizeof(struct GCitadelPartInfo) == 0x134, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce960 mac inlined GCitadelPartInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GCitadelPartInfo asm("??_R0?AVGCitadelPartInfo@@@8");
// win1.41 009a8e30 mac inlined GCitadelPartInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GCitadelPartInfo asm("??_R1A@?0A@A@GCitadelPartInfo@@8");

#endif // __cplusplus

#endif /* BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H */
