#ifndef BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct DBInfo;
struct MultiplayerDatabase;

struct MultiplayerDatabaseVftable
{
  bool32_t (__fastcall* Send)(struct MultiplayerDatabase* this);  /* 0x0 */
  bool32_t (__fastcall* ReceiveReturnData)(struct MultiplayerDatabase* this);
};
static_assert(sizeof(struct MultiplayerDatabaseVftable) == 0x8, "Data type is of wrong size");

struct MultiplayerDatabase
{
  struct MultiplayerDatabaseVftable* vftable;  /* 0x0 */
  bool32_t field_0x4;
  struct DBInfo* info;
  char* field_0xc;
};
static_assert(sizeof(struct MultiplayerDatabase) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdd48 mac inlined MultiplayerDatabase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19MultiplayerDatabase asm("??_R0?AVMultiplayerDatabase@@@8");
// win1.41 009b2d20 mac inlined MultiplayerDatabase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19MultiplayerDatabase asm("??_R1A@?0A@A@MultiplayerDatabase@@8");
// win1.41 009b2d38 mac inlined MultiplayerDatabase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19MultiplayerDatabase asm("??_R2MultiplayerDatabase@@8");
// win1.41 009b2d40 mac inlined MultiplayerDatabase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19MultiplayerDatabase asm("??_R3MultiplayerDatabase@@8");
// win1.41 009309f0 mac 10745c84 MultiplayerDatabase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19MultiplayerDatabase asm("??_R4MultiplayerDatabase@@6B@");
// win1.41 009309f4 mac 10745c8c MultiplayerDatabase::`vftable'
extern const struct MultiplayerDatabaseVftable __vt__19MultiplayerDatabase asm("??_7MultiplayerDatabase@@6B@");

// Constructors

// win1.41 00633400 mac 1010a230 MultiplayerDatabase::MultiplayerDatabase(void)
struct MultiplayerDatabase* __fastcall __ct__19MultiplayerDatabaseFv(struct MultiplayerDatabase* this) asm("??0MultiplayerDatabase@@QAE@XZ");

// Override methods

// win1.41 00633610 mac 10109f20 MultiplayerDatabase::ReceiveReturnData(void)
uint32_t __fastcall ReceiveReturnData__19MultiplayerDatabaseFv(struct MultiplayerDatabase* this) asm("?ReceiveReturnData@MultiplayerDatabase@@UAEIXZ");

#endif /* BW1_DECOMP_MULTIPLAYER_DATABASE_INCLUDED_H */
