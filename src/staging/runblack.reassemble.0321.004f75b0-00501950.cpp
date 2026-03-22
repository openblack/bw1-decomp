#include "Creature.h"

// win1.41 004f8350 mac inlined Creature::MaintainSpell(unsigned int, float)
void Creature::MaintainSpell(uint32_t param_1, float param_2)
{
}

// win1.41 004f8750 mac 1028b0e0 Creature::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void Creature::UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2)
{
}

// win1.41 004f8a10 mac 1028ac60 Creature::CanBeSuckedIntoVortex(LandscapeVortex *)
bool32_t Creature::CanBeSuckedIntoVortex(LandscapeVortex* param_1)
{
    return 0;
}

// win1.41 004f8b30 mac 1028a9c0 Creature::GetPSysBeamTargetPos(LHPoint *)
void Creature::GetPSysBeamTargetPos(LHPoint* param_1)
{
}

// win1.41 004f8b80 mac 1028a7b0 Creature::ProcessSpells(void)
void Creature::ProcessSpells()
{
}

// win1.41 004ff1b0 mac 1028cea0 CreatureSubActionAgenda::CreatureSubActionAgenda(Creature*)
CreatureSubActionAgenda::CreatureSubActionAgenda(Creature* _creature)
{
    field_0xc = 0;
    field_0x8 = 1;
    field_0xc30 = 0;
    field_0x10 = 0;
    field_0x14 = 0;
    field_0xc34 = 0;
    field_0x1c = -1;
    field_0xc38 = 0;
    field_0xc3c = 0;
    field_0xc40 = 0;
    field_0x20 = 0;
    field_0xc44 = 0;
    field_0xc48 = 0;
    creature = _creature;
    field_0xc2c = 0;
}

// win1.41 004ffdd0 mac 102a0fc0 Creature::SubStatePerformPickUpParameter(CreatureBelief *)
uint32_t Creature::SubStatePerformPickUpParameter(CreatureBelief* param_1)
{
    return 0;
}
