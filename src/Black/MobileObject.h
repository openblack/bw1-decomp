#ifndef BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CameraPosEnum.h> /* For enum SCRIPT_PATH */
#include <chlasm/Enum.h>          /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/ScriptEnums.h>   /* For enum SCRIPT_OBJECT_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "LHPTR.h"    /* For class LHPTR */
#include "Mobile.h"   /* For struct Mobile, struct MobileVftable */

// Forward Declares

class Base;
class Creature;
class DataPath;
class GInterfaceStatus;
class GMobileObjectInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
struct LHMatrix;
class LHOSFile;
struct MapCell;
struct MapCoords;
class Object;
class PhysicsObject;
struct RPHolder;

class MobileObject : public Mobile
{
public:
	LHPTR<Object> object; /* 0x58 */
	float         XAngle;
	float         ZAngle;
	DataPath*     Path; /* 0x64 */

	// Override methods

	// BW1W120 0055d080 BW1M119 013c5b00
	virtual ~MobileObject();
	// BW1W120 00606f00 BW1M119 013c5900
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00607230 BW1M119 013c51d0
	virtual GPlayer* GetPlayer();
	// BW1W120 00425be0 BW1M119 010b07e0
	virtual char* GetDebugText();
	// BW1W120 00607d00 BW1M119 013c3760
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00607c40 BW1M119 013c38a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00425bd0 BW1M119 010b07a0
	virtual uint32_t GetSaveType();
	// BW1W120 00607ab0 BW1M119 013c3d80
	virtual void PhysicsEditorCreate(bool32_t keep_altitude);
	// BW1W120 00607430 BW1M119 013c4ca0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00425bb0 BW1M119 010b0710
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
	// BW1W120 00425b90 BW1M119 010b0660
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004e4ce0 BW1M119 015eb7d0
	virtual bool32_t IsMushroom(Creature* creature);
	// BW1W120 00425b70 BW1M119 010b05e0
	virtual bool32_t CanBeUsedToHoldWater(Creature* creature);
	// BW1W120 00425ba0 BW1M119 010b06b0
	virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* creature);
	// BW1W120 00425b60 BW1M119 010b0590
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 00425bc0 BW1M119 010b0760
	virtual bool32_t IsMobileObject();
	// BW1W120 006079e0 BW1M119 013c4150
	virtual bool IsPoisoned();
	// BW1W120 00607b60 BW1M119 013c3d40
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00425b10 BW1M119 010b0410
	virtual float GetXAngle();
	// BW1W120 00425b20 BW1M119 010b0450
	virtual float GetZAngle();
	// BW1W120 00607460 BW1M119 013c4b70
	virtual void SetXYZAngles(float x_angle, float y_angle, float z_angle);
	// BW1W120 006074e0 BW1M119 013c4a40
	virtual void SetXYZAnglesAndScale(float x_angle, float y_angle, float z_angle, float scale);
	// BW1W120 00607790 BW1M119 013c42e0
	virtual bool32_t MoveAlongPath();
	// BW1W120 00607210 BW1M119 013c5220
	virtual void Create3DObject();
	// BW1W120 00607250 BW1M119 013c5160
	virtual void InsertMapObjectToCell(MapCell* cell);
	// BW1W120 00607260 BW1M119 013c50f0
	virtual void RemoveMapObjectFromCell(MapCell* cell);
	// BW1W120 00607120 BW1M119 013c5520
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00607130 BW1M119 013c5490
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00425b40 BW1M119 010b04e0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00518150 BW1M119 01038d70
	virtual void Draw();
	// BW1W120 00425b30 BW1M119 010b0490
	virtual bool32_t CanBePickedUp();
	// BW1W120 00607560 BW1M119 013c4830
	virtual void GetWorldMatrix(LHMatrix* matrix);
	// BW1W120 00607150 BW1M119 013c52a0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00607c20 BW1M119 013c39f0
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 00607bf0 BW1M119 013c3aa0
	virtual int GetDefaultResource();
	// BW1W120 00607b70 BW1M119 013c3c30
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* target);
	// BW1W120 00607bc0 BW1M119 013c3b60
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet);
	// BW1W120 006079f0 BW1M119 013c4080
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00607a20 BW1M119 013c3f30
	virtual void ReactToPhysicsImpact(PhysicsObject* physics_object, bool unused);
	// BW1W120 00607aa0 BW1M119 013c3ee0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00607410 BW1M119 013c4d30
	virtual void AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
	                            void(__cdecl* add_function)(int object_id, Point2D position, float radius, int update));
	// BW1W120 00425b50 BW1M119 010b0550
	virtual uint32_t GetTastiness();
	// BW1W120 00607270 BW1M119 013c4db0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* origin);

	// Static methods

	// BW1W120 00607000 BW1M119 013c5560
	static MobileObject* Create(const MapCoords& coords, const GMobileObjectInfo* info, Object* parent, float y_angle,
	                            float scale);

	// BW1W120 00606fc0 BW1M119 01090540
	static void AddMobileObjectCheckSum();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0112d3c0
	const GMobileObjectInfo* GetInfo() const { return (const GMobileObjectInfo*)info; }

	// BW1W120 006076c0 BW1M119 013c4630
	int SetupMoveAlongPath(SCRIPT_PATH path, float start, float end, int reverse);
	// BW1W120 00607990 BW1M119 013c4260
	float GetWalkPathPercentage();
	// BW1W120 00607960 BW1M119 null
	int HasReachedPathPercentage(float percentage);
	// fabricated name
	// BW1W120 006079b0 BW1M119 null
	int HasFinishedPath();

	// Constructors

	// BW1W120 00600d80 BW1M119 01123450
	MobileObject() {}
	// BW1W120 00606e40 BW1M119 013c5bd0
	MobileObject(const MapCoords& coords, const GMobileObjectInfo* info, Object* parent, float y_angle, float scale);
};

#endif /* BW1_DECOMP_MOBILE_OBJECT_INCLUDED_H */
