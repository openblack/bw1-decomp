#include "Bonfire.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "MobileStaticInfo.h"
#include "ParticleContainer.h"

#if defined(VERSION_BW1W100)
#define BONFIRE_FILE "C:\\dev\\black\\Bonfire.cpp"
#elif defined(VERSION_BW1W110)
#define BONFIRE_FILE "C:\\dev\\Black\\Bonfire.cpp"
#else
#define BONFIRE_FILE "C:\\dev\\MP\\Black\\Bonfire.cpp"
#endif

Bonfire::Bonfire(const MapCoords& coords, float param_2, float y_angle, float scale)
	: Rock(coords, &GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_BONFIRE], NULL, NULL, y_angle, scale)
{
	SetToZero();
	GParticleContainer::CreateSpotVisualWithSpecifiedDuration(coords, SPOT_VISUAL_BONFIRE, 1.0f, -1, this);
}

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

void Bonfire::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	MobileStatic::CallVirtualFunctionsForCreation(coords);
}

Bonfire* Bonfire::Create(const MapCoords& coords, float y_angle, float scale, float fire_scale)
{
	Bonfire* bonfire = new (BONFIRE_FILE, 30) Bonfire(coords, y_angle, scale, fire_scale);
	if (bonfire)
	{
		bonfire->CallVirtualFunctionsForCreation(coords);
	}
	return bonfire;
}

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
