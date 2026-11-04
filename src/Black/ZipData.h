#ifndef BW1_DECOMP_ZIP_DATA_INCLUDED_H
#define BW1_DECOMP_ZIP_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */

#define ZIP_DATA_COMPRESS_GROWTH_DIVISOR 9
#define ZIP_DATA_COMPRESS_EXTRA_BYTES    300

class ZipData
{
public:
	// BW1W120 00781060 BW1M119 0116d050
	ZipData();
	// BW1W120 00781070 BW1M119 0116cf90
	~ZipData();
	// BW1W120 00781080 BW1M119 inlined
	void Reset();
	// BW1W120 007810c0 BW1M119 0116ce40
	bool SetCompressedData(char* data, unsigned long length);
	// BW1W120 00781130 BW1M119 0116ccd0
	bool SetUncompressedData(char* data, unsigned long length);

	char*         UncompressedData; /* 0x0 */
	unsigned long UncompressedSize; /* 0x4 */
	char*         CompressedData;   /* 0x8 */
	unsigned long CompressedSize;   /* 0xc */
};

static_assert(sizeof(ZipData) == 0x10, "ZipData size is incorrect");

#endif /* BW1_DECOMP_ZIP_DATA_INCLUDED_H */
