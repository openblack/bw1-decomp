#ifndef BW1_DECOMP_MPFE_NUMBER_CODEC_INCLUDED_H
#define BW1_DECOMP_MPFE_NUMBER_CODEC_INCLUDED_H

#include <assert.h> /* For static_assert */

class MPFENumberCodec
{
public:
	char*         String; /* 0x0 */
	unsigned long Number; /* 0x4 */

	// BW1W120 006315a0 BW1M119 013b05d0
	MPFENumberCodec(char* string);
	// BW1W120 00631650 BW1M119 013b03f0
	MPFENumberCodec(unsigned long number);
	// BW1W120 00631740 BW1M119 013b0360
	~MPFENumberCodec();

	// BW1W120 00631750 BW1M119 inlined
	void Clear();

	// BW1W120 inlined BW1M119 inlined
	char* GetString() { return String; }
};

static_assert(sizeof(MPFENumberCodec) == 0x8, "MPFENumberCodec size is incorrect");

#endif /* BW1_DECOMP_MPFE_NUMBER_CODEC_INCLUDED_H */
