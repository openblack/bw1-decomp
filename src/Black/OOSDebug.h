#ifndef BW1_DECOMP_OOS_DEBUG_INCLUDED_H
#define BW1_DECOMP_OOS_DEBUG_INCLUDED_H

class OOSDebug
{
public:
	// BW1W120 00d443c4 BW1M119 01a1ea7c
	static char* Buffer;
	// BW1W120 00d443c8 BW1M119 01a1ea78
	static unsigned long BufferSize;

	// BW1W120 0063c2e0 BW1M119 01117050
	static unsigned long GetOverallChecksum();
};

#endif /* BW1_DECOMP_OOS_DEBUG_INCLUDED_H */
