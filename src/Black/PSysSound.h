#ifndef BW1_DECOMP_P_SYS_SOUND_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class AtomCore;
class Base;
class GameOSFile;
class GameThing;
struct LHPoint;

class PSysSound : public PSysBase
{
public:
	PSysSound* Previous;
	PSysSound* Next;
	long       Action;
	uint8_t    field_0x20[0xc];
	long       FadeStep;
	uint8_t    field_0x30 : 5;
	uint8_t    UseGroundHeight : 1;
	uint8_t    field_0x31[7];
	AtomCore*  Core;
	uint8_t    field_0x3c[4];

	// Override methods

	// BW1W120 006d0f50 BW1M119 0148f430
	virtual ~PSysSound();
	// BW1W120 006d1000 BW1M119 0148f340
	virtual bool32_t Get3DSoundPos(LHPoint* pos);
	// BW1W120 006d0f40 BW1M119 0148ee00
	virtual char* GetDebugText();
	// BW1W120 006d13a0 BW1M119 0148efd0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006d14a0 BW1M119 0148ee40
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006d0f30 BW1M119 0148edc0
	virtual uint32_t GetSaveType();

	// BW1W120 006d0ee0 BW1M119 0148f690
	PSysSound();
};

static_assert(offsetof(PSysSound, Core) == 0x38, "PSysSound core offset is incorrect");
static_assert(sizeof(PSysSound) == 0x40, "PSysSound size is incorrect");

#endif /* BW1_DECOMP_P_SYS_SOUND_INCLUDED_H */
