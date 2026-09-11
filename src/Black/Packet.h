#ifndef BW1_DECOMP_PACKET_INCLUDED_H
#define BW1_DECOMP_PACKET_INCLUDED_H

// Original enum types from Mac symbols. Only the values needed by the turn
// memory handshake are declared; original enumerator names are unrecovered.
enum PACKET_TYPE
{
	PACKET_TYPE_0x61 = 0x61,
	PACKET_TYPE_0x62 = 0x62
};

enum SETPACKET_FUNCTION_NUMBER
{
	SETPACKET_FUNCTION_NUMBER_0xc = 0xc
};

#endif /* BW1_DECOMP_PACKET_INCLUDED_H */
