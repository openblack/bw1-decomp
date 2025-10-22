#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct MPFEDatabase;

struct MPFEDatabaseVftable
{
  void (__fastcall* DatabaseError)(struct MPFEDatabase* this);  /* 0x0 */
  void (__fastcall* DatabaseComplete)(struct MPFEDatabase* this);
};
static_assert(sizeof(struct MPFEDatabaseVftable) == 0x8, "Data type is of wrong size");

struct MPFEDatabase
{
  struct MPFEDatabaseVftable* vftable;  /* 0x0 */
  float progress_percentage;
  bool32_t populated;
};
static_assert(sizeof(struct MPFEDatabase) == 0xc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd810 mac inlined MPFEDatabase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12MPFEDatabase asm("??_R0?AVMPFEDatabase@@@8");
// win1.41 009b2778 mac inlined MPFEDatabase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12MPFEDatabase asm("??_R1A@?0A@A@MPFEDatabase@@8");
// win1.41 009b2790 mac inlined MPFEDatabase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12MPFEDatabase asm("??_R2MPFEDatabase@@8");
// win1.41 009b2798 mac inlined MPFEDatabase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12MPFEDatabase asm("??_R3MPFEDatabase@@8");
// win1.41 00930868 mac 109a37c0 MPFEDatabase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12MPFEDatabase asm("??_R4MPFEDatabase@@6B@");
// win1.41 0093086c mac 109a37c8 MPFEDatabase::`vftable'
extern const struct MPFEDatabaseVftable __vt__12MPFEDatabase asm("??_7MPFEDatabase@@6B@");

// Constructors

// win1.41 0062e100 mac 103a3ce0 MPFEDatabase::MPFEDatabase(void)
struct MPFEDatabase* __fastcall __ct__12MPFEDatabaseFv(struct MPFEDatabase* this) asm("??0MPFEDatabase@@QAE@XZ");

// Override methods

// win1.41 0062e4f0 mac 103a35b0 MPFEDatabase::DatabaseError(void)
void __fastcall DatabaseError__12MPFEDatabaseFv(struct MPFEDatabase* this) asm("?DatabaseError@MPFEDatabase@@UAEXXZ");
// win1.41 0062e510 mac 103a3520 MPFEDatabase::DatabaseComplete(void)
void __fastcall DatabaseComplete__12MPFEDatabaseFv(struct MPFEDatabase* this) asm("?DatabaseComplete@MPFEDatabase@@UAEXXZ");

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
