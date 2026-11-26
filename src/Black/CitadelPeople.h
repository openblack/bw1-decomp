#ifndef BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H
#define BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t, uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For struct LH3DObject */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */

// Forward Declares

class Living;
struct LH3DMesh;

#define CITADEL_PEOPLE_MAX                     32
#define CITADEL_PERSON_START_SPEED             1.0f
#define CITADEL_PERSON_START_DURATION          0.1f
#define CITADEL_PERSON_ARRIVE_DISTANCE         0.001f
#define CITADEL_PERSON_ARRIVE_FRACTION         0.999f
#define CITADEL_PERSON_UNREACHABLE_WEIGHT      0.0001f
#define CITADEL_PERSON_MIN_WEIGHT              1.0f
#define CITADEL_PERSON_DESTINATION_TRIES       4
#define CITADEL_PERSON_STOP_CHANCE             0.2f
#define CITADEL_PERSON_STAND_TIME              2.0f
#define CITADEL_PERSON_FADE_START_DISTANCE     200.0f
#define CITADEL_PERSON_FADE_RATE               0.02f
#define CITADEL_PERSON_FADE_MIN                0.01f
#define CITADEL_PERSON_MILLISECONDS_PER_SECOND 1000.0f
#define CITADEL_PERSON_COLOR                   0xffe0e0e0
#define CITADEL_PERSON_UNDERWATER_COLOR        0xff606060
#define CITADEL_TRIANGLE_SIDES                 3
#define CITADEL_MOVEMENT_MATRICES              3

enum CITADEL_PERSON_STATE
{
	CITADEL_PERSON_STATE_WALKING = 0,
	CITADEL_PERSON_STATE_STANDING = 1,
};

struct CitadelPerson
{
	Living*              LivingThing;
	bool                 IsMale;
	float                Scale;
	LH3DObject*          Object;
	LHPoint              Position;
	LHPoint              Destination;
	int                  CurrentTriangle;
	int                  NextTriangle;
	bool32_t             StayInTriangle;
	float                Speed;
	float                Timer;
	float                Duration;
	float                DirectionAngle;
	float                Heading;
	CITADEL_PERSON_STATE State;
	int                  AnimTime;
	CitadelPerson*       Next;

	CitadelPerson(CitadelPerson** list)
	{
		Next = *list;
		*list = this;
		Object = NULL;
	}

	// BW1W120 inlined BW1M119 011c0390
	~CitadelPerson()
	{
		if (Object != NULL)
		{
			Object->Release();
		}
		Object = NULL;
	}

	// BW1W120 00462cc0 BW1M119 011c0300
	void DeleteAll(CitadelPerson** list)
	{
		if (*list == this)
		{
			*list = Next;
		}
		else
		{
			CitadelPerson* previous = *list;
			while (previous != NULL && previous->Next != NULL)
			{
				if (previous->Next == this)
				{
					previous->Next = Next;
					break;
				}
				previous = previous->Next;
			}
		}
		delete this;
	}
};

static_assert(sizeof(CitadelPerson) == 0x54, "CitadelPerson size");

class CPController
{
public:
	CitadelPerson* People;
	int            NumPeople;

	CPController() : People(NULL), NumPeople(0) {}
	~CPController()
	{
		while (People != NULL)
		{
			People->DeleteAll(&People);
		}
		NumPeople = 0;
	}

	// BW1W120 00469de0 BW1M119 inlined
	CitadelPerson* FindPerson(Living* living);
	// BW1W120 00469e70 BW1M119 011cbb40
	CitadelPerson* AddPerson(Living* living);
	// BW1W120 00469e00 BW1M119 011cbe30
	void RemovePerson(Living* living);
	// BW1W120 0046a020 BW1M119 011cb9a0
	LHPoint GetRandPosInTri(int triangle);
	// BW1W120 0046a140 BW1M119 011cb820
	LHPoint GetRandPosOnEdge(int triangle, int edge);
	// BW1W120 0046a210 BW1M119 inlined
	float GetAngle(const LHPoint& from, const LHPoint& to);
	// BW1W120 0046a240 BW1M119 011cb320
	void Update(float delta_time);
	// BW1W120 0046a680 BW1M119 011cb070
	void Draw(bool under_water);

	// BW1W120 004699c0 BW1M119 011cbf20
	static void Init(LH3DMesh* mesh);

	// BW1W120 00469990 BW1M119 011cc440
	static void Init();
	// BW1W120 00469960 BW1M119 011cc4c0
	static void Close();
};

#endif /* BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H */
