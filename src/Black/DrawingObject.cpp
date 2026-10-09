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

bool32_t CreatureStatsDisplay::Interacting;
int      CreatureStatsDisplay::Alpha;
float    CreatureStatsDisplay::HandValue;
float    CreatureStatsDisplay::Exhaustion;
float    CreatureStatsDisplay::EnergyLoss;
float    CreatureStatsDisplay::LifeLoss;

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = LH3DTech::g_camera.pos;
}

// BW1W120 00515f70 BW1M119 010393d0
void Abode::Draw()
{
	static const uint32_t windowFlicker[8] = {0, 7, 3, 5, 4, 2, 6, 1};

	Game3DObject* object = Game3dObject;
	if (PresentAtHome && GGameInfo::Info.IsVisualNight())
	{
		float t = fabs(object->matrix._43 + object->matrix._41) * 0.1f + object->matrix._42;
		t = t - (int)t + GLandAlignement::VisualTime;
		int brightness = 0;
		if (t > 20.5)
		{
			brightness = (int)((t - 20.5) * 8192.0);
		}
		else if (t < 3.0f)
		{
			brightness = (int)((3.0f - t) * 8192.0f);
		}
		if (brightness > 0)
		{
			int c = (windowFlicker[(int)(t * 1000.0f) & 7] * 4) % 32 | 0xE0;
			if (brightness < 256)
			{
				c = c * brightness >> 8;
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
	if (GRand::LocalRand((long)(80000.0f / GGame::g_game->field_0x205d48)) == 1)
	{
		LHPoint pos;
		Get3DSoundPos(&pos);
		LHPoint cameraPos;
		GGame::g_game->GetCamera()->GetPosition(cameraPos);
		float distance = pos.GetDistance(cameraPos);
		if (distance < 200.0f)
		{
			float time = GGameInfo::Info.GetVisualTime();
			float sky = LH3DSky::Time2SkyType(time);
			long  sound[5];
			sound[0] = 0;
			sound[1] = 0;
			sound[2] = 0x13;
			sound[3] = 0;
			if (sky < 0.7f)
			{
				sound[4] = 0x47;
			}
			else if (sky < 1.3f)
			{
				sound[4] = time < 12.0f ? 0x49 : 0x48;
			}
			else
			{
				sound[4] = 0x4A;
			}
			GGlobal::Global.audio->SamplePlayAnimEffect(
				this, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
		}
	}
	if (smoke != NULL && LH3DObject::g_b_last_on_screen)
	{
		if (PresentAtHome || (IsWorkshop() && ((Workshop*)this)->field_0xc4))
		{
			smoke->State = 0;
			smoke->AddDrawing();
		}
		else if (smoke->State == 2)
		{
			smoke->AddDrawing();
		}
		else if (smoke->State == 0)
		{
			smoke->State = 2;
			smoke->AddDrawing();
		}
	}
	int villagerInHand = VillagerInHand;
	if ((HowManyPeople::g_alpha != 0 && KnockedTown == GetTown()) || villagerInHand)
	{
		DrawPercentFull(villagerInHand);
	}
}

// BW1W120 00516320 BW1M119 010cf6c0
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

// BW1W120 00516450 BW1M119 01021420
void TownCentre::Draw()
{
	Abode::Draw();
	bool32_t onScreen = LH3DObject::g_b_last_on_screen;
	if (GetTown() != NULL)
	{
		for (int i = 0; i < 6; i++)
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

// BW1W120 00516510 BW1M119 010554a0
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
			if (anim->field_0x44 == 1)
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
						voice = 3;
					}
					else
					{
						voice = villager->GetInfo()->sex != SEX_MALE ? 2 : 1;
					}
				}
				else
				{
					voice = 3;
				}
			}
			else
			{
				voice = 2;
			}
			long sound[5];
			sound[0] = voice;
			sound[1] = 2;
			sound[2] = anim->field_0x44;
			sound[3] = GSoundMap::GetSurfaceType(Pos);
			sound[4] = event->Sound;
			if (event->Sound == 0x92 || event->Sound == 0x93 || event->Sound == 0x94)
			{
				if (event->Sound == 0x92)
				{
					if (IsVillager(NULL))
					{
						Abode* abode = ((Villager*)this)->GetAbode();
						GGlobal::Global.audio->SamplePlayAnimEffect(
							abode, distance, sound, event->field_0xc,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_VILLAGERS_BANTER), 1, 0.0f, 0.0f);
					}
				}
				else
				{
					GGlobal::Global.audio->SamplePlayAnimEffect(
						this, distance, sound, event->field_0xc,
						GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_VILLAGERS_BANTER), 1, 0.0f, 0.0f);
				}
			}
			else
			{
				if (event->Sound == 4 && IsVillager(NULL) && !IsInScript())
				{
					HelpSystem* help = GGame::g_game->help_system;
					if (help != NULL && help->WideScreen && help->GetWideScreenControl())
					{
						return;
					}
				}
				if (((LH3DAnim*)anim)->GetIndexInCache() == 399)
				{
					if (IsVillager(NULL) && ((Villager*)this)->action.TurnsSinceStateChange < 15)
					{
						GGlobal::Global.audio->SamplePlayAnimEffect(
							this, distance, sound, event->field_0xc,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
					}
				}
				else if (((LH3DAnim*)anim)->GetIndexInCache() == 401)
				{
					if (IsVillager(NULL) && ((Villager*)this)->action.TurnsSinceStateChange < 10)
					{
						GGlobal::Global.audio->SamplePlayAnimEffect(
							this, distance, sound, event->field_0xc,
							GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
					}
				}
				else
				{
					GGlobal::Global.audio->SamplePlayAnimEffect(
						this, distance, sound, event->field_0xc,
						GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 1, 0.0f, 0.0f);
				}
			}
		}
	}
}

// BW1W120 005167d0 BW1M119 010558c0
long Object::MoveAnimByTime(const LH3DAnim* anim, long frame, long time)
{
	long newFrame = frame + time;
	if (newFrame >= anim->field_0x20)
	{
		CheckSounds(anim, frame, anim->field_0x20);
		if (anim->IsCyclic())
		{
			newFrame %= anim->field_0x20;
		}
		else
		{
			newFrame = anim->field_0x20;
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

// BW1W120 00516840 BW1M119 010559a0
long Object::MoveAnimByDist(const LH3DAnim* anim, long frame, float distance)
{
	return MoveAnimByTime(anim, frame, (long)(distance / anim->field_0x28 * anim->field_0x20));
}

// BW1W120 00516870 BW1M119 010cf160
void Ball::Draw()
{
	GGlobal::Global.debug.SetMessage(2, "height: %.2f", Pos.altitude);
	MobileObject::Draw();
}

// BW1W120 005168a0 BW1M119 null
void DrawGroundCircle(const LHPoint& centre, float radius, float red, float green, float blue)
{
	LH3DColor colour(red, green, blue, 255);
	LHPoint   points[41];
	float     top = 0.0f;
	for (unsigned int i = 0; i <= 40; i++)
	{
		float angle = i * (TWO_PI / 40);
		points[i].x = centre.x + sin(angle) * radius;
		points[i].z = centre.z + cos(angle) * radius;
		points[i].y = LH3DIsland::GetHeightAsFloat((long)(centre.x / 10.0f), (long)(centre.z / 10.0f)) + 4.0f;
		if (top < points[i].y)
		{
			top = points[i].y;
		}
	}

	LHPoint previous;
	LHPoint current;
	for (unsigned int j = 0; j <= 40; j++)
	{
		current = points[j];
		current.y = top;
		if (j > 0)
		{
			for (unsigned int k = 0; k < 5; k++)
			{
				LH3DLine::AddLine(previous - LHPoint(0.0f, k, 0.0f), current - LHPoint(0.0f, k, 0.0f), &colour, NULL);
			}
		}
		LH3DLine::AddLine(current, current - LHPoint(0.0f, 5.0f, 0.0f), &colour, NULL);
		previous = current;
	}
}

// Moves each channel of from amount/256 of the way towards to; alpha is taken from to.
// fabricated
static inline unsigned long BlendColour(long amount, unsigned long from, unsigned long to)
{
	return (to & 0xff000000) |
	       (((from & 0xff0000) + ((((to & 0xff0000) - (from & 0xff0000)) * amount) >> 8)) & 0xff0000) |
	       (((from & 0xff00) + ((((to & 0xff00) - (from & 0xff00)) * amount) >> 8)) & 0xff00) |
	       (((from & 0xff) + ((((to & 0xff) - (from & 0xff)) * amount) >> 8)) & 0xff);
}

// BW1W120 00516b00 BW1M119 inlined
static void DrawStatBar(unsigned long colour, int x_min, int y_min, int x_max, int y_max, float fraction, bool centred)
{
	unsigned long darkColour = BlendColour(128, colour, 0xff000000);
	SetupThing::DrawBevBox(x_min, y_min, x_max, y_max, 1, 16, -1, 0xffffffff);
	int fillEnd = (int)(x_min + 3 + (x_max - x_min - 6) * fraction);
	fillEnd = fillEnd > x_min ? min(fillEnd, x_max) : x_min;
	if (centred)
	{
		int centre = (x_min + x_max) / 2;
		SetupThing::DrawBox(centre, y_min + 3, fillEnd, y_max - 3, darkColour, colour, colour, darkColour, 0, 1);
		SetupThing::DrawBox(centre, y_min + 3, centre + 1, y_max - 3, 0xff000000, 0xff000000, 0xff000000, 0xff000000, 0,
		                    1);
	}
	else
	{
		SetupThing::DrawBox(x_min + 3, y_min + 3, fillEnd, y_max - 3, darkColour, colour, colour, darkColour, 0, 1);
	}
	SetupThing::DrawBox(x_min + 3, y_min + 3, x_max - 3, y_min + 6, 0xff000000, 0xff000000, 0, 0, 0, 1);
	SetupThing::DrawBox(x_min + 3, y_min + 3, x_min + 6, y_max - 3, 0xff000000, 0, 0, 0xff000000, 0, 1);
}

// BW1W120 00516cb0 BW1M119 010ce9e0
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

	wchar_t* names[2] = {name1, name2};
	float    lives[2] = {life1, life2};
	float    energies[2] = {energy1, energy2};

	int drawAlpha = alpha > 0 ? min(alpha, 255) : 0;
	if (drawAlpha < 1)
	{
		return;
	}
	int oldDrawAlpha = SetupThing::DrawAlpha;
	SetupThing::DrawAlpha = drawAlpha;

	int unit = LHSys::TheSystem.screen.height / 70;
	int xMin = 0;
	int yMin = 0;
	int xMax = unit * 33;
	int yMax = unit * 9;
	SetupThing::unadjust(xMin, yMin);
	SetupThing::unadjust(xMax, yMax);
	int size = SetupThing::unadjustsize(unit);
	SetupThing::DrawBox(xMin, yMin, xMax, yMax, 0x5f000000, 0, 0, 0, 0, 1);

	// TODO: The target computes both of these as lea [min + size] (base and index swapped compared to ours). The Mac
	// adds them in this order too; swapped operands, compound assignment and other declaration orders do not move it.
	int x = xMin + size;
	int y = yMin + size;
	for (int i = 0; i < 2; i++)
	{
		lives[i] = lives[i] > 0.0f ? min(lives[i], 1.0f) : 0.0f;
		energies[i] = energies[i] > 0.0f ? min(energies[i], 1.0f) : 0.0f;

		DrawStatBar(BlendColour((long)(energies[i] * 255.0f), 0xff2080ff, 0xff8080ff), x, (int)(y + size * 1.5f),
		            x + size * 25, (int)(y + size * 3.0f), energies[i], false);

		unsigned long lifeColour;
		if (lives[i] < 0.5f)
		{
			lifeColour = BlendColour((long)(lives[i] * 512.0f), 0xffff0000, 0xffffff00);
		}
		else
		{
			lifeColour = BlendColour((long)((lives[i] - 0.5f) * 512.0f), 0xffffff00, 0xff00ff00);
		}
		DrawStatBar(lifeColour, x, y, x + size * 25, y + size * 2, lives[i], false);

		SetupThing::DrawTextA(x + size * 26 + 2, y + 2, size * 30, TEXTJUSTIFY_LEFT, names[i], size * 3,
		                      &LH3DColor(0, 0, 0, 255), 0);
		SetupThing::DrawTextA(x + size * 26, y, size * 30, TEXTJUSTIFY_LEFT, names[i], size * 3,
		                      &LH3DColor(255, 255, 255, 255), 0);
		y += size * 3.5;
	}
	SetupThing::DrawAlpha = oldDrawAlpha;
}

// BW1W120 00517080 BW1M119 010cdf70
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

	int drawAlpha = alpha > 0 ? min(alpha, 255) : 0;
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
	int xMin = screenWidth / 40;
	int yMin = CreatureStatsDisplay::Interacting ? screenHeight / 4 : screenHeight / 40;
	int xMax = xMin + screenWidth / 4;
	int yMax = (int)(yMin + screenHeight / 3 * (CreatureStatsDisplay::Interacting ? 1.0f : 0.75f));
	SetupThing::unadjust(xMin, yMin);
	SetupThing::unadjust(xMax, yMax);
	SetupThing::DrawBox(xMin, yMin, xMax, yMax, 0x5f000000, 0, 0, 0x5f000000, 0, 1);

	int size = SetupThing::unadjustsize(screenHeight / 16);
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

	// TODO: The target keeps y in ebp for the whole loop and leaves the hoisted size / 2 in memory; our build gives
	// size / 2 the register instead (an allocation-priority difference; the surrounding code matches). The weights
	// are close: dropping one use of size / 2 hands y a register. Moving the loop locals' declarations, a named
	// size / 2 local and no-op uses of y do not change the allocation.
	wchar_t buffer[64];
	for (int i = 0; i < (CreatureStatsDisplay::Interacting ? 4 : 3); i++)
	{
		if (i == 3)
		{
			y += size / 3;
		}
		char16_t* label;
		float     value = 0.0f;
		switch (i)
		{
		case 0:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_30);
			value = life_loss;
			swprintf(buffer, L"%d%%", (int)(life_loss * 100.0f));
			break;
		case 1:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_50);
			value = energy_loss;
			swprintf(buffer, L"%d%%", (int)(energy_loss * 100.0f));
			break;
		case 2:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_119);
			value = exhaustion;
			swprintf(buffer, L"%d%%", (int)(exhaustion * 100.0f));
			break;
		case 3:
			label = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_100);
			value = (hand_value * 0.5f) + 0.5f;
			if (hand_value < -0.01f)
			{
				swprintf(buffer, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_05),
				         (int)(-hand_value * 100.0f));
			}
			else if (hand_value > 0.01f)
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
		SetupThing::DrawTextA(barLeft - size / 4 + 2, y + 2, 800, TEXTJUSTIFY_RIGHT, label, size / 2,
		                      &LH3DColor(0, 0, 0, 255), 0);
		SetupThing::DrawTextA(barLeft - size / 4, y, 800, TEXTJUSTIFY_RIGHT, label, size / 2,
		                      &LH3DColor(255, 255, 255, 255), 0);
		SetupThing::DrawTextA(barRight + size / 4 + 2, y + 2, 800, TEXTJUSTIFY_LEFT, buffer, size / 2,
		                      &LH3DColor(0, 0, 0, 255), 0);
		SetupThing::DrawTextA(barRight + size / 4, y, 800, TEXTJUSTIFY_LEFT, buffer, size / 2,
		                      &LH3DColor(255, 255, 255, 255), 0);

		unsigned long colour = 0xffffff00;
		if (i == 3)
		{
			colour = value < 0.5f ? 0xffff0000 : 0xff00ff00;
		}
		DrawStatBar(colour, barLeft, y, barRight, y + size / 2, value, i == 3);
		y += size;
	}
	SetupThing::DrawAlpha = oldDrawAlpha;
}

// BW1W120 005178d0 BW1M119 01019d30
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

// BW1W120 00517910 BW1M119 010cd640
void Creature::Draw()
{
	if ((Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) && GGame::g_game->MyInterface()->GetInteractObject() == this)
	{
		CreatureStatsDisplay::Alpha = 255;
		CreatureStatsDisplay::Interacting = TRUE;
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
		for (CreatureBelief* belief = mind->beliefs.lists[1].Head; belief != NULL; belief = belief->Next)
		{
			LHPoint point;
			GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, point);
			LHPoint top;
			top = point;
			top.y += 30.0f;
			LH3DLine::AddLine(point, top, &LH3DColor(255, 0, 0), NULL);
		}
	}

	if (CreatureMental::DebugDrawConfinement && IsConfinedToArea())
	{
		GUtils::Circle::DrawCircleOnMap(field_0x11a8, field_0x11b4, LH3DColor(255, 255, 0), 0.5f, 1);
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
		objectTop.y += 20.0f;
		LH3DLine::AddLine(objectPos, objectTop, &red, NULL);
		LHPoint thingPos;
		GLandscape::ConvertMapCoordToLandscapePoint(belief->GetPointer()->Pos, thingPos);
		LH3DColor pink(255, 32, 32);
		LHPoint   thingTop = thingPos;
		thingTop.y += 20.0f;
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
		top.y += 20.0f;
		LH3DLine::AddLine(mind->debug.MarkerPos, top, &LH3DColor(255, 0, 0), NULL);
	}

	static GatheringText* bubbleFont = NULL;
	// Never referenced, here and on the Mac.
	static int unused = 1;

	int fontIndex;
	if (alignment->GetValue() > 0.333f)
	{
		fontIndex = 1;
	}
	else if (alignment->GetValue() < -0.333f)
	{
		fontIndex = 3;
	}
	else
	{
		fontIndex = 2;
	}
	// TODO: GatheringText::gamefont is really an array of fonts; fix its declaration.
	if (fontIndex == 2 || (&GatheringText::gamefont)[fontIndex] == NULL)
	{
		fontIndex = 0;
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
		for (LHLinkedNode<LHPoint*>* node = field_0x1220.head.Get(); node != NULL; node = node->next.Get())
		{
			LHPoint pos = *node->payload;
			LHPoint top = pos;
			top.y += 10.0f;
			LH3DLine::AddLine(pos, top, &LH3DColor(255, 0, 0), NULL);
		}
	}

	ReceiveSpell->Draw();
	if (smoke != NULL)
	{
		smoke->AddDrawing();
	}
}

// BW1W120 00517f10 BW1M119 01045a20
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

// BW1W120 00517f60 BW1M119 01045990
void MobileStatic::Draw()
{
	if (Game3dObject != NULL && IsFence())
	{
		Game3dObject->field_0x64 = 1;
	}
	MultiMapFixed::Draw();
}

// BW1W120 00517f90 BW1M119 010cd3c0
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

// BW1W120 00518050 BW1M119 010cd310
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

// BW1W120 00518090 BW1M119 010474c0
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

// BW1W120 00518100 BW1M119 0103aba0
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

// BW1W120 00518150 BW1M119 01038d70
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

// BW1W120 005181a0 BW1M119 010cc610
void Scaffold::DrawInHand(GInterfaceStatus* status)
{
	static bool32_t appearSoundPlayed = FALSE;
	static bool32_t disappearSoundPlayed = FALSE;

	// TODO: The target frame is 8 bytes smaller (two of the scalar slots below are shared) and schedules the scale
	// branch of the inlined SetPosition slightly differently.
	Object::DrawInHand(status);
	if (!IsPlannedValid(PLANNED_TYPE_0) || status != GGame::g_game->MyInterface()->status)
	{
		return;
	}
	uint32_t cycle = GGame::g_game->field_0x25053c % 100;
	int      fade = field_0x78 - min(cycle, field_0x78);
	float    drawScale = field_0x84;
	if (fade > 0)
	{
		if (field_0x88_0)
		{
			if (!appearSoundPlayed)
			{
				disappearSoundPlayed = FALSE;
				int                  abodeNumber = field_0x6c->GetInfo()->GetAbodeNumber();
				LH_SamplePlayOptions options;
				options.Pitch = abodeNumber < 0 ? 100 : 110 - abodeNumber * 3;
				options.Bank = GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_IN_GAME);
				options.SampleNumber = LH_SAMPLE_G_SCAFFOLDAPPEAR_01;
				options.field_0xc = 0;
				options.AttachedObject = NULL;
				options.Positional = 0;
				GGlobal::Global.audio->PlaySoundEffect(&options);
				appearSoundPlayed = TRUE;
			}
			drawScale *= 1.0f - fade / 400.0f;
		}
		else
		{
			if (!disappearSoundPlayed)
			{
				appearSoundPlayed = FALSE;
				GGlobal::Global.audio->PlaySoundEffect(NULL, LH_SAMPLE_G_SCAFFOLDDISAPPEAR_01, 2, 0, 0, 0,
				                                       AUDIO_SFX_BANK_TYPE_IN_GAME);
				disappearSoundPlayed = TRUE;
			}
			drawScale *= fade / 400.0f;
		}
	}
	else if (!field_0x88_0)
	{
		return;
	}
	if (field_0x74 == NULL)
	{
		return;
	}
	field_0x74->SetNeedSorting(1);
	GInterface* playerInterface = GGame::g_game->MyInterface();
	MapCoords   coords(playerInterface->hand.Get()->DynamicShadow->matrix.GetPos());
	float       angle =
		((GGame::g_game->field_0x25053c % 100) / 100.0f) * ((const GScaffoldInfo*)info)->field_0x114 + field_0x80;
	LH3DObject* object = field_0x74;
	LHPoint     pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	object->LH3DObject::SetPosition(pos, angle, drawScale);
	field_0x74->SetDrawWithGlobalAlpha(1);
	unsigned long color = 0;
	unsigned long specular = 0;
	LH3DIsland::GetColorAndSpecular(coords, &color, &specular);
	color = ((unsigned long)((color >> 24) / 1.5f) << 24) | (color & 0xFFFFFF);
	field_0x74->SetColorSpecular(color, specular);
	field_0x74->AddForDrawing(NULL);
}

// BW1W120 00518640 BW1M119 010200c0
void GInterface::Draw()
{
	GMagicHand* magicHand = status->HandHoldingSomething ? &status->magic_hand[status->HandHoldingSomething - 1] : NULL;
	if (magicHand != NULL)
	{
		magicHand->DrawContents();
	}
	status->DebugText(1);
}

// BW1W120 00518690 BW1M119 01026430
void Feature::Draw()
{
	MultiMapFixed::Draw();
}

// BW1W120 005186a0 BW1M119 010cc440
void Creed::Draw()
{
	if (Glow != NULL && Game3dObject != NULL)
	{
		Glow->DrawAt(Game3dObject->matrix, Game3dObject->scale);
		Game3dObject->AddJustForCollide(this);
	}
}

// BW1W120 005186d0 BW1M119 010cc390
void Creed::DrawOutOfMap(bool param_1)
{
	if (Glow != NULL && Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= 0x40;
		Glow->DrawAt(Game3dObject->matrix, Game3dObject->scale);
		Game3dObject->Flags2 &= ~0x40;
	}
}

// BW1W120 00518710 BW1M119 010cc360
void SpellSeed::Draw() {}

// Alpha of the one-off spell seed models.
static uint8_t SpellSeedAlpha = 150;

// BW1W120 00518720 BW1M119 010cbdc0
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
	if (fabs(direction.x) < 0.0001f && fabs(direction.z) < 0.0001f)
	{
		if (direction.x > 0.0f)
		{
			direction.x = 0.0001f;
		}
		else
		{
			direction.x = -0.0001f;
		}
	}
	direction.Normalise();

	static LHPoint up(0.0f, 1.0f, 0.0f);
	// TODO: The target inlines the LHPoint constructor nested in `direction * -(up * direction)`, which this
	// function only gets with roughly 30 more units of inliner IL ahead of it (three extra unused LHPoint locals
	// reproduce the target, apart from the operand order of the first product of the dot product). The source
	// of the extra IL is unknown.
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

// BW1W120 00518c50 BW1M119 010cba80
void OneOffSpellSeed::DrawOutOfMap(bool param_1)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= 0x40;
	}
	if (Graphic.Get() != NULL)
	{
		UpdateFrame();
		FaceCamera();
		LHPoint savedPos = Game3dObject->matrix.GetPos();
		LHPoint pos = Game3dObject->matrix * Game3dObject->GetMesh()->GetBoundingBox().centre;
		LHPoint toCamera = *LH3DTech::GetCameraPosition() - pos;
		// TODO: The target keeps y and z in x87 registers for the squared length and multiplies by the radius
		// with the components loaded first. The Mac does not fuse these products either. Unused locals placed here
		// only switch between two codegens by their parity (0 to 12 tried), neither of them the target's.
		float invLength =
			InverseSquareRoot(toCamera.x * toCamera.x + toCamera.y * toCamera.y + toCamera.z * toCamera.z);
		toCamera.x *= invLength;
		toCamera.y *= invLength;
		toCamera.z *= invLength;
		pos.Add(toCamera * GetRadius());
		*(LHPoint*)&Game3dObject->matrix.m[9] = pos;
		Game3dObject->Flags2 |= 0x40;
		Game3dObject->SetDrawWithGlobalAlpha(TRUE);
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos((SpellSeedAlpha << 24) | 0xFFFFFF, 0);
		object->AddForDrawing(param_1 ? this : NULL);
		*(LHPoint*)&Game3dObject->matrix.m[9] = savedPos;
		Game3dObject->Flags2 &= ~0x40;
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
		if (LH3DObject::g_b_last_on_screen)
		{
			LHMatrix matrix;
			float    scale;
			GetSpellGraphicPos(&matrix, &scale);
			Graphic->DrawUpdateAtPos(matrix, scale);
			Graphic->DrawSpellGraphic(this, false, param_1, Game3dObject->color >> 24);
		}
		LH3DObject::g_b_last_on_screen = onScreen;
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~0x40;
	}
}

// BW1W120 00518e90 BW1M119 010cb6f0
void OneOffSpellSeed::Draw()
{
	if (Graphic.Get() != NULL)
	{
		UpdateFrame();
		FaceCamera();
		LHPoint savedPos = Game3dObject->matrix.GetPos();
		LHPoint pos = Game3dObject->matrix * Game3dObject->GetMesh()->GetBoundingBox().centre;
		LHPoint toCamera = *LH3DTech::GetCameraPosition() - pos;
		// TODO: Same x87 residual as in DrawOutOfMap. One unused local here also fixes the operand order of the
		// matrix product above, so that part is an inliner tie-break; no count up to 12 fixes the squared length.
		float invLength =
			InverseSquareRoot(toCamera.x * toCamera.x + toCamera.y * toCamera.y + toCamera.z * toCamera.z);
		toCamera.x *= invLength;
		toCamera.y *= invLength;
		toCamera.z *= invLength;
		pos.Add(toCamera * GetRadius());
		*(LHPoint*)&Game3dObject->matrix.m[9] = pos;
		Game3dObject->SetDrawWithGlobalAlpha(TRUE);
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

// BW1W120 005190a0 BW1M119 010cb620
void SpellSeed::DrawOutOfMap(bool param_1)
{
	if (field_0x90)
	{
		if (Game3dObject != NULL)
		{
			Game3dObject->Flags2 |= 0x40;
		}
		if (IsG3DObjectDrawnInHand() == true)
		{
			Game3dObject->AddForDrawing(NULL);
		}
		if (Game3dObject != NULL)
		{
			Game3dObject->Flags2 &= ~0x40;
		}
	}
}

// BW1W120 005190e0 BW1M119 0108f6b0
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
		Game3dObject->Flags2 |= 0x40;
	}
	if (Game3dObject != NULL)
	{
		status->field_0xe0 += GGame::g_game->field_0x205d48;
		int duration = status->field_0xe4;
		// TODO: The target calls LH3DObject::SetPosition out of line in this branch but inlines it in the other one
		// (SetScale and Translation stay calls, PostTranslation is inlined), and keeps status in ecx from the first
		// comparison. Duplicated code cannot give that asymmetry under the c2 budget rules; the shared tail was
		// probably an inline helper whose first expansion only got a share of the budget.
		if (duration == 0)
		{
			float       drawScale = scale;
			MapCoords   coords(handPos);
			LH3DObject* object = Game3dObject;
			LHPoint     pos;
			GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
			object->LH3DObject::SetPosition(pos, 0.0f, drawScale);
			DrawOutOfMap(false);
		}
		else
		{
			int time = status->field_0xe0;
			if (time >= duration)
			{
				time = duration;
			}
			LHPoint     delta = handPos - status->field_0xd4;
			LHPoint     target = status->field_0xd4 + delta * ((float)time / duration);
			float       drawScale = scale;
			MapCoords   coords(target);
			LH3DObject* object = Game3dObject;
			LHPoint     pos;
			GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
			object->LH3DObject::SetPosition(pos, 0.0f, drawScale);
			DrawOutOfMap(false);
		}
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~0x40;
	}
}

// BW1W120 00519350 BW1M119 0101d500
void StoragePit::Draw()
{
	Abode::Draw();
}

// BW1W120 00519360 BW1M119 010cb170
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

// BW1W120 005193d0 BW1M119 010cb020
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
	float         scale = GetScale();
	float         yAngle = GetYAngle();
	Game3DObject* object = Game3dObject;
	// TODO: Inline budget: in the yAngle == 0 branch of the inlined SetPosition the target calls SetScale and inlines
	// PostTranslation; this build does the opposite, so the original had 36 to 103 units less budget left here.
	{
		LHPoint point;
		GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(Pos, point);
		point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(Pos, &object->color, &object->specular);
		object->LH3DObject::SetPosition(point, yAngle, scale);
	}
	object->AddForDrawing(this);
}

// BW1W120 00519640 BW1M119 010cafd0
void TownCentreSpellIcon::Draw()
{
	SpellIcon::Draw();
}

// BW1W120 00519650 BW1M119 010cad50
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
		float         scale = GetScale();
		float         yAngle = GetYAngle();
		Game3DObject* object = Game3dObject;
		LHPoint       point;
		GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(Pos, point);
		point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(Pos, &object->color, &object->specular);
		object->LH3DObject::SetPosition(point, yAngle, scale);
		object->AddForDrawing(this);
	}
	else
	{
		float       scale = GetScale();
		float       yAngle = GetYAngle();
		LH3DObject* object3d = Game3dObject;
		LHPoint     point;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
		object3d->LH3DObject::SetPosition(point, yAngle, scale);
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(0xFFFFFFFF, SpecularColor);
		object->AddForDrawing(this);
	}
	if (LH3DObject::g_b_last_on_screen)
	{
		DrawSpellSeedGraphic(Game3dObject->color >> 24);
		DrawMagicSystem();
	}
}

// BW1W120 00519960 BW1M119 010261b0
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
		if (result == 2)
		{
			GGame::g_game->help_system->SendFOVObject(object, depth);
		}
	}
}

// BW1W120 0051a830 BW1M119 010ca660
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
	if (fabs(direction.x) < 0.0001f && fabs(direction.z) < 0.0001f)
	{
		if (direction.x > 0.0f)
		{
			direction.x = 0.0001f;
		}
		else
		{
			direction.x = -0.0001f;
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

// fabricated: the Mac build calls the LHPoint constructor and ConvertMapCoordToLandscapePoint out of line at
// these sites but inlines them elsewhere in DrawSpellGraphic, so they sit one inline level deeper. The original
// was probably an inline Game3DObject member; both builds read the object and angle before the conversion.
inline void SetSeedPosition(Game3DObject* object, const MapCoords& coords, float y_angle, float scale)
{
	LHPoint point;
	object->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(coords, point), y_angle, scale);
}

// TODO: register allocation differs. The target keeps 0 in ebx for the whole function (byte tests become
// `cmp [param_2], bl`) and spellInfo, object and the band index in ebp, leaving alpha in memory. Ours gives ebx to
// alpha and the band index and rematerialises 0 in ebp, which also changes the switch-case tail merging.
// BW1W120 00519ad0 BW1M119 010c9140
void SpellSeedGraphic::DrawSpellGraphic(Object* object, bool param_2, bool param_3, unsigned char alpha)
{
	static const float uvFrameSpeed = -15.0f;
	static const float pulseSpeed = 0.5f;
	static const float freezePulseSpeed = 0.35f;
	static const float maxAlpha = 255.0f;
	static const float spinSpeed = 2.0f;

	bool32_t onScreen = LH3DObject::g_b_last_on_screen;
#if defined(VERSION_BW1W120)
	float dt = LH3DTech::GetGameTimeInc() / 1000.0f;
#else
	float dt = LH3DTech::GetGameTimeInc() * 0.001f;
#endif
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
			Game3dObject->SetAnimatedUV_2(TRUE);
			UVFrame += uvFrameSpeed * dt;
			float uvFrame = fmod(UVFrame, 32.0f);
			if (uvFrame < 0.0f)
			{
				uvFrame += 32.0f;
			}
			UVFrame = uvFrame;
			int frame = (int)UVFrame;
			Game3dObject->SetAnimatedUV_1(frame % 8 * UVTextureScale * 32.0f, frame / 8 * UVTextureScale * 32.0f);
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
			SetSeedPosition(Game3dObject, Pos, YAngle, scale);
			switch (spellInfo->SpellType)
			{
			case CREATURE_RECEIVE_SPELL_FAT:
				Game3dObject->matrix.PreScale(pulse * 1.5f + 1.0f, 1.0f, pulse * 1.5f + 1.0f);
				break;
			case CREATURE_RECEIVE_SPELL_THIN:
				Game3dObject->matrix.PreScale(1.0f - pulse * 0.8f, 1.0f, 1.0f - pulse * 0.7f);
				break;
			}
			switch (spellInfo->SpellType)
			{
			case CREATURE_RECEIVE_SPELL_INVISIBLE:
				LH3DIsland::GetColorAndSpecularWithFog(&Game3dObject->matrix.GetPos(), &Game3dObject->color,
				                                       &Game3dObject->specular);
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= (uint8_t)(alpha * pulse) << 24;
				Game3dObject->SetDrawWithGlobalAlpha(TRUE);
				if (param_2)
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
				// The Mac passes the byte-swapped 0x8D4F3500, as its IndirectX RGB_MAKE would build it.
				Game3dObject->DrawFroz_2(pulse, RGB_MAKE(53, 79, 141),
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
				Game3dObject->SetDrawWithGlobalAlpha(TRUE);
				if (param_2)
				{
					Game3dObject->DrawWithClipping();
				}
				else
				{
					Game3dObject->AddForDrawing(NULL);
				}
				break;
			case CREATURE_RECEIVE_SPELL_SMALL:
				SetSeedPosition(Game3dObject, Pos, YAngle, (1.0f - PulsePhase) * scale);
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= alpha << 24;
				Game3dObject->SetDrawWithGlobalAlpha(alpha != 0xFF);
				Game3dObject->DrawWithClipping();
				Game3dObject->color &= 0xFFFFFF;
				Game3dObject->color |= (alpha * 80 >> 8) << 24;
				SetSeedPosition(Game3dObject, Pos, YAngle, scale);
				Game3dObject->SetDrawWithGlobalAlpha(TRUE);
				if (param_2)
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
				if (param_2)
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
			if (param_2)
			{
				SetSeedPosition(Game3dObject, Pos, YAngle, scale);
				Game3dObject->DrawWithClipping();
			}
			else
			{
				float         angle = YAngle;
				Game3DObject* seedObject = Game3dObject;
				LHPoint       position;
				GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(Pos, position);
				position.y +=
					LH3DIsland::GetAltitudeAndSetColorSpecular(Pos, &seedObject->color, &seedObject->specular);
				seedObject->LH3DObject::SetPosition(position, angle, scale);
				seedObject->AddForDrawing(NULL);
			}
		}
	}

	if (object != NULL && param_3)
	{
		LHPoint position;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, position);
		if (IsSpellG3DObjectDrawn())
		{
			position.Add(Game3dObject->GetMesh()->GetBoundingBox().centre);
		}
		GInterface::SendInvisibleDrawCollision(object, &position, Size * 2.0f);
	}

	if (PSys != NULL)
	{
		PSys->SetAlpha(alpha);
		if (param_2)
		{
			PSys->Draw(field_0x5c ? GGame::g_game->field_0x205d64 : 1.0f, false);
		}
		else
		{
			PSys->AddDrawing(field_0x5c ? GGame::g_game->field_0x205d64 : 1.0f, *PSys->GetOrigin());
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
			field_0x40 = fmod(field_0x40 + bandSpinSpeed * dt, TWO_PI);
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
				if (param_2)
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

// BW1W120 0051aba0 BW1M119 010c8ea0
void Totem::Draw()
{
	DebugText(1);
	if (!IsBuilt())
	{
		DrawBuilding(Game3dObject);
		return;
	}
	InitTotemPosFromWorshipPercentage();
	Game3dObject->SetDrawWithGlobalAlpha(0);
	// TODO: Inline budget: the target calls LH3DObject::SetPosition out of line in the two interact paths and only
	// inlines the last one, the same asymmetry as Object::DrawInHand. Repeated code cannot produce that under the c2
	// budget rules; these position updates were probably shared inline helpers.
	if ((((GameThingWithPos*)this)->Flags & 0x10) && GGame::g_game->MyInterface()->GetInteractObject() == this)
	{
		if (GetFireEffect() != NULL)
		{
			float       scale = GetScale();
			float       yAngle = GetYAngle();
			LH3DObject* object = Game3dObject;
			LHPoint     point;
			GLandscape::ConvertMapCoordToLandscapePoint(field_0xc4, point);
			object->LH3DObject::SetPosition(point, yAngle, scale);
			DrawObjectOnFire();
		}
		else
		{
			float         scale = GetScale();
			float         yAngle = GetYAngle();
			Game3DObject* object = Game3dObject;
			LHPoint       point;
			GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(field_0xc4, point);
			point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(field_0xc4, &object->color, &object->specular);
			object->LH3DObject::SetPosition(point, yAngle, scale);
			object->AddForDrawing(this);
		}
		return;
	}
	if (GetFireEffect() != NULL)
	{
		DrawObjectOnFire();
		return;
	}
	float         scale = GetScale();
	float         yAngle = GetYAngle();
	Game3DObject* object = Game3dObject;
	LHPoint       point;
	GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(Pos, point);
	point.y += LH3DIsland::GetAltitudeAndSetColorSpecular(Pos, &object->color, &object->specular);
	object->LH3DObject::SetPosition(point, yAngle, scale);
	object->AddForDrawing(this);
}

// BW1W120 0051aec0 BW1M119 010c8e10
void Living::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState != 4 || hand->field_0x4904 != (uint32_t)this)
	{
		DrawScale(1.0f);
	}
}

// BW1W120 0051af00 BW1M119 0104b000
void Living::PreDrawScale(float scale)
{
#if defined(VERSION_BW1W100)
	if (IsMoving() && Game3dObject->GetCurrentAnim() != NULL && !(Game3dObject->GetCurrentAnim()->Flags & 0x200))
#else
	if (IsMovingForAnimation() && Game3dObject->GetCurrentAnim() != NULL &&
	    !(Game3dObject->GetCurrentAnim()->Flags & 0x200))
#endif
	{
		float distance = (float)(speed * GGame::g_game->field_0x250540) / (GetScale() * 655350.0f);
		Game3dObject->SetCurrentCycleTime(
			MoveAnimByDist(Game3dObject->GetCurrentAnim(), Game3dObject->GetCurrentCycleTime(), distance));
		LHPoint oldPos;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, oldPos);
		LHPoint newPos;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, newPos);
		float t = GGame::g_game->field_0x205d64;
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
		Game3dObject->SetCurrentCycleTime(MoveAnimByTime(
			Game3dObject->GetCurrentAnim(), Game3dObject->GetCurrentCycleTime(), GGame::g_game->field_0x205d48));
	}
}

// BW1W120 0051b220 BW1M119 0104cc50
void Living::PreDrawShear()
{
	if (Pos.Altitude() <= 0.2f)
	{
		LHPoint right = Game3dObject->matrix * LHPoint(1.0f, 0.0f, 0.0f);
		LHPoint front = Game3dObject->matrix * LHPoint(0.0f, 0.0f, 1.0f);
		float   height = Game3dObject->matrix._42;
		float   shearX = LH3DIsland::GetAltitude(LH3DMapCoords(right.x, right.z)) - height;
		float   shearZ = LH3DIsland::GetAltitude(LH3DMapCoords(front.x, front.z)) - height;
		shearX = min(shearX, 0.3f);
		shearZ = min(shearZ, 0.3f);
		shearX = max(shearX, -0.3f);
		shearZ = max(shearZ, -0.3f);
		LHMatrix shear;
		shear.SetIdentity();
		shear._12 = shearX;
		shear._32 = shearZ;
		Game3dObject->matrix.PreMultiply(shear);
	}
}

// BW1W120 0051b3d0 BW1M119 0104cde0
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

// BW1W120 0051b4a0 BW1M119 010c8ac0
void Living::DrawScaleWithPlayerColor(float scale)
{
	PreDrawScale(scale);
	if (*(uint32_t*)&SpecularColor == 0)
	{
		Game3dObject->SetDrawWithGlobalAlpha(1);
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

// BW1W120 0051b510 BW1M119 0105a910
bool Villager::DrawVillagerInfo()
{
	if (!(status & 0x200) && !(GGame::g_game->GameFlags & GAME_FLAG_UNKNOWN_0x200000))
	{
		return false;
	}
	GVillagerStateTableInfo* info = &GVillagerStateTableInfo::GetInfo()[GetFinalState()];
	char16_t                 text[0x400];
	wcscpy(text, L"");
	SpecialVillager* special = dynamic_cast<SpecialVillager*>(this);
	if (GetVillagerName() != NULL && special != NULL && special->CanShowName())
	{
		swprintf(text + wcslen(text), L"%s\n", CHAR2WCHAR(GetVillagerName()));
	}
	if (info->field_0x10c != 0)
	{
		char16_t* foodText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_21);
		char16_t* lifeText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_20);
		char16_t* ageText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EXTRA_KHAZAR_22);
		char16_t* stateText = HelpTextDataBase::HelpTextDatabase.GetHelpText(info->field_0x10c);
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
	// TODO: The original frame shares the slots of point and color with the branches above, so they had a narrower
	// scope than the function (this block, or perhaps an inline helper).
	{
		LHPoint point = Game3dObject != NULL ? Game3dObject->matrix.GetPos() : Pos.GetLHPoint();
		point.y += 1.75f;
		LH3DColor color(0xff, 0xff, 0xff, 0xff);
		if (GetTown() != NULL && GetTown()->GetPlayer() != NULL)
		{
			color = GetTown()->GetPlayer()->GetPlayer3DColor();
		}
		if (IsFemaleVillager())
		{
			// Lighten each channel 145/256 of the way towards white.
			uint32_t c = *(uint32_t*)&color;
			*(uint32_t*)&color = (((c & 0xff0000) + (((0xff0000 - (c & 0xff0000)) * 145) >> 8)) & 0xff0000) |
			                     (((c & 0xff00) + (((0xff00 - (c & 0xff00)) * 145) >> 8)) & 0xff00) |
			                     (((c & 0xff) + (((0xff - (c & 0xff)) * 145) >> 8)) & 0xff) | 0xff000000;
		}
		VillagerName::Add(1.0f, point, text, color);
	}
	return true;
}

// BW1W120 0051b940 BW1M119 0104f050
void Villager::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState == 4 && hand->field_0x4904 == (uint32_t)this)
	{
		return;
	}
	if (GVillagerStateTableInfo::GetInfo()[action.GetState(LIVING_ACTION_INDEX_TOP)].field_0x10 != -4 &&
	    !(Flags & VILLAGER_FLAG_AT_HOME))
	{
#if defined(VERSION_BW1W100)
		DrawScale(GetScale());
		DrawCarriedObject();
#else
		float diff = angle_correct(angle_correct(GetYAngle()) - DrawYAngle);
		float rate = 0.003f;
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

// BW1W120 0051baf0 BW1M119 010563d0
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

// BW1W120 0051bb50 BW1M119 010c88f0
uint32_t Pot::GetPoisonColor()
{
	return 0xFFE8FFDD;
}

// BW1W120 0051bb60 BW1M119 010c88b0
uint32_t Pot::GetPoisonSpecular()
{
	return 0xFF001000;
}

// BW1W120 0051bb70 BW1M119 010c87e0
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

// BW1W120 0051bbc0 BW1M119 010c86a0
void Pot::DrawOutOfMap(bool param_1)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= 0x40;
	}
	if (ResourceAmount != 0)
	{
		if (IsPoisoned() && GetFireEffect() == NULL)
		{
			uint32_t      specular = GetPoisonSpecular();
			uint32_t      color = GetPoisonColor();
			Game3DObject* object = Game3dObject;
			object->CombineColorFromPos(color, specular);
			object->AddForDrawing(param_1 ? this : NULL);
		}
		else
		{
			Object::DrawOutOfMap(param_1);
		}
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~0x40;
	}
}

// TODO: Inline-budget residual: the target keeps the second SetPosition's SetScale out of line (its nested share
// is one unit short of SetScale's size in our build), and keeps ebx/ebp pushes inside the visible branch.
// BW1W120 0051bc40 BW1M119 0103b400
void PileWood::Draw()
{
	AltitudeZoomer.Update((int)LH3DTech::g_game_time_inc * 0.001f);
	float altitude = AltitudeZoomer.GetCurrentValue();
	if (altitude > -GetHeight())
	{
		MapCoords coords = Pos;
		coords.altitude = AltitudeZoomer.GetCurrentValue();
		float       scale = GetScale();
		float       yAngle = GetYAngle();
		LH3DObject* object = Game3dObject;
		LHPoint     position;
		object->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(coords, position), yAngle, scale);

		MobileObject::Draw();

		scale = GetScale();
		yAngle = GetYAngle();
		object = Game3dObject;
		object->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, scale);
	}
}

// TODO: Inline-budget residual: the target calls the out-of-line LH3DObject::SetPosition for the raised position
// but inlines the second one; no budget model reproduces that from this source, so a source difference remains.
// SetPosition is really the virtual __fastcall at vtable slot 0x20 (0x00423140), and the target
// also calls it out of line from small functions with ample budget (SpellIcon::MoveMapObject 0x007265d0,
// AnimatedStatic::CallVirtualFunctionsForCreation 0x00422300), so its inlining is not decided by the budget alone.
// BW1W120 0051bf80 BW1M119 01033190
void PileFood::Draw()
{
	AltitudeZoomer.Update((int)LH3DTech::g_game_time_inc * 0.001f);
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
		float       scale = GetScale();
		float       yAngle = GetYAngle();
		LH3DObject* object = Game3dObject;
		LHPoint     position;
		object->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(coords, position), yAngle, scale);

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

		scale = GetScale();
		yAngle = GetYAngle();
		object = Game3dObject;
		object->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, scale);
	}
}

// fabricated: the original squared the time through some inline helper taking its argument by value (Animal::Draw,
// Dove::Draw, SpellWolf::Draw and SpellWolf/SpellDove::ProcessFadeOut all copy the value before multiplying); the name
// is unknown.
inline float Square(float x)
{
	return x * x;
}

// BW1W120 0051c310 BW1M119 010443e0
void Animal::Draw()
{
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface->hand.Get();
	if (hand->CurrentState == 4 && hand->field_0x4904 == (uint32_t)this)
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

// The same inline-assembly rounding helper appears in Object.cpp as RoundPhysicsCell; its original name is unknown.
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

// BW1W120 0051c560 BW1M119 010c7d90
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
		// TODO: The target keeps charing in esi and color only in its stack slot; this build swaps the two.
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

// BW1W120 0051c820 BW1M119 0101d5f0
void Object::DrawOutOfMap(bool param_1)
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 |= 0x40;
	}
	FireEffect* fire = GetFireEffect();
	if (fire != NULL)
	{
		uint32_t      specular = fire->GetFireEffectSpecularColor();
		uint32_t      color = fire->GetFireEffectCharingColor();
		Game3DObject* object = Game3dObject;
		object->CombineColorFromPos(color, specular);
		object->AddForDrawing(param_1 ? this : NULL);
		DrawFireEffect();
	}
	else
	{
		Game3DObject* object = Game3dObject;
		LH3DIsland::GetColorAndSpecularWithFog(&object->matrix.GetPos(), &object->color, &object->specular);
		object->AddForDrawing(param_1 ? this : NULL);
	}
	if (Game3dObject != NULL)
	{
		Game3dObject->Flags2 &= ~0x40;
	}
	if (IsVillager(NULL))
	{
		((Villager*)this)->DrawVillagerInfo();
	}
}

// BW1W120 0051c8e0 BW1M119 010c77b0
void TownArtifact::Draw()
{
	if (Value > 2.0f && Artifact != NULL && Symbol != NULL)
	{
		LHPoint       pos;
		Game3DObject* object = Artifact->Game3dObject;
		if (object != NULL)
		{
			pos = object->GetMesh()->GetBoundingBox().centre;
			object->matrix.TransformPoint(pos);
			pos.y += object->GetMesh()->GetBoundingBox().size.y * object->scale * 1.2;
		}
		else
		{
			pos = Artifact->Pos.GetLHPoint();
			pos.y += Artifact->GetHeight() + 2.0f;
		}
		Symbol->SetPos(pos);
		Symbol->AddDrawing();
	}
}

// BW1W120 0051ca10 BW1M119 010c7410
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
		if (field_0xdc[scaffold->GetWorkshopPosition()] == 1)
		{
			float     xAngle;
			float     yAngle;
			float     zAngle;
			MapCoords pos = GetScaffoldCreatePos(scaffold->GetWorkshopPosition(), xAngle, yAngle, zAngle);
			field_0xcc->SetMesh(LH3DMesh::GetPackedMesh(scaffold->GetMesh()), NULL, NULL);
			field_0xcc->SetPosition(pos, xAngle, yAngle, zAngle, scaffold->GetScale());
			field_0xcc->SetDrawWithGlobalAlpha(1);

			unsigned long color = 0;
			unsigned long specular = 0;
			LH3DIsland::GetColorAndSpecular(pos, &color, &specular);
			int alpha = (int)((color >> 24) * (1.0f / 3.0f) * (cos(pulseTime * TWO_PI / pulsePeriod) + 1.0) * 0.5);
			color = (color & 0xffffff) | (alpha << 24);
			field_0xcc->SetColorSpecular(color, specular);

			static int minAlphaRef = 10;
			LH3DRender::OverrideMaterial = max(alpha * 250 / 255 - minAlphaRef, 0);
			field_0xcc->AddDrawing();
			LH3DRender::OverrideMaterial = 0;
		}
	}
}

// BW1W120 0051cbf0 BW1M119 010c72e0
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
