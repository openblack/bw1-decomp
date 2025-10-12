#ifndef BW1_DECOMP_PROPERTY_INCLUDED_H
#define BW1_DECOMP_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 00bef9e8 mac inlined Property::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Property asm("??_R0?AVProperty@@@8");
// win1.41 009b0a60 mac inlined Property::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Property asm("??_R1A@?0A@A@Property@@8");
// win1.41 inlined mac 1099a22c Property::`vftable'
extern const struct PropertyVftable __vt__8Property asm("??_7Property@@6B@");

struct BoolProperty
{
  struct Property super;  /* 0x0 */
};
static_assert(sizeof(struct BoolProperty) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00befb40 mac inlined BoolProperty::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12BoolProperty asm("??_R0?AVBoolProperty@@@8");
// win1.41 009b0c38 mac inlined BoolProperty::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12BoolProperty asm("??_R1A@?0A@A@BoolProperty@@8");
// win1.41 009b0c50 mac inlined BoolProperty::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12BoolProperty asm("??_R2BoolProperty@@8");
// win1.41 009b0c60 mac inlined BoolProperty::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12BoolProperty asm("??_R3BoolProperty@@8");

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

// Object Oriented datastructures

// win1.41 00befac0 mac inlined SoundActionProperty::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19SoundActionProperty asm("??_R0?AVSoundActionProperty@@@8");
// win1.41 009b0b48 mac inlined SoundActionProperty::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19SoundActionProperty asm("??_R1A@?0A@A@SoundActionProperty@@8");
// win1.41 009b0b60 mac inlined SoundActionProperty::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19SoundActionProperty asm("??_R2SoundActionProperty@@8");
// win1.41 009b0b70 mac inlined SoundActionProperty::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19SoundActionProperty asm("??_R3SoundActionProperty@@8");

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

// Object Oriented datastructures

// win1.41 00befaf8 mac inlined StringProperty::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14StringProperty asm("??_R0?AVStringProperty@@@8");
// win1.41 009b0b98 mac inlined StringProperty::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14StringProperty asm("??_R1A@?0A@A@StringProperty@@8");
// win1.41 009b0bb0 mac inlined StringProperty::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14StringProperty asm("??_R2StringProperty@@8");
// win1.41 009b0bc0 mac inlined StringProperty::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14StringProperty asm("??_R3StringProperty@@8");

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

// Object Oriented datastructures

// win1.41 00c04b70 mac inlined TPointerProperty::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16TPointerProperty asm("??_R0?AVTPointerProperty@@@8");
// win1.41 009b5268 mac inlined TPointerProperty::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16TPointerProperty asm("??_R1A@?0A@A@TPointerProperty@@8");
// win1.41 009b56e0 mac inlined TPointerProperty::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16TPointerProperty asm("??_R2TPointerProperty@@8");
// win1.41 009b56f0 mac inlined TPointerProperty::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16TPointerProperty asm("??_R3TPointerProperty@@8");

// Override methods

// win1.41 00584630 mac inlined TPointerProperty::GetAsUserReadableString(void)
const char* __fastcall GetAsUserReadableString__16TPointerPropertyFv(struct Property* this) asm("?GetAsUserReadableString@TPointerProperty@@UAEPBDXZ");

#endif /* BW1_DECOMP_PROPERTY_INCLUDED_H */
