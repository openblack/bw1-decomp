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

	// BW1W120 0055de20 BW1M100 101549b0 GStream::_dt(void)
	virtual ~GStream();
	// BW1W120 00733b10 BW1M100 10154cf0 GStream::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055de10 BW1M100 10155220 GStream::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007344e0 BW1M100 10153560 GStream::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00734380 BW1M100 10153ac0 GStream::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055de00 BW1M100 101551e0 GStream::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00734640 BW1M100 101534f0 GStream::ResolveLoad(void)
	virtual void ResolveLoad();

	// Static methods

	// BW1W120 00733ff0 BW1M100 10154580 GStream::CreateAll(void)
	static void CreateAll();
};

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
