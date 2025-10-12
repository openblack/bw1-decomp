#ifndef BW1_DECOMP_MAGIC_WOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PileWood.h" /* For struct PileWood */

// Forward Declares

struct Base;
struct Creature;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct MagicWood
{
  struct PileWood super;  /* 0x0 */
};
static_assert(sizeof(struct MagicWood) == 0xb4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4110 mac inlined MagicWood::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9MagicWood asm("??_R0?AVMagicWood@@@8");
// win1.41 009b1e80 mac inlined MagicWood::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9MagicWood asm("??_R1A@?0A@A@MagicWood@@8");
// win1.41 009b1e98 mac inlined MagicWood::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9MagicWood asm("??_R2MagicWood@@8");
// win1.41 009b1ec8 mac inlined MagicWood::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9MagicWood asm("??_R3MagicWood@@8");

// Override methods

// win1.41 00600df0 mac 103ba240 MagicWood::_dt(void)
void __fastcall __dt__9MagicWoodFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicWood@@UAEPAXI@Z");
// win1.41 00600da0 mac 103b9ed0 MagicWood::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9MagicWoodFv(struct GameThing* this) asm("?GetPlayer@MagicWood@@UAEPAVGPlayer@@XZ");
// win1.41 00600de0 mac 103b9fe0 MagicWood::GetDebugText(void)
char* __fastcall GetDebugText__9MagicWoodFv(struct GameThing* this) asm("?GetDebugText@MagicWood@@UAEPADXZ");
// win1.41 00600f60 mac 103ba020 MagicWood::Load(GameOSFile &)
uint32_t __fastcall Load__9MagicWoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicWood@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600f20 mac 103ba0b0 MagicWood::Save(GameOSFile &)
uint32_t __fastcall Save__9MagicWoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicWood@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600dd0 mac 103b9fa0 MagicWood::GetSaveType(void)
uint32_t __fastcall GetSaveType__9MagicWoodFv(struct GameThing* this) asm("?GetSaveType@MagicWood@@UAEIXZ");
// win1.41 00600db0 mac 103b9f10 MagicWood::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__9MagicWoodFv(struct GameThingWithPos* this) asm("?GetImpressiveType@MagicWood@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 00600dc0 mac 103b9f50 MagicWood::IsAWoodPileOutsideStoragePit(Creature *)
uint32_t __fastcall IsAWoodPileOutsideStoragePit__9MagicWoodFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsAWoodPileOutsideStoragePit@MagicWood@@UAEIPAVCreature@@@Z");
// win1.41 00600f10 mac 103ba140 MagicWood::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9MagicWoodFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MagicWood@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_MAGIC_WOOD_INCLUDED_H */
