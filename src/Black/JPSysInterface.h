#ifndef BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysInterface.h" /* For struct PSysInterface */

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
	virtual ~GJPSysInterface();
	// BW1W120 0055ed20 BW1M119 01001030
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0055ecc0 BW1M119 0142ccc0
	virtual char* GetDebugText();
	// BW1W120 006944d0 BW1M119 01426ae0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cb060 BW1M119 0148dfd0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ecb0 BW1M119 0142cc80
	virtual uint32_t GetSaveType();
	// BW1W120 006736b0 BW1M119 inlined
	virtual uint32_t Process_1(const PSysProcessInfo* param_1, uint32_t param_2);
	// BW1W120 00673690 BW1M119 inlined
	virtual void Process_2(PSysProcessInfo* param_1);
	// BW1W120 0055eda0 BW1M119 inlined
	virtual void Draw_1(float param_1, bool param_2);
	// BW1W120 00673700 BW1M119 inlined
	virtual void Draw_2(bool param_1);
	// BW1W120 0055edc0 BW1M119 01029970
	virtual void AddDrawing(float param_1, const LHPoint& param_2);
	// BW1W120 0055ed80 BW1M119 inlined
	virtual void AddTarget_1(const LHPoint* param_1);
	// BW1W120 0055ed60 BW1M119 inlined
	virtual void AddTarget_2(GameThing* param_1);
	// BW1W120 0055ecd0 BW1M119 010a2950
	virtual void CloseDown();
	// BW1W120 0055ed30 BW1M119 0101ab70
	virtual void SetMagnitude(float param_1);
	// BW1W120 0055ed40 BW1M119 0142cf60
	virtual void SetAge(float param_1);
	// BW1W120 0055ecf0 BW1M119 01074a90
	virtual void SetOrigin(const LHPoint& param_1);
	// BW1W120 0055ed00 BW1M119 0142cd80
	virtual void SetOriginAndMoveAllAtoms(const LHPoint& param_1);
	// BW1W120 0055ed50 BW1M119 0142cfa0
	virtual void SetAlpha(uint8_t param_1);
	// BW1W120 0055ed10 BW1M119 010297d0
	virtual LHPoint* GetOrigin();
};

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
