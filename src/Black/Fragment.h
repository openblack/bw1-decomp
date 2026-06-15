#ifndef BW1_DECOMP_FRAGMENT_INCLUDED_H
#define BW1_DECOMP_FRAGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE, enum SOUND_COLLISION_TYPE */

#include "Rock.h" /* For struct Rock */

// Forward Declares

class Base;
class Creature;
struct FragMesh;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;

class Fragment: public Rock
{
public:
    FragMesh* frag_mesh; /* 0x94 */
    uint32_t field_0x98;
    uint32_t field_0x9c;
    uint32_t field_0xa0;
    uint32_t field_0xa4;

    // Override methods

    // win1.41 0076e9a0 mac 1015aa20 Fragment::_dt(void)
    virtual ~Fragment();
    // win1.41 0076ea70 mac 1015c0b0 Fragment::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0076e990 mac 1015ac80 Fragment::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0076f6a0 mac 1015afa0 Fragment::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0076f5d0 mac 1015b130 Fragment::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0076e980 mac 1015ac40 Fragment::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0076f7b0 mac 1015af50 Fragment::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 0076e930 mac 1015aab0 Fragment::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 0076e960 mac 1015aba0 Fragment::CanBeThrownByPlayer(void)
    virtual uint32_t CanBeThrownByPlayer();
    // win1.41 0076f7c0 mac 1015aef0 Fragment::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 0076ec00 mac 1015be10 Fragment::Draw(void)
    virtual void Draw();
    // win1.41 0076e940 mac 1015ab00 Fragment::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 0076e950 mac 1015ab50 Fragment::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 0076ec40 mac 1015bdd0 Fragment::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 0076ec50 mac 1015b540 Fragment::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 0076f3f0 mac 1015b270 Fragment::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 0076f3d0 mac 1015b4f0 Fragment::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0076f3e0 mac 1015b4a0 Fragment::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 0076f7f0 mac 1015ae00 Fragment::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0076f7d0 mac 1015aeb0 Fragment::GetCollideSoundType(void)
    virtual SOUND_COLLISION_TYPE GetCollideSoundType();
    // win1.41 0076e970 mac 1015abe0 Fragment::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
    // win1.41 0076f7e0 mac 1015ae70 Fragment::ShouldFootpathsGoRound(void)
    virtual bool ShouldFootpathsGoRound();

    // Constructors

    // win1.41 0076e900 mac 1015c440 Fragment::Fragment(void)
    Fragment();
    // win1.41 0076e9d0 mac 1015c250 Fragment::Fragment(MapCoords const &, FragMesh *, GPlayer *)
    Fragment(MapCoords* coords, FragMesh* frag_mesh, GPlayer* player);
};

#endif /* BW1_DECOMP_FRAGMENT_INCLUDED_H */
