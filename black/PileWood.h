#ifndef BW1_DECOMP_PILE_WOOD_INCLUDED_H
#define BW1_DECOMP_PILE_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PileResource.h" /* For struct PileResource */

#ifdef __cplusplus

// Forward Declares

class Base;
class GameThing;
class Object;

// win1.41 00becbb8 mac inlined PileWood::`RTTI Type Descriptor'
// win1.41 009adc08 mac inlined PileWood::`RTTI Base Class Descriptor'
// win1.41 009adc20 mac inlined PileWood::`RTTI Base Class Array'
// win1.41 009adc50 mac inlined PileWood::`RTTI Class Hierarchy Descriptor'
// win1.41 008e5d88 mac 10748250 PileWood::`RTTI Complete Object Locator'
// win1.41 008e5d8c mac 10748258 PileWood::`vftable'
class PileWood: public PileResource
{
public:

    // Override methods

    // win1.41 0055d6c0 mac 10116ea0 PileWood::_dt(void)
    virtual ~PileWood();
    // win1.41 0055d6b0 mac 1011d4f0 PileWood::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d6a0 mac 1011d4b0 PileWood::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0051bc40 mac 10038aa0 PileWood::Draw(void)
    virtual void Draw();
    // win1.41 0066ec60 mac 10077d70 PileWood::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
};

#else // __cplusplus

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct PileWood
{
  struct PileResource super;  /* 0x0 */
};
static_assert(sizeof(struct PileWood) == 0xb4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becbb8 mac inlined PileWood::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8PileWood asm("??_R0?AVPileWood@@@8");
// win1.41 009adc08 mac inlined PileWood::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8PileWood asm("??_R1A@?0A@A@PileWood@@8");
// win1.41 009adc20 mac inlined PileWood::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8PileWood asm("??_R2PileWood@@8");
// win1.41 009adc50 mac inlined PileWood::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8PileWood asm("??_R3PileWood@@8");
// win1.41 008e5d88 mac 10748250 PileWood::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8PileWood asm("??_R4PileWood@@6B@");
// win1.41 008e5d8c mac 10748258 PileWood::`vftable'
extern const struct PotVftable __vt__8PileWood asm("??_7PileWood@@6B@");

// Override methods

// win1.41 0055d6c0 mac 10116ea0 PileWood::_dt(void)
void __fastcall __dt__8PileWoodFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPileWood@@UAEPAXI@Z");
// win1.41 0055d6b0 mac 1011d4f0 PileWood::GetDebugText(void)
char* __fastcall GetDebugText__8PileWoodFv(struct GameThing* this) asm("?GetDebugText@PileWood@@UAEPADXZ");
// win1.41 0055d6a0 mac 1011d4b0 PileWood::GetSaveType(void)
uint32_t __fastcall GetSaveType__8PileWoodFv(struct GameThing* this) asm("?GetSaveType@PileWood@@UAEIXZ");
// win1.41 0051bc40 mac 10038aa0 PileWood::Draw(void)
void __fastcall Draw__8PileWoodFv(struct Object* this) asm("?Draw@PileWood@@UAEXXZ");
// win1.41 0066ec60 mac 10077d70 PileWood::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__8PileWoodFv(struct Object* this) asm("?GetResourceType@PileWood@@UAE?AW4RESOURCE_TYPE@@XZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_PILE_WOOD_INCLUDED_H */
