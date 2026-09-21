#ifndef BW1_DECOMP_SPELL_INCLUDED_H
#define BW1_DECOMP_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include <chlasm/Enum.h>                          /* For enum IMPRESSIVE_TYPE, enum MAGIC_TYPE */
#include <chlasm/HelpTextEnums.h>                 /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */
#include "MapCoords.h"        /* For struct MapCoords */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class Living;
class Object;
struct PSysProcessInfo;
class Reaction;
struct SpellCastData;
struct SpellEventInfo;
class WorshipSite;

class Spell : public GameThingWithPos
{
public:
	// BW1W120 00720300 BW1M119 0107fb80
	static void ProcessSpells();
	static void DrawSpells(); // 007203f0

	uint32_t   field_0x28;
	float      field_0x2c;
	uint32_t   field_0x30;
	uint32_t   field_0x34;
	uint32_t   field_0x38;
	uint32_t   field_0x3c;
	uint32_t   field_0x40;
	uint32_t   field_0x44;
	uint32_t   field_0x48;
	uint32_t   field_0x4c;
	float      field_0x50;
	float      field_0x54;
	float      field_0x58;
	uint8_t    field_0x5c;
	uint8_t    field_0x5d;
	uint32_t   field_0x60;
	LHPoint    field_0x64;
	LHPoint    field_0x70;
	LHPoint    field_0x7c;
	LHPoint    field_0x88;
	float      field_0x94;
	uint32_t   field_0x98;
	uint8_t    field_0x9c;
	GameThing* creator; /* 0xa0 */
	GameThing* field_0xa4;
	GameThing* InterfaceStatus;
	GameThing* field_0xac;
	uint32_t   field_0xb0;
	MAGIC_TYPE magic_type;
	float      field_0xb8;
	float      field_0xbc;
	MapCoords  field_0xc0;
	MapCoords  field_0xcc;
	uint32_t   field_0xd8;
	uint32_t   field_0xdc;
	uint32_t   field_0xe0;
	float      field_0xe4;
	Spell*     next;

	// Override methods

	// BW1W120 0071fb10 BW1M119 01310f00
	virtual ~Spell();
	// BW1W120 0071fd90 BW1M119 01520dd0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055cdf0 BW1M119 010d89a0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055cdc0 BW1M119 013b9b80
	virtual bool32_t IsFunctional();
	// BW1W120 0071fb00 BW1M119 0151c7b0
	virtual char* GetDebugText();
	// BW1W120 0071bc30 BW1M119 015179f0
	virtual uint32_t GetSampleForAttack();
	// BW1W120 00721cd0 BW1M119 0151c7f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00721930 BW1M119 0151cef0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0071faf0 BW1M119 0151c780
	virtual uint32_t GetSaveType();
	// BW1W120 0055cec0 BW1M119 013b9ef0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0055ceb0 BW1M119 013b9eb0
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 0055cef0 BW1M119 013b9fc0
	virtual uint32_t GetOrigin();
	// BW1W120 0055cdb0 BW1M119 013b9b50
	virtual float GetLife();
	// BW1W120 00721340 BW1M119 0151e340
	virtual void GetMovementDirection(LHPoint* param_1);
	// BW1W120 007202b0 BW1M119 01520410
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 0055cf20 BW1M119 013ba070
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE param_1);
	// BW1W120 00721630 BW1M119 0151dc80
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 007216d0 BW1M119 0151dc10
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 0055cee0 BW1M119 013b9f80
	virtual uint32_t IsSuitableForCreatureAction();
	// BW1W120 0055ced0 BW1M119 013b9f30
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 00720240 BW1M119 015204d0
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0055ce50 BW1M119 013b9d40
	virtual uint32_t IsSpell() const;
	// BW1W120 0055cf00 BW1M119 013b9ff0
	virtual const char* GetText();
	// BW1W120 007218a0 BW1M119 0151d8f0
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 007218b0 BW1M119 0151d880
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 007218c0 BW1M119 0151d810
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 007218d0 BW1M119 0151d7a0
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 0055cf10 BW1M119 013ba020
	virtual float GetReactionPower();
	// BW1W120 0055cd80 BW1M119 inlined
	virtual MapCoords GetSpellCastPos();
	// BW1W120 00721370 BW1M119 0151e240
	virtual void ProcessSpellSeed();
	// BW1W120 00720130 BW1M119 01520900
	virtual void GetParticleType();
	// BW1W120 00721360 BW1M119 0151e2e0
	virtual void DrawSpellSeed();
	// BW1W120 00720430 BW1M119 01520060
	virtual void Draw();
	// BW1W120 007203e0 BW1M119 01520170
	virtual void DebugDraw();
	// BW1W120 007214c0 BW1M119 0151df20
	virtual bool NeedsContinualPackets(GInterfaceStatus* param_1);
	// BW1W120 0055ce00 BW1M119 013b9c30
	virtual void HasEnoughChantsAndLifeForRecast();
	// BW1W120 0055ce10 BW1M119 013b9c80
	virtual void UpdateStruckReaction();
	// BW1W120 0055ce20 BW1M119 013b9cc0
	virtual void SetUpDestroyedReaction();
	// BW1W120 0055ce30 BW1M119 013b9d00
	virtual uint32_t GetCreatureCastOn();
	// BW1W120 00720710 BW1M119 0151fb80
	virtual uint32_t Process();
	// BW1W120 00720f40 BW1M119 0151eb40
	virtual void SpellEvent(const SpellEventInfo& param_1);
	// BW1W120 0055ce40 BW1M119 01284790
	virtual void CloseDown();
	// BW1W120 0071fe50 BW1M119 01520a30
	virtual int InitWithPos(GameThing* param_1, const MapCoords& param_2, SpellCastData* param_3,
	                        const PSysProcessInfo& param_4);
	// BW1W120 007200e0 BW1M119 01520950
	virtual int InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3,
	                           const PSysProcessInfo& param_4);
	// BW1W120 00720810 BW1M119 0151f980
	virtual float CalculateCostToMaintain();
	// BW1W120 0055ce60 BW1M119 013b9d70
	virtual void AdjustSpellSeedPos(MapCoords* param_1);
	// BW1W120 0055ce70 BW1M119 013b9db0
	virtual bool IsSpellCreature();
	// BW1W120 0055ce80 BW1M119 013b9df0
	virtual bool IsSpellStormAndTornado();
	// BW1W120 0055ce90 BW1M119 013b9e30
	virtual void SetMaxObjectsToCreate(int param_1);

	// Constructors

	// BW1W120 0071fa30 BW1M119 01521370
	Spell();
	// BW1W120 0071fb40 BW1M119 015210d0
	Spell(MAGIC_TYPE type, GameThing* creator);
};

#endif /* BW1_DECOMP_SPELL_INCLUDED_H */
