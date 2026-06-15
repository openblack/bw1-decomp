#ifndef BW1_DECOMP_FLOCK_INCLUDED_H
#define BW1_DECOMP_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "Container.h" /* For struct Container */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class CitadelHeart;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct LivingDLList;
class Town;

class Flock: public Container
{
public:
    uint32_t field_0x30;
    uint32_t field_0x34;
    CitadelHeart* citadel_heart;
    LivingDLList* members;
    LivingDLList* leader; /* 0x40 */
    LivingDLList* field_0x44;
    int field_0x48;
    uint32_t field_0x4c;
    uint16_t domain_radius; /* 0x50 */
    uint16_t field_0x52;
    uint32_t field_0x54;
    uint32_t field_0x58;
    uint32_t field_0x5c;
    MapCoords field_0x60;
    MapCoords field_0x6c;
    uint32_t field_0x78;
    uint32_t field_0x7c;
    uint32_t field_0x80;
    uint32_t field_0x84;
    uint32_t field_0x88;
    uint32_t field_0x8c;

    // Override methods

    // win1.41 0052f920 mac 100e3420 Flock::_dt(void)
    virtual ~Flock();
    // win1.41 0052ffb0 mac 100e5630 Flock::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0052f870 mac 100e34e0 Flock::GetTown(void)
    virtual Town* GetTown();
    // win1.41 0052f910 mac 100e37a0 Flock::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00530930 mac 100e3880 Flock::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005305a0 mac 100e40b0 Flock::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0052f900 mac 100e3770 Flock::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0052f8a0 mac 100e3580 Flock::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 0052f8b0 mac 100e35c0 Flock::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // win1.41 0052f8d0 mac 100e3650 Flock::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // win1.41 0052f8e0 mac 100e36b0 Flock::IsActivityObjectWhichCompassionAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
    // win1.41 0052f8f0 mac 100e3710 Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
    // win1.41 0052f8c0 mac 100e3600 Flock::IsSuitableForCreatureActivity(void)
    virtual uint32_t IsSuitableForCreatureActivity();
    // win1.41 0052f860 mac 100e34b0 Flock::IsFlock( const(void))
    virtual uint32_t IsFlock();
    // win1.41 0052f880 mac 100e3510 Flock::IsScriptContainer( const(void))
    virtual uint32_t IsScriptContainer();
    // win1.41 0052f890 mac 100e3550 Flock::GetText(void)
    virtual const char* GetText();
    // win1.41 00530490 mac 100e4a70 Flock::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();

    // Constructors

    // win1.41 0052f780 mac 100e6ec0 Flock::Flock(MapCoords const &, GFlockInfo const *, GPlayer *, unsigned long)
    Flock(MapCoords* coords, GFlockInfo* info, GPlayer* player, uint32_t param_4);
    // win1.41 100e6be0 mac 0052f950 Flock::Flock(Living*)
    Flock(Living* param_1);

    // Non-virtual methods

    // win1.41 0052fc20 mac 100e6220 Flock::SetDomainCentrePos(MapCoords const &)
    void SetDomainCentrePos(const MapCoords* param_1);
    // win1.41 00530570 mac 100684b0 Flock::GetFlockPos(void)
    MapCoords* GetFlockPos();
};

#endif /* BW1_DECOMP_FLOCK_INCLUDED_H */
