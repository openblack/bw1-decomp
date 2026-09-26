#ifndef BW1_DECOMP_WORKSHOP_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class Scaffold;
class Villager;

class Workshop : public Abode
{
public:
	uint8_t field_0xc4[0x24];

	// Override methods

	// BW1W120 00779320 BW1M119 0116c830
	virtual ~Workshop();
	// BW1W120 00779480 BW1M119 0116c610
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00779e00 BW1M119 0116b220
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 00779ec0 BW1M119 0116b100
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00779310 BW1M119 0116cc90
	virtual char* GetDebugText();
	// BW1W120 0077a630 BW1M119 0116a1c0
	virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 0077a130 BW1M119 0116a880
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00779f40 BW1M119 0116ad10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00779300 BW1M119 0116cc50
	virtual uint32_t GetSaveType();
	// BW1W120 0077a330 BW1M119 0116a830
	virtual void ResolveLoad();
	// BW1W120 007792e0 BW1M119 0116cbc0
	virtual bool32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 007792f0 BW1M119 0116cc10
	virtual bool32_t IsStoragePit(Creature* param_1);
	// BW1W120 007792c0 BW1M119 inlined
	virtual uint32_t IsWorkshop_0();
	// BW1W120 007792d0 BW1M119 inlined
	virtual uint32_t IsWorkshop_1(Creature* param_1);
	// BW1W120 0077a6d0 BW1M119 01169f70
	virtual bool32_t CreateBuildingSite();
	// BW1W120 0077a610 BW1M119 0116a230
	virtual void ScaffoldMoved(Scaffold* param_1);
	// BW1W120 007797f0 BW1M119 0116bd90
	virtual uint32_t Process();
	// BW1W120 0051cbf0 BW1M119 010c72e0
	virtual void Draw();
	// BW1W120 0077a340 BW1M119 0116a700
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 007793e0 BW1M119 0116c700
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 007792b0 BW1M119 0116cb00
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0077a650 BW1M119 0116a130
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 00779f20 BW1M119 0116b080
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0077a680 BW1M119 0116a030
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus& param_2);

	// Static methods

	// BW1W120 00779590 BW1M119 0116c360
	static Workshop* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                        float food, int wood);

	// Non-virtual methods

	// BW1W120 00779af0 BW1M119 0116b890
	int GetSpaceInStore();
	// BW1W120 00779b60 BW1M119 0116b720
	float GetDesireToBeSupplied();
	// BW1W120 00779b90 BW1M119 0116b630
	float GetVisualWoodDesire();
};

#endif /* BW1_DECOMP_WORKSHOP_INCLUDED_H */
