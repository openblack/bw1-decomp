#ifndef BW1_DECOMP_POO_INCLUDED_H
#define BW1_DECOMP_POO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>        /* For enum HOLD_TYPE */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GameThing;
class GameThingWithPos;
class Object;

class Poo : public MobileObject
{
public:
	// Override methods

	// BW1W120 0055d0c0 BW1M119 013c5ef0
	virtual ~Poo();
	// BW1W120 0055d0b0 BW1M119 013c5fa0
	virtual char* GetDebugText();
	// BW1W120 0055d0a0 BW1M119 013c5f70
	virtual uint32_t GetSaveType();
	// BW1W120 006083c0 BW1M119 013c2e80
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 006079d0 BW1M119 013c41d0
	virtual void InsertMapObject();
	// BW1W120 006083d0 BW1M119 013c2e50
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 006079c0 BW1M119 013c4220
	virtual uint32_t GetPhysicsConstantsType();
};

#endif /* BW1_DECOMP_POO_INCLUDED_H */
