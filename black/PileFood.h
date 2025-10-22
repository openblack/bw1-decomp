#ifndef BW1_DECOMP_PILE_FOOD_INCLUDED_H
#define BW1_DECOMP_PILE_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

struct Base;
struct Creature;
struct GPotInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct Town;

struct PileFood
{
  struct PileResource super;  /* 0x0 */
  struct PileFood* next;  /* 0xb4 */
  uint32_t field_0xb8;
};
static_assert(sizeof(struct PileFood) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beca40 mac inlined PileFood::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8PileFood asm("??_R0?AVPileFood@@@8");
// win1.41 009ad5e0 mac inlined PileFood::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8PileFood asm("??_R1A@?0A@A@PileFood@@8");
// win1.41 009b3448 mac inlined PileFood::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8PileFood asm("??_R2PileFood@@8");
// win1.41 009b3478 mac inlined PileFood::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8PileFood asm("??_R3PileFood@@8");
// win1.41 00933058 mac 1074939c PileFood::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8PileFood asm("??_R4PileFood@@6B@");
// win1.41 0093305c mac 107493a4 PileFood::`vftable'
extern const struct PotVftable __vt__8PileFood asm("??_7PileFood@@6B@");

// Constructors

// win1.41 0066dfe0 mac 1011a450 PileFood::PileFood(void)
struct PileFood* __fastcall __ct__8PileFoodFv(struct PileFood* this) asm("??0PileFood@@QAE@XZ");
// win1.41 0066e070 mac 1011a2b0 PileFood::PileFood(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PileFood* __fastcall __ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PileFood* this, const void* edx, struct MapCoords* coords, struct GPotInfo* param_2, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8) asm("??0PileFood@@QAE@ABUMapCoords@@PBVGPotInfo@@KPAVMultiMapFixed@@PAVTown@@HMM@Z");

// Override methods

// win1.41 0066e040 mac 1011a220 PileFood::_dt(void)
void __fastcall __dt__8PileFoodFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPileFood@@UAEPAXI@Z");
// win1.41 0066e100 mac 10119f30 PileFood::ToBeDeleted(int)
void __fastcall ToBeDeleted__8PileFoodFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PileFood@@UAEXH@Z");
// win1.41 0066f180 mac 10116f30 PileFood::Get2DRadius(void)
float __fastcall Get2DRadius__8PileFoodFv(struct GameThing* this) asm("?Get2DRadius@PileFood@@UAEMXZ");
// win1.41 0066e030 mac 1011d5f0 PileFood::GetDebugText(void)
char* __fastcall GetDebugText__8PileFoodFv(struct GameThing* this) asm("?GetDebugText@PileFood@@UAEPADXZ");
// win1.41 0066f5e0 mac 10116570 PileFood::Load(GameOSFile &)
uint32_t __fastcall Load__8PileFoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PileFood@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066f5a0 mac 10116600 PileFood::Save(GameOSFile &)
uint32_t __fastcall Save__8PileFoodFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PileFood@@UAEIAAVGameOSFile@@@Z");
// win1.41 0066e020 mac 1011d5b0 PileFood::GetSaveType(void)
uint32_t __fastcall GetSaveType__8PileFoodFv(struct GameThing* this) asm("?GetSaveType@PileFood@@UAEIXZ");
// win1.41 0055d690 mac 1011d570 PileFood::IsPileFood(void)
uint32_t __fastcall IsPileFood__8PileFoodFv(struct GameThingWithPos* this) asm("?IsPileFood@PileFood@@UAEIXZ");
// win1.41 0066e2a0 mac 10119c00 PileFood::GetQueryFirstEnumText(void)
enum HELP_TEXT __fastcall GetQueryFirstEnumText__8PileFoodFv(struct GameThingWithPos* this) asm("?GetQueryFirstEnumText@PileFood@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0066e2d0 mac 10119b60 PileFood::GetQueryLastEnumText(void)
enum HELP_TEXT __fastcall GetQueryLastEnumText__8PileFoodFv(struct GameThingWithPos* this) asm("?GetQueryLastEnumText@PileFood@@UAE?AW4HELP_TEXT@@XZ");
// win1.41 0051bf80 mac 10030810 PileFood::Draw(void)
void __fastcall Draw__8PileFoodFv(struct Object* this) asm("?Draw@PileFood@@UAEXXZ");
// win1.41 0066e1a0 mac 10119ea0 PileFood::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8PileFoodFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@PileFood@@UAEXABUMapCoords@@@Z");
// win1.41 0066e380 mac 10119a40 PileFood::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__8PileFoodFv(struct Object* this) asm("?Get3DType@PileFood@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0066ec50 mac 10117fe0 PileFood::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__8PileFoodFv(struct Object* this) asm("?GetResourceType@PileFood@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 0066e1f0 mac 10119d80 PileFood::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8PileFoodFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@PileFood@@UAE_NPAVCreature@@@Z");

DECLARE_LH_LIST_HEAD(PileFood);

#endif /* BW1_DECOMP_PILE_FOOD_INCLUDED_H */
