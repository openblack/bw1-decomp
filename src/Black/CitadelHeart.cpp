#include "GameTimeConstants.h"
#include "CitadelHeart.h"

#include "CitadelEntrance.h"
#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "GameOSFile.h"
#include "Script.h"
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

CitadelHeart::CitadelHeart() : CitadelPart(), field_0x90(0)
{
	SetToZero();
}

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

CitadelEntrance::CitadelEntrance() : Heart(NULL), field_0x58(0), field_0x5c(0), field_0x60(0), field_0x64(0) {}

CitadelEntrance::CitadelEntrance(const MapCoords& coords, const GObjectInfo* info)
	: Object(coords, info), Heart(NULL), field_0x58(0), field_0x5c(0), field_0x60(0), field_0x64(0)
{
}

uint32_t CitadelEntrance::InterfaceTap(GInterfaceStatus* status)
{
	if (Heart != NULL && Heart->GetPlayer() == GGame::g_game->MyPlayer() &&
	    status == GGame::g_game->MyInterfaceStatus())
	{
		GGame::g_game->GoInsideCitadel(0, 0);
	}
	return 1;
}

uint32_t CitadelEntrance::InterfaceValidToTap(GInterfaceStatus* status)
{
	if (!GGame::g_game->IsMultiplayerGame())
	{
		return GGame::g_game->script->CitadelInteract != 0;
	}
	return 1;
}

HELP_TEXT CitadelEntrance::GetQueryFirstEnumText()
{
	return HELP_TEXT(2000);
}

HELP_TEXT CitadelEntrance::GetQueryLastEnumText()
{
	return GetQueryFirstEnumText();
}

void CitadelEntrance::ResolveLoad()
{
	info = &GObjectInfo::Definitions[OBJECT_TYPE_TERRAIN];
}
