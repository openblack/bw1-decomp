#ifndef BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <chlasm/Enum.h>                        /* For enum VILLAGER_DISCIPLE */

#include "Base.h" /* For struct Base */

// Forward Declares

class GInterfaceStatus;
class GameThingWithPos;
struct LH_SamplePlayOptions;
class Town;

class GGuidance : public Base
{
public:
	struct LastThings
	{
		GameThingWithPos* thing; /* 0x0 */
		uint32_t          turn;

		// Constructors

		// BW1W120 0071aec0 BW1M119 01519920
		LastThings(GameThingWithPos* thing);
	};
	LH_SamplePlayOptions*     PlayOptions; /* 0x8 */
	int                       field_0xc[0x21];
	LHLinkedList<LastThings*> lastThings; /* 0x90 */
	uint32_t                  field_0x98;
	uint32_t                  field_0x9c;
	uint32_t                  field_0xa0;
	uint32_t                  field_0xa4;
	float                     field_0xa8;
	uint32_t                  field_0xac;
	uint32_t                  field_0xb0;
	uint32_t                  field_0xb4;
	uint32_t                  field_0xb8;
	uint32_t                  field_0xbc;
	uint32_t                  field_0xc0;
	uint32_t                  field_0xc4;
	uint32_t                  field_0xc8;
	GInterfaceStatus*         InterfaceStatus;
	uint32_t                  field_0xd0[0x7];

	// Override methods

	// BW1W120 0071ab30 BW1M119 0151a100
	virtual ~GGuidance();

	// Static methods

	// BW1W120 0071b020 BW1M119 01084710
	static void ProcessTownDesireSFX(GInterfaceStatus& status);
	// BW1W120 0071d1c0 BW1M119 010852f0
	static void HelpSpritesCheckMoonPhase();
	// BW1W120 0071bf10 BW1M119 01517210
	static void MakeDiscipleSFX(GInterfaceStatus& status, VILLAGER_DISCIPLE disciple);

	// Constructors

	// BW1W120 0071ab10 BW1M119 0151a190
	GGuidance();

	// Non-virtual methods

	// BW1W120 0071ac70 BW1M119 01519d90
	void Init(GInterfaceStatus& status);
	// BW1W120 0071cbe0 BW1M119 01516150
	void HelpSpritesLowOnPeople(Town& param_1);
};

#endif /* BW1_DECOMP_SOUND_GUIDANCE_INCLUDED_H */
