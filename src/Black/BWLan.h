#ifndef BW1_DECOMP_BW_LAN_INCLUDED_H
#define BW1_DECOMP_BW_LAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

// Forward Declares

struct MPFEChannelDetails;
struct MPFEPlayerDetails;

class BWLan : public LayerCommunication
{
public:
	// Override methods

	// BW1W120 004408e0 BW1M119 0118ab30
	virtual void SendMessageA(wchar_t* message, bool private_message, MPFEPlayerDetails* player);
	// BW1W120 00440840 BW1M119 0118aa20
	virtual void SendMessageA(const char* message, bool private_message, MPFEPlayerDetails* player);
	// BW1W120 004409f0 BW1M119 0118a890
	virtual void LeaveMainRoom();
	// BW1W120 00440930 BW1M119 0118a8f0
	virtual void LeaveGameChannel();
	// BW1W120 00440a00 BW1M119 0118a6d0
	virtual void BeginPlayerEnumeration();
	// BW1W120 004414b0 BW1M119 01189580
	virtual void PopulateChannelPlayers(MPFEChannelDetails* channel);
	// BW1W120 00440830 BW1M119 01189290
	virtual void Process();
	// BW1W120 00441380 BW1M119 011898a0
	virtual bool InitialiseLobbyState();
	// BW1W120 00441500 BW1M119 01189400
	virtual void CreateOrJoinRoom(wchar_t* name, wchar_t* password, MPFEChannelDetails* channel);
	// BW1W120 004415b0 BW1M119 011893d0
	virtual void StartGame();
	// BW1W120 00440ac0 BW1M119 0118a3e0
	virtual bool Connect();
};

#endif /* BW1_DECOMP_BW_LAN_INCLUDED_H */
