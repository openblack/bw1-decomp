#ifndef BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct FireGraphic
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct FireGraphic) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22990 mac inlined FireGraphic::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11FireGraphic asm("??_R0?AVFireGraphic@@@8");
// win1.41 009b9890 mac inlined FireGraphic::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11FireGraphic asm("??_R1A@?0A@A@FireGraphic@@8");
// win1.41 009b98a8 mac inlined FireGraphic::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11FireGraphic asm("??_R2FireGraphic@@8");
// win1.41 009b98c0 mac inlined FireGraphic::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11FireGraphic asm("??_R3FireGraphic@@8");

// Override methods

// win1.41 00731390 mac 1014b860 FireGraphic::_dt(void)
void __fastcall __dt__11FireGraphicFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFireGraphic@@UAEPAXI@Z");

struct FireGraphic__SpritePos
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct FireGraphic__SpritePos) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 00731a90 mac inlined FireGraphic::SpritePos::_dt( (void))
void __fastcall __dt__Q211FireGraphic9SpritePosFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpritePos@FireGraphic@@UAEPAXI@Z");
// win1.41 006cb040 mac inlined FireGraphic::SpritePos::Save( (GameOSFile &))
uint32_t __fastcall Save__Q211FireGraphic9SpritePosFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpritePos@FireGraphic@@UAEIAAVGameOSFile@@@Z");
// win1.41 004664e0 mac inlined FireGraphic::SpritePos::GetSaveType( (void))
uint32_t __fastcall GetSaveType__Q211FireGraphic9SpritePosFv(struct GameThing* this) asm("?GetSaveType@SpritePos@FireGraphic@@UAEIXZ");

#endif /* BW1_DECOMP_FIRE_GRAPHIC_INCLUDED_H */
