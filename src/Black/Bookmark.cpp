#include <math.h> /* For cos, fabs */

#include "Bookmark.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>  /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>    /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DRender.h>  /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>  /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DObject.h>  /* For g_mat_misc0 */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DWetFeet.h> /* For LH3DWetFeet */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For LH3DZSorter */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "Creature.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h" /* For White */
#include "HelpSystem.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "Object.h"
#include "Player.h"
#include "StoragePit.h"
#include "Town.h"
#include "TownCentre.h"

Bookmark Bookmark::Bookmarks[BOOKMARK_INDEX_LAST];
int      Bookmark::CurrentBookmark = 0;
int      Bookmark::FollowBookmark = BOOKMARK_INDEX_NONE;
bool32_t Bookmark::ShowBookmarks = true;
int      Bookmark::FocusTownID = BOOKMARK_INDEX_NONE;
// BW1W120 009cd38c
static float CreatureCameraHeight = 5.0f;

int   BookmarkGraphic::PulseTime = 0;
float BookmarkGraphic::PulseWidth;
float BookmarkGraphic::PulseHeight;

void Bookmark::DrawAll()
{
	if (ShowBookmarks)
	{
		HelpSystem* helpSystem = GGame::g_game->help_system;
		if (!helpSystem->WideScreen || !helpSystem->WideScreenControl)
		{
			for (int i = 0; i < BOOKMARK_INDEX_USER_LAST; i++)
			{
				if (Bookmarks[i].Flags & BOOKMARK_FLAG_SET)
				{
					if (Bookmarks[i].Graphic == NULL)
					{
						Bookmarks[i].Graphic = BookmarkGraphic::Create(i, (CREATURE_TYPE)BOOKMARK_INDEX_NONE);
					}
					LHPoint point;
					if (Bookmarks[i].Target != NULL)
					{
						if (Bookmarks[i].Target->Game3dObject != NULL)
						{
							point = Bookmarks[i].Target->Game3dObject->matrix.GetPos();
						}
						else
						{
							GLandscape::ConvertMapCoordToLandscapePoint(Bookmarks[i].Target->Pos, point);
						}
					}
					else
					{
						GLandscape::ConvertMapCoordToLandscapePoint(Bookmarks[i].Pos, point);
					}
					point.y += BOOKMARK_HEIGHT_OFFSET;
					Bookmarks[i].Graphic->SetPosition(point);
					Bookmarks[i].Graphic->AddDrawing();
				}
			}
		}
	}
}

Bookmark::Bookmark() {}

#ifndef VERSION_BW1W100
Bookmark::Bookmark(const MapCoords& pos, Object* target)
{
	Pos = pos;
	Reset();
}

void Bookmark::Reset()
{
	Flags &= ~BOOKMARK_FLAG_SET;
	Target = NULL;
	Graphic = NULL;
}
#endif

Bookmark::~Bookmark()
{
	if (Graphic != NULL)
	{
		Graphic->Release();
	}
	Graphic = NULL;
}

void Bookmark::GetBookMarkSet()
{
	Target = NULL;
	Flags &= ~BOOKMARK_FLAG_SET;
}

void Bookmark::Clear(unsigned long index)
{
	Bookmarks[index].GetBookMarkSet();
}

void Bookmark::ClearAll()
{
	for (Bookmark* bookmark = Bookmarks; bookmark < &Bookmarks[BOOKMARK_INDEX_LAST]; bookmark++)
	{
		bookmark->GetBookMarkSet();
	}
}

void Bookmark::ValidateTarget()
{
	if (Target != NULL && (Target->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == GAME_THING_FLAG_UNAVAILABLE)
	{
		Target = NULL;
	}
}

void Bookmark::Process()
{
	if (Flags & BOOKMARK_FLAG_SET)
	{
		ValidateTarget();
		if (Target != NULL)
		{
			Pos = Target->Pos;
		}
	}
}

void Bookmark::SetBookMark(unsigned long index, const MapCoords& coords)
{
	SetFollow(BOOKMARK_INDEX_NONE);
	CurrentBookmark = index;
	if (GGame::g_game->MyInterface()->Collide.object != NULL)
	{
		SetBookMark(index, GGame::g_game->MyInterface()->Collide.object);
		return;
	}
	Bookmarks[index].Flags |= BOOKMARK_FLAG_SET;
	Bookmarks[index].Target = NULL;
	Bookmarks[index].Pos = coords;
	LHPoint cameraPos;
	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	Bookmarks[index].CameraOffset = cameraPos - point;
}

void Bookmark::SetBookMark(unsigned long index, Object* object)
{
	SetFollow(BOOKMARK_INDEX_NONE);
	CurrentBookmark = index;
	Bookmarks[index].Flags |= BOOKMARK_FLAG_SET;
	dynamic_cast<Object*>(object);
	Bookmarks[index].Target = object;
	Bookmarks[index].Pos = object->Pos;
	LHPoint cameraPos;
	GGame::g_game->GetCamera()->GetPosition(cameraPos);
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, point);
	Bookmarks[index].CameraOffset = cameraPos - point;
}

void Bookmark::SetCameraToBookMark(unsigned long index)
{
	if ((Bookmarks[index].Flags & BOOKMARK_FLAG_SET) && GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		CurrentBookmark = index;
		if (FollowBookmark != index)
		{
			FollowBookmark = BOOKMARK_INDEX_NONE;
		}
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
		if (mode == NULL)
		{
			NEW(243) CameraModeNew3(GGame::g_game->GetCamera());
			mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (mode == NULL)
			{
				return;
			}
		}
		{
			LHPoint focus;
			GLandscape::ConvertMapCoordToLandscapePoint(Bookmarks[index].Pos, focus);
			LHPoint pos = Bookmarks[index].CameraOffset + focus;
			mode->FlyToPosFoc(pos, focus, BOOKMARK_FLY_TIME);
		}

		Bookmarks[BOOKMARK_INDEX_BEFORE_JUMP].Flags |= BOOKMARK_FLAG_SET;
		Bookmarks[BOOKMARK_INDEX_BEFORE_JUMP].Target = NULL;
		Bookmarks[BOOKMARK_INDEX_BEFORE_JUMP].Pos = GGame::g_game->MyInterface()->status->Pos;
		LHPoint cameraPos;
		GGame::g_game->GetCamera()->GetPosition(cameraPos);
		LHPoint cursor;
		GLandscape::ConvertMapCoordToLandscapePoint(GGame::g_game->MyInterface()->status->Pos, cursor);
		Bookmarks[BOOKMARK_INDEX_BEFORE_JUMP].CameraOffset = cameraPos - cursor;
	}
}

void Bookmark::SetFocusPreviousBookmark()
{
	for (int i = BOOKMARK_INDEX_LAST - 1; i > 0; i--)
	{
		if ((CurrentBookmark + i) % BOOKMARK_INDEX_LAST < BOOKMARK_INDEX_USER_LAST &&
		    (Bookmarks[(CurrentBookmark + i) % BOOKMARK_INDEX_LAST].Flags & BOOKMARK_FLAG_SET) == BOOKMARK_FLAG_SET)
		{
			SetCameraToBookMark((CurrentBookmark + i) % BOOKMARK_INDEX_LAST);
			return;
		}
	}
}

void Bookmark::SetFocusNextBookmark()
{
	for (int i = 1; i < BOOKMARK_INDEX_LAST + 1; i++)
	{
		if ((CurrentBookmark + i) % BOOKMARK_INDEX_LAST < BOOKMARK_INDEX_USER_LAST &&
		    (Bookmarks[(CurrentBookmark + i) % BOOKMARK_INDEX_LAST].Flags & BOOKMARK_FLAG_SET) == BOOKMARK_FLAG_SET)
		{
			SetCameraToBookMark((CurrentBookmark + i) % BOOKMARK_INDEX_LAST);
			return;
		}
	}
}

void Bookmark::SetFocusBeforeJumpBookmark()
{
	SetCameraToBookMark(BOOKMARK_INDEX_BEFORE_JUMP);
}

void Bookmark::SetFollow(long index)
{
	if (index == BOOKMARK_INDEX_NONE)
	{
		FollowBookmark = index;
		return;
	}
	if (Bookmarks[index].Target == NULL)
	{
		SetCameraToBookMark(index);
		FollowBookmark = BOOKMARK_INDEX_NONE;
		return;
	}
	if (Bookmarks[index].Flags & BOOKMARK_FLAG_SET)
	{
		FollowBookmark = FollowBookmark == index ? BOOKMARK_INDEX_NONE : index;
	}
}

uint32_t Bookmark::SaveAll(GameOSFile& file)
{
	for (int i = 0; i < BOOKMARK_INDEX_LAST; i++)
	{
		Bookmarks[i].Save(file);
	}
	file.WriteSafe(FollowBookmark);
	file.WriteSafe(CurrentBookmark);
	file.WriteSafe(ShowBookmarks);
	return true;
}

bool32_t Bookmark::Save(GameOSFile& file)
{
	file.WriteSafe(Flags);
	file.WriteSafe(CameraOffset);
	file.WritePtr(Target);
	file.WriteSafe(Pos);
	file.WriteSafe(CameraOffset);
	return true;
}

uint32_t Bookmark::LoadAll(GameOSFile& file)
{
	for (int i = 0; i < BOOKMARK_INDEX_LAST; i++)
	{
		Bookmarks[i].Load(file);
	}
	file.ReadSafe(FollowBookmark);
	file.ReadSafe(CurrentBookmark);
	file.ReadSafe(ShowBookmarks);
	return true;
}

bool32_t Bookmark::Load(GameOSFile& file)
{
	file.ReadSafe(Flags);
	file.ReadSafe(CameraOffset);
	file.ReadPtr((GameThing**)&Target);
	file.ReadSafe(Pos);
	file.ReadSafe(CameraOffset);
	return true;
}

BookmarkGraphic* BookmarkGraphic::Create(long index, CREATURE_TYPE type)
{
	BookmarkGraphic* graphic = NEW(404) BookmarkGraphic;
	if (graphic != NULL)
	{
		graphic->sprite = LH3DSprite::Create(1, true);
		graphic->sprite->material = g_mat_misc0;
		graphic->sprite->colour = LH3DColor(BOOKMARK_SPRITE_COLOUR);
		graphic->sprite->Frame = type == (CREATURE_TYPE)BOOKMARK_INDEX_NONE ? index + BOOKMARK_SPRITE_FRAME_FIRST
		                                                                    : BOOKMARK_SPRITE_FRAME_CREATURE;
		graphic->type = type;
	}
	return graphic;
}

void BookmarkGraphic::Release()
{
	delete this;
}

void BookmarkGraphic::SetPosition(const LHPoint& pos)
{
	sprite->pos = pos;
}

void BookmarkGraphic::AddDrawing()
{
	if (sprite != NULL)
	{
		LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&BookmarkGraphic::Draw,
		                                  LH3DTech::GetValueForZSorter(sprite->pos), 0);
	}
}

void BookmarkGraphic::Draw()
{
	sprite->SetShape(PulseWidth, PulseHeight / PulseWidth);
	sprite->Draw();
	if (type != (CREATURE_TYPE)BOOKMARK_INDEX_NONE)
	{
		uint32_t frame = sprite->Frame;
		float    angle = sprite->angle;
		sprite->Frame = LH3DWetFeet::GetSpriteOffsetFromCreatureType(type);
		sprite->angle = -HALF_PI_F;
		sprite->SetShape(PulseHeight * BOOKMARK_CREATURE_SCALE, PulseWidth * BOOKMARK_CREATURE_SCALE / PulseHeight);
		sprite->Draw();
		sprite->angle = angle;
		sprite->Frame = frame;
	}
}

void BookmarkGraphic::DrawLoopUpdate()
{
	PulseTime += LH3DTech::g_game_time_inc;
	if (PulseTime > BOOKMARK_PULSE_PERIOD)
	{
		PulseTime %= BOOKMARK_PULSE_PERIOD;
	}
	float phase = PulseTime / (float)BOOKMARK_PULSE_PERIOD;
	PulseWidth = (float)(fabs(cos(phase * TWO_PI)) + BOOKMARK_PULSE_MINIMUM);
	float offsetPhase =
		((PulseTime + BOOKMARK_PULSE_PHASE_OFFSET) % BOOKMARK_PULSE_PERIOD) / (float)BOOKMARK_PULSE_PERIOD;
	PulseHeight = (float)(fabs(cos(offsetPhase * TWO_PI)) + BOOKMARK_PULSE_MINIMUM);
}

void Bookmark::SetFocusToOwnedTown()
{
	bool searchAny = FocusTownID < 0;
	for (;;)
	{
		for (Town* town = GGame::g_game->MyPlayer()->towns.GetLast(); town != NULL;
		     town = GGame::g_game->MyPlayer()->towns.GetPrevious(town))
		{
			if (town->ID == FocusTownID || searchAny)
			{
				Town* next = GGame::g_game->MyPlayer()->towns.GetPrevious(town);
				if (next == NULL)
				{
					next = GGame::g_game->MyPlayer()->towns.GetLast();
				}
				MapCoords coords;
				if (next != NULL)
				{
					if (next->GetStoragePit() != NULL)
					{
						coords = next->GetStoragePit()->Pos;
						SetBookMark(BOOKMARK_INDEX_TOWN, coords);
					}
					else if (next->town_centre != NULL)
					{
						coords = next->town_centre->Pos;
						SetBookMark(BOOKMARK_INDEX_TOWN, coords);
					}
					else
					{
						continue;
					}
					FocusTownID = next->ID;
					CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
					if (mode != NULL)
					{
						mode->FlyToPosFoc(coords.GetLHPoint() + LHPoint(-BOOKMARK_TOWN_OFFSET_X, BOOKMARK_TOWN_OFFSET_Y,
						                                                BOOKMARK_TOWN_OFFSET_Z),
						                  coords.GetLHPoint(), BOOKMARK_FLY_TIME);
					}
					return;
				}
			}
		}
		if (searchAny)
		{
			return;
		}
		searchAny = true;
	}
}

#ifndef VERSION_BW1W100
void Bookmark::FollowCreature()
{
	if (GGame::g_game->MyPlayer()->creature.Get() != NULL)
	{
		Bookmarks[BOOKMARK_INDEX_CREATURE].Target = GGame::g_game->MyPlayer()->creature.Get();
		Bookmarks[BOOKMARK_INDEX_CREATURE].Flags |= BOOKMARK_FLAG_SET;
		float   size = GGame::g_game->MyPlayer()->creature->GetHeight();
		LHPoint offset;
		offset.y = CreatureCameraHeight * size;
		offset.z = offset.x = size * 2;
		Bookmarks[BOOKMARK_INDEX_CREATURE].CameraOffset = offset;
		SetFollow(BOOKMARK_INDEX_CREATURE);
	}
}

void Bookmark::Hide()
{
	ShowBookmarks = false;
	SetFollow(BOOKMARK_INDEX_NONE);
}

void Bookmark::Show()
{
	ShowBookmarks = true;
}
#endif
