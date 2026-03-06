#include "FrontEnd.h"
#include "HistoryBox.h"

// win1.41 00544f80 mac 105ba050 FrontEnd::JustDoSkirmishGameBox(void)
void FrontEnd::JustDoSkirmishGameBox(FrontEnd* box)
{
}

// win1.41 00544f90 mac 105b9c50 FrontEnd::JustDoABox(DialogBoxBase *)
void FrontEnd::JustDoABox(DialogBoxBase* box)
{
}

// win1.41 00545230 mac 105b9ac0 HistoryBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void HistoryBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 005453b0 mac 105b9a60 HistoryBox::Destroy(void)
void HistoryBox::Destroy()
{
}

// win1.41 005453c0 mac 105b9a20 HistoryBox::InitControls(void)
void HistoryBox::InitControls()
{
}

// win1.41 00545460 mac 105b98b0 HistoryBox::WantsKeyControl(void)
bool HistoryBox::WantsKeyControl()
{
    return 0;
}

// win1.41 00545470 mac 105b97c0 HistoryBox::WantsMouseControl(void)
bool HistoryBox::WantsMouseControl()
{
    return 0;
}

// win1.41 005454f0 mac 105b9780 HistoryBox::CanESCOut(void)
bool HistoryBox::CanESCOut()
{
    return 0;
}
