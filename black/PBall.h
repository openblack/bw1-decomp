#ifndef BW1_DECOMP_P_BALL_INCLUDED_H
#define BW1_DECOMP_P_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct Object;

struct PBall
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct PBall) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfe068 mac inlined PBall::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5PBall asm("??_R0?AVPBall@@@8");
// win1.41 009b2f30 mac inlined PBall::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5PBall asm("??_R1A@?0A@A@PBall@@8");
// win1.41 009b2f48 mac inlined PBall::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5PBall asm("??_R2PBall@@8");
// win1.41 009b2f68 mac inlined PBall::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5PBall asm("??_R3PBall@@8");

// Override methods

// win1.41 0063e950 mac inlined PBall::_dt(void)
void __fastcall __dt__5PBallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPBall@@UAEPAXI@Z");
// win1.41 0063e990 mac inlined PBall::Process(void)
uint32_t __fastcall Process__5PBallFv(struct Object* this) asm("?Process@PBall@@UAEIXZ");
// win1.41 0063e980 mac inlined PBall::Draw(void)
void __fastcall Draw__5PBallFv(struct Object* this) asm("?Draw@PBall@@UAEXXZ");

#endif /* BW1_DECOMP_P_BALL_INCLUDED_H */
