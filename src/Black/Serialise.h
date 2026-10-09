#ifndef BW1_DECOMP_SERIALISE_INCLUDED_H
#define BW1_DECOMP_SERIALISE_INCLUDED_H

class Archive
{
public:
	// BW1W120 007120e0 BW1M119 0150f050
	Archive& operator<<(unsigned long value);
	// BW1W120 00712330 BW1M119 0150e850
	Archive& operator>>(unsigned long& value);
};

#endif /* BW1_DECOMP_SERIALISE_INCLUDED_H */
