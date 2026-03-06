#ifndef BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

#ifdef __cplusplus

// Forward Declares

class Base;

// win1.41 009ccfe0 mac inlined GMagicFlockFlyingInfo::`RTTI Type Descriptor'
// win1.41 009a8140 mac inlined GMagicFlockFlyingInfo::`RTTI Base Class Descriptor'
// win1.41 009a8158 mac inlined GMagicFlockFlyingInfo::`RTTI Base Class Array'
// win1.41 009a8170 mac inlined GMagicFlockFlyingInfo::`RTTI Class Hierarchy Descriptor'
class GMagicFlockFlyingInfo: public GMagicInfo
{
public:

    // Override methods

    // win1.41 004357c0 mac 1051ed80 GMagicFlockFlyingInfo::_dt(void)
    virtual ~GMagicFlockFlyingInfo();
};

#else // __cplusplus

// Forward Declares

struct Base;

struct GMagicFlockFlyingInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicFlockFlyingInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ccfe0 mac inlined GMagicFlockFlyingInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GMagicFlockFlyingInfo asm("??_R0?AVGMagicFlockFlyingInfo@@@8");
// win1.41 009a8140 mac inlined GMagicFlockFlyingInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GMagicFlockFlyingInfo asm("??_R1A@?0A@A@GMagicFlockFlyingInfo@@8");
// win1.41 009a8158 mac inlined GMagicFlockFlyingInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GMagicFlockFlyingInfo asm("??_R2GMagicFlockFlyingInfo@@8");
// win1.41 009a8170 mac inlined GMagicFlockFlyingInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GMagicFlockFlyingInfo asm("??_R3GMagicFlockFlyingInfo@@8");

// Override methods

// win1.41 004357c0 mac 1051ed80 GMagicFlockFlyingInfo::_dt(void)
void __fastcall __dt__21GMagicFlockFlyingInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicFlockFlyingInfo@@UAEPAXI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_MAGIC_FLOCK_FLYING_INFO_INCLUDED_H */
