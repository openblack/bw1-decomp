#include <stddef.h>
#include <string.h>

#include "PrayerSite.h"
#include "PrayerSiteInfo.h"
#include "PrayerIconInfo.h"
#include "GameTimeConstants.h"
#include "WorshipSpellIcon.h"

inline MESH_LIST GPrayerSiteInfo::GetMesh() const
{
	return Mesh;
}

inline GBaseInfo* GPrayerSiteInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}

GPrayerSiteInfo GPrayerSiteInfo::Infos[PRAYER_SITE_INFO_LAST];

inline GBaseInfo* GPrayerIconInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}

GPrayerIconInfo GPrayerIconInfo::Infos[PRAYER_ICON_INFO_LAST];

#ifndef VERSION_BW1W100
inline MESH_LIST PrayerSite::GetMesh() const
{
	return info->GetMesh();
}

#define PRAYER_SITE_DEFAULT_SCALE         0.2f
#define PRAYER_SITE_INITIAL_PERCENT_BUILT 1.0f

PrayerSite::PrayerSite(const MapCoords& coords, const GPrayerSiteInfo* info, float unused_1, float unused_2)
	: MultiMapFixed(coords, info, 0.0f, PRAYER_SITE_DEFAULT_SCALE, PRAYER_SITE_INITIAL_PERCENT_BUILT, false),
	  field_0x7c(0), field_0x80(0), field_0x88(0)
{
}
#endif

void PrayerSite::ToBeDeleted(bool32_t delete_now) {}

#ifndef VERSION_BW1W100
uint32_t fn_00670840()
{
	return 0;
}

void fn_00670850() {}

uint32_t fn_00670860()
{
	return 1;
}

uint32_t PrayerSite::GetIndexedValue(uint32_t index) const
{
	uint32_t             value;
	const unsigned char* bytes = reinterpret_cast<const unsigned char*>(this);
	memcpy(&value, bytes + offsetof(PrayerSite, field_0x7c) + index * sizeof(value), sizeof(value));
	return value;
}

MapCoords PrayerSite::GetPos(uint32_t unused) const
{
	const MapCoords position = Pos;
	return position;
}
#endif

uint32_t PrayerSite::Process()
{
	return 3;
}

GPlayer* PrayerSite::GetPlayer()
{
	return NULL;
}

#ifndef VERSION_BW1W100
uint32_t fn_006708D0()
{
	return 0;
}
#endif

Town* PrayerSite::GetTown()
{
	return MultiMapFixed::GetTown();
}

#ifdef VERSION_BW1W100
bool32_t PrayerSite::CreatureMustAvoid(Creature* creature)
{
	return false;
}

uint32_t PrayerIcon::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_MOBILE_OBJECT;
}
#else
uint32_t fn_006708F0()
{
	return 0;
}

inline uint32_t PrayerIcon::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_MOBILE_OBJECT;
}

inline MESH_LIST PrayerIcon::GetMesh() const
{
	return SingleMapFixed::GetMesh();
}

PrayerIcon::PrayerIcon(const MapCoords& coords, const GPrayerIconInfo* info, const GSpellSeedInfo* unused,
                       float y_angle, float scale)
	: SingleMapFixed(coords, info, y_angle, scale), field_0x5c(0)
{
}

void PrayerIcon::ToBeDeleted(bool32_t delete_now) {}

uint32_t fn_00670990()
{
	return 0;
}

GPlayer* PrayerIcon::GetPlayer()
{
	return NULL;
}

Town* PrayerIcon::GetTown()
{
	return NULL;
}

uint32_t fn_006709C0()
{
	return 0;
}
#endif

uint32_t PrayerIcon::Process()
{
	return 3;
}

#ifndef VERSION_BW1W100
Citadel* PrayerIcon::GetCitadel()
{
	return NULL;
}

void PrayerIcon::Draw() {}

uint32_t fn_00670A00()
{
	return 0;
}

bool32_t PrayerSite::CreatureMustAvoid(Creature* creature)
{
	return false;
}
#endif
