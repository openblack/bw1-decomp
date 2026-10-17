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
#include "DeadTree.h"
#include "Interface.h"
#include "JCMisc.h"
#include "Camera.h"
#include "Rand.h"
#include "Map.h"
#include "Utils.h"
#include "ValueSpinner.h"
#include "WorshipSite.h"
#include "RootsPile.h"
#include "ParticleContainer.h"
#include "Script.h"
#include "Town.h"
#include "Setup.h"
#include "SoundTag.h"
#include "Alignment.h"
#include "Audio.h"
#include "Global.h"
#include "Landscape.h"
#include "WorshipTotem.h"
#include "TreeInfo.h"
#include "Villager.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>   /* For LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DRender.h> /* For LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech */
#include <Lionhead/LH3DLib/development/SmokyStuff.h> /* For SmokyStuff */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/LHRandom.h>   /* For Random */
#include <Lionhead/LHLib/ver5.0/LHCollide.h>         /* For NewCollide */

#include <math.h>    /* For cos, sin */
#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For strlen */
#include <windows.h> /* For max, min */

#define TREE_NUM_ANGLES 16

#define TREE_WIND_ANGLE             0.0
#define TREE_SWAY_SPEED_CHANGE_TIME 2000
#define TREE_SWAY_PHASE_RATE        0.0010606061f
#define TREE_SWAY_AMPLITUDE         0.03

#define TREE_BEND_MIN           0.75f
#define TREE_BEND_LIGHT         0.3f
#define TREE_BEND_MEDIUM        0.67f
#define TREE_RUSTLE_CHANCE_TIME 1000.0f
#define TREE_RUSTLE_DISTANCE    10.0f
#define TREE_RUSTLE_HEIGHT      18.0f
#define TREE_RUSTLE_MIN_HEIGHT  10.0f

#define FILEPATH "C:\\dev\\MP\\Black\\Tree.cpp"

GTreeInfo GTreeInfo::Infos[TREE_INFO_LAST];

static int   SwayTimer;
static float SwayPhase[TREE_NUM_ANGLES];
static float SwaySpeed[TREE_NUM_ANGLES];
static float SwayX[TREE_NUM_ANGLES];
static float SwayZ[TREE_NUM_ANGLES];
static int   Brightness = -1;
static float ForestSearchRadius = 25.0f;
static float FireAlpha;

static const float FlyingObjectBendAngle = 0.47123894f;
static const float FireAlphaCold = 230.0f;

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
	SetPositionOnMap(Game3dObject, coords, GetYAngle(), GetScale());
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

void Tree::PreDraw()
{
	SwayTimer += GGame::g_game->TimeInc;
	for (uint32_t i = 0; i < TREE_NUM_ANGLES; i++)
	{
		if (SwayTimer > TREE_SWAY_SPEED_CHANGE_TIME)
		{
			SwaySpeed[i] = Random(1.0f, 2.0f);
		}
		SwayPhase[i] += GGame::g_game->TimeInc * SwaySpeed[i] * TREE_SWAY_PHASE_RATE;
		float sway = cos(SwayPhase[i]) * TREE_SWAY_AMPLITUDE;
		SwayX[i] = sway * sin(TREE_WIND_ANGLE);
		SwayZ[i] = -sway * cos(TREE_WIND_ANGLE);
	}
	if (SwayTimer > TREE_SWAY_SPEED_CHANGE_TIME)
	{
		SwayTimer = 0;
	}
	LHPoint camTarget = *LH3DTech::GetCameraTarget();
	LHPoint sun = LH3DTech::GetSun();
	LHPoint light = camTarget - sun;
	LHPoint view(LH3DTech::GetTargetVector()->x, 0.0f, LH3DTech::GetTargetVector()->z);
	light.Normalise();
	view.Normalise();
	float dot = light * view;
	Brightness = (int)(dot < 0.0f ? 200.0f : dot * 55.0f + 200.0f);
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

void Tree::Draw()
{
	LH3DIsland::GetColorAndSpecularWithFog(Pos, &Game3dObject->color, &Game3dObject->specular);
	if (Game3dObject != NULL)
	{
		Game3dObject->DrawAsFence = true;
	}
	LHMatrix savedMatrix;
	float    savedX;
	float    savedZ;
	if (DrawIndex != 0)
	{
		FlyingObjects* flying = &FlyingObjects::Getg_list()[DrawIndex];
		float          scale = GetScale();
		if (flying->Pos.y <= scale * Game3dObject->GetMesh()->GetBoundingBox().size.y * 2.0f + Game3dObject->matrix._42)
		{
			LHPoint flyingPos = flying->Pos;
			flyingPos.y = Game3dObject->matrix._42;
			float distance = LH3DMath::GetDistance(&flyingPos, &Game3dObject->matrix.GetPos());
			float radius = flying->Radius;
			if (distance < radius)
			{
				LHPoint direction = Game3dObject->matrix.GetPos();
				direction -= flyingPos;
				direction *= InverseSquareRoot(direction.x * direction.x + direction.y * direction.y +
				                               direction.z * direction.z);
				LHPoint  down(0.0f, -1.0f, 0.0f);
				float    angle = LH3DMath::GetYAngle(&down, &direction) + HALF_PI_F;
				float    bend = 1.0f - (TREE_BEND_MIN + distance * (radius - TREE_BEND_MIN) / radius) / radius;
				LHMatrix matrix;
				matrix.SetRotationY(GetYAngle() - angle);
				matrix.PostRotateX(FlyingObjectBendAngle * bend);
				matrix.PostRotateY(angle);
				matrix.PostTranslation(Game3dObject->matrix.GetPos());
				matrix.ScaleMatrixOnly(GetScale());
				savedMatrix = Game3dObject->matrix;
				Game3dObject->matrix = matrix;
				IMPACT_SOUND_LEVEL level;
				if (bend < TREE_BEND_LIGHT)
				{
					level = IMPACT_SOUND_LEVEL_LIGHT;
				}
				else if (bend < TREE_BEND_MEDIUM)
				{
					level = IMPACT_SOUND_LEVEL_MEDIUM;
				}
				else
				{
					level = IMPACT_SOUND_LEVEL_HEAVY;
				}
				long    sound[SOUND_KEY_LENGTH] = {level, 0, 0, IMPACT_SOUND_TARGET_TREE, IMPACT_SOUND_EVENT_COLLISION};
				LHPoint camera;
				GGame::g_game->GetCamera()->GetPosition(camera);
				LHPoint toCamera = camera - Game3dObject->matrix.GetPos();
				GGlobal::Global.audio->SamplePlayAnimEffect(this, sqrt(toCamera * toCamera), sound, 0,
				                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR),
				                                            0, 0.0f, 0.0f);
				goto draw;
			}
		}
		DrawIndex = 0;
	}
	savedX = Game3dObject->matrix._21;
	savedZ = Game3dObject->matrix._23;
	Game3dObject->matrix._21 = GetScale() * SwayX[AngleIndex];
	Game3dObject->matrix._23 = GetScale() * SwayZ[AngleIndex];
draw:
	if (GetFireEffect() != NULL)
	{
		SpecialDrawOnFire(true);
	}
	else
	{
		unsigned long color = Game3dObject->color;
		Game3dObject->color = (((color & 0xff0000) * Brightness & 0xff0000ff) |
		                       ((color & 0xff00) * Brightness & 0xff0000) | ((color & 0xff) * Brightness & 0xff00)) >>
		                          8 |
		                      (color & 0xff000000);
		Game3dObject->AddForDrawing(this);
	}
	if (DrawIndex != 0)
	{
		DrawIndex = 0;
		Game3dObject->matrix = savedMatrix;
	}
	else
	{
		Game3dObject->matrix._21 = savedX;
		Game3dObject->matrix._23 = savedZ;
	}
	if (GRand::LocalRand((long)(TREE_RUSTLE_CHANCE_TIME / GGame::g_game->TimeInc)) == 1)
	{
		LHPoint pos;
		Get3DSoundPos(&pos);
		LHPoint camera;
		GGame::g_game->GetCamera()->GetPosition(camera);
		if ((float)fabs(pos.x - camera.x) <= TREE_RUSTLE_DISTANCE &&
		    (float)fabs(pos.z - camera.z) <= TREE_RUSTLE_DISTANCE &&
		    (float)fabs(camera.y - pos.y) < TREE_RUSTLE_HEIGHT && GetHeight() > TREE_RUSTLE_MIN_HEIGHT)
		{
			long sound[SOUND_KEY_LENGTH] = {0, 0, IMPACT_SOUND_HITTER_TREE_RUSTLE, 0, IMPACT_SOUND_EVENT_TREE_RUSTLE};
			LHPoint toCamera(pos.x - camera.x, pos.y - camera.y, pos.z - camera.z);
			GGlobal::Global.audio->SamplePlayAnimEffect(this, sqrt(toCamera * toCamera), sound, 0,
			                                            GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1,
			                                            0.0f, 0.0f);
		}
	}
}

void Tree::DrawOutOfMap(bool selectable)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		if (IsARootedObject())
		{
			DeadTree::DrawRoots(Game3dObject);
		}
		LH3DIsland::GetColorAndSpecularWithFog(Pos, &Game3dObject->color, &Game3dObject->specular);
		Game3dObject->field_0x5c = 0x40;
		Game3dObject->field_0x60 = 0x80;
		if (GetFireEffect() != NULL)
		{
			SpecialDrawOnFire(selectable);
		}
		else
		{
			unsigned long color = Game3dObject->color;
			Game3dObject->color =
				(((color & 0xff0000) * Brightness & 0xff0000ff) | ((color & 0xff00) * Brightness & 0xff0000) |
			     ((color & 0xff) * Brightness & 0xff00)) >>
					8 |
				(color & 0xff000000);
			Game3dObject->AddForDrawing(selectable ? this : NULL);
		}
		if (Game3dObject != NULL)
		{
			Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		}
	}
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

bool32_t Tree::GetPosForVillagerToSleepUnder(Villager* villager, MapCoords& pos)
{
	MapCoords coords = Pos;
	MapCoords shelterPos;
	bool32_t  foundShelter = false;
	int       count = 9;
	long      spiralX = 1;
	long      spiralZ = 1;
	for (; count != 0;)
	{
		for (MapCellIterator it = coords.GetFirstIterator(); it.object != NULL;
		     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
		{
			Object* object = it.object;
			if (Pos.GetDistance(object->Pos) - object->Get2DRadius() < 4.0f)
			{
				if (it.object->IsVillager(NULL))
				{
					if (((Villager*)it.object)->action.GetState(0) != VILLAGER_STATE_SLEEP_IN_TENT)
					{
						continue;
					}
				}
				else if (!(it.object->Flags & GAME_THING_WITH_POS_FLAG_FIXED))
				{
					continue;
				}
				if (foundShelter)
				{
					return false;
				}
				foundShelter = true;
				shelterPos = it.object->Pos;
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	pos.Set(Pos);
	float angle =
		foundShelter ? GUtils::Get3DAngleFromXZ(shelterPos, Pos) : GUtils::Get3DAngleFromXZ(Pos, villager->Pos);
	pos += GUtils::GetPosFromAngle(angle, 2.0f);
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

Object* Tree::EndPhysics(PhysicsObject* physics_object, bool param_2)
{
	if (!(Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) || (GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING))
	{
		return this;
	}
	if (!param_2)
	{
		return Fixed::EndPhysics(physics_object, false);
	}
	if (physics_object->Flags & PHYSICS_OBJECT_FLAG_LANDED)
	{
		if (Magic == true)
		{
			return Fixed::EndPhysics(physics_object, param_2);
		}
		if (Pos.IsLand() && GetFireEffect() == NULL)
		{
			MapCoords searchPos = Pos;
			bool32_t  nearBuilding = false;
			Forest*   nearestForest = NULL;
			float     nearestDistance = 99999.0f;
			Pos.altitude = 0.0f;
			LHPoint       point = Game3dObject->matrix.GetPos();
			LH3DMapCoords cell(point.x, point.z);
			point.y = LH3DIsland::GetAltitude(cell);
			SmokyStuff::Create(&point, 1, 1.0f, 0xffffffff);
			GInterfaceStatus* status = GetInterfaceStatusWhoLastDroppedMe();
			if (status != NULL)
			{
				status->GetInterface()->StartImmersion(IMMERSION_EFFECT_TYPE_PLANT_OBJECT, 0x80000000);
			}
			int  count = 1000;
			long spiralX = 1;
			long spiralZ = 1;
			for (; count != 0;)
			{
				if (GUtils::GetDistanceInMetres(Pos, searchPos) > ForestSearchRadius + 10.0f)
				{
					break;
				}
				for (Object* object = searchPos.GetFirstObjectFixed(); object != NULL;
				     object = object->GetMapChild(searchPos))
				{
					float distance = object->Pos.GetDistance(Pos) - object->Get2DRadius();
					if (distance < ForestSearchRadius && (object->GetTown() != NULL || object->IsCitadelPart()))
					{
						nearBuilding = true;
						if (object->GetTown() != NULL)
						{
							for (LHLinkedNode<Forest*>* node = object->GetTown()->forests.GetStart(); node != NULL;
							     node = node->next.Get())
							{
								if (node->payload->IsScenic)
								{
									nearestDistance = 0.0f;
									nearestForest = node->payload;
								}
							}
						}
						break;
					}
					Tree* tree = dynamic_cast<Tree*>(object);
					if (tree != NULL && tree->GetForest() != NULL && distance < nearestDistance)
					{
						nearestDistance = distance;
						nearestForest = tree->GetForest();
					}
				}
				count--;
				searchPos += *GUtils::Spiral(spiralX, spiralZ);
			}
			if (GetForest() != NULL)
			{
				GetForest()->RemoveTree(this);
				forest = NULL;
			}
			NonScenic = nearBuilding;
			if (nearestForest != NULL)
			{
				forest = nearestForest;
				nearestForest->AddTree(this);
			}
			else if (!NonScenic)
			{
				forest = new (FILEPATH, 859) Forest(Pos, 0);
				forest->AddTree(this);
			}
			if (!NonScenic)
			{
				GParticleContainer* visual = GParticleContainer::CreateSpotVisualWithSpecifiedDuration(
					Pos, SPOT_VISUAL_FOREST_CREATED, 0.3f, 50, NULL);
				if (visual != NULL)
				{
					visual->SetPlayer(physics_object->GetPlayer());
				}
			}
			GPlayer* player = physics_object->GetPlayer();
			if (player != NULL)
			{
				player->ConsiderMakingCreatureMimicPlayer(physics_object->status, DETECTED_PLAYER_ACTION_PLANT_TREE,
				                                          this, MAGIC_TYPE_NONE);
				player->alignment->Update(player, this, true);
			}
			return Fixed::EndPhysics(physics_object, param_2);
		}
	}
	DeadTree* deadTree = DeadTree::Create(this, physics_object->GetPlayer());
	if (deadTree == NULL)
	{
		return this;
	}
	deadTree->coords = deadTree->Pos;
	deadTree->InsertMapObject();
	deadTree->CreateFallingRoot = true;
	if (IsInScript())
	{
		GScript::ReplaceScriptGameThing(this, deadTree);
	}
	ToBeDeleted(false);
	return deadTree;
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

void Tree::SpecialDrawOnFire(bool selectable)
{
	int   heat;
	float maxTemperature = GetCombustionTemperature() * 1.5f;
	if (GetTemperature() > maxTemperature)
	{
		heat = 255;
	}
	else
	{
		heat = (int)((GetTemperature() - GetCombustionTemperature()) * 255.0f /
		             (maxTemperature - GetCombustionTemperature()));
	}
	uint32_t brightness = 50;
	if (GetLife() > 0.9f)
	{
		brightness = (uint32_t)max(50.0f, 255.0f - (1.0f - GetLife()) * 2550.0f);
	}
	brightness = min(brightness, (uint32_t)Brightness);
	unsigned long color = Game3dObject->color;
	Game3dObject->color = (((color & 0xff0000) * brightness & 0xff0000ff) | ((color & 0xff00) * brightness & 0xff0000) |
	                       ((color & 0xff) * brightness & 0xff00)) >>
	                          8 |
	                      (color & 0xff000000);
	FireAlpha = (255.0f - FireAlphaCold) * heat * (1.0f / 255.0f) + FireAlphaCold;
	if (FireAlpha >= 254.0f)
	{
		FireAlpha = 254.0f;
	}
	LH3DRender::OverrideMaterial = true;
	LH3DRender::OverrideRenderMode = (int)FireAlpha;
	if (GetLife() < 0.2f)
	{
		float     shrink = 1.0f - (0.2f - GetLife()) * 5.0f;
		LHMatrix& matrix = Game3dObject->matrix;
		LHMatrix  saved = matrix;
		matrix.GetVectorX() *= shrink;
		matrix.GetVectorZ() *= shrink;
		Game3dObject->AddForDrawing(selectable ? this : NULL);
		Game3dObject->matrix = saved;
	}
	else
	{
		Game3dObject->AddForDrawing(selectable ? this : NULL);
	}
	bool32_t onScreen = LH3DObject::g_b_last_on_screen;
	LH3DRender::OverrideMaterial = false;
	DrawFireEffect();
	LH3DObject::g_b_last_on_screen = onScreen;
}

void Tree::AddPermanentFootPrint()
{
	new (FILEPATH, 927) RootsPile(Game3dObject, MSH_T_ROOTS_PILE);
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

uint32_t Tree::ApplyThisToObject(GInterfaceStatus* status, Object* object, GestureSystemPacketData* data)
{
	WorshipTotem* totem = dynamic_cast<WorshipTotem*>(object);
	if (totem != NULL)
	{
		if (!(Flags & GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE))
		{
			float        sacrifice = GetSacrificeValue();
			WorshipSite* site = totem->Site.Get();
			sacrifice *= GetLife();
			site->ChantStore += sacrifice;
			site->TotalSacrificeValue += sacrifice;
			GoolooGooloo(this);
			ToBeDeleted(false);
			if (status != NULL)
			{
				LHPoint              pos = status->GetHandPos();
				LH_SamplePlayOptions options;
				options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
				options.SampleNumber = LH_SAMPLE_G_SACRIFICE_01;
				options.AttachedObject = this;
				options.Positional = 1;
				options.Pos = pos;
				options.Looping = 0;
				GGlobal::Global.audio->PlaySoundEffect(&options);
			}
			if (status == GGame::g_game->MyInterfaceStatus())
			{
				ValueSpinner* spinner = new (FILEPATH, 976) ValueSpinner;
				char          text[12];
				sprintf(text, "%3.0f", sacrifice);
				LH3DColor colour(255, 0, 0);
				LHPoint   pos = GGame::g_game->MyInterface()->GetHandRenderCollidePos().GetLHPoint();
				spinner->Init(pos, CHAR2WCHAR(text), colour);
			}
			return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
		}
		return OBJECT_APPLY_RESULT_NONE;
	}
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_WOOD) &&
	    object->DeleteObjectAndTakeResource(this, status))
	{
		return OBJECT_APPLY_RESULT_RESOURCE_TAKEN;
	}
	return OBJECT_APPLY_RESULT_NONE;
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

float Tree::Grow(float amount, bool instant, bool raise_target)
{
	float scale = GetScale();
	if (raise_target)
	{
		TargetScale = max(TargetScale, scale + amount);
	}
	if (scale == TargetScale)
	{
		return 0.0f;
	}
	float newScale = min(scale + amount, TargetScale);
	if (scale == newScale || instant)
	{
		SetScale(newScale);
	}
	else
	{
		SetJustScale(newScale);
		if (Game3dObject != NULL)
		{
			SetPositionOnMap(Game3dObject, Pos, GetYAngle(), GetScale());
		}
	}
	return GetScale() - scale;
}

float Tree::GetWoodRemovedByEffect(EffectValues& values)
{
	float wood = GetWoodValue();
	ApplyEffect(values, 0);
	if (IsAvailable())
	{
		float removed = wood - GetWoodValue();
		if (removed > 0.0f)
		{
			return removed;
		}
	}
	return 0.0f;
}

float Tree::GetWoodAddedByEffect(EffectValues& values)
{
	float wood = GetWoodValue();
	ApplyEffect(values, 0);
	if (IsAvailable())
	{
		return GetWoodValue() - wood;
	}
	return 0.0f;
}

bool32_t Tree::IsForestTreeAtPos(MapCoords& coords)
{
	return coords.FindType(OBJECT_TYPE_FOREST_TREE, NULL) != NULL;
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
