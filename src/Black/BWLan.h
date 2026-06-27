#ifndef BW1_DECOMP_BW_LAN_INCLUDED_H
#define BW1_DECOMP_BW_LAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h> /* For wchar_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

// Forward Declares

struct MPFEChannelDetails;
struct MPFEPlayerDetails;

class BWLan: public LayerCommunication
{
public:

    // Override methods

    // BW1W120 004408e0 BW1M100 inlined BWLan::SendMessageW(wchar_t *, bool, MPFEPlayerDetails *)
    virtual void SendMessageW(wchar_t* param_1, bool param_2, MPFEPlayerDetails* param_3);
    // BW1W120 00440840 BW1M100 10181470 BWLan::SendMessageA(char const *, bool, MPFEPlayerDetails *)
    virtual void SendMessageA(const char* param_1, bool param_2, MPFEPlayerDetails* param_3);
    // BW1W120 004409f0 BW1M100 101812f0 BWLan::LeaveMainRoom(void)
    virtual void LeaveMainRoom();
    // BW1W120 00440930 BW1M100 10181350 BWLan::LeaveGameChannel(void)
    virtual void LeaveGameChannel();
    // BW1W120 00440a00 BW1M100 10181130 BWLan::BeginPlayerEnumeration(void)
    virtual void BeginPlayerEnumeration();
    // BW1W120 004414b0 BW1M100 10180190 BWLan::PopulateChannelPlayers(MPFEChannelDetails *)
    virtual void PopulateChannelPlayers(MPFEChannelDetails* param_1);
    // BW1W120 00440830 BW1M100 1017feb0 BWLan::Process(void)
    virtual void Process();
    // BW1W120 00441380 BW1M100 101804a0 BWLan::InitialiseLobbyState(void)
    virtual void InitialiseLobbyState();
    // BW1W120 00441500 BW1M100 10180020 BWLan::CreateOrJoinRoom(wchar_t *, wchar_t *, MPFEChannelDetails *)
    virtual void CreateOrJoinRoom(wchar_t* param_1, wchar_t* param_2, MPFEChannelDetails* param_3);
    // BW1W120 004415b0 BW1M100 1017fff0 BWLan::StartGame(void)
    virtual void StartGame();
    // BW1W120 00440ac0 BW1M100 10180f20 BWLan::Connect(void)
    virtual uint32_t Connect();
};

#endif /* BW1_DECOMP_BW_LAN_INCLUDED_H */
