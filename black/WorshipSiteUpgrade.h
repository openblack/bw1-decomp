#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Feature.h" /* For struct Feature */

// Forward Declares

struct Base;
struct GPlayer;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PlannedMultiMapFixed;
struct WorshipSite;

struct WorshipSiteUpgrade
{
  struct Feature super;  /* 0x0 */
};
static_assert(sizeof(struct WorshipSiteUpgrade) == 0x7c, "Data type is of wrong size");

// Override methods

// win1.41 0077ec70 mac inlined WorshipSiteUpgrade::_dt(void)
void __fastcall __dt__18WorshipSiteUpgradeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorshipSiteUpgrade@@UAEPAXI@Z");
// win1.41 0077eca0 mac inlined WorshipSiteUpgrade::ToBeDeleted(int)
void __fastcall ToBeDeleted__18WorshipSiteUpgradeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WorshipSiteUpgrade@@UAEXH@Z");
// win1.41 0077ed80 mac inlined WorshipSiteUpgrade::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__18WorshipSiteUpgradeFv(struct GameThing* this) asm("?GetPlayer@WorshipSiteUpgrade@@UAEPAVGPlayer@@XZ");
// win1.41 0077ec60 mac inlined WorshipSiteUpgrade::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__18WorshipSiteUpgradeFv(struct GameThingWithPos* this) asm("?GetWorshipSite@WorshipSiteUpgrade@@UAEPAVWorshipSite@@XZ");
// win1.41 0077ef30 mac inlined WorshipSiteUpgrade::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__18WorshipSiteUpgradeFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@WorshipSiteUpgrade@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 004220f0 mac inlined WorshipSiteUpgrade::IsRepaired(void)
bool __fastcall IsRepaired__18WorshipSiteUpgradeFv(struct MultiMapFixed* this) asm("?IsRepaired@WorshipSiteUpgrade@@UAE_NXZ");
// win1.41 00422110 mac inlined WorshipSiteUpgrade::IsBuilt(void)
bool __fastcall IsBuilt__18WorshipSiteUpgradeFv(struct MultiMapFixed* this) asm("?IsBuilt@WorshipSiteUpgrade@@UAE_NXZ");
// win1.41 00527790 mac inlined WorshipSiteUpgrade::IsDrawBuilding(void)
bool __fastcall IsDrawBuilding__18WorshipSiteUpgradeFv(struct MultiMapFixed* this) asm("?IsDrawBuilding@WorshipSiteUpgrade@@UAE_NXZ");
// win1.41 0077edd0 mac inlined WorshipSiteUpgrade::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__18WorshipSiteUpgradeFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@WorshipSiteUpgrade@@UAEPAVPlannedMultiMapFixed@@XZ");

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H */
