#include "ColourConstants.h"
#include "GameTimeConstants.h"
#include "HalfLifeConstants.h"
#include "Bubble.h"

#include <math.h>    /* For fabs */
#include <stdlib.h>  /* For _wtoi */
#include <wchar.h>   /* For wcsncpy, wcsstr */
#include <windows.h> /* For GetTickCount, min */

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>   /* For LH3DAtmos::mat0 */
#include <Lionhead/LH3DLib/development/LH3DMath.h>    /* For HALF_PI_F */
#include <Lionhead/LH3DLib/development/LH3DRender.h>  /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech::g_camera */
#include <Lionhead/LH3DLib/development/LH3DText.h>    /* For struct GatheringText */
#include <Lionhead/LH3DLib/development/LH3DVertex.h>  /* For struct Vertex3D */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For class LH3DZSorter */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>           /* For LHSys::TheSystem */

#include "alexmfc.h"            /* For SetupThing::DrawBox */
#include "camerahelp.h"         /* For CameraHelp::DrawKeyOrMouse */
#include "Camera.h"             /* For class GCamera */
#include "FrontEnd.h"           /* For FrontEnd::GatheringDialog */
#include "Game.h"               /* For class GGame */
#include "GatheringBox.h"       /* For class GatheringBox */
#include "GJUtils.h"            /* For GlobalTextures::GetGestureMaterialAndOffset */
#include "HelpSystem.h"         /* For HelpSystem::ConvertActionToKMIcon */
#include "Interface.h"          /* For class GInterface */
#include "InterfaceHandState.h" /* For HAND_STATE_BUBBLE_GRIP */
#include "Player.h"             /* For class GPlayer */

#define BUBBLE_DEFAULT_COLOUR       0xff3bbded
#define BUBBLE_SCREEN_MARGIN        20
#define BUBBLE_MIN_DISTANCE         1.0f
#define BUBBLE_NEAR_DISTANCE        3.0f
#define BUBBLE_NEAR_FADE_DISTANCE   8.0f
#define BUBBLE_FAR_DISTANCE         450.0f
#define BUBBLE_FAR_FADE_DISTANCE    300.0f
#define BUBBLE_FAR_SCALE            7.0f
#define BUBBLE_CORNER_DIVISOR       5.0f
#define BUBBLE_TAIL_OFFSET          10.0f
#define BUBBLE_TAIL_SIDE_TOLERANCE  0.1f
#define BUBBLE_TAIL_POSITION_MIN    0.2f
#define BUBBLE_TAIL_POSITION_RANGE  0.6f
#define BUBBLE_DISPLAY_TIME         3.0f
#define BUBBLE_MIN_COLLIDE_TIME     0.1f
#define BUBBLE_FADE_TIME            5000.0f
#define BUBBLE_Z_BIAS               5.0f
#define BUBBLE_SHADOW_Z_OFFSET      1.0f
#define BUBBLE_TEXT_Z_OFFSET        2.0f
#define BUBBLE_SHADOW_OFFSET        2.0f
#define BUBBLE_SHADOW_ALPHA         0x80
#define BUBBLE_TEXT_SCALE           1.0f
#define BUBBLE_ICON_SPACING         0.7f
#define BUBBLE_KEY_RAISE_DIVISOR    5.0f
#define BUBBLE_TOKEN_PREFIX_LENGTH  2
#define BUBBLE_TOKEN_DIGITS         2
#define BUBBLE_TOKEN_LENGTH         (BUBBLE_TOKEN_PREFIX_LENGTH + BUBBLE_TOKEN_DIGITS)
#define BUBBLE_ARROW_FLASH_PERIOD   750
#define BUBBLE_ARROW_FLASH_ON_TIME  400
#define BUBBLE_ARROW_DISTANCE       100.0f
#define BUBBLE_ARROW_SIZE_DIVISOR   5.0f
#define BUBBLE_ARROW_BORDER_DIVISOR 9.0f
#define BUBBLE_ARROW_INSET          0.8f
#define BUBBLE_ARROW_TEXTURE_SIZE   256.0f
#define BUBBLE_UP_ARROW_U_MIN       (225.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_UP_ARROW_V_MIN       (33.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_UP_ARROW_U_MAX       (255.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_UP_ARROW_V_MAX       (63.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_DOWN_ARROW_U_MIN     (193.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_DOWN_ARROW_V_MIN     (1.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_DOWN_ARROW_U_MAX     (223.0f / BUBBLE_ARROW_TEXTURE_SIZE)
#define BUBBLE_DOWN_ARROW_V_MAX     (31.0f / BUBBLE_ARROW_TEXTURE_SIZE)

#define GESTURE_NUM_POINTS        4
#define GESTURE_NUM_TRIANGLES     2
#define GESTURE_TEXTURE_CELLS     4
#define GESTURE_TEXTURE_CELL_SIZE (1.0f / GESTURE_TEXTURE_CELLS)

// BW1W120 005763e0 BW1M119 01332720
float DrawGesture(GESTURE_TYPE type, float left, float top, float fade_top, float right, float fade_bottom,
                  float bottom, float y, float z, float size, unsigned long colour);
// BW1W120 005760c0 BW1M119 013323b0
bool ProcessGestureOrKey(wchar_t* text, float text_scale, float scale, float text_size, float shadow_offset, float left,
                         float top, float fade_top, float right, float box_bottom, float fade_bottom, float bottom,
                         float z, float& y, float& height, LH3DColor& colour, LH3DColor& shadow_colour);
// BW1W120 005766e0 BW1M119 01332270
float AdjustBubbleZForPitch(float z);

void Bubble::SetDefaultSizes(float width, float height, float text_size)
{
	width *= 0.5f;
	height *= 0.5f;
	Near.Set(width * 2.0f, height * 2.0f, BUBBLE_NEAR_DISTANCE, BUBBLE_NEAR_FADE_DISTANCE,
	         width / BUBBLE_CORNER_DIVISOR, text_size);
	Far.Set(width / BUBBLE_FAR_SCALE, height / BUBBLE_FAR_SCALE, BUBBLE_FAR_DISTANCE, BUBBLE_FAR_FADE_DISTANCE,
	        width / BUBBLE_FAR_SCALE / BUBBLE_CORNER_DIVISOR, text_size / BUBBLE_FAR_SCALE);
}

bool32_t Bubble::CalcPos(LHPoint& pos, float x_offset, float tail_position)
{
	Pos = pos;
	LHPoint camera = LH3DTech::g_world_to_camera * pos;
	float   depth = camera.z;
	if (depth < BUBBLE_MIN_DISTANCE)
	{
		return false;
	}
	float frac = GatheringText::GetFrac(depth, Near.Distance, Far.Distance);
	Current.Blend(Near, Far, frac);
	float middle = (Near.Distance + Far.Distance) * 0.5f;
	float fadeNear = Near.FadeDistance;
	float fadeFar = Far.FadeDistance;
	DistanceAlpha = 1.0f;
	if (fadeNear > middle)
	{
		fadeNear = middle;
	}
	if (fadeFar < middle)
	{
		fadeFar = middle;
	}
	if (depth < fadeNear)
	{
		DistanceAlpha *= GatheringText::GetFrac(depth, Near.Distance, fadeNear);
	}
	if (depth > fadeFar)
	{
		DistanceAlpha *= 1.0f - GatheringText::GetFrac(depth, fadeFar, Far.Distance);
	}
	Current.Distance = depth;
	TailPosition = tail_position;
	Vertex3D      projected;
	unsigned long clip;
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	LH3DTech::TransformProjectFlagClipping(&projected, &clip, &pos, 1);
	if (clip & LH3DTech::CLIP_CODE_FAR)
	{
		return false;
	}
	if (clip)
	{
		LH3DTech::TransformProject(&projected, &pos, 1);
	}
	ScreenPos.x = projected.x + x_offset - Current.Width * tail_position;
	ScreenPos.y = projected.y - Current.CornerSize - Current.Height;
	TailOnRight = x_offset < -BUBBLE_TAIL_SIDE_TOLERANCE;
	Region.start.x = ScreenPos.x;
	Region.end.x = ScreenPos.x + Current.Width;
	Region.start.y = ScreenPos.y;
	Region.end.y = ScreenPos.y + Current.Height;
	return true;
}

bool ProcessGestureOrKey(wchar_t* text, float text_scale, float scale, float text_size, float shadow_offset, float left,
                         float top, float fade_top, float right, float box_bottom, float fade_bottom, float bottom,
                         float z, float& y, float& height, LH3DColor& colour, LH3DColor& shadow_colour)
{
	if (text[0] == L'$' && text[1] == L'g')
	{
		int gesture = _wtoi(text + BUBBLE_TOKEN_PREFIX_LENGTH);
		if (gesture > GESTURE_TYPE_NONE && gesture < GESTURE_TYPE_LAST)
		{
			float size = (text_scale * scale * text_size) * 2.0f;
			y -= size;
			height += size;
			DrawGesture((GESTURE_TYPE)gesture, left + shadow_offset, top + shadow_offset, fade_top + shadow_offset,
			            right + shadow_offset, fade_bottom + shadow_offset, bottom + shadow_offset, y + shadow_offset,
			            z - BUBBLE_SHADOW_Z_OFFSET, size, shadow_colour.GetColor());
			DrawGesture((GESTURE_TYPE)gesture, left, top, fade_top, right, fade_bottom, bottom, y,
			            z - BUBBLE_TEXT_Z_OFFSET, size, colour.GetColor());
		}
	}
	else if (text[0] == L'$' && text[1] == L'm')
	{
		BINDABLE_ACTIONS action = (BINDABLE_ACTIONS)_wtoi(text + BUBBLE_TOKEN_PREFIX_LENGTH);
		CH_ANIMTYPE      animType;
		int              key;
		int              mouseType;
		if (GGame::g_game->help_system != NULL &&
		    HelpSystem::ConvertActionToKMIcon(action, &animType, &key, &mouseType))
		{
			float size = (text_scale * scale * text_size) * 2.0f;
			y -= size;
			height += size;
			float iconTop = y;
			float iconBottom = y + size;
			float centre = (left + right) * 0.5f;
			if (iconTop > top && iconBottom < box_bottom)
			{
				float alpha = 1.0f;
				if (iconTop < fade_top)
				{
					float frac = (iconTop - top) / (fade_top - top);
					alpha *= frac > 0.0f ? min(frac, 1.0f) : 0.0f;
				}
				if (iconBottom > fade_bottom)
				{
					float frac = (iconBottom - box_bottom) / (fade_bottom - box_bottom);
					alpha *= frac > 0.0f ? min(frac, 1.0f) : 0.0f;
				}
				LH3DColor keyColour(0xff, 0xff, 0xff, alpha * LH3D_COLOR_CHANNEL_MAX);
				CameraHelp::DrawKeyOrMouse(animType, key, mouseType, L"", size * 0.5f + centre,
				                           (iconTop + iconBottom) * 0.5f - size / BUBBLE_KEY_RAISE_DIVISOR, size,
				                           KEYALIGN_ANCHOR_RIGHT, &keyColour, NULL, 0);
			}
		}
	}
	else
	{
		return false;
	}
	return true;
}

float DrawGesture(GESTURE_TYPE type, float left, float top, float fade_top, float right, float fade_bottom,
                  float bottom, float y, float z, float size, unsigned long colour)
{
	if (right - left < size)
	{
		return 0.0f;
	}
	if (bottom - top < size)
	{
		return 0.0f;
	}
	if (y > bottom)
	{
		return 0.0f;
	}
	LH3DColor colours[GESTURE_NUM_POINTS] = {colour, colour, colour, colour};
	float     uvs[GESTURE_NUM_POINTS][2] = {
		{0.0f, 0.0f},
		{GESTURE_TEXTURE_CELL_SIZE, 0.0f},
		{GESTURE_TEXTURE_CELL_SIZE, GESTURE_TEXTURE_CELL_SIZE},
		{0.0f, GESTURE_TEXTURE_CELL_SIZE},
	};
	long          indices[GESTURE_NUM_TRIANGLES * 3] = {0, 1, 3, 1, 2, 3};
	long          cell;
	LH3DMaterial* material = GlobalTextures::GetGestureMaterialAndOffset(type, &cell);
	float         u = (cell % GESTURE_TEXTURE_CELLS) * GESTURE_TEXTURE_CELL_SIZE;
	float         v = (cell / GESTURE_TEXTURE_CELLS) * GESTURE_TEXTURE_CELL_SIZE;
	for (int i = 0; i < GESTURE_NUM_POINTS; i++)
	{
		uvs[i][0] += u;
		uvs[i][1] += v;
	}
	LHPoint points[GESTURE_NUM_POINTS];
	points[0].y = points[1].y = y;
	float centre = (left + right) * 0.5f;
	float halfSize = size * 0.5f;
	points[0].x = points[3].x = centre - halfSize;
	points[1].x = points[2].x = centre + halfSize;
	points[2].y = points[3].y = y + size;
	float clip = (top - y) / size;
	if (clip >= 1.0f)
	{
		return size;
	}
	if (clip > 0.0f)
	{
		clip *= GESTURE_TEXTURE_CELL_SIZE;
		points[0].y = points[1].y = top;
		uvs[0][1] += clip;
		uvs[1][1] += clip;
	}
	clip = (y + size - bottom) / size;
	if (clip >= 1.0f)
	{
		return size;
	}
	if (clip > 0.0f)
	{
		clip *= GESTURE_TEXTURE_CELL_SIZE;
		points[2].y = points[3].y = bottom;
		uvs[2][1] -= clip;
		uvs[3][1] -= clip;
	}
	points[0].z = points[1].z = points[2].z = points[3].z = z;
	LH3DTech::Draw3DScreenTriangle(GESTURE_NUM_POINTS, points, colours, (float*)uvs, GESTURE_NUM_TRIANGLES, indices,
	                               material, false);
	return size;
}

float AdjustBubbleZForPitch(float z)
{
	LHPoint focus = LH3DTech::g_camera.foc;
	LHPoint pos = LH3DTech::g_camera.pos;
	float   heading;
	float   pitch;
	GCamera::GetHeadingAndPitchFromPoints(pos, focus, &heading, &pitch);
	pitch = (fabs(pitch) > 0.0f ? min(fabs(pitch), HALF_PI_F) : 0.0f) / HALF_PI_F;
	z -= BUBBLE_Z_BIAS;
	float minZ = LH3DTech::GetNearClipping() * 2.0f;
	if (z < minZ)
	{
		z = minZ;
	}
	z -= minZ;
	z -= fabs(z) * (pitch * pitch);
	z += minZ;
	if (z < minZ)
	{
		z = minZ;
	}
	return z;
}

void Bubble::Draw()
{
	if (Alpha > 0.0f)
	{
		if (Alpha > 1.0f)
		{
			Alpha = 1.0f;
		}
		unsigned long colour =
			(Colour.GetColor() & LH3D_COLOR_RGB_MASK) - ((int)(Alpha * -LH3D_COLOR_CHANNEL_MAX) << 24);
		float left = ScreenPos.x;
		float top = ScreenPos.y;
		float right = ScreenPos.x + Current.Width;
		float bottom = ScreenPos.y + Current.Height;
		float z = Current.Distance;
		float cornerSize = Current.CornerSize;
		float tailX = (right - left) * TailPosition + left;
		z = AdjustBubbleZForPitch(z);
		GatheringText::DrawBubble(left, top, right, bottom, z, cornerSize, tailX, TailOnRight, colour, true, 0,
		                          LH3D_COLOR_CHANNEL_MAX);
		if (GetTickCount() % BUBBLE_ARROW_FLASH_PERIOD < BUBBLE_ARROW_FLASH_ON_TIME)
		{
			LH3DColor arrowColour(0xff, 0xff, 0x00, LH3D_COLOR_OPAQUE);
			float     arrowSize = (bottom - top) / BUBBLE_ARROW_SIZE_DIVISOR;
			float     arrowOffset = -arrowSize / BUBBLE_ARROW_BORDER_DIVISOR;
			SetupThing::DrawAlpha = Colour.a / 2;
			float arrowX = right - arrowSize * BUBBLE_ARROW_INSET;
			if (CanScrollUp)
			{
				SetupThing::DrawBox(arrowX + arrowOffset + arrowSize * 0.25f, top + arrowSize * 0.5f + arrowOffset,
				                    arrowX - arrowOffset + arrowSize * 0.75f, top + arrowSize - arrowOffset,
				                    BUBBLE_UP_ARROW_U_MIN, BUBBLE_UP_ARROW_V_MIN, BUBBLE_UP_ARROW_U_MAX,
				                    BUBBLE_UP_ARROW_V_MAX, LH3DAtmos::mat0, &arrowColour, false, -SETUP_NO_CLIP,
				                    SETUP_NO_CLIP, false, BUBBLE_ARROW_DISTANCE);
			}
			if (CanScrollDown)
			{
				SetupThing::DrawBox(arrowX + arrowOffset + arrowSize * 0.25f, bottom - arrowSize + arrowOffset,
				                    arrowX - arrowOffset + arrowSize * 0.75f, bottom - arrowSize * 0.5f - arrowOffset,
				                    BUBBLE_DOWN_ARROW_U_MIN, BUBBLE_DOWN_ARROW_V_MIN, BUBBLE_DOWN_ARROW_U_MAX,
				                    BUBBLE_DOWN_ARROW_V_MAX, LH3DAtmos::mat0, &arrowColour, false, -SETUP_NO_CLIP,
				                    SETUP_NO_CLIP, false, BUBBLE_ARROW_DISTANCE);
			}
		}
		float margin = cornerSize * (1.0f / 3.0f);
		float textSize = Current.TextSize;
		left += margin;
		right -= margin;
		float fadeTop = (bottom - top) * (1.0f / 3.0f) + top;
		float fadeBottom = bottom - margin;
		if (fadeBottom < fadeTop)
		{
			fadeBottom = fadeTop;
		}
		float y = fadeBottom + TextScroll;
		float textBottom = margin * 0.25f + fadeBottom;
		if (Callback != NULL)
		{
			TextScale = textSize;
			int index = 0;
			TextHeight = 0.0f;
			while (y >= top)
			{
				wchar_t*       text = NULL;
				LH3DColor      textColour;
				float          scale;
				GatheringText* font;
				bool32_t       more = Callback(index, User, &textColour, &text, &scale, &font);
				LH3DColor      shadowColour(0x00, 0x00, 0x00, Alpha * BUBBLE_SHADOW_ALPHA);
				textColour.a = textColour.a * Alpha;
				while (more && font != NULL && text != NULL)
				{
					wchar_t  buffer[1000];
					wchar_t* next;
					if ((text[0] == L'$' && text[1] == L'g') || (text[0] == L'$' && text[1] == L'm'))
					{
						wcsncpy(buffer, text, BUBBLE_TOKEN_LENGTH);
						buffer[BUBBLE_TOKEN_LENGTH] = L'\0';
						text = buffer;
						next = text[BUBBLE_TOKEN_LENGTH] != L'\0' ? &text[BUBBLE_TOKEN_LENGTH] : NULL;
					}
					else
					{
						wchar_t* found = wcsstr(text, L"$g");
						if (found == NULL)
						{
							found = wcsstr(text, L"$m");
						}
						if (found == NULL)
						{
							next = NULL;
						}
						else
						{
							ProcessGestureOrKey(found, BUBBLE_TEXT_SCALE, scale, textSize, BUBBLE_SHADOW_OFFSET, left,
							                    top, fadeTop, right, bottom, fadeBottom, textBottom, z, y, TextHeight,
							                    textColour, shadowColour);
							float space = BUBBLE_TEXT_SCALE * scale * textSize * BUBBLE_ICON_SPACING;
							y -= space;
							TextHeight += space;
							int length = found - text;
							wcsncpy(buffer, text, length);
							buffer[length] = L'\0';
							text = buffer;
							next = found;
						}
					}
					if (!ProcessGestureOrKey(text, BUBBLE_TEXT_SCALE, scale, textSize, BUBBLE_SHADOW_OFFSET, left, top,
					                         fadeTop, right, bottom, fadeBottom, textBottom, z, y, TextHeight,
					                         textColour, shadowColour))
					{
						float lineHeight =
							font->DrawTextA(text, left, top, fadeTop, right, fadeBottom, textBottom, y, z,
						                    BUBBLE_TEXT_SCALE * scale * textSize, NULL, false, false, true);
						y -= lineHeight;
						TextHeight += lineHeight;
						font->DrawTextA(text, left + BUBBLE_SHADOW_OFFSET, top + BUBBLE_SHADOW_OFFSET,
						                fadeTop + BUBBLE_SHADOW_OFFSET, right + BUBBLE_SHADOW_OFFSET,
						                fadeBottom + BUBBLE_SHADOW_OFFSET, textBottom + BUBBLE_SHADOW_OFFSET,
						                y + BUBBLE_SHADOW_OFFSET, z - BUBBLE_SHADOW_Z_OFFSET,
						                BUBBLE_TEXT_SCALE * scale * textSize, &shadowColour, true, true, true);
						font->DrawTextA(text, left, top, fadeTop, right, fadeBottom, textBottom, y,
						                z - BUBBLE_TEXT_Z_OFFSET, BUBBLE_TEXT_SCALE * scale * textSize, &textColour,
						                true, true, true);
					}
					text = next;
				}
				index++;
				if (!more)
				{
					break;
				}
			}
		}
	}
}

void Bubble::AddDrawing(LH3DColor& colour, BubbleTextCallback callback, unsigned long user, float text_scroll,
                        float alpha)
{
	if (LH3DRender::g_started_frame)
	{
		User = user;
		TextScroll = text_scroll;
		Alpha = alpha * DistanceAlpha;
		Colour = colour;
		Callback = callback;
		if (Alpha > 0.0f)
		{
			LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&Bubble::Draw,
			                                  LH3DTech::GetValueForZSorter(Pos), 0);
		}
	}
}

static inline void ShowIncomingText(GatheringBox* box)
{
	if (box->NumIncoming > 0 && box->GetTopIncomingType() == INCOMINGTEXTTYPE_CHAT)
	{
		box->NumIncoming--;
		IncomingBubbleInfo* info = box->GetTopIncoming();
		if (info != NULL)
		{
			box->IncomingList.Remove(info);
			delete info;
			info = box->GetTopIncoming();
			if (info != NULL)
			{
				info->Time = GetTickCount();
			}
		}
	}
	box->UpdateIncomingText();
}

void Bubble::UpdateAndDraw(BubbleTextCallback callback, unsigned long user, LHPoint pos, GPlayer* player,
                           unsigned long colour)
{
	if (colour == 0)
	{
		colour = BUBBLE_DEFAULT_COLOUR;
		if (player != NULL)
		{
			colour = player->GetPlayerColour();
		}
	}
	if (DisplayTime > 0.0f)
	{
		float x;
		float y;
		if (GGame::g_game->GetCamera()->TranslatePointToScreen(&x, &y, &pos))
		{
			if (x > BUBBLE_SCREEN_MARGIN && y > BUBBLE_SCREEN_MARGIN &&
			    x < LHSys::GetScreen().width - BUBBLE_SCREEN_MARGIN &&
			    y < LHSys::GetScreen().height - BUBBLE_SCREEN_MARGIN && player == GGame::g_game->MyPlayer())
			{
				ShowIncomingText(FrontEnd::GatheringDialog);
			}
			float side = 2.0f * (x / LHSys::GetScreen().width) - 1.0f;
			CLAMP(side, -1.0f, 1.0f);
			float xOffset = side > 0.0f ? -BUBBLE_TAIL_OFFSET : BUBBLE_TAIL_OFFSET;
			if (CalcPos(pos, xOffset, fabs(side) * BUBBLE_TAIL_POSITION_RANGE + BUBBLE_TAIL_POSITION_MIN))
			{
				LH3DColor bubbleColour(LH3D_HALF_COLOR_OPAQUE(colour));
				float     maxScroll;
				if (TextHeight != 0.0f)
				{
					maxScroll = TextHeight - (Region.end.y - Region.start.y - 2.0f * Current.CornerSize);
				}
				else
				{
					maxScroll = 0.0f;
				}
				if (TextScale != 0.0f)
				{
					maxScroll /= TextScale;
				}
				if (ScrollPos > maxScroll && TextHeight != 0.0f)
				{
					ScrollPos = maxScroll;
				}
				if (ScrollPos < 0.0f)
				{
					ScrollPos = 0.0f;
				}
				CanScrollDown = ScrollPos > 1.0f;
				CanScrollUp = ScrollPos < maxScroll - 1.0f;
				AddDrawing(bubbleColour, callback, user, ScrollPos * TextScale,
				           DisplayTime > 1.0f ? 1.0f : DisplayTime);
				LHCoord mouse = LHSys::GetMouse().Pos();
				if (GGame::g_game->MyInterface()->interface_collide.bubble == this &&
				    GGame::g_game->MyInterface()->GetHandState() == HAND_STATE_BUBBLE_GRIP)
				{
					if (TextScale != 0.0f)
					{
						if (!Gripped)
						{
							GripPos = mouse;
						}
						ScrollPos += (mouse.y - GripPos.y) / TextScale;
						GripPos = mouse;
					}
					Gripped = true;
				}
				else
				{
					Gripped = false;
				}
#ifdef VERSION_BW1WCI
				if (mouse.x > Region.start.x && mouse.x < Region.end.x && mouse.y > Region.start.y &&
				    mouse.y < Region.end.y && Current.Distance > BUBBLE_MIN_DISTANCE &&
				    DisplayTime > BUBBLE_MIN_COLLIDE_TIME)
#else
				if (mouse.x > Region.start.x && mouse.x < Region.end.x && mouse.y > Region.start.y &&
				    mouse.y < Region.end.y)
#endif
				{
					GGame::g_game->MyInterface()->SendBubbleCollision(this, Current.Distance);
					DisplayTime = BUBBLE_DISPLAY_TIME;
				}
			}
		}
	}
	DisplayTime -= LH3DTech::GetGameTimeInc() / BUBBLE_FADE_TIME;
	if (DisplayTime < 0.0f)
	{
		DisplayTime = 0.0f;
	}
}
