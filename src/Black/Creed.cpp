#include "Creed.h"

#include <chlasm/AudioSFX.h> /* For AUDIO_SFX_BANK_TYPE_IN_GAME */
#include <chlasm/LHSample.h> /* For LH_SAMPLE_G_CREED_01 */

#include "Game3DObject.h"
#include "ObjectInfo.h"
#include "PSysHandFX.h"
#include "SoundTag.h"

Creed::Creed()
{
	SetToZero();
}

bool Creed::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t Creed::CanBecomeAPhysicsObject()
{
	return false;
}

uint32_t Creed::GetSaveType()
{
	return GAME_THING_TYPE_CREED;
}

char* Creed::GetDebugText()
{
	return "Creed:";
}

void Creed::SetToZero()
{
	Glow = NULL;
}

void Creed::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	MobileObject::CallVirtualFunctionsForCreation(coords);
	SoundTag::Create(this, LH_SAMPLE_G_CREED_01, true, 2, -1, 0, 1, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
}

void Creed::ToBeDeleted(int delete_now)
{
	if (Glow != NULL)
	{
		delete Glow;
		Glow = NULL;
	}
	SoundTag::Remove(this, LH_SAMPLE_G_CREED_01, AUDIO_SFX_BANK_TYPE_IN_GAME);
	MobileObject::ToBeDeleted(delete_now);
}

void Creed::Create3DObject()
{
	Game3dObject = Game3DObject::Create(Pos, LH3DObject::STATIC, info->GetMesh(), GetYAngle(), GetScale());
	if (Game3dObject != NULL)
	{
		Game3dObject->SetDynamicLighting(false);
		Game3dObject->SetCastDynamicShadow(false);
		Glow = HandGlow::Create();
	}
}

void Creed::SetScale(float scale)
{
	if (Glow != NULL)
	{
		Glow->SetScale(scale);
	}
}

bool32_t Creed::Save(GameOSFile& file)
{
	return MobileObject::Save(file) != false;
}

bool32_t Creed::Load(GameOSFile& file)
{
	return MobileObject::Load(file) != false;
}

bool32_t Creed::CanBePickedUpByCreature(Creature* creature)
{
	return true;
}
