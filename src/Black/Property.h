#ifndef BW1_DECOMP_PROPERTY_INCLUDED_H
#define BW1_DECOMP_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

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

    // BW1W120 00586220 BW1M100 102dc140 BoolProperty::GetAsString(void)
    virtual const char* GetAsString();
    // BW1W120 00586350 BW1M100 inlined BoolProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class SoundActionProperty: public Property
{
public:

    // Override methods

    // BW1W120 00585740 BW1M100 102dcd30 SoundActionProperty::GetAsString(void)
    virtual const char* GetAsString();
    // BW1W120 00585a70 BW1M100 inlined SoundActionProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class StringProperty: public Property
{
public:

    // Override methods

    // BW1W120 005850d0 BW1M100 102dd630 StringProperty::GetAsString(void)
    virtual const char* GetAsString();
    // BW1W120 00585200 BW1M100 inlined StringProperty::ReadProperty(istream *, PersistenceStreamer *)
    virtual uint32_t ReadProperty(istream* param_1, PersistenceStreamer* param_2);
};

class TPointerProperty: public Property
{
public:

    // Override methods

    // BW1W120 00584630 BW1M100 inlined TPointerProperty::GetAsUserReadableString(void)
    virtual const char* GetAsUserReadableString();
};

#endif /* BW1_DECOMP_PROPERTY_INCLUDED_H */
