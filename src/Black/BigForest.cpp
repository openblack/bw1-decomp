#include "GameTimeConstants.h"
#include "BigForest.h"
#include "BigForestInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Forest.h"
#include "InterfaceStatus.h" /* For class GInterfaceStatus */
#include "Villager.h"        /* For class Villager */

GBigForestInfo GBigForestInfo::Infos[BIG_FOREST_INFO_LAST];

bool BigForest::InteractsWithPhysicsObjects()
{
	return false;
}

LH3DObject::ObjectType BigForest::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

bool32_t BigForest::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return true;
}

bool32_t BigForest::IsTuggable()
{
	return false;
}

bool32_t BigForest::VillagerMustAvoid(Villager* param_1)
{
	return false;
}

uint32_t BigForest::GetCarriedTreeType()
{
	return ((const GBigForestInfo*)info)->CarriedTreeType;
}

MESH_LIST BigForest::GetMesh() const
{
	return info->GetMesh();
}

bool32_t BigForest::CreatureMustAvoid(Creature* param_1)
{
	return IsOnFire();
}

char* BigForest::GetDebugText()
{
	return "BigForest:";
}

void BigForest::Draw()
{
	MultiMapFixed::Draw();
}

void BigForest::CreateCollideData()
{
	MultiMapFixed::ReleaseCollideData();
}

bool32_t BigForest::Load(GameOSFile& file)
{
	if (MultiMapFixed::Load(file))
	{
		file.ReadPtr((GameThing**)&forest);
		file.ReadIt(field_0x84);
		return true;
	}
	return false;
}

bool32_t BigForest::Save(GameOSFile& file)
{
	if (MultiMapFixed::Save(file))
	{
		file.WritePtr(forest);
		file.WriteIt(field_0x84);
		return true;
	}
	return false;
}

uint32_t BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	if (status->GetPlayer() == villager->GetPlayer())
	{
		return VILLAGER_DISCIPLE_FORESTER;
	}
	return VILLAGER_DISCIPLE_NONE;
}

BigForest::~BigForest() {}
