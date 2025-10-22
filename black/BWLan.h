#ifndef BW1_DECOMP_BW_LAN_INCLUDED_H
#define BW1_DECOMP_BW_LAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "LayerCommunication.h" /* For struct LayerCommunication */

// Forward Declares

struct MPFEChannelDetails;
struct MPFEPlayerDetails;

struct BWLan
{
  struct LayerCommunication super;  /* 0x0 */
};
static_assert(sizeof(struct BWLan) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd970 mac inlined BWLan::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5BWLan asm("??_R0?AVBWLan@@@8");
// win1.41 009a8798 mac inlined BWLan::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5BWLan asm("??_R1A@?0A@A@BWLan@@8");
// win1.41 009a87b0 mac inlined BWLan::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5BWLan asm("??_R2BWLan@@8");
// win1.41 009a87c0 mac inlined BWLan::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5BWLan asm("??_R3BWLan@@8");

// Override methods

// win1.41 004408e0 mac inlined BWLan::SendMessageW(wchar_t *, bool, MPFEPlayerDetails *)
void __fastcall SendMessageW__5BWLanFPwbP17MPFEPlayerDetails(struct LayerCommunication* this, const void* edx, wchar_t* param_1, bool param_2, struct MPFEPlayerDetails* param_3) asm("?SendMessageW@BWLan@@UAEXPA_W_NPAUMPFEPlayerDetails@@@Z");
// win1.41 00440840 mac 10181470 BWLan::SendMessageA(char const *, bool, MPFEPlayerDetails *)
void __fastcall SendMessageA__5BWLanFPCcbP17MPFEPlayerDetails(struct LayerCommunication* this, const void* edx, const char* param_1, bool param_2, struct MPFEPlayerDetails* param_3) asm("?SendMessageA@BWLan@@UAEXPBD_NPAUMPFEPlayerDetails@@@Z");
// win1.41 004409f0 mac 101812f0 BWLan::LeaveMainRoom(void)
void __fastcall LeaveMainRoom__5BWLanFv(struct LayerCommunication* this) asm("?LeaveMainRoom@BWLan@@UAEXXZ");
// win1.41 00440930 mac 10181350 BWLan::LeaveGameChannel(void)
void __fastcall LeaveGameChannel__5BWLanFv(struct LayerCommunication* this) asm("?LeaveGameChannel@BWLan@@UAEXXZ");
// win1.41 00440a00 mac 10181130 BWLan::BeginPlayerEnumeration(void)
void __fastcall BeginPlayerEnumeration__5BWLanFv(struct LayerCommunication* this) asm("?BeginPlayerEnumeration@BWLan@@UAEXXZ");
// win1.41 004414b0 mac 10180190 BWLan::PopulateChannelPlayers(MPFEChannelDetails *)
void __fastcall PopulateChannelPlayers__5BWLanFP18MPFEChannelDetails(struct LayerCommunication* this, const void* edx, struct MPFEChannelDetails* param_1) asm("?PopulateChannelPlayers@BWLan@@UAEXPAUMPFEChannelDetails@@@Z");
// win1.41 00440830 mac 1017feb0 BWLan::Process(void)
void __fastcall Process__5BWLanFv(struct LayerCommunication* this) asm("?Process@BWLan@@UAEXXZ");
// win1.41 00441380 mac 101804a0 BWLan::InitialiseLobbyState(void)
void __fastcall InitialiseLobbyState__5BWLanFv(struct LayerCommunication* this) asm("?InitialiseLobbyState@BWLan@@UAEXXZ");
// win1.41 00441500 mac 10180020 BWLan::CreateOrJoinRoom(wchar_t *, wchar_t *, MPFEChannelDetails *)
void __fastcall CreateOrJoinRoom__5BWLanFPwPwP18MPFEChannelDetails(struct LayerCommunication* this, const void* edx, wchar_t* param_1, wchar_t* param_2, struct MPFEChannelDetails* param_3) asm("?CreateOrJoinRoom@BWLan@@UAEXPA_W0PAUMPFEChannelDetails@@@Z");
// win1.41 004415b0 mac 1017fff0 BWLan::StartGame(void)
void __fastcall StartGame__5BWLanFv(struct LayerCommunication* this) asm("?StartGame@BWLan@@UAEXXZ");
// win1.41 00440ac0 mac 10180f20 BWLan::Connect(void)
uint32_t __fastcall Connect__5BWLanFv(struct LayerCommunication* this) asm("?Connect@BWLan@@UAEIXZ");

#endif /* BW1_DECOMP_BW_LAN_INCLUDED_H */
