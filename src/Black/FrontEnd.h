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
	// TODO: Original name unknown; created by JustDoABox.
	// BW1W120 00cd06e8
	static Plasma* Dat_00CD06E8;
	// Cleared by MainMenu's close callback.
	// BW1W120 00cd0b03
	static bool StartupMenuActive;
	// Original array extent is not established; extracted storage only.
	// BW1W120 00cd3a18
	static char16_t PreviousProfile[];

	// Static methods

	// BW1W120 0053b4d0 BW1M119 015cba60
	static void Init();
	// BW1W120 0053c450 BW1M119 015cb4f0
	static void SetCursorOn();
	// BW1W120 00544f90 BW1M119 015c0ab0
	static void JustDoABox(DialogBoxBase* box);
	// BW1W120 0053ce70 BW1M119 015caa70
	void JustDoNewProfileBox();
	// BW1W120 00544f80 BW1M119 015c0eb0
	static void JustDoSkirmishGameBox();
};

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
