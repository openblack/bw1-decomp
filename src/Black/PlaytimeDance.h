#ifndef BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class Town;

class PlaytimeElement : public GameThing
{
public:
	// Override methods

	// BW1W120 0066c3f0 BW1M100 inlined PlaytimeElement::_dt(void)
	virtual ~PlaytimeElement();
	// BW1W120 0066c6b0 BW1M100 inlined PlaytimeElement::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0066c3e0 BW1M100 inlined PlaytimeElement::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 0066c810 BW1M100 inlined PlaytimeElement::IsFunctional(void)
	virtual bool32_t IsFunctional();
};

#endif /* BW1_DECOMP_PLAYTIME_DANCE_INCLUDED_H */
