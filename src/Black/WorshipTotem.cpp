#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "GameTimeConstants.h"
#include "WorshipTotem.h"

#include <math.h> /* For cos, log, sin */

#include <chlasm/AllMeshes.h> /* For MSH_S_PULSE_OUT */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>   /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h> /* For struct MaterialProperties */
#include <Lionhead/LH3DLib/development/LH3DMath.h>     /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>     /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LH3DLib/development/LH3DRender.h>   /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DTech.h>     /* For LH3DTech::GetValueForZSorter */
#include <Lionhead/LH3DLib/development/LHMatrix.h>     /* For struct LHMatrix */

#include "ColourConstants.h" /* For White */
#include "Dance.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GJUtils.h"
#include "LH3DZSorter.h"
#include "Landscape.h"
#include "Player.h"
#include "ShowNeeds.h"
#include "Villager.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"

static float OneOverLogHalf = 1.0f / (float)log(0.5);

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\WorshipTotem.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\WorshipTotem.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\WorshipTotem.cpp"
#endif

const float AlwaysVisibleFraction = 0.35f;
const float ChargeRingWaveHeight = 10.0f;
const float ChargeRingScale = 1.5f;
const float ChargeRingRadius = 3.0f;

WorshipTotem::WorshipTotem() {}

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

WorshipTotem::WorshipTotem(WorshipSite* site)
	: CitadelPart(site->GetTotemPos(), site->GetInfo(), site->GetCitadel(), site->GetYAngle(), site->GetScale(), 0.0f,
                  site->UnderConstruction)
{
	Site = site;
	site->show_needs = ShowNeeds::Create(this);
	SpecularColor = 0;
}

void WorshipTotem::ToBeDeleted(bool32_t delete_now)
{
	if (Site.Get() != NULL && Site->IsAvailable())
	{
		Site->totem = NULL;
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

#ifndef VERSION_BW1W100
float WorshipTotem::GetMaxSinkDepth()
{
	float scale = GetScale();
	return (1.0f - AlwaysVisibleFraction) * Game3dObject->GetMesh()->BoundingBox.size.y * scale * 2.0f;
}

void WorshipTotem::SetSinkFromWorshipSpeed()
{
	float depth = GetMaxSinkDepth();
	Pos.SetAltitude(Site->GetWorshipSpeed() * depth - depth);
}

void WorshipTotem::SetWorshipSpeedFromSink()
{
	float altitude = Pos.Altitude();
	float depth = GetMaxSinkDepth();
	float speed = (depth - fabs(altitude)) / depth;
	if (speed < 0.0f)
	{
		speed = 0.0f;
	}
	else if (speed > 1.0f)
	{
		speed = 1.0f;
	}
	Site->dance->SetWorshipSpeed(speed);
}
#endif // VERSION_BW1W100

const GWorshipSiteInfo* WorshipTotem::GetInfo() const
{
	return Site->GetInfo();
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
	return Site->GetChantStore() * (1.0f / WORSHIP_TOTEM_CHANTS_FOR_FULL_PSYS_POWER);
}

WorshipTotem::TChargingData::TChargingData()
{
	PulseObject = NULL;
	SheetInitialised = false;
}

WorshipTotem::TChargingData::~TChargingData()
{
	if (PulseObject != NULL)
	{
		PulseObject->Release();
	}
	if (SheetInitialised)
	{
		Sheet.Close();
	}
}

void WorshipTotem::TChargingData::Init()
{
	PulseObject = LH3DObject::Create(LH3DObject::STATIC);
	if (PulseObject != NULL)
	{
		MaterialProperties props = {true, false, true, true, true};
		PulseObject->SetMesh(LH3DMesh::GetPackedMesh(MSH_S_PULSE_OUT), NULL, NULL);
		GJUtils::SetMaterialProperties(PulseObject->GetMesh(), props);
		PulseObject->SetDynamicLighting(false);
		PulseObject->SetCastDynamicShadow(false);
		PulseObject->SetShadowOnTexture(false);
	}
}

void WorshipTotem::TChargingData::Draw(WorshipTotem* totem)
{
	WorshipSite* site = totem->Site.Get();
	if (site == NULL)
	{
		return;
	}

	unsigned long colour = totem->GetPlayer()->GetPlayerColour();
	MapCoords     coords;
	site->GetDancePos(&coords);
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	LHMatrix matrix;
	matrix.Translation(pos);

	if (PulseObject == NULL)
	{
		Init();
		if (PulseObject == NULL)
		{
			return;
		}
	}

	float charge = site->GetChantStore() / site->GetChantBatteryMax();
	charge = charge > 0.0f ? (charge < 1.0f ? charge : 1.0f) : 0.0f;

	site->GetIsSupplyingChants();

	if (!SheetInitialised)
	{
		SheetInitialised = true;
		Sheet.Init(WORSHIP_TOTEM_CHARGE_RING_POINTS);
		for (int i = 0; i < WORSHIP_TOTEM_CHARGE_RING_POINTS; i++)
		{
			float   angle = (float)i * TWO_PI * (1.0f / (WORSHIP_TOTEM_CHARGE_RING_POINTS - 1));
			LHPoint point(cos(angle) * ChargeRingRadius, 0.0f, sin(angle) * ChargeRingRadius);
			Sheet.Points[i] = matrix * point;
		}
		Sheet.WaveHeight = ChargeRingWaveHeight;
		Sheet.SetScaleFac(ChargeRingScale);
	}

	if (site->IsWorshipSiteOverloaded())
	{
		uint32_t pulse = (uint32_t)(site->OverloadPulse * 255.0f) & 0xff;
		colour = (((colour & 0xff00) * pulse & 0xff0000) | ((colour & 0xff) * pulse & 0xff00) |
		          ((colour & 0xff0000) * pulse & 0xff0000ff)) >>
		             8 |
		         (colour & 0xff000000);
	}
	Sheet.Colour = colour & 0xffffff;
	Sheet.PulseLevel = charge;
	Sheet.ScrollSpeed = -site->GetOverloadedValue();
	Sheet.Update((float)LH3DTech::g_delta_time * 0.001f);
	Sheet.Material = GlobalTextures::GetLightSheetMaterial();
	if (LH3DRender::g_started_frame)
	{
		LH3DRender::g_zsorter->NewZObject(&Sheet, (LH3DZSorter::DrawCallback)&LightSheet::Draw,
		                                  LH3DTech::GetValueForZSorter(Sheet.Centre), 0);
	}
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

bool32_t WorshipTotem::Load(GameOSFile& file)
{
	if (CitadelPart::Load(file))
	{
		file.ReadIt(SpecularColor);
		file.ReadPtr((GameThing**)&Site);
		return true;
	}
	return false;
}

bool32_t WorshipTotem::Save(GameOSFile& file)
{
	if (CitadelPart::Save(file))
	{
		file.WriteIt(SpecularColor);
		file.WritePtr(Site.Get());
		return true;
	}
	return false;
}

void WorshipTotem::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status)
{
	Pos.GetDistance(villager.Pos);
}
