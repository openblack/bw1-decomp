#ifndef BW1_DECOMP_LH_CAMERA_PARAMS_DIALOG_INCLUDED_H
#define BW1_DECOMP_LH_CAMERA_PARAMS_DIALOG_INCLUDED_H

#include "resource.h"

class CLHCameraParamsDialog : public CDialog
{
public:
	// BW1W120 100013d0
	CLHCameraParamsDialog(CWnd* parent = NULL);

	// BW1W120 100015c0
	void InitParam(int index, char* name, int value);
	// BW1W120 10001720
	int GetValue(int index);

	enum
	{
		IDD = IDD_CAMERA_PARAMS_DIALOG
	};

	BOOL SavePressed;
	BOOL LoadPressed;
	BOOL ResetPressed;

protected:
	// BW1W120 10001520
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 100018a0
	virtual void OnOK();
	// BW1W120 100018d0
	virtual void OnCancel();

	// BW1W120 100017b0
	afx_msg void OnSave();
	// BW1W120 100017f0
	afx_msg void OnLoad();
	// BW1W120 10001830
	afx_msg void OnReset();
	// BW1W120 10001870
	afx_msg void OnClose();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 10001550
	// BW1W120 10001580
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_CAMERA_PARAMS_DIALOG_INCLUDED_H */
