#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "Artifact.h"

#include "ZeroPointConstants.h" /* For ZeroPoint */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For NEW */

#include "Dance.h"
#include "DanceInfo.h"
#include "Fixed.h"
#include "Footpath.h"
#include "Game.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "LandBalance.h"
#include "MapCoords.h"
#include "Object.h"
#include "ObjectInfo.h"
#include "ParticleContainer.h"
#include "Player.h"
#include "PlayerSymbolSprite.h"
#include "Setup.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownInfo.h"
#include "Utils.h"
#include "Villager.h"
#include "WorshipSite.h"

const float TownArtifactReadyValue = 1.0f;

static float unused = 0.0f;

TownArtifact::TownArtifact(Fixed* artifact, Town* town, GPlayer* player)
{
	Init(artifact, town, NULL, player);
}

char* GameThing::GetDebugText()
{
	return "GameThing:Unknown";
}

TownArtifact::TownArtifact(Fixed* artifact, WorshipSite* site, GPlayer* player)
{
	Init(artifact, NULL, site, player);
}

void TownArtifact::Init(Fixed* artifact, Town* town, WorshipSite* site, GPlayer* player)
{
	SetToZero();
	Artifact = artifact;
	Player = player;
	this->town = town;
	Site = site;
	ArtifactDance = NULL;
	DanceStartTurn = 0;
	Particles = NULL;
	Value = Artifact->info->VillagerImpressiveValue;
	DanceStarted = false;
	CreateParticleEffectIfNecessary();
	GGame::g_game->GameLists.TownArtifacts.Add(this);
}

void TownArtifact::ToBeDeleted(bool32_t delete_now)
{
	RemoveFromTown();
	if (ArtifactDance != NULL)
	{
		ArtifactDance->ToBeDeleted(delete_now);
		ArtifactDance = NULL;
	}
	if (Particles != NULL)
	{
		Particles->ToBeDeleted(false);
		Particles = NULL;
	}
	GGame::g_game->GameLists.TownArtifacts.Remove(this);
	GameThing::ToBeDeleted(delete_now);
}

void TownArtifact::SetToZero()
{
	Artifact = NULL;
	town = NULL;
	Player = NULL;
	Particles = NULL;
	Symbol = NULL;
	ArtifactDance = NULL;
}

void TownArtifact::CreateParticleEffectIfNecessary()
{
	if (Artifact != NULL && Particles == NULL && IsReadyForParticleEffect())
	{
		Particles = GParticleContainer::CreateSpotVisual(Artifact->Pos, SPOT_VISUAL_MAGIC_FX_ON_OBJECT,
		                                                 TOWN_ARTIFACT_PARTICLE_SCALE, Artifact);
		if (Particles != NULL)
		{
			Particles->AddTarget(Artifact);
			Particles->SetPlayer(GetPlayer());
		}
		Symbol = PlayerSymbolSprite::Create(GetPlayer()->GetPlayerNumber());
		if (Symbol != NULL)
		{
			Symbol->SetScale(TOWN_ARTIFACT_SYMBOL_SCALE);
		}
	}
}

void TownArtifact::Process()
{
	if (Artifact != NULL && Artifact->IsAvailable())
	{
		if (Particles != NULL && !Particles->IsAvailable())
		{
			Particles = NULL;
		}
		if (ArtifactDance != NULL)
		{
			if (ArtifactDance->State == DANCE_STATE_DANCING)
			{
				if (ArtifactDance->NumDancers != 0)
				{
					if (town != NULL)
					{
						town->GiveBeliefForArtifactIfNecessary(this);
					}
					if (DanceStarted)
					{
						StopDanceIfNecessary(false);
					}
					else
					{
						DanceStarted = true;
						DanceStartTurn = GGame::g_game->data.GetGameTurn();
						ArtifactDance->SetStateOfEveryVillagerDancing(VILLAGER_STATE_ARTIFACT_DANCE);
					}
				}
				else
				{
					ArtifactDance->SetState(DANCE_STATE_WAITING);
					DanceStarted = false;
				}
			}
			else if (ArtifactDance->State == DANCE_STATE_WAITING && DanceStarted)
			{
				StopDanceIfNecessary(true);
			}
		}
		if (town != NULL && town->IsAvailable() != true)
		{
			town = NULL;
		}
	}
	else
	{
		ToBeDeleted(false);
	}
}

void TownArtifact::StopDanceIfNecessary(bool force)
{
	DesireSort* desire = GetTown()->desire.GetSortedDesire(0);
	if (GetDanceTimeRemaining() == 0 || force)
	{
		bool32_t decideWhatToDo = false;
		if (desire->Type != TOWN_DESIRE_INFO_FOR_RELAXATION || force)
		{
			decideWhatToDo = true;
		}
		CalculateDanceEffect();
		if (decideWhatToDo)
		{
			ArtifactDance->SetStateOfEveryVillagerDancingToDecideWhatToDo();
		}
		else
		{
			ArtifactDance->SetStateOfEveryVillagerDancing(VILLAGER_STATE_WAIT_FOR_ARTIFACT_DANCE);
		}
		ArtifactDance->SetState(DANCE_STATE_WAITING);
		DanceStarted = false;
	}
}

uint32_t TownArtifact::GetDanceTimeRemaining()
{
	return max((int32_t)(ArtifactDance->GetDuration() - (GGame::g_game->data.GetGameTurn() - DanceStartTurn)), 0);
}

void TownArtifact::CalculateDanceEffect()
{
	if (town != NULL && town->GetPlayer() == GetPlayer())
	{
		float timeFactor = 1.0f;
		if (ArtifactDance->GetDuration() != 0)
		{
			timeFactor = ((float)GGame::g_game->data.GetGameTurn() - DanceStartTurn) / ArtifactDance->GetDuration();
		}
		float dancerFactor = 1.0f;
		if (ArtifactDance->GetInfo()->MaximumDancers != 0)
		{
			uint32_t dancers = ArtifactDance->NumDancers;
			dancerFactor = (float)dancers / ArtifactDance->GetInfo()->MaximumDancers;
		}
		float effect = town->GetModifierForArtifacts();
		effect *= Artifact->info->ArtifactMultiplier;
		effect *= dancerFactor * timeFactor;
		AddToValue(effect * GLandBalance::Values[GLandBalance::LAND_BALANCE_6]);
	}
}

void TownArtifact::RemoveFromTown()
{
	if (town != NULL)
	{
		TownArtifact* artifact;
		for (artifact = town->ArtifactList.head; artifact != NULL; artifact = artifact->next)
		{
			if (artifact == this)
			{
				break;
			}
		}
		if (artifact != NULL)
		{
			town->RemoveArtifact(Artifact);
			if (ArtifactDance != NULL && ArtifactDance->State == DANCE_STATE_DANCING && DanceStarted)
			{
				ArtifactDance->SetStateOfEveryVillagerDancingToDecideWhatToDo();
				DanceStarted = false;
			}
		}
	}
	if (Site != NULL)
	{
		for (LHLinkedNode<TownArtifact*>* node = Site->Artifacts.GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload == this)
			{
				Site->RemoveArtifact(Artifact);
				if (ArtifactDance != NULL && ArtifactDance->State == DANCE_STATE_DANCING && DanceStarted)
				{
					ArtifactDance->SetStateOfEveryVillagerDancingToDecideWhatToDo();
					DanceStarted = false;
				}
				return;
			}
		}
	}
}

float TownArtifact::GetVillagerActivityDesire(Villager* villager)
{
	if (!DanceStarted)
	{
		float distance = Artifact->GetInteractPos().GetDistance(villager->Pos);
		float distanceModifier = GUtils::GetDistanceModifier(distance, TOWN_ARTIFACT_VILLAGER_MAX_DISTANCE);
		float desire = GetDesireToAddVillager();
		float danceFactor = 1.0f;
		if (ArtifactDance != NULL && ArtifactDance->State != DANCE_STATE_WAITING && ArtifactDance->GetDuration() != 0)
		{
			danceFactor -=
				1.0f - max((float)ArtifactDance->GetGameTurnsActiveFor() / ArtifactDance->GetDuration(), danceFactor);
		}
		return danceFactor * desire * distanceModifier;
	}
	return 0.0f;
}

float TownArtifact::GetDesireToAddVillager()
{
	DANCE_INFO danceInfo = Artifact->GetArtifactDanceInfo();
	if (danceInfo != DANCE_INFO_NONE)
	{
		float maxDancers = (float)GDanceInfo::Infos[danceInfo].MaximumDancers;
		float dancers = 0.0f;
		if (ArtifactDance != NULL)
		{
			dancers = (float)ArtifactDance->NumDancers;
		}
		if (maxDancers != 0.0f)
		{
			return 1.0f - min(dancers / maxDancers, 1.0f);
		}
	}
	return 1.0f;
}

uint32_t TownArtifact::SetVillagerActivity(Villager* villager)
{
	DANCE_INFO danceInfo = Artifact->GetArtifactDanceInfo();
	if (danceInfo != DANCE_INFO_NONE && ArtifactDance == NULL)
	{
		ArtifactDance = NEW(308) Dance(Artifact->GetInteractPos(), &GDanceInfo::Infos[danceInfo], Artifact,
		                               GDanceInfo::Infos[danceInfo].Duration, false, town);
	}
	if (ArtifactDance != NULL)
	{
		if (ArtifactDance->Pos != Artifact->GetInteractPos())
		{
			ArtifactDance->Pos = Artifact->GetInteractPos();
			Town* nearestTown = ArtifactDance->Pos.GetNearestTown(MaxFloat);
			if (nearestTown != NULL)
			{
				StoragePit* pit = nearestTown->GetStoragePit();
				if (pit != NULL)
				{
					GFootpath::GenerateRoutesBetween(pit, ArtifactDance);
				}
			}
		}
		if (ArtifactDance->FindDanceGroup(villager))
		{
			villager->SetTopState(VILLAGER_STATE_WAIT_FOR_ARTIFACT_DANCE);
			return true;
		}
	}
	return false;
}

bool32_t TownArtifact::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(Artifact);
		file.WritePtr(town);
		file.WritePtr(Player);
		file.WriteIt(Value);
		file.WritePtr(ArtifactDance);
		file.WritePtr(Particles);
		file.WriteIt(DanceStarted);
		file.WriteIt(DanceStartTurn);
		return true;
	}
	return false;
}

bool32_t TownArtifact::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&Artifact);
		file.ReadPtr((GameThing**)&town);
		file.ReadPtr((GameThing**)&Player);
		file.ReadIt(Value);
		file.ReadPtr((GameThing**)&ArtifactDance);
		file.ReadPtr((GameThing**)&Particles);
		file.ReadIt(DanceStarted);
		file.ReadIt(DanceStartTurn);
		return true;
	}
	return false;
}

void TownArtifact::ResolveLoad()
{
	CreateParticleEffectIfNecessary();
#ifdef VERSION_BW1WCI
	SetDiseapearFlag();
#endif
}

bool TownArtifact::IsReadyForParticleEffect()
{
	return Value > TownArtifactReadyValue;
}

void TownArtifact::IncrementValue()
{
	AddToValue(TOWN_ARTIFACT_VALUE_INCREMENT);
}

void TownArtifact::SetValue(float value)
{
	Value = value;
	CreateParticleEffectIfNecessary();
	if (Particles != NULL)
	{
		if (!Particles->IsAvailable())
		{
			Particles = NULL;
			return;
		}
		Particles->SetParticleStrength(Value);
	}
}

void TownArtifact::Validate()
{
	if (Artifact == NULL || !Artifact->IsAvailable())
	{
		ToBeDeleted(false);
	}
}

bool32_t TownArtifact::WillImpress(Town* town)
{
	return IsReadyForParticleEffect() && this->town != town;
}

bool32_t TownArtifact::WillImpress(WorshipSite* site)
{
	return IsReadyForParticleEffect() && Site != site;
}

float TownArtifact::GetImpressiveValueForDancing()
{
	if (ArtifactDance != NULL && town != NULL)
	{
		float modifier = max(Artifact->GetArtifactImpressiveModifier() - 1.0f, 0.0f);
		float value = Artifact->GetImpressiveValue() * modifier;
		float dancerShare = 1.0f;
		float population = (float)town->GetPopulation();
		if (population != 0.0f)
		{
			dancerShare = (float)ArtifactDance->NumDancers / population *
			              town->GetInfo()->MultiplierForBeliefFromVillagersDancingAroundArtifact;
		}
		return dancerShare * value;
	}
	return 0.0f;
}

uint32_t TownArtifact::SaveObject(LHOSFile& file, const MapCoords& coords)
{
	char text[200];

	if (GetPlayer() != NULL)
	{
		int   townId = (GetTown() != NULL && &coords == NULL) ? GetTown()->ID : -1;
		float value = Value;
		char* playerName = GPlayer::PlayerNameText[GetPlayer()->GetPlayerNumber()];
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_MAKE_LAST_OBJECT_ARTIFACT), townId, playerName,
		        value);
		GSetup::WriteToFile(this, file, text, strlen(text));
		return true;
	}
	return false;
}

void TownArtifact::AddToValue(float amount)
{
	float rate = min(1.0f / GetValue(), 1.0f);
	SetValue(GetValue() + amount * (TOWN_ARTIFACT_VALUE_GAIN * rate));
}
