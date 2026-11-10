#ifndef BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H
#define BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Prss.h>    /* For struct Prss */

// Forward Declares

struct LH3DWay;

class GCameraEditor : public Prss
{
public:
	struct CameraBin
	{
		LHPoint Position;
		LHPoint Focus;
		float   field_0x18;
		float   field_0x1c;
	};

	// TODO: Original singleton name is unrecovered.
	// BW1W120 00c59cf8
	static GCameraEditor* Instance;
	uint32_t              field_0x10;
	uint8_t               field_0x14[0x14];

	// Static methods

	// BW1W120 00445050 BW1M119 011a4ef0
	static void FinalDraw();
	// BW1W120 00445530 BW1M119 011a4880
	static void CreateSegFile();
	// BW1W120 00445e10 BW1M119 011a4600
	static void Draw3DPart();
	// BW1W120 00446fe0 BW1M119 011a3fb0
	static void LoadCameraFromHD(long index, CameraBin& bin);
};

struct Q213GCameraEditor9InfoTrack
{
	int                          field_0x0;
	uint32_t                     field_0x4;
	int                          field_0x8;
	uint32_t                     field_0xc;
	Q213GCameraEditor9InfoTrack* next; /* 0x10 */
	uint32_t                     field_0x14;
	LHPoint                      field_0x18;
	LHPoint                      field_0x24;
	int                          field_0x30;
	LH3DWay*                     field_0x34;
	int32_t*                     field_0x38;

	// Non-virtual methods

	// BW1W120 00446450 BW1M119 011a4230
	void Draw();
};

#endif /* BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H */
