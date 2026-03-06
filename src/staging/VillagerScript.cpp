#include "Villager.h"

// win1.41 00768630 mac 10597660 Villager::IsReadyForNewScriptAction(void)
bool Villager::IsReadyForNewScriptAction()
{
    return 0;
}

// win1.41 00768640 mac 105975c0 Living::CannotExitState(unsigned char)
bool Living::CannotExitState(unsigned char param_1)
{
    return false;
}

// win1.41 00768680 mac 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
bool Villager::SetupScriptWanderToPos(const MapCoords* param_1, float param_2, unsigned short param_3, unsigned short param_4)
{
    return false;
}

// win1.41 007686d0 mac 10597370 Villager::SetupNewScriptWander(void)
bool Villager::SetupNewScriptWander()
{
    return false;
}

// win1.41 00768780 mac inlined Living::ExitNoChangeState(VILLAGER_STATES)
int Living::ExitNoChangeState(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007687d0 mac inlined Living::EnterScriptWander(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterScriptWander(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 007687f0 mac 105971a0 Villager::ScriptWanderAroundPos(void)
bool Villager::ScriptWanderAroundPos()
{
    return false;
}

// win1.41 00768830 mac inlined Living::ExitScriptWander(VILLAGER_STATES)
int Living::ExitScriptWander(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 00768840 mac inlined Living::EnterPlayAnim(VILLAGER_STATES, VILLAGER_STATES)
uint32_t Living::EnterPlayAnim(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
    return 0;
}

// win1.41 00768970 mac 10005f50 Villager::ScriptPlayAnim(void)
bool Villager::ScriptPlayAnim()
{
    return false;
}

// win1.41 007689c0 mac inlined Living::ExitPlayAnim(VILLAGER_STATES)
int Living::ExitPlayAnim(VILLAGER_STATES param_1)
{
    return 0;
}

// win1.41 007689d0 mac 1000afa0 Villager::IsScriptAnimationComplete(void)
bool Villager::IsScriptAnimationComplete()
{
    return false;
}

// win1.41 00768a00 mac 10596c60 Villager::ScriptAnimation(void)
bool Villager::ScriptAnimation()
{
    return false;
}

// win1.41 00768a10 mac 10596c20 Villager::WeakOnGround(void)
bool Villager::WeakOnGround()
{
    return true;
}

// win1.41 00768a20 mac 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
bool Villager::ScriptGoAndMoveAlongPath()
{
    return false;
}
