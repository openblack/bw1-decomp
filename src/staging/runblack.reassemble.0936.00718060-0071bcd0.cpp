#include "Setup.h"
#include "ShowNeedsInfo.h"
#include "ShowNeeds.h"
#include "ShowNeedsVisuals.h"
#include "HelpSpritesGuidance.h"
#include "GameThing.h"
#include "Spell.h"

// win1.41 007180b0 mac 10508ff0 GSetup::LoadMapFeatures(char *)
void GSetup::LoadMapFeatures(char* map_path)
{
}

// win1.41 00718250 mac 10508f20 GSetup::GetScriptPos(char *)
MapCoords GSetup::GetScriptPos(char* str)
{
    return 0;
}

// win1.41 00718330 mac 10508550 GSetup::SaveAllMap(char *)
int GSetup::SaveAllMap(char* param_1)
{
    return 0;
}

// win1.41 00718870 mac 10508160 GSetup::SaveMapCell(LHOSFile &, MapCell *, unsigned long &, unsigned long &, unsigned long &, unsigned long &, unsigned long &, MapCoords const &)
void GSetup::SaveMapCell(LHOSFile& param_1, MapCell* param_2, uint32_t& param_3, uint32_t& param_4, uint32_t& param_5, uint32_t& param_6, uint32_t& param_7, const MapCoords& param_8)
{
}

// win1.41 00719280 mac 10507ce0 GSetup::LoadTextScripts(void)
int GSetup::LoadTextScripts()
{
    return 0;
}

// win1.41 00719610 mac 10507c70 GSetup::WriteToFile(void *, LHOSFile &, void *, unsigned long)
uint32_t GSetup::WriteToFile(void* param_1, LHOSFile& param_2, void* param_3, uint32_t param_4)
{
    return 0;
}

// win1.41 00719a00 mac 10144960 GShowNeedsInfo::GetMesh( const(void))
uint32_t GShowNeedsInfo::GetMesh() const
{
    return 0;
}

// win1.41 00719a10 mac 101461f0 GShowNeedsInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GShowNeedsInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00719a80 mac 10146040 GShowNeedsInfo::_dt(void)
GShowNeedsInfo::~GShowNeedsInfo()
{
}

// win1.41 00719ab0 mac 10145e60 ShowNeeds::ShowNeeds(GameThingWithPos *)
ShowNeeds::ShowNeeds(GameThingWithPos* game_thing)
{
}

// win1.41 00719b20 mac 10145da0 ShowNeeds::ToBeDeleted(int)
void ShowNeeds::ToBeDeleted(int param_1)
{
}

// win1.41 00719b60 mac 10145cd0 ShowNeeds::Create(GameThingWithPos *)
ShowNeeds* ShowNeeds::Create(GameThingWithPos* game_thing)
{
    return 0;
}

// win1.41 00719c30 mac 10145a10 ShowNeeds::GetPlayer(void)
GPlayer* ShowNeeds::GetPlayer()
{
    return 0;
}

// win1.41 00719cb0 mac 10145970 ShowNeeds::Save(GameOSFile &)
bool ShowNeeds::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00719cf0 mac 101458d0 ShowNeeds::Load(GameOSFile &)
bool ShowNeeds::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00719d30 mac 10145850 ShowNeeds::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t ShowNeeds::GetShowNeedsPos(uint32_t param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 00719d60 mac 10145700 ShowNeedsVisuals::ShowNeedsVisuals(const MapCoords&, GameThing*, const GShowNeedsInfo *)
ShowNeedsVisuals::ShowNeedsVisuals(MapCoords* coords, GameThing* game_thing, GShowNeedsInfo* info)
{
}

// win1.41 00719dd0 mac 10145660 ShowNeedsVisuals::ToBeDeleted(int)
void ShowNeedsVisuals::ToBeDeleted(int param_1)
{
}

// win1.41 00719e00 mac 10145510 ShowNeedsVisuals::CallVirtualFunctionsForCreation(const MapCoords &)
void ShowNeedsVisuals::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 0071a1b0 mac 10144f70 ShowNeedsVisuals::GetPlayer(void)
GPlayer* ShowNeedsVisuals::GetPlayer()
{
    return 0;
}

// win1.41 0071a230 mac 10144d30 ShowNeedsVisuals::Save(GameOSFile &)
bool ShowNeedsVisuals::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0071a320 mac 10144bb0 ShowNeedsVisuals::Load(GameOSFile &)
bool ShowNeedsVisuals::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0071a410 mac 10144b40 ShowNeedsVisuals::ResolveLoad(void)
void ShowNeedsVisuals::ResolveLoad()
{
}

// win1.41 0071a9f0 mac 105128d0 GHelpSpritesGuidance::GetBaseInfo(unsigned long &)
GBaseInfo* GHelpSpritesGuidance::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0071aa60 mac 1050d8c0 GHelpSpritesGuidance::_dt(void)
GHelpSpritesGuidance::~GHelpSpritesGuidance()
{
}

// win1.41 0071bc20 mac 1050ff50 GameThing::GetSampleForAttack(void)
uint32_t GameThing::GetSampleForAttack()
{
    return 0;
}

// win1.41 0071bc30 mac 1050fe70 Spell::GetSampleForAttack(void)
uint32_t Spell::GetSampleForAttack()
{
    return 0;
}
