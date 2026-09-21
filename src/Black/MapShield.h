#ifndef BW1_DECOMP_MAP_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GMagicInfo;
class GMapShieldInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class SpellShield;

class MapShield : public SingleMapFixed
{
public:
	MapShield*   next;  /* 0x5c */
	SpellShield* spell; /* 0x60 */
	GMagicInfo*  SpellInfo;

	// Override methods

	// BW1W120 0072c050 BW1M119 01538d40
	virtual ~MapShield();
	// BW1W120 0072c0f0 BW1M119 0153a0c0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072c150 BW1M119 0153a050
	virtual GPlayer* GetPlayer();
	// BW1W120 0072c040 BW1M119 0153ccf0
	virtual char* GetDebugText();
	// BW1W120 0072c350 BW1M119 015399e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0072c390 BW1M119 01539940
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0072c030 BW1M119 0153ccb0
	virtual uint32_t GetSaveType();
	// BW1W120 0072c010 BW1M119 0153caf0
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 0072c1b0 BW1M119 01539f50
	virtual MESH_LIST GetMesh() const;
	// BW1W120 0072c1c0 BW1M119 01539f10
	virtual float GetTopPos();
	// BW1W120 0072c000 BW1M119 0153caa0
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0072c1e0 BW1M119 01539e70
	virtual bool ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1);
	// BW1W120 0072c1d0 BW1M119 01539ed0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0072c170 BW1M119 01539f90
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0072c020 BW1M119 0153cb40
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Constructors

	// BW1W120 0072c070 BW1M119 0153a280
	MapShield(MapCoords* coords, GMapShieldInfo* info, SpellShield* spell);
};

#endif /* BW1_DECOMP_MAP_SHIELD_INCLUDED_H */
