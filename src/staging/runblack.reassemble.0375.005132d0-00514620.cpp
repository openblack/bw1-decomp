#include "DialogBoxBase.h"
#include "DialogBoxOptions.h"

// win1.41 005133a0 mac 102b2750 DialogBoxBase::DialogBoxBase(void)
DialogBoxBase::DialogBoxBase()
{
}

// win1.41 00513400 mac 102b24c0 DialogBoxBase::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void DialogBoxBase::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 00513590 mac 102b23a0 DialogBoxBase::Destroy(void)
void DialogBoxBase::Destroy()
{
}

// win1.41 005135f0 mac 102b22e0 DialogBoxBase::Show(void)
void DialogBoxBase::Show()
{
}

// win1.41 005136e0 mac 102b1ff0 DialogBoxBase::HideAll(void)
void DialogBoxBase::HideAll()
{
}

// win1.41 00513810 mac 102b5740 DialogBoxOptions::DialogBoxOptions(void)
DialogBoxOptions::DialogBoxOptions()
{
}

// win1.41 00513830 mac 102b5900 DialogBoxOptions::CanESCOut(void)
bool DialogBoxOptions::CanESCOut()
{
    return 0;
}

// win1.41 00513860 mac 102b5130 DialogBoxOptions::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void DialogBoxOptions::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 00513da0 mac 102b50c0 DialogBoxOptions::Destroy(void)
void DialogBoxOptions::Destroy()
{
}

// win1.41 00513dc0 mac 102b4ff0 DialogBoxOptions::InitControls(void)
void DialogBoxOptions::InitControls()
{
}
