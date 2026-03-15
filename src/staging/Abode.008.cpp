#include "Abode.h"

#include "stdbool.h"
#include <stdint.h>

#include <lionhead/lh3dlib/development/LH3DMem.h>
#include <lionhead/lh3dlib/development/LH3DMesh.h>
#include <lionhead/lhaudio/ver7.0/LH_SamplePlayOptions.h>

#include "AbodeInfo.h"
#include "Audio.h"
#include "ControlHand.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "Player.h"
#include "Rand.h"
#include "Villager.h"
#include "Utils.h"
#include "Town.h"
#include "TownInfo.h"
#include "ViscousLiquid.h"

Town* abode_town_00c4cc6c; // TODO match the correct .bss one
extern "C" GGame* game;
extern "C" GGlobal* global;
extern "C" int windmill_int_00c4cc7c;

extern "C" void Draw__13HowManyPeopleFllP7LHPoint(uint32_t, uint32_t, LHPoint*);
extern "C" void KnockKnock__13HowManyPeopleFv(void);

// win1.41 004061f0 mac 10089cd0 Abode::GetAbodeType(void)
ABODE_TYPE Abode::GetAbodeType()
{
    GAbodeInfo* _info = (GAbodeInfo*)info;
    return _info->abodeType;
}

// win1.41 00406200 mac 1005ff20 Abode::IsFunctional(void)
bool32_t Abode::IsFunctional()
{
    if (MultiMapFixed::IsFunctional() == 1)
    {
        if (IsBuilt())
        {
            return true;
        }
    }
    return false;
}

// win1.41 00406230 mac 1014cfd0 Abode::ChecksVerticesVObjects(void)
bool32_t Abode::ChecksVerticesVObjects()
{
    return false;
}

// win1.41 00406240 mac 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
void Abode::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00406640 mac 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player)
{
}

// win1.41 00406800 mac 1010ab50 Abode::CanBecomeAPhysicsObject(void)
bool32_t Abode::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00406810 mac 1001b380 Abode::GetScriptObjectType(void)
uint32_t Abode::GetScriptObjectType()
{
    return 2;
}

// win1.41 00406820 mac 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
{
    return 1;
}

// win1.41 00406830 mac 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
bool32_t Abode::InterfaceTap(GInterfaceStatus* status)
{
    abode_town_00c4cc6c = GetTown();
    KnockKnock__13HowManyPeopleFv();

    for (Villager* villager = villagers.head; villager != NULL; villager = villager->next)
    {
        villager->SetStateWhenTappedOnAbode();
    }

    ABODE_TYPE type = GetAbodeType();
    if ((type & ABODE_TYPE_LIVING_QUARTERS) != 0)
    {
        GInterfaceStatus* game_status = game->MyInterfaceStatus();
        if (status == game_status)
        {
            CHand* hand = game->players[game->player_index].GetRenderHand();
            if (hand != NULL)
            {
                hand->StartFixedPosAnimation(hand->position, 0x39);
            }
        }

        float pos_z = status->field_0xc8.z;
        float pos_y = status->field_0xc8.y;
        float pos_x = status->field_0xc8.x;
        LH_SamplePlayOptions play_options;

        play_options.field_0x4 = global->debug.field_0x3a8;
        play_options.field_0x24 = windmill_int_00c4cc7c + 0x6e;
        ++windmill_int_00c4cc7c;
        if (windmill_int_00c4cc7c == 9)
        {
            windmill_int_00c4cc7c = 0;
        }
        play_options.field_0x34 = pos_y;
        play_options.field_0x30 = pos_x;
        play_options.field_0x38 = pos_z;
        play_options.field_0x20 = this;
        play_options.field_0x8 = 1;
        play_options.field_0xc = 0;

        global->audio->PlaySoundEffect(&play_options);
    }

    return true;
}

// win1.41 00406970 mac 1004c590 Abode::GetDesireToBeRepaired(void)
float Abode::GetDesireToBeRepaired()
{
    GTownInfo* townInfo = (GTownInfo*)GetTown()->info;
    if (GetPercentRepaired() > townInfo->field_0x10c ||
        ((((GAbodeInfo*)info)->abodeType & ABODE_TYPE_LIVING_QUARTERS) != 0 && villagers.count == 0))
    {
        return 0.0f;
    }
    return MultiMapFixed::GetDesireToBeRepaired();
}

// win1.41 004069c0 mac 1036ee00 Abode::FindVillager( int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
Villager* Abode::FindVillager(int (__cdecl* search_cb)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, uint32_t), SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
    for (Villager* villager = villagers.head; villager != NULL; villager = villager->next)
    {
        if ((*search_cb)(villager, type, param_3))
        {
            return villager;
        }
    }
    return NULL;
}

// win1.41 00406a10 mac 103bd750 Abode::Save(GameOSFile &)
bool32_t Abode::Save(GameOSFile& file)
{
    if (MultiMapFixed::Save(file))
    {
        GameOSFileWriteCheckSum(file, field_0x7c);
        GameOSFileWriteCheckSum(file, drinking_water);
        GameOSFileWriteCheckSum(file, field_0x94);
        file.WritePtr(town);
        if (DAT_00bec990)
        {
            int count = villagers.count;
            file.WriteIt(villagers.count);
            Villager* villager = NULL;
            int i = 0;
            while (true)
            {
                if (villager == NULL)
                    villager = villagers.head;
                else
                    villager = villager->next;
                if (villager == NULL)
                    break;
                if (++i > count)
                {
                    DAT_00bec990 = false;
                    break;
                }
                if (!DAT_00bec990) break;
                file.WritePtr(villager);
            }
        }
        GameOSFileWriteCheckSum(file, adult_count);
        GameOSFileWriteCheckSum(file, field_0xb6);
        GameOSFileWriteCheckSum(file, field_0xb7);
        GameOSFileWriteCheckSum(file, index);
        file.WriteArray(resources, 2);
        bool32_t hasDestructionMesh = (destruction_mesh != NULL);
        GameOSFileWriteCheckSum(file, hasDestructionMesh);
        if (hasDestructionMesh)
        {
            destruction_mesh->WriteToFile(file);
        }
        return true;
    }
    return false;
}

// win1.41 00406d20 mac 101a2920 Abode::Load(GameOSFile &)
bool32_t Abode::Load(GameOSFile& file)
{
    if (MultiMapFixed::Load(file))
    {
        GameOSFileReadCheckSum(file, field_0x7c);
        GameOSFileReadCheckSum(file, drinking_water);
        GameOSFileReadCheckSum(file, field_0x94);
        file.ReadPtr((GameThing**)&town);
        if (DAT_00bec994)
        {
            int32_t count;
            file.ReadIt(count);
            for (; count > 0; --count)
            {
                Villager* villager;
                file.ReadPtr((GameThing**)&villager);
                villager->next = NULL;
                villagers.AddToLast(villager);
            }
        }
        male_female_villagers[0] = NULL;
        male_female_villagers[1] = NULL;
        GameOSFileReadCheckSum(file, adult_count);
        GameOSFileReadCheckSum(file, field_0xb6);
        GameOSFileReadCheckSum(file, field_0xb7);
        GameOSFileReadCheckSum(file, index);
        if (DAT_00bec994)
        {
            uint32_t arrayCount;
            file.ReadIt(arrayCount);
            for (uint32_t i = 0; i < arrayCount; ++i)
            {
                file.ReadIt(resources[i]);
            }
        }
        uint32_t fragMeshData;
        GameOSFileReadCheckSum(file, fragMeshData);
        if (fragMeshData)
        {
            destruction_mesh = new("C:\\dev\\MP\\Black\\Abode.cpp", 2210) FragMesh(file, LH3DMesh::g_current_pack->GetMesh(info->GetMesh()));
        }
        return true;
    }
    return false;
}

// win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
void Abode::FindNearestDrinkingWater(float max_dist)
{
    uint8_t found = GUtils::FindNearestDrinkingWater(coords, drinking_water, max_dist);
    // Set or clear bit 0 based on result
    field_0x7c = (field_0x7c ^ found) & 1 ^ field_0x7c;
}

// win1.41 00407050 mac 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
float Abode::GetPercentAbodeFullWithAdults()
{
    GAbodeInfo* _info = (GAbodeInfo*)info;
    if (_info->maxVillagersInAbode != 0)
    {
        return GetNumAdultsInAbode() / _info->maxVillagersInAbode;
    }
    return 1.0f;
}

// win1.41 00407090 mac 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
float Abode::GetPercentAbodeFullWithChildren()
{
    int maxChildren = ((GAbodeInfo*)info)->maxChildrenInAbode;
    if (maxChildren != 0)
    {
        return (uint32_t)field_0xb7 / maxChildren;
    }
    return 1.0f;
}

// win1.41 004070d0 mac 104ed230 Abode::GetNumAdultsInAbode(void)
float Abode::GetNumAdultsInAbode()
{
    return adult_count;
}

// win1.41 004070f0 mac 101b8780 Abode::DrawPercentFull(int)
void Abode::DrawPercentFull(bool32_t only_one)
{
    LHPoint translation;
    translation.x = game_3d_object->matrix.m[9];
    translation.y = game_3d_object->matrix.m[10];
    translation.z = game_3d_object->matrix.m[11];
    float height = game_3d_object->GetMesh()->bounding_box.size.y;
    translation.y += height + height + 1.5f;
    uint32_t maxVillagers = ((GAbodeInfo*)info)->maxVillagersInAbode;
    int numAdults = GetNumAdultsInAbode();
    if (only_one)
    {
        maxVillagers = 1;
        numAdults = -1;
    }
    Draw__13HowManyPeopleFllP7LHPoint(maxVillagers, numAdults, &translation);
}

// win1.41 00407170 mac 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
    uint32_t result = MultiMapFixed::GetDiscipleStateIfInteractedWith(status, villager);
    if (result == 0 && IsFunctional() &&
        GetPlayer() == status->GetPlayer() &&
        GetPercentAbodeFullWithAdults() < 1.0f &&
        villager->GetAbode() != this &&
        GetTown() != NULL && GetTown()->field_0x5f4 == 0)
    {
        return 10;
    }
    return result;
}

// win1.41 00407200 mac 1008a7b0 Abode::IsInteractable(void)
bool32_t Abode::IsInteractable()
{
    if (GetPercentBuilt() == 0.0f)
        return false;
    return GameThingWithPos::IsInteractable();
}

// win1.41 00407230 mac inlined
MapCoords Abode::FUN_00407230(uint32_t param_1, uint32_t param_2)
{
    if (param_1 == 1 && building_site != NULL)
    {
        return building_site->GetResourcePosAndYAngle(1, 0, NULL);
    }
    return coords;
}

// win1.41 00407280 mac 100dcdb0 Abode::CanBeHiddenIn(void)
bool32_t Abode::CanBeHiddenIn()
{
    return IsFunctional();
}

// win1.41 00407290 mac 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
float Abode::GetPercentRepairedForNonFunctional()
{
    return ((GAbodeInfo*)info)->thresholdForStopBeingFunctional;
}

// win1.41 004072a0 mac 10053220 Abode::GetInfluence(void)
float Abode::GetInfluence()
{
    float baseInfluence = MultiMapFixed::GetInfluence();
    return (GetNumAdultsInAbode() + field_0xb7 + 1.0f) * baseInfluence;
}

// win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
MapCoords Abode::GetPosOutside(float numSegments, float distanceRange, float baseDistance)
{
    MapCoords centerPos = GetArrivePos();
    float randomAngle = GRand::GameFloatRand(6.2831855f / numSegments, "C:\\dev\\MP\\Black\\Abode.cpp", 0x94a);
    float randomDist = GRand::GameFloatRand(distanceRange, "C:\\dev\\MP\\Black\\Abode.cpp", 0x94b);
    return centerPos + GUtils::GetPosFromAngle((6.2831855f / (numSegments + numSegments)) - randomAngle + GUtils::Get3DAngleFromXZ(coords, centerPos), randomDist + baseDistance);
}

// win1.41 004073c0 mac 103b5600 Abode::StopBeingFunctional(GPlayer *)
void Abode::StopBeingFunctional(GPlayer* player)
{
    if (player != NULL && this->field_0xb9 >= 200)
    {
        player->game_stats->field_0x1080++;
        FUN_004073f0(player);
    }
}

// win1.41 004073f0 mac inlined Abode::FUN_004073f0(GPlayer *)
void Abode::FUN_004073f0(GPlayer* player)
{
    if ((field_0x7c & 0x40) == 0)
    {
        if ((field_0x7c & 0x20) == 0)
        {
            player->FUN_0064da80(9, 1);
        }
        else
        {
            player->FUN_0064da80(10, 1);
        }
    }
}

// win1.41 00407420 mac 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
void Abode::DiscipleInHandNear(Villager& disciple, GInterfaceStatus& status)
{
    if (((GAbodeInfo*)info)->maxVillagersInAbode > 0)
    {
        float distance = coords.GetMetresDistance(disciple.coords);
        float radius = Get2DRadius();
        if (distance < radius)
        {
            Town* town = GetTown();
            if (town != NULL && town->field_0x5f4 == 0)
            {
                if (town->GetPlayer() == status.GetPlayer())
                {
                    abode_town_00c4cc6c = town;
                    KnockKnock__13HowManyPeopleFv();

                }
            }
        }
    }
}

// win1.41 004074a0 mac 100e7ac0 Abode::CalculateDesireToGainMale(void)
float Abode::CalculateDesireToGainMale()
{
    float result = 0.0f;
    if (((GAbodeInfo*)info)->maxVillagersInAbode != 0)
    {
        Town* town = GetTown();
        if (town != NULL)
        {
            result = (town->stats.field_0x54 + 0.001f) / (town->stats.field_0x58 + 0.001f) - 
                (field_0xb5 + 0.001f) / ((adult_count - field_0xb5) + 0.001f);
        }
    }
    return result;
}

// win1.41 00407540 mac 100af0d0 Abode::CalculateDesireToGainVillager(void)
float Abode::CalculateDesireToGainVillager()
{
    float result = 0.0f;
    if (((GAbodeInfo*)info)->maxVillagersInAbode != 0)
    {
        Town* town = GetTown();
        if (town != NULL)
        {
            result = (town->stats.num_adults + 0.001f) / (town->stats.field_0x34 + 0.001f) - GetPercentAbodeFullWithAdults();
        }
    }
    return result;
}

// win1.41 004075b0 mac 10518900 Abode::TakeVillagerFrom(Abode&, int)
bool32_t Abode::TakeVillagerFrom(Abode& other, bool32_t male)
{
    for (Villager* walker = other.villagers.head; walker != NULL; walker = walker->next)
    {
        bool32_t found;
        if (male)
        {
            found = walker->IsMaleVillager();
        }
        else
        {
            found = walker->IsFemaleVillager();
        }
        if (found && (walker->field_0xe0 & 4) == 0)
        {
            walker->ForceMoveVillagerToAbode(this);
            return true;
        }
    }
    return false;
}


// win1.41 00407620 mac 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
bool32_t Abode::SwapMaleForFemaleFrom(Abode& other)
{
    Villager* male = other.villagers.head;
    for (; male != NULL; male = male->next)
    {
        if (male->IsMaleVillager() && (male->field_0xe0 & 4) == 0)
        {
            break;
        }
    }

    if (male != NULL)
    {
        Villager* female = villagers.head;
        for (; female != NULL; female = female->next)
        {
            if (female->IsFemaleVillager() && (female->field_0xe0 & 4) == 0)
            {
                male->ForceMoveVillagerToAbode(this);
                female->ForceMoveVillagerToAbode(&other);
                return true;
            }
        }
    }

    return false;
}

// win1.41 004076c0 mac 105a17d0 Abode::GetVillagerHealthTotal(void)
float Abode::GetVillagerHealthTotal()
{
    float total = 0.0f;
    for (Villager* walker = this->villagers.head; walker != NULL; walker = walker->next)
    {
        total += walker->GetLife();
    }
    return total;
}
