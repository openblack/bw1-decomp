#ifndef BW1_DECOMP_INTERFACE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhfile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct BaseInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "InterfaceCollide.h" /* For struct GInterfaceCollide */
#include "InterfaceFlags.h" /* For struct GInterfaceFlags */
#include "InterfaceHandState.h" /* For struct InterfaceHandState */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "InterfaceMessageBuffer.h" /* For struct GInterfaceMessageBuffer */

// Forward Declares

struct Base;
struct CHand;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct LHCoord;
struct LHPlayer;
struct LHPoint;
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

// Object Oriented datastructures

// win1.41 00bf1b00 mac inlined GInterface::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GInterface asm("??_R0?AVGInterface@@@8");
// win1.41 009b14e0 mac inlined GInterface::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GInterface asm("??_R1A@?0A@A@GInterface@@8");
// win1.41 009b14f8 mac inlined GInterface::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GInterface asm("??_R2GInterface@@8");
// win1.41 009b1510 mac inlined GInterface::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GInterface asm("??_R3GInterface@@8");
// win1.41 0092a59c mac 1099dd58 GInterface::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GInterface asm("??_R4GInterface@@6B@");
// win1.41 0092a5a0 mac 1099dd60 GInterface::`vftable'
extern const struct GameThingWithPosVftable __vt__10GInterface asm("??_7GInterface@@6B@");

// Non-virtual methods

// win1.41 005ce4d0 mac 1035be80 GInterface::SetToZero(void)
void __fastcall SetToZero__10GInterfaceFv(struct GInterface* this) asm("?SetToZero@GInterface@@QAEXXZ");
// win1.41 005ce670 mac 1035bd00 GInterface::Init(unsigned char)
void __fastcall Init__10GInterfaceFUc(struct GInterface* this, const void* edx, uint8_t player_number) asm("?Init@GInterface@@QAEXE@Z");
// win1.41 005ce7f0 mac 1035ba90 GInterface::InitLeash(void)
void __fastcall InitLeash__10GInterfaceFv(struct GInterface* this) asm("?InitLeash@GInterface@@QAEXXZ");
// win1.41 005ce920 mac 1035b8b0 GInterface::SetupHand(void)
void __fastcall SetupHand__10GInterfaceFv(struct GInterface* this) asm("?SetupHand@GInterface@@QAEXXZ");
// win1.41 005ce9e0 mac 1007b8b0 GInterface::PreDrawProcess(void)
void __fastcall PreDrawProcess__10GInterfaceFv(struct GInterface* this) asm("?PreDrawProcess@GInterface@@QAEXXZ");
// win1.41 005ceab0 mac 1007d9b0 GInterface::PostDrawProcess(void)
void __fastcall PostDrawProcess__10GInterfaceFv(struct GInterface* this) asm("?PostDrawProcess@GInterface@@QAEXXZ");
// win1.41 005cec10 mac 100254c0 GInterface::Process(void)
void __fastcall Process__10GInterfaceFv(struct GInterface* this) asm("?Process@GInterface@@QAEXXZ");
// win1.41 005d0610 mac 10084060 GInterface::UpdateHandRenderCollide(void)
void __fastcall UpdateHandRenderCollide__10GInterfaceFv(struct GInterface* this) asm("?UpdateHandRenderCollide@GInterface@@QAEXXZ");
// win1.41 005d9130 mac 100315f0 GInterface::UpdateAllLeashes(void)
void __fastcall UpdateAllLeashes__10GInterfaceFv(struct GInterface* this) asm("?UpdateAllLeashes@GInterface@@QAEXXZ");
// win1.41 005d9d80 mac 10004300 GInterface::SendMessageA(INTERFACE_MESSAGE_TYPES, LHCoord *)
bool __fastcall SendMessageA__10GInterfaceF23INTERFACE_MESSAGE_TYPESP7LHCoord(struct GInterface* this, const void* edx, enum INTERFACE_MESSAGE_TYPES param_1, struct LHCoord* param_2) asm("?SendMessageA@GInterface@@QAE_NW4INTERFACE_MESSAGE_TYPES@@PAULHCoord@@@Z");

// Override methods

// win1.41 005ce310 mac 1035c380 GInterface::_dt(void)
void __fastcall __dt__10GInterfaceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInterface@@UAEPAXI@Z");
// win1.41 005ce480 mac 1035c0e0 GInterface::ToBeDeleted(int)
void __fastcall ToBeDeleted__10GInterfaceFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GInterface@@UAEXH@Z");
// win1.41 005cec50 mac 1035b240 GInterface::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__10GInterfaceFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@GInterface@@UAEHPAULHPoint@@@Z");
// win1.41 005ce2c0 mac 10069130 GInterface::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__10GInterfaceFv(struct GameThing* this) asm("?GetPlayer@GInterface@@UAEPAVGPlayer@@XZ");
// win1.41 005ce300 mac 10357e40 GInterface::GetDebugText(void)
char* __fastcall GetDebugText__10GInterfaceFv(struct GameThing* this) asm("?GetDebugText@GInterface@@UAEPADXZ");
// win1.41 005d04d0 mac 10358550 GInterface::Load(GameOSFile &)
uint32_t __fastcall Load__10GInterfaceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GInterface@@UAEIAAVGameOSFile@@@Z");
// win1.41 005d0490 mac 103585e0 GInterface::Save(GameOSFile &)
uint32_t __fastcall Save__10GInterfaceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GInterface@@UAEIAAVGameOSFile@@@Z");
// win1.41 005ce2f0 mac 10357e00 GInterface::GetSaveType(void)
uint32_t __fastcall GetSaveType__10GInterfaceFv(struct GameThing* this) asm("?GetSaveType@GInterface@@UAEIXZ");
// win1.41 005d0590 mac 103581e0 GInterface::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__10GInterfaceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?SaveExtraData@GInterface@@UAEXAAVGameOSFile@@@Z");
// win1.41 005d0510 mac 10358340 GInterface::ResolveLoad(void)
void __fastcall ResolveLoad__10GInterfaceFv(struct GameThing* this) asm("?ResolveLoad@GInterface@@UAEXXZ");
// win1.41 005ce2e0 mac 10074680 GInterface::IsActive( const(void))
uint32_t __fastcall IsActive__10GInterfaceCFv(const struct GameThingWithPos* this) asm("?IsActive@GInterface@@UBEIXZ");
// win1.41 005ce2d0 mac 10357dc0 GInterface::GetText(void)
const char* __fastcall GetText__10GInterfaceFv(struct GameThingWithPos* this) asm("?GetText@GInterface@@UAEPBDXZ");

#endif /* BW1_DECOMP_INTERFACE_INCLUDED_H */
