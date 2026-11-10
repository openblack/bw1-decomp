#ifndef BW1_DECOMP_FRONT_END_INCLUDED_H
#define BW1_DECOMP_FRONT_END_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>
#include <wchar.h> /* For wcscpy */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */

#include <re_common.h> /* For bool32_t */

// Forward Declares

class CDBox;
class ChannelBox;
class DialogBoxBase;
class EditingDebugBox;
class EndGameBox;
class GSLobbyBox;
class GatheringBox;
class HistoryBox;
struct LH3DMaterial;
class LoadingBox;
class LobbyBox;
class LoginBox;
class MainMenu;
class MultiplayerConditionBox;
class NewProfileBox;
struct Plasma;
class ProfileEditor;
class RegisterBox;
class SetupMultiplayerMain;
class SetupOnlineLandscapes;
class SkipBox;
class SkirmishGameBox;
class StartGameBox;
class StatsBox;
class TattooEditor;
struct SetupTabButton;

struct SetupBox;
struct SetupControl;

#define FRONT_END_TAB_FIRST_ID 0x8fc
#define FRONT_END_MAX_TABS     6
#define FRONT_END_TAB_ID_RANGE 10

enum OPTIONS_TAB
{
	OPTIONS_TAB_MAIN_MENU = 0,
	OPTIONS_TAB_MINI_OPTIONS = 1,
	OPTIONS_TAB_PROFILE = 2,
	OPTIONS_TAB_OPTIONS = 3,
	OPTIONS_TAB_KEY_BINDING = 4,
	OPTIONS_TAB_IMMERSION = 5,
	OPTIONS_TAB_COUNT = 6,
};

enum MAIN_MENU_TAB
{
	MAIN_MENU_TAB_MAIN_MENU = 0,
	MAIN_MENU_TAB_STATS = 1,
	MAIN_MENU_TAB_CONDITIONS = 2,
	MAIN_MENU_TAB_COUNT = 5,
};

// BW1W120 0053b4a0 BW1M119 015ccb10
char* WCHAR2CHAR(char16_t* text);
// BW1W120 00545500 BW1M119 null
void DeleteDirectoryContents(char* path);
// BW1W120 00545630 BW1M119 null
void DeleteDirectory(char* path);
// BW1W120 0053f3e0 BW1M119 015c7a60
bool32_t ProcessOptionsTabs(int message, SetupBox* box, SetupControl* control, int data1, int data2);
// BW1W120 0053f540 BW1M119 015c7830
void AddOptionsTabs(int selected);
// BW1W120 0053f740 BW1M119 inlined
bool32_t ProcessMainMenuTabs(int message, SetupBox* box, SetupControl* control, int data1, int data2);
// BW1W120 0053f7b0 BW1M119 015c7680
void AddMainMenuTabs(int selected);

#define FRONT_END_TOOL_TIP_LENGTH          128
#define FRONT_END_TEXT_BUFFER_SIZE         1024
#define FRONT_END_PROFILE_NAME_EDIT_LENGTH 29

struct FrontEnd
{
	// BW1W120 00cd0620
	static bool CursorOn;
	// BW1W120 00cd0624
	static ChannelBox* ChannelDialog;
	// BW1W120 00cd0628
	static EditingDebugBox* EditingDebugDialog;
	// BW1W120 00cd062c
	static SetupMultiplayerMain* SetupMultiplayerDialog;
	// BW1W120 00cd0630
	static SetupOnlineLandscapes* OnlineLandscapesDialog;
	// BW1W120 00cd0634
	static SkipBox* SkipDialog;
	// BW1W120 00cd0638
	static CDBox* CDDialog;
	// BW1W120 00cd063c
	static GatheringBox* GatheringDialog;
	// BW1W120 00cd0640
	static LoadingBox* LoadingDialog;
	// BW1W120 00cd0644
	static GSLobbyBox* GSLobbyDialog;
	// BW1W120 00cd0648
	static LobbyBox* LobbyDialog;
	// BW1W120 00cd064c
	static RegisterBox* RegisterDialog;
	// BW1W120 00cd0650
	static LoginBox* LoginDialog;
	// BW1W120 00cd0654
	static TattooEditor* TattooDialog;
	// BW1W120 00cd0658
	static NewProfileBox* NewProfileDialog;
	// BW1W120 00cd065c
	static MainMenu* MainMenuDialog;
	// BW1W120 00cd0660
	static ProfileEditor* ProfileEditorDialog;
	// BW1W120 00cd0668
	static Zoomer ToolTipZoomer;
	// BW1W120 00cd0698
	static SetupTabButton* MultiplayerTab;
	// BW1W120 00cd06dc
	static bool InMultiplayerScreens;
	// BW1W120 00cd06dd
	static bool MultiplayerGameRunning;
	// BW1W120 00cd06e8
	static Plasma* PlasmaBackground;
	// BW1W120 00cd06ec
	static LH3DMaterial* SymbolMaterialC;
	// BW1W120 00cd06f0
	static LH3DMaterial* SymbolMaterialB;
	// BW1W120 00cd06f4
	static LH3DMaterial* SymbolMaterial;
	// BW1W120 00cd051c
	static unsigned long ToolTipID;
	// BW1W120 00cd0520
	static wchar_t ToolTipText[FRONT_END_TOOL_TIP_LENGTH];
	// BW1W120 00cd0b03
	static bool StartupMenuActive;
	// BW1W120 00cd0b08
	static StatsBox* StatsDialog;
	// BW1W120 00cd0b0c
	static EndGameBox* EndGameDialog;
	// BW1W120 00cd0b10
	static MultiplayerConditionBox* MultiplayerConditionDialog;
	// BW1W120 00cd0b14
	static StartGameBox* StartGameDialog;
	// BW1W120 00cd0b18
	static HistoryBox* HistoryDialog;
	// BW1W120 00cd0b1c
	static SkirmishGameBox* SkirmishDialog;
	// BW1W120 00cd3a18
	static char16_t PreviousProfile[];

	// BW1W120 0053b4d0 BW1M119 015cba60
	static void Init();
	// BW1W120 0053c450 BW1M119 015cb4f0
	static void SetCursorOn();
	// BW1W120 00544f90 BW1M119 015c0ab0
	static void JustDoABox(DialogBoxBase* box);
	// BW1W120 0053ce70 BW1M119 015caa70
	static void JustDoNewProfileBox();
	// BW1W120 00544f80 BW1M119 015c0eb0
	static void JustDoSkirmishGameBox();
	// BW1W120 0053c0f0 BW1M119 015cb560
	static void DrawMouse();
	// BW1W120 0053c470 BW1M119 015cb4b0
	static void SetCursorOff();
	// BW1W120 0053c480 BW1M119 015cb160
	static void Close();
	// BW1W120 0053ca50 BW1M119 null
	static void Run();
	// BW1W120 0053bea0 BW1M119 010848c0
	static void SetToolTip(wchar_t* text, unsigned long id);
};

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
