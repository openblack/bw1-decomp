#ifndef BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

#ifdef __cplusplus

// win1.41 00bfda08 mac inlined MPFEStartGameNowMessage::`RTTI Type Descriptor'
// win1.41 009b2a00 mac inlined MPFEStartGameNowMessage::`RTTI Base Class Descriptor'
// win1.41 009b2a18 mac inlined MPFEStartGameNowMessage::`RTTI Base Class Array'
// win1.41 009b2a28 mac inlined MPFEStartGameNowMessage::`RTTI Class Hierarchy Descriptor'
class MPFEStartGameNowMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00630170 mac 10396930 MPFEStartGameNowMessage::_dt(void)
    virtual ~MPFEStartGameNowMessage();
};

#else // __cplusplus

struct MPFEStartGameNowMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameNowMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfda08 mac inlined MPFEStartGameNowMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23MPFEStartGameNowMessage asm("??_R0?AVMPFEStartGameNowMessage@@@8");
// win1.41 009b2a00 mac inlined MPFEStartGameNowMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23MPFEStartGameNowMessage asm("??_R1A@?0A@A@MPFEStartGameNowMessage@@8");
// win1.41 009b2a18 mac inlined MPFEStartGameNowMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23MPFEStartGameNowMessage asm("??_R2MPFEStartGameNowMessage@@8");
// win1.41 009b2a28 mac inlined MPFEStartGameNowMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23MPFEStartGameNowMessage asm("??_R3MPFEStartGameNowMessage@@8");

// Override methods

// win1.41 00630170 mac 10396930 MPFEStartGameNowMessage::_dt(void)
void __fastcall __dt__23MPFEStartGameNowMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameNowMessage@@UAEPAXI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H */
