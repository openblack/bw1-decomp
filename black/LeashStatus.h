#ifndef BW1_DECOMP_LEASH_STATUS_INCLUDED_H
#define BW1_DECOMP_LEASH_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;

struct GLeashStatus
{
  struct GameThing super;  /* 0x0 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint8_t player_number;  /* 0x30 */
  uint32_t field_0x34;
  struct GInterfaceStatus* interface_status;
};
static_assert(sizeof(struct GLeashStatus) == 0x3c, "Data type is of wrong size");

// win1.41 0092abcc mac 109a0a54 GLeashStatus::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12GLeashStatus asm("??_R4GLeashStatus@@6B@");

// win1.41 0092abd0 mac 109a0a5c GLeashStatus::`vftable'
extern const struct GameThingVftable __vt__12GLeashStatus asm("??_7GLeashStatus@@6B@");

// Override methods

// win1.41 005db940 mac 1037aca0 GLeashStatus::_dt(void)
void __fastcall __dt__12GLeashStatusFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGLeashStatus@@UAEPAXI@Z");
// win1.41 005e7630 mac 1037ae50 GLeashStatus::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__12GLeashStatusFv(struct GameThing* this) asm("?GetPlayer@GLeashStatus@@UAEPAVGPlayer@@XZ");
// win1.41 005e7430 mac 1037aeb0 GLeashStatus::Load(GameOSFile &)
uint32_t __fastcall Load__12GLeashStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GLeashStatus@@UAEIAAVGameOSFile@@@Z");
// win1.41 005e7230 mac 1037b1a0 GLeashStatus::Save(GameOSFile &)
uint32_t __fastcall Save__12GLeashStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GLeashStatus@@UAEIAAVGameOSFile@@@Z");
// win1.41 005db930 mac 1037ad30 GLeashStatus::GetSaveType(void)
uint32_t __fastcall GetSaveType__12GLeashStatusFv(struct GameThing* this) asm("?GetSaveType@GLeashStatus@@UAEIXZ");
// win1.41 005e71d0 mac 1037b4b0 GLeashStatus::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__12GLeashStatusFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?SaveExtraData@GLeashStatus@@UAEXAAVGameOSFile@@@Z");
// win1.41 005e7650 mac 1037ae10 GLeashStatus::ResolveLoad(void)
void __fastcall ResolveLoad__12GLeashStatusFv(struct GameThing* this) asm("?ResolveLoad@GLeashStatus@@UAEXXZ");

#endif /* BW1_DECOMP_LEASH_STATUS_INCLUDED_H */
