#include "GameTimeConstants.h"
#include "Fixed.h"

#include <stdlib.h> /* For bsearch, qsort */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LHLib/ver5.0/LHCollide.h>
#include <Lionhead/LHLib/ver5.0/RPFollow.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include "Artifact.h"
#include "BuildingSite.h"
#include "Collide.h"
#include "Creature.h"
#include "CreatureMorph.h"
#include "Footpath.h"
#include "FootpathLink.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "InterfaceStatus.h"
#include "JCGameBlock.h"
#include "LandFeature.h"
#include "Landscape.h"
#include "Map.h"
#include "MapCoords.h"
#include "MobileWallHug.h"
#include "MultiMapFixed.h"
#include "MultiMapFixedInfo.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "Reaction.h"
#include "SingleMapFixedInfo.h"
#include "StandardBuildingSite.h"
#include "Town.h"
#include "WorshipSite.h"

// The 1.0 source is one line shorter between AllocateMultiChild and AddFootpath.
#if defined(VERSION_BW1W100)
#define FIXED_SOURCE_FILE "C:\\dev\\black\\Fixed.cpp"
#define FIXED_LINE_SHIFT  1
#elif defined(VERSION_BW1W110)
#define FIXED_SOURCE_FILE "C:\\dev\\Black\\Fixed.cpp"
#define FIXED_LINE_SHIFT  0
#else
#define FIXED_SOURCE_FILE "C:\\dev\\MP\\Black\\Fixed.cpp"
#define FIXED_LINE_SHIFT  0
#endif

int MultiMapFixed::CompareMultiChilds(const void* first, const void* second)
{
	const MultiChild* a = (const MultiChild*)first;
	const MultiChild* b = (const MultiChild*)second;
	if (a->coords.x != b->coords.x)
	{
		return a->coords.x < b->coords.x ? -1 : 1;
	}
	if (a->coords.z != b->coords.z)
	{
		return a->coords.z < b->coords.z ? -1 : 1;
	}
	return 0;
}

void MultiMapFixed::SortChildren()
{
	if (MultiChildrenArray.array != NULL && MultiChildrenArray.size != 0)
	{
		qsort(MultiChildrenArray.array, MultiChildrenArray.size, sizeof(MultiChild), CompareMultiChilds);
	}
}

MultiChild* MultiMapFixed::SortedMultiChildFind(const MapCell& cell)
{
	MultiChild key;
	key.coords.x = cell.GetX();
	key.coords.z = cell.GetZ();
	return (MultiChild*)bsearch(&key, MultiChildrenArray.array, MultiChildrenArray.size, sizeof(MultiChild),
	                            CompareMultiChilds);
}

GSingleMapFixedInfo GSingleMapFixedInfo::Infos[4];

Fixed::Fixed() {}

Fixed::Fixed(const MapCoords& coords, const GObjectInfo* info, float y_angle, float scale) : Object(coords, info)
{
	SetToZero();
	town_artifact = NULL;
	GGame::g_game->map.Dirty = true;
	SetYAngle(y_angle);
	SetScale(scale);
}

Fixed::~Fixed() {}

void Fixed::Create3DObject()
{
	Object::Create3DObject();
	Game3dObject->SetShadowOnTexture(1);
}

bool32_t Fixed::GetSpecialPos(uint32_t index, MapCoords* pos)
{
	if (Game3dObject != NULL && Game3dObject->GetSpecialPos(index, *pos))
	{
		return true;
	}
	*pos = Pos;
	return false;
}

void Fixed::InsertMapObjectToCell(MapCell* cell)
{
	if (cell->FirstObjectFixed != NULL)
	{
		SetMapChild(cell->FirstObjectFixed, cell);
	}
	cell->SetFirstObjectFixed(this);
	RequestChangeTexture(this);
	GameBlock::Insert(this, cell);
}

void Fixed::InsertMapObjectToCellAssumeFixed(MapCell* cell)
{
	if (cell->FirstObjectFixed != NULL)
	{
		SetMapChild(cell->FirstObjectFixed, cell);
	}
	cell->SetFirstObjectFixed(this);
	RequestChangeTexture(this);
	GameBlock::Insert(this, cell);
}

float Fixed::GetTownArtifactValue()
{
	if (GetTownArtifact() != NULL)
	{
		return static_cast<TownArtifact*>(GetTownArtifact())->Value;
	}
	return 0.0f;
}

Object* Fixed::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	if (insert_back_into_map && CanBecomeArtifact() && physics_object->GetPlayer() != NULL &&
	    !physics_object->GetPlayer()->IsNeutral() && (physics_object->Flags & PHYSICS_OBJECT_FLAG_FROM_HAND) &&
	    (physics_object->Flags & PHYSICS_OBJECT_FLAG_LANDED))
	{
		Object* object = Pos.FindObject(&Object::IsSuitableForArtifact, 50.0f, NULL);
		if (object != NULL)
		{
			if (object->IsAbode())
			{
				Town* town = object->GetTown();
				if (town != NULL)
				{
					if (GetTownArtifact() != NULL && static_cast<TownArtifact*>(GetTownArtifact())->WillImpress(town))
					{
						Reaction::CreateReaction(this, REACTION_LOOK_AT_OBJECT, physics_object->GetPlayer(), 1);
					}
					town->AddArtifact(this, physics_object->GetPlayer());
				}
			}
			else if (object->IsWorshipSite())
			{
				WorshipSite* site = object->GetWorshipSite();
				if (GetTownArtifact() != NULL && static_cast<TownArtifact*>(GetTownArtifact())->WillImpress(site))
				{
					Reaction::CreateReaction(this, REACTION_LOOK_AT_OBJECT, physics_object->GetPlayer(), 1);
				}
				site->AddArtifact(this, physics_object->GetPlayer());
			}
		}
	}
	return Object::EndPhysics(physics_object, insert_back_into_map);
}

bool32_t Fixed::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	if (IsTownArtifact())
	{
		static_cast<TownArtifact*>(GetTownArtifact())->RemoveFromTown();
		GetTownArtifact()->SetPlayer(status->GetPlayer());
	}
	return Object::InterfaceSetInMagicHand(status);
}

uint32_t Fixed::Save(GameOSFile& file)
{
	if (Object::Save(file))
	{
		file.WritePtr(town_artifact);
		return true;
	}
	return false;
}

uint32_t Fixed::Load(GameOSFile& file)
{
	if (Object::Load(file))
	{
		file.ReadPtr(&town_artifact);
		return true;
	}
	return false;
}

MultiMapFixed::MultiMapFixed()
{
	MultiChildrenArray.array = NULL;
	MultiChildrenArray.size = 0;
	MultiChildrenArray.capacity = 0;
	CollideData = NULL;
}

MultiMapFixed::MultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float y_angle, float scale,
                             float percent_built, int under_construction)
	: Fixed(coords, info, y_angle, scale)
{
	Flags |= GAME_THING_WITH_POS_FLAG_0x00000002;
	FootpathLink = NULL;
	UnderConstruction = under_construction;
	if (UnderConstruction)
	{
		PercentBuilt = 0.0f;
		Constructed = false;
	}
	else
	{
		PercentBuilt = percent_built;
		Constructed = true;
	}
	MultiChildrenArray.array = NULL;
	MultiChildrenArray.capacity = 0;
	MultiChildrenArray.size = 0;
	GGame::g_game->GameLists.multi_map_fixed.Add(this);
	building_site = NULL;
	CollideData = NULL;
}

MultiMapFixed::~MultiMapFixed()
{
	if (MultiChildrenArray.array != NULL)
	{
		delete[] MultiChildrenArray.array;
	}
}

void MultiMapFixed::ToBeDeleted(int param_1)
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
	if (GetFootpathLink() != NULL)
	{
		GetFootpathLink()->ToBeDeleted(0);
		FootpathLink = NULL;
	}
	GGame::g_game->GameLists.multi_map_fixed.Remove(this);
	if (IsObjectInMap())
	{
		GGame::g_game->map.Dirty = true;
	}
	if (building_site != NULL)
	{
		building_site->ToBeDeleted(param_1);
		SetBuildingSite(NULL);
	}
	Object::ToBeDeleted(param_1);
}

MapCoords MultiMapFixed::GetDoorPos()
{
	MapCoords pos;
	if (Game3dObject->GetDoorPosition(&pos) == 1 && pos.x != 0 && pos.z != 0)
	{
		return pos;
	}
	return Pos;
}

void MultiMapFixed::SetBuildingSite(BuildingSite* site)
{
	building_site = site;
}

Object* MultiMapFixed::GetMapChild(const MapCell& cell)
{
	MultiChild* child = SortedMultiChildFind(cell);
	if (child != NULL)
	{
		return child->object.Get();
	}
	return NULL;
}

void MultiMapFixed::SetMapChild(Object* child, MapCell* cell)
{
	for (uint32_t i = 0; i < MultiChildrenArray.size; i++)
	{
		if ((int16_t)cell->GetX() == MultiChildrenArray.array[i].coords.x &&
		    (int16_t)cell->GetZ() == MultiChildrenArray.array[i].coords.z)
		{
			MultiChildrenArray.array[i].object.Set(child);
			return;
		}
	}
}

bool32_t MultiMapFixed::IsObjectInMap()
{
	return Flags & GAME_THING_WITH_POS_FLAG_IN_MAP;
}

bool32_t MultiMapFixed::IsObjectFullyInMap()
{
	if (MultiChildrenArray.size != 0)
	{
		for (uint32_t i = 0; i < MultiChildrenArray.size; i++)
		{
			MapCell* cell = MultiChildrenArray.array[i].coords.ToMap();
			Object*  object = cell->FirstObjectFixed;
			while (object != NULL && object != this)
			{
				object = object->GetMapChild(*cell);
			}
			if (object == NULL)
			{
				return false;
			}
		}
	}
	return true;
}

int MultiMapFixed::MoveMapObject(const MapCoords& coords)
{
	if (!(coords == Pos))
	{
		ActualMoveMapObject(coords);
		return 7;
	}
	return 6;
}

void Fixed::InsertMapObject()
{
	Object::InsertMapObject();
	if (CreatureMustAvoid(NULL))
	{
		GFootpath::SendFootpathsAroundObsticle(Get2DRadius(), Pos);
	}
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature*     creature = node->payload;
		LH3DCreature* creature3d = creature->GetCreature3D();
		if (CreatureMustAvoid(creature))
		{
			RPFollow* follow = creature3d->RpFollow;
			if (follow->field_0x64054 >= 2 && follow->field_0x64054 <= 4)
			{
				AddToRoutePlan(follow, creature, 1, NULL);
			}
		}
	}
}

void Fixed::RemoveMapObject()
{
	Object::RemoveMapObject();
	if (CreatureMustAvoid(NULL))
	{
		GFootpath::StopGoingRoundObsticle(Get2DRadius(), Pos);
	}
}

void SingleMapFixed::RemoveMapObject()
{
	Fixed::RemoveMapObject();
	ReleaseCollideData();
}

void SingleMapFixed::InsertMapObject()
{
	if (!IsObjectInMap())
	{
		CreateCollideData();
	}
	Fixed::InsertMapObject();
}

void MultiMapFixed::InsertMapObject()
{
	if (!IsObjectInMap())
	{
		CreateCollideData();
	}
	NewCollideDescriptor descriptor(this);
	int                  count = 0;
	MapCell*             cell;
	while ((cell = descriptor.GetNext()) != NULL)
	{
		if (count == MultiChildrenArray.capacity)
		{
			MultiChild* oldArray = MultiChildrenArray.array;
			AllocateMultiChild();
			for (int i = count - 1; i >= 0; i--)
			{
				MultiChildrenArray.array[i] = oldArray[i];
			}
			if (oldArray != NULL)
			{
				delete[] oldArray;
			}
		}
		MultiChildrenArray.array[count].coords.Init(cell);
		MultiChildrenArray.size = count + 1;
		Fixed::InsertMapObjectToCellAssumeFixed(cell);
		count++;
	}
	SortChildren();
	RequestChangeTexture(this);
	Flags |= GAME_THING_WITH_POS_FLAG_IN_MAP;
	if (CreatureMustAvoid(NULL))
	{
		GFootpath::SendFootpathsAroundObsticle(Get2DRadius(), Pos);
	}
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature*     creature = node->payload;
		LH3DCreature* creature3d = creature->GetCreature3D();
		if (CreatureMustAvoid(creature))
		{
			RPFollow* follow = creature3d->RpFollow;
			if (follow->field_0x64054 >= 2 && follow->field_0x64054 <= 4)
			{
				AddToRoutePlan(follow, creature, 1, NULL);
			}
		}
	}
}

void MultiMapFixed::RemoveMapObject()
{
	NewCollideDescriptor descriptor(this);
	for (MapCell* cell = descriptor.GetNext(); cell != NULL; cell = descriptor.GetNext())
	{
		Object::RemoveMapObjectFromCell(cell);
	}
	Flags &= ~GAME_THING_WITH_POS_FLAG_IN_MAP;
	RequestChangeTexture(this);
	MobileWallHug::ProcessRemoveFromMap(this);
	if (CreatureMustAvoid(NULL))
	{
		GFootpath::StopGoingRoundObsticle(Get2DRadius(), Pos);
	}
	ReleaseCollideData();
}

void MultiMapFixed::CheckMapObject()
{
	NewCollideDescriptor descriptor(this);
	for (MapCell* cell = descriptor.GetNext(); cell != NULL; cell = descriptor.GetNext())
	{
		Object::IsObjectInMap(cell);
	}
}

void SingleMapFixed::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Object::CallVirtualFunctionsForCreation(coords);
}

void MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Create3DObject();
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);
	float       scale = GetScale();
	float       yAngle = GetYAngle();
	LH3DObject* object = Game3dObject;
	// The block scope lets point.x load ahead of the inlined SetScale stores, as in Object::SetXYZAngles.
	{
		LHPoint point;
		GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(coords, point);
		point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(coords, (unsigned long*)&object->color,
		                                                      (unsigned long*)&object->specular);
		object->SetPosition(point, yAngle, scale);
	}
	InitialiseIsFixedForMapList();
	AllocateMultiChild();
	if (!IsInMagicHand() && !IsUnavailableOrFlying())
	{
		InsertMapObject();
	}
	if (IsBuilt() != TRUE)
	{
		Game3dObject->SetFootPrintOnTexture(1);
		Game3dObject->SetShadowOnTexture(0);
	}
}

void MultiMapFixed::AllocateMultiChild()
{
	NewCollideDescriptor descriptor(this);
	MultiChildrenArray.capacity = descriptor.count;
	MultiChildrenArray.array = new (FIXED_SOURCE_FILE, 739) MultiChild[descriptor.count];
}

SingleMapFixed::~SingleMapFixed()
{
	if (Object::IsObjectInMap())
	{
		Object::RemoveMapObject();
	}
}

bool GMultiMapFixedInfo::IsOkToCreateAtPos(const MapCoords& pos, float param_2, float param_3) const
{
	return pos.IsSuitableForFixed(GetMesh(), param_2, param_3);
}

bool32_t Fixed::ValidForLockedSelectProcess(GInterfaceStatus* status)
{
	return false;
}

bool32_t Fixed::NetworkFriendlyStartLockedSelect(GInterfaceStatus* status)
{
	return true;
}

bool32_t MultiMapFixed::Built()
{
	if (building_site != NULL)
	{
		building_site->ToBeDeleted(0);
	}
#if defined(VERSION_BW1W100)
	// 1.00 asks IsCivic first and does not exclude the football pitch.
	if (IsCivic() && GetAbodeType() != ABODE_TYPE_CITADEL && GetTown() != NULL)
#else
	ABODE_TYPE abodeType = GetAbodeType();
	if (IsCivic() && abodeType != ABODE_TYPE_CITADEL && abodeType != ABODE_TYPE_FOOTBALL_PITCH && GetTown() != NULL)
#endif
	{
		Reaction::CreateReaction(this, REACTION_REACT_TO_NEW_BUILDING, GetPlayer(), 0);
	}
	if (Game3dObject != NULL && !IsField())
	{
		Game3dObject->SetShadowOnTexture(1);
		RequestChangeTexture(this);
	}
	UnderConstruction = false;
	Constructed = true;
	PercentBuilt = 1.0f;
	return true;
}

void MultiMapFixed::StartOnFire()
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
}

bool32_t MultiMapFixed::Repaired()
{
	if (building_site != NULL)
	{
		building_site->ToBeDeleted(0);
	}
	RemoveDamage();
	Damaged = false;
	return true;
}

float MultiMapFixed::GetInfluence()
{
	const GMultiMapFixedInfo* multiInfo = (const GMultiMapFixedInfo*)info;
	return GetPercentBuilt() * GetScale() * GetLife() * multiInfo->influence;
}

float MultiMapFixed::GetDesireToBeRepaired()
{
	if (!IsRepaired())
	{
		float desire = (1.0f - GetPercentRepaired()) * 0.5f;
		desire += 0.5f;
		return min(desire * ((const GMultiMapFixedInfo*)info)->DesireToBeRepaired, 1.0f);
	}
	return 0.0f;
}

void MultiMapFixed::BuildBy(float amount)
{
	if (IsBuilt())
	{
		if (!IsRepaired())
		{
			IncreaseLife(amount);
			if (GetLife() >= 1.0f)
			{
				Repaired();
			}
		}
	}
	else
	{
		PercentBuilt += amount;
		if (PercentBuilt < 0.0f)
		{
			PercentBuilt = 0.0f;
		}
		if (PercentBuilt >= 1.0f)
		{
			Built();
		}
	}
}

void MultiMapFixed::SetPercentBuilt(float percent)
{
	PercentBuilt = percent;
	if (percent < 0.0f)
	{
		PercentBuilt = 0.0f;
	}
	if (PercentBuilt >= 1.0f)
	{
		Built();
	}
}

uint32_t MultiMapFixed::AddFootpath(GFootpath* footpath)
{
	if (GetFootpathLink() == NULL)
	{
		FootpathLink = new (FIXED_SOURCE_FILE, 978 - FIXED_LINE_SHIFT) GFootpathLink();
	}
	GetFootpathLink()->AddFootpath(footpath);
	return true;
}

uint32_t MultiMapFixed::RemoveFootpath(GFootpath* footpath)
{
	if (GetFootpathLink() != NULL)
	{
		FootpathLink->RemoveFootpath(footpath);
	}
	return true;
}

uint32_t MultiMapFixed::GetNearestPathTo(const MapCoords& coords, float param_2, int param_3)
{
	return 0;
}

void MultiMapFixed::UseFootpathIfNecessary(Living* living, const MapCoords& coords, unsigned char state)
{
	if (GetFootpathLink() != NULL)
	{
		GetFootpathLink()->UseFootpathIfNecessary(living, coords, state, this);
		return;
	}
	GameThingWithPos::UseFootpathIfNecessary(living, coords, state);
}

uint32_t MultiMapFixed::SaveObject(LHOSFile& file, const MapCoords& coords)
{
	if (&coords != NULL && GetFootpathLink() != NULL)
	{
		GetFootpathLink()->SaveObject(file, coords);
	}
	return true;
}

void MultiMapFixed::UpdateFootpathLink()
{
	if (GetFootpathLink() != NULL)
	{
		GetFootpathLink()->Update(this);
	}
}

bool32_t MultiMapFixed::IsFunctional()
{
	if (IsAvailable() && IsBuilt() && GetPercentRepaired() > GetPercentRepairedForNonFunctional())
	{
		return true;
	}
	return false;
}

float MultiMapFixed::GetPercentRepairedForNonFunctional()
{
	return 0.75f;
}

float MultiMapFixed::GetPercentForDrawBuilding()
{
	return min(GetPercentRepairedFromWhenDamaged(), GetPercentBuilt());
}

float MultiMapFixed::GetPercentRepairedFromWhenDamaged()
{
	if (IsBuilt())
	{
		if (GetDestructionMesh() != NULL && building_site != NULL)
		{
			float damagedLife = building_site->life;
			float range = 1.0f - damagedLife;
			float repaired = GetPercentRepaired() - damagedLife;
			float result = 0.0f;
			if (range != 0.0f && repaired != 0.0f)
			{
				result = repaired / range;
			}
			return result;
		}
		return GetPercentRepaired() * 0.98f;
	}
	return 1.0f;
}

bool MultiMapFixed::IsDrawBuilding()
{
	return building_site != NULL;
}

uint32_t MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	Town* town = GetTown();
	if (town == NULL || town->field_0x5f4 == 0)
	{
		if (status->GetPlayer() == villager->GetPlayer())
		{
			if (GetPlayer() != status->GetPlayer())
			{
				if (town != NULL)
				{
					return VILLAGER_DISCIPLE_MISSIONARY;
				}
			}
			else if (!IsBuilt() || !IsRepaired())
			{
				return VILLAGER_DISCIPLE_BUILDER;
			}
		}
	}
	return VILLAGER_DISCIPLE_NONE;
}

void MultiMapFixed::RemovePotFromStructure(PotStructure* structure)
{
	if (building_site != NULL)
	{
		building_site->RemovePotFromStructure(structure);
	}
}

uint32_t MultiMapFixed::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool param_4,
                                    const MapCoords* coords, int param_6)
{
	if (building_site != NULL)
	{
		return building_site->AddResource(type, amount, status, param_4, coords, 0);
	}
	return 0;
}

uint32_t MultiMapFixed::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* param_4)
{
	if (building_site != NULL)
	{
		return building_site->RemoveResource(type, amount, status, param_4);
	}
	return 0;
}

bool MultiMapFixed::IsResourceStore(RESOURCE_TYPE type)
{
	return type == RESOURCE_TYPE_WOOD && building_site != NULL;
}

bool32_t MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus& status)
{
	if (IsBuildingWhichIsBeingBuilt(NULL) && type == RESOURCE_TYPE_WOOD)
	{
		status.GetPlayer()->ConsiderMakingCreatureMimicPlayer(&status, DETECTED_PLAYER_ACTION_PUT_WOOD_IN_BUILDING_SITE,
		                                                      this, MAGIC_TYPE_NONE);
		return true;
	}
	return false;
}

uint32_t MultiMapFixed::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		WRITE_SAFE(file, field_0x58);
		WRITE_SAFE(file, reinterpret_cast<uint32_t&>(PercentBuilt));
		file.WritePtr(FootpathLink);
		file.WritePtr(building_site);
		return true;
	}
	return false;
}

uint32_t MultiMapFixed::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadSafe(field_0x58);
		file.ReadSafe(reinterpret_cast<uint32_t&>(PercentBuilt));
		file.ReadPtr(reinterpret_cast<GameThing**>(&FootpathLink));
		file.ReadPtr(reinterpret_cast<GameThing**>(&building_site));
		return true;
	}
	return false;
}

bool MultiMapFixed::InteractsWithPhysicsObjects()
{
	bool built = GetPercentBuilt() > 0.1f;
	bool alive = GetLife() > 0.01f;
	return built && alive;
}

uint32_t SingleMapFixed::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
                                             GestureSystemPacketData* packet)
{
	ThrowObjectFromHand(status, false);
	return 0x16;
}

void SingleMapFixed::InsertMapObjectToCell(MapCell* cell)
{
	Fixed::InsertMapObjectToCell(cell);
}

void SingleMapFixed::RemoveMapObjectFromCell(MapCell* cell)
{
	Object::RemoveMapObjectFromCell(cell);
}

bool32_t MultiMapFixed::DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	if (building_site != NULL)
	{
		DoDeleteObjectAndTakeResource(object, status);
		return true;
	}
	return false;
}

bool32_t MultiMapFixed::CreatureMustAvoid(Creature* creature)
{
	bool32_t solid = GetPercentBuilt() > 0.01f || building_site == NULL || building_site->field_0x24 > 0;
	if (creature == NULL || (solid && GetHeight() >= creature->GetHeight() * 0.1f))
	{
		return true;
	}
	return IsOnFire();
}

void SingleMapFixed::CreateCollideData()
{
	ReleaseCollideData();
	CollideData = new (FIXED_SOURCE_FILE, 1279 - FIXED_LINE_SHIFT) NewCollide(Game3dObject);
}

void MultiMapFixed::CreateCollideData()
{
	ReleaseCollideData();
	CollideData = new (FIXED_SOURCE_FILE, 1286 - FIXED_LINE_SHIFT) NewCollide(Game3dObject);
}

bool32_t MultiMapFixed::CreateBuildingSite()
{
	return (bool32_t) new (FIXED_SOURCE_FILE, 1292 - FIXED_LINE_SHIFT) StandardBuildingSite(this);
}

float MultiMapFixed::ReduceLife(float value, GPlayer* player)
{
	if (IsBuilt() != TRUE)
	{
		float percent = max(GetPercentBuilt() - value, 0.0f);
		SetPercentBuilt(percent);
		if (percent == 0.0f)
		{
			Object::ReduceLife(GetLife(), player);
		}
		return GetLife();
	}
	return Object::ReduceLife(value, player);
}

void Fixed::SetToZero() {}

void SingleMapFixed::ReleaseCollideData()
{
	if (CollideData != NULL)
	{
		delete CollideData;
	}
	CollideData = NULL;
}

void MultiMapFixed::ReleaseCollideData()
{
	if (CollideData != NULL)
	{
		delete CollideData;
	}
	CollideData = NULL;
}

uint32_t MultiMapFixed::Process()
{
	if (building_site != NULL)
	{
		building_site->Process();
	}
	return true;
}
