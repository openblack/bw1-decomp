#ifndef BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H
#define BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "CreatureLearning.h" /* For _LESSON_TYPE_COUNT */

class CreatureMental;
class EditorIconBool;
class EditorInitialisedMenu;
template <typename T> class EditorIconButton;
template <typename T> class EditorIconSlider;

class CreatureLessonChooser
{
public:
	EditorIconBool*                          TitleText; /* 0x0 */
	EditorIconButton<CreatureLessonChooser>* LessonButtons[_LESSON_TYPE_COUNT];
	EditorIconButton<CreatureLessonChooser>* PreviousActionButton; /* 0x14 */
	EditorIconButton<CreatureLessonChooser>* NextActionButton;
	EditorIconButton<CreatureLessonChooser>* OKButton;
	EditorIconSlider<float>*                 FeedbackSlider;
	EditorIconBool*                          ActionText; /* 0x24 */
	EditorIconBool*                          LessonText;
	bool32_t                                 Finished;
	bool32_t                                 ActionChanged;
	CreatureMental*                          Mental; /* 0x34 */
	float                                    Feedback;
	float                                    PreviousFeedback;
	int                                      TextValue;
	unsigned long                            NumLessonButtons; /* 0x44 */

	// BW1W120 004cf1f0 BW1M119 01246970
	CreatureLessonChooser(CreatureMental* mental, float feedback);

	// BW1W120 004cf220 BW1M119 01246890
	~CreatureLessonChooser();

	// BW1W120 004cf270 BW1M119 01246010
	void InitialiseIcons();
	// BW1W120 inlined BW1M119 inlined
	void GetFeedbackText(char* text);
	// BW1W120 004cf900 BW1M119 01245e90
	void ReleaseIcons();
	// BW1W120 004cf9e0 BW1M119 01245e20
	void Refresh();
	// BW1W120 004cfa00 BW1M119 01245b70
	void Process();
	// BW1W120 004cfaa0 BW1M119 inlined
	void Draw();
	// BW1W120 004cfb60 BW1M119 01245570
	void CallbackLesson(EditorInitialisedMenu* menu, unsigned long lesson);
	// BW1W120 004cfbc0 BW1M119 01245480
	void CallbackPreviousAction(EditorInitialisedMenu* menu);
	// BW1W120 004cfc10 BW1M119 012453a0
	void CallbackNextAction(EditorInitialisedMenu* menu);
	// BW1W120 004cfc60 BW1M119 01245340
	void CallbackOK(EditorInitialisedMenu* menu);
	// BW1W120 004cfc70 BW1M119 null
	void CallbackCancel(EditorInitialisedMenu* menu);
	// BW1W120 004cfc80 BW1M119 01245010
	char* CalculateActionText();
	// BW1W120 004cfef0 BW1M119 01244f10
	char* CalculateDesireLessonText();
	// BW1W120 004cff80 BW1M119 01244df0
	char* CalculateActivityObjectLessonText();
	// BW1W120 004d0030 BW1M119 01244cc0
	char* CalculateObjectToActOnLessonText();
	// BW1W120 004d00e0 BW1M119 01244bb0
	char* CalculateMethodLessonText();
	// BW1W120 004d0180 BW1M119 null
	char* CalculateObjectToUseLessonText();

	// BW1W120 004cfb10 BW1M119 01093a50
	static void Update();
	// BW1W120 004cfb50 BW1M119 01016a60
	static void UpdateDraw();

	// BW1W120 00c82924 BW1M119 null
	static CreatureMental* PreviousMind;
	// BW1W120 00c82f30 BW1M119 null
	static CreatureMental* Mind;
	// BW1W120 00c82f34 BW1M119 null
	static CreatureLessonChooser* Instance;
};
static_assert(sizeof(CreatureLessonChooser) == 0x48, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H */
