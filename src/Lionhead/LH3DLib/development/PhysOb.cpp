#include "PhysOb.h"

#include <windows.h> /* For max */

#include "LH3DDynamicShadow.h"         /* For struct LH3DDynamicShadow */
#include "LH3DIsland.h"                /* For class LH3DIsland */
#include "LH3DMath.h"                  /* For FloatToInt */
#include "LH3DMesh.h"                  /* For struct LH3DMesh */
#include "LH3DMeshIntersect.h"         /* For struct CollideBox */
#include "LH3DObject.h"                /* For class LH3DObject */
#include "LH3DStaticMorphableObject.h" /* For class LH3DStaticMorphableObject */
#include "LH3DSubMesh.h"               /* For struct LH3DSubMesh */

float PhysOb::MaximumVelocity = PHYS_OB_MAXIMUM_VELOCITY;

// BW1W120 inlined BW1M119 inlined
inline void __fastcall InverseTransformVector(const LHMatrix& matrix, LHPoint& result, const LHPoint& vector)
{
	result.x = vector.x * matrix.m[0] + vector.y * matrix.m[1] + vector.z * matrix.m[2];
	result.y = vector.x * matrix.m[3] + vector.y * matrix.m[4] + vector.z * matrix.m[5];
	result.z = vector.x * matrix.m[6] + vector.y * matrix.m[7] + vector.z * matrix.m[8];
}

void PhysOb::DeInitialise()
{
	if (Vertices != NULL)
	{
		delete Vertices;
	}
	Vertices = NULL;
	if (Faces != NULL)
	{
		delete Faces;
	}
	Faces = NULL;
	if (Shadow != NULL)
	{
		Shadow->Release();
	}
	Shadow = NULL;
}

void PhysOb::Initialise(LH3DObject* object, float scale)
{
	obj = object;
	Scale = scale;
	CentreOfMass.SetNull();
	Radius = 0.0f;
	AngularVelocity.SetNull();
	Velocity.SetNull();
	Speed = 0.0f;
	SettleTime = -FloatToInt(scale * object->GetMesh()->BoundingBox.size.y * PHYS_OB_SETTLE_TIME_PER_HEIGHT);
	Shadow = NULL;
#ifdef VERSION_BW1WCI
	RestSpeedMultiplier = 1.0f;
#endif
}

void PhysOb::SetUpConstants(float mass, PhysicsData* data, bool32_t movable)
{
	Mass = mass;
	Density = data->Density;
	SpringK = mass * data->SpringK;
	DampK = mass * data->DampK;
	FrictionK = data->FrictionK;
	RotDamp = pow(data->RotDamp, PHYS_OB_ROT_DAMP_POWER);
	WindResist = data->WindResist;
	Movable = movable;
}

#ifdef VERSION_BW1WCI
void PhysOb::SetRestSpeedMultiplier(float multiplier)
{
	RestSpeedMultiplier = multiplier;
}
#endif

void PhysOb::SetUpMoi()
{
	Force.SetNull();
	Torque.SetNull();
	if (Movable)
	{
		memset(&InertiaTensor, 0, sizeof(InertiaTensor));
		float   massPerVertex = Mass / NumVertices;
		IPoint* v = Vertices;
		for (int i = 0; i < NumVertices; i++)
		{
			v->RestDistance = v->Distance = v->Pos.GetNorme();
			LHPoint& p = v->Pos;
			InertiaTensor.m[0] += (p.y * p.y + p.z * p.z) * massPerVertex;
			InertiaTensor.m[1] -= p.x * p.y * massPerVertex;
			InertiaTensor.m[3] -= p.x * p.y * massPerVertex;
			InertiaTensor.m[4] += (p.x * p.x + p.z * p.z) * massPerVertex;
			InertiaTensor.m[2] -= p.x * p.z * massPerVertex;
			InertiaTensor.m[6] -= p.x * p.z * massPerVertex;
			InertiaTensor.m[8] += (p.x * p.x + p.y * p.y) * massPerVertex;
			InertiaTensor.m[5] -= p.x * p.z * massPerVertex;
			InertiaTensor.m[7] -= p.y * p.z * massPerVertex;
			v++;
		}
		InverseInertiaTensor.SetInverse(InertiaTensor);
		WindResist = Radius * WindResist * Radius * PHYS_OB_WIND_RESIST_AREA_SCALE;
	}
	else
	{
		IPoint* v = Vertices;
		for (int i = 0; i < NumVertices; i++)
		{
			v->RestDistance = v->Distance = v->Pos.GetNorme();
			v++;
		}
		InertiaTensor.SetIdentity();
		InverseInertiaTensor.SetIdentity();
	}
	OnGround = false;
	Touched = false;
	Settling = true;
}

void PhysOb::BuildFromVertices()
{
	BuildFromMesh(obj->GetMesh());
}

void PhysOb::BuildFromMesh(LH3DMesh* mesh)
{
	int i, j, k;
	NumFaces = 0;
	NumVertices = 0;
	bool32_t hasPhysics = false;
	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		if (submesh->IsPhysics())
		{
			hasPhysics = true;
			for (j = 0; j < submesh->NumPrimitives; j++)
			{
				LH3DPrimitive* primitive = submesh->primitives_[j];
				LH3DVertex*    points = primitive->GetListVertex();
				for (k = 0; k < primitive->GetVerticesCount(); k++)
				{
					CentreOfMass.x += points[k].position.x;
					CentreOfMass.y += points[k].position.y;
					CentreOfMass.z += points[k].position.z;
				}
				NumVertices += primitive->NumVertices;
				NumFaces += primitive->NumTriangles;
			}
		}
	}
	if (!hasPhysics)
	{
		for (i = 0; i < mesh->SubmeshCount; i++)
		{
			LH3DSubMesh* submesh = mesh->submeshes[i];
			if (submesh->GetLod() & 1)
			{
				for (j = 0; j < submesh->NumPrimitives; j++)
				{
					LH3DPrimitive* primitive = submesh->primitives_[j];
					LH3DVertex*    points = primitive->GetListVertex();
					for (k = 0; k < primitive->GetVerticesCount(); k++)
					{
						CentreOfMass.x += points[k].position.x;
						CentreOfMass.y += points[k].position.y;
						CentreOfMass.z += points[k].position.z;
					}
					NumVertices += primitive->NumVertices;
					NumFaces += primitive->NumTriangles;
				}
			}
		}
	}
	CentreOfMass *= 1.0f / NumVertices;

	Vertices = new IPoint[NumVertices];
	Faces = new PTri[NumFaces];

	IPoint* vertex = Vertices;
	PTri*   face = Faces;
	int     vertexBase = 0;

	bool32_t morphable = obj->IsStaticMorphable();
	float*   altitudes = NULL;
	if (morphable)
	{
		altitudes = ((LH3DStaticMorphableObject*)obj)->LandAltitudes;
	}

	for (i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* submesh = mesh->submeshes[i];
		if (hasPhysics ? submesh->IsPhysics() : submesh->GetLod() & 1)
		{
			for (j = 0; j < submesh->NumPrimitives; j++)
			{
				LH3DPrimitive* primitive = submesh->primitives_[j];
				int            primitiveBase = vertexBase;
				LH3DVertex*    points = primitive->GetListVertex();
				for (k = 0; k < primitive->GetVerticesCount(); k++)
				{
					LHPoint pos = points[k].position;
					if (morphable)
					{
						pos.y += *altitudes;
					}
					vertex->Clear();
					vertex->Pos = (pos - CentreOfMass) * Scale;
					Radius = max(Radius, vertex->Pos.GetNorme());
					vertex++;
					vertexBase++;
					altitudes++;
				}
				LH3DTriangle* triangle = primitive->Triangles;
				for (k = 0; k < primitive->NumTriangles; k++)
				{
					face->Set(primitiveBase + triangle->GetA(), primitiveBase + triangle->GetB(),
					          primitiveBase + triangle->GetC());
					face++;
					triangle++;
				}
			}
		}
		else
		{
			altitudes += submesh->GetVerticesCount();
		}
	}
	SetUpMoi();
	SetUpPos();
}

bool32_t PhysOb::GetImpactPoint(LHPoint& start, LHPoint& direction, float max_distance, LHPoint& impact,
                                LHPoint& normal)
{
	PTri*    face = Faces;
	float    best = PHYS_OB_NO_IMPACT;
	bool32_t result = false;
	for (int i = 0; i < NumFaces; face++, i++)
	{
		LHPoint& faceNormal = face->WorldNormal;
		float    facing = direction * face->WorldNormal;
		if (facing < -PHYS_OB_FACING_EPSILON)
		{
			LHPoint& p0 = Vertices[face->Indices[0]].WorldPos;
			float    t = -((start - p0) * face->WorldNormal) / facing;
			if (t < 0.0f && t > best)
			{
				LHPoint& p1 = Vertices[face->Indices[1]].WorldPos;
				LHPoint& p2 = Vertices[face->Indices[2]].WorldPos;
				LHPoint  hit = start + direction * t;
				if (((p1 - p0) ^ (hit - p0)) * face->WorldNormal > 0.0f &&
				    ((p2 - p1) ^ (hit - p1)) * face->WorldNormal > 0.0f &&
				    ((hit - p2) ^ (p2 - p0)) * face->WorldNormal > 0.0f)
				{
					best = t;
					result = true;
					impact = hit;
					normal = faceNormal;
				}
			}
		}
	}
	return result;
}

bool32_t PhysOb::GetSpecialImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal)
{
	PTri*    face = Faces;
	float    best = PHYS_OB_NO_SPECIAL_IMPACT;
	bool32_t result = false;
	for (int i = 0; i < NumFaces; face++, i++)
	{
		LHPoint p0 = Vertices[face->Indices[0]].WorldPos;
		LHPoint p1 = Vertices[face->Indices[1]].WorldPos;
		LHPoint p2 = Vertices[face->Indices[2]].WorldPos;
		LHPoint edge1 = p1 - p0;
		LHPoint edge2 = p2 - p0;
		LHPoint faceNormal = edge1 ^ edge2;
		float   facing = faceNormal * direction;
		if (facing < -PHYS_OB_SPECIAL_FACING_EPSILON)
		{
			float t = -(faceNormal * (start - p0)) / facing;
			if (t < 0.0f && t > best)
			{
				LHPoint hit;
				hit = direction * t + start;
				if ((edge1 ^ (hit - p0)) * faceNormal > 0.0f && ((p2 - p1) ^ (hit - p1)) * faceNormal > 0.0f &&
				    ((hit - p2) ^ edge2) * faceNormal > 0.0f)
				{
					best = t;
					result = true;
					impact = hit;
					normal = faceNormal;
				}
			}
		}
	}
	return result;
}

void PhysOb::SetUpPos()
{
	int i;
	Matrix = obj->matrix;
	LHPoint centre;
	Matrix.TransformVector(centre, CentreOfMass);
	Matrix.GetVectorX().Normalise();
	Matrix.GetVectorY().Normalise();
	Matrix.GetVectorZ().Normalise();
	Matrix.GetPos() += centre;
	OldMatrix = Matrix;
	IPoint* vertex = Vertices;
	for (i = 0; i < NumVertices; i++, vertex++)
	{
		TransformPoint(vertex->WorldPos, vertex->Pos, Matrix);
		vertex->Contact = vertex->WorldPos;
		vertex->LastCompression = 0.0f;
		vertex->Compression = 0.0f;
	}
	CollideBoxes = NULL;
	NumContacts = 0;
	PTri* face = Faces;
	for (i = 0; i < NumFaces; i++, face++)
	{
		LHPoint edge1 = Vertices[face->Indices[1]].Pos - Vertices[face->Indices[0]].Pos;
		LHPoint edge2 = Vertices[face->Indices[2]].Pos - Vertices[face->Indices[0]].Pos;
		face->Normal = edge1 ^ edge2;
		face->Normal.Normalise();
		Matrix.TransformVector(face->WorldNormal, face->Normal);
	}
}

void PhysOb::AdjustToGroundLevel(bool align, bool only_down)
{
	float lowest = PHYS_OB_GROUND_SEARCH_HEIGHT;
	if (align)
	{
		LHPoint up;
		LH3DIsland::GetNormal(Matrix.GetPos(), &up);
		LHPoint forward = Matrix.GetVectorX() ^ up;
		forward.Normalise();
		Matrix.GetVectorX() = up ^ forward;
		Matrix.GetVectorY() = up;
		Matrix.GetVectorZ() = forward;
	}
	for (int i = 0; i < NumVertices; i++)
	{
		LHPoint world;
		TransformPoint(world, Vertices[i].Pos, Matrix);
		float height = world.y - LH3DIsland::GetAltitude(world);
		if (height < lowest)
		{
			lowest = height;
		}
	}
	if (only_down && lowest > 0.0f)
	{
		lowest = 0.0f;
	}
	Matrix.GetPos().y -= lowest;
	OldMatrix = Matrix;
}

void PhysOb::PrepareForDraw(LH3DObject* object, float blend)
{
	if (object == NULL)
	{
		return;
	}
	if (Shadow == NULL && (object->IsShadowOnTextureChroma() || object->IsShadowOnTexture() || object->IsAnimated()))
	{
		Shadow = LH3DDynamicShadow::Create();
	}
	LHMatrix& matrix = object->matrix;
	matrix.SetBlend(OldMatrix, Matrix, blend);
	matrix.NormaliseMatrixOnly();
	if (object->IsAnimated())
	{
		matrix.RotateY(HALF_PI_F);
	}
	for (int i = 0; i < 9; i++)
	{
		matrix.m[i] *= Scale;
	}
	LHPoint centre;
	matrix.TransformVector(centre, CentreOfMass);
	matrix.GetPos() -= centre;
	if (Shadow != NULL)
	{
		Shadow->Prepare(object);
	}
}

void PhysOb::FillPositionMatrixGameFriendly(LHMatrix& matrix)
{
	matrix = Matrix;
	for (int i = 0; i < 9; i++)
	{
		matrix.m[i] *= Scale;
	}
	LHPoint centre;
	matrix.TransformVector(centre, CentreOfMass);
	matrix.GetPos() -= centre;
}

void PhysOb::ZeroForces()
{
	int i;
	Touched = false;
	if (!Frozen)
	{
		LHPoint step = Velocity * PHYS_OB_PREDICTION_TIME;
		IPoint* vertex = Vertices;
		for (i = 0; i < NumVertices; i++, vertex++)
		{
			TransformPoint(vertex->WorldPos, vertex->Pos, Matrix);
			vertex->WorldPos += step;
			vertex->Distance = vertex->WorldPos.GetDistance(Matrix.GetPos());
			if (vertex->Distance < PHYS_OB_MIN_DISTANCE)
			{
				vertex->Distance = PHYS_OB_MIN_DISTANCE;
			}
		}
		PredictedPos = Matrix.GetPos() + step;
		PTri* face = Faces;
		for (i = 0; i < NumFaces; i++, face++)
		{
			Matrix.TransformVector(face->WorldNormal, face->Normal);
		}
		TotalForce = Force;
		TotalTorque = Torque;
	}
	else
	{
		PredictedPos = Matrix.GetPos();
		TotalForce.SetNull();
		TotalTorque.SetNull();
	}
}

void PhysOb::ResetCompressions()
{
	IPoint* vertex = Vertices;
	for (int i = 0; i < NumVertices; i++)
	{
		vertex->LastCompression = 0.0f;
		vertex->Compression = 0.0f;
		vertex++;
	}
}

void PhysOb::CheckVGround()
{
	if (!Frozen)
	{
		TotalForce += Velocity * -(Speed * WindResist);
		IPoint* vertex = Vertices;
		NumContacts = 0;
		TotalForce.y -= Mass * PHYS_OB_GRAVITY;
		if (LH3DIsland::GetAltitude(Matrix.GetPos()) < PHYS_OB_SEA_ALTITUDE && Matrix.GetPos().y < Radius)
		{
			LandCell* cell = LH3DIsland::GetCell(FloatToInt(vertex->WorldPos.x / MAP_COORDS_METRES_PER_CELL),
			                                     FloatToInt(vertex->WorldPos.z / MAP_COORDS_METRES_PER_CELL));
			if (cell == NULL || cell->altitude < 1)
			{
				int     submerged = 0;
				IPoint* point = vertex;
				for (int i = 0; i < NumVertices; i++)
				{
					if (point->WorldPos.y < 0.0f)
					{
						submerged++;
					}
					point++;
				}
				if (submerged != 0)
				{
					OnGround = true;
					float depth = (Radius - Matrix.GetPos().y) / (Radius + Radius);
					Touched = true;
					Density += PHYS_OB_DENSITY_GAIN;
					if (depth > 1.0f)
					{
						depth = 1.0f;
					}
					LHPoint force(0.0f, depth * Mass * PHYS_OB_GRAVITY / Density, 0.0f);
					force -= Velocity * (depth * Speed * WindResist * PHYS_OB_WATER_DRAG);
					TotalForce += force;
					float share = 1.0f;
					force *= share / PHYS_OB_WATER_TORQUE_DIVISOR / submerged;
					vertex = Vertices;
					for (int i = 0; i < NumVertices; i++)
					{
						vertex->Contact = vertex->WorldPos;
						vertex->Compression = 0.0f;
						if (vertex->WorldPos.y < 0.0f)
						{
							TotalTorque += force ^ (vertex->WorldPos - PredictedPos);
						}
						vertex++;
					}
					return;
				}
				OnGround = false;
			}
		}
		vertex = Vertices;
		for (int i = 0; i < NumVertices; i++)
		{
			float altitude = LH3DIsland::GetAltitude(vertex->WorldPos);
			vertex->Compression = altitude - vertex->WorldPos.y;
			vertex->Collider = NULL;
			if (vertex->Compression >= 0.0f)
			{
				NumContacts++;
				vertex->Contact = vertex->WorldPos;
				LH3DIsland::GetNormal(vertex->Contact, &vertex->Normal);
				vertex->Contact.y = altitude;
				if (!Frozen)
				{
					Touched = true;
				}
			}
			else
			{
				vertex->Contact = vertex->WorldPos;
			}
			vertex++;
		}
	}
	else if (CollideBoxes != NULL && Faces == NULL)
	{
		IPoint* vertex = Vertices;
		for (int i = 0; i < NumVertices; i++)
		{
			vertex->WorldPos = CollideBoxes->Matrix.GetPos();
			vertex->Distance = 1.0f;
			vertex->RestDistance = 1.0f;
			vertex->Compression = 0.0f;
			vertex->Contact = vertex->WorldPos;
			vertex++;
		}
	}
	else
	{
		IPoint* vertex = Vertices;
		for (int i = 0; i < NumVertices; i++)
		{
			vertex->Compression = 0.0f;
			vertex->Contact = vertex->WorldPos;
			vertex++;
		}
	}
}

void PhysOb::CheckVFaces(PhysOb* other)
{
	float   radiusSq = other->Radius * other->Radius;
	IPoint* vertex = Vertices;
	for (int i = 0; i < NumVertices; vertex++, i++)
	{
		if ((vertex->WorldPos - other->Matrix.GetPos()).GetNormeSq() < radiusSq)
		{
			LHPoint direction;
			if (CollideBoxes != NULL)
			{
				direction = other->Matrix.GetPos() - vertex->WorldPos;
				direction.Normalise();
			}
			else
			{
				direction = vertex->WorldPos - Matrix.GetPos();
			}
			LHPoint  impact;
			LHPoint  normal;
			bool32_t hit;
			if (other->CollideBoxes != NULL)
			{
				hit = other->CollideBoxes->GetImpactPoint(other->CollideMesh, vertex->WorldPos, direction, impact,
				                                          normal);
				if (hit)
				{
					float t = ((impact - Matrix.GetPos()) * direction) / vertex->Distance;
					if (t < 0.0f || t > vertex->Distance)
					{
						continue;
					}
				}
			}
			else
			{
				hit = other->GetImpactPoint(vertex->WorldPos, direction, vertex->RestDistance, impact, normal);
			}
			if (hit)
			{
				NumContacts++;
				float compression = vertex->Distance - ((impact - Matrix.GetPos()) * direction) / vertex->Distance;
				vertex->Contact = impact;
				vertex->Collider = other;
				vertex->Normal.x = normal.x;
				vertex->Normal.y = normal.y;
				vertex->Normal.z = normal.z;
				if (compression > vertex->Compression)
				{
					vertex->Compression = compression;
					if (!Frozen || !other->Frozen)
					{
						LastCollider = other;
						Touched = true;
						other->LastCollider = this;
						other->Touched = true;
					}
				}
			}
		}
	}
}

float PhysOb::GetMaxCompression(PhysOb* other, LHPoint& direction)
{
	float   maxCompression = 0.0f;
	IPoint* vertex = Vertices;
	for (int i = 0; i < NumVertices; vertex++, i++)
	{
		LHPoint  impact;
		LHPoint  normal;
		bool32_t hit;
		if (other->CollideBoxes != NULL)
		{
			hit = other->CollideBoxes->GetImpactPoint(other->CollideMesh, vertex->WorldPos, direction, impact, normal);
		}
		else
		{
			hit = other->GetSpecialImpactPoint(vertex->WorldPos, direction, impact, normal);
		}
		if (hit)
		{
			float compression = (vertex->WorldPos - impact) * direction;
			if (compression > maxCompression)
			{
				maxCompression = compression;
			}
		}
	}
	return maxCompression;
}

void PhysOb::UpdateForces()
{
	Settling = false;
	SettleTime += 5;
	if (NumContacts == 0)
	{
		return;
	}
	IPoint* vertex = Vertices;
	for (int i = 0; i < NumVertices; vertex++, i++)
	{
		if (vertex->Compression <= 0.0f)
		{
			vertex->LastCompression = 0.0f;
			vertex->Anchor = vertex->Contact;
			continue;
		}
		float springK;
		float dampK;
		float frictionK;
		if (vertex->Collider != NULL)
		{
			springK = min(vertex->Collider->SpringK, SpringK);
			dampK = min(vertex->Collider->DampK, DampK);
			frictionK = min(vertex->Collider->FrictionK, FrictionK) * PHYS_OB_COLLIDER_FRICTION_SCALE;
		}
		else
		{
			springK = SpringK;
			dampK = DampK;
			frictionK = FrictionK;
		}
		float push;
		if (vertex->LastCompression == 0.0f)
		{
			vertex->LastCompression = vertex->Compression;
			push = vertex->LastCompression * springK;
		}
		else
		{
			push = vertex->Distance / vertex->RestDistance *
			           ((vertex->Compression - vertex->LastCompression) * PHYS_OB_DAMPING_SCALE) * dampK +
			       springK * vertex->LastCompression;
		}
		if (push < 0.0f)
		{
			push = 0.0f;
		}
		float maxFriction = push * frictionK;
		vertex->Normal *= push;
		LHPoint slide = vertex->Anchor - vertex->Contact;
		LHPoint friction = slide * springK;
		float   lengthSq = friction.GetNormeSq();
		if (lengthSq > maxFriction * maxFriction)
		{
			friction *= maxFriction / (float)sqrt(lengthSq);
			vertex->Anchor = friction * (1.0f / springK) + vertex->Contact;
		}
		vertex->Normal += friction;
		TotalForce += vertex->Normal;
		TotalTorque += vertex->Normal ^ (vertex->WorldPos - PredictedPos);
		if (vertex->Collider != NULL)
		{
			vertex->Collider->TotalForce -= vertex->Normal;
			vertex->Collider->TotalTorque += (vertex->WorldPos - vertex->Collider->Matrix.GetPos()) ^ vertex->Normal;
		}
	}
}

static const float MaximumAngularVelocity = PHYS_OB_MAXIMUM_ANGULAR_VELOCITY;
static float       MaximumAngularVelocitySq = MaximumAngularVelocity * MaximumAngularVelocity;

int PhysOb::UpdateMotion()
{
	if (!Movable || (Frozen && !Touched))
	{
		return PHYS_OB_MOTION_STILL;
	}
	if (Radius * -PHYS_OB_FALL_LIMIT > Matrix.GetPos().y)
	{
		return PHYS_OB_MOTION_FALLEN;
	}
	AngularVelocity += TotalTorque * PHYS_OB_TIME_STEP;
	AngularVelocity *= RotDamp;
	LHPoint local;
	InverseTransformVector(Matrix, local, AngularVelocity);
	LHPoint spin;
	InverseInertiaTensor.TransformVector(spin, local);
	float spinSq = spin.GetNormeSq();
	if (spinSq > MaximumAngularVelocitySq && (spin.x || spin.y || spin.z))
	{
		spin *= MaximumAngularVelocity / (float)sqrt(spinSq);
	}
	LHPoint world;
	Matrix.TransformVector(world, spin);
	Velocity += TotalForce * (1.0f / Mass) * PHYS_OB_TIME_STEP;
	Speed = Velocity.GetNorme();
	if (Speed > MaximumVelocity)
	{
		Velocity *= MaximumVelocity / Speed;
		Speed = MaximumVelocity;
	}
	float settle = Frozen                             ? PHYS_OB_FROZEN_SETTLE
	               : SettleTime > PHYS_OB_SETTLE_TIME ? SettleTime / (float)PHYS_OB_SETTLE_TIME
	                                                  : 1.0f;
	float settleSq = settle * settle;
	if (NumContacts && settle > Speed && settleSq * PHYS_OB_SETTLE_SPIN_SCALE > spinSq)
	{
		LHPoint push = TotalForce * (1.0f / (Radius * Radius * Mass));
		if (settleSq > push.DotProductInline(push))
		{
			if (Frozen)
			{
				Velocity.SetNull();
				Speed = 0.0f;
				AngularVelocity.SetNull();
				return PHYS_OB_MOTION_STILL;
			}
			if (SettleTime > 0)
			{
				Velocity.SetNull();
				Speed = 0.0f;
				AngularVelocity.SetNull();
				return PHYS_OB_MOTION_SETTLED;
			}
		}
	}
	LHPoint rotation(world.x * PHYS_OB_TIME_STEP, world.y * PHYS_OB_TIME_STEP, world.z * PHYS_OB_TIME_STEP);
	float   angle = (float)sqrt(rotation.DotProductInline(rotation));
	if (angle > PHYS_OB_MIN_ROTATION)
	{
		rotation *= 1.0f / angle;
		LHMatrix delta;
		delta.SetFromVectorAndAngle(rotation, angle);
		Matrix.PostMultiplyMatrixOnly(delta);
	}
	Matrix.GetPos().Add(Velocity * PHYS_OB_TIME_STEP);
	return Frozen ? PHYS_OB_MOTION_FROZEN : PHYS_OB_MOTION_MOVING;
}
