#ifndef BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileStatic.h" /* For struct MobileStatic */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct MagicTeleport
{
  struct MobileStatic super;  /* 0x0 */
};
static_assert(sizeof(struct MagicTeleport) == 0x88, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0360 mac inlined MagicTeleport::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13MagicTeleport asm("??_R0?AVMagicTeleport@@@8");
// win1.41 009b1b90 mac inlined MagicTeleport::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13MagicTeleport asm("??_R1A@?0A@A@MagicTeleport@@8");
// win1.41 009b1ba8 mac inlined MagicTeleport::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13MagicTeleport asm("??_R2MagicTeleport@@8");
// win1.41 009b1bd0 mac inlined MagicTeleport::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13MagicTeleport asm("??_R3MagicTeleport@@8");

// Override methods

// win1.41 005fc100 mac 103b0b60 MagicTeleport::_dt(void)
void __fastcall __dt__13MagicTeleportFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicTeleport@@UAEPAXI@Z");
// win1.41 005fc310 mac 103b06a0 MagicTeleport::ToBeDeleted(int)
void __fastcall ToBeDeleted__13MagicTeleportFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MagicTeleport@@UAEXH@Z");
// win1.41 005fc430 mac 103b0660 MagicTeleport::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__13MagicTeleportFv(struct GameThing* this) asm("?GetPlayer@MagicTeleport@@UAEPAVGPlayer@@XZ");
// win1.41 005fccb0 mac 103af460 MagicTeleport::Get2DRadius(void)
float __fastcall Get2DRadius__13MagicTeleportFv(struct GameThing* this) asm("?Get2DRadius@MagicTeleport@@UAEMXZ");
// win1.41 005fc0f0 mac 103af0b0 MagicTeleport::GetDebugText(void)
char* __fastcall GetDebugText__13MagicTeleportFv(struct GameThing* this) asm("?GetDebugText@MagicTeleport@@UAEPADXZ");
// win1.41 005fbf50 mac 103b1400 MagicTeleport::Load(GameOSFile &)
uint32_t __fastcall Load__13MagicTeleportFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicTeleport@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fbfa0 mac 103b1350 MagicTeleport::Save(GameOSFile &)
uint32_t __fastcall Save__13MagicTeleportFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicTeleport@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fc0e0 mac 103af070 MagicTeleport::GetSaveType(void)
uint32_t __fastcall GetSaveType__13MagicTeleportFv(struct GameThing* this) asm("?GetSaveType@MagicTeleport@@UAEIXZ");
// win1.41 005fc040 mac 103aed40 MagicTeleport::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc050 mac 103aed90 MagicTeleport::CanBeSetOnFire(Creature *)
uint32_t __fastcall CanBeSetOnFire__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSetOnFire@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc060 mac 103aede0 MagicTeleport::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc070 mac 103aee30 MagicTeleport::CanBeThrownByCreature(Creature *)
uint32_t __fastcall CanBeThrownByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc080 mac 103aee80 MagicTeleport::CanBePutInAStoragePit(Creature *)
uint32_t __fastcall CanBePutInAStoragePit__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePutInAStoragePit@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc090 mac 103aeed0 MagicTeleport::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc0a0 mac 103aef20 MagicTeleport::CanBeStonedAndEatenByCreature(Creature *)
uint32_t __fastcall CanBeStonedAndEatenByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStonedAndEatenByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc0b0 mac 103aef80 MagicTeleport::CanBeExaminedByCreature(Creature *)
uint32_t __fastcall CanBeExaminedByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeExaminedByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc0c0 mac 103aefd0 MagicTeleport::CanBeFoughtByCreature(Creature *)
uint32_t __fastcall CanBeFoughtByCreature__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFoughtByCreature@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc0d0 mac 103af020 MagicTeleport::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__13MagicTeleportFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@MagicTeleport@@UAEIPAVCreature@@@Z");
// win1.41 005fc960 mac 103af8d0 MagicTeleport::ActualMoveMapObject(MapCoords const &)
void __fastcall ActualMoveMapObject__13MagicTeleportFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?ActualMoveMapObject@MagicTeleport@@UAEXPBUMapCoords@@@Z");
// win1.41 005fccc0 mac 103af280 MagicTeleport::Draw(void)
void __fastcall Draw__13MagicTeleportFv(struct Object* this) asm("?Draw@MagicTeleport@@UAEXXZ");
// win1.41 005fc260 mac 103b0bf0 MagicTeleport::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__13MagicTeleportFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MagicTeleport@@UAEXABUMapCoords@@@Z");
// win1.41 005fc440 mac 103b05b0 MagicTeleport::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__13MagicTeleportFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@MagicTeleport@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005fc470 mac 103b0500 MagicTeleport::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__13MagicTeleportFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@MagicTeleport@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005fce00 mac 103af190 MagicTeleport::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__13MagicTeleportFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@MagicTeleport@@UAEIPAVEffectValues@@@Z");
// win1.41 005fcde0 mac 103af230 MagicTeleport::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__13MagicTeleportFv(struct Object* this) asm("?InteractsWithPhysicsObjects@MagicTeleport@@UAE_NXZ");
// win1.41 005fcdf0 mac 103af1e0 MagicTeleport::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__13MagicTeleportFv(struct Object* this) asm("?CanBecomeAPhysicsObject@MagicTeleport@@UAE_NXZ");
// win1.41 005fc4a0 mac 103b04c0 MagicTeleport::IsSolidToNewAbode(void)
uint32_t __fastcall IsSolidToNewAbode__13MagicTeleportFv(struct Object* this) asm("?IsSolidToNewAbode@MagicTeleport@@UAEIXZ");

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H */
