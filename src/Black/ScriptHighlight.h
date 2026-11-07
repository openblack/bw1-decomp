#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h>               /* For enum SCRIPT_OBJECT_TYPE */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "Fixed.h" /* For struct SingleMapFixed */

#define SCRIPT_HIGHLIGHT_NEAR_DISTANCE        10
#define SCRIPT_HIGHLIGHT_FAR_DISTANCE         30
#define SCRIPT_HIGHLIGHT_FULL_SCALE_DISTANCE  30.0f
#define SCRIPT_HIGHLIGHT_SPIN_HALF_TURN_MS    1000.0f
#define SCRIPT_HIGHLIGHT_BEAM_SCALE           3.0f
#define SCRIPT_HIGHLIGHT_SPRITE_RADIUS_SCALE  1.4f
#define SCRIPT_HIGHLIGHT_BEAM_PULSE_MIN       0.4f
#define SCRIPT_HIGHLIGHT_BEAM_PULSE_MAX       1.0f
#define SCRIPT_HIGHLIGHT_SEEN_CHECK_TURN_MASK 7
#ifdef VERSION_BW1WCI
#define SCRIPT_HIGHLIGHT_DIGIT_TEXTURE        "data\\textures\\scoreboard.raw"
#define SCRIPT_HIGHLIGHT_DIGIT_FRAMES_PER_ROW 4
#define SCRIPT_HIGHLIGHT_DIGIT_LIFT           (-0.1f)
#define SCRIPT_HIGHLIGHT_DIGIT_SCALE          0.95f
#endif

// Forward Declares

class LHOSFile;
class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GScriptHighlightInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class GoldenShower;
class LH3DObject;
struct LH3DSprite;
struct LHPoint;
struct MapCoords;
class Object;
class PSysInterface;
struct RPHolder;

class ScriptHighlight : public SingleMapFixed
{
public:
	// BW1W120 007096e0 BW1M119 015035c0
	static void    OnClearMap();
	bool32_t       Hidden;
	bool32_t       Active;
	LH3DSprite*    Sprite;
	LH3DObject*    Beam;
	PSysInterface* Particle;
	PSysInterface* ActiveParticle;
	GoldenShower*  Shower;
	uint32_t       ScriptId;
	bool32_t       UseDrawHeight;
	float          DrawHeight;
	DYK_CATEGORY   Category;
#ifdef VERSION_BW1WCI
	int ScoreBoardValue;
#endif
	LHListNode<ScriptHighlight> next;

	// Override methods

	// BW1W120 00709740 BW1M119 01501100
	virtual bool32_t IsScriptHighlight() { return true; }
	// BW1W120 00709750 BW1M119 01501150
	virtual bool32_t IsActive() const { return Active; }
	// BW1W120 00709760 BW1M119 01501190
	virtual void PhysicsEditorCreate(int type) {}
	// BW1W120 00709770 BW1M119 015011d0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status) { return false; }
	// BW1W120 00709780 BW1M119 01501230
	virtual uint32_t ApplyOnlyAfterReleased() { return false; }
	// BW1W120 00709790 BW1M119 01501280
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords) { return false; }
	// BW1W120 007097a0 BW1M119 015012f0
	virtual bool32_t CanBeSleptNextToByCreature(Creature* creature) { return false; }
	// BW1W120 007097b0 BW1M119 01501350
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature) { return false; }
	// BW1W120 007097c0 BW1M119 015013a0
	virtual bool32_t CanBeSetOnFire(Creature* creature) { return false; }
	// BW1W120 007097d0 BW1M119 015013f0
	virtual bool32_t CanBeCrushed() { return false; }
	// BW1W120 007097e0 BW1M119 01501430
	virtual bool32_t IsEffectReceiver(EffectValues* effect) { return false; }
	// BW1W120 007097f0 BW1M119 01501480
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords) { return 0; }
	// BW1W120 00709800 BW1M119 015014d0
	virtual bool32_t ValidAsInterfaceTarget() { return false; }
	// BW1W120 00709810 BW1M119 01501520
	virtual bool32_t CanBecomeAPhysicsObject() { return false; }
	// BW1W120 00709820 BW1M119 01501570
	virtual bool InteractsWithPhysicsObjects() { return false; }
	// BW1W120 00709830 BW1M119 015015c0
	virtual bool32_t CanBePickedUpByCreature(Creature* creature) { return false; }
	// BW1W120 00709840 BW1M119 01501610
	virtual bool32_t InterfaceMustBeInInfluenceForInteraction() { return false; }
	// BW1W120 00709850 BW1M119 01501670
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SCRIPT_HIGHLIGHT; }
	// BW1W120 00709860 BW1M119 015016b0
	virtual char* GetDebugText() { return "ScriptHighlight:"; }
	// BW1W120 00709940 BW1M119 015032f0
	virtual ~ScriptHighlight();
	// BW1W120 00709980 BW1M119 01503130
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0070a8f0 BW1M119 01502260
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0070a760 BW1M119 015024a0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0070ae10 BW1M119 01501800
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 0070aa70 BW1M119 01502180
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 0070aac0 BW1M119 01501d90
	virtual bool ForDrawFXGetVertexPos(int index, LHPoint* pos);
	// BW1W120 0070ae30 BW1M119 010082c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0070a580 BW1M119 010587a0
	virtual uint32_t Process();
	// BW1W120 00709c60 BW1M119 01046910
	virtual void Draw();
	// BW1W120 00709aa0 BW1M119 01502cd0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0070add0 BW1M119 01501880
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 0070ac70 BW1M119 01501950
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);
	// BW1W120 0070ae40 BW1M119 015016f0
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* add_function)(int object_id, Point2D position, float radius, int update));

	// BW1W120 00709700 BW1M119 01503500
	ScriptHighlight();
	// BW1W120 007098a0 BW1M119 015033c0
	ScriptHighlight(const MapCoords& coords, const GScriptHighlightInfo* info, unsigned long script_id, float y_angle,
	                float scale);

	// Static methods

	// BW1W120 00709a40 BW1M119 01502fc0
	static ScriptHighlight* Create(const MapCoords& coords, const GScriptHighlightInfo* info, unsigned long script_id,
	                               float y_angle, float scale);
	// BW1W120 0070a460 BW1M119 010588a0
	static void ProcessHighlights();
	// BW1W120 0070a510 BW1M119 01023030
	static float GetNetUnsafeBeamPulseValue();

	// Non-virtual methods

	// BW1W120 00709910 BW1M119 inlined
	void SetToZero();
	// BW1W120 00709a20 BW1M119 015030e0
	void SetScriptId(unsigned long script_id, DYK_CATEGORY category);
	// BW1W120 00709c40 BW1M119 01502c80
	void SetDrawHeight(float height);
#ifndef VERSION_BW1W100
	// BW1W120 0070a600 BW1M119 null
	void SetPosition(const MapCoords& coords);
#endif
	// BW1W120 0070a630 BW1M119 01502760
	void SetActivated(bool32_t activated);
	// BW1W120 0070a750 BW1M119 01502700
	MESH_LIST GetActiveMesh();
	// BW1W120 0070ac00 BW1M119 inlined
	void ShowHelpBubble();
	// BW1W120 0070ac20 BW1M119 01051a30
	bool32_t IsDidYouKnow();
	// BW1W120 0070ac50 BW1M119 01501b50
	bool32_t IsVortexEntry();
	// BW1W120 inlined BW1M119 inlined
	const GScriptHighlightInfo* GetInfo() const { return (const GScriptHighlightInfo*)info; }
#ifdef VERSION_BW1WCI
	// BW1WCI 00723730 BW1MCI119 015348b0
	void DrawSignPostText(int value, float angle, float scale);
	// BW1WCI 00724750 BW1MCI119 015346b0
	bool32_t IsScoreBoard();
	// BW1WCI 00725250 BW1MCI119 null
	bool32_t IsBrotherhood();
	// BW1WCI inlined BW1MCI119 01523240
	int GetScoreBoardValue() const { return ScoreBoardValue; }
#endif
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INCLUDED_H */
