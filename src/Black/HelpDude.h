#ifndef BW1_DECOMP_HELP_DUDE_INCLUDED_H
#define BW1_DECOMP_HELP_DUDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpDudeAnim.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHMatrix.h>
#include <Lionhead/LH3DLib/development/Zoomer.h>
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

class Base;
struct LHPoint;
struct LHFile;
struct LH3DSprite;

// Original type names survive in the Mac executable. Member names below are descriptive.
struct HoverZone
{
	float Strength;
	float X;
	float Y;
	float InnerRadius;
	float OuterRadius;

	// BW1W120 005b9620. Mac: Feel__9HoverZoneFff. Windows returns ST(0), not void.
	float Feel(float x, float y);
};

struct EyePositions
{
	float field_0x0[2];
	float field_0x8[2];
	float field_0x10[2];
	float Closure[2];

	// BW1W120 005c2040; constructor ownership inferred from HelpDudeEmotion construction.
	EyePositions();
	// BW1W120 005ba9c0. Descriptive method name; no separate Mac symbol located.
	void Interp(EyePositions* start, EyePositions* end, float amount);
};

struct EyeBlinker
{
	float MinDelay;
	float MaxDelay;
	float Duration;

	// BW1W120 005c2070; ownership corroborated by EyeBlinker::Update at 005bac10.
	EyeBlinker();
	// BW1W120 005baad0. Descriptive name; no separate Mac symbol located.
	void Interp(EyeBlinker* start, EyeBlinker* end, float amount);
};

struct HelpDudeEmotion
{
	EyeBlinker   Blink;
	EyePositions Eyes;
	float        field_0x2c;
	float        field_0x30;
	float        field_0x34;
	float        field_0x38;
	float        field_0x3c;

	// BW1W120 005c2090. Mac: __ct__15HelpDudeEmotionFv.
	HelpDudeEmotion();
	// BW1W120 005baa40. Mac: Interp__15HelpDudeEmotionFP15HelpDudeEmotionP15HelpDudeEmotionf.
	void Interp(HelpDudeEmotion* start, HelpDudeEmotion* end, float amount);
};

struct HelpDudeTrail
{
	LHPoint Positions[32];
	// TODO: Recover the particle member names and sprite initialization before implementing Init/Update/Draw.
	uint8_t     field_0x180[0x1c0];
	LH3DSprite* Sprite;
	float       Time;
	int         Index;
};

// Descriptive storage type for the four 0x1c-stride zones updated at 005bdd40.
struct HelpDudeHoverZone
{
	float field_0x0[3];
	float InnerRadius;
	float OuterRadius;
	float InnerSpeed;
	float OuterSpeed;
};

// Original enum name; enumerator spellings remain unrecovered.
enum HELPDUDESTATE
{
	HELPDUDESTATE_0x4 = 0x4,
	HELPDUDESTATE_0x8 = 0x8,
	HELPDUDESTATE_0x80 = 0x80,
	HELPDUDESTATE_0x100 = 0x100,
	HELPDUDESTATE_0x120 = 0x120,
	HELPDUDESTATE_0x200 = 0x200
};

class HelpDude : public LocalBase
{
public:
	// BW1W120 allocation size 0x37f0, corroborated by the deleting destructor.
	// Unrecovered regions are opaque storage, not established allocation-ready member types.
	// TODO: Recover construction/resource ownership before allocating this type from source.
	int                  SmokeTriggered; /* 0x8 */
	uint8_t              field_0xc[0x28b0];
	HelpDudeTrail        Trail; /* 0x28bc */
	uint8_t              field_0x2c08[0x10];
	bool                 HoverLocked; /* 0x2c18 */
	uint8_t              field_0x2c19[3];
	float                field_0x2c1c;
	float                field_0x2c20;
	int                  DudeType; /* 0x2c24 */
	float                field_0x2c28;
	float                field_0x2c2c;
	int                  Emotion; /* 0x2c30 */
	float                EmotionDuration;
	uint8_t              field_0x2c38[0x2ac];
	int                  HeadBone; /* 0x2ee4 */
	uint8_t              field_0x2ee8[0x94];
	float                LipSyncAnimList[80]; /* 0x2f7c */
	uint8_t              field_0x30bc[0x294];
	LHMatrix             Matrix;        /* 0x3350 */
	HoverZone            HoverAreas[6]; /* 0x3380 */
	HelpDudeHoverZone    HoverZones[4]; /* 0x33f8 */
	uint8_t              field_0x3468[8];
	HelpDude*            OtherDude;         /* 0x3470 */
	float                OtherDudeDistance; /* 0x3474 */
	uint8_t              field_0x3478[0x10];
	int                  field_0x3488;
	int                  field_0x348c;
	HELPDUDESTATE        State; /* 0x3490 */
	HELPDUDESTATE        PreviousState;
	LHPoint              LookPoint;    /* 0x3498 */
	LHPoint              EyeLookPoint; /* 0x34a4 */
	LHPoint              field_0x34b0;
	LHPoint              field_0x34bc;
	int                  HasLookPoint; /* 0x34c8 */
	int                  HasEyeLookPoint;
	float                field_0x34d0;
	float                field_0x34d4;
	float                field_0x34d8;
	uint8_t              field_0x34dc[0x10];
	float                ClingX; /* 0x34ec */
	float                ClingY;
	int                  ClingEdge;
	int                  field_0x34f8;
	float                TargetX; /* 0x34fc */
	float                TargetY;
	int                  field_0x3504;
	float                AnimSpeed; /* 0x3508 */
	ANIMLIST             Anim;
	HELPDUDESTATE        NextState;
	Zoomer               HoverX; /* 0x3514 */
	Zoomer               HoverY; /* 0x3544 */
	Zoomer               HoverZ; /* 0x3574 */
	bool                 field_0x35a4;
	uint8_t              field_0x35a5[3];
	int                  field_0x35a8;
	float                PointX; /* 0x35ac */
	float                PointY;
	uint8_t              field_0x35b4[0x1c];
	uint32_t             AnimFlags;         /* 0x35d0 */
	uint32_t             SentenceStartTime; /* 0x35d4 */
	uint32_t             field_0x35d8;
	float                field_0x35dc;
	uint8_t              field_0x35e0[0x9c];
	LH_SamplePlayOptions SampleOptions; /* 0x367c */
	float                field_0x37e4;
	int                  FlyingToGimme;
	uint32_t             LastTalkingTime;

	// Override methods

	// BW1W120 005c2110 BW1M100 10348c90 HelpDude::_dt(void)
	virtual ~HelpDude();
	// BW1W120 005c20e0 BW1M100 10348c40 HelpDude::Get3DSoundPos(LHPoint *)
	virtual int Get3DSoundPos(LHPoint* param_1);

	// Windows addresses; method names and parameter lists corroborated by embedded Mac symbols.
	// BW1W120 005b96d0
	void Sethoverx(float x, float time, bool clamp);
	// BW1W120 005b98d0
	void Sethovery(float y, float time, bool clamp);
	// BW1W120 005b9ad0. Windows returns ST(0), not the void in the current symbol map.
	float Feel(float x, float y);
	// BW1W120 005ba010
	void UpdateHoverZ(float min_z);
	// BW1W120 005bb730
	int IsTalkingWithDelay();
	// BW1W120 005bb760. Windows returns a full-register Boolean.
	int IsTalking(); // TODO: Audio-system declarations and shared speech storage are unrecovered.
	// BW1W120 005bb8f0. Descriptive name; no separate Mac symbol located.
	void CheckSmokeTrigger(float position);
	// BW1W120 005bbbd0
	void SetPos(const LHCoord& position);
	// BW1W120 005bbcd0
	void ResetTrail();
	// BW1W120 005bbd20
	void UpdateClingEdge();
	// BW1W120 005bbdd0
	void FlyTo2D(const LHCoord& position, float time, bool clamp);
	// BW1W120 005bbe70
	void SetCling(float x, float y, bool instant);
	// BW1W120 005bbef0. Windows returns AL, unlike IsTalking.
	bool IsAnimPlaying();
	// BW1W120 005bbf30
	void PlayAnimAtPos(float x, float y, ANIMLIST anim, float speed);
	// BW1W120 005bbfa0
	void PointAt2D(const LHCoord& position);
	// BW1W120 005bc6c0
	void LookAt(LHPoint* point);
	// BW1W120 005bc700
	void LookAtCamera();
	// BW1W120 005bc720
	void LookAtOtherGuy();
	// BW1W120 005bc750
	void EyeLookAt(LHPoint* point);
	// BW1W120 005bc790 / 005bc7a0. Descriptive names; no separate Mac symbols located.
	void EyeLookAtCamera();
	void EyeLookAtOtherGuy();
	// BW1W120 005bc7c0. Windows returns an audio-bank pointer, not void.
	LH_AudioBank* GetSoundFXBank();
	// BW1W120 005bcc20
	void ResetLipSyncAnimList();
	// BW1W120 005bcc90
	void FlyToGimme();
	// BW1W120 005bd210
	void SetEmotion(int emotion, float time);
	// BW1W120 005bd250. Windows uses caller cleanup and does not read this.
	static float Smoothify(float amount);
	// BW1W120 005bd440. Hidden LHCoord return buffer; caller cleanup.
	static LHCoord GetHomeIdx(int edge);
	// BW1W120 005bdd40
	void UpdateHoverZones(float time, int param_2);
	// BW1W120 005bf5d0
	void Update(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bf620
	void Update2(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bf800
	void FinishUpdate();
	// BW1W120 005c06b0
	void SetHoverArea(float x, float y, float inner_radius, float outer_radius, float strength, int index);

	// TODO: Recover the state machine, animation/rendering, resource loading and speech methods.
	// These are declarations of actual target routines, not fallback implementations.
	// BW1W120 005bd4a0
	void SetState(HELPDUDESTATE state, int param_2);
	// BW1W120 005bdda0
	void Update1(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bfe00 / 005c0140
	void CalcHeadPos(LHMatrix& matrix, LHPoint& point, int bone);
	void ApplyHeadMovement(bool pointing);
	// BW1W120 005c0610
	void FinishAnimStack(LHMatrix& matrix);
	// BW1W120 005c15b0; target map incorrectly splits this routine at 005c15b2.
	void Uninit(bool reinit);
};

static_assert(sizeof(HoverZone) == 0x14, "HoverZone size is incorrect");
static_assert(sizeof(EyePositions) == 0x20, "EyePositions size is incorrect");
static_assert(sizeof(HelpDudeEmotion) == 0x40, "HelpDudeEmotion size is incorrect");
static_assert(sizeof(HelpDudeTrail) == 0x34c, "HelpDudeTrail size is incorrect");
static_assert(sizeof(HelpDude) == 0x37f0, "HelpDude size is incorrect");
static_assert(offsetof(HelpDude, Trail) == 0x28bc, "HelpDude trail offset is incorrect");
static_assert(offsetof(HelpDude, Matrix) == 0x3350, "HelpDude matrix offset is incorrect");
static_assert(offsetof(HelpDude, HoverX) == 0x3514, "HelpDude hover offset is incorrect");
static_assert(offsetof(HelpDude, SampleOptions) == 0x367c, "HelpDude sample options offset is incorrect");

#endif /* BW1_DECOMP_HELP_DUDE_INCLUDED_H */
