#ifndef BW1_DECOMP_PROPERTY_INCLUDED_H
#define BW1_DECOMP_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct PersistenceStreamer;
struct istream;

class Property
{
public:
};

class BoolProperty: public Property
{
public:

    // Override methods

    // win1.41 00586220 mac 102dc140 BoolProperty::GetAsString(void)
    virtual const char* GetAsString();
    // win1.41 00586350 mac inlined BoolProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class SoundActionProperty: public Property
{
public:

    // Override methods

    // win1.41 00585740 mac 102dcd30 SoundActionProperty::GetAsString(void)
    virtual const char* GetAsString();
    // win1.41 00585a70 mac inlined SoundActionProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class StringProperty: public Property
{
public:

    // Override methods

    // win1.41 005850d0 mac 102dd630 StringProperty::GetAsString(void)
    virtual const char* GetAsString();
    // win1.41 00585200 mac inlined StringProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class TPointerProperty: public Property
{
public:

    // Override methods

    // win1.41 00584630 mac inlined TPointerProperty::GetAsUserReadableString(void)
    virtual const char* GetAsUserReadableString();
};

#endif /* BW1_DECOMP_PROPERTY_INCLUDED_H */
