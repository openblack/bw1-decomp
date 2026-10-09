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
class CreatureInfo;
class LHPlayer;
class Citadel;
struct ControlHandUpdateInfo;
class CreatureBelief;
class CreatureMental;
class CreaturePhysical;
class CreaturePlan;
struct CreatureReceiveSpell;
class CreatureSpeechItem;
class Dance;
struct EffectNumbers;
class EffectValues;
class GAlignment;
class GArena;
struct GatheringText;
struct GCreatureInfo;
class GInterfaceStatus;
class GParticleContainer;
class GPlayer;
class HandGlow;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LH3DCreature;
class LH3DObject;
struct LH3DColor;
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
class Town;
class Tree;

struct CreatureRecentTrees
{
	Tree*    Trees[10];
	uint32_t Index;
	uint32_t Count;

	void Add(Tree* tree);
};

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
#ifndef VERSION_BW1W120
	// BW1W120 null BW1M119 01756bac
	static uint32_t ImpressiveSpellDoneWhen[5];
	// BW1W120 null BW1M119 01756cf0
	static char FileName[0x88];
	// BW1W120 null BW1M119 01a7e554
	static uint32_t CheckSum3D;
	// BW1W120 null BW1M119 01a7e558
	static uint32_t DestPosCheckSum;
	// BW1W120 null BW1M119 01a7e55c
	static uint32_t PosCheckSum;
	// BW1W120 null BW1M119 01a7e560
	static uint32_t MentalMiscCheckSum;
	// BW1W120 null BW1M119 01a7e564
	static uint32_t MentalValueSystemCheckSum;
	// BW1W120 null BW1M119 01a7e568
	static uint32_t MentalDesiresCheckSum;
	// BW1W120 null BW1M119 01a7e56c
	static uint32_t MentalBeliefsCheckSum;
	// BW1W120 null BW1M119 01a7e570
	static uint32_t MentalAgendaCheckSum;
	// BW1W120 null BW1M119 01a7e574
	static bool32_t LeashOverridesScript;
	// BW1W120 null BW1M119 01a7e578
	static bool32_t CheatAgreeToAllRequests;
	// BW1W120 null BW1M119 01a7e590
	static Creature* CreatureBeingLogged;
	// BW1W120 null BW1M119 01aa0944
	static uint32_t CreatureActionIndex[0x40];
#endif

	char16_t                              name[0x40];
	CreaturePhysical*                     physical;
	CreatureMental*                       mind;
	GAlignment*                           alignment;
	uint32_t                              NumPeopleKilled;
	uint32_t                              NumAnimalsKilled;
	uint32_t                              NumCreaturesKilled;
	uint32_t                              NumBattlesFought;
	uint32_t                              NumBattlesWon;
	uint32_t                              NumPoos;
	uint32_t                              NumMushroomsEaten;
	CreatureHelpState                     HelpState;
	LHLinkedList<CreatureHelpStackEntry*> HelpStackEntries[0x2a];
	CreatureReceiveSpell*                 ReceiveSpell;
	float                                 field_0x374;
	float                                 field_0x378;
	uint8_t                               field_0x37c;
	uint8_t                               field_0x37d;
	uint8_t                               field_0x37e;
	uint8_t                               field_0x37f;
	uint32_t                              field_0x380;
	uint32_t                              field_0x384;
	CreatureEmotionsForMusic              EmotionsForMusic;
	uint32_t                              field_0x390[0xa];
	uint32_t                              field_0x3b8;
	uint32_t                              field_0x3bc[0x3];
	uint32_t                              field_0x3c8;
	uint32_t                              field_0x3cc;
	Creature*                             next;
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
	GPlayer*                              owner;
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
	GArena*                               arena;
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
	Town*                                 LastTownImpressed;
	uint32_t                              LastImpressiveDanceTurn;
	uint32_t                              LastImpressiveDanceType;
	uint32_t                              field_0x1104;
	uint32_t                              field_0x1108;
	uint32_t                              ScriptFlag0;
	int                                   ScriptFlag1;
	uint32_t                              ScriptFlag2;
	uint32_t                              field_0x1118;
	uint32_t                              field_0x111c;
	uint32_t                              field_0x1120;
	int                                   GameTurn;
	CreatureRecentTrees                   RecentTrees;
	uint32_t                              field_0x1158;
	uint32_t                              field_0x115c;
	uint32_t                              field_0x1160;
	MapCoords                             field_0x1164;
	uint32_t                              field_0x1170[0x8];
	uint32_t                              field_0x1190;
	uint8_t                               field_0x1194[0x14];
	MapCoords                             ConfinementCentre;
	float                                 ConfinementRadius;
	uint32_t                              field_0x11b8;
	uint32_t                              field_0x11bc;
	float                                 ObjectsDestroyed;
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
	LH3DObject*                           field_0x11f4;
	uint32_t                              field_0x11f8;
	uint32_t                              HomeExists;
	MapCoords                             HomePos;
	uint32_t                              field_0x120c;
	uint32_t                              field_0x1210;
	MapCoords                             field_0x1214;
	LHLinkedList<LHPoint*>                DebugPath;
	uint8_t                               field_0x1228[0x40];
	int                                   field_0x1268;
	uint32_t                              field_0x126c;
	uint32_t                              field_0x1270;
	LHLinkedList<CreatureSpeechItem*>     SpeechItems;
	Bubble*                               bubble;
	uint32_t                              field_0x1280;
	uint32_t                              field_0x1284;
	uint32_t                              field_0x1288;
	uint32_t                              ScriptAnim;
	uint32_t                              ScriptAnimRepeats;
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
	virtual bool32_t FalseFunction();
	// BW1W120 00473fd0 BW1M119 011ea560
	virtual bool32_t IsSuitableForCreatureActivity();
	// BW1W120 00474050 BW1M119 011ea7c0
	virtual bool32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 004e4280 BW1M119 015ed600
	virtual bool32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 004740b0 BW1M119 011ea9b0
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 00474070 BW1M119 011ea860
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00474060 BW1M119 011ea810
	virtual bool32_t CanBeBefriendedByCreature(Creature* param_1);
	// BW1W120 00474040 BW1M119 011ea770
	virtual bool32_t CanBeSleptNextToByCreature(Creature* param_1);
	// BW1W120 004e4cd0 BW1M119 015eb870
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 004e3f10 BW1M119 015ee280
	virtual bool32_t CanBeKissedByCreature(Creature* param_1);
	// BW1W120 004e3c70 BW1M119 015eea70
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00473ff0 BW1M119 011ea5f0
	virtual bool32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 004740a0 BW1M119 011ea930
	virtual bool32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 004792f0 BW1M119 011dfba0
	virtual bool32_t IsDominantCreature(Creature* param_1);
	// BW1W120 004e4430 BW1M119 015ed2b0
	virtual bool32_t IsCreatureAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e4450 BW1M119 015ed230
	virtual bool32_t IsCreatureNotAvailableForJointActivity(Creature* param_1);
	// BW1W120 004e45e0 BW1M119 015ecd00
	virtual bool32_t IsCreatureWhoSeemsFriendly(Creature* param_1);
	// BW1W120 00473f80 BW1M119 011ea420
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b30 BW1M119 01247960
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00477e30 BW1M119 011e19e0
	virtual bool32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
	// BW1W120 0063bad0 BW1M119 013e22b0
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00477f50 BW1M119 011e1710
	virtual float GetHeight();
	// BW1W120 004794a0 BW1M119 011df790
	virtual bool32_t IsReadyForNewScriptAction();
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
	virtual void FillInEffectDefenceMultiplier(EffectNumbers& numbers);
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
	virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect();
	// BW1W120 00476ec0 BW1M119 011e38d0
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00476ed0 BW1M119 011e3830
	virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f00 BW1M119 011e3760
	virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476f60 BW1M119 011e3710
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00476e90 BW1M119 011e3990
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00473f60 BW1M119 011ea390
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
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
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords* param_2);
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
	// BW1W120 0047c6b0 BW1M119 011d8d80
	static void CopyDifferentCreatureInfoToCreatureInfo();
	// BW1W120 004c48b0 BW1M119 01235350
	static void ComputeActionIndices();
	// BW1W120 00479670 BW1M119 011df1c0
	static int __stdcall CreatureBubbleCallbackStub(int param_1, unsigned long user, LH3DColor* color, wchar_t** text,
	                                                float* param_5, GatheringText** font);

	// Constructors

	// BW1W120 00474690 BW1M119 011e7610
	Creature();

	// Non-virtual methods

	// BW1W120 004753f0 BW1M119 011e5db0
	void CantFindRoute();
	// BW1W120 00475730 BW1M119 011e57d0
	void FinishActionUnsuccessfully(char* param_1, int param_2, int param_3);
	// BW1W120 0047daa0 BW1M119 011d6590
	bool32_t FindSuitableActionToRemoveObstacle(Object* object);
	// BW1W120 0047d9a0 BW1M119 011d6740
	void TrappedInEnclosedSpace(unsigned long num_objects, Object** objects);
	// BW1W120 00477850 BW1M119 011e26b0
	LH3DCreature* GetCreature3D();
	// BW1W120 0047cce0 BW1M119 011d82c0
	bool32_t IsConfinedToArea();
	// BW1W120 00490950 BW1M119 011ec1c0
	void SetInCreatureHand(Creature* creature);
	// BW1W120 00490910 BW1M119 011ec210
	bool32_t CanCurrentlyBePickedUp();
	// BW1W120 00479040 BW1M119 011e0070
	void ReceivedFightImpact(long param_1, float param_2, Creature* attacker);
	// BW1W120 004f81f0 BW1M119 0128f7e0
	void DestroySpell();
	// BW1W120 004f7970 BW1M119 0128fd70
	void CastSpellOnObject(MAGIC_TYPE type, Object* object, float param_3, int param_4);
	// BW1W120 00476fa0 BW1M119 011e3550
	void Faint();
	// BW1W120 00479480 BW1M119 011df800
	bool32_t HasFinishedBuildingHome();
	// BW1W120 004cf060 BW1M119 01243630
	GInterfaceStatus* GetInterfaceStatusLeashOn();
	// BW1W120 004f82f0 BW1M119 0128f550
	bool32_t HasEnoughEnergyToCastSpell(MAGIC_TYPE magic_type);
	// BW1W120 004f8940 BW1M119 0128eaa0
	SPELL_SEED_TYPE ChooseSpellSeedTypeToSteal(GameThingWithPos* object);
	// BW1W120 004f89d0 BW1M119 0128e9d0
	Town* FindTownBelongingToMeWhichNeedsSpell(SPELL_SEED_TYPE type);
	// BW1W120 00477370 BW1M119 011e2f00
	bool32_t CanSeeAnObject(Object* object);
	// BW1W120 00479d80 BW1M119 011de2f0
	CreatureBelief* GetNearbyObject(bool32_t (GameThingWithPos::*is_suitable)(Creature*), CreatureBelief* exclude1,
	                                CreatureBelief* exclude2);
	// BW1W120 0047d860 BW1M119 011d6b10
	bool32_t FindNearbyWaterPoint(MapCoords* coords, float radius);
	// BW1W120 0047a500 BW1M119 011dd440
	void GetRunAwayPoint(const LHPoint& from, LHPoint* point);
	// BW1W120 004c9fe0 BW1M119 0123ea40
	void SendCandidateHelpScript(CREATURE_HELP_TYPE type, unsigned long help, GameThingWithPos* thing,
	                             const MapCoords* pos, int param_5);
	// BW1W120 0049a7a0
	bool32_t IsHomeUnderConstruction(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 0049a7c0
	bool32_t HasNoHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 0047c650 BW1M119 011d9fd0
	void SetAnimationTimeModify(bool value);
	// BW1W120 0047c690 BW1M119 011d9ef0
	bool32_t IsOnHomeTeam();
	// BW1W120 0047d580 BW1M119 011d71e0
	float GetSize();
	// BW1W120 0047d640 BW1M119 011d6ea0
	GInterfaceStatus* GetNearestCameraInterfaceStatus();
	// BW1W120 0047d740 BW1M119 011d6ce0
	GInterfaceStatus* GetNearestHandInterfaceStatus();
	// BW1W120 004dfbe0 BW1M119 01264bb0
	bool32_t FindClearArea(MapCoords* coords, float radius, int param_3);
	// BW1W120 004c4450 BW1M119 01235990
	void ForceActivityAndForceAction(CREATURE_DESIRES param_1, CreatureBelief* param_2, CREATURE_ACTION param_3,
	                                 CreatureBelief* param_4, CreatureBelief* param_5, int param_6, int param_7);
	// BW1W120 004c44b0 BW1M119 01235820
	void ForceActivityAndForceAction(CreaturePlan& param_1, int param_2, int param_3);
	// BW1W120 004c84b0 BW1M119 0123b450
	void SetFaceForMoodFrightened();
	// BW1W120 004c8500 BW1M119 0123b3a0
	void SetFaceForMoodInPain();
	// BW1W120 004c8550 BW1M119 0123b330
	void SetFaceForMoodSad();
	// BW1W120 004c8570 BW1M119 0123b280
	void SetFaceForMoodIrritable();
	// BW1W120 004c85c0 BW1M119 0123b210
	void SetFaceForMoodLonely();
	// BW1W120 004c85e0 BW1M119 0123b1a0
	void SetFaceForMoodExhausted();
	// BW1W120 004c8600 BW1M119 0123b130
	void SetFaceForMoodHappy();
	// BW1W120 004c8620 BW1M119 0123b080
	void SetFaceForActionReflectAttitudeToPlayer();
	// BW1W120 004c8660 BW1M119 0123af90
	void SetFaceForActionCuriosity();
	// BW1W120 004c86d0 BW1M119 0123aee0
	void SetFaceForActionAnger();
	// BW1W120 004c8720 BW1M119 0123ae80
	void SetFaceForActionFear();
	// BW1W120 004c8730 BW1M119 0123add0
	void SetFaceForActionCompassion();
	// BW1W120 004c8780 BW1M119 0123ad20
	void SetFaceForActionPlayfulness();
	// BW1W120 004c87d0 BW1M119 0123acb0
	void SetFaceForActionSmile();
	// BW1W120 004c87f0 BW1M119 0123ac40
	void SetFaceForActionGrimace();
	// BW1W120 004c8810 BW1M119 0123abd0
	void SetFaceForActionGrowl();
	// BW1W120 004c8830 BW1M119 0123ab60
	void SetFaceForActionAmazed();
	// BW1W120 004c8850 BW1M119 0123aaf0
	void SetFaceForActionPuzzled();
	// BW1W120 004c8870 BW1M119 0123aa70
	void SetFaceForActionIdle();
	// BW1W120 004d0bd0 BW1M119 012494b0
	int LookWhileGoingTowardsObject(MapCoords* destination);
	// BW1W120 004d0c80 BW1M119 012493a0
	int LookWhileGoingTowardsPoint(MapCoords* destination);
	// BW1W120 004d10a0 BW1M119 01248dd0
	int LookDown(MapCoords* destination);
	// BW1W120 004d10d0 BW1M119 01248d50
	int LookStoned(MapCoords* destination);
	// BW1W120 004d1100 BW1M119 01248cb0
	int LookJustWokenUp(MapCoords* destination);
	// BW1W120 004d1140 BW1M119 01248be0
	int LookAtPartner(MapCoords* destination);
	// BW1W120 004d11a0 BW1M119 01248b00
	int LookAtDependents(MapCoords* destination);
	// BW1W120 004d1220 BW1M119 01248a60
	int LookAtObjectFlutteringEyelids(MapCoords* destination);
	// BW1W120 004d1250 BW1M119 012489d0
	int LookFrightened(MapCoords* destination);
	// BW1W120 004d1280 BW1M119 01248830
	int LookWhileRunningAwayFromObject(MapCoords* destination);
	// BW1W120 004d1350 BW1M119 012486a0
	int LookWhileRunningAwayFromHand(MapCoords* destination);
	// BW1W120 004d1420 BW1M119 01248620
	int LookAtPlayer(MapCoords* destination);
	// BW1W120 004d1460 BW1M119 01248530
	int LookAtPosition(MapCoords* destination);
	// BW1W120 004d1510 BW1M119 012482f0
	int LookAtObjectArgumentTop(MapCoords* destination);
	// BW1W120 004d1640 BW1M119 012481f0
	int LookAtObjectArgumentBottom(MapCoords* destination);
	// BW1W120 004d16d0 BW1M119 01248050
	int LookAtObjectArgument(MapCoords* destination);
	// BW1W120 004d17e0 BW1M119 01247f10
	int LookAtFlyingObject(MapCoords* destination);
	// BW1W120 004d1870 BW1M119 01247e70
	int LookAround(MapCoords* destination);
	// BW1W120 004d18c0 BW1M119 01247d40
	int LookAtHand(MapCoords* destination);
	// BW1W120 004d1980 BW1M119 01247c20
	int LookAtFeet(MapCoords* destination);
	// BW1W120 004d1a30 BW1M119 01247af0
	int LookAtCamera(MapCoords* destination);
	// BW1W120 004d2940 BW1M119 015eae60
	bool32_t CanCreatureCastSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2a20 BW1M119 015eacd0
	bool32_t CanCreatureCastImpressiveSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2af0 BW1M119 015eaae0
	bool32_t CanCreatureCastPowerUpSpell(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2b20 BW1M119 015ea8e0
	bool32_t CanCreatureCastTeleport(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2b80 BW1M119 015ea860
	bool32_t IsMatureEnoughToLeaveHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ba0 BW1M119 015ea7c0
	bool32_t IsTimeRipeForEatingFromFields(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bc0 BW1M119 015ea730
	bool32_t IsCreatureFarAwayFromCamera(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bd0 BW1M119 015ea6a0
	bool32_t DoesCreatureHaveACitadel(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2bf0 BW1M119 015ea630
	bool32_t HasCreatureBeenAskedToPlayGame(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c00 BW1M119 015ea590
	bool32_t IsActivityObjectATown(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c30 BW1M119 015ea4a0
	bool32_t IsActivityObjectATownUnderAttack(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2c80 BW1M119 015ea400
	bool32_t IsCreatureHealthyEnoughToFight(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2cb0 BW1M119 015ea300
	bool32_t IsPlayerNearbyAndFrightening(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2d20 BW1M119 015ea240
	bool32_t IsHandMoving(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2d60 BW1M119 015ea160
	bool32_t NotTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2db0 BW1M119 015ea0c0
	bool32_t LastDanceWasntToDanceToImpress(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2de0 BW1M119 015ea020
	bool32_t LastDanceWasntDanceCreature(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2e10 BW1M119 015e9f80
	bool32_t LastDanceWasntDanceStory(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2e40 BW1M119 015e9e80
	bool32_t LeashedOrTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ea0 BW1M119 015e9d70
	bool32_t FriendIsDoingSomethingWorthFollowing(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2f20 BW1M119 015e9cb0
	bool32_t IsCreatureAwayFromCentreOfScreen(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2f50 BW1M119 015e9ba0
	bool32_t IsCreatureAwayFromHand(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d2ff0 BW1M119 015e9b20
	bool32_t IsCreatureNotNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3000 BW1M119 015e9aa0
	bool32_t IsCreatureNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3010 BW1M119 015e9a20
	bool32_t HasCreatureBuiltHisHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3020 BW1M119 015e9990
	bool32_t CreatureHasntRestedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3040 BW1M119 015e9900
	bool32_t CreatureHasntWavedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3060 BW1M119 015e9860
	bool32_t CreatureHasntScratchedRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3080 BW1M119 015e97e0
	bool32_t IsSunVisible(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30a0 BW1M119 015e9770
	bool32_t IsMoonVisible(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30b0 BW1M119 015e9700
	bool32_t IsSlightlyHungry(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d30e0 BW1M119 015e9690
	bool32_t IsSlightlyThirsty(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3110 BW1M119 015e9610
	bool32_t IsSlightlyInNeedOfAPoo(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3140 BW1M119 015e9580
	bool32_t IsSlightlyContent(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3160 BW1M119 015e9510
	bool32_t IsSlightlySleepy(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3190 BW1M119 015e9470
	bool32_t IsNearWater(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d31d0 BW1M119 015e93f0
	bool32_t IsCrossWithPlayer(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3200 BW1M119 015e9330
	bool32_t IsHoldingOneOffSpellAggressive(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3230 BW1M119 015e9270
	bool32_t IsHoldingOneOffSpellCompassionate(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3260 BW1M119 015e91b0
	bool32_t IsHoldingOneOffSpellPlayful(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3290 BW1M119 015e90e0
	bool32_t IsHoldingOneOffSpellToRestoreHealth(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d32c0 BW1M119 015e8ef0
	bool32_t ShouldCreatureCastWaterOnHimself(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d32f0 BW1M119 015e8df0
	bool32_t ShouldNearestTownBeAttacked(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3360 BW1M119 015e8cf0
	bool32_t ShouldNearestTownBeHelped(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d33d0 BW1M119 015e8c50
	bool32_t HasntDoneImpressiveAnimRecently(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004d3410 BW1M119 015e8bc0
	bool32_t IsThereFishFarmNearby(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e4490 BW1M119 015ed130
	bool32_t NothingScareyNearHome(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e44a0 BW1M119 015ed0b0
	bool32_t NothingScareyNearMe(CreaturePlan& plan, CREATURE_ACTION action);
	// BW1W120 004e4680 BW1M119 015ecc10
	bool32_t CanCastAmusingSpellOnCreature(CreaturePlan& plan, CREATURE_ACTION action);
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
	// BW1W120 00477440 BW1M119 011e2df0
	bool32_t CanSeePos(const MapCoords& pos);
	// BW1W120 004796a0 BW1M119 011ded90
	void AddSpeechItem(char16_t* text, LHPlayer* player, unsigned long flags);
	// BW1W120 004e7660 BW1M119 0126e110
	unsigned long SaveMindToMemory(char** buffer);
	// BW1W120 inlined BW1M119 011e3200
	const CreatureInfo* GetInfo() const { return (const CreatureInfo*)info; }
	// BW1W120 00479eb0 BW1M119 011de020
	void ForceMoveMapObjectWithoutWalking(const MapCoords& pos);
	// BW1W120 0047ab90 BW1M119 011dcbc0
	void SetFizz(float param_1, float param_2, bool param_3);
	// BW1W120 0047b140 BW1M119 011dc350
	bool32_t IsAnimIndividual(unsigned long anim);
	// BW1W120 004f6850 BW1M119 0128d9d0
	void SetFocus(GameThingWithPos* thing);
	// BW1W120 004f6b60 BW1M119 0128d220
	void ScriptMoveToPos(LHPoint* pos, float speed);
	// BW1W120 004f6e30 BW1M119 0128d0e0
	void ScriptPlayIndividualAnimation(unsigned long anim);
	// BW1W120 004f6f10 BW1M119 0128cfa0
	void ScriptPlayStaticAnimation(unsigned long anim, float param_2);
};

class Creed : public MobileObject
{
public:
	HandGlow* Glow;

	// Constructors

	// BW1W120 0050b310 BW1M119 010c3c20
	Creed();
	// BW1W120 inlined BW1M119 inlined
	Creed(const MapCoords& coords, const GMobileObjectInfo* info, Object* param_3, float param_4, float param_5)
		: MobileObject(coords, info, param_3, param_4, param_5)
	{
	}

	// Override methods

	// BW1W120 inlined BW1M119 010c36c0
	virtual ~Creed() {}
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
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0050b420 BW1M119 010c39b0
	virtual void Create3DObject();
	// BW1W120 005186a0 BW1M119 010cc440
	virtual void Draw();
	// BW1W120 005186d0 BW1M119 010cc390
	virtual void DrawOutOfMap(bool selectable);
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
static_assert(offsetof(Creature, ScriptFlag0) == 0x110c, "Creature flag offset is incorrect");
static_assert(offsetof(Creature, ScriptFlag1) == 0x1110, "Creature flag offset is incorrect");
static_assert(offsetof(Creature, ScriptFlag2) == 0x1114, "Creature flag offset is incorrect");
static_assert(sizeof(Creature) == 0x12c8, "Creature size is incorrect");

#endif /* BW1_DECOMP_CREATURE_INCLUDED_H */
