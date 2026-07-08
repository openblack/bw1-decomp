#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Fixed.h" /* For struct SingleMapFixed */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LHPoint;
struct MapCoords;
class Object;
struct RPHolder;

class ScriptHighlight : public SingleMapFixed
{
public:
	uint8_t field_0x5c[0x30];

	// Override methods

	// BW1W120 00709870 BW1M100 104fc120 ScriptHighlight::_dt(void)
	virtual ~ScriptHighlight();
	// BW1W120 00709980 BW1M100 104fbf60 ScriptHighlight::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00709860 BW1M100 104fa730 ScriptHighlight::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0070a8f0 BW1M100 104fb050 ScriptHighlight::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0070a760 BW1M100 104fb290 ScriptHighlight::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00709850 BW1M100 104fa6f0 ScriptHighlight::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00709760 BW1M100 104fa210 ScriptHighlight::PhysicsEditorCreate(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 0070ae10 BW1M100 104fa8c0 ScriptHighlight::GetOverwriteTapToolTip(void)
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 007097a0 BW1M100 104fa370 ScriptHighlight::CanBeSleptNextToByCreature(Creature *)
	virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 00709830 BW1M100 104fa640 ScriptHighlight::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 007097c0 BW1M100 104fa420 ScriptHighlight::CanBeSetOnFire(Creature *)
	virtual uint32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 007097b0 BW1M100 104fa3d0 ScriptHighlight::CanBeDestroyedByStoning(Creature *)
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 00709750 BW1M100 104fa1d0 ScriptHighlight::IsActive( const(void))
	virtual uint32_t IsActive();
	// BW1W120 0070aa70 BW1M100 104faf70 ScriptHighlight::ForDrawFXGetNumVertices(void)
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 0070aac0 BW1M100 104facf0 ScriptHighlight::ForDrawFXGetVertexPos(long, LHPoint *)
	virtual void ForDrawFXGetVertexPos(int param_1, LHPoint* param_2);
	// BW1W120 00709740 BW1M100 104fa180 ScriptHighlight::IsScriptHighlight(void)
	virtual uint32_t IsScriptHighlight();
	// BW1W120 0070ae30 BW1M100 100083b0 ScriptHighlight::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 0070a580 BW1M100 10055e10 ScriptHighlight::Process(void)
	virtual uint32_t Process();
	// BW1W120 00709c60 BW1M100 10043ec0 ScriptHighlight::Draw(void)
	virtual void Draw();
	// BW1W120 007097d0 BW1M100 104fa470 ScriptHighlight::CanBeCrushed(void)
	virtual uint32_t CanBeCrushed();
	// BW1W120 00709aa0 BW1M100 104fbb00 ScriptHighlight::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00709800 BW1M100 104fa550 ScriptHighlight::ValidAsInterfaceTarget(void)
	virtual uint32_t ValidAsInterfaceTarget();
	// BW1W120 00709770 BW1M100 104fa250 ScriptHighlight::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00709840 BW1M100 104fa690 ScriptHighlight::InterfaceMustBeInInfluenceForInteraction(void)
	virtual uint32_t InterfaceMustBeInInfluenceForInteraction();
	// BW1W120 00709790 BW1M100 104fa300 ScriptHighlight::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
	// BW1W120 00709780 BW1M100 104fa2b0 ScriptHighlight::ApplyOnlyAfterReleased(void)
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 0070add0 BW1M100 104fa940 ScriptHighlight::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 0070ac70 BW1M100 104faa10 ScriptHighlight::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 007097e0 BW1M100 104fa4b0 ScriptHighlight::IsEffectReceiver(EffectValues *)
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00709820 BW1M100 104fa5f0 ScriptHighlight::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00709810 BW1M100 104fa5a0 ScriptHighlight::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0070ae40 BW1M100 104fa770 ScriptHighlight::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));

	// Static methods

	// BW1W120 0070a460 BW1M100 10055f10 ScriptHighlight::ProcessHighlights(void)
	static void ProcessHighlights();

	// Non-virtual methods

	// BW1W120 0070a630 BW1M100 104fb550 ScriptHighlight::SetActivated(int)
	void SetActivated(int param_1);
	// BW1W120 0070ac20 BW1M100 1004f0b0 ScriptHighlight::IsDidYouKnow(void)
	bool IsDidYouKnow();
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H */
