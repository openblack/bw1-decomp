#ifndef BW1_DECOMP_MAGIC_TREE_INCLUDED_H
#define BW1_DECOMP_MAGIC_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Tree.h" /* For struct Tree */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Object;

struct MagicTree
{
  struct Tree super;  /* 0x0 */
};
static_assert(sizeof(struct MagicTree) == 0x6c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3f18 mac inlined MagicTree::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9MagicTree asm("??_R0?AVMagicTree@@@8");
// win1.41 009b1bf8 mac inlined MagicTree::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9MagicTree asm("??_R1A@?0A@A@MagicTree@@8");
// win1.41 009b1c10 mac inlined MagicTree::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9MagicTree asm("??_R2MagicTree@@8");
// win1.41 009b1c38 mac inlined MagicTree::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9MagicTree asm("??_R3MagicTree@@8");

// Override methods

// win1.41 005fcf30 mac 103b22a0 MagicTree::_dt(void)
void __fastcall __dt__9MagicTreeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicTree@@UAEPAXI@Z");
// win1.41 005fd070 mac 103b2760 MagicTree::ToBeDeleted(int)
void __fastcall ToBeDeleted__9MagicTreeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MagicTree@@UAEXH@Z");
// win1.41 005fd060 mac 103b2840 MagicTree::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9MagicTreeFv(struct GameThing* this) asm("?GetPlayer@MagicTree@@UAEPAVGPlayer@@XZ");
// win1.41 005fcf20 mac 103b23b0 MagicTree::GetDebugText(void)
char* __fastcall GetDebugText__9MagicTreeFv(struct GameThing* this) asm("?GetDebugText@MagicTree@@UAEPADXZ");
// win1.41 005fd1c0 mac 103b23f0 MagicTree::Load(GameOSFile &)
uint32_t __fastcall Load__9MagicTreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicTree@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fd110 mac 103b2510 MagicTree::Save(GameOSFile &)
uint32_t __fastcall Save__9MagicTreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicTree@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fcf10 mac 103b2370 MagicTree::GetSaveType(void)
uint32_t __fastcall GetSaveType__9MagicTreeFv(struct GameThing* this) asm("?GetSaveType@MagicTree@@UAEIXZ");
// win1.41 005fcf00 mac 103b2330 MagicTree::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__9MagicTreeFv(struct GameThingWithPos* this) asm("?GetImpressiveType@MagicTree@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 005fd0d0 mac 103b26d0 MagicTree::StartOnFire(void)
void __fastcall StartOnFire__9MagicTreeFv(struct Object* this) asm("?StartOnFire@MagicTree@@UAEXXZ");
// win1.41 005fd0e0 mac 103b2640 MagicTree::EndOnFire(void)
void __fastcall EndOnFire__9MagicTreeFv(struct Object* this) asm("?EndOnFire@MagicTree@@UAEXXZ");

#endif /* BW1_DECOMP_MAGIC_TREE_INCLUDED_H */
