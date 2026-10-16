#include "GameTimeConstants.h"
#include "Tree.h"

#include "ColourConstants.h"      /* For White */
#include "ColourConstants.h"      /* For White */
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "Climate.h"
#include "Forest.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "InterfaceStatus.h"
#include "MapCoords.h"
#include "LandBalance.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "Creature.h"
#include "Creature3D.h"
#include "Rand.h"
#include "Utils.h"
#include "RootsPile.h"
#include "Script.h"
#include "Setup.h"
#include "SoundTag.h"
#include "Alignment.h"
#include "Audio.h"
#include "Global.h"
#include "Landscape.h"
#include "WorshipTotem.h"
#include "TreeInfo.h"
#include "Villager.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI */
#include <Lionhead/LHLib/ver5.0/LHCollide.h>       /* For NewCollide */

#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For strlen */
#include <windows.h> /* For min */

#define TREE_NUM_ANGLES       16
#define TREE_ROOTS_PILE_PARAM 593

#define FILEPATH "C:\dev\MP\Black\Tree.cpp"

GTreeInfo GTreeInfo::Infos[TREE_INFO_LAST];

GBaseInfo* GTreeInfo::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = ARRAY_SIZE(Infos);
	return GetInfo();
}

Tree::Tree(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float target_scale, float y_angle,
           float scale)
	: SingleMapFixed(coords, info, y_angle, scale)
{
	SetToZero();
	SetLife(1.0f);
	TargetScale = target_scale;
	if (target_scale != scale)
	{
		Growing = true;
		ProcessCountdown = GRand::GameRand(GetInfo()->GrowsAfterNumGameTurns, FILEPATH, 76);
	}
	GGame::g_game->GameLists.trees.Add(this);
	this->forest = forest;
	if (forest != NULL)
	{
		forest->AddTree(this);
	}
	NonScenic = true;
	CollideData = NULL;
}

Tree::~Tree() {}

Tree* Tree::Create(const MapCoords& coords, const GTreeInfo* info, Forest* forest, float target_scale, float y_angle,
                   float scale)
{
	Tree* tree =
		new (FILEPATH, 99) Tree(coords, info, forest, target_scale, y_angle - (int)(y_angle / TWO_PI) * TWO_PI, scale);
	if (tree != NULL)
	{
		tree->CallVirtualFunctionsForCreation(coords);
	}
	return tree;
}

LH3DColor GTreeInfo::GetDebugColor() const
{
	return LH3DColor(121, 238, 94, 255);
}

void GTreeInfo::UpdateValue(float value, uint32_t offset, uint32_t param_3)
{
	uint32_t numInfos;
	GetBaseInfo(numInfos);
	for (uint32_t i = 0; i < numInfos; i++)
	{
		*(float*)((char*)&GetInfo()[i] + offset) = value;
	}
}

void Tree::CreateCollideData()
{
	ReleaseCollideData();
	LHMatrix matrix;
	GetWorldMatrix(&matrix);
	CollideData = new (FILEPATH, 1179) NewCollide(&matrix.GetPos(), 0.3f);
}

void Tree::SetToZero()
{
	TreeFlags = 0;
	forest = NULL;
	CollideData = NULL;
}

void Tree::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	SingleMapFixed::CallVirtualFunctionsForCreation(coords);
	Game3dObject->SetDynamicLighting(false);
	Game3dObject->SetShadowOnTextureChroma(true);
	Game3dObject->SetCastDynamicShadow(false);
	float   scale = GetScale();
	float   yAngle = GetYAngle();
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	Game3dObject->LH3DObject::SetPosition(point, yAngle, scale);
	Game3dObject->SetPaper(true);
	AngleIndex = (int)(GetYAngle() * (TREE_NUM_ANGLES / TWO_PI) + 0.5f);
	Game3dObject->importance = -0.1f;
	Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_0x80;
}

float Tree::GetRoutePlanRadius(Creature* creature)
{
	return min(0.25f, Get2DRadius() * 0.1f);
}

void Tree::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                          void(__cdecl* callback)(int, Point2D, float, int))
{
	SimpleAddToRoutePlan(holder, creature, update, callback);
}

float Tree::GetVillagerHugRadius()
{
	return min(0.25f, Get2DRadius() * 0.1f);
}

void Tree::SetLife(float life)
{
	if (life <= 0.0f)
	{
		ToBeDeleted(false);
	}
	else
	{
		Object::SetLife(life);
	}
}

uint32_t Tree::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (coords != NULL) ? (Pos - *coords) : Pos;
		int       forestId = (GetForest() != NULL && coords == NULL) ? GetForest()->id : -1;
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_NEW_TREE), forestId,
		        relative.ConvertToText(coordText), GetInfo() - GTreeInfo::Infos, NonScenic, GetYAngle(), GetScale(),
		        TargetScale);
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

float Tree::GetHoldRadius()
{
	return Get2DRadius() * 0.2f;
}

float Tree::GetHoldLoweringMultiplier()
{
	return 0.1f;
}

bool32_t Tree::CanBecomeAPhysicsObject()
{
	return true;
}

void Tree::SetUpPhysOb(PhysOb* phys_ob)
{
	SetUpPhysObAsATree(phys_ob, GetWeight(), GetHeight(), Get2DRadius(), GetScale());
}

bool Tree::InteractsWithPhysicsObjects()
{
	return false;
}

void Tree::ReactToPhysicsImpact(PhysicsObject* physics_object, bool param_2)
{
	Object* hitter = physics_object->GetGameObjectWhoHitMe();
	if (hitter != NULL && hitter->IsResourceStore(RESOURCE_TYPE_WOOD))
	{
		Object::StoredMatrix = physics_object->Matrix;
		GInterfaceStatus* status = physics_object->status;
		if (hitter->DeleteObjectAndTakeResource(this, status))
		{
			return;
		}
	}
	Object::ReactToPhysicsImpact(physics_object, param_2);
}

bool32_t Tree::IsARootedObject()
{
	return true;
}

bool32_t Tree::BlocksTownClearArea() const
{
	return false;
}

HOLD_TYPE Tree::GetHoldType()
{
	return HOLD_TYPE_TREE;
}

int Tree::GetDefaultResource()
{
	return GetWoodValue();
}

float Tree::GetWoodValue()
{
	float scale = GetScale();
	float value = GetLife() * GetWoodValueMultiplier() * GetInfo()->WoodValue * scale;
	return value * GLandBalance::GetValue(GLandBalance::LAND_BALANCE_5);
}

float Tree::GetWoodValueMultiplier()
{
	return 1.0f;
}

RESOURCE_TYPE Tree::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

SCRIPT_OBJECT_TYPE Tree::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TREE;
}

PHYSICS_CONSTANTS_TYPE Tree::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_TREE;
}

void Tree::SetOnFire(float amount)
{
	Object::SetOnFire(amount);
}

uint32_t Tree::DropSfx()
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
	LH_SamplePlayOptions options;
	options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
	options.SampleNumber = LH_SAMPLE_G_PLANTTREE_01 + GetTickCount() % 3;
	options.AttachedObject = this;
	options.Positional = 1;
	options.Pos = point;
	options.Looping = 0;
	GGlobal::Global.audio->PlaySoundEffect(&options);
	return true;
}

void Tree::AddPermanentFootPrint()
{
	new (FILEPATH, 927) RootsPile(Game3dObject, TREE_ROOTS_PILE_PARAM);
}

uint32_t Tree::ValidToApplyThisToObject(GInterfaceStatus* status, Object* object)
{
	if (dynamic_cast<WorshipTotem*>(object) != NULL)
	{
		return true;
	}
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_WOOD))
	{
		return true;
	}
	return false;
}

uint32_t Tree::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords, GestureSystemPacketData* data)
{
	Object* site = Pos.IsWithinBuilingSite();
	if (site != NULL && site->IsResourceStore(GetResourceType()) && site->DeleteObjectAndTakeResource(this, status))
	{
		return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
	}
	return SingleMapFixed::ApplyThisToMapCoord(status, coords, data);
}

MapCoords Tree::GetWorkingPos(Object* object)
{
	float angle = GUtils::Get3DAngleFromXZ(Pos, object->Pos);
	float radius = object->Get2DRadius() + 0.9f;
	return Pos + GUtils::GetPosFromAngle(angle, radius);
}

bool32_t Tree::IsTreeBigEnoughForCreature(Creature* creature)
{
	float creatureSize = creature->GetCreature3D()->Size1 * 15.0f;
	if (GetHeight() >= creatureSize)
	{
		return true;
	}
	return false;
}

bool32_t Tree::CreatureMustAvoid(Creature* creature)
{
	return creature == NULL || GetHeight() >= creature->GetHeight() * 1.5f || IsOnFire();
}

uint32_t Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	if (status->GetPlayer() == villager->GetPlayer())
	{
		return VILLAGER_DISCIPLE_FORESTER;
	}
	return VILLAGER_DISCIPLE_NONE;
}

bool32_t Tree::InterfaceSetInMagicHand(GInterfaceStatus* status)
{
	if (!(Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
	{
		SoundTag::Create(Pos, SoundTag::GetRandomSample(LH_SAMPLE_G_TREEBREAK_01, 3), false, 3, 0, 0, 1,
		                 AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
		GPlayer* player = status->GetPlayer();
		if (player != NULL)
		{
			player->alignment->Update(player, this, false);
		}
	}
	return true;
}

uint32_t Tree::GetOverwriteDropToolTip()
{
	return HELP_TEXT_TOOLTIP_117;
}

bool32_t Tree::IsOkToCreateAtPos(MapCoords& coords)
{
	if ((coords.CollideCollideWithFixe() & 8) && !coords.IsWater())
	{
		return false;
	}
	return true;
}

void Tree::ToBeDeleted(int delete_now)
{
	Forest* treeForest = GetForest();
	if (treeForest != NULL)
	{
		treeForest->RemoveTree(this);
		forest = NULL;
	}
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		GGame::g_game->GameLists.trees.Remove(this);
	}
	Object::ToBeDeleted(delete_now);
}

uint32_t Tree::Process()
{
	if (--ProcessCountdown == 0)
	{
		ProcessCountdown = GetInfo()->GrowsAfterNumGameTurns;
		if (IsGrowing())
		{
			float amount = GetInfo()->GrowthAmount;
			float rain = GClimate::GetMaxRainingOrSnowing(Pos.GetLHPoint()) * 0.01f;
			amount += (float)(rain * GetInfo()->RainingAcceleratorMultiplier * amount);
			amount *= Pos.GetAlignment() * 0.5f + 1.0f;
			Grow(amount, false, false);
			return IsGrowing() != false;
		}
		return false;
	}
	return true;
}

float Tree::Decay(float amount)
{
	float scale = GetScale() - amount;
	if (scale <= 0.0f)
	{
		ToBeDeleted(0);
		return 0.0f;
	}
	SetScale(scale);
	return amount;
}

bool32_t Tree::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		WRITE_IT(file, ProcessCountdown);
		WRITE_IT(file, TargetScale);
		file.WritePtr(forest);
		WRITE_IT(file, TreeFlags);
		return true;
	}
	return false;
}

bool32_t Tree::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadIt(ProcessCountdown);
		file.ReadIt(TargetScale);
		file.ReadPtr((GameThing**)&forest);
		file.ReadIt(TreeFlags);
		return true;
	}
	return false;
}
