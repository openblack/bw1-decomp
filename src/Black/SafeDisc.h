#ifndef BW1_DECOMP_SAFEDISC_INCLUDED_H
#define BW1_DECOMP_SAFEDISC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint32_t */

template <int PAD_WORDS> struct SafeDiscBlock
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t Pad0[4];
	uint8_t Checksum;
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
	uint8_t  Unk1[31];
	uint32_t Type;
	uint32_t Magic; // SafeDisc tag, record base is (Magic - 0x40)
	uint8_t  Unk2[16];
	uint32_t ANext;   // obfuscated pointer to another record's base
	uint32_t BWrapVA; // obfuscated VA of the wrapped region
	uint32_t CDesc;   // obfuscated descriptor pointer
	uint32_t DRuntime;
	uint32_t EStatic; // purpose unknown
	uint32_t FStatic; // purpose unknown
	uint8_t  Cookie[5];
#if defined(VERSION_BW1W100)
	uint8_t Pad3;
#else
	uint8_t Unk3[8];
#endif
#elif defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	uint8_t Unk1[91];
#elif defined(VERSION_BW1WCI)
	uint8_t Unk1[95];
#endif
	uint32_t Pad[PAD_WORDS];
};

#if defined(VERSION_BW1W100)
typedef SafeDiscBlock<5> SafeDiscMarker;
typedef SafeDiscBlock<4> SafeDiscRecord;
#elif defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
typedef SafeDiscBlock<3> SafeDiscMarker;
typedef SafeDiscBlock<2> SafeDiscRecord;
#elif defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
typedef SafeDiscBlock<4> SafeDiscMarker;
typedef SafeDiscBlock<3> SafeDiscRecord;
#endif

static_assert(sizeof(SafeDiscMarker) == 0x88, "Data type is of wrong size");
static_assert(sizeof(SafeDiscRecord) == 0x84, "Data type is of wrong size");

#define CHECK_PROTECTION_MARKER(marker)                                                                                \
	if (!(marker).Seed.Words[1])                                                                                       \
	{                                                                                                                  \
		((void (*)())(marker).Seed.Words[3])();                                                                        \
	}

#endif // BW1_DECOMP_SAFEDISC_INCLUDED_H