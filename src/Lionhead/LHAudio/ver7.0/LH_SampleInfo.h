#ifndef BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <windows.h> /* For WAVEFORMATEX */
#include <mmsystem.h>

#include <re_common.h> /* For bool32_t */

#include "LH_SamplePlayOptions.h" /* For LH_SAMPLE_PLAY_TYPE */

// Forward Declares

class Base;
class LH_AudioBank;

struct MIXWAVE;
struct atmos_list_entry_info;

struct LH_SampleInfo
{
	atmos_list_entry_info* AtmosInfo;      /* 0x0 */
	LH_AudioBank*          Bank;           /* 0x4 */
	uint32_t               Reserved1;      /* 0x8 */
	uint32_t               Reserved2;      /* 0xc */
	uint32_t               Reserved3;      /* 0x10 */
	unsigned long          OverrideFlags;  /* 0x14 */
	Base*                  AttachedObject; /* 0x18 */
	unsigned long          SampleNumber;   /* 0x1c */
	unsigned long          WaveNumber;     /* 0x20 */
	LH_SAMPLE_PLAY_TYPE    PlayType;       /* 0x24 */
	unsigned long          Group;          /* 0x28 */
	int                    Channel;        /* 0x2c */
	unsigned long          Frequency;      /* 0x30 */
	unsigned long          Pitch;          /* 0x34 */
	long                   Volume;         /* 0x38 */
	uint16_t               Reserved4;      /* 0x3c */
	long                   LoopCount;      /* 0x40 */
	unsigned long          Pan;            /* 0x44 */
	bool32_t               Positional;     /* 0x48 */
	bool32_t               Follow;         /* 0x4c */
	float                  X;              /* 0x50 */
	float                  Y;              /* 0x54 */
	float                  Z;              /* 0x58 */
	float                  OffsetX;        /* 0x5c */
	float                  OffsetY;        /* 0x60 */
	float                  OffsetZ;        /* 0x64 */
	float                  MinDistance;    /* 0x68 */
	float                  MaxDistance;    /* 0x6c */
	unsigned long          Priority;       /* 0x70 */
	MIXWAVE*               Wave;           /* 0x74 */
	void*                  TagData;        /* 0x78 */
	int                    TagDataSize;    /* 0x7c */
	void*                  Data;           /* 0x80 */
	int                    DataSize;       /* 0x84 */
	bool32_t               KeepData;       /* 0x88 */
	bool32_t               Playing;        /* 0x8c */
};
static_assert(sizeof(LH_SampleInfo) == 0x90, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H */
