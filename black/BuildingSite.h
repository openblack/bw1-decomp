#ifndef BW1_DECOMP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct Base;
struct BuildingSite;
struct GInterfaceStatus;
struct GameOSFile;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PlannedMultiMapFixed;
struct Pot;
struct PotStructure;
struct Town;

struct BuildingSiteVftable
{
  struct GameThingVftable super;  /* 0x0 */
  void (__fastcall* Init)(struct BuildingSite* this);  /* 0xfc */
  void (__fastcall* Process)(struct BuildingSite* this);  /* 0x100 */
  uint32_t (__fastcall* GetWoodForStats)(struct BuildingSite* this);
  struct Pot* (__fastcall* GetPileWood)(struct BuildingSite* this, const void* edx, const struct MapCoords* coords);
  void (__fastcall* SetPileWood)(struct BuildingSite* this, const void* edx, struct Pot* wood_pile);
  void (__fastcall* CreatePileWood)(struct BuildingSite* this);  /* 0x110 */
  void (__fastcall* GetResourcePosAndYAngle)(struct BuildingSite* this, const void* edx, uint32_t resource_type, uint32_t param_2, float* out_pos_and_angle);
  void (__fastcall* RemovePotFromStructure)(struct BuildingSite* this, const void* edx, struct PotStructure* pot_structure);
  bool (__fastcall* IsLinkedToThisBuildingSite)(struct BuildingSite* this, const void* edx, struct Pot* pot);
  float (__fastcall* GetNearestEdge)(struct BuildingSite* this, const void* edx, float x, float y, int* out_edge_info);  /* 0x120 */
  void (__fastcall* GetNextPosFromIndex)(struct BuildingSite* this, const void* edx, int* in_out_index);
  void (__fastcall* GetRandomBuildPos)(struct BuildingSite* this, const void* edx, struct Object* object, int* out_pos);
};
static_assert(sizeof(struct BuildingSiteVftable) == 0x12c, "Data type is of wrong size");

union BuildingSiteBase
{
  struct GameThing super;
  struct BuildingSiteVftable* vftable;
  struct GameThingVftable* gameThing_vftable;
};
static_assert(sizeof(union BuildingSiteBase) == 0x14, "Data type is of wrong size");

struct BuildingSite
{
  union BuildingSiteBase base;  /* 0x0 */
  struct MultiMapFixed* root_building;  /* 0x14 */
  struct LHLinkedList__Villager building_worker_list;
  uint8_t field_0x20[0x14];
  struct LHPoint building_positions[0x7f];  /* 0x34 */
  uint8_t field_0x628[0x14];
  uint8_t field_0x63c[0x4];
  float life;  /* 0x640 */
};
static_assert(sizeof(struct BuildingSite) == 0x644, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd3f0 mac inlined BuildingSite::`RTTI Type Descriptor'
extern const struct RTTITypeDescriptor __RTTITypeDescriptor__12BuildingSite asm("??_R0?AVBuildingSite@@@8");
// win1.41 009a8590 mac inlined BuildingSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12BuildingSite asm("??_R1A@?0A@A@BuildingSite@@8");
// win1.41 009a85a8 mac inlined BuildingSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12BuildingSite asm("??_R2BuildingSite@@8");
// win1.41 009a85b8 mac inlined BuildingSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12BuildingSite asm("??_R3BuildingSite@@8");
// win1.41 008c6b68 mac 107391b8 BuildingSite::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12BuildingSite asm("??_R4BuildingSite@@6B@");
// win1.41 008c6b6c mac 107391d0 BuildingSite::`vftable'
extern const struct BuildingSiteVftable __vt__12BuildingSite asm("??_7BuildingSite@@6B@");

// Constructors

// win1.41 0043b700 mac 100bd350 BuildingSite::BuildingSite(PlannedMultiMapFixed *)
struct BuildingSite* __fastcall __ct__12BuildingSiteFP20PlannedMultiMapFixed(struct BuildingSite* this, const void* edx, struct PlannedMultiMapFixed* param_1);
// win1.41 0043b7e0 mac 100bcec0 BuildingSite::BuildingSite(MultiMapFixed *)
struct BuildingSite* __fastcall __ct__12BuildingSiteFP13MultiMapFixed(struct BuildingSite* this, const void* edx, struct MultiMapFixed* param_1);

// Non-virtual methods

// win1.41 0043bc70 mac 1005fd40 BuildingSite::GetBuilding(void)
struct MultiMapFixed* __fastcall GetBuilding__12BuildingSiteFv(struct BuildingSite* this);
// win1.41 0043d080 mac 100b9660 BuildingSite::BuildBy(float)
void __fastcall BuildBy__12BuildingSiteFf(struct BuildingSite* this, const void* edx, float param_1);

// Override methods

// win1.41 0043b7b0 mac 100bcd40 BuildingSite::_dt(void)
void __fastcall __dt__12BuildingSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBuildingSite@@UAEPAXI@Z");
// win1.41 0043b960 mac 100bc6d0 BuildingSite::ToBeDeleted(int)
void __fastcall ToBeDeleted__12BuildingSiteFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@BuildingSite@@UAEXH@Z");
// win1.41 0043c0b0 mac 100bb940 BuildingSite::GetTown(void)
struct Town* __fastcall GetTown__12BuildingSiteFv(struct GameThing* this) asm("?GetTown@BuildingSite@@UAEPAVTown@@XZ");
// win1.41 0043d050 mac 100b96d0 BuildingSite::GetRadius(void)
float __fastcall GetRadius__12BuildingSiteFv(struct GameThing* this) asm("?GetRadius@BuildingSite@@UAEMXZ");
// win1.41 0043c5b0 mac 100bae60 BuildingSite::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__12BuildingSiteF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResource@BuildingSite@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0043c490 mac 100bb090 BuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__12BuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@BuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0043c530 mac 100baf20 BuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__12BuildingSiteF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@BuildingSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0043cad0 mac 100b9cf0 BuildingSite::Load(GameOSFile &)
uint32_t __fastcall Load__12BuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@BuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043c830 mac 100ba480 BuildingSite::Save(GameOSFile &)
uint32_t __fastcall Save__12BuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@BuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043b7a0 mac 100be420 BuildingSite::GetSaveType(void)
uint32_t __fastcall GetSaveType__12BuildingSiteFv(struct GameThing* this) asm("?GetSaveType@BuildingSite@@UAEIXZ");
// win1.41 0043b950 mac 100bcd10 BuildingSite::Init(void)
void __fastcall Init__12BuildingSiteFv(struct BuildingSite* this) asm("?Init@BuildingSite@@UAEXXZ");

DECLARE_LH_LINKED_LIST(BuildingSite);
DECLARE_LH_LIST_HEAD(BuildingSite);

#endif /* BW1_DECOMP_BUILDING_SITE_INCLUDED_H */
