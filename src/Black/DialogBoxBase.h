#ifndef BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class SetupBox;
class SetupControl;

class DialogBoxBase
{
public:
    SetupBox* setup_box; /* 0x4 */
    uint8_t field_0x8;
    uint8_t field_0x9;
    uint8_t field_0xa;
    uint8_t field_0xb;
    DialogBoxBase* next;

    // Override methods

    // win1.41 00513400 mac 102b24c0 DialogBoxBase::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00513590 mac 102b23a0 DialogBoxBase::Destroy(void)
    virtual void Destroy();
    // win1.41 005127d0 mac 100fd590 DialogBoxBase::InitSubDialogs(void)
    virtual void InitSubDialogs();
    // win1.41 005135f0 mac 102b22e0 DialogBoxBase::Show(void)
    virtual void Show();
    // win1.41 005127e0 mac 100fd5d0 DialogBoxBase::CloseNotification(void)
    virtual bool CloseNotification();
    // win1.41 005127f0 mac 10504080 DialogBoxBase::WantsKeyControl(void)
    virtual bool WantsKeyControl();
    // win1.41 00512800 mac 100fd610 DialogBoxBase::WantsMouseControl(void)
    virtual bool WantsMouseControl();
    // win1.41 00512810 mac 103c4090 DialogBoxBase::CanESCOut(void)
    virtual void CanESCOut();

    // Static methods

    // win1.41 005136e0 mac 102b1ff0 DialogBoxBase::HideAll(void)
    static void HideAll();

    // Constructors

    // win1.41 005133a0 mac 102b2750 DialogBoxBase::DialogBoxBase(void)
    DialogBoxBase();
};

#endif /* BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H */
