#ifndef BW1_DECOMP_SPELL_SHIELD_INCLUDED_H
#define BW1_DECOMP_SPELL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

class Base;
class GMagicInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
struct PSysProcessInfo;
class Reaction;
class Spell;
struct SpellCastData;

class SpellShield: public SpellWithObjects
{
public:
    uint8_t field_0xf4[0x18];

    // Override methods

    // BW1W120 0072b480 BW1M100 10534250 SpellShield::_dt(void)
    virtual ~SpellShield();
    // BW1W120 0072b500 BW1M100 105334e0 SpellShield::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0072b450 BW1M100 105321c0 SpellShield::GetRadius(void)
    virtual float GetRadius();
    // BW1W120 0072b440 BW1M100 10532220 SpellShield::Get2DRadius(void)
    virtual float Get2DRadius();
    // BW1W120 0072b470 BW1M100 10534380 SpellShield::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0072bb40 BW1M100 105324f0 SpellShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0072bc40 BW1M100 10532270 SpellShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0072b460 BW1M100 10534340 SpellShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0072ba80 BW1M100 10532920 SpellShield::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // BW1W120 0072b430 BW1M100 10534300 SpellShield::IsSpellShield(void)
    virtual uint32_t IsSpellShield();
    // BW1W120 0072b780 BW1M100 105330f0 SpellShield::UpdateStruckReaction(void)
    virtual void UpdateStruckReaction();
    // BW1W120 0072b7c0 BW1M100 10533050 SpellShield::SetUpDestroyedReaction(void)
    virtual void SetUpDestroyedReaction();
    // BW1W120 0072b750 BW1M100 105331a0 SpellShield::Process(void)
    virtual uint32_t Process();
    // BW1W120 0072b840 BW1M100 10532f10 SpellShield::CloseDown(void)
    virtual void CloseDown();
    // BW1W120 0072b5f0 BW1M100 10533230 SpellShield::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
    // BW1W120 0072b7f0 BW1M100 10532fb0 SpellShield::CalculateCostToMaintain(void)
    virtual float CalculateCostToMaintain();

    // Non-virtual methods

    // BW1W120 0072b820 BW1M100 10532f60 SpellShield::GetMagicInfo(void) const
    GMagicInfo* GetMagicInfo();
};

#endif /* BW1_DECOMP_SPELL_SHIELD_INCLUDED_H */
