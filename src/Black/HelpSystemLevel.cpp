#include "HelpSystem.h"

#include <re_common.h> /* For ARRAY_SIZE */

const float InterfaceMessageDelay = 10.0f;

static HelpSystemInterfaceMessageSet InterfaceMessageSets[] = {
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_LOOK_CLOSE_AT_LAND, HELP_SYSTEM_CONDITION_LOOK_CLOSE_AT_LAND},         //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_COLLIDE_WITH_INCLUSION, HELP_SYSTEM_CONDITION_COLLIDE_WITH_INCLUSION}, //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_LOOK_AT_SKY, HELP_SYSTEM_CONDITION_LOOK_AT_SKY},                       //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_01, HELP_SYSTEM_CONDITION_NONE},                                       //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_02, HELP_SYSTEM_CONDITION_NONE},                                       //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_03, HELP_SYSTEM_CONDITION_NONE},                                       //
	{HELP_SYSTEM_MESSAGE_INTERFACE_SET_04, HELP_SYSTEM_CONDITION_NONE},                                       //
};

bool32_t HelpSystem::ProcessInterfaceMessageSets()
{
	for (uint32_t i = 0; i < ARRAY_SIZE(InterfaceMessageSets); i++)
	{
		if (Conditions[InterfaceMessageSets[i].Condition] &&
		    HasTimeElaspedSinceMessageSent(InterfaceMessageSets[i].Set, InterfaceMessageDelay))
		{
			RunMessageSet(InterfaceMessageSets[i].Set, NULL);
			return true;
		}
	}
	return false;
}
