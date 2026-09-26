#ifndef BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MagicHand.h"        /* For struct GMagicHand */

// Forward Declares

class Base;
class GGuidance;
class GInterface;
class GLeashStatus;
class GPlayer;
class GVirtualInfluence;
class GameOSFile;
class GameThing;
class Object;
struct PSysProcessInfo;
class Spell;

class GInterfaceStatus : public GameThingWithPos
{
public:
	uint8_t            player_number;
	GInterface*        iface;
	GGuidance*         guidance;
	uint32_t           field_0x34;
	uint32_t           field_0x38;
	uint32_t           field_0x3c;
	uint32_t           field_0x40;
	LHPoint            ThrowVelocity;
	LHPoint            ThrowAngularVelocity;
	LHPoint            HandPos;
	LHPoint            HandAngles;
	GMagicHand         magic_hand[1];
	bool               HandHoldingSomething;
	LHCoord            field_0x94;
	uint32_t           field_0x9c;
	uint32_t           field_0xa0;
	LHPoint            field_0xa4;
	LHPoint            CameraPos;
	LHPoint            CameraFoc;
	LHPoint            field_0xc8;
	LHPoint            field_0xd4;
	uint32_t           field_0xe0;
	uint32_t           field_0xe4;
	LHPoint            field_0xe8;
	float              field_0xf4;
	float              field_0xf8;
	float              field_0xfc;
	float              field_0x100;
	float              field_0x104;
	float              field_0x108;
	LHPoint            HandVelocity;
	float              field_0x118;
	uint32_t           field_0x11c;
	Object*            LastPickedUpObject;
	Object*            LastDroppedObject;
	GLeashStatus*      LeashStatus;
	GVirtualInfluence* influence;
	float              field_0x130;

	// Override methods

	// BW1W120 005db990 BW1M119 01377020
	virtual ~GInterfaceStatus();
	// BW1W120 005dbb00 BW1M119 01376e00
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005dbc20 BW1M119 0105b400
	virtual GPlayer* GetPlayer();
	// BW1W120 005dc8f0 BW1M119 01375780
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 005db980 BW1M119 013745c0
	virtual char* GetDebugText();
	// BW1W120 005dcdc0 BW1M119 013748e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005dca50 BW1M119 01374f90
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005db970 BW1M119 01374580
	virtual uint32_t GetSaveType();
	// BW1W120 005dd130 BW1M119 01374800
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 005dd190 BW1M119 013747a0
	virtual void ResolveLoad();
	// BW1W120 005db960 BW1M119 01374540
	virtual const char* GetText();

	// Constructors

	// BW1W120 005db860 BW1M119 01377130
	GInterfaceStatus();

	// Non-virtual methods

	// BW1W120 005cedc0 BW1M119 01362540
	void SetActive(int param_1);
	// BW1W120 005d29c0 BW1M119 01029660
	void ResetActionState();
	// BW1W120 005dba00 BW1M119 01376eb0
	void SetToZero(GInterface* param_1);
	// BW1W120 005dc130 BW1M119 01077b40
	Object* GetFirstObjectInCurrentHand();
	// BW1W120 005dc2f0 BW1M119 0107d890
	bool IsSpaceInHands();
	// BW1W120 005dc8b0 BW1M119 010384a0
	GInterface* GetInterface();
	// BW1W120 005dd1a0 BW1M119 013746a0
	void Init(uint8_t player_number, GInterface* iface);
};

#endif /* BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H */
