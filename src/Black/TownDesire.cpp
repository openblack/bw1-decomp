#include "GameTimeConstants.h"
#include "TownDesire.h"
#include "TownDesireFlags.h"
#include "TownDesireInfo.h"
#include "DesireFunctions.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Landscape.h"
#include "PrayerSiteInfo.h"
#include "Setup.h"
#include "Town.h"
#include <stdlib.h>   /* For qsort */
#include <stdio.h>    /* For sprintf */
#include <string.h>   /* For _stricmp, strlen */
#include "SafeDisc.h" /* For SafeDiscMarker, SafeDiscRecord */

#include <windows.h> /* For max, min */

#if defined(VERSION_BW1W100)
static SafeDiscRecord Record = {
	/* Seed */ {{0x17, 0x33, 0x5f, 0x7a, 0x5f, 0x6d, 0x2b, 0x7a, 0x1e, 0x15, 0xca, 0xf4,
                 0xf5, 0x0a, 0x70, 0x6f, 0x5d, 0xcc, 0x7c, 0xe9, 0x73, 0xff, 0xdb, 0x63}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xa4, // runtime value
	/* Unk1 */ {0x65, 0x9a, 0x58, 0xb9, 0x98, 0xf9, 0xd2, 0xce, 0xdb, 0x48, 0x4d, 0xe7, 0xfe, 0xb7, 0xc7, 0xfd,
                0x31, 0x17, 0x42, 0xa4, 0xf6, 0x5b, 0xbc, 0xfa, 0x98, 0xd5, 0x36, 0x62, 0x9b, 0x7b, 0xb1},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x75, 0xda, 0xeb, 0x9c, 0xec, 0xb7, 0x85, 0x62, 0x76, 0xc7, 0x7d, 0x6a, 0x5e, 0x94, 0x03, 0xb5},
	/* ANext */ 0x097b43d3,    // runtime value
	/* BWrapVA */ 0x8443f04a,  // runtime value
	/* CDesc */ 0xfe02c731,    // runtime value
	/* DRuntime */ 0x7997a578, // runtime value
	/* EStatic */ 0xf34bfd3f,
	/* FStatic */ 0x6dab3056,
	/* Cookie */ {0x65, 0x18, 0xbc, 0x2f, 0x7c}, // runtime value
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord Record = {
	/* Seed */ {{0x24, 0x69, 0x72, 0x3c, 0x34, 0x76, 0xf3, 0x3c, 0x48, 0xe7, 0x65, 0x78,
                 0x8c, 0x81, 0x24, 0xb5, 0x91, 0xa4, 0xc9, 0xf1, 0xb4, 0x0d, 0x3c, 0x2e}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xf9, // runtime value
	/* Unk1 */ {0xdf, 0x20, 0xa7, 0x21, 0x49, 0x93, 0xe3, 0x45, 0xa2, 0x15, 0x20, 0x69, 0x1b, 0x78, 0x5c, 0x8c,
                0x84, 0xea, 0x98, 0x50, 0x57, 0x6f, 0xd5, 0x05, 0x56, 0xcf, 0x11, 0x02, 0xf0, 0x1a, 0x4e},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x72, 0x12, 0x21, 0x3e, 0xc3, 0x6b, 0x67, 0xe0, 0x58, 0xc8, 0x72, 0xf8, 0x70, 0x1e, 0x45, 0xe1},
	/* ANext */ 0xe0022488,    // runtime value
	/* BWrapVA */ 0x31143c18,  // runtime value
	/* CDesc */ 0x6e34c8dc,    // runtime value
	/* DRuntime */ 0xaa22949a, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0x216624a8,
	/* Cookie */ {0xcc, 0x16, 0x11, 0x60, 0xf0}, // runtime value
	/* Unk3 */ {0x7f, 0x83, 0x9c, 0x1a, 0xad, 0x7a, 0x0c, 0xf1},
};
#endif

bool TownDesireFlags::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t TownDesireFlags::CreatureMustAvoid(Creature*)
{
	return false;
}

GBaseInfo* GTownDesireInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TOWN_DESIRE_INFO_LAST;
	return InfoList;
}

TownDesire::~TownDesire() {}

void TownDesire::Init(Town* town)
{
	this->town = town;
}

TOWN_DESIRE_INFO TownDesire::GetMostDesired() const
{
	TOWN_DESIRE_INFO mostDesired = TOWN_DESIRE_INFO_NONE;
	float            best = 0.0f;
	for (uint32_t i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (Desire[i] > best)
		{
			best = Desire[i];
			mostDesired = (TOWN_DESIRE_INFO)i;
		}
	}
	return mostDesired;
}

TOWN_DESIRE_INFO TownDesire::GetMostSignificantRawDesire(float minimum)
{
	if (sorts2[0].Desire >= minimum)
	{
		return sorts2[0].Type;
	}
	return TOWN_DESIRE_INFO_NONE;
}

GTownDesireInfo* TownDesire::GetInfo(unsigned long desire) const
{
	return &GTownDesireInfo::GetInfo()[desire];
}

int TownDesire::QSortCompare(const void* a, const void* b)
{
	const DesireSort* first = (const DesireSort*)a;
	const DesireSort* second = (const DesireSort*)b;
	if (first->Desire < second->Desire)
	{
		return 1;
	}
	if (first->Desire == second->Desire)
	{
		return 0;
	}
	return -1;
}

void TownDesire::SortDesires()
{
	for (uint32_t i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		sorts[i].Modifier = DesireCheat[i] + DesireBoost[i];
		sorts[i].Desire = Desire[i] + DesireCheat[i] + DesireBoost[i];
		sorts[i].Type = (TOWN_DESIRE_INFO)i;
	}
	qsort(sorts, TOWN_DESIRE_INFO_LAST, sizeof(DesireSort), QSortCompare);
}

GTownDesireInfo* DesireSort::GetInfo() const
{
	return &GTownDesireInfo::GetInfo()[Type];
}

DesireFunctions* GTownDesireInfo::GetDesireFunctions() const
{
	return &DesireFunctions::GetInfo()[this - GTownDesireInfo::GetInfo()];
}

DesireSort* TownDesire::GetSortedDesire(uint32_t index)
{
	return &sorts[index];
}

float TownDesire::GetDesireSignificanceToVillager(TOWN_DESIRE_INFO desire)
{
	float significance =
		Desire[desire] + DesireCheat[desire] + DesireBoost[desire] - GetInfo(desire)->DesireTriggersVillagerAction;
	return max(significance, 0.0f);
}

float TownDesire::CalculateAverageTownNeeds()
{
	float needs = (RawDesire[TOWN_DESIRE_INFO_FOR_FOOD] + RawDesire[TOWN_DESIRE_INFO_FOR_WOOD] +
	               RawDesire[TOWN_DESIRE_INFO_FOR_PROTECTION] + RawDesire[TOWN_DESIRE_INFO_FOR_MERCY] +
	               RawDesire[TOWN_DESIRE_INFO_FOR_ABODES] + RawDesire[TOWN_DESIRE_INFO_FOR_CIVIC_BUILDING] +
	               RawDesire[TOWN_DESIRE_INFO_FOR_SUPPLY_WORSHIP] + RawDesire[TOWN_DESIRE_INFO_TO_BUILD] +
	               RawDesire[TOWN_DESIRE_INFO_TO_REPAIR] + RawDesire[TOWN_DESIRE_INFO_TO_SUPPLY_WORKSHOP]) /
	              5.0f;
	if (needs < 0.0f)
	{
		return 0.0f;
	}
	if (needs > 1.0f)
	{
		return 1.0f;
	}
	return needs;
}

int TownDesire::GetDesireFromText(char* text)
{
	int index = 0;
	for (DesireFunctions* functions = DesireFunctions::GetInfo();
	     functions < &DesireFunctions::GetInfo()[TOWN_DESIRE_INFO_LAST]; functions++)
	{
		if (_stricmp(text, functions->Name) == 0)
		{
			return index;
		}
		index++;
	}
	return TOWN_DESIRE_INFO_NONE;
}

TownDesireFlags::~TownDesireFlags()
{
	if (Game3dObject != NULL)
	{
		Game3dObject->Release();
		Game3dObject = NULL;
	}
}

void TownDesireFlags::ToBeDeleted(bool32_t delete_now)
{
	Object::ToBeDeleted(delete_now);
}

uint32_t TownDesireFlags::Process()
{
	Desire = 0.0f;
	return true;
}

GTownDesireInfo* TownDesireFlags::GetDesireInfo() const
{
	return &GTownDesireInfo::GetInfo()[DesireType];
}

void TownDesireFlags::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Object::CallVirtualFunctionsForCreation(coords);
	Game3dObject->SetCastDynamicShadow(false);
}

HELP_TEXT TownDesireFlags::GetQueryFirstEnumText()
{
	return GetDesireInfo()->HelpStartEnum;
}

HELP_TEXT TownDesireFlags::GetQueryLastEnumText()
{
	return GetDesireInfo()->HelpEndEnum;
}

unsigned long TownDesireFlags::GetQueryStatEnumText()
{
	return GetDesireInfo()->HelpStatEnum;
}

uint32_t TownDesireFlags::GetFOVHelpMessageSet()
{
	return GetDesireInfo()->HelpMessage;
}

uint32_t TownDesireFlags::GetFOVHelpCondition()
{
	return GetDesireInfo()->HelpCondition;
}

HELP_TEXT TownDesireFlags::GetToolTipForFlagDesire()
{
	switch (DesireType)
	{
	case TOWN_DESIRE_INFO_FOR_FOOD:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_84;
	case TOWN_DESIRE_INFO_FOR_WOOD:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_85;
	case TOWN_DESIRE_INFO_FOR_ABODES:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_89;
	case TOWN_DESIRE_INFO_FOR_CIVIC_BUILDING:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_90;
	case TOWN_DESIRE_INFO_FOR_PROTECTION:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_87;
	case TOWN_DESIRE_INFO_FOR_MERCY:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_88;
	case TOWN_DESIRE_INFO_FOR_CHILDREN:
		return (HELP_TEXT)HELP_TEXT_TOOLTIP_92;
	}
	return HELP_TEXT_NONE;
}

bool32_t TownDesireFlags::Save(GameOSFile& file)
{
	if (Object::Save(file))
	{
		file.WritePtr((GameThing*)ParentTown.Get());
		file.WriteIt(Slot);
		file.WriteIt(Desire);
		file.WriteIt(DesireType);
		file.WriteIt(Mesh);
		return true;
	}
	return false;
}

bool32_t TownDesireFlags::Load(GameOSFile& file)
{
	if (Object::Load(file))
	{
		file.ReadPtr((GameThing**)&ParentTown);
		file.ReadIt(Slot);
		file.ReadIt(Desire);
		file.ReadIt(DesireType);
		file.ReadIt(Mesh);
		return true;
	}
	return false;
}

TownDesireFlags::TownDesireFlags(Town* town, const MapCoords& coords, TOWN_DESIRE_INFO type, unsigned long slot,
                                 MESH_LIST mesh)
	: Object(coords, GPrayerSiteInfo::GetInfo())
{
	DesireType = type;
	Slot = slot;
	Mesh = mesh;
	SetScale(GetDesireInfo()->WorshipSiteScale);
	ParentTown = town;
	HeightZoomer.SetPosition(0.0f);
}

TownDesireFlags* TownDesireFlags::Create(Town* town, TOWN_DESIRE_INFO type, unsigned long slot)
{
	MapCoords        coords = town->GetTownNeedsPos(slot);
	TownDesireFlags* flags = new (__FILE__, 1017)
		TownDesireFlags(town, coords, type, slot, GTownDesireInfo::GetInfo()[type].WorshipSiteMesh);
	if (flags != NULL)
	{
		flags->CallVirtualFunctionsForCreation(coords);
		Game3DObject* object = flags->Game3dObject;
		LHPoint       point;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
		object->LH3DObject::SetPosition(point, 0.0f, 1.0f);
		return flags;
	}
	return NULL;
}

float TownDesire::GetTemporaryDesireVillagerModification(TOWN_DESIRE_INFO desire)
{
	float population = town->stats.NumAdults + town->stats.NumChildren + 0.00001;
	float ratio = max(0.0f, VillagerStateAmount[desire] - PreviousVillagerStateAmount[desire]) / population;
	return 1.0f - min(1.0f, ratio);
}

uint32_t TownDesire::SaveObject(LHOSFile& file, const MapCoords& offset)
{
	char     text[200];
	uint32_t townID = town->ID;
	for (uint32_t i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (DesireBoost[i] != 0.0f)
		{
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_TOWN_DESIRE_BOOST), townID,
			        DesireFunctions::GetInfo()[i].Name, DesireBoost[i]);
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
	}
	return true;
}
