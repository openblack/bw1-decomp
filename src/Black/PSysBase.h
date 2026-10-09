#ifndef BW1_DECOMP_P_SYS_BASE_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class PSysBase : public GameThing
{
public:
	// BW1W120 006755b0 BW1M119 null
	static void* operator new(size_t size, const char* file_name, uint32_t line);
	// BW1W120 00675940 BW1M119 01094370
	static void operator delete(void* ptr, size_t size);

	// Override methods

	// BW1W120 006cb040 BW1M119 0148e070
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004664e0 BW1M119 0111a6c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_UNUSED_000; }
	// BW1W120 006759c0 BW1M119 010892a0
	virtual ~PSysBase();
	// BW1W120 004664f0 BW1M119 0111a700
	virtual char* GetDebugText();
	// BW1W120 006944b0 BW1M119 01426b80
	virtual uint32_t Load(GameOSFile& file);
};

#endif /* BW1_DECOMP_P_SYS_BASE_INCLUDED_H */
