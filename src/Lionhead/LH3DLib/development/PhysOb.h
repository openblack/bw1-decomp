#ifndef BW1_DECOMP_PHYS_OB_INCLUDED_H
#define BW1_DECOMP_PHYS_OB_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LHMatrix.h" /* For struct LHMatrix */
#include "LHPoint.h"  /* For struct LHPoint */

// Forward Declares

struct LH3DMesh;
class LH3DObject;
struct PhysicsData;

struct PhysOb
{
	struct Vertex
	{
		Vertex();

		float   field_0x0;
		LHPoint field_0x4;
		LHPoint Pos;
		uint8_t field_0x1c[0x34];

		void Clear()
		{
			field_0x0 = 0.0f;
			field_0x4.SetNull();
		}
	};

	struct Face
	{
		uint32_t Indices[3];
		uint8_t  field_0xc[0x18];

		// BW1W120 inlined BW1M119 inlined
		void Set(uint32_t a, uint32_t b, uint32_t c)
		{
			Indices[0] = a;
			Indices[1] = b;
			Indices[2] = c;
		}
	};

	LH3DObject* obj;
	float       field_0x4;
	LHMatrix    InertiaTensor;
	LHMatrix    InverseInertiaTensor;
	LHPoint     AngularVelocity;
	uint8_t     field_0x74[0x8];
	LHMatrix    Matrix;
	uint8_t     field_0xac[0x30];
	LHPoint     Velocity;
	uint8_t     field_0xe8[0xc];
	uint32_t    field_0xf4;
	LHPoint     CentreOfMass;
	uint8_t     field_0x104[0x18];
	LHPoint     Force;
	uint8_t     field_0x128[0xc];
	float       Mass;
	uint8_t     field_0x138[0x14];
	float       Inertia;
	float       Radius;
#ifdef VERSION_BW1WCI
	float RestSpeedMultiplier;
#endif
	uint32_t NumVertices;
	uint32_t field_0x158;
	Vertex*  Vertices;
	uint32_t NumFaces;
	Face*    Faces;
	uint8_t  field_0x168[0x8];
	int      field_0x170;
	uint32_t field_0x174;
	uint32_t field_0x178;

	// Non-virtual methods

	// BW1W120 007fb780 BW1M119 01086460 (LHCombined Release)
	void Initialise(LH3DObject* obj, float param_3);
	// BW1W120 007fb810 BW1M119 01086390 (LHCombined Release)
	void SetUpConstants(float mass, PhysicsData* data, bool32_t movable);
	// BW1W120 007fbac0 BW1M119 01086040 (LHCombined Release)
	void BuildFromVertices();
	// BW1W120 007fb730 BW1M119 01086550 (LHCombined Release)
	void DeInitialise();
	// BW1W120 007fcb80 BW1M119 01084aa0 (LHCombined Release)
	void AdjustToGroundLevel(bool param_1, bool param_2);
	// BW1W120 007fd200 BW1M119 01084250 (LHCombined Release)
	void ZeroForces();
	// BW1W120 007fb880 BW1M119 010860c0 (LHCombined Release)
	void SetUpMoi();
	// BW1W120 007fc760 BW1M119 01084d60 (LHCombined Release)
	void SetUpPos();
	// BW1W120 007fbae0 BW1M119 01085a90 (LHCombined Release)
	void BuildFromMesh(LH3DMesh* mesh);
	// BW1W120 007fbf80 BW1M119 010857f0 (LHCombined Release)
	bool32_t GetImpactPoint(LHPoint& param_1, LHPoint& param_2, float param_3, LHPoint& param_4, LHPoint& param_5);
	// BW1W120 007fc310 BW1M119 01085340 (LHCombined Release)
	bool32_t GetSpecialImpactPoint(LHPoint& param_1, LHPoint& param_2, LHPoint& param_3, LHPoint& param_4);
	// BW1W120 007fce80 BW1M119 010846a0 (LHCombined Release)
	void PrepareForDraw(LH3DObject* object, float param_2);
	// BW1W120 007fd140 BW1M119 01084510 (LHCombined Release)
	void FillPositionMatrixGameFriendly(LHMatrix& matrix);
	// BW1W120 007fd4d0 BW1M119 01083960 (LHCombined Release)
	void CheckVGround();
	// BW1W120 007fda60 BW1M119 01083640 (LHCombined Release)
	void CheckVFaces(PhysOb* other);
	// BW1W120 007fdd60 BW1M119 01083510 (LHCombined Release)
	float GetMaxCompression(PhysOb* other, LHPoint& param_2);
	// BW1W120 007fde40 BW1M119 010830c0 (LHCombined Release)
	void UpdateForces();
	// BW1W120 007fe260 BW1M119 01082a10 (LHCombined Release)
	int UpdateMotion();
#ifdef VERSION_BW1WCI
	// BW1WCI 00818500 BW1M119 null
	void SetRestSpeedMultiplier(float multiplier);
#endif
};

#endif /* BW1_DECOMP_PHYS_OB_INCLUDED_H */
