#ifndef BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class SpellSeed;

class OneOffSpellSeed: public MobileObject
{
public:
    uint8_t field_0x68[0x14];

    // Override methods

    // BW1W120 0055d170 BW1M100 10526280 OneOffSpellSeed::_dt(void)
    virtual ~OneOffSpellSeed();
    // BW1W120 0072a420 BW1M100 105278e0 OneOffSpellSeed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055d140 BW1M100 10526350 OneOffSpellSeed::GetComputerSeen(void)
    virtual bool GetComputerSeen();
    // BW1W120 0055d130 BW1M100 10526310 OneOffSpellSeed::CastOneOffSpellSeed(void)
    virtual SpellSeed* CastOneOffSpellSeed();
    // BW1W120 0055d160 BW1M100 105263d0 OneOffSpellSeed::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0072aa20 BW1M100 10526a70 OneOffSpellSeed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0072a930 BW1M100 10526be0 OneOffSpellSeed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055d150 BW1M100 10526390 OneOffSpellSeed::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0072ac50 BW1M100 10526640 OneOffSpellSeed::GetOverwritePickUpToolTip(void)
    virtual uint32_t GetOverwritePickUpToolTip();
    // BW1W120 0072ac80 BW1M100 105265f0 OneOffSpellSeed::GetOverwriteTapToolTip(void)
    virtual uint32_t GetOverwriteTapToolTip();
    // BW1W120 004e48f0 BW1M100 105e4890 OneOffSpellSeed::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // BW1W120 004e4ab0 BW1M100 105e4260 OneOffSpellSeed::IsOneOffSpellBelongingToOtherPlayer(Creature *)
    virtual uint32_t IsOneOffSpellBelongingToOtherPlayer(Creature* param_1);
    // BW1W120 0072ab00 BW1M100 105269e0 OneOffSpellSeed::IsOneOffSpellAggressive(Creature *)
    virtual uint32_t IsOneOffSpellAggressive(Creature* param_1);
    // BW1W120 0072ab20 BW1M100 10526950 OneOffSpellSeed::IsOneOffSpellCompassionate(Creature *)
    virtual uint32_t IsOneOffSpellCompassionate(Creature* param_1);
    // BW1W120 0072ab40 BW1M100 105268c0 OneOffSpellSeed::IsOneOffSpellPlayful(Creature *)
    virtual uint32_t IsOneOffSpellPlayful(Creature* param_1);
    // BW1W120 0072ab60 BW1M100 10526820 OneOffSpellSeed::IsOneOffSpellToRestoreHealth(Creature *)
    virtual uint32_t IsOneOffSpellToRestoreHealth(Creature* param_1);
    // BW1W120 004e4040 BW1M100 105e6170 OneOffSpellSeed::IsStealableSpell(Creature *)
    virtual uint32_t IsStealableSpell(Creature* param_1);
    // BW1W120 0072ac90 BW1M100 10526550 OneOffSpellSeed::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // BW1W120 0072acb0 BW1M100 105264c0 OneOffSpellSeed::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // BW1W120 0072a910 BW1M100 10526db0 OneOffSpellSeed::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00518e90 BW1M100 100c7fc0 OneOffSpellSeed::Draw(void)
    virtual void Draw();
    // BW1W120 00518c50 BW1M100 100c8340 OneOffSpellSeed::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // BW1W120 0072a450 BW1M100 105276e0 OneOffSpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 0072a530 BW1M100 105275c0 OneOffSpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 0072a630 BW1M100 10527330 OneOffSpellSeed::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // BW1W120 0072a640 BW1M100 105271d0 OneOffSpellSeed::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // BW1W120 0072a520 BW1M100 10527690 OneOffSpellSeed::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 0072a920 BW1M100 10526d60 OneOffSpellSeed::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // BW1W120 0072ab80 BW1M100 105266e0 OneOffSpellSeed::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H */
