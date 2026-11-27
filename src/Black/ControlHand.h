#ifndef BW1_DECOMP_CONTROL_HAND_INCLUDED_H
#define BW1_DECOMP_CONTROL_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <LHPoint.h>                              /* For struct LHPoint */

#include "HandPhysicsInfo.h" /* For struct HandPhysicsInfo */
#include "Morphable.h"       /* For struct Morphable */
#include "PSysProcessInfo.h" /* For struct PSysProcessInfo */
#include "HandState.h"
#include "HandStateInvisible.h"
#include "HandStateNormal.h"
#include "HandStateCamera.h"
#include "HandStateTug.h"
#include "HandStateHolding.h"
#include "HandStateTotem.h"
#include "HandStateMultiPickUp.h"
#include "HandStateCreature.h"
#include "HandStateGrain.h"
#include "HandStatePlayAnim.h"
#include "HandStateCitadel.h"

#define CHAND_DEFAULT_MAX_DISTANCE_FROM_USER 1800.0f
#define CHAND_MILLISECONDS_PER_SECOND        1000.0f
#define CHAND_SECONDS_PER_MILLISECOND        0.001f
#define CHAND_THROWN_OBJECT_TIMER            180
#define CHAND_CLICK_INTERACTION_TIME         450
#define CHAND_FILE_VERSION                   0
#define CHAND_SPEC_VERSION                   5
#define CHAND_SEGMENT_NAME                   "Hand"
#define CHAND_ANIM_COUNT                     0x45
#define CHAND_STANDARD_SIZE                  3.2f
#define CHAND_MIN_SIZE                       0.05f
#define CHAND_MAX_SIZE                       2.0f
#define CHAND_MAX_FORCE_SCALE                600000.0f
#define CHAND_DISTANCE_SCALE_EXPONENT        0.8f
#define CHAND_FAR_DISTANCE_SCALE_REDUCTION   0.3f
#define CHAND_MIN_HOLD_HEIGHT_SCALE          0.3f
#define CHAND_EDITOR_PANEL_WIDTH             256
#define CHAND_MIN_HEADING_DIRECTION          0.01f
#define CHAND_MOUSE_SPRITE_SIZE              96
#define CHAND_MOUSE_SPRITE_HOTSPOT           32
#define CHAND_COLOUR_CHANNEL_MAX             255.0f
#define CHAND_RAY_CAST_NEAR_OFFSET           1.0f
#define CHAND_MIN_KEEP_CLEAR_HEIGHT          0.1f
#define CHAND_SPELL_EFFECT_FINISHED          5
#define CHAND_THROW_DRAW_LIST_REBUILD_COUNT  2

#ifdef VERSION_BW1W130
enum CHAND_GLOVE_HELP_CUE
{
	CHAND_GLOVE_HELP_CUE_DEFAULT = 0,
	CHAND_GLOVE_HELP_CUE_INTERACT = 0x20
};
#endif

// Forward Declares

class Creature;
class GInterfaceStatus;
class GameOSFile;
class LH3DCreature;
class LHPlayer;
class Object;
class PSysInterface;
class SpellSeed;
struct CAnim;
struct HandFX;
struct LHMatrix;
struct LHSurface;
class CHand;

struct ControlHandUpdateInfo
{
	float    HeightChange; /* 0x0 */
	uint32_t field_0x4;
	uint32_t field_0x8[4];
};

class CHand : public Morphable
{
public:
#ifdef VERSION_BW1W130
	// BW1W120 null BW1M119 null
	static CHAND_GLOVE_HELP_CUE GloveHelpCue;
#endif

	union State {
		struct Named
		{
			HandStateInvisible*   invisible;
			HandStateNormal*      normal;
			HandStateCamera*      camera;
			HandStateTug*         tug;
			HandStateHolding*     holding;
			HandStateTotem*       totem;
			HandStateMultiPickUp* MultiPickUp;
			HandStateCreature*    creature;
			HandStateGrain*       grain;
			HandStatePlayAnim*    PlayAnim;
			HandStateCitadel*     citadel;
		};
		Named      named;
		HandState* raw[_HAND_STATES_COUNT];
	};
	float             DistanceScale; /* 0x4834 */
	float             MaxDistanceFromUser;
	bool32_t          CursorOn;
	bool32_t          InInfluence;
	bool32_t          HandOff;
	bool32_t          EditorControl;
	bool32_t          HandOrientation;
	GInterfaceStatus* InterfaceStatus; /* 0x4850 */
	float             DistanceFromView;
	bool32_t          ScreenPosChanged; /* 0x4858 */
	LHCoord           ScreenPos;
	LHCoord           PreviousScreenPos;
	LHCoord           DrawScreenPos;
	bool              UseDrawScreenPos; /* 0x4874 */
	HAND_STATES       CurrentState;
	State             HandStates;
	uint32_t          field_0x48a8;
	uint32_t          field_0x48ac;
	uint32_t          field_0x48b0;
	bool32_t          LaggedScreenPosValid;
	float             LaggedScreenPosX; /* 0x48b8 */
	float             LaggedScreenPosY; /* 0x48bc */
	float             LaggedScreenVelocityX;
	float             LaggedScreenVelocityY;
	HandPhysicsInfo   HandPhysics; /* 0x48c8 */
	int               ThrownObjectTimer;
	Object*           ThrownObject;
	int               InteractionTime;
	Object*           HeldObject;
	bool32_t          Tugging;  /* 0x4908 */
	HOLD_TYPE         HoldType; /* 0x490c */
	bool32_t          SavedNeedSorting;
	bool32_t          SavedCastDynamicShadow;
	int               HandLagOff;
	bool              InFixedPosAnimation;
	LHPoint           TugAngularVelocity; /* 0x4920 */
	LHPoint           PickUpPos;          /* 0x492c */
	LHPoint           HeldObjectVelocity; /* 0x4938 */
	float             HoldHeight;         /* 0x4944 */
	HandFX*           HandFx;
	PSysInterface*    SpellInHandEffect;
	SpellSeed*        SpellInHand;
	bool              SpellInHandAtGraspPos;
	PSysProcessInfo   SpellInHandProcessInfo; /* 0x4958 */
	uint32_t          field_0x4994;
	uint32_t          field_0x4998;
	LHSurface*        MouseSprite;
	bool32_t          SpriteCursor;
	bool32_t          MouseSpriteDebug;
	uint32_t          field_0x49a8;
	LHMatrix*         BlendFromMatrices;
	float             BlendTime;            /* 0x49b0 */
	Creature*         InteractCreature;     /* 0x49b4 */
	LH3DCreature*     InteractCreature3d;   /* 0x49b8 */
	Creature*         CreatureBeingGivenTo; /* 0x49bc */
	bool32_t          InteractionCameraActive;

	// Override methods

	// BW1W120 0046c4a0 BW1M119 011d0470
	virtual void SetSize(float size);
	// BW1W120 0046bf80 BW1M119 011d0be0
	virtual void MorphTexture();
	// BW1W120 0046c350 BW1M119 011d04f0
	virtual void UpdateTime(int time);
	// BW1W120 0046c550 BW1M119 0102c680
	virtual void PrepareForDrawing();
	// BW1W120 0046d0f0 BW1M119 011cfe30
	virtual uint32_t AddForDrawing();
	// BW1W120 0046d2c0 BW1M119 011cf800
	virtual uint32_t LoadBinary(char* filename, bool32_t start_creation);
	// BW1W120 0046d5f0 BW1M119 011cf660
	virtual uint32_t SaveBinary(char* filename);

	// Constructors

	// BW1W120 0046ba80 BW1M119 011d0ce0
	CHand(LHPoint point, GInterfaceStatus* status);
	// BW1W120 0046bfd0 BW1M119 011d0a50
	~CHand();

	// Non-virtual methods

	// Inliner IL size: <= 40
	// BW1W120 inlined BW1M119 inlined
	float GetDistanceScale() { return DistanceScale; }
	// BW1W120 0046bef0 BW1M119 null
	void ToggleHandLag();
	// BW1W120 0046bf20 BW1M119 011d0c80
	void SetMaxDistanceFromUser(float distance);
	// BW1W120 0046bf50 BW1M119 010a0aa0
	float GetMaxDistanceFromUser();
	// BW1W120 0046bf60 BW1M119 inlined
	void SetInInfluence(bool32_t in_influence);
	// BW1W120 0046bfa0 BW1M119 null
	void MorphTextureOutsideInfluence();
	// BW1W120 0046bfb0 BW1M119 011d0b90
	float GetMaxForce();
	// BW1W120 0046c040 BW1M119 01085c70
	static float GetStandardSize();
	// BW1W120 0046c050 BW1M119 011d0860
	void StartFixedPosAnimation(LHPoint& pos, long anim);
	// BW1W120 0046c080 BW1M119 011d07e0
	void GiveToCreature(Creature* creature);
	// BW1W120 0046c0b0 BW1M119 011d0790
	void EndGiveToCreature();
	// BW1W120 0046c0d0 BW1M119 010812d0
	void SetDistanceFromView(float distance);
	// BW1W120 0046c1b0 BW1M119 011d0600
	void Show(bool32_t show);
	// BW1W120 0046c250 BW1M119 null
	void ToggleMouseSpriteDebug();
	// BW1W120 0046c260 BW1M119 011d0550
	void ToggleLeftRight();
	// BW1W120 0046c2e0 BW1M119 inlined
	void SetEditorControl(bool32_t enable);
	// BW1W120 0046c380 BW1M119 null
	void ToggleMouseSprite();
	// BW1W120 0046c500 BW1M119 011d0400
	void BlendToNewPosition();
	// BW1W120 0046cb60 BW1M119 010211c0
	void OperateInteractionCamera(long hand_state);
	// BW1W120 0046cd10 BW1M119 010240f0
	HAND_STATES GetRequiredState();
	// BW1W120 0046cf80 BW1M119 01023510
	HAND_STATES GetActualState(long required_state);
	// BW1W120 0046d080 BW1M119 0101cde0
	void SetUpPositionMatrix(LHMatrix& matrix);
	// BW1W120 0046d100 BW1M119 01024a70
	void AddDrawing();
	// BW1W120 0046d210 BW1M119 01029500
	void Draw();
	// BW1W120 0046d740 BW1M119 null
	CAnim* GetAnimOrDefault(long anim);
	// BW1W120 0046d760 BW1M119 011cf200
	void DoPassiveModeDraw();
	// BW1W120 0046daf0 BW1M119 011cf0d0
	void PrepareMouseSprite();
	// BW1W120 0046db70 BW1M119 011cefc0
	float GetDistanceFromObject(Object* object);
	// BW1W120 0046dc30 BW1M119 011ced50
	void PickUpObject(Object* object, bool32_t allow_tug);
	// BW1W120 0046ddd0 BW1M119 011cec70
	void ThrowObject();
	// BW1W120 0046de40 BW1M119 011ceb10
	void SwitchObject(Object* object);
	// BW1W120 0046df00 BW1M119 0108f950
	void DrawTheHeldObject();
	// BW1W120 0046df60 BW1M119 01030120
	float WorkOutStandardDistanceFromView(bool32_t keep_clear_of_land);
	// BW1W120 0046e160 BW1M119 010273c0
	void FillStandardPositionMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up);
	// BW1W120 0046e2f0 BW1M119 01084d00
	void FillStandardObjectMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up);
	// BW1W120 0046e480 BW1M119 011ce710
	bool32_t HasPluckedObject() const;
	// BW1W120 0046e490 BW1M119 01016be0
	void UpdateHeldObject();
	// BW1W120 0046e4b0 BW1M119 010953b0
	Creature* GetCreatureToGiveTo();
	// BW1W120 0046e4e0 BW1M119 010841c0
	void GameTurnUpdate();
	// BW1W120 0046e590 BW1M119 011ce2e0
	void SetHeldObject(Object* object);
	// BW1W120 0046e5d0 BW1M119 0108e800
	HandStateGrain* GetHandStateGrain();
	// BW1W120 0046e5f0 BW1M119 011cdda0
	void UpdateLeftRightFromPlayer(LHPlayer* player);
	// BW1W120 0046e630 BW1M119 011cdd60
	void ReadRegistrySettings();
	// BW1W120 0046e640 BW1M119 inlined
	void UpdateSpellInHand();
	// BW1W120 0046e680 BW1M119 01014280
	void DrawSpellInHand();
	// BW1W120 0046e780 BW1M119 inlined
	void SpellInHandDestroy();
	// BW1W120 0046e7b0 BW1M119 011cd560
	void SpellInHandStart(const SpellSeed* seed);
	// BW1W120 0046e890 BW1M119 011cd4e0
	void SpellInHandStop();
	// BW1W120 0046e8c0 BW1M119 011cd410
	void OnClearMap();
	// BW1W120 0046e930 BW1M119 011cd140
	bool32_t Load(GameOSFile& file);
	// BW1W120 0046eb10 BW1M119 011cce70
	bool32_t Save(GameOSFile& file);
	// BW1W120 0046ecf0 BW1M119 011ccd60
	void ResolveLoad();
};

#endif /* BW1_DECOMP_CONTROL_HAND_INCLUDED_H */
