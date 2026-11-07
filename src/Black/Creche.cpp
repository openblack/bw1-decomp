#include "GameTimeConstants.h"
#include "Creche.h"

#include "AbodeInfo.h"
#include "Game3DObject.h"
#include "Town.h"

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
	Creche* creche = new (__FILE__, 50) Creche(coords, info, town, y_angle, scale, food, wood);
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
