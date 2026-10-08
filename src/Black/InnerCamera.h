#ifndef BW1_DECOMP_INNER_CAMERA_INCLUDED_H
#define BW1_DECOMP_INNER_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer3d */

// Forward Declares

struct InnerRoom;
struct LH3DCamera;
struct LH3DMesh;

enum INNER_CAMERA_STATE
{
	INNER_CAMERA_STATE_THROUGH_DOOR = 3,
	INNER_CAMERA_STATE_FOCUSED = 4,
};

enum INNER_CAMERA_HIT
{
	INNER_CAMERA_HIT_NONE = -1,
	INNER_CAMERA_HIT_NEAR = 1,
};

struct InnerCamera
{
	Zoomer3d    ZoomerPos;
	Zoomer3d    ZoomerFoc;
	uint32_t    State;
	uint32_t    field_0x128;
	int32_t     HighlightedDoor;
	int         TargetRoom;
	uint32_t    field_0x134;
	LHCoord*    field_0x138;
	uint32_t    ClickHitType;
	uint32_t    field_0x140;
	float       field_0x144;
	uint32_t    field_0x148;
	uint32_t    field_0x14c;
	uint32_t    field_0x150;
	uint32_t    field_0x154;
	int         field_0x158;
	int         field_0x15c;
	char        filename[0x100];
	LHPoint     field_0x260;
	LHPoint     field_0x26c;
	Zoomer3d    field_0x278;
	Zoomer3d    field_0x308;
	uint8_t     field_0x398;
	uint8_t     field_0x399;
	uint8_t     field_0x39a;
	uint8_t     field_0x39b;
	LHPoint     Pos0x39c;
	LHPoint     Foc0x3a8;
	uint8_t     field_0x3b4[0x18];
	float       StateTime;
	float       field_0x3d0;
	LHPoint     current_pos;
	LHPoint     CurrentFoc;
	Point2D     field_0x3ec;
	uint8_t     field_0x3f4;
	uint8_t     field_0x3f5[0x3];
	uint32_t    MouseHitType;
	float       field_0x3fc;
	float       field_0x400;
	uint8_t     field_0x404[0x1c];
	float       field_0x420;
	float       field_0x424;
	uint32_t    field_0x428;
	LHPoint     field_0x42c;
	uint32_t    field_0x438;
	LH3DCamera* lh3dcamera;
	uint8_t     field_0x440[0xc];
	int32_t     field_0x44c;
	float       ZoomProgress;
	LHPoint     field_0x454;
	LHPoint     field_0x460;

	// Override methods

	// BW1W120 00797420 BW1M119 015421d0
	virtual void ReloadCamera(char* param_1);
	// BW1W120 00796920 BW1M119 01542ac0
	virtual void PreDraw();
	// BW1W120 00797140 BW1M119 015422d0
	virtual void Init(char* param_1);
	// BW1W120 007885f0 BW1M119 0128b780
	virtual void Reinit();
	// BW1W120 007974a0 BW1M119 01542160
	virtual void Close();
	// BW1W120 007969e0 BW1M119 01542890
	virtual uint32_t CalcDoorHit(InnerRoom* param_1, LHCoord param_2, float param_3, bool param_4);
	// BW1W120 00796b60 BW1M119 015424c0
	virtual void Update(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                    bool param_6);
	// BW1W120 00795ce0 BW1M119 01542d90
	virtual void UpdateMain(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                        bool param_6);
	// BW1W120 007965f0 BW1M119 01542be0
	virtual void UpdateState(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                         bool param_6);
	// BW1W120 00795570 BW1M119 01544050
	virtual void FocusOnSubMesh(LH3DMesh* param_1, int param_2, float param_3, float param_4, float param_5);
	// BW1W120 007957c0 BW1M119 01543b70
	virtual void TriggerIntro(bool param_1, Zoomer3d* param_2, Zoomer3d* param_3);
	// BW1W120 007974d0 BW1M119 015420d0
	virtual ~InnerCamera();

	// Constructors

	// BW1W120 007974f0 BW1M119 01542000
	InnerCamera();
};

#endif /* BW1_DECOMP_INNER_CAMERA_INCLUDED_H */
