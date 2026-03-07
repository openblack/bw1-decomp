#include "DialogBoxKeyBinding.h"
#include "DialogBoxBase.h"

// win1.41 005127b0 mac 102b1e90 DialogBoxKeyBinding::DialogBoxKeyBinding(void)
DialogBoxKeyBinding::DialogBoxKeyBinding()
{
}

// win1.41 005127d0 mac 100fd590 DialogBoxBase::InitSubDialogs(void)
void DialogBoxBase::InitSubDialogs()
{
}

// win1.41 005127e0 mac 100fd5d0 DialogBoxBase::CloseNotification(void)
bool DialogBoxBase::CloseNotification()
{
    return 0;
}

// win1.41 005127f0 mac 10504080 DialogBoxBase::WantsKeyControl(void)
bool DialogBoxBase::WantsKeyControl()
{
    return 0;
}

// win1.41 00512800 mac 100fd610 DialogBoxBase::WantsMouseControl(void)
bool DialogBoxBase::WantsMouseControl()
{
    return 0;
}

// win1.41 00512810 mac 103c4090 DialogBoxBase::CanESCOut(void)
bool DialogBoxBase::CanESCOut()
{
    return 0;
}

// win1.41 005129d0 mac 102b18f0 DialogBoxKeyBinding::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void DialogBoxKeyBinding::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 00512bc0 mac 102b1890 DialogBoxKeyBinding::Destroy(void)
void DialogBoxKeyBinding::Destroy()
{
}

// win1.41 00512bd0 mac 102b1750 DialogBoxKeyBinding::InitControls(void)
void DialogBoxKeyBinding::InitControls()
{
}
