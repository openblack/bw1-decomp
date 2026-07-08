#include "CitadelHeart.h"

#include "GameOSFile.h"

CitadelHeart::CitadelHeart() : CitadelPart(), field_0x90(0) { SetToZero(); }

void CitadelHeart::SetToZero()
{
	field_0xa8 = 0;
	field_0x8c = 0;
	field_0x98 = 0;
	field_0x94 = 0;
	field_0xa0 = 0;
	field_0xa4 = -1;
	field_0xdc = 0;
	field_0xac = 0;
	field_0xb0 = 0;
	field_0xb4 = 0;
	field_0xb8 = 0;
	field_0xbc = 0.0f;
	field_0xc0 = 0;
	field_0xcc = 0;
	field_0xc4 = 0;
	field_0xc8 = 0;
	field_0xd0 = 0.0f;
	field_0xd4 = 0;
	leashes = NULL;
	CollideData = NULL;
}

uint32_t CitadelHeart::Load(GameOSFile& file)
{
	if (!CitadelPart::Load(file))
	{
		return 0;
	}

	file.ReadIt(field_0x8c);
	file.ReadPtr(&field_0x94);
	file.ReadPtr(&field_0x98);
	file.ReadIt(field_0xa0);
	file.ReadIt(field_0xa4);
	file.ReadIt(field_0xb8);
	file.ReadIt(field_0xbc);
	file.ReadPtr(&field_0xc0);
	file.ReadPtr(&field_0xcc);
	file.ReadIt(field_0xd0);
	file.ReadPtr(&field_0xac);
	file.ReadPtr(&field_0xb0);
	file.ReadIt(field_0xb4);
	file.ReadPtr(&field_0xdc);

	return 1;
}
