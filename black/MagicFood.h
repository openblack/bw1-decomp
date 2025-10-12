#ifndef BW1_DECOMP_MAGIC_FOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PileFood.h" /* For struct PileFood */

// Forward Declares

struct Base;
struct Creature;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct MagicFood
{
  struct PileFood super;  /* 0x0 */
};
static_assert(sizeof(struct MagicFood) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be67b0 mac inlined MagicFood::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9MagicFood asm("??_R0?AVMagicFood@@@8");
// win1.41 009b1a70 mac inlined MagicFood::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9MagicFood asm("??_R1A@?0A@A@MagicFood@@8");
// win1.41 009b1a88 mac inlined MagicFood::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9MagicFood asm("??_R2MagicFood@@8");
// win1.41 009b1ab8 mac inlined MagicFood::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9MagicFood asm("??_R3MagicFood@@8");

// Override methods

// win1.41 005fa9c0 mac 103ac0d0 MagicFood::_dt(void)
void __fastcall __dt__9MagicFoodFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicFood@@UAEPAXI@Z");
// win1.41 005fa980 mac 103abe00 MagicFood::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9MagicFoodFv(struct GameThing* this) asm("?GetPlayer@MagicFood@@UAEPAVGPlayer@@XZ");
// win1.41 005fa970 mac 103abdc0 MagicFood::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9MagicFoodFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@MagicFood@@UAEXPAVGPlayer@@@Z");
// win1.41 005fa9b0 mac 103abec0 MagicFood::GetDebugText(void)
char* __fastcall GetDebugText__9MagicFoodFv(struct GameThing* this) asm("?GetDebugText@MagicFood@@UAEPADXZ");
// win1.41 005fab40 mac 103abf00 MagicFood::Load(GameOSFile &)
uint32_t __fastcall Load__9MagicFoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicFood@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fab00 mac 103abf90 MagicFood::Save(GameOSFile &)
uint32_t __fastcall Save__9MagicFoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicFood@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fa9a0 mac 103abe80 MagicFood::GetSaveType(void)
uint32_t __fastcall GetSaveType__9MagicFoodFv(struct GameThing* this) asm("?GetSaveType@MagicFood@@UAEIXZ");
// win1.41 005fa990 mac 103abe40 MagicFood::GetImpressiveType(void)
enum IMPRESSIVE_TYPE __fastcall GetImpressiveType__9MagicFoodFv(struct GameThingWithPos* this) asm("?GetImpressiveType@MagicFood@@UAE?AW4IMPRESSIVE_TYPE@@XZ");
// win1.41 004e4a20 mac 105e43b0 MagicFood::IsAFoodPileOutsideStoragePit(Creature *)
uint32_t __fastcall IsAFoodPileOutsideStoragePit__9MagicFoodFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsAFoodPileOutsideStoragePit@MagicFood@@UAEIPAVCreature@@@Z");
// win1.41 005faab0 mac 103ac020 MagicFood::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9MagicFoodFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MagicFood@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_MAGIC_FOOD_INCLUDED_H */
