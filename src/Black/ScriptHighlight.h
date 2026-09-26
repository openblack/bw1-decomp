#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Fixed.h" /* For struct SingleMapFixed */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GScriptHighlightInfo;
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
	// BW1W120 007096e0 BW1M119 015035c0
	static void OnClearMap();
	uint8_t     field_0x5c[0x30];

	// Override methods

	// BW1W120 00709870 BW1M119 015032f0
	virtual ~ScriptHighlight();
	// BW1W120 00709980 BW1M119 01503130
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00709860 BW1M119 015016b0
	virtual char* GetDebugText();
	// BW1W120 0070a8f0 BW1M119 01502260
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0070a760 BW1M119 015024a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00709850 BW1M119 01501670
	virtual uint32_t GetSaveType();
	// BW1W120 00709760 BW1M119 01501190
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 0070ae10 BW1M119 01501800
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 007097a0 BW1M119 015012f0
	virtual bool32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 00709830 BW1M119 015015c0
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 007097c0 BW1M119 015013a0
	virtual bool32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 007097b0 BW1M119 01501350
	virtual bool32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 00709750 BW1M119 01501150
	virtual bool32_t IsActive() const;
	// BW1W120 0070aa70 BW1M119 01502180
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 0070aac0 BW1M119 01501d90
	virtual bool ForDrawFXGetVertexPos(int index, LHPoint* pos);
	// BW1W120 00709740 BW1M119 01501100
	virtual bool32_t IsScriptHighlight();
	// BW1W120 0070ae30 BW1M119 010082c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0070a580 BW1M119 010587a0
	virtual uint32_t Process();
	// BW1W120 00709c60 BW1M119 01046910
	virtual void Draw();
	// BW1W120 007097d0 BW1M119 015013f0
	virtual bool32_t CanBeCrushed();
	// BW1W120 00709aa0 BW1M119 01502cd0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00709800 BW1M119 015014d0
	virtual bool32_t ValidAsInterfaceTarget();
	// BW1W120 00709770 BW1M119 015011d0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00709840 BW1M119 01501610
	virtual bool32_t InterfaceMustBeInInfluenceForInteraction();
	// BW1W120 00709790 BW1M119 01501280
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00709780 BW1M119 01501230
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 0070add0 BW1M119 01501880
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 0070ac70 BW1M119 01501950
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 007097e0 BW1M119 01501430
	virtual bool32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00709820 BW1M119 01501570
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00709810 BW1M119 01501520
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0070ae40 BW1M119 015016f0
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));

	// Static methods

	// BW1W120 00709a40 BW1M119 01502fc0
	static ScriptHighlight* Create(const MapCoords& coords, const GScriptHighlightInfo* info, uint32_t param_3,
	                               float param_4, float param_5);
	// BW1W120 0070a460 BW1M119 010588a0
	static void ProcessHighlights();

	// Non-virtual methods

	// BW1W120 00709a20 BW1M119 015030e0
	void SetScriptId(uint32_t script_id, DYK_CATEGORY category);
	// BW1W120 00709c40 BW1M119 01502c80
	void SetDrawHeight(float height);
	// BW1W120 0070a630 BW1M119 01502760
	void SetActivated(int param_1);
	// BW1W120 0070ac20 BW1M119 01051a30
	bool IsDidYouKnow();
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H */
