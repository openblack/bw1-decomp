#ifndef BW1_DECOMP_CONTROL_HAND_INCLUDED_H
#define BW1_DECOMP_CONTROL_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Morphable.h" /* For struct Morphable */
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

// Forward Declares

class GInterfaceStatus;
class GameOSFile;
class LH3DCreature;
class LHPlayer;
class Object;
struct HandFX;
struct LHMatrix;
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
	// BW1W120 0046e8c0 BW1M119 011cd410
	void OnClearMap();
	// BW1W120 0046c050 BW1M119 011d0860
	void StartFixedPosAnimation(LHPoint& pos, long anim);
	// BW1W120 0046c0b0 BW1M119 011d0790
	void EndGiveToCreature();
	// BW1W120 0046bf20 BW1M119 011d0c80
	void SetMaxDistanceFromUser(float distance);
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
		HandState* raw[11];
	};
	float             DistanceScale; /* 0x4834 */
	float             MaxDistanceFromUser;
	int               field_0x483c;
	uint32_t          field_0x4840;
	uint32_t          field_0x4844;
	uint32_t          field_0x4848;
	int               HandOrientation;
	GInterfaceStatus* InterfaceStatus; /* 0x4850 */
	float             DistanceFromView;
	bool32_t          ScreenPosChanged; /* 0x4858 */
	LHCoord           ScreenPos;
	LHCoord           PreviousScreenPos;
	LHCoord           DrawScreenPos;
	bool              UseDrawScreenPos; /* 0x4874 */
	uint8_t           field_0x4875;
	uint8_t           field_0x4876;
	uint8_t           field_0x4877;
	uint32_t          CurrentState;
	State             HandStates;
	uint8_t           field_0x48a8;
	uint8_t           field_0x48a9;
	uint8_t           field_0x48aa;
	uint8_t           field_0x48ab;
	uint8_t           field_0x48ac;
	uint8_t           field_0x48ad;
	uint8_t           field_0x48ae;
	uint8_t           field_0x48af;
	uint8_t           field_0x48b0;
	uint8_t           field_0x48b1;
	uint8_t           field_0x48b2;
	uint8_t           field_0x48b3;
	uint32_t          field_0x48b4;
	float             LaggedScreenPosX; /* 0x48b8 */
	float             LaggedScreenPosY; /* 0x48bc */
	uint8_t           field_0x48c0;
	uint8_t           field_0x48c1;
	uint8_t           field_0x48c2;
	uint8_t           field_0x48c3;
	uint8_t           field_0x48c4;
	uint8_t           field_0x48c5;
	uint8_t           field_0x48c6;
	uint8_t           field_0x48c7;
	LHPoint           ThrowVelocity; /* 0x48c8 */
	LHPoint           ThrowSpin;     /* 0x48d4 */
	LHPoint           ThrowPos;      /* 0x48e0 */
	LHPoint           ThrowAngles;   /* 0x48ec */
	uint32_t          field_0x48f8;
	uint32_t          field_0x48fc;
	uint32_t          field_0x4900;
	Object*           HeldObject;
	bool32_t          Tugging;  /* 0x4908 */
	HOLD_TYPE         HoldType; /* 0x490c */
	uint8_t           field_0x4910;
	uint8_t           field_0x4911;
	uint8_t           field_0x4912;
	uint8_t           field_0x4913;
	uint8_t           field_0x4914;
	uint8_t           field_0x4915;
	uint8_t           field_0x4916;
	uint8_t           field_0x4917;
	uint32_t          field_0x4918;
	bool              InFixedPosAnimation;
	uint8_t           field_0x491d;
	uint8_t           field_0x491e;
	uint8_t           field_0x491f;
	LHPoint           TugAngularVelocity; /* 0x4920 */
	LHPoint           PickUpPos;          /* 0x492c */
	LHPoint           HeldObjectVelocity; /* 0x4938 */
	float             HoldHeight;         /* 0x4944 */
	HandFX*           HandFx;
	int*              field_0x494c;
	int               field_0x4950;
	uint8_t           field_0x4954;
	uint8_t           field_0x4955;
	uint8_t           field_0x4956;
	uint8_t           field_0x4957;
	uint32_t          field_0x4958;
	uint32_t          field_0x495c;
	uint32_t          field_0x4960;
	LHPoint           Point0x4964;
	uint32_t          field_0x4970;
	uint32_t          field_0x4974;
	uint32_t          field_0x4978;
	uint32_t          field_0x497c;
	uint32_t          field_0x4980;
	uint32_t          field_0x4984;
	float             field_0x4988;
	uint32_t          field_0x498c;
	uint8_t           field_0x4990;
	uint8_t           field_0x4991;
	uint8_t           field_0x4992;
	uint8_t           field_0x4993;
	uint32_t          field_0x4994;
	uint32_t          field_0x4998;
	uint32_t          field_0x499c;
	uint32_t          field_0x49a0;
	uint32_t          field_0x49a4;
	uint32_t          field_0x49a8;
	LHMatrix*         Matrix0x49ac;
	float             BlendTime;            /* 0x49b0 */
	Creature*         InteractCreature;     /* 0x49b4 */
	LH3DCreature*     InteractCreature3d;   /* 0x49b8 */
	Creature*         CreatureBeingGivenTo; /* 0x49bc */
	uint32_t          field_0x49c0;

	// Override methods

	// BW1W120 0046c4a0 BW1M119 011d0470
	virtual void SetSize(float size);
	// BW1W120 0046bf80 BW1M119 011d0be0
	virtual void MorphTexture();
	// BW1W120 0046c350 BW1M119 011d04f0
	virtual void UpdateTime(int param_1);
	// BW1W120 0046c550 BW1M119 0102c680
	virtual void PrepareForDrawing();
	// BW1W120 0046d0f0 BW1M119 011cfe30
	virtual uint32_t AddForDrawing();
	// BW1W120 0046d5f0 BW1M119 011cf660
	virtual uint32_t SaveBinary(char* filename);

	// Constructors

	// BW1W120 0046ba80 BW1M119 011d0ce0
	CHand(LHPoint point, GInterfaceStatus* status);

	// Non-virtual methods
	// BW1W120 0046c1b0 BW1M119 011d0600
	void Show(bool32_t show);
	// BW1W120 0046c2e0 BW1M119 inlined
	void SetEditorControl(bool32_t enable);
	// BW1W120 0046eb10 BW1M119 011cce70
	bool32_t Save(GameOSFile& file);
	// BW1W120 0046e930 BW1M119 011cd140
	bool32_t Load(GameOSFile& file);
	// BW1W120 0046ecf0 BW1M119 011ccd60
	void ResolveLoad();

	// BW1W120 0046c260 BW1M119 011d0550
	void ToggleLeftRight();
	// BW1W120 0046d2c0 BW1M119 011cf800
	virtual uint32_t LoadBinary(char* filename, int param_1);
	// BW1W120 0046ddd0 BW1M119 011cec70
	void ThrowObject();
	// BW1W120 0046e4e0 BW1M119 010841c0
	void GameTurnUpdate();
	// BW1W120 0046e490 BW1M119 01016be0
	void UpdateHeldObject();
	// BW1W120 0046d100 BW1M119 01024a70
	void AddDrawing();
	// BW1W120 0046e5d0 BW1M119 0108e800
	HandStateGrain* GetHandStateGrain();
	// BW1W120 0046e5f0 BW1M119 011cdda0
	void UpdateLeftRightFromPlayer(LHPlayer* player);
	// BW1W120 0046d080 BW1M119 0101cde0
	void SetUpPositionMatrix(LHMatrix& matrix);
	// BW1W120 0046db70 BW1M119 011cefc0
	float GetDistanceFromObject(Object* object);
	// BW1W120 0046df00 BW1M119 0108f950
	void DrawTheHeldObject();
	// BW1W120 0046df60 BW1M119 01030120
	float WorkOutStandardDistanceFromView(int keep_clear_of_land);
	// BW1W120 0046e160 BW1M119 010273c0
	void FillStandardPositionMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up);
	// BW1W120 0046e2f0 BW1M119 01084d00
	void FillStandardObjectMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up);
	// BW1W120 0046c0d0 BW1M119 010812d0
	void SetDistanceFromView(float distance);
	// BW1W120 0046c040 BW1M119 01085c70
	static float GetStandardSize();
	// BW1W120 0046bfb0 BW1M119 011d0b90
	float GetMaxForce();
	// BW1W120 0046c500 BW1M119 011d0400
	void BlendToNewPosition();
	// BW1W120 0046e4b0 BW1M119 010953b0
	Creature* GetCreatureToGiveTo();
};

#endif /* BW1_DECOMP_CONTROL_HAND_INCLUDED_H */
