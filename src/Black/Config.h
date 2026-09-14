#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

class CameraModeNew3;
struct LHPoint;
struct MapCoords;

struct Config
{
	// GSetup::MapCommandProcess allocates 0x114 bytes and installs the LHReleasedOSFile
	// vtable at +0 before Init (00714fa3-00714fb0). Init's virtual Open alone is insufficient evidence.
	// Its implicitly generated destructor preserves the original direct LHOSFile teardown.
	LHReleasedOSFile file; /* 0x0 */
	int              field_0x10c;
	CameraModeNew3*  CameraMode; /* 0x110; descriptive member name, written by Init. */

	// BW1W120 00c5e4c0. CloseDown uses this separate file, not the instance member.
	// TODO: Original name/scope unrecovered; Config's startup and CloseDown establish ownership.
	static LHReleasedOSFile CloseDownFile;

	~Config() { CloseDown(); }
	// BW1W120 0046b750 BW1M100 Config::CloseDown(void)
	void CloseDown();

	// Non-virtual methods

	// BW1W120 0046af20 BW1M100 Config::Init(void)
	// TODO: Requires the complete CPUCheck layout and LH3DLevelOfDetail::g_detail_idx.
	void Init();
	// BW1W120 0046b1f0 BW1M100 100bf310 Config::Process(void)
	void Process();
	// BW1W120 0046b290 BW1M100 100befa0 Config::ProcessOneGameTurn(void)
	void ProcessOneGameTurn();
	// BW1W120 0046b5e0 BW1M100 Config::Record(char *)
	void Record(char* text);
	// BW1W120 0046b630 BW1M100 Config::Record(char *, MapCoords &)
	void Record(char* text, MapCoords& coords);
	// BW1W120 0046b6b0 BW1M100 Config::Record(char *, LHPoint &)
	void Record(char* text, LHPoint& point);
};

static_assert(offsetof(Config, field_0x10c) == 0x10c, "Config FPS offset is incorrect");
static_assert(offsetof(Config, CameraMode) == 0x110, "Config camera mode offset is incorrect");

// BW1W120 0046b0b0 BW1M100 100bf450 ConfigGetFPS(void)
// Windows callers consume a full EAX integer result.
int ConfigGetFPS();

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */
