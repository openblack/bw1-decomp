#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct GMultiMapFixedInfo;
struct MapCoords;
struct Town;

struct PlannedAbode
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
  struct Town* town;  /* 0x48 */
};
static_assert(sizeof(struct PlannedAbode) == 0x4c, "Data type is of wrong size");

// win1.41 008aa3b8 mac 10746fa8 PlannedAbode::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12PlannedAbode asm("??_R4PlannedAbode@@6B@");

// win1.41 008aa3bc mac 10746fb0 PlannedAbode::`vftable'
extern const struct PlannedMultiMapFixedVftable __vt__12PlannedAbode asm("??_7PlannedAbode@@6B@");

// Static methods

// win1.41 00405600 mac 10479fb0 PlannedAbode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __cdecl Create__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5);
// win1.41 004056d0 mac 10007bf0 PlannedAbode::GetInfo(void)
struct GPlannedAbodeInfo* __cdecl GetInfo__12PlannedAbodeFv(void) asm("?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");

// Constructors

// win1.41 00405080 mac 103e51a0 PlannedAbode::PlannedAbode(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __fastcall __ct__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct PlannedAbode* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5);

// Non-virtual methods

// win1.41 004055a0 mac 103e5560 PlannedAbode::Init(Town *)
void __fastcall Init__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, struct Town* town);

// Override methods

// win1.41 00405110 mac 1017d1f0 PlannedAbode::_dt(void)
void __fastcall __dt__12PlannedAbodeFv(struct Base* this, const void* edx, uint8_t param_1) asm("??_DPlannedAbode@@QAEXXZ");
// win1.41 004056b0 mac 100c5460 PlannedAbode::ToBeDeleted(int)
void __fastcall ToBeDeleted__12PlannedAbodeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PlannedAbode@@UAEXH@Z");
// win1.41 004050e0 mac 10352440 PlannedAbode::GetTown(void)
struct Town* __fastcall GetTown__12PlannedAbodeFv(struct GameThing* this) asm("?GetTown@PlannedAbode@@QAEPAVTown@@XZ");
// win1.41 00405100 mac 10179a00 PlannedAbode::GetDebugText(void)
char* __fastcall GetDebugText__12PlannedAbodeFv(struct GameThing* this) asm("?GetDebugText@PlannedAbode@@QAEPADXZ");
// win1.41 00405860 mac 10260310 PlannedAbode::Load(GameOSFile &)
uint32_t __fastcall Load__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z");
// win1.41 00405830 mac 10350950 PlannedAbode::Save(GameOSFile &)
uint32_t __fastcall Save__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z");
// win1.41 004050f0 mac 10531c20 PlannedAbode::GetSaveType(void)
uint32_t __fastcall GetSaveType__12PlannedAbodeFv(struct GameThing* this) asm("?GetSaveType@PlannedAbode@@UAEIXZ");
// win1.41 004061a0 mac 104333f0 PlannedAbode::IsWonder(void)
bool32_t __fastcall IsWonder__12PlannedAbodeFv(struct GameThingWithPos* this) asm("?IsWonder@PlannedAbode@@UAE_NXZ");
// win1.41 00405710 mac 10570d80 PlannedAbode::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 00405770 mac 10282ed0 PlannedAbode::CreatePlannedNoFixedCheck(float)
struct MultiMapFixed* __fastcall CreatePlannedNoFixedCheck__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z");
// win1.41 004060c0 mac 101a36e0 PlannedAbode::IsCivic(void)
bool __fastcall IsCivic__12PlannedAbodeFv(struct PlannedMultiMapFixed* this) asm("?IsCivic@PlannedAbode@@QAE_NXZ");
// win1.41 004061e0 mac 10007c40 PlannedAbode::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__12PlannedAbodeFv(struct PlannedMultiMapFixed* this) asm("?GetAbodeType@PlannedAbode@@QAE?AW4ABODE_TYPE@@XZ");

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */
