#ifndef BW1_DECOMP_CONTAINER_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

struct Base;
struct GContainerInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;

struct ContainerVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
};
static_assert(sizeof(struct ContainerVftable) == 0x500, "Data type is of wrong size");

union ContainerBase
{
  struct GameThingWithPos super;
  struct ContainerVftable* vftable;
};
static_assert(sizeof(union ContainerBase) == 0x28, "Data type is of wrong size");

struct Container
{
  union ContainerBase base;  /* 0x0 */
  struct GContainerInfo* info;  /* 0x28 */
  struct GPlayer* owner;
};
static_assert(sizeof(struct Container) == 0x30, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce830 mac inlined Container::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9Container asm("??_R0?AVContainer@@@8");
// win1.41 009a8dc0 mac inlined Container::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9Container asm("??_R1A@?0A@A@Container@@8");
// win1.41 009a9210 mac inlined Container::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9Container asm("??_R2Container@@8");
// win1.41 009a9228 mac inlined Container::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9Container asm("??_R3Container@@8");
// win1.41 008cb97c mac 10739750 Container::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9Container asm("??_R4Container@@6B@");
// win1.41 008cb980 mac 10739758 Container::`vftable'
extern const struct ContainerVftable __vt__9Container asm("??_7Container@@6B@");

// Override methods

// win1.41 0046b900 mac 100bf890 Container::_dt(void)
void __fastcall __dt__9ContainerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GContainer@@UAEPAXI@Z");
// win1.41 00462a50 mac 1005c760 Container::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9ContainerFv(struct GameThing* this) asm("?GetPlayer@Container@@UAEPAVGPlayer@@XZ");
// win1.41 0046b960 mac 100bf930 Container::Load(GameOSFile &)
uint32_t __fastcall Load__9ContainerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Container@@UAEIAAVGameOSFile@@@Z");
// win1.41 0046b920 mac 100bf9d0 Container::Save(GameOSFile &)
uint32_t __fastcall Save__9ContainerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Container@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
