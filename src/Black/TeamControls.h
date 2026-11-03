#ifndef BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H
#define BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */

class ChannelBox;
struct SetupButton;
struct SetupList;
struct SetupStaticText;

struct TeamControls
{
	int              JoinButtonWidth;
	SetupList*       List;
	SetupButton*     JoinButton;
	SetupStaticText* TitleText;
	ChannelBox*      Box;
	int              Index;
	bool             MouseOver; /* 0x18 */
	bool             Hidden;
	LHRegion         Region; /* 0x1c */
};

static_assert(sizeof(TeamControls) == 0x2c, "TeamControls size is incorrect");

#endif /* BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H */
