#ifndef BW1_DECOMP_LOGIN_BOX_INCLUDED_H
#define BW1_DECOMP_LOGIN_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoginBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x88c];
};
static_assert(sizeof(struct LoginBox) == 0x89c, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__8LoginBox = (struct DialogBoxBaseVftable* const)0x008dec98;

// Non-virtual methods

// win1.41 00540260 mac inlined LoginBox::LoginBox(void)
struct LoginBox* __fastcall __vt__8LoginBoxFv(struct LoginBox* this);

#endif /* BW1_DECOMP_LOGIN_BOX_INCLUDED_H */
