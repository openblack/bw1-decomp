#ifndef BW1_DECOMP_PROPERTY_INCLUDED_H
#define BW1_DECOMP_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

struct BoolProperty
{
  struct Property super;  /* 0x0 */
};
static_assert(sizeof(struct BoolProperty) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00586220 mac 102dc140 BoolProperty::GetAsString(void)
const char* __fastcall GetAsString__12BoolPropertyFv(struct Property* this) asm("?GetAsString@BoolProperty@@UAEPBDXZ");
// win1.41 00586350 mac inlined BoolProperty::ReadProperty(istream *, PersistenceStreamer *)
uint32_t __fastcall ReadProperty__12BoolPropertyFP7istreamP19PersistenceStreamer(struct Property* this, const void* edx, struct istream* param_1, struct PersistenceStreamer* param_2) asm("?ReadProperty@BoolProperty@@UAEIPAUistream@@PAUPersistenceStreamer@@@Z");

struct SoundActionProperty
{
  struct Property super;  /* 0x0 */
};
static_assert(sizeof(struct SoundActionProperty) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00585740 mac 102dcd30 SoundActionProperty::GetAsString(void)
const char* __fastcall GetAsString__19SoundActionPropertyFv(struct Property* this) asm("?GetAsString@SoundActionProperty@@UAEPBDXZ");
// win1.41 00585a70 mac inlined SoundActionProperty::ReadProperty(istream *, PersistenceStreamer *)
uint32_t __fastcall ReadProperty__19SoundActionPropertyFP7istreamP19PersistenceStreamer(struct Property* this, const void* edx, struct istream* param_1, struct PersistenceStreamer* param_2) asm("?ReadProperty@SoundActionProperty@@UAEIPAUistream@@PAUPersistenceStreamer@@@Z");

struct StringProperty
{
  struct Property super;  /* 0x0 */
};
static_assert(sizeof(struct StringProperty) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 005850d0 mac 102dd630 StringProperty::GetAsString(void)
const char* __fastcall GetAsString__14StringPropertyFv(struct Property* this) asm("?GetAsString@StringProperty@@UAEPBDXZ");
// win1.41 00585200 mac inlined StringProperty::ReadProperty(istream *, PersistenceStreamer *)
uint32_t __fastcall ReadProperty__14StringPropertyFP7istreamP19PersistenceStreamer(struct Property* this, const void* edx, struct istream* param_1, struct PersistenceStreamer* param_2) asm("?ReadProperty@StringProperty@@UAEIPAUistream@@PAUPersistenceStreamer@@@Z");

struct TPointerProperty
{
  struct Property super;  /* 0x0 */
};
static_assert(sizeof(struct TPointerProperty) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00584630 mac inlined TPointerProperty::GetAsUserReadableString(void)
const char* __fastcall GetAsUserReadableString__16TPointerPropertyFv(struct Property* this) asm("?GetAsUserReadableString@TPointerProperty@@UAEPBDXZ");

#endif /* BW1_DECOMP_PROPERTY_INCLUDED_H */
