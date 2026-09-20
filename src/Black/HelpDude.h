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

	// BW1W120 005b9620 BW1M100 103485d0 HoverZone::Feel(float, float)
	float Feel(float x, float y);
};

struct EyePositions
{
	float field_0x0[2];
	float field_0x8[2];
	float field_0x10[2];
	float Closure[2];

	// BW1W120 005c2040 EyePositions::EyePositions(void)
	EyePositions();
	// BW1W120 005ba9c0 void EyePositions::Interp(EyePositions*, EyePositions*, float)
	void Interp(EyePositions* start, EyePositions* end, float amount);
};

struct EyeBlinker
{
	float MinDelay;
	float MaxDelay;
	float Duration;

	// BW1W120 005c2070 EyeBlinker::EyeBlinker(void)
	EyeBlinker();
	// BW1W120 005baad0 void EyeBlinker::Interp(EyeBlinker*, EyeBlinker*, float)
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

	// BW1W120 005c2090 BW1M100 1033f540 HelpDudeEmotion::HelpDudeEmotion(void)
	HelpDudeEmotion();
	// BW1W120 005baa40 BW1M100 10347bc0 HelpDudeEmotion::Interp(HelpDudeEmotion*, HelpDudeEmotion*, float)
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

	// BW1W120 inlined BW1M100 10348c90 HelpDude::~HelpDude(void)
	virtual ~HelpDude();
	// BW1W120 005c20e0 BW1M100 10348c40 HelpDude::Get3DSoundPos(LHPoint*)
	virtual int Get3DSoundPos(LHPoint* param_1);

	// Windows addresses; method names and parameter lists corroborated by embedded Mac symbols.
	// BW1W120 005b96d0 BW1M100 10348530 HelpDude::Sethoverx(float, float, bool)
	void Sethoverx(float x, float time, bool clamp);
	// BW1W120 005b98d0 BW1M100 10348490 HelpDude::Sethovery(float, float, bool)
	void Sethovery(float y, float time, bool clamp);
	// BW1W120 005b9ad0 BW1M100 10348350 HelpDude::Feel(float, float)
	float Feel(float x, float y);
	// BW1W120 005ba010 BW1M100 10348180 HelpDude::UpdateHoverZ(float)
	void UpdateHoverZ(float min_z);
	// BW1W120 005bb730 BW1M100 10015e50 HelpDude::IsTalkingWithDelay(void)
	int IsTalkingWithDelay();
	// BW1W120 005bb760 BW1M100 10015d60 HelpDude::IsTalking(void)
	int IsTalking();
	// BW1W120 005bb8f0 void HelpDude::CheckSmokeTrigger(float)
	void CheckSmokeTrigger(float position);
	// BW1W120 005bbbd0 BW1M100 10346d20 HelpDude::SetPos(const LHCoord&)
	void SetPos(const LHCoord& position);
	// BW1W120 005bbcd0 BW1M100 10346c50 HelpDude::ResetTrail(void)
	void ResetTrail();
	// BW1W120 005bbd20 BW1M100 10346b80 HelpDude::UpdateClingEdge(void)
	void UpdateClingEdge();
	// BW1W120 005bbdd0 BW1M100 10346a30 HelpDude::FlyTo2D(const LHCoord&, float, bool)
	void FlyTo2D(const LHCoord& position, float time, bool clamp);
	// BW1W120 005bbe70 BW1M100 10346980 HelpDude::SetCling(float, float, bool)
	void SetCling(float x, float y, bool instant);
	// BW1W120 005bbef0 BW1M100 103468f0 HelpDude::IsAnimPlaying(void)
	bool IsAnimPlaying();
	// BW1W120 005bbf30 BW1M100 103467f0 HelpDude::PlayAnimAtPos(float, float, ANIMLIST, float)
	void PlayAnimAtPos(float x, float y, ANIMLIST anim, float speed);
	// BW1W120 005bbfa0 BW1M100 10346700 HelpDude::PointAt2D(const LHCoord&)
	void PointAt2D(const LHCoord& position);
	// BW1W120 005bc6c0 BW1M100 10345f60 HelpDude::LookAt(LHPoint*)
	void LookAt(LHPoint* point);
	// BW1W120 005bc700 BW1M100 10345ef0 HelpDude::LookAtCamera(void)
	void LookAtCamera();
	// BW1W120 005bc720 BW1M100 10345e70 HelpDude::LookAtOtherGuy(void)
	void LookAtOtherGuy();
	// BW1W120 005bc750 BW1M100 10345e10 HelpDude::EyeLookAt(LHPoint*)
	void EyeLookAt(LHPoint* point);
	// BW1W120 005bc790 void HelpDude::EyeLookAtCamera(void)
	void EyeLookAtCamera();
	// BW1W120 005bc7a0 void HelpDude::EyeLookAtOtherGuy(void)
	void EyeLookAtOtherGuy();
	// BW1W120 005bc7c0 BW1M100 10345dd0 HelpDude::GetSoundFXBank(void)
	LH_AudioBank* GetSoundFXBank();
	// BW1W120 005bcc20 BW1M100 10345730 HelpDude::ResetLipSyncAnimList(void)
	void ResetLipSyncAnimList();
	// BW1W120 005bcc90 BW1M100 10345670 HelpDude::FlyToGimme(void)
	void FlyToGimme();
	// BW1W120 005bd210 BW1M100 10344ea0 HelpDude::SetEmotion(int, float)
	void SetEmotion(int emotion, float time);
	// BW1W120 005bd250 BW1M100 10344e00 HelpDude::Smoothify(float)
	static float Smoothify(float amount);
	// BW1W120 005bd440 BW1M100 10344990 HelpDude::GetHomeIdx(int)
	static LHCoord GetHomeIdx(int edge);
	// BW1W120 005bdd40 BW1M100 10344080 HelpDude::UpdateHoverZones(float, int)
	void UpdateHoverZones(float time, int param_2);
	// BW1W120 005bf5d0 BW1M100 10342480 HelpDude::Update(float, int, float, int, int)
	void Update(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bf620 BW1M100 103422b0 HelpDude::Update2(float, int, float, int, int)
	void Update2(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bf800 BW1M100 10342260 HelpDude::FinishUpdate(void)
	void FinishUpdate();
	// BW1W120 005c06b0 BW1M100 10341240 HelpDude::SetHoverArea(float, float, float, float, float, int)
	void SetHoverArea(float x, float y, float inner_radius, float outer_radius, float strength, int index);

	// TODO: Recover the state machine, animation/rendering, resource loading and speech methods.
	// These are declarations of actual target routines, not fallback implementations.
	// BW1W120 005bd4a0 BW1M100 103443e0 HelpDude::SetState(HELPDUDESTATE, int)
	void SetState(HELPDUDESTATE state, int param_2);
	// BW1W120 005bdda0 BW1M100 10342530 HelpDude::Update1(float, int, float, int, int)
	void Update1(float time, int param_2, float param_3, int param_4, int param_5);
	// BW1W120 005bfe00 BW1M100 10341c40 HelpDude::CalcHeadPos(LHMatrix&, LHPoint&, int)
	void CalcHeadPos(LHMatrix& matrix, LHPoint& point, int bone);
	// BW1W120 005c0140 BW1M100 10341850 HelpDude::ApplyHeadMovement(bool)
	void ApplyHeadMovement(bool pointing);
	// BW1W120 005c0610 BW1M100 103412a0 HelpDude::FinishAnimStack(LHMatrix&)
	void FinishAnimStack(LHMatrix& matrix);
	// BW1W120 005c15b0 BW1M100 1033fe10 HelpDude::Uninit(bool)
	void Uninit(bool reinit);
};

#endif /* BW1_DECOMP_HELP_DUDE_INCLUDED_H */
