#ifndef BW1_DECOMP_TEMPLE_INCLUDED_H
#define BW1_DECOMP_TEMPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#include "ScriptDLL.h"  /* For enum VMType */
#include "TempleRoom.h" /* For class TempleRoom, enum TempleRoomsEnum */

// Forward Declares

struct SnapShotData;

struct Temple
{
	static void UpdateFade(); // 00794280
	// TODO: Original names/static scope unrecovered; shared state maintained by Temple::UpdateFade.
	// BW1W120 00c2a150
	static float Dat_00C2A150;
	// BW1W120 00e06020
	static float Dat_00E06020;
	// BW1W120 00e05fe0
	static bool MultiplayerCitadel;
	// BW1W120 00e05fe4
	static LH3DColor CitadelSpecular;
	// BW1W120 00e05fe8
	static LH3DColor CitadelColour;
	// BW1W120 00e0601c
	static int LeaveCitadel;
	// BW1W120 00e0602c
	static float DoorPosition;

	TempleRoom* rooms[0x7];
	TempleRoom* ActiveRoom;
	uintptr_t   field_0x20;
	uint32_t    field_0x24;
	float       fov;
	float       field_0x2c;
	float       field_0x30;
	float       field_0x34;
	float       field_0x38;
	float       field_0x3c;
	float       field_0x40;
	uint32_t    HelpSuppressed;
	uint8_t     field_0x48;
	uint8_t     field_0x49;
	uint8_t     field_0x4a;
	uint8_t     field_0x4b;
	uint8_t     field_0x4c;
	uint8_t     field_0x4d;
	uint8_t     field_0x4e;
	uint8_t     field_0x4f;
	uint32_t    field_0x50;

	// Static methods

	// BW1W120 00794a30 BW1M119 0153ef60
	void ProcessGameTurn();
	// BW1W120 00794a80 BW1M119 0153eec0
	static void StartTempleScript(char* script_name);

	// Constructors

	// BW1W120 00793ac0 BW1M119 01540a00
	Temple();
	// BW1W120 00793c30 BW1M119 01540950
	~Temple();

	// Non-virtual methods

	// BW1W120 00793ee0 BW1M119 0153fe70
	void Update();
	// BW1W120 00794370 BW1M119 0153f7c0
	void Draw();
	// BW1W120 00794a20 BW1M119 0153f010
	bool StartScript(unsigned long param_1);
	// BW1W120 00794970 BW1M119 0153f230
	void UpdateChallenge(SnapShotData& data, unsigned long count, void** values, VMType* types, int take_picture);
	// BW1W120 007949e0 BW1M119 0153f110
	void SetCameraToLookAtSubMesh(unsigned long sub_mesh, float param_2, float param_3, float param_4);
	// BW1W120 inlined BW1M119 015aef90
	TempleRoom*& GetRoom(TempleRoomsEnum room) { return rooms[room]; }
};

#endif /* BW1_DECOMP_TEMPLE_INCLUDED_H */
