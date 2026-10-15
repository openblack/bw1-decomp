#ifndef BW1_DECOMP_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum ABODE_TYPE, enum RESOURCE_TYPE, enum SPELL_SEED_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>        /* For LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>          /* For LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>          /* For LHListNode */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */

#include "CitadelPart.h"      /* For struct CitadelPart */
#include "LHPTR.h"            /* For LHPTR */
#include "WorshipSpellIcon.h" /* For struct WorshipSpellIcon */

// Forward Declares

class Base;
class Citadel;
class Creature;
class Dance;
class Fixed;
class GPlayer;
class GInterfaceStatus;
class GSpellSeedInfo;
class GTribeInfo;
class GWorshipSiteInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct LHPoint;
struct MapCoords;
class MultiMapFixed;
class Object;
class Pot;
class PotStructure;
class PSysInterface;
class ShowNeeds;
class SortVillagerOnNeedToGoHome;
class Town;
class TownArtifact;
class Villager;
class WorshipSiteUpgrade;
class WorshipTotem;

enum WORSHIP_SITE_SPECIAL_POS
{
	WORSHIP_SITE_SPECIAL_POS_REST = 7,
	WORSHIP_SITE_SPECIAL_POS_TOTEM = 8,
	WORSHIP_SITE_SPECIAL_POS_GATE = 9,
	WORSHIP_SITE_SPECIAL_POS_FOOD_DROP = 10,
	WORSHIP_SITE_SPECIAL_POS_FIRST_SPELL_ICON = 10,
	WORSHIP_SITE_SPECIAL_POS_LAST_SPELL_ICON = 15,
};

#define WORSHIP_SITE_INITIAL_WORSHIP_SPEED               0.5f
#define WORSHIP_SITE_CHEAT_SPELL_ICONS                   6
#define WORSHIP_SITE_SCRIPT_SCALE                        1000.0f
#define WORSHIP_SITE_DESIRE_EPSILON                      0.0001f
#define WORSHIP_SITE_HIDING_VILLAGERS_FOR_FULL_INDICATOR 100.0f
#define WORSHIP_SITE_WORSHIPPERS_PER_SPELL_ICON          4.0f
#define WORSHIP_SITE_DESIRE_FOR_WORSHIPPERS_EXPONENT     4
#define WORSHIP_SITE_POT_RADIUS_MULTIPLIER               1.2f
#define WORSHIP_SITE_SPELL_ICON_RING_SPACING             15.0f
#define WORSHIP_SITE_SPELL_ICON_MAX_EXTRA_RADIUS         30.0f
#define WORSHIP_SITE_MANA_PATH_MAX_ALPHA                 255.0f
#define WORSHIP_SITE_SPELL_ICON_BUILD_RANDOM_RANGE       100
#define WORSHIP_SITE_SPELL_ICON_BUILD_TIE_CHANCE         50
#define WORSHIP_SITE_FOOTPATH_MAX_DISTANCE               0.001f

class WorshipSite : public CitadelPart
{
public:
	LHFastPointer<const GTribeInfo>                 tribe_info; /* 0x8c */
	LHFastPointer<ShowNeeds>                        show_needs;
	LHListNode<WorshipSite>                         next;
	LHListHead<WorshipSiteUpgrade>                  Upgrades;
	LHPTR<Dance>                                    dance; /* 0xa0 */
	LHLinkedList<Town*>                             Towns;
	LHLinkedList<TownArtifact*>                     Artifacts;
	Pot*                                            FoodPot; /* 0xb4 */
	PSysInterface*                                  ManaPathPSys;
	uint32_t                                        field_0xbc;
	uint32_t                                        field_0xc0;
	uint8_t                                         field_0xc4;
	uint32_t                                        NumWorshippers; /* 0xc8 */
	uint32_t                                        field_0xcc;
	uint32_t                                        CheatSpellSeed; /* 0xd0 */
	LHLinkedList<Villager*>                         Worshippers;
	LHPTR<WorshipTotem>                             totem; /* 0xdc */
	LHListHead<WorshipSpellIcon>                    IconList;
	uint32_t                                        ResourcesOnTheWay[RESOURCE_TYPE_LAST]; /* 0xe8 */
	float                                           ChantStore;                            /* 0xf0 */
	float                                           TotalSacrificeValue;
	float                                           TotalChantsAvailable;
	float                                           ChantsUsed;
	float                                           ChantsRequested; /* 0x100 */
	float                                           ChantDamage;
	bool32_t                                        InfiniteChants;
	bool32_t                                        FreeMaintenance;
	uint8_t                                         Slot; /* 0x110 */
	bool                                            IsSupplyingChants;
	float                                           Overloaded; /* 0x114 */
	float                                           OverloadPulsePhase;
	float                                           OverloadPulse;
	LHOrderedLinkedList<SortVillagerOnNeedToGoHome> VillagersRequestingToGoHome; /* 0x120 */

	// Override methods

	// BW1W120 0077dc50 BW1M119 015b3600
	virtual void BuildBy(float amount);
	// BW1W120 0077bff0 BW1M119 015b7b50
	virtual PlannedMultiMapFixed* ConvertToPlanned();
	// BW1W120 0077e490 BW1M119 015b21b0
	virtual void CreateCollideData();
	// BW1W120 0077aa30 BW1M119 015ba5a0
	virtual ~WorshipSite();
	// BW1W120 0077aa60 BW1M119 015ba240
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0055dc50 BW1M119 015bac90
	virtual void RemoveDance() { dance = NULL; }
	// BW1W120 0077bd80 BW1M119 015b8190
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0077c5f0 BW1M119 015b6cf0
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0077c670 BW1M119 015b6c10
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0055dce0 BW1M119 015baf10
	virtual char* GetDebugText() { return "WorshipSite:"; }
	// BW1W120 0077cd70 BW1M119 015b5ed0
	virtual uint32_t GetShowNeedsPos(uint32_t index, MapCoords* pos);
	// BW1W120 0077d700 BW1M119 015b3ab0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0077d2f0 BW1M119 015b4810
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055dcd0 BW1M119 015baed0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_WORSHIP_SITE; }
	// BW1W120 0077daf0 BW1M119 015b3a60
	virtual void ResolveLoad();
	// BW1W120 0077ced0 BW1M119 015b5af0
	virtual MapCoords GetArrivePos();
	// BW1W120 0055dc30 BW1M119 015bac30
	virtual MapCoords GetInteractPos() { return GetFoodDrop(); }
	// BW1W120 0055dc80 BW1M119 015bad60
	virtual bool32_t IsSuitableForCreatureAction() { return false; }
	// BW1W120 004e4b60 BW1M119 015ebca0
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 0055dc90 BW1M119 015badf0
	virtual bool32_t IsWorshipSite(Creature* creature) { return true; }
	// BW1W120 0055dca0 BW1M119 015badb0
	virtual bool32_t IsWorshipSite() { return true; }
	// BW1W120 0055dcb0 BW1M119 015bae40
	virtual WorshipSite* GetWorshipSite() { return this; }
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
	// BW1W120 0077dde0 BW1M119 015b32a0
	virtual void GetDefaultFireCentrePos(MapCoords* pos);
	// BW1W120 0077de10 BW1M119 015b3250
	virtual float GetDefaultFireRadius();
	// BW1W120 0077b1d0 BW1M119 015b93b0
	virtual uint32_t Process();
	// BW1W120 0055dcc0 BW1M119 015bae80
	virtual MESH_LIST GetMesh() const;
	// BW1W120 005193d0 BW1M119 010cb020
	virtual void Draw();
	// BW1W120 0077de70 BW1M119 015b30a0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 0077b9d0 BW1M119 015b8610
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0077dec0 BW1M119 015b3000
	virtual bool32_t IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0077e7b0 BW1M119 015b2000
	virtual bool32_t DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status);
	// BW1W120 0077e480 BW1M119 015b25a0
	virtual float GetRadiusMultiplierForApplyingPotToPos();
	// BW1W120 0077def0 BW1M119 015b2f00
	virtual bool32_t DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status);
	// BW1W120 0077de20 BW1M119 015b31a0
	virtual float GetDistanceFromObject(Object* object);
	// BW1W120 0055dc60 BW1M119 015bacd0
	virtual bool InteractsWithPhysicsObjects() { return false; }
	// BW1W120 0077ae30 BW1M119 015b9c70
	virtual bool32_t GetInspectObjectPos(Villager* villager, MapCoords* pos);
	// BW1W120 0077cc90 BW1M119 015b5f40
	virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
	// BW1W120 0077d000 BW1M119 015b57e0
	virtual uint32_t GetObjectCollide();
	// BW1W120 0077c120 BW1M119 015b7590
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 0077dc90 BW1M119 015b3460
	virtual LHPoint GetNearestEdgeOfObject(Object* object);
	// BW1W120 0077e460 BW1M119 015b2600
	virtual MapCoords GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type);
	// BW1W120 0077bdd0 BW1M119 015b8010
	virtual bool32_t IsBuilt();
	// BW1W120 0077ac10 BW1M119 015ba190
	virtual bool32_t Built();
	// BW1W120 0055dc70 BW1M119 015bad20
	virtual ABODE_TYPE GetAbodeType() { return ABODE_TYPE_CITADEL; }
	// BW1W120 0077c5d0 BW1M119 015b6e20
	virtual MapCoords GetResourcePos(RESOURCE_TYPE type, long index);
	// BW1W120 0077c6d0 BW1M119 015b6b00
	virtual MapCoords GetResourceNearestEdge(RESOURCE_TYPE type, Object* object, int index);
	// BW1W120 0077ae10 BW1M119 015b9d00
	virtual void RemovePotFromStructure(PotStructure* pot);

	// BW1W120 0077be10 BW1M119 015b7ef0
	virtual MultiMapFixed* GetBuildingObjectForSpellIcon();

	// Static methods

	// BW1W120 0077ac50 BW1M119 015b9eb0
	static WorshipSite* Create(const MapCoords& coords, const GWorshipSiteInfo* info, Citadel* citadel,
	                           const GTribeInfo* tribe_info, float y_angle, float scale, float percent_built,
	                           bool32_t under_construction);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	WorshipSite() { SetToZero(); }
	// BW1W120 0077a960 BW1M119 015ba770
	WorshipSite(const MapCoords& coords, const GWorshipSiteInfo* info, Citadel* citadel, unsigned long slot,
	            const GTribeInfo* tribe_info, float y_angle, float scale, float percent_built,
	            bool32_t under_construction);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 014f5770
	float GetChantStore() { return ChantStore; }
	// BW1W120 inlined BW1M119 010c6110
	void AddToChantStore(float amount) { ChantStore += amount; }
	// BW1W120 inlined BW1M119 015b7cf0
	const GTribeInfo* GetTribe() { return tribe_info.Get(); }
	// BW1W120 inlined BW1M119 015b7cb0
	const GWorshipSiteInfo* GetInfo() const { return (const GWorshipSiteInfo*)info; }
	// BW1W120 inlined BW1M119 015bedf0
	float GetOverloadedValue() { return Overloaded; }
	// BW1W120 0077ae60 BW1M119 015b9bd0
	void SetToZero();
	// BW1W120 0077aee0 BW1M119 015b9aa0
	void Init(unsigned long slot);
	// BW1W120 0077ad90 BW1M119 015b9d80
	void CreateFoodPot();
	// BW1W120 0077af70 BW1M119 015b99d0
	void AssignTownsToWorshipSite();
	// BW1W120 0077afb0 BW1M119 015b9990
	bool GetIsSupplyingChants();
	// BW1W120 0077afc0 BW1M119 015b9860
	MapCoords GetSpellIconPosFromSlot(unsigned long slot, float extra_radius);
	// BW1W120 0077b060 BW1M119 015b97f0
	void ClearAllSpellIconsChantStores();
	// BW1W120 0077b080 BW1M119 015b9650
	MapCoords GetSpellIconPos(int16_t& slot);
	// BW1W120 0077b170 BW1M119 015b95a0
	WorshipSpellIcon* GetSpellIconFromSeedType(SPELL_SEED_TYPE type);
	// BW1W120 0077b1b0 BW1M119 015b9510
	WorshipSpellIcon* GetSpellIconFromMagicType(MAGIC_TYPE type);
	// BW1W120 0077b2c0 BW1M119 015b9210
	void CreateManaPathSprite(const MapCoords& coords, float speed, GameThingWithPos* target);
	// BW1W120 0077b3b0 BW1M119 015b9090
	void DrawSpellIcons();
	// BW1W120 0077b4b0 BW1M119 015b9030
	bool IsWorshipSiteOverloaded();
	// BW1W120 0077b4d0 BW1M119 015b8db0
	void ProcessSpellIcons();
	// BW1W120 0077b6a0 BW1M119 015b8b30
	void ProcessChantsAvailable();
	// BW1W120 0077b8a0 BW1M119 015b8ab0
	void UpdateGraphicsWithPULevels();
	// BW1W120 0077b8d0 BW1M119 015b89d0
	void SetWorshipSpeed(float speed);
	// BW1W120 0077b920 BW1M119 015b8910
	int CalculateFoodNeededFromTown();
	// BW1W120 0077b960 BW1M119 015b88a0
	unsigned long GetNumberVillagersWorshipping();
	// BW1W120 0077bbb0 BW1M119 015b8510
	float UseChants(float amount);
	// BW1W120 0077bc50 BW1M119 015b84a0
	float MaintainSpell(float amount);
	// BW1W120 0077bc70 BW1M119 015b82a0
	void Cheat(int add_spell_icons);
	// BW1W120 0077bd60 BW1M119 015b8220
	float GetAngleFromCitadel();
	// BW1W120 0077bdb0 BW1M119 015b8130
	uint32_t GetFood();
	// BW1W120 0077c100 BW1M119 015b7980
	float GetWorshipSpeed();
	// BW1W120 0077c2b0 BW1M119 015b74d0
	WorshipSpellIcon* GetSpellIconFromSpellSeedInfo(const GSpellSeedInfo* seed_info);
	// BW1W120 0077c2e0 BW1M119 015b7490
	TRIBE_TYPE GetTribeType() const;
	// BW1W120 0077c430 BW1M119 015b7150
	void AddSpellIcon(WorshipSpellIcon* icon);
	// BW1W120 0077c450 BW1M119 015b7020
	void RemoveSpellIcon(WorshipSpellIcon* icon);
	// BW1W120 0077c4d0 BW1M119 015b6fd0
	void RemoveFromFoodOnTheWay(unsigned long amount);
	// BW1W120 0077c550 BW1M119 015b6ea0
	MapCoords GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle);
	// BW1W120 0077c800 BW1M119 015b6820
	void AddTown(Town* town);
	// BW1W120 0077c910 BW1M119 015b6770
	void AddTownSpells(Town* town);
	// BW1W120 0077c950 BW1M119 015b6630
	void RemoveTown(Town* town);
	// BW1W120 0077c9e0 BW1M119 015b64c0
	void AddSpellIconIfNecessary(SPELL_SEED_TYPE type);
	// BW1W120 0077caa0 BW1M119 015b63b0
	void RemoveSpellIconIfNecessary(SPELL_SEED_TYPE type, int);
	// BW1W120 0077cb20 BW1M119 015b6260
	float GetChantsAvailableForVirtualInfluence();
	// BW1W120 0077cbc0 BW1M119 015b61a0
	float GetChantsAvailableForCharging(bool keep_reserve);
	// BW1W120 0077cc10 BW1M119 015b6140
	float GetChantsAvailable();
	// BW1W120 0077cc30 BW1M119 015b60e0
	float GetTotalChantsAvailable();
	// BW1W120 0077cc50 BW1M119 015b6070
	float UseCreateChants(float amount);
	// BW1W120 0077cc70 BW1M119 inlined
	Pot* GetFoodPot();
	// BW1W120 0077cd90 BW1M119 015b5e60
	void GetDancePos(MapCoords* pos);
	// BW1W120 0077cdb0 BW1M119 015b5d10
	bool32_t GetFoodPosAndYAngle(MapCoords* pos, float* y_angle);
	// BW1W120 0077ce60 BW1M119 015b5cb0
	void GetFoodPos(MapCoords* pos);
	// BW1W120 0077ce70 BW1M119 015b5c40
	void GetRestPos(MapCoords* pos);
	// BW1W120 0077ceb0 BW1M119 015b5bd0
	bool32_t GetGatePos(MapCoords* pos);
	// BW1W120 0077cf30 BW1M119 015b5a20
	MapCoords GetTotemPos();
	// BW1W120 0077cf70 BW1M119 015b5950
	MapCoords GetFoodDrop();
	// BW1W120 0077cfb0 BW1M119 015b5890
	unsigned long GetNumDancers();
	// BW1W120 0077d040 BW1M119 015b5670
	void AddVillagerToWorshipCount(Villager* villager);
	// BW1W120 0077d0a0 BW1M119 015b5540
	void RemoveVillagerFromWorshipCount(Villager* villager);
	// BW1W120 0077d110 BW1M119 015b54a0
	bool32_t IsVillagerInWorshipList(Villager* villager);
	// BW1W120 0077db00 BW1M119 015b38b0
	void AddArtifact(Fixed* artifact, GPlayer* player);
	// BW1W120 0077dbb0 BW1M119 015b3790
	TownArtifact* RemoveArtifact(Fixed* artifact);
	// BW1W120 0077dc20 BW1M119 015b36f0
	TownArtifact* FindArtifact(Fixed* artifact);
	// BW1W120 0077dd40 BW1M119 015b3370
	MapCoords CalculateCentrePos();
	// BW1W120 0077ddd0 BW1M119 015b3330
	float GetRealRadius();
	// BW1W120 0077e060 BW1M119 015b2e20
	float GetChantsVillagerCanSupply();
	// BW1W120 0077e0a0 BW1M119 015b2dc0
	bool32_t CanIGoHome(Villager* villager);
	// BW1W120 0077e0c0 BW1M119 015b2ab0
	void AddVillagerRequestingToGoHome(Villager* villager);
	// BW1W120 0077e1d0 BW1M119 015b2900
	void RemoveVillagerRequestingToGoHome(Villager* villager);
	// BW1W120 0077e260 BW1M119 015b28b0
	int GetNumVillagersRequestingToGoHome();
	// BW1W120 0077e340 BW1M119 015b2770
	float GetDesireForWorshippers();
	// BW1W120 0077e400 BW1M119 015b2690
	float GetDesireForVillagerAvailableFromTown();
	// BW1W120 0077e780 BW1M119 015b20f0
	float GetChantBatteryMax();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_INCLUDED_H */
