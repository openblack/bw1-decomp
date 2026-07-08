#ifndef BW1_DECOMP_CONTROL_MAP_INCLUDED_H
#define BW1_DECOMP_CONTROL_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <re_common.h>         /* For bool32_t */

#include "BindableAction.h" /* For _BINDABLE_ACTION_SIZE, struct BindableAction */

struct ControlMap
{
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

	// BW1W120 0046f6c0 BW1M100 101cbaa0 ControlMap::ControlMap(void)
	ControlMap();

	// Non-virtual methods

	// BW1W120 00470910 BW1M100 101caba0 ControlMap::GetText(ulong, wchar_t*)
	void GetText(LH_KEY key, char16_t* out_text);
	// BW1W120 00470ab0 BW1M100 10090ab0 ControlMap::ProcessActionsPerformed(void)
	void ProcessActionsPerformed();
};

#endif /* BW1_DECOMP_CONTROL_MAP_INCLUDED_H */
