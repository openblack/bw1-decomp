#include "VortexInfo.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "ZeroPointConstants.h"
#include "MagicVortex.h"

#include "ColourConstants.h" /* For White */
#include "HalfLifeConstants.h"

#include "Animal.h"
#include "AnimalDove.h"
#include "ContainerInfo.h"
#include "Creature.h"
#include "Flock.h"
#include "GJUtils.h" /* For boundf, GJUtils::Linterp */
#include "Game.h"
#include "Game3DObject.h"
#include "Interface.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "JPSysInterface.h"
#include "MapCoordsMeters.h"      /* For MapCoords::MetersX, MapCoords::MapMetersX */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "PhysicsObject.h"
#include "MobileStaticInfo.h"
#include "PSysManager.h"
#include "PSysProcessInfo.h"
#include "PileResource.h"
#include "Rand.h"
#include "Script.h"
#include "SoundTag.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "VortexObjectInfo.h"
#include "VortexSave.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>      /* For struct LandBlock */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>    /* For struct LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>        /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>   /* For struct LH3DPrimitive */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>     /* For struct LH3DSubMesh */
#include <Lionhead/LH3DLib/development/LH3DMath.h>        /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DObject.h>      /* For class LH3DObject */
#include <Lionhead/LH3DLib/development/LH3DRender.h>      /* For LH3DRender::CreateMaterial */
#include <Lionhead/LH3DLib/development/LH3DTech.h>        /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h>     /* For LH3DZSorter */
#include <Lionhead/LH3DLib/development/PhysOb.h>          /* For class PhysOb */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For LH_SAMPLE_LOOP_FOREVER, LH_SAMPLE_PLAY_TYPE_ONCE */

#include <math.h> /* For cos, sin */

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define MAGIC_VORTEX_FILE "C:\\dev\\black\\MagicVortex.cpp"
#elif defined(VERSION_BW1W110)
#define MAGIC_VORTEX_FILE "C:\\dev\\Black\\MagicVortex.cpp"
#elif defined(VERSION_BW1W130)
#define MAGIC_VORTEX_FILE "D:\\Work\\Games\\dd\\Black\\MagicVortex.cpp"
#else
#define MAGIC_VORTEX_FILE "C:\\dev\\MP\\Black\\MagicVortex.cpp"
#endif

const float FadeTime = 5.0f;
const float VortexRadius = 58.0f;
const float HeightProfileCentre = 30.0f;
const float HeightProfileHalfWidth = 20.0f;
const float VortexFlatRadius = 50.0f;
const float HeightProfile[VORTEX_HEIGHT_PROFILE_POINTS] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
const float FootPrintDelay = 2.0f;
const float ActiveLightmapFraction = 0.6f;
const float RaisedParticleHeight = 0.3f;
const float LoweredParticleHeight = 2.5f;
const float ZCheatBoxScale = 1.0f;

static char* FootPrintFileNames[VORTEX_TYPE_LAST] = {
	".\\data\\textures\\S_VortexBaseMultiRing.raw", //
	".\\data\\textures\\S_VortexBaseMultiRing.raw", //
	".\\data\\textures\\S_Volcano_Base.raw",        //
};
static char* FootPrintAlphaFileNames[VORTEX_TYPE_LAST] = {
	".\\data\\textures\\S_VortexBaseAlphacopy.raw", //
	".\\data\\textures\\S_VortexBaseAlphacopy.raw", //
	".\\data\\textures\\S_Volcano_Base_Alpha.raw",  //
};

GVortexInfo GVortexInfo::Infos[VORTEX_TYPE_LAST];

GBaseInfo* GVortexInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = VORTEX_TYPE_LAST;
	return GetInfo();
}

VORTEX_TYPE GVortexInfo::GetVortexType() const
{
	return (VORTEX_TYPE)(this - GetInfo());
}

VILLAGER_INFO GVortexInfo::GetVillagerInfoToCreate(TRIBE_TYPE tribe)
{
	VILLAGER_NUMBER number;

	if (GRand::GameFloatRand(1.0f, MAGIC_VORTEX_FILE, 83) < 0.5f)
	{
		number = VILLAGER_NUMBER_HOUSEWIFE;
	}
	else
	{
		number = (VILLAGER_NUMBER)(GRand::GameRand(VILLAGER_NUMBER_LEADER - VILLAGER_NUMBER_FORESTER + 1,
		                                           MAGIC_VORTEX_FILE, 89) +
		                           VILLAGER_NUMBER_FORESTER);
	}
	return (VILLAGER_INFO)(tribe * VILLAGER_NUMBER_LAST + number);
}

int32_t GVortexInfo::GetMaxToCreate(VORTEX_STAT_TYPE type)
{
	return type == VORTEX_STAT_TYPE_VILLAGER ? VORTEX_MAX_VILLAGERS_TO_CREATE : 0;
}

uint32_t GVortexInfo::GetMaxToCreateFromInfo(VORTEX_STAT_TYPE type)
{
	if (type >= 0 && type < VORTEX_STAT_TYPE_LAST)
	{
		return MaxToCreate[type];
	}
	return 0;
}

const char* GVortexInfo::GetFootPrintFileName() const
{
	return FootPrintFileNames[GetVortexType()];
}

const char* GVortexInfo::GetFootPrintAlphaFileName() const
{
	return FootPrintAlphaFileNames[GetVortexType()];
}

bool GVortexInfo::IsAdjustLandscapeHeight() const
{
	return GetVortexType() != VORTEX_TYPE_VOLCANO;
}

LHListHead<LandscapeVortex> LandscapeVortex::Vortices;

static float VortexInnerRadius = VortexRadius - VORTEX_INNER_RADIUS_MARGIN;

GVortexInfo* LandscapeVortex::GetVortexInfo()
{
	return &GVortexInfo::GetInfo()[Type];
}

void LandscapeVortex::SetTown(Town* town) {}

void LandscapeVortex::SetFlockParams(const MapCoords& coords, float flock_distance, float domain_radius, Flock* flock)
{
}

bool LandscapeVortex::IsVillagerBeingThrownByAVortex(Villager* villager)
{
	FOREACH_LH_LIST_HEAD(LandscapeVortex, vortex, Vortices)
	{
		if (vortex->IsVillagerBeingThrownByThisVortex(villager))
		{
			return true;
		}
	}
	return false;
}

LandscapeVortexVolc::LandscapeVortexVolc() {}

bool32_t LandscapeVortex::HandShouldFeelWithMeshIntersect()
{
	return false;
}

void LandscapeVortex::PhysicsEditorCreate(int keep_altitude) {}

bool32_t LandscapeVortex::CanBePickedUpByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeSetOnFire(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeStompedOnByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeThrownByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBePutInAStoragePit(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeDestroyedByStoning(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeStonedAndEatenByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeExaminedByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeFoughtByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanActAsAContainer(Creature* creature)
{
	return false;
}

void LandscapeVortex::ProcessContentsOfVortex() {}

bool LandscapeVortex::IsVillagerBeingThrownByThisVortex(Villager* villager)
{
	return false;
}

uint32_t LandscapeVortexVolc::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC;
}

char* LandscapeVortexVolc::GetDebugText()
{
	return "MagicVortexVolc:";
}

LandscapeVortexVolc::LandscapeVortexVolc(const MapCoords& coords, float radius)
	: LandscapeVortex(coords, VORTEX_TYPE_VOLCANO, radius)
{
}

LandscapeVortexIn::LandscapeVortexIn()
{
	SetToZero();
}

uint32_t LandscapeVortexIn::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_IN;
}

char* LandscapeVortexIn::GetDebugText()
{
	return "MagicVortexIn:";
}

LandscapeVortexIn::LandscapeVortexIn(const MapCoords& coords, float radius)
	: LandscapeVortex(coords, VORTEX_TYPE_IN, radius)
{
	SetToZero();
	VortexSaver = new (MAGIC_VORTEX_FILE, 216) VortexSave("vortex.txt", false);
}

void LandscapeVortexIn::ToBeDeleted(bool32_t delete_now)
{
	if (VortexSaver != NULL)
	{
		VortexSaver->ToBeDeleted(false);
		VortexSaver = NULL;
	}
	LandscapeVortex::ToBeDeleted(false);
}

void LandscapeVortexIn::SetToZero()
{
	VortexSaver = NULL;
	for (int i = 0; i < VORTEX_STAT_TYPE_LAST; i++)
	{
		Saved[i] = 0;
	}
}

bool LandscapeVortexIn::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* object)
{
	return false;
}

void LandscapeVortexIn::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	Object* object = physics_object->GetGameObjectWhoHitMe();
	if (State == VORTEX_STATE_ACTIVE && object != NULL && object->CanBeSuckedIntoVortex(this) &&
	    (object->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0)
	{
		LHPoint  velocity = physics_object->WhoHitMe->Physics.Velocity;
		LHMatrix matrix;
		physics_object->WhoHitMe->Physics.FillPositionMatrixGameFriendly(matrix);
		AddObject(object, velocity, matrix, true);
	}
}

PHYSICS_CONSTANTS_TYPE LandscapeVortexIn::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_VORTEX;
}

bool32_t LandscapeVortexIn::CreatureMustAvoid(Creature* creature)
{
	if (creature == NULL)
	{
		return true;
	}
	return !creature->CanBeSuckedIntoVortex(this);
}

void LandscapeVortexIn::AddObject(Object* object, const LHPoint& velocity, const LHMatrix& matrix, bool from_physics)
{
	GetVortexInfo();
	Creature* creature = object->CastCreature();
	if (creature != NULL)
	{
		if (GUtils::GetDistanceInMetres(creature->Pos, Pos) < GetCreatureFizzRadius())
		{
			creature->SetFizz(1.0f, 3.0f, true);
		}
		return;
	}
	bool indestructible = false;
	if ((object->Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) != 0)
	{
		indestructible = true;
	}
	if (object->CanBecomeAPhysicsObject() && ObjectMoverParticle != NULL)
	{
		ObjectMoverParticle->AddTarget(new (MAGIC_VORTEX_FILE, 358) VortexObjectInfo(object, from_physics, velocity,
		                                                                             matrix, indestructible, this));
	}
}

void LandscapeVortexIn::SaveVortexObject(Object* object)
{
	RemoveObjectFromWorld(object);
	VortexSaver->Push(object, Pos);
}

void LandscapeVortexIn::RemoveObjectFromWorld(Object* object)
{
	Villager* villager = dynamic_cast<Villager*>(object);
	if (villager != NULL)
	{
		Town* town = villager->GetTown();
		if (town != NULL)
		{
			town->RemoveVillager(villager);
		}
	}
	Animal* animal = dynamic_cast<Animal*>(object);
	if (animal != NULL)
	{
		animal->DeleteDependancys();
	}
}

float LandscapeVortexIn::GetCreatureFizzRadius()
{
	return Get2DRadius() * VORTEX_SUCK_RADIUS_SCALE;
}

void LandscapeVortexIn::ProcessContentsOfVortex()
{
	if (State != VORTEX_STATE_ACTIVE)
	{
		return;
	}
	float radius;
	if (GGame::g_game->data.GameTurn % VORTEX_FULL_RADIUS_TURNS == 0)
	{
		radius = Radius;
	}
	else
	{
		radius = Radius * 0.5f;
	}
	MapCoords coords = Pos;
	long      count = VORTEX_MAX_SPIRAL_CELLS;
	long      spiralX = 1;
	long      spiralZ = 1;
	do
	{
		if (coords.InBounds())
		{
			if (coords.GetDistance(Pos) > radius)
			{
				return;
			}
			for (Object* object = coords.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
			     object = coords.FindType(OBJECT_TYPE_ANY, object))
			{
				if (object->Pos.ToMap() == coords.ToMap() && object->CanBeSuckedIntoVortex(this))
				{
					LHMatrix matrix;
					object->GetWorldMatrix(&matrix);
					AddObject(object, LHPoint(0.0f, 0.0f, 0.0f), matrix, false);
				}
				else
				{
					PileResource* pile = object->IsPileResource();
					if (pile != NULL)
					{
						pile->GetHandPotInfoType();
						Object* taken = pile->TakeResourceAndCreateHandPot(VORTEX_PILE_TAKE_AMOUNT);
						if (taken != NULL)
						{
							taken->SetScale((GRand::GameFloatRand(0.3f, MAGIC_VORTEX_FILE, 436) * 0.4f + 0.3f) *
							                taken->GetScale());
							LHMatrix matrix;
							taken->GetWorldMatrix(&matrix);
							AddObject(taken, LHPoint(0.0f, 0.0f, 0.0f), matrix, false);
						}
					}
				}
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	} while (count != 0);
}

LandscapeVortexOut::LandscapeVortexOut()
{
	SetToZero();
}

uint32_t LandscapeVortexOut::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT;
}

char* LandscapeVortexOut::GetDebugText()
{
	return "MagicVortexOut:";
}

LandscapeVortexOut::LandscapeVortexOut(const MapCoords& coords, float radius)
	: LandscapeVortex(coords, VORTEX_TYPE_OUT, radius)
{
	SetToZero();
	FlockCoords.Set(coords);
	VortexSaver = new (MAGIC_VORTEX_FILE, 458) VortexSave("vortex.txt", true);
}

void LandscapeVortexOut::SetToZero()
{
	TownToJoin = NULL;
	FlockDistance = 0.0f;
	DomainRadius = 0.0f;
	AnimalFlock = NULL;
	FlockToJoin = NULL;
	VortexSaver = NULL;
	FlockCoords.Clear();
	field_0x110 = 0;
	field_0x114 = 0;
	for (int i = 0; i < VORTEX_STAT_TYPE_LAST; i++)
	{
		Created[i] = 0;
	}
}

void LandscapeVortexOut::ToBeDeleted(bool32_t delete_now)
{
	if (VortexSaver != NULL)
	{
		VortexSaver->ToBeDeleted(false);
		VortexSaver = NULL;
	}
	LHLinkedNode<Object*>* node = ThrownObjects.GetStart();
	while (node != NULL)
	{
		LHLinkedNode<Object*>* next = node->next.Get();
		node->payload->Flags &= ~GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE;
		node = next;
	}
	ThrownObjects.RemoveAll();
	LandscapeVortex::ToBeDeleted(false);
}

bool LandscapeVortexOut::IsVillagerBeingThrownByThisVortex(Villager* villager)
{
	return ThrownObjects.Find(villager) != NULL;
}

void LandscapeVortexOut::SetTown(Town* town)
{
	TownToJoin = town;
}

void LandscapeVortexOut::SetFlockParams(const MapCoords& coords, float flock_distance, float domain_radius,
                                        Flock* flock)
{
	FlockCoords = coords;
	FlockDistance = flock_distance;
	DomainRadius = domain_radius;
	FlockToJoin = flock;
}

void LandscapeVortexOut::ProcessContentsOfVortex()
{
	if (AnimalFlock != NULL && AnimalFlock->IsAvailable() != true)
	{
		AnimalFlock = NULL;
	}
	if (FlockToJoin != NULL && FlockToJoin->IsAvailable() != true)
	{
		FlockToJoin = NULL;
	}
	if (TownToJoin == NULL)
	{
		TownToJoin = Pos.GetNearestTown(VORTEX_TOWN_SEARCH_DISTANCE);
	}
	LHLinkedNode<Object*>* node = ThrownObjects.GetStart();
	while (node != NULL)
	{
		LHLinkedNode<Object*>* next = node->next.Get();
		if (node->payload->IsAvailable() != true)
		{
			ThrownObjects.Remove(node->payload);
		}
		else
		{
			Villager* villager = dynamic_cast<Villager*>(node->payload);
			if (villager != NULL)
			{
				villager->SetLife(1.0f);
			}
		}
		node = next;
	}
	if (VortexSaver != NULL ||
	    Created[VORTEX_STAT_TYPE_VILLAGER] < GetVortexInfo()->GetMaxToCreate(VORTEX_STAT_TYPE_VILLAGER))
	{
		FadeStartTurn = GGame::g_game->data.GameTurn;
	}
	if (GGame::g_game->data.GameTurn % VORTEX_CREATE_TURNS != 0)
	{
		return;
	}
	float   angle = GRand::GameFloatRand(TWO_PI, MAGIC_VORTEX_FILE, 578);
	LHPoint offset((float)sin(angle) * VORTEX_THROW_OUT_DISTANCE, 0.0f, (float)cos(angle) * -VORTEX_THROW_OUT_DISTANCE);
	MapCoords coords = Pos;
	coords.SetMapMetersX(coords.MapMetersX() + offset.x);
	coords.SetMapMetersZ(coords.MapMetersZ() + offset.z);
	if (VortexSaver != NULL)
	{
		GameThing* thing = NULL;
		if (VortexSaver->Pop(coords, &thing))
		{
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				Created[VORTEX_STAT_TYPE_TOTAL_OBJECTS]++;
				Created[VORTEX_STAT_TYPE_RESOURCE_WOOD] += object->GetResource(RESOURCE_TYPE_WOOD);
				Created[VORTEX_STAT_TYPE_RESOURCE_WOOD] += object->GetResource(RESOURCE_TYPE_FOOD);
				if (object->IsVillager(NULL))
				{
					Created[VORTEX_STAT_TYPE_VILLAGER]++;
				}
				DoPostObjectCreateThings(object, angle);
			}
		}
		else
		{
			VortexSaver->ToBeDeleted(false);
			VortexSaver = NULL;
		}
		return;
	}
	if (Created[VORTEX_STAT_TYPE_VILLAGER] >= GetVortexInfo()->GetMaxToCreate(VORTEX_STAT_TYPE_VILLAGER))
	{
		return;
	}
	bool       child = ++Created[VORTEX_STAT_TYPE_VILLAGER] % VORTEX_CHILD_INTERVAL == 0;
	TRIBE_TYPE tribe = TRIBE_TYPE_NORSE;
	if (TownToJoin != NULL)
	{
		tribe = TownToJoin->tribe_type;
	}
	const GVillagerInfo* info = &GVillagerInfo::InfoList[GetVortexInfo()->GetVillagerInfoToCreate(tribe)];
	Villager*            villager =
		Villager::Create(coords, info,
	                     child ? GRand::GameRand(VORTEX_CHILD_AGE_RANGE, MAGIC_VORTEX_FILE, 630) + VORTEX_CHILD_MIN_AGE
	                           : GRand::GameRand(VORTEX_ADULT_AGE_RANGE, MAGIC_VORTEX_FILE, 630) + VORTEX_ADULT_MIN_AGE,
	                     false);
	if (villager != NULL)
	{
		DoPostObjectCreateThings(villager, angle);
	}
}

void LandscapeVortexOut::DoPostObjectCreateThings(Object* object, float angle)
{
	if (ThrownObjects.IsThisInList(object))
	{
		return;
	}
	Villager* villager = dynamic_cast<Villager*>(object);
	if (villager != NULL)
	{
		if (TownToJoin != NULL)
		{
			Town* town = villager->GetTown();
			if (town != NULL)
			{
				town->RemoveVillager(villager);
			}
			TownToJoin->AddVillagerToTown(villager);
		}
		if (FlockToJoin != NULL)
		{
			villager->SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_FROM_VORTEX, 0);
		}
		if (FlockToJoin != NULL)
		{
			FlockToJoin->AddLivingToFlock(villager);
			if (FlockToJoin->IsInScript())
			{
				uint32_t id = GScript::AddScriptGameThing(villager, false);
				if (id != 0)
				{
					GScript::IncrementScriptReference(id);
					villager->SetControlledByScript(true);
				}
			}
		}
	}
	Animal* animal = dynamic_cast<Animal*>(object);
	if (animal != NULL)
	{
		if (AnimalFlock == NULL ||
		    (AnimalFlock->Members.GetLast() != NULL && AnimalFlock->Members.GetLast()->info != animal->info))
		{
			if (AnimalFlock != NULL)
			{
				AnimalFlock->RemoveLivingFromFlock(animal, true);
			}
			AnimalFlock = new (MAGIC_VORTEX_FILE, 687)
				Flock(FlockCoords, (const GFlockInfo*)&GContainerInfo::Definitions[CONTAINER_INFO_FLOCK], GetPlayer(),
			          FLOCK_MAGIC);
			if (AnimalFlock != NULL)
			{
				AnimalFlock->SetDomainCentrePos(FlockCoords);
				AnimalFlock->FlockDistance = (uint16_t)FlockDistance;
				AnimalFlock->DomainRadius = (uint16_t)DomainRadius;
			}
		}
		animal->SetFlock(AnimalFlock);
		animal->SetTown(TownToJoin);
	}
	if (dynamic_cast<Dove*>(object) == NULL)
	{
		ThrownObjects.Add(object);
		ThrowOutObject(object, GetPlayer(), angle, 1.0f);
		object->Flags |= GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE;
	}
}

void LandscapeVortex::ThrowOutObject(Object* object, GPlayer* player, float angle, float strength)
{
	float   height = object->GetHeight() * 0.5f;
	float   speed = (GRand::GameFloatRand(5.0f, MAGIC_VORTEX_FILE, 713) + 8.0f) * strength;
	LHPoint velocity((float)sin(angle) * speed, 0.0f, -((float)cos(angle) * speed));
	float   up = (GRand::GameFloatRand(5.0f, MAGIC_VORTEX_FILE, 716) + 10.0f) * strength;
	velocity.y = up;
	LHPoint spin = velocity ^ LHPoint(0.0f, 1.0f, 0.0f);
	spin *= 1.0f / height;
	object->InitialisePhysics(velocity, spin, this, true, NULL);
}

LandscapeVortex* LandscapeVortex::Create(const MapCoords& coords, VORTEX_TYPE type, float radius)
{
	LandscapeVortex* vortex = NULL;
	switch (type)
	{
	case VORTEX_TYPE_VOLCANO:
		vortex = new (MAGIC_VORTEX_FILE, 733) LandscapeVortexVolc(coords, VORTEX_RADIUS);
		break;
	case VORTEX_TYPE_IN:
		vortex = new (MAGIC_VORTEX_FILE, 736) LandscapeVortexIn(coords, VORTEX_RADIUS);
		break;
	case VORTEX_TYPE_OUT:
		vortex = new (MAGIC_VORTEX_FILE, 739) LandscapeVortexOut(coords, VORTEX_RADIUS);
		break;
	}
	if (vortex != NULL)
	{
		vortex->CallVirtualFunctionsForCreation(coords);
	}
	return vortex;
}

LandscapeVortex::LandscapeVortex()
{
	SetToZero();
}

LandscapeVortex::LandscapeVortex(const MapCoords& coords, VORTEX_TYPE type, float radius)
	: MobileStatic(coords, GetMobileStaticInfo(), NULL, 0.0f, 1.0f)
{
	SetToZero();
	Type = type;
	Radius = radius;
	State = GetVortexInfo()->InitialState;
}

void LandscapeVortex::ReleaseFootPrints()
{
	if (FootPrintMaterial != NULL)
	{
		FootPrintMaterial->texture = NULL;
		FootPrintMaterial = NULL;
	}
	if (FootPrintAlphaMaterial != NULL)
	{
		FootPrintAlphaMaterial->texture = NULL;
		FootPrintAlphaMaterial = NULL;
	}
	if (FootPrintBlock != NULL)
	{
		FootPrintBlock->DrawFlags = 0;
	}
}

void LandscapeVortex::ToBeDeleted(bool32_t delete_now)
{
	Vortices.Remove(this);
	if (ZCheatBox != NULL)
	{
		ZCheatBox->Release();
		ZCheatBox = NULL;
	}
	if (ObjectMoverParticle != NULL)
	{
		delete ObjectMoverParticle;
		ObjectMoverParticle = NULL;
	}
	if (PreLandscapeParticle != NULL)
	{
		delete PreLandscapeParticle;
		PreLandscapeParticle = NULL;
	}
	if (PostLandscapeParticle != NULL)
	{
		delete PostLandscapeParticle;
		PostLandscapeParticle = NULL;
	}
	if (LightMapParticle != NULL)
	{
		delete LightMapParticle;
		LightMapParticle = NULL;
	}
	ReleaseFootPrints();
	MobileStatic::ToBeDeleted(delete_now);
}

void LandscapeVortex::SetToZero()
{
	ZCheatBox = NULL;
	FootPrintBlock = NULL;
	FootPrintAlphaMaterial = NULL;
	FootPrintMaterial = NULL;
	ObjectMoverParticle = NULL;
	PostLandscapeParticle = NULL;
	PreLandscapeParticle = NULL;
	LightMapParticle = NULL;
	FadeStartTurn = 0;
	field_0xb8 = 0;
	State = VORTEX_STATE_INACTIVE;
	AverageHeight = 0.0f;
	LastFootPrintFraction = -1.0f;
	LastHeightFraction = -1.0f;
	Centre.SetNull();
	Type = VORTEX_TYPE_IN;
	Radius = 0.0f;
	Vortices.AddToFirst(this);
}

GMobileStaticInfo* LandscapeVortex::GetMobileStaticInfo()
{
	return &GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_VORTEX];
}

bool32_t LandscapeVortex::ValidForPlaceInHand(GInterfaceStatus* status)
{
	return false;
}

bool32_t LandscapeVortex::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t LandscapeVortex::IsEffectReceiver(EffectValues* effect)
{
	return false;
}

SCRIPT_OBJECT_TYPE LandscapeVortex::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_VORTEX;
}

bool32_t LandscapeVortex::Save(GameOSFile& file)
{
	if (MobileStatic::Save(file))
	{
		file.WriteIt(Centre);
		file.WriteIt(Type);
		file.WriteIt(State);
		file.WriteIt(Radius);
		file.WriteIt(AverageHeight);
		file.WriteSafe(OriginalHeights);
		return true;
	}
	return false;
}

bool32_t LandscapeVortex::Load(GameOSFile& file)
{
	if (MobileStatic::Load(file))
	{
		file.ReadIt(Centre);
		file.ReadIt(Type);
		file.ReadIt(State);
		file.ReadIt(Radius);
		file.ReadIt(AverageHeight);
		file.ReadSafe(OriginalHeights);
		return true;
	}
	return false;
}

bool32_t LandscapeVortexIn::Save(GameOSFile& file)
{
	if (LandscapeVortex::Save(file))
	{
		file.WritePtr(VortexSaver);
		file.WriteSafe(reinterpret_cast<PSysBase* const&>(ObjectMoverParticle));
		file.WriteArray(Saved, VORTEX_STAT_TYPE_LAST);
		return true;
	}
	return false;
}

bool32_t LandscapeVortexIn::Load(GameOSFile& file)
{
	if (LandscapeVortex::Load(file))
	{
		file.ReadPtr((GameThing**)&VortexSaver);
		file.ReadSafe((PSysBase*&)ObjectMoverParticle);
		file.ReadArray(Saved);
		return true;
	}
	return false;
}

bool32_t LandscapeVortexOut::Save(GameOSFile& file)
{
	if (LandscapeVortex::Save(file))
	{
		file.WritePtr(AnimalFlock);
		file.WritePtr(FlockToJoin);
		file.WriteIt(FlockCoords);
		file.WriteIt(FlockDistance);
		file.WriteIt(DomainRadius);
		file.WritePtr(VortexSaver);
		file.WriteArray(Created, VORTEX_STAT_TYPE_LAST);
		file.WriteSafe(ThrownObjects);
		file.WritePtr(TownToJoin);
		return true;
	}
	return false;
}

bool32_t LandscapeVortexOut::Load(GameOSFile& file)
{
	if (LandscapeVortex::Load(file))
	{
		file.ReadPtr((GameThing**)&AnimalFlock);
		file.ReadPtr((GameThing**)&FlockToJoin);
		file.ReadIt(FlockCoords);
		file.ReadIt(FlockDistance);
		file.ReadIt(DomainRadius);
		file.ReadPtr((GameThing**)&VortexSaver);
		file.ReadArray(Created);
		file.ReadSafe(ThrownObjects);
		file.ReadPtr((GameThing**)&TownToJoin);
		return true;
	}
	return false;
}

bool32_t VortexObjectInfo::Save(GameOSFile& file)
{
	if (PSysBase::Save(file))
	{
		file.WriteIt(Velocity);
		file.WriteIt(Matrix);
		file.WriteSafe(Thing);
		file.WriteIt(FromPhysics);
		file.WriteIt(Indestructible);
		file.WritePtr(Vortex);
		return true;
	}
	return false;
}

bool32_t VortexObjectInfo::Load(GameOSFile& file)
{
	if (PSysBase::Load(file))
	{
		file.ReadIt(Velocity);
		file.ReadIt(Matrix);
		file.ReadSafe(Thing);
		file.ReadIt(FromPhysics);
		file.ReadIt(Indestructible);
		file.WritePtr(Vortex);
		return true;
	}
	return false;
}

void LandscapeVortex::Create3DObject()
{
	Object::Create3DObject();
	Game3dObject->SetFootPrintOnTexture(false);
	Game3dObject->SetShadowOnTexture(false);
	Game3dObject->SetCastDynamicShadow(false);
}

MESH_LIST LandscapeVortex::GetMesh() const
{
	return MSH_S_VORTEXCYLINDER;
}

void LandscapeVortex::PreLandscapeDrawAll()
{
	FOREACH_LH_LIST_HEAD(LandscapeVortex, vortex, Vortices)
	{
		vortex->PreLandscapeDraw(true);
	}
}

void LandscapeVortex::ProcessAll()
{
	FOREACH_LH_LIST_HEAD_SAFE(LandscapeVortex, vortex, Vortices)
	{
		vortex->ProcessVortex();
	}
}

float LandscapeVortex::GetTimeSinceFadeStarted()
{
	if (State == VORTEX_STATE_INACTIVE)
	{
		return 0.0f;
	}
	return ((float)(GGame::g_game->data.GameTurn - FadeStartTurn) + GGame::g_game->TurnFraction) *
	       GGameInfo::Info.MillisecondsPerGameTurn * 0.001f;
}

float LandscapeVortex::GetFractionLightmap()
{
	float time = GetTimeSinceFadeStarted();
	if (State == VORTEX_STATE_INACTIVE)
	{
		return 0.0f;
	}
	if (State == VORTEX_STATE_ACTIVE)
	{
		return ActiveLightmapFraction;
	}
	if (State == VORTEX_STATE_FADE_IN)
	{
		if (time < FootPrintDelay)
		{
			return time / FootPrintDelay;
		}
		return GJUtils::Linterp(1.0f, ActiveLightmapFraction, boundf(0.0f, (time - FootPrintDelay) / FadeTime, 1.0f));
	}
	if (time < FadeTime)
	{
		return GJUtils::Linterp(ActiveLightmapFraction, 1.0f, time / FadeTime);
	}
	return 1.0f - boundf(0.0f, (time - FadeTime) / FootPrintDelay, 1.0f);
}

float LandscapeVortex::GetFractionFootPrintComplete()
{
	float time = GetTimeSinceFadeStarted();
	if (State == VORTEX_STATE_INACTIVE)
	{
		return 0.0f;
	}
	if (State == VORTEX_STATE_ACTIVE)
	{
		return 1.0f;
	}
	if (State == VORTEX_STATE_FADE_IN)
	{
		if (time < FootPrintDelay)
		{
			return 0.0f;
		}
		float fraction = boundf(0.0f, (time - FootPrintDelay) / FadeTime, 1.0f);
		return fraction * fraction * (3.0f - 2.0f * fraction);
	}
	if (time < FadeTime)
	{
		float fraction = 1.0f - time / FadeTime;
		return fraction * fraction * (3.0f - 2.0f * fraction);
	}
	return 0.0f;
}

void LandscapeVortex::StartFadeIn()
{
	State = VORTEX_STATE_FADE_IN;
	FadeStartTurn = GGame::g_game->data.GameTurn;
}

void LandscapeVortex::StartFadeOut()
{
	State = VORTEX_STATE_FADE_OUT;
	FadeStartTurn = GGame::g_game->data.GameTurn;
}

int LandscapeVortex::GetHeightMapSize()
{
	return (int)((VortexRadius + VortexRadius) / LAND_CELL_SIZE);
}

void LandscapeVortex::ProcessVortex()
{
	ProcessContentsOfVortex();
	if (LightMapParticle != NULL)
	{
		PSysProcessInfo info;
		LightMapParticle->Process(info);
	}
	if (ObjectMoverParticle != NULL)
	{
		PSysProcessInfo info;
		ObjectMoverParticle->Process(info);
	}
	float time = GetTimeSinceFadeStarted();
	bool  finished = time > FootPrintDelay + FadeTime;
	switch (State)
	{
	case VORTEX_STATE_FADE_IN:
		if (finished)
		{
			State = VORTEX_STATE_ACTIVE;
		}
		break;
	case VORTEX_STATE_FADE_OUT:
		if (finished)
		{
			State = VORTEX_STATE_INACTIVE;
			ToBeDeleted(false);
			return;
		}
		break;
	}
	float fraction = GetFractionHeight();
	if (GetVortexInfo()->IsAdjustLandscapeHeight() && fraction > LastHeightFraction)
	{
		LastHeightFraction = fraction;
		int z = (int)(Centre.z / LAND_CELL_SIZE);
		int x = (int)(Centre.x / LAND_CELL_SIZE);
		int size = GetHeightMapSize();
		if (OriginalHeights.GetSize() == 0)
		{
			int half = size / 2;
			OriginalHeights.SetSize((half * 2 + 1) * (half * 2 + 1));
			AverageHeight = 0.0f;
			int index = 0;
			for (int cellX = x - half; cellX <= x + half; cellX++)
			{
				for (int cellZ = z - half; cellZ <= z + half; cellZ++)
				{
					LandCell* cell = LH3DIsland::GetCell(cellX, cellZ);
					uint8_t   height = cell != NULL ? cell->altitude : 0;
					OriginalHeights[index++] = height;
					AverageHeight += height;
				}
			}
			AverageHeight /= OriginalHeights.GetSize();
		}
		int half = size / 2;
		int index = 0;
		for (int cellX = x - half; cellX <= x + half; cellX++)
		{
			for (int cellZ = z - half; cellZ <= z + half; cellZ++)
			{
				float original = OriginalHeights[index++];
				float height =
					original + GetHeightRaise(cellX * LAND_CELL_SIZE - Centre.x, cellZ * LAND_CELL_SIZE - Centre.z,
				                              original, AverageHeight, fraction);
				int value = FloatToInt(height);
				value = min(value, 255);
				LH3DIsland::SetHeightAsByte(cellX, cellZ, (uint8_t)max(value, 0));
			}
		}
	}
}

float LandscapeVortex::GetHeightRaise(float dx, float dz, float original, float average, float fraction)
{
	float distance = sqrt(dx * dx + dz * dz);
	float raise;
	if (distance > VortexInnerRadius)
	{
		raise = 0.0f;
	}
	else if (distance < VortexFlatRadius)
	{
		raise = average - original;
	}
	else
	{
		raise = (VortexInnerRadius - distance) * (average - original) / (VortexInnerRadius - VortexFlatRadius);
	}
	float spline;
	HeightSpline.EvalAtT(boundf(0.0f, distance, VortexRadius), &spline);
	return (raise + spline) * fraction;
}

float LandscapeVortex::GetFractionHeight()
{
	float fraction = GetFractionFootPrintComplete();
	if (State == VORTEX_STATE_FADE_OUT)
	{
		fraction = 1.0f;
	}
	float inverse = 1.0f - fraction;
	return 1.0f - inverse * inverse;
}

void LandscapeVortex::CreateFootPrints()
{
	static const float FootPrintTextureOffset = 0.5f;
	static const float FootPrintTextureScale = 0.00625f;
	if (FootPrintMaterial != NULL)
	{
		return;
	}
	FootPrintMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ,
	                               GJUtils::CreateSharedTexture(GetVortexInfo()->GetFootPrintFileName()));
	long x = (long)(Centre.x / LAND_CELL_SIZE);
	long z = (long)(Centre.z / LAND_CELL_SIZE);
	FootPrintBlock = LH3DIsland::GetBlock(x, z);
	FootPrintAlphaMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z,
	                               GJUtils::CreateSharedTexture(GetVortexInfo()->GetFootPrintAlphaFileName()));
	if (FootPrintBlock == NULL)
	{
		return;
	}
	LHMatrix matrix;
	matrix.SetIdentity();
	LHPoint offset(-Centre.z, 0.0f, -Centre.x);
	offset.x += FootPrintBlock->Z;
	offset.z += FootPrintBlock->X;
	offset *= FootPrintTextureScale;
	matrix.Translation(offset);
	float scale = 1.0f / GetVortexInfo()->BaseScale;
	matrix.PostScale(scale);
	matrix.PostTranslation(LHPoint(FootPrintTextureOffset, 0.0f, FootPrintTextureOffset));
	FootPrintBlock->DrawFlags = LAND_BLOCK_DRAW_FLAG_BEFORE | LAND_BLOCK_DRAW_FLAG_AFTER;
	FootPrintBlock->BeforeMaterial = FootPrintAlphaMaterial;
	FootPrintBlock->AfterMaterial = FootPrintMaterial;
	FootPrintBlock->BeforeMatrix.Set(matrix);
	FootPrintBlock->AfterMatrix.Set(matrix);
}

void LandscapeVortex::Draw()
{
	GInterface::SendInvisibleDrawCollision(this, &Centre, Get2DRadius() * VORTEX_SUCK_RADIUS_SCALE);
	if (ObjectMoverParticle != NULL)
	{
		ObjectMoverParticle->Draw(true);
	}
	AddDrawing();
	LH3DObject::g_b_last_on_screen = true;
}

void LandscapeVortex::AddDrawing()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&LandscapeVortex::DrawNow,
	                                  LH3DTech::GetValueForZSorter(Pos.GetLHPoint()), 0);
}

void LandscapeVortex::DrawNow()
{
	float fraction = GetFractionFootPrintComplete();
	if (PostLandscapeParticle != NULL && fraction != 0.0f)
	{
		PSysProcessInfo info;
		info.Strength = fraction;
		PostLandscapeParticle->Process(info, LH3DTech::g_game_time_inc);
		PostLandscapeParticle->Draw(1.0f, true);
	}
	if (LightMapParticle != NULL)
	{
		LightMapParticle->manager->Alpha = (uint8_t)(GetFractionLightmap() * 255.0f);
		LightMapParticle->Draw(true);
	}
	LH3DObject::g_b_last_on_screen = true;
}

void LandscapeVortex::PreLandscapeDraw(bool process)
{
	if (ZCheatBox != NULL)
	{
		ZCheatBox->DrawWithClipping();
	}
	float fraction = GetFractionFootPrintComplete();
	if (fraction != LastFootPrintFraction)
	{
		LastFootPrintFraction = fraction;
		if (fraction != 0.0f)
		{
			CreateFootPrints();
		}
		else if (FootPrintMaterial != NULL || FootPrintAlphaMaterial != NULL)
		{
			ReleaseFootPrints();
		}
		uint32_t alpha = (uint32_t)(fraction * 255.0f);
		alpha = min(alpha, VORTEX_FOOTPRINT_MAX_ALPHA);
		if (FootPrintAlphaMaterial != NULL)
		{
			FootPrintAlphaMaterial->AlphaReference = alpha;
		}
	}
	if (fraction == 0.0f || PreLandscapeParticle == NULL)
	{
		return;
	}
	if (process)
	{
		PSysProcessInfo info;
		info.Strength = fraction;
		LHPoint origin = Centre;
		origin.y = LH3DIsland::GetAltitude(LH3DMapCoords(origin.x, origin.z));
		origin.y -= GJUtils::Linterp(LoweredParticleHeight, RaisedParticleHeight, GetFractionHeight());
		PreLandscapeParticle->SetOrigin(origin);
		PreLandscapeParticle->Process(info, LH3DTech::GetGameTimeInc());
	}
	PreLandscapeParticle->Draw(1.0f, true);
}

void LandscapeVortex::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	if (GetVortexInfo()->GetVortexType() == VORTEX_TYPE_VOLCANO)
	{
		SoundTag::Create(this, LH_SAMPLE_G_VOLCANO_02, false, LH_SAMPLE_PLAY_TYPE_ONCE, LH_SAMPLE_LOOP_FOREVER, false,
		                 true, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	}
	GLandscape::ConvertMapCoordToLandscapePoint(coords, Centre);
	MobileStatic::CallVirtualFunctionsForCreation(coords);
	State = GetVortexInfo()->InitialState;
	PARTICLE_TYPE objectMover = GetVortexInfo()->ParticleTypeObjectMover;
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		ZCheatBox = LH3DObject::Create(LH3DObject::STATIC);
		ZCheatBox->SetMesh(LH3DMesh::GetPackedMesh(MSH_S_ZCHEATBOX), NULL, NULL);
		ZCheatBox->matrix.GetPos() = Centre;
		ZCheatBox->matrix.GetPos().y = 0.0f;
		float scale = ZCheatBoxScale * GetVortexInfo()->BaseScale;
		ZCheatBox->matrix.ScaleMatrixOnly(scale);
		ZCheatBox->scale *= scale;
		ZCheatBox->GetMesh()->submeshes[0]->primitives_[0]->Material.render_mode =
			LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z;
		if (objectMover != PARTICLE_TYPE_NONE && ObjectMoverParticle == NULL)
		{
			ObjectMoverParticle = GJPSysInterface::Create(NULL, objectMover, Centre, LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                              PSysInterface::NET_GAME_TYPE_GAME);
			if (ObjectMoverParticle != NULL)
			{
				ObjectMoverParticle->SetPlayer(GetPlayer());
			}
		}
		PARTICLE_TYPE preLandscape = GetVortexInfo()->ParticleTypePreLandscape;
		if (preLandscape != PARTICLE_TYPE_NONE)
		{
			LHPoint position = Centre;
			position.y = LH3DIsland::GetAltitude(LH3DMapCoords(position.x, position.z));
			PreLandscapeParticle = PSysInterface::Create(NULL, preLandscape, position, LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                             PSysInterface::NET_GAME_TYPE_LOCAL);
		}
		PARTICLE_TYPE postLandscape = GetVortexInfo()->ParticleTypePostLandscape;
		if (postLandscape != PARTICLE_TYPE_NONE)
		{
			PostLandscapeParticle = PSysInterface::Create(NULL, postLandscape, Centre, LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                              PSysInterface::NET_GAME_TYPE_LOCAL);
		}
		PARTICLE_TYPE lightMap = GetVortexInfo()->ParticleTypeLightMap;
		if (lightMap != PARTICLE_TYPE_NONE)
		{
			LightMapParticle = GJPSysInterface::Create(NULL, lightMap, Centre, LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                           PSysInterface::NET_GAME_TYPE_LOCAL);
		}
	}
	HeightSpline.SetSize(VORTEX_HEIGHT_PROFILE_POINTS);
	HeightSpline.SetSP(0, 0.0f, HeightProfile[0]);
	HeightSpline.SetSP(1, HeightProfileCentre - HeightProfileHalfWidth, HeightProfile[1]);
	HeightSpline.SetSP(2, HeightProfileCentre, HeightProfile[2]);
	HeightSpline.SetSP(3, HeightProfileHalfWidth + HeightProfileCentre, HeightProfile[3]);
	HeightSpline.SetSP(4, VortexRadius, HeightProfile[4]);
	HeightSpline.Comp();
	if (State == VORTEX_STATE_FADE_IN)
	{
		StartFadeIn();
	}
}

void LandscapeVortex::ResetLandscapeHeights()
{
	if (!GetVortexInfo()->IsAdjustLandscapeHeight())
	{
		return;
	}
	int z = (int)(Centre.z / LAND_CELL_SIZE);
	int x = (int)(Centre.x / LAND_CELL_SIZE);
	int size = GetHeightMapSize();
	if (OriginalHeights.GetSize() == 0)
	{
		return;
	}
	int half = size / 2;
	int index = 0;
	for (int cellX = x - half; cellX <= x + half; cellX++)
	{
		for (int cellZ = z - half; cellZ <= z + half; cellZ++)
		{
			LH3DIsland::SetHeightAsByte(cellX, cellZ, OriginalHeights[index++]);
		}
	}
}
