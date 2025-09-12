#ifndef BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H
#define BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

enum LHKey;
enum LHKeyMod;
struct LH3DMaterial;
struct SetupControl;

struct SetupColourPicker
{
  struct SetupButton super;  /* 0x0 */
  struct LH3DColor color_0x244;
  struct LH3DMaterial* material;
  bool brightness_slider;
  float slider_position;  /* 0x250 */
  struct LH3DColor color;
};
static_assert(sizeof(struct SetupColourPicker) == 0x258, "Data type is of wrong size");

// win1.41 008ab54c mac 10730e58 SetupColourPicker::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17SetupColourPicker asm("??_R4SetupColourPicker@@6B@");

// win1.41 008ab550 mac 10730e60 SetupColourPicker::`vftable'
extern const struct SetupControlVftable __vt__17SetupColourPicker asm("??_7SetupColourPicker@@6B@");

// Constructors

// win1.41 00410ac0 mac 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial *)
struct SetupColourPicker* __fastcall __ct__17SetupColourPickerFiiiiiiP12LH3DMaterial(struct SetupColourPicker* this, const void* edx, int id, int x, int y, int width, int height, bool brightness_slider, struct LH3DMaterial* material);

// Override methods

// win1.41 00410880 mac 10103e40 SetupColourPicker::Draw(bool, bool)
void __fastcall Draw__17SetupColourPickerFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected);
// win1.41 00410810 mac 1023f300 SetupColourPicker::Drag(int, int)
void __fastcall Drag__17SetupColourPickerFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 004107f0 mac 1030b070 SetupColourPicker::MouseDown(int, int, bool)
void __fastcall MouseDown__17SetupColourPickerFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00410800 mac 101119a0 SetupColourPicker::MouseUp(int, int, bool)
void __fastcall MouseUp__17SetupColourPickerFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00410b50 mac 100c8de0 SetupColourPicker::Click(int, int)
void __fastcall Click__17SetupColourPickerFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 00410b30 mac 1034f250 SetupColourPicker::KeyDown(int, int)
void __fastcall KeyDown__17SetupColourPickerFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 00410b60 mac 10571d70 SetupColourPicker::~SetupColourPicker(void)
void __fastcall __dt__17SetupColourPickerFb(struct SetupControl* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_COLOUR_PICKER_INCLUDED_H */
