#ifndef BW1_DECOMP_PACKET_INCLUDED_H
#define BW1_DECOMP_PACKET_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include "MapCoords.h"
#include "GestureSystemPacketData.h"
#include "MusicMoodController.h"

// Original enum types from Mac symbols. Only the values needed by the turn
// memory handshake are declared; original enumerator names are unrecovered.
enum PACKET_TYPE
{
	PACKET_TYPE_DROP = 0x14,
	PACKET_TYPE_END_LOCKED_SELECT = 0x1c,
	PACKET_TYPE_CLOSE_LESSON_CHOOSER = 0x38,
	PACKET_TYPE_CHOOSE_LESSON = 0x39,
	PACKET_TYPE_PREVIOUS_LESSON_ACTION = 0x42,
	PACKET_TYPE_NEXT_LESSON_ACTION = 0x43,
	PACKET_TYPE_SPEECH = 0x48,
	PACKET_TYPE_TAUNT = 0x49,
	PACKET_TYPE_SAVE_FOR_NET_DEBUG = 0x4b,
	PACKET_TYPE_LOAD_FOR_NET_DEBUG = 0x4c,
	PACKET_TYPE_LOAD_MY_CREATURE = 0x4e,
	PACKET_TYPE_LEASH = 0x57,
	PACKET_TYPE_MUSIC_MOOD = 0x58,
	PACKET_TYPE_TOGGLE_LEASH = 0x5f,
	PACKET_TYPE_INSTANT_SAVE = 0x61,
	PACKET_TYPE_INSTANT_LOAD = 0x62,
	PACKET_TYPE_HAND_ORIENTATION = 0x64,
	PACKET_TYPE_TEMPLE_LEASH = 0x65,
	PACKET_TYPE_FORCE_OUT_OF_SYNC = 0x6b
};

enum SETPACKET_FUNCTION_NUMBER
{
	SETPACKET_FUNCTION_NUMBER_0xc = 0xc
};

class GPacket
{
public:
	// TODO: The original physics alternative is anonymous (Mac @class$5822).
	struct PhysicsData
	{
		LHPoint Position;
		LHPoint Velocity;
		LHPoint Direction;
		LHPoint Rotation;
		// BW1W120 0054b8f0
		PhysicsData()
		{
			Velocity.x = Velocity.y = Velocity.z = 0.0f;
			Rotation.x = Rotation.y = Rotation.z = 0.0f;
		}
	};
	uint8_t  field_0x0;
	uint8_t  Type;
	uint16_t field_0x2;
	uint32_t field_0x4;
	// Both original compilers construct every anonymous-union alternative.
	// Anonymous type numbers in the Mac symbols confirm this nesting. Member names
	// are descriptive; scalar-only packet alternatives are still represented by Bytes.
	union {
		struct
		{
			uint32_t Object;
			uint32_t ObjectIndex;
			union {
				struct
				{
					union {
						struct
						{
							GestureSystemPacketData GestureData;
						};
					};
				};
				struct
				{
					union {
						struct
						{
							MapCoords Position;
						};
					};
				};
				struct
				{
					LHPoint HandPosition;
					LHPoint HandVelocity;
					LHPoint HandDirection;
					LHPoint HandUp;
					uint8_t Sequence;
				};
				struct
				{
					MapCoords Coords;
				};
				struct
				{
					MusicMoodPacket Music;
				};
				struct
				{
					uint8_t Length;
					uint8_t Bytes[0xff];
				};
			};
		};
		struct
		{
			PhysicsData Physics;
		};
		// Unlike the Mac build's LH3DMapCoords, the Windows alternative emits no initialization.
		struct
		{
			LH3DMapCoords MapPosition;
		};
		struct
		{
			MapCoords Start;
			MapCoords End;
		};
	};
	// BW1W120 0063c420 BW1M119 01011b40
	void ProcessPacket(uint8_t type);
};

#endif /* BW1_DECOMP_PACKET_INCLUDED_H */
