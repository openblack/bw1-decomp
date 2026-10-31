#include "CitadelPart.h"
#include "FootpathFinder.h"
#include "Game.h"
#include "Rand.h"
#include "WorshipSiteInfo.h"
#include "Town.h"
#include "GameTimeConstants.h"
#include "TimerConstants.h"

#include <math.h> /* For cos, fmod, log */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

static LHPoint ZeroPoint(0.0f, 0.0f, 0.0f);

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "MagicEffectInfo.h"

static float OneOverLogHalf = 1.0f / (float)log(0.5);

#include "PlannedWorshipSite.h"
#include "WorshipSite.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For __min */
#include <string.h> /* For strlen */

#include <Lionhead/LH3DLib/development/LH3DCitadel.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHLib/ver5.0/LHCollide.h> /* For class NewCollide */

#include "Abode.h"
#include "Artifact.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Dance.h"
#include "DanceInfo.h"
#include "InterfaceStatus.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GJUtils.h"
#include "FootpathLink.h"
#include "LandBalance.h"
#include "Landscape.h"
#include "Utils.h"
#include "Player.h"
#include "PhysicsObject.h"
#include "HelpProfile.h"
#include "Pot.h"
#include "PotInfo.h"
#include "PSysInterface.h"
#include "GameInfo.h"
#include "PSysProcessInfo.h"
#include "Setup.h"
#include "SpellIconInfo.h"
#include "SpellPointInf.h"
#include "ShowNeeds.h"
#include "SpellSeedInfo.h"
#include "StoragePit.h"
#include "Town.h"
#include "Villager.h"
#include "VillagerStateTableInfo.h"
#include "TownSpellIcon.h"
#include "TribeInfo.h"
#include "WorshipTotem.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\Worship.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\Worship.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\Worship.cpp"
#elif defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\Worship.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\Worship.cpp"
#endif

#if defined(VERSION_BW1W100)
#define WORSHIP_LINE(line) ((line) - ((line) > 242 ? 1 : 0))
#elif defined(VERSION_BW1WCI)
#define WORSHIP_LINE(line) ((line) + ((line) > 1390 ? 1 : 0))
#else
#define WORSHIP_LINE(line) (line)
#endif

#define SECONDS_PER_MILLISECOND         0.001f
#define WORSHIP_SITE_INFINITE_CHANTS    1000000.0f
#define WORSHIP_SITE_CENTRE_OFFSET_BACK 26.1f
#define WORSHIP_SITE_CENTRE_OFFSET_SIDE 12.55f
#define WORSHIP_SITE_REAL_RADIUS        14.0f

const float FoodPotYAngleOffset = 1.5f;
const float FoodPotScale = 0.7f;
const float FoodPosX = 9.0f;
const float FoodPosZ = -38.0f;
const float OverloadPulseMinSpeed = 5.0f;
const float OverloadPulseMaxSpeed = 10.0f;
float       CollideRadiusScale = 1.3f;

static uint32_t UnusedStatic = 0;

class SortVillagerOnNeedToGoHome : public Villager
{
public:
	bool operator<(SortVillagerOnNeedToGoHome& other) { return GetDesireForLife() > other.GetDesireForLife(); }
};

GWorshipSiteInfo GWorshipSiteInfo::Infos[WORSHIP_SITE_INFO_LAST];

float GWorshipSiteInfo::GetChantsToReserveForMaintaining() const
{
	return ChantsToReserveForMaintaining;
}

WorshipSite::WorshipSite(const MapCoords& coords, const GWorshipSiteInfo* info, Citadel* citadel, unsigned long slot,
                         const GTribeInfo* tribe_info, float y_angle, float scale, float percent_built,
                         bool32_t under_construction)
	: CitadelPart(coords, info, citadel, y_angle, scale, percent_built, under_construction)
{
	SetToZero();
	Slot = slot;
	this->tribe_info.Set(tribe_info);
	citadel->AddWorshipSite(this);
	CollideData = NULL;
}

WorshipSite::~WorshipSite() {}

void WorshipSite::ToBeDeleted(bool32_t delete_now)
{
	WorshipSpellIcon* icon;
	while ((icon = IconList.Get()) != NULL)
	{
		icon->ToBeDeleted(delete_now);
	}
	if (dance.Get() != NULL)
	{
		dance->ToBeDeleted(delete_now);
	}
	if (show_needs.Get() != NULL)
	{
		show_needs.Get()->ToBeDeleted(delete_now);
	}
	if (totem.Get() != NULL && totem->IsAvailable())
	{
		totem->Site = NULL;
		totem->ToBeDeleted(delete_now);
	}
	for (LHLinkedNode<Town*>* node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		node->payload->worship_site = NULL;
	}
	if (GetCitadel() != NULL)
	{
		GetCitadel()->RemoveWorshipSite(this);
	}
	Towns.RemoveAll();
	Artifacts.RemoveAll();
	if (FoodPot != NULL)
	{
		FoodPot->SetMultiMapFixed(NULL);
		FoodPot->ToBeDeleted(delete_now);
		FoodPot = NULL;
	}
	if (ManaPathPSys != NULL)
	{
		delete ManaPathPSys;
		ManaPathPSys = NULL;
	}
	CitadelPart::ToBeDeleted(delete_now);
}

bool32_t WorshipSite::Built()
{
	MultiMapFixed::Built();
	for (Town* town = GetPlayer()->towns.head; town != NULL; town = town->next)
	{
		if (town->GetBuildingSiteInList(this) != NULL)
		{
			town->RemoveBuildingSite(this);
		}
	}
	return true;
}

WorshipSite* WorshipSite::Create(const MapCoords& coords, const GWorshipSiteInfo* info, Citadel* citadel,
                                 const GTribeInfo* tribe_info, float y_angle, float scale, float percent_built,
                                 bool32_t under_construction)
{
	MapCoords pos;
	pos.SetWholeX(coords.WholeX());
	pos.SetWholeZ(coords.WholeZ());
	pos.SetAltitude(coords.Altitude());
	float         angle = y_angle;
	unsigned long slot = 0;
	info = &GWorshipSiteInfo::Infos[tribe_info - GTribeInfo::Infos];
	if (citadel != NULL)
	{
		if (citadel->FindNearestWorshipSitePosAngleAndSlotToPos(info, scale, pos, angle, slot) != true)
		{
			return NULL;
		}
		pos = citadel->Pos;
	}
	WorshipSite* site = new (FILEPATH, WORSHIP_LINE(190))
		WorshipSite(pos, info, citadel, slot, tribe_info, angle, scale, percent_built, under_construction);
	if (site != NULL)
	{
		site->CallVirtualFunctionsForCreation(pos);
		site->AssignTownsToWorshipSite();
		WorshipTotem* totem = WorshipTotem::Create(site);
		if (totem != NULL)
		{
			site->totem = totem;
			site->Init(slot);
		}
	}
	return site;
}

void WorshipSite::CreateFoodPot()
{
	float     yAngle = 0.0f;
	MapCoords pos = GetResourcePosAndYAngle(RESOURCE_TYPE_FOOD, -1, &yAngle);
	yAngle += FoodPotYAngleOffset;
	FoodPot = Pot::Create(pos, &GPotInfo::InfoList[POT_INFO_STORAGE_PIT_FOOD_PILE], 0, this, NULL, 0, yAngle, 1.0f, 0);
	if (FoodPot != NULL)
	{
		FoodPot->SetScale(FoodPotScale);
	}
}

void WorshipSite::RemovePotFromStructure(PotStructure* pot)
{
	if (pot == (PotStructure*)FoodPot)
	{
		FoodPot = NULL;
	}
#if !defined(VERSION_BW1W100)
	MultiMapFixed::RemovePotFromStructure(pot);
#endif
}

bool32_t WorshipSite::GetInspectObjectPos(Villager* villager, MapCoords* pos)
{
	*pos = CalculateCentrePos();
	return true;
}

void WorshipSite::SetToZero()
{
	OverloadPulsePhase = 0.0f;
	OverloadPulse = 0.0f;
	ManaPathPSys = NULL;
	Overloaded = 0.0f;
	FreeMaintenance = false;
	InfiniteChants = false;
	totem = NULL;
	field_0xcc = 0;
	NumWorshippers = 0;
	IsSupplyingChants = false;
	FoodPot = NULL;
	for (int type = RESOURCE_TYPE_FOOD; type < RESOURCE_TYPE_LAST; type++)
	{
		ResourcesOnTheWay[type] = 0;
	}
	CheatSpellSeed = 0;
	ChantDamage = 0.0f;
	ChantsRequested = 0.0f;
	ChantsUsed = 0.0f;
	TotalChantsAvailable = 0.0f;
	ChantStore = 0.0f;
	TotalSacrificeValue = 0.0f;
	CollideData = NULL;
}

void WorshipSite::Init(unsigned long slot)
{
	MapCoords pos;
	GetDancePos(&pos);
	dance = new (FILEPATH, WORSHIP_LINE(287))
		Dance(pos, &GDanceInfo::Infos[DANCE_INFO_CITADEL_DANCE_1 + slot], this, 0, 0, NULL);
	SetWorshipSpeed(WORSHIP_SITE_INITIAL_WORSHIP_SPEED);
	CreateFoodPot();
}

void WorshipSite::AssignTownsToWorshipSite()
{
	for (Town* town = GetPlayer()->towns.Get(); town != NULL; town = town->next)
	{
		if (town->GetTribe() == tribe_info.Get())
		{
			AddTown(town);
		}
	}
}

bool WorshipSite::GetIsSupplyingChants()
{
	return IsSupplyingChants;
}

MapCoords WorshipSite::GetSpellIconPosFromSlot(unsigned long slot, float extra_radius)
{
	MapCoords pos;
	GetSpecialPos(slot, &pos);
	if (extra_radius > 0.0f)
	{
		pos.altitude = 0.0f;
		float angle = GUtils::Get3DAngleFromXZ(Pos, pos);
		pos += GUtils::GetPosFromAngle(angle, extra_radius);
	}
	return pos;
}

void WorshipSite::ClearAllSpellIconsChantStores()
{
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		icon->ChantStore = 0.0f;
	}
}

MapCoords WorshipSite::GetSpellIconPos(int16_t& slot)
{
	MapCoords pos;
	float     extraRadius = 0.0f;
	for (;;)
	{
		for (unsigned long iconSlot = WORSHIP_SITE_SPECIAL_POS_FIRST_SPELL_ICON;
		     iconSlot <= WORSHIP_SITE_SPECIAL_POS_LAST_SPELL_ICON; iconSlot++)
		{
			pos = GetSpellIconPosFromSlot(iconSlot, extraRadius);
			WorshipSpellIcon* icon;
			for (icon = IconList.head; icon != NULL; icon = icon->next)
			{
				if (icon->Pos.IsCloseToEqual(pos, 1.0f))
				{
					break;
				}
			}
			if (icon == NULL)
			{
				slot = iconSlot;
				return pos;
			}
		}
		extraRadius += WORSHIP_SITE_SPELL_ICON_RING_SPACING;
		if (extraRadius > WORSHIP_SITE_SPELL_ICON_MAX_EXTRA_RADIUS)
		{
			slot = -1;
			return pos;
		}
	}
}

bool32_t WorshipSite::HasSpellIconForSeedType(SPELL_SEED_TYPE type)
{
	return GetSpellIconFromSeedType(type) != NULL;
}

WorshipSpellIcon* WorshipSite::GetSpellIconFromSeedType(SPELL_SEED_TYPE type)
{
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		if (icon->IsSpellSeed(type))
		{
			return icon;
		}
	}
	return NULL;
}

WorshipSpellIcon* WorshipSite::GetSpellIconFromMagicType(MAGIC_TYPE type)
{
	return GetSpellIconFromSeedType(GSpellSeedInfo::GetFirstSpellSeedForMagicType(type));
}

uint32_t WorshipSite::Process()
{
	if (ManaPathPSys != NULL)
	{
		PSysProcessInfo info;
		info.InterfacePosition.x = 0.0f;
		info.InterfacePosition.y = 0.0f;
		info.InterfacePosition.z = 0.0f;
		info.GesturePosition.x = 0.0f;
		info.GesturePosition.y = 0.0f;
		info.GesturePosition.z = 0.0f;
		info.CameraForwardUnitVector.x = 0.0f;
		info.CameraForwardUnitVector.y = 0.0f;
		info.CameraForwardUnitVector.z = 0.0f;
		info.HandVelocity.x = 0.0f;
		info.HandVelocity.y = 0.0f;
		info.HandVelocity.z = 0.0f;
		info.GestureAngularVelocity = 0.0f;
		info.Active = true;
		info.Strength = 1.0f;
		if (ManaPathPSys->Process(info, GGameInfo::Info.MillisecondsPerGameTurn) == 5)
		{
			delete ManaPathPSys;
			ManaPathPSys = NULL;
		}
	}
	if (FoodPot != NULL && FoodPot->IsAvailable() != true)
	{
		FoodPot = NULL;
	}
	show_needs.Get()->Process();
	return 1;
}

void WorshipSite::CreateManaPathSprite(const MapCoords& coords, float speed, GameThingWithPos* target)
{
	if (ManaPathPSys == NULL)
	{
		ManaPathPSys = PSysInterface::Create(NULL, PARTICLE_TYPE_MANA_PATH, LHPoint(0.0f, 0.0f, 0.0f),
		                                     LHPoint(0.0f, 0.0f, 0.0f), 1.0f, PSysInterface::NET_GAME_TYPE_0);
	}
	GPlayer* player = target->GetPlayer();
	ManaPathPSys->AddTarget(new (FILEPATH, WORSHIP_LINE(442)) SpellPointInf(
		coords.GetLHPoint(), speed, target->Pos.GetLHPoint(), player != NULL ? player->GetPlayerColour() : 0));
}

void WorshipSite::DrawSpellIcons()
{
	if (Overloaded > 0.0f)
	{
		float overload = boundf(0.0f, GetOverloadedValue(), 1.0f);
		OverloadPulsePhase = fmod(GJUtils::Linterp(OverloadPulseMinSpeed, OverloadPulseMaxSpeed, overload) *
		                                  LH3DTech::GetGameTimeInc() * SECONDS_PER_MILLISECOND +
		                              OverloadPulsePhase,
		                          TWO_PI);
		OverloadPulse = ((float)cos(OverloadPulsePhase) + 1.0f) * 0.5f;
	}
	if (ManaPathPSys != NULL)
	{
		ManaPathPSys->SetAlpha(Overloaded > 0.0f ? OverloadPulse * WORSHIP_SITE_MANA_PATH_MAX_ALPHA
		                                         : WORSHIP_SITE_MANA_PATH_MAX_ALPHA);
		ManaPathPSys->Draw(true);
	}
}

bool WorshipSite::IsWorshipSiteOverloaded()
{
	return Overloaded > 0.0f;
}

void WorshipSite::ProcessSpellIcons()
{
	float produced = GetChantsVillagerCanSupply();
	if (produced != 0.0f)
	{
		Overloaded = (ChantsRequested - produced) / produced;
	}
	else if (ChantsRequested != 0.0f)
	{
		Overloaded = 1.0f;
	}
	else
	{
		Overloaded = 0.0f;
	}
	if (Overloaded <= 0.0f)
	{
		float needed = 0.0f;
		float charging = 0.0f;
		IsSupplyingChants = false;
		bool              keepReserve = false;
		WorshipSpellIcon* icon;
		for (icon = IconList.head; icon != NULL; icon = icon->next)
		{
			if (icon->IsCharging(NULL) && icon->GetChantNeededForSpellSeed() > 0.0f)
			{
				charging += 1.0f;
				needed += icon->GetChantNeededForSpellSeed();
			}
			if (icon->GetCreatedSpellList().Get() != NULL)
			{
				keepReserve = true;
			}
		}
		if (charging != 0.0f)
		{
			float share = min(GetChantsAvailableForCharging(keepReserve), needed) / charging;
			if (share != 0.0f)
			{
				for (icon = IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->IsCharging(NULL) && icon->GetChantNeededForSpellSeed() > 0.0f)
					{
						float added = icon->AddToChantStore(share);
						UseCreateChants(added);
						IsSupplyingChants = true;
					}
				}
			}
		}
	}
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		icon->Process();
	}
	ProcessChantsAvailable();
}

void WorshipSite::ProcessChantsAvailable()
{
	float speed = 1.0f;
	float supply = GetChantsVillagerCanSupply();
	if (supply != 0.0f)
	{
		speed = ChantsUsed / supply;
	}
	else
	{
		speed = 1.0f;
	}
	float boost =
		WORSHIP_SITE_BATTERY_SPEED_BOOST - ChantStore / GetChantBatteryMax() * WORSHIP_SITE_BATTERY_SPEED_BOOST;
	boost = boost > 0.0f ? (boost < WORSHIP_SITE_MIN_BATTERY_SPEED_BOOST ? WORSHIP_SITE_MIN_BATTERY_SPEED_BOOST : boost)
	                     : 0.0f;
	speed += boost;
	if (speed >= 1.0f)
	{
		speed = 1.0f;
	}
	SetWorshipSpeed(speed);
	float chants = supply * speed;
	float worshippers = (float)GetNumberVillagersWorshipping();
	if (GGame::g_game->data.GameTurn % WORSHIP_SITE_ARTIFACT_POWERUP_INTERVAL == 0)
	{
		float powerup = GLandBalance::GetValue(GLandBalance::LAND_BALANCE_6) * GetInfo()->ArtifactPowerupMultiplier;
		float population = GetPlayer() != NULL ? (float)GetPlayer()->GetTotalPopulation() : 0.0f;
		float fraction = 0.0f;
		if (population > 0.0f)
		{
			fraction = worshippers / population;
		}
		powerup *= fraction;
		if (powerup != 0.0f)
		{
			for (LHLinkedNode<TownArtifact*>* node = Artifacts.GetStart(); node != NULL; node = node->next.Get())
			{
				if (node->payload->Artifact != NULL)
				{
					node->payload->AddToValue(powerup);
				}
			}
		}
	}
	ChantDamage = worshippers != 0.0f ? chants / worshippers : 0.0f;
	float store = ChantStore - (ChantsUsed - chants);
	if (store <= 0.0f)
	{
		store = 0.0f;
	}
	ChantStore = store;
	TotalChantsAvailable = store + supply;
	ChantsUsed = 0.0f;
	ChantsRequested = 0.0f;
}

void WorshipSite::UpdateGraphicsWithPULevels()
{
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		icon->UpdateGraphicsWithPULevels();
	}
}

bool32_t WorshipSite::IsGraphicsUpdatePending()
{
	return false;
}

void WorshipSite::SetWorshipSpeed(float speed)
{
	if (dance.Get() != NULL)
	{
		if (speed <= 0.0f)
		{
			if (dance->State == DANCE_STATE_DANCING)
			{
				dance->SetState(DANCE_STATE_WAITING);
			}
		}
		else if (dance->State == DANCE_STATE_WAITING)
		{
			dance->SetState(DANCE_STATE_DANCING);
		}
		dance->SetWorshipSpeed(speed);
	}
}

int WorshipSite::CalculateFoodNeededFromTown()
{
	int      food = (int)dance->CalculateFoodNeededByDancers();
	uint32_t stored = GetResource(RESOURCE_TYPE_FOOD);
	food -= ResourcesOnTheWay[RESOURCE_TYPE_FOOD] + stored;
	if (food < 0)
	{
		food = 0;
	}
	return food;
}

unsigned long WorshipSite::GetNumberVillagersWorshipping()
{
	return GetNumDancers();
}

void WorshipSite::UpdateDebugText(bool32_t verbose) {}

bool32_t WorshipSite::IsDanceRequested()
{
	return false;
}

float WorshipSite::GetDanceProgress()
{
	return 0.0f;
}

#ifndef VERSION_BW1W100
bool32_t WorshipSite::ValidateDance()
{
	dance->ValidateDancers(this);
	DanceValidatedTurn = GGame::g_game->data.GameTurn;
	return true;
}
#endif // VERSION_BW1W100

static inline void SetPositionOnLand(LH3DObject* object, const MapCoords& coords, float y_angle, float scale)
{
	LHPoint point;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(coords, point);
	point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(coords, (unsigned long*)&object->color,
	                                                      (unsigned long*)&object->specular);
	object->LH3DObject::SetPosition(point, y_angle, scale);
}

void WorshipSite::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	if (GetCitadel()->GetCitadelHeart()->Game3dObject == NULL)
	{
		GetCitadel()->GetCitadelHeart()->CallVirtualFunctionsForCreation(coords);
	}
	LH3DMesh* mesh = ((LH3DCitadel*)GetCitadel()->GetCitadelHeart()->Game3dObject)->CitadelMesh;
	Create3DObject();
	Game3dObject->SetMesh(mesh, NULL, NULL);
	SetPositionOnLand(Game3dObject, coords, GetYAngle(), GetScale());
	InitialiseIsFixedForMapList();
	AllocateMultiChild();
	if (!IsInMagicHand() && !IsUnavailableOrFlying())
	{
		InsertMapObject();
	}
	Game3dObject->UpdateMelting();
	mesh = Game3dObject->GetMesh();
	mesh->flags |= LH3D_MESH_FLAGS_UNKNOWN_15;
	Game3dObject->SetFootPrintOnTexture(true);
	Game3dObject->SetShadowOnTexture(true);
	Game3dObject->SetCastDynamicShadow(true);
}

float WorshipSite::UseChants(float amount)
{
	if (amount < 0.0f)
	{
		return 0.0f;
	}
	float used = amount;
	ChantsRequested += amount;
	if (GetChantsAvailable() < amount)
	{
		used = GetChantsAvailable();
		ChantsUsed = TotalChantsAvailable;
	}
	else
	{
		ChantsUsed += amount;
	}
	GetPlayer()->game_stats->TotalChantsUsed += used;
	return used;
}

float WorshipSite::MaintainSpell(float amount)
{
	if (FreeMaintenance)
	{
		return amount;
	}
	return UseChants(amount);
}

void WorshipSite::Cheat(int add_spell_icons)
{
	InfiniteChants = true;
	FreeMaintenance = true;
	if (add_spell_icons)
	{
		IconList.ToBeDeletedEach();
		IconList.RemoveAll();
		for (int i = 0; i < WORSHIP_SITE_CHEAT_SPELL_ICONS; i++)
		{
			CheatSpellSeed %= SPELL_SEED_TYPE_LAST;
			while (!GSpellSeedInfo::Infos[CheatSpellSeed].Enabled)
			{
				CheatSpellSeed = (CheatSpellSeed + 1) % SPELL_SEED_TYPE_LAST;
			}
			AddSpellIconIfNecessary((SPELL_SEED_TYPE)CheatSpellSeed);
			CheatSpellSeed++;
		}
	}
}

float WorshipSite::GetAngleFromCitadel()
{
	return GetCitadel()->GetWorshipSiteAngle(Slot);
}

uint32_t WorshipSite::GetResource(RESOURCE_TYPE type)
{
	if (type == RESOURCE_TYPE_FOOD && FoodPot != NULL)
	{
		return FoodPot->JustGetResource(RESOURCE_TYPE_FOOD, 0, NULL);
	}
	return 0;
}

uint32_t WorshipSite::GetFood()
{
	GetFoodPot();
	return GetResource(RESOURCE_TYPE_FOOD);
}

bool32_t WorshipSite::IsBuilt()
{
	if (UnderConstruction || GetPercentBuilt() < 1.0f)
	{
		return false;
	}
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
	}
	return true;
}

MultiMapFixed* WorshipSite::GetBuildingObjectForSpellIcon()
{
	uint32_t       random = GRand::GameRand(WORSHIP_SITE_SPELL_ICON_BUILD_RANDOM_RANGE, FILEPATH, WORSHIP_LINE(1013));
	MultiMapFixed* building = this;
	float          lowest = GetPercentBuilt();
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		float percent = icon->GetPercentBuilt();
		if (icon->GetPercentBuilt() <= lowest &&
		    (percent != lowest || random <= WORSHIP_SITE_SPELL_ICON_BUILD_TIE_CHANCE))
		{
			lowest = percent;
			building = icon;
		}
	}
	return building;
}

PlannedWorshipSite::PlannedWorshipSite(const MapCoords& coords, const GCitadelPartInfo* info, TRIBE_TYPE tribe,
                                       Citadel* citadel, float y_angle, float scale)
	: PlannedCitadelPart(coords, info, citadel, y_angle, scale)
{
	Tribe = tribe;
}

bool32_t PlannedWorshipSite::Save(GameOSFile& file)
{
	if (PlannedCitadelPart::Save(file))
	{
		file.WriteIt(Tribe);
		return true;
	}
	return false;
}

bool32_t PlannedWorshipSite::Load(GameOSFile& file)
{
	if (PlannedCitadelPart::Load(file))
	{
		file.ReadIt(Tribe);
		return true;
	}
	return false;
}

PlannedMultiMapFixed* WorshipSite::ConvertToPlanned()
{
	PlannedWorshipSite* planned = new (FILEPATH, WORSHIP_LINE(1069))
		PlannedWorshipSite(Pos, GetInfo(), GetTribe()->type, GetCitadel(), GetYAngle(), GetScale());
	if (planned != NULL)
	{
		ToBeDeleted(false);
	}
	return planned;
}

MultiMapFixed* PlannedWorshipSite::CreatePlanned(float percent_built)
{
	Citadel* owner = citadel.Get();
	float    yAngle = YAngle;
	if (((const GCitadelPartInfo*)info.Get())->IsOkToCreateAtPos(Pos, yAngle, GetScale(), owner))
	{
		float angle = YAngle;
		return WorshipSite::Create(Pos, (const GWorshipSiteInfo*)info.Get(), citadel.Get(), &GTribeInfo::Infos[Tribe],
		                           angle, GetScale(), percent_built, true);
	}
	return NULL;
}

float WorshipSite::GetWorshipSpeed()
{
	if (dance.Get() == NULL)
	{
		return 0.0f;
	}
	return dance->WorshipSpeed;
}

uint32_t WorshipSite::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords pos;
		GetGatePos(&pos);
		MapCoords relative = (coords != NULL) ? (pos - *coords) : pos;
		float     scale = GetScale();
		if ((UnderConstruction ^ 1) && IsBuilt())
		{
			float yAngle = GetYAngle();
			char* playerName = GPlayer::PlayerNameText[GetPlayer()->GetPlayerNumber()];
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_WORSHIP_SITE),
			        relative.ConvertToText(coordText), GetInfo() - GWorshipSiteInfo::Infos, playerName,
			        GTribeInfo::TribeTextArray[GetTribeType()], (int)(yAngle * WORSHIP_SITE_SCRIPT_SCALE),
			        (int)(scale * WORSHIP_SITE_SCRIPT_SCALE));
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		MultiMapFixed::SaveObject(file, coords);
	}
	return saved;
}

WorshipSpellIcon* WorshipSite::GetSpellIconFromSpellSeedInfo(const GSpellSeedInfo* seed_info)
{
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		if (icon->seed_info.Get() == seed_info)
		{
			return icon;
		}
	}
	return NULL;
}

TRIBE_TYPE WorshipSite::GetTribeType() const
{
	return tribe_info.Get()->type;
}

#ifndef VERSION_BW1W100
float WorshipSite::GetTotemMaxSinkDepth()
{
	if (totem.Get() != NULL)
	{
		return totem->GetMaxSinkDepth();
	}
	return 0.0f;
}
#endif // VERSION_BW1W100

float WorshipSite::CalculateDesireForFood()
{
	float needed = dance->CalculateFoodNeededByDancers();
	float desire =
		(GetResource(RESOURCE_TYPE_FOOD) + WORSHIP_SITE_DESIRE_EPSILON) / (needed + WORSHIP_SITE_DESIRE_EPSILON);
	return 1.0f - (desire < 1.0f ? desire : 1.0f);
}

float WorshipSite::CalculateDesireForWood()
{
	return 0.0f;
}

float WorshipSite::CalculateDesireForRest()
{
	if (dance.Get() == NULL)
	{
		return 0.0f;
	}
	if (dance->CalculateAverageLifeDesiredByDancers() > 1.0f)
	{
		return 1.0f;
	}
	return dance->CalculateAverageLifeDesiredByDancers();
}

float WorshipSite::CalculatePeopleHidingIndicator()
{
	if (dance.Get() == NULL)
	{
		return 0.0f;
	}
	uint32_t hiding = NumWorshippers - dance->NumDancers;
	return __min(1.0f, hiding / WORSHIP_SITE_HIDING_VILLAGERS_FOR_FULL_INDICATOR);
}

void WorshipSite::AddSpellIcon(WorshipSpellIcon* icon)
{
	IconList.AddToFirst(icon);
}

void WorshipSite::RemoveSpellIcon(WorshipSpellIcon* icon)
{
	IconList.Remove(icon);
}

void WorshipSite::AddToFoodOnTheWay(unsigned long amount)
{
	ResourcesOnTheWay[RESOURCE_TYPE_FOOD] += amount;
}

void WorshipSite::RemoveFromFoodOnTheWay(unsigned long amount)
{
	ResourcesOnTheWay[RESOURCE_TYPE_FOOD] -= amount;
}

uint32_t WorshipSite::GetFoodForWorshipSiteFromTowns()
{
	uint32_t food = 0;
	for (LHLinkedNode<Town*>* node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		food += node->payload->GetFoodForWorshipSiteIfEnough();
	}
	return food;
}

int WorshipSite::CalculateActualAmountOfFoodInTowns()
{
	int food = 0;
	for (LHLinkedNode<Town*>* node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		food += node->payload->CalculateActualAmountOfFood();
	}
	return food;
}

MapCoords WorshipSite::GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->GetResourcePosAndYAngle(RESOURCE_TYPE_WOOD, 0, y_angle);
	}
	MapCoords pos;
	GetFoodPosAndYAngle(&pos, y_angle);
	return pos;
}

MapCoords WorshipSite::GetResourcePos(RESOURCE_TYPE type, long index)
{
	return GetResourcePosAndYAngle(type, index, NULL);
}

uint32_t WorshipSite::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                                  const MapCoords* coords, int from_other_player)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->AddResource(type, amount, status, poisoned, NULL, 0);
	}
	if (type == RESOURCE_TYPE_FOOD)
	{
		if (FoodPot == NULL)
		{
			CreateFoodPot();
		}
		return FoodPot->JustAddResource(RESOURCE_TYPE_FOOD, amount, poisoned);
	}
	return 0;
}

uint32_t WorshipSite::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->RemoveResource(type, amount, status, poisoned);
	}
	if (type == RESOURCE_TYPE_FOOD && FoodPot != NULL)
	{
		return FoodPot->JustRemoveResource(RESOURCE_TYPE_FOOD, amount, NULL);
	}
	return 0;
}

MapCoords WorshipSite::GetResourceNearestEdge(RESOURCE_TYPE type, Object* object, int index)
{
	if (FoodPot == NULL)
	{
		MapCoords pos;
		GetFoodPos(&pos);
		return pos;
	}
	return FoodPot->GetNearestEdgeOfObject(object);
}

#ifndef VERSION_BW1W100
void WorshipSite::SetTotemPos(const MapCoords& pos)
{
	WorshipTotem* site_totem = totem.Get();
	if (site_totem != NULL)
	{
		site_totem->Pos = pos;
		site_totem->SetWorshipSpeedFromSink();
	}
}
#endif // VERSION_BW1W100

uint32_t WorshipSite::GetTribeValue()
{
	return tribe_info.Get()->Value;
}

bool32_t WorshipSite::IsSpellIconInList(WorshipSpellIcon* icon)
{
	WorshipSpellIcon* item;
	for (item = IconList.head; item != NULL; item = item->next)
	{
		if (item == icon)
		{
			break;
		}
	}
	return item != NULL;
}

int WorshipSite::GetSpellIconIndex(WorshipSpellIcon* icon)
{
	int               index = 0;
	WorshipSpellIcon* item;
	for (item = IconList.head; item != NULL; item = item->next, index++)
	{
		if (item == icon)
		{
			break;
		}
	}
	if (item == NULL)
	{
		index = -1;
	}
	return index > 0 ? index : 0;
}

void WorshipSite::AddTown(Town* town)
{
	town->SetWorshipSite(this);
	StoragePit* storagePit = town->GetStoragePitEvenIfPlanned();
	if (storagePit != NULL)
	{
		if (GetFootpathLink() == NULL)
		{
			FootpathLink = new (FILEPATH, WORSHIP_LINE(1386)) GFootpathLink();
		}
		int pathIndex;
		if (GetFootpathLink()->GetNearestPathToQuick(storagePit->GetArrivePos(), GetArrivePos(),
		                                             WORSHIP_SITE_FOOTPATH_MAX_DISTANCE, pathIndex, NULL) == NULL)
		{
			new (FILEPATH, WORSHIP_LINE(1390)) GFootpathFinder(storagePit, this);
		}
	}
	AddTownSpells(town);
	Towns.Add(town);
}

void WorshipSite::AddTownSpells(Town* town)
{
	for (TownSpellIcon* icon = town->GetNextSpellIcon(NULL); icon != NULL; icon = town->GetNextSpellIcon(icon))
	{
		AddSpellIconIfNecessary(icon->GetSpellSeedType());
	}
}

void WorshipSite::RemoveTown(Town* town)
{
	Towns.Remove(town);
	for (TownSpellIcon* icon = town->GetNextSpellIcon(NULL); icon != NULL; icon = town->GetNextSpellIcon(icon))
	{
		RemoveSpellIconIfNecessary(icon->GetSpellSeedType(), 0);
	}
	town->worship_site = NULL;
}

void WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE type)
{
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		if (icon->IsSpellSeed(type))
		{
			WorshipSpellIcon* worshipIcon = dynamic_cast<WorshipSpellIcon*>(icon);
			if (worshipIcon != NULL)
			{
				if (worshipIcon->RemoveCountdown != 0)
				{
					worshipIcon->StopRemoveFromPlayer();
				}
				return;
			}
		}
	}
	int16_t   slot = -1;
	MapCoords pos = GetSpellIconPos(slot);
	WorshipSpellIcon::Create(pos, &GSpellIconInfo::Infos[SPELL_ICON_INFO_BASIC], &GSpellSeedInfo::Infos[type], this,
	                         slot, 1.0f, UnderConstruction);
}

void WorshipSite::RemoveSpellIconIfNecessary(SPELL_SEED_TYPE type, int)
{
	for (LHLinkedNode<Town*>* node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->IsSpellIconPresent(type))
		{
			return;
		}
	}
	WorshipSpellIcon* next;
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = next)
	{
		next = icon->next;
		if (icon->IsSpellSeed(type))
		{
			WorshipSpellIcon* worshipIcon = dynamic_cast<WorshipSpellIcon*>(icon);
			if (worshipIcon != NULL)
			{
				worshipIcon->ToBeDeleted(false);
			}
		}
	}
}

float WorshipSite::GetChantsAvailableForVirtualInfluence()
{
	float available = GetChantsAvailable();
	if (available != 0.0f)
	{
		available -= GetInfo()->GetChantsToReserveForMaintaining();
		if (GetChantsVillagerCanSupply() - ChantsUsed <= available)
		{
			available = GetChantsVillagerCanSupply() - ChantsUsed;
		}
		if (0.0f > available)
		{
			available = 0.0f;
		}
		return available / GetPlayer()->GetNumberOfInterfaces();
	}
	return available;
}

float WorshipSite::GetChantsAvailableForCharging(bool keep_reserve)
{
	float available = GetChantsAvailable();
	if (keep_reserve)
	{
		float reserved = available - GetInfo()->GetChantsToReserveForMaintaining();
		return max(0.0f, reserved);
	}
	return available;
}

float WorshipSite::GetChantsAvailable()
{
	if (InfiniteChants)
	{
		return WORSHIP_SITE_INFINITE_CHANTS;
	}
	return TotalChantsAvailable - ChantsUsed;
}

float WorshipSite::GetTotalChantsAvailable()
{
	if (InfiniteChants)
	{
		return WORSHIP_SITE_INFINITE_CHANTS;
	}
	return TotalChantsAvailable;
}

float WorshipSite::UseCreateChants(float amount)
{
	if (InfiniteChants)
	{
		return amount;
	}
	return UseChants(amount);
}

Pot* WorshipSite::GetFoodPot()
{
	return FoodPot;
}

void WorshipSite::ResetSpecialPositions() {}

bool32_t WorshipSite::GetSpecialPos(uint32_t index, MapCoords* pos)
{
	if (Game3dObject != NULL)
	{
		LHPoint point;
		Game3dObject->GetSpecialPos(index, point);
		float altitude = point.y - LH3DIsland::GetAltitude(LH3DMapCoords(point.x, point.z));
		pos->SetWholeX((long)(point.x * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
		pos->SetWholeZ((long)(point.z * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
		pos->SetAltitude(altitude);
		return true;
	}
	*pos = Pos;
	return false;
}

bool32_t WorshipSite::GetTotemSpecialPos(MapCoords* pos)
{
	return GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_TOTEM, pos);
}

uint32_t WorshipSite::GetShowNeedsPos(uint32_t index, MapCoords* pos)
{
	return GetSpecialPos(index, pos);
}

void WorshipSite::GetDancePos(MapCoords* pos)
{
	GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_TOTEM, pos);
}

bool32_t WorshipSite::GetFoodPosAndYAngle(MapCoords* pos, float* y_angle)
{
	LHPoint point(FoodPosX, 0.0f, FoodPosZ);
	Game3dObject->matrix.TransformPoint(point);
	MapCoords coords(point);
	pos->Set(coords);
	if (y_angle != NULL)
	{
		*y_angle = GetYAngle();
	}
	return true;
}

void WorshipSite::GetFoodPos(MapCoords* pos)
{
	GetFoodPosAndYAngle(pos, NULL);
}

void WorshipSite::GetRestPos(MapCoords* pos)
{
	GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_REST, pos);
}

bool32_t WorshipSite::GetTotemArrivePos(MapCoords* pos)
{
	return GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_TOTEM, pos);
}

bool32_t WorshipSite::GetGatePos(MapCoords* pos)
{
	return GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_GATE, pos);
}

MapCoords WorshipSite::GetArrivePos()
{
	MapCoords pos;
	if (GetGatePos(&pos) != true)
	{
		pos.Set(Pos);
	}
	return pos;
}

MapCoords WorshipSite::GetTotemPos()
{
	MapCoords pos;
	GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_TOTEM, &pos);
	return pos;
}

MapCoords WorshipSite::GetFoodDrop()
{
	MapCoords pos;
	GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_FOOD_DROP, &pos);
	return pos;
}

unsigned long WorshipSite::GetNumDancers()
{
	if (dance.Get() == NULL)
	{
		return 0;
	}
	return dance->NumDancers;
}

void WorshipSite::StartDanceEffects() {}

void WorshipSite::StopDanceEffects() {}

void WorshipSite::UpdateDanceEffects() {}

uint32_t WorshipSite::GetObjectCollide()
{
	if (GetCitadel() != NULL)
	{
		return GetCitadel()->GetCitadelHeart()->GetObjectCollide();
	}
	return 0;
}

void WorshipSite::UpdateFrom3DPosition() {}

void WorshipSite::AddVillagerToWorshipCount(Villager* villager)
{
	if (Worshippers.IsThisInList(villager))
	{
		return;
	}
	Worshippers.Add(villager);
	NumWorshippers++;
}

void WorshipSite::RemoveVillagerFromWorshipCount(Villager* villager)
{
	if (NumWorshippers != 0)
	{
		Worshippers.Remove(villager);
		NumWorshippers--;
	}
}

bool32_t WorshipSite::IsVillagerInWorshipList(Villager* villager)
{
	return Worshippers.IsThisInList(villager);
}

void WorshipSite::ValidateWorshippers()
{
	for (LHLinkedNode<Villager*>* node = Worshippers.GetStart(); node != NULL; node = node->next.Get())
	{
		Villager* villager = node->payload;
		villager->GetTopState();
		villager->IsAvailable();
	}
}

void Town::ValidateWorshippingVillagers()
{
	for (LHLinkedNode<Villager*>* node = VillagersOnWayToWorshipSite.GetStart(); node != NULL; node = node->next.Get())
	{
		node->payload->IsAvailable();
	}
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
		{
			bool worshipping = false;
			for (uint32_t i = LIVING_ACTION_INDEX_TOP; i <= LIVING_ACTION_INDEX_FINAL; i++)
			{
				int state = villager->action.states[i];
				switch (state)
				{
				case VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP:
					worshipping = true;
					break;
				case VILLAGER_STATE_WORSHIPPING_AT_WORSHIP_SITE:
				case VILLAGER_STATE_HIDING_AT_WORSHIP_SITE:
					villager->GetWorshipSite();
					worshipping = true;
					break;
				case VILLAGER_STATE_MOVE_AROUND_FIRE:
					if (villager->action.states[LIVING_ACTION_INDEX_PREVIOUS] ==
					    VILLAGER_STATE_ARRIVES_AT_WORSHIP_SITE_FOR_WORSHIP)
					{
						worshipping = true;
					}
					break;
				}
				if (GVillagerStateTableInfo::Infos[state].isFinalState)
				{
					break;
				}
			}
			if (!worshipping)
			{
				villager->GetWorshipSite();
			}
		}
	}
}

SCRIPT_OBJECT_TYPE WorshipSite::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_WORSHIP_SITE;
}

bool32_t WorshipSite::Save(GameOSFile& file)
{
	if (CitadelPart::Save(file))
	{
		file.WriteInfo(tribe_info.Get());
		file.WritePtr(show_needs.Get());
		file.WritePtr(dance.Get());
		file.WriteSafe(Towns);
		file.WritePtr(FoodPot);
		file.WriteIt(DanceValidatedTurn);
		file.WriteIt(field_0xc0);
		file.WriteSafe(field_0xc4);
		file.WriteIt(NumWorshippers);
		file.WriteIt(field_0xcc);
		file.WriteIt(CheatSpellSeed);
		file.WriteSafe(Worshippers);
		file.WriteSafe(IconList);
		file.WriteArray(ResourcesOnTheWay, RESOURCE_TYPE_LAST);
		file.WriteIt(ChantStore);
		file.WriteIt(TotalSacrificeValue);
		file.WriteIt(TotalChantsAvailable);
		file.WriteIt(ChantsUsed);
		file.WriteIt(ChantsRequested);
		file.WriteIt(ChantDamage);
		file.WriteIt(InfiniteChants);
		file.WriteIt(FreeMaintenance);
		file.WriteIt(Slot);
		file.WriteIt(IsSupplyingChants);
		file.WriteSafe(VillagersRequestingToGoHome);
		file.WritePtr(totem.Get());
		file.WriteIt(Overloaded);
		file.WritePtr(ManaPathPSys);
		file.WriteIt(OverloadPulsePhase);
		file.WriteIt(OverloadPulse);
		return true;
	}
	return false;
}

bool32_t WorshipSite::Load(GameOSFile& file)
{
	if (CitadelPart::Load(file))
	{
		file.ReadInfo((const GBaseInfo**)&tribe_info);
		file.ReadPtr((GameThing**)&show_needs);
		file.ReadPtr((GameThing**)&dance);
		file.ReadSafe(Towns);
		file.ReadPtr((GameThing**)&FoodPot);
		file.ReadIt(DanceValidatedTurn);
		file.ReadIt(field_0xc0);
		file.ReadIt(field_0xc4);
		file.ReadIt(NumWorshippers);
		file.ReadIt(field_0xcc);
		file.ReadIt(CheatSpellSeed);
		file.ReadSafe(Worshippers);
		file.ReadSafe(IconList);
		file.ReadArray(ResourcesOnTheWay);
		file.ReadIt(ChantStore);
		file.ReadIt(TotalSacrificeValue);
		file.ReadIt(TotalChantsAvailable);
		file.ReadIt(ChantsUsed);
		file.ReadIt(ChantsRequested);
		file.ReadIt(ChantDamage);
		file.ReadIt(InfiniteChants);
		file.ReadIt(FreeMaintenance);
		file.ReadIt(Slot);
		file.ReadIt(IsSupplyingChants);
		file.ReadSafe(VillagersRequestingToGoHome);
		file.ReadPtr((GameThing**)&totem);
		file.ReadIt(Overloaded);
		file.ReadPtr((GameThing**)&ManaPathPSys);
		file.ReadIt(OverloadPulsePhase);
		file.ReadIt(OverloadPulse);
		return true;
	}
	return false;
}

void WorshipSite::ResolveLoad()
{
	Object::ResolveLoad();
#if defined(VERSION_BW1WCI)
	CreatureIsleVirtual0x108();
#endif
}

void WorshipSite::AddArtifact(Fixed* artifact, GPlayer* player)
{
	TownArtifact* townArtifact = (TownArtifact*)artifact->GetTownArtifact();
	if (townArtifact == NULL)
	{
		townArtifact = new (FILEPATH, WORSHIP_LINE(2092)) TownArtifact(artifact, this, player);
		artifact->town_artifact = townArtifact;
	}
	if (!Artifacts.IsThisInList(townArtifact))
	{
		Artifacts.Add(townArtifact);
	}
	townArtifact->Site = this;
	if (player != NULL && artifact != NULL)
	{
		player->ConsiderMakingCreatureMimicPlayer(artifact->GetInterfaceStatusWhoLastDroppedMe(),
		                                          DETECTED_PLAYER_ACTION_MAKE_ARTEFACT, artifact, MAGIC_TYPE_NONE);
	}
}

TownArtifact* WorshipSite::RemoveArtifact(Fixed* artifact)
{
	TownArtifact* townArtifact = FindArtifact(artifact);
	if (townArtifact != NULL)
	{
		Artifacts.Remove(townArtifact);
		return townArtifact;
	}
	return NULL;
}

TownArtifact* WorshipSite::FindArtifact(Fixed* artifact)
{
	for (LHLinkedNode<TownArtifact*>* node = Artifacts.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->Artifact == artifact)
		{
			return node->payload;
		}
	}
	return NULL;
}

void WorshipSite::BuildBy(float amount)
{
	MultiMapFixed::BuildBy(amount);
	if (totem.Get() != NULL && totem->IsAvailable())
	{
		totem->BuildBy(amount);
	}
}

LHPoint WorshipSite::GetNearestEdgeOfObject(Object* object)
{
	float   angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	float   radius = object->Get2DRadius();
	LHPoint edge;
	GLandscape::ConvertMapCoordToLandscapePoint(
		CalculateCentrePos() + GUtils::GetPosFromAngle(angle, GetRealRadius() + radius), edge);
	return edge;
}

MapCoords WorshipSite::CalculateCentrePos()
{
	LHPoint offset(WORSHIP_SITE_CENTRE_OFFSET_SIDE, 0.0f, -WORSHIP_SITE_CENTRE_OFFSET_BACK);
	Game3dObject->matrix.TransformPoint(offset);
	return MapCoords(offset);
}

float WorshipSite::GetRealRadius()
{
	return WORSHIP_SITE_REAL_RADIUS;
}

void WorshipSite::GetDefaultFireCentrePos(MapCoords* pos)
{
	*pos = CalculateCentrePos();
}

float WorshipSite::GetDefaultFireRadius()
{
	return GetRealRadius();
}

float WorshipSite::GetDistanceFromObject(Object* object)
{
	float distance = GUtils::GetDistanceInMetres(CalculateCentrePos(), object->Pos);
	float radius = object->Get2DRadius();
	return distance - (GetRealRadius() + radius);
}

uint32_t WorshipSite::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	uint32_t state = MultiMapFixed::GetDiscipleStateIfInteractedWith(status, villager);
	if (state != VILLAGER_DISCIPLE_BUILDER && villager->GetTown() != NULL &&
	    villager->GetTown()->GetWorshipSite() == this)
	{
		return VILLAGER_DISCIPLE_WORSHIP;
	}
	return state;
}

bool32_t WorshipSite::IsResourceStore(RESOURCE_TYPE type)
{
	if (MultiMapFixed::IsResourceStore(type) || type == RESOURCE_TYPE_FOOD || type == RESOURCE_TYPE_ANY)
	{
		return true;
	}
	return false;
}

bool32_t WorshipSite::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status)
{
	if (MultiMapFixed::DoCreatureMimicAfterAddingResource(type, status) == false)
	{
		if (type == RESOURCE_TYPE_FOOD)
		{
			status.GetPlayer()->ConsiderMakingCreatureMimicPlayer(
				&status, DETECTED_PLAYER_ACTION_PUT_FOOD_IN_WORSHIP_SITE, this, MAGIC_TYPE_NONE);
		}
		else
		{
			return false;
		}
	}
	return true;
}

bool32_t WorshipSite::GetChantShortfallFraction(float* fraction, MAGIC_TYPE type)
{
	float             maxShortfall = 0.0f;
	float             shortfall = 0.0f;
	WorshipSpellIcon* found = NULL;
	for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
	{
		float needed = max(icon->GetMagicEffectInfo(GESTURE_TYPE_NONE)->CostToCreate - icon->GetChantStore(), 0.0f);
		float missing = max(needed - GetTotalChantsAvailable(), 0.0f);
		if (missing > maxShortfall)
		{
			maxShortfall = missing;
		}
		if (icon->GetMagicType() == type)
		{
			shortfall = missing;
			found = icon;
		}
	}
	if (found != NULL)
	{
		*fraction = shortfall / maxShortfall;
		return true;
	}
	return false;
}

float WorshipSite::GetChantsVillagerCanSupply()
{
	const GWorshipSiteInfo* info = GetInfo();
	float                   tribalPower = GetPlayer()->TribalPower[TRIBE_TYPE_AZTEC];
	return GetNumberVillagersWorshipping() * info->ChantsPerVillager * tribalPower;
}

bool32_t WorshipSite::CanIGoHome(Villager* villager)
{
	OrderedNode<SortVillagerOnNeedToGoHome>* head = VillagersRequestingToGoHome.GetHead();
	return head == NULL || head->GetData() == villager;
}

void WorshipSite::AddVillagerRequestingToGoHome(Villager* villager)
{
	if (villager->RequestingToGoHome)
	{
		return;
	}
	for (LHOrderedLinkedListIterator<SortVillagerOnNeedToGoHome> it(VillagersRequestingToGoHome); it.MoreToDo(); it++)
	{
		if (it.Get() == villager)
		{
			return;
		}
	}
	VillagersRequestingToGoHome.Insert((SortVillagerOnNeedToGoHome*)villager);
	villager->RequestingToGoHome = true;
	if (villager->GetTown() != NULL)
	{
		villager->GetTown()->AdjustWorshipersWorshipping(1, 0, 1);
	}
}

void WorshipSite::RemoveVillagerRequestingToGoHome(Villager* villager)
{
	if (!villager->RequestingToGoHome)
	{
		return;
	}
	for (LHOrderedLinkedListIterator<SortVillagerOnNeedToGoHome> it(VillagersRequestingToGoHome); it.MoreToDo(); it++)
	{
		if (it.Get() == villager)
		{
			villager->RequestingToGoHome = false;
			VillagersRequestingToGoHome.Remove((SortVillagerOnNeedToGoHome*)villager);
			return;
		}
	}
}

int WorshipSite::GetNumVillagersRequestingToGoHome()
{
	return VillagersRequestingToGoHome.GetSize();
}

float WorshipSite::CalculateChargingSpellIconDemand()
{
	if (GetChantsVillagerCanSupply() != 0.0f)
	{
		float demand = 0.0f;
		for (WorshipSpellIcon* icon = IconList.head; icon != NULL; icon = icon->next)
		{
			if (icon->Charging)
			{
				demand += 1.0f - min((icon->GetChantNeededForSpellSeed() + WORSHIP_SITE_CHANT_EPSILON) /
				                         (icon->GetChantRequiredForSpellSeed() + WORSHIP_SITE_CHANT_EPSILON),
				                     1.0f);
			}
		}
		return demand;
	}
	return 0.0f;
}

float WorshipSite::GetDesireForWorshippers()
{
	if (IconList.count != 0 && IsBuilt())
	{
		float fullness = min(
			(float)GetNumberVillagersWorshipping() / (IconList.count * WORSHIP_SITE_WORSHIPPERS_PER_SPELL_ICON), 1.0f);
		return 1.0f - POWER(fullness, WORSHIP_SITE_DESIRE_FOR_WORSHIPPERS_EXPONENT);
	}
	return 0.0f;
}

float WorshipSite::GetDesireForVillagerAvailableFromTown()
{
	float desire = GetDesireForWorshippers();
	if (desire == 0.0f)
	{
		return 0.0f;
	}
	float best = 0.0f;
	for (LHLinkedNode<Town*>* node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		float townDesire = node->payload->GetDesireToGiveWorshippers();
		if (townDesire > best)
		{
			best = townDesire;
		}
	}
	return best * desire;
}

MapCoords WorshipSite::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type)
{
	return GetDoorPos();
}

float WorshipSite::GetRadiusMultiplierForApplyingPotToPos()
{
	return WORSHIP_SITE_POT_RADIUS_MULTIPLIER;
}

void WorshipSite::CreateCollideData()
{
	ReleaseCollideData();
	static LHPoint CollidePoints[WORSHIP_SITE_COLLIDE_POINTS] = {
		LHPoint(2.448f, 1.4f, -34.171f),  //
		LHPoint(3.348f, 1.4f, -36.551f),  //
		LHPoint(24.71f, 1.4f, -24.133f),  //
		LHPoint(26.359f, 1.4f, -25.951f), //
		LHPoint(3.93f, 2.0f, -39.084f),   //
		LHPoint(27.452f, 2.0f, -28.503f), //
		LHPoint(7.405f, 3.0f, -40.707f),  //
		LHPoint(12.317f, 3.0f, -39.988f), //
		LHPoint(22.537f, 3.0f, -35.073f), //
		LHPoint(26.905f, 3.0f, -33.063f), //
	};
	CollideData = new (FILEPATH, WORSHIP_LINE(2390)) NewCollide(Game3dObject);
	if (CollideData->obj->IteratorList != NULL)
	{
		delete CollideData->obj->IteratorList;
	}
	CollideData->obj->IteratorList = new (FILEPATH, WORSHIP_LINE(2394)) NewCollide::List(WORSHIP_SITE_COLLIDE_POINTS);
	LHMatrix matrix;
	GetWorldMatrix(&matrix);
	for (int i = 0; i < WORSHIP_SITE_COLLIDE_POINTS; i++)
	{
		LHPoint pos = CollidePoints[i];
		matrix.TransformPoint(pos);
		CollideData->obj->IteratorList->Add(new (FILEPATH, WORSHIP_LINE(2402))
		                                        NewCollide::Obj(CollideRadiusScale * CollidePoints[i].y, &pos));
	}
}

float WorshipSite::GetChantBatteryMax()
{
	const GWorshipSiteInfo* info = GetInfo();
	return GetNumberVillagersWorshipping() * info->EachVillagerAddToFillBattery + info->ChantsToFillBattery;
}

bool32_t WorshipSite::DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	if (object->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
		if (physics != NULL)
		{
			GInterfaceStatus* thrower = physics->status;
			if (thrower == GGame::g_game->MyInterfaceStatus())
			{
				GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_6);
			}
		}
	}
	DoDeleteObjectAndTakeResource(object, status);
	return true;
}
