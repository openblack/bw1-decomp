#ifndef BW1_DECOMP_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE, enum SPELL_SEED_TYPE */

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
	uint8_t                      field_0xe8[0x2c];
	float                        field_0x114;
	float                        field_0x118;
	float                        field_0x11c;
	uint32_t                     field_0x120;
	int                          NumVillagersRequestingToGoHome;

	// Override methods

	// BW1W120 0055dcf0 BW1M100 105b3620 WorshipSite::_dt(void)
	virtual ~WorshipSite();
	// BW1W120 0077aa60 BW1M100 105b32c0 WorshipSite::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055dc50 BW1M100 105b3d80 WorshipSite::RemoveDance(void)
	virtual void RemoveDance();
	// BW1W120 0077bd80 BW1M100 105b1220 WorshipSite::GetResource(RESOURCE_TYPE)
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0077c5f0 BW1M100 105afd80 WorshipSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0077c670 BW1M100 105afca0 WorshipSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0055dce0 BW1M100 105b4000 WorshipSite::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0077cd70 BW1M100 105aef50 WorshipSite::GetShowNeedsPos(unsigned long, MapCoords *)
	virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 0077d700 BW1M100 105acc40 WorshipSite::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0077d2f0 BW1M100 105ad890 WorshipSite::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dcd0 BW1M100 105b3fc0 WorshipSite::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0077daf0 BW1M100 105acbf0 WorshipSite::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 0077ced0 BW1M100 inlined WorshipSite::GetArrivePos(MapCoords *)
	virtual MapCoords GetArrivePos();
	// BW1W120 0055dc30 BW1M100 inlined WorshipSite::GetInteractPos(LHPoint *)
	virtual void GetInteractPos(LHPoint* param_1);
	// BW1W120 0055dc80 BW1M100 105b3e50 WorshipSite::IsSuitableForCreatureAction(void)
	virtual uint32_t IsSuitableForCreatureAction();
	// BW1W120 004e4b60 BW1M100 105e3fa0 WorshipSite::CanHaveMagicFoodCastOnMe(Creature *)
	virtual uint32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 0055dca0 BW1M100 inlined WorshipSite::IsWorshipSite_1(void)
	virtual uint32_t IsWorshipSite_1();
	// BW1W120 0055dc90 BW1M100 inlined WorshipSite::IsWorshipSite_0(Creature *)
	virtual uint32_t IsWorshipSite_0(Creature* param_1);
	// BW1W120 0055dcb0 BW1M100 105b3f30 WorshipSite::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0077c310 BW1M100 105b0430 WorshipSite::CalculateDesireForFood(void)
	virtual float CalculateDesireForFood();
	// BW1W120 0077c390 BW1M100 105b0370 WorshipSite::CalculateDesireForRest(void)
	virtual float CalculateDesireForRest();
	// BW1W120 0077c3d0 BW1M100 105b0290 WorshipSite::CalculatePeopleHidingIndicator(void)
	virtual float CalculatePeopleHidingIndicator();
	// BW1W120 0077d2e0 BW1M100 105ae4e0 WorshipSite::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 0077d030 BW1M100 105ae820 WorshipSite::UpdateFrom3DPosition(void)
	virtual void UpdateFrom3DPosition();
	// BW1W120 0077dde0 BW1M100 inlined WorshipSite::GetDefaultFireCentrePos(LHPoint *)
	virtual LHPoint* GetDefaultFireCentrePos(LHPoint* param_1);
	// BW1W120 0077de10 BW1M100 105ac3e0 WorshipSite::GetDefaultFireRadius(void)
	virtual float GetDefaultFireRadius();
	// BW1W120 0077b1d0 BW1M100 105b2440 WorshipSite::Process(void)
	virtual uint32_t Process();
	// BW1W120 0055dcc0 BW1M100 105b3f70 WorshipSite::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 005193d0 BW1M100 100c7a80 WorshipSite::Draw(void)
	virtual void Draw();
	// BW1W120 0077de70 BW1M100 105ac230 WorshipSite::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0077b9d0 BW1M100 105b16a0 WorshipSite::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0077dec0 BW1M100 105ac190 WorshipSite::IsResourceStore(RESOURCE_TYPE)
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0077e7b0 BW1M100 105ab190 WorshipSite::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
	virtual bool DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2);
	// BW1W120 0077e480 BW1M100 105ab730 WorshipSite::GetRadiusMultiplierForApplyingPotToPos(void)
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0077def0 BW1M100 105ac090 WorshipSite::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
	virtual bool DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2);
	// BW1W120 0077de20 BW1M100 105ac330 WorshipSite::GetDistanceFromObject(Object *)
	virtual float GetDistanceFromObject(Object* param_1);
	// BW1W120 0055dc60 BW1M100 105b3dc0 WorshipSite::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0077ae30 BW1M100 105b2cf0 WorshipSite::GetInspectObjectPos(Villager *, MapCoords *)
	virtual bool GetInspectObjectPos(Villager* param_1, MapCoords* param_2);
	// BW1W120 0077cc90 BW1M100 105aefc0 WorshipSite::GetSpecialPos(unsigned long, MapCoords *)
	virtual uint32_t GetSpecialPos(uint32_t param_1, MapCoords* param_2);
	// BW1W120 0077d000 BW1M100 105ae860 WorshipSite::GetObjectCollide(void)
	virtual uint32_t GetObjectCollide();
	// BW1W120 0077c120 BW1M100 105b0620 WorshipSite::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 0077dc90 BW1M100 105ac5f0 WorshipSite::GetNearestEdgeOfObject(Object *)
	virtual void GetNearestEdgeOfObject(Object* param_1);
	// BW1W120 0077e460 BW1M100 inlined WorshipSite::GetResourceDropPosForComputerPlayer(MapCoords *)
	virtual void GetResourceDropPosForComputerPlayer(MapCoords* param_1);
	// BW1W120 0077bdd0 BW1M100 105b10a0 WorshipSite::IsBuilt(void)
	virtual bool32_t IsBuilt();
	// BW1W120 0077ac10 BW1M100 105b3210 WorshipSite::Built(void)
	virtual bool Built();
	// BW1W120 0055dc70 BW1M100 105b3e10 WorshipSite::GetAbodeType(void)
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 0077c5d0 BW1M100 105afeb0 WorshipSite::GetResourcePos(RESOURCE_TYPE, long)
	virtual MapCoords GetResourcePos(RESOURCE_TYPE type, int index);
	// BW1W120 0077c6d0 BW1M100 105afb90 WorshipSite::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
	virtual MapCoords* GetResourceNearestEdge(MapCoords* param_1, RESOURCE_TYPE param_2, Object* param_3, int param_4);
	// BW1W120 0077ae10 BW1M100 105b2d80 WorshipSite::RemovePotFromStructure(PotStructure *)
	virtual void RemovePotFromStructure(PotStructure* param_1);

	// Non-virtual methods

	// BW1W120 0077afc0 BW1M100 105b28e0 WorshipSite::GetSpellIconPosFromSlot(unsigned long, float)
	MapCoords* GetSpellIconPosFromSlot(MapCoords* coords, uint32_t slot, float angle);
	// BW1W120 0077b080 BW1M100 105b26e0 WorshipSite::GetSpellIconPos(short &)
	MapCoords* GetSpellIconPos(MapCoords* coords, int16_t* slot);
	// BW1W120 0077c430 BW1M100 105b01e0 WorshipSite::AddSpellIcon(WorshipSpellIcon *)
	void AddSpellIcon(WorshipSpellIcon* icon);
	// BW1W120 0077c910 BW1M100 105af7f0 WorshipSite::AddTownSpells(Town *)
	void AddTownSpells(Town* town);
	// BW1W120 0077c9e0 BW1M100 105af540 WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE)
	void AddSpellIconIfNecessary(SPELL_SEED_TYPE seed_type);
	// BW1W120 0077cf30 BW1M100 105aeaa0 WorshipSite::GetTotemPos(void)
	MapCoords* GetTotemPos(MapCoords* coords);
	// BW1W120 0077d0a0 BW1M100 105ae5c0 WorshipSite::RemoveVillagerFromWorshipCount(Villager *)
	void RemoveVillagerFromWorshipCount(Villager* param_1);
	// BW1W120 0077e1d0 BW1M100 105aba90 WorshipSite::RemoveVillagerRequestingToGoHome(Villager *)
	void RemoveVillagerRequestingToGoHome(Villager* param_1);
	// BW1W120 0077e260 BW1M100 105aba40 WorshipSite::GetNumVillagersRequestingToGoHome(void)
	int GetNumVillagersRequestingToGoHome();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_INCLUDED_H */
