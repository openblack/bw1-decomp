#include "VillagerNames.h"

#include <wchar.h>   /* For wcslen, wcsncpy */
#include <windows.h> /* Before LHSystem.h */

#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For LH3DBlendColor */
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::ProjectPoint */
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For struct GatheringText */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>        /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For NEW */

#include "Bubble.h"     /* For AdjustBubbleZForPitch */
#include "CellSize.h"   /* For CellSize */
#include "Game.h"       /* For GGame::g_game */
#include "HelpSystem.h" /* For struct HelpSystem */
#include "alexmfc.h"    /* For struct SetupThing */

VillagerNameBlock* VillagerNameBlock::First;
VillagerName*      VillagerName::First;

VillagerName* VillagerNameBlock::Alloc()
{
	VillagerNameBlock* block;
	for (block = First; block; block = block->Next)
	{
		if (block->NumAllocated < block->Size)
		{
			block->NumInUse++;
			return &block->Names[block->NumAllocated++];
		}
	}
	block = NEW(22) VillagerNameBlock;
	block->NumInUse++;
	return &block->Names[block->NumAllocated++];
}

void VillagerNameBlock::Delete(VillagerName* name)
{
	for (VillagerNameBlock* block = First; block; block = block->Next)
	{
		if (name >= block->Names && name < &block->Names[block->Size])
		{
			if (--block->NumInUse <= 0)
			{
				delete block;
			}
			return;
		}
	}
}

void VillagerNameBlock::DeleteAll()
{
	while (First)
	{
		delete First;
	}
	VillagerName::First = NULL;
}

VillagerNameBlock::VillagerNameBlock()
{
	Size = VILLAGER_NAME_BLOCK_SIZE;
	NumInUse = 0;
	NumAllocated = 0;
	Names = NEW(53) VillagerName[Size];
	Next = First;
	First = this;
}

void VillagerNameBlock::FreeAll()
{
	delete[] Names;
	if (First == this)
	{
		First = Next;
	}
	else
	{
		for (VillagerNameBlock* block = First; block; block = block->Next)
		{
			if (block->Next == this)
			{
				block->Next = Next;
				break;
			}
		}
	}
}

VillagerName* VillagerName::Add(float scale, LHPoint point, wchar_t* text, LH3DColor& color)
{
	if (GGame::g_game->help_system && GGame::g_game->help_system->WideScreen)
	{
		return NULL;
	}
	if (scale < VILLAGER_NAME_MIN_SCALE)
	{
		return NULL;
	}
	if (scale > 1.0f)
	{
		scale = 1.0f;
	}

	int           x;
	int           y;
	float         depth;
	VillagerName* name = NULL;
	if (LH3DTech::ProjectPoint(&point, &x, &y, &depth) == LH3D_PROJECT_ON_SCREEN)
	{
		name = VillagerNameBlock::Alloc();
		name->NumLines = 1;
		name->Point = point;
		name->Scale = scale;
		if (color.r < VILLAGER_NAME_DARK_LEVEL && color.g < VILLAGER_NAME_DARK_LEVEL &&
		    color.b < VILLAGER_NAME_DARK_LEVEL)
		{
			*(uint32_t*)&color = LH3D_COLOR_RGB_MASK;
		}
		*(uint32_t*)&color = LH3DBlendColor(*(uint32_t*)&color, LH3D_COLOR_WHITE, VILLAGER_NAME_LIGHTEN);
		name->Color = color;
		name->Lines[0] = name->Text;
		wcsncpy(name->Text, text, ARRAY_SIZE(name->Text) - 1);
		name->Text[ARRAY_SIZE(name->Text) - 1] = L'\0';
		for (int i = 0; i < (int)ARRAY_SIZE(name->Text) - 1; i++)
		{
			if (text[i] == L'\0')
			{
				break;
			}
			if (text[i] == L'\n')
			{
				name->Text[i] = L'\0';
				name->Lines[name->NumLines] = &name->Text[i + 1];
				name->NumLines++;
				if (name->NumLines == ARRAY_SIZE(name->Lines))
				{
					break;
				}
			}
		}
		name->ArrowX = x;
		name->ArrowY = y;
		name->Depth = depth;
		name->TextSize = scale * VILLAGER_NAME_TEXT_SIZE;

		float          width = 0.0f;
		GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
		for (int line = 0; line < name->NumLines; line++)
		{
			float lineWidth = font->GetStringWidth(name->Lines[line], wcslen(name->Lines[line]), name->TextSize, 1.0f) +
			                  scale * VILLAGER_NAME_LINE_MARGIN;
			if (lineWidth > width)
			{
				width = lineWidth;
			}
		}
		if (LHSys::GetScreen().width < width)
		{
			width = LHSys::GetScreen().width / 2;
		}
		name->Left = x - width * 0.5f;
		if (name->Left < 0.0f)
		{
			name->Left = 0.0f;
		}
		name->Right = width + name->Left;
		float screenWidth = LHSys::GetScreen().width;
		if (name->Right > screenWidth)
		{
			name->Right = screenWidth;
			name->Left = screenWidth - width;
		}
		name->Bottom = name->ArrowY - VILLAGER_NAME_ARROW_LENGTH;
		name->TextPadding = scale * VILLAGER_NAME_TEXT_PADDING;
		name->Top = name->Bottom - (name->NumLines * name->TextSize + scale * (VILLAGER_NAME_TEXT_PADDING * 2));

		for (VillagerName* other = First; other && other->Left < name->Right; other = other->Next)
		{
		retry:
			if (other->Left < name->Right && other->Right > name->Left && other->Top <= name->Bottom &&
			    other->Bottom >= name->Top)
			{
				name->Top -= name->Bottom;
				name->Bottom = other->Top - VILLAGER_NAME_STACK_GAP;
				name->Top += name->Bottom;
				if (other->Top < 0.0f)
				{
					break;
				}
				other = First;
				goto retry;
			}
		}
		if (name->Top < 0.0f)
		{
			VillagerNameBlock::Delete(name);
			return NULL;
		}
		VillagerName** link = &First;
		for (VillagerName* after = First; after && after->Left < name->Left; after = after->Next)
		{
			link = &after->Next;
		}
		name->Next = *link;
		*link = name;
	}
	return name;
}

void VillagerName::Draw()
{
	Scale = Scale > 0.0f ? min(Scale, 1.0f) : 0.0f;
	int   alpha = (int)(Scale * VILLAGER_NAME_BUBBLE_ALPHA);
	float z = AdjustBubbleZForPitch(Depth);
	GatheringText::DrawBubble(Left, Top, Right, Bottom, z, (Bottom - Top) * VILLAGER_NAME_CORNER_FRACTION, 0.0f, false,
	                          LH3D_COLOR_BLACK, false, alpha, alpha);
	SetupThing::DrawAlpha = alpha;
	if (GatheringText::bubmat)
	{
		SetupThing::DrawBox((int)(ArrowX - VILLAGER_NAME_STEM_HALF_WIDTH), (int)Bottom,
		                    (int)(ArrowX + VILLAGER_NAME_STEM_HALF_WIDTH), (int)(ArrowY - VILLAGER_NAME_HEAD_LENGTH),
		                    VILLAGER_NAME_STEM_U_MIN, VILLAGER_NAME_STEM_V, VILLAGER_NAME_STEM_U_MAX,
		                    VILLAGER_NAME_STEM_V, GatheringText::bubmat, &LH3DColor(0, 0, 0, LH3D_COLOR_OPAQUE), false,
		                    0, LHSys::GetScreen().height, true, z);
		SetupThing::DrawBox((int)(ArrowX - VILLAGER_NAME_HEAD_HALF_WIDTH), (int)(ArrowY - VILLAGER_NAME_HEAD_LENGTH),
		                    (int)(ArrowX + VILLAGER_NAME_HEAD_HALF_WIDTH), (int)ArrowY, VILLAGER_NAME_HEAD_U_MIN,
		                    VILLAGER_NAME_HEAD_V_MIN, VILLAGER_NAME_HEAD_U_MAX, VILLAGER_NAME_HEAD_V_MAX,
		                    GatheringText::bubmat, &LH3DColor(0, 0, 0, LH3D_COLOR_OPAQUE), false, 0,
		                    LHSys::GetScreen().height, true, z);
	}
	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	Color.a = (uint8_t)(Scale * LH3D_COLOR_CHANNEL_MAX);
	for (int i = 0; i < NumLines; i++)
	{
		uint16_t height = LHSys::GetScreen().height;
		font->DrawTextRaw(Lines[i], wcslen(Lines[i]), Left + TextPadding, TextPadding + Top + i * TextSize, z, TextSize,
		                  &Color, true, NULL, 0.0f, height);
	}
	Remove();
}
