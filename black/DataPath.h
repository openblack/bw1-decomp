#ifndef BW1_DECOMP_DATA_PATH_INCLUDED_H
#define BW1_DECOMP_DATA_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;
struct ScriptedCamera;

struct DataPath
{
  struct GameThing super;  /* 0x0 */
  struct ScriptedCamera* scripted_camera;  /* 0x14 */
  int32_t track_no;
  float field_0x1c;
  uint32_t field_0x20;
  float field_0x24;
  float field_0x28;
  float field_0x2c;
};
static_assert(sizeof(struct DataPath) == 0x30, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3ab0 mac inlined DataPath::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8DataPath asm("??_R0?AVDataPath@@@8");
// win1.41 009b19d0 mac inlined DataPath::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8DataPath asm("??_R1A@?0A@A@DataPath@@8");
// win1.41 009b19e8 mac inlined DataPath::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8DataPath asm("??_R2DataPath@@8");
// win1.41 009b19f8 mac inlined DataPath::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8DataPath asm("??_R3DataPath@@8");
// win1.41 0092b418 mac 109a0f04 DataPath::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8DataPath asm("??_R4DataPath@@6B@");
// win1.41 0092b41c mac 109a0f0c DataPath::`vftable'
extern const struct GameThingVftable __vt__8DataPath asm("??_7DataPath@@6B@");

// Constructors

// win1.41 005ef040 mac 1037d350 DataPath::DataPath(void)
struct DataPath* __fastcall __ct__8DataPathFv(struct DataPath* this) asm("??0DataPath@@QAE@XZ");

// Override methods

// win1.41 005ef090 mac 1037d2b0 DataPath::_dt(void)
void __fastcall __dt__8DataPathFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDataPath@@UAEPAXI@Z");
// win1.41 005ef080 mac 10383880 DataPath::GetDebugText(void)
char* __fastcall GetDebugText__8DataPathFv(struct GameThing* this) asm("?GetDebugText@DataPath@@UAEPADXZ");
// win1.41 005eeec0 mac 1037d3e0 DataPath::Load(GameOSFile &)
uint32_t __fastcall Load__8DataPathFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DataPath@@UAEIAAVGameOSFile@@@Z");
// win1.41 005eed30 mac 1037d620 DataPath::Save(GameOSFile &)
uint32_t __fastcall Save__8DataPathFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DataPath@@UAEIAAVGameOSFile@@@Z");
// win1.41 005ef070 mac 10383840 DataPath::GetSaveType(void)
uint32_t __fastcall GetSaveType__8DataPathFv(struct GameThing* this) asm("?GetSaveType@DataPath@@UAEIXZ");

#endif /* BW1_DECOMP_DATA_PATH_INCLUDED_H */
