#include "GameTimeConstants.h"
#include "Creche.h"

#include "AbodeInfo.h"
#include "Game3DObject.h"
#include "Town.h"

#if defined(VERSION_BW1W100)
#define CRECHE_FILE "C:\\dev\\black\\Creche.cpp"
#elif defined(VERSION_BW1W110)
#define CRECHE_FILE "C:\\dev\\Black\\Creche.cpp"
#elif defined(VERSION_BW1W130)
#define CRECHE_FILE "D:\\Work\\Games\\dd\\Black\\Creche.cpp"
#elif defined(VERSION_BW1WCI)
#define CRECHE_FILE "C:\\dev\\black\\Creche.cpp"
#else
#define CRECHE_FILE "C:\\dev\\MP\\Black\\Creche.cpp"
#endif

Creche::Creche(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
               int wood)
	: Abode(coords, info, town, y_angle, scale, food, wood)
{
}

void Creche::ToBeDeleted(bool32_t delete_now)
{
	DeleteDependancys();
	Abode::ToBeDeleted(delete_now);
}

void Creche::DeleteDependancys()
{
	if (GetTown() != NULL)
	{
		Abode* replacement = NULL;
		if (GetTown()->creche == this)
		{
			for (replacement = GetTown()->AbodeList.Get(); replacement != NULL; replacement = replacement->next)
			{
				if ((replacement->GetInfo()->AbodeType & ABODE_TYPE_CRECHE) && replacement->IsFunctional() &&
				    this != replacement)
				{
					break;
				}
			}
		}
		GetTown()->creche = (Creche*)replacement;
	}
	Abode::DeleteDependancys();
}

Creche* Creche::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                       float food, int wood)
{
	Creche* creche = new (CRECHE_FILE, 50) Creche(coords, info, town, y_angle, scale, food, wood);
	if (creche != NULL)
	{
		creche->CallVirtualFunctionsForCreation(coords);
		creche->Game3dObject->UpdateMelting();
	}
	return creche;
}

void Creche::UnreferencedEmptyFunction(int value) {}

void Creche::MakeFunctional()
{
	Abode::MakeFunctional();
	if (GetTown() != NULL && GetTown()->creche == NULL)
	{
		GetTown()->creche = this;
	}
}

float Creche::ReduceLife(float value, GPlayer* player)
{
	return Abode::ReduceLife(value, player);
}
