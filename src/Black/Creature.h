#ifndef BW1_DECOMP_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/AllMeshes.h>     /* For enum ANIM_LIST */
#include <chlasm/ScriptEnums.h>   /* For enum SCRIPT_OBJECT_TYPE */
#include <chlasm/CreatureEnum.h>  /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>          /* For enum CREATURE_DESIRES, enum EFFECT_TYPE, enum IMPRESSIVE_TYPE, enum REACTION */
#include <chlasm/GStates.h>       /* For enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <re_common.h>                          /* For bool32_t */

#include "CreatureHelp.h"      /* For struct CreatureHelpStackEntry, struct CreatureHelpState */
#include "CreatureSubAction.h" /* For struct CreatureSubActionAgenda */
#include "Living.h"            /* For struct Living */
#include "MapCoords.h"         /* For struct MapCoords */
#include "MobileObject.h"      /* For struct MobileObject */

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

struct CreatureEmotionsForMusic
{
	uint32_t field_0x0;
	uint32_t field_0x4;
};

class Creature : public Living
{
public:
	static void DrawLeashInfo(); // 004cefb0
	// BW1W120 004e70c0 BW1M119 0126e740
	void Save3D(char* path);
	// BW1W120 0047d830 BW1M119 011d6c10
	static void OnClearMap();
	// BW1W120 00c5fcf8 BW1M119 01a7e57c
	static LHLinkedList<Creature*> CreatureList;

	char16_t                              name[0x40]; /* 0xe0 */
	CreaturePhysical*                     physical;   /* 0x160 */
	CreatureMental*                       mind;
	GAlignment*                           alignment;
	uint32_t                              field_0x16c;
	uint32_t                              field_0x170;
	uint32_t                              field_0x174;
	uint32_t                              field_0x178;
	uint32_t                              field_0x17c;
	uint32_t                              field_0x180;
	uint32_t                              field_0x184;
	CreatureHelpState                     HelpState;
	LHLinkedList<CreatureHelpStackEntry*> HelpStackEntries[0x2a]; /* 0x220 */
	CreatureReceiveSpell*                 ReceiveSpell;           /* 0x370 */
	float                                 field_0x374;
	float                                 field_0x378;
	uint8_t                               field_0x37c;
	uint8_t                               field_0x37d;
	uint8_t                               field_0x37e;
	uint8_t                               field_0x37f;
	uint32_t                              field_0x380;
	uint32_t                              field_0x384;
	CreatureEmotionsForMusic              EmotionsForMusic;
	uint32_t                              field_0x390[0xe];
	uint32_t                              field_0x3c8;
	uint32_t                              field_0x3cc;
	Creature*                             next; /* 0x3d0 */
	uint32_t                              field_0x3d4;
	MapCoords                             field_0x3d8;
	uint32_t                              field_0x3e4;
	uint32_t                              field_0x3e8;
	MapCoords                             field_0x3ec;
	uint8_t                               field_0x3f8;
	uint8_t                               field_0x3f9;
	uint8_t                               field_0x3fa;
	uint8_t                               field_0x3fb;
	float                                 field_0x3fc;
	float                                 field_0x400;
	uint8_t                               field_0x404;
	uint8_t                               field_0x405;
	uint8_t                               field_0x406;
	uint8_t                               field_0x407;
	CreatureSubActionAgenda               SubActionAgenda;
	int                                   field_0x1058;
	uint32_t                              field_0x105c;
	uint32_t                              field_0x1060;
	uint32_t                              field_0x1064;
	uint32_t                              field_0x1068;
	uint32_t                              field_0x106c;
	GPlayer*                              owner; /* 0x1070 */
	Dance*                                dance;
	uint32_t                              field_0x1078;
	GParticleContainer*                   ParticleContainer0x107c;
	GParticleContainer*                   ParticleContainer0x1080;
	uint32_t                              field_0x1084;
	uint32_t                              field_0x1088;
	uint32_t                              field_0x108c;
	uint32_t                              field_0x1090;
	uint32_t                              field_0x1094;
	uint32_t                              field_0x1098;
	LH3DSmoke*                            smoke;
	GArena*                               arena; /* 0x10a0 */
	uint32_t                              field_0x10a4;
	uint32_t                              field_0x10a8;
	uint32_t                              field_0x10ac;
	uint32_t                              field_0x10b0;
	uint32_t                              field_0x10b4;
	uint32_t                              field_0x10b8;
	uint32_t                              field_0x10bc;
	uint32_t                              field_0x10c0;
	uint8_t                               field_0x10c4[0x8];
	uint32_t                              field_0x10cc;
	uint32_t                              field_0x10d0;
	uint32_t                              field_0x10d4;
	uint8_t                               field_0x10d8[0x10];
	uint32_t                              field_0x10e8;
	uint32_t                              field_0x10ec;
	uint32_t                              field_0x10f0;
	uint32_t                              field_0x10f4;
	uint32_t                              field_0x10f8;
	uint32_t                              field_0x10fc;
	uint32_t                              field_0x1100;
	uint32_t                              field_0x1104;
	uint32_t                              field_0x1108;
	uint32_t                              field_0x110c;
	int                                   field_0x1110;
	uint32_t                              field_0x1114;
	uint32_t                              field_0x1118;
	uint32_t                              field_0x111c;
	uint32_t                              field_0x1120;
	int                                   GameTurn;
	uint8_t                               field_0x1128[0x28];
	uint32_t                              field_0x1150;
	uint32_t                              field_0x1154;
	uint32_t                              field_0x1158;
	uint32_t                              field_0x115c;
	uint32_t                              field_0x1160;
	MapCoords                             field_0x1164;
	uint32_t                              field_0x1170[0x8];
	uint32_t                              field_0x1190;
	uint8_t                               field_0x1194[0x14];
	MapCoords                             field_0x11a8;
	uint32_t                              field_0x11b4;
	uint32_t                              field_0x11b8;
	uint32_t                              field_0x11bc;
	uint32_t                              field_0x11c0;
	uint32_t                              field_0x11c4;
	uint32_t                              field_0x11c8;
	MapCoords                             field_0x11cc;
	uint8_t                               field_0x11d8[0xc];
	GParticleContainer*                   ParticleContainer0x11e4;
	uint32_t                              field_0x11e8;
	BookmarkGraphic*                      bookmark_graphic;
	uint8_t                               field_0x11f0;
	uint8_t                               field_0x11f1;
	uint8_t                               field_0x11f2;
	uint8_t                               field_0x11f3;
	uint32_t                              field_0x11f4;
	uint32_t                              field_0x11f8;
	uint32_t                              field_0x11fc;
	MapCoords                             field_0x1200;
	uint32_t                              field_0x120c;
	uint32_t                              field_0x1210;
	MapCoords                             field_0x1214;
	uint32_t                              field_0x1220;
	uint32_t                              field_0x1224;
	uint8_t                               field_0x1228[0x40];
	int                                   field_0x1268;
	uint32_t                              field_0x126c;
	uint32_t                              field_0x1270;
	uint32_t                              field_0x1274;
	uint32_t                              field_0x1278;
	Bubble*                               bubble;
	uint32_t                              field_0x1280;
	uint32_t                              field_0x1284;
	uint32_t                              field_0x1288;
	uint8_t                               field_0x128c[0x8];
	uint32_t                              field_0x1294;
	uint32_t                              field_0x1298;
	int                                   field_0x129c;
	uint32_t                              field_0x12a0;
	uint32_t                              field_0x12a4;
	uint32_t                              field_0x12a8;
	uint8_t                               field_0x12ac;
	uint8_t                               field_0x12ad;
	uint8_t                               field_0x12ae;
	uint8_t                               field_0x12af;
	uint32_t                              field_0x12b0;
	uint32_t                              field_0x12b4;
	uint32_t                              field_0x12b8;
	uint32_t                              field_0x12bc;
	uint32_t                              field_0x12c0;
	uint32_t                              field_0x12c4;

	// Override methods

	// BW1W120 00474100 BW1M119 011e5f30
	virtual ~Creature();
	// BW1W120 00474f00 BW1M119 011e6910
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00473f20 BW1M119 010a4810
	virtual GPlayer* GetPlayer();
	// BW1W120 00473f30 BW1M119 011ea2d0
	virtual void RemoveDance();
	// BW1W120 00474090 BW1M119 011ea8b0
	virtual bool32_t IsCreature(Creature* creature);
	// BW1W120 00474080 BW1M119 inlined
	virtual bool IsCreature_1();
	// BW1W120 004e4080 BW1M119 015edd20
	virtual bool32_t IsCreatureNotTooNear(Creature* creature);
	// BW1W120 0047b1f0 BW1M119 011dc080
	virtual float GetMaxAlignmentChangePerGameTurn();
	// BW1W120 004f8350 BW1M119 inlined
	virtual float MaintainSpell(uint32_t param_1, float param_2);
	// BW1W120 004f8750 BW1M119 0128ed90
	virtual void UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2);
	// BW1W120 004792c0 BW1M119 011dfcf0
	virtual float GetRadius();
	// BW1W120 00477f40 BW1M119 011e1780
	virtual float Get2DRadius();
	// BW1W120 00474010 BW1M119 011ea680
	virtual Creature* CastCreature();
	// BW1W120 004740d0 BW1M119 011eaa40
	virtual char* GetDebugText();
	// BW1W120 0071bd50 BW1M119 01517850
	virtual uint32_t GetSampleForAttack();
	// BW1W120 004e5ff0 BW1M119 0126ef60
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004e4ea0 BW1M119 01270820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004740c0 BW1M119 011eaa00
	virtual uint32_t GetSaveType();
	// BW1W120 004e6ab0 BW1M119 0126e8e0
	virtual void ResolveLoad();
	// BW1W120 00473f70 BW1M119 011ea3e0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00477df0 BW1M119 011e1b40
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 004792d0 BW1M119 011dfc80
	virtual Citadel* GetCitadel();
	// BW1W120 0047b190 BW1M119 011dc210
	virtual float GetScale();
	// BW1W120 0047b160 BW1M119 011dc260
	virtual void SetScale(float param_1);
	// BW1W120 0047d810 BW1M119 011d6c80
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 0047c630 BW1M119 011da0a0
	virtual float GetRunningSpeedInMetres();
	// BW1W120 0047c640 BW1M119 011da050
	virtual float GetDefaultSpeedInMetres();
	// BW1W120 0047de80 BW1M119 011d6060
	virtual void SetHeight(float param_1);
	// BW1W120 004f8b30 BW1M119 0128e680
	virtual void GetPSysBeamTargetPos(LHPoint* param_1);
	// BW1W120 00477ac0 BW1M119 011e21c0
	virtual void GetMovementDirection(LHPoint* param_1);
	// BW1W120 00479e40 BW1M119 011de230
	virtual bool32_t IsMoving() const;
	// BW1W120 00477e10 BW1M119 011e1a80
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 0047b150 BW1M119 011dc2e0
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE param_1);
	// BW1W120 0047b200 BW1M119 011dbf10
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 004e4310 BW1M119 015ed580
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 00474020 BW1M119 011ea6b0
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature);
	// BW1W120 00474030 BW1M119 011ea710
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature);
	// BW1W120 004c5e50 BW1M119 01236990
	virtual uint32_t FalseFunction();
	// BW1W120 00473fd0 BW1M119 011ea560
	virtual uint32_t IsSuitableForCreatureActivity();
	// BW1W120 00474050 BW1M119 011ea7c0
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 004e4280 BW1M119 015ed600
	virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 004740b0 BW1M119 011ea9b0
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 00474070 BW1M119 011ea860
	virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00474060 BW1M119 011ea810
	virtual uint32_t CanBeBefriendedByCreature(Creature* param_1);
	// BW1W120 00474040 BW1M119 011ea770
	virtual uint32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 004e4cd0 BW1M119 015eb870
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004e3f10 BW1M119 015ee280
	virtual uint32_t CanBeKissedByCreature(Creature* param_1);
	// BW1W120 004e3c70 BW1M119 015eea70
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00473ff0 BW1M119 011ea5f0
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 004740a0 BW1M119 011ea930
	virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 004792f0 BW1M119 011dfba0
	virtual uint32_t IsDominantCreature(Creature* param_1);
	// BW1W120 004e4430 BW1M119 015ed2b0
	virtual uint32_t IsCreatureAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e4450 BW1M119 015ed230
	virtual uint32_t IsCreatureNotAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e45e0 BW1M119 015ecd00
	virtual uint32_t IsCreatureWhoSeemsFriendly(Creature* param_1);
	// BW1W120 00473f80 BW1M119 011ea420
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b30 BW1M119 01247960
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00477e30 BW1M119 011e19e0
	virtual uint32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
	// BW1W120 0063bad0 BW1M119 013e22b0
	virtual void CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2);
	// BW1W120 00477f50 BW1M119 011e1710
	virtual float GetHeight();
	// BW1W120 004794a0 BW1M119 011df790
	virtual uint32_t IsReadyForNewScriptAction();
	// BW1W120 0047d2c0 BW1M119 011d7890
	virtual void SetControlledByScript(int param_1);
	// BW1W120 0047d8f0 BW1M119 011d6a20
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 0047d940 BW1M119 011d69c0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 0047c8b0 BW1M119 011d8b80
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00477ec0 BW1M119 011e1980
	virtual float GetFacingDirection();
	// BW1W120 004f6760 BW1M119 0128db10
	virtual void SetFocus(const LHPoint& param_1);
	// BW1W120 00473f50 BW1M119 011ea350
	virtual bool32_t IsReachable();
	// BW1W120 00479e50 BW1M119 011de170
	virtual int MoveMapObject(const MapCoords& param_1);
	// BW1W120 0047dd00 BW1M119 011d6190
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0047de20 BW1M119 011d60d0
	virtual float IncreaseLife(float value);
	// BW1W120 00478c00 BW1M119 011e0610
	virtual void FillInEffectDefenceMultiplier(EffectNumbers& param_1);
	// BW1W120 00478c80 BW1M119 011e01a0
	virtual float ApplyEffect(EffectValues& param_1, int param_2);
	// BW1W120 00476f70 BW1M119 011e3680
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 00479020 BW1M119 011e0120
	virtual void ApplySingleEffect(EFFECT_TYPE param_1, float param_2, GameThing* param_3, const MapCoords& param_4);
	// BW1W120 00517910 BW1M119 010cd640
	virtual void Draw();
	// BW1W120 00472dc0 BW1M119 011e8d00
	virtual uint32_t ProcessState();
	// BW1W120 00477ef0 BW1M119 011e18e0
	virtual float GetProjectileSpeed();
	// BW1W120 00473fe0 BW1M119 011ea5b0
	virtual bool32_t CanBePickedUp();
	// BW1W120 0047cd60 BW1M119 011d8180
	virtual float GetWeight();
	// BW1W120 004f8a10 BW1M119 0128e920
	virtual bool32_t CanBeSuckedIntoVortex(LandscapeVortex* param_1);
	// BW1W120 00476e10 BW1M119 011e3ad0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 00476e70 BW1M119 011e3a30
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00476eb0 BW1M119 011e3930
	virtual uint32_t IsReadyForNetworkUnfriendlyLockedSelect();
	// BW1W120 00476ec0 BW1M119 011e38d0
	virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00476ed0 BW1M119 011e3830
	virtual uint32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f00 BW1M119 011e3760
	virtual uint32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f60 BW1M119 011e3710
	virtual uint32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476e90 BW1M119 011e3990
	virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00473f60 BW1M119 011ea390
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0047a330 BW1M119 011dda40
	virtual uint32_t InterfaceValidToGiveObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0047a320 BW1M119 011ddbd0
	virtual uint32_t InterfaceGiveObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00476dc0 BW1M119 011e3ce0
	virtual uint32_t ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00476dd0 BW1M119 011e3c50
	virtual uint32_t ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c6460 BW1M119 01238d50
	virtual uint32_t SelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c64d0 BW1M119 01238c80
	virtual uint32_t ApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 00476df0 BW1M119 011e3bc0
	virtual uint32_t ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 004c5fe0 BW1M119 012393c0
	virtual uint32_t FightThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0047b1e0 BW1M119 inlined
	virtual uint32_t CanBeDestroyedBySpell_1(Spell* param_1);
	// BW1W120 00479b80 BW1M119 011de770
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00479b90 BW1M119 011de590
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00479970 BW1M119 011dea80
	virtual void GetBoundingSphere(LHPoint& param_1, float& param_2);
	// BW1W120 00479d20 BW1M119 011de500
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00479990 BW1M119 011de7b0
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00479d10 BW1M119 011de550
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0047d4b0 BW1M119 011d73d0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0047d500 BW1M119 011d7290
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 00477f00 BW1M119 011e1890
	virtual bool32_t IsScary();
	// BW1W120 00477ee0 BW1M119 011e1920
	virtual float GetFacingPitch();
	// BW1W120 004770d0 BW1M119 011e3390
	virtual void SetHeadPos(MapCoords* param_1);
	// BW1W120 00477f70 BW1M119 011e1520
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00477860 BW1M119 011e2650
	virtual LHPoint GetNearestEdgeOfObject(Object* object);
	// BW1W120 004753c0 BW1M119 011e5ef0
	virtual MapCoords* GetDestPos();
	// BW1W120 004753d0 BW1M119 011e5e70
	virtual MapCoords* GetFinalDestPos(MapCoords* param_1);
	// BW1W120 004f0560 BW1M119 0127e040
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0047b1a0 BW1M119 011dc1d0
	virtual uint32_t GetAge();
	// BW1W120 0047b1b0 BW1M119 011dc190
	virtual void SetAge(uint32_t param_1);
	// BW1W120 00473f00 BW1M119 inlined
	virtual int CallIntoAnimationFunction(uint8_t state);
	// BW1W120 00473f10 BW1M119 inlined
	virtual int CallOutofAnimationFunction(uint8_t state);
	// BW1W120 00473f40 BW1M119 inlined
	virtual bool IsFinalState(uint8_t state);
	// BW1W120 00473f90 BW1M119 inlined
	virtual void SetAnim(int anim);
	// BW1W120 00473ef0 BW1M119 011ea1f0
	virtual ANIM_LIST GetAnimId();
	// BW1W120 00473fa0 BW1M119 inlined
	virtual uint32_t CallExitStateFunction(uint8_t state);
	// BW1W120 00473fc0 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination);
	// BW1W120 00473fb0 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t state);
	// BW1W120 0047c670 BW1M119 011d9f60
	virtual bool32_t IsDancing();
	// BW1W120 004f2820 BW1M119 01281880
	virtual bool32_t IsAvailableForReaction(REACTION param_1);
	// BW1W120 004f2780 BW1M119 01281a20
	virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
	// BW1W120 004f2680 BW1M119 inlined
	virtual void AddReaction(Reaction* param_1, VILLAGER_STATES param_2);
	// BW1W120 004f26d0 BW1M119 01281b70
	virtual void StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3);
	// BW1W120 00477f30 BW1M119 011e17e0
	virtual void ResetStateAfterReacting();
	// BW1W120 004f2b00 BW1M119 01281200
	virtual void SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2b40 BW1M119 01281130
	virtual void SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2ce0 BW1M119 01280c50
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2de0 BW1M119 01280a90
	virtual void SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2e50 BW1M119 01280950
	virtual void SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f35a0 BW1M119 0127f990
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2f70 BW1M119 01280470
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2ea0 BW1M119 012807b0
	virtual void SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3090 BW1M119 012803f0
	virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f36b0 BW1M119 0127f680
	virtual void SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3820 BW1M119 0127f480
	virtual void SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3930 BW1M119 0127f1a0
	virtual void SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3a00 BW1M119 016decbc
	virtual void SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3a60 BW1M119 0127ede0
	virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2b80 BW1M119 01281040
	virtual void SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3b50 BW1M119 0127ec70
	virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3b90 BW1M119 0127eb90
	virtual void SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f3bd0 BW1M119 0127eaa0
	virtual void SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004f2ab0 BW1M119 012812d0
	virtual uint8_t FleeFromSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2bf0 BW1M119 01280dc0
	virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2d90 BW1M119 01280b60
	virtual uint8_t ReactToFoodPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2e20 BW1M119 012809d0
	virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3480 BW1M119 0127fad0
	virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2e70 BW1M119 01280890
	virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2ee0 BW1M119 01280680
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3620 BW1M119 0127f820
	virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f37d0 BW1M119 0127f590
	virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3870 BW1M119 0127f2c0
	virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3990 BW1M119 0127f0a0
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3a10 BW1M119 0127ef60
	virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f2bc0 BW1M119 01280f60
	virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f3b20 BW1M119 0127ed40
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004f29c0 BW1M119 012815c0
	virtual uint32_t StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 004f2a20 BW1M119 012814b0
	virtual uint32_t StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                 float param_3);
	// BW1W120 004f2a70 BW1M119 01281430
	virtual uint32_t NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 004f2a90 BW1M119 012813a0
	virtual uint32_t NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                   float param_3);

	// Static methods

	// BW1W120 00474a20 BW1M119 011e7440
	static Creature* Create(const MapCoords& coords, const GCreatureInfo* info, GPlayer* player);
	// BW1W120 00474b50 BW1M119 011e7370
	static Creature* CreateCreature(const MapCoords& coords, const GCreatureInfo* info, GPlayer* player);
	// BW1W120 0047cbd0 BW1M119 011d8360
	static void CheckAllCreaturesForCatching(Object* object, PhysicsObject* physics_object);

	// Constructors

	// BW1W120 00474690 BW1M119 011e7610
	Creature();

	// Non-virtual methods

	// BW1W120 00475730 BW1M119 011e57d0
	void FinishActionUnsuccessfully(char* param_1, int param_2, int param_3);
	// BW1W120 00477850 BW1M119 011e26b0
	LH3DCreature* GetCreature3D();
	// BW1W120 0047c650 BW1M119 011d9fd0
	void SetAnimationTimeModify(bool value);
	// BW1W120 0047c690 BW1M119 011d9ef0
	bool IsOnHomeTeam();
	// BW1W120 004c4450 BW1M119 01235990
	void ForceActivityAndForceAction(CREATURE_DESIRES param_1, CreatureBelief* param_2, CREATURE_ACTION param_3,
	                                 CreatureBelief* param_4, CreatureBelief* param_5, int param_6, int param_7);
	// BW1W120 004c44b0 BW1M119 01235820
	void ForceActivityAndForceAction(CreaturePlan& param_1, int param_2, int param_3);
	// BW1W120 004d1460 BW1M119 01248530
	int LookAtPosition(MapCoords* destination);
	// BW1W120 004ea670 BW1M119 0127da80
	void DecideOnNewPlan(CreaturePlan& param_1);
	// BW1W120 004f6a90 BW1M119 0128d560
	void PrepareCreatureForScriptedAction(int stop_moving);
	// BW1W120 004f8b80 BW1M119 0128e470
	void ProcessSpells();
	// BW1W120 004ffdd0 BW1M119 012a40a0
	uint32_t SubStatePerformPickUpParameter(CreatureBelief* param_1);
	// BW1W120 00501d10 BW1M119 012a0af0
	bool SubStatePerformAddVillagersToDance();
};

class Creed : public MobileObject
{
public:
	// Override methods

	// BW1W120 0050b370 BW1M119 010c36c0
	virtual ~Creed();
	// BW1W120 0050b3d0 BW1M119 010c3ae0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050b360 BW1M119 010c3800
	virtual char* GetDebugText();
	// BW1W120 0050b4e0 BW1M119 010c3890
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050b4c0 BW1M119 010c38f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050b350 BW1M119 010c37d0
	virtual uint32_t GetSaveType();
	// BW1W120 0050b4a0 BW1M119 010c3950
	virtual void SetScale(float param_1);
	// BW1W120 0050b500 BW1M119 010c3840
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0050b420 BW1M119 010c39b0
	virtual void Create3DObject();
	// BW1W120 005186a0 BW1M119 010cc440
	virtual void Draw();
	// BW1W120 005186d0 BW1M119 010cc390
	virtual void DrawOutOfMap(bool param_1);
	// BW1W120 0050b3a0 BW1M119 010c3b80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0050b330 BW1M119 010c3750
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0050b340 BW1M119 010c3790
	virtual bool32_t CanBecomeAPhysicsObject();
};

// Constructor boundaries: 00474690; flag stores: 00474130; allocation: 0055a697.
static_assert(offsetof(Creature, HelpState) == 0x188, "Creature help offset is incorrect");
static_assert(offsetof(Creature, HelpStackEntries) == 0x220, "Creature help stack offset is incorrect");
static_assert(offsetof(Creature, ReceiveSpell) == 0x370, "Creature spell receiver offset is incorrect");
static_assert(offsetof(Creature, field_0x110c) == 0x110c, "Creature flag offset is incorrect");
static_assert(offsetof(Creature, field_0x1110) == 0x1110, "Creature flag offset is incorrect");
static_assert(offsetof(Creature, field_0x1114) == 0x1114, "Creature flag offset is incorrect");
static_assert(sizeof(Creature) == 0x12c8, "Creature size is incorrect");

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
