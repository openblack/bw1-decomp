#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_INTERFACE_LEVEL, enum SCRIPT_OBJECT_TYPE */

#include "Base.h"      /* For struct Base */
#include "BaseInfo.h"  /* For struct GBaseInfo */
#include "ScriptDLL.h" /* For enum VMScriptType, enum VMType */

enum SCRIPT_FEATURE_COMMANDS
{
	SCRIPT_FEATURE_COMMANDS_0 = 0x0,
	_SCRIPT_FEATURE_COMMANDS_COUNT = 0x1
};

// Forward Declares

class Abode;
class GameThingWithPos;

class GScript : public Base
{
public:
	uint8_t field_0x8[0xb4];

	// Override methods

	// BW1W120 006eb150 BW1M100 104d7b60 GScript::_dt(void)
	virtual ~GScript();

	// Static methods

	// BW1W120 006eb100 BW1M100 104d8610 GScript::Create(void)
	static GScript* Create(GScript* this);
	// BW1W120 006eb710 BW1M100 104d7e50 GScript::StartScript(char *)
	static int StartScript(char* name);
	// BW1W120 0070b220 BW1M100 104fcda0 GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL)
	static void SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL level);
	// BW1W120 0070d360 BW1M100 10500750 GScript::DeleteAllScriptCreatedGameThings(void)
	static void DeleteAllScriptCreatedGameThings();

	// Non-virtual methods

	// BW1W120 006eb2d0 BW1M100 104d8160 GScript::Reset(int)
	void Reset(int param_2);
	// BW1W120 006eb610 BW1M100 104d8070 GScript::LoadBinary(char *)
	void LoadBinary(char* binary);
	// BW1W120 006eb6b0 BW1M100 1007ef10 GScript::Process(void)
	void Process();
	// BW1W120 006eb9d0 BW1M100 10082240 GScript::ProcessFade(bool)
	void ProcessFade(bool param_1);
	// BW1W120 006eba90 BW1M100 104d7670 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
	void SetupScreenFadeTo(uint8_t r, uint8_t g, uint8_t b, int8_t a);
	// BW1W120 006ebbc0 BW1M100 104d7300 GScript::CleanGameForScriptReboot(void)
	void CleanGameForScriptReboot();
	// BW1W120 006ec790 BW1M100 104d6160 GScript::PUSH(void *, VMType)
	void PUSH(void* param_1, VMType param_2);
	// BW1W120 006f0cc0 BW1M100 104def10 GScript::StopScriptsOfType(VMScriptType)
	void StopScriptsOfType(VMScriptType param_1);
	// BW1W120 006f62b0 BW1M100 104e7c70 GScript::ScriptErrorMessage(char*)
	void ScriptErrorMessage(char* msg);
	// BW1W120 006f62c0 BW1M100 100054c0 GScript::ScriptWarningMessage(char*)
	void ScriptWarningMessage(char* msg);
	// BW1W120 006f7410 BW1M100 104ea250 GScript::FindInTown(GameThingWithPos*, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
	Abode* FindInTown(GameThingWithPos* param_1, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t) param_2,
	                  SCRIPT_OBJECT_TYPE param_3, uint32_t param_4);
};

class GScriptOpposingCreature : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006f3770 BW1M100 104e3ad0 GScriptOpposingCreature::_dt(void)
	virtual ~GScriptOpposingCreature();
	// BW1W120 006f3710 BW1M100 104e7b10 GScriptOpposingCreature::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */
