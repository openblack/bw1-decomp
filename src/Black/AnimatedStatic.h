#ifndef BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class LHOSFile;
struct MapCoords;
class Object;
struct PhysOb;
struct Point2D;
struct RPHolder;

class AnimatedStatic : public Feature
{
public:
	uint8_t field_0x7c[0x1c];

	// Override methods

	// BW1W120 00422190 BW1M119 010a84b0
	virtual char* GetDebugText();
	// BW1W120 00422bc0 BW1M119 010a9920
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00422aa0 BW1M119 010a9c10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00422180 BW1M119 010a8470
	virtual uint32_t GetSaveType();
	// BW1W120 00422770 BW1M119 01030890
	virtual void Draw();
	// BW1W120 00422210 BW1M119 010aae00
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 004221e0 BW1M119 010aaed0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 004221d0 BW1M119 010aafe0
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00422ec0 BW1M119 010a9020
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00422ed0 BW1M119 010a8d40
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* add_function)(int, Point2D, float, int));
	// BW1W120 004221a0 BW1M119 010a9070
	virtual ~AnimatedStatic();
	// BW1W120 004225a0 BW1M119 010aa4c0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00422300 BW1M119 010aa720
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00422650 BW1M119 010aa210
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords* param_2);

	// BW1W120 005614d0 BW1M119 inlined
	AnimatedStatic() { SetToZero(); }

	// BW1W120 00422580 BW1M119 010aa6c0
	void SetToZero();
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INCLUDED_H */
