// #include "Villager.h"
// #include "Abode.h"
// #include "AbodeInfo.h"
// #include "Town.h"
#include "AbodeInfo.h"

GAbodeInfo GAbodeInfo::AbodeInfos[0x93];

// GAbodeInfo::~GAbodeInfo() {}

// void GAbodeInfo::operator delete(void* p) {
//     ::operator delete(p);
// }

// Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
//     : MultiMapFixed(coords, info, y_angle, scale, food, wood)
//     , town(0)
//     , next(0)
// {
//     SetZero();
//     if (town != 0)
//     {
//         town->AddStructureToTown(this);
//         index = town->abodes.count + 0xff;
//     }
//     FindNearestDrinkingWater(200.0f);
// }


// // ABODE_TYPE PlannedAbode::GetAbodeType()
// // {
// //     return ABODE_TYPE_GENERAL;
// // }

// ABODE_TYPE Abode::GetAbodeType()
// {
//     return ABODE_TYPE_GENERAL;
// }

// bool Abode::IsFunctional()
// {
//     return false;
// }

// uint32_t Abode::ChecksVerticesVObjects()
// {
//     return 0;
// }

// void Abode::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
// {

// }

// void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player)
// {

// }

// bool Abode::CanBecomeAPhysicsObject()
// {
//     return false;
// }

// uint32_t Abode::GetScriptObjectType()
// {
//     return 0;
// }

// uint32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
// {
//     return 0;
// }

// uint32_t Abode::InterfaceTap(GInterfaceStatus* status)
// {
//     return 0;
// }

// float Abode::GetDesireToBeRepaired()
// {
//     return 0.0f;
// }

// Villager* Abode::FindVillager(FindVillagerCB callback, SCRIPT_OBJECT_TYPE param_2, uint32_t param_3)
// {
//     return 0;
// }

// uint32_t Abode::Save(GameOSFile& file)
// {
//     return 0;
// }

// uint32_t Abode::Load(GameOSFile& file)
// {
//     return 0;
// }

// void Abode::FindNearestDrinkingWater(float max_dist)
// {

// }

// float Abode::GetPercentAbodeFullWithAdults()
// {
//     return 0.0f;
// }

// float Abode::GetPercentAbodeFullWithChildren()
// {
//     return 0.0f;
// }

// uint8_t Abode::GetNumAdultsInAbode()
// {
//     return 0;
// }

// void Abode::DrawPercentFull(int param_1)
// {

// }

// uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
// {
//     return 0;
// }

// bool Abode::IsInteractable()
// {
//     return false;
// }

// MapCoords Abode::FUN_00407230(bool param_1)
// {
//     MapCoords a;
//     a.x = 0;
//     a.z = 0;
//     a.altitude = 0.0f;
//     return a;
// }

// bool Abode::CanBeHiddenIn()
// {
//     return false;
// }

// float Abode::GetPercentRepairedForNonFunctional()
// {
//     return 0.0f;
// }

// float Abode::GetInfluence()
// {
//     return 0.0f;
// }

// MapCoords Abode::GetPosOutside(float param_1, float param_2, float param_3)
// {
//     MapCoords a;
//     a.x = 0;
//     a.z = 0;
//     a.altitude = 0.0f;
//     return a;
// }

// void Abode::StopBeingFunctional(GPlayer* param_1)
// {

// }

// void Abode::FUN_004073f0(GPlayer* param_1)
// {

// }

// void Abode::DiscipleInHandNear(Villager& param_1, GInterfaceStatus& status)
// {

// }

// float Abode::CalculateDesireToGainMale()
// {
//     return 0.0f;
// }

// float Abode::CalculateDesireToGainVillager()
// {
//     return 0.0f;
// }

// bool32_t Abode::TakeVillagerFrom(Abode& other, int param_2)
// {
//     return false;
// }

// bool32_t Abode::SwapMaleForFemaleFrom(Abode& other)
// {
//     Villager* maleVillager = other.villagers.head;
//     while (true)
//     {
//         if (maleVillager == 0)
//             return false;
//         if (maleVillager->IsMaleVillager() && (maleVillager->field_0xe0 & 4) == 0)
//             break;
//         maleVillager = maleVillager->next;
//     }
//         if (maleVillager == 0)
//             return false;

//     Villager* femaleVillager = villagers.head;
//     while (true)
//     {
//         if (femaleVillager == 0)
//             return false;
//         if (femaleVillager->IsFemaleVillager() && (femaleVillager->field_0xe0 & 4) == 0)
//             break;
//         femaleVillager = femaleVillager->next;
//     }
//         if (femaleVillager == 0)
//             return false;
   
//     maleVillager->ForceMoveVillagerToAbode(this);
//     femaleVillager->ForceMoveVillagerToAbode(&other);
//     return true;
// }

// float Abode::GetVillagerHealthTotal()
// {
//     float result = 0.0f;
//     for (Villager* villager = villagers.head; villager != 0; villager = villager->next)
//     {
//         result += villager->GetLife();
//     }
//     return result;
// }
