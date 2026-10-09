#ifndef BW1_DECOMP_CREATURE_3D_INCLUDED_H
#define BW1_DECOMP_CREATURE_3D_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DMeshIntersect.h> /* For struct TextureRef */
#include <Lionhead/LH3DLib/development/LHPoint.h>           /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>            /* For struct Zoomer3d */
#include <re_common.h>                                      /* For bool32_t */

#include "Morphable.h" /* For struct Morphable */

// Forward Declares

class Archive;
struct CameraExclusion;
struct HandGlows;
class LH_AudioBank;
struct LH3DMesh;
struct CAnim;
class Creature;
class Living;
struct LHMatrix;
class Object;
class RPFollow;
struct TattooInfo;

struct DestructionBone
{
	LHPoint Pos;
	float   Radius;
	long    Bone;

	// BW1W120 inlined BW1M119 01202d60
	DestructionBone() {}
};

struct LH3DCreatureDamage
{
	unsigned long NumCuts;
	unsigned long NumBruises;
	TextureRef    Cuts[0x400];
	TextureRef    Bruises[0x400];

	// BW1W120 inlined BW1M119 inlined
	LH3DCreatureDamage()
	{
		NumBruises = 0;
		NumCuts = 0;
	}
};

struct LH3DCreatureTattoo
{
	uint8_t X;
	uint8_t Y;
	uint16_t : 6;
	uint16_t Skin : 2;
	uint16_t : 8;
};

enum LHSoundAction
{
	LH_SOUND_ACTION_UNKNOWN
};

enum LH3D_CREATURE_STATE
{
	LH3D_CREATURE_STATE_STANDING,          // 0x00 DoStandingAction
	LH3D_CREATURE_STATE_MOVING,            // 0x01 StartMovingToPoint, DoMovingAction
	LH3D_CREATURE_STATE_START_STATIC,      // 0x02 StartStaticAction; plays CurrentAnim - 1
	LH3D_CREATURE_STATE_DO_STATIC,         // 0x03 DoStaticAction
	LH3D_CREATURE_STATE_FINISH_STATIC,     // 0x04 EndStaticAction; plays CurrentAnim + 1
	LH3D_CREATURE_STATE_START_DANCE,       // 0x05 StartDanceAction; C_DANCE_START
	LH3D_CREATURE_STATE_DO_DANCE,          // 0x06 random C_DANCE_A.. moves
	LH3D_CREATURE_STATE_FINISH_DANCE,      // 0x07 EndDanceAction; C_DANCE_FINISH
	LH3D_CREATURE_STATE_POINTING,          // 0x08 PointAt, DoPointAction
	LH3D_CREATURE_STATE_FINISH_POINTING,   // 0x09 StopPointing (only from POINTING)
	LH3D_CREATURE_STATE_INDIVIDUAL,        // 0x0a StartIndividualAction, ForceIndividualAction
	LH3D_CREATURE_STATE_OBJECT_KEEP,       // 0x0b StartObjectKeepAction
	LH3D_CREATURE_STATE_OBJECT_REMOVE,     // 0x0c StartObjectRemoveAction, DoDiscardAction
	LH3D_CREATURE_STATE_THROWING,          // 0x0d ThrowAtPointGivenTime, DoThrowingAction
	LH3D_CREATURE_STATE_PICKING_UP,        // 0x0e StartBlendedAction, DoBlendedAction; C_PICKUP_* blend
	LH3D_CREATURE_STATE_PICK_UP_FROM_HAND, // 0x0f StartPickUpFromHandAction, DoPickupFromHandAction
	LH3D_CREATURE_STATE_DESTRUCTION,       // 0x10 StartBlendedAction, DoBlendedAction; C_DESTROY_* blend
	LH3D_CREATURE_STATE_KISSING,           // 0x11 StartKissing, StartSolitaryKissing, DoKissingAction
	LH3D_CREATURE_STATE_KICKING,           // 0x12 StartKickingAction, DoKickingAction
	LH3D_CREATURE_STATE_CATCH_MAIN,        // 0x13 StartCatching, DoCatchMain
	LH3D_CREATURE_STATE_CATCH_STEP,        // 0x14 DoCatchStep
	LH3D_CREATURE_STATE_CATCH_ACTION,      // 0x15 DoCatchAction
	LH3D_CREATURE_STATE_START_FIGHT,       // 0x16 StartFighting; turns, then C_FIGHT_START
	LH3D_CREATURE_STATE_FIGHT_MAIN,        // 0x17 DoFightMainAction
	LH3D_CREATURE_STATE_FIGHT,             // 0x18 StartFightAction, StartFightRecoilAction, DoFightActionAction
	LH3D_CREATURE_STATE_FINISH_FIGHT,      // 0x19 C_FIGHT_FINISH
	LH3D_CREATURE_STATE_START_BLOCK,       // 0x1a AttemptAttack; C_FIGHT_START_BLOCK
	LH3D_CREATURE_STATE_BLOCK,             // 0x1b C_FIGHT_BLOCK
	LH3D_CREATURE_STATE_BLOCK_RECOIL,      // 0x1c StartFightRecoilAction; C_RECOIL_BLOCK, back to BLOCK
	LH3D_CREATURE_STATE_FINISH_BLOCK,      // 0x1d C_FIGHT_END_BLOCK
	LH3D_CREATURE_STATE_DEATH,             // 0x1e StartDeathAction (IsDying); ends in DEAD
	LH3D_CREATURE_STATE_RESURRECT,         // 0x1f Resurrect
	LH3D_CREATURE_STATE_START_FIGHT_CAST,  // 0x20 CheckFightQueue; C_FIGHT_EXTRA_START_CAST
	LH3D_CREATURE_STATE_FIGHT_CAST,        // 0x21 casts the fight spell; C_FIGHT_EXTRA_CAST
	LH3D_CREATURE_STATE_FINISH_FIGHT_CAST, // 0x22 C_FIGHT_EXTRA_END_CAST
	LH3D_CREATURE_STATE_TURNING,           // 0x23 StartTurningAction, DoTheTurningBusiness
	LH3D_CREATURE_STATE_DEAD,              // 0x24 IsActuallyDead
	LH3D_CREATURE_STATE_CREATION,          // 0x25 LoadBinary; C_FIGHT_EXTRA_CREATION
};

class LH3DCreature : public Morphable
{
public:
	Creature*           creature;
	float               CurrentSpeed;
	float               RequiredSpeed;
	float               RequiredHeading;
	float               WalkSpeed;
	float               RunSpeed;
	float               Acceleration;
	float               BodyTurnAccel;
	float               BodyTurnRate;
	float               field_0x4858;
	float               field_0x485c;
	float               LookHeadingRate;
	float               LookRelativeHeading;
	float               LookPitchRate;
	float               LookRelativePitch;
	LHPoint             Forces[2];
	LHPoint             field_0x4888[2];
	LHPoint             field_0x48a0;
	bool                ForceApplied;
	uint8_t             field_0x48ad[0x3];
	float               LeashForce;
	int                 IntTimeInc;
	float               FloatTimeInc;
	int                 AnimTimeInc;
	LHPoint             LookPoint;
	Object*             ActionObject;
	Object*             HeldObject;
	float               field_0x48d4;
	LHPoint             field_0x48d8;
	float               field_0x48e4;
	LHPoint             field_0x48e8;
	float               field_0x48f4;
	LHPoint             field_0x48f8;
	int                 field_0x4904;
	int                 DiscardTime;
	LHPoint             DiscardVelocity;
	LHPoint             DiscardPosition;
	int                 field_0x4924;
	uint8_t             field_0x4928[0x4];
	float               field_0x492c;
	LHPoint             ThrowPosHigh;
	LHPoint             ThrowPosFlat;
	LHPoint             KissPositionA;
	LHPoint             KissPositionB;
	int                 EatTime;
	int                 ThrowTime;
	float               ThrowZL;
	float               ThrowYL;
	float               ThrowZH;
	float               ThrowYH;
	float               ThrowZR;
	float               ThrowYR;
	float               KissFraction;
	int16_t             GameThrowingAngle;
	uint8_t             field_0x4986[0x2];
	float               field_0x4988;
	float               field_0x498c;
	float               field_0x4990;
	int                 MoveState;
	int                 ObjectActionStatus;
	int                 field_0x499c;
	int                 CurrentAnim;
	float               field_0x49a4;
	float               field_0x49a8;
	long                CurrentFacialAction;
	long                RequestedFacialAction;
	long                FacialActionTime;
	long                FacialAnimTime;
	LHPoint             PickUpFromHandPosition;
	LHPoint             field_0x49c8[4];
	LHPoint             field_0x49f8[4];
	LHPoint             field_0x4a28;
	int                 PickUpTime;
	int                 field_0x4a38;
	int                 field_0x4a3c;
	int                 PutDownTime;
	LHPoint             field_0x4a44[4];
	LHPoint             PointPoint;
	int                 field_0x4a80;
	int                 DestroyTime;
	int                 field_0x4a88;
	int                 field_0x4a8c;
	bool32_t            IsAnimationTimeModified;
	TattooInfo*         field_0x4a94;
	LHPoint             ArenaCentre;
	float               ArenaRadius;
	float               field_0x4aa8;
	float               field_0x4aac;
	float               field_0x4ab0;
	int                 field_0x4ab4;
	int                 field_0x4ab8;
	int                 field_0x4abc;
	int                 field_0x4ac0;
	uint32_t            field_0x4ac4[12];
	uint32_t            field_0x4af4[12];
	bool                field_0x4b24;
	uint8_t             field_0x4b25[0x3];
	int                 field_0x4b28;
	int                 field_0x4b2c;
	int                 field_0x4b30;
	long                field_0x4b34[12];
	uint32_t            field_0x4b64[12];
	int                 field_0x4b94[12];
	MeshIntersect       field_0x4bc4[12];
	LHPoint             field_0x4da4[12];
	LHPoint             field_0x4e34[12];
	LHPoint             field_0x4ec4[12];
	DestructionBone     DestructionBones[12];
	int                 field_0x5044;
	LHPoint             field_0x5048[12];
	int                 field_0x50d8[12];
	int                 field_0x5108[12];
	int                 field_0x5138[12];
	LHPoint             field_0x5168;
	void*               SafeBufferMemory0;
	LHMatrix*           SafeBuffer0;
	void*               SafeBufferMemory1;
	LHMatrix*           SafeBuffer1;
	LH3DCreatureDamage* Damage;
	int                 field_0x5188;
	int                 TurningCompleted;
	int                 field_0x5190;
	uint8_t             field_0x5194[0x4];
	RPFollow*           RpFollow; /* 0x5198 */
	int                 field_0x519c;
	uint8_t             field_0x51a0[0x14];
	int                 field_0x51b4;
	long                HeadBone;
	long                field_0x51bc;
	long                BellyBone;
	long                RightArmpit;
	long                RightHand;
	long                RightFoot;
	long                field_0x51d0;
	long                HeadGrowBone;
	long                Anus;
	int                 field_0x51dc;
	int                 ImpactTime;
	int                 field_0x51e4;
	int                 field_0x51e8;
	int                 field_0x51ec;
	long*               MirrorBones;
	LH3DMesh*           field_0x51f4;
	int                 DanceAnimSpeeds[7];
	int                 field_0x5214;
	int                 field_0x5218;
	int                 field_0x521c;
	CAnim*              Anim0x5220;
	float               field_0x5224;
	float               field_0x5228;
	int                 ReverseAnim;
	int                 field_0x5230;
	int                 field_0x5234;
	int                 field_0x5238;
	int                 field_0x523c;
	float               EventualHeading;
	int                 field_0x5244;
	int                 field_0x5248;
	int                 field_0x524c;
	int                 field_0x5250;
	int                 field_0x5254;
	int                 field_0x5258;
	int                 field_0x525c;
	int                 field_0x5260;
	int                 field_0x5264;
	int                 field_0x5268;
	bool32_t            InHandInteraction;
	bool32_t            SafeBufferSelector;
	bool32_t            BoundingSphereValid;
	LHPoint             BoundingSphereCentre;
	float               BoundingSphereRadius;
	LH_AudioBank*       SoundBank;
	LH3DCreature*       FightCreature;
	int                 field_0x5290[5];
	int                 FightMove;
	MeshIntersect       BloodIntersections[8];
	int                 field_0x53e8[8];
	MeshIntersect       LipIntersect;
	int                 field_0x5430;
	MeshIntersect       VomIntersect;
	int                 field_0x545c;
	int                 field_0x5460;
	float               field_0x5464;
	int                 field_0x5468;
	int                 field_0x546c;
	int                 field_0x5470;
	float               field_0x5474;
	MeshIntersect       EyeIntersects[4];
	int                 field_0x5518[4];
	float               field_0x5528[4];
	Zoomer3d            field_0x5538[2];
	float               field_0x5658[3];
	float               field_0x5664[3];
	float               field_0x5670[3];
	LH3DCreatureTattoo  TattooPositions[8];
	int                 field_0x569c[8];
	int                 field_0x56bc[8];
	int                 field_0x56dc[8];
	float               field_0x56fc[8];
	int                 field_0x571c;
	LHPoint             ThrowTarget;
	float               ThrowGivenTime;
	int                 field_0x5730;
	int                 field_0x5734;
	int                 field_0x5738;
	int                 field_0x573c;
	int                 field_0x5740;
	int                 field_0x5744;
	LHPoint             field_0x5748;
	char                FileName[64];
	int                 field_0x5794;
	int                 field_0x5798;
	int                 field_0x579c;
	int                 field_0x57a0;
	CollideBox*         Boite;
	int                 field_0x57a8;
	int                 field_0x57ac;
	HandGlows*          Glows;
	CameraExclusion*    CameraExclusionDome;

	// Override methods

	// BW1W120 004803d0 BW1M119 01201a70
	virtual void SetAnimTime(int time, int anim);
	// BW1W120 004eac90 BW1M119 01278470
	virtual uint32_t LoadBase(char* path);
	// BW1W120 00480530 BW1M119 012018c0
	virtual void SetSize(float size);
	// BW1W120 0048d790 BW1M119 011efbe0
	virtual void MorphAnims();
	// BW1W120 0048d540 BW1M119 011efc70
	virtual void MorphTexture();
	// BW1W120 00481df0 BW1M119 011fe0e0
	virtual void UpdateTime(int time);
	// BW1W120 004ed320 BW1M119 012758a0
	virtual void PrepareForDrawing();
	// BW1W120 0048e1c0 BW1M119 011eee90
	virtual uint32_t AddForDrawing();
	// BW1W120 004eb430 BW1M119 012776d0
	virtual uint32_t LoadBinary(char* filename, int param_1);
	// BW1W120 004ed640 BW1M119 012751a0
	virtual uint32_t SaveBinary(char* filename);

	// Virtual methods

	// BW1W120 0047f720 BW1M119 011f08d0
	virtual float GetAltitude(const LHPoint& pos);

	// Static methods

	// BW1W120 0047f1f0 BW1M119 012037d0
	static void FollowerCallbackFunction(int creature, int event);
	// BW1W120 0047f210 BW1M119 012036f0
	static void FollowerCallbackObjectEncountered(int creature, int object);
	// BW1W120 0047f260 BW1M119 01203660
	static void FollowerCallbackPrepareAnims(int creature, float param_2, float param_3);
	// BW1W120 0047f280 BW1M119 012035e0
	static float FollowerCallbackGetStopDist(int creature);
	// BW1W120 00483850 BW1M119 011fd140
	static bool32_t IsDestinationValid(const LHPoint* pos);
	// BW1W120 00483890 BW1M119 011fcf80
	static bool32_t ValidPosGivenRadiusToEncloseSquare(const LHPoint* pos, float radius);
	// BW1W120 004839d0 BW1M119 011fce00
	static void SpiralCheckForValidPoint(LHPoint* pos, LHPoint* result);

	// Constructors

	// BW1W120 0047f490 BW1M119 01202d90
	LH3DCreature(LH3DCreature& other, const LHPoint& pos, void* param_3);
	// BW1W120 0047f770 BW1M119 01202a40
	LH3DCreature(Creature* creature, const LHPoint& pos, void* param_3);

	// Destructor

	// BW1W120 00480240 BW1M119 01201c40
	~LH3DCreature();

	// Non-virtual methods

	// BW1W120 0047f1c0 BW1M119 01203860
	float GetFightMul();
	// BW1W120 0047f2a0 BW1M119 01203520
	float GetStopDist();
	// BW1W120 0047f300 BW1M119 012033f0
	void PrepareAnims(float param_1, float param_2);
	// BW1W120 0047f8a0 BW1M119 012029d0
	float GetDamageFraction();
	// BW1W120 0047f8d0 BW1M119 012027f0
	void GetBoundingSphere(LHPoint& centre, float& radius);
	// BW1W120 0047fa20 BW1M119 01202760
	void SetRequiredSpeed(float speed);
	// BW1W120 0047fa80 BW1M119 012026e0
	float GetMass();
	// BW1W120 0047fac0 BW1M119 01202510
	void ApplyForce(LHPoint& param_1, LHPoint& param_2);
	// BW1W120 0047fbf0 BW1M119 012024b0
	void AnalyseLeashForcePacket(float param_1);
	// BW1W120 0047fc20 BW1M119 01201e20
	void Init(LHPoint& pos, void* param_2);
	// BW1W120 004806c0 BW1M119 01201870
	void StartHandInteraction();
	// BW1W120 004806d0 BW1M119 01201820
	void StopHandInteraction();
	// BW1W120 004806e0 BW1M119 01201790
	void DisconnectFromGame(long param_1);
	// BW1W120 00480730 BW1M119 01201710
	void ReconnectToGame();
	// BW1W120 00480750 BW1M119 01201600
	void GetKissPosition(float param_1, LHPoint* result);
	// BW1W120 00480810 BW1M119 01201430
	void GetPickUpFromHandPosition(LHPoint* result, bool param_2, float param_3);
	// BW1W120 00480900 BW1M119 012012d0
	bool32_t CanKissCreature(LH3DCreature* other);
	// BW1W120 00480a10 BW1M119 01201220
	float GetKissingDistance(LH3DCreature* other);
	// BW1W120 00480a60 BW1M119 012011a0
	float GetNavRadius();
	// BW1W120 00480ac0 BW1M119 01200fd0
	bool32_t StartCatching(Object* object);
	// BW1W120 00480c00 BW1M119 01200f10
	bool32_t StartKickingAction(Object* object);
	// BW1W120 00480c50 BW1M119 01200eb0
	bool32_t StartFacialAction(long action, long time);
	// BW1W120 00480c90 BW1M119 01200d90
	float GetLookDirection();
	// BW1W120 00480d30 BW1M119 01200d30
	bool32_t IsPerformingFacialAction();
	// BW1W120 00480d40 BW1M119 01200be0
	void OperateFace();
	// BW1W120 00480e10 BW1M119 01200930
	bool32_t StartBlendedAction(Object* object, long param_2);
	// BW1W120 00480fc0 BW1M119 01200830
	bool32_t StartPickUpFromHandAction(Object* object);
	// BW1W120 00481030 BW1M119 012007e0
	bool32_t IsPickingUpFromHand();
	// BW1W120 00481040 BW1M119 012006d0
	void SaveDamage(Archive& archive);
	// BW1W120 004810d0 BW1M119 012005d0
	void LoadDamage(Archive& archive);
	// BW1W120 00481160 BW1M119 01200540
	bool32_t StartTurningAction(float heading);
	// BW1W120 00481190 BW1M119 012004f0
	float GetApproximateThrowTime(float param_1);
	// BW1W120 004811a0 BW1M119 012002e0
	bool32_t ThrowAtPointGivenTime(LHPoint& pos, float time);
	// BW1W120 00481390 BW1M119 01200280
	long GetMirrorBone(long bone);
	// BW1W120 004813b0 BW1M119 01200210
	LHPoint* GetHeadPos();
	// BW1W120 004813d0 BW1M119 012001a0
	LHPoint* GetAnusPos();
	// BW1W120 004813f0 BW1M119 01200130
	LHPoint* GetBonePos(long bone);
	// BW1W120 00481410 BW1M119 011ffcf0
	void AddEvilGoodSparkles();
	// BW1W120 00481760 BW1M119 011ffa30
	void UpdateBlood();
	// BW1W120 00481930 BW1M119 011ff870
	void TimeWarpHeal(long time);
	// BW1W120 00481a40 BW1M119 011ff6c0
	bool32_t CanFightAroundObject(Object* object);
	// BW1W120 00481b10 BW1M119 011ff430
	bool32_t CanKnockObject(Object* object);
	// BW1W120 00482c90 BW1M119 011fdf80
	void SetLookPoint(LHPoint* point);
	// BW1W120 00482d40 BW1M119 011fdf10
	bool32_t HasLookPoint();
	// BW1W120 00482d90 BW1M119 011fdac0
	void UpdateLook();
	// BW1W120 00483070 BW1M119 011fd9a0
	void UpdateRPLookPoint();
	// BW1W120 004831b0 BW1M119 011fd790
	void ResetLook();
	// BW1W120 00483160 BW1M119 011fd8f0
	void* GetBoite();
	// BW1W120 00483290 BW1M119 011fd380
	void PlayASoundEffect(long param_1, long param_2, bool param_3);
	// BW1W120 00483750 BW1M119 011fd310
	bool32_t ReachedLookDestination();
	// BW1W120 00483780 BW1M119 011fd1b0
	bool32_t IsDestinationValidAndClear(LHPoint* pos);
	// BW1W120 00483ab0 BW1M119 011fc8f0
	long GetStartState(LHPoint& param_1, LHPoint& param_2);
	// BW1W120 00483ed0 BW1M119 011fc870
	LHPoint* GetDestination();
	// BW1W120 00483f40 BW1M119 011fc720
	bool32_t StartMovingToObject(Object* object, float param_2, float param_3, float param_4);
	// BW1W120 00483fe0 BW1M119 011fc3a0
	bool32_t StartMovingToPoint(const LHPoint& pos, float param_2, float param_3, float param_4);
	// BW1W120 00484260 BW1M119 011fc260
	bool32_t StopMoving();
	// BW1W120 004842b0 BW1M119 011fc210
	LHMatrix* GetSafeBuffer();
	// BW1W120 004842d0 BW1M119 011fc1c0
	bool32_t IsPerformingBodyAction();
	// BW1W120 004842e0 BW1M119 011fc160
	bool32_t IsMovingOrStanding();
	// BW1W120 00484300 BW1M119 011fc110
	bool32_t IsMoving() const;
	// BW1W120 00484310 BW1M119 011fc050
	bool32_t StartStaticAction(long action);
	// BW1W120 00484360 BW1M119 011fbfa0
	bool32_t StartConcurrentAction(long action);
	// BW1W120 004843a0 BW1M119 011fbeb0
	bool32_t StartStaticAction(long action, int param_2);
	// BW1W120 00484410 BW1M119 011fbcf0
	bool32_t StartFighting(LH3DCreature* other, LHPoint& pos, float param_3);
	// BW1W120 00484540 BW1M119 011fbc30
	bool32_t StartSolitaryKissing();
	// BW1W120 00484590 BW1M119 011fbb50
	bool32_t StartKissing(LH3DCreature* other);
	// BW1W120 004845f0 BW1M119 011fb9f0
	bool32_t EndFighting();
	// BW1W120 004846e0 BW1M119 011fb8d0
	bool32_t StartFightAction(long action, float param_2);
	// BW1W120 00484790 BW1M119 011fb6e0
	bool32_t StartFightRecoilAction(long action);
	// BW1W120 00484830 BW1M119 011fb5f0
	bool32_t StartDanceAction(long action);
	// BW1W120 004848c0 BW1M119 011fb560
	bool32_t EndStaticAction();
	// BW1W120 004848f0 BW1M119 011fb4d0
	bool32_t EndDanceAction();
	// BW1W120 00484920 BW1M119 011fb2c0
	bool32_t PointAt(LHPoint* pos, bool param_2);
	// BW1W120 00484ac0 BW1M119 011fb260
	void UpdatePointPoint(LHPoint* pos);
	// BW1W120 00484ae0 BW1M119 011fb210
	void StopPointing();
	// BW1W120 00484b00 BW1M119 011fb150
	bool32_t StartIndividualAction(long action);
	// BW1W120 00484b80 BW1M119 011fb090
	bool32_t StartIndividualAction(long action, int param_2);
	// BW1W120 00484c20 BW1M119 011fafe0
	bool32_t ForceIndividualAction(long action, int param_2);
	// BW1W120 00484c60 BW1M119 011faf30
	float GetBodyActionFraction();
	// BW1W120 00484c80 BW1M119 011fae70
	bool32_t StartObjectKeepAction(long action);
	// BW1W120 00484ce0 BW1M119 011fadd0
	bool32_t StartDeathAction(long action);
	// BW1W120 00484d30 BW1M119 011fac80
	bool32_t StartDeathAction(long action, int param_2);
	// BW1W120 00484e10 BW1M119 011fac30
	bool32_t IsActuallyDead();
	// BW1W120 00484e20 BW1M119 011fab90
	bool32_t Resurrect();
	// BW1W120 00484e60 BW1M119 011faac0
	bool32_t StartObjectRemoveAction(long action);
	// BW1W120 00484ec0 BW1M119 011fa790
	void StateSet(long state);
	// BW1W120 004851a0 BW1M119 011f96c0
	void StateSwitch();
	// BW1W120 00485df0 BW1M119 011f9560
	float CalculateMaximumActionRange(long action);
	// BW1W120 00485f40 BW1M119 011f9290
	long GetBlendedActionStatus(Object* object, LHPoint* pos, long action);
	// BW1W120 00486160 BW1M119 011f9010
	bool32_t IsInRangeImmediately(LHPoint& pos, long action, float* heading);
	// BW1W120 00486390 BW1M119 011f8d40
	void BeCut(LHPoint& pos, LHPoint& direction, long type, long sub_type);
	// BW1W120 004866f0 BW1M119 011f8ac0
	void ApplyBruise(MeshIntersect* intersect, long param_2, long param_3);
	// BW1W120 004867b0 BW1M119 011f8a20
	float GetHeadHeight();
	// BW1W120 00486800 BW1M119 011f8770
	bool32_t CheckKeepInArenaRule();
	// BW1W120 00486a00 BW1M119 011f7b90
	void StateAction();
	// BW1W120 004875d0 BW1M119 011f75d0
	void DoStaticAction();
	// BW1W120 00487b30 BW1M119 011f7360
	void DoPickupFromHandAction();
	// BW1W120 00487c70 BW1M119 011f7260
	bool GetPointingHandPosition(LHPoint& pos);
	// BW1W120 00487ce0 BW1M119 011f6f30
	void DoPointAction(bool param_1);
	// BW1W120 00487fa0 BW1M119 011f6aa0
	void DoCatchAction();
	// BW1W120 00488320 BW1M119 011f6800
	void DoCatchStep();
	// BW1W120 004884a0 BW1M119 011f6360
	void DoCatchMain();
	// BW1W120 004887a0 BW1M119 011f5900
	void DoKickingAction();
	// BW1W120 004890f0 BW1M119 011f5810
	void DoKissingAction();
	// BW1W120 00489180 BW1M119 011f52c0
	void DoFightMainAction();
	// BW1W120 00489540 BW1M119 011f4e90
	void CheckFightQueue();
	// BW1W120 00489930 BW1M119 011f4d30
	void ShuntFightQueue();
	// BW1W120 00489a20 BW1M119 011f4ae0
	void AddToFightQueue(unsigned long action, bool param_2);
	// BW1W120 00489b90 BW1M119 011f4930
	bool FightClickGround(LHPoint& pos, bool param_2);
	// BW1W120 00489ce0 BW1M119 011f41b0
	void AttemptAttack(long action, float param_2);
	// BW1W120 0048a380 BW1M119 011f4110
	void IncFightQueueSize();
	// BW1W120 0048a3d0 BW1M119 011f4070
	void DecFightQueueSize();
	// BW1W120 0048a420 BW1M119 011f3f60
	void AddFightIntersection(long param_1, MeshIntersect& intersect);
	// BW1W120 0048a490 BW1M119 011f3e80
	void AddFightIntersection(LHPoint& param_1, LHPoint& param_2);
	// BW1W120 0048a580 BW1M119 011f3cb0
	bool IsBlocking();
	// BW1W120 0048a5e0 BW1M119 011f2b30
	void DoFightActionAction();
	// BW1W120 0048b4b0 BW1M119 011f28f0
	void DoFightPullApart();
	// BW1W120 0048b650 BW1M119 011f27a0
	float GetForwardExtent();
	// BW1W120 0048b6e0 BW1M119 011f2690
	void ReceivedFightImpact3d(long param_1, float param_2, Creature* attacker);
	// BW1W120 0048b780 BW1M119 011f2640
	uint32_t GetObjectActionStatus();
	// BW1W120 0048b790 BW1M119 011f2420
	bool32_t InitialiseTurning(float heading);
	// BW1W120 0048b970 BW1M119 011f2250
	bool32_t DoTheTurningBusiness();
	// BW1W120 0048bab0 BW1M119 011f1fe0
	void AttemptToKeepOnFlatLand();
	// BW1W120 0048bcc0 BW1M119 011f15a0
	void DoBlendedAction();
	// BW1W120 0048c540 BW1M119 011f1380
	void GetThrowPosition(float heading, float slope, LHPoint* result);
	// BW1W120 0048c6c0 BW1M119 011f0f70
	void DoDiscardAction();
	// BW1W120 0048ca10 BW1M119 011f0d00
	void UpdateHeldObjects3Angles();
	// BW1W120 0048cbb0 BW1M119 011f0c10
	void ReleaseHeldObject();
	// BW1W120 0048cc80 BW1M119 011f0ae0
	void FillAverageHandPos(LHPoint& pos);
	// BW1W120 0048cd40 BW1M119 011f0950
	void ThrowPreCalc();
	// BW1W120 0048ceb0 BW1M119 011f0440
	void DoThrowingAction();
	// BW1W120 0048d2a0 BW1M119 011f00e0
	void DoMovingAction();
	// BW1W120 0048d520 BW1M119 011effe0
	void DoAppropriateAction();
	// BW1W120 0048d7b0 BW1M119 011efa70
	void InitialiseDestructionBones();
	// BW1W120 0048d8e0 BW1M119 011ef9b0
	void StartDestruction();
	// BW1W120 0048d940 BW1M119 011ef740
	void AdvanceMovementAnimations(float param_1);
	// BW1W120 0048dab0 BW1M119 011ef5d0
	void GetRelativePosition(LHPoint& pos, LHPoint* result);
	// BW1W120 0048dc70 BW1M119 011ef3f0
	void GetMultipliers(float* param_1, float* param_2, float* param_3, LHPoint& pos, long param_5, int param_6);
	// BW1W120 0048dd70 BW1M119 011eefb0
	void DrawFightSparkles();
	// BW1W120 0048e260 BW1M119 011edf50
	void DrawNow();
	// BW1W120 0048f0f0 BW1M119 011ede60
	void GetEyePoint(long eye, LHPoint* position, LHPoint* normal);
	// BW1W120 0048f180 BW1M119 011edd80
	void GetLipPoint(LHPoint* result);
	// BW1W120 0048f200 BW1M119 011edca0
	void GetVomPoint(LHPoint* result);
	// BW1W120 0048f280 BW1M119 011ed880
	void FillHeldObjectMatrix(LHMatrix* matrix);
	// BW1W120 0048f5b0 BW1M119 011ed6f0
	float CalculateRadius2D();
	// BW1W120 0048f710 BW1M119 011ed600
	void EndAnyActions(int param_1, int param_2);
	// BW1W120 0048f750 BW1M119 011ed590
	void EndAnyAnimsRapidly();
	// BW1W120 0048f7b0 BW1M119 011ed4e0
	void EndAnyActionsThenTurnToHeading(float heading);
	// BW1W120 0048f800 BW1M119 011ed460
	float GetPutDownDistance();
	// BW1W120 0048f830 BW1M119 011ec890
	uint32_t GetInteractionCheckSum();
	// BW1W120 00490460 BW1M119 011ec4f0
	uint32_t GetNormalCheckSum();
	// BW1W120 004907c0 BW1M119 011ec3a0
	void ProcessBreath();
	// BW1W120 00490960 BW1M119 011eb6b0
	void UpdateMotion();
	// BW1W120 00491180 BW1M119 011eaef0
	void ProcessMoveStraight();
	// BW1W120 0047f380
	static void CycleLookCounter();
	// BW1W120 00480380
	void ReduceFightHealth(float amount);
	// BW1W120 004803a0
	void StartUnknownAction6A();
	// BW1W120 00480aa0
	bool32_t IsPhysicsObject(Object* object);
	// BW1W120 00480c50
	void SetField5218(long value);
	// BW1W120 004812e0
	long FindMirrorBone(long bone);
	// BW1W120 004818d0
	void PlayQueuedSoundEffects();
	// BW1W120 00483050
	bool32_t IsStandingStill();
	// BW1W120 00483670
	bool32_t CanUpdateLook();
	// BW1W120 00483870
	static bool32_t IsDestinationValidForCreature(const LHPoint* pos);
	// BW1W120 00483aa0
	bool32_t AlwaysTrue(long param_1);
	// BW1W120 004846c0
	void SetField49a8(float value);
	// BW1W120 004846d0
	float GetField49a8();
	// BW1W120 004848a0
	bool32_t SetDanceAnimTime(int time);
	// BW1W120 00484bd0
	bool32_t ForceIndividualAction(long action);
	// BW1W120 00484e00
	bool32_t IsDying();
	// BW1W120 00485ee0 BW1M119 inlined
	float CalculateAverageActionRange(long action);
	// BW1W120 004864e0
	void DrawTestTattoo(long slot);
	// BW1W120 00489cb0
	bool32_t IsRecoiling();
	// BW1W120 0048a370
	bool ReturnTrue();
	// BW1W120 0048a520
	void DoNothing(long param_1);
	// BW1W120 0048a530
	void ValidateFightEvent(unsigned long time);
	// BW1W120 0048a570
	void ValidateLastFightIntersection(unsigned long time);
	// BW1W120 0048cc20
	void DropHeldObject(Object* object);
	// BW1W120 0048d250
	void DoStandingAction();
	// BW1W120 0048d750
	void ResetMorphAnims();
	// BW1W120 0048d930
	void ClearField5044();
	// BW1W120 0048db40
	void Unknown48db40(Object* object, LHPoint* result, long state);
	// BW1W120 0048f060
	void SetEyeIntersect(long eye, MeshIntersect* intersect);
	// BW1W120 0048f090
	void SetLipIntersect(MeshIntersect* intersect);
	// BW1W120 0048f0c0
	void SetVomIntersect(MeshIntersect* intersect);
	// BW1W120 0048f550
	void Unknown48f550();
	// BW1W120 00490860 BW1M119 011ec300
	bool32_t SetInHand(int in_hand);
	// BW1W120 004908b0
	bool32_t IsInPickUpBlockingState();

	// Defined in CreatureMorph.cpp

	// BW1W120 004ed250 BW1M119 01275c80
	void AddFootstepPuffs(long param_1);
	// BW1W120 004ee900 BW1M119 012741c0
	void ValidateCatchPositions();
	// BW1W120 004ee530 BW1M119 012745f0
	void ValidateDestructionPositions();
	// BW1W120 004ee6d0 BW1M119 01274380
	void ValidateFightPositions();
	// BW1W120 004eea90 BW1M119 01274070
	void ValidateKickPositions();
	// BW1W120 004ede40 BW1M119 01274d50
	void ValidateKissPositions();
	// BW1W120 004edff0 BW1M119 01274bf0
	void ValidatePickUpFromHandPosition();
	// BW1W120 004ee130 BW1M119 01274a30
	void ValidatePickUpPositions();
	// BW1W120 004ee2b0 BW1M119 012747c0
	void ValidateRemovePositions();
	// BW1W120 004edbf0 BW1M119 01274f20
	void ValidateThrowPositions();
	// BW1W120 004ec3f0 BW1M119 01276e70
	float GetExtraEyesScale();
	// BW1W120 004ec450 BW1M119 01276df0
	float GetExtraHeadScale();
	// BW1W120 004ec4b0 BW1M119 01276d70
	float GetExtraFeetScale();
	// BW1W120 004ec590 BW1M119 01275f80
	void UpdateBuffers();
	// BW1W120 004ebe10 BW1M119 01277340
	void GetPositionMatrix(LHMatrix* matrix);
	// BW1W120 0068e6e0 BW1M119 01415130
	void UpdateHandGlows(LHSoundAction action);

	// Inline methods

	// BW1W120 inlined BW1M119 011a6f80
	float GetStandingHeight() { return 15.0f * Size1; }
	// BW1W120 inlined BW1M119 011a6f40
	float GetEventualHeading() { return EventualHeading; }
	// Defined (inline) in Creature3D.cpp, between GetVomPoint and FillHeldObjectMatrix.
	// BW1W120 inlined BW1M119 011edc40
	inline long GetLeftHand();
	// BW1W120 inlined BW1M119 011fc2f0
	float GetStandardBreathTime() { return 5.0f / (1.0f / (float)sqrt(Size1)); }
	// BW1W120 inlined BW1M119 011ec4b0
	inline float GetBreathTime();
	// BW1W120 inlined BW1M119 inlined
	float GetRequiredBreathTime() { return field_0x4990; }
};
static_assert(sizeof(LH3DCreature) == 0x57b8, "LH3DCreature size is incorrect");

// Free functions

// BW1W120 0047f3a0
void AddToVectorOfMovingLiving(Living* living, float time, LHPoint* pos);
// BW1W120 00481c60
bool32_t DoesPosIntersectAnyVertices(const LHPoint& pos, float radius, Object* object);
// BW1W120 004867f0
void LogCurrentBufferMatrixes(LHMatrix* matrices, int count, long param_3);
// BW1W120 0048f820
uint32_t getint(float value);

#endif /* BW1_DECOMP_CREATURE_3D_INCLUDED_H */
