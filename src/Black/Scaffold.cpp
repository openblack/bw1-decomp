#include "GameTimeConstants.h"
#include "Scaffold.h"
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "PlannedAbode.h"         /* For PlannedAbode */
#include "ScaffoldInfo.h"         /* For GScaffoldInfo */

#if defined(VERSION_BW1W100)
#define SCAFFOLD_FILE "C:\\dev\\black\\Scaffold.cpp"
#elif defined(VERSION_BW1W110)
#define SCAFFOLD_FILE "C:\\dev\\Black\\Scaffold.cpp"
#else
#define SCAFFOLD_FILE "C:\\dev\\MP\\Black\\Scaffold.cpp"
#endif

SCRIPT_OBJECT_TYPE Scaffold::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_SCAFFOLD;
}

PHYSICS_CONSTANTS_TYPE Scaffold::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_MOVABLE_SCAFFOLD;
}

bool32_t Scaffold::IsAvailableToBeBuiltWith()
{
	return field_0x68 == 0;
}

void Scaffold::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

uint32_t Scaffold::GetOverwritePickUpToolTip()
{
	return HELP_TEXT_TOOLTIP_109;
}

float Scaffold::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return -1.0f;
}

void Scaffold::SetCombinedTown(Scaffold* other)
{
	Town* combined = GetCombinedTown(other);
	town = combined;
	other->town = combined;
}

PlannedAbode* Scaffold::GetPlannedAbodeForBuilding(Town* town)
{
	if (IsPlannedValid(PLANNED_TYPE_1))
	{
		SwapPlannedAbodes();
	}
	return Planned;
}

Scaffold::Scaffold(const MapCoords& coords, const GScaffoldInfo* info, Object* parent, float y_angle, float scale)
	: MobileObject(coords, info, parent, y_angle, scale)
{
	SetToZero();
}

Scaffold* Scaffold::Create(const MapCoords& coords, const GScaffoldInfo* info, Town* town, Object* parent,
                           float y_angle, float scale)
{
	Scaffold* scaffold = new (SCAFFOLD_FILE, 66) Scaffold(coords, info, parent, y_angle, scale);
	if (scaffold != NULL)
	{
		scaffold->town = town;
		scaffold->CallVirtualFunctionsForCreation(coords);
		scaffold->SetPlannedAbode(PlannedAbode::CreateNoInit(coords, NULL, NULL, 0.0f, 1.0f));
		scaffold->SecondPlanned = PlannedAbode::CreateNoInit(coords, NULL, NULL, 0.0f, 1.0f);
	}
	return scaffold;
}
