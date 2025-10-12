#ifndef BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MultiMapFixed;

struct PlannedTownCitadelHeart
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedTownCitadelHeart) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ceab8 mac inlined PlannedTownCitadelHeart::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23PlannedTownCitadelHeart asm("??_R0?AVPlannedTownCitadelHeart@@@8");
// win1.41 009a90a0 mac inlined PlannedTownCitadelHeart::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23PlannedTownCitadelHeart asm("??_R1A@?0A@A@PlannedTownCitadelHeart@@8");
// win1.41 009a90b8 mac inlined PlannedTownCitadelHeart::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23PlannedTownCitadelHeart asm("??_R2PlannedTownCitadelHeart@@8");
// win1.41 009a90d0 mac inlined PlannedTownCitadelHeart::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23PlannedTownCitadelHeart asm("??_R3PlannedTownCitadelHeart@@8");

// Override methods

// win1.41 00467e60 mac 101c1e40 PlannedTownCitadelHeart::_dt(void)
void __fastcall __dt__23PlannedTownCitadelHeartFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedTownCitadelHeart@@UAEPAXI@Z");
// win1.41 00467e80 mac 101bd9b0 PlannedTownCitadelHeart::ToBeDeleted(int)
void __fastcall ToBeDeleted__23PlannedTownCitadelHeartFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlannedTownCitadelHeart@@UAEXH@Z");
// win1.41 00467e50 mac 101c2000 PlannedTownCitadelHeart::GetDebugText(void)
char* __fastcall GetDebugText__23PlannedTownCitadelHeartFv(struct GameThing* this) asm("?GetDebugText@PlannedTownCitadelHeart@@UAEPADXZ");
// win1.41 00467ff0 mac 101bd570 PlannedTownCitadelHeart::Load(GameOSFile &)
uint32_t __fastcall Load__23PlannedTownCitadelHeartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PlannedTownCitadelHeart@@UAEIAAVGameOSFile@@@Z");
// win1.41 00467fc0 mac 101bd610 PlannedTownCitadelHeart::Save(GameOSFile &)
uint32_t __fastcall Save__23PlannedTownCitadelHeartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PlannedTownCitadelHeart@@UAEIAAVGameOSFile@@@Z");
// win1.41 00467e40 mac 101c1fb0 PlannedTownCitadelHeart::GetSaveType(void)
uint32_t __fastcall GetSaveType__23PlannedTownCitadelHeartFv(struct GameThing* this) asm("?GetSaveType@PlannedTownCitadelHeart@@UAEIXZ");
// win1.41 00467e20 mac 101c1f20 PlannedTownCitadelHeart::IsWonder(void)
uint32_t __fastcall IsWonder__23PlannedTownCitadelHeartFv(struct GameThingWithPos* this) asm("?IsWonder@PlannedTownCitadelHeart@@UAEIXZ");
// win1.41 00467ea0 mac 101bd8c0 PlannedTownCitadelHeart::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__23PlannedTownCitadelHeartFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedTownCitadelHeart@@UAEPAVMultiMapFixed@@M@Z");
// win1.41 00467ef0 mac 101bd6b0 PlannedTownCitadelHeart::CreatePlannedNoFixedCheck(float)
struct MultiMapFixed* __fastcall CreatePlannedNoFixedCheck__23PlannedTownCitadelHeartFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlannedNoFixedCheck@PlannedTownCitadelHeart@@UAEPAVMultiMapFixed@@M@Z");
// win1.41 00467e10 mac 101c1ee0 PlannedTownCitadelHeart::IsCivic(void)
bool __fastcall IsCivic__23PlannedTownCitadelHeartFv(struct PlannedMultiMapFixed* this) asm("?IsCivic@PlannedTownCitadelHeart@@UAE_NXZ");
// win1.41 00467e30 mac 101c1f60 PlannedTownCitadelHeart::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__23PlannedTownCitadelHeartFv(struct PlannedMultiMapFixed* this) asm("?GetAbodeType@PlannedTownCitadelHeart@@UAE?AW4ABODE_TYPE@@XZ");

#endif /* BW1_DECOMP_PLANNED_TOWN_CITADEL_HEART_INCLUDED_H */
