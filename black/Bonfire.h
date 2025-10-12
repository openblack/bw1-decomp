#ifndef BW1_DECOMP_BONFIRE_INCLUDED_H
#define BW1_DECOMP_BONFIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Rock.h" /* For struct Rock */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;
struct PhysicsObject;

struct Bonfire
{
  struct Rock super;  /* 0x0 */
};
static_assert(sizeof(struct Bonfire) == 0x94, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd340 mac inlined Bonfire::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7Bonfire asm("??_R0?AVBonfire@@@8");
// win1.41 009a8528 mac inlined Bonfire::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7Bonfire asm("??_R1A@?0A@A@Bonfire@@8");
// win1.41 009a8540 mac inlined Bonfire::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7Bonfire asm("??_R2Bonfire@@8");
// win1.41 009a8568 mac inlined Bonfire::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7Bonfire asm("??_R3Bonfire@@8");

// Override methods

// win1.41 00439800 mac 100b3c10 Bonfire::_dt(void)
void __fastcall __dt__7BonfireFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBonfire@@UAEPAXI@Z");
// win1.41 004397f0 mac 100b3ec0 Bonfire::GetDebugText(void)
char* __fastcall GetDebugText__7BonfireFv(struct GameThing* this) asm("?GetDebugText@Bonfire@@UAEPADXZ");
// win1.41 00439a00 mac 100b4800 Bonfire::Load(GameOSFile &)
uint32_t __fastcall Load__7BonfireFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Bonfire@@UAEIAAVGameOSFile@@@Z");
// win1.41 00439990 mac 100b48d0 Bonfire::Save(GameOSFile &)
uint32_t __fastcall Save__7BonfireFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Bonfire@@UAEIAAVGameOSFile@@@Z");
// win1.41 004397e0 mac 100b3e80 Bonfire::GetSaveType(void)
uint32_t __fastcall GetSaveType__7BonfireFv(struct GameThing* this) asm("?GetSaveType@Bonfire@@UAEIXZ");
// win1.41 004397c0 mac 100b3dd0 Bonfire::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__7BonfireFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@Bonfire@@UAEXH@Z");
// win1.41 00439a70 mac 100b47a0 Bonfire::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__7BonfireFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Bonfire@@UAEIXZ");
// win1.41 00439a90 mac 1001a450 Bonfire::Draw(void)
void __fastcall Draw__7BonfireFv(struct Object* this) asm("?Draw@Bonfire@@UAEXXZ");
// win1.41 00439840 mac 100b4c70 Bonfire::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__7BonfireFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Bonfire@@UAEXABUMapCoords@@@Z");
// win1.41 00439790 mac 100b3cf0 Bonfire::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__7BonfireFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Bonfire@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00439780 mac 100b3ca0 Bonfire::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__7BonfireFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@Bonfire@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 004397b0 mac 100b3d80 Bonfire::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__7BonfireFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Bonfire@@UAE_NXZ");
// win1.41 00439a80 mac 100b4750 Bonfire::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__7BonfireFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Bonfire@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 004397a0 mac 100b3d40 Bonfire::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__7BonfireFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Bonfire@@UAE_NXZ");
// win1.41 004398a0 mac 100b49b0 Bonfire::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__7BonfireFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Bonfire@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 004397d0 mac 100b3e20 Bonfire::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__7BonfireFv(struct Object* this) asm("?GetInHandImmersionTexture@Bonfire@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

#endif /* BW1_DECOMP_BONFIRE_INCLUDED_H */
