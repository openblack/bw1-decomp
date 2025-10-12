#ifndef BW1_DECOMP_P_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_P_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct Base;
struct GPlayer;
struct GameThing;
struct LHOSFile;
struct MapCoords;
struct Object;
struct Villager;

struct PFootball
{
  struct MultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PFootball) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfed78 mac inlined PFootball::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PFootball asm("??_R0?AVPFootball@@@8");
// win1.41 009b3160 mac inlined PFootball::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PFootball asm("??_R1A@?0A@A@PFootball@@8");
// win1.41 009b3178 mac inlined PFootball::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PFootball asm("??_R2PFootball@@8");
// win1.41 009b3198 mac inlined PFootball::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PFootball asm("??_R3PFootball@@8");

// Override methods

// win1.41 00643990 mac inlined PFootball::_dt(void)
void __fastcall __dt__9PFootballFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPFootball@@UAEPAXI@Z");
// win1.41 006438e0 mac inlined PFootball::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9PFootballFv(struct GameThing* this) asm("?GetPlayer@PFootball@@UAEPAVGPlayer@@XZ");
// win1.41 00643940 mac inlined PFootball::GetMesh( const(void))
int __fastcall GetMesh__9PFootballCFv(const struct Object* this) asm("?GetMesh@PFootball@@UBEHXZ");
// win1.41 00643fd0 mac inlined PFootball::Draw(void)
void __fastcall Draw__9PFootballFv(struct Object* this) asm("?Draw@PFootball@@UAEXXZ");
// win1.41 00644030 mac inlined PFootball::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9PFootballFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@PFootball@@UAEXABUMapCoords@@@Z");
// win1.41 00643980 mac inlined PFootball::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9PFootballFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@PFootball@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00643950 mac inlined PFootball::IsPlaytimeStructure(void)
bool __fastcall IsPlaytimeStructure__9PFootballFv(struct MultiMapFixed* this) asm("?IsPlaytimeStructure@PFootball@@UAE_NXZ");
// win1.41 00643960 mac inlined PFootball::IsPlaytimeStarted(void)
bool __fastcall IsPlaytimeStarted__9PFootballFv(struct MultiMapFixed* this) asm("?IsPlaytimeStarted@PFootball@@UAE_NXZ");
// win1.41 00644200 mac inlined PFootball::AddPlaytimeVillager(Villager *)
bool __fastcall AddPlaytimeVillager__9PFootballFP8Villager(struct MultiMapFixed* this, const void* edx, struct Villager* param_1) asm("?AddPlaytimeVillager@PFootball@@UAE_NPAVVillager@@@Z");
// win1.41 006438f0 mac inlined PFootball::IsRepaired(void)
bool __fastcall IsRepaired__9PFootballFv(struct MultiMapFixed* this) asm("?IsRepaired@PFootball@@UAE_NXZ");
// win1.41 00643910 mac inlined PFootball::IsBuilt(void)
bool __fastcall IsBuilt__9PFootballFv(struct MultiMapFixed* this) asm("?IsBuilt@PFootball@@UAE_NXZ");

struct PPlannedFootball
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PPlannedFootball) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfed58 mac inlined PPlannedFootball::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16PPlannedFootball asm("??_R0?AVPPlannedFootball@@@8");
// win1.41 009b3108 mac inlined PPlannedFootball::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16PPlannedFootball asm("??_R1A@?0A@A@PPlannedFootball@@8");
// win1.41 009b3120 mac inlined PPlannedFootball::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16PPlannedFootball asm("??_R2PPlannedFootball@@8");
// win1.41 009b3138 mac inlined PPlannedFootball::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16PPlannedFootball asm("??_R3PPlannedFootball@@8");

// Override methods

// win1.41 00643760 mac inlined PPlannedFootball::_dt(void)
void __fastcall __dt__16PPlannedFootballFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPPlannedFootball@@UAEPAXI@Z");
// win1.41 00643780 mac inlined PPlannedFootball::ToBeDeleted(int)
void __fastcall ToBeDeleted__16PPlannedFootballFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PPlannedFootball@@UAEXH@Z");
// win1.41 006437b0 mac inlined PPlannedFootball::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__16PPlannedFootballFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PPlannedFootball@@UAEPAVMultiMapFixed@@M@Z");

#endif /* BW1_DECOMP_P_FOOTBALL_INCLUDED_H */
