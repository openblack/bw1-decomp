#ifndef BW1_DECOMP_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "CreatureHelp.h" /* For struct CreatureHelpStackEntry, struct CreatureHelpState */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct BookmarkGraphic;
struct Bubble;
struct CreatureMental;
struct CreaturePhysical;
struct CreatureReceiveSpell;
struct Dance;
struct GAlignment;
struct GArena;
struct GCreatureInfo;
struct GParticleContainer;
struct GPlayer;
struct LH3DCreature;
struct LH3DSmoke;

struct CreatureEmotionsForMusic
{
  uint32_t field_0x0;
  uint32_t field_0x4;
};
static_assert(sizeof(struct CreatureEmotionsForMusic) == 0x8, "Data type is of wrong size");

struct Creature
{
  struct Living super;  /* 0x0 */
  char16_t name[0x40];  /* 0xe0 */
  struct CreaturePhysical* physical;  /* 0x160 */
  struct CreatureMental* mind;
  struct GAlignment* alignment;
  uint32_t field_0x16c;
  uint32_t field_0x170;
  uint32_t field_0x174;
  uint32_t field_0x178;
  uint32_t field_0x17c;
  uint32_t field_0x180;
  uint32_t field_0x184;
  struct CreatureHelpState help_state;
  struct LHLinkedList__CreatureHelpStackEntry help_stack_entries[0x2a];  /* 0x220 */
  struct CreatureReceiveSpell* receive_spell;  /* 0x370 */
  float field_0x374;
  float field_0x378;
  uint8_t field_0x37c;
  uint8_t field_0x37d;
  uint8_t field_0x37e;
  uint8_t field_0x37f;
  uint32_t field_0x380;
  uint32_t field_0x384;
  struct CreatureEmotionsForMusic emotions_for_music;
  uint32_t field_0x390[0xe];
  uint32_t field_0x3c8;
  uint32_t field_0x3cc;
  struct Creature* next;  /* 0x3d0 */
  uint32_t field_0x3d4;
  struct MapCoords field_0x3d8;
  uint32_t field_0x3e4;
  uint32_t field_0x3e8;
  struct MapCoords field_0x3ec;
  uint8_t field_0x3f8;
  uint8_t field_0x3f9;
  uint8_t field_0x3fa;
  uint8_t field_0x3fb;
  float field_0x3fc;
  float field_0x400;
  uint8_t field_0x404;
  uint8_t field_0x405;
  uint8_t field_0x406;
  uint8_t field_0x407;
  struct CreatureSubActionAgenda sub_action_agenda;
  int field_0x1058;
  uint32_t field_0x105c;
  uint32_t field_0x1060;
  uint32_t field_0x1064;
  uint32_t field_0x1068;
  uint32_t field_0x106c;
  struct GPlayer* owner;  /* 0x1070 */
  struct Dance* dance;
  uint32_t field_0x1078;
  struct GParticleContainer* particle_container_0x107c;
  struct GParticleContainer* particle_container_0x1080;
  uint32_t field_0x1084;
  uint32_t field_0x1088;
  uint32_t field_0x108c;
  uint32_t field_0x1090;
  uint32_t field_0x1094;
  uint32_t field_0x1098;
  struct LH3DSmoke* smoke;
  struct GArena* arena;  /* 0x10a0 */
  uint32_t field_0x10a4;
  uint32_t field_0x10a8;
  uint32_t field_0x10ac;
  uint32_t field_0x10b0;
  uint32_t field_0x10b4;
  uint32_t field_0x10b8;
  uint32_t field_0x10bc;
  uint32_t field_0x10c0;
  uint8_t field_0x10c4[0x8];
  uint32_t field_0x10cc;
  uint32_t field_0x10d0;
  uint32_t field_0x10d4;
  uint8_t field_0x10d8[0x10];
  uint32_t field_0x10e8;
  uint32_t field_0x10ec;
  uint32_t field_0x10f0;
  uint32_t field_0x10f4;
  uint32_t field_0x10f8;
  uint32_t field_0x10fc;
  uint32_t field_0x1100;
  uint32_t field_0x1104;
  uint32_t field_0x1108;
  uint32_t field_0x110c;
  int field_0x1110;
  uint32_t field_0x1114;
  uint32_t field_0x1118;
  uint32_t field_0x111c;
  uint32_t field_0x1120;
  int game_turn;
  uint8_t field_0x1128[0x28];
  uint32_t field_0x1150;
  uint32_t field_0x1154;
  uint32_t field_0x1158;
  uint32_t field_0x115c;
  uint32_t field_0x1160;
  struct MapCoords field_0x1164;
  uint32_t field_0x1170[0x8];
  uint32_t field_0x1190;
  uint8_t field_0x1194[0x14];
  struct MapCoords field_0x11a8;
  uint32_t field_0x11b4;
  uint32_t field_0x11b8;
  uint32_t field_0x11bc;
  uint32_t field_0x11c0;
  uint32_t field_0x11c4;
  uint32_t field_0x11c8;
  struct MapCoords field_0x11cc;
  uint8_t field_0x11d8[0xc];
  struct GParticleContainer* particle_container_0x11e4;
  uint32_t field_0x11e8;
  struct BookmarkGraphic* bookmark_graphic;
  uint8_t field_0x11f0;
  uint8_t field_0x11f1;
  uint8_t field_0x11f2;
  uint8_t field_0x11f3;
  uint32_t field_0x11f4;
  uint32_t field_0x11f8;
  uint32_t field_0x11fc;
  struct MapCoords field_0x1200;
  uint32_t field_0x120c;
  uint32_t field_0x1210;
  struct MapCoords field_0x1214;
  uint32_t field_0x1220;
  uint32_t field_0x1224;
  uint8_t field_0x1228[0x40];
  int field_0x1268;
  uint32_t field_0x126c;
  uint32_t field_0x1270;
  uint32_t field_0x1274;
  uint32_t field_0x1278;
  struct Bubble* bubble;
  uint32_t field_0x1280;
  uint32_t field_0x1284;
  uint32_t field_0x1288;
  uint8_t field_0x128c[0x8];
  uint32_t field_0x1294;
  uint32_t field_0x1298;
  int field_0x129c;
  uint32_t field_0x12a0;
  uint32_t field_0x12a4;
  uint32_t field_0x12a8;
  uint8_t field_0x12ac;
  uint8_t field_0x12ad;
  uint8_t field_0x12ae;
  uint8_t field_0x12af;
  uint32_t field_0x12b0;
  uint32_t field_0x12b4;
  uint32_t field_0x12b8;
  uint32_t field_0x12bc;
  uint32_t field_0x12c0;
  uint32_t field_0x12c4;
};
static_assert(sizeof(struct Creature) == 0x12c8, "Data type is of wrong size");

static struct LivingVftable* const __vt__8Creature = (struct LivingVftable* const)0x008cc810;

// Static methods

// win1.41 00474a20 mac 101dfc60 Creature::Create(MapCoords const &, CreatureInfo const *, GPlayer *)
struct Creature* __cdecl Create__8CreatureFRC9MapCoordsPC12CreatureInfoP7GPlayer(const struct MapCoords* coords, const struct GCreatureInfo* info, struct GPlayer* player);
// win1.41 00474b50 mac 101dfb90 Creature::CreateCreature(MapCoords const &, CreatureInfo const *, GPlayer *)
struct Creature* __cdecl CreateCreature__8CreatureFRC9MapCoordsPC12CreatureInfoP7GPlayer(const struct MapCoords* coords, const struct GCreatureInfo* info, struct GPlayer* player);

// Constructors

// win1.41 00474690 mac 101dfe30 Creature::Creature(void)
struct Creature* __fastcall __ct__8CreatureFv(struct Creature* this);

// Non-virtual methods

// win1.41 00477850 mac 101daef0 Creature::GetCreature3D(void)
struct LH3DCreature* __fastcall GetCreature3D__8CreatureFv(struct Creature* this);
// win1.41 0047c650 mac 101d2500 Creature::SetAnimationTimeModify(bool value)
void __fastcall SetAnimationTimeModify__8CreatureFb(struct Creature* this, const void* edx, bool value) asm("?SetAnimationTimeModify@Creature@@QAEX_N@Z");
// win1.41 004f8b80 mac 1028a7b0 Creature::ProcessSpells(void)
void __fastcall ProcessSpells__8CreatureFv(struct Creature* this);

// Override methods

// win1.41 00472dc0 mac 101e16f0 Creature::ProcessState(void)
uint32_t __fastcall ProcessState__8CreatureFv(struct Creature* this);

DECLARE_LH_LINKED_LIST(Creature);

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
