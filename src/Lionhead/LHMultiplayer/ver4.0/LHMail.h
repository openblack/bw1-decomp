#ifndef BW1_DECOMP_LH_MAIL_INCLUDED_H
#define BW1_DECOMP_LH_MAIL_INCLUDED_H

#include "LHMultiplayerExport.h"
#include <Lionhead/LHLib/ver5.0/LHReturn.h>

// Abstract interface prefix only, not an allocation-size model. The DLL factory
// owns construction of the real Outlook/POP3 classes. Vtable: 100506a0.
class LHMail
{
public:
	// BW1W120 100125f0
	virtual LH_MULTIPLAYER_API ~LHMail();
	virtual bool      ReloadDriver() = 0;
	virtual bool      CleanUpDriver() = 0;
	virtual bool      CallInitDriver() = 0;
	virtual LH_RETURN DriverCheckMails() = 0;
	virtual bool      DriverGetContactNames() = 0;
	// IAT 008a9450.
	// BW1W120 10012e10
	LH_MULTIPLAYER_API bool InitDriver();
};

#endif
