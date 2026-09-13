#include "DialogBoxBase.h"

DialogBoxBase* DialogBoxBase::First;

// BW1W120 005133a0
DialogBoxBase::DialogBoxBase()
{
	setup_box = 0;
	next = First;
	First = this;
}

// BW1W120 005133c0
DialogBoxBase::~DialogBoxBase()
{
	if (First == this)
	{
		First = next;
		return;
	}
	for (DialogBoxBase* dialog = First; dialog != 0; dialog = dialog->next)
	{
		if (dialog->next == this)
		{
			dialog->next = next;
			return;
		}
	}
}
