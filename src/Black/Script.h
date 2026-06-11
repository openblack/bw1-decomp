#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_INTERFACE_LEVEL, enum SCRIPT_OBJECT_TYPE */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "ScriptDLL.h" /* For enum VMScriptType, enum VMType */

// Forward Declares

class Abode;
class GameThingWithPos;

class GScript: public Base
{
public:
    uint8_t field_0x8[0xb4];

    // Override methods

    // win1.41 006eb150 mac 104d7b60 GScript::_dt(void)
    virtual ~GScript();

    // Static methods

    // win1.41 006eb100 mac 104d8610 GScript::Create(void)
    static GScript* Create(GScript* this);
    // win1.41 006eb710 mac 104d7e50 GScript::StartScript(char *)
    static int StartScript(char* name);
    // win1.41 0070b220 mac 104fcda0 GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL)
    static void SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL level);
    // win1.41 0070d360 mac 10500750 GScript::DeleteAllScriptCreatedGameThings(void)
    static void DeleteAllScriptCreatedGameThings();

    // Non-virtual methods

    // win1.41 006eb2d0 mac 104d8160 GScript::Reset(int)
    void Reset(int param_2);
    // win1.41 006eb610 mac 104d8070 GScript::LoadBinary(char *)
    void LoadBinary(char* binary);
    // win1.41 006eb6b0 mac 1007ef10 GScript::Process(void)
    void Process();
    // win1.41 006eb9d0 mac 10082240 GScript::ProcessFade(bool)
    void ProcessFade(bool param_1);
    // win1.41 006eba90 mac 104d7670 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
    void SetupScreenFadeTo(uint8_t r, uint8_t g, uint8_t b, int8_t a);
    // win1.41 006ebbc0 mac 104d7300 GScript::CleanGameForScriptReboot(void)
    void CleanGameForScriptReboot();
    // win1.41 006ec790 mac 104d6160 GScript::PUSH(void *, VMType)
    void PUSH(void* param_1, VMType param_2);
    // win1.41 006f0cc0 mac 104def10 GScript::StopScriptsOfType(VMScriptType)
    void StopScriptsOfType(VMScriptType param_1);
    // win1.41 006f62b0 mac 104e7c70 GScript::ScriptErrorMessage(char*)
    void ScriptErrorMessage(char* msg);
    // win1.41 006f62c0 mac 100054c0 GScript::ScriptWarningMessage(char*)
    void ScriptWarningMessage(char* msg);
    // win1.41 006f7410 mac 104ea250 GScript::FindInTown(GameThingWithPos*, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
    Abode* FindInTown(GameThingWithPos* param_1, int (__cdecl*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, uint32_t) param_2, SCRIPT_OBJECT_TYPE param_3, uint32_t param_4);
};

class GScriptOpposingCreature: public GBaseInfo
{
public:

    // Override methods

    // win1.41 006f3770 mac 104e3ad0 GScriptOpposingCreature::_dt(void)
    virtual ~GScriptOpposingCreature();
    // win1.41 006f3710 mac 104e7b10 GScriptOpposingCreature::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */
