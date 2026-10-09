#ifndef BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysInterface.h" /* For struct PSysInterface */
#include "PSysManager.h"   /* For class PSysManager */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct LHPoint;
class PSysBase;
class PSysManager;
struct PSysProcessInfo;

class GJPSysInterface : public PSysInterface
{
public:
	PSysManager* manager; /* 0x14 */

	// Override methods

	// BW1W120 0055ede0 BW1M119 013be820
	virtual ~GJPSysInterface()
	{
		delete manager;
		manager = NULL;
	}
	// BW1W120 006944d0 BW1M119 01426ae0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cb060 BW1M119 0148dfd0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ecb0 BW1M119 0142cc80
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GJPSYS_INTERFACE; }
	// BW1W120 0055ecc0 BW1M119 0142ccc0
	virtual char* GetDebugText() { return "##a_class:"; }
	// BW1W120 0055ecd0 BW1M119 010a2950
	virtual void CloseDown() { manager->SetState(PSYS_MANAGER_STATE_CLOSE_DOWN); }
	// BW1W120 0055ecf0 BW1M119 01074a90
	virtual void SetOrigin(const LHPoint& origin) { manager->SetOrigin(origin); }
	// BW1W120 0055ed00 BW1M119 0142cd80
	virtual void SetOriginAndMoveAllAtoms(const LHPoint& origin) { manager->SetOriginAndMoveAllAtoms(origin); }
	// BW1W120 0055ed10 BW1M119 010297d0
	virtual const LHPoint* GetOrigin() { return manager->GetOrigin(); }
	// BW1W120 0055ed20 BW1M119 01001030
	virtual void SetPlayer(GPlayer* player) { manager->Player = player; }
	// BW1W120 0055ed30 BW1M119 0101ab70
	virtual void SetMagnitude(float magnitude) { manager->Magnitude = magnitude; }
	// BW1W120 0055ed40 BW1M119 0142cf60
	virtual void SetAge(float age) { manager->Age = age; }
	// BW1W120 0055ed50 BW1M119 0142cfa0
	virtual void SetAlpha(unsigned char alpha) { manager->Alpha = alpha; }
	// BW1W120 0055ed60 BW1M119 013c0660
	virtual void AddTarget(GameThing* target) { manager->Targets.AddTarget(target); }
	// BW1W120 0055ed80 BW1M119 0142cfe0
	virtual void AddTarget(const LHPoint& target) { manager->Targets.AddTarget(target); }
	// BW1W120 0055eda0 BW1M119 01069fb0
	virtual void Draw(float interpolation, bool draw_flag) { manager->Draw(interpolation, draw_flag); }
	// BW1W120 00673700 BW1M119 0106aa20
	virtual void Draw(bool param_1);
	// BW1W120 0055edc0 BW1M119 01029970
	virtual void AddDrawing(float interpolation, const LHPoint& pos) { manager->AddDrawing(interpolation, pos); }
	// BW1W120 00673690 BW1M119 01068bd0
	virtual void Process(const PSysProcessInfo& info);
	// BW1W120 006736b0 BW1M119 01064210
	virtual uint32_t Process(const PSysProcessInfo& info, unsigned long param_2);

	// BW1W120 0055ec90 BW1M119 inlined
	GJPSysInterface() { manager = NULL; }
};

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
