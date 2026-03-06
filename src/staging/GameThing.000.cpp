#include "GameThing.h"

// win1.41 004017f0 mac 1010bb00 GameThing::CalculateInfluence(MapCoords const &)
float GameThing::CalculateInfluence(const MapCoords& param_1)
{
    return 0.0f;
}

// win1.41 00401800 mac 10494700 GameThing::RemoveDance(void)
void GameThing::RemoveDance()
{
}

// win1.41 00401810 mac 100512d0 GameThing::IsAvailable(void)
bool GameThing::IsAvailable()
{
    return false;
}

// win1.41 00401820 mac 10494880 GameThing::IsCreature(Creature *)
bool GameThing::IsCreature(Creature* param_1)
{
    return false;
}

// win1.41 00401830 mac 1002c400 GameThing::IsCreature(void)
bool GameThing::IsCreature()
{
    return false;
}

// win1.41 00401840 mac 104948c0 GameThing::IsCreatureNotTooNear(Creature *)
bool GameThing::IsCreatureNotTooNear(Creature* param_1)
{
    return false;
}

// win1.41 00401850 mac 10428ff0 GameThing::GetMaxAlignmentChangePerGameTurn(void)
float GameThing::GetMaxAlignmentChangePerGameTurn()
{
    return 0.0f;
}

// win1.41 00401860 mac 10425a40 GameThing::GetComputerSeen(void)
bool GameThing::GetComputerSeen()
{
    return false;
}

// win1.41 00401870 mac 103f1450 GameThing::GetVillagerActivityDesire(Villager *)
float GameThing::GetVillagerActivityDesire(Villager* param_1)
{
    return 0.0f;
}

// win1.41 00401880 mac 10389ac0 GameThing::SetVillagerActivity(Villager *)
uint32_t GameThing::SetVillagerActivity(Villager* param_1)
{
    return 0;
}

// win1.41 00401890 mac 1037f2e0 GameThing::UpdateVillagerActivityEffect(Villager *)
uint32_t GameThing::UpdateVillagerActivityEffect(Villager* param_1)
{
    return 0;
}

// win1.41 004018a0 mac 101664f0 GameThing::GetPlayerWhoLastPickedMeUp(void)
GPlayer* GameThing::GetPlayerWhoLastPickedMeUp()
{
    return NULL;
}

// win1.41 004018b0 mac 10381da0 GameThing::GetPlayerWhoLastDroppedMe(void)
GPlayer* GameThing::GetPlayerWhoLastDroppedMe()
{
    return NULL;
}

// win1.41 004018c0 mac 101063a0 GameThing::AddFootpathLink(GFootpath *)
uint32_t GameThing::AddFootpathLink(GFootpath* param_1)
{
    return 0;
}

// win1.41 004018d0 mac 103dd790 GameThing::CastCreature(void)
Creature* GameThing::CastCreature()
{
    return NULL;
}

// win1.41 004018e0 mac 103dd5d0 GameThing::CastPlayer(void)
GPlayer* GameThing::CastPlayer()
{
    return NULL;
}

// win1.41 004018f0 mac 104fb790 GameThing::CastOneOffSpellSeed(void)
SpellSeed* GameThing::CastOneOffSpellSeed()
{
    return NULL;
}

// win1.41 00401900 mac 100a0a70 GameThing::CastSpellIcon(void)
SpellIcon* GameThing::CastSpellIcon()
{
    return NULL;
}

// win1.41 00401910 mac 101c8320 GameThing::CastTree(void)
Tree* GameThing::CastTree()
{
    return NULL;
}

// win1.41 00401920 mac 1019e2b0 GameThing::IsDeletedOnNewMap(void)
bool32_t GameThing::IsDeletedOnNewMap()
{
    return true;
}

// win1.41 00401930 mac 1017a550 GameThing::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t GameThing::GetShowNeedsPos(uint32_t param_1, MapCoords* param_2)
{
    return 0;
}
