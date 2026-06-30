#ifndef BW1_DECOMP_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

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

    // BW1W120 0055dbb0 BW1M100 1055ba70 TownCentre::_dt(void)
    virtual ~TownCentre();
    // BW1W120 00743b40 BW1M100 1055b8b0 TownCentre::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055dba0 BW1M100 1055bf20 TownCentre::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00744880 BW1M100 10559dc0 TownCentre::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00744830 BW1M100 10559e60 TownCentre::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055db90 BW1M100 1055bee0 TownCentre::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 007448c0 BW1M100 10559d40 TownCentre::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 007449e0 BW1M100 inlined TownCentre::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // BW1W120 0055db60 BW1M100 1055be20 TownCentre::IsCastShadowAtNight(void)
    virtual uint32_t IsCastShadowAtNight();
    // BW1W120 0055db70 BW1M100 1055be60 TownCentre::IsTownCentre(void)
    virtual uint32_t IsTownCentre();
    // BW1W120 0055db40 BW1M100 1055bd90 TownCentre::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // BW1W120 0055db50 BW1M100 1055bde0 TownCentre::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // BW1W120 007445d0 BW1M100 10559f30 TownCentre::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // BW1W120 00744320 BW1M100 1055a570 TownCentre::IncreaseLife(float)
    virtual void IncreaseLife(float param_1);
    // BW1W120 00743df0 BW1M100 10070780 TownCentre::Process(void)
    virtual uint32_t Process();
    // BW1W120 00516450 BW1M100 1001e8b0 TownCentre::Draw(void)
    virtual void Draw();
    // BW1W120 007448e0 BW1M100 10559c20 TownCentre::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // BW1W120 00743cf0 BW1M100 1055b3c0 TownCentre::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 0055db20 BW1M100 1055bd00 TownCentre::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 0055db10 BW1M100 1055bcb0 TownCentre::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // BW1W120 00743bc0 BW1M100 1055b860 TownCentre::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 00744380 BW1M100 1055a500 TownCentre::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 00744140 BW1M100 1055a800 TownCentre::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 00744940 BW1M100 inlined TownCentre::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // BW1W120 007443a0 BW1M100 1055a470 TownCentre::AddToPlayer(void)
    virtual void AddToPlayer();
    // BW1W120 007443c0 BW1M100 1055a370 TownCentre::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
    // BW1W120 00743be0 BW1M100 1055b650 TownCentre::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // BW1W120 00743e80 BW1M100 1055b020 TownCentre::MakeFunctional(void)
    virtual void MakeFunctional();
    // BW1W120 00744a00 BW1M100 105599a0 TownCentre::StopBeingFunctional(GPlayer *)
    virtual void StopBeingFunctional(GPlayer* param_1);
    // BW1W120 0055db30 BW1M100 1055bd40 TownCentre::CausesTownEmergencyIfDamaged(void)
    virtual bool32_t CausesTownEmergencyIfDamaged();
    // BW1W120 0055db80 BW1M100 1055bea0 TownCentre::CanBeHiddenIn(void)
    virtual bool CanBeHiddenIn();

    // Static methods

    // BW1W120 00743c90 BW1M100 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    static TownCentre* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);
    // BW1W120 007447f0 BW1M100 1006eae0 TownCentre::DrawAll(void)
    static void DrawAll();

    // Constructors

    // BW1W120 00743a60 BW1M100 1055bb20 TownCentre::TownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    TownCentre(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Static methods

    // BW1W120 00743c90 BW1M100 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    static TownCentre* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual methods

    // BW1W120 0069bc10 BW1M100 104274c0 TownCentre::CreatePSys(void)
    void CreatePSys();
    // BW1W120 0069bcc0 BW1M100 1002d390 TownCentre::ProcessPSys(void)
    void ProcessPSys();
    // BW1W120 0069bd60 BW1M100 10066090 TownCentre::DrawPSys(void)
    void DrawPSys();
    // BW1W120 00743da0 BW1M100 1055b260 TownCentre::CreateTotemIfNecessary(void)
    bool CreateTotemIfNecessary();
    // BW1W120 00743f20 BW1M100 1055af50 TownCentre::GetTotemPos(void)
    MapCoords* GetTotemPos(MapCoords* coords);
    // BW1W120 00743fa0 BW1M100 1055ae80 TownCentre::FindSpellIcon(SPELL_SEED_TYPE)
    TownCentreSpellIcon* FindSpellIcon(SPELL_SEED_TYPE type);
    // BW1W120 00744010 BW1M100 1055ad20 TownCentre::AddPowerUp(SPELL_SEED_TYPE, POWER_UP_TYPE)
    void AddPowerUp(SPELL_SEED_TYPE seed_type, POWER_UP_TYPE power_up_type);
    // BW1W120 00744050 BW1M100 1055aac0 TownCentre::AddSpell(SPELL_SEED_TYPE)
    bool AddSpell(SPELL_SEED_TYPE seed_type);
};

#endif /* BW1_DECOMP_TOWN_CENTRE_INCLUDED_H */
