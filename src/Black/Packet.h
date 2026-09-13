#ifndef BW1_DECOMP_PACKET_INCLUDED_H
#define BW1_DECOMP_PACKET_INCLUDED_H

#include <stdint.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include "MapCoords.h"
#include "GestureSystemPacketData.h"
#include "MusicMood.h"

// Original enum types from Mac symbols. Only the values needed by the turn
// memory handshake are declared; original enumerator names are unrecovered.
enum PACKET_TYPE
{
	PACKET_TYPE_0x61 = 0x61,
	PACKET_TYPE_0x62 = 0x62
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
		PhysicsData()
		{
			Velocity.z = 0.0f;
			Velocity.y = 0.0f;
			Velocity.x = 0.0f;
			Rotation.z = 0.0f;
			Rotation.y = 0.0f;
			Rotation.x = 0.0f;
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
};

#endif /* BW1_DECOMP_PACKET_INCLUDED_H */
