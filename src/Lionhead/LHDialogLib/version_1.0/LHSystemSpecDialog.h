#ifndef BW1_DECOMP_LH_SYSTEM_SPEC_DIALOG_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_SPEC_DIALOG_INCLUDED_H

#include "resource.h"

class CLHSystemSpecDialog : public CDialog
{
public:
	// BW1W120 100046d0
	CLHSystemSpecDialog(CWnd* parent = NULL);

	enum
	{
		IDD = IDD_SYSTEM_SPEC_DIALOG
	};
	CString       Memory;
	CString       OS;
	CString       Processor;
	CString       Sound;
	CString       Video;
	unsigned long ScreenHeight;
	BOOL          EnableNetwork;
	CString       TestReference;
	CString       Name;
	unsigned long ScreenWidth;
	BOOL          Fullscreen;
	unsigned long ScreenDepth;
	unsigned long VideoDevice;
	BOOL          UseSoundHardware;
	int           Result;

protected:
	// BW1W120 10004960
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 10004c60
	virtual void OnOK();
	// BW1W120 10004d80
	virtual BOOL OnInitDialog();

	// BW1W120 10004c10
	afx_msg void OnDestroy();
	// BW1W120 10004d30
	afx_msg void OnClose();
	// BW1W120 10004dd0
	afx_msg void OnInteractiveMode();
	// BW1W120 10004eb0
	afx_msg void OnSelfTest();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 10004ba0
	// BW1W120 10004bd0
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_SYSTEM_SPEC_DIALOG_INCLUDED_H */
