#include "GroupBehaviour.h"
#include "SLobbyBox.h"

// win1.41 00597270 mac 100f8990 GroupBehaviour::AddAction(float, unsigned long, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void GroupBehaviour::AddAction(float param_1, uint32_t param_2, DANCE_GROUP_ACTION_TYPE action_type, DanceGroupActionArgument* arguments)
{
}

// win1.41 00597300 mac 100f8760 GroupBehaviour::AddAction(float, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void GroupBehaviour::AddAction(float param_1, LHDynamicStack<uint32_t>& stack, DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument* argument)
{
}

// win1.41 00597400 mac 100f8550 GroupBehaviour::FindDanceGroup(Living *)
bool GroupBehaviour::FindDanceGroup(Living* param_1)
{
    return 0;
}

// win1.41 005978e0 mac 100f6eb0 GroupBehaviour::LoadDance(char const *)
void GroupBehaviour::LoadDance(const char* param_1)
{
}

// win1.41 00597f20 mac 100f68a0 GroupBehaviour::CalculateDancePosition(MapCoords const &, MapCoords *, DanceGroup *, unsigned long)
void GroupBehaviour::CalculateDancePosition(const MapCoords* param_1, MapCoords* param_2, DanceGroup* param_3, unsigned long param_4)
{
}

// win1.41 00598240 mac 100f5a80 GroupBehaviour::Save(GameOSFile &)
bool GroupBehaviour::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005985c0 mac 100f4e70 GroupBehaviour::Load(GameOSFile &)
bool GroupBehaviour::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00599740 mac 105d3580 GSLobbyBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void GSLobbyBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0059a0a0 mac 105d33a0 GSLobbyBox::InitControls(void)
void GSLobbyBox::InitControls()
{
}

// win1.41 0059a250 mac 105d3340 GSLobbyBox::Destroy(void)
void GSLobbyBox::Destroy()
{
}
