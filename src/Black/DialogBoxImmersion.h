#ifndef BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupBigButton;
class SetupButton;
class SetupStaticText;

class DialogBoxImmersion: public DialogBoxBase
{
public:
    SetupStaticText* field_0x10;
    SetupStaticText* field_0x14;
    SetupBigButton* field_0x18;
    SetupBigButton* field_0x1c;
    SetupButton* field_0x20;
    SetupBigButton* field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;

    // Override methods

    // win1.41 00514a80 mac 102b39f0 DialogBoxImmersion::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
    virtual void Init(uint32_t param_1, uint32_t param_2, void (__stdcall*)(int, SetupBox *, SetupControl *, int, int) param_3);
    // win1.41 00514d70 mac 102b3990 DialogBoxImmersion::Destroy(void)
    virtual void Destroy();
    // win1.41 00514d80 mac 102b3920 DialogBoxImmersion::InitControls(void)
    virtual void InitControls();

    // Constructors

    // win1.41 005149d0 mac inlined DialogBoxImmersion::DialogBoxImmersion(void)
    DialogBoxImmersion();
};

#endif /* BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H */
