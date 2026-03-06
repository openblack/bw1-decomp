#ifndef BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

#ifdef __cplusplus

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

// win1.41 00c09700 mac inlined DefensiveShield::`RTTI Type Descriptor'
// win1.41 009b8340 mac inlined DefensiveShield::`RTTI Base Class Descriptor'
// win1.41 009b8358 mac inlined DefensiveShield::`RTTI Base Class Array'
// win1.41 009b8370 mac inlined DefensiveShield::`RTTI Class Hierarchy Descriptor'
class DefensiveShield: public PSysBase
{
public:

    // Override methods

    // win1.41 006d0ad0 mac 1041dc60 DefensiveShield::_dt(void)
    virtual ~DefensiveShield();
    // win1.41 006d0ac0 mac 1041dc20 DefensiveShield::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00699ca0 mac 10417a80 DefensiveShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006d0680 mac 1047f460 DefensiveShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006d0ab0 mac 1041dbe0 DefensiveShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#else // __cplusplus

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct DefensiveShield
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct DefensiveShield) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09700 mac inlined DefensiveShield::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15DefensiveShield asm("??_R0?AVDefensiveShield@@@8");
// win1.41 009b8340 mac inlined DefensiveShield::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15DefensiveShield asm("??_R1A@?0A@A@DefensiveShield@@8");
// win1.41 009b8358 mac inlined DefensiveShield::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15DefensiveShield asm("??_R2DefensiveShield@@8");
// win1.41 009b8370 mac inlined DefensiveShield::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15DefensiveShield asm("??_R3DefensiveShield@@8");

// Override methods

// win1.41 006d0ad0 mac 1041dc60 DefensiveShield::_dt(void)
void __fastcall __dt__15DefensiveShieldFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDefensiveShield@@UAEPAXI@Z");
// win1.41 006d0ac0 mac 1041dc20 DefensiveShield::GetDebugText(void)
char* __fastcall GetDebugText__15DefensiveShieldFv(struct GameThing* this) asm("?GetDebugText@DefensiveShield@@UAEPADXZ");
// win1.41 00699ca0 mac 10417a80 DefensiveShield::Load(GameOSFile &)
uint32_t __fastcall Load__15DefensiveShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DefensiveShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0680 mac 1047f460 DefensiveShield::Save(GameOSFile &)
uint32_t __fastcall Save__15DefensiveShieldFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DefensiveShield@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0ab0 mac 1041dbe0 DefensiveShield::GetSaveType(void)
uint32_t __fastcall GetSaveType__15DefensiveShieldFv(struct GameThing* this) asm("?GetSaveType@DefensiveShield@@UAEIXZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
