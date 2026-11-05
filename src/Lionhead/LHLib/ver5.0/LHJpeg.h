#ifndef BW1_DECOMP_LH_JPEG_INCLUDED_H
#define BW1_DECOMP_LH_JPEG_INCLUDED_H

class LHJpeg
{
public:
	// BW1W120 00898450 BW1M119 011724e0 (LHCombined Release)
	LHJpeg();
	// BW1W120 008984a0 BW1M119 01172450 (LHCombined Release)
	virtual ~LHJpeg();

	// BW1W120 008984b0 BW1M119 01172390 (LHCombined Release)
	bool SetFilename(char* filename);
	// BW1W120 00898500 BW1M119 01172350 (LHCombined Release)
	bool SetImageHeader(unsigned long width, unsigned long height);
	// BW1W120 00898530 BW1M119 01172190 (LHCombined Release)
	bool Compress();
	// BW1W120 008985b0 BW1M119 01172150 (LHCombined Release)
	bool SetSourceBuffer(char* buffer);
};

#endif /* BW1_DECOMP_LH_JPEG_INCLUDED_H */
