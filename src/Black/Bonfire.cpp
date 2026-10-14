#include "Bonfire.h"
#include "GameOSFile.h" /* For class GameOSFile */

uint32_t Bonfire::GetSaveType()
{
	return GAME_THING_TYPE_BONFIRE;
}

bool32_t Bonfire::CanBecomeAPhysicsObject()
{
	return false;
}

bool Bonfire::InteractsWithPhysicsObjects()
{
	return false;
}

uint32_t Bonfire::InterfaceValidToTap(GInterfaceStatus* param_1)
{
	return 0;
}

bool32_t Bonfire::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

void Bonfire::SetToZero() {}

void Bonfire::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

void Bonfire::PhysicsEditorCreate(int param_1)
{
	Pos.altitude = 0.0f;
}

char* Bonfire::GetDebugText()
{
	return "Bonfire:";
}

IMMERSION_EFFECT_TYPE Bonfire::GetInHandImmersionTexture()
{
	return Object::GetInHandImmersionTexture();
}

SCRIPT_OBJECT_TYPE Bonfire::GetScriptObjectType()
{
	return MobileStatic::GetScriptObjectType();
}

void Bonfire::Draw()
{
	Rock::Draw();
}

bool32_t Bonfire::Load(GameOSFile& file)
{
	if (Rock::Load(file))
	{
		file.ReadIt(field_0x94);
		return true;
	}
	return false;
}

bool32_t Bonfire::Save(GameOSFile& file)
{
	if (Rock::Save(file))
	{
		file.WriteIt(field_0x94);
		return true;
	}
	return false;
}
