#include "GameTimeConstants.h"
#include "GraveYard.h"
#include "AbodeInfo.h"
#include "Game3DObject.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Town.h"

#if defined(VERSION_BW1W100)
#define GRAVEYARD_FILE "C:\\dev\\black\\GraveYard.cpp"
#elif defined(VERSION_BW1W110)
#define GRAVEYARD_FILE "C:\\dev\\Black\\GraveYard.cpp"
#else
#define GRAVEYARD_FILE "C:\\dev\\MP\\Black\\GraveYard.cpp"
#endif

// File-level constant: the original keeps it in this unit's .rdata.
const float DeathsToStatus = 0.18f;

Graveyard::Graveyard(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                     float food, int wood)
	: Abode(coords, info, town, y_angle, scale, food, wood)
{
	NumDeaths = 0;
}

void Graveyard::ToBeDeleted(int param_1)
{
	DeleteDependancys();
	Abode::ToBeDeleted(param_1);
}

bool Graveyard::InteractsWithPhysicsObjects()
{
	return false;
}

void Graveyard::DeleteDependancys()
{
	if (GetTown() != NULL)
	{
		Abode* replacement = NULL;
		if (GetTown()->graveyard == this)
		{
			for (replacement = GetTown()->AbodeList.Get(); replacement != NULL; replacement = replacement->next)
			{
				if ((replacement->GetInfo()->AbodeType & ABODE_TYPE_GRAVEYARD) && replacement->IsFunctional() &&
				    this != replacement)
				{
					break;
				}
			}
		}
		GetTown()->SetGraveyard(NULL);
		GetTown()->SetGraveyard((Graveyard*)replacement);
	}
	Abode::DeleteDependancys();
}

Graveyard* Graveyard::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                             float food, int wood)
{
	Graveyard* graveyard = new (GRAVEYARD_FILE, 58) Graveyard(coords, info, town, y_angle, scale, food, wood);
	if (graveyard != NULL)
	{
		graveyard->CallVirtualFunctionsForCreation(coords);
	}
	return graveyard;
}

void Graveyard::CallVirtualFunctionsForCreation(const MapCoords& param_1)
{
	Abode::CallVirtualFunctionsForCreation(Pos);
	Game3dObject->UpdateMelting();
}

void Graveyard::MakeFunctional()
{
	Abode::MakeFunctional();
	if (GetTown() != NULL && GetTown()->graveyard == NULL)
	{
		GetTown()->SetGraveyard(this);
	}
	ProcessNewDeath();
}

void Graveyard::ProcessNewDeath()
{
	if (GetTown() != NULL && IsFunctional() && NumDeaths < GRAVEYARD_MAX_NUM_DEATHS)
	{
		NumDeaths++;
		int status = (int)(NumDeaths * DeathsToStatus);
		if (status == 0 && NumDeaths != 0)
		{
			status++;
		}
		Game3dObject->SetStatus(status);
	}
}

bool32_t Graveyard::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(NumDeaths);
		return true;
	}
	return false;
}

bool32_t Graveyard::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(NumDeaths);
		return true;
	}
	return false;
}
