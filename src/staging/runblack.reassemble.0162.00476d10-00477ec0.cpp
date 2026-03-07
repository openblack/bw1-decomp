#include "Creature.h"

// win1.41 00476dc0 mac 101dc510 Creature::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Creature::ValidToSelectFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00476dd0 mac 101dc480 Creature::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Creature::ValidToApplyFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00476df0 mac 101dc3f0 Creature::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
uint32_t Creature::ValidToFightThisToObject(GInterfaceStatus* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00476e10 mac 101dc300 Creature::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t Creature::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00476e70 mac 101dc260 Creature::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t Creature::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00476e90 mac 101dc1c0 Creature::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool Creature::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00476eb0 mac 101dc160 Creature::IsReadyForNetworkUnfriendlyLockedSelect(void)
bool Creature::IsReadyForNetworkUnfriendlyLockedSelect()
{
    return 0;
}

// win1.41 00476ec0 mac 101dc100 Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 00476ed0 mac 101dc060 Creature::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
bool Creature::GetReadyForNetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00476f00 mac 101dbf90 Creature::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
bool Creature::IsReadyForNetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00476f60 mac 101dbf40 Creature::NetworkUnfriendlyEndLockedSelect(void)
bool Creature::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00476f70 mac 101dbeb0 Creature::DestroyedByEffect(GPlayer *, float)
bool Creature::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 004770d0 mac 101dbbc0 Creature::SetHeadPos(MapCoords *)
void Creature::SetHeadPos(MapCoords* param_1)
{
}

// win1.41 00477850 mac 101daef0 Creature::GetCreature3D(void)
LH3DCreature* Creature::GetCreature3D()
{
    return 0;
}

// win1.41 00477860 mac 101dae90 Creature::GetNearestEdgeOfObject(Object *)
void Creature::GetNearestEdgeOfObject(Object* param_1)
{
}

// win1.41 00477ac0 mac 101daa00 Creature::GetMovementDirection(LHPoint *)
void Creature::GetMovementDirection(LHPoint* param_1)
{
}

// win1.41 00477df0 mac 101da380 Creature::GetCreatureBeliefListType(void)
uint32_t Creature::GetCreatureBeliefListType()
{
    return 0;
}

// win1.41 00477e10 mac 101da2c0 Creature::GetImpressiveType(void)
IMPRESSIVE_TYPE Creature::GetImpressiveType()
{
    return (IMPRESSIVE_TYPE)0;
}

// win1.41 00477e30 mac 101da220 Creature::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
bool Creature::IsObjectTurningTooFastForCameraToFollowSmoothly()
{
    return 0;
}
