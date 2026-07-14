#define ReleaseCapture BW1_WindowsReleaseCapture
#define KillTimer BW1_WindowsKillTimer
#define SetTimer BW1_WindowsSetTimer
#define GetMessageTime BW1_WindowsGetMessageTime
#define DefWindowProcA BW1_WindowsDefWindowProcA
#include <windows.h>
#include <commctrl.h>
#include <ddraw.h>
#undef ReleaseCapture
#undef KillTimer
#undef SetTimer
#undef GetMessageTime
#undef DefWindowProcA

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
// Target-import workaround: the extracted TU names these IATs with @4 regardless of API arity.
// The one-argument declarations select those COFF names; call sites cast to the true signatures
// so MSVC still emits the original argument pushes and stack behavior. These are not API prototypes.
extern "C" __declspec(dllimport) BOOL __stdcall ReleaseCapture(HWND);
typedef BOOL (__stdcall *ReleaseCaptureProc)(void);
extern "C" __declspec(dllimport) BOOL __stdcall KillTimer(HWND);
typedef BOOL (__stdcall *KillTimerProc)(HWND, UINT);
extern "C" __declspec(dllimport) UINT __stdcall SetTimer(HWND);
typedef UINT (__stdcall *SetTimerProc)(HWND, UINT, UINT, TIMERPROC);
extern "C" __declspec(dllimport) LONG __stdcall GetMessageTime(int);
typedef LONG (__stdcall *GetMessageTimeProc)(void);
extern "C" __declspec(dllimport) LRESULT __stdcall DefWindowProcA(HWND);
typedef LRESULT (__stdcall *DefWindowProcProc)(HWND, UINT, WPARAM, LPARAM);

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For struct LHSystem */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHMouse.h>         /* For struct LHMouse */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>        /* For struct LHScreen */
#include <Lionhead/LHLib/ver5.0/LHSurface.h>       /* For struct LHSurface */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

// -----------------------------------------------------------------------------
// Fixed-address globals owned/referenced by this translation unit.
// -----------------------------------------------------------------------------

// BW1W120 00e85050 the global LHScreen instance (theSystem.screen)
extern LHScreen g_lhScreen;
// BW1W120 00e8c0f4 HWND of the main game window (theSystem.window)
extern HWND g_windowForScreen;
// BW1W120 00e8c0f0 the window's menu (theSystem.field_0x70b0)
extern HMENU gMenu;
// BW1W120 00e8c0e8 accelerator table
extern HACCEL gAccel;
// BW1W120 00e8c0fb set when a WM_SYSCOMMAND SC_TASKSWITCH arrives; drained by the pump
extern uint8_t gAltTabPending;
// BW1W120 00e8c5e0 alt-tabbed-away flag; non-zero requests another pass of the loop
extern int unk_E8C5E0;
// BW1W120 00c3122c key-code -> ASCII lookup, indexed by (key | (shift ? 0x80 : 0))
extern unsigned char gKeyToAsciiTable[];
// BW1W120 00e85040 the LHSystem sub-object (theSystem.system)
extern LHSystem gSystem;
// BW1W120 00e8c108 set while the mouse-input thread is running
extern uint8_t gMouseThreadRunning;
// BW1W120 00e8c109 set once shutdown has been requested
extern uint8_t gTerminateRequested;
// BW1W120 00e8c0fa non-zero while running in a window
extern uint8_t gWindowedMode;
// BW1W120 00c311a8 non-zero while the game window has focus/is active
extern int gWindowActive;
// BW1W120 00e8c0f8 set if a 256-colour mode switch failed (also read by LHScreen)
extern int unk_E8C0F8;
// BW1W120 imported LHLogR: true while an assert dialog is on screen
extern __declspec(dllimport) bool InAssertDialog;
// --- WndProc state ---
extern UINT gQueryCancelAutoPlayMsg;                       // 00e8c0c4
extern uint8_t gQueryCancelAutoPlayInit;                   // 00e8c0c8
extern void(__stdcall* gMessageHook)(UINT, int, unsigned int); // 00e8c10c
extern UINT gLastCommand;                                  // 00e8c0ac
extern unsigned int gLastCommandParam;                     // 00e8c0b0
extern int g_appMinimized;                                 // 00e8c0fc
extern int gAppMinimizedByUs;                              // 00e8c100
// The target TU emits explicit relocations for these embedded mouse fields; aliases below preserve them.
// BW1W120 00e85204 is the embedded LHMouse object, named as a pointer symbol by the original TU.
extern LHMouse* gMouse;
extern int unk_E852E4;                                     // 00e852e4 LHMouse::AccumDelta.x storage
extern int unk_E852E8;                                     // 00e852e8 LHMouse::AccumDelta.y storage
extern int gMouseWheelAccum;                               // 00e85300 LHMouse::MouseWheelAccum storage
extern int gButtonState;                                   // 00e85304 LHMouse::Buttons storage
extern int unk_E85274;                                     // 00e85274
extern UINT gCursorTimerInterval;                          // 00e8526c
extern int unk_E8520C;                                     // 00e8520c
extern int unk_E8522C;                                     // 00e8522c
extern LHSurface* unk_E85230[0xF];                         // 00e85230 surface array
extern int gMouseNeedsRedraw;                              // 00e85210
extern uint8_t gMouseWheelSkip;                            // 00c311a4
extern LHRegion unk_E85288;                                // 00e85288 saved cursor region
extern LHCoord unk_E852A8;                                 // 00e852a8 saved cursor pos

// The embedded keyboard object is at theSystem + 0x32c; the global at 0xE8C118
// is a separate critical section initialized by LHSys::LHSys().
extern CRITICAL_SECTION gKeyboard; // 00e8c118
extern int gLastKey;                // 00e8c110

// TODO: This is probably an inline accessor on LHSystem or LHSys or sometihng
inline LHKeyboard& GetKeyboardObject()
{
	return *(LHKeyboard*)((unsigned char*)&gSystem + 0x32c);
}

// slim::TbIME helpers implemented in another TU.
struct TbIMEWrapper; // full definition below
// BW1W120 007f42b0 slim::TbIME::ConvertCHAR8toCHAR16(char)
int TbIME_ConvertCHAR8toCHAR16(char c);
// BW1W120 007de8d0 (LHScreen.cpp) per-message screen bookkeeping
void sub_7DE8D0();
// BW1W120 00e85470/00e85472 cleared alongside the key-down state on (re)init
extern uint16_t unk_E85470;
extern uint16_t unk_E85472;
// BW1W120 00e8c0d8 TrackMouseEvent request for WM_MOUSELEAVE tracking
extern TRACKMOUSEEVENT gTrackMouseEvent;
// BW1W120 00c311ac non-zero while a TrackMouseEvent request is active
extern int gTrackingMouse;
// BW1W120 00e85270 cursor animation mode (3 => needs an initial timer kick)
extern int gCursorAnimMode;

// The IME helper wrapper (slim::TbIME), constructed on window creation.
struct TbIMEWrapper
{
	void* field_0x0;
	// BW1W120 007f3b80 TbIMEWrapper::TbIMEWrapper(void)
	TbIMEWrapper();
	// BW1W120 007f3d20 TbIMEWrapper::ProcessMessage(HWND, UINT*, WPARAM*, LPARAM*, LRESULT*)
	// __thiscall: `this` (gTbIME) rides in ecx, only the 5 explicit args are pushed.
	// Returns a byte (target tests al, not eax).
	bool ProcessMessage(HWND wnd, UINT* msg, WPARAM* w, LPARAM* l, LRESULT* result);
};
// BW1W120 00e8c104 the global IME wrapper instance
extern TbIMEWrapper* gTbIME;

// BW1W120 imported: register a TrackMouseEvent request (user32 shim).
extern "C" __declspec(dllimport) BOOL __stdcall TrackMouseEvent(LPTRACKMOUSEEVENT);
// BW1W120 00e90650 guards screen/window state (shared with LHScreen/LHMouse)
extern CRITICAL_SECTION g_screenCritSec;
// BW1W120 00e85374 per-key down state, indexed by scan code
extern uint8_t gKeyboardState[0xFC];
// BW1W120 00e85478 typed-character ring buffer (indices live at [90]/[91])
extern uint8_t gCharRing[0x60];
// BW1W120 00e855a0 typed-character ring (WM_CHAR / 0x410). One object: Buffer[Head]=char then
// Head advances; the target RELOADS Head after the store (Buffer[] and Head may alias since Head
// is a runtime index), which only happens if they live in a single object — hence the struct.
// Distinct from gCharRing above (a separate byte buffer at 0xE85478).
struct CharRing
{
	int Buffer[16]; /* 0x00 */
	int Head;       /* 0x40 */
	int Tail;       /* 0x44 */
};
extern CharRing charRing; // 00e855a0
// BW1W120 00e85204 is theSystem.mouse: LHSys embeds LHMouse at offset 0x1c4.
static_assert(offsetof(LHSys, mouse) == 0x1c4, "LHSys mouse offset changed");

// TODO: Probably an inline accessor on LHSystem or LHSys or something
inline LHMouse* GetMouseObject()
{
	return (LHMouse*)&gMouse;
}

// BW1W120 007db800 construct theSystem's embedded screen, mouse, input, and text state.
LHSys::LHSys()
{
	InitializeCriticalSection(&gKeyboard);
	// TODO: target emits the LHText/LHSpriteList stores at 0x7048/0x704c/0x7044 after
	// the convert-tail helper; this TU's inferred LHText base constructor emits them early.
	// Do not suppress the evidenced LHText type without identifying the original ordering.
	for (int i = 0; i < 2; ++i)
	{
		joypads.joypads[i].field_0x4 = 0;
		joypads.joypads[i].field_0x5 = 0;
	}
	joypads.count = 0;
}

// BW1W120 00e8c0c0 timestamp of the previous mouse-move message
extern int gLastMouseMsgTime;
// BW1W120 00e85368 ms elapsed since the previous mouse-move
extern int gMouseMoveDelta;
// BW1W120 00e85218 current cursor-image mode (2/4 => show arrow)
extern int gCursorMode;
// BW1W120 00e85210 set to request a mouse redraw on the next frame
extern int gMouseNeedsRedraw;
// BW1W120 00e8c0cc signalled by the WndProc to wake the mouse-input thread
extern HANDLE gAppEvent;
// BW1W120 00e8c0d0 the standard arrow cursor (IDC_ARROW)
extern HCURSOR gArrowCursor;
// BW1W120 00e8c0d4 the app's own cursor resource
extern HCURSOR gAppCursor;

// Assert force-callbacks, provided by LHLogR (imported).
// BW1W120 008a9358 / 008a93d0
extern __declspec(dllimport) void(__cdecl* LHAssertBeforeForceCallback)();
extern __declspec(dllimport) void(__cdecl* LHAssertAfterForceCallback)();

// BW1W120 imported LHLogR: spawn a named worker thread.
__declspec(dllimport) unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack, void* arg, long priority);

// Functions defined further down / elsewhere in this TU, referenced by WinMain.
void LHAssertBeforeForce();                                  // 007dbcf0
void LHAssertAfterForce();                                   // 007dbd00
void sub_7DECE0();                                           // 007dece0 (LHScreen.cpp) restore window
void sub_7DED10();                                           // 007ded10 (LHScreen.cpp) fullscreen coop
int RegisterGameWindowClass(HINSTANCE inst, WNDPROC proc);   // 007dba00
int CreateGameWindow(HINSTANCE inst, int cmd_show, int windowed); // 007dba90
void MouseInputThreadProc(void* arg);                        // 007dbd10
LRESULT CALLBACK GameWindowProc(HWND wnd, UINT msg, WPARAM w, LPARAM l); // 007dbf30
typedef void (__stdcall *WindowMessageHandler)(WPARAM, HWND, LPARAM);

LRESULT LHSystem::SetTerminate()
{
	LRESULT result = Terminate;
	if (!result)
	{
		Terminate = 1;
		result = IsWindow(g_lhScreen.MsWindowHandle);
		if (result)
			result = SendMessageA(g_lhScreen.MsWindowHandle, WM_SYSCOMMAND, SC_CLOSE, 0);
	}
	return result;
}

int TurnOffMenu()
{
	return SetMenu(g_windowForScreen, NULL);
}

int TurnOnMenu()
{
	return SetMenu(g_windowForScreen, gMenu);
}

void ProcessWindowMessages()
{
	MSG msg;
	do
	{
		while (PeekMessageA(&msg, g_windowForScreen, 0, 0, 0))
		{
			GetMessageA(&msg, g_windowForScreen, 0, 0);
			if (!TranslateAcceleratorA(g_windowForScreen, gAccel, &msg))
			{
				TranslateMessage(&msg);
				DispatchMessageA(&msg);
			}
		}
		if (gAltTabPending)
		{
			gAltTabPending = 0;
			g_lhScreen.AltTabReactivate();
		}
	} while (unk_E8C5E0);
}

unsigned char __stdcall LHKeyToAscii(int key, int shift)
{
	return gKeyToAsciiTable[key | (shift != 0 ? 0x80 : 0)];
}

int ResizeWindow(unsigned short width, unsigned short height)
{
	if (g_lhScreen.windowed)
	{
		ShowWindow(g_lhScreen.MsWindowHandle, SW_SHOWNORMAL);
		RECT client;
		GetClientRect(g_lhScreen.MsWindowHandle, &client);
		RECT rect;
		rect.left = 0;
		rect.top = 0;
		if (height && height <= g_lhScreen.height)
			rect.bottom = client.bottom - client.top;
		else
			rect.bottom = g_lhScreen.height;
		if (width && width <= g_lhScreen.width)
			rect.right = client.right - client.left;
		else
			rect.right = g_lhScreen.width;
		AdjustWindowRect(&rect, 0xCF0000, TRUE);
		GetWindowRect(g_lhScreen.MsWindowHandle, &client);
		if (!MoveWindow(g_lhScreen.MsWindowHandle, client.left, client.top, rect.right - rect.left,
		                rect.bottom - rect.top, TRUE))
			return 2;
	}
	return 0;
}

// BW1W120 007dbed0 the app-terminate handler (called from WinMain and pc_main).
// Named for its raw address until its true name is recovered.
void jmp_addr_0x007dbed0()
{
	if (!gTerminateRequested)
	{
		gTerminateRequested = 1;
		while (gMouseThreadRunning)
			Sleep(300);
	}
	EnterCriticalSection(&g_screenCritSec);
	gSystem.SetTerminate();
}

static bool AnyWindowMessages();
static int GetCursorPosClient(int hwnd, POINT* point);

// BW1W120 007dbd10 the mouse-input worker thread. When the WndProc hasn't fed us a
// mouse message (the event times out) it polls the async button/modifier state and the
// cursor position itself and posts a synthetic 0x8009 message to the window.
// TODO: 90% — logic faithful. Residual: MSVC hoists the GetAsyncKeyState import ptr into a
// different callee-saved reg + caches the "1" constant, and the poll condition reads
// unk_E8C0F8 as a byte (it's shared as `int` with LHScreen). Optimizer-level, not logic.
void MouseInputThreadProc(void* arg)
{
	if (!gMouseThreadRunning)
	{
		while (true)
		{
			DWORD wait = WaitForSingleObject(gAppEvent, 40);
			if (gMouseThreadRunning)
				break;
			if (wait)
			{
				// unk_E8C0F8 is a 0/1 flag; read its low byte (stays `int` — shared with LHScreen).
				while ((InAssertDialog || gWindowedMode || !gWindowActive || (unsigned char)unk_E8C0F8) &&
				       !gMouseThreadRunning)
					Sleep(300);
				int ctrl = 1;
				int left = GetAsyncKeyState(VK_LBUTTON);
				int right = GetAsyncKeyState(VK_RBUTTON);
				if (GetSystemMetrics(SM_SWAPBUTTON) == 1)
				{
					int swap = left;
					left = right;
					right = swap;
				}
				int middle = GetAsyncKeyState(VK_MBUTTON);
				int shift;
				if (GetAsyncKeyState(VK_RSHIFT) || (shift = 0, GetAsyncKeyState(VK_LSHIFT)))
					shift = 1;
				if (!GetAsyncKeyState(VK_RCONTROL) && !GetAsyncKeyState(VK_LCONTROL))
					ctrl = 0;
				POINT point;
				GetCursorPos(&point);
				unsigned short buttons = left != 0;
				if (right)
					buttons |= 2;
				if (middle)
					buttons |= 0x10;
				if (shift)
					buttons |= 4;
				if (ctrl)
					buttons |= 8;
				RECT rect;
				GetWindowRect(g_windowForScreen, &rect);
				if (g_lhScreen.windowed)
					GetCursorPosClient((int)g_windowForScreen, &point);
				PostMessageA(g_windowForScreen, 0x8009, buttons,
				             (unsigned short)point.x | ((unsigned short)point.y << 16));
				if (gMouseThreadRunning)
					break;
			}
		}
	}
	gMouseThreadRunning = 0;
}

// BW1W120 007dc920 handle a mouse-move: track the inter-move delta, pick the cursor,
// and forward the new position to the mouse.
void MouseMoveHandler(int hwnd, int lparam, int msg_time)
{
	int prev = gLastMouseMsgTime;
	if (!gLastMouseMsgTime)
		prev = msg_time;
	gLastMouseMsgTime = msg_time;
	gMouseMoveDelta = msg_time - prev;
	LHCoord pos;
	pos.x = (short)LOWORD(lparam);
	pos.y = (short)HIWORD(lparam);
	if (gCursorMode == 4)
		SetCursor(gArrowCursor);
	else if (gCursorMode == 2)
		SetCursor(gArrowCursor);
	else
		SetCursor(NULL);
	GetMouseObject()->UpdateCurrentPos(pos);
	gMouseNeedsRedraw = 1;
	GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, LH_MOUSE_EVENT_TYPE_0x4);
}

// BW1W120 007dcab0 reset all key-down state and the typed-character ring.
void ClearKeyboardState()
{
	memset(gKeyboardState, 0, 0xFF);
	gCharRing[0] = 0;
}

// TODO: 75% — logic faithful (all struct offsets + the up/down/modifier flow match).
// Residual is register scheduling: MSVC orders the reported-key `and edi,0xff`, the
// ModifierFlags=0 store, and callee-saved usage differently. Iterative reg-alloc work.
// BW1W120 007dcaf0 process a raw WM_KEY* message: update the key-down state and the
// ctrl/alt/shift modifier bits, feed string-collection / the key-event ring, and invoke
// the registered key callback. `key_data` is the WM_KEY lParam (scan code + flags).
int LHKeyboard::ProcessKeyboard(unsigned int msg, int key_data)
{
	unsigned char scancode = (unsigned char)(key_data >> 16);
	if (key_data & 0x1000000)
		scancode += 0x80;
	ModifierFlags = 0;
	int reported = scancode;
	if (key_data & 0x80000000)
	{
		KeyState[scancode] = 0;
		if (scancode == 42)
		{
			if (!KeyState[54])
				goto check_shift;
		}
		else
		{
			if (scancode != 54)
				goto check_shift;
			if (!KeyState[42])
				goto check_rshift;
		}
		KeyState[54] = 0;
	check_shift:
		if (KeyState[42])
		{
		set_shift:
			ModifierFlags |= 0x10;
		check_ctrl_alt:
			if (KeyState[29] || KeyState[157])
				ModifierFlags |= 0x20;
			if (KeyState[56] || KeyState[184])
				ModifierFlags |= 0x40;
			CurrentKey = 0;
			goto invoke;
		}
	check_rshift:
		if (!KeyState[54])
			goto check_ctrl_alt;
		goto set_shift;
	}
	KeyState[scancode] = 1;
	if (KeyState[42] || KeyState[54])
		ModifierFlags |= 0x10;
	if (KeyState[29] || KeyState[157])
		ModifierFlags |= 0x20;
	if (KeyState[56] || KeyState[184])
		ModifierFlags |= 0x40;
	{
		int active = StringActive;
		CurrentKey = scancode;
		if (active)
			StringCollect(scancode);
		SetKeyValue();
	}
invoke:
	gLastKey = CurrentKey;
	if (Callback)
		return Callback(msg, reported, ModifierFlags, ((unsigned int)key_data >> 30) & 1, CallbackContext);
	return (int)Callback;
}

// BW1W120 007dcc90 feed a key into the active string-collection buffer.
void LHKeyboard::StringCollect(int key)
{
	if (key == StringEndKey)
	{
		StringActive = 0;
	}
	else if (key == 14 && StringLen > 0)
	{
		--StringLen;
		StringBuffer[StringLen] = 0;
	}
	else if (StringLen < StringMax)
	{
		StringBuffer[StringLen] = LHKeyToAscii(key, 0);
		++StringLen;
	}
}

// BW1W120 007dcd10 stop the active string collection.
void LHKeyboard::StopString()
{
	StringActive = 0;
}

// BW1W120 007dcd20 (re)start string collection.
void LHKeyboard::RestartString()
{
	StringActive = 1;
}

// BW1W120 007dcd30 pop the oldest key+modifiers off the key-event ring; returns 2 (and
// zeroes the outputs) when the ring is empty, else 0.
int LHKeyboard::GetKeyValue(int& key, unsigned char& mod)
{
	unsigned int read = RingRead;
	if (read != RingWrite)
	{
		key = KeyEventRing[read].Key;
		mod = KeyEventRing[RingRead].Mod;
		RingRead = (RingRead + 1) % 29;
		return 0;
	}
	key = 0;
	mod = 0;
	return 2;
}

// BW1W120 007dcda0 push the current key+modifiers into the key-event ring; returns the
// read cursor, resetting the ring if it just filled up.
int LHKeyboard::SetKeyValue()
{
	KeyEventRing[RingWrite].Key = CurrentKey;
	KeyEventRing[RingWrite].Mod = ModifierFlags;
	unsigned int next = (RingWrite + 1) % 29;
	int result = RingRead;
	RingWrite = next;
	if (next == (unsigned int)result)
	{
		result = 0;
		RingRead = 0;
		RingWrite = 0;
	}
	return result;
}

// BW1W120 007dbc30 the LH platform entry point (WinMain-shaped; called from _WinMain@16).
// Named for its raw address until its true name is recovered.
int __stdcall jmp_addr_0x007dbc30(HINSTANCE hInstance, HINSTANCE prev_instance, char* cmd_line, int cmd_show)
{
	LHAssertBeforeForceCallback = (void(__cdecl*)())LHAssertBeforeForce;
	LHAssertAfterForceCallback = (void(__cdecl*)())LHAssertAfterForce;
	gSystem.HInstance = hInstance;
	gSystem.field_0x4 = cmd_show;
	gSystem.Terminate = 0;
	gAppCursor = LoadCursorA(hInstance, (LPCSTR)0x6C);
	gArrowCursor = LoadCursorA(NULL, (LPCSTR)0x7F00 /* IDC_ARROW */);
	gAppEvent = CreateEventA(NULL, FALSE, FALSE, NULL);
	RegisterGameWindowClass(hInstance, GameWindowProc);
	CreateGameWindow(hInstance, cmd_show, g_lhScreen.windowed);
	while (!AnyWindowMessages())
		;
	ProcessWindowMessages();
	_lhbeginthread("Mouse Input thread", MouseInputThreadProc, 0, NULL, -255);
	return 0;
}

static bool AnyWindowMessages()
{
	MSG msg;
	return PeekMessageA(&msg, g_windowForScreen, 0, 0, 0) == TRUE;
}

// BW1W120 007dbcf0 / 007dbd00 — installed as the LHLog assert force-callbacks by WinMain.
// When running fullscreen (windowed == 0) they flip DirectDraw's cooperative level so the
// assert dialog can appear over/under the game.
void LHAssertBeforeForce()
{
	if (!g_lhScreen.windowed)
		sub_7DECE0();
}

void LHAssertAfterForce()
{
	if (!g_lhScreen.windowed)
		sub_7DED10();
}

// BW1W120 007dba00 register the game's top-level window class + load its accelerators.
int RegisterGameWindowClass(HINSTANCE inst, WNDPROC proc)
{
	WNDCLASSA wc;
	wc.style = CS_VREDRAW | CS_HREDRAW | CS_DBLCLKS;
	wc.lpfnWndProc = proc;
	wc.cbClsExtra = 0;
	wc.cbWndExtra = 0;
	wc.hInstance = inst;
	wc.hIcon = LoadIconA(inst, "AppIcon");
	wc.hCursor = NULL;
	wc.hbrBackground = NULL;
	wc.lpszMenuName = "AppMenu";
	wc.lpszClassName = "LIONHEAD";
	if (!RegisterClassA(&wc))
		return 2;
	gAccel = LoadAcceleratorsA(inst, "AppAccel");
	return 0;
}

// BW1W120 007dba90 create the game's top-level window (800x600 windowed, or a full-screen
// popup), start mouse-leave tracking, and construct the IME wrapper.
// TODO: 81% — the C++ EH frame (from `new TbIMEWrapper()`, needs /GX) and body now match;
// residual is MSVC caching the constant 1 in a register + a different callee-saved reg
// choice in the CreateWindowEx branch. Optimizer-level.
int CreateGameWindow(HINSTANCE inst, int cmd_show, int windowed)
{
	memset(gKeyboardState, 0, 0xFF);
	gCharRing[0] = 0;
	HWND window;
	if (windowed == 1)
	{
		RECT rect;
		rect.left = 0;
		rect.top = 0;
		rect.bottom = 600;
		rect.right = 800;
		AdjustWindowRect(&rect, 0xCF0000, TRUE);
		window = CreateWindowExA(0, "LIONHEAD", "LIONHEAD", 0xCF0000, 50, 50, rect.right - rect.left,
		                         rect.bottom - rect.top, NULL, NULL, inst, NULL);
	}
	else
	{
		int height = GetSystemMetrics(SM_CYSCREEN);
		int width = GetSystemMetrics(SM_CXSCREEN);
		window = CreateWindowExA(WS_EX_TOPMOST, "LIONHEAD", "LIONHEAD", WS_POPUP, 50, 50, width, height, NULL,
		                         NULL, inst, NULL);
	}
	g_windowForScreen = window;
	if (!window)
		return 2;
	ShowWindow(window, SW_SHOWNORMAL);
	gMenu = GetMenu(g_windowForScreen);
	gTrackMouseEvent.cbSize = 16;
	gTrackMouseEvent.dwFlags = 2;
	gTrackMouseEvent.hwndTrack = g_windowForScreen;
	TrackMouseEvent(&gTrackMouseEvent);
	gTrackingMouse = 1;
	if (gCursorAnimMode == 3)
		SendMessageA(g_windowForScreen, 0x8005, 0, 0);
	TurnOnMenu();
	gTbIME = new (__FILE__, __LINE__) TbIMEWrapper();
	return 0;
}

// TODO: This is probably a LHSystem getter or something
inline LHSurface* GetMouseSurface()
{
	return unk_E85230[unk_E8522C & 0xFF];
}

LRESULT CALLBACK GameWindowProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
	LRESULT result;
	if ((gQueryCancelAutoPlayInit & 1) == 0)
	{
		gQueryCancelAutoPlayInit |= 1;
		gQueryCancelAutoPlayMsg = RegisterWindowMessageA("QueryCancelAutoPlay");
	}

	// Does the IME wrapper want to handle this message?
	if (gTbIME && !gTbIME->ProcessMessage(hWnd, &msg, &wParam, &lParam, &result))
		return result;

	if (msg >= 0x500 && msg < 0x600 && gMessageHook)
		gMessageHook(msg - 0x500, wParam, lParam);

	switch (msg)
	{
	case WM_MOVE:
		g_lhScreen.SetMSOffset();
		break;
	case WM_SIZE:
		if (wParam == 1)
		{
			g_appMinimized = 1;
			gLastCommand = 32770;
		}
		else
		{
			if (wParam == 2 || !wParam)
			{
				g_appMinimized = 0;
				gAppMinimizedByUs = 0;
			}
			else
			{
				gAppMinimizedByUs = 1;
			}
			gLastCommand = 32771;
			gLastCommandParam = lParam;
		}
		break;
	case WM_CREATE:
		gLastCommand = 32769;
		break;
	case WM_DESTROY:
		EnterCriticalSection(&g_screenCritSec);
		PostQuitMessage(0);
		break;
	case WM_ACTIVATEAPP:
		gMouseWheelSkip = 1;
		if (gWindowActive == (int)wParam)
			break;
		gWindowActive = wParam;
		gLastCommand = 32776;
		// fall through to clearkbd
	case WM_KILLFOCUS:
		// TODO: order of the stosb instruction can't get right
		memset(gKeyboardState, 0, 0xFF);
		gCharRing[0] = 0;
		GetMouseObject()->SetButtons(4);
		GetMouseObject()->SetButtons(8);
		GetMouseObject()->SetButtons(0x80);
		unk_E852E4 = 0;
		unk_E852E8 = 0;
		gMouseWheelAccum = 0;
		break;
	case WM_COMMAND:
		// TODO: Nested switch is probably bullshit
		switch (LOWORD(wParam))
		{
		case 32772:
			g_lhScreen.SetMSOffset();
			break;
		default:
			gLastCommand = LOWORD(wParam);
			gLastCommandParam = wParam;
			break;
		}
		break;
	case WM_NCMOUSEMOVE:
		if (!gTrackingMouse)
		{
			TrackMouseEvent(&gTrackMouseEvent);
			gTrackingMouse = 1;
		}
		if (!g_lhScreen.windowed)
			MouseMoveHandler((int)hWnd, lParam, ((GetMessageTimeProc)GetMessageTime)());
		break;
	case WM_CHAR:
	{
		int c = TbIME_ConvertCHAR8toCHAR16((char)wParam) & 0xFFFF;
		if (c)
		{
			int used = charRing.Head - charRing.Tail;
			if (used < 0)
				used += 0x10;
			if (used < 15)
			{
				charRing.Buffer[charRing.Head] = c;
				charRing.Head = (charRing.Head + 1) & 0xF;
			}
		}
		break;
	}
	case WM_KEYDOWN:
	case WM_KEYUP:
	case WM_SYSKEYDOWN:
	case WM_SYSKEYUP:
		GetKeyboardObject().ProcessKeyboard(msg, lParam);
		break;
	case WM_SETCURSOR:
		break;
	case WM_SYSCOMMAND:
		if (wParam == SC_CLOSE)
		{
			gSystem.SetTerminate();
			return 0;
		}
		if (wParam == SC_MAXIMIZE)
		{
			gLastCommand = 40026;
			gLastCommandParam = 61488;
		}
		else if (wParam == SC_RESTORE)
		{
			gAltTabPending = 1;
		}
		break;
	case WM_RBUTTONDOWN:
		SetCapture(hWnd);
		GetMouseObject()->SetButtons(2);
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		break;
	case WM_LBUTTONDBLCLK:
		GetMouseObject()->SetButtons(0x10);
		break;
	case WM_LBUTTONDOWN:
		SetCapture(hWnd);
		GetMouseObject()->SetButtons(1);
		if (gCursorAnimMode != 1 && gCursorAnimMode != 2)
		{
			GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		break;
		}
		((KillTimerProc)KillTimer)(hWnd, 1);
		((SetTimerProc)SetTimer)(hWnd, 1, (unsigned short)gCursorTimerInterval, 0);
		if (gCursorAnimMode == 1)
			GetMouseObject()->SetCurrentCursorAnimFrame(0);
		unk_E85274 = 0;
		// fall through to the shared Draw(1,2)
	case WM_TIMER:
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)2);
		break;
	case WM_LBUTTONUP:
		GetMouseObject()->SetButtons(4);
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((gButtonState & 0x42) == 0)
			((ReleaseCaptureProc)ReleaseCapture)();
		break;
	case WM_RBUTTONUP:
		GetMouseObject()->SetButtons(8);
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((gButtonState & 0x41) == 0)
			((ReleaseCaptureProc)ReleaseCapture)();
		break;
	case WM_MBUTTONDOWN:
		SetCapture(hWnd);
		GetMouseObject()->SetButtons(0x40);
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		break;
	case WM_MBUTTONDBLCLK:
		GetMouseObject()->SetButtons(0);
		break;
	case WM_RBUTTONDBLCLK:
		GetMouseObject()->SetButtons(0x20);
		break;
	case WM_MBUTTONUP:
		GetMouseObject()->SetButtons(0x80);
		GetMouseObject()->Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((gButtonState & 3) == 0)
			((ReleaseCaptureProc)ReleaseCapture)();
		break;
	case 0x20A: // WM_MOUSEWHEEL (not defined at this WINVER)
		break;
	case 0x2A3: // WM_MOUSELEAVE (not defined at this WINVER)
		if ((gButtonState & 0x43) == 0)
			((ReleaseCaptureProc)ReleaseCapture)();
		gTrackingMouse = 0;
		if (g_lhScreen.windowed)
		{
			EnterCriticalSection(&g_screenCritSec);
			if (gMouseNeedsRedraw)
			{
				EnterCriticalSection(&g_screenCritSec);
				if (!unk_E8520C)
				{
					GetMouseSurface()->CopyRegionFromScreen(&unk_E85288, &unk_E852A8, 1);
					unk_E8520C = 1;
				}
				LeaveCriticalSection(&g_screenCritSec);
				gMouseNeedsRedraw = 0;
			}
			LeaveCriticalSection(&g_screenCritSec);
		}
		break;
	case WM_APP + 5:
		((KillTimerProc)KillTimer)(hWnd, 1);
		((SetTimerProc)SetTimer)(hWnd, 1, (unsigned short)gCursorTimerInterval, 0);
		break;
	case WM_USER + 0x10:
		if (wParam)
		{
			int used = charRing.Head - charRing.Tail;
			if (used < 0)
				used += 0x10;
			if (used < 15)
			{
				charRing.Buffer[charRing.Head] = wParam;
				charRing.Head = (charRing.Head + 1) & 0xF;
			}
		}
		break;
	case WM_USER + 1:
		// TODO: identify the WM_USER+1 receiver type; binary dispatches vtable slot 20 here.
		(*(WindowMessageHandler*)(*(int*)wParam + 80))(wParam, hWnd, lParam);
		break;
	case WM_APP + 6:
		((KillTimerProc)KillTimer)(hWnd, 1);
		break;
	case WM_APP + 9:
		if ((unsigned char)unk_E8C0F8)
		break;
		// fall through
	case WM_MOUSEMOVE:
		if (msg == WM_MOUSEMOVE)
		{
			SetEvent(gAppEvent);
			lParam = (unsigned short)lParam | (HIWORD(lParam) << 16);
		}
		if (!gWindowedMode)
		{
			if (!gTrackingMouse)
			{
				TrackMouseEvent(&gTrackMouseEvent);
				gTrackingMouse = 1;
			}
			MouseMoveHandler((int)hWnd, lParam, ((GetMessageTimeProc)GetMessageTime)());
		}
		break;
	case WM_APP + 7:
		if (gCursorMode == 4)
			SetCursor(gArrowCursor);
		else if (gCursorMode == 2)
			SetCursor(gArrowCursor);
		else
			SetCursor(NULL);
		break;
	default:
		if (msg && msg == gQueryCancelAutoPlayMsg)
			return 1;
		break;
	}
	sub_7DE8D0();
	return ((DefWindowProcProc)DefWindowProcA)(hWnd, msg, wParam, lParam);
}

// BW1W120 007e5af0 add the windowed-mode client offset to a coordinate. Inlined into
// CopyRegionFromScreen; the local LHCoord temp (not scalars, which MSVC would DCE) is what
// produces the target's extra 8-byte stack slot.
inline void LHCoord::AddMSWindowOffset()
{
	LHCoord offset;
	offset.x = g_lhScreen.MsClientOffsetX;
	offset.y = g_lhScreen.MsClientOffsetY;
	x += offset.x;
	y += offset.y;
}

// BW1W120 007dc8b0 blit a saved region back onto the screen (primary or back buffer),
// applying the windowed-mode client offset when copying to the primary surface.
int LHSurface::CopyRegionFromScreen(LHRegion* region, LHCoord* pos, int from_primary)
{
	LHCoord coord;
	coord.x = pos->x;
	coord.y = pos->y;
	IDirectDrawSurface7* surface;
	if (from_primary == 1)
	{
		coord.AddMSWindowOffset();
		surface = g_lhScreen.PPrimarySurface;
	}
	else
	{
		surface = g_lhScreen.PBackSurface;
	}
	return CopySurface(region, &coord, surface, LH_COPY_DIRECTION_0x0, 0);
}

static int GetCursorPosClient(int param_1, POINT* point)
{
	GetCursorPos(point);
	return ScreenToClient(g_windowForScreen, point);
}
