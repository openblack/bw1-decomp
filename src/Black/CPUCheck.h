#ifndef BW1_DECOMP_CPU_CHECK_INCLUDED_H
#define BW1_DECOMP_CPU_CHECK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

enum
{
	CPU_CHECK_VENDOR_LENGTH = 12,
	CPU_CHECK_FIELD_0x24_COUNT = 10,
	CPU_CHECK_DISPLAY_INFO_SIZE = 5000,
};

enum CPU_CHECK_VENDOR
{
	CPU_CHECK_VENDOR_INTEL = 0,
	CPU_CHECK_VENDOR_AMD = 1,
	CPU_CHECK_VENDOR_UMC = 2,
	CPU_CHECK_VENDOR_CYRIX = 3,
	CPU_CHECK_VENDOR_NEXGEN = 4,
	CPU_CHECK_VENDOR_CENTAUR = 5,
	CPU_CHECK_VENDOR_RISE = 6,
};

class CPUCheck
{
public:
	uint32_t Signature; /* 0x4 */
	char     Vendor[CPU_CHECK_VENDOR_LENGTH + 1];
	char*    ModelString; /* 0x18 */
	char*    TypeString;
	char*    Summary;
	uint32_t field_0x24[CPU_CHECK_FIELD_0x24_COUNT];
	char     DisplayInfo[CPU_CHECK_DISPLAY_INFO_SIZE]; /* 0x4c */
	int      VendorId;                                 /* 0x13d4 */

	// Constructors

	// BW1W120 00471a50 BW1M119 010c3640
	CPUCheck();

	// Override methods

	// BW1W120 00471a80 BW1M119 010c3580
	virtual ~CPUCheck();

	// Non-virtual methods

	// BW1W120 00471ae0 BW1M119 inlined
	bool IsEarlyPentium();
	// BW1W120 00471b10 BW1M119 010c34e0
	void CreateStrings();
	// BW1W120 00471be0 BW1M119 inlined
	void GetProcessorInfo();
	// BW1W120 00472680 BW1M119 inlined
	bool HasCPUID();
	// BW1W120 004726b0 BW1M119 inlined
	unsigned long GetNumberOfProcessors();
	// BW1W120 004726d0 BW1M119 inlined
	void GetDisplayInfo();
	// BW1W120 004729a0 BW1M119 010c3410
	int GetCPUSpeed();
};
static_assert(sizeof(CPUCheck) == 0x13d8, "Data type is of wrong size");

#endif /* BW1_DECOMP_CPU_CHECK_INCLUDED_H */
