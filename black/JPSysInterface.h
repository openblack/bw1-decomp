#ifndef BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PSysInterface.h" /* For struct PSysInterface */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct LHPoint;
struct PSysBase;
struct PSysManager;
struct PSysProcessInfo;

struct GJPSysInterface
{
  struct PSysInterface super;  /* 0x0 */
  struct PSysManager* manager;  /* 0x14 */
};
static_assert(sizeof(struct GJPSysInterface) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed520 mac inlined GJPSysInterface::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GJPSysInterface asm("??_R0?AVGJPSysInterface@@@8");
// win1.41 009aeca0 mac inlined GJPSysInterface::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GJPSysInterface asm("??_R1A@?0A@A@GJPSysInterface@@8");
// win1.41 009aecb8 mac inlined GJPSysInterface::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GJPSysInterface asm("??_R2GJPSysInterface@@8");
// win1.41 009aecd0 mac inlined GJPSysInterface::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GJPSysInterface asm("??_R3GJPSysInterface@@8");
// win1.41 008fa89c mac 109b880c GJPSysInterface::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15GJPSysInterface asm("??_R4GJPSysInterface@@6B@");
// win1.41 008fa8a0 mac 109b8814 GJPSysInterface::`vftable'
extern const struct PSysInterfaceVftable __vt__15GJPSysInterface asm("??_7GJPSysInterface@@6B@");

// Override methods

// win1.41 0055ede0 mac 103b65b0 GJPSysInterface::_dt(void)
void __fastcall __dt__15GJPSysInterfaceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGJPSysInterface@@UAEPAXI@Z");
// win1.41 0055ed20 mac 10001030 GJPSysInterface::SetPlayer(GPlayer *)
void __fastcall SetPlayer__15GJPSysInterfaceFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@GJPSysInterface@@UAEXPAVGPlayer@@@Z");
// win1.41 0055ecc0 mac 10423d80 GJPSysInterface::GetDebugText(void)
char* __fastcall GetDebugText__15GJPSysInterfaceFv(struct GameThing* this) asm("?GetDebugText@GJPSysInterface@@UAEPADXZ");
// win1.41 006944d0 mac 1041dae0 GJPSysInterface::Load(GameOSFile &)
uint32_t __fastcall Load__15GJPSysInterfaceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GJPSysInterface@@UAEIAAVGameOSFile@@@Z");
// win1.41 006cb060 mac 10485b50 GJPSysInterface::Save(GameOSFile &)
uint32_t __fastcall Save__15GJPSysInterfaceFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GJPSysInterface@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ecb0 mac 10423d40 GJPSysInterface::GetSaveType(void)
uint32_t __fastcall GetSaveType__15GJPSysInterfaceFv(struct GameThing* this) asm("?GetSaveType@GJPSysInterface@@UAEIXZ");
// win1.41 006736b0 mac inlined GJPSysInterface::Process__1(PSysProcessInfo *const, unsigned int)
uint32_t __fastcall Process_1__15GJPSysInterfaceFCP15PSysProcessInfoUi(struct PSysBase* this, const void* edx, const struct PSysProcessInfo* param_1, uint32_t param_2) asm("?Process@GJPSysInterface@@UAEIPBUPSysProcessInfo@@I@Z");
// win1.41 00673690 mac inlined GJPSysInterface::Process(PSysProcessInfo *)
void __fastcall Process_2__15GJPSysInterfaceFP15PSysProcessInfo(struct PSysBase* this, const void* edx, struct PSysProcessInfo* param_1) asm("?Process@GJPSysInterface@@UAEXPAUPSysProcessInfo@@@Z");
// win1.41 0055eda0 mac inlined GJPSysInterface::Draw(float, bool)
void __fastcall Draw_1__15GJPSysInterfaceFfb(struct PSysBase* this, const void* edx, float param_1, bool param_2) asm("?Draw@GJPSysInterface@@UAEXM_N@Z");
// win1.41 00673700 mac inlined GJPSysInterface::Draw(bool)
void __fastcall Draw_2__15GJPSysInterfaceFb(struct PSysBase* this, const void* edx, bool param_1) asm("?Draw@GJPSysInterface@@UAEX_N@Z");
// win1.41 0055edc0 mac 10026de0 GJPSysInterface::AddDrawing(float, LHPoint const &)
void __fastcall AddDrawing__15GJPSysInterfaceFfRC7LHPoint(struct PSysInterface* this, const void* edx, float param_1, const struct LHPoint* param_2) asm("?AddDrawing@GJPSysInterface@@UAEXMPBULHPoint@@@Z");
// win1.41 0055ed80 mac inlined GJPSysInterface::AddTarget__1(LHPoint const &)
void __fastcall AddTarget_1__15GJPSysInterfaceFRC7LHPoint(struct PSysInterface* this, const void* edx, const struct LHPoint* param_1) asm("?AddTarget@GJPSysInterface@@UAEXPBULHPoint@@@Z");
// win1.41 0055ed60 mac inlined GJPSysInterface::AddTarget(GameThing *)
void __fastcall AddTarget_2__15GJPSysInterfaceFP9GameThing(struct PSysInterface* this, const void* edx, struct GameThing* param_1) asm("?AddTarget@GJPSysInterface@@UAEXPAVGameThing@@@Z");
// win1.41 0055ecd0 mac 100a0c00 GJPSysInterface::CloseDown(void)
void __fastcall CloseDown__15GJPSysInterfaceFv(struct PSysInterface* this) asm("?CloseDown@GJPSysInterface@@UAEXXZ");
// win1.41 0055ed30 mac 10017fc0 GJPSysInterface::SetMagnitude(float)
void __fastcall SetMagnitude__15GJPSysInterfaceFf(struct PSysInterface* this, const void* edx, float param_1) asm("?SetMagnitude@GJPSysInterface@@UAEXM@Z");
// win1.41 0055ed40 mac 10424080 GJPSysInterface::SetAge(float)
void __fastcall SetAge__15GJPSysInterfaceFf(struct PSysInterface* this, const void* edx, float param_1) asm("?SetAge@GJPSysInterface@@UAEXM@Z");
// win1.41 0055ecf0 mac 100722f0 GJPSysInterface::SetOrigin(LHPoint const &)
void __fastcall SetOrigin__15GJPSysInterfaceFRC7LHPoint(struct PSysInterface* this, const void* edx, const struct LHPoint* param_1) asm("?SetOrigin@GJPSysInterface@@UAEXPBULHPoint@@@Z");
// win1.41 0055ed00 mac 10423f20 GJPSysInterface::SetOriginAndMoveAllAtoms(LHPoint const &)
void __fastcall SetOriginAndMoveAllAtoms__15GJPSysInterfaceFRC7LHPoint(struct PSysInterface* this, const void* edx, const struct LHPoint* param_1) asm("?SetOriginAndMoveAllAtoms@GJPSysInterface@@UAEXPBULHPoint@@@Z");
// win1.41 0055ed50 mac 104240c0 GJPSysInterface::SetAlpha(unsigned char)
void __fastcall SetAlpha__15GJPSysInterfaceFUc(struct PSysInterface* this, const void* edx, uint8_t param_1) asm("?SetAlpha@GJPSysInterface@@UAEXE@Z");
// win1.41 0055ed10 mac 10026c40 GJPSysInterface::GetOrigin(void)
struct LHPoint* __fastcall GetOrigin__15GJPSysInterfaceFv(struct PSysInterface* this) asm("?GetOrigin@GJPSysInterface@@UAEPAULHPoint@@XZ");

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
