#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MainMenu: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x28];

    // Override methods

    // win1.41 0053f910 mac 105c0610 MainMenu::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 0053fb50 mac 105c05a0 MainMenu::Destroy(void)
    virtual void Destroy();
    // win1.41 0053bd50 mac 105c5ef0 MainMenu::CanESCOut(void)
    virtual bool CanESCOut();
    // win1.41 0053fba0 mac 105bff40 MainMenu::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
