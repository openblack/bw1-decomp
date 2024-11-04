#ifndef BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H
#define BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct PhysicsObject
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x1a0];
  float field_0x1a8;
  uint32_t field_0x1ac;
  uint32_t field_0x1b0;
  uint32_t field_0x1b4;
  float field_0x1b8;
  uint32_t field_0x1bc;
  uint32_t field_0x1c0;
  uint32_t field_0x1c4;
  float field_0x1c8;
  uint32_t field_0x1cc;
  uint32_t field_0x1d0;
  uint32_t field_0x1d4;
  uint32_t field_0x1d8;
};
static_assert(sizeof(struct PhysicsObject) == 0x1dc, "Data type is of wrong size");

static struct BaseVftable* __vt__13PhysicsObject = (struct BaseVftable*)0x00932b94;

// Constructors

// win1.41 00644330 mac 10113e20 PhysicsObject::PhysicsObject(void)
struct PhysicsObject* __fastcall __ct__13PhysicsObjectFv(struct PhysicsObject* this);

#endif /* BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H */
