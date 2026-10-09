#ifndef BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H
#define BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class Living;
struct MapCoords;
class MobileWallHug;
class Object;

class SpellWolf : public Lion
{
public:
	uint32_t field_0x148;
	uint32_t field_0x14c;
	uint32_t field_0x150;
	uint32_t field_0x154;
	float    field_0x158;
	uint32_t field_0x15c;
	uint32_t field_0x160;
	uint32_t field_0x164;
	float    field_0x168;
	float    field_0x16c;
	float    field_0x170;
	float    field_0x174;
	uint32_t field_0x178;
	float    field_0x17c;
	float    field_0x180;
	float    field_0x184;
	float    field_0x188;
	float    field_0x18c;
	float    field_0x190;
	float    field_0x194;
	GPlayer* field_0x198;

	// Override methods

	// BW1W120 004208e0 BW1M119 0117f9e0
	virtual ~SpellWolf();
	// BW1W120 004208a0 BW1M119 0117fa70
	virtual GPlayer* GetPlayer();
	// BW1W120 004208b0 BW1M119 0117fab0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 004208d0 BW1M119 0117fb30
	virtual char* GetDebugText();
	// BW1W120 004210b0 BW1M119 0117fe00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004211d0 BW1M119 0117fc30
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004208c0 BW1M119 0117faf0
	virtual uint32_t GetSaveType();
	// BW1W120 0051c560 BW1M119 010c7d90
	virtual void Draw();
	// BW1W120 00420910 BW1M119 01180e50
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00420cf0 BW1M119 011808a0
	virtual bool32_t SetDying();
	// BW1W120 0041c6a0 BW1M119 01177d10
	virtual uint32_t StandAnimation();
	// BW1W120 004209b0 BW1M119 01180cf0
	virtual void SetSpeed(int param_1);
	// BW1W120 00420d50 BW1M119 01180860
	virtual uint32_t GetNumTurnsToDieOver();
};

class Wolf : public Lion
{
public:
	// Override methods

	// BW1W120 00421680 BW1M119 0112a070
	virtual ~Wolf();
	// BW1W120 00421670 BW1M119 011821b0
	virtual char* GetDebugText();
	// BW1W120 00421660 BW1M119 01182180
	virtual uint32_t GetSaveType();
	// BW1W120 0041c580 BW1M119 01178050
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H */
