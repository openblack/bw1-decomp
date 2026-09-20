#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h>

class CameraModeNew3;
struct LHPoint;
struct MapCoords;

struct Config
{
	LHReleasedOSFile file; /* 0x0 */
	int              field_0x10c;
	CameraModeNew3*  CameraMode; /* 0x110 */

	// BW1W120 00c5e4c0
	static LHReleasedOSFile CloseDownFile;

	// BW1W120 inlined Config::~Config(void)
	~Config() { CloseDown(); }
	// BW1W120 0046b750 BW1M100 100bec60 Config::CloseDown(void)
	void CloseDown();

	// Non-virtual methods

	// BW1W120 0046af20 BW1M100 100bf6a0 Config::Init(void)
	void Init();
	// BW1W120 0046b1f0 BW1M100 100bf310 Config::Process(void)
	void Process();
	// BW1W120 0046b290 BW1M100 100befa0 Config::ProcessOneGameTurn(void)
	void ProcessOneGameTurn();
	// BW1W120 0046b5e0 BW1M100 100beef0 Config::Record(char*)
	void Record(char* text);
	// BW1W120 0046b630 BW1M100 100beda0 Config::Record(char*, MapCoords&)
	void Record(char* text, MapCoords& coords);
	// BW1W120 0046b6b0 BW1M100 100becb0 Config::Record(char*, LHPoint&)
	void Record(char* text, LHPoint& point);
};

// BW1W120 0046b0b0 BW1M100 100bf450 ConfigGetFPS(void)
int ConfigGetFPS();

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */
