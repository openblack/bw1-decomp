#ifndef BW1_DECOMP_FIELD_CROP_INCLUDED_H
#define BW1_DECOMP_FIELD_CROP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct MapCoords;
struct Object;
struct PhysOb;

struct FieldCrop
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct FieldCrop) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becc50 mac inlined FieldCrop::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9FieldCrop asm("??_R0?AVFieldCrop@@@8");
// win1.41 009addd0 mac inlined FieldCrop::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9FieldCrop asm("??_R1A@?0A@A@FieldCrop@@8");
// win1.41 009adde8 mac inlined FieldCrop::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9FieldCrop asm("??_R2FieldCrop@@8");
// win1.41 009ade08 mac inlined FieldCrop::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9FieldCrop asm("??_R3FieldCrop@@8");

// Override methods

// win1.41 0055d110 mac 103bb4e0 FieldCrop::_dt(void)
void __fastcall __dt__9FieldCropFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFieldCrop@@UAEPAXI@Z");
// win1.41 00607e20 mac 103bb470 FieldCrop::ToBeDeleted(int)
void __fastcall ToBeDeleted__9FieldCropFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@FieldCrop@@UAEXH@Z");
// win1.41 00608270 mac 103bb1e0 FieldCrop::IsFunctional(void)
bool __fastcall IsFunctional__9FieldCropFv(struct GameThing* this) asm("?IsFunctional@FieldCrop@@UAE_NXZ");
// win1.41 0055d100 mac 103bab60 FieldCrop::GetDebugText(void)
char* __fastcall GetDebugText__9FieldCropFv(struct GameThing* this) asm("?GetDebugText@FieldCrop@@UAEPADXZ");
// win1.41 0055d0f0 mac 103bab20 FieldCrop::GetSaveType(void)
uint32_t __fastcall GetSaveType__9FieldCropFv(struct GameThing* this) asm("?GetSaveType@FieldCrop@@UAEIXZ");
// win1.41 0055d0e0 mac 103baae0 FieldCrop::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__9FieldCropFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@FieldCrop@@UAEXH@Z");
// win1.41 00608260 mac 103bb240 FieldCrop::InsertMapObject(void)
void __fastcall InsertMapObject__9FieldCropFv(struct Object* this) asm("?InsertMapObject@FieldCrop@@UAEXXZ");
// win1.41 00608250 mac 103bb290 FieldCrop::RemoveMapObject(void)
void __fastcall RemoveMapObject__9FieldCropFv(struct Object* this) asm("?RemoveMapObject@FieldCrop@@UAEXXZ");
// win1.41 00607dc0 mac 103bb620 FieldCrop::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__9FieldCropFv(struct Object* this) asm("?GetHoldType@FieldCrop@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 006081e0 mac 103bb330 FieldCrop::SetLife(float)
void __fastcall SetLife__9FieldCropFf(struct Object* this, const void* edx, float param_1) asm("?SetLife@FieldCrop@@UAEXM@Z");
// win1.41 006083e0 mac 103bac40 FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__9FieldCropFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@FieldCrop@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00608360 mac 103bae90 FieldCrop::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__9FieldCropFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00608390 mac 103badc0 FieldCrop::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__9FieldCropFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@FieldCrop@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 006082b0 mac 103bb140 FieldCrop::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__9FieldCropFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@FieldCrop@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 006082e0 mac 103bb0c0 FieldCrop::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__9FieldCropFv(struct Object* this) asm("?GetPhysicsConstantsType@FieldCrop@@UAEIXZ");
// win1.41 006082f0 mac 103bafd0 FieldCrop::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__9FieldCropFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@FieldCrop@@UAEXPAUPhysOb@@@Z");
// win1.41 00608340 mac 103baf80 FieldCrop::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9FieldCropFv(struct Object* this) asm("?InteractsWithPhysicsObjects@FieldCrop@@UAE_NXZ");
// win1.41 006082d0 mac 103bb100 FieldCrop::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__9FieldCropFv(struct Object* this) asm("?CanBecomeAPhysicsObject@FieldCrop@@UAE_NXZ");
// win1.41 00608440 mac 103baba0 FieldCrop::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__9FieldCropFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@FieldCrop@@UAE_NPAVCreature@@@Z");
// win1.41 00608350 mac 103baf40 FieldCrop::IsARootedObject(void)
bool __fastcall IsARootedObject__9FieldCropFv(struct Object* this) asm("?IsARootedObject@FieldCrop@@UAE_NXZ");

#endif /* BW1_DECOMP_FIELD_CROP_INCLUDED_H */
