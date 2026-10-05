#ifndef BW1_DECOMP_LH_PROGRESS_DIALOG_INCLUDED_H
#define BW1_DECOMP_LH_PROGRESS_DIALOG_INCLUDED_H

#include "resource.h"

class CLHProgressDialog : public CDialog
{
public:
	// BW1W120 100043d0
	CLHProgressDialog(CWnd* parent = NULL);

	// BW1W120 100027b0
	BOOL SetTitle(CString title)
	{
		Title = title;
		return TRUE;
	}
	// BW1W120 10002860
	BOOL SetPrompt(CString prompt)
	{
		Prompt = prompt;
		return TRUE;
	}
	// BW1W120 100029f0
	void SetPosition(int position) { ProgressBar.SetPos(position); }
	// BW1W120 10002b30
	BOOL SetPromptText(CString prompt)
	{
		PromptStatic.SetWindowText(prompt);
		return TRUE;
	}

	enum
	{
		IDD = IDD_PROGRESS_DIALOG
	};
	CProgressCtrl ProgressBar;
	CStatic       PromptStatic;
	CString       Title;
	CString       Prompt;

protected:
	// BW1W120 10004530
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 10004630
	virtual BOOL OnInitDialog();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 100045c0
	// BW1W120 100045f0
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_PROGRESS_DIALOG_INCLUDED_H */
