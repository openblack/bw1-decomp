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
	// BW1W120 00cd0b1c BW1M100 10bda878
	static SkirmishGameBox* SkirmishDialog;
	// BW1W120 00cd0698
	static SetupTabButton* MultiplayerTab;
	// BW1W120 00cd0620 BW1M100 10bda738
	static bool CursorOn;
	// BW1W120 00cd065c
	static MainMenu* MainMenuDialog;
	// BW1W120 00cd06e8
	static Plasma* Dat_00CD06E8;
	// BW1W120 00cd0b03
	static bool StartupMenuActive;
	// BW1W120 00cd3a18
	static char16_t PreviousProfile[];

	// BW1W120 00cd0658 BW1M100 10bda724
	static NewProfileBox* NewProfileDialog;
	// BW1W120 00cd06f4 BW1M100 10bda8e0
	static LH3DMaterial* PlayerSymbolsMaterial;
	// BW1W120 00cd06f8 BW1M100 10bda8e4
	static char ConversionBuffer[0x400];
	// BW1W120 00cd0b04 BW1M100 10bda8cd
	static bool ProfileEditorActive;
	// BW1W120 00cd0b24 BW1M100 10bda6f4
	static NewProfileBox* ActiveNewProfileDialog;
	// BW1W120 00cd0b28 BW1M100 10bda6f0
	static LoadingBox* ActiveLoadingDialog;
	// BW1W120 00cd0b2c BW1M100 10bda6ec
	static EditingDebugBox* ActiveEditingDebugDialog;
	// BW1W120 00cd0b30 BW1M100 10bda6e8
	static RegisterBox* ActiveRegisterDialog;
	// BW1W120 00cd0b34 BW1M100 10bda6e4
	static ProfileEditor* ActiveProfileEditor;
	// BW1W120 00cd0b60 BW1M100 10bda6e0
	static MainMenu* ActiveMainMenuDialog;
	// BW1W120 00cd0b70 BW1M100 10bda6d4
	static TattooEditor* ActiveTattooEditor;
	// BW1W120 00cd0b7c BW1M100 10bda6b8
	static CDBox* ActiveCDDialog;
	// BW1W120 00cd0b80 BW1M100 10bda6b4
	static SkipBox* ActiveSkipDialog;
	// BW1W120 00cd0b84 BW1M100 10bda6b0
	static StartGameBox* ActiveStartGameDialog;
	// BW1W120 00cd0b88 BW1M100 10bda6ac
	static SkirmishGameBox* ActiveSkirmishDialog;
	// BW1W120 00cd0b90 BW1M100 10bda6a8
	static HistoryBox* ActiveHistoryDialog;

	// BW1W120 00cd1664 BW1M100 10bdb1c0
	static SetupLandscapeBox* LandscapeDialog;
	// BW1W120 00cd1668 BW1M100 10bdb1bc
	static SpellSetupBox* SpellDialog;
	// BW1W120 00cd1670 BW1M100 10bdb1b4
	static SetupOnlineLandscapes* OnlineLandscapesDialog;
	// BW1W120 00cd125c
	static char16_t TypeString[];

	// Static methods

	// BW1W120 0053b4d0 BW1M100 105c4d10 FrontEnd::Init(void)
	static void Init();
	// BW1W120 0053c450 BW1M100 105c47d0 FrontEnd::SetCursorOn(void)
	static void SetCursorOn();
	// BW1W120 0053c470 BW1M100 105c4790 FrontEnd::SetCursorOff(void)
	void SetCursorOff();
	// BW1W120 00544f90 BW1M100 105b9c50 FrontEnd::JustDoABox(DialogBoxBase*)
	static void JustDoABox(DialogBoxBase* box);
	// BW1W120 0053ce70 BW1M100 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
	void JustDoNewProfileBox();
	// BW1W120 00544f80 BW1M100 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
	static void JustDoSkirmishGameBox();
};

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
