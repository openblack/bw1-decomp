#include "GameTimeConstants.h"
#include "WorshipSpellIcon.h"

#include "Audio.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "MagicEffectInfo.h"
#include "MagicInfo.h"
#include "Player.h"
#include "SpellIconInfo.h"
#include "SpellSeed.h"
#include "SpellSeedGraphic.h"
#include "SpellSeedInfo.h"
#include "WorshipSite.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\WorshipSpellIcon.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\WorshipSpellIcon.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\WorshipSpellIcon.cpp"
#endif

WorshipSpellIcon::WorshipSpellIcon()
{
	SetToZero();
}

WorshipSpellIcon* WorshipSpellIcon::GetWorshipSpellIcon()
{
	return this;
}

WorshipSite* WorshipSpellIcon::GetWorshipSite()
{
	return Site.Get();
}

bool32_t WorshipSpellIcon::IsEffectReceiver(EffectValues* values)
{
	return false;
}

float WorshipSpellIcon::GetPercentForDrawBuilding()
{
	return 0.0f;
}

uint32_t WorshipSpellIcon::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	return 0;
}

float WorshipSpellIcon::ApplyEffect(EffectValues&, int)
{
	return 0.0f;
}

uint32_t WorshipSpellIcon::GetSaveType()
{
	return GAME_THING_TYPE_WORSHIP_SPELL_ICON;
}

char* WorshipSpellIcon::GetDebugText()
{
	return "WorshipSpellIcon:";
}

WorshipSpellIcon::WorshipSpellIcon(const MapCoords& coords, const GSpellIconInfo* icon_info,
                                   const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot,
                                   float percent_built, int under_construction)
	: SpellIcon(coords, icon_info, seed_info, site->GetYAngle(), site->GetScale(), percent_built, under_construction)
{
	SetToZero();
	Slot = slot;
	Site = site;
	RemoveCountdown = 0;
	TurnChargingStarted = 0;
}

WorshipSpellIcon::~WorshipSpellIcon() {}

void WorshipSpellIcon::SetToZero()
{
	ChantStore = 0.0f;
	Charging = false;
	ChargingStatus = NULL;
	PowerUpType = POWER_UP_TYPE_NONE;
	RemoveCountdown = 0;
	ScaleBeforeRemove = 0.0f;
	TurnChargingStarted = 0;
	Slot = 0;
}

void WorshipSpellIcon::ToBeDeleted(int delete_now)
{
	if (GetWorshipSite() != NULL)
	{
		GetWorshipSite()->RemoveSpellIcon(this);
		Site = NULL;
	}
	while (CreatedSpells.head != NULL)
	{
		CreatedSpells.head->ToBeDeleted(false);
	}
	SpellIcon::ToBeDeleted(delete_now);
}

void WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	SpellIcon::CallVirtualFunctionsForCreation(coords);
	UpdateGraphicsWithPULevels();
}

WorshipSpellIcon* WorshipSpellIcon::Create(const MapCoords& coords, const GSpellIconInfo* icon_info,
                                           const GSpellSeedInfo* seed_info, WorshipSite* site, int16_t slot,
                                           float percent_built, int under_construction)
{
	WorshipSpellIcon* icon = new (FILEPATH, 91)
		WorshipSpellIcon(coords, icon_info, seed_info, site, slot, percent_built, under_construction);
	if (icon != NULL)
	{
		icon->CallVirtualFunctionsForCreation(coords);
		if (site != NULL)
		{
			site->AddSpellIcon(icon);
		}
	}
	return icon;
}

void WorshipSpellIcon::UpdateGraphicsWithPULevels()
{
	GPlayer* player = GetPlayer();
	if (graphic.Get() != NULL && player != NULL)
	{
		const GSpellSeedInfo* info = seed_info.Get();
		POWER_UP_TYPE         level = POWER_UP_TYPE_NONE;
		for (int i = POWER_UP_TYPE_ONE; i < POWER_UP_TYPE_LAST; i++)
		{
			MAGIC_TYPE type = info->GetMagicTypeFromPULevel((POWER_UP_TYPE)i);
			if (player->IsMagicTypeEnabled(type))
			{
				level = (POWER_UP_TYPE)i;
			}
		}
		graphic.Get()->SetPowerUpType(level);
		graphic.Get()->BandScale = WORSHIP_SPELL_ICON_BAND_SCALE;
	}
}

uint32_t WorshipSpellIcon::Process()
{
	if (RemoveCountdown != 0 && --RemoveCountdown == 0)
	{
		ToBeDeleted(false);
		return 3;
	}
	if ((GGame::g_game->GameFlags & GAME_FLAG_ACTIVATE_CREATURE_DESIRES) && GetPlayer()->IsNeutral())
	{
		AddToChantStore(((const GSpellIconInfo*)info)->GatheringChantAddPerGameTurn);
	}
	if (Charging)
	{
		SpellSeed* seed = GetHeldSpellSeed();
		if (seed != NULL)
		{
			UseCreateChants(seed);
		}
		if (GetChantNeededForSpellSeed() <= 0.0f)
		{
			seed = GetHeldSpellSeed();
			if (seed != NULL)
			{
				seed->SetPowerUp(PowerUpType);
			}
			else
			{
				if (ValidForPutFullyChargedPowerUpSeedInHand(ChargingStatus) == true)
				{
					PutFullyChargedPowerUpSeedInHand(ChargingStatus);
				}
				PlayFullyChargedSoundFX();
			}
			Charging = false;
			ChargingStatus = NULL;
			PowerUpType = POWER_UP_TYPE_NONE;
		}
	}
	return 1;
}

SpellSeed* WorshipSpellIcon::GetHeldSpellSeed()
{
	GPlayer* player = GetPlayer();
	if (player != NULL)
	{
		for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
		     status = player->GetNextInterfaceStatus(status))
		{
			SpellSeed* seed = status->GetSpellSeedInMagicHand();
			if (seed != NULL && seed->Icon.Get() == this)
			{
				return seed;
			}
		}
	}
	return NULL;
}

void WorshipSpellIcon::PlayFullyChargedSoundFX()
{
	if (GetPlayer() == GGame::g_game->MyPlayer())
	{
		uint32_t sample;
		switch (GSpellSeedInfo::GetTypeFromInfo(seed_info.Get()))
		{
		case SPELL_SEED_TYPE_STORM:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_STORM;
			break;
		case SPELL_SEED_TYPE_NATURE:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_FOREST;
			break;
		case SPELL_SEED_TYPE_FIRE:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_FIREBALL;
			break;
		case SPELL_SEED_TYPE_FOOD:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_FOOD;
			break;
		case SPELL_SEED_TYPE_SHIELD:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_SHIELD;
			break;
		case SPELL_SEED_TYPE_PHYSICAL_SHIELD:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_PHYSICAL_SHIELD;
			break;
		case SPELL_SEED_TYPE_HEAL:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_HEAL;
			break;
		case SPELL_SEED_TYPE_WOOD:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_WOOD;
			break;
		case SPELL_SEED_TYPE_WATER:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_WATER;
			break;
		case SPELL_SEED_TYPE_FLOCK_FLYING:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_FLOCK_FLYING;
			break;
		case SPELL_SEED_TYPE_FLOCK_GROUND:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_FLOCK_GROUND;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_FREEZE:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_FREEZE;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_SMALL:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_SMALL;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_BIG:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_BIG;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_WEAK:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_WEAK;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_STRONG:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_STRONG;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_INVISIBLE:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_INVISIBLE;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_COMPASSION:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_COMPASSION;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_ANGRY:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_ANGRY;
			break;
		case SPELL_SEED_TYPE_CREATURE_SPELL_ITCHY:
			sample = SPELL_DIALOGUE_SAMPLE_CREATURE_SPELL_ITCHY;
			break;
		case SPELL_SEED_TYPE_TELEPORT:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_TELEPORT;
			break;
		case SPELL_SEED_TYPE_BEAM_EXPLOSION:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_BEAM_EXPLOSION;
			break;
		case SPELL_SEED_TYPE_LIGHTNING_BOLT:
		default:
			sample = SPELL_DIALOGUE_SAMPLE_ANNOUNCER_VOICE_LIGHTNING;
			break;
		}
		GGlobal::Global.audio->PlaySoundEffect(NULL, sample, 2, 0, 0, 0, AUDIO_SFX_BANK_TYPE_SPELL_DIALOG);
	}
}

unsigned long WorshipSpellIcon::GetTurnChargingStarted()
{
	return TurnChargingStarted;
}

void WorshipSpellIcon::SetTurnChargingStarted(unsigned long turn)
{
	TurnChargingStarted = turn;
}

float WorshipSpellIcon::GetSpellChargingFraction(GInterfaceStatus* status)
{
	if (status != NULL && ChargingStatus != status)
	{
		return 0.0f;
	}
	return Charging ? GetPower() : 0.0f;
}

bool WorshipSpellIcon::IsCharging(GInterfaceStatus* status)
{
	if (status != NULL && ChargingStatus != status)
	{
		return false;
	}
	return Charging;
}

float WorshipSpellIcon::MaintainSpell(uint32_t spell, float amount)
{
	if (GetWorshipSite() != NULL)
	{
		return GetWorshipSite()->MaintainSpell(amount);
	}
	if (amount > ChantStore)
	{
		float store = ChantStore;
		ChantStore = 0.0f;
		return store;
	}
	ChantStore -= amount;
	return amount;
}

void WorshipSpellIcon::UpdateSpellInfo(Spell* spell, PSysProcessInfo* info)
{
	GPlayer* player = GetPlayer();
	if (player != NULL && player->type == PLAYER_TYPE_HUMAN)
	{
		player->UpdateSpellInfo(spell, info);
	}
}

void WorshipSpellIcon::AddSpell(SpellSeed* seed)
{
	seed->SpellSeedFlags |= SPELL_SEED_FLAG_IN_SPELL_ICON_LIST;
	if (CreatedSpells.Find(seed) == NULL)
	{
		CreatedSpells.AddToFirst(seed);
	}
}

void WorshipSpellIcon::RemoveSpell(SpellSeed* seed)
{
	CreatedSpells.Remove(seed);
	seed->SpellSeedFlags &= ~SPELL_SEED_FLAG_IN_SPELL_ICON_LIST;
}

float WorshipSpellIcon::GetChantRequiredForSpellSeed()
{
	SpellSeed* seed = GetHeldSpellSeed();
	if (seed != NULL)
	{
		return seed->GetChantNeededForSpellSeed(PowerUpType);
	}
	return GetMagicInfoFromPULevel(PowerUpType)->GetChantsRequiredToCreate();
}

bool32_t WorshipSpellIcon::ActualInterfaceTap(GInterfaceStatus* status)
{
	if (ValidForPutFullyChargedPowerUpSeedInHand(status) == true)
	{
		return PutFullyChargedPowerUpSeedInHand(status);
	}
	if (CancelCharge(status) == true)
	{
		return true;
	}
	if (status->IsHandReadyForObject() && ValidForStartCharge(status, POWER_UP_TYPE_NONE, false) == true)
	{
		return StartCharge(status, POWER_UP_TYPE_NONE, false);
	}
	return false;
}

bool32_t WorshipSpellIcon::PutFullyChargedPowerUpSeedInHand(GInterfaceStatus* status)
{
	if (status->IsHandReadyForObject())
	{
		SpellSeed* seed = SpellSeed::Create(Pos, this, status, POWER_UP_TYPE_NONE, 1.0f);
		AddChantsToSeedOnSeedCreation(seed);
		status->GetInterface()->PlaceObjectInMagicHand(seed);
		seed->SetWaitBeforeActive(true);
		return true;
	}
	return false;
}

bool32_t WorshipSpellIcon::ValidForPutFullyChargedPowerUpSeedInHand(GInterfaceStatus* status)
{
	if (GetChantNeededForSpellSeed() <= 0.0f && GetHeldSpellSeed() == NULL && status->IsHandReadyForObject() &&
	    status->GetPlayer()->type == PLAYER_TYPE_HUMAN)
	{
		return true;
	}
	return false;
}

bool32_t WorshipSpellIcon::CancelCharge(GInterfaceStatus* status)
{
	if ((Charging || ChantStore != 0.0f) && status == ChargingStatus)
	{
		Charging = false;
		PowerUpType = POWER_UP_TYPE_NONE;
		ChargingStatus = NULL;
		ReturnAllChantsToWorshipSite();
		return true;
	}
	return false;
}

bool32_t WorshipSpellIcon::StartCharge(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants)
{
	if (!IsCharging(NULL))
	{
		WorshipSite* site = GetWorshipSite();
		if ((site != NULL && (!require_chants || site->GetTotalChantsAvailable() > 0.0f)) || ChantStore != 0.0f)
		{
			PowerUpType = power_up;
			Charging = true;
			ChargingStatus = status;
			SetTurnChargingStarted(GGame::g_game->data.GameTurn);
			if (ValidForPutFullyChargedPowerUpSeedInHand(status) == true)
			{
				PutFullyChargedPowerUpSeedInHand(status);
			}
			return true;
		}
	}
	return false;
}

bool32_t WorshipSpellIcon::ValidForStartCharge(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants)
{
	if (!IsCharging(NULL) && GetHeldSpellSeed() == NULL &&
	    status->GetPlayer()->IsMagicTypeEnabled(GetMagicInfoFromPULevel(power_up)->GetMagicType()))
	{
		WorshipSite* site = GetWorshipSite();
		if ((site != NULL && (!require_chants || site->GetTotalChantsAvailable() > 0.0f)) || ChantStore != 0.0f)
		{
			return true;
		}
	}
	return false;
}

bool32_t WorshipSpellIcon::RequestSpell(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants)
{
	if (ValidForPutFullyChargedPowerUpSeedInHand(status) == true)
	{
		return PutFullyChargedPowerUpSeedInHand(status);
	}
	if (ValidForStartCharge(status, power_up, require_chants))
	{
		return StartCharge(status, power_up, require_chants);
	}
	return false;
}

bool32_t WorshipSpellIcon::ValidForRequestSpell(GInterfaceStatus* status, POWER_UP_TYPE power_up, bool require_chants)
{
	if (IsFunctional() != true)
	{
		return false;
	}
	if (ValidForPutFullyChargedPowerUpSeedInHand(status) == true)
	{
		return true;
	}
	return ValidForStartCharge(status, power_up, require_chants);
}

bool32_t WorshipSpellIcon::ValidForRequestSpellPowerUp(GInterfaceStatus* status, POWER_UP_TYPE power_up)
{
	if (GetHeldSpellSeed() != NULL &&
	    status->GetPlayer()->IsMagicTypeEnabled(GetMagicInfoFromPULevel(power_up)->GetMagicType()))
	{
		return true;
	}
	return false;
}

bool32_t WorshipSpellIcon::RequestSpellPowerUp(GInterfaceStatus* status, POWER_UP_TYPE power_up)
{
	if (ValidForRequestSpellPowerUp(status, power_up) == true)
	{
		Charging = true;
		PowerUpType = power_up;
		ChargingStatus = status;
		SetTurnChargingStarted(GGame::g_game->data.GameTurn);
		return true;
	}
	return false;
}

int WorshipSpellIcon::GetSpellIconPlacementIndex()
{
	return Slot - WORSHIP_SITE_SPECIAL_POS_FIRST_SPELL_ICON;
}

void* WorshipSpellIcon::GetBuildingObject()
{
	if (GetWorshipSite() != NULL)
	{
		return GetWorshipSite()->GetBuildingObjectForSpellIcon();
	}
	return this;
}

float WorshipSpellIcon::AddChantsToSeedOnSeedCreation(SpellSeed* seed)
{
	return UseCreateChants(seed);
}

float WorshipSpellIcon::UseCreateChants(SpellSeed* seed)
{
	float needed = seed->GetChantNeededForSpellSeed(PowerUpType);
	if (needed > 0.0f)
	{
		float store = GetChantStore();
		float chants = min(needed, store);
		seed->AddToChantStore(chants);
		RemoveFromChantStore(chants);
		return chants;
	}
	return 0.0f;
}

void WorshipSpellIcon::ReturnAllChantsToWorshipSite()
{
	WorshipSite* site = GetWorshipSite();
	if (site != NULL)
	{
		site->AddToChantStore(ChantStore);
	}
	RemoveFromChantStore(GetChantStore());
}

float WorshipSpellIcon::AddToChantStore(float amount)
{
	float store = amount + ChantStore;
	if (GetChantRequiredForSpellSeed() < store)
	{
		amount -= GetChantRequiredForSpellSeed() - ChantStore;
		ChantStore = GetChantRequiredForSpellSeed();
	}
	else
	{
		ChantStore += amount;
	}
	return amount;
}

float WorshipSpellIcon::RemoveFromChantStore(float amount)
{
	if (amount > GetChantStore())
	{
		amount = GetChantStore();
	}
	ChantStore -= amount;
	return amount;
}

float WorshipSpellIcon::GetChantNeededForSpellSeed()
{
	SpellSeed* seed = GetHeldSpellSeed();
	if (seed != NULL)
	{
		return seed->GetChantNeededForSpellSeed(PowerUpType);
	}
	return GetChantRequiredForSpellSeed() - GetChantStore();
}

float WorshipSpellIcon::GetPower()
{
	SpellSeed* seed = GetHeldSpellSeed();
	if (seed != NULL)
	{
		return seed->GetChantNeededForSpellSeed(PowerUpType) / seed->GetChantRequiredForSpellSeed(PowerUpType);
	}
	return GetChantStore() / GetChantRequiredForSpellSeed();
}

bool32_t WorshipSpellIcon::IsBuilt()
{
	if (GetWorshipSite() != NULL)
	{
		return GetWorshipSite()->IsBuilt();
	}
	return true;
}

void WorshipSpellIcon::StartRemoveFromPlayer()
{
	if (RemoveCountdown == 0)
	{
		ScaleBeforeRemove = GetScale();
		RemoveCountdown = WORSHIP_SPELL_ICON_REMOVE_COUNTDOWN;
	}
}

void WorshipSpellIcon::StopRemoveFromPlayer()
{
	if (RemoveCountdown != 0)
	{
		SetScale(ScaleBeforeRemove);
		RemoveCountdown = 0;
	}
}

bool32_t WorshipSpellIcon::Save(GameOSFile& file)
{
	if (SpellIcon::Save(file))
	{
		file.WriteIt(RemoveCountdown);
		file.WritePtr(Site.Get());
		file.WriteIt(ScaleBeforeRemove);
		file.WriteIt(TurnChargingStarted);
		file.WriteIt(Slot);
		file.WriteIt(Charging);
		file.WriteIt(PowerUpType);
		file.WritePtr((GameThing*)ChargingStatus);
		file.WriteIt(ChantStore);
		file.WriteSafe(CreatedSpells);
		return true;
	}
	return false;
}

bool32_t WorshipSpellIcon::Load(GameOSFile& file)
{
	if (SpellIcon::Load(file))
	{
		file.ReadIt(RemoveCountdown);
		file.ReadPtr((GameThing**)&Site);
		file.ReadIt(ScaleBeforeRemove);
		file.ReadIt(TurnChargingStarted);
		file.ReadIt(Slot);
		file.ReadIt(Charging);
		file.ReadIt(PowerUpType);
		file.ReadPtr((GameThing**)&ChargingStatus);
		file.ReadIt(ChantStore);
		file.ReadSafe(CreatedSpells);
		return true;
	}
	return false;
}

float WorshipSpellIcon::GetNumGameTurnsToCreate()
{
	WorshipSite* site = GetWorshipSite();
	if (site != NULL)
	{
		float needed = GetMagicEffectInfo(GESTURE_TYPE_NONE)->CostToCreate - GetChantStore();
		needed -= site->GetTotalChantsAvailable();
		if (needed <= 0.0f)
		{
			return 0.0f;
		}
		if (site->GetChantsVillagerCanSupply() != 0.0f)
		{
			return needed / site->GetChantsVillagerCanSupply();
		}
	}
	return WORSHIP_SPELL_ICON_NEVER_CREATED;
}

float WorshipSpellIcon::GetChargeUpSpeedDesire()
{
	WorshipSite* site = GetWorshipSite();
	float        chants = GetChantStore() + WORSHIP_SPELL_ICON_MIN_CHANTS;
	if (site != NULL)
	{
		chants += site->GetChantStore() + site->GetChantsAvailable();
		if (chants < GetMagicEffectInfo(GESTURE_TYPE_NONE)->CostToCreate && site->GetChantsVillagerCanSupply() == 0.0f)
		{
			return 0.0f;
		}
	}
	return chants / (GetMagicEffectInfo(GESTURE_TYPE_NONE)->CostToCreate + WORSHIP_SPELL_ICON_MIN_CHANTS);
}
