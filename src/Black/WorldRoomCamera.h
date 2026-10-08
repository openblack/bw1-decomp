#ifndef BW1_DECOMP_WORLD_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_WORLD_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */

#include "InnerCamera.h" /* For struct InnerCamera */

// Forward Declares

struct InnerRoom;
struct LHCoord;
struct Zoomer3d;

enum WORLD_ROOM_DOOR
{
	WORLD_ROOM_DOOR_CREATURE = 0,
	WORLD_ROOM_DOOR_GAME_OPTIONS = 1,
	WORLD_ROOM_DOOR_EXIT = 2,
	WORLD_ROOM_DOOR_UNIVERSE = 3,
	WORLD_ROOM_DOOR_CREDITS = 4,
	WORLD_ROOM_DOOR_SAVE_GAME = 5,
	WORLD_ROOM_DOOR_CHALLENGE = 7,
};

struct WorldRoomCamera : public InnerCamera
{
	Zoomer  field_0x46c;
	Zoomer  field_0x49c;
	uint8_t field_0x4cc[0xc];
	int     SelectedDoor;
	uint8_t field_0x4dc[0x8];

	// Override methods

	// BW1W120 0079f960 BW1M119 015b1da0
	virtual void Init(char* param_1);
	// BW1W120 0079fa30 BW1M119 015b1d50
	virtual void Close();
	// BW1W120 0079fb90 BW1M119 015b1b40
	virtual void Update(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                    bool param_6);
	// BW1W120 0079fcf0 BW1M119 015b0380
	virtual void UpdateMain(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                        bool param_6);
	// BW1W120 0079fbc0 BW1M119 015b19f0
	virtual void UpdateState(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord& param_5,
	                         bool param_6);
	// BW1W120 0079fa40 BW1M119 015b1bb0
	virtual void TriggerIntro(bool param_1, Zoomer3d* param_2, Zoomer3d* param_3);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	WorldRoomCamera() {}
};
static_assert(sizeof(WorldRoomCamera) == 0x4e4, "Data type is of wrong size");

#endif /* BW1_DECOMP_WORLD_ROOM_CAMERA_INCLUDED_H */
