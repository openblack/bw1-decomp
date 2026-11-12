#include "PotInfo.h"           /* For class GPotInfo */
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "Pot.h"               /* For class Pot */

#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For strlen */
#include <windows.h> /* For GetTickCount, min, max */

#include <Lionhead/LH3DLib/development/LH3DMesh.h>        /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For class LH_SamplePlayOptions */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                  /* For NEW */
#include "ColourConstants.h"                              /* For White */
#include "Creature.h"                                     /* For class Creature */
#include "Audio.h"                                        /* For class GAudio */
#include "Debug.h"                                        /* For struct GDebug */
#include "FireEffect.h"                                   /* For class FireEffect */
#include "GJUtils.h"                                      /* For boundf */
#include "Game.h"                                         /* For class GGame */
#include "Game3DObject.h"                                 /* For class Game3DObject */
#include "BuildingSite.h"                                 /* For class BuildingSite */
#include "GameInfo.h"                                     /* For class GGameInfo */
#include "Global.h"                                       /* For struct GGlobal */
#include "HalfLifeConstants.h"                            /* For OneOverLogHalf */
#include "MagicFood.h"                                    /* For class MagicFood */
#include "MultiMapFixed.h"                                /* For class MultiMapFixed */
#include "MagicWood.h"                                    /* For class MagicWood */
#include "PileFood.h"                                     /* For class PileFood */
#include "PSysGlobal.h"                                   /* For class PSysGlobal */
#include "PhysicsObject.h"                                /* For class PhysicsObject */
#include "PileWood.h"                                     /* For class PileWood */
#include "Reaction.h"                                     /* For class Reaction */
#include "Script.h"                                       /* For enum SCRIPT_FEATURE_COMMANDS */
#include "SoundGuidance.h"                                /* For class GGuidance */
#include "Utils.h"                                        /* For class GUtils */
#include "Map.h"                                          /* For struct MapCell */
#include "Setup.h"                                        /* For class GSetup */
#include "ParticleContainer.h"                            /* For class GParticleContainer */
#include "ToolTips.h"                                     /* For class ToolTips */
#include "InterfaceStatus.h"                              /* For class GInterfaceStatus */
#include "Interface.h"                                    /* For class GInterface */
#include "StoragePit.h"                                   /* For class StoragePit */
#include "GameOSFile.h"                                   /* For class GameOSFile */

GPotInfo GPotInfo::InfoList[POT_INFO_LAST];

static const float PileMinProportion = 0.05f;

static inline uint8_t& PotFlagsOf(Pot& pot)
{
#ifdef VERSION_BW1WCI
	return pot.PotFlags;
#else
	return *(uint8_t*)(&pot.ResourceAmount + 1);
#endif
}

static inline bool IsNotControlledByScript(const GameThingWithPos* thing)
{
	return ((uint16_t)~thing->Flags >> GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT_BIT) & 1;
}

inline uint32_t PileFood::GetSaveType()
{
	return GAME_THING_TYPE_PILE_FOOD;
}

inline char* PileFood::GetDebugText()
{
	return "PileFood:";
}

float GPotInfo::GetResourceValue() const
{
	switch (GetPotType())
	{
	case POT_INFO_MAGIC_WOOD:
	case POT_INFO_HAND_WOOD:
		return (float)WoodValue;
	case POT_INFO_MAGIC_FOOD:
	case POT_INFO_HAND_FOOD:
		return FoodValue;
	}
	return 0.0f;
}

uint32_t GPotInfo::GetMinMultiPickupAmount() const
{
	return MinMultiPickupAmount;
}

uint32_t GPotInfo::GetMaxMultiPickupAmount() const
{
	return MaxMultiPickupAmount;
}

int GPotInfo::GetTicksToChangeOver() const
{
	return (int)(GGameInfo::Info.NumGameTicksPerSecond() * ChangeOverSeconds);
}

int GPotInfo::GetAmountToPickUpDuringMultiPickup(long ticks) const
{
	float fraction = (float)ticks / (float)GetTicksToChangeOver();
	fraction = boundf(0.0f, fraction, 1.0f);
#ifdef VERSION_BW1W110
	return (int)((float)(GetMaxMultiPickupAmount() - GetMinMultiPickupAmount()) * (fraction * fraction) +
	             (float)GetMinMultiPickupAmount());
#else
	uint32_t minAmount = GetMinMultiPickupAmount();
	return (int)((float)(GetMaxMultiPickupAmount() - minAmount) * (fraction * fraction) +
	             (float)GetMinMultiPickupAmount());
#endif
}

float GPotInfo::GetSoundFractionThroughMultiPickUp(long ticks) const
{
	float fraction = boundf(0.0f, (float)ticks / (float)GetTicksToChangeOver(), 1.0f);
	float squared = fraction * fraction;
	CLAMP(squared, 0.0f, 1.0f);
	return squared;
}

Pot::Pot(const MapCoords& coords, const GPotInfo* info, uint32_t resource, Town* town, float y_angle, float scale)
	: MobileObject(coords, info, NULL, y_angle, scale)
{
	SetToZero();
	ResourceType = info->ResourceType;
	ResourceAmount = resource;
#ifndef VERSION_BW1WCI
	ParentTown = town;
#endif
}

void Pot::SetToZero()
{
	ResourceAmount = 0;
	PotFlagsOf(*this) = 0;
}

bool Pot::InteractsWithPhysicsObjects()
{
	if (GetStoragePit() != NULL)
	{
		return false;
	}
	return Object::InteractsWithPhysicsObjects();
}

PHYSICS_CONSTANTS_TYPE Pot::GetPhysicsConstantsType()
{
	if (info != NULL && info->GetMesh() == MSH_I_OFFERING_FOOD)
	{
		return PHYSICS_CONSTANTS_TYPE_HAY;
	}
	return PHYSICS_CONSTANTS_TYPE_POT;
}

#ifdef VERSION_BW1WCI
Pot* Pot::Create(const MapCoords& coords, const GPotInfo* info, unsigned long resource, MultiMapFixed* parent,
                 Town* town, bool32_t create_reaction, float y_angle, float scale, bool32_t from_building_site,
                 bool32_t fish)
#else
Pot* Pot::Create(const MapCoords& coords, const GPotInfo* info, unsigned long resource, MultiMapFixed* parent,
                 Town* town, bool32_t create_reaction, float y_angle, float scale, bool32_t from_building_site)
#endif
{
	bool32_t createReaction = false;
	if (info->ReactionType != REACTION_NONE)
	{
		createReaction = create_reaction;
	}
	Pot* pot;
	switch (info->PotClass)
	{
	case POT_CLASS_POT:
		pot = NEW(168) Pot(coords, info, resource, town, y_angle, scale);
		break;
	case POT_CLASS_WOOD_PILE:
		if (info->GetPotType() == POT_INFO_MAGIC_WOOD)
		{
			pot = NEW(173) MagicWood(coords, NULL, resource, parent, createReaction);
		}
		else
		{
			pot = NEW(177) PileWood(coords, info, resource, parent, town, createReaction, y_angle, scale);
		}
		break;
	case POT_CLASS_FOOD_PILE:
		if (info->GetPotType() == POT_INFO_MAGIC_FOOD)
		{
			pot = NEW(183) MagicFood(coords, NULL, resource, parent, createReaction);
		}
		else
		{
			pot = NEW(187) PileFood(coords, info, resource, parent, town, createReaction, y_angle, scale);
		}
		break;
	}
	if (pot != NULL)
	{
#ifdef VERSION_BW1WCI
		pot->Fish = fish;
#endif
		pot->CallVirtualFunctionsForCreation(coords);
		pot->FromBuildingSite = from_building_site;
	}
	return pot;
}

Pot::~Pot() {}

void Pot::ToBeDeleted(bool32_t delete_now)
{
	RemoveReaction();
	MobileObject::ToBeDeleted(delete_now);
}

void Pot::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	MobileObject::CallVirtualFunctionsForCreation(coords);
	Game3dObject->SetShadowOnTexture(false);
	if (GetInfo()->GetPotType() == POT_INFO_HAND_FOOD)
	{
		Game3dObject->SetShadowOnTextureChroma(true);
		Game3dObject->SetCastDynamicShadow(false);
	}
#ifdef VERSION_BW1WCI
	if (Fish == true)
	{
		Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_FISH_IN_HAND), NULL, NULL);
		Game3dObject->SetShadowOnTextureChroma(false);
		Game3dObject->SetPosition(Pos, GetXAngle(), GetYAngle(), GetZAngle(), GetScale());
	}
#endif
	SetSize();
}

void Pot::PlayAddResourceSound(const MapCoords& coords, RESOURCE_TYPE type, unsigned long amount)
{
	LH_SamplePlayOptions options;
	options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
	uint32_t foodSample;
	uint32_t woodSample;
	if (amount < POT_SMALL_AMOUNT)
	{
		foodSample = LH_SAMPLE_G_PILEFOODSMALL_01 + GetTickCount() % POT_DROP_SAMPLE_VARIATIONS;
		woodSample = LH_SAMPLE_G_PILEWOODSMALL_01 + GetTickCount() % POT_DROP_SAMPLE_VARIATIONS;
	}
	else
	{
		foodSample = LH_SAMPLE_G_PILEFOOD_01 + (GetTickCount() & 1);
		woodSample = LH_SAMPLE_G_PILEWOOD_01 + GetTickCount() % POT_DROP_SAMPLE_VARIATIONS;
	}
	options.SampleNumber = foodSample;
	if (type != RESOURCE_TYPE_FOOD)
	{
		options.SampleNumber = woodSample;
	}
	options.AttachedObject = this;
	options.Positional = true;
	LHPoint point = coords.GetLHPoint();
	options.XPos = point.x;
	options.YPos = point.y;
	options.ZPos = point.z;
	options.Follow = false;
	GGlobal::Global.audio->PlaySoundEffect(&options);
}

uint32_t Pot::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                          const MapCoords* coords, int from_other_player)
{
	return JustAddResource(type, amount, poisoned);
}

uint32_t Pot::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool poisoned)
{
	const GPotInfo* potInfo = GetInfo();
	if (potInfo->CappedPotInfo < POT_INFO_LAST)
	{
		if (ResourceAmount + amount > potInfo->MaxResource)
		{
			amount = potInfo->MaxResource - ResourceAmount;
		}
	}
	ResourceAmount += amount;
	SetPoisoned(poisoned || IsPoisoned());
	SetSize();
	return amount;
}

uint32_t PileResource::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool poisoned)
{
	POT_INFO potType = GetInfo()->GetPotType();
	if (potType != POT_INFO_HAND_FOOD && potType != POT_INFO_HAND_WOOD)
	{
		PlayAddResourceSound(Pos, type, amount);
	}
	return Pot::JustAddResource(type, amount, poisoned);
}

uint32_t Pot::JustGetResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	if (type == GetResourceType())
	{
		if (poisoned != NULL)
		{
			*poisoned = IsPoisoned();
		}
		return ResourceAmount;
	}
	return 0;
}

uint32_t Pot::GetResource(RESOURCE_TYPE type)
{
	return JustGetResource(type, 0, NULL);
}

uint32_t Pot::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	return JustRemoveResource(type, amount, poisoned);
}

uint32_t Pot::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	if (amount >= ResourceAmount)
	{
		amount = ResourceAmount;
		ResourceAmount = 0;
		RemoveReaction();
		Poisoned = false;
		if (fire_effect.Get() != NULL)
		{
			fire_effect->ToBeDeleted(false);
			fire_effect = NULL;
		}
	}
	else
	{
		ResourceAmount -= amount;
	}
	SetSize();
	if (poisoned != NULL)
	{
		*poisoned = Poisoned == true;
	}
	return amount;
}

void Pot::SetSize()
{
	SetScale(GetScaleFromAmount());
}

float Pot::GetScaleFromAmount()
{
	float scale = POT_SCALE_BASE + (float)ResourceAmount / GetInfo()->ScaleDivisor;
	return min(scale, POT_SCALE_MAX);
}

void Pot::DebugText(int unused)
{
#ifndef VERSION_BW1WCI
	if (GGlobal::Global.debug.ShowVillagerDebugText ||
	    (GameThing::Flags & GAME_THING_FLAG_REAPPEARED) == GAME_THING_FLAG_REAPPEARED)
	{
		char text[200];
		sprintf(text, "Pot(%d) %d[%d]", GetInfo()->ResourceType, ResourceAmount, GetInfo()->MaxResource);
		GGlobal::Global.debug.SetMessage(text);
	}
#endif
}

uint32_t Pot::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (origin != NULL) ? (Pos - *origin) : Pos;
		if (IsPartOfStructure() == NULL)
		{
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_POT),
			        relative.ConvertToText(coordText), GetInfo()->GetPotType(), GetResourceType(),
			        Pot::GetDefaultResource());
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		else
		{
			saved = 0;
		}
	}
	return saved;
}

bool32_t Pot::IsEffectReceiver(EffectValues* values)
{
	return ResourceAmount != 0;
}

void Pot::SetupReaction()
{
	if (!HasReaction && GetInfo()->ReactionType != REACTION_NONE)
	{
		HasReaction = true;
		Reaction::CreateReaction(this, GetInfo()->ReactionType, GetPlayer(), false);
	}
}

void Pot::RemoveReaction()
{
	if (HasReaction == true)
	{
		HasReaction = false;
		Reaction::RemoveAllReactionsInitiatedByObject(this);
	}
}

void Pot::StartOnFire()
{
	RemoveReaction();
}

void Pot::EndOnFire()
{
	if (IsAvailable() && IsPartOfStructure() == NULL && ResourceAmount > 0 &&
	    !(GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP))
	{
		SetupReaction();
	}
}

bool32_t Pot::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	RemoveReaction();
	return Object::InterfaceSetInMagicHand(status);
}

bool32_t Pot::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		file.WriteIt(ResourceType);
#ifndef VERSION_BW1WCI
		file.WritePtr((GameThing*)ParentTown.Get());
#endif
		file.WriteIt(ResourceAmount);
		file.WriteIt(PotFlagsOf(*this));
		return true;
	}
	return false;
}

bool32_t Pot::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		file.ReadIt(ResourceType);
#ifndef VERSION_BW1WCI
		file.ReadPtr((GameThing**)&ParentTown);
#endif
		file.ReadIt(ResourceAmount);
		file.ReadIt(PotFlagsOf(*this));
		return true;
	}
	return false;
}

PotStructure::PotStructure(const MapCoords& coords, const GPotInfo* info, uint32_t resource, MultiMapFixed* parent,
                           Town* town, bool32_t create_reaction, float y_angle, float scale)
	: Pot(coords, info, resource, town, y_angle, scale)
{
	ParentMultiMapFixed = parent;
	Player = NULL;
	CreateReaction = create_reaction == true;
}

void PotStructure::ToBeDeleted(bool32_t delete_now)
{
	RemoveFromStructure();
	Pot::ToBeDeleted(delete_now);
}

void PotStructure::RemoveFromStructure()
{
	if (IsPartOfStructure() != NULL)
	{
		if (ParentMultiMapFixed.Get() != NULL)
		{
			ParentMultiMapFixed->RemovePotFromStructure(this);
			ParentMultiMapFixed = NULL;
		}
	}
}

uint32_t PotStructure::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	uint32_t removed = Pot::JustRemoveResource(type, amount, poisoned);
	if (ResourceAmount == 0)
	{
		if (ParentMultiMapFixed.Get() == NULL)
		{
			ToBeDeleted(false);
		}
	}
	else
	{
		SetSize();
	}
	return removed;
}

MultiMapFixed* PotStructure::IsPartOfStructure()
{
	if (ParentMultiMapFixed.Get() != NULL)
	{
		if (ParentMultiMapFixed->IsAvailable())
		{
			return ParentMultiMapFixed.Get();
		}
		ParentMultiMapFixed = NULL;
	}
	return NULL;
}

bool32_t PotStructure::IsResourceStore(RESOURCE_TYPE type)
{
	MultiMapFixed* structure = IsPartOfStructure();
	if (structure != NULL)
	{
		return structure->IsResourceStore(type) && (type == GetResourceType() || type == RESOURCE_TYPE_ANY);
	}
	return Pot::IsResourceStore(type);
}

bool32_t PotStructure::Save(GameOSFile& file)
{
	if (Pot::Save(file))
	{
		file.WritePtr((GameThing*)ParentMultiMapFixed.Get());
		file.WritePtr((GameThing*)Player);
		file.WriteIt(CreateReaction);
		return true;
	}
	return false;
}

bool32_t PotStructure::Load(GameOSFile& file)
{
	if (Pot::Load(file))
	{
		file.ReadPtr((GameThing**)&ParentMultiMapFixed);
		file.ReadPtr((GameThing**)&Player);
		file.ReadIt(CreateReaction);
		return true;
	}
	return false;
}

void PotStructure::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Pot::CallVirtualFunctionsForCreation(coords);
	Player = GetPlayer();
	if (!(GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) && CreateReaction)
	{
		SetupReaction();
	}
}

Object* Pot::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	if (insert_back_into_map &&
	    (GetInfo()->GetPotType() == POT_INFO_HAND_FOOD || GetInfo()->GetPotType() == POT_INFO_HAND_WOOD) &&
	    !Pos.IsWater())
	{
		SetupReaction();
		GInterfaceStatus* status = physics_object->status;
		AddResourceToPos(Pos, status, GetResourceType(), GetResource(GetResourceType()), IsPoisoned(), false);
		GoolooGooloo(this);
		ToBeDeleted(false);
		return this;
	}
	return Object::EndPhysics(physics_object, insert_back_into_map);
}

void Pot::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	Object* hitter = physics_object->GetGameObjectWhoHitMe();
	if (hitter != NULL && hitter->IsAvailable() == true && IsAvailable() == true &&
	    (hitter->IsResourceStore(GetResourceType()) ||
	     (hitter->IsPot() && hitter->GetResourceType() == GetResourceType())))
	{
		GInterfaceStatus* status = physics_object->status;
		if (hitter->DeleteObjectAndTakeResource(this, status))
		{
			return;
		}
	}
	MobileObject::ReactToPhysicsImpact(physics_object, transferred_damage);
}

bool32_t Pot::DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	DoDeleteObjectAndTakeResource(object, status);
	return true;
}

uint32_t Pot::ValidToApplyThisToObject(GInterfaceStatus* status, Object* target)
{
	if (target != NULL && target->IsResourceStore(GetResourceType()))
	{
		return 1;
	}
	Pot* targetPot = dynamic_cast<Pot*>(target);
	if (targetPot != NULL && targetPot->GetResourceType() == GetResourceType())
	{
		return 1;
	}
	return 0;
}

uint32_t Pot::ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet)
{
	if (target != NULL && target->IsResourceStore(GetResourceType()))
	{
		return target->DeleteObjectAndTakeResource(this, status) ? GAME_RETURNS_RESOURCE_TAKEN : GAME_RETURNS_NONE;
	}
	AddResourceToPos(Pos, status, GetResourceType(), GetResource(GetResourceType()), IsPoisoned(), false);
	GoolooGooloo(this);
	ToBeDeleted(false);
	return GAME_RETURNS_RESOURCE_TAKEN;
}

uint32_t Pot::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords, GestureSystemPacketData* packet)
{
	MultiMapFixed* structure = Pos.IsWithinBuilingSite();
	if (structure != NULL && structure->IsResourceStore(GetResourceType()) &&
	    structure->DeleteObjectAndTakeResource(this, status))
	{
		return GAME_RETURNS_RESOURCE_TAKEN;
	}
	if (Reaction::GetReactionInitiatedByObject(this) == NULL && GetInfo()->ReactionType != REACTION_NONE)
	{
		SetupReaction();
	}
	return Mobile::ApplyThisToMapCoord(status, coords, packet);
}

PhysicsObject* Pot::InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity, GInterfaceStatus* status,
                                              Object* thrower, bool32_t dont_replant)
{
	LHPoint throwVelocity = velocity;
	if (throwVelocity * throwVelocity <= POT_PUTDOWN_MAX_SPEED_SQUARED)
	{
		PSysGlobal::StartMultiPutdown(status, GetResourceType(), IsPoisoned(), POT_PUTDOWN_PSYS_SCALE);
		AddResourceToPos(Pos, status, GetResourceType(), GetResource(GetResourceType()), IsPoisoned(), false);
		GoolooGooloo(this);
		ToBeDeleted(false);
		return NULL;
	}
	return Object::InitialisePhysicsFromHand(velocity, angular_velocity, status, thrower, dont_replant);
}

#ifndef VERSION_BW1W100
uint32_t Pot::GetSpaceLeft()
{
	return GetInfo()->MaxResource - ResourceAmount;
}
#endif

PileFood::PileFood()
{
	ClearSpeedUpVisual();
}

PileFood::PileFood(const MapCoords& coords, const GPotInfo* info, uint32_t resource, MultiMapFixed* parent, Town* town,
                   bool32_t create_reaction, float y_angle, float scale)
	: PileResource(coords, info, resource, parent, town, create_reaction, y_angle, scale)
{
	ClearSpeedUpVisual();
	GGame::g_game->GameLists.FoodPiles.AddToFirst(this);
}

PileFood::~PileFood() {}

void PileFood::ClearSpeedUpVisual()
{
	SpeedUpVisual = NULL;
}

void PileFood::ToBeDeleted(bool32_t delete_now)
{
	if (SpeedUpVisual != NULL && SpeedUpVisual->IsAvailable() == true)
	{
		SpeedUpVisual->ToBeDeleted(false);
	}
	if (!(GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
	{
		GGame::g_game->GameLists.FoodPiles.Remove(this);
	}
	PotStructure::ToBeDeleted(delete_now);
}

void PileFood::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	PileResource::CallVirtualFunctionsForCreation(coords);
	Game3dObject->UpdateMelting();
}

bool32_t PileFood::ProcessPileFood()
{
	if (SpeedUpVisual != NULL && SpeedUpVisual->IsAvailable() != true)
	{
		SpeedUpVisual = NULL;
	}
	return true;
}

bool32_t PileFood::CreatureMustAvoid(Creature* creature)
{
	if (creature != NULL && IsNotControlledByScript(creature) && IsOnFire())
	{
		return true;
	}
	return false;
}

void PileFood::SetSpeedUp(int speed_up)
{
	int wasSpeedUp = IsSpeedUp();
	SpeedUp = speed_up;
	if (speed_up != wasSpeedUp)
	{
		if (SpeedUpVisual != NULL)
		{
			SpeedUpVisual->CloseDown();
			SpeedUpVisual = NULL;
		}
		if (speed_up && !wasSpeedUp)
		{
			SpeedUpVisual = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(Pos, SPOT_VISUAL_PILEFOOD_SPEEDUP,
			                                                                          1.0f, -1, this);
		}
	}
}

HELP_TEXT PileFood::GetQueryFirstEnumText()
{
	if (ParentMultiMapFixed.Get() != NULL && ParentMultiMapFixed->IsStoragePit(NULL))
	{
		return Object::GetQueryFirstEnumText();
	}
	return (HELP_TEXT)HELP_TEXT_QUESTION_POT_INFO_FOOD_PILE_01;
}

HELP_TEXT PileFood::GetQueryLastEnumText()
{
	if (ParentMultiMapFixed.Get() != NULL && ParentMultiMapFixed->IsStoragePit(NULL))
	{
		return Object::GetQueryLastEnumText();
	}
	return (HELP_TEXT)HELP_TEXT_QUESTION_POT_INFO_FOOD_PILE_01;
}

void PileResource::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	PotStructure::CallVirtualFunctionsForCreation(coords);
	AltitudeZoomer.SetPosition(-GetHeight());
	SetSize();
}

LH3DObject::ObjectType PileFood::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

bool32_t PileResource::CanBePickedUpByCreature(Creature* creature)
{
	if (!(Flags & GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP) && CanBecomeAPhysicsObject())
	{
		return true;
	}
	return false;
}

bool32_t PileResource::IsTuggable()
{
	return false;
}

bool32_t PileResource::IsField(Creature* creature)
{
	return false;
}

float PileResource::GetLife()
{
	return (float)ResourceAmount / GetInfo()->MaxResource;
}

void PileResource::SetLife(float life)
{
	float currentLife = GetLife();
	if (life < currentLife)
	{
		uint32_t amount = (uint32_t)((float)GetInfo()->MaxResource * (currentLife - life));
		amount = max(1, amount);
		RemoveResource(GetResourceType(), amount, NULL, NULL);
	}
	else if (life > currentLife)
	{
		uint32_t amount = (uint32_t)((float)GetInfo()->MaxResource * (life - currentLife));
		amount = max(1, amount);
		AddResource(GetResourceType(), amount, NULL, IsPoisoned(), NULL, 0);
	}
}

bool32_t PileResource::ValidForLockedSelectProcess(GInterfaceStatus* status)
{
	return GetInfo()->GetPotType() != GetHandPotInfoType();
}

uint32_t PileResource::ProcessInInteract(GInterfaceStatus* status)
{
	Object* object = status->GetFirstObjectInCurrentHand();
	Pot*    pot = dynamic_cast<Pot*>(object);
	if (pot != NULL && pot != this && pot->GetInfo()->GetPotType() == GetHandPotInfoType())
	{
		RESOURCE_TYPE   type = GetResourceType();
		const GPotInfo* handInfo = &GPotInfo::GetInfo()[GetHandPotInfoType()];
		uint32_t        amount = handInfo->GetAmountToPickUpDuringMultiPickup(status->GetMultiPickupTicks());
		bool            poisoned = pot->IsPoisoned();
		PSysGlobal::SetMultiPickUpFraction(
			status,
			type == RESOURCE_TYPE_FOOD
				? (poisoned ? PSysGlobal::PICKUP_TYPE_POISONED_FOOD : PSysGlobal::PICKUP_TYPE_FOOD)
				: PSysGlobal::PICKUP_TYPE_WOOD,
			handInfo->GetSoundFractionThroughMultiPickUp(status->GetMultiPickupTicks()));
		amount = min(amount, GetResource(type));
		int room = pot->GetInfo()->MaxHandResource;
		if (room != 0)
		{
			room -= pot->GetResource(pot->GetResourceType());
			room = max(0, room);
			if (room < (int)amount)
			{
				amount = room;
			}
		}
		if (amount > 0)
		{
			bool     poisonedRemoved = false;
			uint32_t removed = RemoveResource(type, amount, status, &poisonedRemoved);
			pot->AddResource(type, removed, status, poisonedRemoved, NULL, 0);
			if (GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE)
			{
				PSysGlobal::StopMultiPickup(status);
			}
			GInterface* statusInterface = status->GetInterface();
			if (statusInterface == GGame::g_game->MyInterface())
			{
				ToolTips::ForceToolTips(HELP_TEXT_TOOLTIP_120, (float)pot->ResourceAmount);
			}
			return true;
		}
		PSysGlobal::StopMultiPickup(status);
	}
	return false;
}

bool32_t PileResource::NetworkFriendlyStartLockedSelect(GInterfaceStatus* status)
{
	RESOURCE_TYPE   type = GetResourceType();
	const GPotInfo* handInfo = &GPotInfo::GetInfo()[GetHandPotInfoType()];
	uint32_t        amount = min(handInfo->StartMultiPickupAmount, GetResource(type));
	if (amount > 0)
	{
		bool poisoned = false;
		RemoveResource(type, amount, status, &poisoned);
		Pot* pot = Pot::Create(status->Pos, handInfo, amount, NULL, GetTown(), 0, 0.0f, 1.0f, false);
		if (pot != NULL)
		{
			pot->SetPoisoned(poisoned || pot->IsPoisoned());
			status->PlaceObjectInMagicHand(pot);
			status->MultiPickupPlayer = GetPlayer();
			PSysGlobal::StartMultiPickup(status, Pos,
			                             type == RESOURCE_TYPE_FOOD ? (poisoned ? PSysGlobal::PICKUP_TYPE_POISONED_FOOD
			                                                                    : PSysGlobal::PICKUP_TYPE_FOOD)
			                                                        : PSysGlobal::PICKUP_TYPE_WOOD);
			return true;
		}
	}
	return false;
}

bool32_t PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* info)
{
	return true;
}

bool32_t PileResource::NetworkUnfriendlyEndLockedSelect()
{
#ifdef VERSION_BW1W100
	if (GetPlayer() == GGame::g_game->MyPlayer())
	{
		Object* object = GGame::g_game->MyInterface()->GetStatus()->GetFirstObjectInCurrentHand();
		Pot*    pot = dynamic_cast<Pot*>(object);
	}
#endif
	return true;
}

bool32_t PileResource::NetworkFriendlyEndLockedSelect(GInterfaceStatus* status)
{
	PSysGlobal::StopMultiPickup(status);
	if (status->GetPlayer() == GGame::g_game->MyPlayer())
	{
		Object* object = GGame::g_game->MyInterface()->GetStatus()->GetFirstObjectInCurrentHand();
		Pot*    pot = dynamic_cast<Pot*>(object);
		if (pot != NULL)
		{
			ToolTips::ForceToolTips(HELP_TEXT_TOOLTIP_120, (float)pot->ResourceAmount);
		}
	}
	return true;
}

bool32_t Pot::CanBecomeAPhysicsObject()
{
	return GetInfo()->CanBecomePhysicsObject;
}

void PileResource::SetSize()
{
	float proportion = GetProportionRaised();
	float altitude = (proportion - 1.0f) * GetHeight();
	Pos.SetAltitude(altitude);
	AltitudeZoomer.SetDestinationWithSpeedAndTime(altitude, 0.0f, 1.0f);
	float            scale = GetScale();
	float            yAngle = GetYAngle();
	const MapCoords& coords = Pos;
	LH3DObject*      object = Game3dObject;
	{
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
		object->LH3DObject::SetPosition(point, yAngle, scale);
	}
}

float PileFood::GetProportionRaised() const
{
	float fraction = (float)ResourceAmount / GetInfo()->MaxResource;
	CLAMP(fraction, 0.0f, 1.0f);
	if (fraction > 0.0f)
	{
		fraction = fraction * (1.0f - PileMinProportion) + PileMinProportion;
	}
	fraction = 1.0f - fraction;
	fraction = 1.0f - fraction * fraction;
	bool32_t inRange = fraction >= 0.0f && fraction <= 1.0f;
	if (!inRange)
	{
		CLAMP(fraction, 0.0f, 1.0f);
	}
	return fraction;
}

uint32_t PileFood::GetHandPotInfoType() const
{
	return POT_INFO_HAND_FOOD;
}

uint32_t PileWood::GetHandPotInfoType() const
{
	return POT_INFO_HAND_WOOD;
}

RESOURCE_TYPE PileFood::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

RESOURCE_TYPE PileWood::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

PileResource::PileResource(const MapCoords& coords, const GPotInfo* info, uint32_t resource, MultiMapFixed* parent,
                           Town* town, bool32_t create_reaction, float y_angle, float scale)
	: PotStructure(coords, info, resource, parent, town, create_reaction, y_angle, scale)
{
}

bool32_t PileResource::ValidForPlaceInHand(GInterfaceStatus* status)
{
	if (GetInfo()->GetPotType() != GetHandPotInfoType())
	{
		return false;
	}
	RESOURCE_TYPE type = GetResourceType();
	return GetResource(type) > 0;
}

StoragePit* Pot::GetStoragePit()
{
	return dynamic_cast<StoragePit*>(IsPartOfStructure());
}

PileResource* PileResource::IsPileResource()
{
	return this;
}

uint32_t PotStructure::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                                   const MapCoords* coords, int from_other_player)
{
	MultiMapFixed* structure = IsPartOfStructure();
	if (structure != NULL)
	{
		if (structure->GetBuildingSite() != NULL && structure->GetBuildingSite()->IsLinkedToThisBuildingSite(this))
		{
			return structure->GetBuildingSite()->AddResource(type, amount, status, poisoned, coords, from_other_player);
		}
		return structure->AddResource(type, amount, status, poisoned, coords, from_other_player);
	}
	return JustAddResource(type, amount, poisoned);
}

uint32_t PotStructure::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	MultiMapFixed* structure = IsPartOfStructure();
	if (structure != NULL && structure->GetBuildingSite() != NULL &&
	    structure->GetBuildingSite()->IsLinkedToThisBuildingSite(this))
	{
		return structure->GetBuildingSite()->RemoveResource(type, amount, status, poisoned);
	}
	if (poisoned != NULL)
	{
		*poisoned = IsPoisoned();
	}
	int      overMaximum = structure != NULL ? structure->CalulateAmountOverMaximum(type) : 0;
	uint32_t fromPot = amount;
	if (overMaximum > 0)
	{
		if (overMaximum >= (int)amount)
		{
			overMaximum = amount;
		}
		fromPot = amount - overMaximum;
	}
	uint32_t removed = fromPot != 0 ? JustRemoveResource(type, fromPot, poisoned) : 0;
	if (structure != NULL)
	{
		if (removed != 0)
		{
			structure->DoResourceRemoving(type, removed, status, poisoned);
		}
		if (removed < amount)
		{
			removed += structure->RemoveResource(type, amount - removed, status, poisoned);
		}
	}
	return removed;
}

uint32_t PotStructure::GetResource(RESOURCE_TYPE type)
{
	MultiMapFixed* structure = IsPartOfStructure();
	if (structure != NULL &&
	    (structure->GetBuildingSite() == NULL || !structure->GetBuildingSite()->IsLinkedToThisBuildingSite(this)))
	{
		return structure->GetResource(type);
	}
	return JustGetResource(type, 0, NULL);
}

Town* PotStructure::GetTown()
{
	MultiMapFixed* structure = IsPartOfStructure();
	if (structure != NULL)
	{
		return structure->GetTown();
	}
	return NULL;
}

bool32_t PileResource::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	RemoveReaction();
	if (GetInfo()->GetPotType() == GetHandPotInfoType())
	{
		return true;
	}
	RESOURCE_TYPE   type = GetResourceType();
	const GPotInfo* handInfo = &GPotInfo::GetInfo()[GetHandPotInfoType()];
	uint32_t        amount = (uint32_t)min(handInfo->GetResourceValue(), (float)GetResource(type));
	if (amount > 0)
	{
		RemoveResource(type, amount, NULL, NULL);
		Pot* pot = Pot::Create(Pos, handInfo, amount, NULL, GetTown(), 0, 0.0f, 1.0f, false);
		if (pot != NULL)
		{
			pot->SetPoisoned(pot->IsPoisoned() || IsPoisoned());
			status->PlaceObjectInMagicHand(pot);
		}
		return false;
	}
	return false;
}

Object* PileResource::TakeResourceAndCreateHandPot(unsigned long amount)
{
	RESOURCE_TYPE   type = GetResourceType();
	const GPotInfo* handInfo = &GPotInfo::GetInfo()[GetHandPotInfoType()];
	amount = min(amount, GetResource(type));
	if (amount != 0)
	{
		RemoveResource(type, amount, NULL, NULL);
		MapCoords coords = Pos;
		return Pot::Create(coords, handInfo, amount, NULL, GetTown(), 0, 0.0f, 1.0f, false);
	}
	return NULL;
}

float PileFood::Get2DRadius()
{
	return GetProportionRaised() * Object::Get2DRadius();
}

PileWood::~PileWood() {}

float PileWood::GetProportionRaised() const
{
	float fraction = (float)ResourceAmount / GetInfo()->MaxResource;
	if (fraction > 0.0f)
	{
		fraction = fraction * (1.0f - PileMinProportion) + PileMinProportion;
	}
	CLAMP(fraction, 0.0f, 1.0f);
	return fraction;
}

GPlayer* PotStructure::GetPlayer()
{
	if (ParentMultiMapFixed.Get() != NULL)
	{
		return ParentMultiMapFixed->GetPlayer();
	}
	if (Player == NULL)
	{
		return GGame::g_game->GetNeutralPlayer();
	}
	return Player;
}

uint32_t Pot::AddResourceToPos(const MapCoords& coords, GInterfaceStatus* status, RESOURCE_TYPE type, uint32_t amount,
                               bool poisoned, bool speed_up)
{
	if (!coords.InBounds())
	{
		return 0;
	}
	uint32_t  originalAmount = amount;
	MapCoords pos = coords;
	long      spiralX = 1;
	long      spiralZ = 1;
	for (uint32_t count = POT_ADD_RESOURCE_SEARCH_CELLS; count != 0; count--)
	{
		MapCell* cell = pos.ToMap();
		if (cell != NULL)
		{
			MapCellIterator it = cell->GetFirstIterator();
			while (true)
			{
				if (it.object == NULL || amount == 0)
				{
					break;
				}
				if (it.object->IsResourceStore(type) || (it.object->IsPot() && it.object->GetResourceType() == type))
				{
					float     radius = it.object->Get2DRadius();
					MapCoords centre;
					it.object->GetDefaultFireCentrePos(&centre);
					if (coords.IsCloseToEqual(centre, it.object->GetRadiusMultiplierForApplyingPotToPos() * radius))
					{
						MapCoords here = coords;
						amount -= it.object->AddResource(type, amount, status, poisoned, &here, 0);
						if (status != NULL)
						{
							it.object->DoCreatureMimicAfterAddingResource(type, *status);
						}
					}
				}
				it.object = it.object->GetMapChild(*it.cell);
				it.MoveToMobileObsIfNeededAndPoss();
			}
		}
		pos += *GUtils::Spiral(spiralX, spiralZ);
	}
	if (amount != 0 && !coords.IsWater())
	{
		GPlayer* player = NULL;
		if (status != NULL)
		{
			player = status->GetPlayer();
		}
		MapCoords here = coords;
		Pot*      pot = MagicResource::Create(here, player, type, amount, NULL);
		if (pot != NULL)
		{
			pot->PlayAddResourceSound(coords, type, amount);
			pot->SetPoisoned(poisoned || pot->IsPoisoned());
			pot->SetSpeedUp(speed_up || pot->IsSpeedUp());
			if (status != NULL && status == GGame::g_game->MyInterfaceStatus())
			{
				RESOURCE_RAIN_TYPE rainType = RESOURCE_RAIN_TYPE_NONE;
				if (type == RESOURCE_TYPE_WOOD)
				{
					rainType = RESOURCE_RAIN_TYPE_WOOD;
				}
				else if (type == RESOURCE_TYPE_FOOD)
				{
					rainType = RESOURCE_RAIN_TYPE_FOOD;
				}
				GGuidance::ResourceDropSFX(*status, coords, rainType);
			}
		}
	}
	return originalAmount - amount;
}

float Pot::GetRadiusMultiplierForApplyingPotToPos()
{
	return 2.0f;
}

SCRIPT_OBJECT_TYPE Pot::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_STORE;
}

uint32_t Pot::GetOverwriteInteractableToolTip()
{
	return IsPileFood() ? HELP_TEXT_TOOLTIP_139 : HELP_TEXT_TOOLTIP_140;
}

bool32_t Pot::IsResourceStore(RESOURCE_TYPE type)
{
	return false;
}

float Pot::GetFoodValue(FOOD_TYPE type)
{
	return (float)GetResource(RESOURCE_TYPE_FOOD);
}

bool32_t PileFood::Save(GameOSFile& file)
{
	if (PileResource::Save(file))
	{
		file.WritePtr((GameThing*)SpeedUpVisual);
		return true;
	}
	return false;
}

bool32_t PileFood::Load(GameOSFile& file)
{
	if (PileResource::Load(file))
	{
		file.ReadPtr((GameThing**)&SpeedUpVisual);
		return true;
	}
	return false;
}

bool32_t PileResource::Save(GameOSFile& file)
{
	if (PotStructure::Save(file))
	{
		file.WriteIt(AltitudeZoomer);
		return true;
	}
	return false;
}

bool32_t PileResource::Load(GameOSFile& file)
{
	if (PotStructure::Load(file))
	{
		file.ReadIt(AltitudeZoomer);
		return true;
	}
	return false;
}
