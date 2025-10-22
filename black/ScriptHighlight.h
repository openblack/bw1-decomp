#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct SingleMapFixed */

// Forward Declares

struct Base;
struct Creature;
struct EffectValues;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHPoint;
struct MapCoords;
struct Object;
struct RPHolder;

struct ScriptHighlight
{
  struct SingleMapFixed super;  /* 0x0 */
  uint8_t field_0x5c[0x30];
};
static_assert(sizeof(struct ScriptHighlight) == 0x8c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0d850 mac inlined ScriptHighlight::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15ScriptHighlight asm("??_R0?AVScriptHighlight@@@8");
// win1.41 009b8f68 mac inlined ScriptHighlight::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15ScriptHighlight asm("??_R1A@?0A@A@ScriptHighlight@@8");
// win1.41 009b8f80 mac inlined ScriptHighlight::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15ScriptHighlight asm("??_R2ScriptHighlight@@8");
// win1.41 009b8fa0 mac inlined ScriptHighlight::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15ScriptHighlight asm("??_R3ScriptHighlight@@8");
// win1.41 00942288 mac 109c45c8 ScriptHighlight::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15ScriptHighlight asm("??_R4ScriptHighlight@@6B@");
// win1.41 0094228c mac 106fa600 ScriptHighlight::`vftable'
extern const struct ObjectVftable __vt__15ScriptHighlight asm("??_7ScriptHighlight@@6B@");

// Static methods

// win1.41 0070a460 mac 10055f10 ScriptHighlight::ProcessHighlights(void)
void __cdecl ProcessHighlights__15ScriptHighlightFv(void) asm("?ProcessHighlights@ScriptHighlight@@SAXXZ");

// Non-virtual methods

// win1.41 0070a630 mac 104fb550 ScriptHighlight::SetActivated(int)
void __fastcall SetActivated__15ScriptHighlightFi(struct ScriptHighlight* this, const void* edx, int param_1) asm("?SetActivated@ScriptHighlight@@QAEXH@Z");
// win1.41 0070ac20 mac 1004f0b0 ScriptHighlight::IsDidYouKnow(void)
bool __fastcall IsDidYouKnow__15ScriptHighlightFv(struct ScriptHighlight* this) asm("?IsDidYouKnow@ScriptHighlight@@QAE_NXZ");

// Override methods

// win1.41 00709870 mac 104fc120 ScriptHighlight::_dt(void)
void __fastcall __dt__15ScriptHighlightFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GScriptHighlight@@UAEPAXI@Z");
// win1.41 00709980 mac 104fbf60 ScriptHighlight::ToBeDeleted(int)
void __fastcall ToBeDeleted__15ScriptHighlightFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ScriptHighlight@@UAEXH@Z");
// win1.41 00709860 mac 104fa730 ScriptHighlight::GetDebugText(void)
char* __fastcall GetDebugText__15ScriptHighlightFv(struct GameThing* this) asm("?GetDebugText@ScriptHighlight@@UAEPADXZ");
// win1.41 0070a8f0 mac 104fb050 ScriptHighlight::Load(GameOSFile &)
uint32_t __fastcall Load__15ScriptHighlightFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ScriptHighlight@@UAEIAAVGameOSFile@@@Z");
// win1.41 0070a760 mac 104fb290 ScriptHighlight::Save(GameOSFile &)
uint32_t __fastcall Save__15ScriptHighlightFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ScriptHighlight@@UAEIAAVGameOSFile@@@Z");
// win1.41 00709850 mac 104fa6f0 ScriptHighlight::GetSaveType(void)
uint32_t __fastcall GetSaveType__15ScriptHighlightFv(struct GameThing* this) asm("?GetSaveType@ScriptHighlight@@UAEIXZ");
// win1.41 00709760 mac 104fa210 ScriptHighlight::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__15ScriptHighlightFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@ScriptHighlight@@UAEXH@Z");
// win1.41 0070ae10 mac 104fa8c0 ScriptHighlight::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__15ScriptHighlightFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@ScriptHighlight@@UAEIXZ");
// win1.41 007097a0 mac 104fa370 ScriptHighlight::CanBeSleptNextToByCreature(Creature *)
uint32_t __fastcall CanBeSleptNextToByCreature__15ScriptHighlightFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSleptNextToByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z");
// win1.41 00709830 mac 104fa640 ScriptHighlight::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__15ScriptHighlightFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@ScriptHighlight@@UAEIPAVCreature@@@Z");
// win1.41 007097c0 mac 104fa420 ScriptHighlight::CanBeSetOnFire(Creature *)
uint32_t __fastcall CanBeSetOnFire__15ScriptHighlightFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSetOnFire@ScriptHighlight@@UAEIPAVCreature@@@Z");
// win1.41 007097b0 mac 104fa3d0 ScriptHighlight::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__15ScriptHighlightFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@ScriptHighlight@@UAEIPAVCreature@@@Z");
// win1.41 00709750 mac 104fa1d0 ScriptHighlight::IsActive( const(void))
uint32_t __fastcall IsActive__15ScriptHighlightCFv(const struct GameThingWithPos* this) asm("?IsActive@ScriptHighlight@@UBEIXZ");
// win1.41 0070aa70 mac 104faf70 ScriptHighlight::ForDrawFXGetNumVertices(void)
int __fastcall ForDrawFXGetNumVertices__15ScriptHighlightFv(struct GameThingWithPos* this) asm("?ForDrawFXGetNumVertices@ScriptHighlight@@UAEHXZ");
// win1.41 0070aac0 mac 104facf0 ScriptHighlight::ForDrawFXGetVertexPos(long, LHPoint *)
void __fastcall ForDrawFXGetVertexPos__15ScriptHighlightFlP7LHPoint(struct GameThingWithPos* this, const void* edx, int param_1, struct LHPoint* param_2) asm("?ForDrawFXGetVertexPos@ScriptHighlight@@UAEXHPAULHPoint@@@Z");
// win1.41 00709740 mac 104fa180 ScriptHighlight::IsScriptHighlight(void)
uint32_t __fastcall IsScriptHighlight__15ScriptHighlightFv(struct GameThingWithPos* this) asm("?IsScriptHighlight@ScriptHighlight@@UAEIXZ");
// win1.41 0070ae30 mac 100083b0 ScriptHighlight::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__15ScriptHighlightFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@ScriptHighlight@@UAEIXZ");
// win1.41 0070a580 mac 10055e10 ScriptHighlight::Process(void)
uint32_t __fastcall Process__15ScriptHighlightFv(struct Object* this) asm("?Process@ScriptHighlight@@UAEIXZ");
// win1.41 00709c60 mac 10043ec0 ScriptHighlight::Draw(void)
void __fastcall Draw__15ScriptHighlightFv(struct Object* this) asm("?Draw@ScriptHighlight@@UAEXXZ");
// win1.41 007097d0 mac 104fa470 ScriptHighlight::CanBeCrushed(void)
uint32_t __fastcall CanBeCrushed__15ScriptHighlightFv(struct Object* this) asm("?CanBeCrushed@ScriptHighlight@@UAEIXZ");
// win1.41 00709aa0 mac 104fbb00 ScriptHighlight::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__15ScriptHighlightFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@ScriptHighlight@@UAEXABUMapCoords@@@Z");
// win1.41 00709800 mac 104fa550 ScriptHighlight::ValidAsInterfaceTarget(void)
uint32_t __fastcall ValidAsInterfaceTarget__15ScriptHighlightFv(struct Object* this) asm("?ValidAsInterfaceTarget@ScriptHighlight@@UAEIXZ");
// win1.41 00709770 mac 104fa250 ScriptHighlight::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__15ScriptHighlightFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00709840 mac 104fa690 ScriptHighlight::InterfaceMustBeInInfluenceForInteraction(void)
uint32_t __fastcall InterfaceMustBeInInfluenceForInteraction__15ScriptHighlightFv(struct Object* this) asm("?InterfaceMustBeInInfluenceForInteraction@ScriptHighlight@@UAEIXZ");
// win1.41 00709790 mac 104fa300 ScriptHighlight::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t __fastcall ValidToApplyThisToMapCoord__15ScriptHighlightFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2) asm("?ValidToApplyThisToMapCoord@ScriptHighlight@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z");
// win1.41 00709780 mac 104fa2b0 ScriptHighlight::ApplyOnlyAfterReleased(void)
uint32_t __fastcall ApplyOnlyAfterReleased__15ScriptHighlightFv(struct Object* this) asm("?ApplyOnlyAfterReleased@ScriptHighlight@@UAEIXZ");
// win1.41 0070add0 mac 104fa940 ScriptHighlight::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__15ScriptHighlightFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0070ac70 mac 104faa10 ScriptHighlight::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__15ScriptHighlightFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@ScriptHighlight@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 007097e0 mac 104fa4b0 ScriptHighlight::IsEffectReceiver(EffectValues *)
uint32_t __fastcall IsEffectReceiver__15ScriptHighlightFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1) asm("?IsEffectReceiver@ScriptHighlight@@UAEIPAVEffectValues@@@Z");
// win1.41 00709820 mac 104fa5f0 ScriptHighlight::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__15ScriptHighlightFv(struct Object* this) asm("?InteractsWithPhysicsObjects@ScriptHighlight@@UAE_NXZ");
// win1.41 00709810 mac 104fa5a0 ScriptHighlight::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__15ScriptHighlightFv(struct Object* this) asm("?CanBecomeAPhysicsObject@ScriptHighlight@@UAE_NXZ");
// win1.41 0070ae40 mac 104fa770 ScriptHighlight::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__15ScriptHighlightFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@ScriptHighlight@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");

DECLARE_LH_LIST_HEAD(ScriptHighlight);

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H */
