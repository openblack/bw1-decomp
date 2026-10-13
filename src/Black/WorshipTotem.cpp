#include "GameTimeConstants.h"
#include "WorshipTotem.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"
#include "ShowNeeds.h"
#include "Villager.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\WorshipTotem.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\WorshipTotem.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\WorshipTotem.cpp"
#endif

WorshipTotem::WorshipTotem()
{
	Site = NULL;
}

bool32_t WorshipTotem::IsSpellSeedReturnPoint() const
{
	return true;
}

bool32_t WorshipTotem::IsEffectReceiver(EffectValues* values)
{
	return false;
}

void WorshipTotem::SetSpecularColor(unsigned long color)
{
	SpecularColor = color;
}

LH3DObject::ObjectType WorshipTotem::Get3DType()
{
	return Object::Get3DType();
}

bool32_t WorshipTotem::IsSacrificeAltar()
{
	return true;
}

uint32_t WorshipTotem::GetSaveType()
{
	return GAME_THING_TYPE_WORSHIP_TOTEM;
}

char* WorshipTotem::GetDebugText()
{
	return "WorshipTotem:";
}

WorshipTotem::~WorshipTotem() {}

WorshipTotem::WorshipTotem(WorshipSite* site)
	: CitadelPart(site->GetTotemPos(), (const GCitadelPartInfo*)site->info, site->GetCitadel(), site->GetYAngle(),
                  site->GetScale(), 0.0f, site->UnderConstruction)
{
	Site = site;
	site->show_needs = ShowNeeds::Create(this);
	SpecularColor = 0;
}

void WorshipTotem::ToBeDeleted(int delete_now)
{
	if (Site != NULL && Site->IsAvailable())
	{
		Site->Totem = NULL;
		Site->ToBeDeleted(delete_now);
		Site = NULL;
	}
	CitadelPart::ToBeDeleted(delete_now);
}

WorshipTotem* WorshipTotem::Create(WorshipSite* site)
{
	WorshipTotem* totem = new (FILEPATH, 59) WorshipTotem(site);
	if (totem != NULL)
	{
		totem->CallVirtualFunctionsForCreation(totem->Pos);
	}
	return totem;
}

const GWorshipSiteInfo* WorshipTotem::GetInfo() const
{
	return (const GWorshipSiteInfo*)Site->info;
}

MESH_LIST WorshipTotem::GetMesh() const
{
	return GetInfo()->mesh;
}

float WorshipTotem::CalculateDesireForFood()
{
	return Site->CalculateDesireForFood();
}

float WorshipTotem::CalculateDesireForRest()
{
	return Site->CalculateDesireForRest();
}

float WorshipTotem::CalculatePeopleHidingIndicator()
{
	return Site->CalculatePeopleHidingIndicator();
}

void WorshipTotem::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	MultiMapFixed::CallVirtualFunctionsForCreation(coords);
}

float WorshipTotem::GetPSysPower() const
{
	return Site->ChantBattery * (1.0f / WORSHIP_TOTEM_CHANTS_FOR_FULL_PSYS_POWER);
}

WorshipTotem::TChargingData::TChargingData()
{
	Object = NULL;
	SheetInitialised = false;
}

void WorshipTotem::DrawMagicSystem()
{
	ChargingData.Draw(this);
	LH3DObject::g_b_last_on_screen = true;
}

void WorshipTotem::ResolveLoad()
{
	Object::ResolveLoad();
}

uint32_t WorshipTotem::Load(GameOSFile& file)
{
	if (CitadelPart::Load(file))
	{
		file.ReadIt(SpecularColor);
		file.ReadPtr((GameThing**)&Site);
		return true;
	}
	return false;
}

uint32_t WorshipTotem::Save(GameOSFile& file)
{
	if (CitadelPart::Save(file))
	{
		file.WriteIt(SpecularColor);
		file.WritePtr(Site);
		return true;
	}
	return false;
}

void WorshipTotem::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status)
{
	Pos.GetDistance(villager.Pos);
}
