#ifndef BW1_DECOMP_HELP_SPIRIT_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HELP_SPIRIT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct LHOSFile;
struct MapCoords;

struct HelpSpirit
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  enum HELP_SPIRIT_TYPE type;
  uint8_t field_0x5c[0x8];
};
static_assert(sizeof(struct HelpSpirit) == 0x64, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0c08 mac inlined HelpSpirit::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10HelpSpirit asm("??_R0?AVHelpSpirit@@@8");
// win1.41 009b12f8 mac inlined HelpSpirit::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10HelpSpirit asm("??_R1A@?0A@A@HelpSpirit@@8");
// win1.41 009b1310 mac inlined HelpSpirit::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10HelpSpirit asm("??_R2HelpSpirit@@8");
// win1.41 009b1328 mac inlined HelpSpirit::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10HelpSpirit asm("??_R3HelpSpirit@@8");
// win1.41 009154b4 mac 1099bee0 HelpSpirit::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10HelpSpirit asm("??_R4HelpSpirit@@6B@");
// win1.41 009154b8 mac 1099bee8 HelpSpirit::`vftable'
extern const struct ObjectVftable __vt__10HelpSpirit asm("??_7HelpSpirit@@6B@");

// Constructors

// win1.41 005c4aa0 mac 1034c700 HelpSpirit::HelpSpirit(MapCoords const &, HELP_SPIRIT_TYPE)
struct HelpSpirit* __fastcall __ct__10HelpSpiritFRC9MapCoords16HELP_SPIRIT_TYPE(struct HelpSpirit* this, const void* edx, const struct MapCoords* coords, enum HELP_SPIRIT_TYPE type) asm("??0HelpSpirit@@QAE@ABUMapCoords@@W4HELP_SPIRIT_TYPE@@@Z");

// Override methods

// win1.41 005c4b10 mac 1034b510 HelpSpirit::_dt(void)
void __fastcall __dt__10HelpSpiritFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpSpirit@@UAEPAXI@Z");
// win1.41 005c4b00 mac 1034b640 HelpSpirit::Create3DObject(void)
void __fastcall Create3DObject__10HelpSpiritFv(struct Object* this) asm("?Create3DObject@HelpSpirit@@UAEXXZ");
// win1.41 005c5270 mac 10083340 HelpSpirit::Process(void)
uint32_t __fastcall Process__10HelpSpiritFv(struct Object* this) asm("?Process@HelpSpirit@@UAEIXZ");
// win1.41 005c4b90 mac 1034c540 HelpSpirit::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__10HelpSpiritFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@HelpSpirit@@UAEXABUMapCoords@@@Z");
// win1.41 005c4af0 mac 1034b5f0 HelpSpirit::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__10HelpSpiritFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@HelpSpirit@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005c4ae0 mac 1034b5a0 HelpSpirit::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__10HelpSpiritFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@HelpSpirit@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_HELP_SPIRIT_INCLUDED_H */
