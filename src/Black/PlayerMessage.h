#ifndef BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/Prss.h> /* For struct Prss */

class PlayerMessage : public Prss
{
public:
	// Override methods

	// BW1W120 0066b5e0 BW1M100 inlined PlayerMessage::ProcessTurn(void)
	virtual Prss* ProcessTurn();
	// BW1W120 0066b610 BW1M100 inlined PlayerMessage::Display(void)
	virtual void Display();
	// BW1W120 0066b620 PlayerMessage::ClickFunction(int, int, int)
	virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_PLAYER_MESSAGE_INCLUDED_H */
