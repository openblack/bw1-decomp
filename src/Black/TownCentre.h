#ifndef BW1_DECOMP_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GAbodeInfo;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DObject;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PSysInterface;
class PhysicsObject;
class PlannedMultiMapFixed;
class TotemStatue;
class Town;
class TownCentreSpellIcon;
class Villager;

class TownCentre: public Abode
{
public:
    LH3DObject* game_object; /* 0xc4 */
    PSysInterface* psys;
    TotemStatue* totem_statue;
    TownCentreSpellIcon* icons[0x6]; /* 0xd0 */

    // Override methods

    // win1.41 0055dbb0 mac 1055ba70 TownCentre::_dt(void)
    virtual ~TownCentre();
    // win1.41 00743b40 mac 1055b8b0 TownCentre::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055dba0 mac 1055bf20 TownCentre::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00744880 mac 10559dc0 TownCentre::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00744830 mac 10559e60 TownCentre::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055db90 mac 1055bee0 TownCentre::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007448c0 mac 10559d40 TownCentre::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 007449e0 mac inlined TownCentre::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 0055db60 mac 1055be20 TownCentre::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // win1.41 0055db70 mac 1055be60 TownCentre::IsTownCentre(void)
    virtual uint32_t IsTownCentre();
    // win1.41 0055db40 mac 1055bd90 TownCentre::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 0055db50 mac 1055bde0 TownCentre::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // win1.41 007445d0 mac 10559f30 TownCentre::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // win1.41 00744320 mac 1055a570 TownCentre::IncreaseLife(float)
    virtual void IncreaseLife(float param_1);
    // win1.41 00743df0 mac 10070780 TownCentre::Process(void)
    virtual uint32_t Process();
    // win1.41 00516450 mac 1001e8b0 TownCentre::Draw(void)
    virtual void Draw();
    // win1.41 007448e0 mac 10559c20 TownCentre::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 00743cf0 mac 1055b3c0 TownCentre::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 0055db20 mac 1055bd00 TownCentre::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 0055db10 mac 1055bcb0 TownCentre::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00743bc0 mac 1055b860 TownCentre::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00744380 mac 1055a500 TownCentre::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00744140 mac 1055a800 TownCentre::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00744940 mac inlined TownCentre::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // win1.41 007443a0 mac 1055a470 TownCentre::AddToPlayer(void)
    virtual void AddToPlayer();
    // win1.41 007443c0 mac 1055a370 TownCentre::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // win1.41 00743be0 mac 1055b650 TownCentre::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 00743e80 mac 1055b020 TownCentre::MakeFunctional(void)
    virtual void MakeFunctional();
    // win1.41 00744a00 mac 105599a0 TownCentre::StopBeingFunctional(GPlayer *)
    virtual void StopBeingFunctional(GPlayer* param_1);
    // win1.41 0055db30 mac 1055bd40 TownCentre::CausesTownEmergencyIfDamaged(void)
    virtual bool CausesTownEmergencyIfDamaged();
    // win1.41 0055db80 mac 1055bea0 TownCentre::CanBeHiddenIn(void)
    virtual bool CanBeHiddenIn();

    // Static methods

    // win1.41 00743c90 mac 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    static TownCentre* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7);
    // win1.41 007447f0 mac 1006eae0 TownCentre::DrawAll(void)
    static void DrawAll();

    // Constructors

    // win1.41 00743a60 mac 1055bb20 TownCentre::TownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    TownCentre(const MapCoords* coords, const GAbodeInfo* info, Town* town, float param_4, float param_5, float param_6, int param_7);

    // Non-virtual methods

    // win1.41 0069bc10 mac 104274c0 TownCentre::CreatePSys(void)
    void CreatePSys();
    // win1.41 0069bcc0 mac 1002d390 TownCentre::ProcessPSys(void)
    void ProcessPSys();
    // win1.41 0069bd60 mac 10066090 TownCentre::DrawPSys(void)
    void DrawPSys();
    // win1.41 00743da0 mac 1055b260 TownCentre::CreateTotemIfNecessary(void)
    bool CreateTotemIfNecessary();
    // win1.41 00743f20 mac 1055af50 TownCentre::GetTotemPos(void)
    MapCoords* GetTotemPos(MapCoords* coords);
    // win1.41 00743fa0 mac 1055ae80 TownCentre::FindSpellIcon(SPELL_SEED_TYPE)
    TownCentreSpellIcon* FindSpellIcon(SPELL_SEED_TYPE type);
    // win1.41 00744010 mac 1055ad20 TownCentre::AddPowerUp(SPELL_SEED_TYPE, POWER_UP_TYPE)
    void AddPowerUp(SPELL_SEED_TYPE seed_type, POWER_UP_TYPE power_up_type);
    // win1.41 00744050 mac 1055aac0 TownCentre::AddSpell(SPELL_SEED_TYPE)
    bool AddSpell(SPELL_SEED_TYPE seed_type);
};

#endif /* BW1_DECOMP_TOWN_CENTRE_INCLUDED_H */
