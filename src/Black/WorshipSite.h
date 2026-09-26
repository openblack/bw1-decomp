#ifndef BW1_DECOMP_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum ABODE_TYPE, enum RESOURCE_TYPE, enum SPELL_SEED_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHead */

#include "CitadelPart.h"      /* For struct CitadelPart */
#include "WorshipSpellIcon.h" /* For struct WorshipSpellIcon */

// Forward Declares

class Base;
class Creature;
class Dance;
class GInterfaceStatus;
class GTribeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class MultiMapFixed;
class Object;
class PotStructure;
class ShowNeeds;
class Town;
class Villager;
class WorshipTotem;

class WorshipSite : public CitadelPart
{
public:
	GTribeInfo*                  tribe_info; /* 0x8c */
	ShowNeeds*                   show_needs; /* 0x90 */
	uint32_t                     field_0x94;
	uint32_t                     field_0x98;
	uint32_t                     field_0x9c;
	Dance*                       dance; /* 0xa0 */
	uint8_t                      field_0xa4[0x14];
	int*                         field_0xb8;
	uint8_t                      field_0xbc[0xc];
	int                          field_0xc8;
	uint8_t                      field_0xcc[0xc];
	int                          field_0xd8;
	WorshipTotem*                totem;
	LHListHead<WorshipSpellIcon> IconList; /* 0xe0 */
	uint8_t                      field_0xe8[0x1c];
	float                        ChantDamage; /* 0x104 */
	uint8_t                      field_0x108[0xc];
	float                        field_0x114;
	float                        field_0x118;
	float                        field_0x11c;
	uint32_t                     field_0x120;
	int                          NumVillagersRequestingToGoHome;

	// Override methods

	// BW1W120 0055dcf0 BW1M119 015ba5a0
	virtual ~WorshipSite();
	// BW1W120 0077aa60 BW1M119 015ba240
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055dc50 BW1M119 015bac90
	virtual void RemoveDance();
	// BW1W120 0077bd80 BW1M119 015b8190
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0077c5f0 BW1M119 015b6cf0
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0077c670 BW1M119 015b6c10
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0055dce0 BW1M119 015baf10
	virtual char* GetDebugText();
	// BW1W120 0077cd70 BW1M119 015b5ed0
	virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 0077d700 BW1M119 015b3ab0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0077d2f0 BW1M119 015b4810
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dcd0 BW1M119 015baed0
	virtual uint32_t GetSaveType();
	// BW1W120 0077daf0 BW1M119 015b3a60
	virtual void ResolveLoad();
	// BW1W120 0077ced0 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0055dc30 BW1M119 inlined
	virtual void GetInteractPos(LHPoint* param_1);
	// BW1W120 0055dc80 BW1M119 015bad60
	virtual bool32_t IsSuitableForCreatureAction();
	// BW1W120 004e4b60 BW1M119 015ebca0
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 0055dca0 BW1M119 inlined
	virtual uint32_t IsWorshipSite_1();
	// BW1W120 0055dc90 BW1M119 inlined
	virtual uint32_t IsWorshipSite_0(Creature* param_1);
	// BW1W120 0055dcb0 BW1M119 015bae40
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0077c310 BW1M119 015b73a0
	virtual float CalculateDesireForFood();
	// BW1W120 0077c390 BW1M119 015b72e0
	virtual float CalculateDesireForRest();
	// BW1W120 0077c3d0 BW1M119 015b7200
	virtual float CalculatePeopleHidingIndicator();
	// BW1W120 0077d2e0 BW1M119 015b5460
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0077d030 BW1M119 015b57a0
	virtual void UpdateFrom3DPosition();
	// BW1W120 0077dde0 BW1M119 inlined
	virtual void GetDefaultFireCentrePos(MapCoords* param_1);
	// BW1W120 0077de10 BW1M119 015b3250
	virtual float GetDefaultFireRadius();
	// BW1W120 0077b1d0 BW1M119 015b93b0
	virtual uint32_t Process();
	// BW1W120 0055dcc0 BW1M119 015bae80
	virtual MESH_LIST GetMesh() const;
	// BW1W120 005193d0 BW1M119 010cb020
	virtual void Draw();
	// BW1W120 0077de70 BW1M119 015b30a0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0077b9d0 BW1M119 015b8610
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0077dec0 BW1M119 015b3000
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0077e7b0 BW1M119 015b2000
	virtual bool32_t DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0077e480 BW1M119 015b25a0
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0077def0 BW1M119 015b2f00
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus& param_2);
	// BW1W120 0077de20 BW1M119 015b31a0
	virtual float GetDistanceFromObject(Object* param_1);
	// BW1W120 0055dc60 BW1M119 015bacd0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0077ae30 BW1M119 015b9c70
	virtual bool32_t GetInspectObjectPos(Villager* param_1, MapCoords* param_2);
	// BW1W120 0077cc90 BW1M119 015b5f40
	virtual bool32_t GetSpecialPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 0077d000 BW1M119 015b57e0
	virtual uint32_t GetObjectCollide();
	// BW1W120 0077c120 BW1M119 015b7590
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 0077dc90 BW1M119 015b3460
	virtual LHPoint GetNearestEdgeOfObject(Object* object);
	// BW1W120 0077e460 BW1M119 inlined
	virtual void GetResourceDropPosForComputerPlayer(MapCoords* param_1);
	// BW1W120 0077bdd0 BW1M119 015b8010
	virtual bool32_t IsBuilt();
	// BW1W120 0077ac10 BW1M119 015ba190
	virtual bool32_t Built();
	// BW1W120 0055dc70 BW1M119 015bad20
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 0077c5d0 BW1M119 015b6e20
	virtual MapCoords GetResourcePos(RESOURCE_TYPE type, int index);
	// BW1W120 0077c6d0 BW1M119 015b6b00
	virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* object, int index);
	// BW1W120 0077ae10 BW1M119 015b9d00
	virtual void RemovePotFromStructure(PotStructure* param_1);

	// Non-virtual methods

	// BW1W120 0077afc0 BW1M119 015b9860
	MapCoords* GetSpellIconPosFromSlot(MapCoords* coords, uint32_t slot, float angle);
	// BW1W120 0077b080 BW1M119 015b9650
	MapCoords* GetSpellIconPos(MapCoords* coords, int16_t* slot);
	// BW1W120 0077bdb0 BW1M119 015b8130
	int GetFood();
	// BW1W120 0077c4d0 BW1M119 015b6fd0
	void RemoveFromFoodOnTheWay(uint32_t amount);
	// BW1W120 0077c430 BW1M119 015b7150
	void AddSpellIcon(WorshipSpellIcon* icon);
	// BW1W120 0077c910 BW1M119 015b6770
	void AddTownSpells(Town* town);
	// BW1W120 0077c9e0 BW1M119 015b64c0
	void AddSpellIconIfNecessary(SPELL_SEED_TYPE seed_type);
	// BW1W120 0077cf30 BW1M119 015b5a20
	MapCoords* GetTotemPos(MapCoords* coords);
	// BW1W120 0077d0a0 BW1M119 015b5540
	void RemoveVillagerFromWorshipCount(Villager* param_1);
	// BW1W120 0077e1d0 BW1M119 015b2900
	void RemoveVillagerRequestingToGoHome(Villager* param_1);
	// BW1W120 0077e260 BW1M119 015b28b0
	int GetNumVillagersRequestingToGoHome();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_INCLUDED_H */
