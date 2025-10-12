#ifndef BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H
#define BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

struct Base;
struct EffectValues;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct Living;
struct MapCoords;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct Reaction;

struct PhysicalShield
{
  struct MapShield super;  /* 0x0 */
};
static_assert(sizeof(struct PhysicalShield) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22840 mac inlined PhysicalShield::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14PhysicalShield asm("??_R0?AVPhysicalShield@@@8");
// win1.41 009b96c8 mac inlined PhysicalShield::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14PhysicalShield asm("??_R1A@?0A@A@PhysicalShield@@8");
// win1.41 009b96e0 mac inlined PhysicalShield::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14PhysicalShield asm("??_R2PhysicalShield@@8");
// win1.41 009b9708 mac inlined PhysicalShield::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14PhysicalShield asm("??_R3PhysicalShield@@8");

// Override methods

// win1.41 0072cb20 mac 10533e40 PhysicalShield::_dt(void)
void __fastcall __dt__14PhysicalShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPhysicalShield@@UAEPAXI@Z");
// win1.41 0072cc50 mac 105302e0 PhysicalShield::ToBeDeleted(int)
void __fastcall ToBeDeleted__14PhysicalShieldFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PhysicalShield@@UAEXH@Z");
// win1.41 0072cb10 mac 10533f80 PhysicalShield::GetDebugText(void)
char* __fastcall GetDebugText__14PhysicalShieldFv(struct GameThing* this) asm("?GetDebugText@PhysicalShield@@UAEPADXZ");
// win1.41 0072c410 mac 10530bd0 PhysicalShield::Load(GameOSFile &)
uint32_t __fastcall Load__14PhysicalShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PhysicalShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072c700 mac 10530750 PhysicalShield::Save(GameOSFile &)
uint32_t __fastcall Save__14PhysicalShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PhysicalShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072cb00 mac 10533f40 PhysicalShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__14PhysicalShieldFv(struct GameThing* this) asm("?GetSaveType@PhysicalShield@@UAEIXZ");
// win1.41 0072d7f0 mac 1052ee20 PhysicalShield::GetImpressiveValue(Living *, Reaction *)
float __fastcall GetImpressiveValue__14PhysicalShieldFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2) asm("?GetImpressiveValue@PhysicalShield@@UAEMPAVLiving@@PAVReaction@@@Z");
// win1.41 0072ce60 mac 1052fe10 PhysicalShield::ApplyEffect(EffectValues &, int)
void __fastcall ApplyEffect__14PhysicalShieldFR12EffectValuesi(struct Object* this, const void* edx, struct EffectValues* param_1, int param_2) asm("?ApplyEffect@PhysicalShield@@UAEXAAVEffectValues@@H@Z");
// win1.41 0072ce80 mac 1052fda0 PhysicalShield::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__14PhysicalShieldFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@PhysicalShield@@UAEIPAVGPlayer@@M@Z");
// win1.41 0072cea0 mac 1052fd70 PhysicalShield::Draw(void)
void __fastcall Draw__14PhysicalShieldFv(struct Object* this) asm("?Draw@PhysicalShield@@UAEXXZ");
// win1.41 0072ccb0 mac 10530110 PhysicalShield::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__14PhysicalShieldFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@PhysicalShield@@UAEXABUMapCoords@@@Z");
// win1.41 0072ce50 mac 1052fe80 PhysicalShield::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__14PhysicalShieldFv(struct Object* this) asm("?Get3DType@PhysicalShield@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0072d170 mac 1052f8a0 PhysicalShield::SetDying(void)
bool __fastcall SetDying__14PhysicalShieldFv(struct Object* this) asm("?SetDying@PhysicalShield@@UAE_NXZ");
// win1.41 0072cc80 mac 10530260 PhysicalShield::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__14PhysicalShieldFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@PhysicalShield@@UAEIPAVEffectValues@@@Z");
// win1.41 0072d7e0 mac 1052ef50 PhysicalShield::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__14PhysicalShieldFv(struct Object* this) asm("?GetPhysicsConstantsType@PhysicalShield@@UAEIXZ");
// win1.41 0072ceb0 mac 1052fce0 PhysicalShield::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__14PhysicalShieldFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@PhysicalShield@@UAEXPAUPhysOb@@@Z");
// win1.41 0072d600 mac 1052f2c0 PhysicalShield::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__14PhysicalShieldFv(struct Object* this) asm("?InteractsWithPhysicsObjects@PhysicalShield@@UAE_NXZ");
// win1.41 0072d610 mac 1052efa0 PhysicalShield::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__14PhysicalShieldFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@PhysicalShield@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0072caf0 mac 10533ee0 PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem(void)
bool __fastcall GetAlwaysRemainsInPhysicsInternalSystem__14PhysicalShieldFv(struct Object* this) asm("?GetAlwaysRemainsInPhysicsInternalSystem@PhysicalShield@@UAE_NXZ");
// win1.41 0072d190 mac 1052f310 PhysicalShield::ProcessShield(void)
void __fastcall ProcessShield__14PhysicalShieldFv(struct MapShield* this) asm("?ProcessShield@PhysicalShield@@UAEXXZ");
// win1.41 0072ced0 mac 1052f980 PhysicalShield::DrawShield(void)
void __fastcall DrawShield__14PhysicalShieldFv(struct MapShield* this) asm("?DrawShield@PhysicalShield@@UAEXXZ");
// win1.41 0072b8e0 mac 10532c50 PhysicalShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
bool __fastcall IsPointDefinietlyWithinShieldVolume__14PhysicalShieldFRC9MapCoords(struct MapShield* this, const void* edx, const struct MapCoords* param_1) asm("?IsPointDefinietlyWithinShieldVolume@PhysicalShield@@UAE_NPBUMapCoords@@@Z");

#endif /* BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H */
