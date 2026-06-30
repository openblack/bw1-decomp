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
struct GFlockInfo;
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

    // BW1W120 0052f920 BW1M100 100e3420 Flock::_dt(void)
    virtual ~Flock();
    // BW1W120 0052ffb0 BW1M100 100e5630 Flock::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0052f870 BW1M100 100e34e0 Flock::GetTown(void)
    virtual Town* GetTown();
    // BW1W120 0052f910 BW1M100 100e37a0 Flock::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00530930 BW1M100 100e3880 Flock::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 005305a0 BW1M100 100e40b0 Flock::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0052f900 BW1M100 100e3770 Flock::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0052f8a0 BW1M100 100e3580 Flock::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 0052f8b0 BW1M100 100e35c0 Flock::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // BW1W120 0052f8d0 BW1M100 100e3650 Flock::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // BW1W120 0052f8e0 BW1M100 100e36b0 Flock::IsActivityObjectWhichCompassionAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
    // BW1W120 0052f8f0 BW1M100 100e3710 Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
    // BW1W120 0052f8c0 BW1M100 100e3600 Flock::IsSuitableForCreatureActivity(void)
    virtual uint32_t IsSuitableForCreatureActivity();
    // BW1W120 0052f860 BW1M100 100e34b0 Flock::IsFlock( const(void))
    virtual uint32_t IsFlock();
    // BW1W120 0052f880 BW1M100 100e3510 Flock::IsScriptContainer( const(void))
    virtual uint32_t IsScriptContainer();
    // BW1W120 0052f890 BW1M100 100e3550 Flock::GetText(void)
    virtual const char* GetText();
    // BW1W120 00530490 BW1M100 100e4a70 Flock::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();

    // Constructors

    // BW1W120 0052f780 BW1M100 100e6ec0 Flock::Flock(MapCoords const &, GFlockInfo const *, GPlayer *, unsigned long)
    Flock(const MapCoords& coords, const GFlockInfo* info, GPlayer* player, uint32_t param_4);
    // BW1W120 100e6be0 BW1M100 0052f950 Flock::Flock(Living*)
    Flock(Living* param_1);

    // Non-virtual methods

    // BW1W120 0052fc20 BW1M100 100e6220 Flock::SetDomainCentrePos(MapCoords const &)
    void SetDomainCentrePos(const MapCoords* param_1);
    // BW1W120 00530570 BW1M100 100684b0 Flock::GetFlockPos(void)
    MapCoords* GetFlockPos();
};

#endif /* BW1_DECOMP_FLOCK_INCLUDED_H */
