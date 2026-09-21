#ifndef BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H
#define BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class SpellSeed;

class OneOffSpellSeed : public MobileObject
{
public:
	uint8_t field_0x68[0x14];

	// Override methods

	// BW1W120 0055d170 BW1M119 0152ea60
	virtual ~OneOffSpellSeed();
	// BW1W120 0072a420 BW1M119 015300e0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d140 BW1M119 0152eb30
	virtual GComputerSeen* GetComputerSeen();
	// BW1W120 0055d130 BW1M119 0152eaf0
	virtual SpellSeed* CastOneOffSpellSeed();
	// BW1W120 0055d160 BW1M119 0152ebb0
	virtual char* GetDebugText();
	// BW1W120 0072aa20 BW1M119 0152f250
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0072a930 BW1M119 0152f3c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d150 BW1M119 0152eb70
	virtual uint32_t GetSaveType();
	// BW1W120 0072ac50 BW1M119 0152ee20
	virtual uint32_t GetOverwritePickUpToolTip();
	// BW1W120 0072ac80 BW1M119 0152edd0
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 004e48f0 BW1M119 015ec590
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 004e4ab0 BW1M119 015ebf60
	virtual uint32_t IsOneOffSpellBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 0072ab00 BW1M119 0152f1c0
	virtual uint32_t IsOneOffSpellAggressive(Creature* param_1);
	// BW1W120 0072ab20 BW1M119 0152f130
	virtual uint32_t IsOneOffSpellCompassionate(Creature* param_1);
	// BW1W120 0072ab40 BW1M119 0152f0a0
	virtual uint32_t IsOneOffSpellPlayful(Creature* param_1);
	// BW1W120 0072ab60 BW1M119 0152f000
	virtual uint32_t IsOneOffSpellToRestoreHealth(Creature* param_1);
	// BW1W120 004e4040 BW1M119 015ede70
	virtual uint32_t IsStealableSpell(Creature* param_1);
	// BW1W120 0072ac90 BW1M119 0152ed30
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 0072acb0 BW1M119 0152eca0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 0072a910 BW1M119 0152f590
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00518e90 BW1M119 010cb6f0
	virtual void Draw();
	// BW1W120 00518c50 BW1M119 010cba80
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 0072a450 BW1M119 0152fee0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0072a530 BW1M119 0152fdc0
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0072a630 BW1M119 0152fb20
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 0072a640 BW1M119 0152f9c0
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 0072a520 BW1M119 0152fe90
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0072a920 BW1M119 0152f540
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 0072ab80 BW1M119 0152eec0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_ONE_OFF_SPELL_SEED_INCLUDED_H */
