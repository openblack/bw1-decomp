#ifndef BW1_DECOMP_CITADEL_INCLUDED_H
#define BW1_DECOMP_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Container.h" /* For struct Container */

// Forward Declares

class Base;
class CitadelHeart;
class Creature;
class GCitadelHeartInfo;
class GTribeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DMesh;
class Living;
struct MapCoords;
class Town;
class WorshipSite;

class Citadel: public Container
{
public:
    CitadelHeart* heart; /* 0x30 */
    WorshipSite* worship_sites[0x6];
    LHListHead__CitadelPart part_list; /* 0x4c */
    uint32_t field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    uint32_t field_0x60;
    uint32_t field_0x64;
    uint32_t field_0x68;
    float influence;
    uint32_t field_0x70;
    uint32_t field_0x74;
    uint32_t field_0x78;
    Living* living;

    // Override methods

    // win1.41 00462ae0 mac 101b6d30 Citadel::_dt(void)
    virtual ~Citadel();
    // win1.41 00462b90 mac 101ba6a0 Citadel::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00462ad0 mac 101b6ff0 Citadel::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00463dc0 mac 101b71d0 Citadel::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00463b00 mac 101b7db0 Citadel::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00462ac0 mac 101b6fb0 Citadel::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00462a60 mac 101b6e50 Citadel::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00462a70 mac 101b6e90 Citadel::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // win1.41 00462a80 mac 101b6ed0 Citadel::GetOrigin(void)
    virtual uint32_t GetOrigin();
    // win1.41 004e40e0 mac 105e5f60 Citadel::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // win1.41 00462a90 mac 101b6f00 Citadel::IsSuitableForCreatureActivity(void)
    virtual uint32_t IsSuitableForCreatureActivity();
    // win1.41 004d1b50 mac 10242fd0 Citadel::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 00462aa0 mac 101b6f50 Citadel::GetText(void)
    virtual const char* GetText();
    // win1.41 00462ab0 mac 101b6f80 Citadel::IsCitadel(void)
    virtual uint32_t IsCitadel();

    // Static methods

    // win1.41 00463240 mac 101b9230 Citadel::CreateCitadel(MapCoords const &, GCitadelHeartInfo const *, unsigned char, float, float)
    static Citadel* CreateCitadel(MapCoords* coords, GCitadelHeartInfo* info, uint8_t param_3, float param_4, float param_5);

    // Non-virtual methods

    // win1.41 00463130 mac 101b9680 Citadel::AddTown(Town*)
    void* AddTown(Town* town);
    // win1.41 00463220 mac 101b9420 Citadel::FindOrCreateWorshipSite(GTribeInfo const *)
    WorshipSite* FindOrCreateWorshipSite(GTribeInfo* tribe_info);
};

#endif /* BW1_DECOMP_CITADEL_INCLUDED_H */
