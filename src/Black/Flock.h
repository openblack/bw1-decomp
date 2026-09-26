#ifndef BW1_DECOMP_FLOCK_INCLUDED_H
#define BW1_DECOMP_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Container.h" /* For struct Container */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class CitadelHeart;
class Creature;
struct GFlockInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
class Town;

// Node of Flock's doubly-linked member list.
struct LivingListNode
{
	LivingListNode* next; /* 0x0 */
	LivingListNode* prev;
	Living*         payload; /* 0x8 */
};

class Flock : public Container
{
public:
	Living*         Shepherd; /* 0x30 */
	uint32_t        field_0x34;
	CitadelHeart*   citadel_heart;
	LivingListNode* members;
	LivingListNode* leader; /* 0x40 */
	LivingListNode* field_0x44;
	uint32_t        NumMembers; /* 0x48 */
	uint32_t        field_0x4c;
	uint16_t        DomainRadius; /* 0x50 */
	uint16_t        field_0x52;
	uint32_t        field_0x54;
	uint32_t        field_0x58;
	uint32_t        field_0x5c;
	MapCoords       SavedDomainCentre; /* 0x60 */
	MapCoords       field_0x6c;
	uint32_t        field_0x78;
	uint32_t        field_0x7c;
	uint32_t        field_0x80;
	uint32_t        field_0x84;
	uint32_t        field_0x88;
	uint32_t        field_0x8c;

	// Override methods

	// BW1W120 0052f920 BW1M119 010e7890
	virtual ~Flock();
	// BW1W120 0052ffb0 BW1M119 010e9bf0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0052f870 BW1M119 010e7950
	virtual Town* GetTown();
	// BW1W120 0052f910 BW1M119 010e7c10
	virtual char* GetDebugText();
	// BW1W120 00530930 BW1M119 010e7cf0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005305a0 BW1M119 010e8590
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0052f900 BW1M119 010e7be0
	virtual uint32_t GetSaveType();
	// BW1W120 0052f8a0 BW1M119 010e79f0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0052f8b0 BW1M119 010e7a30
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 0052f8d0 BW1M119 010e7ac0
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 0052f8e0 BW1M119 010e7b20
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature);
	// BW1W120 0052f8f0 BW1M119 010e7b80
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature);
	// BW1W120 0052f8c0 BW1M119 010e7a70
	virtual bool32_t IsSuitableForCreatureActivity();
	// BW1W120 0052f860 BW1M119 010e7920
	virtual bool32_t IsFlock() const;
	// BW1W120 0052f880 BW1M119 010e7980
	virtual bool32_t IsScriptContainer() const;
	// BW1W120 0052f890 BW1M119 010e79c0
	virtual const char* GetText();
	// BW1W120 00530490 BW1M119 010e8ff0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();

	// Constructors

	// BW1W120 0052f780 BW1M119 010eb000
	Flock(const MapCoords& coords, const GFlockInfo* info, GPlayer* player, uint32_t param_4);
	// BW1W120 0052f950 BW1M119 010ead80
	Flock(Living* param_1);

	// Non-virtual methods

	// BW1W120 0052fb50 BW1M119 010ea6c0
	void RemoveLivingFromFlock(Living* living, int update);
	// BW1W120 0052fc20 BW1M119 010ea580
	void SetDomainCentrePos(const MapCoords& param_1);
	// BW1W120 0052fe10 BW1M119 010ea170
	// TODO: incorrect return type
	void SeperateLivingIntoNewFlock(Living* living, int update);
	// BW1W120 00530570 BW1M119 0106ac10
	// TODO: incorrect return type
	MapCoords GetFlockPos();
};

#endif /* BW1_DECOMP_FLOCK_INCLUDED_H */
