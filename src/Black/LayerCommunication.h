#ifndef BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H
#define BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

// Forward Declares

struct MPFEChannelDetails;
struct MPFEPlayerDetails;

class LayerCommunication
{
public:
	// BW1W120 00c59a10
	static bool Connected;
	// BW1W120 00c59a18
	static int NumPeopleInRoom;

	// BW1W120 inlined BW1M119 01399af0
	virtual void SendMessageA(wchar_t* message, bool private_message, MPFEPlayerDetails* player) {}
	// BW1W120 inlined BW1M119 01399a90
	virtual void SendMessageA(const char* message, bool private_message, MPFEPlayerDetails* player) {}
	// BW1W120 inlined BW1M119 01399a50
	virtual void LeaveMainRoom() {}
	// BW1W120 inlined BW1M119 01399a10
	virtual void LeaveGameChannel() {}
	// BW1W120 inlined BW1M119 013999c0
	virtual void BeginPlayerEnumeration() {}
	// BW1W120 purecall
	virtual void PopulateChannelPlayers(MPFEChannelDetails* channel) = 0;
	// BW1W120 inlined BW1M119 01399980
	virtual void Process() {}
	// BW1W120 purecall
	virtual bool InitialiseLobbyState() = 0;
	// BW1W120 purecall
	virtual void CreateOrJoinRoom(wchar_t* name, wchar_t* password, MPFEChannelDetails* channel) = 0;
	// BW1W120 purecall
	virtual void StartGame() = 0;
	// BW1W120 purecall
	virtual bool Connect() = 0;
	// BW1W120 purecall
	virtual void Disconnect() = 0;
	// BW1W120 purecall
	virtual void KickPlayerFromChannel(MPFEPlayerDetails* player) = 0;
	// BW1W120 purecall
	virtual void BanPlayerInChannel(MPFEPlayerDetails* player) = 0;
	// BW1W120 00440820 BW1M119 011892e0
	virtual int GetNumPeopleInRoom() { return NumPeopleInRoom; }
#ifndef VERSION_BW1W100
	// BW1W120 purecall
	virtual void LockChannel(bool lock) = 0;
	// BW1W120 purecall
	virtual void SetInvite(bool invite) = 0;
#endif
};

#endif /* BW1_DECOMP_LAYER_COMMUNICATION_INCLUDED_H */
