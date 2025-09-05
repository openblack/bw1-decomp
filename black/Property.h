#ifndef BW1_DECOMP_PROPERTY_INCLUDED_H
#define BW1_DECOMP_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct PersistenceStreamer;
struct Property;
struct istream;

struct PropertyVftable
{
  const char* (__fastcall* GetAsString)(struct Property* this);  /* 0x0 */
  const char* (__fastcall* GetAsUserReadableString)(struct Property* this);
  bool32_t (__fastcall* ReadProperty)(struct Property* this, const void* edx, struct istream* stream, struct PersistenceStreamer* streamer);
};
static_assert(sizeof(struct PropertyVftable) == 0xc, "Data type is of wrong size");

struct Property
{
  struct PropertyVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct Property) == 0x4, "Data type is of wrong size");

// win1.41 inlined mac 1099a22c Property::`vftable'
extern const struct PropertyVftable __vt__8Property asm("??_7Property@@6B@");

#endif /* BW1_DECOMP_PROPERTY_INCLUDED_H */
