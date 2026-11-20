#ifndef BW1_DECOMP_PICTURE_ROOM_INCLUDED_H
#define BW1_DECOMP_PICTURE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t */

#include <re_common.h>                            /* For bool32_t */
#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "TempleRoom.h"       /* For struct TempleRoom */

class PictureRoomBase : public TempleRoom
{
public:
	LH3DMesh*   DomeMesh;
	LH3DObject* DomeObject;
	LH3DMesh*   ExtraMesh;
	LH3DObject* ExtraObject;
	float       CameraZoomMin;
	float       CameraZoomMax;
	LHPoint     RoomPosition;
	char*       CameraName;
	char*       MeshName;
	char*       DomeMeshName;
	char*       ExtraMeshName;
	char*       LightsName;
	char*       FloorMeshName;
	int32_t     RoomType;
	uint8_t     CameraFlag;
	LHPoint     CameraPoints[4];

	// Override methods

	// BW1W120 0078f1d0 BW1M119 0111dd70
	virtual bool32_t IsAvailable();
	// BW1W120 0078f1f0 BW1M119 0111e380
	virtual void Draw();
	// BW1W120 0078f5d0 BW1M119 0111df40
	virtual void Update();
	// BW1W120 0078f5e0 BW1M119 0111dec0
	virtual void UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message);
	// BW1W120 0078f600 BW1M119 0111de60
	virtual void UpdateKeyboard(LH_KEY key, uint16_t modifiers);
	// BW1W120 0078f320 BW1M119 0111df90
	virtual void InitEngine();
	// BW1W120 0078f2d0 BW1M119 0111e2b0
	virtual void CloseEngine();

	// Constructors

	// BW1W120 0078f110 BW1M119 0111e5a0
	PictureRoomBase(const char* name);
	// BW1W120 0078f1e0 BW1M119 0111e510
	~PictureRoomBase();
};

static_assert(sizeof(PictureRoomBase) == 0x160, "Data type is of wrong size");

#endif /* BW1_DECOMP_PICTURE_ROOM_INCLUDED_H */
