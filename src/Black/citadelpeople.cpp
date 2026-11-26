#include "CitadelPeople.h"

#include <math.h>
#include <windows.h> /* For min */

#include <Lionhead/LH3DLib/development/LH3DAnim.h>      /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For atan360 */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>      /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h> /* For LH3DPrimitive::ApplyFog */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>   /* For struct LH3DSubMesh */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::ProjectPoint */

#include <chlasm/AllMeshes.h> /* For ANM_P_WALK_MAN */
#include "Game3DObject.h"
#include "Living.h"
#include "Rand.h"

struct CitadelTriangle
{
	int Vertex[CITADEL_TRIANGLE_SIDES];
	int Neighbour[CITADEL_TRIANGLE_SIDES];
};

static int              Unused = 0;
static LHMatrix         MovementMatrices[CITADEL_MOVEMENT_MATRICES];
static int              NumTriangles;
static int              NumVertices;
static LHPoint*         Vertices;
static CitadelTriangle* Triangles;

void CPController::Close()
{
	delete Vertices;
	delete Triangles;
	Vertices = NULL;
	Triangles = NULL;
}

void CPController::Init()
{
	LH3DMesh* mesh = LH3DMesh::CreateFromHD("data\\citadel\\engine\\movement.l3d", 0);
	Init(mesh);
	mesh->Release();
}

void CPController::Init(LH3DMesh* mesh)
{
	LH3DMeshExtraMetrics* metrics = (LH3DMeshExtraMetrics*)mesh->GetEMetricsData();
	if (metrics != NULL)
	{
		if (metrics->Count == 0)
		{
			return;
		}
		MovementMatrices[0] = metrics->Matrices[0];
		MovementMatrices[1] = metrics->Matrices[1];
		MovementMatrices[2] = metrics->Matrices[2];
	}
	LH3DPrimitive* primitive = mesh->GetListPtrSubmesh()[0]->GetListPtrPrimitive()[0];
	NumTriangles = primitive->GetTriangleCount();
	LH3DVertex* vertices = primitive->GetListVertex();
	NumVertices = 0;
	LH3DTriangle* triangles = primitive->Triangles;
	Vertices = NEW(67) LHPoint[primitive->GetVerticesCount()];
	Triangles = NEW(68) CitadelTriangle[NumTriangles];
	for (int i = 0; i < NumTriangles; i++)
	{
		int a = triangles[i].A;
		int b = triangles[i].B;
		int c = triangles[i].C;
		int j;
		for (j = 0; j < NumVertices; j++)
		{
			if (Vertices[j] == vertices[a].position)
			{
				break;
			}
		}
		if (j == NumVertices)
		{
			Vertices[NumVertices++] = vertices[a].position;
		}
		Triangles[i].Vertex[0] = j;
		int k;
		for (k = 0; k < NumVertices; k++)
		{
			if (Vertices[k] == vertices[b].position)
			{
				break;
			}
		}
		if (k == NumVertices)
		{
			Vertices[NumVertices++] = vertices[b].position;
		}
		Triangles[i].Vertex[1] = k;
		int l;
		for (l = 0; l < NumVertices; l++)
		{
			if (Vertices[l] == vertices[c].position)
			{
				break;
			}
		}
		if (l == NumVertices)
		{
			Vertices[NumVertices++] = vertices[c].position;
		}
		Triangles[i].Vertex[2] = l;
	}
	for (int m = 0; m < NumTriangles; m++)
	{
		for (int side = 0; side < CITADEL_TRIANGLE_SIDES; side++)
		{
			int p = Triangles[m].Vertex[(side + 2) % CITADEL_TRIANGLE_SIDES];
			int q = Triangles[m].Vertex[(side + 1) % CITADEL_TRIANGLE_SIDES];
			Triangles[m].Neighbour[side] = -1;
			for (int n = 0; n < NumTriangles; n++)
			{
				CitadelTriangle& other = Triangles[n];
				if ((other.Vertex[0] == p && other.Vertex[1] == q) || (other.Vertex[1] == p && other.Vertex[2] == q) ||
				    (other.Vertex[2] == p && other.Vertex[0] == q))
				{
					Triangles[m].Neighbour[side] = n;
					break;
				}
			}
		}
	}
}

CitadelPerson* CPController::FindPerson(Living* living)
{
	for (CitadelPerson* person = People; person != NULL; person = person->Next)
	{
		if (person->LivingThing == living)
		{
			return person;
		}
	}
	return NULL;
}

void CPController::RemovePerson(Living* living)
{
	for (CitadelPerson* person = People; person != NULL; person = person->Next)
	{
		if (person->LivingThing == living)
		{
			person->DeleteAll(&People);
			NumPeople--;
			return;
		}
	}
}

CitadelPerson* CPController::AddPerson(Living* living)
{
	if (NumPeople >= CITADEL_PEOPLE_MAX)
	{
		return NULL;
	}
	if (!living->IsAvailable())
	{
		return NULL;
	}
	CitadelPerson* person = FindPerson(living);
	if (person != NULL)
	{
		return person;
	}
	NumPeople++;
	person = NEW(144) CitadelPerson(&People);
	person->LivingThing = living;
	person->State = CITADEL_PERSON_STATE_STANDING;
	person->Speed = CITADEL_PERSON_START_SPEED;
	person->Timer = 0.0f;
	person->AnimTime = 0;
	person->Duration = CITADEL_PERSON_START_DURATION;
	person->NextTriangle = person->CurrentTriangle = GRand::LocalRand(NumTriangles);
	person->Position = GetRandPosInTri(person->CurrentTriangle);
	person->Destination = GetRandPosInTri(person->NextTriangle);
	person->StayInTriangle = false;
	person->DirectionAngle = GetAngle(person->Position, person->Destination);
	person->Heading = heading_from_direction_vector(person->Destination - person->Position);
	LH3DObject* object = LH3DObject::Create(LH3DObject::ANIMATED);
	person->Object = object;
	object->SetDynamicLighting(true);
	person->IsMale = person->LivingThing->IsMaleVillager();
	person->Scale = person->LivingThing->GetScale();
	object->SetMesh(living->Game3dObject->GetMesh(), NULL, NULL);
	object->matrix = living->Game3dObject->matrix;
	return person;
}

LHPoint CPController::GetRandPosInTri(int triangle)
{
	float   u = (GRand::LocalFloatRand(1.0f));
	float   v = (GRand::LocalFloatRand(1.0f - u));
	LHPoint a = Vertices[Triangles[triangle].Vertex[0]];
	LHPoint ab = Vertices[Triangles[triangle].Vertex[1]] - a;
	LHPoint ac = Vertices[Triangles[triangle].Vertex[2]] - a;
	return a + ab * u + ac * v;
}

LHPoint CPController::GetRandPosOnEdge(int triangle, int edge)
{
	float   f = GRand::LocalFloatRand(1.0f);
	LHPoint a = Vertices[Triangles[triangle].Vertex[(edge + 1) % CITADEL_TRIANGLE_SIDES]];
	return a + (Vertices[Triangles[triangle].Vertex[(edge + 2) % CITADEL_TRIANGLE_SIDES]] - a) * f;
}

float CPController::GetAngle(const LHPoint& from, const LHPoint& to)
{
	float dx = to.x - from.x;
	float dz = to.z - from.z;
	return atan360(dx, dz);
}

void CPController::Update(float delta_time)
{
	CitadelPerson* next;
	for (CitadelPerson* person = People; person != NULL; person = next)
	{
		next = person->Next;
		person->Timer += delta_time;
		CITADEL_PERSON_STATE state = person->State;
		switch (person->State)
		{
		case CITADEL_PERSON_STATE_STANDING:
			if (person->Timer > person->Duration)
			{
				state = CITADEL_PERSON_STATE_WALKING;
			}
			break;
		case CITADEL_PERSON_STATE_WALKING: {
			LHPoint  direction = person->Destination - person->Position;
			float    distance = direction.GetNormSq();
			float    step = delta_time * person->Speed;
			float    fraction = step >= distance ? 1.0f : step / distance;
			bool32_t arrived = false;
			if (distance < CITADEL_PERSON_ARRIVE_DISTANCE)
			{
				arrived = true;
			}
			else
			{
				person->Position += direction * fraction;
				if (fraction >= CITADEL_PERSON_ARRIVE_FRACTION)
				{
					arrived = true;
				}
			}
			if (arrived)
			{
				person->Position = person->Destination;
				if (person->NextTriangle >= 0)
				{
					person->CurrentTriangle = person->NextTriangle;
				}
				if (person->CurrentTriangle < 0)
				{
					person->CurrentTriangle = person->NextTriangle = GRand::LocalRand(NumTriangles);
				}
				int neighbours[CITADEL_TRIANGLE_SIDES + 1];
				neighbours[3] = person->CurrentTriangle;
				CitadelTriangle& triangle = Triangles[person->CurrentTriangle];
				neighbours[0] = triangle.Neighbour[0];
				neighbours[1] = triangle.Neighbour[1];
				neighbours[2] = triangle.Neighbour[2];
				LHPoint points[CITADEL_TRIANGLE_SIDES + 1];
				points[0] = person->Position;
				points[1] = person->Position;
				points[2] = person->Position;
				points[3] = person->Position;
				float   weights[CITADEL_TRIANGLE_SIDES + 1];
				LHPoint direction(cos(person->DirectionAngle), 0.0f, sin(person->DirectionAngle));
				float   total = 0.0f;
				for (int i = 0; i < CITADEL_TRIANGLE_SIDES + 1; i++)
				{
					if (neighbours[i] < 0)
					{
						points[i] = GetRandPosInTri(person->CurrentTriangle);
						weights[i] = CITADEL_PERSON_UNREACHABLE_WEIGHT;
					}
					else
					{
						float best = 0.0f;
						for (int tries = CITADEL_PERSON_DESTINATION_TRIES; tries > 0; tries--)
						{
							LHPoint candidate = GetRandPosInTri(neighbours[i]);
							if (!person->StayInTriangle && i < CITADEL_TRIANGLE_SIDES)
							{
								candidate = GetRandPosOnEdge(person->CurrentTriangle, i);
							}
							LHPoint offset = candidate - person->Position;
							float   score = offset * direction;
							score = score * score * score;
							if (score < CITADEL_PERSON_MIN_WEIGHT)
							{
								score = CITADEL_PERSON_MIN_WEIGHT;
							}
							if (score > best)
							{
								best = score;
								weights[i] = score;
								points[i] = candidate;
							}
						}
					}
					total += weights[i];
				}
				float random = GRand::LocalFloatRand(total);
				int   choice;
				for (choice = 0; choice < CITADEL_TRIANGLE_SIDES; choice++)
				{
					if (random < weights[choice])
					{
						break;
					}
					random -= weights[choice];
				}
				if (person->StayInTriangle)
				{
					choice = CITADEL_TRIANGLE_SIDES;
				}
				person->StayInTriangle = !person->StayInTriangle;
				person->Destination = points[choice];
				person->NextTriangle = neighbours[choice];
				person->DirectionAngle = GetAngle(person->Position, person->Destination);
				person->Heading = heading_from_direction_vector(person->Destination - person->Position);
				if (GRand::LocalFloatRand(1.0f) < CITADEL_PERSON_STOP_CHANCE)
				{
					state = CITADEL_PERSON_STATE_STANDING;
				}
			}
			break;
		}
		}
		if (state != person->State)
		{
			person->State = state;
			person->Timer = 0.0f;
			person->AnimTime = 0;
			person->Duration = GRand::LocalFloatRand(CITADEL_PERSON_STAND_TIME) + CITADEL_PERSON_STAND_TIME;
		}
	}
}

void CPController::Draw(bool under_water)
{
	LH3DTech::g_current_matrix = NULL;
	int delta_time = LH3DTech::g_delta_time;
	for (CitadelPerson* person = People; person != NULL; person = person->Next)
	{
		int   x;
		int   y;
		float z;
		if (LH3DTech::ProjectPoint(&person->Position, &x, &y, &z) == 2 &&
		    1.0f - (z - CITADEL_PERSON_FADE_START_DISTANCE) * CITADEL_PERSON_FADE_RATE > CITADEL_PERSON_FADE_MIN &&
		    person->Object != NULL)
		{
			LH3DObject* object = person->Object;
			int         animIndex = person->IsMale ? ANM_P_WALK_MAN : ANM_P_WALK_WOMAN;
			if (person->State == CITADEL_PERSON_STATE_STANDING)
			{
				animIndex = ANM_P_STAND;
			}
			LH3DAnim* anim = LH3DAnim::GetPackedAnim(animIndex);
			object->SetPosition(person->Position, person->Heading, person->Scale);
			object->SetCurrentAnim(anim);
			person->Speed = anim->Distance * CITADEL_PERSON_MILLISECONDS_PER_SECOND / anim->Duration * person->Scale;
			int animTime = person->AnimTime;
			person->AnimTime = anim->IsCyclic() ? (animTime + delta_time) % anim->Duration
			                                    : min(anim->Duration - 1, animTime + delta_time);
			object->SetCurrentCycleTime(person->AnimTime);
			object->SetNeedClipping(true);
			unsigned long color = under_water ? CITADEL_PERSON_UNDERWATER_COLOR : CITADEL_PERSON_COLOR;
			unsigned long specular = LH3DPrimitive::ApplyFog(person->Position, (LH3DColor*)&color);
			object->SetColorSpecular(color, specular);
			object->SetDynamicLighting(true);
			if (under_water)
			{
				object->DrawUnderWater();
			}
			else
			{
				object->Draw();
			}
		}
	}
}
