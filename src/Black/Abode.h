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
struct FragMesh;
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
	FragMesh*            DestructionMesh; /* 0x90 */
	uint32_t             field_0x94;
	Town*                town;
	Abode*               next;
	LHListHead<Villager> villagers; /* 0xa0 */
	Villager*            MaleFemaleVillagers[0x2];
	float                field_0xb0;
	uint8_t              AdultCount;
	uint8_t              AdultMaleCount;
	uint8_t              PresentAtHome;
	uint8_t              ChildCount;
	uint8_t              index;
	uint8_t              field_0xb9;
	uint32_t             resources[RESOURCE_TYPE_LAST];

	// Override methods

	// BW1W120 00401650 BW1M119 01176c50
	virtual bool32_t GetShouldNotBeAddedToPlanned() { return (field_0x7c & 4) >> 2; }
	// BW1W120 00401660 BW1M119 0111a380
	virtual void SetShouldNotBeAddedToPlanned(bool value) { field_0x7c = (value & 1) << 2 | field_0x7c & ~4; }
	// BW1W120 00401690 BW1M119 01119c70
	virtual void SetTown(Town* _town) { town = _town; }
	// BW1W120 004016a0 BW1M119 01069320
	virtual bool32_t IsRepaired() { return GetPercentRepaired() >= 1.0f; }
	// BW1W120 004016c0 BW1M119 01058540
	virtual bool32_t IsBuilt()
	{
		if ((field_0x58 & 2) == 2)
		{
			return false;
		}
		return GetPercentBuilt() >= 1.0f;
	}
	// BW1W120 00401700 BW1M119 011747d0
	virtual FragMesh* GetDestructionMesh() { return DestructionMesh; }
	// BW1W120 00401710 BW1M119 01099040
	virtual bool32_t IsAbode() { return true; }
	// BW1W120 00401720 BW1M119 013702e0
	virtual bool32_t IsCastShadowAtNight() { return true; }
	// BW1W120 00401740 BW1M119 013703b0
	virtual uint32_t GetCreatureBeliefType() { return 3; }
	// BW1W120 00401750 BW1M119 013703f0
	virtual uint32_t GetCreatureMimicType() { return 5; }
	// BW1W120 00401760 BW1M119 01370650
	virtual uint32_t GetOrigin() { return 1; }
	// BW1W120 00401770 BW1M119 0100ede0
	virtual MapCoords GetArrivePos() { return GetDoorPos(); }
	// BW1W120 00401790 BW1M119 01112cc0
	virtual bool32_t IsHouse() { return true; }
	// BW1W120 004017a0 BW1M119 010abd30
	virtual uint32_t GetSaveType() { return 0x7; }
	// BW1W120 004017b0 BW1M119 013ee250
	virtual char* GetDebugText() { return "Abode:"; }
	// BW1W120 004017c0 BW1M119 0155e5d0
	virtual ~Abode();
	// BW1W120 00402c10 BW1M119 01575020
	virtual void Delete();
	// BW1W120 00402c60 BW1M119 010b44b0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00405f70 BW1M119 0106f7f0
	virtual GPlayer* GetPlayer();
	// BW1W120 00401730 BW1M119 010527c0
	virtual Town* GetTown();
	// BW1W120 00404d40 BW1M119 01000f50
	virtual uint32_t JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool param_3);
	// BW1W120 00404d60 BW1M119 015a5e60
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* param_3);
	// BW1W120 00404d30 BW1M119 0106fa80
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 00404d90 BW1M119 01582ec0
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* coords, int param_6);
	// BW1W120 00404f10 BW1M119 01107ae0
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* param_4);
	// BW1W120 00401640 BW1M119 0151ba40
	virtual Abode* CastAbode();
	// BW1W120 00403f10 BW1M119 0143e8b0
	virtual uint16_t GetNumberOfInstanceForGlobalList();
	// BW1W120 00406200 BW1M119 01062690
	virtual bool32_t IsFunctional();
	// BW1W120 00406d20 BW1M119 011d3810
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00406a10 BW1M119 01245790
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00407200 BW1M119 0108caf0
	virtual bool32_t IsInteractable();
	// BW1W120 004e43f0 BW1M119 015ed310
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 004e3fa0 BW1M119 015ee0e0
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 004d1b60 BW1M119 01247870
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0063b940 BW1M119 013e2680
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 004061c0 BW1M119 0155b990
	virtual bool32_t IsWonder();
	// BW1W120 00406810 BW1M119 0101df30
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00402cb0 BW1M119 012ffca0
	virtual void DestroyedByBeam();
	// BW1W120 00403ee0 BW1M119 0111a4a0
	virtual void InsertMapObject();
	// BW1W120 00402cf0 BW1M119 0151b900
	virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
	// BW1W120 00405d90 BW1M119 01099b20
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00405ed0 BW1M119 01162420
	virtual float IncreaseLife(float value);
	// BW1W120 00403f80 BW1M119 010c82c0
	virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
	// BW1W120 00404440 BW1M119 01052640
	virtual uint32_t Process();
	// BW1W120 00404aa0 BW1M119 013439a0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00515f70 BW1M119 010393d0
	virtual void Draw();
	// BW1W120 00407170 BW1M119 011d34f0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 00403200 BW1M119 011a8dc0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00406820 BW1M119 0155d740
	virtual bool32_t InterfaceValidToTap(GInterfaceStatus* status);
	// BW1W120 00406830 BW1M119 01112a30
	virtual uint32_t InterfaceTap(GInterfaceStatus* status);
	// BW1W120 00402dc0 BW1M119 01590910
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00402dd0 BW1M119 011501a0
	virtual void SetUpPhysOb(PhysOb* obj);
	// BW1W120 00406230 BW1M119 013ed2a0
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00406240 BW1M119 013ee960
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00406800 BW1M119 01448d60
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00402cd0 BW1M119 015792e0
	virtual bool32_t GetInspectObjectPos(Villager* param_1, MapCoords* pos);
	// BW1W120 00407420 BW1M119 013ce440
	virtual void DiscipleInHandNear(Villager& villager, GInterfaceStatus& status);
	// BW1W120 00405bb0 BW1M119 015bfee0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords& coords);
	// BW1W120 00403ef0 BW1M119 0117b490
	virtual bool32_t ShouldFootpathsGoRound();
	// BW1W120 004072a0 BW1M119 01055bb0
	virtual float GetInfluence();
	// BW1W120 00407290 BW1M119 010676f0
	virtual float GetPercentRepairedForNonFunctional();
	// BW1W120 00407050 BW1M119 0104fca0
	virtual float GetPercentAbodeFullWithAdults();
	// BW1W120 00407090 BW1M119 0105b730
	virtual float GetPercentAbodeFullWithChildren();
	// BW1W120 00404720 BW1M119 010ca4d0
	virtual bool32_t Built();
	// BW1W120 004047b0 BW1M119 01578eb0
	virtual bool32_t Repaired();
	// BW1W120 00403f40 BW1M119 0157d860
	virtual float RemoveDamage();
	// BW1W120 00405ff0 BW1M119 011d1380
	virtual bool32_t IsCivic();
	// BW1W120 004061f0 BW1M119 0108c030
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00406970 BW1M119 0104ef20
	virtual float GetDesireToBeRepaired();
	// BW1W120 00404df0 BW1M119 01002b80
	virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* iface, bool param_4,
	                                  const MapCoords& coords, int param_6);
	// BW1W120 00404f60 BW1M119 015a3260
	virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool* param_4);
	// BW1W120 00405050 BW1M119 01370a40
	virtual PlannedMultiMapFixed* ConvertToPlanned();

	// Virtual methods

	// BW1W120 00404520 BW1M119 011771d0
	virtual bool32_t MoveAbodeToPlannedAbodes();
	// BW1W120 00403f00 BW1M119 01418d70
	virtual void DeleteDependancys();
	// BW1W120 004047e0 BW1M119 013c6f80
	virtual void MakeFunctional();
	// BW1W120 004073c0 BW1M119 013759d0
	virtual void StopBeingFunctional(GPlayer* player);
	// BW1W120 00401680 BW1M119 0135aaf0
	virtual void RestartBeingFunctional() {}
	// BW1W120 004016f0 BW1M119 01333fc0
	virtual bool32_t CausesTownEmergencyIfDamaged() { return false; }
	// BW1W120 00407280 BW1M119 0111b170
	virtual bool32_t CanBeHiddenIn();
	// BW1W120 00405f50 BW1M119 01331980
	virtual GTribeInfo* GetTribe();

	// Static methods

	// BW1W120 00402e20 BW1M119 010e0ff0
	static Abode* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                     uint32_t param_6, uint32_t param_7, float food, int wood, int param_10);
	// BW1W120 00403190 BW1M119 011b30f0
	static Abode* CreateWithoutSpecial(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
	                                   float scale, float food, int wood);

	// Constructors

	// BW1W120 00401350 BW1M119 01583030
	Abode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
	      int wood);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01359180
	inline GAbodeInfo* GetInfo() const { return (GAbodeInfo*)info; }
	// BW1W120 00402bc0 BW1M119 inlined
	void SetToZero();
	// BW1W120 00403130 BW1M119 01578db0
	void Init(int param_1, uint32_t food_amount, uint32_t wood_amount);
	// BW1W120 00403590 BW1M119 0143cff0
	bool32_t GetNewEp(ABODE_EPP index, LHPoint* point);
	// BW1W120 00403d20 BW1M119 013e9f50
	void DeleteAbodeSurroundingObjects();
	// BW1W120 00403e00 BW1M119 0113cde0
	void CreateAbodeSurroundingObjects();
	// BW1W120 00403f20 BW1M119 0157ee60
	float GetRemainingFloat();
	// BW1W120 00404060 BW1M119 010bae40
	void AddVillagerToAbode(Villager* villager);
	// BW1W120 00404220 BW1M119 013873c0
	void RemoveDeletedVillagerFromAbode(Villager* villager);
	// BW1W120 00404340 BW1M119 01519700
	void RemoveAliveVillagerFromAbode(Villager* villager);
	// BW1W120 00404560 BW1M119 01176bd0
	void RemoveAllVillagersFromAbode();
	// BW1W120 00404580 BW1M119 inlined
	int NumVillagersOfSex(SEX_TYPE sex);
	// BW1W120 004045d0 BW1M119 010bf930
	int CalculateFoodNeededForDinner();
	// BW1W120 00404600 BW1M119 0155afa0
	bool32_t IsEnoughFoodForDinner();
	// BW1W120 00404630 BW1M119 011a2830
	Villager* GetSpouse(Villager* villager);
	// BW1W120 00404660 BW1M119 01343580
	int GetRoomLeftForAdults();
	// BW1W120 00404680 BW1M119 013dc960
	int GetRoomLeftForChildren();
	// BW1W120 004046a0 BW1M119 inlined
	void FUN_004046a0(int param_1);
	// BW1W120 004046b0 BW1M119 inlined
	int FUN_004046b0();
	// BW1W120 004046c0 BW1M119 013435f0
	bool32_t IsTooCrowded();
	// BW1W120 00404b40 BW1M119 01566ec0
	float CalculateScoreForAddingVillagerToAbode(Villager* villager);
	// BW1W120 00404cc0 BW1M119 013dd6a0
	void ChildToAdult(Villager* villager);
	// BW1W120 00405b70 BW1M119 015c0360
	char* GetAbodeText(char* buff);
	// BW1W120 00405d80 BW1M119 inlined
	int FUN_00405d80();
	// BW1W120 00405f40 BW1M119 011a5950
	TRIBE_TYPE GetTribeType() const;
	// BW1W120 00405fa0 BW1M119 01003a50
	void ArriveHome();
	// BW1W120 00405fb0 BW1M119 010a1b10
	void LeaveHome();
	// BW1W120 00405fc0 BW1M119 01355510
	bool32_t GetNearestWaterPos(MapCoords& coords);
	// BW1W120 00406640 BW1M119 014492c0
	void ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player);
	// BW1W120 004069c0 BW1M119 013198b0
	Villager* FindVillager(int(__cdecl* param_1)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                       SCRIPT_OBJECT_TYPE param_2, uint32_t param_3);
	// BW1W120 00407020 BW1M119 inlined
	void FindNearestDrinkingWater(float max_dist);
	// BW1W120 004070d0 BW1M119 014f4710
	float GetNumAdultsInAbode();
	// BW1W120 004070f0 BW1M119 011d2000
	void DrawPercentFull(uint32_t param_1);
	// BW1W120 00407230 BW1M119 inlined
	MapCoords FUN_00407230(bool param_2);
	// BW1W120 004072e0 BW1M119 0100f890
	MapCoords GetPosOutside(float param_2, float param_3, float param_4);
	// BW1W120 004073f0 BW1M119 inlined
	void FUN_004073f0(GPlayer* param_1);
	// BW1W120 004074a0 BW1M119 010d1690
	float CalculateDesireToGainMale();
	// BW1W120 00407540 BW1M119 011a30d0
	float CalculateDesireToGainVillager();
	// BW1W120 004075b0 BW1M119 011ac310
	bool32_t TakeVillagerFrom(Abode& other, uint32_t param_2);
	// BW1W120 00407620 BW1M119 01155160
	bool32_t SwapMaleForFemaleFrom(Abode& other);
	// BW1W120 004076c0 BW1M119 011552d0
	float GetVillagerHealthTotal();
};

#endif /* BW1_DECOMP_ABODE_INCLUDED_H */
