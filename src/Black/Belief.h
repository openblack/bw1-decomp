#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */

#include "Base.h" /* For struct Base */

// Forward Declares

class GPlayer;

class GBelief : public Base
{
public:
	// BW1W120 004380b0 BW1M119 01081680
	static void ProcessOncePerTurn();

	float    BeliefInPlayer[0x8]; /* 0x8 */
	uint32_t field_0x28[0x8];
	float    field_0x48[0x8];
	float    BeliefInPlayerMax[0x8]; /* 0x68 */
	uint32_t field_0x88[0x8];
	float    field_0xa8[0x8];
	float    field_0xc8[0x8];
	float    BoredomMultiplier[NUM_REACTION_FUNCTIONS]; /* 0xe8 */
	float    field_0x18c[0x11];

	// Override methods

	// BW1W120 00739320 BW1M119 01561820
	virtual ~GBelief();

	// Non-virtual methods

	// BW1W120 00437e70 BW1M119 010b4910
	float GetBeliefInPlayer(unsigned long param_1);
	// BW1W120 00438770 BW1M119 010b4310
	float DistanceChangeToBelief(float param_1, float param_2);
	// BW1W120 004387d0 BW1M119 010b4200
	void SetBelief(int index, float value);
	// BW1W120 00438a00 BW1M119 010b3ec0
	void SetBeliefInPlayerCap(GPlayer* player, float cap);
};

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
