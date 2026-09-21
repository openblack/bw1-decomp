#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class Game3DObject;
class GameOSFile;
class GameThing;
struct LHPoint;
struct MapCoords;

class SpellSeedGraphic : public GameThingWithPos
{
public:
	uint32_t      field_0x28;
	int*          field_0x2c;
	Game3DObject* obj; /* 0x30 */
	float         field_0x34;
	float         field_0x38;
	float         field_0x3c;
	float         field_0x40;
	float         field_0x44;
	int           field_0x48;
	uint32_t      field_0x4c;
	int*          field_0x50;
	float         field_0x54;
	float         field_0x58;
	char          field_0x5c;
	POWER_UP_TYPE power_up_type; /* 0x60 */
	uint32_t      field_0x64;
	uint32_t      field_0x68;
	uint32_t      field_0x6c;
	uint32_t      field_0x70;

	// Override methods

	// BW1W120 00726e50 BW1M119 01528be0
	virtual ~SpellSeedGraphic();
	// BW1W120 00726fe0 BW1M119 0152a830
	virtual void ToBeDeleted(int param_1);
	// BW1W120 007276a0 BW1M119 01529ba0
	virtual GPlayer* GetPlayer();
	// BW1W120 007276b0 BW1M119 01529af0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00726e40 BW1M119 01528d00
	virtual char* GetDebugText();
	// BW1W120 00727ac0 BW1M119 01529070
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00727c70 BW1M119 01528db0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00726e30 BW1M119 01528cc0
	virtual uint32_t GetSaveType();
	// BW1W120 00727e30 BW1M119 01528d50
	virtual void ResolveLoad();
	// BW1W120 00727340 BW1M119 0152a280
	virtual float GetScale();
	// BW1W120 00726e20 BW1M119 01528c80
	virtual const char* GetText();
	// BW1W120 007277b0 BW1M119 01529770
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 00727800 BW1M119 01529580
	virtual bool ForDrawFXGetVertexPos(int index, LHPoint* pos);

	// Static methods

	// BW1W120 00725ea0 BW1M119 0110bb30
	static SpellSeedGraphic* __nw(uint32_t size);
	// BW1W120 00726f60 BW1M119 0152ac10
	static SpellSeedGraphic* Create(const MapCoords& coords, SPELL_SEED_TYPE type, GPlayer* player, float param_4,
	                                POWER_UP_TYPE effect);

	// Non-virtual methods

	// BW1W120 00727060 BW1M119 0152a7b0
	void SetPowerUpType(POWER_UP_TYPE type);
	// BW1W120 00727080 BW1M119 0152a6d0
	void CreatePUBand();
};

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
