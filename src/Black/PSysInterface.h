#ifndef BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum PARTICLE_TYPE */

#include "GameThing.h" /* For struct GameThingVftable */
#include "PSysBase.h"  /* For struct PSysBase */

// Forward Declares

class Base;
class GameThing;
struct LHPoint;
struct PSysProcessInfo;
class Spell;

class PSysInterface : public PSysBase
{
public:
	enum NET_GAME_TYPE
	{
		NET_GAME_TYPE_0 = 0x0,
	};

	// Override methods

	// BW1W120 0055ee30 BW1M119 0111a250
	virtual ~PSysInterface();

	// Virtual methods

	// BW1W120 purecall BW1M119 purecall
	virtual uint32_t Process_1(const PSysProcessInfo* param_1, uint32_t param_2) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Process_2(PSysProcessInfo* param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Draw_1(float param_1, bool param_2) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Draw_2(bool param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddDrawing(float param_1, const LHPoint& param_2) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddTarget_1(const LHPoint* param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddTarget_2(GameThing* param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void CloseDown() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetMagnitude(float param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetAge(float param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetOrigin(const LHPoint& param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetOriginAndMoveAllAtoms(const LHPoint& param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetAlpha(uint8_t param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LHPoint* GetOrigin() = 0;

	// Static methods

	// BW1W120 0068e910 BW1M119 010052d0
	static PSysInterface* Create(Spell* spell, PARTICLE_TYPE particle_type, const LHPoint& param_3,
	                             const LHPoint& param_4, float param_5, NET_GAME_TYPE game_type);
};

#endif /* BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H */
