#ifndef BW1_DECOMP_FRONT_END_INCLUDED_H
#define BW1_DECOMP_FRONT_END_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>

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
class SetupLandscapeBox;
class SpellSetupBox;
class SetupOnlineLandscapes;
class SkipBox;
class SkirmishGameBox;
class StartGameBox;
class StatsBox;
class TattooEditor;
class SetupTabButton;

struct FrontEnd
{
	// Descriptive names; pointers assigned by frontend dialog/tab creation.
	// BW1W120 00cd0b1c
	static SkirmishGameBox* SkirmishDialog;
	// BW1W120 00cd0698
	static SetupTabButton* MultiplayerTab;
	// These are independent globals, not an instance layout. Names and subsystem scope are descriptive.
	// BW1W120 00cd0620
	static bool CursorOn;
	// BW1W120 00cd065c
	static MainMenu* MainMenuDialog;
	// BW1W120 00cd06e8. TODO: Original name unknown; created by JustDoABox.
	static Plasma* Dat_00CD06E8;
	// BW1W120 00cd0b03. Cleared by MainMenu's close callback.
	static bool StartupMenuActive;
	// BW1W120 00cd3a18. Original array extent is not established; extracted storage only.
	static char16_t PreviousProfile[];

	// Descriptive names recovered from Init/Destroy and their callers. Storage remains extracted.
	// Owned dialogs and the active-dialog callback pointers are distinct globals.
	// BW1W120 00cd0658
	static NewProfileBox* NewProfileDialog;
	// BW1W120 00cd06f4
	static LH3DMaterial* PlayerSymbolsMaterial;
	// BW1W120 00cd06f8; WCHAR2CHAR reserves one byte beyond the conversion limit.
	static char ConversionBuffer[0x400];
	// BW1W120 00cd0b04
	static bool ProfileEditorActive;
	// BW1W120 00cd0b24
	static NewProfileBox* ActiveNewProfileDialog;
	// BW1W120 00cd0b28
	static LoadingBox* ActiveLoadingDialog;
	// BW1W120 00cd0b2c
	static EditingDebugBox* ActiveEditingDebugDialog;
	// BW1W120 00cd0b30
	static RegisterBox* ActiveRegisterDialog;
	// BW1W120 00cd0b34
	static ProfileEditor* ActiveProfileEditor;
	// BW1W120 00cd0b60
	static MainMenu* ActiveMainMenuDialog;
	// BW1W120 00cd0b70
	static TattooEditor* ActiveTattooEditor;
	// BW1W120 00cd0b7c
	static CDBox* ActiveCDDialog;
	// BW1W120 00cd0b80
	static SkipBox* ActiveSkipDialog;
	// BW1W120 00cd0b84
	static StartGameBox* ActiveStartGameDialog;
	// BW1W120 00cd0b88
	static SkirmishGameBox* ActiveSkirmishDialog;
	// BW1W120 00cd0b90
	static HistoryBox* ActiveHistoryDialog;

	// Descriptive globals defined by FrontEndSetupGame.cpp.
	// BW1W120 00cd1664
	static SetupLandscapeBox* LandscapeDialog;
	// BW1W120 00cd1668
	static SpellSetupBox* SpellDialog;
	// BW1W120 00cd1670
	static SetupOnlineLandscapes* OnlineLandscapesDialog;
	// BW1W120 00cd125c. Shared scratch storage remains extracted; extent is unproven.
	static char16_t TypeString[];

	// Static methods

	// BW1W120 0053b4d0 BW1M100 105c4d10 FrontEnd::Init(void)
	static void Init();
	// BW1W120 0053c450 BW1M100 105c47d0 FrontEnd::SetCursorOn(void)
	static void SetCursorOn();
	// BW1W120 0053c470. Existing Windows symbol is an instance method; no this access.
	void SetCursorOff();
	// BW1W120 00544f90 BW1M100 105b9c50 FrontEnd::JustDoABox(DialogBoxBase *)
	static void JustDoABox(DialogBoxBase* box);
	// BW1W120 0053ce70 BW1M100 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
	void JustDoNewProfileBox();
	// BW1W120 00544f80 BW1M100 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
	static void JustDoSkirmishGameBox();
};

// BW1W120 0053b4a0. Returns the frontend's shared conversion buffer.
char* WCHAR2CHAR(char16_t* text);

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
