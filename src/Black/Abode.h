#ifndef BW1_DECOMP_ABODE_INCLUDED_H
#define BW1_DECOMP_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum ABODE_TYPE, enum RESOURCE_TYPE, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h> /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed, struct MultiMapFixedVftable */
#include "Object.h" /* For struct Object */
#include "Villager.h" /* For struct Villager */

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

class Abode: public MultiMapFixed
{
public:
    uint32_t field_0x7c;
    MapCoords drinking_water; /* 0x80 */
    LH3DSmoke* smoke;
    LH3DMesh* destruction_mesh; /* 0x90 */
    uint32_t field_0x94;
    Town* town;
    Abode* next;
    LHListHead__Villager villagers; /* 0xa0 */
    Villager* male_female_villagers[0x2];
    uint32_t field_0xb0;
    uint8_t adult_count;
    uint8_t field_0xb5;
    uint8_t field_0xb6;
    uint8_t field_0xb7;
    uint8_t index;
    uint8_t field_0xb9;
    uint32_t resources[RESOURCE_TYPE_LAST];

    // Override methods

    // win1.41 004017c0 mac 103d4980 Abode::_dt(unsigned int)
    virtual ~Abode();
    // win1.41 00402c10 mac 1033b510 Abode::Delete(void)
    virtual void Delete();
    // win1.41 00402c60 mac 100c6f40 Abode::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00405f70 mac 1006d070 Abode::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00401730 mac 1004fe30 Abode::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00404d40 mac 10000f50 Abode::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
    virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
    // win1.41 00404d60 mac 1034cdd0 Abode::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // win1.41 00404d30 mac 1006d300 Abode::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE type);
    // win1.41 00404d90 mac 101c95e0 Abode::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* coords, int param_6);
    // win1.41 00404f10 mac 101c9a10 Abode::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 00401640 mac 105602b0 Abode::CastAbode(void)
    virtual Abode* CastAbode();
    // win1.41 00403f10 mac 103c9730 Abode::GetNumberOfInstanceForGlobalList(void)
    virtual uint16_t GetNumberOfInstanceForGlobalList();
    // win1.41 00406200 mac 1005ff20 Abode::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 004017b0 mac 10434340 Abode::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00406d20 mac 101a2920 Abode::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 00406a10 mac 103bd750 Abode::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 004017a0 mac 103e1790 Abode::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00401770 mac 1000c2b0 Abode::GetArrivePos(void)
    virtual MapCoords* GetArrivePos(MapCoords* coords);
    // win1.41 00401740 mac 1040f9d0 Abode::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00401760 mac 10110c50 Abode::GetOrigin(void)
    virtual uint32_t GetOrigin();
    // win1.41 00407200 mac 1008a7b0 Abode::IsInteractable(void)
    virtual bool IsInteractable();
    // win1.41 00401720 mac 10435a10 Abode::IsCastShadowAtNight(void)
    virtual bool32_t IsCastShadowAtNight();
    // win1.41 00401710 mac 100970f0 Abode::IsAbode(void)
    virtual bool32_t IsAbode();
    // win1.41 004e43f0 mac 105e5610 Abode::CanBeStompedOnByCreature(Creature *)
    virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
    // win1.41 004e3fa0 mac 105e63e0 Abode::CanBeKickedByCreature(Creature *)
    virtual bool32_t CanBeKickedByCreature(Creature* creature);
    // win1.41 00401750 mac 100a48c0 Abode::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1b60 mac 10242f80 Abode::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 0063b940 mac 103da700 Abode::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
    virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
    // win1.41 00401790 mac 10134300 Abode::IsHouse(void)
    virtual bool32_t IsHouse();
    // win1.41 004061c0 mac 1014d0e0 Abode::IsWonder(void)
    virtual bool32_t IsWonder();
    // win1.41 00406810 mac 1001b380 Abode::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00402cb0 mac 10570ad0 Abode::DestroyedByBeam(void)
    virtual void DestroyedByBeam();
    // win1.41 00403ee0 mac 1036edb0 Abode::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00402cf0 mac 101c66a0 Abode::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
    virtual bool GetPSysFireLocalRndFlamePos(LHPoint* point, int* param_2);
    // win1.41 00405d90 mac 10097be0 Abode::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float value, GPlayer* player);
    // win1.41 00405ed0 mac 10112270 Abode::IncreaseLife(float)
    virtual void IncreaseLife(float value);
    // win1.41 00403f80 mac 10573770 Abode::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* player, float param_2);
    // win1.41 00404440 mac 1004fcb0 Abode::Process(void)
    virtual uint32_t Process();
    // win1.41 00404aa0 mac 100ac700 Abode::GetMesh(void) const
    virtual int GetMesh();
    // win1.41 00515f70 mac 10036a60 Abode::Draw(void)
    virtual void Draw();
    // win1.41 00407170 mac 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
    // win1.41 00403200 mac 10576c70 Abode::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 00406820 mac 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* status);
    // win1.41 00406830 mac 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* status);
    // win1.41 00402dc0 mac 103bf040 Abode::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00402dd0 mac 103bf110 Abode::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 00406230 mac 1014cfd0 Abode::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // win1.41 00406240 mac 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00406800 mac 1010ab50 Abode::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00402cd0 mac 100c7020 Abode::GetInspectObjectPos(Villager *, MapCoords *)
    virtual bool GetInspectObjectPos(Villager* param_1, MapCoords* pos);
    // win1.41 00407420 mac 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
    virtual void DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status);
    // win1.41 00405bb0 mac 101ca440 Abode::SaveObject(LHOSFile &, MapCoords const &)
    virtual size_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00403ef0 mac 10589380 Abode::ShouldFootpathsGoRound(void)
    virtual bool ShouldFootpathsGoRound();
    // win1.41 004072a0 mac 10053220 Abode::GetInfluence(void)
    virtual float GetInfluence();
    // win1.41 004016a0 mac 10066b80 Abode::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 004016c0 mac 10055bb0 Abode::IsBuilt(void)
    virtual bool IsBuilt();
    // win1.41 00407290 mac 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
    virtual float GetPercentRepairedForNonFunctional();
    // win1.41 00407050 mac 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
    virtual float GetPercentAbodeFullWithAdults();
    // win1.41 00407090 mac 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
    virtual float GetPercentAbodeFullWithChildren();
    // win1.41 00404720 mac 105b9180 Abode::Built(void)
    virtual bool Built();
    // win1.41 004047b0 mac 105b9280 Abode::Repaired(void)
    virtual bool Repaired();
    // win1.41 00401700 mac 105756c0 Abode::GetDestructionMesh(void)
    virtual LH3DMesh* GetDestructionMesh();
    // win1.41 00403f40 mac 105861b0 Abode::RemoveDamage(void)
    virtual void RemoveDamage();
    // win1.41 00405ff0 mac 10199f30 Abode::IsCivic(void)
    virtual bool IsCivic();
    // win1.41 004061f0 mac 10089cd0 Abode::GetAbodeType(void)
    virtual ABODE_TYPE GetAbodeType();
    // win1.41 00406970 mac 1004c590 Abode::GetDesireToBeRepaired(void)
    virtual float GetDesireToBeRepaired();
    // win1.41 00404df0 mac 10002b90 Abode::DoResourceAdding(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t DoResourceAdding(RESOURCE_TYPE type, GInterfaceStatus* iface, bool param_3, MapCoords* param_4, int param_5);
    // win1.41 00404f60 mac 104f7960 Abode::DoResourceRemoving(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool param_4);
    // win1.41 00401690 mac 1037f370 Abode::SetTown(Town *)
    virtual void SetTown(Town* town);
    // win1.41 00401650 mac 10565230 Abode::GetShouldNotBeAddedToPlanned(void)
    virtual bool GetShouldNotBeAddedToPlanned();
    // win1.41 00401660 mac 1031a9a0 Abode::SetShouldNotBeAddedToPlanned(int)
    virtual void SetShouldNotBeAddedToPlanned(bool value);
    // win1.41 00405050 mac 100a3330 Abode::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // win1.41 00404520 mac 1036d5a0 Abode::MoveAbodeToPlannedAbodes(void)
    virtual void MoveAbodeToPlannedAbodes();
    // win1.41 00403f00 mac 100e33a0 Abode::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 004047e0 mac 103c1e30 Abode::MakeFunctional(void)
    virtual void MakeFunctional();
    // win1.41 004073c0 mac 103b5600 Abode::StopBeingFunctional(GPlayer *)
    virtual void StopBeingFunctional(GPlayer* param_1);
    // win1.41 00401680 mac 10371be0 Abode::RestartBeingFunctional(void)
    virtual void RestartBeingFunctional();
    // win1.41 004016f0 mac 101cbc80 Abode::CausesTownEmergencyIfDamaged(void)
    virtual bool CausesTownEmergencyIfDamaged();
    // win1.41 00407280 mac 100dcdb0 Abode::CanBeHiddenIn(void)
    virtual bool CanBeHiddenIn();
    // win1.41 00405f50 mac 103b5680 Abode::GetTribe(void)
    virtual GTribeInfo* GetTribe();

    // Static methods

    // win1.41 00402e20 mac 103bf260 Abode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
    static Abode* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10);
    // win1.41 00403190 mac 10589610 Abode::CreateWithoutSpecial(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
    static Abode* CreateWithoutSpecial(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Constructors

    // win1.41 00401350 mac 1033b330 Abode::Abode(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    Abode(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual Destructors

    // win1.41 00402b60 mac inlined Abode::_dt(void)
    ~Abode();

    // Non-virtual methods

    // win1.41 00402bc0 mac inlined Abode::SetZero(void)
    void SetZero();
    // win1.41 00403130 mac 1033b920 Abode::Init(int, unsigned long, unsigned long)
    void Init(int param_1, uint32_t food_amount, uint32_t wood_amount);
    // win1.41 00403590 mac 103602f0 Abode::GetNewEp(ABODE_EPP, MapCoords*)
    bool GetNewEp(ABODE_EPP index, LHPoint* point);
    // win1.41 00403d20 mac 10573d50 Abode::DeleteAbodeSurroundingObjects(void)
    void DeleteAbodeSurroundingObjects();
    // win1.41 00403e00 mac 10494a10 Abode::CreateAbodeSurroundingObjects(void)
    void CreateAbodeSurroundingObjects();
    // win1.41 00404060 mac 100d2ca0 Abode::AddVillagerToAbode(Villager *)
    void AddVillagerToAbode(Villager* villager);
    // win1.41 00404220 mac 1033b0e0 Abode::RemoveDeletedVillagerFromAbode(Villager *)
    void RemoveDeletedVillagerFromAbode(Villager* villager);
    // win1.41 00404340 mac 1033b5e0 Abode::RemoveAliveVillagerFromAbode(Villager *)
    void RemoveAliveVillagerFromAbode(Villager* villager);
    // win1.41 00404560 mac 10547ee0 Abode::RemoveAllVillagersFromAbode(void)
    void RemoveAllVillagersFromAbode();
    // win1.41 00404580 mac inlined Abode::NumVillagersOfSex(SEX_TYPE)
    int NumVillagersOfSex();
    // win1.41 004045d0 mac 103d89d0 Abode::CalculateFoodNeededForDinner(void)
    int CalculateFoodNeededForDinner();
    // win1.41 00404600 mac 1032c5d0 Abode::IsEnoughFoodForDinner(void)
    bool IsEnoughFoodForDinner();
    // win1.41 00404630 mac 1032c250 Abode::GetOtherParent(Villager *)
    Villager* GetSpouse(Villager* villager);
    // win1.41 00404660 mac 1032c3e0 Abode::GetRoomLeftForAdults(void)
    int GetRoomLeftForAdults();
    // win1.41 00404680 mac 103e40f0 Abode::GetRoomLeftForChildren(void)
    int GetRoomLeftForChildren();
    // win1.41 004046a0 mac inlined Abode::FUN_004046a0(int)
    void FUN_004046a0(int param_1);
    // win1.41 004046b0 mac inlined Abode::FUN_004046b0(void)
    int FUN_004046b0();
    // win1.41 004046c0 mac 105b93c0 Abode::IsTooCrowded(void)
    bool32_t IsTooCrowded();
    // win1.41 00404b40 mac 10329410 Abode::CalculateScoreForAddingVillagerToAbode(Villager *)
    float CalculateScoreForAddingVillagerToAbode(Villager* villager);
    // win1.41 00404cc0 mac 1019cca0 Abode::ChildToAdult(Villager *)
    void ChildToAdult(Villager* villager);
    // win1.41 00405b70 mac 101cbdc0 Abode::GetAbodeText(char *)
    char* GetAbodeText(char* buff);
    // win1.41 00405d80 mac inlined Abode::FUN_00405d80(void)
    int FUN_00405d80();
    // win1.41 00405f40 mac 10177200 Abode::GetTribeType(void) const
    TRIBE_TYPE GetTribeType();
    // win1.41 00405fa0 mac 10003a60 Abode::ArriveHome(void)
    void ArriveHome();
    // win1.41 00405fb0 mac 1009fda0 Abode::LeaveHome(void)
    void LeaveHome();
    // win1.41 00405fc0 mac 100cd2d0 Abode::GetNearestWaterPos(MapCoords &)
    bool GetNearestWaterPos(MapCoords* coords);
    // win1.41 00406640 mac 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
    void ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player);
    // win1.41 004069c0 mac 1036ee00 Abode::FindVillager( int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
    Villager* FindVillager(int (__cdecl*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, uint32_t) param_1, SCRIPT_OBJECT_TYPE param_2, uint32_t param_3);
    // win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
    void FindNearestDrinkingWater(float max_dist);
    // win1.41 004070d0 mac 104ed230 Abode::GetNumAdultsInAbode(void)
    uint8_t GetNumAdultsInAbode();
    // win1.41 004070f0 mac 101b8780 Abode::DrawPercentFull(int)
    void DrawPercentFull(int param_1);
    // win1.41 00407230 mac inlined Abode::FUN_00407230(bool)
    MapCoords* FUN_00407230(MapCoords* coords, bool param_2);
    // win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
    MapCoords* GetPosOutside(MapCoords* coords, float param_2, float param_3, float param_4);
    // win1.41 004073f0 mac inlined Abode::FUN_004073f0(GPlayer *)
    void FUN_004073f0(GPlayer* param_1);
    // win1.41 004074a0 mac 100e7ac0 Abode::CalculateDesireToGainMale(void)
    float CalculateDesireToGainMale();
    // win1.41 00407540 mac 100af0d0 Abode::CalculateDesireToGainVillager(void)
    float CalculateDesireToGainVillager();
    // win1.41 004075b0 mac 10518900 Abode::TakeVillagerFrom(Abode&, int)
    bool TakeVillagerFrom(Abode* other, int param_2);
    // win1.41 00407620 mac 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
    bool SwapMaleForFemaleFrom(Abode* other);
    // win1.41 004076c0 mac 105a17d0 Abode::GetVillagerHealthTotal(void)
    float GetVillagerHealthTotal();
};

#endif /* BW1_DECOMP_ABODE_INCLUDED_H */
