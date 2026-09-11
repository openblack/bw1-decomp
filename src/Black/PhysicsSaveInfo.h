#ifndef BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H
#define BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>

class GameOSFile;

class PhysicsSaveInfo
{
public:
	LHMatrix Matrix;
	LHPoint  field_0x30;
	LHPoint  field_0x3c;

	// TODO: Original member names unknown. ReadInfo appends; Object::ResolveLoad consumes.
	// BW1W120 00d01a90
	static PhysicsSaveInfo* Buffer;
	// BW1W120 00d01a94
	static uint32_t Count;
	// BW1W120 00d01a98
	static uint32_t ReadIndex;

	// BW1W120 005586c0 BW1M100 1030f570 PhysicsSaveInfo::ReadInfo(GameOSFile &)
	static void ReadInfo(GameOSFile& file);
};

static_assert(sizeof(PhysicsSaveInfo) == 0x48, "PhysicsSaveInfo size is incorrect");

#endif /* BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H */
