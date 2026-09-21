#include "IpSpecialDialog.h"

#include "ColourConstants.h" /* For White */

IPSpecialDialog* IPSpecialDialog::Instance;

// BW1W120 005dd460 BW1M119 01107f20
IPSpecialDialog::IPSpecialDialog()
{
	field_0x14 = 0;
	field_0x18 = 0;
	field_0x1c = 0;
	field_0x20 = 0;
	field_0x24 = false;
}
