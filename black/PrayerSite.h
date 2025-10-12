#ifndef BW1_DECOMP_PRAYER_SITE_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Base;
struct Creature;
struct GPlayer;
struct GameThing;
struct Object;
struct Town;

struct PrayerSite
{
  struct MultiMapFixed super;  /* 0x0 */
};
static_assert(sizeof(struct PrayerSite) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02100 mac inlined PrayerSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PrayerSite asm("??_R0?AVPrayerSite@@@8");
// win1.41 009b3608 mac inlined PrayerSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PrayerSite asm("??_R1A@?0A@A@PrayerSite@@8");
// win1.41 009b3620 mac inlined PrayerSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PrayerSite asm("??_R2PrayerSite@@8");
// win1.41 009b3640 mac inlined PrayerSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PrayerSite asm("??_R3PrayerSite@@8");

// Override methods

// win1.41 00670800 mac inlined PrayerSite::_dt(void)
void __fastcall __dt__10PrayerSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPrayerSite@@UAEPAXI@Z");
// win1.41 00670830 mac inlined PrayerSite::ToBeDeleted(int)
void __fastcall ToBeDeleted__10PrayerSiteFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PrayerSite@@UAEXH@Z");
// win1.41 006708c0 mac inlined PrayerSite::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__10PrayerSiteFv(struct GameThing* this) asm("?GetPlayer@PrayerSite@@UAEPAVGPlayer@@XZ");
// win1.41 006708e0 mac inlined PrayerSite::GetTown(void)
struct Town* __fastcall GetTown__10PrayerSiteFv(struct GameThing* this) asm("?GetTown@PrayerSite@@UAEPAVTown@@XZ");
// win1.41 006708b0 mac inlined PrayerSite::Process(void)
uint32_t __fastcall Process__10PrayerSiteFv(struct Object* this) asm("?Process@PrayerSite@@UAEIXZ");
// win1.41 006707f0 mac inlined PrayerSite::GetMesh( const(void))
int __fastcall GetMesh__10PrayerSiteCFv(const struct Object* this) asm("?GetMesh@PrayerSite@@UBEHXZ");
// win1.41 00670a10 mac inlined PrayerSite::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__10PrayerSiteFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@PrayerSite@@UAE_NPAVCreature@@@Z");

#endif /* BW1_DECOMP_PRAYER_SITE_INCLUDED_H */
