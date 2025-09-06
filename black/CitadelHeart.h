#ifndef BW1_DECOMP_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For LEASH_TYPE_LAST */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Citadel;
struct GCitadelHeartInfo;
struct GTribeInfo;
struct GWorshipSiteInfo;
struct GameOSFile;
struct GameThing;
struct LH3DObject;
struct LH3DSprite;
struct MapCoords;
struct TempleLeash;
struct WorshipSite;

struct LeashObj
{
  struct Object super;  /* 0x0 */
  int field_0x54;
  struct TempleLeash* temple_leash;
  struct LH3DObject* object;
  float field_0x60;
  float field_0x64;
  float field_0x68;
  uint32_t field_0x6c;
  struct LH3DSprite* sprite;  /* 0x70 */
  float field_0x74;
};
static_assert(sizeof(struct LeashObj) == 0x78, "Data type is of wrong size");

struct TempleLeash
{
  int field_0x0;
  struct LeashObj* leashes[LEASH_TYPE_LAST];
};
static_assert(sizeof(struct TempleLeash) == 0x10, "Data type is of wrong size");

// Constructors

// win1.41 00464650 mac 101c1350 TempleLeash::TempleLeash(LH3DObject *, unsigned long)
struct TempleLeash* __fastcall __ct__11TempleLeashFP10LH3DObjectUl(struct TempleLeash* this, const void* edx, struct LH3DObject* param_1, uint32_t param_2);

struct CitadelHeart
{
  struct CitadelPart super;  /* 0x0 */
  uint32_t field_0x8c;
  uint32_t field_0x90;
  struct GameThing* field_0x94;
  struct GameThing* field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  int field_0xa4;
  uint32_t field_0xa8;
  struct GameThing* field_0xac;
  struct GameThing* field_0xb0;
  uint32_t field_0xb4;
  uint8_t field_0xb8;
  float field_0xbc;
  struct GameThing* field_0xc0;
  uint32_t field_0xc4;
  uint32_t field_0xc8;
  struct GameThing* field_0xcc;
  float field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  struct GameThing* field_0xdc;
  uint32_t field_0xe0;
  struct TempleLeash* leashes;
};
static_assert(sizeof(struct CitadelHeart) == 0xe8, "Data type is of wrong size");

// win1.41 008c8cfc mac 1077b83c CitadelHeart::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12CitadelHeart asm("??_R4CitadelHeart@@6B@");

// win1.41 008c8d00 mac 1077b844 CitadelHeart::`vftable'
extern const struct MultiMapFixedVftable __vt__12CitadelHeart asm("??_7CitadelHeart@@6B@");

// Static methods

// win1.41 00464e20 mac 101c0960 CitadelHeart::Create(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
struct CitadelHeart* __cdecl Create__12CitadelHeartFRC9MapCoordsPC17GCitadelHeartInfoP7Citadelfffi(struct MapCoords* coords, struct GCitadelHeartInfo* info, struct Citadel* citadel, float param_4, float param_5, float param_6, int param_7);

// Constructors

// win1.41 inlined mac inlined CitadelHeart::CitadelHeart(void)
struct CitadelHeart* __fastcall __ct__12CitadelHeartFv(struct CitadelHeart* this);
// win1.41 004649b0 mac 101c0f90 CitadelHeart::__ct(MapCoords const &, GCitadelHeartInfo const *, Citadel *, float, float, float, int)
struct CitadelHeart* __fastcall __ct__12CitadelHeartFRC9MapCoordsPC17GCitadelHeartInfoP7Citadelfffi(struct CitadelHeart* this, const void* edx, struct MapCoords* coords, struct GCitadelHeartInfo* info, struct Citadel* citadel, float param_4, float param_5, float param_6, int param_7);

// Non-virtual methods

// win1.41 00464950 mac 101c1180 CitadelHeart::CreateLeashes(void)
void __fastcall CreateLeashes__12CitadelHeartFv(struct CitadelHeart* this);
// win1.41 00464da0 mac 101c0af0 CitadelHeart::SetToZero(void)
void __fastcall SetToZero__12CitadelHeartFv(struct CitadelHeart* this);
// win1.41 00465110 mac 101c03b0 CitadelHeart::CreateBuiltWorshipSite(MapCoords const &, GWorshipSiteInfo const *, Citadel *, GTribeInfo const *)
struct WorshipSite* __fastcall CreateBuiltWorshipSite__12CitadelHeartFRC9MapCoordsPC16GWorshipSiteInfoP7CitadelPC10GTribeInfo(struct CitadelHeart* this, const void* edx, const struct MapCoords* coords, const struct GWorshipSiteInfo* info, const struct Citadel* citadel, const struct GTribeInfo* tribe_info);

// Override methods

// win1.41 004657f0 mac 101bf6e0 CitadelHeart::Load(GameOSFile &)
uint32_t __fastcall Load__12CitadelHeartFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file);
// win1.41 004675a0 mac 101be430 CitadelHeart::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12CitadelHeartFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@CitadelHeart@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_CITADEL_HEART_INCLUDED_H */
