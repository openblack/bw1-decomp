#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GPlayer;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct Creche
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Creche) == 0xc4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be67f8 mac inlined Creche::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Creche asm("??_R0?AVCreche@@@8");
// win1.41 009ab480 mac inlined Creche::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Creche asm("??_R1A@?0A@A@Creche@@8");
// win1.41 009ab498 mac inlined Creche::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Creche asm("??_R2Creche@@8");
// win1.41 009ab4c0 mac inlined Creche::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Creche asm("??_R3Creche@@8");
// win1.41 008d16c0 mac 10994094 Creche::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Creche asm("??_R4Creche@@6B@");
// win1.41 008d16c4 mac 1099409c Creche::`vftable'
extern const struct AbodeVftable __vt__6Creche asm("??_7Creche@@6B@");

// Override methods

// win1.41 0050aa00 mac 102a3b10 Creche::_dt(void)
void __fastcall __dt__6CrecheFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreche@@UAEPAXI@Z");
// win1.41 0050aa30 mac 102a40f0 Creche::ToBeDeleted(int)
void __fastcall ToBeDeleted__6CrecheFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Creche@@UAEXH@Z");
// win1.41 0050a9f0 mac 102a3d40 Creche::GetDebugText(void)
char* __fastcall GetDebugText__6CrecheFv(struct GameThing* this) asm("?GetDebugText@Creche@@UAEPADXZ");
// win1.41 0050a9e0 mac 102a3d00 Creche::GetSaveType(void)
uint32_t __fastcall GetSaveType__6CrecheFv(struct GameThing* this) asm("?GetSaveType@Creche@@UAEIXZ");
// win1.41 0050a990 mac inlined Creche::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__6CrecheFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@Creche@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0050a9b0 mac 102a3c40 Creche::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__6CrecheFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@Creche@@UAEIPAVCreature@@@Z");
// win1.41 0050a9c0 mac 102a3c90 Creche::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__6CrecheFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@Creche@@UAEIPAVCreature@@@Z");
// win1.41 0050ab90 mac 102a3d80 Creche::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__6CrecheFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLife@Creche@@UAEXMPAVGPlayer@@@Z");
// win1.41 0050a9d0 mac 102a3cd0 Creche::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__6CrecheFv(struct Object* this) asm("?Get3DType@Creche@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0050aa50 mac 102a3fd0 Creche::DeleteDependancys(void)
void __fastcall DeleteDependancys__6CrecheFv(struct Abode* this) asm("?DeleteDependancys@Creche@@UAEXXZ");
// win1.41 0050ab50 mac 102a3de0 Creche::MakeFunctional(void)
void __fastcall MakeFunctional__6CrecheFv(struct Abode* this) asm("?MakeFunctional@Creche@@UAEXXZ");

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
