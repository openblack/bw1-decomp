#ifndef BW1_DECOMP_BW_LAN_INCLUDED_H
#define BW1_DECOMP_BW_LAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 004408e0 mac inlined BWLan::SendMessageW(wchar_t *, bool, MPFEPlayerDetails *)
    virtual void SendMessageW(wchar_t* param_1, bool param_2, MPFEPlayerDetails* param_3);
    // win1.41 00440840 mac 10181470 BWLan::SendMessageA(char const *, bool, MPFEPlayerDetails *)
    virtual void SendMessageA(const char* param_1, bool param_2, MPFEPlayerDetails* param_3);
    // win1.41 004409f0 mac 101812f0 BWLan::LeaveMainRoom(void)
    virtual void LeaveMainRoom();
    // win1.41 00440930 mac 10181350 BWLan::LeaveGameChannel(void)
    virtual void LeaveGameChannel();
    // win1.41 00440a00 mac 10181130 BWLan::BeginPlayerEnumeration(void)
    virtual void BeginPlayerEnumeration();
    // win1.41 004414b0 mac 10180190 BWLan::PopulateChannelPlayers(MPFEChannelDetails *)
    virtual void PopulateChannelPlayers(MPFEChannelDetails* param_1);
    // win1.41 00440830 mac 1017feb0 BWLan::Process(void)
    virtual void Process();
    // win1.41 00441380 mac 101804a0 BWLan::InitialiseLobbyState(void)
    virtual void InitialiseLobbyState();
    // win1.41 00441500 mac 10180020 BWLan::CreateOrJoinRoom(wchar_t *, wchar_t *, MPFEChannelDetails *)
    virtual void CreateOrJoinRoom(wchar_t* param_1, wchar_t* param_2, MPFEChannelDetails* param_3);
    // win1.41 004415b0 mac 1017fff0 BWLan::StartGame(void)
    virtual void StartGame();
    // win1.41 00440ac0 mac 10180f20 BWLan::Connect(void)
    virtual uint32_t Connect();
};

#endif /* BW1_DECOMP_BW_LAN_INCLUDED_H */
