#ifndef BW1_DECOMP_HELP_DUDE_INCLUDED_H
#define BW1_DECOMP_HELP_DUDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHCoord.h>         /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHMatrix.h>        /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>         /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LHRandom.h>        /* For Random */
#include <Lionhead/LH3DLib/development/Zoomer.h>          /* For struct Zoomer, struct Zoomer3d */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For struct LH_SamplePlayOptions */
#include <chlasm/HelpDudeAnim.h>                          /* For enum ANIMLIST */

#include "AutoVoiceParams.h" /* For struct AutoVoiceParams, struct VoiceKey */
#include "LocalBase.h"       /* For class LocalBase */

// Forward Declares

class LHFile;
struct AudioTagList;
struct CAnim;
struct CFrame;
struct HelpDude;
struct LH3DMaterial;
struct LH3DMesh;
struct LH3DSprite;
class LH_AudioBank;
class LH_AudioSystem;
struct LH_SampleInfo;
class LH3DComplexObject;
class LH3DObject;

#define HELPDUDE_TRAIL_LENGTH    32
#define HELPDUDE_TRAIL_SPARKLES  16
#define HELPDUDE_HOVER_ZONES     6
#define HELPDUDE_INTERESTS       4
#define HELPDUDE_EMOTIONS        8
#define HELPDUDE_SMOKE_PUFFS     16
#define HELPDUDE_FILENAME_LENGTH 0x80
#define HELPDUDE_EYE_BONES       3

enum HELPDUDE_LOOK
{
	HELPDUDE_LOOK_AUTO = 0,
	HELPDUDE_LOOK_OTHER_GUY = 1,
	HELPDUDE_LOOK_AHEAD = 2,
	HELPDUDE_LOOK_POINT = 3,
	HELPDUDE_LOOK_MOUSE = 4,
	HELPDUDE_LOOK_TARGET = 5,
};

enum HELPDUDE_LIPSYNC
{
	HELPDUDE_LIPSYNC_OFF = 0,
	HELPDUDE_LIPSYNC_ONCE = 1,
	HELPDUDE_LIPSYNC_LOOP = 2,
	HELPDUDE_LIPSYNC_LOOP_ALT = 3,
	HELPDUDE_LIPSYNC_FINISH = 4,
};

#define HELPDUDE_ANIM_NO_LOOK      0x01
#define HELPDUDE_ANIM_FLAP         0x02
#define HELPDUDE_ANIM_NO_EMOTION   0x04
#define HELPDUDE_ANIM_NO_BLINK     0x08
#define HELPDUDE_ANIM_HOLD_STATE   0x10
#define HELPDUDE_ANIM_NOT_CLINGING 0x20
#define HELPDUDE_ANIM_STAY_BACK    0x40

enum HELPDUDESTATE
{
	HELPDUDESTATE_NONE = 0x0,
	HELPDUDESTATE_LEFT = 0x1,
	HELPDUDESTATE_RIGHT = 0x2,
	HELPDUDESTATE_HOVER = 0x4,
	HELPDUDESTATE_POINT = 0x8,
	HELPDUDESTATE_INTRO = 0x10,
	HELPDUDESTATE_OUTRO = 0x20,
	HELPDUDESTATE_AVOID = 0x40,
	HELPDUDESTATE_PLAY_ANIM = 0x80,
	HELPDUDESTATE_CLING = 0x100,
	HELPDUDESTATE_ANIM = 0x200,

	HELPDUDESTATE_POINT_LEFT = HELPDUDESTATE_POINT | HELPDUDESTATE_LEFT,
	HELPDUDESTATE_POINT_RIGHT = HELPDUDESTATE_POINT | HELPDUDESTATE_RIGHT,
	HELPDUDESTATE_POINT_INTRO_LEFT = HELPDUDESTATE_POINT | HELPDUDESTATE_INTRO | HELPDUDESTATE_LEFT,
	HELPDUDESTATE_POINT_INTRO_RIGHT = HELPDUDESTATE_POINT | HELPDUDESTATE_INTRO | HELPDUDESTATE_RIGHT,
	HELPDUDESTATE_POINT_OUTRO_LEFT = HELPDUDESTATE_POINT | HELPDUDESTATE_OUTRO | HELPDUDESTATE_LEFT,
	HELPDUDESTATE_POINT_OUTRO_RIGHT = HELPDUDESTATE_POINT | HELPDUDESTATE_OUTRO | HELPDUDESTATE_RIGHT,
	HELPDUDESTATE_CLING_INTRO = HELPDUDESTATE_CLING | HELPDUDESTATE_INTRO,
	HELPDUDESTATE_CLING_OUTRO = HELPDUDESTATE_CLING | HELPDUDESTATE_OUTRO,
};

struct HoverZone
{
	float Strength;
	float X;
	float Y;
	float InnerRadius;
	float OuterRadius;

	// Non-virtual methods

	// BW1W120 005b9620 BW1M119 01350880
	float Feel(float x, float y);
	// BW1W120 005ba780 BW1M119 null
	void Draw();
};
static_assert(sizeof(HoverZone) == 0x14, "Data type is of wrong size");

struct HelpDudeSparkle
{
	LHPoint Pos;
	LHPoint Velocity;
	float   Age;

	// Constructors

	// BW1W120 005c2170 BW1M119 013478c0
	HelpDudeSparkle() {}
};
static_assert(sizeof(HelpDudeSparkle) == 0x1c, "Data type is of wrong size");

struct HelpDudeTrail
{
	LHPoint         Points[HELPDUDE_TRAIL_LENGTH];
	HelpDudeSparkle Sparkles[HELPDUDE_TRAIL_SPARKLES];
	LH3DSprite*     Sprite;
	float           Timer;
	int             Head;

	// Non-virtual methods

	// BW1W120 005b8f00 BW1M119 01052b40
	void Update(const LHPoint& pos, float dt);
	// BW1W120 005b90c0 BW1M119 013509c0
	void Draw(HelpDude* dude, LH3DMaterial* material);
	// BW1W120 005c1c90 BW1M119 inlined
	void Init(LHPoint pos);
};
static_assert(sizeof(HelpDudeTrail) == 0x34c, "Data type is of wrong size");

struct EyePositions
{
	float EyeScale[2];
	float PupilSize[2];
	float PupilStretch[2];
	float Lid[2];

	// Constructors

	// BW1W120 005c2040 BW1M119 inlined
	EyePositions()
	{
		EyeScale[0] = EyeScale[1] = 1.0f;
		PupilSize[0] = PupilSize[1] = 1.0f;
		PupilStretch[0] = PupilStretch[1] = 0.0f;
		Lid[0] = Lid[1] = 0.0f;
	}

	// Non-virtual methods

	// BW1W120 005ba9c0 BW1M119 inlined
	void Interp(EyePositions* from, EyePositions* to, float t);
};
static_assert(sizeof(EyePositions) == 0x20, "Data type is of wrong size");

struct EyeBlinker
{
	float MinInterval;   /* 0x0 */
	float MaxInterval;   /* 0x4 */
	float BlinkDuration; /* 0x8 */

	// Constructors

	// BW1W120 005c2070 BW1M119 inlined
	EyeBlinker()
	{
		MinInterval = 5.0f;
		MaxInterval = 10.0f;
		BlinkDuration = 0.5f;
	}

	// Non-virtual methods

	// BW1W120 005bac10 BW1M119 0134fd10
	void Update(EyePositions* out, EyePositions* in, float* timer, float dt);
	// BW1W120 005baad0 BW1M119 inlined
	void Interp(EyeBlinker* from, EyeBlinker* to, float t);
};
static_assert(sizeof(EyeBlinker) == 0xc, "Data type is of wrong size");

struct HelpDudeEmotion
{
	EyeBlinker   Blinker;
	EyePositions Eyes;
	float        WingSpeed;
	float        SpareScale;
	float        HeadWobbleX;
	float        HeadWobbleY;
	float        SpareWobble;

	// Constructors

	// BW1W120 005c2090 BW1M119 01347830
	HelpDudeEmotion()
	{
		WingSpeed = 1.0f;
		SpareScale = 1.0f;
		HeadWobbleX = 0.0f;
		HeadWobbleY = 0.0f;
		SpareWobble = 0.0f;
	}

	// Non-virtual methods

	// BW1W120 005baa40 BW1M119 0134fe80
	void Interp(HelpDudeEmotion* from, HelpDudeEmotion* to, float t);
};
static_assert(sizeof(HelpDudeEmotion) == 0x40, "Data type is of wrong size");

struct DudeInterest
{
	LHPoint Pos;
	float   Interest;
	float   Urgency;
	float   InterestRate;
	float   UrgencyRate;

	// Constructors

	// BW1W120 inlined BW1M119 01347800
	DudeInterest() {}
};
static_assert(sizeof(DudeInterest) == 0x1c, "Data type is of wrong size");

struct Smoke3
{
	LHPoint  Pos;
	float    Size;
	float    Age;
	float    Spin;
	float    Shrink;
	uint32_t Colour;

	// Constructors

	// BW1W120 inlined BW1M119 013493e0
	Smoke3() { Init(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Init()
	{
		uint32_t grey = (int)Random(116.0f, 250.0f);
		Colour = (((grey << 8) | grey) << 8) | grey;
		Pos.x = Random(-0.8f, 0.8f);
		Pos.y = Random(-1.9f, 1.5f);
		Pos.z = Random(-1.0f, 1.0f);
		Shrink = 1.0f + (1.0f - Pos.y);
		Size = Random(4.0f, 8.0f);
		Spin = Random(-2.0f, 2.0f);
		Age = 0.0f;
	}
};
static_assert(sizeof(Smoke3) == 0x20, "Data type is of wrong size");

struct HelpDudeSound
{
	long  Sample;
	int   Optional;
	float Time;
};
static_assert(sizeof(HelpDudeSound) == 0xc, "Data type is of wrong size");

struct HelpDudeSoundInfo
{
	int            SoundCount;
	HelpDudeSound* Sounds;
	float          LoopStart;
	float          LoopEnd;

	// Constructors

	// BW1W120 inlined BW1M119 01347770
	HelpDudeSoundInfo()
	{
		Sounds = NULL;
		SoundCount = 0;
	}

	// Destructors

	// BW1W120 inlined BW1M119 013476e0
	~HelpDudeSoundInfo() { delete[] Sounds; }
};
static_assert(sizeof(HelpDudeSoundInfo) == 0x10, "Data type is of wrong size");

struct HelpDudeBones
{
	int Eyes[2][HELPDUDE_EYE_BONES];
	int Head;
};
static_assert(sizeof(HelpDudeBones) == 0x1c, "Data type is of wrong size");

struct HelpDude : public LocalBase
{
	bool32_t             Invisible;
	int                  BoneCount;
	float                Scale;
	LH3DMesh*            Mesh;
	unsigned int         MeshSize;
	LH3DComplexObject*   Object;
	LH3DObject*          DrawObject;
	CAnim**              Anims;
	CFrame*              Frame;
	char                 MeshFile[HELPDUDE_FILENAME_LENGTH];
	char                 AnimFiles[ANIM_LAST][HELPDUDE_FILENAME_LENGTH];
	LHMatrix*            BaseMatrices;
	LHMatrix*            InverseBaseMatrices;
	LHMatrix*            BoneMatrices;
	LHMatrix*            BaseBoneMatrices;
	HelpDudeTrail        Trail;
	LH3DSprite*          GlowSprite;
	LH3DSprite*          SmokeSprites;
	Smoke3*              SmokePuffs;
	float                SmokeTime;
	bool                 Smoking;
	float                Visibility;
	float                TargetVisibility;
	bool32_t             IsEvil;
	int                  Emotion;
	float                EmotionStrength;
	int                  TargetEmotion;
	float                TargetEmotionStrength;
	HelpDudeEmotion      Emotions[HELPDUDE_EMOTIONS];
	HelpDudeEmotion      CurrentEmotion;
	float                BlinkTimer;
	char                 LipSyncAnimFlags[ANIM_LAST];
	HelpDudeBones        Bones;
	int                  PupilBone;
	float                PupilU;
	float                PupilV;
	float                PupilScale;
	LH_AudioSystem*      AudioSystem;
	LH_AudioBank*        SentenceBank;
	int                  SentenceCount;
	AudioTagList*        SentenceTags;
	AudioTagList*        CurrentTags;
	int                  CurrentSentence;
	AutoVoiceParams      VoiceParams;
	int                  field_0x2f50[4];
	VoiceKey             Voice;
	float                TalkTime;
	int                  SavedLookMode;
	int                  LookMode;
	int                  LipSyncAnimState[ANIM_LAST];
	float                LipSyncAnimTime[ANIM_LAST];
	float                LastSoundTime[ANIM_LAST];
	HelpDudeSoundInfo*   SoundInfos;
	float                MouseSpeed;
	float                MouseExcitement;
	bool                 LookAlternative;
	float                LookSwitchTime;
	LHMatrix             Transform;
	HoverZone            HoverZones[HELPDUDE_HOVER_ZONES];
	DudeInterest         Interests[HELPDUDE_INTERESTS];
	LHCoord              LastMousePos;
	HelpDude*            OtherGuy;
	float                OtherGuyDistance;
	float                WingTime;
	float                BobTime;
	float                WobbleTime;
	float                StateTime;
	float                EmotionTime;
	float                WingsBlend;
	HELPDUDESTATE        State;
	HELPDUDESTATE        NextState;
	LHPoint              LookAtPos;
	LHPoint              EyeLookAtPos;
	LHPoint              HeadLook;
	LHPoint              HeadLookTarget;
	bool32_t             LookAtValid;
	bool32_t             EyeLookAtValid;
	float                ZoomBlend;
	float                ZoomTarget;
	float                ZoomSpeed;
	float                GlowSize;
	LHPoint              GlowOffset;
	float                ClingX;
	float                ClingY;
	int                  ClingEdge;
	float                ClingAnimTime;
	float                AnimPosX;
	float                AnimPosY;
	float                ClingRoll;
	float                AnimSpeed;
	ANIMLIST             AnimToPlay;
	HELPDUDESTATE        AnimState;
	Zoomer               HoverX;
	Zoomer               HoverY;
	Zoomer               HoverZ;
	bool                 PointOffScreen;
	float                CameraPointBlend;
	float                PointX;
	float                PointY;
	float                Size;
	float                Depth;
	float                TalkDepth;
	float                Tilt;
	float                FingerSide;
	float                FingerForward;
	int                  AvoidDirection;
	int                  LipSyncFlags;
	uint32_t             SayTick;
	int                  SaySample;
	float                PointBlend;
	Zoomer3d             PointAt;
	float                FlyToPoint;
	float                PointSideOffset;
	float                PointHeightOffset;
	LH_SamplePlayOptions SampleOptions;
	float                SizeScale;
	bool32_t             FlyingToGimme;
	uint32_t             LastTalkTick;

	// Static members

	// BW1W120 00bf029c BW1M119 null
	static const char* AnimNames[ANIM_LAST];

	// Static methods

	// BW1W120 005bb530 BW1M119 0134f870
	static LH_SampleInfo* PlaySample(LH_AudioSystem* audio_system, LH_SamplePlayOptions* options);
	// BW1W120 005bd250 BW1M119 0134d0f0
	static float Smoothify(float t);
	// BW1W120 005bd440 BW1M119 0134cc80
	static LHCoord GetHomeIdx(int edge);

	// Constructors

	// BW1W120 005c1e20 BW1M119 null
	HelpDude(char* mesh_file, int anim_count, char** anim_files, bool32_t is_evil);

	// Override methods

	// BW1W120 005c20e0 BW1M119 01350e50
	virtual int Get3DSoundPos(LHPoint* pos)
	{
		*pos = Transform.GetPos();
		return 1;
	}
	// BW1W120 005c2110 BW1M119 01350ea0
	virtual ~HelpDude() { Uninit(false); }

	// Non-virtual methods

	// BW1W120 005b96d0 BW1M119 013507e0
	void Sethoverx(float x, float time, bool clamp);
	// BW1W120 005b98d0 BW1M119 01350740
	void Sethovery(float y, float time, bool clamp);
	// BW1W120 005b9ad0 BW1M119 01350610
	float Feel(float x, float y);
	// Debug view of Feel over the whole hover plane.
	// BW1W120 005b9c40 BW1M119 null
	void DrawFeel();
	// BW1W120 005ba010 BW1M119 01350440
	void UpdateHoverZ(float min_z);
	// BW1W120 005ba350 BW1M119 01350020
	void UpdateHoverPos(float dt);
	// BW1W120 005bb060 BW1M119 0134fc10
	LH_AudioBank* SetSentenceBank(LH_AudioSystem* audio_system, LH_AudioBank* bank);
	// BW1W120 005bb1b0 BW1M119 null
	LH_AudioBank* SetSentenceBank(LH_AudioSystem* audio_system, char* name);
	// BW1W120 005bb2c0 BW1M119 0134fb30
	void FreeSentenceBank();
	// BW1W120 005bb340 BW1M119 0134fa00
	void SaySentence(int sample, bool32_t dont_interrupt, int delay);
	// BW1W120 005bb610 BW1M119 010182c0
	void UpdateSaySentence();
	// BW1W120 005bb730 BW1M119 010189e0
	bool32_t IsTalkingWithDelay();
	// BW1W120 005bb760 BW1M119 010188f0
	bool32_t IsTalking();
	// BW1W120 005bb7c0 BW1M119 0134f500
	float GetTalkedPercentage();
	// BW1W120 005bb840 BW1M119 0134f390
	void StopSentence();
	// BW1W120 005bb8b0 BW1M119 null
	void ApplyStandFrame(int frame);
	// BW1W120 005bb8f0 BW1M119 null
	void UpdateGoInvisible(float t);
	// BW1W120 005bb980 BW1M119 0134f110
	void ApplyAnim(int anim, float time, float weight, bool32_t loop);
	// BW1W120 005bbb50 BW1M119 null
	void ApplyAnimFrame(int anim, int frame);
	// BW1W120 005bbbd0 BW1M119 0134efb0
	void SetPos(const LHCoord& pos);
	// BW1W120 005bbcd0 BW1M119 0134eef0
	void ResetTrail();
	// BW1W120 005bbd20 BW1M119 0134ee20
	void UpdateClingEdge();
	// BW1W120 005bbdd0 BW1M119 0134ecd0
	void FlyTo2D(const LHCoord& pos, float time, bool clamp);
	// BW1W120 005bbe70 BW1M119 0134ec20
	void SetCling(float x, float y, bool jump);
	// BW1W120 005bbef0 BW1M119 0134eb90
	bool IsAnimPlaying();
	// BW1W120 005bbf30 BW1M119 0134ea90
	void PlayAnimAtPos(float x, float y, ANIMLIST anim, float speed);
	// BW1W120 005bbfa0 BW1M119 0134e9a0
	void PointAt2D(const LHCoord& pos);
	// Looks at where a 3D point projects onto the dude's hover plane. Nothing calls it.
	// BW1W120 005bc010 BW1M119 null
	void LookAtInHoverPlane(LHPoint* pos);
	// BW1W120 005bc0a0 BW1M119 0134e4a0
	void ProcessLookAt(float dt, bool busy, bool other_visible, bool face_camera, LHPoint* look_target);
	// BW1W120 005bc4a0 BW1M119 0134e260
	void PointAt3D(LHPoint& pos, bool fly_to, float side_offset, float height_offset);
	// BW1W120 005bc6c0 BW1M119 0134e200
	void LookAt(LHPoint* pos);
	// BW1W120 005bc700 BW1M119 0134e190
	void LookAtCamera();
	// BW1W120 005bc720 BW1M119 0134e110
	void LookAtOtherGuy();
	// BW1W120 005bc750 BW1M119 0134e0b0
	void EyeLookAt(LHPoint* pos);
	// BW1W120 005bc790 BW1M119 null
	void EyeLookAtCamera();
	// BW1W120 005bc7a0 BW1M119 null
	void EyeLookAtOtherGuy();
	// BW1W120 005bc7c0 BW1M119 0134e070
	LH_AudioBank* GetSoundFXBank();
	// BW1W120 005bc7d0 BW1M119 0134db10
	void ApplyWingsHover(bool32_t stable_wings, float dt, bool32_t play_sound);
	// Applies the audio tags of the playing sentence whose time has come.
	// BW1W120 005bcbc0 BW1M119 inlined
	void ProcessAudioTags(float time, bool32_t play_sound);
	// BW1W120 005bcc20 BW1M119 0134da20
	void ResetLipSyncAnimList();
	// BW1W120 005bcc40 BW1M119 null
	int LipSyncFromSamples(float time, short* samples, int sample_count, int sample_rate);
	// BW1W120 005bcc90 BW1M119 0134d960
	void FlyToGimme();
	// Returns the flags of the lip sync anims that are playing.
	// BW1W120 005bcd00 BW1M119 0134d3b0
	int ApplyLipSync(float dt, bool32_t play_sound);
	// BW1W120 005bd0b0 BW1M119 0134d1f0
	void ApplyEmotion(float dt);
	// BW1W120 005bd210 BW1M119 0134d190
	void SetEmotion(int emotion, float strength);
	// BW1W120 005bd2a0 BW1M119 0134ce90
	LHPoint ConvertHoverTo3D(float x, float y, float z, bool near_plane);
	// BW1W120 005bd390 BW1M119 0134cd20
	bool32_t Convert3DToHover(LHPoint& pos, float* x, float* y, bool32_t allow_clipped);
	// BW1W120 005bd4a0 BW1M119 0134c6d0
	void SetState(HELPDUDESTATE state, bool32_t force);
	// BW1W120 005bdaf0 BW1M119 0134c370
	void UpdateHoverZones(float dt, bool32_t active);
	// BW1W120 005bdd40 BW1M119 inlined
	void UpdateInterests(float dt, bool32_t active);
	// BW1W120 005bdda0 BW1M119 0134a820
	void Update1(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish);
	// BW1W120 005bf5d0 BW1M119 0134a770
	void Update(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish);
	// BW1W120 005bf620 BW1M119 0134a5a0
	void Update2(float dt, bool32_t active, float min_z, bool32_t play_sound, bool32_t finish);
	// BW1W120 005bf800 BW1M119 0134a550
	void FinishUpdate();
	// BW1W120 005bf810 BW1M119 inlined
	void ApplyVoiceKey(VoiceKey* key);
	// BW1W120 005bf8c0 BW1M119 null
	void ApplyLookAnims(LHPoint* look);
	// BW1W120 005bf9d0 BW1M119 0134a320
	void ApplyPupilMovement(EyePositions& eyes);
	// BW1W120 005bfb90 BW1M119 null
	void PointEyesAt(LHPoint* pos);
	// BW1W120 005bfe00 BW1M119 01349f30
	void CalcHeadPos(LHMatrix& transform, LHPoint& look_at, int bone);
	// BW1W120 005c0140 BW1M119 01349b40
	void ApplyHeadMovement(bool pointing);
	// BW1W120 005c0310 BW1M119 01349680
	void ApplyEyelidMovement(EyePositions& eyes);
	// BW1W120 005c0610 BW1M119 01349590
	void FinishAnimStack(LHMatrix& transform);
	// BW1W120 005c0690 BW1M119 null
	void DrawHoverZones();
	// BW1W120 inlined BW1M119 013494f0
	float GetHoverScale() { return Size * SizeScale; }
	// BW1W120 005c06b0 BW1M119 01349530
	void SetHoverArea(float x, float y, float inner_radius, float outer_radius, float strength, int index);
	// BW1W120 005c0700 BW1M119 01348b30
	void Draw(bool deferred);
	// BW1W120 005c0ec0 BW1M119 null
	void SaveMesh(LHFile* file, LH3DMesh* mesh, unsigned int size);
	// BW1W120 005c0f30 BW1M119 01348960
	void LoadMesh(LHFile* file);
	// BW1W120 005c1030 BW1M119 null
	void SaveAnim(int anim, LHFile* file);
	// BW1W120 005c1090 BW1M119 01348510
	void LoadAnim(int anim, LHFile* file);
	// BW1W120 005c14e0 BW1M119 013483b0
	void LoadAnims(LHFile* file);
	// BW1W120 005c1570 BW1M119 null
	void SaveAnims(LHFile* file);
	// BW1W120 005c15b0 BW1M119 01348100
	void Uninit(bool reinit);
	// BW1W120 005c17d0 BW1M119 01347b00
	void Init(bool32_t is_evil, LH_AudioSystem* audio_system);
	// BW1W120 005c1d20 BW1M119 01347980
	void TriggerSmoke();
	// BW1W120 005c2180 BW1M119 01346fb0
	void Load(LHFile* file, LH_AudioSystem* audio_system);
	// BW1W120 005c2550 BW1M119 null
	void Save(LHFile* file, bool32_t with_mesh);
	// BW1W120 005c2800 BW1M119 01346d60
	int PlaySoundFX(int anim, float time, LH_AudioBank* bank);
};
static_assert(sizeof(HelpDude) == 0x37f0, "Data type is of wrong size");

#endif /* BW1_DECOMP_HELP_DUDE_INCLUDED_H */
