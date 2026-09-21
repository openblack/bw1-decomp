#ifndef BW1_DECOMP_MPFE_LOGIN_INCLUDED_H
#define BW1_DECOMP_MPFE_LOGIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "MPFEDatabase.h"  /* For struct MPFEDatabase */

// Forward Declares

class SetupBigButton;
class SetupEdit;
class SetupStaticText;

class MPFELogin : public DialogBoxBase
{
public:
	SetupBigButton*  LeftArrowButton; /* 0x10 */
	SetupBigButton*  RightArrowButton;
	SetupEdit*       edit;
	SetupEdit*       edit2;
	SetupStaticText* text1; /* 0x20 */
	SetupStaticText* text2;
	SetupStaticText* text3;
	MPFEDatabase     database;
	void*            field_0x38;
	char             field_0x3c[0x20];

	// Override methods

	// BW1W120 006307f0 BW1M119 013af520
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00630d60 BW1M119 013af4f0
	virtual void Destroy();
	// BW1W120 00630610 BW1M119 013afbc0
	virtual void InitControls();

	// Constructors

	// BW1W120 00630580 BW1M119 013afdf0
	MPFELogin();
};

class MPFELoginDatabase : public MPFEDatabase
{
public:
	// Constructors

	// BW1W120 00631050 BW1M119 013af260
	MPFELoginDatabase();
};

#endif /* BW1_DECOMP_MPFE_LOGIN_INCLUDED_H */
