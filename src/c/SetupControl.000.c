#include "SetupControl.h"
#include "_libcmt_helper.h"

const uint32_t LH3DColor_ARRAY_008ab250[4] asm("?LH3DColor_ARRAY_008ab250@@3PAKA") = {
    0xffffffff, 0xffffffff, 0xffff8000, 0xff000000
};
const double rdata_double_0_5 asm("__real@3fe0000000000000") = 0.5;
const float rdata_float_0_16666667 asm("__real@3e2aaaab") = 0.16666667f;
const float rdata_float_0_33333334 asm("__real@3eaaaaab") = 0.33333334f;
const float rdata_float_255_0 asm("__real@437f0000") = 255.0f;
const float rdata_float_0_75 asm("__real@3f400000") = 0.75f;

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__12SetupControl = &__RTTICompleteObjectLocator__12SetupControl;

const struct SetupControlVftable __vt__12SetupControl = {
  SetToolTip__12SetupControlFUl,
  SetToolTip__12SetupControlFPw,
  Hide__12SetupControlFb,
  SetFocus__12SetupControlFb,
  HitTest__12SetupControlFii,
  (void*)_purecall,
  Drag__12SetupControlFii,
  MouseDown__12SetupControlFiib,
  MouseUp__12SetupControlFiib,
  Click__12SetupControlFii,
  KeyDown__12SetupControlFii,
  Char__12SetupControlFi,
  __dt__12SetupControlFb,
};
