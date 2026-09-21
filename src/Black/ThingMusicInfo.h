#ifndef BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H
#define BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class ThingMusicInfo : public GameThing
{
public:
	// Override methods

	// BW1W120 00429320 BW1M119 01185c80
	virtual ~ThingMusicInfo();
	// BW1W120 00429310 BW1M119 01185d50
	virtual char* GetDebugText();
	// BW1W120 00429ae0 BW1M119 01185d90
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00429950 BW1M119 01185fe0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00429300 BW1M119 01185d10
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H */
