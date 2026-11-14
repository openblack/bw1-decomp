#ifndef BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H
#define BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */

class ChannelBox;
struct SetupBox;
struct SetupButton;
struct SetupControl;
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

	// Non-virtual methods

	// BW1W120 0061a660 BW1M119 01399780
	void Init(ChannelBox* box, int index);
	// BW1W120 0061a9f0 BW1M119 013990b0
	void InitControls(int x, int y, int width, int height, int column);
	// BW1W120 0061acf0 BW1M119 inlined
	void Hide(bool hidden);
	// BW1W120 0061ad20 BW1M119 013988f0
	void Callback(int message, SetupBox* box, SetupControl* control, int x, int y);
};

static_assert(sizeof(TeamControls) == 0x2c, "TeamControls size is incorrect");

#endif /* BW1_DECOMP_TEAM_CONTROLS_INCLUDED_H */
