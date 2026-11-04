#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */

struct Config
{
	LHReleasedOSFile file; /* 0x0 */
	int              field_0x10c;
	int              field_0x110;
	// BW1W120 inlined BW1M119 inlined
	Config() { Init(); }
	~Config() { CloseDown(); }
	// BW1W120 0046b750 BW1M119 010c2170
	void CloseDown();

	// Non-virtual methods

	// BW1W120 0046af20 BW1M119 010c2ba0
	void Init();
	// BW1W120 0046b1f0 BW1M119 010c2810
	void Process();
	// BW1W120 0046b290 BW1M119 010c24b0
	void ProcessOneGameTurn();
};

// BW1W120 0046b0b0 BW1M119 010c2950
int ConfigGetFPS();

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */
