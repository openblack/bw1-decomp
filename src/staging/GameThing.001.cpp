#include "GameThing.h"

// win1.41 00405130 mac 10169a70 GameThing::GetDrawImportance(void)
float GameThing::GetDrawImportance()
{
    return 0.0f;
}

// win1.41 00405140 mac 104e9450 GameThing::GetRadius(void)
float GameThing::GetRadius()
{
    return 0.0f;
}

// win1.41 00405150 mac 1034f3d0 GameThing::Get2DRadius(void)
float GameThing::Get2DRadius()
{
    return 0.0f;
}

// win1.41 00405160 mac 103c36e0 GameThing::IsFootpathLink(void)
bool32_t GameThing::IsFootpathLink()
{
    return 0;
}

// win1.41 00405170 mac 1056c160 GameThing::GetFootpathLink(void)
GFootpathLink* GameThing::GetFootpathLink()
{
    return 0;
}

// win1.41 00405180 mac 104788b0 GameThing::GetNearestPathTo(MapCoords const &, float, int)
uint32_t GameThing::GetNearestPathTo(const MapCoords& param_1, float param_2, int param_3)
{
    return 0;
}

// win1.41 00405190 mac 103dffc0 GameThing::AddFootpath(GFootpath *)
uint32_t GameThing::AddFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 004051a0 mac 103dff70 GameThing::RemoveFootpath(GFootpath *)
uint32_t GameThing::RemoveFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 004051b0 mac 1056c950 GameThing::GetResource(RESOURCE_TYPE)
uint32_t GameThing::GetResource(RESOURCE_TYPE type)
{
    return 0;
}

// win1.41 004051c0 mac 1056c9a0 GameThing::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t GameThing::AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords& coords, int param_6)
{
    return 0;
}

// win1.41 004051d0 mac 104f8b20 GameThing::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t GameThing::RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 004051e0 mac 1017ebc0 GameThing::CastAbode(void)
Abode* GameThing::CastAbode()
{
    return 0;
}

// win1.41 004051f0 mac 10199740 GameThing::CastMultiMapFixed(void)
MultiMapFixed* GameThing::CastMultiMapFixed()
{
    return 0;
}

// win1.41 00405200 mac 100ac9a0 GameThing::GetNumberOfInstanceForGlobalList(void)
uint16_t GameThing::GetNumberOfInstanceForGlobalList()
{
    return 1;
}

// win1.41 00405210 mac 1019aa00 GameThing::GetTownArtifactValue(void)
float GameThing::GetTownArtifactValue()
{
    return 0.0f;
}

// win1.41 00405220 mac 10199de0 GameThing::CanBecomeArtifact(void)
bool GameThing::CanBecomeArtifact()
{
    return false;
}

// win1.41 00405230 mac 10199e20 GameThing::DrawInHand(GInterfaceStatus *)
void GameThing::DrawInHand(GInterfaceStatus* param_1)
{
}

// win1.41 00405240 mac 10067860 GameThing::IsFunctional(void)
bool GameThing::IsFunctional()
{
    return false;
}

// win1.41 00405250 mac 1057b140 GameThing::ResolveLoad(void)
void GameThing::ResolveLoad()
{
}
