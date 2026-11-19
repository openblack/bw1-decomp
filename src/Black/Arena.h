#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE, enum SPELL_SEED_TYPE */

#include "Fixed.h"            /* For struct Fixed */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class ArenaSpellIcon;
class GLightSheet;
class Object;
class SpellSeedGraphic;

#define ARENA_DEFAULT_RADIUS                  31.0f
#define ARENA_MAX_RADIUS                      60.0f
#define ARENA_CREATURE_SIZE_SCALE             15.0f
#define ARENA_CLEAR_AREA_SEARCH_RADIUS        500.0f
#define ARENA_MIN_SCALE                       0.59f
#define ARENA_SCALE_STEP                      0.1f
#define ARENA_SHEET_NUM_SAMPLES               32
#define ARENA_SHEET_GREY_LEVEL                180
#define ARENA_SHEET_WAVE_HEIGHT_FACTOR        (1.0f / 6.0f)
#define ARENA_SHEET_SCALE_FAC                 1.01f
#define ARENA_SPELL_ICON_SHEET_SAMPLES        8
#define ARENA_SPELL_ICON_SHEET_SCALE_FAC      1.1f
#define ARENA_SPELL_ICON_SHEET_FULL_INTENSITY 1.0f

#define ARENA_CREATURE_COUNT 2

class GArena : public GameThingWithPos
{
public:
	float              Scale;           /* 0x28 */
	GLightSheet*       Sheet;           /* 0x2c */
	float              Radius;          /* 0x30 */
	bool32_t           FightInProgress; /* 0x34 */
	Creature*          Creatures[ARENA_CREATURE_COUNT];
	bool32_t           CreatedForFight;
	GameThing*         LinkedThing;
	LHListNode<GArena> next;

	// Override methods

	// BW1W120 00424960 BW1M119 010af2a0
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00424780 BW1M119 0102a940
	virtual float GetRadius() { return Radius; }
	// BW1W120 00424790 BW1M119 010afef0
	virtual const char* GetText() { return "Arena"; }
	// BW1W120 004247a0 BW1M119 010aff30
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GARENA; }
	// BW1W120 004247b0 BW1M119 010aff70
	virtual char* GetDebugText() { return "Arena:"; }
	// BW1W120 004251d0 BW1M119 010ae160
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004250d0 BW1M119 010ae2e0
	virtual bool32_t Save(GameOSFile& file);

	// Virtual methods

	// BW1W120 004248d0 BW1M119 010af570
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GArena() {}
	// BW1W120 004246f0 BW1M119 010af770
	GArena(const MapCoords& coords, float radius);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011ac8d0
	Creature* GetCreature(unsigned long index) { return Creatures[index]; }
	// BW1W120 00424b60 BW1M119 010af060
	void Deactivate();
	// BW1W120 00424ab0 BW1M119 010af0b0
	void Activate(Creature* creature_a, Creature* creature_b);
	// BW1W120 004249e0 BW1M119 01017430
	void Draw();
	// BW1W120 00424a90 BW1M119 null
	void CreateSpellIcons();
	// BW1W120 00424aa0 BW1M119 null
	void RemoveSpellIcons();
	// BW1W120 00424ce0 BW1M119 null
	bool32_t DeleteIfWithinRadius(const MapCoords& coords);
	// BW1W120 00424d30 BW1M119 null
	float GetSpellIconAngle(uint32_t slot, uint32_t side);
	// BW1W120 00424d90 BW1M119 null
	MapCoords GetSpellIconPos(uint32_t slot, uint32_t side);
	// BW1W120 00425040 BW1M119 null
	uint32_t GetCreatureIndex(Creature* creature);
	// BW1W120 00425060 BW1M119 010ae4c0
	bool32_t IsCreatureInArena(Creature* creature);
	// BW1W120 00425090 BW1M119 null
	ArenaSpellIcon* FindSpellIcon(MAGIC_TYPE type, Creature* creature);
	// BW1W120 004250a0 BW1M119 010ae470
	void SetSpellSelection(MAGIC_TYPE type, Creature* creature, bool selected);
	// BW1W120 00424bc0 BW1M119 010aee60
	uint32_t SaveObject(LHOSFile& file, const MapCoords& origin);

	// Static methods

	// BW1W120 00424d10 BW1M119 010173b0
	static void DrawAll();
	// BW1W120 00424fb0 BW1M119 010ae530
	static float GetArenaRadius(Creature* creature_a, Creature* creature_b);
	// BW1W120 00424e70 BW1M119 010ae650
	static GArena* FindNearestArenaOrCreateNew(const MapCoords& coords, Creature* creature_a, Creature* creature_b,
	                                           float radius);
	// BW1W120 00424e00 BW1M119 010ae840
	static GArena* FindNearestArena(const MapCoords& coords, float radius);
	// BW1W120 00424820 BW1M119 010af680
	static GArena* Create(const MapCoords& coords, float radius);
	// BW1W120 00424870 BW1M119 null
	static GArena* Create(const MapCoords& coords, Creature* creature_a, Creature* creature_b);
	// BW1W120 00424ca0 BW1M119 null
	static bool32_t DeleteArenaAt(const MapCoords& coords);
	// BW1W120 00424b80 BW1M119 010aefb0
	static bool32_t SaveAll(LHOSFile& file);
};

class ArenaSpellIcon : public Fixed
{
public:
	GArena*           Arena; /* 0x58 */
	SpellSeedGraphic* SpellSeed;
	uint32_t          CreatureIndex; /* 0x60 */
	MAGIC_TYPE        SpellType;
	GLightSheet*      Sheet;
	SPELL_SEED_TYPE   SeedType; /* 0x6c */
	uint32_t          field_0x70;

	// Override methods

	// BW1W120 00425350 BW1M119 010adf60
	virtual ~ArenaSpellIcon();
	// BW1W120 00425600 BW1M119 010adb60
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00425300 BW1M119 010ad4a0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00425310 BW1M119 010ad4f0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 00425320 BW1M119 010ad540
	virtual uint32_t GetSaveType();
	// BW1W120 00425330 BW1M119 010ad580
	virtual char* GetDebugText();
	// BW1W120 004257d0 BW1M119 010ad7d0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004256e0 BW1M119 010ad950
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00425540 BW1M119 010adc20
	virtual void Create3DObject();
	// BW1W120 004256c0 BW1M119 010adb30
	virtual void Draw();
	// BW1W120 00425420 BW1M119 010add80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 004256d0 BW1M119 010adae0
	virtual bool32_t IsEffectReceiver(EffectValues* effect);

	// Constructors

	// BW1W120 004252d0 BW1M119 010ae0e0
	ArenaSpellIcon();
	// BW1W120 00425370 BW1M119 null
	ArenaSpellIcon(GArena* arena, MAGIC_TYPE spell_type, uint32_t slot, uint32_t creature_index);

	// Non-virtual methods

	// BW1W120 00425520 BW1M119 null
	bool32_t GetSeedPos(MapCoords* pos);
	// BW1W120 00425650 BW1M119 null
	Creature* GetCreature();
	// BW1W120 00425660 BW1M119 null
	void SetSelected(bool selected);
};
static_assert(sizeof(ArenaSpellIcon) == 0x74, "Data type is of wrong size");

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
