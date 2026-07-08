#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// Forward Declares

class Archive;
class BaseInfo;
struct LHPoint;

class Base
{
public:
	uint32_t destroyed; /* 0x4 */

	// Override methods

	// BW1W120 004011b0 BW1M100 101228f0 Base::Serialise(Archive&)
	virtual void Serialise(Archive& param_1) {}
	// BW1W120 00436960 BW1M100 10082770 Base::~Base(void)
	virtual ~Base();
	// BW1W120 004011c0 BW1M100 1056ecc0 Base::Delete(void)
	virtual void Delete() { delete this; }
	// BW1W120 004011d0 BW1M100 1032b070 Base::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1) { Delete(); }
	// BW1W120 004011e0 BW1M100 1032b3d0 Base::Get3DSoundPos(LHPoint*)
	virtual int Get3DSoundPos(LHPoint* param_1) { return 0; }
	// BW1W120 004011f0 BW1M100 1032cbf0 Base::CleanUpForSerialisation(void)
	virtual void CleanUpForSerialisation() {}
	// BW1W120 00401200 BW1M100 106fc7f0 Base::Dump(void)
	virtual void Dump() {}

	// Static methods

	// BW1W120 004366f0 BW1M100 1009ebc0 Base::operator new(unsigned long, char const*, unsigned long)
	static void* operator new(size_t size, const char* file_name, uint32_t line);
	// BW1W120 00436970 BW1M100 10425a80 Base::operator delete(void*, unsigned long)
	static void operator delete(void* ptr, size_t size);

	// Constructors

	// BW1W120 inlined BW1M100 100a0450 Base::Base(void)
	Base() {}

	// Non-virtual methods

	// BW1W120 00436b20 BW1M100 10001480 Base::SetInfo(BaseInfo*) const
	void SetInfo(BaseInfo* info);
};

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
