#ifndef BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

struct Base;
struct EffectValues;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct Object;

struct MagicShield
{
  struct MapShield super;  /* 0x0 */
};
static_assert(sizeof(struct MagicShield) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22810 mac inlined MagicShield::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11MagicShield asm("??_R0?AVMagicShield@@@8");
// win1.41 009b9660 mac inlined MagicShield::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11MagicShield asm("??_R1A@?0A@A@MagicShield@@8");
// win1.41 009b9678 mac inlined MagicShield::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11MagicShield asm("??_R2MagicShield@@8");
// win1.41 009b96a0 mac inlined MagicShield::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11MagicShield asm("??_R3MagicShield@@8");

// Override methods

// win1.41 0072c230 mac 105340b0 MagicShield::_dt(void)
void __fastcall __dt__11MagicShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicShield@@UAEPAXI@Z");
// win1.41 0072c220 mac 10534190 MagicShield::GetDebugText(void)
char* __fastcall GetDebugText__11MagicShieldFv(struct GameThing* this) asm("?GetDebugText@MagicShield@@UAEPADXZ");
// win1.41 0072c3d0 mac 10531080 MagicShield::Load(GameOSFile &)
uint32_t __fastcall Load__11MagicShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072c3f0 mac 10531020 MagicShield::Save(GameOSFile &)
uint32_t __fastcall Save__11MagicShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 0072c210 mac 10534150 MagicShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__11MagicShieldFv(struct GameThing* this) asm("?GetSaveType@MagicShield@@UAEIXZ");
// win1.41 0072c300 mac 10531370 MagicShield::Draw(void)
void __fastcall Draw__11MagicShieldFv(struct Object* this) asm("?Draw@MagicShield@@UAEXXZ");
// win1.41 0072c2a0 mac 10531420 MagicShield::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11MagicShieldFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@MagicShield@@UAEXABUMapCoords@@@Z");
// win1.41 0072c340 mac 10531220 MagicShield::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__11MagicShieldFv(struct Object* this) asm("?Get3DType@MagicShield@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0072c320 mac 105312c0 MagicShield::SetDying(void)
bool __fastcall SetDying__11MagicShieldFv(struct Object* this) asm("?SetDying@MagicShield@@UAE_NXZ");
// win1.41 0072c310 mac 10531320 MagicShield::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__11MagicShieldFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@MagicShield@@UAEIPAVEffectValues@@@Z");
// win1.41 0072c330 mac 10531270 MagicShield::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__11MagicShieldFv(struct Object* this) asm("?InteractsWithPhysicsObjects@MagicShield@@UAE_NXZ");
// win1.41 0072c2e0 mac 105313e0 MagicShield::ProcessShield(void)
void __fastcall ProcessShield__11MagicShieldFv(struct MapShield* this) asm("?ProcessShield@MagicShield@@UAEXXZ");
// win1.41 0072c2f0 mac 105313a0 MagicShield::DrawShield(void)
void __fastcall DrawShield__11MagicShieldFv(struct MapShield* this) asm("?DrawShield@MagicShield@@UAEXXZ");
// win1.41 0072b850 mac 10532df0 MagicShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
bool __fastcall IsPointDefinietlyWithinShieldVolume__11MagicShieldFRC9MapCoords(struct MapShield* this, const void* edx, const struct MapCoords* param_1) asm("?IsPointDefinietlyWithinShieldVolume@MagicShield@@UAE_NPBUMapCoords@@@Z");

#endif /* BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H */
