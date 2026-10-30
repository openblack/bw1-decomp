#ifndef BW1_DECOMP_PHYS_OB_INCLUDED_H
#define BW1_DECOMP_PHYS_OB_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LHMatrix.h"    /* For struct LHMatrix */
#include "LHPoint.h"     /* For struct LHPoint */
#include "PhysicsData.h" /* For struct PhysicsData */

#include <re_common.h> /* For bool32_t */

#define PHYS_OB_TIME_STEP                0.005f
#define PHYS_OB_ROT_DAMP_POWER           (0.1f * 0.05)
#define PHYS_OB_GRAVITY                  9.81f
#define PHYS_OB_MAXIMUM_VELOCITY         124.0f
#define PHYS_OB_MAXIMUM_ANGULAR_VELOCITY (3.0f * PI_F)
#define PHYS_OB_SETTLE_TIME_PER_HEIGHT   1000.0f
#define PHYS_OB_SETTLE_TIME              15000
#define PHYS_OB_DENSITY_GAIN             (1.0f / 15000.0f)
#define PHYS_OB_FROZEN_SETTLE            4.0f
#define PHYS_OB_SETTLE_SPIN_SCALE        0.25f
#define PHYS_OB_WIND_RESIST_AREA_SCALE   0.3f
#define PHYS_OB_COLLIDER_FRICTION_SCALE  0.3f
#define PHYS_OB_DAMPING_SCALE            200.0f
#define PHYS_OB_WATER_DRAG               100.0f
#define PHYS_OB_WATER_TORQUE_DIVISOR     50.0f
#define PHYS_OB_PREDICTION_TIME          0.06f
#define PHYS_OB_MIN_DISTANCE             0.001f
#define PHYS_OB_MIN_ROTATION             0.00001f
#define PHYS_OB_SEA_ALTITUDE             0.0001f
#define PHYS_OB_FALL_LIMIT               4.0f
#define PHYS_OB_GROUND_SEARCH_HEIGHT     1000.0f
#define PHYS_OB_FACING_EPSILON           0.0001f
#define PHYS_OB_SPECIAL_FACING_EPSILON   0.0001
#define PHYS_OB_NO_IMPACT                -1.0f
#define PHYS_OB_NO_SPECIAL_IMPACT        -10000.0f

enum PHYS_OB_MOTION
{
	PHYS_OB_MOTION_STILL,
	PHYS_OB_MOTION_MOVING,
	PHYS_OB_MOTION_SETTLED,
	PHYS_OB_MOTION_FROZEN,
	PHYS_OB_MOTION_FALLEN,
};

// Forward Declares
struct CollideBox;
struct LH3DDynamicShadow;
struct LH3DMesh;
class LH3DObject;
struct PhysOb;

struct IPoint
{
	float   LastCompression;
	LHPoint Anchor;
	LHPoint Pos;
	float   RestDistance;
	float   Distance;
	float   Compression;
	LHPoint Contact;
	LHPoint WorldPos;
	LHPoint Normal;
	PhysOb* Collider;

	// Constructors

	// BW1W120 inlined BW1M119 01086010 (LHCombined Release)
	IPoint() {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Clear()
	{
		LastCompression = 0.0f;
		Anchor.SetNull();
	}
};
static_assert(sizeof(IPoint) == 0x50, "Data type is of wrong size");

struct PTri
{
	uint32_t Indices[3];
	LHPoint  Normal;
	LHPoint  WorldNormal;

	// Constructors

	// BW1W120 inlined BW1M119 01085fe0 (LHCombined Release)
	PTri() {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Set(uint32_t a, uint32_t b, uint32_t c)
	{
		Indices[0] = a;
		Indices[1] = b;
		Indices[2] = c;
	}
};
static_assert(sizeof(PTri) == 0x24, "Data type is of wrong size");

struct PhysOb
{
	// BW1W120 00c371fc BW1M119 011d0c38 (LHCombined Release)
	static float MaximumVelocity;

	LH3DObject* obj;
	float       Scale;
	LHMatrix    InertiaTensor;
	LHMatrix    InverseInertiaTensor;
	LHPoint     AngularVelocity;
	bool32_t    Movable;
	PhysOb*     LastCollider;
	LHMatrix    Matrix;
	LHMatrix    OldMatrix;
	LHPoint     Velocity;
	LHPoint     PredictedPos;
	float       Speed;
	LHPoint     CentreOfMass;
	LHPoint     TotalForce;
	LHPoint     TotalTorque;
	LHPoint     Force;
	LHPoint     Torque;
	float       Mass;
	float       Density;
	float       SpringK;
	float       DampK;
	float       FrictionK;
	float       RotDamp;
	float       WindResist;
	float       Radius;
#ifdef VERSION_BW1WCI
	float RestSpeedMultiplier;
#endif
	int                NumVertices;
	int                NumContacts;
	IPoint*            Vertices;
	int                NumFaces;
	PTri*              Faces;
	CollideBox*        CollideBoxes;
	LH3DMesh*          CollideMesh;
	int                SettleTime;
	bool               Frozen;
	bool               Settling;
	bool               Touched;
	bool               OnGround;
	LH3DDynamicShadow* Shadow;

	// Non-virtual methods

	// BW1W120 007fb780 BW1M119 01086460 (LHCombined Release)
	void Initialise(LH3DObject* object, float scale);
	// BW1W120 007fb810 BW1M119 01086390 (LHCombined Release)
	void SetUpConstants(float mass, PhysicsData* data, bool32_t movable);
	// BW1W120 007fbac0 BW1M119 01086040 (LHCombined Release)
	void BuildFromVertices();
	// BW1W120 007fb730 BW1M119 01086550 (LHCombined Release)
	void DeInitialise();
	// BW1W120 007fcb80 BW1M119 01084aa0 (LHCombined Release)
	void AdjustToGroundLevel(bool align, bool only_down);
	// BW1W120 007fd200 BW1M119 01084250 (LHCombined Release)
	void ZeroForces();
	// BW1W120 007fd4a0 BW1M119 010841e0 (LHCombined Release)
	void ResetCompressions();
	// BW1W120 007fb880 BW1M119 010860c0 (LHCombined Release)
	void SetUpMoi();
	// BW1W120 007fc760 BW1M119 01084d60 (LHCombined Release)
	void SetUpPos();
	// BW1W120 007fbae0 BW1M119 01085a90 (LHCombined Release)
	void BuildFromMesh(LH3DMesh* mesh);
	// BW1W120 007fbf80 BW1M119 010857f0 (LHCombined Release)
	bool32_t GetImpactPoint(LHPoint& start, LHPoint& direction, float max_distance, LHPoint& impact, LHPoint& normal);
	// BW1W120 007fc310 BW1M119 01085340 (LHCombined Release)
	bool32_t GetSpecialImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal);
	// BW1W120 007fce80 BW1M119 010846a0 (LHCombined Release)
	void PrepareForDraw(LH3DObject* object, float blend);
	// BW1W120 007fd140 BW1M119 01084510 (LHCombined Release)
	void FillPositionMatrixGameFriendly(LHMatrix& matrix);
	// BW1W120 007fd4d0 BW1M119 01083960 (LHCombined Release)
	void CheckVGround();
	// BW1W120 007fda60 BW1M119 01083640 (LHCombined Release)
	void CheckVFaces(PhysOb* other);
	// BW1W120 007fdd60 BW1M119 01083510 (LHCombined Release)
	float GetMaxCompression(PhysOb* other, LHPoint& direction);
	// BW1W120 007fde40 BW1M119 010830c0 (LHCombined Release)
	void UpdateForces();
	// BW1W120 007fe260 BW1M119 01082a10 (LHCombined Release)
	int UpdateMotion();
#ifdef VERSION_BW1WCI
	// BW1WCI 00818500 BW1M119 null
	void SetRestSpeedMultiplier(float multiplier);
#endif
};
#if defined(VERSION_BW1WCI)
static_assert(sizeof(PhysOb) == 0x180, "Data type is of wrong size");
#else
static_assert(sizeof(PhysOb) == 0x17c, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_PHYS_OB_INCLUDED_H */
