#ifndef BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H
#define BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct LayerCommunication;
struct MPFEChannelDetails;
struct MPFEPlayerDetails;

struct LayerCommunicationVftable
{
  void (__fastcall* SendMessageW)(struct LayerCommunication* this, const void* edx, wchar_t* message, bool param2, struct MPFEPlayerDetails* player);  /* 0x0 */
  void (__fastcall* SendMessageA)(struct LayerCommunication* this, const void* edx, const char* message, bool param2, struct MPFEPlayerDetails* player);
  void (__fastcall* LeaveMainRoom)(struct LayerCommunication* this);
  void (__fastcall* LeaveGameChannel)(struct LayerCommunication* this);
  void (__fastcall* BeginPlayerEnumeration)(struct LayerCommunication* this);  /* 0x10 */
  void (__fastcall* PopulateChannelPlayers)(struct LayerCommunication* this, const void* edx, struct MPFEChannelDetails* channel);
  void (__fastcall* Process)(struct LayerCommunication* this);
  void (__fastcall* InitialiseLobbyState)(struct LayerCommunication* this);
  void (__fastcall* CreateOrJoinRoom)(struct LayerCommunication* this, const void* edx, wchar_t* param1, wchar_t* param2, struct MPFEChannelDetails* channel);  /* 0x20 */
  void (__fastcall* StartGame)(struct LayerCommunication* this);
  uint32_t (__fastcall* Connect)(struct LayerCommunication* this);
  void (__fastcall* Disconnect)(struct LayerCommunication* this);
  void (__fastcall* KickPlayerFromChannel)(struct LayerCommunication* this, const void* edx, struct MPFEPlayerDetails* player);  /* 0x30 */
  void (__fastcall* BanPlayerInChannel)(struct LayerCommunication* this, const void* edx, struct MPFEPlayerDetails* player);
  uint32_t (__fastcall* GetNumPeopleInRoom)(struct LayerCommunication* this);
  void (__fastcall* LockChannel)(struct LayerCommunication* this, const void* edx, bool lock);
  void (__fastcall* SetInvite)(struct LayerCommunication* this, const void* edx, bool invite);  /* 0x40 */
};
static_assert(sizeof(struct LayerCommunicationVftable) == 0x44, "Data type is of wrong size");

struct LayerCommunication
{
  struct LayerCommunicationVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct LayerCommunication) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd658 mac inlined LayerCommunication::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18LayerCommunication asm("??_R0?AVLayerCommunication@@@8");
// win1.41 009a86e8 mac inlined LayerCommunication::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18LayerCommunication asm("??_R1A@?0A@A@LayerCommunication@@8");

#endif /* BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H */
