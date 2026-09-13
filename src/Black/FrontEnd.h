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

struct FrontEnd
{
	// These are independent globals, not an instance layout. Names and subsystem scope are descriptive.
	// BW1W120 00cd0620
	static bool CursorOn;
	// BW1W120 00cd065c
	static MainMenu* MainMenuDialog;
	// BW1W120 00cd0b03. Cleared by MainMenu's close callback.
	static bool StartupMenuActive;
	// BW1W120 00cd3a18. Original array extent is not established; extracted storage only.
	static char16_t PreviousProfile[];

	// Static methods

	// BW1W120 0053b4d0 BW1M100 105c4d10 FrontEnd::Init(void)
	static void Init();
	// BW1W120 0053c450 BW1M100 105c47d0 FrontEnd::SetCursorOn(void)
	static void SetCursorOn();
	// BW1W120 00544f90 BW1M100 105b9c50 FrontEnd::JustDoABox(DialogBoxBase *)
	static void JustDoABox(DialogBoxBase* box);
	// BW1W120 0053ce70 BW1M100 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
	void JustDoNewProfileBox();
	// BW1W120 00544f80 BW1M100 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
	static void JustDoSkirmishGameBox();
};

#endif /* BW1_DECOMP_FRONT_END_INCLUDED_H */
