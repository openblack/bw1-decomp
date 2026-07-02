#ifndef BW1_DECOMP_TOTEM_STATUE_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */
#include <re_common.h> /* For bool32_t */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GPlayer;
class GTotemStatueInfo;
class Game3DObject;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;
class Town;
class TownCentre;
class WorshipSite;

class TotemStatue: public MultiMapFixed
{
public:
    TownCentre* town_centre; /* 0x7c */
    float worship_speed; /* 0x80 */
    uint32_t field_0x84;
    float worship_speed_2;
    Game3DObject* game_3d_object;
    float field_0x90;
    float field_0x94;
    uint32_t field_0x98;
    Zoomer zoomer;
    uint32_t field_0xcc;
    uint32_t field_0xd0;
    uint32_t field_0xd4;

    // Override methods

    // BW1W120 00561180 BW1M100 105457d0 TotemStatue::_dt(void)
    virtual ~TotemStatue();
    // BW1W120 00737c20 BW1M100 10545750 TotemStatue::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00738490 BW1M100 10544a00 TotemStatue::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00738480 BW1M100 10544ac0 TotemStatue::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 00561170 BW1M100 10543f30 TotemStatue::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00738800 BW1M100 10544120 TotemStatue::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00738700 BW1M100 105442e0 TotemStatue::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561160 BW1M100 10543ef0 TotemStatue::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00738940 BW1M100 105440b0 TotemStatue::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 005610f0 BW1M100 10543cd0 TotemStatue::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 00561150 BW1M100 10543eb0 TotemStatue::IsTotemStatue(void)
    virtual uint32_t IsTotemStatue();
    // BW1W120 00561110 BW1M100 10543d70 TotemStatue::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // BW1W120 00561100 BW1M100 10543d20 TotemStatue::CanBeImpressedByCreature(Creature *)
    virtual uint32_t CanBeImpressedByCreature(Creature* param_1);
    // BW1W120 004e3e70 BW1M100 105e6740 TotemStatue::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
    virtual uint32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1);
    // BW1W120 007384d0 BW1M100 10544960 TotemStatue::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // BW1W120 004e4110 BW1M100 105e5eb0 TotemStatue::CanBeStolenByCreature(Creature *)
    virtual uint32_t CanBeStolenByCreature(Creature* param_1);
    // BW1W120 004e4170 BW1M100 105e5d00 TotemStatue::IsTotemWithStealableSpell(Creature *)
    virtual uint32_t IsTotemWithStealableSpell(Creature* param_1);
    // BW1W120 00738eb0 BW1M100 10543f70 TotemStatue::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 00561120 BW1M100 10543dc0 TotemStatue::HandShouldFeelWithMeshIntersect(void)
    virtual uint32_t HandShouldFeelWithMeshIntersect();
    // BW1W120 00737c90 BW1M100 10545510 TotemStatue::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // BW1W120 00737c60 BW1M100 105455d0 TotemStatue::IncreaseLife(float)
    virtual void IncreaseLife(float param_1);
    // BW1W120 00737f40 BW1M100 10077f00 TotemStatue::Process(void)
    virtual uint32_t Process();
    // BW1W120 005610e0 BW1M100 10543c30 TotemStatue::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00738960 BW1M100 10024bb0 TotemStatue::Draw(void)
    virtual void Draw();
    // BW1W120 00737d60 BW1M100 10544f40 TotemStatue::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 00738500 BW1M100 105447e0 TotemStatue::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // BW1W120 00738590 BW1M100 10544700 TotemStatue::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 007385e0 BW1M100 10544640 TotemStatue::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // BW1W120 007386a0 BW1M100 10544470 TotemStatue::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // BW1W120 00738630 BW1M100 10544580 TotemStatue::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // BW1W120 00738690 BW1M100 10544520 TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 00561130 BW1M100 10543e10 TotemStatue::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 00737d40 BW1M100 105451c0 TotemStatue::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 00737d50 BW1M100 10545170 TotemStatue::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 00561140 BW1M100 10543e60 TotemStatue::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 00561090 BW1M100 10543660 TotemStatue::IsRepaired(void)
    virtual bool32_t IsRepaired();
    // BW1W120 005610b0 BW1M100 1001a9a0 TotemStatue::IsBuilt(void)
    virtual bool32_t IsBuilt();
    // BW1W120 00738130 BW1M100 10544dd0 TotemStatue::AddToPlayer(void)
    virtual void AddToPlayer();

    // Static methods

    // BW1W120 00737cc0 BW1M100 10545210 TotemStatue::Create(TownCentre *)
    static TotemStatue* Create(TownCentre* this);

    // Constructors

    // BW1W120 00737b20 BW1M100 10545880 TotemStatue::TotemStatue(TownCentre *, GTotemStatueInfo const *)
    TotemStatue(TownCentre* tc, GTotemStatueInfo* info);

    // Non-virtual methods

    // BW1W120 00738260 BW1M100 10544c70 TotemStatue::GetWorshipSpeed(void)
    float GetWorshipSpeed();
    // BW1W120 00738270 BW1M100 10544b90 TotemStatue::SetWorshipPercentage(float)
    void SetWorshipPercentage(float percentage);
};

#endif /* BW1_DECOMP_TOTEM_STATUE_INCLUDED_H */
