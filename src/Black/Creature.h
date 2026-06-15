#ifndef BW1_DECOMP_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES, enum EFFECT_TYPE, enum IMPRESSIVE_TYPE, enum REACTION */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "CreatureHelp.h" /* For struct CreatureHelpStackEntry, struct CreatureHelpState */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */
#include "Living.h" /* For struct Living */
#include "MapCoords.h" /* For struct MapCoords */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
struct BookmarkGraphic;
struct Bubble;
class Citadel;
struct ControlHandUpdateInfo;
class CreatureBelief;
class CreatureMental;
class CreaturePhysical;
class CreaturePlan;
struct CreatureReceiveSpell;
class Dance;
struct EffectNumbers;
class EffectValues;
class GAlignment;
class GArena;
struct GCreatureInfo;
class GInterfaceStatus;
class GParticleContainer;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DCreature;
struct LH3DSmoke;
class LHOSFile;
struct LHPoint;
class LandscapeVortex;
class MobileWallHug;
class Object;
struct PSysProcessInfo;
struct PhysOb;
class PhysicsObject;
struct RPHolder;
class Reaction;
class Spell;

class Creature: public Living
{
public:
    char16_t name[0x40]; /* 0xe0 */
    CreaturePhysical* physical; /* 0x160 */
    CreatureMental* mind;
    GAlignment* alignment;
    uint32_t field_0x16c;
    uint32_t field_0x170;
    uint32_t field_0x174;
    uint32_t field_0x178;
    uint32_t field_0x17c;
    uint32_t field_0x180;
    uint32_t field_0x184;
    CreatureHelpState help_state;
    LHLinkedList__CreatureHelpStackEntry help_stack_entries[0x2a]; /* 0x220 */
    CreatureReceiveSpell* receive_spell; /* 0x370 */
    float field_0x374;
    float field_0x378;
    uint8_t field_0x37c;
    uint8_t field_0x37d;
    uint8_t field_0x37e;
    uint8_t field_0x37f;
    uint32_t field_0x380;
    uint32_t field_0x384;
    CreatureEmotionsForMusic emotions_for_music;
    uint32_t field_0x390[0xe];
    uint32_t field_0x3c8;
    uint32_t field_0x3cc;
    Creature* next; /* 0x3d0 */
    uint32_t field_0x3d4;
    MapCoords field_0x3d8;
    uint32_t field_0x3e4;
    uint32_t field_0x3e8;
    MapCoords field_0x3ec;
    uint8_t field_0x3f8;
    uint8_t field_0x3f9;
    uint8_t field_0x3fa;
    uint8_t field_0x3fb;
    float field_0x3fc;
    float field_0x400;
    uint8_t field_0x404;
    uint8_t field_0x405;
    uint8_t field_0x406;
    uint8_t field_0x407;
    CreatureSubActionAgenda sub_action_agenda;
    int field_0x1058;
    uint32_t field_0x105c;
    uint32_t field_0x1060;
    uint32_t field_0x1064;
    uint32_t field_0x1068;
    uint32_t field_0x106c;
    GPlayer* owner; /* 0x1070 */
    Dance* dance;
    uint32_t field_0x1078;
    GParticleContainer* particle_container_0x107c;
    GParticleContainer* particle_container_0x1080;
    uint32_t field_0x1084;
    uint32_t field_0x1088;
    uint32_t field_0x108c;
    uint32_t field_0x1090;
    uint32_t field_0x1094;
    uint32_t field_0x1098;
    LH3DSmoke* smoke;
    GArena* arena; /* 0x10a0 */
    uint32_t field_0x10a4;
    uint32_t field_0x10a8;
    uint32_t field_0x10ac;
    uint32_t field_0x10b0;
    uint32_t field_0x10b4;
    uint32_t field_0x10b8;
    uint32_t field_0x10bc;
    uint32_t field_0x10c0;
    uint8_t field_0x10c4[0x8];
    uint32_t field_0x10cc;
    uint32_t field_0x10d0;
    uint32_t field_0x10d4;
    uint8_t field_0x10d8[0x10];
    uint32_t field_0x10e8;
    uint32_t field_0x10ec;
    uint32_t field_0x10f0;
    uint32_t field_0x10f4;
    uint32_t field_0x10f8;
    uint32_t field_0x10fc;
    uint32_t field_0x1100;
    uint32_t field_0x1104;
    uint32_t field_0x1108;
    uint32_t field_0x110c;
    int field_0x1110;
    uint32_t field_0x1114;
    uint32_t field_0x1118;
    uint32_t field_0x111c;
    uint32_t field_0x1120;
    int game_turn;
    uint8_t field_0x1128[0x28];
    uint32_t field_0x1150;
    uint32_t field_0x1154;
    uint32_t field_0x1158;
    uint32_t field_0x115c;
    uint32_t field_0x1160;
    MapCoords field_0x1164;
    uint32_t field_0x1170[0x8];
    uint32_t field_0x1190;
    uint8_t field_0x1194[0x14];
    MapCoords field_0x11a8;
    uint32_t field_0x11b4;
    uint32_t field_0x11b8;
    uint32_t field_0x11bc;
    uint32_t field_0x11c0;
    uint32_t field_0x11c4;
    uint32_t field_0x11c8;
    MapCoords field_0x11cc;
    uint8_t field_0x11d8[0xc];
    GParticleContainer* particle_container_0x11e4;
    uint32_t field_0x11e8;
    BookmarkGraphic* bookmark_graphic;
    uint8_t field_0x11f0;
    uint8_t field_0x11f1;
    uint8_t field_0x11f2;
    uint8_t field_0x11f3;
    uint32_t field_0x11f4;
    uint32_t field_0x11f8;
    uint32_t field_0x11fc;
    MapCoords field_0x1200;
    uint32_t field_0x120c;
    uint32_t field_0x1210;
    MapCoords field_0x1214;
    uint32_t field_0x1220;
    uint32_t field_0x1224;
    uint8_t field_0x1228[0x40];
    int field_0x1268;
    uint32_t field_0x126c;
    uint32_t field_0x1270;
    uint32_t field_0x1274;
    uint32_t field_0x1278;
    Bubble* bubble;
    uint32_t field_0x1280;
    uint32_t field_0x1284;
    uint32_t field_0x1288;
    uint8_t field_0x128c[0x8];
    uint32_t field_0x1294;
    uint32_t field_0x1298;
    int field_0x129c;
    uint32_t field_0x12a0;
    uint32_t field_0x12a4;
    uint32_t field_0x12a8;
    uint8_t field_0x12ac;
    uint8_t field_0x12ad;
    uint8_t field_0x12ae;
    uint8_t field_0x12af;
    uint32_t field_0x12b0;
    uint32_t field_0x12b4;
    uint32_t field_0x12b8;
    uint32_t field_0x12bc;
    uint32_t field_0x12c0;
    uint32_t field_0x12c4;

    // Override methods

    // win1.41 00474100 mac 101de750 Creature::_dt(void)
    virtual ~Creature();
    // win1.41 00474f00 mac 101df130 Creature::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00473f20 mac 100a0db0 Creature::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00473f30 mac 101e2cc0 Creature::RemoveDance(void)
    virtual void RemoveDance();
    // win1.41 00474090 mac 101e32a0 Creature::IsCreature(Creature *)
    virtual bool IsCreature(Creature* param_1);
    // win1.41 00474080 mac inlined Creature::IsCreature_1(void)
    virtual bool IsCreature_1();
    // win1.41 004e4080 mac 105e6020 Creature::IsCreatureNotTooNear(Creature *)
    virtual bool IsCreatureNotTooNear(Creature* param_1);
    // win1.41 0047b1f0 mac 101d48a0 Creature::GetMaxAlignmentChangePerGameTurn(void)
    virtual float GetMaxAlignmentChangePerGameTurn();
    // win1.41 004f8350 mac inlined Creature::MaintainSpell(unsigned int, float)
    virtual void MaintainSpell(uint32_t param_1, float param_2);
    // win1.41 004f8750 mac 1028b0e0 Creature::UpdateSpellInfo(Spell *, PSysProcessInfo *)
    virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
    // win1.41 004792c0 mac 101d8510 Creature::GetRadius(void)
    virtual float GetRadius();
    // win1.41 00477f40 mac 101d9fc0 Creature::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 00474010 mac 101e3070 Creature::CastCreature(void)
    virtual Creature* CastCreature();
    // win1.41 004740d0 mac 101e3430 Creature::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0071bd50 mac 1050fcd0 Creature::GetSampleForAttack(void)
    virtual uint32_t GetSampleForAttack();
    // win1.41 004e5ff0 mac 1026b130 Creature::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 004e4ea0 mac 1026c9c0 Creature::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 004740c0 mac 101e33f0 Creature::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 004e6ab0 mac 1026aa90 Creature::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00473f70 mac 101e2dd0 Creature::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00477df0 mac 101da380 Creature::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // win1.41 004792d0 mac 101d84a0 Creature::GetCitadel(void)
    virtual Citadel* GetCitadel();
    // win1.41 0047b190 mac 101d4a30 Creature::GetScale(void)
    virtual float GetScale();
    // win1.41 0047b160 mac 101d4a80 Creature::SetScale(float)
    virtual void SetScale(float param_1);
    // win1.41 0047d810 mac 101cf1e0 Creature::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float param_1, int param_2);
    // win1.41 0047c630 mac 101d25d0 Creature::GetRunningSpeedInMetres(void)
    virtual float GetRunningSpeedInMetres();
    // win1.41 0047c640 mac 101d2580 Creature::GetDefaultSpeedInMetres(void)
    virtual float GetDefaultSpeedInMetres();
    // win1.41 0047de80 mac 101ce5d0 Creature::SetHeight(float)
    virtual void SetHeight(float param_1);
    // win1.41 004f8b30 mac 1028a9c0 Creature::GetPSysBeamTargetPos(LHPoint *)
    virtual void GetPSysBeamTargetPos(LHPoint* param_1);
    // win1.41 00477ac0 mac 101daa00 Creature::GetMovementDirection(LHPoint *)
    virtual void GetMovementDirection(LHPoint* param_1);
    // win1.41 00479e40 mac 101d6a50 Creature::IsMoving( const(void))
    virtual bool IsMoving();
    // win1.41 00477e10 mac 101da2c0 Creature::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // win1.41 0047b150 mac 101d4b00 Creature::GetImpressiveIntensity(IMPRESSIVE_TYPE)
    virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE param_1);
    // win1.41 0047b200 mac 101d4730 Creature::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // win1.41 004e4310 mac 105e5880 Creature::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // win1.41 00474020 mac 101e30a0 Creature::IsActivityObjectWhichCompassionAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
    // win1.41 00474030 mac 101e3100 Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
    // win1.41 004c5e50 mac 10231ab0 Creature::FalseFunction(void)
    virtual uint32_t FalseFunction();
    // win1.41 00473fd0 mac 101e2f50 Creature::IsSuitableForCreatureActivity(void)
    virtual uint32_t IsSuitableForCreatureActivity();
    // win1.41 00474050 mac 101e31b0 Creature::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 004e4280 mac 105e5900 Creature::CanBeAttackedByCreature(Creature *)
    virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
    // win1.41 004740b0 mac 101e33a0 Creature::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 00474070 mac 101e3250 Creature::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 00474060 mac 101e3200 Creature::CanBeBefriendedByCreature(Creature *)
    virtual uint32_t CanBeBefriendedByCreature(Creature* param_1);
    // win1.41 00474040 mac 101e3160 Creature::CanBeSleptNextToByCreature(Creature *)
    virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
    // win1.41 004e4cd0 mac 105e3b70 Creature::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 004e3f10 mac 105e6580 Creature::CanBeKissedByCreature(Creature *)
    virtual uint32_t CanBeKissedByCreature(Creature* param_1);
    // win1.41 004e3c70 mac 105e6d70 Creature::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 00473ff0 mac 101e2fe0 Creature::CanBeExaminedByCreature(Creature *)
    virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
    // win1.41 004740a0 mac 101e3320 Creature::CanBeFoughtByCreature(Creature *)
    virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
    // win1.41 004792f0 mac 101d83c0 Creature::IsDominantCreature(Creature *)
    virtual uint32_t IsDominantCreature(Creature* param_1);
    // win1.41 004e4430 mac 105e55b0 Creature::IsCreatureAvailableForJointActivity(Creature *)
    virtual uint32_t IsCreatureAvailableForJointActivity(Creature* param_1);
    // win1.41 004e4450 mac 105e5530 Creature::IsCreatureNotAvailableForJointActivity(Creature *)
    virtual uint32_t IsCreatureNotAvailableForJointActivity(Creature* param_1);
    // win1.41 004e45e0 mac 105e5000 Creature::IsCreatureWhoSeemsFriendly(Creature *)
    virtual uint32_t IsCreatureWhoSeemsFriendly(Creature* param_1);
    // win1.41 00473f80 mac 101e2e10 Creature::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1b30 mac 10243070 Creature::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 00477e30 mac 101da220 Creature::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
    virtual uint32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
    // win1.41 0063bad0 mac 103da330 Creature::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
    virtual void CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2);
    // win1.41 00477f50 mac 101d9f50 Creature::GetHeight(void)
    virtual float GetHeight();
    // win1.41 004794a0 mac 101d7fc0 Creature::IsReadyForNewScriptAction(void)
    virtual uint32_t IsReadyForNewScriptAction();
    // win1.41 0047d2c0 mac 101cfdf0 Creature::SetControlledByScript(int)
    virtual void SetControlledByScript(int param_1);
    // win1.41 0047d8f0 mac 101cef90 Creature::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 0047d940 mac 101cef30 Creature::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 0047c8b0 mac 101d10b0 Creature::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00477ec0 mac 101da1c0 Creature::GetFacingDirection(void)
    virtual float GetFacingDirection();
    // win1.41 004f6760 mac 10289e50 Creature::SetFocus(LHPoint const &)
    virtual void SetFocus(const LHPoint* param_1);
    // win1.41 00473f50 mac 101e2d40 Creature::IsReachable(void)
    virtual bool IsReachable();
    // win1.41 00479e50 mac 101d6990 Creature::MoveMapObject(MapCoords const &)
    virtual int MoveMapObject(const MapCoords* param_1);
    // win1.41 0047dd00 mac 101ce700 Creature::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // win1.41 0047de20 mac 101ce640 Creature::IncreaseLife(float)
    virtual void IncreaseLife(float param_1);
    // win1.41 00478c00 mac 101d8e40 Creature::FillInEffectDefenceMultiplier(EffectNumbers &)
    virtual void FillInEffectDefenceMultiplier(EffectNumbers* param_1);
    // win1.41 00478c80 mac 101d89d0 Creature::ApplyEffect(EffectValues &, int)
    virtual void ApplyEffect(EffectValues* param_1, int param_2);
    // win1.41 00476f70 mac 101dbeb0 Creature::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 00479020 mac 101d8950 Creature::ApplySingleEffect(EFFECT_TYPE, float, GameThing *, MapCoords const &)
    virtual void ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords* param_4);
    // win1.41 00517910 mac 100c9670 Creature::Draw(void)
    virtual void Draw();
    // win1.41 00472dc0 mac 101e16f0 Creature::ProcessState(void)
    virtual uint32_t ProcessState();
    // win1.41 00477ef0 mac 101da120 Creature::GetProjectileSpeed(void)
    virtual float GetProjectileSpeed();
    // win1.41 00473fe0 mac 101e2fa0 Creature::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 0047cd60 mac 101d06d0 Creature::GetWeight(void)
    virtual float GetWeight();
    // win1.41 004f8a10 mac 1028ac60 Creature::CanBeSuckedIntoVortex(LandscapeVortex *)
    virtual bool CanBeSuckedIntoVortex(LandscapeVortex* param_1);
    // win1.41 00476e10 mac 101dc300 Creature::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 00476e70 mac 101dc260 Creature::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00476eb0 mac 101dc160 Creature::IsReadyForNetworkUnfriendlyLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyLockedSelect();
    // win1.41 00476ec0 mac 101dc100 Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 00476ed0 mac 101dc060 Creature::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 00476f00 mac 101dbf90 Creature::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 00476f60 mac 101dbf40 Creature::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 00476e90 mac 101dc1c0 Creature::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00473f60 mac 101e2d80 Creature::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 0047a330 mac 101d6240 Creature::InterfaceValidToGiveObject(GInterfaceStatus *, Object *)
    virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 0047a320 mac 101d63d0 Creature::InterfaceGiveObject(GInterfaceStatus *, Object *)
    virtual uint32_t InterfaceGiveObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00476dc0 mac 101dc510 Creature::ValidToSelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 00476dd0 mac 101dc480 Creature::ValidToApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 004c6460 mac 10233f70 Creature::SelectFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 004c64d0 mac 10233ea0 Creature::ApplyFightThisToMapCoord(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 00476df0 mac 101dc3f0 Creature::ValidToFightThisToObject(GInterfaceStatus *, MapCoords const &)
    virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* param_1, const MapCoords* param_2);
    // win1.41 004c5fe0 mac 102345e0 Creature::FightThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t FightThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 0047b1e0 mac inlined Creature::CanBeDestroyedBySpell_1(Spell *)
    virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
    // win1.41 00479b80 mac 101d6f90 Creature::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 00479b90 mac 101d6db0 Creature::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 00479970 mac 101d72a0 Creature::GetBoundingSphere(LHPoint &, float &)
    virtual void GetBoundingSphere(LHPoint* param_1, float* param_2);
    // win1.41 00479d20 mac 101d6d20 Creature::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00479990 mac 101d6fd0 Creature::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00479d10 mac 101d6d70 Creature::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0047d4b0 mac 101cf930 Creature::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 0047d500 mac 101cf7f0 Creature::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 00477f00 mac 101da0d0 Creature::IsScary(void)
    virtual bool IsScary();
    // win1.41 00477ee0 mac 101da160 Creature::GetFacingPitch(void)
    virtual float GetFacingPitch();
    // win1.41 004770d0 mac 101dbbc0 Creature::SetHeadPos(MapCoords *)
    virtual void SetHeadPos(MapCoords* param_1);
    // win1.41 00477f70 mac 101d9d60 Creature::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00477860 mac 101dae90 Creature::GetNearestEdgeOfObject(Object *)
    virtual void GetNearestEdgeOfObject(Object* param_1);
    // win1.41 004753c0 mac 101de710 Creature::GetDestPos(void)
    virtual MapCoords* GetDestPos();
    // win1.41 004753d0 mac 101de690 Creature::GetFinalDestPos(MapCoords *)
    virtual MapCoords* GetFinalDestPos(MapCoords* param_1);
    // win1.41 004f0560 mac 1027a2e0 Creature::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // win1.41 0047b1a0 mac 101d49f0 Creature::GetAge(void)
    virtual uint32_t GetAge();
    // win1.41 0047b1b0 mac 101d49b0 Creature::SetAge(unsigned long)
    virtual void SetAge(uint32_t param_1);
    // win1.41 00473f00 mac inlined Creature::CallIntoAnimationFunction(VILLAGER_STATES)
    virtual int CallIntoAnimationFunction(VILLAGER_STATES param_1);
    // win1.41 00473f10 mac inlined Creature::CallOutofAnimationFunction(VILLAGER_STATES)
    virtual int CallOutofAnimationFunction(VILLAGER_STATES param_1);
    // win1.41 00473f40 mac inlined Creature::IsFinalState(VILLAGER_STATES)
    virtual bool IsFinalState(VILLAGER_STATES param_1);
    // win1.41 00473f90 mac inlined Creature::SetAnim__i(int)
    virtual void SetAnim__i(int param_1);
    // win1.41 00473ef0 mac 101e2be0 Creature::GetAnimId(void)
    virtual ANIM_LIST GetAnimId();
    // win1.41 00473fa0 mac inlined Creature::CallExitStateFunction(VILLAGER_STATES)
    virtual uint32_t CallExitStateFunction(VILLAGER_STATES param_1);
    // win1.41 00473fc0 mac inlined Creature::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t CallEntryStateFunction__UcUc(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 00473fb0 mac inlined Creature::CallEntryStateFunctionUc(VILLAGER_STATES)
    virtual uint32_t CallEntryStateFunction__Uc(VILLAGER_STATES param_1);
    // win1.41 0047c670 mac 101d2490 Creature::IsDancing(void)
    virtual bool IsDancing();
    // win1.41 004f2820 mac 1027db00 Creature::IsAvailableForReaction(REACTION)
    virtual bool IsAvailableForReaction(REACTION param_1);
    // win1.41 004f2780 mac 1027dca0 Creature::UpdateHowImpressed(Reaction *, int)
    virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
    // win1.41 004f2680 mac inlined Creature::AddReaction(Reaction *, VILLAGER_STATES)
    virtual void AddReaction(Reaction* param_1, VILLAGER_STATES param_2);
    // win1.41 004f26d0 mac 1027ddf0 Creature::StartReacting(REACTION, GameThingWithPos *, Reaction *)
    virtual void StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3);
    // win1.41 00477f30 mac 101da020 Creature::ResetStateAfterReacting(void)
    virtual void ResetStateAfterReacting();
    // win1.41 004f2b00 mac 1027d490 Creature::SetupFleeFromObject(GameThingWithPos *, Reaction *)
    virtual void SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2b40 mac 1027d3d0 Creature::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2ce0 mac 1027cef0 Creature::SetupReactToCreature(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2de0 mac 1027cd30 Creature::SetupReactToFood(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2e50 mac 1027cbf0 Creature::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f35a0 mac 1027bc30 Creature::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2f70 mac 1027c710 Creature::SetupReactToFire(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2ea0 mac 1027ca50 Creature::SetupReactToBall(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3090 mac 1027c690 Creature::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f36b0 mac 1027b920 Creature::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3820 mac 1027b720 Creature::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3930 mac 1027b440 Creature::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
    virtual void SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3a00 mac 1027b2e0 Creature::SetupReactToFight(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3a60 mac 1027b080 Creature::SetupReactToTeleport(GameThingWithPos *, Reaction *)
    virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2b80 mac 1027d2e0 Creature::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3b50 mac 1027af10 Creature::SetupReactToDeath(GameThingWithPos *, Reaction *)
    virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3b90 mac 1027ae30 Creature::SetupReactToFainting(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f3bd0 mac 1027ad40 Creature::SetupReactToConfused(GameThingWithPos *, Reaction *)
    virtual void SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004f2ab0 mac 1027d550 Creature::FleeFromSpellPriority(Reaction *, Reaction *)
    virtual uint8_t FleeFromSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2bf0 mac 1027d060 Creature::ReactToCreaturePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2d90 mac 1027ce00 Creature::ReactToFoodPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFoodPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2e20 mac 1027cc70 Creature::ReactToMagicTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3480 mac 1027bd70 Creature::ReactToFlyingObjectPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2e70 mac 1027cb30 Creature::ReactToBallPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2ee0 mac 1027c920 Creature::ReactToFirePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3620 mac 1027bac0 Creature::ReactToHandPickUpPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f37d0 mac 1027b830 Creature::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3870 mac 1027b560 Creature::ReactToObjectCrushedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3990 mac 1027b340 Creature::ReactToFightPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3a10 mac 1027b200 Creature::ReactToTeleportPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f2bc0 mac 1027d200 Creature::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f3b20 mac 1027afe0 Creature::ReactToDeathPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004f29c0 mac 1027d840 Creature::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 004f2a20 mac 1027d730 Creature::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 004f2a70 mac 1027d6b0 Creature::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 004f2a90 mac 1027d620 Creature::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);

    // Static methods

    // win1.41 00474a20 mac 101dfc60 Creature::Create(MapCoords const &, CreatureInfo const *, GPlayer *)
    static Creature* Create(const MapCoords* coords, const GCreatureInfo* info, GPlayer* player);
    // win1.41 00474b50 mac 101dfb90 Creature::CreateCreature(MapCoords const &, CreatureInfo const *, GPlayer *)
    static Creature* CreateCreature(const MapCoords* coords, const GCreatureInfo* info, GPlayer* player);

    // Constructors

    // win1.41 00474690 mac 101dfe30 Creature::Creature(void)
    Creature();

    // Non-virtual methods

    // win1.41 00475730 mac 101ddff0 Creature::FinishActionUnsuccessfully(char *, int, int)
    void FinishActionUnsuccessfully(char* param_1, int param_2, int param_3);
    // win1.41 00477850 mac 101daef0 Creature::GetCreature3D(void)
    LH3DCreature* GetCreature3D();
    // win1.41 0047c650 mac 101d2500 Creature::SetAnimationTimeModify(bool value)
    void SetAnimationTimeModify(bool value);
    // win1.41 0047c690 mac 101d2420 Creature::IsOnHomeTeam(void)
    bool IsOnHomeTeam();
    // win1.41 004c4450 mac 10230ac0 Creature::ForceActivityAndForceAction(CREATURE_DESIRES, CreatureBelief *, CREATURE_ACTION, CreatureBelief *, CreatureBelief *, int, int)
    void ForceActivityAndForceAction(CREATURE_DESIRES param_1, CreatureBelief* param_2, CREATURE_ACTION param_3, CreatureBelief* param_4, CreatureBelief* param_5, int param_6, int param_7);
    // win1.41 004c44b0 mac 10230950 Creature::ForceActivityAndForceAction(CreaturePlan &, int, int)
    void ForceActivityAndForceAction(CreaturePlan* param_1, int param_2, int param_3);
    // win1.41 004ea670 mac 10279d20 Creature::DecideOnNewPlan(CreaturePlan &)
    void DecideOnNewPlan(CreaturePlan* param_1);
    // win1.41 004f8b80 mac 1028a7b0 Creature::ProcessSpells(void)
    void ProcessSpells();
    // win1.41 004ffdd0 mac 102a0fc0 Creature::SubStatePerformPickUpParameter(CreatureBelief *)
    uint32_t SubStatePerformPickUpParameter(CreatureBelief* param_1);
    // win1.41 00501d10 mac 1029da30 Creature::SubStatePerformAddVillagersToDance(void)
    bool SubStatePerformAddVillagersToDance();
};

class Creed: public MobileObject
{
public:

    // Override methods

    // win1.41 0050b370 mac 100c01e0 Creed::_dt(void)
    virtual ~Creed();
    // win1.41 0050b3d0 mac 100c0600 Creed::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0050b360 mac 100c0320 Creed::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0050b4e0 mac 100c03b0 Creed::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0050b4c0 mac 100c0410 Creed::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0050b350 mac 100c02f0 Creed::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0050b4a0 mac 100c0470 Creed::SetScale(float)
    virtual void SetScale(float param_1);
    // win1.41 0050b500 mac 100c0360 Creed::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 0050b420 mac 100c04d0 Creed::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 005186a0 mac 100c8cf0 Creed::Draw(void)
    virtual void Draw();
    // win1.41 005186d0 mac 100c8c40 Creed::DrawOutOfMap(bool)
    virtual void DrawOutOfMap(bool param_1);
    // win1.41 0050b3a0 mac 100c06a0 Creed::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0050b330 mac 100c0270 Creed::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 0050b340 mac 100c02b0 Creed::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
