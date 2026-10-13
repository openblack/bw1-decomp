#include "WorshipSiteUpgrade.h"
#include "WorshipSiteUpgradeInfo.h"

#include <string.h> /* For strlen */

#include "Game.h"
#include "PlannedWorshipSiteUpgrade.h"
#include "Setup.h"
#include "WorshipSite.h"

// TODO(#377): The original Feature.h, Fixed.h, Game.h and Worship.h declared these classes.
#include "FlowersInfo.h"
#include "GameInfo.h"
#include "SingleMapFixedInfo.h"
#include "WorshipSiteInfo.h"

#ifndef VERSION_BW1W100
#if defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\WorshipSiteUpgrade.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\WorshipSiteUpgrade.cpp"
#endif
#endif // VERSION_BW1W100

GWorshipSiteUpgradeInfo GWorshipSiteUpgradeInfo::Infos[WORSHIP_SITE_UPGRADE_INFO_LAST];

#ifndef VERSION_BW1W100
WorshipSiteUpgrade::WorshipSiteUpgrade(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info, WorshipSite* site,
                                       float y_angle, float scale, float percent_built, bool32_t under_construction)
	: Feature(coords, info, y_angle, scale, percent_built, under_construction)
{
	Site.Set(site);
	if (site != NULL)
	{
		site->Upgrades.AddToFirst(this);
	}
}

void WorshipSiteUpgrade::ToBeDeleted(int delete_now)
{
	if (GetWorshipSite() != NULL)
	{
		GetWorshipSite()->Upgrades.Remove(this);
	}
	Feature::ToBeDeleted(delete_now);
}

WorshipSiteUpgrade* WorshipSiteUpgrade::Create(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info,
                                               WorshipSite* site, float y_angle, float scale, float percent_built,
                                               bool32_t under_construction)
{
	WorshipSiteUpgrade* upgrade =
		new (FILEPATH, 34) WorshipSiteUpgrade(coords, info, site, y_angle, scale, percent_built, under_construction);
	if (upgrade != NULL)
	{
		upgrade->CallVirtualFunctionsForCreation(coords);
	}
	return upgrade;
}

const GWorshipSiteUpgradeInfo* WorshipSiteUpgrade::GetInfo() const
{
	return (const GWorshipSiteUpgradeInfo*)info;
}

GPlayer* WorshipSiteUpgrade::GetPlayer()
{
	if (GetWorshipSite() != NULL)
	{
		return GetWorshipSite()->GetPlayer();
	}
	return GGame::g_game->GetNeutralPlayer();
}

PlannedMultiMapFixed* WorshipSiteUpgrade::ConvertToPlanned()
{
	PlannedWorshipSiteUpgrade* planned =
		new (FILEPATH, 62) PlannedWorshipSiteUpgrade(Pos, GetInfo(), GetWorshipSite(), GetYAngle(), GetScale());
	if (planned != NULL)
	{
		ToBeDeleted(false);
	}
	return planned;
}

PlannedWorshipSiteUpgrade::PlannedWorshipSiteUpgrade(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info,
                                                     WorshipSite* site, float y_angle, float scale)
	: PlannedFeature(coords, info, site, y_angle, scale)
{
}

const GWorshipSiteUpgradeInfo* PlannedWorshipSiteUpgrade::GetInfo()
{
	return (const GWorshipSiteUpgradeInfo*)info.Get();
}

MultiMapFixed* PlannedWorshipSiteUpgrade::CreatePlanned(float percent_built)
{
	float yAngle = YAngle;
	if (GetInfo()->IsOkToCreateAtPos(Pos, yAngle, GetScale()))
	{
		float angle = YAngle;
		return WorshipSiteUpgrade::Create(Pos, GetInfo(), GetOwnerWorshipSite(), angle, GetScale(), percent_built,
		                                  true);
	}
	return NULL;
}

uint32_t WorshipSiteUpgrade::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (coords != NULL) ? (Pos - *coords) : Pos;
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

WorshipSite* PlannedWorshipSiteUpgrade::GetOwnerWorshipSite()
{
	return dynamic_cast<WorshipSite*>(Owner);
}
#endif // VERSION_BW1W100
