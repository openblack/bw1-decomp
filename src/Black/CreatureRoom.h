#ifndef BW1_DECOMP_CREATURE_ROOM_INCLUDED_H
#define BW1_DECOMP_CREATURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "TempleRoom.h" /* For struct TempleRoom */

class CreatureRoom : public TempleRoom
{
public:
	// BW1W120 007899f0 BW1M119 01093ca0
	static void ProcessScreenShot();
	// BW1W120 00789a70 BW1M119 012869e0
	static void TakeScreenShot(uint8_t index, wchar_t* name);
	// TODO: Original static member name is unrecovered.
	// BW1W120 00d96270
	static bool32_t CreatureInTemple;
	uint8_t         field_0xec[0x380];
	uint32_t        field_0x46c;
	uint8_t         field_0x470[0x68];

	// Override methods

	// BW1W120 00788630 BW1M119 01288620
	virtual void DrawAdditional(bool reflection);
	// BW1W120 007878e0 BW1M119 01288b10
	virtual void InitEngine();

	// Constructors

	// BW1W120 007865e0 BW1M119 0128b530
	CreatureRoom();

	// BW1W120 00788a10 BW1M119 012883b0
	void MakeCreatureScrollText(int param_1);
	// BW1W120 00788c10 BW1M119 01288210
	void MakeActionsLearntScrollText(int param_1);
	// BW1W120 00788d20 BW1M119 01287e30
	void MakePersonalityScrollText(int param_1);
	// BW1W120 00789070 BW1M119 01287a60
	void MakeMagicScrollText(int param_1);
	// BW1W120 007893c0 BW1M119 01287990
	void CreatureScrollCreatureSet(CallbackData& data);
	// BW1W120 00789540 BW1M119 01287660
	void CreatureScrollFightSet(CallbackData& data);
	// BW1W120 007896d0 BW1M119 01287330
	void CreatureScrollLikesSet(CallbackData& data);
	// BW1W120 00789860 BW1M119 01287000
	void CreatureScrollMagicSet(CallbackData& data);
};

// BW1W120 007867b0 BW1M119 0128b2e0
void ApplyCitadelColoring(unsigned long& colour, unsigned long& specular);

#endif /* BW1_DECOMP_CREATURE_ROOM_INCLUDED_H */
