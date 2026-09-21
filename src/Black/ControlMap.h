#ifndef BW1_DECOMP_CONTROL_MAP_INCLUDED_H
#define BW1_DECOMP_CONTROL_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */
#include <Lionhead/LH3DLib/development/LHCoord.h>

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <re_common.h>         /* For bool32_t */

#include "BindableAction.h" /* For _BINDABLE_ACTION_SIZE, struct BindableAction */

struct ControlMap
{
	// Shared delta returned by ControlMap::DeltaPos on Mac.
	// Original member spelling unrecovered; storage remains extracted.
	// BW1W120 00c5e8d0
	static LHCoord MouseDelta;
	BindableAction BindableActions[_BINDABLE_ACTION_SIZE];      /* 0x0 */
	bool32_t       BindableActionStates[_BINDABLE_ACTION_SIZE]; /* 0x648c */
	bool32_t       Field20x6510;
	bool32_t       Field30x6514;
	bool32_t       Field40x6518;
	bool32_t       Field50x651c;
	bool32_t       Field60x6520;
	bool32_t       Field70x6524;
	bool32_t       Field70x6528;
	bool32_t       Field90x652c;
	bool32_t       Field100x6530;

	// Constructors

	// BW1W120 0046f6c0 BW1M119 011d3320
	ControlMap();
	// BW1W120 0046f890 BW1M119 011d26a0
	void LoadDefaults();

	// Non-virtual methods

	// BW1W120 00470910 BW1M119 011d2410
	void GetText(LH_KEY key, char16_t* out_text);
	// BW1W120 00470ab0 BW1M119 01092cf0
	void ProcessActionsPerformed();
};

static_assert(sizeof(ControlMap) == 0x6534, "ControlMap size is incorrect");

#endif /* BW1_DECOMP_CONTROL_MAP_INCLUDED_H */
