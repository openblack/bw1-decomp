#ifndef BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GInterfaceStatus;
struct GameThingWithPos;
struct LH_SamplePlayOptions;
struct Town;

struct Q29GGuidance10LastThings
{
  struct GameThingWithPos* thing;  /* 0x0 */
  uint32_t turn;
};
static_assert(sizeof(struct Q29GGuidance10LastThings) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 0071aec0 mac 10511e30 GGuidance::LastThings::LastThings(GameThingWithPos *)
struct Q29GGuidance10LastThings* __fastcall __ct__Q29GGuidance10LastThingsFP16GameThingWithPos(struct Q29GGuidance10LastThings* this, const void* edx, struct GameThingWithPos* thing);

DECLARE_LH_LINKED_LIST(Q29GGuidance10LastThings);

struct GGuidance
{
  struct Base super;  /* 0x0 */
  struct LH_SamplePlayOptions* play_options;
  int field_0xc[0x21];
  struct LHLinkedList__Q29GGuidance10LastThings lastThings;  /* 0x90 */
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  float field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
  uint32_t field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  uint32_t field_0xc8;
  struct GInterfaceStatus* interface_status;
  uint32_t field_0xd0[0x7];
};
static_assert(sizeof(struct GGuidance) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22200 mac inlined GGuidance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GGuidance asm("??_R0?AVGGuidance@@@8");
// win1.41 009b9158 mac inlined GGuidance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GGuidance asm("??_R1A@?0A@A@GGuidance@@8");
// win1.41 009b9170 mac inlined GGuidance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GGuidance asm("??_R2GGuidance@@8");
// win1.41 009b9180 mac inlined GGuidance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GGuidance asm("??_R3GGuidance@@8");
// win1.41 009804a8 mac 109d783c GGuidance::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GGuidance asm("??_R4GGuidance@@6B@");
// win1.41 009804ac mac 109d7844 GGuidance::`vftable'
extern const struct BaseVftable __vt__9GGuidance asm("??_7GGuidance@@6B@");

// Static methods

// win1.41 0071b020 mac 10082330 GGuidance::ProcessTownDesireSFX(GInterfaceStatus &)
void __cdecl ProcessTownDesireSFX__9GGuidanceFR16GInterfaceStatus(struct GInterfaceStatus* status) asm("?ProcessTownDesireSFX@GGuidance@@SAXAAVGInterfaceStatus@@@Z");

// Constructors

// win1.41 0071ab10 mac 105126b0 GGuidance::GGuidance(void)
void __fastcall __ct__9GGuidanceFv(struct GGuidance* this) asm("??0GGuidance@@QAE@XZ");

// Non-virtual methods

// win1.41 0071ac70 mac 105122a0 GGuidance::Init(GInterfaceStatus&)
void __fastcall Init__9GGuidanceFR16GInterfaceStatus(struct GGuidance* this, const void* edx, struct GInterfaceStatus* status) asm("?Init@GGuidance@@QAEXAAVGInterfaceStatus@@@Z");
// win1.41 0071cbe0 mac 1050e610 GGuidance::HelpSpritesLowOnPeople(Town &)
void __fastcall HelpSpritesLowOnPeople__9GGuidanceFR4Town(struct GGuidance* this, const void* edx, struct Town* param_1) asm("?HelpSpritesLowOnPeople@GGuidance@@QAEXAAVTown@@@Z");

// Override methods

// win1.41 0071ab30 mac 10512620 GGuidance::_dt(void)
void __fastcall __dt__9GGuidanceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGGuidance@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H */
