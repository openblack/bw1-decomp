#ifndef BW1_DECOMP_LH_SYSTEM_GLOBALS_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_GLOBALS_INCLUDED_H

// Keep the fixed-address globals in one declaration block so every TU uses the
// same type and the compiler emits the original COFF relocations.
struct TbIMEWrapper;
struct LHSystem;
struct CharRing;

extern LHSystem gSystem;
// LHSystem::HInstance is the first field; this preserves the gSystem relocation.
#define g_hInstance (*(HINSTANCE*)&gSystem)
extern LHScreen g_lhScreen;
extern LHMouse gMouse;
extern LHDraw gLHDraw;
extern CRITICAL_SECTION g_screenCritSec;

extern int unk_E8520C;
extern int gMouseNeedsRedraw;
extern int gCursorMode;
extern int unk_E8522C;
extern LHSurface* unk_E85230[0xF];
extern UINT gCursorTimerInterval;
extern int gCursorAnimMode;
extern int unk_E85274;
extern LHRegion unk_E85288;
extern LHCoord unk_E852A8;
extern int unk_E852E4;
extern int unk_E852E8;
extern int gMouseWheelAccum;
extern int gButtonState;
extern int gMouseMoveDelta;
extern uint8_t gKeyboardState[0xFC];
extern uint16_t unk_E85470;
extern uint16_t unk_E85472;
extern uint8_t gCharRing[0x60];
extern CharRing charRing;

extern UINT gLastCommand;
extern unsigned int gLastCommandParam;
extern int gLastMouseMsgTime;
extern UINT gQueryCancelAutoPlayMsg;
extern uint8_t gQueryCancelAutoPlayInit;
extern HANDLE gAppEvent;
extern HCURSOR gArrowCursor;
extern HCURSOR gAppCursor;
extern struct tagTRACKMOUSEEVENT gTrackMouseEvent;
extern HACCEL gAccel;
extern HMENU gMenu;
extern HWND g_windowForScreen;
extern int unk_E8C0F8;
__declspec(dllimport) bool InAssertDialog;
extern uint8_t gWindowedMode;
extern uint8_t gAltTabPending;
extern int g_appMinimized;
extern int gAppMinimizedByUs;
extern TbIMEWrapper* gTbIME;
extern uint8_t gMouseThreadRunning;
extern uint8_t gTerminateRequested;
extern void (__stdcall* gMessageHook)(UINT, int, unsigned int);
extern int gLastKey;
extern CRITICAL_SECTION gKeyboard;
extern int unk_E8C5E0;
extern int gWindowActive;
extern int gTrackingMouse;
extern uint8_t gMouseWheelSkip;
extern unsigned char gKeyToAsciiTable[0x100];


#endif /* BW1_DECOMP_LH_SYSTEM_GLOBALS_INCLUDED_H */
