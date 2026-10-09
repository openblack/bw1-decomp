#ifndef BW1_DECOMP_SOUND_TAG_INCLUDED_H
#define BW1_DECOMP_SOUND_TAG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AudioSFX.h>                      /* For enum AUDIO_SFX_BANK_TYPE */
#include <chlasm/LHSample.h>                      /* For enum LH_SAMPLE */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>     /* For struct LHListNode */

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

class Base;
class GameThingWithPos;

class SoundTag : public LocalBase
{
public:
	LHListNode<SoundTag> next;
	GameThingWithPos*    game_thing;
	LHPoint              field_0x10;
	LHPoint              field_0x1c;
	uint32_t             field_0x28;
	uint32_t             field_0x2c;
	bool                 field_0x30;
	int                  field_0x34;
	uint32_t             field_0x38;
	uint32_t             field_0x3c;
	int                  field_0x40;
	int                  field_0x44;
	int                  field_0x48;
	uint32_t             field_0x4c;
	uint16_t             field_0x50;

	// Override methods

	// BW1W120 0071e3c0 BW1M119 0151c1b0
	virtual ~SoundTag();
	// BW1W120 0071ecb0 BW1M119 0151b5d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0071ec90 BW1M119 0151b650
	virtual int Get3DSoundPos(LHPoint* param_1);

	// Static methods

	// BW1W120 0071e5f0 BW1M119 01031110
	static void ProcessSoundTags();

	// BW1W120 0071e840 BW1M119 0151bd10
	static SoundTag* Create(GameThingWithPos* param_1, unsigned long param_2, bool param_3, unsigned long param_4,
	                        unsigned long param_5, int param_6, int param_7, AUDIO_SFX_BANK_TYPE bank_type,
	                        int param_9);
	// BW1W120 0071ea40 BW1M119 0109dc20
	static SoundTag* Create(const LHPoint& pos, unsigned long sample, bool param_3, unsigned long param_4,
	                        unsigned long param_5, int param_6, int param_7, AUDIO_SFX_BANK_TYPE bank_type,
	                        int param_9);
	// BW1W120 0071ed40 BW1M119 010a05d0
	static LH_SAMPLE GetRandomSample(LH_SAMPLE first, unsigned long count);

	// Constructors

	// BW1W120 0071e300 BW1M119 0151c580
	SoundTag(GameThingWithPos* param_1, const LHPoint& param_2, uint32_t param_3, bool param_4, uint32_t param_5,
	         uint32_t param_6, int param_7, int param_8, AUDIO_SFX_BANK_TYPE param_9, int param_10);

	// Non-virtual methods

	// BW1W120 0071e4f0 BW1M119 010a21f0
	void Set(GameThingWithPos* param_1, const LHPoint& param_2, const LHPoint& param_3, uint32_t param_4, bool param_5,
	         uint32_t param_6, uint32_t param_7, int param_8, int param_9, uint32_t param_10, int param_11,
	         int param_12);
};

#endif /* BW1_DECOMP_SOUND_TAG_INCLUDED_H */
