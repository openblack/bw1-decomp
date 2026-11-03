#include "LH3DEye.h"

#include <math.h> /* For cos, sin */

#include "ExtraBone.h"          /* For struct ExtraBone */
#include "LH3DAnimatedObject.h" /* For class LH3DAnimatedObject */
#include "LH3DMath.h"           /* For InverseSquareRoot */
#include "LH3DMesh.h"           /* For LH3DMesh */
#include "LH3DObject.h"         /* For class LH3DObject */
#include "LH3DPrimitive.h"      /* For LH3DPrimitive, GetLightLevel, ScaleColor */
#include "LH3DSubMesh.h"        /* For struct LH3DSubMesh */
#include "LH3DTech.h"           /* For LH3DTech */
#include "LH3DMath.h"           /* For HALF_PI_F */
#include "LHMatrix.h"           /* For struct LHMatrix */
#include "LHRandom.h"           /* For Random */

#define EYE_MESH_PATH              "Data\\MISC\\Eyes"
#define R_PAUP_UP                  EYE_MESH_PATH "\\r_paupe_up.l3d"
#define R_PAUP_DOWN                EYE_MESH_PATH "\\r_paupe_down.l3d"
#define L_PAUP_UP                  EYE_MESH_PATH "\\l_paupe_up.l3d"
#define L_PAUP_DOWN                EYE_MESH_PATH "\\l_paupe_down.l3d"
#define EYE_BALL                   EYE_MESH_PATH "\\eye_ball.l3d"
#define R_PAUP_UP2                 EYE_MESH_PATH "\\r_paupe_up2.l3d"
#define R_PAUP_DOWN2               EYE_MESH_PATH "\\r_paupe_down2.l3d"
#define L_PAUP_UP2                 EYE_MESH_PATH "\\l_paupe_up2.l3d"
#define L_PAUP_DOWN2               EYE_MESH_PATH "\\l_paupe_down2.l3d"
#define EYE_BALL2                  EYE_MESH_PATH "\\eye_ball2.l3d"
#define LH3D_EYE_BLINK_FADE_TIME   50
#define LH3D_EYE_BLINK_FADE_SCALE  0.02f
#define LH3D_EYE_PAUPE_UPPER_SCALE 0.47f
#define LH3D_EYE_PAUPE_LOWER_SCALE -0.35f
#define LH3D_EYE_IRIS_FRAME_U      0.125f
#define LH3D_EYE_IRIS_V            0.75f
#define LH3D_EYE_LIGHT_SCALE       255.0f

float LH3DEye::LightAngles[LH3D_EYE_TYPE_COUNT][4] = {
	{0.0f, 0.0f, 0.195f, 0.262f}, {-0.15625f, -0.045f, 0.34f, -0.253333f}, {-0.28125f, -0.165f, 0.705f, -0.333333f}};
int      LH3DEye::IrisFrames[LH3D_EYE_TYPE_COUNT] = {4, 3, 5};
float    LH3DEye::TurnSpeed = 0.7f;
uint32_t LH3DEye::TargetInterval = 300;
float    LH3DEye::TargetAngle;
float    LH3DEye::MinLidClosure;
uint32_t LH3DEye::TargetTime;

void LH3DEye::Draw()
{
	LidClosure = 0.0f;
	if (Blinking)
	{
		long time = BlinkTime;
		if (time > BlinkLength + 100)
		{
			Blinking = false;
			BlinkLength = (long)Random(100.0f, 200.0f);
			BlinkTime = 0;
			field_0x28 = 0;
		}
		else if (time < LH3D_EYE_BLINK_FADE_TIME)
		{
			LidClosure = time * LH3D_EYE_BLINK_FADE_SCALE;
			BlinkTime = time + LH3DTech::GetGameTimeInc();
		}
		else if (time < BlinkLength + LH3D_EYE_BLINK_FADE_TIME)
		{
			LidClosure = 1.0f;
			BlinkTime = time + LH3DTech::GetGameTimeInc();
		}
		else
		{
			LidClosure = 1.0f - (time - BlinkLength - LH3D_EYE_BLINK_FADE_TIME) * LH3D_EYE_BLINK_FADE_SCALE;
			BlinkTime = time + LH3DTech::GetGameTimeInc();
		}
	}
	else
	{
		BlinkDelay -= LH3DTech::g_game_time_inc;
		if (BlinkDelay < 0)
		{
			Blinking = true;
			BlinkDelay = (long)Random(1000.0f, 5000.0f);
		}
		else
		{
			Blinking = false;
		}
	}

	float step = LH3DTech::GetGameTimeInc() * TurnSpeed * 0.001;
	if (TargetAngle != Angle)
	{
		if (Angle > TargetAngle)
		{
			Angle -= step;
			if (Angle < TargetAngle)
			{
				Angle = TargetAngle;
			}
		}
		else
		{
			Angle += step;
			if (Angle > TargetAngle)
			{
				Angle = TargetAngle;
			}
		}
	}
	else
	{
		TargetAngle = Random(-0.25f, 0.25f);
	}

	TargetTime += LH3DTech::g_game_time_inc;
	if (TargetTime > TargetInterval)
	{
		TargetTime = 0;
		MinLidClosure = Random(0.0f, 0.3f);
	}
	if (LidClosure < MinLidClosure)
	{
		LidClosure = MinLidClosure;
	}

	LHPoint sun(DEFAULT_SUN);
	sun *= InverseSquareRoot(sun.GetNorm());

	float c = cos(HALF_PI_F);
	float s = sin(HALF_PI_F);
	float zero = 0.0f;

	LHMatrix turn;
	turn._11 = -c - zero;
	turn._12 = 0.0f;
	turn._13 = zero - s;
	turn._21 = zero - zero;
	turn._22 = 1.0f;
	turn._23 = zero + zero;
	turn._31 = zero - s;
	turn._32 = 0.0f;
	turn._33 = c + zero;
	turn._41 = zero - zero;
	turn._42 = 0.0f;
	turn._43 = zero + zero;

	LHMatrix matrix = LH3DMesh::g_current_list_matrix[Bones->BoneIndex[0]];
	matrix.PostMultiply(LH3DTech::g_clipping_to_world);
	matrix.PreMultiply(Bones->Matrix[0]);
	matrix.PreMultiply(turn);

	LHMatrix look;
	look.SetYXZMatrixOnly(LightAngles[Type][0], LightAngles[Type][1], 0.0f);
	LHPoint direction(-look._31, -look._32, -look._33);
	LHPoint normal(direction.x * matrix._11 + direction.y * matrix._21 + direction.z * matrix._31,
	               direction.x * matrix._12 + direction.y * matrix._22 + direction.z * matrix._32,
	               direction.x * matrix._13 + direction.y * matrix._23 + direction.z * matrix._33);
	normal *= InverseSquareRoot(normal.GetNorm());
	int           intensity = (int)((normal * sun) * LH3D_EYE_LIGHT_SCALE);
	unsigned long color = ScaleColor(Object->color, GetLightLevel(intensity));
	Parts[4]->specular = Parts[3]->specular = Parts[2]->specular = Parts[1]->specular = Parts[0]->specular =
		Object->specular;
	Parts[0]->color = Parts[1]->color = Parts[4]->color = color;
	Parts[4]->matrix = matrix;
	if (Angle != 0.0f)
	{
		Parts[4]->matrix.RotateY(Angle);
	}
	Parts[4]->AddDrawing();
	DrawPaupe(0, &matrix, &matrix);

	LHMatrix* secondMatrix = &LH3DMesh::g_current_list_matrix[Bones->BoneIndex[1]];
	secondMatrix->PostMultiply(LH3DTech::g_clipping_to_world);
	secondMatrix->PreMultiply(Bones->Matrix[1]);
	secondMatrix->PreMultiply(turn);

	look.SetYXZMatrixOnly(LightAngles[Type][2], LightAngles[Type][3], 0.0f);
	direction.Set(-look._31, -look._32, -look._33);
	normal.Set(direction.x * secondMatrix->_11 + direction.y * secondMatrix->_21 + direction.z * secondMatrix->_31,
	           direction.x * secondMatrix->_12 + direction.y * secondMatrix->_22 + direction.z * secondMatrix->_32,
	           direction.x * secondMatrix->_13 + direction.y * secondMatrix->_23 + direction.z * secondMatrix->_33);
	normal *= InverseSquareRoot(normal.GetNorm());
	intensity = (int)((normal * sun) * LH3D_EYE_LIGHT_SCALE);
	color = ScaleColor(Object->color, GetLightLevel(intensity));
	Parts[4]->matrix = *secondMatrix;
	if (Angle != 0.0f)
	{
		Parts[4]->matrix.RotateY(Angle);
	}
	Parts[4]->color = color;
	Parts[4]->AddDrawing();
	Parts[2]->color = Parts[3]->color = color;
	DrawPaupe(1, secondMatrix, secondMatrix);
}

void LH3DEye::DrawPaupe(long index, LHMatrix* upper, LHMatrix* lower)
{
	long      part = index * 2;
	LHMatrix* matrix = &Parts[part]->matrix;
	*matrix = *upper;
	matrix->RotateX(LidClosure * LH3D_EYE_PAUPE_UPPER_SCALE);
	Parts[part]->AddDrawing();
	matrix = &Parts[part + 1]->matrix;
	*matrix = *lower;
	matrix->RotateX(LidClosure * LH3D_EYE_PAUPE_LOWER_SCALE);
	Parts[part + 1]->AddDrawing();
}

// BW1W120 00884000
static void GetPupilCentre(float* u, float* v, LH3DMesh* mesh)
{
	float sumU = 0.0f;
	float sumV = 0.0f;
	long  count = 0;
	for (int i = 0; i < mesh->SubmeshCount; i++)
	{
		LH3DSubMesh* subMesh = mesh->submeshes[i];
		for (int j = 0; j < subMesh->NumPrimitives; j++)
		{
			LH3DPrimitive* primitive = subMesh->primitives_[j];
			for (int k = 0; k < primitive->NumVertices; k++)
			{
				sumU += primitive->Vertices[k].uv.x;
				sumV += primitive->Vertices[k].uv.y;
			}
			count += primitive->NumVertices;
		}
	}
	float averageU = sumU / (float)count;
	float averageV = sumV / (float)count;
	if (averageU > 0.5)
	{
		*u = 0.5f;
	}
	else
	{
		*u = 0.0f;
	}
	if (averageV > 0.5)
	{
		*v = 0.5f;
	}
	else
	{
		*v = 0.0f;
	}
}

// BW1W120 008840e0
static bool32_t IsKnownType(long type)
{
	if (type < 0)
	{
		return false;
	}
	return type < LH3D_EYE_TYPE_COUNT;
}

LH3DEye::LH3DEye(ExtraBone* bones, LH3DAnimatedObject* object, long index)
{
	Type = index;
	Bones = bones;
	field_0x14 = field_0x18 = field_0x1c = LidClosure = Angle = 0.0f;
	BlinkTime = field_0x28 = BlinkDelay = Blinking = 0;
	Offset.Set(0.0f, 0.0f, 0.0f);
	Object = object;
	BlinkLength = 200;

	char names[LH3D_EYE_TYPE_COUNT][LH3D_EYE_PART_COUNT][255] = {
		{R_PAUP_UP, R_PAUP_DOWN, L_PAUP_UP, L_PAUP_DOWN, EYE_BALL},
		{R_PAUP_UP, R_PAUP_DOWN, L_PAUP_UP, L_PAUP_DOWN, EYE_BALL},
		{R_PAUP_UP2, R_PAUP_DOWN2, L_PAUP_UP2, L_PAUP_DOWN2, EYE_BALL2},
	};

	float u = 0.0f;
	float v = 0.0f;
	GetPupilCentre(&u, &v, object->GetMesh());
	if (IsKnownType(index))
	{
		v = 0.0f;
		u = 0.0f;
	}
	for (int i = 0; i < LH3D_EYE_PART_COUNT; i++)
	{
		Parts[i] = LH3DObject::Create(LH3DObject::STATIC);
		Parts[i]->SetDisappear(false);
		LH3DTexture* texture = object->GetMesh()->submeshes[0]->primitives_[0]->Material.texture;
		LH3DMesh*    mesh = LH3DMesh::CreateFromHD(names[Type][i], true);
		Parts[i]->SetMesh(mesh, NULL, NULL);
		if (i == 4)
		{
			mesh->submeshes[0]->primitives_[0]->Material.texture = g_tex_misc0;
			Parts[i]->SetAnimatedUV(IrisFrames[Type] * LH3D_EYE_IRIS_FRAME_U, LH3D_EYE_IRIS_V);
		}
		else
		{
			mesh->submeshes[0]->primitives_[0]->Material.texture = texture;
			Parts[i]->SetAnimatedUV(u, v);
			if (IsKnownType(index))
			{
				for (int j = 0; j < mesh->SubmeshCount; j++)
				{
					LH3DSubMesh* subMesh = mesh->submeshes[j];
					for (int k = 0; k < subMesh->NumPrimitives; k++)
					{
						LH3DPrimitive* primitive = subMesh->primitives_[k];
						for (int l = 0; l < primitive->NumVertices; l++)
						{
							primitive->Vertices[l].uv.x += primitive->Vertices[l].uv.x;
							primitive->Vertices[l].uv.y += primitive->Vertices[l].uv.y;
						}
					}
				}
			}
		}
		Parts[i]->SetDynamicLighting(false);
	}
}

LH3DEye::~LH3DEye()
{
	for (int i = 0; i < LH3D_EYE_PART_COUNT; i++)
	{
		Parts[i]->GetMesh()->Release();
		Parts[i]->SetMesh(NULL, NULL, NULL);
		Parts[i]->Release();
	}
}
