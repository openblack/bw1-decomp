#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class Forest;
class GBigForestInfo;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class Villager;

class BigForest : public MultiMapFixed
{
public:
	uint32_t field_0x80; /* 0x7c */
	Forest*  forest;     /* 0x80 */
	uint32_t field_0x84;

	// Override methods

	// BW1W120 00438e20 BW1M100 100b3990 BigForest::_dt(void)
	virtual ~BigForest();
	// BW1W120 00438e60 BW1M100 100b36e0 BigForest::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 004390d0 BW1M100 100b2d80 BigForest::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00438e10 BW1M100 100b25b0 BigForest::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 004394e0 BW1M100 100b2760 BigForest::Load(GameOSFile &)
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00439470 BW1M100 100b2840 BigForest::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00438e00 BW1M100 100b2570 BigForest::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00438df0 BW1M100 100b24d0 BigForest::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00438f60 BW1M100 10020e40 BigForest::Draw(void)
	virtual void Draw();
	// BW1W120 00439550 BW1M100 100b2690 BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00439050 BW1M100 100b30a0 BigForest::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00438da0 BW1M100 100b2350 BigForest::Get3DType(void)
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 004390b0 BW1M100 100b2fe0 BigForest::GetWoodValue(void)
	virtual float GetWoodValue();
	// BW1W120 00438db0 BW1M100 100b2390 BigForest::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 004393c0 BW1M100 100b29f0 BigForest::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00438dc0 BW1M100 100b23e0 BigForest::IsTuggable(void)
	virtual uint32_t IsTuggable();
	// BW1W120 004390a0 BW1M100 100b3050 BigForest::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00438f50 BW1M100 100b3530 BigForest::CreatureMustAvoid(Creature *)
	virtual bool CreatureMustAvoid(Creature* param_1);
	// BW1W120 00438dd0 BW1M100 100b2420 BigForest::VillagerMustAvoid(Villager *)
	virtual uint32_t VillagerMustAvoid(Villager* param_1);
	// BW1W120 00438de0 BW1M100 100b2470 BigForest::GetCarriedTreeType(void)
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00438f70 BW1M100 100b3190 BigForest::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

	// Non-virtual methods

	// BW1W120 00439360 BigForest::GetArrivePos(Villager *)
	// NOTE: symbols.txt mangles this ?GetArrivePos@BigForest@@QAEXPAVVillager@@@Z (void ret),
	// but the call sites pass a hidden MapCoords retbuf, so it really returns MapCoords by value
	// (AGENTS.md Rule 2). Declared by-value here; symbols.txt needs the dispatcher to re-mangle.
	MapCoords GetArrivePos(Villager* villager);

	// Static methods

	// BW1W120 00438ec0 BW1M100 100b3590 BigForest::Create(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
	static BigForest* Create(MapCoords* coords, GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);

	// Constructors

	// BW1W120 00438ce0 BW1M100 100b3a20 BigForest::BigForest(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
	BigForest(const MapCoords* coords, const GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);
};

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */
