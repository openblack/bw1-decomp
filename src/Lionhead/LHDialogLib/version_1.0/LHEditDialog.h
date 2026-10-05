#ifndef BW1_DECOMP_LH_EDIT_DIALOG_INCLUDED_H
#define BW1_DECOMP_LH_EDIT_DIALOG_INCLUDED_H

#include "resource.h"

class CLHEditDialog : public CDialog
{
public:
	// BW1W120 10003b40
	CLHEditDialog(CWnd* parent = NULL);

	// BW1W120 10001e50
	BOOL SetCaption(CString caption)
	{
		Caption = caption;
		return TRUE;
	}
	// BW1W120 10001f00
	BOOL SetPrompt(CString prompt)
	{
		Prompt = prompt;
		return TRUE;
	}
	// BW1W120 10001fb0
	BOOL SetText(CString text)
	{
		Text = text;
		return TRUE;
	}
	// BW1W120 10002060
	BOOL SetMaxLength(int max_length)
	{
		MaxLength = max_length;
		return TRUE;
	}

	enum
	{
		IDD = IDD_EDIT_DIALOG
	};
	CStatic PromptStatic;
	CEdit   EditBox;
	CString EditText;
	CString Caption;
	CString Prompt;
	CString Text;
	int     MaxLength;

protected:
	// BW1W120 10003cf0
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 10003e00
	virtual BOOL OnInitDialog();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 10003d90
	// BW1W120 10003dc0
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_EDIT_DIALOG_INCLUDED_H */
