#ifndef BW1_DECOMP_SCAFFOLD_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct LHPoint;
class Living;
struct MapCoords;
class Object;
class PhysicsObject;
class Reaction;
class Town;

class Scaffold : public MobileObject
{
public:
	uint8_t field_0x68[0x34];

	// Override methods

	// BW1W120 0055e150 BW1M119 0114c0b0
	virtual ~Scaffold();
	// BW1W120 006e83e0 BW1M119 0114bf80
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e120 BW1M119 01146a60
	virtual Town* GetTown();
	// BW1W120 006eaef0 BW1M119 01146dc0
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 005181a0 BW1M119 010cc610
	virtual void DrawInHand(GInterfaceStatus* param_1);
	// BW1W120 0055e140 BW1M119 01146ad0
	virtual char* GetDebugText();
	// BW1W120 006ea3d0 BW1M119 011483d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ea240 BW1M119 01148610
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055e130 BW1M119 01146a90
	virtual uint32_t GetSaveType();
	// BW1W120 006ea560 BW1M119 01148290
	virtual void ResolveLoad();
	// BW1W120 006ea9d0 BW1M119 011479a0
	virtual uint32_t GetOverwritePickUpToolTip();
	// BW1W120 006e9860 BW1M119 01149920
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 006ea770 BW1M119 01147e70
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 006ea9e0 BW1M119 01147940
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 004e3fc0 BW1M119 015ee030
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004e3ff0 BW1M119 015edf20
	virtual uint32_t CanBeStolenByCreature(Creature* param_1);
	// BW1W120 004e4070 BW1M119 015ede00
	virtual uint32_t IsStealableScaffold(Creature* param_1);
	// BW1W120 0055e100 BW1M119 011469d0
	virtual uint32_t IsScaffold();
	// BW1W120 006eab60 BW1M119 01147550
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 006e9890 BW1M119 01149860
	virtual void ActualMoveMapObject(const MapCoords& param_1);
	// BW1W120 006ea5c0 BW1M119 01148000
	virtual void Draw();
	// BW1W120 006e8540 BW1M119 0114bd20
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 006eaea0 BW1M119 01146ef0
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 006eaec0 BW1M119 01146e60
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0055e0f0 BW1M119 01146990
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 006e9d30 BW1M119 011490a0
	virtual int GetDefaultResource();
	// BW1W120 006e96a0 BW1M119 01149de0
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 006e96e0 BW1M119 01149c70
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 006e9770 BW1M119 011499f0
	virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
	// BW1W120 006e9900 BW1M119 01149670
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 006e99e0 BW1M119 01149400
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 006e9d80 BW1M119 01148f20
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006e9dd0 BW1M119 01148dc0
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 006eab70 BW1M119 011474e0
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
	// BW1W120 006ea8a0 BW1M119 01147c70
	virtual PhysicsObject* InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity,
	                                                 GInterfaceStatus* status, Object* thrower, bool32_t dont_replant);
	// BW1W120 006ea840 BW1M119 01147d70
	virtual PhysicsInitialisation InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3,
	                                                bool param_4, GInterfaceStatus* param_5);
	// BW1W120 006e8770 BW1M119 0114b930
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006e8780 BW1M119 0114b790
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0055e110 BW1M119 01146a10
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 006ea940 BW1M119 01147b60
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 006ea910 BW1M119 01147bb0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 006e8570 BW1M119 0114b970
	virtual uint32_t ProcessInHand();
	// BW1W120 006eaf30 BW1M119 01146b10
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Non-virtual methods

	// BW1W120 006e8860 BW1M119 0114b700
	void ForceBuildBuilding(GPlayer* player);
	// BW1W120 006e9610 BW1M119 01149e90
	void RemoveOldBuildingSite();
};

#endif /* BW1_DECOMP_SCAFFOLD_INCLUDED_H */
