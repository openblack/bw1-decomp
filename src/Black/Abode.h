#ifndef BW1_DECOMP_ABODE_INCLUDED_H
#define BW1_DECOMP_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For LHListHead */

#include <chlasm/Enum.h>        /* For RESOURCE_TYPE_LAST, enum ABODE_TYPE, enum RESOURCE_TYPE, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h>          /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h"        /* For struct MapCoords */
#include "MultiMapFixed.h"    /* For struct MultiMapFixed, struct MultiMapFixedVftable */
#include "Object.h"           /* For struct Object */
#include "Villager.h"         /* For struct Villager */

enum ABODE_EPP
{
	ABODE_EPP_LANTERN = 0x0,
	ABODE_EPP_SCRIPT_HIGHLIGHT = 0x1,
	_ABODE_EPP_COUNT = 0x2
};

// Forward Declares

class Base;
class Creature;
class GAbodeInfo;
class GInterfaceStatus;
class GPlayer;
class GTribeInfo;
class GameOSFile;
class GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LH3DMesh;
struct LH3DSmoke;
class LHOSFile;
struct LHPoint;
struct ObjectVftable;
struct PhysOb;
class PhysicsObject;
class PlannedMultiMapFixed;
class Town;

class Abode : public MultiMapFixed
{
public:
	uint8_t              field_0x7c;
	uint8_t              field_0x7d;
	uint8_t              field_0x7e;
	uint8_t              field_0x7f;
	MapCoords            DrinkingWater; /* 0x80 */
	LH3DSmoke*           smoke;
	LH3DMesh*            DestructionMesh; /* 0x90 */
	uint32_t             field_0x94;
	Town*                town;
	Abode*               next;
	LHListHead<Villager> villagers; /* 0xa0 */
	Villager*            MaleFemaleVillagers[0x2];
	uint32_t             field_0xb0;
	uint8_t              AdultCount;
	uint8_t              field_0xb5;
	uint8_t              field_0xb6;
	uint8_t              field_0xb7;
	uint8_t              index;
	uint8_t              field_0xb9;
	uint32_t             resources[RESOURCE_TYPE_LAST];

	// Override methods

	// BW1W120 00401650 BW1M100 10565230 Abode::GetShouldNotBeAddedToPlanned(void)
	virtual bool32_t GetShouldNotBeAddedToPlanned() { return (field_0x7c & 4) >> 2; }
	// BW1W120 00401660 BW1M100 1031a9a0 Abode::SetShouldNotBeAddedToPlanned(int)
	virtual void SetShouldNotBeAddedToPlanned(bool value) { field_0x7c |= (value << 2); }
	// BW1W120 00401680 BW1M100 10371be0 Abode::RestartBeingFunctional(void)
	virtual void RestartBeingFunctional() {}
	// BW1W120 00401690 BW1M100 1037f370 Abode::SetTown(Town *)
	virtual void SetTown(Town* _town) { town = _town; }
	// BW1W120 004016a0 BW1M100 10066b80 Abode::IsRepaired(void)
	virtual bool32_t IsRepaired() { return GetPercentRepaired() >= 1.0f; }
	// BW1W120 004016c0 BW1M100 10055bb0 Abode::IsBuilt(void)
	virtual bool32_t IsBuilt()
	{
		if (field_0x58 & 2)
		{
			return false;
		}
		return GetPercentBuilt() >= 1.0f;
	}
	// BW1W120 004016f0 BW1M100 101cbc80 Abode::CausesTownEmergencyIfDamaged(void)
	virtual bool32_t CausesTownEmergencyIfDamaged() { return false; }
	// BW1W120 00401700 BW1M100 105756c0 Abode::GetDestructionMesh(void)
	virtual LH3DMesh* GetDestructionMesh() { return DestructionMesh; }
	// BW1W120 00401710 BW1M100 100970f0 Abode::IsAbode(void)
	virtual bool32_t IsAbode() { return true; }
	// BW1W120 00401720 BW1M100 10435a10 Abode::IsCastShadowAtNight(void)
	virtual bool32_t IsCastShadowAtNight() { return true; }
	// BW1W120 00401740 BW1M100 1040f9d0 Abode::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType() { return 3; }
	// BW1W120 00401750 BW1M100 100a48c0 Abode::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType() { return 5; }
	// BW1W120 00401760 BW1M100 10110c50 Abode::GetOrigin(void)
	virtual uint32_t GetOrigin() { return 1; }
	// BW1W120 00401770 BW1M100 1000c2b0 Abode::GetArrivePos(void)
	virtual MapCoords GetArrivePos() { return GetDoorPos(); }
	// BW1W120 00401790 BW1M100 10134300 Abode::IsHouse(void)
	virtual bool32_t IsHouse() { return true; }
	// BW1W120 004017a0 BW1M100 103e1790 Abode::GetSaveType(void)
	virtual uint32_t GetSaveType() { return 0x7; }
	// BW1W120 004017b0 BW1M100 10434340 Abode::GetDebugText(void)
	virtual char* GetDebugText() { return "Abode:"; }

	// BW1W120 004017c0 BW1M100 103d4980 Abode::_dt(unsigned int)
	virtual ~Abode();
	// BW1W120 00402c10 BW1M100 1033b510 Abode::Delete(void)
	virtual void Delete();
	// BW1W120 00402c60 BW1M100 100c6f40 Abode::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00405f70 BW1M100 1006d070 Abode::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00401730 BW1M100 1004fe30 Abode::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 00404d40 BW1M100 10000f50 Abode::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
	virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
	// BW1W120 00404d60 BW1M100 1034cdd0 Abode::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
	// BW1W120 00404d30 BW1M100 1006d300 Abode::GetResource(RESOURCE_TYPE)
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 00404d90 BW1M100 101c95e0 Abode::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* coords, int param_6);
	// BW1W120 00404f10 BW1M100 101c9a10 Abode::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00401640 BW1M100 105602b0 Abode::CastAbode(void)
	virtual Abode* CastAbode();
	// BW1W120 00403f10 BW1M100 103c9730 Abode::GetNumberOfInstanceForGlobalList(void)
	virtual uint16_t GetNumberOfInstanceForGlobalList();
	// BW1W120 00406200 BW1M100 1005ff20 Abode::IsFunctional(void)
	virtual bool32_t IsFunctional();
	// BW1W120 00406d20 BW1M100 101a2920 Abode::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00406a10 BW1M100 103bd750 Abode::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00407200 BW1M100 1008a7b0 Abode::IsInteractable(void)
	virtual bool IsInteractable();
	// BW1W120 004e43f0 BW1M100 105e5610 Abode::CanBeStompedOnByCreature(Creature *)
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004e3fa0 BW1M100 105e63e0 Abode::CanBeKickedByCreature(Creature *)
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 004d1b60 BW1M100 10242f80 Abode::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0063b940 BW1M100 103da700 Abode::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 004061c0 BW1M100 1014d0e0 Abode::IsWonder(void)
	virtual bool32_t IsWonder();
	// BW1W120 00406810 BW1M100 1001b380 Abode::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00402cb0 BW1M100 10570ad0 Abode::DestroyedByBeam(void)
	virtual void DestroyedByBeam();
	// BW1W120 00403ee0 BW1M100 1036edb0 Abode::InsertMapObject(void)
	virtual void InsertMapObject();
	// BW1W120 00402cf0 BW1M100 101c66a0 Abode::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
	virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
	// BW1W120 00405d90 BW1M100 10097be0 Abode::ReduceLife(float, GPlayer *)
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00405ed0 BW1M100 10112270 Abode::IncreaseLife(float)
	virtual void IncreaseLife(float value);
	// BW1W120 00403f80 BW1M100 10573770 Abode::DestroyedByEffect(GPlayer *, float)
	virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
	// BW1W120 00404440 BW1M100 1004fcb0 Abode::Process(void)
	virtual uint32_t Process();
	// BW1W120 00404aa0 BW1M100 100ac700 Abode::GetMesh(void) const
	virtual int GetMesh();
	// BW1W120 00515f70 BW1M100 10036a60 Abode::Draw(void)
	virtual void Draw();
	// BW1W120 00407170 BW1M100 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 00403200 BW1M100 10576c70 Abode::CallVirtualFunctionsForCreation(const MapCoords&)
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00406820 BW1M100 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 00406830 BW1M100 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);
	// BW1W120 00402dc0 BW1M100 103bf040 Abode::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00402dd0 BW1M100 103bf110 Abode::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00406230 BW1M100 1014cfd0 Abode::ChecksVerticesVObjects(void)
	virtual uint32_t ChecksVerticesVObjects();
	// BW1W120 00406240 BW1M100 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00406800 BW1M100 1010ab50 Abode::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00402cd0 BW1M100 100c7020 Abode::GetInspectObjectPos(Villager *, MapCoords *)
	virtual bool GetInspectObjectPos(Villager* param_1, MapCoords* pos);
	// BW1W120 00407420 BW1M100 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
	virtual void DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status);
	// BW1W120 00405bb0 BW1M100 101ca440 Abode::SaveObject(LHOSFile &, MapCoords const &)
	virtual size_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 00403ef0 BW1M100 10589380 Abode::ShouldFootpathsGoRound(void)
	virtual bool ShouldFootpathsGoRound();
	// BW1W120 004072a0 BW1M100 10053220 Abode::GetInfluence(void)
	virtual float GetInfluence();
	// BW1W120 00407290 BW1M100 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
	virtual float GetPercentRepairedForNonFunctional();
	// BW1W120 00407050 BW1M100 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
	virtual float GetPercentAbodeFullWithAdults();
	// BW1W120 00407090 BW1M100 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
	virtual float GetPercentAbodeFullWithChildren();
	// BW1W120 00404720 BW1M100 105b9180 Abode::Built(void)
	virtual bool Built();
	// BW1W120 004047b0 BW1M100 105b9280 Abode::Repaired(void)
	virtual bool Repaired();
	// BW1W120 00403f40 BW1M100 105861b0 Abode::RemoveDamage(void)
	virtual void RemoveDamage();
	// BW1W120 00405ff0 BW1M100 10199f30 Abode::IsCivic(void)
	virtual bool IsCivic();
	// BW1W120 004061f0 BW1M100 10089cd0 Abode::GetAbodeType(void)
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00406970 BW1M100 1004c590 Abode::GetDesireToBeRepaired(void)
	virtual float GetDesireToBeRepaired();
	// BW1W120 00404df0 BW1M100 10002b90 Abode::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, GInterfaceStatus* iface, bool param_3, MapCoords* param_4,
	                                  int param_5);
	// BW1W120 00404f60 BW1M100 104f7960 Abode::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
	virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool param_4);
	// BW1W120 00405050 BW1M100 100a3330 Abode::ConvertToPlanned(void)
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 00404520 BW1M100 1036d5a0 Abode::MoveAbodeToPlannedAbodes(void)
	virtual void MoveAbodeToPlannedAbodes();
	// BW1W120 00403f00 BW1M100 100e33a0 Abode::DeleteDependancys(void)
	virtual void DeleteDependancys();
	// BW1W120 004047e0 BW1M100 103c1e30 Abode::MakeFunctional(void)
	virtual void MakeFunctional();
	// BW1W120 004073c0 BW1M100 103b5600 Abode::StopBeingFunctional(GPlayer *)
	virtual void StopBeingFunctional(GPlayer* param_1);
	// BW1W120 00407280 BW1M100 100dcdb0 Abode::CanBeHiddenIn(void)
	virtual bool CanBeHiddenIn();
	// BW1W120 00405f50 BW1M100 103b5680 Abode::GetTribe(void)
	virtual GTribeInfo* GetTribe();

	// Static methods

	// BW1W120 00402e20 BW1M100 103bf260 Abode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
	static Abode* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                     uint32_t param_6, uint32_t param_7, float food, int wood, int param_10);
	// BW1W120 00403190 BW1M100 10589610 Abode::CreateWithoutSpecial(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
	static Abode* CreateWithoutSpecial(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
	                                   float scale, float food, int wood);

	// Constructors

	// BW1W120 00401350 BW1M100 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
	Abode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
	      int wood);

	// Non-virtual methods

	// BW1W120 00402bc0 BW1M100 inlined Abode::SetToZero(void)
	void SetToZero();
	// BW1W120 00403130 BW1M100 1033b920 Abode::Init(int, unsigned long, unsigned long)
	void Init(int param_1, uint32_t food_amount, uint32_t wood_amount);
	// BW1W120 00403590 BW1M100 103602f0 Abode::GetNewEp(ABODE_EPP, MapCoords*)
	bool GetNewEp(ABODE_EPP index, LHPoint* point);
	// BW1W120 00403d20 BW1M100 10573d50 Abode::DeleteAbodeSurroundingObjects(void)
	void DeleteAbodeSurroundingObjects();
	// BW1W120 00403e00 BW1M100 10494a10 Abode::CreateAbodeSurroundingObjects(void)
	void CreateAbodeSurroundingObjects();
	// BW1W120 00404060 BW1M100 100d2ca0 Abode::AddVillagerToAbode(Villager *)
	void AddVillagerToAbode(Villager* villager);
	// BW1W120 00404220 BW1M100 1033b0e0 Abode::RemoveDeletedVillagerFromAbode(Villager *)
	void RemoveDeletedVillagerFromAbode(Villager* villager);
	// BW1W120 00404340 BW1M100 1033b5e0 Abode::RemoveAliveVillagerFromAbode(Villager *)
	void RemoveAliveVillagerFromAbode(Villager* villager);
	// BW1W120 00404560 BW1M100 10547ee0 Abode::RemoveAllVillagersFromAbode(void)
	void RemoveAllVillagersFromAbode();
	// BW1W120 00404580 BW1M100 inlined Abode::NumVillagersOfSex(SEX_TYPE)
	int NumVillagersOfSex();
	// BW1W120 004045d0 BW1M100 103d89d0 Abode::CalculateFoodNeededForDinner(void)
	int CalculateFoodNeededForDinner();
	// BW1W120 00404600 BW1M100 1032c5d0 Abode::IsEnoughFoodForDinner(void)
	bool32_t IsEnoughFoodForDinner();
	// BW1W120 00404630 BW1M100 1032c250 Abode::GetOtherParent(Villager *)
	Villager* GetSpouse(Villager* villager);
	// BW1W120 00404660 BW1M100 1032c3e0 Abode::GetRoomLeftForAdults(void)
	int GetRoomLeftForAdults();
	// BW1W120 00404680 BW1M100 103e40f0 Abode::GetRoomLeftForChildren(void)
	int GetRoomLeftForChildren();
	// BW1W120 004046a0 BW1M100 inlined Abode::FUN_004046a0(int)
	void FUN_004046a0(int param_1);
	// BW1W120 004046b0 BW1M100 inlined Abode::FUN_004046b0(void)
	int FUN_004046b0();
	// BW1W120 004046c0 BW1M100 105b93c0 Abode::IsTooCrowded(void)
	bool32_t IsTooCrowded();
	// BW1W120 00404b40 BW1M100 10329410 Abode::CalculateScoreForAddingVillagerToAbode(Villager *)
	float CalculateScoreForAddingVillagerToAbode(Villager* villager);
	// BW1W120 00404cc0 BW1M100 1019cca0 Abode::ChildToAdult(Villager *)
	void ChildToAdult(Villager* villager);
	// BW1W120 00405b70 BW1M100 101cbdc0 Abode::GetAbodeText(char *)
	char* GetAbodeText(char* buff);
	// BW1W120 00405d80 BW1M100 inlined Abode::FUN_00405d80(void)
	int FUN_00405d80();
	// BW1W120 00405f40 BW1M100 10177200 Abode::GetTribeType(void) const
	TRIBE_TYPE GetTribeType();
	// BW1W120 00405fa0 BW1M100 10003a60 Abode::ArriveHome(void)
	void ArriveHome();
	// BW1W120 00405fb0 BW1M100 1009fda0 Abode::LeaveHome(void)
	void LeaveHome();
	// BW1W120 00405fc0 BW1M100 100cd2d0 Abode::GetNearestWaterPos(MapCoords &)
	bool32_t GetNearestWaterPos(MapCoords& coords);
	// BW1W120 00406640 BW1M100 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
	void ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player);
	// BW1W120 004069c0 BW1M100 1036ee00 Abode::FindVillager(int (*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, unsigned long), SCRIPT_OBJECT_TYPE, unsigned long)
	Villager* FindVillager(int(__cdecl* param_1)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE param_2, uint32_t param_3);
	// BW1W120 00407020 BW1M100 inlined Abode::FindNearestDrinkingWater(float)
	void FindNearestDrinkingWater(float max_dist);
	// BW1W120 004070d0 BW1M100 104ed230 Abode::GetNumAdultsInAbode(void)
	uint8_t GetNumAdultsInAbode();
	// BW1W120 004070f0 BW1M100 101b8780 Abode::DrawPercentFull(int)
	void DrawPercentFull(int param_1);
	// BW1W120 00407230 BW1M100 inlined Abode::FUN_00407230(bool)
	MapCoords FUN_00407230(bool param_2);
	// BW1W120 004072e0 BW1M100 1000cd50 Abode::GetPosOutside(float, float, float)
	MapCoords GetPosOutside(float param_2, float param_3, float param_4);
	// BW1W120 004073f0 BW1M100 inlined Abode::FUN_004073f0(GPlayer *)
	void FUN_004073f0(GPlayer* param_1);
	// BW1W120 004074a0 BW1M100 100e7ac0 Abode::CalculateDesireToGainMale(void)
	float CalculateDesireToGainMale();
	// BW1W120 00407540 BW1M100 100af0d0 Abode::CalculateDesireToGainVillager(void)
	float CalculateDesireToGainVillager();
	// BW1W120 004075b0 BW1M100 10518900 Abode::TakeVillagerFrom(Abode&, int)
	bool TakeVillagerFrom(Abode& other, int param_2);
	// BW1W120 00407620 BW1M100 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
	bool SwapMaleForFemaleFrom(Abode& other);
	// BW1W120 004076c0 BW1M100 105a17d0 Abode::GetVillagerHealthTotal(void)
	float GetVillagerHealthTotal();
};

#endif /* BW1_DECOMP_ABODE_INCLUDED_H */
