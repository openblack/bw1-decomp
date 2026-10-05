#ifndef BW1_DECOMP_LH_EDIT_DIALOG_SIZABLE_INCLUDED_H
#define BW1_DECOMP_LH_EDIT_DIALOG_SIZABLE_INCLUDED_H

#include "resource.h"

class CLHEditDialogSizable : public CDialog
{
public:
	// BW1W120 10003ee0
	CLHEditDialogSizable(CWnd* parent = NULL);

	// BW1W120 10002370
	void SetRect(CRect rect) { Rect = rect; }
	// BW1W120 100023d0
	BOOL SetCaption(CString caption)
	{
		Caption = caption;
		return TRUE;
	}
	// BW1W120 10002480
	BOOL SetText(CString text)
	{
		Text = text;
		return TRUE;
	}
	// BW1W120 10002530
	BOOL SetMaxLength(int max_length)
	{
		MaxLength = max_length;
		return TRUE;
	}

	enum
	{
		IDD = IDD_EDIT_DIALOG_SIZABLE
	};
	CEdit   EditBox;
	CString EditText;
	CRect   Rect;
	CString Caption;
	CString field_0xb8;
	CString Text;
	int     MaxLength;

protected:
	// BW1W120 10004080
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 10004180
	virtual BOOL OnInitDialog();
	// BW1W120 10004360
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);

	// BW1W120 10004310
	afx_msg void OnClose();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 10004110
	// BW1W120 10004140
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_EDIT_DIALOG_SIZABLE_INCLUDED_H */
