#ifndef BW1_DECOMP_LH_DIALOG_LIB_INCLUDED_H
#define BW1_DECOMP_LH_DIALOG_LIB_INCLUDED_H

#ifndef __AFXWIN_H__
#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h" // main symbols

class CLHDialogLibApp : public CWinApp
{
public:
	// BW1W120 10003910
	CLHDialogLibApp();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 100038a0
	// BW1W120 100038d0
	DECLARE_MESSAGE_MAP()
};

#define LHDIALOG_API __declspec(dllexport)

// BW1W120 10001c80 BW1M119 011311c0 (LHCombined Release)
LHDIALOG_API int LHEditBox(const char* caption, const char* prompt, const char* text, int max_length, char* result);
// BW1W120 100021b0 BW1M119 01131180 (LHCombined Release)
LHDIALOG_API int LHEditBox(const char* caption, unsigned long x, unsigned long y, unsigned long width,
                           unsigned long height, const char* text, int max_length, char* result);
// BW1W120 10002670 BW1M119 01131140 (LHCombined Release)
LHDIALOG_API int LHProgressBox(const char* title, const char* prompt);
// Position is 0-100.
// BW1W120 10002910 BW1M119 01131100 (LHCombined Release)
LHDIALOG_API int LHProgressBoxPosition(int position);
// BW1W120 10002a40 BW1M119 011310c0 (LHCombined Release)
LHDIALOG_API int LHProgressBoxPrompt(const char* prompt);
// BW1W120 10002be0 BW1M119 01131080 (LHCombined Release)
LHDIALOG_API int LHProgressBoxDestroy();
// BW1W120 10002c90 BW1M119 01131030 (LHCombined Release)
LHDIALOG_API int LHSystemSpecBox(char* os, char* processor, char* memory, char* video, char* sound, char* name,
                                 char* test_reference, unsigned long* screen_width, unsigned long* screen_height,
                                 unsigned long* screen_depth, int* fullscreen, int* enable_network,
                                 unsigned long* video_device, int* use_sound_hardware);
// BW1W120 100030c0 BW1M119 01130ff0 (LHCombined Release)
LHDIALOG_API void LHSystemSpecSummaryBox(char* text);
// BW1W120 10003250 BW1M119 01130fc0 (LHCombined Release)
LHDIALOG_API void LHCameraParamsStart();
// BW1W120 10003330 BW1M119 01130f90 (LHCombined Release)
LHDIALOG_API void LHCameraParamsInit(int index, char* name, int value);
// BW1W120 10003400 BW1M119 01130f50 (LHCombined Release)
LHDIALOG_API int LHCameraParamsGetValue(int index);
// BW1W120 100034e0 BW1M119 01130f10 (LHCombined Release)
LHDIALOG_API int LHCameraParamsSavePressed();
// BW1W120 100035e0 BW1M119 01130ed0 (LHCombined Release)
LHDIALOG_API int LHCameraParamsLoadPressed();
// BW1W120 100036e0 BW1M119 01130e90 (LHCombined Release)
LHDIALOG_API int LHCameraParamsResetPressed();
// BW1W120 100037e0 BW1M119 01130e60 (LHCombined Release)
LHDIALOG_API void LHCameraParamsStop();

#endif /* BW1_DECOMP_LH_DIALOG_LIB_INCLUDED_H */
