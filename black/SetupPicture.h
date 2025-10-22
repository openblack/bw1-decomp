#ifndef BW1_DECOMP_SETUP_PICTURE_INCLUDED_H
#define BW1_DECOMP_SETUP_PICTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct LH3DMaterial;
struct SetupControl;

struct SetupPicture
{
  struct SetupButton super;  /* 0x0 */
  int hovered_picture_index;  /* 0x244 */
  struct Zoomer zoomer;
  struct LH3DMaterial* material;  /* 0x278 */
  struct LH3DColor tint;
  bool draggable;  /* 0x280 */
  bool dragging;
  int picture_index;
  int num_rows;
  int num_pictures;
  bool clickable;  /* 0x290 */
};
static_assert(sizeof(struct SetupPicture) == 0x294, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8298 mac inlined SetupPicture::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12SetupPicture asm("??_R0?AUSetupPicture@@@8");
// win1.41 009a6888 mac inlined SetupPicture::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12SetupPicture asm("??_R1A@?0A@A@SetupPicture@@8");
// win1.41 009a68a0 mac inlined SetupPicture::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12SetupPicture asm("??_R2SetupPicture@@8");
// win1.41 009a68b0 mac inlined SetupPicture::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12SetupPicture asm("??_R3SetupPicture@@8");
// win1.41 008ab514 mac 10730eb0 SetupPicture::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12SetupPicture asm("??_R4SetupPicture@@6B@");
// win1.41 008ab518 mac 10730eb8 SetupPicture::`vftable'
extern const struct SetupControlVftable __vt__12SetupPicture asm("??_7SetupPicture@@6B@");

// Constructors

// win1.41 004105d0 mac 101a6a00 SetupPicture::SetupPicture(int, int, int, LH3DMaterial *, int, int, bool, int, bool)
struct SetupPicture* __fastcall __ct__12SetupPictureFiiiP12LH3DMaterialiibib(struct SetupPicture* this, const void* edx, int id, int x, int y, struct LH3DMaterial* material, int picture_index, int num_rows, bool clickable, int size, bool draggable) asm("??0SetupPicture@@QAE@HHHPAULH3DMaterial@@HH_NH1@Z");

// Override methods

// win1.41 00410740 mac 102410c0 SetupPicture::SetFocus(bool)
void __fastcall SetFocus__12SetupPictureFb(struct SetupControl* this, const void* edx, bool focus) asm("?SetFocus@SetupPicture@@UAEX_N@Z");
// win1.41 0040fa20 mac 100ab020 SetupPicture::Draw(bool, bool)
void __fastcall Draw__12SetupPictureFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupPicture@@UAEX_N0@Z");
// win1.41 0040fa10 mac 100e47c0 SetupPicture::Drag(int, int)
void __fastcall Drag__12SetupPictureFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Drag@SetupPicture@@UAEXHH@Z");
// win1.41 0040f6b0 mac inlined SetupPicture::MouseDown(int, int, bool)
void __fastcall MouseDown__12SetupPictureFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseDown@SetupPicture@@UAEXHH_N@Z");
// win1.41 0040f840 mac 1036e5b0 SetupPicture::MouseUp(int, int, bool)
void __fastcall MouseUp__12SetupPictureFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseUp@SetupPicture@@UAEXHH_N@Z");
// win1.41 00410710 mac 10351210 SetupPicture::Click(int, int)
void __fastcall Click__12SetupPictureFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Click@SetupPicture@@UAEXHH@Z");
// win1.41 004106f0 mac 100fe9d0 SetupPicture::KeyDown(int, int)
void __fastcall KeyDown__12SetupPictureFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupPicture@@UAEXHH@Z");
// win1.41 00410720 mac 1034f1b0 SetupPicture::~SetupPicture(void)
void __fastcall __dt__12SetupPictureFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupPicture@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_PICTURE_INCLUDED_H */
