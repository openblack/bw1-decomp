#ifndef BW1_DECOMP_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum HOLD_TYPE, enum IMMERSION_EFFECT_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class EffectValues;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct MapCoords;
class WorshipSite;

class SpellSeed : public Object
{
public:
	uint8_t field_0x54[0x4c];

	// Override methods

	// BW1W120 00727fc0 BW1M119 01535320
	virtual ~SpellSeed();
	// BW1W120 00728280 BW1M119 01534b90
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00727fb0 BW1M119 01535540
	virtual char* GetDebugText();
	// BW1W120 00729fb0 BW1M119 01530530
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00729ca0 BW1M119 01530a30
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00727fa0 BW1M119 01535500
	virtual uint32_t GetSaveType();
	// BW1W120 00727f70 BW1M119 01535430
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00727f80 BW1M119 01535470
	virtual uint32_t GetOrigin();
	// BW1W120 007298b0 BW1M119 01531840
	virtual float GetPower() const;
	// BW1W120 007298f0 BW1M119 01531800
	virtual float GetPSysPower() const;
	// BW1W120 00728a00 BW1M119 01533790
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 00727f50 BW1M119 015353b0
	virtual uint32_t IsSpellSeed();
	// BW1W120 00729c90 BW1M119 01530f80
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00728f30 BW1M119 01532c20
	virtual void InsertMapObject();
	// BW1W120 00728f40 BW1M119 01532be0
	virtual void RemoveMapObject();
	// BW1W120 00728680 BW1M119 01534080
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00728640 BW1M119 015341c0
	virtual float GetHoldRadius();
	// BW1W120 00728660 BW1M119 01534150
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00728670 BW1M119 015340f0
	virtual float GetHoldYRotate();
	// BW1W120 00727f60 BW1M119 015353e0
	virtual uint32_t HandShouldFeelWithMeshIntersect();
	// BW1W120 00729850 BW1M119 01531a10
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00518710 BW1M119 010cc360
	virtual void Draw();
	// BW1W120 005190a0 BW1M119 010cb620
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 00728600 BW1M119 015342c0
	virtual bool IsG3DObjectDrawnInHand();
	// BW1W120 00728360 BW1M119 015346f0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00728580 BW1M119 015343a0
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00728810 BW1M119 015339f0
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00728940 BW1M119 015338d0
	virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00728760 BW1M119 01533cf0
	virtual uint32_t ValidToRemoveFromHand(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00728f00 BW1M119 01532c60
	virtual uint32_t RemoveFromHand(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 007286d0 BW1M119 01533ed0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00728d10 BW1M119 01532f20
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 00728720 BW1M119 01533e00
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00728e20 BW1M119 01532dd0
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 00728750 BW1M119 01533d80
	virtual uint32_t ValidForLockedApplyProcess(GInterfaceStatus* param_1);
	// BW1W120 00728eb0 BW1M119 01532d00
	virtual uint32_t ApplyUnlockProcess(GInterfaceStatus* param_1);
	// BW1W120 007286a0 BW1M119 01534030
	virtual uint32_t IsInterfacePowerUpWhenInHand() const;
	// BW1W120 007286b0 BW1M119 01533fc0
	virtual uint32_t ApplyOnlyAfterRecSystem();
	// BW1W120 0072acd0 BW1M119 0152ebf0
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
	// BW1W120 00728f50 BW1M119 01532b90
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00728570 BW1M119 015344a0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00729930 BW1M119 01531560
	virtual bool ProcessInHand();
	// BW1W120 00727f90 BW1M119 015354b0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 0072a2d0 BW1M119 015304c0
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

#endif /* BW1_DECOMP_SPELL_SEED_INCLUDED_H */
