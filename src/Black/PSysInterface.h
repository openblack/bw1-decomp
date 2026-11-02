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

	// BW1W120 purecall BW1M119 purecall
	virtual void SetPlayer(GPlayer* player) = 0;
	// BW1W120 0055ee30 BW1M119 0111a250
	virtual ~PSysInterface() {}

	// BW1W120 purecall BW1M119 purecall
	virtual void Process(const PSysProcessInfo& info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual uint32_t Process(const PSysProcessInfo& info, unsigned long param_2) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Draw(bool param_1) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Draw(float interpolation, bool draw_flag) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddDrawing(float interpolation, const LHPoint& pos) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddTarget(GameThing* target) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void AddTarget(const LHPoint& target) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void CloseDown() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetMagnitude(float magnitude) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetAge(float age) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetOrigin(const LHPoint& origin) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetOriginAndMoveAllAtoms(const LHPoint& origin) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetAlpha(unsigned char alpha) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual const LHPoint* GetOrigin() = 0;

	// Static methods

	// BW1W120 0068e910 BW1M119 010052d0
	static PSysInterface* Create(Spell* spell, PARTICLE_TYPE particle_type, const LHPoint& param_3,
	                             const LHPoint& param_4, float param_5, NET_GAME_TYPE game_type);
};

#endif /* BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H */
