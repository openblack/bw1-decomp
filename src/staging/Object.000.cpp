#include "Object.h"

// win1.41 004024f0 mac 10055b70 Object::GetXAngle(void)
float Object::GetXAngle()
{
    return 0.0f;
}

// win1.41 00402500 mac 1004c930 Object::GetYAngle(void)
float Object::GetYAngle()
{
    return 0.0f;
}

// win1.41 00402510 mac 10055b30 Object::GetZAngle(void)
float Object::GetZAngle()
{
    return 0.0f;
}

// win1.41 00402520 mac 10044cb0 Object::GetScale(void)
float Object::GetScale()
{
    return 0.0f;
}

// win1.41 00402530 mac 10577710 Object::SetJustScale(float)
void Object::SetJustScale(float scale)
{
}

// win1.41 00402540 mac 100def80 Object::UpdateFrom3DPosition(void)
void Object::UpdateFrom3DPosition()
{
}

// win1.41 00402550 mac 105890b0 Object::MoveAlongPath(void)
uint32_t Object::MoveAlongPath()
{
    return 1;
}

// win1.41 00402560 mac 1030b0c0 Object::IsReachable(void)
bool Object::IsReachable()
{
    return false;
}

// win1.41 00402570 mac 103dca60 Object::GetPtr(void)
Object* Object::GetPtr()
{
    return NULL;
}

// win1.41 00402580 mac 103dc890 Object::Get3DObjectForPSys(void)
Game3DObject* Object::Get3DObjectForPSys()
{
    return NULL;
}

// win1.41 00402590 mac 1011c800 Object::GetSpotEffectPower(void)
float Object::GetSpotEffectPower()
{
    return 0.0f;
}

// win1.41 004025a0 mac 10097700 Object::GetHoldYRotate(void)
float Object::GetHoldYRotate()
{
    return 0.0f;
}

// win1.41 004025b0 mac 100a0df0 Object::HandShouldFeelWithMeshIntersect(void)
bool Object::HandShouldFeelWithMeshIntersect()
{
    return 1;
}

// win1.41 004025c0 mac 10513b50 Object::SetSpecularColor(unsigned long)
void Object::SetSpecularColor(LH3DColor color)
{
}

// // win1.41 004025d0 mac 10110ae0 Object::GetSpecularColor(void)
// LH3DColor Object::GetSpecularColor()
// {
//     LH3DColor result = {};
//     return result;
// }

// win1.41 004025e0 mac 10110490 Object::SetBeliefSprite(BeliefSprite *)
void Object::SetBeliefSprite(LH3DSprite* sprite)
{
}

// win1.41 004025f0 mac 1016bab0 Object::GetBeliefSprite(void)
LH3DSprite* Object::GetBeliefSprite()
{
    return 0;
}

// win1.41 00402600 mac 1004b110 Object::GetLife(void)
float Object::GetLife()
{
    return 0.0f;
}

// win1.41 00402610 mac 1005f530 Object::IsAlive(void)
bool Object::IsAlive()
{
    return false;
}

// win1.41 00402640 mac 10368980 Object::ScaffoldMoved(Scaffold *)
void Object::ScaffoldMoved(Scaffold* scaffold)
{
}

// win1.41 00402650 mac 10368aa0 Object::ProcessBySpell(Spell *)
uint32_t Object::ProcessBySpell(Spell* spell)
{
    return 1;
}

// win1.41 00402660 mac 10368ae0 Object::GetDetailMesh( const(DETAIL_LEVEL))
int Object::GetDetailMesh(int detail) const
{
    return 0;
}

// win1.41 00402670 mac 10109540 Object::IsG3DObjectDrawnInHand(void)
bool Object::IsG3DObjectDrawnInHand()
{
    return false;
}

// win1.41 00402680 mac 100a83e0 Object::GetDrawRegion(LHRegion *)
void Object::GetDrawRegion(LHRegion* param_1)
{
}

// win1.41 00402690 mac 103e4e10 Object::ProcessState(void)
uint32_t Object::ProcessState()
{
    return 0;
}

// win1.41 004026a0 mac 103e4940 Object::CanBePickedUp(void)
bool Object::CanBePickedUp()
{
    return 0;
}

// win1.41 004026b0 mac 100a7df0 Object::GetVillagerHugRadius(void)
float Object::GetVillagerHugRadius()
{
    return 0.0f;
}

// win1.41 004026d0 mac 10586d80 Object::GetFoodValue(FOOD_TYPE)
float Object::GetFoodValue(FOOD_TYPE type)
{
    return 0.0f;
}

// win1.41 00402700 mac 10062630 Object::GetFoodType(void)
FOOD_TYPE Object::GetFoodType()
{
    return (FOOD_TYPE)0;
}

// win1.41 00402710 mac 10032610 Object::IsMoving( const(void))
bool Object::IsMoving() const
{
    return false;
}

// win1.41 00402730 mac 1056f400 Object::IsSpellSeedReturnPoint( const(void))
bool Object::IsSpellSeedReturnPoint() const
{
    return 0;
}

// win1.41 00402740 mac 104d62b0 Object::IsABeliever(void)
bool Object::IsABeliever()
{
    return 0;
}

// win1.41 00402750 mac 1056ee10 Object::GetResourceType(void)
RESOURCE_TYPE Object::GetResourceType()
{
    return RESOURCE_TYPE_NONE; 
}

// win1.41 00402760 mac 1035b020 Object::GetDefaultResource(void)
int Object::GetDefaultResource()
{
    return 0;
}

// win1.41 00402770 mac 105a4d20 Object::SetPoisonedResource(RESOURCE_TYPE, int)
void Object::SetPoisonedResource(RESOURCE_TYPE type, int param_2)
{
}

// win1.41 00402780 mac 10552240 Object::SetPoisoned(int)
void Object::SetPoisoned(int param_1)
{
}

// win1.41 00402790 mac 10109690 Object::IsLockedInInteract(void)
bool Object::IsLockedInInteract()
{
    return 0;
}

// win1.41 004027a0 mac 10109580 Object::SetDying(void)
bool Object::SetDying()
{
    return false;
}

// win1.41 004027b0 mac 100a8170 Object::EndOnFire(void)
void Object::EndOnFire()
{
}

// win1.41 00637fb0 mac 103d58a0 Object::GetDistanceFromObject(Object *)
float Object::GetDistanceFromObject(const MapCoords* target)
{
    return 0.0f;
}

// win1.41 004027d0 mac 1016eda0 Object::NetworkUnfriendlyStartLockedSelect(void)
bool Object::NetworkUnfriendlyStartLockedSelect()
{
    return 1;
}

// win1.41 004027e0 mac 1056c2f0 Object::IsReadyForNetworkUnfriendlyLockedSelect(void)
bool Object::IsReadyForNetworkUnfriendlyLockedSelect()
{
    return 1;
}

// win1.41 004027f0 mac 10577790 Object::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool Object::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 1;
}

// win1.41 00402800 mac 1037fcb0 Object::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
bool Object::GetReadyForNetworkUnfriendlyEndLockedSelect()
{
    return 1;
}

// win1.41 00402810 mac 102fd0c0 Object::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
bool Object::IsReadyForNetworkUnfriendlyEndLockedSelect()
{
    return 1;
}

// win1.41 00402820 mac 103e2470 Object::NetworkUnfriendlyEndLockedSelect(void)
bool Object::NetworkUnfriendlyEndLockedSelect()
{
    return 1;
}

// win1.41 00402830 mac 1041d9a0 Object::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool Object::NetworkFriendlyEndLockedSelect(GInterfaceStatus* status)
{
    return 1;
}

// win1.41 00402840 mac 1017df80 Object::ValidAsInterfaceTarget(void)
bool Object::ValidAsInterfaceTarget()
{
    return 1;
}

// win1.41 00402850 mac 1016daa0 Object::ValidAsInterfaceLeashTarget(void)
bool Object::ValidAsInterfaceLeashTarget()
{
    return 1;
}

// win1.41 00402860 mac 103e0d10 Object::SelectOnlyAfterRecSystem(void)
bool Object::SelectOnlyAfterRecSystem()
{
    return 0;
}

// win1.41 00402870 mac 105995f0 Object::ValidForPlaceInHand(GInterfaceStatus *)
bool Object::ValidForPlaceInHand(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00402880 mac 1040fc60 Object::ValidToRemoveFromHand(GInterfaceStatus *, MapCoords const &)
bool Object::ValidToRemoveFromHand(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00402890 mac 100b16a0 Object::RemoveFromHand(GInterfaceStatus *, MapCoords const &)
uint32_t Object::RemoveFromHand(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0x17;
}

// win1.41 004028a0 mac 101ca2e0 Object::InterfaceMustBeInInfluenceForInteraction(void)
bool Object::InterfaceMustBeInInfluenceForInteraction()
{
    return 1;
}

// win1.41 004028b0 mac 101652d0 Object::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t Object::ValidToApplyThisToObject(GInterfaceStatus* status, Object* param_2)
{
    return 0;
}

// win1.41 004028c0 mac 10513670 Object::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t Object::ApplyThisToObject(GInterfaceStatus* status, Object* param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 004028d0 mac 10110bf0 Object::ValidToApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Object::ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0;
}

// win1.41 004028e0 mac 10110b70 Object::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t Object::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2, GestureSystemPacketData* param_3)
{
    return 0;
}

// win1.41 004028f0 mac 1055f210 Object::ValidForLockedApplyProcess(GInterfaceStatus *)
uint32_t Object::ValidForLockedApplyProcess(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00402900 mac 1016baf0 Object::ApplyUnlockProcess(GInterfaceStatus *)
uint32_t Object::ApplyUnlockProcess(GInterfaceStatus* status)
{
    return 1;
}

// win1.41 00402910 mac 10364e10 Object::IsInterfacePowerUpWhenInHand( const(void))
bool Object::IsInterfacePowerUpWhenInHand() const
{
    return 0;
}

// win1.41 00402920 mac 103ad050 Object::ApplyOnlyAfterRecSystem(void)
uint32_t Object::ApplyOnlyAfterRecSystem()
{
    return 0;
}

// win1.41 00402930 mac 10101e60 Object::ApplyOnlyAfterReleased(void)
uint32_t Object::ApplyOnlyAfterReleased()
{
    return 0;
}

// win1.41 00402940 mac 100a0900 Object::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
uint32_t Object::InterfaceValidToGiveObject(GInterfaceStatus* status, Object* param_2)
{
    return 0;
}

// win1.41 00402950 mac 101c8d40 Object::InterfaceGiveObject(GInterfaceStatus *, Object *)
uint32_t Object::InterfaceGiveObject(GInterfaceStatus* status, Object* param_2)
{
    return 0x16;
}

// win1.41 00402960 mac 105890f0 Object::InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus *)
uint32_t Object::InterfaceValidToInteractAsMapCoordsObject(GInterfaceStatus* status)
{
    return 0;
}

// win1.41 00402970 mac 1016bbe0 Object::InterfaceInteractAsMapCoordsObject(GInterfaceStatus *)
uint32_t Object::InterfaceInteractAsMapCoordsObject(GInterfaceStatus* status)
{
    return 1;
}

// win1.41 00402980 mac 1016aaf0 Object::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Object::ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0;
}

// win1.41 00402990 mac 1056d5f0 Object::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Object::ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0;
}

// win1.41 004029a0 mac 103692a0 Object::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Object::SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 1;
}

// win1.41 004029b0 mac 103690d0 Object::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
uint32_t Object::ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 1;
}

// win1.41 004029c0 mac 10369240 Object::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
uint32_t Object::ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords& param_2)
{
    return 0;
}

// win1.41 004029d0 mac 101cbb80 Object::FightThisToObject(GInterfaceStatus *, Object *)
uint32_t Object::FightThisToObject(GInterfaceStatus* status, Object* param_2)
{
    return 1;
}

// win1.41 004029e0 mac 100068d0 Object::IsEffectReceiver(EffectValues *)
bool Object::IsEffectReceiver(EffectValues* param_1)
{
    return 1;
}

// win1.41 004029f0 mac 100219d0 Object::IsObject( const(void))
bool Object::IsObject() const
{
    return 1;
}

// win1.41 00402a00 mac 100b06b0 Object::PhysicallyDestroysAbodes(void)
bool Object::PhysicallyDestroysAbodes()
{
    return 0;
}

// win1.41 00402a10 mac 103db1f0 Object::GetAlwaysRemainsInPhysicsInternalSystem(void)
bool Object::GetAlwaysRemainsInPhysicsInternalSystem()
{
    return false;
}

// win1.41 00402a20 mac 103db180 Object::IsSuitableForCreatureAction(void)
bool Object::IsSuitableForCreatureAction()
{
    return false;
}

// win1.41 00402a30 mac 100ba330 Object::CanBePoodOn(Creature *)
bool Object::CanBePoodOn(Creature* creature)
{
    return 1;
}

// win1.41 00402a40 mac 100db5e0 Object::CanBeAttackedByCreature(Creature *)
bool Object::CanBeAttackedByCreature(Creature* creature)
{
    return false;
}

// win1.41 00402a60 mac 100b95a0 Object::CanBePlayedWithByCreature(Creature *)
bool Object::CanBePlayedWithByCreature(Creature* creature)
{
    return false;
}

// win1.41 00402a70 mac 105a25d0 Object::CanBeImpressedByCreature(Creature *)
bool Object::CanBeImpressedByCreature(Creature* creature)
{
    return 0;
}

// win1.41 00402a80 mac 1056cf30 Object::CanBeHelpedByCreature(Creature *)
bool Object::CanBeHelpedByCreature(Creature* creature)
{
    return 1;
}

// win1.41 00402a90 mac 103e4d10 Object::CanBeExaminedByCreature(Creature *)
bool Object::CanBeExaminedByCreature(Creature* creature)
{
    return 1;
}

// win1.41 00402aa0 mac 1054f410 Object::IsOnFire(Creature *)
bool Object::IsOnFire(Creature* creature)
{
    return false;
}

// win1.41 00402ab0 mac 103e2750 Object::GetTastiness(void)
uint32_t Object::GetTastiness()
{
    return 0;
}

// win1.41 00402ac0 mac 102fd110 Object::IsScary(void)
bool Object::IsScary()
{
    return 0;
}

// win1.41 00402ad0 mac 102fd170 Object::GetObjectCollide(void)
uint32_t Object::GetObjectCollide()
{
    return 0;
}

// win1.41 00402ae0 mac 102fd140 Object::IsPushable(void)
bool Object::IsPushable()
{
    return 0;
}

// win1.41 00402af0 mac 1016eb20 Object::GetCarriedTreeType(void)
uint32_t Object::GetCarriedTreeType()
{
    return 0;
}

// win1.41 00402b00 mac 105069f0 Object::GetFacingPitch(void)
float Object::GetFacingPitch()
{
    return 0.0f;
}

// win1.41 00402b10 mac 1058c010 Object::SetHeadPos(MapCoords *)
void Object::SetHeadPos(MapCoords* param_1)
{
}

// win1.41 00402b30 mac 1016e7f0 Object::IsAPotFromABuildingSite(void)
bool Object::IsAPotFromABuildingSite()
{
    return 0;
}

// win1.41 00402b40 mac 1016dc30 Object::GetText(void)
const char* Object::GetText()
{
    return NULL;
}

// win1.41 00402b50 mac 10335f20 Object::StandAnimation(void)
uint32_t Object::StandAnimation()
{
    return 0xFFFFFFFF;
}
