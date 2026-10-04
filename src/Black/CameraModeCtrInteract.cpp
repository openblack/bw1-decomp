#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "GameTimeConstants.h"
#include "CameraModeCtrInteract.h"

#include "ColourConstants.h" /* For White */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include "Camera.h"
#include "Creature.h"
#include "CreatureStatsDisplay.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "Player.h"

CameraModeCtrInteract::CameraModeCtrInteract(GCamera* camera, Creature* creature) : CameraMode(camera)
{
	if (camera->CantExitCurrentMode() || (creature->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
	{
		delete this;
		return;
	}

	TheCreature3d = creature->physical->Creature3d;
	TheCreature = creature;

	CameraMode* currentMode =
		this->camera->ModeCurrentIndex < 0 ? NULL : this->camera->modes[this->camera->ModeCurrentIndex];
	if (dynamic_cast<CameraModeCtrInteract*>(currentMode))
	{
		delete this;
		return;
	}

	this->camera->SwitchToViewMode(this);

	CreatureStatsDisplay::HandValue = 0.0f;
	CreatureStatsDisplay::Exhaustion = 0.0f;
	CreatureStatsDisplay::EnergyLoss = 0.0f;
	CreatureStatsDisplay::LifeLoss = 0.0f;
}

void CameraModeCtrInteract::Update()
{
	if (TheCreature == NULL)
	{
		return;
	}
	if (GGame::g_game->MyPlayer()->creature.Get() == NULL ||
	    (TheCreature->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
	{
		TheCreature = NULL;
		return;
	}

	LHPoint target = TheCreature3d->GetPos();
	target.y += 0.5f * TheCreature3d->GetStandingHeight();

	LHPoint offset(0.0f, 15.0f - 0.7f * TheCreature3d->GetStandingHeight(), -30.0f);
	offset.SetSize(1.5f * TheCreature3d->GetStandingHeight());

	LHMatrix rotation;
	rotation.SetRotationY(TheCreature3d->GetEventualHeading());
	rotation.TransformPoint(offset);
	offset.Add(target);

	camera->CameraHeadingZoomer.SetDestinationWithTime(target, 0.7f);
	camera->CameraOriginZoomer.SetDestinationWithTime(offset, 0.7f);
}
