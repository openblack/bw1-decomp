#include "HelpSystem.h"

#include <math.h>
#include <string.h>

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "GameOSFile.h"
#include "GameThingWithPos.h"
#include "HelpProfile.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Rand.h"
#include "Script.h"

// TODO: The creation/rendering paths still need the KMIcon, HelpSpirit and HelpDudeControl
// interfaces. The message-definition table and widescreen duration remain extracted data;
// do not replace them with an invented zero-initialized table/default duration.

// BW1W120 005c5410 BW1M100 103519a0
HelpSystem::HelpSystem()
{
	SetToZero();
}

// BW1W120 005c5460 BW1M100 103518b0
void HelpSystem::SetToZero()
{
	SpiritType2 = NULL;
	SpiritType1 = NULL;
	bubble = NULL;
	help_text = NULL;
	help_dude_control = NULL;
	field_0x45d0 = 0;
	ClearDialogueControl();
	icon2 = 0;
	icon0 = 0;
	icon1 = 0;
	field_0x45fc = 2;
	SetImmersion(1);
	field_0x55c = 0;
	field_0x560 = 0;
	field_0x56c = 0;
	field_0x570 = 0;
	field_0x574 = 0;
	field_0x45d8 = 0;
	field_0x45e0 = 0;
	field_0x45f0 = 0.0f;
	field_0x460c = 0;
	Reset();
}

// BW1W120 005c5580 BW1M100 10351660
void HelpSystem::Reset()
{
	field_0x578 = 0;
	ClearAllText();
	field_0x568 = 0;
	memset(field_0x584, 0, sizeof(field_0x584));
	memset(field_0x78, 0, sizeof(field_0x78));
	memset(field_0x2fc, 0, sizeof(field_0x2fc));
	memset(field_0x2d8, 0, sizeof(field_0x2d8));
	field_0x45d4 = 0;
	SetWideScreen(0, 0);
	FinishWideScreenTransition();
	ResetIcons();
	field_0x45c8 = 0;
	field_0x45c4 = 0;
	field_0x1c = 0;
	field_0x20 = 0;
	field_0x45f8 = 1;
}

// BW1W120 005c5550 BW1M100 10351760
void HelpSystem::ClearAllText()
{
	if (help_text)
	{
		help_text->Reset(true);
	}
	memset(field_0x584, 0, sizeof(field_0x584));
	ClearTextDisplayed();
}

// BW1W120 005c5760
int HelpSystem::IsTextBeingDrawn() const
{
	if (help_text && help_text->TextBeingDrawn)
	{
		return 1;
	}
	return 0;
}

// BW1W120 005c5eb0 BW1M100 10091a40
void HelpSystem::PostDrawProcess()
{
	field_0x578 = 1;
}

// BW1W120 005c5ee0. The history keeps the newest 1024 messages in a circular buffer.
void HelpSystem::AddTextToHistory(uint32_t text, int display_mode, uint32_t param_3, uint32_t speaker)
{
	if (++field_0x45c8 > 0x400)
	{
		field_0x45c8 = 0x400;
	}
	HelpSystemTextHistory& entry = TextHistory[field_0x45c4];
	entry.Text = text;
	entry.DisplayMode = display_mode;
	entry.field_0x8 = param_3;
	entry.Speaker = speaker;
	field_0x45c4 = (field_0x45c4 + 1) % 0x400;
}

// BW1W120 005c5f50. Index zero is the most recently inserted entry.
HelpSystemTextHistory* HelpSystem::GetTextHistory(int index)
{
	if (index >= 0 && index < field_0x45c8)
	{
		return &TextHistory[(field_0x45c4 - index + 0x3ff) % 0x400];
	}
	return NULL;
}

// BW1W120 005c6740. The target returns a full-register Boolean, not void.
int HelpSystem::IsDialogueControlled() const
{
	if (field_0x45cc == 0 && (field_0x45e8 == 0 || field_0x45ec == 0))
	{
		return 0;
	}
	return 1;
}

// BW1W120 005c6780
void HelpSystem::SetCurrentControl(uint32_t control)
{
	field_0x45cc = control;
}

// BW1W120 005c6790
int HelpSystem::DialogueControlRequest(uint32_t control)
{
	if (IsDialogueControlled())
	{
		return 0;
	}
	SetCurrentControl(control);
	ClearAllText();
	return 1;
}

// BW1W120 005c64e0
int HelpSystem::IsTextRead()
{
	if (field_0x57c)
	{
		return 0;
	}
	return HasFinishedTextReading();
}

// BW1W120 005c67e0 BW1M100 1034f730. The next method starts at 005c6800;
// the current symbols.txt incorrectly includes it in this function's extent.
void HelpSystem::ClearDialogueControl()
{
	field_0x45cc = 0;
	if (help_text)
	{
		help_text->CloseDialogWindow();
	}
}

// BW1W120 005c68a0. There is deliberately no separate NONE/null case.
HelpSpirit* HelpSystem::GetSpirit(HELP_SPIRIT_TYPE type) const
{
	if (type == HELP_SPIRIT_TYPE_GOOD)
	{
		return SpiritType1;
	}
	return SpiritType2;
}

// BW1W120 005c6b60 BW1M100 1001d4b0
float HelpSystem::GetWideScreenPercentage() const
{
	float percentage = (float)fabs(field_0x45f0 * 0.001f / WideScreenDuration);
	if (field_0x45e8 == 0)
	{
		percentage = 1.0f - percentage;
	}
	if (percentage < 0.0f)
	{
		return 0.0f;
	}
	if (percentage > 1.0f)
	{
		percentage = 1.0f;
	}
	return percentage;
}

// BW1W120 005c6c50
int HelpSystem::IsWideScreenTransitioning() const
{
	float percentage = GetWideScreenPercentage();
	if (field_0x45e8 == 0)
	{
		if (percentage > 0.0f)
		{
			return 1;
		}
	}
	else if (percentage < 1.0f)
	{
		return 1;
	}
	return 0;
}

// BW1W120 005c6c90
void HelpSystem::SetReadSpeed(float speed)
{
	field_0x4610 = speed;
}

// BW1W120 005c6ca0
float HelpSystem::GetReadSpeed() const
{
	return field_0x4610;
}

// BW1W120 005c6e20. The database fallback is entry zero, as in GetHelpText.
HELP_SPIRIT_TYPE HelpSystem::GetSpiritWhoTalks(uint32_t text)
{
	HelpTextDataBase& database = HelpTextDataBase::HelpTextDatabase;
	HelpTextData&     entry = database.array[text < database.count && text != 0 ? text : 0];
	if (entry.field_0x0 == 2)
	{
		return HELP_SPIRIT_TYPE_GOOD;
	}
	if (entry.field_0x0 == 3)
	{
		return HELP_SPIRIT_TYPE_EVIL;
	}
	return HELP_SPIRIT_TYPE_NONE;
}

// BW1W120 005c6e60
int HelpSystem::ShouldDrawText() const
{
	if (field_0x4604 == 0)
	{
		return 0;
	}
	if (field_0x4604 == 1 && field_0x584[0] != 0)
	{
		uint32_t          text = field_0x584[0];
		HelpTextDataBase& database = HelpTextDataBase::HelpTextDatabase;
		return database.array[text < database.count && text != 0 ? text : 0].field_0x4;
	}
	return 1;
}

// BW1W120 005c6eb0 BW1M100 1034dd60
uint32_t HelpSystem::Save(GameOSFile& file)
{
	WriteCountedArray(file, field_0x30, 0x12);
	WriteCountedArray(file, field_0x78, 0x98);
	WriteCountedArray(file, field_0x2d8, 9);
	WriteCountedArray(file, field_0x2fc, 0x98);
	file.WriteIt(field_0x55c);
	file.WriteIt(field_0x560);
	// These two transient object references are explicitly written as null in Windows.
	file.WritePtr(NULL);
	file.WritePtr((GameThing*)field_0x20);
	file.WritePtr(NULL);
	file.WriteIt(field_0x56c);
	file.WriteIt(field_0x570);
	file.WritePtr((GameThing*)field_0x574);
	file.WriteIt(field_0x578);
	file.WriteIt(field_0x57c);
	file.WriteIt(field_0x580);
	WriteCountedArray(file, field_0x584, 6);
	file.WriteIt(SavedText.Control);
	WriteCountedArray(file, SavedText.Text, 6);
	file.WriteIt(SavedText.WaitForDismissal);
	file.WriteIt(SavedText.field_0x20);
	file.WriteIt(SavedText.Valid);
	// The original stream writes this ushort twice; retain that ordering.
	file.WriteIt(field_0x56c);
	file.WriteIt(field_0x45cc);
	file.WriteIt(field_0x45d0);
	file.WriteIt(field_0x45d4);
	file.WriteIt(field_0x45d8);
	file.WriteIt(field_0x45e0);
	file.WriteIt(field_0x45dc);
	file.WriteIt(field_0x45e4);
	file.WriteIt(field_0x460c);
	file.WriteIt(field_0x45e8);
	file.WriteIt(field_0x45ec);
	file.WriteIt(field_0x45f0);
	file.WriteIt(field_0x45f4);
	file.WriteIt(field_0x4604);
	file.WriteIt(field_0x4608);
	file.WriteIt(field_0x45fc);
	file.WriteIt(field_0x4600);
	file.WriteIt(field_0x45f8);
	file.WriteIt(field_0x1c);
	file.WriteIt(field_0x45c4);
	file.WriteIt(field_0x45c8);
	WriteCountedArray(file, TextHistory, 0x400);
	return 1;
}

// BW1W120 005c73e0 BW1M100 1034cf90
uint32_t HelpSystem::Load(GameOSFile& file)
{
	ResetIcons();
	ReadCountedArray(file, field_0x30);
	ReadCountedArray(file, field_0x78);
	ReadCountedArray(file, field_0x2d8);
	ReadCountedArray(file, field_0x2fc);
	file.ReadIt(field_0x55c);
	file.ReadIt(field_0x560);
	file.ReadPtr((GameThing**)&field_0x564);
	file.ReadPtr((GameThing**)&field_0x20);
	file.ReadPtr((GameThing**)&field_0x568);
	file.ReadIt(field_0x56c);
	file.ReadIt(field_0x570);
	file.ReadPtr((GameThing**)&field_0x574);
	file.ReadIt(field_0x578);
	file.ReadIt(field_0x57c);
	file.ReadIt(field_0x580);
	ReadCountedArray(file, field_0x584);
	file.ReadIt(SavedText.Control);
	ReadCountedArray(file, SavedText.Text);
	file.ReadIt(SavedText.WaitForDismissal);
	file.ReadIt(SavedText.field_0x20);
	file.ReadIt(SavedText.Valid);
	file.ReadIt(field_0x56c);
	file.ReadIt(field_0x45cc);
	file.ReadIt(field_0x45d0);
	file.ReadIt(field_0x45d4);
	file.ReadIt(field_0x45d8);
	file.ReadIt(field_0x45e0);
	file.ReadIt(field_0x45dc);
	file.ReadIt(field_0x45e4);
	file.ReadIt(field_0x460c);
	file.ReadIt(field_0x45e8);
	file.ReadIt(field_0x45ec);
	file.ReadIt(field_0x45f0);
	file.ReadIt(field_0x45f4);
	file.ReadIt(field_0x4604);
	file.ReadIt(field_0x4608);
	file.ReadIt(field_0x45fc);
	file.ReadIt(field_0x4600);
	file.ReadIt(field_0x45f8);
	file.ReadIt(field_0x1c);
	file.ReadIt(field_0x45c4);
	file.ReadIt(field_0x45c8);
	ReadCountedArray(file, TextHistory);
	// Unlike Save, the Windows Load method returns zero even after a successful read.
	return 0;
}

// BW1W120 005c78b0 BW1M100 1034cf40
void HelpSystem::ResolveLoad()
{
	RestoreTextOnTempleExit();
}

// BW1W120 005c78c0
void HelpSystem::ReleaseWideScreen(uint32_t control)
{
	if (field_0x45e8 && control == (uint32_t)field_0x45ec)
	{
		SetWideScreen(0, 0);
	}
}

// BW1W120 005c79c0
void HelpSystem::SetHelpLevel(int level)
{
	field_0x45f4 = level;
	ResetFOV();
}

// BW1W120 005c79e0. StopHelpScripts does not consume ECX in Windows.
// TODO: Parent integration must declare GScript::StopHelpScripts as static.
void HelpSystem::SaveTextOnTempleEntry()
{
	GScript::StopHelpScripts();
	SpiritHome(HELP_SPIRIT_TYPE_EVIL, 0);
	SpiritHome(HELP_SPIRIT_TYPE_GOOD, 0);
	if (IsDialogueControlled())
	{
		uint32_t control = field_0x45cc;
		if (((uint32_t)GScript::g_scriptDLL->GetScriptType(control) & 0x18) == 0)
		{
			SavedText.Control = control;
			for (int i = 0; i < 6; ++i)
			{
				SavedText.Text[i] = field_0x584[i];
			}
			SavedText.WaitForDismissal = field_0x57c;
			SavedText.field_0x20 = field_0x580;
			SavedText.Valid = 1;
			ClearDialogueControl();
			return;
		}
	}
	SavedText.Valid = 0;
}

// BW1W120 005c7a80. Send the oldest entry first, so the newest remains current.
void HelpSystem::ReInitialiseText()
{
	help_text->ClearTextDisplayed();
	HelpTextDataBase& database = HelpTextDataBase::HelpTextDatabase;
	HelpTextData*     currentText = NULL;
	for (int i = 5; i >= 0; --i)
	{
		uint32_t text = field_0x584[i];
		if (text)
		{
			currentText = &database.array[text < database.count ? text : 0];
			help_text->SendText(currentText->Text, 0.0f, (HELP_TEXT_NARRATOR)currentText->field_0x0);
		}
	}
	if (field_0x584[0])
	{
		SetTextReadTime(currentText->Text);
	}
}

// BW1W120 005c7b00
void HelpSystem::RestoreTextOnTempleExit()
{
	if (SavedText.Valid == 1 && !IsDialogueControlled())
	{
		DialogueControlRequest(SavedText.Control);
		for (int i = 0; i < 6; ++i)
		{
			field_0x584[i] = SavedText.Text[i];
		}
		field_0x57c = SavedText.WaitForDismissal;
		field_0x580 = SavedText.field_0x20;
	}
	SavedText.Valid = 0;
	ReInitialiseText();
}

// BW1W120 005c7b70
void HelpSystem::SetImmersion(int enabled)
{
	GGame::g_game->MyInterface()->StopAllImmersion();
	field_0x4600 = enabled;
}

// BW1W120 005c81c0
void HelpSystem::ProcessBanter()
{
	if (field_0x30[2])
	{
		RunMessageSet(GetRandomBanterSet(), NULL);
	}
}

// BW1W120 005c81e0
HELP_SYSTEM_MESSAGE_SET HelpSystem::GetRandomBanterSet()
{
	if (field_0x45d4 <= 24)
	{
		uint32_t selection = GRand::LocalRand(25 - field_0x45d4);
		for (int set = HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST; set < HELP_SYSTEM_MESSAGE_BANTER_SET_LAST; ++set)
		{
			if (field_0x2fc[set] == 0 && selection-- == 0)
			{
				++field_0x45d4;
				return (HELP_SYSTEM_MESSAGE_SET)set;
			}
		}
	}
	field_0x45d4 = 0;
	memset(&field_0x2fc[HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST], 0, 25 * sizeof(field_0x2fc[0]));
	// This fallback neither marks the set sent nor increments the cycle count.
	return HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST;
}

// BW1W120 005c8280 BW1M100 10351b90
void HelpSystem::TriggerCategory(HELP_SET_CATEGORY category)
{
	field_0x2d8[category] = GGame::g_game->data.GameTurn;
}

// BW1W120 005c8a80
void HelpSystem::SetSetSent(HELP_SYSTEM_MESSAGE_SET set)
{
	field_0x78[set] = GGame::g_game->data.GameTurn;
	TriggerCategory(MessageSets[set].Category);
	++field_0x2fc[set];
	field_0x55c = set;
	field_0x560 = GGame::g_game->data.GameTurn;
	GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_42);
}

// BW1W120 005c8ae0
void HelpSystem::GetStartAndEndTextForSet(HELP_SYSTEM_MESSAGE_SET set, uint32_t* first, uint32_t* last,
                                          GameThingWithPos* thing)
{
	switch (MessageSets[set].Type)
	{
	case 0:
		*first = MessageSets[set].FirstText;
		*last = MessageSets[set].LastText;
		return;
	case 1:
		*last = GetRandomTextFromSet(set);
		*first = *last;
		return;
	case 2:
		if (thing)
		{
			*first = thing->GetQueryFirstEnumText();
			*last = thing->GetQueryLastEnumText();
			return;
		}
		break;
	}
	*last = 0;
	*first = 0;
}

// BW1W120 005c8b80 BW1M100 10353090
uint32_t HelpSystem::RunMessageSet(HELP_SYSTEM_MESSAGE_SET set, GameThingWithPos* thing)
{
	if (!StopRunningScripts())
	{
		return 0;
	}
	SetSetSent(set);
	if (MessageSets[set].Type != 3)
	{
		uint32_t first;
		uint32_t last;
		GetStartAndEndTextForSet(set, &first, &last, thing);
		RunMessage(first, last, MessageSets[set].Script);
	}
	else
	{
		RunMessage(MessageSets[set].Script);
	}
	// The result of RunMessage is deliberately ignored in the original.
	return 1;
}

// BW1W120 005c8c10
uint32_t HelpSystem::GetRandomTextFromSet(HELP_SYSTEM_MESSAGE_SET set)
{
	uint32_t first = MessageSets[set].FirstText;
	return GRand::LocalRand(MessageSets[set].LastText - first + 1) + first;
}

// BW1W120 005c8c80 BW1M100 10352ee0
uint32_t HelpSystem::StopRunningScripts()
{
	return StopHelpScriptsForNewHelp();
}

// BW1W120 005c8c40 BW1M100 10352f40. The active owner is read from the global
// HelpSystem, not necessarily from this. GetScriptType's low byte contains the flags.
uint32_t HelpSystem::StopHelpScriptsForNewHelp()
{
	uint32_t control = GGame::g_game->help_system->field_0x45cc;
	if (control && ((uint32_t)GScript::g_scriptDLL->GetScriptType(control) & 0x42) == 0)
	{
		return 0;
	}
	GScript::StopHelpScripts();
	return 1;
}

// BW1W120 005c8c90
uint32_t HelpSystem::RunMessage(char* script)
{
	if (StopRunningScripts())
	{
		field_0x560 = GGame::g_game->data.GameTurn;
		GGame::g_game->script->StartScript(script);
		return 1;
	}
	return 0;
}

// BW1W120 005c8ce0 BW1M100 10352cf0
uint32_t HelpSystem::RunMessage(unsigned long first, unsigned long last, char* script)
{
	if (first <= last && StopRunningScripts())
	{
		field_0x560 = GGame::g_game->data.GameTurn;
		// PUSH takes the IEEE float bits in its pointer-sized VM value argument.
		float firstValue = (float)first;
		GScript::g_scriptDLL->PUSH(*(void**)&firstValue, (VMType)2);
		float lastValue = (float)last;
		GScript::g_scriptDLL->PUSH(*(void**)&lastValue, (VMType)2);
		GGame::g_game->script->StartScript(script);
		return 1;
	}
	return 0;
}

// BW1W120 005c9300
void HelpSystem::ResetFOV()
{
	field_0x564 = NULL;
	if (!IsDialogueControlled() && GGame::g_game->help_system != NULL)
	{
		if (IsSpiritEjected(HELP_SPIRIT_TYPE_GOOD))
		{
			SpiritHome(HELP_SPIRIT_TYPE_GOOD, 0);
		}
		if (IsSpiritEjected(HELP_SPIRIT_TYPE_EVIL))
		{
			SpiritHome(HELP_SPIRIT_TYPE_EVIL, 0);
		}
	}
}

// BW1W120 005c98e0 BW1M100 10353970
void HelpSystem::HelpQuery()
{
	Object* object = GGame::g_game->MyInterface()->status->GetFirstObjectInCurrentHand();
	if (!object)
	{
		object = GGame::g_game->MyInterface()->interface_collide.object;
		if (!object)
		{
			GetHelpQueryAtPosition(GGame::g_game->MyInterface()->interface_collide.pos);
			return;
		}
	}
	GetHelpQueryOnGameThingWithPos(object);
}

// BW1W120 005c9490
void HelpSystem::NoHelpAvailable()
{
	RunMessageSet(HELP_SYSTEM_MESSAGE_SET_NOT_INTERESTED, NULL);
}
