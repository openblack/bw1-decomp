#ifndef BW1_DECOMP_DANCE_KEY_INCLUDED_H
#define BW1_DECOMP_DANCE_KEY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHDynamicStack.h> /* For struct LHDynamicStack__Ul */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct DanceGroupActionArgument;
struct GameOSFile;

struct DanceKeyFrame
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x10];
};
static_assert(sizeof(struct DanceKeyFrame) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be83c8 mac inlined DanceKeyFrame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13DanceKeyFrame asm("??_R0?AVDanceKeyFrame@@@8");
// win1.41 009ab750 mac inlined DanceKeyFrame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13DanceKeyFrame asm("??_R1A@?0A@A@DanceKeyFrame@@8");
// win1.41 009ab768 mac inlined DanceKeyFrame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13DanceKeyFrame asm("??_R2DanceKeyFrame@@8");
// win1.41 009ab778 mac inlined DanceKeyFrame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13DanceKeyFrame asm("??_R3DanceKeyFrame@@8");
// win1.41 008d46ec mac 10997014 DanceKeyFrame::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13DanceKeyFrame asm("??_R4DanceKeyFrame@@6B@");
// win1.41 008d46f0 mac 1099701c DanceKeyFrame::`vftable'
extern const struct GameThingVftable __vt__13DanceKeyFrame asm("??_7DanceKeyFrame@@6B@");

// Constructors

// win1.41 0050eb60 mac 102ae450 DanceKeyFrame::DanceKeyFrame(long, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
struct DanceKeyFrame* __fastcall __ct__13DanceKeyFrameFlR18LHDynamicStack_Ul_23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct DanceKeyFrame* this, const void* edx, int param_1, struct LHDynamicStack__Ul* stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* arguments);

// Override methods

// win1.41 0050ebd0 mac 100f7ab0 DanceKeyFrame::_dt(void)
void __fastcall __dt__13DanceKeyFrameFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDanceKeyFrame@@UAEPAXI@Z");
// win1.41 0050ebf0 mac 102ae1e0 DanceKeyFrame::ToBeDeleted(int)
void __fastcall ToBeDeleted__13DanceKeyFrameFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@DanceKeyFrame@@UAEXH@Z");
// win1.41 0050ebc0 mac 102ace60 DanceKeyFrame::GetDebugText(void)
char* __fastcall GetDebugText__13DanceKeyFrameFv(struct GameThing* this) asm("?GetDebugText@DanceKeyFrame@@UAEPADXZ");
// win1.41 0050f2f0 mac 102acea0 DanceKeyFrame::Load(GameOSFile &)
uint32_t __fastcall Load__13DanceKeyFrameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DanceKeyFrame@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050f1c0 mac 102ad2b0 DanceKeyFrame::Save(GameOSFile &)
uint32_t __fastcall Save__13DanceKeyFrameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DanceKeyFrame@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050ebb0 mac 102ace20 DanceKeyFrame::GetSaveType(void)
uint32_t __fastcall GetSaveType__13DanceKeyFrameFv(struct GameThing* this) asm("?GetSaveType@DanceKeyFrame@@UAEIXZ");

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */
