#ifndef BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;

struct GParticleContainer
{
  struct GameThingWithPos super;  /* 0x0 */
  struct GameThingWithPos* thing;  /* 0x28 */
  uint32_t field_0x2c;
  uint32_t field_0x30;
  float field_0x34;
  bool field_0x38;
  struct GParticleContainer* next;
};
static_assert(sizeof(struct GParticleContainer) == 0x40, "Data type is of wrong size");

// win1.41 008e2a10 mac 107461ec GParticleContainer::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18GParticleContainer asm("??_R4GParticleContainer@@6B@");

// win1.41 008e2a14 mac 107461f4 GParticleContainer::`vftable'
extern const struct GameThingVftable __vt__18GParticleContainer asm("??_7GParticleContainer@@6B@");

// Override methods

// win1.41 00560f80 mac 1010fd40 GParticleContainer::_dt(void)
void __fastcall __dt__18GParticleContainerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGParticleContainer@@UAEPAXI@Z");
// win1.41 0063e1d0 mac 10110830 GParticleContainer::ToBeDeleted(int)
void __fastcall ToBeDeleted__18GParticleContainerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GParticleContainer@@UAEXH@Z");
// win1.41 0063e3c0 mac 10000fb0 GParticleContainer::SetPlayer(GPlayer *)
void __fastcall SetPlayer__18GParticleContainerFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@GParticleContainer@@UAEXPAVGPlayer@@@Z");
// win1.41 00560f70 mac 1010feb0 GParticleContainer::GetDebugText(void)
char* __fastcall GetDebugText__18GParticleContainerFv(struct GameThing* this) asm("?GetDebugText@GParticleContainer@@UAEPADXZ");
// win1.41 0063e6d0 mac 1010ff00 GParticleContainer::Load(GameOSFile &)
uint32_t __fastcall Load__18GParticleContainerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GParticleContainer@@UAEIAAVGameOSFile@@@Z");
// win1.41 0063e5d0 mac 101100b0 GParticleContainer::Save(GameOSFile &)
uint32_t __fastcall Save__18GParticleContainerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GParticleContainer@@UAEIAAVGameOSFile@@@Z");
// win1.41 00560f60 mac 1010fe70 GParticleContainer::GetSaveType(void)
uint32_t __fastcall GetSaveType__18GParticleContainerFv(struct GameThing* this) asm("?GetSaveType@GParticleContainer@@UAEIXZ");
// win1.41 0063e3f0 mac 10110510 GParticleContainer::SetScale(float)
void __fastcall SetScale__18GParticleContainerFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetScale@GParticleContainer@@UAEXM@Z");
// win1.41 00560f40 mac 1010fde0 GParticleContainer::GetText(void)
const char* __fastcall GetText__18GParticleContainerFv(struct GameThingWithPos* this) asm("?GetText@GParticleContainer@@UAEPBDXZ");
// win1.41 00560f50 mac 1010fe20 GParticleContainer::IsParticleContainer(void)
uint32_t __fastcall IsParticleContainer__18GParticleContainerFv(struct GameThingWithPos* this) asm("?IsParticleContainer@GParticleContainer@@UAEIXZ");

DECLARE_LH_LIST_HEAD(GParticleContainer);

#endif /* BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H */
