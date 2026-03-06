#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

#ifdef __cplusplus

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

// win1.41 00c02408 mac inlined MagicFireBall::`RTTI Type Descriptor'
// win1.41 009b3b20 mac inlined MagicFireBall::`RTTI Base Class Descriptor'
// win1.41 009b3b38 mac inlined MagicFireBall::`RTTI Base Class Array'
// win1.41 009b3b50 mac inlined MagicFireBall::`RTTI Class Hierarchy Descriptor'
// win1.41 00935958 mac 109afc28 MagicFireBall::`RTTI Complete Object Locator'
// win1.41 0093595c mac 109afc30 MagicFireBall::`vftable'
class MagicFireBall: public Object
{
public:
    uint32_t field_0x54;
    bool field_0x58;
    uint32_t field_0x5c;

    // Override methods

    // win1.41 00682b50 mac 103fca00 MagicFireBall::_dt(void)
    virtual ~MagicFireBall();
    // win1.41 00682c30 mac 103fc750 MagicFireBall::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00682bf0 mac 103fc970 MagicFireBall::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00682d20 mac 103fc6b0 MagicFireBall::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 00682b40 mac 103fd410 MagicFireBall::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00683320 mac 103fb710 MagicFireBall::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006832b0 mac 103fb800 MagicFireBall::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00682b30 mac 103fd3d0 MagicFireBall::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00682a50 mac 103fcf70 MagicFireBall::IsMagicFireBall(void)
    virtual uint32_t IsMagicFireBall();
    // win1.41 00682a80 mac 103fd050 MagicFireBall::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 00682a90 mac 103fd0a0 MagicFireBall::CanBeSetOnFire(Creature *)
    virtual uint32_t CanBeSetOnFire(Creature* param_1);
    // win1.41 00682aa0 mac 103fd0f0 MagicFireBall::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 00682ab0 mac 103fd140 MagicFireBall::CanBeThrownByCreature(Creature *)
    virtual uint32_t CanBeThrownByCreature(Creature* param_1);
    // win1.41 00682ac0 mac 103fd190 MagicFireBall::CanBePutInAStoragePit(Creature *)
    virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
    // win1.41 00682ad0 mac 103fd1e0 MagicFireBall::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 00682ae0 mac 103fd230 MagicFireBall::CanBeStonedAndEatenByCreature(Creature *)
    virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
    // win1.41 00682af0 mac 103fd290 MagicFireBall::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 00682b00 mac 103fd2e0 MagicFireBall::CanBeFoughtByCreature(Creature *)
    virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
    // win1.41 00682b10 mac 103fd330 MagicFireBall::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 00682d30 mac 103fc650 MagicFireBall::GetHeight(void)
    virtual float GetHeight();
    // win1.41 00682d10 mac 103fc710 MagicFireBall::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00682d40 mac 103fc580 MagicFireBall::GetHeatCapacity(void)
    virtual float GetHeatCapacity();
    // win1.41 00682d90 mac 103fc520 MagicFireBall::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
    virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
    // win1.41 00682db0 mac 103fc4a0 MagicFireBall::GetRainCoolingMultiplier(void)
    virtual float GetRainCoolingMultiplier();
    // win1.41 00682f20 mac 103fc010 MagicFireBall::Draw(void)
    virtual void Draw();
    // win1.41 00682dd0 mac 103fc3d0 MagicFireBall::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00682e80 mac 103fc040 MagicFireBall::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00682a40 mac 103fcf30 MagicFireBall::IsTuggable(void)
    virtual uint32_t IsTuggable();
    // win1.41 00682e40 mac 103fc2d0 MagicFireBall::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00682e50 mac 103fc190 MagicFireBall::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 00682a60 mac 103fcfb0 MagicFireBall::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00682a70 mac 103fd000 MagicFireBall::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00682b20 mac 103fd380 MagicFireBall::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Constructors

    // win1.41 00682a20 mac 103fca90 MagicFireBall::MagicFireBall(void)
    MagicFireBall();
};

#else // __cplusplus

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;

struct MagicFireBall
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  bool field_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct MagicFireBall) == 0x60, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02408 mac inlined MagicFireBall::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13MagicFireBall asm("??_R0?AVMagicFireBall@@@8");
// win1.41 009b3b20 mac inlined MagicFireBall::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13MagicFireBall asm("??_R1A@?0A@A@MagicFireBall@@8");
// win1.41 009b3b38 mac inlined MagicFireBall::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13MagicFireBall asm("??_R2MagicFireBall@@8");
// win1.41 009b3b50 mac inlined MagicFireBall::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13MagicFireBall asm("??_R3MagicFireBall@@8");
// win1.41 00935958 mac 109afc28 MagicFireBall::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13MagicFireBall asm("??_R4MagicFireBall@@6B@");
// win1.41 0093595c mac 109afc30 MagicFireBall::`vftable'
extern const struct ObjectVftable __vt__13MagicFireBall asm("??_7MagicFireBall@@6B@");

// Constructors

// win1.41 00682a20 mac 103fca90 MagicFireBall::MagicFireBall(void)
struct MagicFireBall* __fastcall __ct__13MagicFireBallFv(struct MagicFireBall* this) asm("??0MagicFireBall@@QAE@XZ");

// Override methods

// win1.41 00682b50 mac 103fca00 MagicFireBall::_dt(void)
void __fastcall __dt__13MagicFireBallFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMagicFireBall@@UAEPAXI@Z");
// win1.41 00682c30 mac 103fc750 MagicFireBall::ToBeDeleted(int)
void __fastcall ToBeDeleted__13MagicFireBallFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@MagicFireBall@@UAEXH@Z");
// win1.41 00682bf0 mac 103fc970 MagicFireBall::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__13MagicFireBallFv(struct GameThing* this) asm("?GetPlayer@MagicFireBall@@UAEPAVGPlayer@@XZ");
// win1.41 00682d20 mac 103fc6b0 MagicFireBall::Get2DRadius(void)
float __fastcall Get2DRadius__13MagicFireBallFv(struct GameThing* this) asm("?Get2DRadius@MagicFireBall@@UAEMXZ");
// win1.41 00682b40 mac 103fd410 MagicFireBall::GetDebugText(void)
char* __fastcall GetDebugText__13MagicFireBallFv(struct GameThing* this) asm("?GetDebugText@MagicFireBall@@UAEPADXZ");
// win1.41 00683320 mac 103fb710 MagicFireBall::Load(GameOSFile &)
uint32_t __fastcall Load__13MagicFireBallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MagicFireBall@@UAEIAAVGameOSFile@@@Z");
// win1.41 006832b0 mac 103fb800 MagicFireBall::Save(GameOSFile &)
uint32_t __fastcall Save__13MagicFireBallFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MagicFireBall@@UAEIAAVGameOSFile@@@Z");
// win1.41 00682b30 mac 103fd3d0 MagicFireBall::GetSaveType(void)
uint32_t __fastcall GetSaveType__13MagicFireBallFv(struct GameThing* this) asm("?GetSaveType@MagicFireBall@@UAEIXZ");
// win1.41 00682a50 mac 103fcf70 MagicFireBall::IsMagicFireBall(void)
uint32_t __fastcall IsMagicFireBall__13MagicFireBallFv(struct GameThingWithPos* this) asm("?IsMagicFireBall@MagicFireBall@@UAEIXZ");
// win1.41 00682a80 mac 103fd050 MagicFireBall::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682a90 mac 103fd0a0 MagicFireBall::CanBeSetOnFire(Creature *)
uint32_t __fastcall CanBeSetOnFire__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeSetOnFire@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682aa0 mac 103fd0f0 MagicFireBall::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682ab0 mac 103fd140 MagicFireBall::CanBeThrownByCreature(Creature *)
uint32_t __fastcall CanBeThrownByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682ac0 mac 103fd190 MagicFireBall::CanBePutInAStoragePit(Creature *)
uint32_t __fastcall CanBePutInAStoragePit__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePutInAStoragePit@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682ad0 mac 103fd1e0 MagicFireBall::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682ae0 mac 103fd230 MagicFireBall::CanBeStonedAndEatenByCreature(Creature *)
uint32_t __fastcall CanBeStonedAndEatenByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStonedAndEatenByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682af0 mac 103fd290 MagicFireBall::CanBeExaminedByCreature(Creature *)
uint32_t __fastcall CanBeExaminedByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeExaminedByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682b00 mac 103fd2e0 MagicFireBall::CanBeFoughtByCreature(Creature *)
uint32_t __fastcall CanBeFoughtByCreature__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFoughtByCreature@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682b10 mac 103fd330 MagicFireBall::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__13MagicFireBallFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@MagicFireBall@@UAEIPAVCreature@@@Z");
// win1.41 00682d30 mac 103fc650 MagicFireBall::GetHeight(void)
float __fastcall GetHeight__13MagicFireBallFv(struct GameThingWithPos* this) asm("?GetHeight@MagicFireBall@@UAEMXZ");
// win1.41 00682d10 mac 103fc710 MagicFireBall::InsertMapObject(void)
void __fastcall InsertMapObject__13MagicFireBallFv(struct Object* this) asm("?InsertMapObject@MagicFireBall@@UAEXXZ");
// win1.41 00682d40 mac 103fc580 MagicFireBall::GetHeatCapacity(void)
float __fastcall GetHeatCapacity__13MagicFireBallFv(struct Object* this) asm("?GetHeatCapacity@MagicFireBall@@UAEMXZ");
// win1.41 00682d90 mac 103fc520 MagicFireBall::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
void __fastcall GetFireGPHXDrawn__13MagicFireBallFPbPbPbPb(struct Object* this, const void* edx, bool* param_1, bool* param_2, bool* param_3, bool* param_4) asm("?GetFireGPHXDrawn@MagicFireBall@@UAEXPA_N000@Z");
// win1.41 00682db0 mac 103fc4a0 MagicFireBall::GetRainCoolingMultiplier(void)
float __fastcall GetRainCoolingMultiplier__13MagicFireBallFv(struct Object* this) asm("?GetRainCoolingMultiplier@MagicFireBall@@UAEMXZ");
// win1.41 00682f20 mac 103fc010 MagicFireBall::Draw(void)
void __fastcall Draw__13MagicFireBallFv(struct Object* this) asm("?Draw@MagicFireBall@@UAEXXZ");
// win1.41 00682dd0 mac 103fc3d0 MagicFireBall::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__13MagicFireBallFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@MagicFireBall@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00682e80 mac 103fc040 MagicFireBall::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__13MagicFireBallFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@MagicFireBall@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00682a40 mac 103fcf30 MagicFireBall::IsTuggable(void)
uint32_t __fastcall IsTuggable__13MagicFireBallFv(struct Object* this) asm("?IsTuggable@MagicFireBall@@UAEIXZ");
// win1.41 00682e40 mac 103fc2d0 MagicFireBall::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__13MagicFireBallFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@MagicFireBall@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00682e50 mac 103fc190 MagicFireBall::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__13MagicFireBallFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@MagicFireBall@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00682a60 mac 103fcfb0 MagicFireBall::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__13MagicFireBallFv(struct Object* this) asm("?InteractsWithPhysicsObjects@MagicFireBall@@UAE_NXZ");
// win1.41 00682a70 mac 103fd000 MagicFireBall::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__13MagicFireBallFv(struct Object* this) asm("?CanBecomeAPhysicsObject@MagicFireBall@@UAE_NXZ");
// win1.41 00682b20 mac 103fd380 MagicFireBall::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__13MagicFireBallFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@MagicFireBall@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(MagicFireBall);

#endif // __cplusplus

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H */
