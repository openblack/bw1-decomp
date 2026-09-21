#ifndef BW1_DECOMP_MAGIC_HAND_INCLUDED_H
#define BW1_DECOMP_MAGIC_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
class Object;

class GMagicHand : public GameThing
{
public:
	bool    HasObjectInHand; /* 0x14 */
	Object* ObjectInHand;

	// Override methods

	// BW1W120 005faf40 BW1M119 013b55b0
	virtual ~GMagicHand();
	// BW1W120 005fb2a0 BW1M119 013b4e50
	virtual void CleanUpForSerialisation();
	// BW1W120 005faf30 BW1M119 013b4c50
	virtual char* GetDebugText();
	// BW1W120 005fb320 BW1M119 013b4c90
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005fb2c0 BW1M119 013b4d60
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005faf20 BW1M119 013b4c10
	virtual uint32_t GetSaveType();

	// Non-virtual methods

	// BW1W120 005fb040 BW1M119 01077ae0
	Object* GetObjectFromHand() const;
};

#endif /* BW1_DECOMP_MAGIC_HAND_INCLUDED_H */
