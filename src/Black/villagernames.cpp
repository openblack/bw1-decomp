#include "VillagerNames.h"

#include <wchar.h>   /* For wcslen, wcsncpy */
#include <windows.h> /* Before LHSystem.h */

#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>  /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DText.h>    /* For struct GatheringText */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For LH3DZSorter */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>           /* For LHSys::TheSystem */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For NEW */

#include "Bubble.h"     /* For AdjustBubbleZForPitch */
#include "CellSize.h"
#include "Game.h"       /* For GGame::g_game */
#include "HelpSystem.h" /* For struct HelpSystem */
#include "alexmfc.h"    /* For struct SetupThing */

VillagerNameBlock* VillagerNameBlock::First;
VillagerName* VillagerName::First;

VillagerName* VillagerNameBlock::Alloc()
{
	for (VillagerNameBlock* block = First; block; block = block->Next)
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
	if (scale < 0.01f)
	{
		return NULL;
	}
	if (scale > 1.0f)
	{
		scale = 1.0f;
	}

	int x;
	int y;
	float depth;
	VillagerName* name = NULL;
	if (LH3DTech::ProjectPoint(&point, &x, &y, &depth) == LH3D_PROJECT_ON_SCREEN)
	{
		name = VillagerNameBlock::Alloc();
		name->NumLines = 1;
		name->Point = point;
		name->Scale = scale;
		if (color.r < 10 && color.g < 10 && color.b < 10)
		{
			*(uint32_t*)&color = 0xffffff;
		}
		*(uint32_t*)&color = LH3DBlendColor(*(uint32_t*)&color, 0xffffffff, 0x80);
		name->Color = color;
		name->Lines[0] = name->Text;
		wcsncpy(name->Text, text, 0xff);
		name->Text[0xff] = 0;
		for (int i = 0; i < 0xff; i++)
		{
			if (text[i] == 0)
			{
				break;
			}
			if (text[i] == '\n')
			{
				name->Text[i] = 0;
				name->Lines[name->NumLines] = &name->Text[i + 1];
				name->NumLines++;
				if (name->NumLines == 8)
				{
					break;
				}
			}
		}
		name->ArrowX = (float)x;
		name->ArrowY = (float)y;
		name->Depth = depth;
		name->TextSize = scale * 16.0f;

		float width = 0.0f;
		GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
		for (int line = 0; line < name->NumLines; line++)
		{
			float lineWidth =
			    font->GetStringWidth(name->Lines[line], wcslen(name->Lines[line]), name->TextSize, 1.0f) + scale * 6.0f;
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
		name->Bottom = name->ArrowY - 50.0f;
		name->TextPadding = scale * 2.0f;
		name->Top = name->Bottom - (name->NumLines * name->TextSize + scale * 4.0f);

		for (VillagerName* other = First; other && other->Left < name->Right; other = other->Next)
		{
		retry:
			if (other->Left < name->Right && other->Right > name->Left && other->Top <= name->Bottom &&
			    other->Bottom >= name->Top)
			{
				name->Top -= name->Bottom;
				name->Bottom = other->Top - 1.0f;
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
	int alpha = (int)(Scale * 120.0f);
	float z = AdjustBubbleZForPitch(Depth);
	GatheringText::DrawBubble(Left, Top, Right, Bottom, z, (Bottom - Top) * 0.25f, 0.0f, false, 0xff000000, false,
	                          alpha, alpha);
	SetupThing::DrawAlpha = alpha;
	if (GatheringText::bubmat)
	{
		SetupThing::DrawBox((int)(ArrowX - 3.0f), (int)Bottom, (int)(ArrowX + 3.0f), (int)(ArrowY - 16.0f), 0.53125f,
		                    0.05f, 0.59375f, 0.05f, GatheringText::bubmat, &LH3DColor(0, 0, 0, 0xff), false, 0,
		                    LHSys::GetScreen().height, true, z);
		SetupThing::DrawBox((int)(ArrowX - 6.0f), (int)(ArrowY - 16.0f), (int)(ArrowX + 6.0f), (int)ArrowY, 0.5f,
		                    0.05f, 0.625f, 0.125f, GatheringText::bubmat, &LH3DColor(0, 0, 0, 0xff), false, 0,
		                    LHSys::GetScreen().height, true, z);
	}
	GatheringText* font = GatheringText::GetGameFont(GAME_FONT_DEFAULT);
	Color.a = (uint8_t)(Scale * 255.0f);
	for (int i = 0; i < NumLines; i++)
	{
		uint16_t height = LHSys::GetScreen().height;
		font->DrawTextRaw(Lines[i], wcslen(Lines[i]), Left + TextPadding, TextPadding + Top + i * TextSize, z, TextSize,
		                  &Color, true, NULL, 0.0f, height);
	}
	Remove();
}
