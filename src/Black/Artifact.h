#ifndef BW1_DECOMP_ARTIFACT_INCLUDED_H
#define BW1_DECOMP_ARTIFACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class Town;
class Villager;

class TownArtifact: public GameThing
{
public:
    uint8_t field_0x14[0x2c];

    // Override methods

    // BW1W120 00425d80 BW1M100 100adf60 TownArtifact::_dt(void)
    virtual ~TownArtifact();
    // BW1W120 00425e70 BW1M100 100af950 TownArtifact::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00425d40 BW1M100 100adff0 TownArtifact::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00425d50 BW1M100 100ae030 TownArtifact::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 00425d60 BW1M100 100ae070 TownArtifact::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 004262d0 BW1M100 100aedc0 TownArtifact::GetVillagerActivityDesire(Villager *)
    virtual float GetVillagerActivityDesire(Villager* param_1);
    // BW1W120 00426470 BW1M100 100aeac0 TownArtifact::SetVillagerActivity(Villager *)
    virtual uint32_t SetVillagerActivity(Villager* param_1);
    // BW1W120 004266c0 BW1M100 100ae750 TownArtifact::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 004265a0 BW1M100 100ae900 TownArtifact::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00425d70 BW1M100 100ae0b0 TownArtifact::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_ARTIFACT_INCLUDED_H */
