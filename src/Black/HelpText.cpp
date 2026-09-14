#include "HelpText.h"

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "HelpSystem.h"
#include "Setup.h"

#include <stdlib.h>
#include <wchar.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>

HelpTextDataBase HelpTextDataBase::HelpTextDatabase;
HelpTextDataBase HelpTextDataBase::MultiplayerTextDatabase;

HelpTextDataBase::HelpTextDataBase() : array(NULL), count(0) {}

HelpTextDataBase::~HelpTextDataBase()
{
	DeleteAll();
}

void HelpTextDataBase::DeleteAll()
{
	if (count != 0)
	{
		delete[] array;
		count = 0;
	}
}

HelpTextData::~HelpTextData()
{
	if (Text != NULL)
	{
		::operator delete(Text);
	}
}

void HelpTextData::SetData(int index, HELP_TEXT_NARRATOR narrator, char16_t* sound, char16_t* text)
{
	field_0x0 = narrator;
	field_0x4 = index;
	Text = (char16_t*)::operator new((wcslen(text) + 1) * sizeof(char16_t), "C:\\dev\\MP\\Black\\HelpText.cpp", 0x32);
	wcscpy(Text, text);
}

HelpText::HelpText(const LHRegion& region) : Region(region)
{
	SetToZero();
	LH3DRender::RegisterFinishFrameCallback(20000, true, Draw3DTextStub, this);
}

HelpText::~HelpText()
{
	LH3DRender::RemoveFinishFrameCallback(Draw3DTextStub, this);
}

void HelpText::ClearTextDisplayed()
{
	TextCleared = 1;
}

void HelpText::CloseDialogWindow()
{
	DialogOpen = 0;
	ClearTextDisplayed();
}

void HelpText::Reset(bool clear_history)
{
	if (clear_history)
	{
		for (int i = 0; i < 6; ++i)
		{
			TextHistory[i].Text = NULL;
			TextHistory[i].Narrator = HELP_TEXT_NARRATOR_NONE;
		}
		LatestText = 0;
		CurrentText = 0;
	}
	Font = NULL;
	TextCleared = 0;
	field_0xb0 = 0;
	DialogOpen = 0;
}

HelpText* HelpText::Create(const LHRegion& region, HelpSystem* help_system)
{
	HelpText* text = new ("C:\\dev\\MP\\Black\\HelpText.cpp", 0x84) HelpText(region);
	if (text != NULL)
	{
		text->SetHelpSystem(help_system);
	}
	return text;
}

void HelpText::SetHelpSystem(HelpSystem* help_system)
{
	// The Windows function does not store the argument or perform any other work.
}

int HelpText::IsWhiteSpace(char16_t character) const
{
	return character == ' ' || character == '\t' || character == '\r' || character == '\n' || character == 0xf8fe;
}

int HelpText::SkipWhiteSpace(char16_t* text, char16_t** next) const
{
	int length = 0;
	while (IsWhiteSpace(text[length]))
	{
		if (text[length] == '\n')
		{
			*next = text + length + 1;
			return 1;
		}
		++length;
	}
	*next = text + length;
	return 3;
}

int HelpText::IsCommandChar(char16_t character) const
{
	return character == '$' || character == '\\';
}

int HelpText::IsNumberChar(char16_t character) const
{
	return character >= '0' && character <= '9';
}

int HelpText::IsCommandDataChar(char16_t character) const
{
	return IsNumberChar(character) || IsNamedCommand(character);
}

int HelpText::IsColorCommand(char16_t character) const
{
	switch (character)
	{
	case 'C':
	case 'c':
		return 1;
	default:
		return 0;
	}
}

int HelpText::IsNamedCommand(char16_t character) const
{
	if (IsColorCommand(character))
	{
		return 1;
	}
	switch (character)
	{
	case 'D':
	case 'd':
	case 'F':
	case 'f':
	case 'M':
	case 'm':
	case 'N':
	case 'n':
	case 'P':
	case 'p':
		return 1;
	default:
		return 0;
	}
}

int HelpText::RunCommand(char16_t* text, int process_messages)
{
	int result = 0;
	if (!IsCommandChar(*text))
	{
		return result;
	}
	++text;
	if (!IsCommandDataChar(*text))
	{
		return result;
	}
	switch (*text)
	{
	case 'C':
	case 'c':
		ProcessColorCommand(_wtoi(text + 1));
		break;
	case 'N':
	case 'n':
		return 1;
	case 'P':
	case 'p':
		return 4;
	case 'D':
	case 'd':
		return 5;
	case 'M':
	case 'm': {
		int action = _wtoi(text + 1);
		if (process_messages)
		{
			ProcessMessageCommand(action);
		}
		break;
	}
	case 'F':
	case 'f':
		ProcessFontCommand(_wtoi(text + 1));
		break;
	default:
		result = ProcessNumberCommand(_wtoi(text));
		break;
	}
	return result;
}

// BW1W120 005cb3e0. The original uses the global HelpSystem without a null guard.
void HelpText::ProcessMessageCommand(int action)
{
	GGame::g_game->help_system->SetTextIcon((BINDABLE_ACTIONS)action);
}

void HelpText::ProcessColorCommand(unsigned long colour)
{
	TextEntry& entry = TextHistory[CurrentText];
	if (colour != 0)
	{
		// Script colors are decimal-packed BGR, opposite to LH3DColor's integer constructor.
		entry.Blue = (uint8_t)(colour >> 16);
		entry.Green = (uint8_t)(colour >> 8);
		entry.Red = (uint8_t)colour;
	}
	else
	{
		switch (entry.Narrator)
		{
		case HELP_TEXT_NARRATOR_GOOD_SPIRIT:
			entry.Blue = 0xb7;
			entry.Green = 0xeb;
			entry.Red = 0xeb;
			break;
		case HELP_TEXT_NARRATOR_EVIL_SPIRIT:
			entry.Blue = 0xb4;
			entry.Green = 0xb4;
			entry.Red = 0xff;
			break;
		default:
			entry.Blue = 0xff;
			entry.Green = 0xff;
			entry.Red = 0xff;
			break;
		}
	}
}

int HelpText::ProcessNumberCommand(int command)
{
	return command == 1 ? 2 : 0;
}

char16_t* HelpText::SkipCommandData(char16_t* text) const
{
	if (IsCommandChar(*text))
	{
		++text;
		if (IsColorCommand(*text))
		{
			++text;
			while (IsNumberChar(*text))
			{
				++text;
			}
			// The color command also consumes its terminator in the original.
			++text;
			return text;
		}
		if (IsCommandDataChar(*text))
		{
			++text;
			while (IsNumberChar(*text))
			{
				++text;
			}
		}
	}
	return text;
}

int HelpText::GetNextWordAndParseCommands(char16_t* text, char16_t** next, char16_t* word, int process_messages)
{
	unsigned int length = 0;
	int          result = 0;
	word[0] = 0;
	if (IsWhiteSpace(*text))
	{
		int spaceResult = SkipWhiteSpace(text, &text);
		if (spaceResult != 3 && spaceResult != 6)
		{
			*next = text;
			return spaceResult;
		}
	}
	if (IsCommandChar(*text))
	{
		if (!IsCommandChar(text[1]))
		{
			int commandResult = RunCommand(text, process_messages);
			text = SkipCommandData(text);
			if (commandResult == 0 && IsWhiteSpace(*text))
			{
				commandResult = SkipWhiteSpace(text, &text);
			}
			*next = text;
			return commandResult;
		}
		// Any two command introducers escape the second one, including mixed pairs.
		++text;
		word[length++] = *text++;
	}
	while (!IsWhiteSpace(*text))
	{
		if (IsCommandChar(*text) || *text == 0 || length >= 47)
		{
			break;
		}
		word[length++] = *text++;
	}
	*next = text;
	word[length] = 0;
	if (IsWhiteSpace(*text))
	{
		result = 3;
		if (*text == 0xf8fe)
		{
			result = 6;
		}
	}
	return result;
}

void HelpText::CalculateCurrentDisplayWidthAndHeight(const LHRegion& region, char16_t* text, float* width,
                                                     float* height)
{
	if (Font == NULL)
	{
		return;
	}
	int maxLines = (int)((region.end.y - region.start.y + 1) / TextSize);
	int line = 0;
	int lineWidth = 0;
	int maxWidth = 0;
	int result = 0;
	while (line < maxLines)
	{
		if (result == 2 || *text == 0)
		{
			break;
		}
		if (result == 1)
		{
			if (maxWidth < lineWidth)
			{
				maxWidth = lineWidth;
			}
			lineWidth = 0;
			if (++line >= maxLines)
			{
				break;
			}
		}
		else if (result == 3)
		{
			lineWidth = (int)(lineWidth + Font->GetStringWidth(CHAR2WCHAR(" "), 1, TextSize));
		}
		char16_t  word[48];
		char16_t* next;
		result = GetNextWordAndParseCommands(text, &next, word, 0);
		if (result == 4)
		{
			UNICODE_sprintf(word, L"%3.3f%%", TextHistory[CurrentText].Value);
		}
		else if (result == 5)
		{
			UNICODE_sprintf(word, L"%3.3f", TextHistory[CurrentText].Value);
		}
		if (word[0] != 0)
		{
			int wordWidth = (int)Font->GetStringWidth(word, wcslen(word), TextSize);
			if (region.end.x - region.start.x - wordWidth - lineWidth + 1 < 0)
			{
				if (maxWidth < lineWidth)
				{
					maxWidth = lineWidth;
				}
				lineWidth = 0;
				if (++line >= maxLines)
				{
					break;
				}
			}
			lineWidth += wordWidth;
		}
		text = next;
	}
	if (maxWidth < lineWidth)
	{
		maxWidth = lineWidth;
	}
	*width = (float)maxWidth;
	*height = (line + 1 < maxLines ? line + 1 : maxLines) * TextSize;
}

int HelpText::CountWords(char16_t* text)
{
	int      count = 0;
	char16_t word[48];
	while (*text != 0)
	{
		GetNextWordAndParseCommands(text, &text, word, 0);
		if (word[0] != 0)
		{
			++count;
		}
	}
	return count;
}

void HelpText::ProcessFontCommand(int font)
{
	switch (font)
	{
	case HELP_TEXT_NARRATOR_GOOD_SPIRIT:
		Font = GoodFont;
		break;
	case HELP_TEXT_NARRATOR_EVIL_SPIRIT:
		Font = EvilFont;
		break;
	default:
		Font = DefaultFont;
		break;
	}
}

void HelpText::SendText(char16_t* text, float value, HELP_TEXT_NARRATOR narrator)
{
	LatestText = (LatestText + 1) % 6;
	ScrollProgress = 0.0f;
	CurrentText = LatestText;
	TextHistory[LatestText].Text = text;
	TextHistory[LatestText].Value = value;
	TextHistory[LatestText].Narrator = narrator;
	if (TextHistory[(LatestText + 5) % 6].Text != NULL)
	{
		field_0xb0 = 0;
	}
	TextCleared = 0;
	DialogOpen = 1;
}

void HelpText::SetStartDrawSettings()
{
	ProcessFontCommand(TextHistory[CurrentText].Narrator);
	ProcessColorCommand(0);
}

void HelpTextDataBase::SetData(int index, unsigned long text_id, HELP_TEXT_NARRATOR narrator, char16_t* sound,
                               char16_t* text)
{
	array[text_id < count ? text_id : 0].SetData(index, narrator, sound, text);
}

void HelpTextDataBase::Reload()
{
	DeleteAll();
	GSetup::LoadTextScripts();
}
