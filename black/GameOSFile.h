#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lhfile/ver3.0/LHFile.h> /* For enum LH_FILE_MODE */
#include <lionhead/lhfile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "SaveLoadPtr.h" /* For struct GSaveLoadPtr */

// Forward Declares

struct GBaseInfo;
struct LHOSFile;
struct MapCoords;

struct GameOSFile
{
  struct LHReleasedOSFile super;  /* 0x0 */
  uint8_t field_0x8[0x40];
  uint8_t field_0x48[0xc4];
  uint32_t field_0x10c;
  char filename[0x100];  /* 0x110 */
  uint32_t field_0x210;
  uint32_t checksum;
  uint32_t field_0x218;
  uint32_t field_0x21c;
  struct LHLinkedList__GSaveLoadPtr save_load_ptr_list;  /* 0x220 */
  struct LHLinkedList__GameThing game_thing_list;
};
static_assert(sizeof(struct GameOSFile) == 0x230, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec9b8 mac inlined GameOSFile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GameOSFile asm("??_R0?AVGameOSFile@@@8");
// win1.41 009ad420 mac inlined GameOSFile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GameOSFile asm("??_R1A@?0A@A@GameOSFile@@8");
// win1.41 009ad438 mac inlined GameOSFile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GameOSFile asm("??_R2GameOSFile@@8");
// win1.41 009ad448 mac inlined GameOSFile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GameOSFile asm("??_R3GameOSFile@@8");
// win1.41 008df95c mac 1099a69c GameOSFile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GameOSFile asm("??_R4GameOSFile@@6B@");
// win1.41 008df960 mac 1099a6a4 GameOSFile::`vftable'
extern const struct LHOSFileVftable __vt__10GameOSFile asm("??_7GameOSFile@@6B@");

// Static methods

// win1.41 005587b0 mac 1030ef00 GameOSFile::LoadAllGame(char *)
bool __cdecl LoadAllGame__10GameOSFileFPc(char* filename) asm("?LoadAllGame@GameOSFile@@SA_NPAD@Z");

// Non-virtual methods

// win1.41 inlined mac inlined GameOSFile::ReadIt<MapCoords>(MapCoords*)
void __fastcall ReadIt_MapCoords___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, struct MapCoords* out);
// win1.41 inlined mac inlined GameOSFile::ReadIt<uint8_t>(uint8_t*)
void __fastcall ReadIt_u8___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, uint8_t* out);
// win1.41 inlined mac inlined GameOSFile::ReadIt<uint16_t>(uint16_t*)
void __fastcall ReadIt_u16___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, uint16_t* out);
// win1.41 inlined mac 104f2b44 GameOSFile::ReadIt<float>(float*)
void __fastcall ReadIt_f32___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, float* out);
// win1.41 00407700 mac 1010b3b0 GameOSFile::WriteIt<uint32_t>(uint32_t&)
void __fastcall WriteIt_u32___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, uint32_t* val) asm("??$WriteIt@I@GameOSFile@@QAEXAAI@Z");
// win1.41 00407750 mac 10331500 GameOSFile::ReadIt<int>(int&)
void __fastcall ReadIt_i32___10GameOSFileFRl(struct GameOSFile* this, const void* edx, int* out) asm("??$ReadIt@H@GameOSFile@@QAEXAAH@Z");
// win1.41 004077a0 mac 10139ad0 GameOSFile::ReadIt<uint32_t>(uint32_t&)
void __fastcall ReadIt_u32___10GameOSFileFRUl(struct GameOSFile* this, const void* edx, uint32_t* out) asm("??$ReadIt@H@GameOSFile@@QAEXAAI@Z");
// win1.41 00558dc0 mac 10304ef0 GameOSFile::LoadInstance(GameThing **)
void __fastcall LoadInstance__10GameOSFileFPP9GameThing(struct GameOSFile* this, const void* edx, struct GameThing** out_thing) asm("?LoadInstance@GameOSFile@@QAEXPAPAVGameThing@@@Z");
// win1.41 00561c60 mac 103049e0 GameOSFile::ResolveAllLoads(void)
void __fastcall ResolveAllLoads__10GameOSFileFv(struct GameOSFile* this) asm("?ResolveAllLoads@GameOSFile@@QAEXXZ");
// win1.41 00561e10 mac 10304650 GameOSFile::WritePtr(GameThing *)
void __fastcall WritePtr__10GameOSFileFP9GameThing(struct GameOSFile* this, const void* edx, struct GameThing* param_1) asm("?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");
// win1.41 00562180 mac 10304470 GameOSFile::ReadPtr(GameThing **)
void __fastcall ReadPtr__10GameOSFileFPP9GameThing(struct GameOSFile* this, const void* edx, struct GameThing** ptr) asm("?ReadPtr@GameOSFile@@QAEXPAPAVGameThing@@@Z");
// win1.41 00563f00 mac 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
void __fastcall ReadInfo__10GameOSFileFPPC9GBaseInfo(struct GameOSFile* this, const void* edx, struct GBaseInfo** info) asm("?ReadInfo@GameOSFile@@QAEXPAPBVGBaseInfo@@@Z");
// win1.41 00563fa0 mac 10300720 GameOSFile::ReadCheckSum(GameThing *)
void __fastcall ReadCheckSum__10GameOSFileFP9GameThing(struct GameOSFile* this, const void* edx, struct GameThing* thing) asm("?ReadCheckSum@GameOSFile@@QAEXPAVGameThing@@@Z");

// Override methods

// win1.41 00558030 mac 1030fcb0 GameOSFile::_dt(void)
void* __fastcall __dt__10GameOSFileFv(struct LHOSFile* this, const void* edx, bool param_1) asm("??_GGameOSFile@@UAEPAXI@Z");
// win1.41 inlined mac inlined GameOSFile::Open(char *, LH_FILE_MODE)
uint32_t __fastcall Open__10GameOSFileFPc12LH_FILE_MODE(struct LHOSFile* this, const void* edx, const char* filename, enum LH_FILE_MODE mode) asm("?Open@GameOSFile@@UAEIPADW4LH_FILE_MODE@@@Z");

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
