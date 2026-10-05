#ifndef BW1_DECOMP_LH_SYSTEM_SPEC_SUMMARY_DIALOG_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_SPEC_SUMMARY_DIALOG_INCLUDED_H

#include "resource.h"

class CLHSystemSpecSummaryDialog : public CDialog
{
public:
	// BW1W120 10004f90
	CLHSystemSpecSummaryDialog(CWnd* parent = NULL);

	enum
	{
		IDD = IDD_SYSTEM_SPEC_SUMMARY_DIALOG
	};
	CEdit   EditBox;
	CString Text;

protected:
	// BW1W120 100050e0
	virtual void DoDataExchange(CDataExchange* exchange);
	// BW1W120 100051e0
	virtual BOOL OnInitDialog();

	// _GetBaseMessageMap, GetMessageMap:
	// BW1W120 10005170
	// BW1W120 100051a0
	DECLARE_MESSAGE_MAP()
};

#endif /* BW1_DECOMP_LH_SYSTEM_SPEC_SUMMARY_DIALOG_INCLUDED_H */
