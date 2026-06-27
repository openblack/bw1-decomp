#ifndef BW1_DECOMP_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Citadel;
class Creature;
class GCitadelPartInfo;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;
class PhysicsObject;
class PlannedMultiMapFixed;
class Spell;

class CitadelPart: public MultiMapFixed
{
public:
    float field_0x7c;
    Citadel* citadel; /* 0x80 */
    CitadelPart* next;
    GameThing* game_thing_0x88;

    // Override methods

    // BW1W120 00469500 BW1M100 101c3520 CitadelPart::_dt(void)
    virtual ~CitadelPart();
    // BW1W120 00469540 BW1M100 101c3320 CitadelPart::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00469750 BW1M100 10075f70 CitadelPart::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 004694e0 BW1M100 101c37f0 CitadelPart::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 004698b0 BW1M100 101c2780 CitadelPart::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // BW1W120 00469830 BW1M100 101c2870 CitadelPart::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 004694d0 BW1M100 101c37b0 CitadelPart::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00464aa0 BW1M100 101c2460 CitadelPart::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 00464a80 BW1M100 1008aa80 CitadelPart::GetCitadel(void)
    virtual Citadel* GetCitadel();
    // BW1W120 00464b00 BW1M100 inlined CitadelPart::IsCitadelPart_0(void)
    virtual uint32_t IsCitadelPart_0();
    // BW1W120 00464b10 BW1M100 inlined CitadelPart::IsCitadelPart_1(Creature *)
    virtual uint32_t IsCitadelPart_1(Creature* param_1);
    // BW1W120 00469780 BW1M100 101c2a50 CitadelPart::GetActualObjectToEffect(GPlayer *, bool)
    virtual void* GetActualObjectToEffect(GPlayer* param_1, bool param_2);
    // BW1W120 004695c0 BW1M100 101c32d0 CitadelPart::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // BW1W120 00469490 BW1M100 101ba510 CitadelPart::Process(void)
    virtual uint32_t Process();
    // BW1W120 00464a90 BW1M100 101c2400 CitadelPart::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00469760 BW1M100 101c2b70 CitadelPart::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 004694b0 BW1M100 101c3720 CitadelPart::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 004695d0 BW1M100 inlined CitadelPart::CanBeDestroyedBySpell_1(Spell *)
    virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
    // BW1W120 004697f0 BW1M100 101c2970 CitadelPart::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 004694c0 BW1M100 101c3760 CitadelPart::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // BW1W120 004694f0 BW1M100 101c3830 CitadelPart::ShouldFootpathsGoRound(void)
    virtual bool ShouldFootpathsGoRound();
    // BW1W120 00464ab0 BW1M100 101c08e0 CitadelPart::IsRepaired(void)
    virtual bool IsRepaired();
    // BW1W120 00464ad0 BW1M100 10081060 CitadelPart::IsBuilt(void)
    virtual bool IsBuilt();
    // BW1W120 004694a0 BW1M100 101b91f0 CitadelPart::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();

    // Constructors

    // BW1W120 inlined BW1M100 1030de40 CitadelPart::CitadelPart(void)
    CitadelPart();
    // BW1W120 004693f0 BW1M100 101c35b0 CitadelPart::CitadelPart(MapCoords const &, GCitadelPartInfo const *, Citadel *, float, float, float, int)
    CitadelPart(MapCoords* coords, GCitadelPartInfo* info, Citadel* citadel, float y_angle, float scale, float param_6, int param_7);
};

#endif /* BW1_DECOMP_CITADEL_PART_INCLUDED_H */
