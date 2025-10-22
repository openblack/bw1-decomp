#ifndef BW1_DECOMP_MAP_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GMagicInfo;
struct GMapShieldInfo;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct LHOSFile;
struct MapCoords;
struct MapShield;
struct Object;
struct SpellShield;

struct MapShieldVftable
{
  struct SingleMapFixedVftable super;  /* 0x0 */
  void (__fastcall* ProcessShield)(struct MapShield* this);  /* 0x868 */
  void (__fastcall* DrawShield)(struct MapShield* this);
  bool (__fastcall* IsPointDefinietlyWithinShieldVolume)(struct MapShield* this, const void* edx, const struct MapCoords* point);  /* 0x870 */
};
static_assert(sizeof(struct MapShieldVftable) == 0x874, "Data type is of wrong size");

struct MapShield
{
  struct SingleMapFixed super;  /* 0x0 */
  struct MapShield* next;  /* 0x5c */
  struct SpellShield* spell;  /* 0x60 */
  struct GMagicInfo* spell_info;
};
static_assert(sizeof(struct MapShield) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c227e8 mac inlined MapShield::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9MapShield asm("??_R0?AVMapShield@@@8");
// win1.41 009b9600 mac inlined MapShield::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9MapShield asm("??_R1A@?0A@A@MapShield@@8");
// win1.41 009b9618 mac inlined MapShield::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9MapShield asm("??_R2MapShield@@8");
// win1.41 009b9638 mac inlined MapShield::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9MapShield asm("??_R3MapShield@@8");
// win1.41 00982e70 mac 109def60 MapShield::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9MapShield asm("??_R4MapShield@@6B@");
// win1.41 00982e74 mac 109def98 MapShield::`vftable'
extern const struct MapShieldVftable __vt__9MapShield asm("??_7MapShield@@6B@");

// Constructors

// win1.41 0072c070 mac 10531a30 MapShield::__ct(MapCoords const &, GMapShieldInfo *, SpellShield *)
struct MapShield* __fastcall __ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield(struct MapShield* this, const void* edx, struct MapCoords* coords, struct GMapShieldInfo* info, struct SpellShield* spell) asm("??0MapShield@@QAE@ABUMapCoords@@PAVGMapShieldInfo@@PAVSpellShield@@@Z");

// Override methods

// win1.41 0072c050 mac 105304c0 MapShield::_dt(void)
void __fastcall __dt__9MapShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMapShield@@UAEPAXI@Z");
// win1.41 0072c0f0 mac 10531870 MapShield::ToBeDeleted(int)
void __fastcall ToBeDeleted__9MapShieldFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MapShield@@UAEXH@Z");
// win1.41 0072c150 mac 10531800 MapShield::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9MapShieldFv(struct GameThing* this) asm("?GetPlayer@MapShield@@UAEPAVGPlayer@@XZ");
// win1.41 0072c040 mac 10534210 MapShield::GetDebugText(void)
char* __fastcall GetDebugText__9MapShieldFv(struct GameThing* this) asm("?GetDebugText@MapShield@@UAEPADXZ");
// win1.41 0072c350 mac 10531180 MapShield::Load(GameOSFile &)
uint32_t __fastcall Load__9MapShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MapShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072c390 mac 105310e0 MapShield::Save(GameOSFile &)
uint32_t __fastcall Save__9MapShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MapShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072c030 mac 105341d0 MapShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__9MapShieldFv(struct GameThing* this) asm("?GetSaveType@MapShield@@UAEIXZ");
// win1.41 0072c010 mac 10534010 MapShield::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__9MapShieldFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@MapShield@@UAEIXZ");
// win1.41 0072c1b0 mac 10531700 MapShield::GetMesh( const(void))
int __fastcall GetMesh__9MapShieldCFv(const struct Object* this) asm("?GetMesh@MapShield@@UBEHXZ");
// win1.41 0072c1c0 mac 105316c0 MapShield::GetTopPos(void)
float __fastcall GetTopPos__9MapShieldFv(struct Object* this) asm("?GetTopPos@MapShield@@UAEMXZ");
// win1.41 0072c000 mac 10533fc0 MapShield::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__9MapShieldFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@MapShield@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0072c1e0 mac 10531620 MapShield::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
void __fastcall ShouldPhysicsRaiseObjectUntilNotIntersectingThis__9MapShieldFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@MapShield@@UAEXPAVObject@@@Z");
// win1.41 0072c1d0 mac 10531680 MapShield::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__9MapShieldFv(struct Object* this) asm("?CanBecomeAPhysicsObject@MapShield@@UAE_NXZ");
// win1.41 0072c170 mac 10531740 MapShield::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__9MapShieldFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@MapShield@@UAE_NPAVCreature@@@Z");
// win1.41 0072c020 mac 10534060 MapShield::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9MapShieldFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@MapShield@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(MapShield);

#endif /* BW1_DECOMP_MAP_SHIELD_INCLUDED_H */
