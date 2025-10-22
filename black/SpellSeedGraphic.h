#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GPlayer;
struct Game3DObject;
struct GameOSFile;
struct GameThing;
struct LHPoint;
struct MapCoords;

struct SpellSeedGraphic
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  int* field_0x2c;
  struct Game3DObject* obj;  /* 0x30 */
  float field_0x34;
  float field_0x38;
  float field_0x3c;
  float field_0x40;
  float field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  int* field_0x50;
  float field_0x54;
  float field_0x58;
  char field_0x5c;
  enum POWER_UP_TYPE power_up_type;  /* 0x60 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
};
static_assert(sizeof(struct SpellSeedGraphic) == 0x74, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22688 mac inlined SpellSeedGraphic::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16SpellSeedGraphic asm("??_R0?AVSpellSeedGraphic@@@8");
// win1.41 009b93f0 mac inlined SpellSeedGraphic::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16SpellSeedGraphic asm("??_R1A@?0A@A@SpellSeedGraphic@@8");
// win1.41 009b9408 mac inlined SpellSeedGraphic::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16SpellSeedGraphic asm("??_R2SpellSeedGraphic@@8");
// win1.41 009b9420 mac inlined SpellSeedGraphic::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16SpellSeedGraphic asm("??_R3SpellSeedGraphic@@8");
// win1.41 00981aa4 mac 109dbe4c SpellSeedGraphic::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16SpellSeedGraphic asm("??_R4SpellSeedGraphic@@6B@");
// win1.41 00981aa8 mac 109dbe54 SpellSeedGraphic::`vftable'
extern const struct GameThingWithPosVftable __vt__16SpellSeedGraphic asm("??_7SpellSeedGraphic@@6B@");

// Static methods

// win1.41 00725ea0 mac 10101da0 SpellSeedGraphic::operator new(unsigned long)
struct SpellSeedGraphic* __cdecl __nw__16SpellSeedGraphicFUl(uint32_t size) asm("??2SpellSeedGraphic@@SAPAXI@Z");
// win1.41 00726f60 mac 10523670 SpellSeedGraphic::Create(MapCoords const &, SPELL_SEED_TYPE, GPlayer *, float, POWER_UP_TYPE)
struct SpellSeedGraphic* __cdecl Create__16SpellSeedGraphicFRC9MapCoords15SPELL_SEED_TYPEP7GPlayerf13POWER_UP_TYPE(const struct MapCoords* coords, enum SPELL_SEED_TYPE type, struct GPlayer* player, float param_4, enum POWER_UP_TYPE effect) asm("?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z");

// Non-virtual methods

// win1.41 00727060 mac 10523210 SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE)
void __fastcall SetPowerUpType__16SpellSeedGraphicF13POWER_UP_TYPE(struct SpellSeedGraphic* this, const void* edx, enum POWER_UP_TYPE type) asm("?SetPowerUpType@SpellSeedGraphic@@QAEXW4POWER_UP_TYPE@@@Z");
// win1.41 00727080 mac 10523130 SpellSeedGraphic::CreatePUBand(void)
void __fastcall CreatePUBand__16SpellSeedGraphicFv(struct SpellSeedGraphic* this) asm("?CreatePUBand@SpellSeedGraphic@@QAEXXZ");

// Override methods

// win1.41 00726e50 mac 10521480 SpellSeedGraphic::_dt(void)
void __fastcall __dt__16SpellSeedGraphicFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSpellSeedGraphic@@UAEPAXI@Z");
// win1.41 00726fe0 mac 10523290 SpellSeedGraphic::ToBeDeleted(int)
void __fastcall ToBeDeleted__16SpellSeedGraphicFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SpellSeedGraphic@@UAEXH@Z");
// win1.41 007276a0 mac 10522450 SpellSeedGraphic::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__16SpellSeedGraphicFv(struct GameThing* this) asm("?GetPlayer@SpellSeedGraphic@@UAEPAVGPlayer@@XZ");
// win1.41 007276b0 mac 105223a0 SpellSeedGraphic::SetPlayer(GPlayer *)
void __fastcall SetPlayer__16SpellSeedGraphicFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@SpellSeedGraphic@@UAEXPAVGPlayer@@@Z");
// win1.41 00726e40 mac 105215a0 SpellSeedGraphic::GetDebugText(void)
char* __fastcall GetDebugText__16SpellSeedGraphicFv(struct GameThing* this) asm("?GetDebugText@SpellSeedGraphic@@UAEPADXZ");
// win1.41 00727ac0 mac 10521910 SpellSeedGraphic::Load(GameOSFile &)
uint32_t __fastcall Load__16SpellSeedGraphicFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@SpellSeedGraphic@@UAEIAAVGameOSFile@@@Z");
// win1.41 00727c70 mac 10521650 SpellSeedGraphic::Save(GameOSFile &)
uint32_t __fastcall Save__16SpellSeedGraphicFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@SpellSeedGraphic@@UAEIAAVGameOSFile@@@Z");
// win1.41 00726e30 mac 10521560 SpellSeedGraphic::GetSaveType(void)
uint32_t __fastcall GetSaveType__16SpellSeedGraphicFv(struct GameThing* this) asm("?GetSaveType@SpellSeedGraphic@@UAEIXZ");
// win1.41 00727e30 mac 105215f0 SpellSeedGraphic::ResolveLoad(void)
void __fastcall ResolveLoad__16SpellSeedGraphicFv(struct GameThing* this) asm("?ResolveLoad@SpellSeedGraphic@@UAEXXZ");
// win1.41 00727340 mac 10522ce0 SpellSeedGraphic::GetScale(void)
float __fastcall GetScale__16SpellSeedGraphicFv(struct GameThingWithPos* this) asm("?GetScale@SpellSeedGraphic@@UAEMXZ");
// win1.41 00726e20 mac 10521520 SpellSeedGraphic::GetText(void)
const char* __fastcall GetText__16SpellSeedGraphicFv(struct GameThingWithPos* this) asm("?GetText@SpellSeedGraphic@@UAEPBDXZ");
// win1.41 007277b0 mac 10522020 SpellSeedGraphic::ForDrawFXGetNumVertices(void)
int __fastcall ForDrawFXGetNumVertices__16SpellSeedGraphicFv(struct GameThingWithPos* this) asm("?ForDrawFXGetNumVertices@SpellSeedGraphic@@UAEHXZ");
// win1.41 00727800 mac 10521e20 SpellSeedGraphic::ForDrawFXGetVertexPos(long, LHPoint *)
void __fastcall ForDrawFXGetVertexPos__16SpellSeedGraphicFlP7LHPoint(struct GameThingWithPos* this, const void* edx, int param_1, struct LHPoint* param_2) asm("?ForDrawFXGetVertexPos@SpellSeedGraphic@@UAEXHPAULHPoint@@@Z");

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
