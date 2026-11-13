#ifndef BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "MPFELogin.h"     /* For class MPFELoginDatabase */

struct SetupBigButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupStaticText;

class MPFECreateGame : public DialogBoxBase
{
public:
	SetupBigButton* BackButton;     /* 0x10 */
	SetupBigButton* ContinueButton; /* 0x14 */
	SetupEdit*      NameEdit;       /* 0x18 */
	SetupEdit*      PasswordEdit;   /* 0x1c */
#if !defined(VERSION_BW1W100)
	SetupStaticText* MaxPlayersText; /* 0x20 */
#endif
	SetupStaticText* TitleText;     /* 0x24 */
	SetupStaticText* PasswordLabel; /* 0x28 */
	SetupStaticText* NameLabel;     /* 0x2c */
#if !defined(VERSION_BW1W100)
	SetupStaticText* MaxPlayersLabel; /* 0x30 */
#endif
	SetupCheckBox* OOSCheckBox; /* 0x34 */
#if !defined(VERSION_BW1W100)
	SetupBigButton* FewerPlayersButton; /* 0x38 */
	SetupBigButton* MorePlayersButton;  /* 0x3c */
#endif
	MPFELoginDatabase Database; /* 0x40 */
#if !defined(VERSION_BW1W100)
	unsigned long MaxPlayers; /* 0x4c */
#endif

	// BW1W120 00d408d8
	static MPFECreateGame Instance;

	// BW1W120 0062a630 BW1M119 013a3760
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0062ab00 BW1M119 013a3720
	virtual void Destroy();
	// BW1W120 0062a370 BW1M119 013a3df0
	virtual void InitControls();

	// BW1W120 0062a310 BW1M119 inlined
	MPFECreateGame();
	// BW1W120 0062a350 BW1M119 013a4030
	~MPFECreateGame();

	// BW1W120 0062ab10 BW1M119 013a35d0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 0062a580 BW1M119 inlined
	void CopyToChannelSelector();
};

#if defined(VERSION_BW1W100)
static_assert(sizeof(MPFECreateGame) == 0x3c, "MPFECreateGame size is incorrect");
#else
static_assert(sizeof(MPFECreateGame) == 0x50, "MPFECreateGame size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_CREATE_GAME_INCLUDED_H */
