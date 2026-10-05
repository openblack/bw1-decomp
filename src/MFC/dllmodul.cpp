// clang-format off
// dllmodul.cpp: MFC 6.0's static part for regular DLLs using the shared MFC DLL
// (mfcs42d.lib), reconstructed from LHDialogLib.dll. ASSERT, VERIFY and DEBUG_NEW
// bake __LINE__ into the code, so the line layout is fixed; a macro call spanning
// two lines takes the number of its closing line. It owns the DLL's module state,
// DllMain and RawDllMain.

#include <afxwin.h>
#include <atlbase.h> // MFC's own stdafx.h pulls in ATL; its selectany GUIDs land here
#ifdef _DEBUG
#undef THIS_FILE
// __FILE__ of the original build.
static char THIS_FILE[] = "dllmodul.cpp";
#endif

#define new DEBUG_NEW

#define NONZEROFIXED LMEM_FIXED // from MFC's private afximpl.h


// global data

// The following symbol used to force inclusion of this module for _USRDLL
extern "C" { int _afxForceUSRDLL; }

#ifdef _AFXDLL

// BW1W120 1001cd88
static AFX_EXTENSION_MODULE controlDLL;

// force initialization early
#pragma warning(disable: 4074)
#pragma init_seg(lib)

LRESULT CALLBACK AfxWndProcDllStatic(HWND, UINT, WPARAM, LPARAM);


// _AFX_DLL_MODULE_STATE

class _AFX_DLL_MODULE_STATE : public AFX_MODULE_STATE
{
public:
	// BW1W120 10005570
	_AFX_DLL_MODULE_STATE() : AFX_MODULE_STATE(TRUE, AfxWndProcDllStatic, _MFC_VER)
		{ }
};

// BW1W120 1001bcf8
static _AFX_DLL_MODULE_STATE afxModuleState;

#undef AfxWndProc
// BW1W120 10005620
LRESULT CALLBACK
AfxWndProcDllStatic(HWND hWnd, UINT nMsg, WPARAM wParam, LPARAM lParam)
{
	AFX_MANAGE_STATE(&afxModuleState);
	return AfxWndProc(hWnd, nMsg, wParam, lParam);
}

// BW1W120 10005690
AFX_MODULE_STATE* AFXAPI AfxGetStaticModuleState()
{
	AFX_MODULE_STATE* pModuleState = &afxModuleState;
	return pModuleState;
}

#endif //_AFXDLL


// export DllMain for the DLL version

// BW1W120 100056b0
extern "C"
BOOL WINAPI DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID /*lpReserved*/)
{
	if (dwReason == DLL_PROCESS_ATTACH)
	{
		BOOL bResult = FALSE;

		// wire up resources from core DLL
		AfxCoreInitModule();

		_AFX_THREAD_STATE* pState = AfxGetThreadState();
		AFX_MODULE_STATE* pPrevModState = pState->m_pPrevModuleState;

		// Initialize DLL's instance(/module) not the app's
		if (!AfxWinInit(hInstance, NULL, _T(""), 0))
		{
			AfxWinTerm();
			goto Cleanup;       // Init Failed
		}

		// initialize the single instance DLL
		CWinApp* pApp; pApp = AfxGetApp();
		if (pApp != NULL && !pApp->InitInstance())
		{
			pApp->ExitInstance();
			AfxWinTerm();
			goto Cleanup;       // Init Failed
		}

		pState->m_pPrevModuleState = pPrevModState;
#ifdef _AFXDLL
		// wire up this DLL into the resource chain
		VERIFY(AfxInitExtensionModule(controlDLL, hInstance));
		CDynLinkLibrary* pDLL; pDLL = new CDynLinkLibrary(controlDLL);
		ASSERT(pDLL != NULL);
#else
		AfxInitLocalData(hInstance);
#endif

		bResult = TRUE;

Cleanup:
		pState->m_pPrevModuleState = pPrevModState;
#ifdef _AFXDLL
		// restore previously-saved module state
		VERIFY(AfxSetModuleState(AfxGetThreadState()->m_pPrevModuleState) ==
			&afxModuleState);
		DEBUG_ONLY(AfxGetThreadState()->m_pPrevModuleState = NULL);
#endif
		return bResult;
	}
	else if (dwReason == DLL_PROCESS_DETACH)
	{
#ifdef _AFXDLL
		// set module state for cleanup
		ASSERT(AfxGetThreadState()->m_pPrevModuleState == NULL);
		AfxGetThreadState()->m_pPrevModuleState =
			AfxSetModuleState(&afxModuleState);
#endif

		CWinApp* pApp = AfxGetApp();
		if (pApp != NULL)
			pApp->ExitInstance();

#ifdef _DEBUG
		// check for missing AfxLockTempMap calls
		if (AfxGetModuleThreadState()->m_nTempMapLock != 0)
		{
			TRACE1("Warning: Temp map lock count non-zero (%ld).\n",
				AfxGetModuleThreadState()->m_nTempMapLock);
		}
#endif
		AfxLockTempMaps();
		AfxUnlockTempMaps(-1);

		// terminate the library before destructors are called
		AfxWinTerm();

#ifdef _AFXDLL
		AfxTermExtensionModule(controlDLL, TRUE);
#else
		AfxTermLocalData(NULL, TRUE);
#endif
	}
	else if (dwReason == DLL_THREAD_DETACH)
	{
		AFX_MANAGE_STATE(&afxModuleState);

#ifdef _DEBUG
		// check for missing AfxLockTempMap calls
		if (AfxGetModuleThreadState()->m_nTempMapLock != 0)
		{
			TRACE1("Warning: Temp map lock count non-zero (%ld).\n",
				AfxGetModuleThreadState()->m_nTempMapLock);
		}
#endif
		AfxLockTempMaps();
		AfxUnlockTempMaps(-1);

		AfxTermThread(hInstance);
	}

	return TRUE;
}

#ifdef _AFXDLL


// RawDllMain

// The CRT startup (crtdll.obj) calls RawDllMain through _pRawDllMain before
// the static constructors run and after the static destructors have run, so
// the DLL's module state is current for both.

extern "C" BOOL WINAPI RawDllMain(HINSTANCE, DWORD dwReason, LPVOID);
// BW1W120 1001b88c
extern "C" BOOL (WINAPI* _pRawDllMain)(HINSTANCE, DWORD, LPVOID) = &RawDllMain;

// BW1W120 10005910
extern "C"
BOOL WINAPI RawDllMain(HINSTANCE, DWORD dwReason, LPVOID)
{
	if (dwReason == DLL_PROCESS_ATTACH)
	{
		// make sure we have enough memory to attempt to start (8kb)
		void* pMinHeap = LocalAlloc(NONZEROFIXED, 0x2000);
		if (pMinHeap == NULL)
			return FALSE;   // fail if memory alloc fails
		LocalFree(pMinHeap);

		// set module state before initialization
		_AFX_THREAD_STATE* pState = AfxGetThreadState();
		pState->m_pPrevModuleState = AfxSetModuleState(&afxModuleState);
	}
	else if (dwReason == DLL_PROCESS_DETACH)
	{
		// restore module state after cleanup
		_AFX_THREAD_STATE* pState = AfxGetThreadState();
		VERIFY(AfxSetModuleState(pState->m_pPrevModuleState) ==
			&afxModuleState);
		DEBUG_ONLY(pState->m_pPrevModuleState = NULL);
	}
	return TRUE;
}

#endif //_AFXDLL
