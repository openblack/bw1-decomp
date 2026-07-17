#include <windows.h>
#include <commctrl.h>
#include <ddraw.h>

// Standard Win32 declarations are used below; import decorations are defined in symbols.txt.

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For struct LHSystem */

#include <Lionhead/LH3DLib/development/LHCoord.h>  /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHMouse.h>         /* For struct LHMouse */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>        /* For struct LHScreen */
#include <Lionhead/LHLib/ver5.0/LHSurface.h>       /* For struct LHSurface */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

WINUSERAPI BOOL WINAPI TrackMouseEvent(LPTRACKMOUSEEVENT);

// slim::TbIME helpers implemented in another TU.
// BW1W120 007f42b0 slim::TbIME::ConvertCHAR8toCHAR16(char)
int TbIME_ConvertCHAR8toCHAR16(char c);
// BW1W120 007de8d0 (LHScreen.cpp) per-message screen bookkeeping
void sub_7DE8D0();

// The IME helper wrapper (slim::TbIME), constructed on window creation.
struct TbIMEWrapper
{
	void* field_0x0;
	// BW1W120 007f3b80 TbIMEWrapper::TbIMEWrapper(void)
	TbIMEWrapper();
	// BW1W120 007f3d20 TbIMEWrapper::ProcessMessage(HWND, UINT*, WPARAM*, LPARAM*, LRESULT*)
	// __thiscall: `this` (LHSys::TheSystem.TbIME) rides in ecx, only the 5 explicit args are pushed.
	// Returns a byte (target tests al, not eax).
	bool ProcessMessage(HWND wnd, UINT* msg, WPARAM* w, LPARAM* l, LRESULT* result);
};
// BW1W120 00e85204 is TheSystem.mouse: LHSys embeds LHMouse at offset 0x1c4.
static_assert(offsetof(LHSys, mouse) == 0x1c4, "LHSys mouse offset changed");

// This TU's own file-scope state, outside the LHSys aggregate.
// BW1W120 008a9338 imported from LHLogR: nonzero while the assert dialog is up.
__declspec(dllimport) bool InAssertDialog;
// BW1W120 00e8c118 guards the key-event ring; the first object after TheSystem.
static CRITICAL_SECTION gKeyboardCritSec;
// BW1W120 00c311a4 defined here: it heads this TU's initialized-data cluster
// (gWindowActive/gTrackingMouse/the class-name strings follow it).
uint8_t LHMouse::MouseWheelSkip = 1;
// BW1W120 00c311a8 whether the game window is the active application (WM_ACTIVATEAPP).
static int gWindowActive = 1;
// BW1W120 00c311ac whether a TrackMouseEvent request is armed (rearmed on WM_*MOUSEMOVE).
static int gTrackingMouse = 1;
// BW1W120 00c3122c UK-layout scancode -> ASCII; low half unshifted, high half shifted
// (0x9C = 'GBP'). Zero rows cover keypad/function/extended scancodes with no character.
static unsigned char gKeyToAsciiTable[0x100] = {
	0x00, 0x00, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x30, 0x2D, 0x3D, 0x08, 0x09, 0x71, 0x77, 0x65,
	0x72, 0x74, 0x79, 0x75, 0x69, 0x6F, 0x70, 0x5B, 0x5D, 0x00, 0x00, 0x61, 0x73, 0x64, 0x66, 0x67, 0x68, 0x6A, 0x6B,
	0x6C, 0x3B, 0x27, 0x60, 0x00, 0x23, 0x7A, 0x78, 0x63, 0x76, 0x62, 0x6E, 0x6D, 0x2C, 0x2E, 0x2F, 0x00, 0x2A, 0x00,
	0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D,
	0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x2F, 0x00, 0x00, 0x28, 0x29, 0x2F, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x22, 0x9C, 0x24,
	0x25, 0x5E, 0x26, 0x2A, 0x28, 0x29, 0x5F, 0x2B, 0x08, 0x09, 0x51, 0x57, 0x45, 0x52, 0x54, 0x59, 0x55, 0x49, 0x4F,
	0x50, 0x7B, 0x7D, 0x00, 0x00, 0x41, 0x53, 0x44, 0x46, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x3A, 0x40, 0x7E, 0x00, 0x7E,
	0x5A, 0x58, 0x43, 0x56, 0x42, 0x4E, 0x4D, 0x3C, 0x3E, 0x3F, 0x00, 0x2A, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x28, 0x29, 0x2F,
	0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

// BW1W120 007db800 construct TheSystem's embedded screen, mouse, input, and text state.
LHSys::LHSys()
{
	InitializeCriticalSection(&gKeyboardCritSec);
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

// BW1W120 00e85040 the one LHSys instance; its static-init thunk is this TU's .CRT$XCU
// entry (0x9C7CF4), and the registered atexit dtor tail-jumps into LHScreen::~LHScreen.
LHSys LHSys::TheSystem;

// Assert force-callbacks, provided by LHLogR (imported).
// BW1W120 008a9358 / 008a93d0
__declspec(dllimport) void(__cdecl* LHAssertBeforeForceCallback)();
__declspec(dllimport) void(__cdecl* LHAssertAfterForceCallback)();

// BW1W120 imported LHLogR: spawn a named worker thread.
__declspec(dllimport) unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack,
                                                   void* arg, long priority);

// Functions defined further down / elsewhere in this TU, referenced by WinMain.
void             LHAssertBeforeForce();                                 // 007dbcf0
void             LHAssertAfterForce();                                  // 007dbd00
void             sub_7DECE0();                                          // 007dece0 (LHScreen.cpp) restore window
void             sub_7DED10();                                          // 007ded10 (LHScreen.cpp) fullscreen coop
int              RegisterGameWindowClass(HINSTANCE inst, WNDPROC proc); // 007dba00
int              CreateGameWindow(HINSTANCE inst, int cmd_show, int windowed); // 007dba90
void             MouseInputThreadProc(void* arg);                              // 007dbd10
LRESULT CALLBACK GameWindowProc(HWND wnd, UINT msg, WPARAM w, LPARAM l);       // 007dbf30
typedef void(__stdcall* WindowMessageHandler)(WPARAM, HWND, LPARAM);

LRESULT LHSystem::SetTerminate()
{
	LRESULT result = Terminate;
	if (!result)
	{
		Terminate = 1;
		result = IsWindow(LHSys::GetScreen().MsWindowHandle);
		if (result)
			result = SendMessageA(LHSys::GetScreen().MsWindowHandle, WM_SYSCOMMAND, SC_CLOSE, 0);
	}
	return result;
}

int TurnOffMenu()
{
	return SetMenu(LHSys::GetWindow(), NULL);
}

int TurnOnMenu()
{
	return SetMenu(LHSys::GetWindow(), LHSys::TheSystem.Menu);
}

void ProcessWindowMessages()
{
	MSG msg;
	do
	{
		while (PeekMessageA(&msg, LHSys::GetWindow(), 0, 0, 0))
		{
			GetMessageA(&msg, LHSys::GetWindow(), 0, 0);
			if (!TranslateAcceleratorA(LHSys::GetWindow(), LHSys::TheSystem.Accel, &msg))
			{
				TranslateMessage(&msg);
				DispatchMessageA(&msg);
			}
		}
		if (LHSys::TheSystem.AltTabPending)
		{
			LHSys::TheSystem.AltTabPending = 0;
			LHSys::GetScreen().AltTabReactivate();
		}
	} while (LHScreen::AltTabbedAway);
}

unsigned char __stdcall LHKeyToAscii(int key, int shift)
{
	return gKeyToAsciiTable[key | (shift != 0 ? 0x80 : 0)];
}

int ResizeWindow(unsigned short width, unsigned short height)
{
	if (LHSys::GetScreen().windowed)
	{
		ShowWindow(LHSys::GetScreen().MsWindowHandle, SW_SHOWNORMAL);
		RECT client;
		GetClientRect(LHSys::GetScreen().MsWindowHandle, &client);
		RECT rect;
		rect.left = 0;
		rect.top = 0;
		if (height && height <= LHSys::GetScreen().height)
			rect.bottom = client.bottom - client.top;
		else
			rect.bottom = LHSys::GetScreen().height;
		if (width && width <= LHSys::GetScreen().width)
			rect.right = client.right - client.left;
		else
			rect.right = LHSys::GetScreen().width;
		AdjustWindowRect(&rect, 0xCF0000, TRUE);
		GetWindowRect(LHSys::GetScreen().MsWindowHandle, &client);
		if (!MoveWindow(LHSys::GetScreen().MsWindowHandle, client.left, client.top, rect.right - rect.left,
		                rect.bottom - rect.top, TRUE))
			return 2;
	}
	return 0;
}

// BW1W120 007dbed0 the app-terminate handler (called from WinMain and pc_main).
// Named for its raw address until its true name is recovered.
void jmp_addr_0x007dbed0()
{
	if (!LHSys::TheSystem.TerminateRequested)
	{
		LHSys::TheSystem.TerminateRequested = 1;
		while (LHSys::TheSystem.MouseThreadRunning)
			Sleep(300);
	}
	EnterCriticalSection(&LHScreen::CriticalSection);
	LHSys::GetSystem().SetTerminate();
}

static bool AnyWindowMessages();
static int  GetCursorPosClient(int hwnd, POINT* point);

// BW1W120 007dbd10 the mouse-input worker thread. When the WndProc hasn't fed us a
// mouse message (the event times out) it polls the async button/modifier state and the
// cursor position itself and posts a synthetic 0x8009 message to the window.
// TODO: 90% — logic faithful. Residual: MSVC hoists the GetAsyncKeyState import ptr into a
// different callee-saved reg + caches the "1" constant. Optimizer-level, not logic.
void MouseInputThreadProc(void* arg)
{
	if (!LHSys::TheSystem.MouseThreadRunning)
	{
		while (true)
		{
			DWORD wait = WaitForSingleObject(LHSys::TheSystem.AppEvent, 40);
			if (LHSys::TheSystem.MouseThreadRunning)
				break;
			if (wait)
			{
				while ((InAssertDialog || LHSys::TheSystem.WindowedMode || !gWindowActive ||
				        LHSys::TheSystem.field_0x70b8) &&
				       !LHSys::TheSystem.MouseThreadRunning)
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
				GetWindowRect(LHSys::GetWindow(), &rect);
				if (LHSys::GetScreen().windowed)
					GetCursorPosClient((int)LHSys::GetWindow(), &point);
				PostMessageA(LHSys::GetWindow(), 0x8009, buttons,
				             (unsigned short)point.x | ((unsigned short)point.y << 16));
				if (LHSys::TheSystem.MouseThreadRunning)
					break;
			}
		}
	}
	LHSys::TheSystem.MouseThreadRunning = 0;
}

// BW1W120 007dc920 handle a mouse-move: track the inter-move delta, pick the cursor,
// and forward the new position to the mouse.
void MouseMoveHandler(int hwnd, int lparam, int msg_time)
{
	int prev = LHSys::TheSystem.LastMouseMsgTime;
	if (!LHSys::TheSystem.LastMouseMsgTime)
		prev = msg_time;
	LHSys::TheSystem.LastMouseMsgTime = msg_time;
	// TODO: CallbackArg2/DoubleBuffered are LHMouse.h's names for these fields; from this
	// TU's usage they read as inter-move time delta / needs-redraw. Revisit the names.
	LHSys::GetMouse().CallbackArg2 = msg_time - prev;
	LHCoord pos;
	pos.x = (short)LOWORD(lparam);
	pos.y = (short)HIWORD(lparam);
	if (LHSys::GetMouse().ImageMode == 4)
		SetCursor(LHSys::TheSystem.ArrowCursor);
	else if (LHSys::GetMouse().ImageMode == 2)
		SetCursor(LHSys::TheSystem.ArrowCursor);
	else
		SetCursor(NULL);
	LHSys::GetMouse().UpdateCurrentPos(pos);
	LHSys::GetMouse().DoubleBuffered = 1;
	LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, LH_MOUSE_EVENT_TYPE_0x4);
}

// BW1W120 007dcab0 reset all key-down state and the modifier flags.
void ClearKeyboardState()
{
	memset(LHSys::GetKeyboard().KeyState, 0, 0xFF);
	LHSys::GetKeyboard().ModifierFlags = 0;
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
	if (key_data & LH_KEY_DATA_EXTENDED)
		scancode += LH_KEY_SCAN_EXTENDED_OFFSET;
	ModifierFlags = 0;
	int reported = scancode;
	if (key_data & LH_KEY_DATA_RELEASED)
	{
		KeyState[scancode] = 0;
		if (scancode == LH_KEY_SCAN_LSHIFT)
		{
			if (!KeyState[LH_KEY_SCAN_RSHIFT])
				goto check_shift;
		}
		else
		{
			if (scancode != LH_KEY_SCAN_RSHIFT)
				goto check_shift;
			if (!KeyState[LH_KEY_SCAN_LSHIFT])
				goto check_rshift;
		}
		KeyState[LH_KEY_SCAN_RSHIFT] = 0;
	check_shift:
		if (KeyState[LH_KEY_SCAN_LSHIFT])
		{
		set_shift:
			ModifierFlags |= LH_KEY_MODIFIER_SHIFT;
		check_ctrl_alt:
			if (KeyState[LH_KEY_SCAN_LCTRL] || KeyState[LH_KEY_SCAN_RCTRL])
				ModifierFlags |= LH_KEY_MODIFIER_CTRL;
			if (KeyState[LH_KEY_SCAN_LALT] || KeyState[LH_KEY_SCAN_RALT])
				ModifierFlags |= LH_KEY_MODIFIER_ALT;
			CurrentKey = 0;
			goto invoke;
		}
	check_rshift:
		if (!KeyState[LH_KEY_SCAN_RSHIFT])
			goto check_ctrl_alt;
		goto set_shift;
	}
	KeyState[scancode] = 1;
	if (KeyState[LH_KEY_SCAN_LSHIFT] || KeyState[LH_KEY_SCAN_RSHIFT])
		ModifierFlags |= LH_KEY_MODIFIER_SHIFT;
	if (KeyState[LH_KEY_SCAN_LCTRL] || KeyState[LH_KEY_SCAN_RCTRL])
		ModifierFlags |= LH_KEY_MODIFIER_CTRL;
	if (KeyState[LH_KEY_SCAN_LALT] || KeyState[LH_KEY_SCAN_RALT])
		ModifierFlags |= LH_KEY_MODIFIER_ALT;
	{
		int active = StringActive;
		CurrentKey = scancode;
		if (active)
			StringCollect(scancode);
		SetKeyValue();
	}
invoke:
	LHSys::TheSystem.LastKey = CurrentKey;
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
	int          result = RingRead;
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
	LHSys::GetSystem().HInstance = hInstance;
	LHSys::GetSystem().field_0x4 = cmd_show;
	LHSys::GetSystem().Terminate = 0;
	LHSys::TheSystem.AppCursor = LoadCursorA(hInstance, (LPCSTR)0x6C);
	LHSys::TheSystem.ArrowCursor = LoadCursorA(NULL, (LPCSTR)0x7F00 /* IDC_ARROW */);
	LHSys::TheSystem.AppEvent = CreateEventA(NULL, FALSE, FALSE, NULL);
	RegisterGameWindowClass(hInstance, GameWindowProc);
	CreateGameWindow(hInstance, cmd_show, LHSys::GetScreen().windowed);
	while (!AnyWindowMessages())
		;
	ProcessWindowMessages();
	_lhbeginthread("Mouse Input thread", MouseInputThreadProc, 0, NULL, -255);
	return 0;
}

static bool AnyWindowMessages()
{
	MSG msg;
	return PeekMessageA(&msg, LHSys::GetWindow(), 0, 0, 0) == TRUE;
}

// BW1W120 007dbcf0 / 007dbd00 — installed as the LHLog assert force-callbacks by WinMain.
// When running fullscreen (windowed == 0) they flip DirectDraw's cooperative level so the
// assert dialog can appear over/under the game.
void LHAssertBeforeForce()
{
	if (!LHSys::GetScreen().windowed)
		sub_7DECE0();
}

void LHAssertAfterForce()
{
	if (!LHSys::GetScreen().windowed)
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
	LHSys::TheSystem.Accel = LoadAcceleratorsA(inst, "AppAccel");
	return 0;
}

// BW1W120 007dba90 create the game's top-level window (800x600 windowed, or a full-screen
// popup), start mouse-leave tracking, and construct the IME wrapper.
// TODO: 81% — the C++ EH frame (from `new TbIMEWrapper()`, needs /GX) and body now match;
// residual is MSVC caching the constant 1 in a register + a different callee-saved reg
// choice in the CreateWindowEx branch. Optimizer-level.
int CreateGameWindow(HINSTANCE inst, int cmd_show, int windowed)
{
	memset(LHSys::GetKeyboard().KeyState, 0, 0xFF);
	LHSys::GetKeyboard().ModifierFlags = 0;
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
		window = CreateWindowExA(WS_EX_TOPMOST, "LIONHEAD", "LIONHEAD", WS_POPUP, 50, 50, width, height, NULL, NULL,
		                         inst, NULL);
	}
	LHSys::TheSystem.Window = window;
	if (!window)
		return 2;
	ShowWindow(window, SW_SHOWNORMAL);
	LHSys::TheSystem.Menu = GetMenu(LHSys::GetWindow());
	LHSys::TheSystem.TrackMouseEventInfo.cbSize = 16;
	LHSys::TheSystem.TrackMouseEventInfo.dwFlags = 2;
	LHSys::TheSystem.TrackMouseEventInfo.hwndTrack = LHSys::GetWindow();
	TrackMouseEvent(&LHSys::TheSystem.TrackMouseEventInfo);
	gTrackingMouse = 1;
	if (LHSys::GetMouse().AnimType == 3)
		SendMessageA(LHSys::GetWindow(), 0x8005, 0, 0);
	TurnOnMenu();
	LHSys::TheSystem.TbIME = new (__FILE__, __LINE__) TbIMEWrapper();
	return 0;
}

// The under-cursor save surface currently pointed at by the mouse's buffer toggle.
inline LHSurface* GetMouseSurface()
{
	return LHSys::GetMouse().SaveSurface[LHSys::GetMouse().BufferToggle];
}

LRESULT CALLBACK GameWindowProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam)
{
	LRESULT result;
	if ((LHSys::TheSystem.QueryCancelAutoPlayInit & 1) == 0)
	{
		LHSys::TheSystem.QueryCancelAutoPlayInit |= 1;
		LHSys::TheSystem.QueryCancelAutoPlayMsg = RegisterWindowMessageA("QueryCancelAutoPlay");
	}

	// Does the IME wrapper want to handle this message?
	if (LHSys::TheSystem.TbIME && !LHSys::TheSystem.TbIME->ProcessMessage(hWnd, &msg, &wParam, &lParam, &result))
		return result;

	if (msg >= 0x500 && msg < 0x600 && LHSys::TheSystem.MessageHook)
		LHSys::TheSystem.MessageHook(msg - 0x500, wParam, lParam);

	switch (msg)
	{
	case WM_MOVE:
		LHSys::GetScreen().SetMSOffset();
		break;
	case WM_SIZE:
		if (wParam == 1)
		{
			LHSys::TheSystem.AppMinimized = 1;
			LHSys::TheSystem.LastCommand = 32770;
		}
		else
		{
			if (wParam == 2 || !wParam)
			{
				LHSys::TheSystem.AppMinimized = 0;
				LHSys::TheSystem.AppMinimizedByUs = 0;
			}
			else
			{
				LHSys::TheSystem.AppMinimizedByUs = 1;
			}
			LHSys::TheSystem.LastCommand = 32771;
			LHSys::TheSystem.LastCommandParam = lParam;
		}
		break;
	case WM_CREATE:
		LHSys::TheSystem.LastCommand = 32769;
		break;
	case WM_DESTROY:
		EnterCriticalSection(&LHScreen::CriticalSection);
		PostQuitMessage(0);
		break;
	case WM_ACTIVATEAPP:
		LHMouse::MouseWheelSkip = 1;
		if (gWindowActive == (int)wParam)
			break;
		gWindowActive = wParam;
		LHSys::TheSystem.LastCommand = 32776;
		// fall through to clearkbd
	case WM_KILLFOCUS:
		// TODO: order of the stosb instruction can't get right
		memset(LHSys::GetKeyboard().KeyState, 0, 0xFF);
		LHSys::GetKeyboard().ModifierFlags = 0;
		LHSys::GetMouse().SetButtons(4);
		LHSys::GetMouse().SetButtons(8);
		LHSys::GetMouse().SetButtons(0x80);
		LHSys::GetMouse().AccumDelta.x = 0;
		LHSys::GetMouse().AccumDelta.y = 0;
		LHSys::GetMouse().MouseWheelAccum = 0;
		break;
	case WM_COMMAND:
		// TODO: Nested switch is probably bullshit
		switch (LOWORD(wParam))
		{
		case 32772:
			LHSys::GetScreen().SetMSOffset();
			break;
		default:
			LHSys::TheSystem.LastCommand = LOWORD(wParam);
			LHSys::TheSystem.LastCommandParam = wParam;
			break;
		}
		break;
	case WM_NCMOUSEMOVE:
		if (!gTrackingMouse)
		{
			TrackMouseEvent(&LHSys::TheSystem.TrackMouseEventInfo);
			gTrackingMouse = 1;
		}
		if (!LHSys::GetScreen().windowed)
			MouseMoveHandler((int)hWnd, lParam, GetMessageTime());
		break;
	case WM_CHAR: {
		int c = TbIME_ConvertCHAR8toCHAR16((char)wParam) & 0xFFFF;
		if (c)
		{
			int used = LHSys::TheSystem.charRing.Head - LHSys::TheSystem.charRing.Tail;
			if (used < 0)
				used += 0x10;
			if (used < 15)
			{
				LHSys::TheSystem.charRing.Buffer[LHSys::TheSystem.charRing.Head] = c;
				LHSys::TheSystem.charRing.Head = (LHSys::TheSystem.charRing.Head + 1) & 0xF;
			}
		}
		break;
	}
	case WM_KEYDOWN:
	case WM_KEYUP:
	case WM_SYSKEYDOWN:
	case WM_SYSKEYUP:
		LHSys::GetKeyboard().ProcessKeyboard(msg, lParam);
		break;
	case WM_SETCURSOR:
		break;
	case WM_SYSCOMMAND:
		if (wParam == SC_CLOSE)
		{
			LHSys::GetSystem().SetTerminate();
			return 0;
		}
		if (wParam == SC_MAXIMIZE)
		{
			LHSys::TheSystem.LastCommand = 40026;
			LHSys::TheSystem.LastCommandParam = 61488;
		}
		else if (wParam == SC_RESTORE)
		{
			LHSys::TheSystem.AltTabPending = 1;
		}
		break;
	case WM_RBUTTONDOWN:
		SetCapture(hWnd);
		LHSys::GetMouse().SetButtons(2);
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		break;
	case WM_LBUTTONDBLCLK:
		LHSys::GetMouse().SetButtons(0x10);
		break;
	case WM_LBUTTONDOWN:
		SetCapture(hWnd);
		LHSys::GetMouse().SetButtons(1);
		if (LHSys::GetMouse().AnimType != 1 && LHSys::GetMouse().AnimType != 2)
		{
			LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
			break;
		}
		KillTimer(hWnd, 1);
		SetTimer(hWnd, 1, (unsigned short)LHSys::GetMouse().AnimParam, 0);
		if (LHSys::GetMouse().AnimType == 1)
			LHSys::GetMouse().SetCurrentCursorAnimFrame(0);
		LHSys::GetMouse().AnimReverse = 0;
		// fall through to the shared Draw(1,2)
	case WM_TIMER:
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)2);
		break;
	case WM_LBUTTONUP:
		LHSys::GetMouse().SetButtons(4);
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((LHSys::GetMouse().Buttons & 0x42) == 0)
			ReleaseCapture();
		break;
	case WM_RBUTTONUP:
		LHSys::GetMouse().SetButtons(8);
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((LHSys::GetMouse().Buttons & 0x41) == 0)
			ReleaseCapture();
		break;
	case WM_MBUTTONDOWN:
		SetCapture(hWnd);
		LHSys::GetMouse().SetButtons(0x40);
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		break;
	case WM_MBUTTONDBLCLK:
		LHSys::GetMouse().SetButtons(0);
		break;
	case WM_RBUTTONDBLCLK:
		LHSys::GetMouse().SetButtons(0x20);
		break;
	case WM_MBUTTONUP:
		LHSys::GetMouse().SetButtons(0x80);
		LHSys::GetMouse().Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)64);
		if ((LHSys::GetMouse().Buttons & 3) == 0)
			ReleaseCapture();
		break;
	case 0x20A: // WM_MOUSEWHEEL (not defined at this WINVER)
		break;
	case 0x2A3: // WM_MOUSELEAVE (not defined at this WINVER)
		if ((LHSys::GetMouse().Buttons & 0x43) == 0)
			ReleaseCapture();
		gTrackingMouse = 0;
		if (LHSys::GetScreen().windowed)
		{
			EnterCriticalSection(&LHScreen::CriticalSection);
			if (LHSys::GetMouse().DoubleBuffered)
			{
				EnterCriticalSection(&LHScreen::CriticalSection);
				if (!LHSys::GetMouse().Locked)
				{
					GetMouseSurface()->CopyRegionFromScreen(&LHSys::GetMouse().PrevSavedRegion,
					                                        &LHSys::GetMouse().PrevDrawRegion.start, 1);
					LHSys::GetMouse().Locked = 1;
				}
				LeaveCriticalSection(&LHScreen::CriticalSection);
				LHSys::GetMouse().DoubleBuffered = 0;
			}
			LeaveCriticalSection(&LHScreen::CriticalSection);
		}
		break;
	case WM_APP + 5:
		KillTimer(hWnd, 1);
		SetTimer(hWnd, 1, (unsigned short)LHSys::GetMouse().AnimParam, 0);
		break;
	case WM_USER + 0x10:
		if (wParam)
		{
			int used = LHSys::TheSystem.charRing.Head - LHSys::TheSystem.charRing.Tail;
			if (used < 0)
				used += 0x10;
			if (used < 15)
			{
				LHSys::TheSystem.charRing.Buffer[LHSys::TheSystem.charRing.Head] = wParam;
				LHSys::TheSystem.charRing.Head = (LHSys::TheSystem.charRing.Head + 1) & 0xF;
			}
		}
		break;
	case WM_USER + 1:
		// TODO: identify the WM_USER+1 receiver type; binary dispatches vtable slot 20 here.
		(*(WindowMessageHandler*)(*(int*)wParam + 80))(wParam, hWnd, lParam);
		break;
	case WM_APP + 6:
		KillTimer(hWnd, 1);
		break;
	case WM_APP + 9:
		if (LHSys::TheSystem.field_0x70b8)
			break;
		// fall through
	case WM_MOUSEMOVE:
		if (msg == WM_MOUSEMOVE)
		{
			SetEvent(LHSys::TheSystem.AppEvent);
			lParam = (unsigned short)lParam | (HIWORD(lParam) << 16);
		}
		if (!LHSys::TheSystem.WindowedMode)
		{
			if (!gTrackingMouse)
			{
				TrackMouseEvent(&LHSys::TheSystem.TrackMouseEventInfo);
				gTrackingMouse = 1;
			}
			MouseMoveHandler((int)hWnd, lParam, GetMessageTime());
		}
		break;
	case WM_APP + 7:
		if (LHSys::GetMouse().ImageMode == 4)
			SetCursor(LHSys::TheSystem.ArrowCursor);
		else if (LHSys::GetMouse().ImageMode == 2)
			SetCursor(LHSys::TheSystem.ArrowCursor);
		else
			SetCursor(NULL);
		break;
	default:
		if (msg && msg == LHSys::TheSystem.QueryCancelAutoPlayMsg)
			return 1;
		break;
	}
	sub_7DE8D0();
	return DefWindowProcA(hWnd, msg, wParam, lParam);
}

// BW1W120 007e5af0 add the windowed-mode client offset to a coordinate. Inlined into
// CopyRegionFromScreen; the local LHCoord temp (not scalars, which MSVC would DCE) is what
// produces the target's extra 8-byte stack slot.
inline void LHCoord::AddMSWindowOffset()
{
	LHCoord offset;
	offset.x = LHSys::GetScreen().MsClientOffsetX;
	offset.y = LHSys::GetScreen().MsClientOffsetY;
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
		surface = LHSys::GetScreen().PPrimarySurface;
	}
	else
	{
		surface = LHSys::GetScreen().PBackSurface;
	}
	return CopySurface(region, &coord, surface, LH_COPY_DIRECTION_0x0, 0);
}

static int GetCursorPosClient(int param_1, POINT* point)
{
	GetCursorPos(point);
	return ScreenToClient(LHSys::GetWindow(), point);
}
