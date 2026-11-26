#ifndef BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H
#define BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t, uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For struct LH3DObject */

// Forward Declares

class Living;

struct CitadelPerson
{
	Living*        living;
	uint32_t       field_0x04;
	uint32_t       field_0x08;
	LH3DObject*    Object;
	uint8_t        field_0x10[0x40];
	CitadelPerson* next;

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
			*list = next;
		}
		else
		{
			CitadelPerson* previous = *list;
			while (previous != NULL && previous->next != NULL)
			{
				if (previous->next == this)
				{
					previous->next = next;
					break;
				}
				previous = previous->next;
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
	uint32_t       NumPeople;

	CPController() : People(NULL), NumPeople(0) {}
	~CPController()
	{
		while (People != NULL)
		{
			People->DeleteAll(&People);
		}
		NumPeople = 0;
	}

	// BW1W120 00469e70 BW1M119 011cbb40
	void AddPerson(Living* living);
	// BW1W120 00469e00 BW1M119 011cbe30
	void RemovePerson(Living* living);

	// BW1W120 00469990 BW1M119 011cc440
	static void Init();
	// BW1W120 00469960 BW1M119 011cc4c0
	static void Close();
};

#endif /* BW1_DECOMP_CITADEL_PEOPLE_INCLUDED_H */
