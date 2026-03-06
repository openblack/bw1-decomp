#include "Villager.h"

extern const char debug_text_Villager[10];

// win1.41 0055c8a0 mac 1030baa0 Villager::Villager(void)
Villager::Villager()
{
}

// win1.41 0055c970 mac 10064ef0 Villager::IsChild(void)
bool Villager::IsChild()
{
    return 0;
}

// win1.41 0055c980 mac 10051310 Villager::IsFoodSpeedUp(void)
bool Villager::IsFoodSpeedUp()
{
    return 0;
}

// win1.41 0055c990 mac 10147d30 Villager::IsABeliever(void)
bool Villager::IsABeliever()
{
    return true;
}

// win1.41 0055c9a0 mac inlined Villager::IsTouching_3( const(Object *, float))
bool Villager::IsTouching(Object* param_1, float param_2) const
{
    return 0;
}

// win1.41 0055c9c0 mac 10147dd0 Villager::GetMesh( const(void))
int Villager::GetMesh() const
{
    return 0;
}

// win1.41 0055c9d0 mac inlined Villager::GetDetailMesh(int)
int Villager::GetDetailMesh(int param_1)
{
    return 0;
}

// win1.41 0055c9f0 mac inlined Villager::IsScriptState( const(VILLAGER_STATES))
bool Villager::IsScriptState(VILLAGER_STATES param_1) const
{
    return 0;
}

// win1.41 0055ca10 mac inlined Villager::IsScriptInterruptableState( const(VILLAGER_STATES))
bool Villager::IsScriptInterruptableState(VILLAGER_STATES param_1) const
{
    return 0;
}

// win1.41 0055ca30 mac 10147f70 Villager::GetTastiness(void)
uint32_t Villager::GetTastiness()
{
    return 2;
}

// win1.41 0055ca40 mac 100c54f0 Villager::GetVillagerName(void)
const char* Villager::GetVillagerName()
{
    return 0;
}

// win1.41 0055ca50 mac 10147fb0 Villager::CanBePickedUp(void)
bool Villager::CanBePickedUp()
{
    return false;
}

// win1.41 0055ca70 mac 10148010 Villager::GetCreatureBeliefType(void)
uint32_t Villager::GetCreatureBeliefType()
{
    return 6;
}

// win1.41 0055ca80 mac 10148050 Villager::CanBeImpressedByCreature(Creature *)
bool Villager::CanBeImpressedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0055ca90 mac 101480d0 Villager::CanReceiveGifts(Creature *)
bool Villager::CanReceiveGifts(Creature* param_1)
{
    return 1;
}

// win1.41 0055caa0 mac 10148110 Villager::CanBeHelpedByCreature(Creature *)
bool Villager::CanBeHelpedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0055cab0 mac 1006d800 Villager::IsVillager(Creature *)
bool Villager::IsVillager(Creature* param_1)
{
    return 1;
}

// win1.41 0055cac0 mac 10478e10 Villager::IsMaleVillager(void)
bool Villager::IsMaleVillager()
{
    return 0;
}

// win1.41 0055cae0 mac 1033bc40 Villager::IsFemaleVillager(void)
bool Villager::IsFemaleVillager()
{
    return 0;
}

// win1.41 0055cb00 mac 1009a450 Villager::IsAChild(void)
bool Villager::IsAChild()
{
    return 0;
}

// win1.41 0055cb10 mac 10148200 Villager::GetDeathReason(void)
DEATH_REASON Villager::GetDeathReason()
{
    return DEATH_REASON_LAST;
}

// win1.41 00756720 mac 10563930 MissionaryControl::GetSaveType(void)
uint32_t Villager::GetSaveType()
{
    return 6;
}

// win1.41 0055cb30 mac 10571f80 Villager::GetDebugText(void)
char* Villager::GetDebugText()
{
    return NULL;
}

// win1.41 0055cb40 mac 10571890 Villager::_dt(unsigned int)
Villager::~Villager()
{
}
