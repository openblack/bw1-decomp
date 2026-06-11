#ifndef BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include "Fixed.h" /* For struct SingleMapFixed */
#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

class Base;
class Citadel;
class EffectValues;
class GPlayer;
class GSpellIconInfo;
class GSpellSeedInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
struct PSysProcessInfo;
class Spell;
class Town;
class WorshipSite;

class WorshipSpellIcon: public SpellIcon
{
public:
    WorshipSpellIcon* next; /* 0x110 */
    int16_t field_0x114;
    uint32_t site;
    float field_0x11c;
    uint32_t field_0x120;
    int field_0x124;
    uint32_t field_0x128;
    uint32_t field_0x12c;
    uint32_t field_0x130;
    float field_0x134;
    uint32_t field_0x138;
    int16_t slot;

    // Override methods

    // win1.41 0077f110 mac 105b6fb0 WorshipSpellIcon::_dt(void)
    virtual ~WorshipSpellIcon();
    // win1.41 0077f230 mac 105b6ed0 WorshipSpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0077f6f0 mac inlined WorshipSpellIcon::MaintainSpell(unsigned int, float)
    virtual void MaintainSpell(uint32_t param_1, float param_2);
    // win1.41 0077f750 mac 105b64c0 WorshipSpellIcon::UpdateSpellInfo(Spell *, PSysProcessInfo *)
    virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
    // win1.41 0077f100 mac 105b4440 WorshipSpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007801f0 mac 105b4690 WorshipSpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0077ff80 mac 105b4bc0 WorshipSpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0077f0f0 mac 105b4400 WorshipSpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0077f0a0 mac 10381d20 WorshipSpellIcon::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 0077f0e0 mac 105b43b0 WorshipSpellIcon::ApplyEffect(EffectValues &, int)
    virtual void ApplyEffect(EffectValues* param_1, int param_2);
    // win1.41 0077f390 mac 105b6a70 WorshipSpellIcon::Process(void)
    virtual uint32_t Process();
    // win1.41 0077f290 mac 105b6e40 WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 0077f0b0 mac 105b42c0 WorshipSpellIcon::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 0077f0d0 mac 105b4360 WorshipSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Static methods

    // win1.41 0077f2b0 mac 105b6cf0 WorshipSpellIcon::Create(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
    static WorshipSpellIcon* Create(MapCoords* coords, GSpellIconInfo* icon_info, GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot, float param_6, int param_7);

    // Constructors

    // win1.41 0077f140 mac 105b7070 WorshipSpellIcon::WorshipSpellIcon(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
    WorshipSpellIcon(const MapCoords* coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot, float param_6, int param_7);

    // Non-virtual methods

    // win1.41 0077f1f0 mac inlined WorshipSpellIcon::SetZero(void)
    void SetZero();
    // win1.41 0077f320 mac 105b6bf0 WorshipSpellIcon::UpdateGraphicsWithPULevels(void)
    void UpdateGraphicsWithPULevels();
    // win1.41 0077ff40 mac 105b4ff0 WorshipSpellIcon::StopRemoveFromPlayer(void)
    void StopRemoveFromPlayer();
};

class PrayerIcon: public SingleMapFixed
{
public:

    // Override methods

    // win1.41 00670960 mac inlined PrayerIcon::_dt(void)
    virtual ~PrayerIcon();
    // win1.41 00670980 mac inlined PrayerIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006709a0 mac inlined PrayerIcon::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 006709b0 mac inlined PrayerIcon::GetTown(void)
    virtual Town* GetTown();
    // win1.41 00670940 mac inlined PrayerIcon::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 006709e0 mac inlined PrayerIcon::GetCitadel(void)
    virtual Citadel* GetCitadel();
    // win1.41 006709d0 mac inlined PrayerIcon::Process(void)
    virtual uint32_t Process();
    // win1.41 00670950 mac inlined PrayerIcon::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 006709f0 mac inlined PrayerIcon::Draw(void)
    virtual void Draw();
};

#endif /* BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H */
