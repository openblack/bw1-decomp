#ifndef BW1_DECOMP_LH_DIR_INCLUDED_H
#define BW1_DECOMP_LH_DIR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <windows.h> /* For HANDLE, WIN32_FIND_DATAA */

// A date/time broken out from a DOS date/time word pair (see
// LHOSFile::ConvertDirInfo). DayOfWeek and the trailing sub-second field are
// zeroed rather than derived from the find data.
struct LHDirDateTime
{
	uint8_t  day;         /* 0x0 */
	uint8_t  month;       /* 0x1 */
	uint16_t year;        /* 0x2 */
	uint8_t  DayOfWeek; /* 0x4 */
	uint8_t  field_0x5;   /* 0x5 */
	uint8_t  hour;        /* 0x6 */
	uint8_t  minute;      /* 0x7 */
	uint8_t  second;      /* 0x8 */
	uint8_t  field_0x9;   /* 0x9 */
};
static_assert(sizeof(LHDirDateTime) == 0xa, "Data type is of wrong size");

struct LHDir
{
	char                 name[260];          /* 0x0 */
	char                 AlternateName[14]; /* 0x104 */
	uint32_t             attributes;         /* 0x114 */
	uint32_t             size;               /* 0x118 */
	struct LHDirDateTime CreationTime;      /* 0x11c */
	struct LHDirDateTime WriteTime;         /* 0x126 */
	HANDLE               FindHandle;        /* 0x130 */
	uint32_t             SearchAttributes;  /* 0x134 */
	WIN32_FIND_DATAA     FindData;          /* 0x138 */
};
static_assert(sizeof(LHDir) == 0x278, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_DIR_INCLUDED_H */
