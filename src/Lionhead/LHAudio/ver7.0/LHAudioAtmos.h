#ifndef BW1_DECOMP_LH_AUDIO_ATMOS_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_ATMOS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <limits.h> /* For ULONG_MAX */

#include <re_common.h> /* For bool32_t */

#define LH_ATMOS_TICKS_PER_SECOND    10
#define LH_ATMOS_SPREAD_PERCENT      60
#define LH_ATMOS_PERCENT             100
#define LH_ATMOS_START_DELAY         20
#define LH_ATMOS_TIME_NONE           ULONG_MAX
#define LH_ATMOS_GROUP_NONE          0
#define LH_ATMOS_FADE_STEP           5
#define LH_ATMOS_POSITION_RANGE      2
#define LH_ATMOS_NEAR_DISTANCE       1.0
#define LH_ATMOS_NEAR_POSITION_SCALE 4.0f
#define LH_ATMOS_CENTRE_OFFSET       5
#define LH_ATMOS_LOOP_INFO           ((atmos_list_entry_info*)1)

enum LH_ATMOS_INSERT
{
	LH_ATMOS_INSERT_FROM_FIRST = 1,
	LH_ATMOS_INSERT_AFTER_FIRST = 2,
};

// Forward Declares

class LH_AudioBank;
struct LH_BankSample;
struct LH_SampleInfo;

struct atmos_list_entry_info
{
	LH_AudioBank*  Bank;   /* 0x0 */
	LH_BankSample* Sample; /* 0x4 */
	unsigned long  Time;   /* 0x8 */
	unsigned long  Volume; /* 0xc */
	unsigned long  Group;  /* 0x10 */
};
static_assert(sizeof(atmos_list_entry_info) == 0x14, "Data type is of wrong size");

struct atmos_list_entry
{
	atmos_list_entry*      Next; /* 0x0 */
	atmos_list_entry_info* Info; /* 0x4 */
};
static_assert(sizeof(atmos_list_entry) == 0x8, "Data type is of wrong size");

struct atmos_loop_entry
{
	LH_AudioBank*     Bank;       /* 0x0 */
	LH_BankSample*    Sample;     /* 0x4 */
	atmos_loop_entry* Next;       /* 0x8 */
	LH_SampleInfo*    Info;       /* 0xc */
	unsigned long     Volume;     /* 0x10 */
	long              FadeVolume; /* 0x14 */
	bool32_t          Playing;    /* 0x18 */
	unsigned long     Group;      /* 0x1c */
};
static_assert(sizeof(atmos_loop_entry) == 0x20, "Data type is of wrong size");

class atmos_list
{
public:
	atmos_list_entry* First;     /* 0x0 */
	atmos_list_entry* Last;      /* 0x4 */
	unsigned long     Count;     /* 0x8 */
	unsigned long     LoopCount; /* 0xc */
	atmos_loop_entry* LoopFirst; /* 0x10 */
	atmos_loop_entry* LoopLast;  /* 0x14 */
	unsigned long     Time;      /* 0x18 */

	// Constructors

	// BW1W120 10001080 BW1M119 0111c630 (LHCombined Release)
	atmos_list();
	// BW1W120 100010a0 BW1M119 0111c4e0 (LHCombined Release)
	~atmos_list();

	// Non-virtual methods

	// BW1W120 10001170 BW1M119 0111c420 (LHCombined Release)
	void remove_first_entry();
	// BW1W120 100011b0 BW1M119 0103d1c0 (LHCombined Release)
	bool32_t insert_entry(atmos_list_entry_info* info, unsigned long mode);
};
static_assert(sizeof(atmos_list) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_ATMOS_INCLUDED_H */
