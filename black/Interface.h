#ifndef BW1_DECOMP_INTERFACE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhfile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "InterfaceCollide.h" /* For struct GInterfaceCollide */
#include "InterfaceFlags.h" /* For struct GInterfaceFlags */
#include "InterfaceHandState.h" /* For struct InterfaceHandState */
#include "InterfaceMessageBuffer.h" /* For struct GInterfaceMessageBuffer */

// Forward Declares

struct CHand;
struct GInterfaceStatus;
struct LHPlayer;
struct Leash;
struct LiquidParticleGroup;

struct GInterface
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  struct LiquidParticleGroup* liquid_particle_group;
  struct GInterfaceFlags flags;  /* 0x30 */
  int field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  struct LHReleasedOSFile file;  /* 0x50 */
  uint8_t field_0x58[0x104];
  uint32_t is_specific_playback;  /* 0x15c */
  uint32_t is_any_playback;  /* 0x160 */
  uint8_t field_0x164[0x30];
  uint32_t field_0x194;
  struct Leash* leash_0x198;
  struct Leash* leash_0x19c;
  struct Leash* leash_0x1a0;
  uint32_t field_0x1a4;
  uint32_t field_0x1a8;
  uint32_t field_0x1ac;
  uint32_t field_0x1b0;
  uint32_t field_0x1b4;
  uint32_t field_0x1b8;
  struct LHPlayer* player;
  uint8_t field_0x1c0[0x1a0];
  uint32_t field_0x360;
  uint32_t field_0x364;
  uint32_t field_0x368;
  uint32_t field_0x36c;
  uint32_t field_0x370;
  uint32_t field_0x374;
  uint32_t field_0x378;
  uint32_t field_0x37c;
  uint32_t field_0x380;
  uint32_t field_0x384;
  uint32_t field_0x388;
  uint32_t field_0x38c;
  uint32_t field_0x390;
  uint32_t field_0x394;
  uint32_t field_0x398;
  struct GInterfaceStatus* status;
  struct CHand* hand;  /* 0x3a0 */
  struct InterfaceHandState field_0x3a4;
  struct GInterfaceCollide interface_collide;  /* 0x3b0 */
  struct GInterfaceCollide field_0x3e0;
  float field_0x410;
  float field_0x414;
  uint32_t field_0x418;
  uint32_t field_0x41c;
  uint32_t field_0x420;
  uint32_t field_0x424;
  uint32_t field_0x428;
  uint32_t field_0x42c;
  struct GInterfaceMessageBuffer message_buffers;  /* 0x430 */
  int field_0x444;
  int field_0x448;
  uint32_t field_0x44c;
  uint32_t field_0x450;
  uint32_t field_0x454;
  uint32_t field_0x458;
  struct BaseInfo field_0x45c;
  uint32_t field_0x468;
  uint32_t field_0x46c;
  uint32_t field_0x470;
  uint32_t field_0x474;
  uint32_t field_0x478;
};
static_assert(sizeof(struct GInterface) == 0x47c, "Data type is of wrong size");

static struct GameThingWithPosVftable* __vt__10GInterface = (struct GameThingWithPosVftable*)0x0092a5a0;

// Non-virtual methods

// win1.41 005ce4d0 mac 1035be80 GInterface::SetToZero(void)
void __fastcall SetToZero__10GInterfaceFv(struct GInterface* this);
// win1.41 005ce670 mac 1035bd00 GInterface::Init(unsigned char)
void __fastcall Init__10GInterfaceFUc(struct GInterface* this, const void* edx, uint8_t player_number);
// win1.41 005ce7f0 mac 1035ba90 GInterface::InitLeash(void)
void __fastcall InitLeash__10GInterfaceFv(struct GInterface* this);
// win1.41 005ce920 mac 1035b8b0 GInterface::SetupHand(void)
void __fastcall SetupHand__10GInterfaceFv(struct GInterface* this);
// win1.41 005ceab0 mac 1007d9b0 GInterface::PostDrawProcess(void)
void __fastcall PostDrawProcess__10GInterfaceFv(struct GInterface* this);
// win1.41 005cec10 mac 100254c0 GInterface::Process(void)
void __fastcall Process__10GInterfaceFv(struct GInterface* this);
// win1.41 005d9130 mac 100315f0 GInterface::UpdateAllLeashes(void)
void __fastcall UpdateAllLeashes__10GInterfaceFv(struct GInterface* this);

#endif /* BW1_DECOMP_INTERFACE_INCLUDED_H */
