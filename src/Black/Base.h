#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct Archive;
class BaseInfo;
struct LHPoint;

class Base
{
public:
    uint32_t destroyed; /* 0x4 */

    // Override methods

    // win1.41 004011b0 mac 101228f0 Base::Serialise(Archive&)
    virtual void Serialise(Archive* param_1);
    // win1.41 00401210 mac 10082770 Base::~Base(void)
    virtual ~Base();
    // win1.41 004011c0 mac 1056ecc0 Base::Delete(int)
    virtual void Delete();
    // win1.41 004011d0 mac 1032b070 Base::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 004011e0 mac 1032b3d0 Base::Get3DSoundPos(LHPoint*)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // win1.41 004011f0 mac 1032cbf0 Base::CleanUpForSerialisation(void)
    virtual void CleanUpForSerialisation();
    // win1.41 00401200 mac 106fc7f0 Base::Dump(void)
    virtual void Dump();

    // Static methods

    // win1.41 004366f0 mac 1009ebc0 Base::operator new(unsigned long)
    static void* __nw(size_t size, const char* file_name, uint32_t line);
    // win1.41 00436970 mac 10425a80 Base::operator delete(void*, unsigned long)
    static void operator delete(void* ptr, size_t size);

    // Constructors

    // win1.41 inlined mac 100a0450 Base::Base(void)
    Base();

    // Non-virtual methods

    // win1.41 00436b20 mac 10001480 Base::SetInfo(BaseInfo*) const
    void SetInfo(BaseInfo* info);
};

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
