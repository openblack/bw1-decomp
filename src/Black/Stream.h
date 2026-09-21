#ifndef BW1_DECOMP_STREAM_INCLUDED_H
#define BW1_DECOMP_STREAM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class GStream : public GameThing
{
public:
	uint8_t field_0x14[0x14];

	// Override methods

	// BW1W120 0055de20 BW1M119 0115cd50
	virtual ~GStream();
	// BW1W120 00733b10 BW1M119 0115d090
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055de10 BW1M119 0115d5b0
	virtual char* GetDebugText();
	// BW1W120 007344e0 BW1M119 0115b8a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734380 BW1M119 0115be60
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055de00 BW1M119 0115d570
	virtual uint32_t GetSaveType();
	// BW1W120 00734640 BW1M119 0115b830
	virtual void ResolveLoad();

	// Static methods

	// BW1W120 00733ff0 BW1M119 0115c920
	static void CreateAll();
};

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
