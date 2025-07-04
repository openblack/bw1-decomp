#ifndef BW1_DECOMP_SETUP_CONTROL_INCLUDED_H
#define BW1_DECOMP_SETUP_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include "SetupRect.h" /* For struct SetupRect */

// Forward Declares

struct SetupBox;
struct SetupControl;
enum LHKey;
enum LHKeyMod;

struct SetupControlVftable
{
  void (__fastcall* SetToolTipUl)(struct SetupControl* this, const void* edx, uint32_t tooltip_id);  /* 0x0 */
  void (__fastcall* SetToolTipPw)(struct SetupControl* this, const void* edx, const char16_t* tooltip);
  void (__fastcall* Hide)(struct SetupControl* this, const void* edx, bool hidden);
  void (__fastcall* SetFocus)(struct SetupControl* this, const void* edx, bool focus);
  bool (__fastcall* HitTest)(struct SetupControl* this, const void* edx, int x, int y);  /* 0x10 */
  void (__fastcall* Draw)(struct SetupControl* this, const void* edx, bool hovered, bool selected);
  void (__fastcall* Drag)(struct SetupControl* this, const void* edx, int x, int y);
  void (__fastcall* MouseDown)(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
  void (__fastcall* MouseUp)(struct SetupControl* this, const void* edx, int x, int y, bool param_3);  /* 0x20 */
  void (__fastcall* Click)(struct SetupControl* this, const void* edx, int x, int y);
  void (__fastcall* KeyDown)(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
  void (__fastcall* Char)(struct SetupControl* this, const void* edx, int character);
  struct SetupControl* (__fastcall* __dt)(struct SetupControl* this, const void* edx, bool param_1);  /* 0x30 */
};
static_assert(sizeof(struct SetupControlVftable) == 0x34, "Data type is of wrong size");

struct SetupControl
{
  const struct SetupControlVftable* vftable;  /* 0x0 */
  uint32_t field_0x4;
  struct SetupRect rect;
  int id;  /* 0x18 */
  int field_0x1c;
  int text_size;  /* 0x20 */
  char16_t label[0x100];
  const char16_t* tooltip;  /* 0x224 */
  bool focus;
  bool hidden;
  bool field_0x22a;
  bool field_0x22b;
  uint32_t field_0x22c;
  struct SetupControl* next;  /* 0x230 */
  struct SetupBox* setup_box;
  void* continue_button_callback;
};
static_assert(sizeof(struct SetupControl) == 0x23c, "Data type is of wrong size");

static struct SetupControlVftable* const __vt__12SetupControl = (struct SetupControlVftable* const)0x008ab27c;

// Constructors

// win1.41 00409250 mac 101668d0 SetupControl::SetupControl(int, int, int, int, int, wchar_t *)
struct SetupControl* __fastcall __ct__12SetupControlFiiiiiPw(struct SetupControl* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label);

// Non-virtual methods

// win1.41 inlined mac inlined SetupControl::GetTextSize(void)
int __fastcall GetTextSize__12SetupControlFv(const struct SetupControl* this);
// win1.41 00409210 mac 1057a320 SetupControl::SetToolTip(unsigned long)
void __fastcall SetToolTip__12SetupControlFUl(struct SetupControl* this, const void* edx, uint32_t tooltip_id);
// win1.41 004092f0 mac 100c4fd0 SetupControl::SetToolTip(wchar_t *)
void __fastcall SetToolTip__12SetupControlFPw(struct SetupControl* this, const void* edx, const char16_t* tooltip);
// win1.41 004093c0 mac inlined SetupControl::~SetupControl(void)
void __fastcall __dt__12SetupControlFv(struct SetupControl* this);

// Override methods

// win1.41 00409300 mac 105a3830 SetupControl::Hide(bool)
void __fastcall Hide__12SetupControlFb(struct SetupControl* this, const void* edx, bool hidden);
// win1.41 00409180 mac 1032c7e0 SetupControl::SetFocus(bool)
void __fastcall SetFocus__12SetupControlFb(struct SetupControl* this, const void* edx, bool focus);
// win1.41 00409310 mac 10310540 SetupControl::HitTest(int, int)
bool __fastcall HitTest__12SetupControlFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 00409340 mac inlined SetupControl::Drag(int, int)
void __fastcall Drag__12SetupControlFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 00409350 mac 103dbde0 SetupControl::MouseDown(int, int, bool)
void __fastcall MouseDown__12SetupControlFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409360 mac 104faf30 SetupControl::MouseUp(int, int, bool)
void __fastcall MouseUp__12SetupControlFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409370 mac 103e3120 SetupControl::Click(int, int)
void __fastcall Click__12SetupControlFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 00409380 mac 100d4e40 SetupControl::KeyDown(int, int)
void __fastcall KeyDown__12SetupControlFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 00409390 mac 105049b0 SetupControl::Char(int)
void __fastcall Char__12SetupControlFi(struct SetupControl* this, const void* edx, int character);
// win1.41 004093a0 mac 100c48e0 SetupControl::~SetupControl(bool)
void __fastcall __dt__12SetupControlFb(struct SetupControl* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_CONTROL_INCLUDED_H */
