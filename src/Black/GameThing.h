#ifndef BW1_DECOMP_GAME_THING_INCLUDED_H
#define BW1_DECOMP_GAME_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <re_common.h> /* For bool32_t */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

class Abode;
class Creature;
class GFootpath;
class GFootpathLink;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class Living;
struct MapCoords;
class MultiMapFixed;
struct PSysProcessInfo;
class Spell;
class SpellIcon;
class SpellSeed;
class Town;
class Tree;
class Villager;

class GameThing: public Base
{
public:
    uint16_t field_0x8;
    uint8_t field_0xa;
    uint16_t field_0xc;
    GameThing* next; /* 0x10 */

    // Override methods

    // win1.41 0056fb70 mac 10380a20 GameThing::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00570130 mac 10364e60 GameThing::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00570150 mac 10359980 GameThing::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // win1.41 004017f0 mac 1010bb00 GameThing::CalculateInfluence(MapCoords const &)
    virtual float CalculateInfluence(const MapCoords* param_1);
    // win1.41 00401800 mac 10494700 GameThing::RemoveDance(void)
    virtual void RemoveDance();
    // win1.41 00401810 mac 100512d0 GameThing::IsAvailable(void)
    virtual bool IsAvailable();
    // win1.41 00401820 mac 10494880 GameThing::IsCreature(Creature *)
    virtual bool IsCreature(Creature* param_1);
    // win1.41 00401830 mac 1002c400 GameThing::IsCreature(void)
    virtual bool IsCreature();
    // win1.41 00401840 mac 104948c0 GameThing::IsCreatureNotTooNear(Creature *)
    virtual bool IsCreatureNotTooNear(Creature* param_1);
    // win1.41 00405130 mac 10169a70 GameThing::GetDrawImportance(void)
    virtual float GetDrawImportance();
    // win1.41 00401850 mac 10428ff0 GameThing::GetMaxAlignmentChangePerGameTurn(void)
    virtual float GetMaxAlignmentChangePerGameTurn();
    // win1.41 00401860 mac 10425a40 GameThing::GetComputerSeen(void)
    virtual bool GetComputerSeen();
    // win1.41 0056ff10 mac 103c22d0 GameThing::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00401870 mac 103f1450 GameThing::GetVillagerActivityDesire(Villager *)
    virtual float GetVillagerActivityDesire(Villager* param_1);
    // win1.41 00401880 mac 10389ac0 GameThing::SetVillagerActivity(Villager *)
    virtual uint32_t SetVillagerActivity(Villager* param_1);
    // win1.41 00401890 mac 1037f2e0 GameThing::UpdateVillagerActivityEffect(Villager *)
    virtual uint32_t UpdateVillagerActivityEffect(Villager* param_1);
    // win1.41 0056fed0 mac 10160960 GameThing::MaintainSpell(Spell *, float)
    virtual void MaintainSpell(uint32_t param_1, float param_2);
    // win1.41 0056fee0 mac 100fc510 GameThing::UpdateSpellInfo(Spell *, PSysProcessInfo *)
    virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
    // win1.41 00405140 mac 104e9450 GameThing::GetRadius(void)
    virtual float GetRadius();
    // win1.41 00405150 mac 1034f3d0 GameThing::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 004018a0 mac 101664f0 GameThing::GetPlayerWhoLastPickedMeUp(void)
    virtual GPlayer* GetPlayerWhoLastPickedMeUp();
    // win1.41 004018b0 mac 10381da0 GameThing::GetPlayerWhoLastDroppedMe(void)
    virtual GPlayer* GetPlayerWhoLastDroppedMe();
    // win1.41 00405160 mac 103c36e0 GameThing::IsFootpathLink(void)
    virtual bool32_t IsFootpathLink();
    // win1.41 00405170 mac 1056c160 GameThing::GetFootpathLink(void)
    virtual GFootpathLink* GetFootpathLink();
    // win1.41 004018c0 mac 101063a0 GameThing::AddFootpathLink(GFootpath *)
    virtual uint32_t AddFootpathLink(GFootpath* param_1);
    // win1.41 00405180 mac 104788b0 GameThing::GetNearestPathTo(MapCoords const &, float, int)
    virtual uint32_t GetNearestPathTo(const MapCoords* param_1, float param_2, int param_3);
    // win1.41 00570330 mac 100e4740 GameThing::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
    virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
    // win1.41 00405190 mac 103dffc0 GameThing::AddFootpath(GFootpath *)
    virtual uint32_t AddFootpath(GFootpath* param_1);
    // win1.41 004051a0 mac 103dff70 GameThing::RemoveFootpath(GFootpath *)
    virtual uint32_t RemoveFootpath(GFootpath* param_1);
    // win1.41 005705f0 mac 10560530 GameThing::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
    virtual uint32_t JustAddResource(RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
    // win1.41 00570600 mac 1054a9d0 GameThing::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustRemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // win1.41 00570610 mac 101669d0 GameThing::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
    virtual uint32_t JustGetResource(RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
    // win1.41 004051b0 mac 1056c950 GameThing::GetResource(RESOURCE_TYPE)
    virtual uint32_t GetResource(RESOURCE_TYPE type);
    // win1.41 004051c0 mac 1056c9a0 GameThing::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* coords, int param_6);
    // win1.41 004051d0 mac 104f8b20 GameThing::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 004018d0 mac 103dd790 GameThing::CastCreature(void)
    virtual Creature* CastCreature();
    // win1.41 004018e0 mac 103dd5d0 GameThing::CastPlayer(void)
    virtual GPlayer* CastPlayer();
    // win1.41 004018f0 mac 104fb790 GameThing::CastOneOffSpellSeed(void)
    virtual SpellSeed* CastOneOffSpellSeed();
    // win1.41 004051e0 mac 1017ebc0 GameThing::CastAbode(void)
    virtual Abode* CastAbode();
    // win1.41 004051f0 mac 10199740 GameThing::CastMultiMapFixed(void)
    virtual MultiMapFixed* CastMultiMapFixed();
    // win1.41 00401900 mac 100a0a70 GameThing::CastSpellIcon(void)
    virtual SpellIcon* CastSpellIcon();
    // win1.41 00401910 mac 101c8320 GameThing::CastTree(void)
    virtual Tree* CastTree();
    // win1.41 00401920 mac 1019e2b0 GameThing::IsDeletedOnNewMap(void)
    virtual bool32_t IsDeletedOnNewMap();
    // win1.41 00405200 mac 100ac9a0 GameThing::GetNumberOfInstanceForGlobalList(void)
    virtual uint16_t GetNumberOfInstanceForGlobalList();
    // win1.41 00405210 mac 1019aa00 GameThing::GetTownArtifactValue(void)
    virtual float GetTownArtifactValue();
    // win1.41 00405220 mac 10199de0 GameThing::CanBecomeArtifact(void)
    virtual bool CanBecomeArtifact();
    // win1.41 00405230 mac 10199e20 GameThing::DrawInHand(GInterfaceStatus *)
    virtual void DrawInHand(GInterfaceStatus* param_1);
    // win1.41 00405240 mac 10067860 GameThing::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 00425da0 mac 1054ef00 GameThing::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0071bc20 mac 1050ff50 GameThing::GetSampleForAttack(void)
    virtual uint32_t GetSampleForAttack();
    // win1.41 0071bdd0 mac 1050fc90 GameThing::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // win1.41 00401930 mac 1017a550 GameThing::GetShowNeedsPos(unsigned long, MapCoords *)
    virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
    // win1.41 0056fcf0 mac 103807f0 GameThing::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 0056fbe0 mac 101724b0 GameThing::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 0056fd90 mac 101361c0 GameThing::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0056fda0 mac 100bc180 GameThing::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* file);
    // win1.41 00405250 mac 1057b140 GameThing::ResolveLoad(void)
    virtual void ResolveLoad();

    // Static methods

    // win1.41 0056fb10 mac 1008e550 GameThing::ProcessDeadList(int)
    static void ProcessDeadList(int param_1);

    // Constructors

    // win1.41 0056fa10 mac 10088880 GameThing::GameThing(void)
    GameThing();

    // Non-virtual Destructors

    // win1.41 0056fa50 mac 10086e30 GameThing::~GameThing(void)
    ~GameThing();

    // Non-virtual methods

    // win1.41 0056faa0 mac 10492500 GameThing::ProcessDead(int)
    void ProcessDead(int param_1);
    // win1.41 0056fef0 mac 103c2300 GameThing::CheckAndSetSaved(void)
    bool CheckAndSetSaved();
};

#endif /* BW1_DECOMP_GAME_THING_INCLUDED_H */
