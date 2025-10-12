#ifndef BW1_DECOMP_HANOI_BLOCK_INCLUDED_H
#define BW1_DECOMP_HANOI_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;
struct Object;

struct HanoiBlock
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct HanoiBlock) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becda8 mac inlined HanoiBlock::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10HanoiBlock asm("??_R0?AVHanoiBlock@@@8");
// win1.41 009ae230 mac inlined HanoiBlock::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10HanoiBlock asm("??_R1A@?0A@A@HanoiBlock@@8");
// win1.41 009ae248 mac inlined HanoiBlock::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10HanoiBlock asm("??_R2HanoiBlock@@8");
// win1.41 009ae268 mac inlined HanoiBlock::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10HanoiBlock asm("??_R3HanoiBlock@@8");

// Override methods

// win1.41 00561850 mac 1011ebc0 HanoiBlock::_dt(void)
void __fastcall __dt__10HanoiBlockFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHanoiBlock@@UAEPAXI@Z");
// win1.41 00561840 mac 1011edc0 HanoiBlock::GetDebugText(void)
char* __fastcall GetDebugText__10HanoiBlockFv(struct GameThing* this) asm("?GetDebugText@HanoiBlock@@UAEPADXZ");
// win1.41 006db960 mac 10123fa0 HanoiBlock::Load(GameOSFile &)
uint32_t __fastcall Load__10HanoiBlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@HanoiBlock@@UAEIAAVGameOSFile@@@Z");
// win1.41 006db9f0 mac 10123e90 HanoiBlock::Save(GameOSFile &)
uint32_t __fastcall Save__10HanoiBlockFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@HanoiBlock@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561830 mac 1011ed80 HanoiBlock::GetSaveType(void)
uint32_t __fastcall GetSaveType__10HanoiBlockFv(struct GameThing* this) asm("?GetSaveType@HanoiBlock@@UAEIXZ");
// win1.41 006de440 mac 1011ee00 HanoiBlock::IsCannotBePickedUp( const(void))
bool __fastcall IsCannotBePickedUp__10HanoiBlockCFv(const struct GameThingWithPos* this) asm("?IsCannotBePickedUp@HanoiBlock@@UBE_NXZ");
// win1.41 006de3f0 mac 1011eed0 HanoiBlock::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__10HanoiBlockFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@HanoiBlock@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00561800 mac 1011eca0 HanoiBlock::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__10HanoiBlockFv(struct Object* this) asm("?CanBecomeAPhysicsObject@HanoiBlock@@UAE_NXZ");
// win1.41 005617f0 mac 1011ec50 HanoiBlock::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__10HanoiBlockFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@HanoiBlock@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00561820 mac 1011ed30 HanoiBlock::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__10HanoiBlockFv(struct Object* this) asm("?GetInHandImmersionTexture@HanoiBlock@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

#endif /* BW1_DECOMP_HANOI_BLOCK_INCLUDED_H */
