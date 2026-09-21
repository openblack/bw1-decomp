#ifndef BW1_DECOMP_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Citadel;
class Creature;
class GCitadelPartInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;
class PlannedMultiMapFixed;
class Spell;

class CitadelPart : public MultiMapFixed
{
public:
	float        field_0x7c;
	Citadel*     citadel; /* 0x80 */
	CitadelPart* next;
	GameThing*   GameThing0x88;

	// Override methods

	// BW1W120 00469500 BW1M119 011cad30
	virtual ~CitadelPart();
	// BW1W120 00469540 BW1M119 011cab30
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00469750 BW1M119 010784f0
	virtual GPlayer* GetPlayer();
	// BW1W120 004694e0 BW1M119 011cafe0
	virtual char* GetDebugText();
	// BW1W120 004698b0 BW1M119 011ca160
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00469830 BW1M119 011ca250
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004694d0 BW1M119 011cafa0
	virtual uint32_t GetSaveType();
	// BW1W120 00464aa0 BW1M119 011c9e40
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00464a80 BW1M119 0108cdc0
	virtual Citadel* GetCitadel();
	// BW1W120 00464b00 BW1M119 inlined
	virtual uint32_t IsCitadelPart_0();
	// BW1W120 00464b10 BW1M119 inlined
	virtual uint32_t IsCitadelPart_1(Creature* param_1);
	// BW1W120 00469780 BW1M119 011ca430
	virtual void* GetActualObjectToEffect(GPlayer* param_1, bool param_2);
	// BW1W120 004695c0 BW1M119 011caae0
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 00469490 BW1M119 011c27d0
	virtual uint32_t Process();
	// BW1W120 00464a90 BW1M119 011c9de0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00469760 BW1M119 011ca550
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 004694b0 BW1M119 011caf10
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 004695d0 BW1M119 inlined
	virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
	// BW1W120 004697f0 BW1M119 011ca350
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 004694c0 BW1M119 011caf50
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 004694f0 BW1M119 011cb020
	virtual bool32_t ShouldFootpathsGoRound();
	// BW1W120 00464ab0 BW1M119 011c82c0
	virtual bool32_t IsRepaired();
	// BW1W120 00464ad0 BW1M119 010834a0
	virtual bool32_t IsBuilt();
	// BW1W120 004694a0 BW1M119 011c20d0
	virtual PlannedMultiMapFixed* ConvertToPlanned();

	// Constructors

	// BW1W120 inlined BW1M119 01310780
	CitadelPart();
	// BW1W120 004693f0 BW1M119 011cadc0
	CitadelPart(const MapCoords& coords, const GCitadelPartInfo* info, Citadel* citadel, float y_angle, float scale,
	            float param_6, int param_7);
};

#endif /* BW1_DECOMP_CITADEL_PART_INCLUDED_H */
