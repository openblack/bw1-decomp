#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class TattooEditor: public DialogBoxBase
{
public:
    uint8_t field_0x10[0x3218];

    // Override methods

    // win1.41 00542510 mac 105bdae0 TattooEditor::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 005427e0 mac 105bda80 TattooEditor::Destroy(void)
    virtual void Destroy();
    // win1.41 0053bd20 mac 105c5eb0 TattooEditor::CanESCOut(void)
    virtual bool CanESCOut();
    // win1.41 005433e0 mac 105bc900 TattooEditor::InitControls(void)
    virtual void InitControls();
};

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
