#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Creche : public Abode
{
public:
	// Override methods

	// BW1W120 0050aa00 BW1M100 102a3b10 Creche::_dt(void)
	virtual ~Creche();
	// BW1W120 0050aa30 BW1M100 102a40f0 Creche::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050a9f0 BW1M100 102a3d40 Creche::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0050a9e0 BW1M100 102a3d00 Creche::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0050a990 BW1M100 inlined Creche::GetArrivePos(MapCoords *)
	virtual MapCoords GetArrivePos();
	// BW1W120 0050a9b0 BW1M100 102a3c40 Creche::CanActAsAContainer(Creature *)
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 0050a9c0 BW1M100 102a3c90 Creche::IsStoragePit(Creature *)
	virtual uint32_t IsStoragePit(Creature* param_1);
	// BW1W120 0050ab90 BW1M100 102a3d80 Creche::ReduceLife(float, GPlayer *)
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0050a9d0 BW1M100 102a3cd0 Creche::Get3DType(void)
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0050aa50 BW1M100 102a3fd0 Creche::DeleteDependancys(void)
	virtual void DeleteDependancys();
	// BW1W120 0050ab50 BW1M100 102a3de0 Creche::MakeFunctional(void)
	virtual void MakeFunctional();

	// Static methods

	// BW1W120 0050aad0 BW1M100 102a3e90 Creche::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
	static Creche* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                      float food, int wood);
};

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
