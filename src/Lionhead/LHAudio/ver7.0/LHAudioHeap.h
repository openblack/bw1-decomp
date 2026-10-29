#ifndef BW1_DECOMP_LH_AUDIO_HEAP_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_HEAP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#define LH_HEAP_DEFAULT_TOTAL_ALLOWED 0x12d0000

// Forward Declares

class LH_AudioBank;
struct LH_BankSample;

struct list_entry_info
{
	LH_AudioBank*  Bank;       /* 0x0 */
	LH_BankSample* Sample;     /* 0x4 */
	unsigned long  WaveNumber; /* 0x8 */
};
static_assert(sizeof(list_entry_info) == 0xc, "Data type is of wrong size");

struct list_entry
{
	list_entry*      Next; /* 0x0 */
	list_entry_info* Info; /* 0x4 */
};
static_assert(sizeof(list_entry) == 0x8, "Data type is of wrong size");

class heap_list
{
public:
	list_entry*   First; /* 0x0 */
	list_entry*   Last;  /* 0x4 */
	unsigned long Count; /* 0x8 */

	// Constructors

	// BW1W120 10003030 BW1M119 0111ea10 (LHCombined Release)
	heap_list();
	// BW1W120 10003040 BW1M119 0111e910 (LHCombined Release)
	~heap_list();

	// Non-virtual methods

	// BW1W120 100030c0 BW1M119 0111e850 (LHCombined Release)
	void remove_first_entry();
	// BW1W120 10003100 BW1M119 0111e770 (LHCombined Release)
	bool32_t add_last_entry(list_entry_info* info);

	// BW1W120 100383b8 BW1M119 011d3624 (LHCombined Release)
	static unsigned long TotalAllowed;
	// BW1W120 10042f8c BW1M119 01359504 (LHCombined Release)
	static unsigned long TotalAllocated;
};
static_assert(sizeof(heap_list) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_HEAP_INCLUDED_H */
