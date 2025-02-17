#ifndef BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H
#define BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

struct LayerCommunicationVftable
{
  uintptr_t SendMessageW;  /* 0x0 */
  uintptr_t SendMessageA;
  uintptr_t LeaveMainRoom;
  uintptr_t LeaveGameChannel;
  uintptr_t BeginPlayerEnumeration;  /* 0x10 */
  uintptr_t PopulateChannelPlayers;
  uintptr_t Process;
  uintptr_t InitialiseLobbyState;
  uintptr_t CreateOrJoinRoom;  /* 0x20 */
  uintptr_t StartGame;
  uint32_t (__fastcall* Connect)(struct LayerCommunicationVftable* this);
  uintptr_t Disconnect;
  uintptr_t KickPlayerFromChannel;  /* 0x30 */
  uintptr_t BanPlayerInChannel;
  uintptr_t GetNumPeopleInRoom;
  uintptr_t LockChannel;
  uintptr_t SetInvite;  /* 0x40 */
};
static_assert(sizeof(struct LayerCommunicationVftable) == 0x44, "Data type is of wrong size");

struct LayerCommunication
{
  struct LayerCommunicationVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct LayerCommunication) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H */
