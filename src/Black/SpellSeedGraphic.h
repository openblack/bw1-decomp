#ifndef BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H
#define BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class Game3DObject;
class GameOSFile;
class GameThing;
class GSpellSeedInfo;
struct LHMatrix;
struct LHPoint;
struct MapCoords;
class Object;
class PSysInterface;

class SpellSeedGraphic : public GameThingWithPos
{
public:
	uint32_t        field_0x28;
	Game3DObject*   Game3dObject;
	Game3DObject*   PUBand;
	float           UVFrame;
	float           PulsePhase;
	float           YAngle;
	float           field_0x40;
	float           BandAngle;
	SPELL_SEED_TYPE SeedType;
	uint32_t        field_0x4c;
	PSysInterface*  PSys;
	float           Size;
	float           BandScale;
	bool            field_0x5c;
	POWER_UP_TYPE   power_up_type;
	LHPoint         BandPos;
	uint8_t         BandAlpha;

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

	// BW1W120 00726dc0 BW1M119 0152af50
	SpellSeedGraphic();

	// Static methods

	// BW1W120 00725ea0 BW1M119 0110bb30
	static void* operator new(size_t size, const char* file_name, uint32_t line);
	// BW1W120 005f8870 BW1M119 0110bac0
	static void operator delete(void* ptr, size_t size);
	// BW1W120 00726f60 BW1M119 0152ac10
	static SpellSeedGraphic* Create(const MapCoords& coords, SPELL_SEED_TYPE type, GPlayer* player, float param_4,
	                                POWER_UP_TYPE effect);

	// Non-virtual methods

	// BW1W120 00727060 BW1M119 0152a7b0
	void SetPowerUpType(POWER_UP_TYPE type);
	// BW1W120 00727080 BW1M119 0152a6d0
	void CreatePUBand();
	// BW1W120 00727680 BW1M119 01529c60
	void SetAutoUpdate(bool auto_update);
	// BW1W120 00727690 BW1M119 01529be0
	bool32_t IsSpellG3DObjectDrawn();
	// BW1W120 00727700 BW1M119 015299f0
	GSpellSeedInfo* GetSpellSeedInfo() const;
	// BW1W120 00727630 BW1M119 01529cb0
	void DrawUpdateAtPos(const LHMatrix& matrix, float scale);
	// BW1W120 00519ad0 BW1M119 010c9140
	void DrawSpellGraphic(Object* object, bool param_2, bool param_3, unsigned char alpha);
};

#endif /* BW1_DECOMP_SPELL_SEED_GRAPHIC_INCLUDED_H */
