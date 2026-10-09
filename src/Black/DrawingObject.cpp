#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "DrawingObject.h"

#include "ColourConstants.h" /* For White */

#include <math.h> /* For log */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

static float OneOverLogHalf = 1.0f / (float)log(0.5);

static LHPoint ZeroPoint(0.0f, 0.0f, 0.0f);

// UV size of one texel of a 256x256 texture.
static const float UVTextureScale = 1.0f / 256.0f;

#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetCell */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */

#include "Abode.h"
#include "AnimalWolf.h"
#include "Animal.h"
#include "Artifact.h"
#include "Ball.h"
#include "CarriedObject.h"
#include "ControlHand.h"
#include "Creature.h"
#include "CreatureStatsDisplay.h"
#include "Debug.h"
#include "FireEffect.h"
#include "Game3DObject.h"
#include "GameInfo.h"
#include "LandAlignement.h"
#include "Rand.h"
#include "ViscousLiquid.h"
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DSmoke.h>
#include <Lionhead/LHLib/ver5.0/LHCollide.h>
#include "Audio.h"
#include "Camera.h"
#include "SoundMap.h"
#include "VillagerInfo.h"
#include "HelpSystem.h"
#include "Feature.h"
#include "Fixed.h"
#include "Game.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Living.h"
#include "MagicHand.h"
#include "MobileObject.h"
#include "MobileStatic.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "OneOffSpellSeed.h"
#include "PileFood.h"
#include "PileWood.h"
#include "Player.h"
#include "Pot.h"
#include "PSysHandFX.h"
#include "Rock.h"
#include "Scaffold.h"
#include "SpellIcon.h"
#include "SpellSeed.h"
#include "SpellSeedGraphic.h"
#include "StoragePit.h"
#include "Totem.h"
#include "TownCentre.h"
#include "TownSpellIcon.h"
#include "Villager.h"
#include "Windmill.h"
#include "Workshop.h"
#include "ShowNeedsVisuals.h"
#include "LH3DZSorter.h"
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include "WorshipSite.h"
#include "WorshipTotem.h"
#include "alexmfc.h"
#include "HelpText.h"
#include "SpecialVillager.h"
#include "VillagerNames.h"
#include "VillagerStateTableInfo.h"
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include "Alignment.h"
#include "Bubble.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "CreatureReceiveSpell.h"
#include "Landscape.h"
#include "Utils.h"
#include <Lionhead/LH3DLib/development/LH3DLine.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include "PotInfo.h"
#include "PlayerSymbolSprite.h"
#include "GJUtils.h"
#include "MagicCreatureSpellInfo.h"
#include "PSysInterface.h"
#include "SpellSeedInfo.h"
#include "ShowNeeds.h"
#include "ScaffoldInfo.h"
#include "PlannedAbode.h"
#include "AbodeInfo.h"
#include <chlasm/LHSample.h>
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>

#define ABODE_WINDOW_FLICKER_STEPS       8
#define ABODE_WINDOW_FLICKER_PHASE_SCALE 0.1f
#define ABODE_WINDOW_FLICKER_SPEED       1000.0f
#define ABODE_WINDOW_FLICKER_SCALE       4
#define ABODE_WINDOW_FLICKER_RANGE       32
#define ABODE_WINDOW_GLOW_MINIMUM        0xE0
#define ABODE_WINDOW_LIGHTS_ON_HOUR      20.5
#define ABODE_WINDOW_LIGHTS_ON_RATE      8192.0
#define ABODE_WINDOW_LIGHTS_OFF_HOUR     3.0f
#define ABODE_WINDOW_LIGHTS_OFF_RATE     8192.0f
#define ABODE_WINDOW_FULL_BRIGHTNESS     256
#define ABODE_WINDOW_BRIGHTNESS_SHIFT    8
#define ABODE_AMBIENT_SOUND_INTERVAL     80000.0f
#define ABODE_AMBIENT_SOUND_RANGE        200.0f
#define ABODE_AMBIENT_NIGHT_SKY          0.7f
#define ABODE_AMBIENT_DAY_SKY            1.3f
#define NOON_HOUR                        12.0f

#define BALL_DEBUG_CATEGORY 2

#define METRES_PER_MAP_CELL 10.0f

#define GROUND_CIRCLE_SEGMENTS  40
#define GROUND_CIRCLE_HEIGHT    4.0f
#define GROUND_CIRCLE_THICKNESS 5

#define MAX_DRAW_ALPHA          255
#define STATS_BACKGROUND_COLOUR 0x5f000000
#define TEXT_SHADOW_OFFSET      2
#define HALF_BLEND_SCALE        512.0f

#define STAT_BAR_SHADE             128
#define STAT_BAR_BEVEL_STYLE       1
#define STAT_BAR_OUTLINE_THICKNESS 16
#define STAT_BAR_BORDER            3

// Fight statistics are laid out in units of 1/70th of the screen height.
#define FIGHT_STATS_FIGHTERS          2
#define FIGHT_STATS_UNITS_PER_SCREEN  70
#define FIGHT_STATS_WIDTH             33
#define FIGHT_STATS_HEIGHT            9
#define FIGHT_STATS_BAR_WIDTH         25
#define FIGHT_STATS_LIFE_BAR_HEIGHT   2
#define FIGHT_STATS_ENERGY_BAR_TOP    1.5f
#define FIGHT_STATS_ENERGY_BAR_BOTTOM 3.0f
#define FIGHT_STATS_NAME_OFFSET       26
#define FIGHT_STATS_NAME_WIDTH        30
#define FIGHT_STATS_NAME_SIZE         3
#define FIGHT_STATS_ROW_HEIGHT        3.5

#define CREATURE_STATS_MARGIN          40
#define CREATURE_STATS_INTERACTING_TOP 4
#define CREATURE_STATS_WIDTH           4
#define CREATURE_STATS_HEIGHT          3
#define CREATURE_STATS_SHORT_HEIGHT    0.75f
#define CREATURE_STATS_ROWS_PER_SCREEN 16
#define CREATURE_STATS_TEXT_WIDTH      800
#define CREATURE_STATS_TEXT_LENGTH     64
#define CREATURE_STATS_NEUTRAL_HAND    0.01f

enum CREATURE_STAT
{
	CREATURE_STAT_LIFE,
	CREATURE_STAT_ENERGY,
	CREATURE_STAT_EXHAUSTION,
	CREATURE_STAT_HAND,
	CREATURE_STAT_COUNT
};

#define DEBUG_BELIEF_MARKER_HEIGHT 30.0f
#define DEBUG_MARKER_HEIGHT        20.0f
#define DEBUG_PATH_MARKER_HEIGHT   10.0f

#define CREATURE_BUBBLE_ALIGNMENT_THRESHOLD 0.333f

enum CREATURE_BUBBLE_FONT
{
	CREATURE_BUBBLE_FONT_DEFAULT,
	CREATURE_BUBBLE_FONT_GOOD,
	CREATURE_BUBBLE_FONT_NEUTRAL,
	CREATURE_BUBBLE_FONT_EVIL
};

// Render time counts this many steps per game turn.
#define RENDER_TIME_PER_TURN 100

#define SCAFFOLD_FADE_TIME          400.0f
#define SCAFFOLD_HAND_ALPHA_DIVISOR 1.5f
#define SCAFFOLD_APPEAR_PITCH       100
#define SCAFFOLD_APPEAR_ABODE_PITCH 110
#define SCAFFOLD_APPEAR_PITCH_STEP  3

#define FACE_CAMERA_MIN_DIRECTION 0.0001f

#define MILLISECONDS_PER_SECOND 1000.0f
#define SECONDS_PER_MILLISECOND 0.001f

// The spell textures hold 32 frames of 32x32 texels, eight to a row.
#define SPELL_UV_FRAMES             32.0f
#define SPELL_UV_FRAMES_PER_ROW     8
#define SPELL_UV_FRAME_TEXELS       32.0f
#define SPELL_FAT_PULSE             1.5f
#define SPELL_THIN_PULSE_X          0.8f
#define SPELL_THIN_PULSE_Z          0.7f
#define SPELL_SMALL_SHADOW_ALPHA    80
#define SPELL_GRAPHIC_COLLIDE_SCALE 2.0f

#define TOWN_ARTIFACT_SYMBOL_MIN_VALUE    2.0f
#define TOWN_ARTIFACT_SYMBOL_HEIGHT_SCALE 1.2
#define TOWN_ARTIFACT_SYMBOL_HEIGHT       2.0f

#define SCAFFOLD_PREVIEW_ALPHA         (1.0f / 3.0f)
#define SCAFFOLD_PREVIEW_MAX_ALPHA_REF 250

#define LIVING_SPEED_DISTANCE_SCALE 655350.0f
#define LIVING_SHEAR_MAX_ALTITUDE   0.2f
#define LIVING_MAX_SHEAR            0.3f

#define VILLAGER_INFO_TEXT_LENGTH    0x400
#define VILLAGER_NAME_HEIGHT         1.75f
#define VILLAGER_NAME_FEMALE_LIGHTEN 145
#define VILLAGER_DRAW_TURN_RATE      0.003f

// Turns after a villager sits down during which the chair sounds still play.
#define SITTING_DOWN1_SOUND_TURNS 15
#define SITTING_DOWN2_SOUND_TURNS 10

bool32_t CreatureStatsDisplay::Interacting;
int      CreatureStatsDisplay::Alpha;
float    CreatureStatsDisplay::HandValue;
float    CreatureStatsDisplay::Exhaustion;
float    CreatureStatsDisplay::EnergyLoss;
float    CreatureStatsDisplay::LifeLoss;

// BW1W120 005168a0 BW1M119 null
void DrawGroundCircle(const LHPoint& centre, float radius, float red, float green, float blue);

// BW1W120 00516b00 BW1M119 inlined
static void DrawStatBar(unsigned long colour, int x_min, int y_min, int x_max, int y_max, float fraction, bool centred);

// BW1W120 0051a830 BW1M119 010ca660
static void ConvertToCameraFacingMatrix(LHMatrix* matrix);

static inline void SetPositionOnMap(Game3DObject* object, const MapCoords& coords, float y_angle, float scale)
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	object->LH3DObject::SetPosition(point, y_angle, scale);
}

static inline void SetPositionOnLand(Game3DObject* object, const MapCoords& coords, float y_angle, float scale,
                                     Object* owner)
{
	LHPoint point;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(coords, point);
	point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(coords, &object->color, &object->specular);
	object->LH3DObject::SetPosition(point, y_angle, scale);
	object->AddForDrawing(owner);
}

static inline void DrawWithColor(Object* self, unsigned long color, unsigned long specular)
{
	Game3DObject* object = self->Game3dObject;
	object->CombineColorFromPos(color, specular);
	object->AddForDrawing(self);
}

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = *LH3DTech::GetCameraPosition();
}

void Abode::Draw()
{
	static const uint32_t windowFlicker[ABODE_WINDOW_FLICKER_STEPS] = {0, 7, 3, 5, 4, 2, 6, 1};

	Game3DObject* object = Game3dObject;
	if (PresentAtHome && GGameInfo::Info.IsVisualNight())
	{
		float t = fabs(object->matrix._43 + object->matrix._41) * ABODE_WINDOW_FLICKER_PHASE_SCALE + object->matrix._42;
		t = t - (int)t + GLandAlignement::VisualTime;
		int brightness = 0;
		if (t > ABODE_WINDOW_LIGHTS_ON_HOUR)
		{
			brightness = (int)((t - ABODE_WINDOW_LIGHTS_ON_HOUR) * ABODE_WINDOW_LIGHTS_ON_RATE);
		}
		else if (t < ABODE_WINDOW_LIGHTS_OFF_HOUR)
		{
			brightness = (int)((ABODE_WINDOW_LIGHTS_OFF_HOUR - t) * ABODE_WINDOW_LIGHTS_OFF_RATE);
		}
		if (brightness > 0)
		{
			int c = (windowFlicker[(int)(t * ABODE_WINDOW_FLICKER_SPEED) & (ABODE_WINDOW_FLICKER_STEPS - 1)] *
			         ABODE_WINDOW_FLICKER_SCALE) %
			            ABODE_WINDOW_FLICKER_RANGE |
			        ABODE_WINDOW_GLOW_MINIMUM;
			if (brightness < ABODE_WINDOW_FULL_BRIGHTNESS)
			{
				c = c * brightness >> ABODE_WINDOW_BRIGHTNESS_SHIFT;
			}
			object->SetWindowColor(c | (c << 8) | (c << 16) | 0xFF000000);
		}
		else
		{
			object->SetWindowColor(0);
		}
	}
	else
	{
		object->SetWindowColor(0);
	}
	DebugText(1);
	if (DestructionMesh != NULL)
	{
		LH3DMesh* mesh = Game3dObject->GetMesh();
		if (mesh->BoundingBox.CheckRegionOnScreen(Game3dObject))
		{
			FireEffect* fire = fire_effect;
			if (fire != NULL)
			{
				uint32_t  specular = fire->GetFireEffectSpecularColor();
				uint32_t  color = fire->GetFireEffectCharingColor();
				FragMesh* fragMesh = DestructionMesh;
				fragMesh->Color = color;
				fragMesh->Specular = specular;
			}
			else
			{
				FragMesh* fragMesh = DestructionMesh;
				fragMesh->Color = 0xFFFFFFFF;
				fragMesh->Specular = 0;
			}
			DestructionMesh->Draw(NULL, *(LHPoint*)&Game3dObject->matrix.GetPos());
			GGame::g_game->help_system->SendFOVObject(this, LH3DObject::g_last_distance);
			if (LH3DObject::g_last_selected_box)
			{
				GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0.0f, NULL);
			}
		}
		DrawBuilding(Game3dObject);
	}
	else
	{
		MultiMapFixed::Draw();
	}
	if (GRand::LocalRand((long)(ABODE_AMBIENT_SOUND_INTERVAL / GGame::g_game->TimeInc)) == 1)
	{
		LHPoint pos;
		Get3DSoundPos(&pos);
		LHPoint cameraPos;
		GGame::g_game->GetCamera()->GetPosition(cameraPos);
		float distance = pos.GetDistance(cameraPos);
		if (distance < ABODE_AMBIENT_SOUND_RANGE)
		{
			float time = GGameInfo::Info.GetVisualTime();
			float sky = LH3DSky::Time2SkyType(time);
			long  sound[SOUND_KEY_LENGTH];
			sound[0] = 0;
			sound[1] = 0;
			sound[2] = IMPACT_SOUND_HITTER_ABODE;
			sound[3] = 0;
			if (sky < ABODE_AMBIENT_NIGHT_SKY)
			{
				sound[4] = IMPACT_SOUND_EVENT_ABODE_NIGHT;
			}
			else if (sky < ABODE_AMBIENT_DAY_SKY)
			{
				sound[4] = time < NOON_HOUR ? IMPACT_SOUND_EVENT_ABODE_MORNING : IMPACT_SOUND_EVENT_ABODE_AFTERNOON;
			}
			else
			{
				sound[4] = IMPACT_SOUND_EVENT_ABODE_EVENING;
			}
			GGlobal::Global.audio->SamplePlayAnimEffect(
				this, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
		}
	}
	if (smoke != NULL && LH3DObject::g_b_last_on_screen)
	{
		if (PresentAtHome || (IsWorkshop() && ((Workshop*)this)->ProductionTimeLeft))
		{
			smoke->State = LH3D_SMOKE_STATE_EMITTING;
			smoke->AddDrawing();
		}
		else if (smoke->State == LH3D_SMOKE_STATE_FADING)
		{
			smoke->AddDrawing();
		}
		else if (smoke->State == LH3D_SMOKE_STATE_EMITTING)
		{
			smoke->State = LH3D_SMOKE_STATE_FADING;
			smoke->AddDrawing();
		}
	}
	int villagerInHand = VillagerInHand;
	if ((HowManyPeople::g_alpha != 0 && KnockedTown == GetTown()) || villagerInHand)
	{
		DrawPercentFull(villagerInHand);
	}
}

void Windmill::Draw()
{
	Abode::Draw();
	LHPoint pos;
	if (Game3dObject->GetSpecialPos(0, pos))
	{
		Sails->SetPosition(pos, GetYAngle(), GetScale());
		Sails->matrix.RotateZ(SailsAngle);
		unsigned long color;
		unsigned long specular;
		LH3DIsland::GetColorAndSpecularWithFog(&pos, &color, &specular);
		Sails->SetColorSpecular(color, specular);
		Sails->Draw();
	}
}

void TownCentre::Draw()
{
	Abode::Draw();
	bool32_t onScreen = LH3DObject::g_b_last_on_screen;
	if (GetTown() != NULL)
	{
		for (int i = 0; i < MAX_TOWN_CENTRE_SPELLS; i++)
		{
			TownCentreSpellIcon* icon = icons[i];
			if (icon != NULL && GetLife() > 0.0f)
			{
				Game3DObject* object = icon->Game3dObject;
				object->CombineColorFromPos(0xFFFFFFFF, icon->SpecularColor);
				object->AddForDrawing(this);
				if (LH3DObject::g_b_last_on_screen)
				{
					icon->DrawSpellSeedGraphic((uint8_t)icon->Game3dObject->color);
					icon->DrawMagicSystem();
				}
			}
		}
	}
	LH3DObject::g_b_last_on_screen = onScreen;
}

void Object::CheckSounds(const LH3DAnim* anim, long start_frame, long end_frame)
{
	for (LH3DAnimSound* event = anim->Sounds; event != NULL; event = event->Next)
	{
		if (event->Frame >= start_frame && event->Frame < end_frame)
		{
			LHPoint pos;
			if (Get3DSoundPos(&pos) != 1)
			{
				return;
			}
			LHPoint cameraPos;
			GGame::g_game->GetCamera()->GetPosition(cameraPos);
			float distance = pos.GetDistance(cameraPos);
			long  voice;
			if (anim->SoundType == ANIM_SOUND_TYPE_VOICE)
			{
				if (!IsAlive())
				{
					return;
				}
				Villager* villager = dynamic_cast<Villager*>(this);
				if (villager != NULL)
				{
					if (villager->IsChild())
					{
						voice = ANIM_SOUND_VOICE_CHILD;
					}
					else
					{
						voice = villager->GetInfo()->sex != SEX_MALE ? ANIM_SOUND_VOICE_FEMALE : ANIM_SOUND_VOICE_MALE;
					}
				}
				else
				{
					voice = ANIM_SOUND_VOICE_CHILD;
				}
			}
			else
			{
				voice = ANIM_SOUND_VOICE_FEMALE;
			}
			long sound[SOUND_KEY_LENGTH];
			sound[0] = voice;
			sound[1] = ANIM_SOUND_ACTION;
			sound[2] = anim->SoundType;
			sound[3] = GSoundMap::GetSurfaceType(Pos);
			sound[4] = event->Sound;
			if (event->Sound == ANIM_SOUND_EVENT_BANTER_AT_HOME || event->Sound == ANIM_SOUND_EVENT_BANTER_1 ||
			    event->Sound == ANIM_SOUND_EVENT_BANTER_2)
			{
				if (event->Sound == ANIM_SOUND_EVENT_BANTER_AT_HOME)
				{
					if (IsVillager(NULL))
					{
						Abode* abode = ((Villager*)this)->GetAbode();
						GGlobal::Global.audio->SamplePlayAnimEffect(
							abode, distance, sound, event->Variation,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_VILLAGERS_BANTER), 1, 0.0f, 0.0f);
					}
				}
				else
				{
					GGlobal::Global.audio->SamplePlayAnimEffect(
						this, distance, sound, event->Variation,
						GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_VILLAGERS_BANTER), 1, 0.0f, 0.0f);
				}
			}
			else
			{
				if (event->Sound == ANIM_SOUND_EVENT_SPEECH && IsVillager(NULL) && !IsInScript())
				{
					HelpSystem* help = GGame::g_game->help_system;
					if (help != NULL && help->WideScreen && help->GetWideScreenControl())
					{
						return;
					}
				}
				if (((LH3DAnim*)anim)->GetIndexInCache() == ANM_P_SITTING_DOWN1_SITTING)
				{
					if (IsVillager(NULL) && ((Villager*)this)->action.TurnsSinceStateChange < SITTING_DOWN1_SOUND_TURNS)
					{
						GGlobal::Global.audio->SamplePlayAnimEffect(
							this, distance, sound, event->Variation,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
					}
				}
				else if (((LH3DAnim*)anim)->GetIndexInCache() == ANM_P_SITTING_DOWN2_OUT_OF)
				{
					if (IsVillager(NULL) && ((Villager*)this)->action.TurnsSinceStateChange < SITTING_DOWN2_SOUND_TURNS)
					{
						GGlobal::Global.audio->SamplePlayAnimEffect(
							this, distance, sound, event->Variation,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
					}
				}
				else
				{
					GGlobal::Global.audio->SamplePlayAnimEffect(
						this, distance, sound, event->Variation,
						GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
				}
			}
		}
	}
}

long Object::MoveAnimByTime(const LH3DAnim* anim, long frame, long time)
{
	long newFrame = frame + time;
	if (newFrame >= anim->Duration)
	{
		CheckSounds(anim, frame, anim->Duration);
		if (anim->IsCyclic())
		{
			newFrame %= anim->Duration;
		}
		else
		{
			newFrame = anim->Duration;
		}
		if (newFrame != 0)
		{
			CheckSounds(anim, 0, newFrame);
		}
	}
	else
	{
		CheckSounds(anim, frame, newFrame);
	}
	return newFrame;
}

long Object::MoveAnimByDist(const LH3DAnim* anim, long frame, float distance)
{
	return MoveAnimByTime(anim, frame, (long)(distance / anim->Distance * anim->Duration));
}

void Ball::Draw()
{
	GGlobal::Global.debug.SetMessage(BALL_DEBUG_CATEGORY, "height: %.2f", Pos.altitude);
	MobileObject::Draw();
}

void DrawGroundCircle(const LHPoint& centre, float radius, float red, float green, float blue)
{
	LH3DColor colour(red, green, blue, 255);
	LHPoint   points[GROUND_CIRCLE_SEGMENTS + 1];
	float     top = 0.0f;
	for (unsigned int i = 0; i <= GROUND_CIRCLE_SEGMENTS; i++)
	{
		float angle = i * (TWO_PI / GROUND_CIRCLE_SEGMENTS);
		points[i].x = centre.x + sin(angle) * radius;
		points[i].z = centre.z + cos(angle) * radius;
		points[i].y = LH3DIsland::GetHeightAsFloat((long)(centre.x / METRES_PER_MAP_CELL),
		                                           (long)(centre.z / METRES_PER_MAP_CELL)) +
		              GROUND_CIRCLE_HEIGHT;
		if (top < points[i].y)
		{
			top = points[i].y;
		}
	}

	LHPoint previous;
	LHPoint current;
	for (unsigned int j = 0; j <= GROUND_CIRCLE_SEGMENTS; j++)
	{
		current = points[j];
		current.y = top;
		if (j > 0)
		{
			for (unsigned int k = 0; k < GROUND_CIRCLE_THICKNESS; k++)
			{
				LH3DLine::AddLine(previous - LHPoint(0.0f, k, 0.0f), current - LHPoint(0.0f, k, 0.0f), &colour, NULL);
			}
		}
		LH3DLine::AddLine(current, current - LHPoint(0.0f, GROUND_CIRCLE_THICKNESS, 0.0f), &colour, NULL);
		previous = current;
	}
}

// Moves each channel of from amount/256 of the way towards to; alpha is taken from to.
static inline unsigned long BlendColour(long amount, unsigned long from, unsigned long to)
{
	return (to & 0xff000000) |
	       (((from & 0xff0000) + ((((to & 0xff0000) - (from & 0xff0000)) * amount) >> 8)) & 0xff0000) |
	       (((from & 0xff00) + ((((to & 0xff00) - (from & 0xff00)) * amount) >> 8)) & 0xff00) |
	       (((from & 0xff) + ((((to & 0xff) - (from & 0xff)) * amount) >> 8)) & 0xff);
}

static void DrawStatBar(unsigned long colour, int x_min, int y_min, int x_max, int y_max, float fraction, bool centred)
{
	unsigned long darkColour = BlendColour(STAT_BAR_SHADE, colour, 0xff000000);
	SetupThing::DrawBevBox(x_min, y_min, x_max, y_max, STAT_BAR_BEVEL_STYLE, STAT_BAR_OUTLINE_THICKNESS, -1,
	                       0xffffffff);
	int fillEnd = (int)(x_min + STAT_BAR_BORDER + (x_max - x_min - 2 * STAT_BAR_BORDER) * fraction);
	fillEnd = fillEnd > x_min ? min(fillEnd, x_max) : x_min;
	if (centred)
	{
		int centre = (x_min + x_max) / 2;
		SetupThing::DrawBox(centre, y_min + STAT_BAR_BORDER, fillEnd, y_max - STAT_BAR_BORDER, darkColour, colour,
		                    colour, darkColour, 0, 1);
		SetupThing::DrawBox(centre, y_min + STAT_BAR_BORDER, centre + 1, y_max - STAT_BAR_BORDER, 0xff000000,
		                    0xff000000, 0xff000000, 0xff000000, 0, 1);
	}
	else
	{
		SetupThing::DrawBox(x_min + STAT_BAR_BORDER, y_min + STAT_BAR_BORDER, fillEnd, y_max - STAT_BAR_BORDER,
		                    darkColour, colour, colour, darkColour, 0, 1);
	}
	SetupThing::DrawBox(x_min + STAT_BAR_BORDER, y_min + STAT_BAR_BORDER, x_max - STAT_BAR_BORDER,
	                    y_min + 2 * STAT_BAR_BORDER, 0xff000000, 0xff000000, 0, 0, 0, 1);
	SetupThing::DrawBox(x_min + STAT_BAR_BORDER, y_min + STAT_BAR_BORDER, x_min + 2 * STAT_BAR_BORDER,
	                    y_max - STAT_BAR_BORDER, 0xff000000, 0, 0, 0xff000000, 0, 1);
}

void DrawCreatureFightStats(float life1, float energy1, wchar_t* name1, float life2, float energy2, wchar_t* name2,
                            int alpha)
{
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_WORLD)
	{
		return;
	}
	if (SetupBox::GetCurrentActiveBox() != NULL && SetupBox::GetCurrentActiveBox()->BackgroundStyle != 0)
	{
		return;
	}

	wchar_t* names[FIGHT_STATS_FIGHTERS] = {name1, name2};
	float    lives[FIGHT_STATS_FIGHTERS] = {life1, life2};
	float    energies[FIGHT_STATS_FIGHTERS] = {energy1, energy2};

	int drawAlpha = alpha > 0 ? min(alpha, MAX_DRAW_ALPHA) : 0;
	if (drawAlpha < 1)
	{
		return;
	}
	int oldDrawAlpha = SetupThing::DrawAlpha;
	SetupThing::DrawAlpha = drawAlpha;

	int unit = LHSys::TheSystem.screen.height / FIGHT_STATS_UNITS_PER_SCREEN;
	int xMin = 0;
	int yMin = 0;
	int xMax = unit * FIGHT_STATS_WIDTH;
	int yMax = unit * FIGHT_STATS_HEIGHT;
	SetupThing::unadjust(xMin, yMin);
	SetupThing::unadjust(xMax, yMax);
	unit = SetupThing::unadjustsize(unit);
	SetupThing::DrawBox(xMin, yMin, xMax, yMax, STATS_BACKGROUND_COLOUR, 0, 0, 0, 0, 1);

	int x = xMin + unit;
	int y = yMin + unit;
	for (int i = 0; i < FIGHT_STATS_FIGHTERS; i++)
	{
		lives[i] = lives[i] > 0.0f ? min(lives[i], 1.0f) : 0.0f;
		energies[i] = energies[i] > 0.0f ? min(energies[i], 1.0f) : 0.0f;

		DrawStatBar(BlendColour((long)(energies[i] * 255.0f), 0xff2080ff, 0xff8080ff), x,
		            (int)(y + unit * FIGHT_STATS_ENERGY_BAR_TOP), x + unit * FIGHT_STATS_BAR_WIDTH,
		            (int)(y + unit * FIGHT_STATS_ENERGY_BAR_BOTTOM), energies[i], false);

		unsigned long lifeColour;
		if (lives[i] < 0.5f)
		{
			lifeColour = BlendColour((long)(lives[i] * HALF_BLEND_SCALE), 0xffff0000, 0xffffff00);
		}
		else
		{
			lifeColour = BlendColour((long)((lives[i] - 0.5f) * HALF_BLEND_SCALE), 0xffffff00, 0xff00ff00);
		}
		DrawStatBar(lifeColour, x, y, x + unit * FIGHT_STATS_BAR_WIDTH, y + unit * FIGHT_STATS_LIFE_BAR_HEIGHT,
		            lives[i], false);

		SetupThing::DrawTextA(x + unit * FIGHT_STATS_NAME_OFFSET + TEXT_SHADOW_OFFSET, y + TEXT_SHADOW_OFFSET,
		                      unit * FIGHT_STATS_NAME_WIDTH, TEXTJUSTIFY_LEFT, names[i], unit * FIGHT_STATS_NAME_SIZE,
		                      &LH3DColor(0, 0, 0, 255), 0);
		SetupThing::DrawTextA(x + unit * FIGHT_STATS_NAME_OFFSET, y, unit * FIGHT_STATS_NAME_WIDTH, TEXTJUSTIFY_LEFT,
		                      names[i], unit * FIGHT_STATS_NAME_SIZE, &LH3DColor(255, 255, 255, 255), 0);
		y += unit * FIGHT_STATS_ROW_HEIGHT;
	}
	SetupThing::DrawAlpha = oldDrawAlpha;
}

void DrawCreatureStats(float life_loss, float energy_loss, float exhaustion, float hand_value, int alpha)
{
	static float labelWidth = 0.0f;

	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_WORLD)
	{
		return;
	}
	HelpSystem* help = GGame::g_game->help_system;
	if (help->WideScreen && help->GetWideScreenControl())
	{
		return;
	}
	if (SetupBox::GetCurrentActiveBox() != NULL && SetupBox::GetCurrentActiveBox()->BackgroundStyle != 0)
	{
		return;
	}

	int drawAlpha = alpha > 0 ? min(alpha, MAX_DRAW_ALPHA) : 0;
	if (drawAlpha < 1)
	{
		return;
	}

	life_loss = life_loss > 0.0f ? min(life_loss, 1.0f) : 0.0f;
	energy_loss = energy_loss > 0.0f ? min(energy_loss, 1.0f) : 0.0f;
	exhaustion = exhaustion > 0.0f ? min(exhaustion, 1.0f) : 0.0f;
	hand_value = hand_value > -1.0f ? min(hand_value, 1.0f) : -1.0f;

	int oldDrawAlpha = SetupThing::DrawAlpha;
	SetupThing::DrawAlpha = drawAlpha;

	int screenWidth = LHSys::TheSystem.screen.width;
	int screenHeight = LHSys::TheSystem.screen.height;
	int xMin = screenWidth / CREATURE_STATS_MARGIN;
	int yMin = CreatureStatsDisplay::Interacting ? screenHeight / CREATURE_STATS_INTERACTING_TOP
	                                             : screenHeight / CREATURE_STATS_MARGIN;
	int xMax = xMin + screenWidth / CREATURE_STATS_WIDTH;
	int yMax = (int)(yMin + screenHeight / CREATURE_STATS_HEIGHT *
	                            (CreatureStatsDisplay::Interacting ? 1.0f : CREATURE_STATS_SHORT_HEIGHT));
	SetupThing::unadjust(xMin, yMin);
	SetupThing::unadjust(xMax, yMax);
	SetupThing::DrawBox(xMin, yMin, xMax, yMax, STATS_BACKGROUND_COLOUR, 0, 0, STATS_BACKGROUND_COLOUR, 0, 1);

	int size = SetupThing::unadjustsize(screenHeight / CREATURE_STATS_ROWS_PER_SCREEN);
	int y = yMin + size * 2 / 3;
	if (labelWidth == 0.0f)
	{
		float width = SetupThing::GetTextWidth(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_30), size / 2, 0, 1.0f);
		if (width > labelWidth)
		{
			labelWidth = width;
		}
		width = SetupThing::GetTextWidth(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_50),
		                                 size / 2, 0, 1.0f);
		if (width > labelWidth)
		{
			labelWidth = width;
		}
		width = SetupThing::GetTextWidth(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_119),
		                                 size / 2, 0, 1.0f);
		if (width > labelWidth)
		{
			labelWidth = width;
		}
		width = SetupThing::GetTextWidth(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_100),
		                                 size / 2, 0, 1.0f);
		if (width > labelWidth)
		{
			labelWidth = width;
		}
		labelWidth += size / 2;
	}
	xMax += labelWidth - (xMax - xMin) / 3;

	wchar_t buffer[CREATURE_STATS_TEXT_LENGTH];
	for (int i = 0; i < (CreatureStatsDisplay::Interacting ? CREATURE_STAT_COUNT : CREATURE_STAT_HAND); i++)
	{
		if (i == CREATURE_STAT_HAND)
		{
			y += size / 3;
		}
		char16_t* label;
		float     value = 0.0f;
		switch (i)
		{
		case CREATURE_STAT_LIFE:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_30);
			value = life_loss;
			swprintf(buffer, L"%d%%", (int)(life_loss * 100.0f));
			break;
		case CREATURE_STAT_ENERGY:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_50);
			value = energy_loss;
			swprintf(buffer, L"%d%%", (int)(energy_loss * 100.0f));
			break;
		case CREATURE_STAT_EXHAUSTION:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_119);
			value = exhaustion;
			swprintf(buffer, L"%d%%", (int)(exhaustion * 100.0f));
			break;
		case CREATURE_STAT_HAND:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_100);
			value = (hand_value * 0.5f) + 0.5f;
			if (hand_value < -CREATURE_STATS_NEUTRAL_HAND)
			{
				swprintf(buffer, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_05),
				         (int)(-hand_value * 100.0f));
			}
			else if (hand_value > CREATURE_STATS_NEUTRAL_HAND)
			{
				swprintf(buffer, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_47),
				         (int)(hand_value * 100.0f));
			}
			else
			{
				wcscpy(buffer, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_81));
				wcscat(buffer, L" 0%");
			}
			break;
		}

		int barLeft = (int)(xMin + labelWidth);
		int barRight = (int)(barLeft + labelWidth);
		SetupThing::DrawTextA(barLeft - size / 4 + TEXT_SHADOW_OFFSET, y + TEXT_SHADOW_OFFSET,
		                      CREATURE_STATS_TEXT_WIDTH, TEXTJUSTIFY_RIGHT, label, size / 2, &LH3DColor(0, 0, 0, 255),
		                      0);
		SetupThing::DrawTextA(barLeft - size / 4, y, CREATURE_STATS_TEXT_WIDTH, TEXTJUSTIFY_RIGHT, label, size / 2,
		                      &LH3DColor(255, 255, 255, 255), 0);
		SetupThing::DrawTextA(barRight + size / 4 + TEXT_SHADOW_OFFSET, y + TEXT_SHADOW_OFFSET,
		                      CREATURE_STATS_TEXT_WIDTH, TEXTJUSTIFY_LEFT, buffer, size / 2, &LH3DColor(0, 0, 0, 255),
		                      0);
		SetupThing::DrawTextA(barRight + size / 4, y, CREATURE_STATS_TEXT_WIDTH, TEXTJUSTIFY_LEFT, buffer, size / 2,
		                      &LH3DColor(255, 255, 255, 255), 0);

		unsigned long colour = 0xffffff00;
		if (i == CREATURE_STAT_HAND)
		{
			colour = value < 0.5f ? 0xffff0000 : 0xff00ff00;
		}
		DrawStatBar(colour, barLeft, y, barRight, y + size / 2, value, i == CREATURE_STAT_HAND);
		y += size;
	}
	SetupThing::DrawAlpha = oldDrawAlpha;
}

void DrawCreatureStats()
{
	if (CreatureStatsDisplay::Alpha > 0)
	{
		DrawCreatureStats(CreatureStatsDisplay::LifeLoss, CreatureStatsDisplay::EnergyLoss,
		                  CreatureStatsDisplay::Exhaustion, CreatureStatsDisplay::HandValue,
		                  CreatureStatsDisplay::Alpha);
	}
	CreatureStatsDisplay::Alpha = 0;
	CreatureStatsDisplay::Interacting = false;
}

void Creature::Draw()
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) && GGame::g_game->MyInterface()->GetInteractObject() == this)
	{
		CreatureStatsDisplay::Alpha = MAX_DRAW_ALPHA;
		CreatureStatsDisplay::Interacting = true;
		CreatureStatsDisplay::LifeLoss = 1.0f - GetLife();
		CreatureStatsDisplay::EnergyLoss = 1.0f - physical->GetEnergy();
		CreatureStatsDisplay::Exhaustion = physical->GetExhaustion();
		if (GetPlayer() != NULL)
		{
			CHand* hand = GetPlayer()->GetRenderHand();
			if (hand != NULL)
			{
				HandStateCreature* state = dynamic_cast<HandStateCreature*>(hand->HandStates.raw[hand->CurrentState]);
				if (state != NULL)
				{
					CreatureStatsDisplay::HandValue = state->HandValue;
				}
			}
		}
	}

	if (GGame::DebugDrawCreatureBeliefs)
	{
		for (CreatureBelief* belief = mind->beliefs.lists[CREATURE_BELIEF_LIST_TYPE_OBJECT].Head; belief != NULL;
		     belief = belief->Next)
		{
			LHPoint point;
			GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, point);
			LHPoint top;
			top = point;
			top.y += DEBUG_BELIEF_MARKER_HEIGHT;
			LH3DLine::AddLine(point, top, &LH3DColor(255, 0, 0), NULL);
		}
	}

	if (CreatureMental::DebugDrawConfinement && IsConfinedToArea())
	{
		GUtils::Circle::DrawCircleOnMap(ConfinementCentre, ConfinementRadius, LH3DColor(255, 255, 0), 0.5f, 1);
	}

	if (Game3dObject != (Game3DObject*)physical->Creature3d->Get3DObject())
	{
		Game3dObject = (Game3DObject*)physical->Creature3d->Get3DObject();
	}
	if (physical->Creature3d->AddForDrawing())
	{
		GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0.0f, NULL);
	}
	physical->Creature3d->IsMoving();
	if (CreatureMental::DebugDrawConfinement)
	{
		physical->Creature3d->HasLookPoint();
	}

	if (CreatureMental::DebugDrawObjectToActOn && mind->agenda.plans[0].ObjectToActOn != NULL)
	{
		CreatureBelief* belief = mind->agenda.plans[0].ObjectToActOn;
		LHPoint         objectPos;
		GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, objectPos);
		LH3DColor red(255, 0, 0);
		LHPoint   objectTop = objectPos;
		objectTop.y += DEBUG_MARKER_HEIGHT;
		LH3DLine::AddLine(objectPos, objectTop, &red, NULL);
		LHPoint thingPos;
		GLandscape::ConvertMapCoordToLandscapePoint(belief->GetPointer()->Pos, thingPos);
		LH3DColor pink(255, 32, 32);
		LHPoint   thingTop = thingPos;
		thingTop.y += DEBUG_MARKER_HEIGHT;
		LH3DLine::AddLine(thingPos, thingTop, &pink, NULL);
	}

	if (CreatureMental::DebugDrawLine && mind->debug.LineTurnsLeft > 0)
	{
		LHPoint   startOnGround = mind->debug.LineStart;
		LHPoint   endOnGround = mind->debug.LineEnd;
		LH3DColor red(255, 0, 0);
		LH3DColor green(0, 255, 0);
		startOnGround.y = 0.0f;
		LH3DLine::AddLine(mind->debug.LineStart, startOnGround, &green, NULL);
		endOnGround.y = 0.0f;
		LH3DLine::AddLine(mind->debug.LineEnd, endOnGround, &red, NULL);
		if (!(GGame::g_game->GameFlags & GAME_FLAG_PAUSED))
		{
			mind->debug.LineTurnsLeft--;
		}
	}

	if (CreatureMental::DebugDrawMarker)
	{
		LHPoint top = mind->debug.MarkerPos;
		top.y += DEBUG_MARKER_HEIGHT;
		LH3DLine::AddLine(mind->debug.MarkerPos, top, &LH3DColor(255, 0, 0), NULL);
	}

	static GatheringText* bubbleFont = NULL;
	static int            unused = 1;

	int fontIndex;
	if (alignment->GetValue() > CREATURE_BUBBLE_ALIGNMENT_THRESHOLD)
	{
		fontIndex = CREATURE_BUBBLE_FONT_GOOD;
	}
	else if (alignment->GetValue() < -CREATURE_BUBBLE_ALIGNMENT_THRESHOLD)
	{
		fontIndex = CREATURE_BUBBLE_FONT_EVIL;
	}
	else
	{
		fontIndex = CREATURE_BUBBLE_FONT_NEUTRAL;
	}
	if (fontIndex == CREATURE_BUBBLE_FONT_NEUTRAL || (&GatheringText::gamefont)[fontIndex] == NULL)
	{
		fontIndex = CREATURE_BUBBLE_FONT_DEFAULT;
	}
	bubbleFont = (&GatheringText::gamefont)[fontIndex];

	LHPoint bubblePos = physical->Creature3d->GetMatrixBuffer()->GetPos();
	bubblePos.y = LH3DIsland::GetAltitude(LH3DMapCoords(bubblePos.x, bubblePos.z)) + GetHeight();
	LHLinkedNode<CreatureSpeechItem*>* speech = SpeechItems.GetStart();
	bubble->Font = bubbleFont;
	if (speech != NULL)
	{
		bubble->UpdateAndDraw(CreatureBubbleCallbackStub, (unsigned long)this, bubblePos, NULL, 0);
	}

	if (CreatureMental::DebugDrawPath)
	{
		for (LHLinkedNode<LHPoint*>* node = DebugPath.head.Get(); node != NULL; node = node->next.Get())
		{
			LHPoint pos = *node->payload;
			LHPoint top = pos;
			top.y += DEBUG_PATH_MARKER_HEIGHT;
			LH3DLine::AddLine(pos, top, &LH3DColor(255, 0, 0), NULL);
		}
	}

	ReceiveSpell->Draw();
	if (smoke != NULL)
	{
		smoke->AddDrawing();
	}
}

void Rock::Draw()
{
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

void MobileStatic::Draw()
{
	if (Game3dObject != NULL && IsFence())
	{
		Game3dObject->DrawAsFence = true;
	}
	MultiMapFixed::Draw();
}

void MultiMapFixed::DrawBuilding(Game3DObject* object)
{
	float percent = GetPercentForDrawBuilding();
	LH3DIsland::GetColorAndSpecular(&object->matrix.GetPos(), &object->color, &object->specular);
	FireEffect* fire = GetFireEffect();
	if (fire != NULL)
	{
		object->CombineColorWithCurrent(fire->GetFireEffectCharingColor(), fire->GetFireEffectSpecularColor());
		DrawFireEffect();
	}
	if (percent != 0.0f)
	{
		object->DrawPartialyBuilt(percent);
	}
	if (LH3DObject::g_b_last_on_screen)
	{
		GGame::g_game->help_system->SendFOVObject(this, LH3DObject::g_last_distance);
		if (LH3DObject::g_last_selected_box)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(this, 0.0f, NULL);
		}
	}
}

void Object::DrawObjectOnFire()
{
	FireEffect*   fire = GetFireEffect();
	uint32_t      specular = fire->GetFireEffectSpecularColor();
	uint32_t      color = fire->GetFireEffectCharingColor();
	Game3DObject* object = Game3dObject;
	object->CombineColorFromPos(color, specular);
	object->AddForDrawing(this);
	DrawFireEffect();
}

void MultiMapFixed::Draw()
{
	if (IsDrawBuilding() == true)
	{
		DrawBuilding(Game3dObject);
	}
	else if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

void SingleMapFixed::Draw()
{
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

void MobileObject::Draw()
{
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

void Scaffold::DrawInHand(GInterfaceStatus* status)
{
	static bool32_t appearSoundPlayed = false;
	static bool32_t disappearSoundPlayed = false;

	Object::DrawInHand(status);
	if (!IsPlannedValid(PLANNED_TYPE_0) || status != GGame::g_game->MyInterface()->status)
	{
		return;
	}
	uint32_t cycle = GGame::g_game->RenderTime % RENDER_TIME_PER_TURN;
	int      fade = FadeTime - min(cycle, FadeTime);
	float    drawScale = HandScale;
	if (fade > 0)
	{
		if (Appearing)
		{
			if (!appearSoundPlayed)
			{
				disappearSoundPlayed = false;
				int                  abodeNumber = Planned->GetInfo()->GetAbodeNumber();
				LH_SamplePlayOptions options;
				options.Pitch = abodeNumber < 0
				                    ? SCAFFOLD_APPEAR_PITCH
				                    : SCAFFOLD_APPEAR_ABODE_PITCH - abodeNumber * SCAFFOLD_APPEAR_PITCH_STEP;
				options.Bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME);
				options.SampleNumber = LH_SAMPLE_G_SCAFFOLDAPPEAR_01;
				options.Looping = 0;
				options.AttachedObject = NULL;
				options.Positional = 0;
				GGlobal::Global.audio->PlaySoundEffect(&options);
				appearSoundPlayed = true;
			}
			drawScale *= 1.0f - fade / SCAFFOLD_FADE_TIME;
		}
		else
		{
			if (!disappearSoundPlayed)
			{
				appearSoundPlayed = false;
				GGlobal::Global.audio->PlaySoundEffect(NULL, LH_SAMPLE_G_SCAFFOLDDISAPPEAR_01, 2, 0, 0, 0,
				                                       AUDIO_SFX_BANK_TYPE_IN_GAME);
				disappearSoundPlayed = true;
			}
			drawScale *= fade / SCAFFOLD_FADE_TIME;
		}
	}
	else if (!Appearing)
	{
		return;
	}
	if (HandObject == NULL)
	{
		return;
	}
	HandObject->SetNeedSorting(true);
	GInterface* playerInterface = GGame::g_game->MyInterface();
	MapCoords   coords(playerInterface->hand.Get()->DynamicShadow->matrix.GetPos());
	float       angle = ((GGame::g_game->RenderTime % RENDER_TIME_PER_TURN) / (float)RENDER_TIME_PER_TURN) *
	                        ((const GScaffoldInfo*)info)->HandSpinSpeed +
	                    HandAngle;
	LH3DObject* object = HandObject;
	LHPoint     pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	object->LH3DObject::SetPosition(pos, angle, drawScale);
	HandObject->SetDrawWithGlobalAlpha(true);
	unsigned long color = 0;
	unsigned long specular = 0;
	LH3DIsland::GetColorAndSpecular(coords, &color, &specular);
	color = ((unsigned long)((color >> 24) / SCAFFOLD_HAND_ALPHA_DIVISOR) << 24) | (color & 0xFFFFFF);
	HandObject->SetColorSpecular(color, specular);
	HandObject->AddForDrawing(NULL);
}

void GInterface::Draw()
{
	GMagicHand* magicHand = status->HandHoldingSomething ? &status->magic_hand[status->HandHoldingSomething - 1] : NULL;
	if (magicHand != NULL)
	{
		magicHand->DrawContents();
	}
	status->DebugText(1);
}

void Feature::Draw()
{
	MultiMapFixed::Draw();
}

void Creed::Draw()
{
	if (Glow != NULL && Game3dObject != NULL)
	{
		Glow->DrawAt(Game3dObject->matrix, Game3dObject->scale);
		Game3dObject->AddJustForCollide(this);
	}
}

void Creed::DrawOutOfMap(bool selectable)
{
	if (Glow != NULL && Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		Glow->DrawAt(Game3dObject->matrix, Game3dObject->scale);
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
}

void SpellSeed::Draw() {}

// Alpha of the one-off spell seed models.
static uint8_t SpellSeedAlpha = 150;

void OneOffSpellSeed::FaceCamera()
{
	static bool faceCamera = true;
	if (!faceCamera)
	{
		return;
	}

	LHPoint  centre = Game3dObject->GetMesh()->GetBoundingBox().centre;
	LHPoint  cameraPos;
	LHPoint  direction;
	LHPoint  side;
	LHPoint  cross;
	LHMatrix rotation;

	Game3dObject->matrix.TransformPoint(centre);
	Game3dObject->matrix.Translation(Game3dObject->GetMesh()->GetBoundingBox().centre * -1.0f);

	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	direction = centre - cameraPos;
	if (fabs(direction.x) < FACE_CAMERA_MIN_DIRECTION && fabs(direction.z) < FACE_CAMERA_MIN_DIRECTION)
	{
		if (direction.x > 0.0f)
		{
			direction.x = FACE_CAMERA_MIN_DIRECTION;
		}
		else
		{
			direction.x = -FACE_CAMERA_MIN_DIRECTION;
		}
	}
	direction.Normalise();

	static LHPoint up(0.0f, 1.0f, 0.0f);
	side = up + direction * -up.DotProductInline(direction);
	side.Normalise();
	cross.CrossProduct(side, direction);

	rotation.m[0] = cross.x;
	rotation.m[3] = cross.y;
	rotation.m[6] = cross.z;
	rotation.m[1] = -direction.x;
	rotation.m[4] = -direction.y;
	rotation.m[7] = -direction.z;
	rotation.m[2] = side.x;
	rotation.m[5] = side.y;
	rotation.m[8] = side.z;
	rotation.m[11] = 0.0f;
	rotation.m[10] = 0.0f;
	rotation.m[9] = 0.0f;
	rotation.SetInverse();
	Game3dObject->matrix.PostMultiply(rotation);
	Game3dObject->matrix.ScaleMatrixOnly(Game3dObject->scale);

	LHPoint offset = Game3dObject->GetMesh()->GetBoundingBox().centre;
	Game3dObject->matrix.TransformVector(offset);
	*(LHPoint*)&Game3dObject->matrix.m[9] = centre - offset;
}

void OneOffSpellSeed::DrawOutOfMap(bool selectable)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
	if (Graphic.Get() != NULL)
	{
		UpdateFrame();
		FaceCamera();
		LHPoint savedPos = Game3dObject->matrix.GetPos();
		LHPoint pos = Game3dObject->matrix * Game3dObject->GetMesh()->GetBoundingBox().centre;
		LHPoint toCamera = *LH3DTech::GetCameraPosition() - pos;
		float   invLength =
			InverseSquareRoot(toCamera.x * toCamera.x + toCamera.y * toCamera.y + toCamera.z * toCamera.z);
		toCamera.x *= invLength;
		toCamera.y *= invLength;
		toCamera.z *= invLength;
		pos.Add(toCamera * GetRadius());
		*(LHPoint*)&Game3dObject->matrix.m[9] = pos;
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		Game3dObject->SetDrawWithGlobalAlpha(true);
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos((SpellSeedAlpha << 24) | 0xFFFFFF, 0);
		object->AddForDrawing(selectable ? this : NULL);
		*(LHPoint*)&Game3dObject->matrix.m[9] = savedPos;
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		if (LH3DObject::g_b_last_on_screen)
		{
			LHMatrix matrix;
			float    scale;
			GetSpellGraphicPos(&matrix, &scale);
			Graphic->DrawUpdateAtPos(matrix, scale);
			Graphic->DrawSpellGraphic(this, false, selectable, Game3dObject->color >> 24);
		}
		LH3DObject::g_b_last_on_screen = onScreen;
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
}

void OneOffSpellSeed::Draw()
{
	if (Graphic.Get() != NULL)
	{
		UpdateFrame();
		FaceCamera();
		LHPoint savedPos = Game3dObject->matrix.GetPos();
		LHPoint pos = Game3dObject->matrix * Game3dObject->GetMesh()->GetBoundingBox().centre;
		LHPoint toCamera = *LH3DTech::GetCameraPosition() - pos;
		float   invLength =
			InverseSquareRoot(toCamera.x * toCamera.x + toCamera.y * toCamera.y + toCamera.z * toCamera.z);
		toCamera.x *= invLength;
		toCamera.y *= invLength;
		toCamera.z *= invLength;
		pos.Add(toCamera * GetRadius());
		*(LHPoint*)&Game3dObject->matrix.m[9] = pos;
		Game3dObject->SetDrawWithGlobalAlpha(true);
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos((SpellSeedAlpha << 24) | 0xFFFFFF, 0);
		object->AddForDrawing(this);
		*(LHPoint*)&Game3dObject->matrix.m[9] = savedPos;
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		if (LH3DObject::g_b_last_on_screen)
		{
			LHMatrix matrix;
			float    scale;
			GetSpellGraphicPos(&matrix, &scale);
			Graphic->DrawUpdateAtPos(matrix, scale);
			Graphic->DrawSpellGraphic(this, false, true, Game3dObject->color >> 24);
		}
		LH3DObject::g_b_last_on_screen = onScreen;
	}
}

void SpellSeed::DrawOutOfMap(bool selectable)
{
	if (DrawnInHand)
	{
		if (Game3dObject != NULL)
		{
			Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		}
		if (IsG3DObjectDrawnInHand() == true)
		{
			Game3dObject->AddForDrawing(NULL);
		}
		if (Game3dObject != NULL)
		{
			Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
		}
	}
}

void Object::DrawInHand(GInterfaceStatus* status)
{
	if (status == GGame::g_game->MyInterface()->status)
	{
		GInterface* playerInterface = GGame::g_game->MyInterface();
		playerInterface->hand.Get()->DrawTheHeldObject();
		return;
	}
	LHPoint handPos;
	handPos = status->GetHandPos();
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
	if (Game3dObject != NULL)
	{
		status->HandMoveTime += GGame::g_game->TimeInc;
		int duration = status->HandMoveDuration;
		if (duration == 0)
		{
			SetPositionOnMap(Game3dObject, MapCoords(handPos), 0.0f, scale);
			DrawOutOfMap(false);
		}
		else
		{
			int time = status->HandMoveTime;
			if (time >= duration)
			{
				time = duration;
			}
			LHPoint delta = handPos - status->HandMoveStart;
			LHPoint target = status->HandMoveStart + delta * ((float)time / duration);
			SetPositionOnMap(Game3dObject, MapCoords(target), 0.0f, scale);
			DrawOutOfMap(false);
		}
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
}

void StoragePit::Draw()
{
	Abode::Draw();
}

void WorshipTotem::Draw()
{
	if (IsBuilt())
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
		if (LH3DObject::g_b_last_on_screen)
		{
			bool32_t onScreen = LH3DObject::g_b_last_on_screen;
			DrawMagicSystem();
			LH3DObject::g_b_last_on_screen = onScreen;
		}
	}
}

void WorshipSite::Draw()
{
	if (!IsBuilt())
	{
		DrawBuilding(Game3dObject);
		return;
	}
	show_needs.Get()->Draw();
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
		return;
	}
	SetPositionOnLand(Game3dObject, Pos, GetYAngle(), GetScale(), this);
}

void TownCentreSpellIcon::Draw()
{
	SpellIcon::Draw();
}

void SpellIcon::Draw()
{
	if (!IsBuilt())
	{
		DrawBuilding(Game3dObject);
		return;
	}
	// TODO: Inline budget: the target inlines both SetPosition calls below but keeps every LHMatrix helper inside them
	// (SetScale, PostTranslation, RotateY, Translation) as a call; this build has budget left to inline most of them.
	if (SpecularColor == 0)
	{
		SetPositionOnLand(Game3dObject, Pos, GetYAngle(), GetScale(), this);
	}
	else
	{
		SetPositionOnMap(Game3dObject, Pos, GetYAngle(), GetScale());
		DrawWithColor(this, 0xFFFFFFFF, SpecularColor);
	}
	if (LH3DObject::g_b_last_on_screen)
	{
		DrawSpellSeedGraphic(Game3dObject->color >> 24);
		DrawMagicSystem();
	}
}

void GInterface::SendInvisibleDrawCollision(Object* object, LHPoint* pos, float radius)
{
	int   x;
	int   y;
	float depth;
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	uint32_t result = LH3DTech::ProjectPoint(pos, &x, &y, &depth);
	if (result)
	{
		LHPoint  top = *pos;
		LHMatrix cameraToWorld = LH3DTech::g_world_to_camera;
		cameraToWorld.SetInverse();
		LHPoint up(cameraToWorld.m[3], cameraToWorld.m[4], cameraToWorld.m[5]);
		up *= radius;
		top.Add(up);
		int   topX;
		int   topY;
		float screenRadius;
		if (!LH3DTech::ProjectPoint(&top, &topX, &topY))
		{
			screenRadius = 0.0f;
		}
		else
		{
			screenRadius = (float)fabs((float)(y - topY));
		}
		float dx = (float)(LH3DObject::g_selected_px - x);
		float dy = (float)(LH3DObject::g_selected_py - y);
		float radiusSq = screenRadius * screenRadius;
		if (dx * dx + dy * dy < radiusSq)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(object, depth, NULL);
		}
		if (result == LH3D_PROJECT_ON_SCREEN)
		{
			GGame::g_game->help_system->SendFOVObject(object, depth);
		}
	}
}

static void ConvertToCameraFacingMatrix(LHMatrix* matrix)
{
	static bool cameraFacing = true;
	if (!cameraFacing)
	{
		return;
	}

	LHPoint  pos = matrix->GetPos();
	LHPoint  cameraPos;
	LHPoint  direction;
	LHPoint  side;
	LHPoint  cross;
	LHMatrix rotation;

	matrix->SetTranslateOnly(LHPoint(0.0f, 0.0f, 0.0f));
	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	direction = pos - cameraPos;
	if (fabs(direction.x) < FACE_CAMERA_MIN_DIRECTION && fabs(direction.z) < FACE_CAMERA_MIN_DIRECTION)
	{
		if (direction.x > 0.0f)
		{
			direction.x = FACE_CAMERA_MIN_DIRECTION;
		}
		else
		{
			direction.x = -FACE_CAMERA_MIN_DIRECTION;
		}
	}
	direction.Normalise();

	static LHPoint up(0.0f, 1.0f, 0.0f);
	side = up + direction * -up.DotProductInline(direction);
	side.Normalise();
	cross.CrossProduct(side, direction);

	rotation.m[0] = -direction.x;
	rotation.m[3] = -direction.y;
	rotation.m[6] = -direction.z;
	rotation.m[1] = side.x;
	rotation.m[4] = side.y;
	rotation.m[7] = side.z;
	rotation.m[2] = cross.x;
	rotation.m[5] = cross.y;
	rotation.m[8] = cross.z;
	rotation.m[11] = 0.0f;
	rotation.m[10] = 0.0f;
	rotation.m[9] = 0.0f;
	rotation.SetInverse();
	matrix->PostMultiplyMatrixOnly(rotation);
	matrix->m[9] = pos.x;
	matrix->m[10] = pos.y;
	matrix->m[11] = pos.z;
}

void SpellSeedGraphic::DrawSpellGraphic(Object* object, bool draw_now, bool selectable, unsigned char alpha)
{
	static const float uvFrameSpeed = -15.0f;
	static const float pulseSpeed = 0.5f;
	static const float freezePulseSpeed = 0.35f;
	static const float maxAlpha = 255.0f;
	static const float spinSpeed = 2.0f;

	bool32_t        onScreen = LH3DObject::g_b_last_on_screen;
	float           dt = LH3DTech::GetGameTimeInc() * SECONDS_PER_MILLISECOND;
	GSpellSeedInfo* info = GSpellSeedInfo::GetInfo() + SeedType;
	if (IsSpellG3DObjectDrawn())
	{
		float scale = info->DrawScale * Size;
		YAngle += spinSpeed * dt;
		float yAngle = fmod(YAngle, TWO_PI);
		if (yAngle < 0.0f)
		{
			yAngle += TWO_PI;
		}
		YAngle = yAngle;
		GMagicCreatureSpellInfo* spellInfo =
			GetSpellSeedInfo()->GetMagicInfo(GESTURE_TYPE_NONE)->AsMagicCreatureSpellInfo();
		if (spellInfo != NULL)
		{
			Game3dObject->SetAnimatedUV_2(true);
			UVFrame += uvFrameSpeed * dt;
			float uvFrame = fmod(UVFrame, SPELL_UV_FRAMES);
			if (uvFrame < 0.0f)
			{
				uvFrame += SPELL_UV_FRAMES;
			}
			UVFrame = uvFrame;
			int frame = (int)UVFrame;
			Game3dObject->SetAnimatedUV_1(frame % SPELL_UV_FRAMES_PER_ROW * UVTextureScale * SPELL_UV_FRAME_TEXELS,
			                              frame / SPELL_UV_FRAMES_PER_ROW * UVTextureScale * SPELL_UV_FRAME_TEXELS);
			float speed;
			if (spellInfo->SpellType == CREATURE_RECEIVE_SPELL_FREEZE)
			{
				speed = freezePulseSpeed;
			}
			else
			{
				speed = pulseSpeed;
			}
			PulsePhase = fmod(PulsePhase + speed * dt, 1.0);
			float pulse = ((float)sin(PulsePhase * TWO_PI) + 1.0f) * 0.5f;
			SetPositionOnMap(Game3dObject, Pos, YAngle, scale);
			switch (spellInfo->SpellType)
			{
			case CREATURE_RECEIVE_SPELL_FAT:
				Game3dObject->matrix.PreScale(pulse * SPELL_FAT_PULSE + 1.0f, 1.0f, pulse * SPELL_FAT_PULSE + 1.0f);
				break;
			case CREATURE_RECEIVE_SPELL_THIN:
				Game3dObject->matrix.PreScale(1.0f - pulse * SPELL_THIN_PULSE_X, 1.0f,
				                              1.0f - pulse * SPELL_THIN_PULSE_Z);
				break;
			}
			switch (spellInfo->SpellType)
			{
			case CREATURE_RECEIVE_SPELL_INVISIBLE:
				LH3DIsland::GetColorAndSpecularWithFog(&Game3dObject->matrix.GetPos(), &Game3dObject->color,
				                                       &Game3dObject->specular);
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= (uint8_t)(alpha * pulse) << 24;
				Game3dObject->SetDrawWithGlobalAlpha(true);
				if (draw_now)
				{
					Game3dObject->DrawWithClipping();
				}
				else
				{
					Game3dObject->AddForDrawing(NULL);
				}
				break;
			case CREATURE_RECEIVE_SPELL_FREEZE:
				LH3DIsland::GetColorAndSpecularWithFog(&Game3dObject->matrix.GetPos(), &Game3dObject->color,
				                                       &Game3dObject->specular);
				Game3dObject->DrawFroz(pulse, RGB_MAKE(53, 79, 141),
				                       GlobalTextures::GetFrozMaterial(GlobalTextures::FROZ_MAT_TYPE_0));
				break;
			case CREATURE_RECEIVE_SPELL_BIG:
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= alpha << 24;
				Game3dObject->SetDrawWithGlobalAlpha(alpha != 0xFF);
				Game3dObject->DrawWithClipping();
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= ((uint8_t)GJUtils::Linterp(maxAlpha, 0.0f, PulsePhase) * alpha >> 8) << 24;
				Game3dObject->matrix.ScaleMatrixOnly(PulsePhase + 1.0f);
				Game3dObject->scale *= pulse + 1.0f;
				Game3dObject->SetDrawWithGlobalAlpha(true);
				if (draw_now)
				{
					Game3dObject->DrawWithClipping();
				}
				else
				{
					Game3dObject->AddForDrawing(NULL);
				}
				break;
			case CREATURE_RECEIVE_SPELL_SMALL:
				SetPositionOnMap(Game3dObject, Pos, YAngle, (1.0f - PulsePhase) * scale);
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= alpha << 24;
				Game3dObject->SetDrawWithGlobalAlpha(alpha != 0xFF);
				Game3dObject->DrawWithClipping();
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= (alpha * SPELL_SMALL_SHADOW_ALPHA >> 8) << 24;
				SetPositionOnMap(Game3dObject, Pos, YAngle, scale);
				Game3dObject->SetDrawWithGlobalAlpha(true);
				if (draw_now)
				{
					Game3dObject->DrawWithClipping();
				}
				else
				{
					Game3dObject->AddForDrawing(NULL);
				}
				break;
			default:
				Game3dObject->SetDrawWithGlobalAlpha(alpha != 0xFF);
				if (draw_now)
				{
					Game3dObject->DrawWithClipping();
				}
				else
				{
					LH3DIsland::GetColorAndSpecularWithFog(&Game3dObject->matrix.GetPos(), &Game3dObject->color,
					                                       &Game3dObject->specular);
					Game3dObject->AddForDrawing(NULL);
				}
				break;
			}
		}
		else
		{
			Game3dObject->color &= 0xFFFFFF;
			Game3dObject->color |= alpha << 24;
			Game3dObject->SetDrawWithGlobalAlpha(alpha != 0xFF);
			if (draw_now)
			{
				SetPositionOnMap(Game3dObject, Pos, YAngle, scale);
				Game3dObject->DrawWithClipping();
			}
			else
			{
				SetPositionOnLand(Game3dObject, Pos, YAngle, scale, NULL);
			}
		}
	}

	if (object != NULL && selectable)
	{
		LHPoint position;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, position);
		if (IsSpellG3DObjectDrawn())
		{
			position.Add(Game3dObject->GetMesh()->GetBoundingBox().centre);
		}
		GInterface::SendInvisibleDrawCollision(object, &position, Size * SPELL_GRAPHIC_COLLIDE_SCALE);
	}

	if (PSys != NULL)
	{
		PSys->SetAlpha(alpha);
		if (draw_now)
		{
			PSys->Draw(InterpolateParticles ? GGame::g_game->TurnFraction : 1.0f, false);
		}
		else
		{
			PSys->AddDrawing(InterpolateParticles ? GGame::g_game->TurnFraction : 1.0f, *PSys->GetOrigin());
		}
	}

	if (power_up_type != POWER_UP_TYPE_NONE)
	{
		float size = Size;
		if (PUBand != NULL)
		{
			static float   bandSpinSpeed = 1.0f;
			static float   bandAngleSpeed = 10.3f;
			static float   bandTiltZ = 0.3f;
			static float   bandScaleFactor = 0.2f;
			static uint8_t bandSpecular = 20;
			BandAngle = fmod(BandAngle + bandAngleSpeed * dt, TWO_PI);
			BandSpinAngle = fmod(BandSpinAngle + bandSpinSpeed * dt, TWO_PI);
			GPlayer* player =
				GetPlayer() == GGame::g_game->GetNeutralPlayer() ? GGame::g_game->MyPlayer() : GetPlayer();
			PUBand->SetColorSpecular((player->GetPlayerColour() & 0xFFFFFF) | ((BandAlpha * alpha >> 8) << 24),
			                         (bandSpecular << 16) | (bandSpecular << 8) | bandSpecular);
			for (int i = 0; i < power_up_type + 1; i++)
			{
				static float bandTiltY = 1.0f;
				static float bandOffset = 0.5f;
				static float bandRollZ = 0.2f;
				float        tilt = i == 0 ? -bandTiltY : bandTiltY;
				float        offset = i == 0 ? 0.0f : bandOffset;
				PUBand->matrix.SetIdentity();
				LHPoint vectorZ = PUBand->matrix.GetVectorZ();
				PUBand->matrix.GetVectorZ() = PUBand->matrix.GetVectorY() * -1.0f;
				PUBand->matrix.GetVectorY() = vectorZ;
				PUBand->matrix.PostRotateY(offset + BandAngle);
				PUBand->matrix.PostRotateZ(bandTiltZ);
				PUBand->matrix.PostRotateY(tilt);
				PUBand->matrix.PostRotateZ(bandRollZ);
				PUBand->matrix.m[9] = BandPos.x;
				PUBand->matrix.m[10] = BandPos.y;
				PUBand->matrix.m[11] = BandPos.z;
				float bandScale = bandScaleFactor * BandScale * size;
				PUBand->scale = bandScale;
				PUBand->matrix.ScaleMatrixOnly(bandScale);
				ConvertToCameraFacingMatrix(&PUBand->matrix);
				PUBand->DrawWithClipping();
				if (draw_now)
				{
					PUBand->DrawWithClipping();
				}
				else if (i == power_up_type)
				{
					PUBand->AddDrawing();
				}
				else
				{
					PUBand->DrawWithClipping();
				}
			}
		}
	}
	LH3DObject::g_b_last_on_screen |= onScreen;
}

void Totem::Draw()
{
	DebugText(1);
	if (!IsBuilt())
	{
		DrawBuilding(Game3dObject);
		return;
	}
	InitTotemPosFromWorshipPercentage();
	Game3dObject->SetDrawWithGlobalAlpha(false);
	if ((((GameThingWithPos*)this)->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) &&
	    GGame::g_game->MyInterface()->GetInteractObject() == this)
	{
		if (GetFireEffect() != NULL)
		{
			SetPositionOnMap(Game3dObject, InteractPos, GetYAngle(), GetScale());
			DrawObjectOnFire();
		}
		else
		{
			SetPositionOnLand(Game3dObject, InteractPos, GetYAngle(), GetScale(), this);
		}
		return;
	}
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
		return;
	}
	SetPositionOnLand(Game3dObject, Pos, GetYAngle(), GetScale(), this);
}

void Living::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState != HAND_STATES_HOLDING || hand->HeldObject != (uint32_t)this)
	{
		DrawScale(1.0f);
	}
}

void Living::PreDrawScale(float scale)
{
#if defined(VERSION_BW1W100)
	if (IsMoving() && Game3dObject->GetCurrentAnim() != NULL &&
	    !(Game3dObject->GetCurrentAnim()->Flags & LH3D_ANIM_FLAG_TIME_BASED))
#else
	if (IsMovingForAnimation() && Game3dObject->GetCurrentAnim() != NULL &&
	    !(Game3dObject->GetCurrentAnim()->Flags & LH3D_ANIM_FLAG_TIME_BASED))
#endif
	{
		float distance = (float)(speed * GGame::g_game->RenderTimeInc) / (GetScale() * LIVING_SPEED_DISTANCE_SCALE);
		Game3dObject->SetCurrentCycleTime(
			MoveAnimByDist(Game3dObject->GetCurrentAnim(), Game3dObject->GetCurrentCycleTime(), distance));
		LHPoint oldPos;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, oldPos);
		LHPoint newPos;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, newPos);
		float t = GGame::g_game->TurnFraction;
		float s = 1.0f - t;
		((LH3DObject*)Game3dObject)->SetPosition(oldPos * s + newPos * t, GetYAngle() + HALF_PI_F, scale);
	}
	else
	{
		float       yAngle = GetYAngle() + HALF_PI_F;
		LH3DObject* object = Game3dObject;
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
			object->LH3DObject::SetPosition(pos, yAngle, scale);
		}
		Game3dObject->SetCurrentCycleTime(MoveAnimByTime(Game3dObject->GetCurrentAnim(),
		                                                 Game3dObject->GetCurrentCycleTime(), GGame::g_game->TimeInc));
	}
}

void Living::PreDrawShear()
{
	if (Pos.Altitude() <= LIVING_SHEAR_MAX_ALTITUDE)
	{
		LHPoint right = Game3dObject->matrix * LHPoint(1.0f, 0.0f, 0.0f);
		LHPoint front = Game3dObject->matrix * LHPoint(0.0f, 0.0f, 1.0f);
		float   height = Game3dObject->matrix._42;
		float   shearX = LH3DIsland::GetAltitude(LH3DMapCoords(right.x, right.z)) - height;
		float   shearZ = LH3DIsland::GetAltitude(LH3DMapCoords(front.x, front.z)) - height;
		shearX = min(shearX, LIVING_MAX_SHEAR);
		shearZ = min(shearZ, LIVING_MAX_SHEAR);
		shearX = max(shearX, -LIVING_MAX_SHEAR);
		shearZ = max(shearZ, -LIVING_MAX_SHEAR);
		LHMatrix shear;
		shear.SetIdentity();
		shear._12 = shearX;
		shear._32 = shearZ;
		Game3dObject->matrix.PreMultiply(shear);
	}
}

void Living::DrawScale(float scale)
{
	PreDrawScale(scale);
	PreDrawShear();
	if (Game3dObject->GetCurrentCycleTime() < 0)
	{
		Game3dObject->SetCurrentCycleTime(0);
	}
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else if (*(uint32_t*)&SpecularColor != 0)
	{
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(0xFFFFFFFF, *(uint32_t*)&SpecularColor);
		object->AddForDrawing(this);
	}
	else if (IsPoisoned())
	{
		uint32_t      specular = Pot::GetPoisonSpecular();
		uint32_t      color = Pot::GetPoisonColor();
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(color, specular);
		object->AddForDrawing(this);
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
}

void Living::DrawScaleWithPlayerColor(float scale)
{
	PreDrawScale(scale);
	if (*(uint32_t*)&SpecularColor == 0)
	{
		Game3dObject->SetDrawWithGlobalAlpha(true);
		uint32_t color = GetPlayer()->GetPlayerColour() | 0xFF000000;
		Game3dObject->SetColorSpecular(color, 0);
		Game3dObject->AddForDrawing(this);
	}
	else
	{
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(0xFFFFFFFF, *(uint32_t*)&SpecularColor);
		object->AddForDrawing(this);
	}
}

bool Villager::DrawVillagerInfo()
{
	if (!(status & LIVING_STATUS_SHOW_INFO) && !(GGame::g_game->GameFlags & GAME_FLAG_UNKNOWN_0x200000))
	{
		return false;
	}
	GVillagerStateTableInfo* info = &GVillagerStateTableInfo::GetInfo()[GetFinalState()];
	char16_t                 text[VILLAGER_INFO_TEXT_LENGTH];
	wcscpy(text, L"");
	SpecialVillager* special = dynamic_cast<SpecialVillager*>(this);
	if (GetVillagerName() != NULL && special != NULL && special->CanShowName())
	{
		swprintf(text + wcslen(text), L"%s\n", CHAR2WCHAR(GetVillagerName()));
	}
	if (info->StateHelpText != 0)
	{
		char16_t* foodText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_21);
		char16_t* lifeText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_20);
		char16_t* ageText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_22);
		char16_t* stateText = HelpTextDataBase::HelpTextDatabase.GetHelpText(info->StateHelpText);
		swprintf(text + wcslen(text), L"%s\n%s%d %s%.0f%% %s%.0f%%", stateText, ageText, GetAge(), lifeText,
		         GetLife() * 100.0f, foodText, food * 100.0f);
		if (IsPregnant())
		{
			wcscat(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_24));
		}
		if (IsPoisoned())
		{
			wcscat(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_23));
		}
	}
	else
	{
		swprintf(text + wcslen(text), L"%s\n", CHAR2WCHAR(info->name));
		char16_t* format = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_TEMPLE_SCROLLS_11);
		swprintf(text + wcslen(text), format, GetAge(), GetLife(), food);
		if (IsPregnant())
		{
			wcscat(text, L" P");
		}
		if (IsPoisoned())
		{
			wcscat(text, L" S");
		}
	}
	{
		LHPoint point = Game3dObject != NULL ? Game3dObject->matrix.GetPos() : Pos.GetLHPoint();
		point.y += VILLAGER_NAME_HEIGHT;
		LH3DColor color(0xff, 0xff, 0xff, 0xff);
		if (GetTown() != NULL && GetTown()->GetPlayer() != NULL)
		{
			color = GetTown()->GetPlayer()->GetPlayer3DColor();
		}
#ifndef VERSION_BW1W100
		if (IsFemaleVillager())
		{
			*(uint32_t*)&color = BlendColour(VILLAGER_NAME_FEMALE_LIGHTEN, *(uint32_t*)&color, 0xffffffff);
		}
#endif
		VillagerName::Add(1.0f, point, text, color);
	}
	return true;
}

void Villager::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState == HAND_STATES_HOLDING && hand->HeldObject == (uint32_t)this)
	{
		return;
	}
	if (GVillagerStateTableInfo::GetInfo()[action.GetState(LIVING_ACTION_INDEX_TOP)].Anim != ANM_DONT_DRAW &&
	    !(Flags & VILLAGER_FLAG_AT_HOME))
	{
#if defined(VERSION_BW1W100)
		DrawScale(GetScale());
		DrawCarriedObject();
#else
		float diff = angle_correct(angle_correct(GetYAngle()) - DrawYAngle);
		float rate = VILLAGER_DRAW_TURN_RATE;
		if (fabs(diff) > HALF_PI_F)
		{
			rate = rate * (2.0f * (fabs(diff) / HALF_PI_F));
		}
		float step = (int)LH3DTech::g_game_time_inc * rate;
		if (Game3dObject == NULL || fabs(diff) < step)
		{
			DrawYAngle = GetYAngle();
			DrawScale(GetScale());
			DrawCarriedObject();
		}
		else
		{
			if (diff > 0.0f)
			{
				DrawYAngle += step;
			}
			else
			{
				DrawYAngle -= step;
			}
			float yAngle = GetYAngle();
			SetYJustAngle(DrawYAngle);
			DrawScale(GetScale());
			DrawCarriedObject();
			SetYJustAngle(yAngle);
			DrawYAngle = angle_correct(DrawYAngle);
		}
#endif
	}
	DrawVillagerInfo();
}

void Villager::DrawCarriedObject()
{
	LH3DObject* carried = CarriedObject::Get3DCarriedObject((CARRIED_OBJECT)CarriedObjectType);
	if (carried != NULL)
	{
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		carried->SetLinkedPosition(Game3dObject, 1.0f, 0);
		carried->SetColorSpecular(Game3dObject->color, Game3dObject->specular);
		carried->AddDrawing();
		LH3DObject::g_b_last_on_screen = onScreen;
	}
}

uint32_t Pot::GetPoisonColor()
{
	return 0xFFE8FFDD;
}

uint32_t Pot::GetPoisonSpecular()
{
	return 0xFF001000;
}

void Pot::Draw()
{
	if (ResourceAmount != 0)
	{
		if (IsPoisoned() && GetFireEffect() == NULL)
		{
			uint32_t      specular = GetPoisonSpecular();
			uint32_t      color = GetPoisonColor();
			Game3DObject* object = Game3dObject;
			object->CombineColorFromPos(color, specular);
			object->AddForDrawing(this);
		}
		else
		{
			MobileObject::Draw();
		}
	}
}

void Pot::DrawOutOfMap(bool selectable)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
	if (ResourceAmount != 0)
	{
		if (IsPoisoned() && GetFireEffect() == NULL)
		{
			uint32_t      specular = GetPoisonSpecular();
			uint32_t      color = GetPoisonColor();
			Game3DObject* object = Game3dObject;
			object->CombineColorFromPos(color, specular);
			object->AddForDrawing(selectable ? this : NULL);
		}
		else
		{
			Object::DrawOutOfMap(selectable);
		}
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
}

void PileWood::Draw()
{
	AltitudeZoomer.Update(LH3DTech::GetGameTimeInc() / MILLISECONDS_PER_SECOND);
	float altitude = AltitudeZoomer.GetCurrentValue();
	if (altitude > -GetHeight())
	{
		MapCoords coords = Pos;
		coords.altitude = AltitudeZoomer.GetCurrentValue();
		SetPositionOnMap(Game3dObject, coords, GetYAngle(), GetScale());

		MobileObject::Draw();

		SetPositionOnMap(Game3dObject, Pos, GetYAngle(), GetScale());
	}
}

void PileFood::Draw()
{
	AltitudeZoomer.Update(LH3DTech::GetGameTimeInc() / MILLISECONDS_PER_SECOND);
	float altitude = AltitudeZoomer.GetCurrentValue();
	if (altitude > -GetHeight())
	{
		POT_INFO potType = (POT_INFO)((const GPotInfo*)info - GPotInfo::GetInfo());
		if (potType == POT_INFO_MAGIC_FOOD || potType == POT_INFO_STORAGE_PIT_FOOD_PILE)
		{
			float raised = altitude / GetHeight() + 1.0f;
			raised = raised > 0.0f ? min(raised, 1.0f) : 0.0f;
			static float uvSpeed = 0.25f;
			static_cast<LH3DObject*>(Game3dObject)->SetAnimatedUV_1(0.0f, (1.0f - raised) * uvSpeed);
		}

		MapCoords coords = Pos;
		coords.altitude = AltitudeZoomer.GetCurrentValue();
		SetPositionOnMap(Game3dObject, coords, GetYAngle(), GetScale());

		if (IsPoisoned() && GetFireEffect() == NULL)
		{
			uint32_t      specular = GetPoisonSpecular();
			uint32_t      color = GetPoisonColor();
			Game3DObject* game3dObject = Game3dObject;
			game3dObject->CombineColorFromPos(color, specular);
			game3dObject->AddForDrawing(this);
		}
		else
		{
			MobileObject::Draw();
		}

		SetPositionOnMap(Game3dObject, Pos, GetYAngle(), GetScale());
	}
}

inline float Square(float x)
{
	return x * x;
}

void Animal::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState == HAND_STATES_HOLDING && hand->HeldObject == (uint32_t)this)
	{
		return;
	}
	PreDrawScale(GetScale());
	PreDrawShear();
	AngleZoomer.CurrentTime += LH3DTech::GetGameTimeInc() * 0.001f;
	if (AngleZoomer.CurrentTime >= AngleZoomer.duration)
	{
		AngleZoomer.CurrentValue = AngleZoomer.destination;
		AngleZoomer.CurrentSpeed = AngleZoomer.DestinationSpeed;
		AngleZoomer.TimeM2 = 0;
		AngleZoomer.CurrentTime = AngleZoomer.duration;
	}
	else
	{
		// TODO: The target loads AngleZoomer.StartSpeed before AngleZoomer.CurrentTime for their product.
		float t2 = Square(AngleZoomer.CurrentTime) * 0.5f;
		float t3 = AngleZoomer.CurrentTime * t2 * (1.0f / 3.0f);
		float t4 = t2 * t2 * (1.0f / 6.0f);
		AngleZoomer.CurrentSpeed = AngleZoomer.StartSpeed +
		                           AngleZoomer.NonLinearAcceleration.x * AngleZoomer.CurrentTime +
		                           AngleZoomer.NonLinearAcceleration.y * t2 + AngleZoomer.NonLinearAcceleration.z * t3;
		AngleZoomer.CurrentValue = AngleZoomer.StartValue + AngleZoomer.StartSpeed * AngleZoomer.CurrentTime +
		                           AngleZoomer.NonLinearAcceleration.x * t2 + AngleZoomer.NonLinearAcceleration.y * t3 +
		                           AngleZoomer.NonLinearAcceleration.z * t4;
	}
	float    angle = AngleZoomer.CurrentValue;
	LHMatrix savedMatrix;
	if (angle != 0.0f)
	{
		savedMatrix = Game3dObject->matrix;
		Game3dObject->matrix.RotateZ(angle);
	}
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
	}
	else if (*(uint32_t*)&SpecularColor == 0)
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(this);
	}
	else
	{
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(0xFFFFFFFF, *(uint32_t*)&SpecularColor);
		object->AddForDrawing(this);
	}
	if (angle != 0.0f)
	{
		Game3dObject->matrix = savedMatrix;
	}
	DebugShowText();
}

static inline int FloatToInt(float value)
{
	int  result;
	int* resultPtr = &result;
	__asm
	{
		fld value
		mov edx, resultPtr
		fistp dword ptr [edx]
	}
	return result;
}

void SpellWolf::Draw()
{
	PreDrawScale(GetScale());
	PreDrawShear();
	AngleZoomer.CurrentTime += LH3DTech::GetGameTimeInc() * 0.001f;
	if (AngleZoomer.CurrentTime >= AngleZoomer.duration)
	{
		AngleZoomer.CurrentValue = AngleZoomer.destination;
		AngleZoomer.CurrentSpeed = AngleZoomer.DestinationSpeed;
		AngleZoomer.TimeM2 = 0;
		AngleZoomer.CurrentTime = AngleZoomer.duration;
	}
	else
	{
		float t2 = Square(AngleZoomer.CurrentTime) * 0.5f;
		float t3 = AngleZoomer.CurrentTime * t2 * (1.0f / 3.0f);
		float t4 = t2 * t2 * (1.0f / 6.0f);
		AngleZoomer.CurrentSpeed = AngleZoomer.StartSpeed +
		                           AngleZoomer.NonLinearAcceleration.x * AngleZoomer.CurrentTime +
		                           AngleZoomer.NonLinearAcceleration.y * t2 + AngleZoomer.NonLinearAcceleration.z * t3;
		AngleZoomer.CurrentValue = AngleZoomer.StartValue + AngleZoomer.StartSpeed * AngleZoomer.CurrentTime +
		                           AngleZoomer.NonLinearAcceleration.x * t2 + AngleZoomer.NonLinearAcceleration.y * t3 +
		                           AngleZoomer.NonLinearAcceleration.z * t4;
	}
	float    angle = AngleZoomer.CurrentValue;
	LHMatrix savedMatrix;
	if (angle != 0.0f)
	{
		savedMatrix = Game3dObject->matrix;
		Game3dObject->matrix.RotateZ(angle);
	}
	int alpha = FloatToInt(FadeAlpha.CurrentValue);
	Game3dObject->color = (alpha << 24) | 0xFFFFFF;
	Game3dObject->SetDrawWithGlobalAlpha(alpha != 255);
	FireEffect* fire = GetFireEffect();
	if (fire != NULL)
	{
		uint32_t      color = Game3dObject->color;
		uint32_t      charing = fire->GetFireEffectCharingColor();
		uint32_t      specular = fire->GetFireEffectSpecularColor();
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(GJUtils::ModulateColor(color, charing), specular);
		object->AddForDrawing(this);
		DrawFireEffect();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(object->color, *(uint32_t*)&SpecularColor);
		object->AddForDrawing(this);
	}
	if (angle != 0.0f)
	{
		Game3dObject->matrix = savedMatrix;
	}
	DebugShowText();
}

void Object::DrawOutOfMap(bool selectable)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
	FireEffect* fire = GetFireEffect();
	if (fire != NULL)
	{
		uint32_t      specular = fire->GetFireEffectSpecularColor();
		uint32_t      color = fire->GetFireEffectCharingColor();
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(color, specular);
		object->AddForDrawing(selectable ? this : NULL);
		DrawFireEffect();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(selectable ? this : NULL);
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~LH3D_OBJECT_FLAGS2_OUT_OF_MAP;
	}
	if (IsVillager(NULL))
	{
		((Villager*)this)->DrawVillagerInfo();
	}
}

void TownArtifact::Draw()
{
	if (Value > TOWN_ARTIFACT_SYMBOL_MIN_VALUE && Artifact != NULL && Symbol != NULL)
	{
		LHPoint       pos;
		Game3DObject* object = Artifact->Game3dObject;
		if (object != NULL)
		{
			pos = object->GetMesh()->GetBoundingBox().centre;
			object->matrix.TransformPoint(pos);
			pos.y += object->GetMesh()->GetBoundingBox().size.y * object->scale * TOWN_ARTIFACT_SYMBOL_HEIGHT_SCALE;
		}
		else
		{
			pos = Artifact->Pos.GetLHPoint();
			pos.y += Artifact->GetHeight() + TOWN_ARTIFACT_SYMBOL_HEIGHT;
		}
		Symbol->SetPos(pos);
		Symbol->AddDrawing();
	}
}

void Workshop::DrawScaffold()
{
	static int pulseTime = 0;
	static int pulsePeriod = 2000;

	pulseTime += LH3DTech::g_game_time_inc;
	if (pulseTime > pulsePeriod)
	{
		pulseTime %= pulsePeriod;
	}
	for (LHLinkedNode<Scaffold*>* node = Scaffolds.head.Get(); node != NULL; node = node->next.Get())
	{
		Scaffold* scaffold = node->payload;
		if (ScaffoldSlots[scaffold->GetWorkshopPosition()] == WORKSHOP_SCAFFOLD_SLOT_MOVED)
		{
			float     xAngle;
			float     yAngle;
			float     zAngle;
			MapCoords pos = GetScaffoldCreatePos(scaffold->GetWorkshopPosition(), xAngle, yAngle, zAngle);
			ScaffoldPreview->SetMesh(LH3DMesh::GetPackedMesh(scaffold->GetMesh()), NULL, NULL);
			ScaffoldPreview->SetPosition(pos, xAngle, yAngle, zAngle, scaffold->GetScale());
			ScaffoldPreview->SetDrawWithGlobalAlpha(true);

			unsigned long color = 0;
			unsigned long specular = 0;
			LH3DIsland::GetColorAndSpecular(pos, &color, &specular);
			int alpha =
				(int)((color >> 24) * SCAFFOLD_PREVIEW_ALPHA * (cos(pulseTime * TWO_PI / pulsePeriod) + 1.0) * 0.5);
			color = (color & 0xffffff) | (alpha << 24);
			ScaffoldPreview->SetColorSpecular(color, specular);

			static int minAlphaRef = 10;
			LH3DRender::OverrideMaterial =
				max(alpha * SCAFFOLD_PREVIEW_MAX_ALPHA_REF / MAX_DRAW_ALPHA - minAlphaRef, 0);
			ScaffoldPreview->AddDrawing();
			LH3DRender::OverrideMaterial = 0;
		}
	}
}

void Workshop::Draw()
{
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&Workshop::DrawScaffold,
	                                  LH3DTech::GetValueForZSorter(Game3dObject->matrix.GetPos()), 0);
	if (IsFunctional() && (GetFireEffect() == NULL || !GetFireEffect()->IsOnFire()))
	{
		NeedsVisuals->Draw(0);
	}
	Abode::Draw();
}
