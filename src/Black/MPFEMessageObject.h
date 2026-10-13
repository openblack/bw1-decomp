#ifndef BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <wchar.h>  /* For wchar_t */

// Forward Declares

struct MPFEPlayerDetails;

// Message types, named from the message class whose constructor sends each one.
enum SpecialMessageTypes
{
	SPECIAL_MESSAGE_TYPE_CHANGED_TEAM_REQUEST = 6,
	SPECIAL_MESSAGE_TYPE_REPLY_TO_JOIN = 9,
	SPECIAL_MESSAGE_TYPE_FILE_TRANSFER = 12,
	SPECIAL_MESSAGE_TYPE_START_GAME_READY = 14,
	SPECIAL_MESSAGE_TYPE_START_GAME_TRANSFER_FILES = 15,
	SPECIAL_MESSAGE_TYPE_MAP_ERROR = 18,
	SPECIAL_MESSAGE_TYPE_CANCEL_START = 19,
	SPECIAL_MESSAGE_TYPE_DISCONNECT_NOW = 20,
	SPECIAL_MESSAGE_TYPE_KICK_REQUEST = 21,
	SPECIAL_MESSAGE_TYPE_KICK = 22,
	SPECIAL_MESSAGE_TYPE_STOP_GAME_START = 24,
};

class MPFEMessageObject
{
public:
	wchar_t* Message;

	// Override methods

	// BW1W120 004403a0 BW1M119 0139b4b0
	virtual ~MPFEMessageObject()
	{
		if (Message != NULL)
		{
			delete Message;
		}
	}
	// BW1W120 00626a00 BW1M119 013a33b0
	virtual void Send(MPFEPlayerDetails* player);

	// Static methods

	// BW1W120 00626a70 BW1M119 013a2fa0
	static void ProcessIncomingMessage(wchar_t* message, MPFEPlayerDetails* from, wchar_t* name);
	// BW1W120 00626a50 BW1M119 013a32f0
	static wchar_t GetMessageCode(SpecialMessageTypes type);
	// BW1W120 00626a20 BW1M119 013a3350
	static SpecialMessageTypes GetMessageType(wchar_t code);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	MPFEMessageObject() : Message(NULL) {}
};

static_assert(sizeof(MPFEMessageObject) == 0x8, "MPFEMessageObject size is incorrect");

#endif /* BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H */
