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
	GameThing* interface_status;
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

	// BW1W120 0071fb10 BW1M100 1030e5c0 Spell::_dt(void)
	virtual ~Spell();
	// BW1W120 0071fd90 BW1M100 105195a0 Spell::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055cdf0 BW1M100 100d40a0 Spell::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0055cdc0 BW1M100 103b1c30 Spell::IsFunctional(void)
	virtual bool IsFunctional();
	// BW1W120 0071fb00 BW1M100 10514e70 Spell::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0071bc30 BW1M100 1050fe70 Spell::GetSampleForAttack(void)
	virtual uint32_t GetSampleForAttack();
	// BW1W120 00721cd0 BW1M100 10514eb0 Spell::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00721930 BW1M100 105155b0 Spell::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0071faf0 BW1M100 10514e40 Spell::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0055cec0 BW1M100 103b1fa0 Spell::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 0055ceb0 BW1M100 103b1f60 Spell::GetCreatureBeliefListType(void)
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 0055cef0 BW1M100 103b2070 Spell::GetOrigin(void)
	virtual uint32_t GetOrigin();
	// BW1W120 0055cdb0 BW1M100 103b1c00 Spell::GetLife(void)
	virtual float GetLife();
	// BW1W120 00721340 BW1M100 10516b00 Spell::GetMovementDirection(LHPoint *)
	virtual void GetMovementDirection(LHPoint* param_1);
	// BW1W120 007202b0 BW1M100 10518bd0 Spell::GetImpressiveType(void)
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 0055cf20 BW1M100 103b2120 Spell::GetImpressiveIntensity(IMPRESSIVE_TYPE)
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE param_1);
	// BW1W120 00721630 BW1M100 10516340 Spell::GetImpressiveValue(Living *, Reaction *)
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 007216d0 BW1M100 105162d0 Spell::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 0055cee0 BW1M100 103b2030 Spell::IsSuitableForCreatureAction(void)
	virtual uint32_t IsSuitableForCreatureAction();
	// BW1W120 0055ced0 BW1M100 103b1fe0 Spell::CanBeFrighteningToCreature(Creature *)
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 00720240 BW1M100 10518ca0 Spell::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0055ce50 BW1M100 103b1df0 Spell::IsSpell( const(void))
	virtual uint32_t IsSpell();
	// BW1W120 0055cf00 BW1M100 103b20a0 Spell::GetText(void)
	virtual const char* GetText();
	// BW1W120 007218a0 BW1M100 10515fb0 Spell::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 007218b0 BW1M100 10515f40 Spell::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 007218c0 BW1M100 10515ed0 Spell::GetFOVHelpMessageSet(void)
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 007218d0 BW1M100 10515e60 Spell::GetFOVHelpCondition(void)
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 0055cf10 BW1M100 103b20d0 Spell::GetReactionPower(void)
	virtual float GetReactionPower();
	// BW1W120 0055cd80 BW1M100 inlined Spell::GetSpellCastPos(MapCoords *)
	virtual void GetSpellCastPos(MapCoords* param_1);
	// BW1W120 00721370 BW1M100 10516a00 Spell::ProcessSpellSeed(void)
	virtual void ProcessSpellSeed();
	// BW1W120 00720130 BW1M100 105190d0 Spell::GetParticleType(void)
	virtual void GetParticleType();
	// BW1W120 00721360 BW1M100 10516aa0 Spell::DrawSpellSeed(void)
	virtual void DrawSpellSeed();
	// BW1W120 00720430 BW1M100 105187e0 Spell::Draw(void)
	virtual void Draw();
	// BW1W120 007203e0 BW1M100 105188d0 Spell::DebugDraw(void)
	virtual void DebugDraw();
	// BW1W120 007214c0 BW1M100 105166c0 Spell::NeedsContinualPackets(GInterfaceStatus *)
	virtual bool NeedsContinualPackets(GInterfaceStatus* param_1);
	// BW1W120 0055ce00 BW1M100 103b1ce0 Spell::HasEnoughChantsAndLifeForRecast(void)
	virtual void HasEnoughChantsAndLifeForRecast();
	// BW1W120 0055ce10 BW1M100 103b1d30 Spell::UpdateStruckReaction(void)
	virtual void UpdateStruckReaction();
	// BW1W120 0055ce20 BW1M100 103b1d70 Spell::SetUpDestroyedReaction(void)
	virtual void SetUpDestroyedReaction();
	// BW1W120 0055ce30 BW1M100 103b1db0 Spell::GetCreatureCastOn(void)
	virtual uint32_t GetCreatureCastOn();
	// BW1W120 00720710 BW1M100 10518300 Spell::Process(void)
	virtual uint32_t Process();
	// BW1W120 00720f40 BW1M100 105172a0 Spell::SpellEvent(SpellEventInfo const &)
	virtual void SpellEvent(const SpellEventInfo* param_1);
	// BW1W120 0055ce40 BW1M100 10280a00 Spell::CloseDown(void)
	virtual void CloseDown();
	// BW1W120 0071fe50 BW1M100 10519200 Spell::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
	virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3,
	                        const PSysProcessInfo* param_4);
	// BW1W120 007200e0 BW1M100 10519120 Spell::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
	virtual int InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3,
	                           const PSysProcessInfo* param_4);
	// BW1W120 00720810 BW1M100 10518100 Spell::CalculateCostToMaintain(void)
	virtual float CalculateCostToMaintain();
	// BW1W120 0055ce60 BW1M100 103b1e20 Spell::AdjustSpellSeedPos(MapCoords *)
	virtual void AdjustSpellSeedPos(MapCoords* param_1);
	// BW1W120 0055ce70 BW1M100 103b1e60 Spell::IsSpellCreature(void)
	virtual bool IsSpellCreature();
	// BW1W120 0055ce80 BW1M100 103b1ea0 Spell::IsSpellStormAndTornado(void)
	virtual bool IsSpellStormAndTornado();
	// BW1W120 0055ce90 BW1M100 103b1ee0 Spell::SetMaxObjectsToCreate(long)
	virtual void SetMaxObjectsToCreate(int param_1);

	// Constructors

	// BW1W120 0071fa30 BW1M100 10519bb0 Spell::Spell(void)
	Spell();
	// BW1W120 0071fb40 BW1M100 105198a0 Spell::Spell(MAGIC_TYPE, GameThing *)
	Spell(MAGIC_TYPE type, GameThing* creator);
};

#endif /* BW1_DECOMP_SPELL_INCLUDED_H */
