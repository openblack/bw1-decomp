#ifndef BW1_DECOMP_FRAGMENT_INCLUDED_H
#define BW1_DECOMP_FRAGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>        /* For enum IMMERSION_EFFECT_TYPE, enum SOUND_COLLISION_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Base;
class Creature;
struct FragMesh;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;

class Fragment : public Rock
{
public:
	// BW1W120 0076eaf0 BW1M119 011641b0
	void ProcessTimer();

	FragMesh* frag_mesh; /* 0x94 */
	uint32_t  field_0x98;
	uint32_t  field_0x9c;
	uint32_t  field_0xa0;
	uint32_t  field_0xa4;

	// Override methods

	// BW1W120 0076e9a0 BW1M119 01162c00
	virtual ~Fragment();
	// BW1W120 0076ea70 BW1M119 01164260
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0076e990 BW1M119 01162e60
	virtual char* GetDebugText();
	// BW1W120 0076f6a0 BW1M119 01163180
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0076f5d0 BW1M119 01163310
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0076e980 BW1M119 01162e20
	virtual uint32_t GetSaveType();
	// BW1W120 0076f7b0 BW1M119 01163130
	virtual void ResolveLoad();
	// BW1W120 0076e930 BW1M119 01162c90
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0076e960 BW1M119 01162d80
	virtual uint32_t CanBeThrownByPlayer();
	// BW1W120 0076f7c0 BW1M119 011630d0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0076ec00 BW1M119 01163fc0
	virtual void Draw();
	// BW1W120 0076e940 BW1M119 01162ce0
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0076e950 BW1M119 01162d30
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 0076ec40 BW1M119 01163f80
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 0076ec50 BW1M119 01163710
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 0076f3f0 BW1M119 01163450
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0076f3d0 BW1M119 011636c0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0076f3e0 BW1M119 01163670
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0076f7f0 BW1M119 01162fe0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0076f7d0 BW1M119 01163090
	virtual SOUND_COLLISION_TYPE GetCollideSoundType();
	// BW1W120 0076e970 BW1M119 01162dc0
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
	// BW1W120 0076f7e0 BW1M119 01163050
	virtual bool32_t ShouldFootpathsGoRound();

	// Constructors

	// BW1W120 0076e900 BW1M119 011645c0
	Fragment();
	// BW1W120 0076e9d0 BW1M119 01164400
	Fragment(const MapCoords& coords, FragMesh* frag_mesh, GPlayer* player);
};

#endif /* BW1_DECOMP_FRAGMENT_INCLUDED_H */
