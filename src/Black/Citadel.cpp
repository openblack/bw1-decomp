#include <math.h>
#include <stddef.h>                                   /* For NULL in intrusive-list templates */
#include <Lionhead/LH3DLib/development/LH3DCitadel.h> /* For LH3DCitadel */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>    /* For LH3DMesh */
#include "MaxFloat.h"
#include "MapCoordsMeters.h"
#include "GameTimeConstants.h"
#include "Citadel.h"
#include "Game.h"
#include "CitadelInfo.h"

#include "BuildingSite.h"
#include "CameraExclusion.h"
#include "CitadelHeart.h"
#include "CitadelHeartInfo.h"
#include "CitadelPeople.h"
#include "CreaturePen.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "InterfaceStatus.h"
#include "Player.h"
#include "PlannedCreaturePen.h"
#include "PlannedMultiMapFixed.h"
#include "PrayerSite.h"
#include "Town.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "Villager.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"

#define CITADEL_ALIGNMENT_STEP              0.016f
#define CITADEL_ALIGNMENT_EPSILON           0.001f
#define CITADEL_PRAYER_SITE_SPIRAL_ATTEMPTS 48
#define CITADEL_WORSHIP_SITE_ANGLE_STEP     (TWO_PI / 7)
#define CITADEL_WORSHIP_SITE_FAR_DISTANCE   999999.0f

const float CitadelStageScale = 2.0f;
const float MillisecondsToSeconds = 0.001f;

GCitadelInfo GCitadelInfo::Infos[1];

Citadel::Citadel()
{
	SetToZero();
}

Citadel::Citadel(const MapCoords& coords, const GCitadelInfo* info, GPlayer* player) : Container(coords, info, player)
{
	SetToZero();
	player->citadel = this;
	People = NEW(42) CPController;
}

void Citadel::ToBeDeleted(bool32_t delete_now)
{
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		if (WorshipSites[i] != NULL)
		{
			WorshipSites[i]->ToBeDeleted(delete_now);
		}
	}
	delete People;
	People = NULL;
	PartList.ToBeDeletedEach();
	CreaturePenList.ToBeDeletedEach();
	PlannedPartList.ToBeDeletedEach();
	PrayerSiteList.ToBeDeletedEach();
	if (owner.Get() != NULL && owner.Get()->citadel.Get() == this)
	{
		owner.Get()->citadel = NULL;
	}
	if (GetPlayer() != NULL && GGame::g_game->IsMultiplayerGame())
	{
		GetPlayer()->SetVirtualInfluence(0);
	}
	GGame::g_game->ForceNeedUpdateInfluence();
	GameThingWithPos::ToBeDeleted(delete_now);
}

int Citadel::CreatePart(int, int)
{
	return 0;
}

void Citadel::Init(const MapCoords& coords) {}

void Citadel::SetToZero()
{
	PlannedPartList.Clear();
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		WorshipSites[i] = NULL;
	}
	influence = 0.0f;
	WorshipStrainSoundFrac = 0.0f;
	People = NULL;
	CannotBuildWorshipSite = false;
	LastAddedInfluence = 0.0f;
}

void Citadel::Process()
{
	if (heart.Get() != NULL && heart.Get()->Game3dObject != NULL)
	{
		Game3DObject* object = heart.Get()->Game3dObject;
		GPlayer*      player = GetPlayer();
		float         nasty = (player->GetAlignmentValue() + 1.0f) * 0.5f;
		float         influencePower = player->GetRelativeInfluencePower();
		float         stage = CitadelStageScale * influencePower;
		object->SetNasty(nasty);
		object->SetStage(stage);
		float life = ((LH3DCitadel*)object)->Life;
		float percentBuilt = heart.Get()->GetPercentBuilt();
		if (life < 1.0f && percentBuilt >= 1.0f)
		{
			heart.Get()->RemoveMapObject();
			object->SetTempleLife(percentBuilt);
			heart.Get()->InsertMapObject();
		}
		else
		{
			object->SetTempleLife(percentBuilt);
		}
		object->SetNasty(nasty);
		object->SetStage(stage);
		LH3DCitadel* citadel = (LH3DCitadel*)object;
		if (fabs(citadel->Alignment - citadel->Nasty) > CITADEL_ALIGNMENT_EPSILON)
		{
			if (citadel->Nasty - citadel->Alignment > 0.0f)
			{
				citadel->Alignment += CITADEL_ALIGNMENT_STEP;
				if (citadel->Nasty - citadel->Alignment < 0.0f)
				{
					citadel->Alignment = citadel->Nasty;
				}
			}
			else
			{
				citadel->Alignment -= CITADEL_ALIGNMENT_STEP;
				if (citadel->Nasty - citadel->Alignment > 0.0f)
				{
					citadel->Alignment = citadel->Nasty;
				}
			}
		}
		else
		{
			citadel->Alignment = citadel->Nasty;
		}
		if (fabs(citadel->Level - citadel->Stage) > CITADEL_ALIGNMENT_EPSILON)
		{
			if (citadel->Stage - citadel->Level > 0.0f)
			{
				citadel->Level += CITADEL_ALIGNMENT_STEP;
				if (citadel->Stage - citadel->Level < 0.0f)
				{
					citadel->Level = citadel->Stage;
				}
			}
			else
			{
				citadel->Level -= CITADEL_ALIGNMENT_STEP;
				if (citadel->Stage - citadel->Level > 0.0f)
				{
					citadel->Level = citadel->Stage;
				}
			}
		}
		else
		{
			citadel->Level = citadel->Stage;
		}
		bool32_t changedSize = object->IsChangedSize();
		if (changedSize)
		{
			heart.Get()->RemoveMapObject();
			if (object->ProcessAlignement() && heart.Get()->camera_exclusion != NULL)
			{
				float height = heart.Get()->Game3dObject->GetMesh()->BoundingBox.size.y * 2.0f;
				CameraExclusion::Adjust(GetCitadelHeart()->camera_exclusion,
				                        *(LHPoint*)&GetCitadelHeart()->Game3dObject->matrix._41,
				                        CITADEL_CAMERA_EXCLUSION_RADIUS, height);
			}
			heart.Get()->InsertMapObject();
		}
		heart.Get()->SetAlignmentFlock(player->GetAlignmentValue(), changedSize);
	}
	FOREACH_LH_LIST_HEAD(CitadelPart, part, PartList)
	{
		part->Process();
	}
	FOREACH_LH_LIST_HEAD_SAFE(PrayerSite, site, PrayerSiteList)
	{
		site->Process();
	}
	if (GetPlayer()->IsNeutral() != true)
	{
		GGame::g_game->CheckNeedUpdateInfluence(GetInfluence(), LastAddedInfluence);
	}
}

float Citadel::CalculateInfluence(const MapCoords& coords, int)
{
	if (Pos.GetDistance(coords) < GetInfluence())
	{
		return GetInfluence();
	}
	return 0.0f;
}

WorshipSite* Citadel::AddTown(Town* town)
{
	WorshipSite* site = FindOrCreateWorshipSite(town);
	if (site != NULL)
	{
		if (!site->Towns.IsThisInList(town))
		{
			site->AddTown(town);
		}
		if (heart.Get() != NULL)
		{
			heart.Get()->SetLife(1.0f);
		}
		return site;
	}
	return NULL;
}

WorshipSite* Citadel::FindTribeWorshipSite(const GTribeInfo* tribe_info)
{
	for (uint32_t i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		WorshipSite* site = WorshipSites[i];
		if (site != NULL && site->tribe_info.Get() == tribe_info)
		{
			return site;
		}
	}
	return NULL;
}

WorshipSite* Citadel::FindTownWorshipSite(Town*)
{
	return NULL;
}

WorshipSite* Citadel::FindOrCreateWorshipSite(Town* town)
{
	if (town == NULL)
	{
		return NULL;
	}
	WorshipSite* result = NULL;
	if (!CannotBuildWorshipSite && town->IsAllowedToCreateWorshipSite())
	{
		result = FindOrCreateWorshipSite(town->GetTribe());
	}
	return result;
}

WorshipSite* Citadel::FindOrCreateWorshipSite(const GTribeInfo* tribe_info)
{
	WorshipSite* result = FindTribeWorshipSite(tribe_info);
	if (result == NULL)
	{
		result = RequestANewWorshipSite(tribe_info);
	}
	return result;
}

#ifdef VERSION_BW1WCI
Citadel* Citadel::CreateCitadel(const MapCoords& coords, const GCitadelHeartInfo* info, uint8_t player_number,
                                float y_angle, float scale)
#else
bool32_t Citadel::CreateCitadel(const MapCoords& coords, const GCitadelHeartInfo* info, uint8_t player_number,
                                float y_angle, float scale)
#endif
{
	if (coords.IsSuitableForFixed(info->GetMesh(), 0.0f, 1.0f))
	{
		Citadel* citadel = NEW(346) Citadel(coords, GCitadelInfo::Infos, GGame::g_game->GetPlayer(player_number));
		if (citadel != NULL)
		{
			citadel->Init(coords);
			if (CitadelHeart::Create(coords, info, citadel, y_angle, 1.0f, 1.0f, 0) != NULL)
			{
				GPlayer* player = GGame::g_game->GetPlayer(player_number);
				for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
				     status = player->GetNextInterfaceStatus(status))
				{
					status->SetCameraAndHandToPointToCitadel();
				}
#ifdef VERSION_BW1WCI
				return citadel;
#else
				return true;
#endif
			}
			citadel->Delete();
		}
	}
#ifdef VERSION_BW1WCI
	return NULL;
#else
	return false;
#endif
}

bool32_t Citadel::IsCitadelAtPos(const MapCoords* coords)
{
	return coords->FindType(OBJECT_TYPE_CITADEL, NULL) != NULL;
}

void Citadel::CreatePlannedParts()
{
	FOREACH_LH_LIST_HEAD_SAFE(PlannedMultiMapFixed, part, PlannedPartList)
	{
		part->CreatePlanned(1.0f);
	}
}

void Citadel::ConvertUnderConstructionPartsToPlanned()
{
	FOREACH_LH_LIST_HEAD_SAFE(CitadelPart, part, PartList)
	{
		if (part->UnderConstruction)
		{
			CitadelHeart* partHeart = dynamic_cast<CitadelHeart*>(part);
			if (partHeart != NULL && partHeart->town != NULL)
			{
				LHLinkedNode<BuildingSite*>* node;
				for (node = partHeart->town->BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
				{
					if (node->payload->GetBuilding() == partHeart)
					{
						break;
					}
				}
				if (node != NULL)
				{
					continue;
				}
			}
			part->ConvertToPlanned();
		}
	}
}

WorshipSite* Citadel::RequestANewWorshipSite(const GTribeInfo* tribe_info)
{
	const GWorshipSiteInfo* worship_site_info = &GWorshipSiteInfo::Infos[tribe_info->GetTribeType()];
	const GTribeInfo*       tribe = &GTribeInfo::Infos[tribe_info->GetTribeType()];
	MapCoords               coords = Pos;
	Town*                   town = Town::GetNearestTownToPos(Pos, tribe_info->GetTribeType(), ABODE_TYPE_ANY, MaxFloat);
	if (town != NULL)
	{
		coords = town->Pos;
	}
	return WorshipSite::Create(coords, worship_site_info, this, tribe, 0.0f, 1.0f, 0.0f, false);
}

bool32_t Citadel::HasPlannedCreaturePen()
{
	for (PlannedMultiMapFixed* part = PlannedPartList.head; part != NULL; part = part->next)
	{
		PlannedCreaturePen* pen = dynamic_cast<PlannedCreaturePen*>(part);
		if (pen != NULL && dynamic_cast<CreaturePen*>(pen->CreatePlanned(0.0f)) != NULL)
		{
			return true;
		}
	}
	return false;
}

void Citadel::Cheat(int cheat)
{
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		if (WorshipSites[i] != NULL)
		{
			WorshipSites[i]->Cheat(cheat);
		}
	}
}

bool32_t Citadel::FindNearestWorshipSitePosAngleAndSlotToPos(const GWorshipSiteInfo* info, float scale, MapCoords& pos,
                                                             float& y_angle, unsigned long& slot)
{
	long  nearestSlot = -1;
	float nearestDistance = CITADEL_WORSHIP_SITE_FAR_DISTANCE;
	for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		if (WorshipSites[i] == NULL)
		{
			float     angle = GetWorshipSiteAngle(i);
			MapCoords sitePos;
			heart.Get()->GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_GATE, angle, &sitePos);
			float distance = GUtils::GetDistanceInMetres(pos, sitePos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearestSlot = i;
			}
		}
	}
	if (nearestSlot != -1)
	{
		slot = nearestSlot;
		float angle = GetWorshipSiteAngle(nearestSlot);
		y_angle = angle;
		heart.Get()->GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_GATE, angle, &pos);
		return true;
	}
	return false;
}

float Citadel::GetWorshipSiteAngle(unsigned long slot)
{
	if (heart.Get() != NULL)
	{
		return heart.Get()->GetYAngle() + slot * CITADEL_WORSHIP_SITE_ANGLE_STEP;
	}
	return slot * CITADEL_WORSHIP_SITE_ANGLE_STEP;
}

MapCoords Citadel::FindFreePrayerSitePos()
{
	MapCoords pos = Pos;
	float     dx = GUtils::GetXByAngle(((GCitadelInfo*)info.Get())->PrayerSiteAngle,
	                                   ((GCitadelInfo*)info.Get())->PrayerSiteDistance);
	pos.SetMetersX(dx + pos.MetersX());
	float dz = GUtils::GetZByAngle(((GCitadelInfo*)info.Get())->PrayerSiteAngle,
	                               ((GCitadelInfo*)info.Get())->PrayerSiteDistance);
	pos.SetMetersZ(dz + pos.MetersZ());
	int  attempts = CITADEL_PRAYER_SITE_SPIRAL_ATTEMPTS;
	long x = 1;
	long z = 1;
	while (attempts != 0 && pos.FindType(OBJECT_TYPE_PRAYER, NULL) != NULL)
	{
		attempts--;
		pos += *GUtils::Spiral(x, z);
	}
	return pos;
}

void Citadel::AddWorshipSite(WorshipSite* site)
{
	WorshipSites[site->Slot] = site;
	if (GetPlayer() != NULL)
	{
		LHListHead<Town>& towns = GetPlayer()->towns;
		FOREACH_LH_LIST_HEAD(Town, town, towns)
		{
			town->SetAverageGameTurnsToTravelToWorshipSite();
		}
	}
}

void Citadel::RemoveWorshipSite(WorshipSite* site)
{
	WorshipSites[site->Slot] = NULL;
}

bool32_t Citadel::IsObjectPartOfCitadel(GameThingWithPos* object)
{
	if (PartList.Find((CitadelPart*)object) != NULL || CreaturePenList.Find((CreaturePen*)object) != NULL ||
	    PrayerSiteList.Find((PrayerSite*)object) != NULL)
	{
		return true;
	}
	return false;
}

void Citadel::SetWorshipStrainSoundFrac(float frac)
{
	if (GetPlayer() == GGame::g_game->MyPlayer())
	{
		if (WorshipStrainSoundFrac != frac)
		{
			if (WorshipStrainSoundFrac > frac)
			{
				WorshipStrainSoundFrac -= GGameInfo::Info.MillisecondsPerGameTurn * MillisecondsToSeconds;
				WorshipStrainSoundFrac = max(WorshipStrainSoundFrac, frac);
			}
			else
			{
				WorshipStrainSoundFrac += GGameInfo::Info.MillisecondsPerGameTurn * MillisecondsToSeconds;
				WorshipStrainSoundFrac = min(WorshipStrainSoundFrac, frac);
			}
		}
	}
}

void Citadel::ProcessSpellIcons()
{
	float maxOverloaded = 0.0f;
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		WorshipSite* site = WorshipSites[i];
		if (site != NULL)
		{
			site->ProcessSpellIcons();
			maxOverloaded = max(site->Overloaded, maxOverloaded);
		}
	}
	SetWorshipStrainSoundFrac(maxOverloaded);
}

void Citadel::DrawSpellIcons()
{
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		if (WorshipSites[i] != NULL)
		{
			WorshipSites[i]->DrawSpellIcons();
		}
	}
}

WorshipSite* Citadel::GetNearestActiveWorshipSite(const MapCoords& coords, float t_max) const
{
	WorshipSite* nearest = NULL;
	for (int i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		WorshipSite* site = WorshipSites[i];
		if (site != NULL && site->GetNumberVillagersWorshipping() != 0)
		{
			MapCoords dancePos;
			site->GetDancePos(&dancePos);
			float distance = GUtils::GetDistanceInMetres(dancePos, coords);
			if (distance < t_max)
			{
				t_max = distance;
				nearest = site;
			}
		}
	}
	return nearest;
}

void Citadel::UpdateInfluence(float new_influence)
{
	influence = new_influence;
}

MapCoords Citadel::GetCreatureHomePos()
{
	return heart.Get()->GetCreatureHomePos();
}

void Citadel::CreateInsideVillagers()
{
	if (People != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			if (WorshipSites[i] != NULL)
			{
				for (LHLinkedNode<Villager*>* node = WorshipSites[i]->Worshippers.GetStart(); node != NULL;
				     node = node->next.Get())
				{
					People->AddPerson(node->payload);
				}
			}
		}
	}
}

void Citadel::DeleteInsideVillagers()
{
	if (People != NULL)
	{
		while (People->People != NULL)
		{
			People->RemovePerson(People->People->LivingThing);
		}
		People->People = NULL;
	}
}

SpellIcon* Citadel::FindSpellIcon(MAGIC_TYPE magic)
{
	for (uint32_t i = 0; i < MAX_WORSHIP_SITES; i++)
	{
		if (WorshipSites[i] != NULL)
		{
			WorshipSpellIcon* icon = WorshipSites[i]->GetSpellIconFromMagicType(magic);
			if (icon != NULL)
			{
				return icon;
			}
		}
	}
	return NULL;
}

bool32_t Citadel::Save(GameOSFile& file)
{
	if (Container::Save(file))
	{
		file.WritePtr(heart.Get());
		file.WritePtrArray((GameThing**)WorshipSites, MAX_WORSHIP_SITES);
		file.WriteSafe(PartList);
		file.WriteSafe(CreaturePenList);
		file.WriteSafe(PlannedPartList);
		file.WriteSafe(PrayerSiteList);
		file.WriteIt(influence);
		file.WriteIt(WorshipStrainSoundFrac);
		file.WriteIt(CannotBuildWorshipSite);
		return true;
	}
	return false;
}

bool32_t Citadel::Load(GameOSFile& file)
{
	if (Container::Load(file))
	{
		file.ReadPtr((GameThing**)&heart);
		file.ReadPtrArray((GameThing**)WorshipSites);
		file.ReadSafe(PartList);
		file.ReadSafe(CreaturePenList);
		file.ReadSafe(PlannedPartList);
		file.ReadSafe(PrayerSiteList);
		file.ReadIt(influence);
		file.ReadIt(WorshipStrainSoundFrac);
		file.ReadIt(CannotBuildWorshipSite);
		delete People;
		People = NEW(775) CPController;
		return true;
	}
	return false;
}

float Citadel::GetInfluence()
{
	return GGame::g_game->PlayerInfluenceMultiplier * influence;
}
