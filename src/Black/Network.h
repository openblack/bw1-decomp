#ifndef BW1_DECOMP_NETWORK_INCLUDED_H
#define BW1_DECOMP_NETWORK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h> /* For NULL */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

// Forward Declares

class LHSession;
class GBWPlayers;

struct GNetwork
{
	uint32_t                  field_0x0;
	float                     field_0x4;
	LHLinkedList<GBWPlayers*> Players; /* 0x8; descriptive member name */
	LHSession*                session; /* 0x10 */
	uint32_t                  field_0x14;
	uint32_t                  field_0x18;
	uint32_t                  field_0x1c;
	uint8_t                   field_0x20;
	uint32_t                  field_0x24;
	uint32_t                  field_0x28;
	uint32_t                  field_0x2c;

	GNetwork()
	{
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
	// BW1W120 00635430 BW1M119 01390f00
	~GNetwork();
	// TODO: Original method name is unrecovered.
	// BW1W120 00635450
	LH_RETURN fn_00635450(void* packet, unsigned long size);

	// Static methods

	// BW1W120 006345e0 BW1M119 01019df0
	static void ResetStateDebug();

	// Non-virtual methods
	// BW1W120 00634640 BW1M119 011166c0
	LH_RETURN Open(char* name, char* application, char* channel, char* password);

	// BW1W120 006360b0 BW1M119 01090650
	void UpdateDebug();

	// BW1W120 006349f0 BW1M119 01115a20
	void ProcessOnePacket();
	// BW1W120 00635290 BW1M119 01025570
	uint32_t ProcessOneSuperpacket();
};

#endif /* BW1_DECOMP_NETWORK_INCLUDED_H */
