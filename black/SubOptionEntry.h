#ifndef BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H
#define BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

struct SubMeshDrawData;
struct SubOptionEntry;

struct SubOptionEntryVftable
{
  void (__fastcall* GetSubMeshData)(struct SubOptionEntry* this, const void* edx, struct SubMeshDrawData* param_1, int param_2, int param_3);  /* 0x0 */
  bool32_t (__fastcall* UpdateMouse)(struct SubOptionEntry* this, const void* edx, struct LHCoord coord, enum INTERFACE_MESSAGE_TYPES types, int param_2);
  bool32_t (__fastcall* UpdateKeyboard)(struct SubOptionEntry* this, const void* edx, enum LH_KEY key, uint16_t param_2);
};
static_assert(sizeof(struct SubOptionEntryVftable) == 0xc, "Data type is of wrong size");

struct SubOptionEntry
{
  struct SubOptionEntryVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct SubOptionEntry) == 0x4, "Data type is of wrong size");

// win1.41 0099ecd8 mac 10745d2c SubOptionEntry::`vftable'
extern const struct SubOptionEntryVftable __vt__14SubOptionEntry asm("??_7SubOptionEntry@@6B@");

#endif /* BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H */
