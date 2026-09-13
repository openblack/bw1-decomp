#ifndef BW1_DECOMP_NETWORK_INCLUDED_H
#define BW1_DECOMP_NETWORK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h> /* For NULL */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>

// Forward Declares

class LHSession;

struct GNetwork
{
	uint32_t   field_0x0;
	float      field_0x4;
	uint32_t   field_0x8;
	uint32_t   field_0xc;
	LHSession* session; /* 0x10 */
	uint32_t   field_0x14;
	uint32_t   field_0x18;
	uint32_t   field_0x1c;
	uint8_t    field_0x20;
	uint32_t   field_0x24;
	uint32_t   field_0x28;
	uint32_t   field_0x2c;

	GNetwork()
	{
		field_0xc = 0;
		field_0x8 = 0;
		session = NULL;
		field_0x14 = 0;
		field_0x18 = 0;
		field_0x1c = 0;
		field_0x0 = 50;
		field_0x20 = 0;
		field_0x24 = 100;
		field_0x28 = 0;
		field_0x2c = 0;
	}
	// BW1W120 00635430 GNetwork::~GNetwork(void)
	~GNetwork();
	// BW1W120 00635450. TODO: Original method name is unrecovered.
	LH_RETURN fn_00635450(void* packet, unsigned long size);

	// Static methods

	// BW1W120 006345e0 BW1M100 10017240 GNetwork::ResetStateDebug(void)
	static void ResetStateDebug();

	// Non-virtual methods

	// BW1W120 006360b0 BW1M100 1008e350 GNetwork::UpdateDebug(void)
	void UpdateDebug();

	// BW1W120 006349f0 BW1M100 1010bff0 GNetwork::ProcessOnePacket(void)
	void ProcessOnePacket();
	// BW1W120 00635290 BW1M100 100229f0 GNetwork::ProcessOneSuperpacket(void)
	uint32_t ProcessOneSuperpacket();
};

#endif /* BW1_DECOMP_NETWORK_INCLUDED_H */
