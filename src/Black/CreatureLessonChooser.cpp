#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureLessonChooser.h"

#include "ColourConstants.h" /* For White */

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strcpy, strlen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "ControlHand.h"
#include "Creature.h"
#include "CreatureAgenda.h"
#include "CreatureContext.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalAttributeTest.h"
#include "CreatureMentalBelief.h"
#include "EditorIcon.h"
#include "Game.h"
#include "Interface.h"
#include "Packet.h"
#include "Player.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureLessonChooser.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureLessonChooser.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureLessonChooser.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureLessonChooser.cpp"
#endif

#define LESSON_CHOOSER_MARGIN           20
#define LESSON_CHOOSER_LINE_HEIGHT      20
#define LESSON_CHOOSER_ACTION_TEXT_Y    280
#define LESSON_CHOOSER_ACTION_BUTTONS_Y 300
#define LESSON_CHOOSER_NEXT_BUTTON_X    100
#define LESSON_CHOOSER_SLIDER_Y         320
#define LESSON_CHOOSER_SLIDER_WIDTH     640
#define LESSON_CHOOSER_OK_BUTTON_X      740
#define LESSON_CHOOSER_BOTTOM_ROW_Y     560
#define LESSON_CHOOSER_MIN_FEEDBACK     (-1.0f)
#define LESSON_CHOOSER_MAX_FEEDBACK     1.0f
#define LESSON_CHOOSER_FEEDBACK_STEP    0.01f
#define LESSON_CHOOSER_FEEDBACK_SCALE   1000.0f

#define ADD_LESSON_BUTTON(line, calculate_text, type)                                                                  \
	LessonButtons[NumLessonButtons] = new (FILEPATH, line) EditorIconButton<CreatureLessonChooser>(                    \
		LHCoord(LESSON_CHOOSER_MARGIN, (NumLessonButtons + 2) * LESSON_CHOOSER_LINE_HEIGHT), calculate_text(), this,   \
		&CreatureLessonChooser::CallbackLesson, type);                                                                 \
	NumLessonButtons++

CreatureMental*        CreatureLessonChooser::Mind = NULL;
CreatureLessonChooser* CreatureLessonChooser::Instance = NULL;

CreatureLessonChooser::CreatureLessonChooser(CreatureMental* mental, float feedback)
{
	ActionChanged = false;
	Finished = false;
	Mental = mental;
	Feedback = PreviousFeedback = feedback;
	InitialiseIcons();
}

CreatureLessonChooser::~CreatureLessonChooser()
{
	GGame::g_game->MyInterface()->GetRenderHand()->Show(true);
	ReleaseIcons();
	if (Mental != NULL)
	{
		GGame::g_game->SetPacket(PACKET_TYPE_CLOSE_LESSON_CHOOSER, Mental->creature.Get()->GetIndexOffset());
	}
}

inline void CreatureLessonChooser::GetFeedbackText(char* text)
{
	if (Feedback < 0.0f)
	{
		strcpy(text, "Punish");
	}
	else
	{
		strcpy(text, "Reward");
	}
}

void CreatureLessonChooser::InitialiseIcons()
{
	TitleText = new (FILEPATH, 33) EditorIconBool(LHCoord(LESSON_CHOOSER_MARGIN, LESSON_CHOOSER_LINE_HEIGHT), TextValue,
	                                              "CHOOSE WHICH LESSON YOU WANT THE CREATURE TO LEARN",
	                                              "CHOOSE WHICH LESSON YOU WANT THE CREATURE TO LEARN", 0);
	NumLessonButtons = 0;
	ADD_LESSON_BUTTON(37, CalculateDesireLessonText, LESSON_TYPE_DESIRE);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	if (context->plan.ActivityObject != NULL)
	{
		ADD_LESSON_BUTTON(44, CalculateActivityObjectLessonText, LESSON_TYPE_ACTIVITY_OBJECT);
	}
	if (context->plan.ObjectToActOn->Pointer != Mental->creature.Get())
	{
		ADD_LESSON_BUTTON(50, CalculateObjectToActOnLessonText, LESSON_TYPE_ACTION_OBJECT);
	}
	ADD_LESSON_BUTTON(54, CalculateMethodLessonText, LESSON_TYPE_ACTION);
	char* actionText = CalculateActionText();
	ActionText = new (FILEPATH, 58) EditorIconBool(LHCoord(LESSON_CHOOSER_MARGIN, LESSON_CHOOSER_ACTION_TEXT_Y),
	                                               TextValue, actionText, actionText, 0);
	PreviousActionButton = new (FILEPATH, 59)
		EditorIconButton<CreatureLessonChooser>(LHCoord(LESSON_CHOOSER_MARGIN, LESSON_CHOOSER_ACTION_BUTTONS_Y),
	                                            "Previous", this, &CreatureLessonChooser::CallbackPreviousAction);
	NextActionButton = new (FILEPATH, 60)
		EditorIconButton<CreatureLessonChooser>(LHCoord(LESSON_CHOOSER_NEXT_BUTTON_X, LESSON_CHOOSER_ACTION_BUTTONS_Y),
	                                            "Next", this, &CreatureLessonChooser::CallbackNextAction);
	FeedbackSlider = new (FILEPATH, 61) EditorIconSlider<float>(
		LHRegion(LESSON_CHOOSER_MARGIN, LESSON_CHOOSER_SLIDER_Y, LESSON_CHOOSER_SLIDER_WIDTH,
	             LESSON_CHOOSER_LINE_HEIGHT),
		Feedback, LESSON_CHOOSER_MIN_FEEDBACK, LESSON_CHOOSER_MAX_FEEDBACK, LESSON_CHOOSER_FEEDBACK_STEP,
		"Feedback: %.2f", EDITOR_ICON_FLAG_CONSTANT_TEXT, true, 1, &EditorIconBase::DefaultActiveColor,
		&EditorIconBase::DefaultActiveColor, &EditorIconBase::DefaultHiliteColor, &EditorIconBase::DefaultTextColor);
	OKButton = new (FILEPATH, 62)
		EditorIconButton<CreatureLessonChooser>(LHCoord(LESSON_CHOOSER_OK_BUTTON_X, LESSON_CHOOSER_BOTTOM_ROW_Y), "OK",
	                                            this, &CreatureLessonChooser::CallbackOK);
	char* lessonText = Mental->learning.PreviousLesson.LessonTexts[0];
	LessonText = new (FILEPATH, 66) EditorIconBool(LHCoord(LESSON_CHOOSER_MARGIN, LESSON_CHOOSER_BOTTOM_ROW_Y),
	                                               TextValue, lessonText, lessonText, 0);
}

void CreatureLessonChooser::ReleaseIcons()
{
	delete TitleText;
	for (unsigned long i = 0; i < NumLessonButtons; i++)
	{
		delete LessonButtons[i];
	}
	delete PreviousActionButton;
	delete NextActionButton;
	delete ActionText;
	delete FeedbackSlider;
	delete OKButton;
	delete LessonText;
}

void CreatureLessonChooser::Refresh()
{
	ReleaseIcons();
	InitialiseIcons();
}

void CreatureLessonChooser::Process()
{
	if (ActionChanged || (PreviousFeedback < 0.0f && Feedback >= 0.0f) || (PreviousFeedback >= 0.0f && Feedback < 0.0f))
	{
		PreviousFeedback = Feedback;
		Refresh();
		ActionChanged = false;
	}
	for (unsigned long i = 0; i < NumLessonButtons; i++)
	{
		LessonButtons[i]->Process();
	}
	PreviousActionButton->Process();
	NextActionButton->Process();
	OKButton->Process();
	FeedbackSlider->Process();
}

void CreatureLessonChooser::Draw()
{
	TitleText->Draw(false);
	for (unsigned long i = 0; i < NumLessonButtons; i++)
	{
		LessonButtons[i]->Draw(true);
	}
	PreviousActionButton->Draw(true);
	NextActionButton->Draw(true);
	ActionText->Draw(false);
	OKButton->Draw(true);
	FeedbackSlider->Draw(true);
	LessonText->Draw(true);
}

void CreatureLessonChooser::Update()
{
	if (Instance != NULL)
	{
		if (Instance->Finished == true)
		{
			delete Instance;
			Instance = NULL;
		}
		else
		{
			Instance->Process();
		}
	}
}

void CreatureLessonChooser::UpdateDraw()
{
	if (Instance != NULL)
	{
		Instance->Draw();
	}
}

void CreatureLessonChooser::CallbackLesson(EditorInitialisedMenu* menu, unsigned long lesson)
{
	if (Mental->creature.Get()->GetPlayer() != NULL)
	{
		short player = Mental->creature.Get()->GetPlayer()->GetPlayerNumber();
		GGame::g_game->SetPacket(PACKET_TYPE_CHOOSE_LESSON, player, (short)lesson,
		                         (long)(Feedback * LESSON_CHOOSER_FEEDBACK_SCALE));
	}
}

void CreatureLessonChooser::CallbackPreviousAction(EditorInitialisedMenu* menu)
{
	if (Mental->creature.Get()->GetPlayer() != NULL)
	{
		GGame::g_game->SetPacket(PACKET_TYPE_PREVIOUS_LESSON_ACTION,
		                         Mental->creature.Get()->GetPlayer()->GetPlayerNumber());
		ActionChanged = true;
	}
}

void CreatureLessonChooser::CallbackNextAction(EditorInitialisedMenu* menu)
{
	if (Mental->creature.Get()->GetPlayer() != NULL)
	{
		GGame::g_game->SetPacket(PACKET_TYPE_NEXT_LESSON_ACTION,
		                         Mental->creature.Get()->GetPlayer()->GetPlayerNumber());
		ActionChanged = true;
	}
}

void CreatureLessonChooser::CallbackOK(EditorInitialisedMenu* menu)
{
	Finished = true;
}

void CreatureLessonChooser::CallbackCancel(EditorInitialisedMenu* menu)
{
	Finished = true;
}

char* CreatureLessonChooser::CalculateActionText()
{
	static char     text[0x100];
	CreatureContext context = *Mental->learning.GetSelectedContext();
	sprintf(text, "Feedback for Action: %s", CreatureInitialDesireInfo::GetInfo()[context.plan.CreatureDesire].Name);
	if (context.plan.ActivityObject != NULL)
	{
		sprintf(text + strlen(text), " on %s", AttributeType::ValueNames[context.plan.ActivityObject->GetType()]);
	}
	sprintf(text + strlen(text), ": ");
	sprintf(text + strlen(text), CreatureAgenda::ActionTable[context.plan.creature_action].Name);
	if (context.plan.ObjectToActOn->Pointer != Mental->creature.Get())
	{
		sprintf(text + strlen(text), " on %s", AttributeType::ValueNames[context.plan.ObjectToActOn->GetType()]);
	}
	if (context.plan.ObjectToUse != NULL)
	{
		sprintf(text + strlen(text), " using %s", AttributeType::ValueNames[context.plan.ObjectToUse->GetType()]);
	}
	return text;
}

char* CreatureLessonChooser::CalculateDesireLessonText()
{
	static char text[0x100];
	char        feedback[0x100];
	GetFeedbackText(feedback);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	sprintf(text, "%s %s", feedback, CreatureInitialDesireInfo::GetInfo()[context->plan.CreatureDesire].Name);
	return text;
}

char* CreatureLessonChooser::CalculateActivityObjectLessonText()
{
	static char text[0x100];
	char        feedback[0x100];
	GetFeedbackText(feedback);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	sprintf(text, "%s %s on %s", feedback, CreatureInitialDesireInfo::GetInfo()[context->plan.CreatureDesire].Name,
	        AttributeType::ValueNames[context->plan.ActivityObject->GetType()]);
	return text;
}

char* CreatureLessonChooser::CalculateObjectToActOnLessonText()
{
	static char text[0x100];
	char        feedback[0x100];
	GetFeedbackText(feedback);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	sprintf(text, "%s choosing %s when having %s", feedback,
	        AttributeType::ValueNames[context->plan.ObjectToActOn->GetType()],
	        CreatureInitialDesireInfo::GetInfo()[context->plan.CreatureDesire].Name);
	return text;
}

char* CreatureLessonChooser::CalculateMethodLessonText()
{
	static char text[0x100];
	char        feedback[0x100];
	GetFeedbackText(feedback);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	sprintf(text, "%s %s as method of satisfying %s", feedback,
	        CreatureAgenda::ActionTable[context->plan.creature_action].Name,
	        CreatureInitialDesireInfo::GetInfo()[context->plan.CreatureDesire].Name);
	return text;
}

char* CreatureLessonChooser::CalculateObjectToUseLessonText()
{
	static char text[0x100];
	char        feedback[0x100];
	GetFeedbackText(feedback);
	CreatureContext* context = Mental->learning.GetSelectedContext();
	sprintf(text, "%s choosing %s when trying to %s", feedback,
	        AttributeType::ValueNames[context->plan.ObjectToUse->GetType()],
	        CreatureAgenda::ActionTable[context->plan.creature_action].Name);
	return text;
}

CreatureMental* CreatureLessonChooser::PreviousMind;
