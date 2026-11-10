#ifndef BW1_DECOMP_SAFEDISC_INCLUDED_H
#define BW1_DECOMP_SAFEDISC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint32_t */

#if defined(VERSION_BW1W100)
struct SafeDiscMarker
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
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
	uint8_t  Pad3;
	uint32_t Pad[5];
};

struct SafeDiscRecord
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
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
	uint8_t  Pad3;
	uint32_t Pad[4];
};

static_assert(sizeof(SafeDiscMarker) == 0x88, "Data type is of wrong size");
static_assert(sizeof(SafeDiscRecord) == 0x84, "Data type is of wrong size");
#elif defined(VERSION_BW1W110)
struct SafeDiscMarker
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
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
	uint8_t  Unk3[8];
	uint32_t Pad[3];
};

struct SafeDiscRecord
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
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
	uint8_t  Unk3[8];
	uint32_t Pad[2];
};

static_assert(sizeof(SafeDiscMarker) == 0x88, "Data type is of wrong size");
static_assert(sizeof(SafeDiscRecord) == 0x84, "Data type is of wrong size");
#elif defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
struct SafeDiscMarker
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
	uint8_t  Unk1[91];
	uint32_t Pad[4];
};

struct SafeDiscRecord
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
	uint8_t  Unk1[91];
	uint32_t Pad[3];
};

static_assert(sizeof(SafeDiscMarker) == 0x88, "Data type is of wrong size");
static_assert(sizeof(SafeDiscRecord) == 0x84, "Data type is of wrong size");
#elif defined(VERSION_BW1WCI)
struct SafeDiscMarker
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
	uint8_t  Unk1[95];
	uint32_t Pad[3];
};

struct SafeDiscRecord
{
	union {
		uint8_t  Bytes[24];
		uint32_t Words[6];
	} Seed; // key material for the loader's section cipher
	uint8_t  Pad0[4];
	uint8_t  Checksum;
	uint8_t  Unk1[95];
	uint32_t Pad[2];
};

static_assert(sizeof(SafeDiscMarker) == 0x88, "Data type is of wrong size");
static_assert(sizeof(SafeDiscRecord) == 0x84, "Data type is of wrong size");
#endif

#define CHECK_PROTECTION_MARKER(marker)                                                                                \
	if (!(marker).Seed.Words[1])                                                                                       \
	{                                                                                                                  \
		((void (*)())(marker).Seed.Words[3])();                                                                        \
	}

#endif // BW1_DECOMP_SAFEDISC_INCLUDED_H