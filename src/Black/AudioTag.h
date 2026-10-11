#ifndef BW1_DECOMP_AUDIO_TAG_INCLUDED_H
#define BW1_DECOMP_AUDIO_TAG_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct HelpDude;

enum AUDIO_TAG_TARGET
{
	AUDIO_TAG_TARGET_THIS = 0,
	AUDIO_TAG_TARGET_OTHER = 1,
	AUDIO_TAG_TARGET_GOOD = 2,
	AUDIO_TAG_TARGET_EVIL = 3,
	AUDIO_TAG_TARGET_BOTH = 4,
};

enum AUDIO_TAG_COMMAND
{
	AUDIO_TAG_COMMAND_ANIM = 1,
	AUDIO_TAG_COMMAND_ANIM_START = 2,
	AUDIO_TAG_COMMAND_ANIM_RELEASE = 3,
	AUDIO_TAG_COMMAND_EMOTION = 4,
	AUDIO_TAG_COMMAND_LOOK = 5,
	AUDIO_TAG_COMMAND_LOOK_START = 6,
	AUDIO_TAG_COMMAND_LOOK_RELEASE = 7,
};

#define AUDIO_TAG_EMOTION_PERCENT 100.0f

struct AudioTag
{
	float Time;
	int   Target;
	int   Command;
	int   Index;
	int   Value;

	// BW1W120 00c5836c
	static int ErrorCount;

	// Static methods

	// BW1W120 0042ae70 BW1M119 01188280
	static int BuildAudioTags(void* data, int size, AudioTag** tags);

	// Non-virtual methods

	// BW1W120 0042acc0 BW1M119 011887a0
	void ApplyToDude(HelpDude* dude, int param_2, int param_3);
};
static_assert(sizeof(AudioTag) == 0x14, "Data type is of wrong size");

struct AudioTagList
{
	AudioTag* Tags;
	int       Count;
	int       Index;

	// Constructors

	// BW1W120 inlined BW1M119 0134fbd0
	AudioTagList()
	{
		Count = 0;
		Tags = 0;
		Index = 0;
	}

	// Destructors

	// BW1W120 inlined BW1M119 01348320
	~AudioTagList() { delete Tags; }
};
static_assert(sizeof(AudioTagList) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_AUDIO_TAG_INCLUDED_H */
