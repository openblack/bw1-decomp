#include <float.h>  /* For _isnan */
#include <math.h>   /* For fabs, sin, cos, sqrt */
#include <string.h> /* For memset */

#include "GameTimeConstants.h"
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CameraModeNew3.h"

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>         /* For LH3DAtmos::AtmosMaterial */
#include <Lionhead/LH3DLib/development/LH3DCameraChecker.h> /* For LH3DCameraChecker::Create */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>        /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DLine.h>          /* For LH3DLine */
#include <Lionhead/LH3DLib/development/LH3DMath.h>          /* For atan360 */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>        /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For LH3DTech */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>       /* For LH3DTexture::Create */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>                 /* For LHSys::TheSystem */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>     /* For struct LH3DMapCoords */
#include <Lionhead/LHFile/ver3.0/LHFile.h>                  /* For class LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                    /* For operator new(size_t, const char*, uint32_t) */

#include "Arena.h"
#include "Camera.h"
#include "CameraExclusion.h"
#include "CameraModeFollow.h"
#include "ColourConstants.h" /* For White */
#include "CameraHelp.h"
#include "Creature.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "ControlMap.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Global.h"
#include "Audio.h"
#include "HelpProfile.h"
#include "HelpText.h"
#include "InterfaceStatus.h"
#include "SoundGuidance.h" /* For GGuidance::HelpSpritesCreatureFight */
#include "LightSheet.h"
#include "CameraModeScript.h"
#include "ControlHand.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "Landscape.h"
#include "Object.h"
#include "alexmfc.h" /* For struct SetupBox */

// BW1W120 00516cb0 BW1M119 010ce9e0
void DrawCreatureFightStats(float param_1, float param_2, wchar_t* name1, float param_4, float param_5, wchar_t* name2,
                            int alpha);

const float BigDistance = 3.4028235e+38f;

const float MaxPitch = PI_F * 7 / 16;
const float MouseTiltRate = 0.002f;
const float FightBlendStart = 2.0f;
const float FightBlendTime = 2.0f;

// BW1W120 00c5e158
static float StrafeSpeedX;
// BW1W120 00c5e15c
static float StrafeSpeedZ;

// BW1W120 009ce608
static float StrafeStopSpeedSq = 0.01f;
// BW1W120 009ce60c
static float FlyAccelerateTime = 1.5f;
// BW1W120 009ce610
static float FlyTime = 1.5f;
// BW1W120 009ce614
static float FlyTimeMin = 0.3f;

// BW1W120 00c5e160
CameraExclusion* CameraExclusion::ExclusionList;
// BW1W120 009ce618
float CameraExclusion::Margin = 3.0f;

// BW1W120 009ce61c
static float WheelZoomFactor = 0.5f;
// BW1W120 009ce620
static float ZoomMouseFactor = 1.9f;
// BW1W120 009ce624
static float RotateMouseFactor = 1.7f;
// BW1W120 009ce628
static float TiltMouseFactor = 1.9f;
// BW1W120 009ce62c
static float TiltMouseScale = 2.33333f;
// BW1W120 009ce630
static float MapSize = 5120.0f;
// BW1W120 009ce634
static float HalfMapSize = 2560.0f;
// BW1W120 009ce638
static float TriconFadeSpeed = 5.0f;
// BW1W120 009ce63c
static float GrabDragThreshold = 0.02f;
// BW1W120 009ce640
static float FlySoundDistance = 100.0f;
// BW1W120 009ce644
static float FlyDistanceMedium = 60.0f;
// BW1W120 009ce648
static float FlyDistanceNear = 30.0f;
// BW1W120 009ce64c
static float FlyDistanceClose = 15.0f;
// BW1W120 009ce650
static float Unused_009ce650 = 60.0f;
// BW1W120 009ce654
static float Unused_009ce654 = 0.2f;
// BW1W120 009ce658
static float MaxMoveSpeed = 1.6f;
// BW1W120 009ce65c
static float EdgeScrollMinSpeed = 60.0f;
// BW1W120 009ce660
static float EdgeScrollMaxSpeed = 2000.0f;
// BW1W120 009ce664
static float GrabZoomScale = 2.0f;
// BW1W120 009ce668
static float GrabZoomPitch = QUARTER_PI_F;
// BW1W120 009ce66c
static float GrabZoomMinDistance = 50.0f;
// BW1W120 009ce670
static float GrabZoomMaxDistance = 60.0f;
// BW1W120 009ce674
static float GrabRotateTime = 300.0f;
// BW1W120 009ce678
static float GrabZoomTime = 80.0f;
// BW1W120 009ce67c
static float Unused_009ce67c = 500.0f;
// BW1W120 009ce680
static float ZoomTiltThreshold = 0.025f;
// BW1W120 009ce684
static float EdgeScrollFactor = 0.14f;
// BW1W120 009ce688
static float EdgeScrollTurnFactor = 1.0f;
// BW1W120 009ce68c
static float TriconTopThreshold = 0.43f;
// BW1W120 009ce690
static float TriconSideThreshold = 0.45f;

float CameraModeNew3::CitadelDistance = 130.0f;
float CameraModeNew3::CitadelPitch = 0.785398f;

// BW1W120 009ce69c
static float CitadelZoomRange = 100.0f;
// BW1W120 009ce6a0
static float CitadelZoomDistance = 50.0f;
// BW1W120 009ce6a4
static float CitadelZoomPitch = 0.52359867f;

// BW1W120 009ce6a8
static float MaxDistance = 500.0f;
// BW1W120 009ce6ac
static float MaxHeight = 500.0f;
// BW1W120 009ce6b0
static bool32_t UseExclusions = true;
// BW1W120 00c5e14c
static bool32_t UseMaxHeight;
// BW1W120 00c5e148
static bool32_t UseMaxDistance;

// BW1W120 00c5b0ac
static float Global_00c5b0ac;
// BW1W120 00c5b0b0
static int Global_00c5b0b0;
// BW1W120 00c5b0b4
static int Global_00c5b0b4;
// BW1W120 00c5b0b8
static int Global_00c5b0b8;
// BW1W120 00c5b0bc
static int Global_00c5b0bc;
// BW1W120 00c5b0c0
static int Global_00c5b0c0;
// BW1W120 00c5b0c4
static float Global_00c5b0c4;
// BW1W120 00c5b0c8
static float Global_00c5b0c8;
// BW1W120 00c5b0cc
static float Global_00c5b0cc;
// BW1W120 00c5b0d0
static float Global_00c5b0d0;
// BW1W120 00c5b0d4
static float Global_00c5b0d4;
// BW1W120 00c5b0d8
static float Global_00c5b0d8[4];
// BW1W120 00c5b0e8
static int Global_00c5b0e8;
// BW1W120 00c5b0ec
static int Global_00c5b0ec;
// BW1W120 00c5b0f0
static int Global_00c5b0f0;
// BW1W120 00c5b0f4
static int Global_00c5b0f4;
// BW1W120 00c5b100
static Zoomer Global_00c5b100;
// BW1W120 00c5e164
static int Global_00c5e164;
// BW1W120 00c5e168
static bool Global_00c5e168;
// BW1W120 00c5e13c
static float Global_00c5e13c = BigDistance;

LightSheet*   CameraModeNew3::ForceField;
bool32_t      CameraModeNew3::DrawForceField;
int           CameraModeNew3::ForceFieldPointCount;
LHPoint       CameraModeNew3::ForceFieldPoints[0x400];
LH3DMaterial* CameraModeNew3::ForceFieldMaterial;
int           CameraModeNew3::NoCross;
int           CameraModeNew3::EdgeScrollEnabled;
bool32_t      CameraModeNew3::TiltKeepsFocusHeight = true;
int           CameraModeNew3::InstanceCount;
LH3DSprite*   CameraModeNew3::TriconSprite;
LH3DTexture*  CameraModeNew3::ForceFieldTexture;

// BW1W120 00454900 BW1M119 inlined
static void SmoothStrafeSpeedX(float distance, float time)
{
	StrafeSpeedX += (distance / time - StrafeSpeedX) * 0.4f;
}

// BW1W120 00454930 BW1M119 inlined
static void SmoothStrafeSpeedZ(float distance, float time)
{
	StrafeSpeedZ += (distance / time - StrafeSpeedZ) * 0.4f;
}

CameraExclusion* CameraExclusion::CreateDome(unsigned long id, LHPoint pos, float radius, float height)
{
	if (height == 0.0f)
	{
		height = radius;
	}
	return new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 207)
		CameraExclusion(id, pos, radius, height, EXCLUSIONTYPE_DOME);
}

CameraExclusion* CameraExclusion::CreateCylinder(unsigned long id, LHPoint pos, float radius)
{
	return new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 213)
		CameraExclusion(id, pos, radius, 0.0f, EXCLUSIONTYPE_CYLINDER);
}

void CameraExclusion::Remove(CameraExclusion* exclusion)
{
	CameraExclusion* current = ExclusionList;
	while (current != NULL && current != exclusion)
	{
		current = current->next;
	}
	if (current != NULL)
	{
		delete current;
	}
}

void CameraExclusion::RemoveByID(unsigned long id)
{
	CameraExclusion* next;
	for (CameraExclusion* exclusion = ExclusionList; exclusion != NULL; exclusion = next)
	{
		next = exclusion->next;
		if (exclusion->id == id)
		{
			Remove(exclusion);
		}
	}
}

void CameraExclusion::RemoveAll()
{
	CameraExclusion* next;
	for (CameraExclusion* exclusion = ExclusionList; exclusion != NULL; exclusion = next)
	{
		next = exclusion->next;
		if (exclusion->Saved)
		{
			Remove(exclusion);
		}
	}
}

void CameraExclusion::Adjust(CameraExclusion* exclusion, LHPoint pos, float radius, float height)
{
	if (exclusion == NULL)
	{
		return;
	}
	exclusion->pos = pos;
	exclusion->Radius = radius > 0.0f ? (radius < 10000.0f ? radius : 10000.0f) : 0.0f;
	exclusion->Height = height > 0.0f ? (height < 10000.0f ? height : 10000.0f) : 0.0f;
}

// BW1W120 00454b40 BW1M119 null
void SetForceFieldPointCount(int count)
{
	CameraModeNew3::ForceFieldPointCount = count;
}

// BW1W120 00454b50 BW1M119 null
void SetForceFieldPoint(int index, LHPoint& point)
{
	CameraModeNew3::ForceFieldPoints[index] = point;
}

CameraExclusion::CameraExclusion(unsigned long id, LHPoint& pos, float radius, float height, EXCLUSIONTYPE type)
{
	this->id = id;
	next = ExclusionList;
	ExclusionList = this;
	Adjust(this, pos, radius, height);
	this->type = type;
	Saved = true;
}

CameraExclusion::CameraExclusion()
{
	Saved = true;
}

CameraExclusion::~CameraExclusion()
{
	CameraExclusion* previous = NULL;
	for (CameraExclusion* exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
	{
		if (exclusion == this)
		{
			if (previous != NULL)
			{
				previous->next = exclusion->next;
			}
			else
			{
				ExclusionList = exclusion->next;
			}
			return;
		}
		previous = exclusion;
	}
}

void CameraExclusion::DebugDraw(CameraExclusion* selected, int selected_point)
{
	float   maxHeight = UseMaxHeight ? MaxHeight : 30000.0f;
	float   maxDistance = UseMaxDistance ? MaxDistance : 30000.0f;
	LHPoint centre = *LH3DTech::GetCameraPosition();
	centre.x = (int)(centre.x / 20.0f) * 20.0f;
	centre.y = 0.0f;
	centre.z = (int)(centre.z / 20.0f) * 20.0f;
	for (int i = -15; i < 15; i++)
	{
		for (int j = -15; j < 15; j++)
		{
			LHPoint corner = centre + LHPoint(j * 20.0f, 0.0f, i * 20.0f);
			corner.y = LH3DIsland::GetAltitude(corner) + maxDistance;
			if (corner.y > maxHeight)
			{
				corner.y = maxHeight;
			}
			LHPoint next = centre + LHPoint(20.0f + j * 20.0f, 0.0f, i * 20.0f);
			next.y = LH3DIsland::GetAltitude(next) + maxDistance;
			if (next.y > maxHeight)
			{
				next.y = maxHeight;
			}
			LH3DColor colour1(0xff, 0x40, 0x40);
			LH3DLine::AddLine(corner, next, &colour1, NULL);
			next = centre + LHPoint(j * 20.0f, 0.0f, 20.0f + i * 20.0f);
			next.y = LH3DIsland::GetAltitude(next) + maxDistance;
			if (next.y > maxHeight)
			{
				next.y = maxHeight;
			}
			LH3DColor colour2(0xff, 0x40, 0x40);
			LH3DLine::AddLine(corner, next, &colour2, NULL);
		}
		LH3DLine::DrawAllPreStored();
	}

	for (int point = 0; point < CameraModeNew3::ForceFieldPointCount; point++)
	{
		LHPoint from = CameraModeNew3::ForceFieldPoints[point];
		LHPoint to = CameraModeNew3::ForceFieldPoints[(point + 1) % CameraModeNew3::ForceFieldPointCount];
		from.y = LH3DIsland::GetAltitude(LH3DMapCoords(from.x, from.z));
		to.y = LH3DIsland::GetAltitude(LH3DMapCoords(to.x, to.z));
		LHPoint fromTop = from + LHPoint(0.0f, 25.0f, 0.0f);
		LHPoint toTop = to + LHPoint(0.0f, 25.0f, 0.0f);
		if (point == selected_point)
		{
			LH3DColor colour(0xff, 0x00, 0x00);
			LH3DLine::AddLine(from, fromTop, &colour, NULL);
		}
		else
		{
			LH3DColor colour(0x80, 0xc0, 0xff);
			LH3DLine::AddLine(from, fromTop, &colour, NULL);
		}
		if (point == selected_point)
		{
			LH3DColor colour1(0xff, 0x00, 0x00);
			DrawSphere(from, 0.5f, &colour1);
			LH3DColor colour2(0xff, 0x00, 0x00);
			DrawSphere(fromTop, 0.5f, &colour2);
		}
		for (int k = 0; k < 5; k++)
		{
			from.y += 5.0f;
			to.y += 5.0f;
			LH3DColor colour(0x80, 0xc0, 0xff);
			if (point == selected_point)
			{
				LH3DColor selectedColour(0xff, 0x00, 0x00);
				LH3DLine::AddLine(from, to, &selectedColour, &colour);
			}
			else
			{
				LH3DColor otherColour(0x80, 0xc0, 0xff);
				LH3DLine::AddLine(from, to, &otherColour, &colour);
			}
		}
		LH3DLine::DrawAllPreStored();
	}

	for (CameraExclusion* exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
	{
		LH3DColor colour(0xff, 0x80, 0x40);
		bool      blink = (GetTickCount() / 200) & 1;
		LH3DColor highlight(blink ? 0xff : 0x40, 0x80, blink ? 0x40 : 0xff);
		if (exclusion->type == EXCLUSIONTYPE_CYLINDER)
		{
			LHPoint ring[16];
			for (int k = 0; k < 16; k++)
			{
				float angle = k * EIGHTH_PI_F;
				ring[k] = exclusion->pos + LHPoint(sin(angle), 0.0f, cos(angle)) * exclusion->Radius;
				ring[k].y = LH3DIsland::GetAltitude(ring[k]);
				LH3DLine::AddLine(ring[k], ring[k] + LHPoint(0.0f, 1000.0f, 0.0f),
				                  exclusion == selected ? &highlight : &colour, NULL);
			}
			for (int k2 = 0; k2 < 16; k2++)
			{
				LH3DLine::AddLine(ring[k2], ring[(k2 + 1) & 0xf], exclusion == selected ? &highlight : &colour, NULL);
			}
		}
		if (exclusion->type == EXCLUSIONTYPE_DOME)
		{
			DrawSphere(exclusion->pos, exclusion->Radius, exclusion->Height,
			           exclusion == selected ? &highlight : &colour);
		}
	}
}

void CameraExclusion::ResetExclusionFile(unsigned long id)
{
	RemoveByID(id);
	UseExclusions = true;
	CameraModeNew3::DrawForceField = false;
	UseMaxHeight = false;
	UseMaxDistance = false;
	MaxHeight = 500.0f;
	MaxDistance = 500.0f;
	CameraModeNew3::ForceFieldPointCount = 0;
}

void CameraExclusion::LoadExclusionFile(LHFile* file, unsigned long id)
{
	ResetExclusionFile(id);
	if (file == NULL)
	{
		return;
	}
	file->OpenSegment("cameraexc");
	int size;
	file->GetSegmentData(&size, sizeof(size), -1); // version
	file->GetSegmentData(&UseExclusions, sizeof(UseExclusions), -1);
	file->GetSegmentData(&CameraModeNew3::DrawForceField, sizeof(CameraModeNew3::DrawForceField), -1);
	file->GetSegmentData(&UseMaxHeight, sizeof(UseMaxHeight), -1);
	file->GetSegmentData(&UseMaxDistance, sizeof(UseMaxDistance), -1);
	file->GetSegmentData(&MaxHeight, sizeof(MaxHeight), -1);
	file->GetSegmentData(&MaxDistance, sizeof(MaxDistance), -1);
	file->GetSegmentData(&CameraModeNew3::ForceFieldPointCount, sizeof(CameraModeNew3::ForceFieldPointCount), -1);
	for (int i = 0; i < CameraModeNew3::ForceFieldPointCount; i++)
	{
		file->GetSegmentData(&CameraModeNew3::ForceFieldPoints[i], sizeof(LHPoint), -1);
	}
	{
		int count = 0;
		file->GetSegmentData(&count, sizeof(count), -1);
		file->GetSegmentData(&size, sizeof(size), -1);
		if (size != sizeof(CameraExclusion) && count != 0)
		{
			char* buffer = new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 435) char[size];
			for (int j = 0; j < count; j++)
			{
				file->GetSegmentData(buffer, size, -1);
			}
			delete buffer;
			file->CloseSegment();
			return;
		}
		for (int j = 0; j < count; j++)
		{
			CameraExclusion* exclusion = CreateDome(id, LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 0.0f);
			CameraExclusion* next = exclusion->next;
			file->GetSegmentData(exclusion, sizeof(CameraExclusion), -1);
			exclusion->next = next;
			exclusion->id = id;
		}
	}
	file->CloseSegment();
}

void CameraExclusion::SaveExclusionFile(LHFile* file, unsigned long id)
{
	if (file != NULL)
	{
		file->OpenSegment("cameraexc");
		int version = 1;
		file->WriteSegmentData(&version, sizeof(version));
		file->WriteSegmentData(&UseExclusions, sizeof(UseExclusions));
		file->WriteSegmentData(&CameraModeNew3::DrawForceField, sizeof(CameraModeNew3::DrawForceField));
		file->WriteSegmentData(&UseMaxHeight, sizeof(UseMaxHeight));
		file->WriteSegmentData(&UseMaxDistance, sizeof(UseMaxDistance));
		file->WriteSegmentData(&MaxHeight, sizeof(MaxHeight));
		file->WriteSegmentData(&MaxDistance, sizeof(MaxDistance));
		file->WriteSegmentData(&CameraModeNew3::ForceFieldPointCount, sizeof(CameraModeNew3::ForceFieldPointCount));
		for (int i = 0; i < CameraModeNew3::ForceFieldPointCount; i++)
		{
			file->WriteSegmentData(&CameraModeNew3::ForceFieldPoints[i], sizeof(LHPoint));
		}
		{
			int              count = 0;
			CameraExclusion* exclusion;
			for (exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
			{
				if (exclusion->id == id && exclusion->Saved)
				{
					count++;
				}
			}
			file->WriteSegmentData(&count, sizeof(count));
			version = sizeof(CameraExclusion);
			file->WriteSegmentData(&version, sizeof(version));
			for (exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
			{
				if (exclusion->id == id && exclusion->Saved)
				{
					file->WriteSegmentData(exclusion, sizeof(CameraExclusion));
				}
			}
		}
		file->CloseSegment();
	}
}

void CameraExclusion::LoadExclusionFile(GameOSFile& file)
{
	ResetExclusionFile(0);
	RemoveAll();
	int size;
	file.ReadIt(size); // version
	file.ReadIt(UseExclusions);
	file.ReadIt(CameraModeNew3::DrawForceField);
	file.ReadIt(UseMaxHeight);
	file.ReadIt(UseMaxDistance);
	file.ReadIt(MaxHeight);
	file.ReadIt(MaxDistance);
	file.ReadIt(CameraModeNew3::ForceFieldPointCount);
	for (int i = 0; i < CameraModeNew3::ForceFieldPointCount; i++)
	{
		file.ReadIt(CameraModeNew3::ForceFieldPoints[i]);
	}
	{
		int count = 0;
		file.ReadIt(count);
		file.ReadIt(size);
		if (size != sizeof(CameraExclusion))
		{
			char* buffer = new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 520) char[size];
			for (int j = 0; j < count; j++)
			{
				file.ReadArray(buffer);
			}
			delete buffer;
			return;
		}
		for (int j = 0; j < count; j++)
		{
			CameraExclusion* exclusion = CreateDome(0, LHPoint(0.0f, 0.0f, 0.0f), 0.0f, 0.0f);
			CameraExclusion* next = exclusion->next;
			file.ReadArray((char*)exclusion);
			exclusion->next = next;
		}
	}
}

void CameraExclusion::SaveExclusionFile(GameOSFile& file)
{
	int version = 1;
	file.WriteIt(version);
	file.WriteIt(UseExclusions);
	file.WriteIt(CameraModeNew3::DrawForceField);
	file.WriteIt(UseMaxHeight);
	file.WriteIt(UseMaxDistance);
	file.WriteIt(MaxHeight);
	file.WriteIt(MaxDistance);
	file.WriteIt(CameraModeNew3::ForceFieldPointCount);
	for (int i = 0; i < CameraModeNew3::ForceFieldPointCount; i++)
	{
		file.WriteIt(CameraModeNew3::ForceFieldPoints[i]);
	}
	{
		int              count = 0;
		CameraExclusion* exclusion;
		for (exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
		{
			if (exclusion->Saved)
			{
				count++;
			}
		}
		file.WriteIt(count);
		version = sizeof(CameraExclusion);
		file.WriteIt(version);
		for (exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
		{
			if (exclusion->Saved)
			{
				file.WriteArray((char*)exclusion, sizeof(CameraExclusion));
			}
		}
	}
}

bool CameraExclusion::InsideExclusion(LHPoint point)
{
	for (CameraExclusion* exclusion = ExclusionList; exclusion != NULL; exclusion = exclusion->next)
	{
		float dx = exclusion->pos.x - point.x;
		float dz = exclusion->pos.z - point.z;
		if (dz * dz + dx * dx < (Margin + exclusion->Radius) * (Margin + exclusion->Radius))
		{
			if (exclusion->type == EXCLUSIONTYPE_CYLINDER)
			{
				return true;
			}
			if (exclusion->type == EXCLUSIONTYPE_DOME)
			{
				LHPoint offset = point - exclusion->pos;
				float   radius = Margin + exclusion->Radius;
				LHPoint scaled(offset.x / radius, offset.y / (Margin + exclusion->Height), offset.z / radius);
				if (scaled.GetNorm() < 1.0f)
				{
					return true;
				}
			}
		}
	}
	return false;
}

bool CameraExclusion::InsideInclusion(LHPoint from, LHPoint direction, LHPoint* closest, LHPoint* normal)
{
	if (!CameraModeNew3::DrawForceField)
	{
		return true;
	}
	if (closest != NULL)
	{
		*closest = from;
	}
	if (CameraModeNew3::ForceFieldPointCount < 3)
	{
		return true;
	}
	LHPoint  forwardHit = from;
	LHPoint  backwardHit = from;
	int      crossings = 0;
	float    forwardDistance = 1.0e20f;
	bool     forwardFound = false;
	float    backwardDistance = 1.0e20f;
	bool     backwardFound = false;
	float    forwardNormalX = 0.0f;
	float    forwardNormalZ = 1.0f;
	float    backwardNormalX = 0.0f;
	float    backwardNormalZ = 1.0f;
	LHPoint* previous = &CameraModeNew3::ForceFieldPoints[CameraModeNew3::ForceFieldPointCount - 1];
	for (int i = 0; i < CameraModeNew3::ForceFieldPointCount; i++)
	{
		LHPoint* point = &CameraModeNew3::ForceFieldPoints[i];
		LHPoint  edge;
		edge.x = previous->x - point->x;
		edge.z = previous->z - point->z;
		float distanceSq = from.GetDistance2DSq(*point);
		float edgeLengthSq = edge.x * edge.x + edge.z * edge.z;
		if (distanceSq < 0.0001f * 0.0001f)
		{
			return true;
		}
		if (edgeLengthSq > 0.0001f * 0.0001f)
		{
			double normalX = edge.z;
			double normalZ = -edge.x;
			double denominator = direction.z * normalZ + direction.x * normalX;
			if (fabs(denominator) > 0.0001f)
			{
				double t =
					(point->x * normalX + point->z * normalZ - from.x * normalX - from.z * normalZ) / denominator;
				LHPoint hit;
				hit = from + direction * t;
				float s = ((hit.x - point->x) * edge.x + (hit.z - point->z) * edge.z) / edgeLengthSq;
				if (s >= 0.0 && s < 1.0)
				{
					if (fabs(t) < 0.0001f)
					{
						return true;
					}
					if (t > 0.0)
					{
						crossings++;
					}
					if (t > 0.0 && t < forwardDistance)
					{
						forwardDistance = t;
						forwardHit = hit;
						forwardNormalX = normalX;
						forwardNormalZ = normalZ;
						forwardFound = true;
					}
					else if (t < 0.0 && -t < backwardDistance)
					{
						backwardDistance = -t;
						backwardHit = hit;
						backwardNormalX = normalX;
						backwardNormalZ = normalZ;
						backwardFound = true;
					}
				}
			}
		}
		previous = point;
	}
	bool found = false;
	if (forwardFound)
	{
		if (closest != NULL)
		{
			*closest = forwardHit;
		}
		if (normal != NULL)
		{
			*normal = LHPoint(forwardNormalX, 0.0f, forwardNormalZ);
		}
		found = true;
	}
	else if (backwardFound)
	{
		if (closest != NULL)
		{
			*closest = backwardHit;
		}
		if (normal != NULL)
		{
			*normal = LHPoint(backwardNormalX, 0.0f, backwardNormalZ);
		}
		found = true;
	}
	if (closest != NULL)
	{
		float closestDistance = closest->GetDistance2DSq(from);
		for (int j = 0; j < CameraModeNew3::ForceFieldPointCount; j++)
		{
			float distance = CameraModeNew3::ForceFieldPoints[j].GetDistance2DSq(from);
			if (distance < closestDistance || !found)
			{
				closestDistance = distance;
				*closest = CameraModeNew3::ForceFieldPoints[j];
				found = true;
			}
		}
	}
	return (crossings & 1) ? true : false;
}

int CameraModeNew3::GetCameraFeatures()
{
	if (HasFight)
	{
		return CameraHelp::EnabledFeatures & ~CAMERA_FEATURE_DOUBLE_CLICK;
	}
	return CameraHelp::EnabledFeatures;
}

void CameraModeNew3::DrawFightText()
{
	if (!HasFight || arena == NULL)
	{
		return;
	}
	Creature* creature1 = arena->Creatures[0];
	Creature* creature2 = arena->Creatures[1];
	if (creature1 == NULL || creature2 == NULL)
	{
		return;
	}
	LH3DCreature* creature3d1 = creature1->physical->Creature3d;
	LH3DCreature* creature3d2 = creature2->physical->Creature3d;
	if (creature3d1 == NULL || creature3d2 == NULL)
	{
		return;
	}
	DrawCreatureFightStats(creature3d1->field_0x4aa8, creature3d1->field_0x4aac, creature1->name,
	                       creature3d2->field_0x4aa8, creature3d2->field_0x4aac, creature2->name, 0xff);
}

void __stdcall CameraModeNew3::tricondraw(void* param)
{
	GCamera* camera = GGame::g_game->GetCamera();
	if (camera == NULL)
	{
		return;
	}
	if (GGame::g_game->MyPlayer() == NULL)
	{
		return;
	}
	if (GGame::g_game->MyInterface() == NULL)
	{
		return;
	}
	if (GGame::g_game->field_0x250538 == 0)
	{
		return;
	}
	CameraModeNew3* new3 =
		dynamic_cast<CameraModeNew3*>(camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex]);
	CameraModeScript* script =
		dynamic_cast<CameraModeScript*>(camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex]);
	if (!GGame::g_game->MyInterface()->IsPlayBack(0))
	{
		script = NULL;
	}
	bool setupBoxActive =
		SetupBox::GetCurrentActiveBox() != NULL && SetupBox::GetCurrentActiveBox()->BackgroundStyle != 0;
	if (new3 == NULL && script == NULL)
	{
		return;
	}
	if (GGame::g_game->MyInterface()->GetRenderHand()->field_0x483c != 0)
	{
		return;
	}
	if (!GGame::g_game->MyInterface()->IsActive())
	{
		return;
	}
	if (GGame::g_game->field_0x205a28 != 0)
	{
		return;
	}
	if (setupBoxActive)
	{
		return;
	}

	float       dt = GGame::g_game->GetCameraTimeInc() * 0.001f;
	GInterface* playerInterface = GGame::g_game->MyInterface();
	CHand*      hand = playerInterface != NULL ? playerInterface->hand.Get() : NULL;
	HelpSystem* helpSystem = GGame::g_game->help_system;
	if ((helpSystem != NULL && helpSystem->field_0x45fc == 0) ||
	    (hand != NULL && hand->HandStates.raw[hand->CurrentState] != NULL &&
	     !hand->HandStates.raw[hand->CurrentState]->AllowCameraTricons()))
	{
		Global_00c5b0f4 &= ~0x707;
	}

	int i;
	int mask;
	for (i = 0, mask = 1; i < 4; i++, mask <<= 1)
	{
		float speed = TriconFadeSpeed;
		if (Global_00c5b0f4 & mask)
		{
			float target;
			if (Global_00c5b0f4 & (0x100 << i))
			{
				target = 0.6f;
			}
			else
			{
				bool dimmed = false;
				if ((Global_00c5b0f0 != 0 || Global_00c5b0ec != 0 || Global_00c5b0e8 != 0) && new3 != NULL)
				{
					dimmed = true;
				}
				target = dimmed ? 0.9f : 1.0f;
			}
			if (i == 3)
			{
				speed = 0.3f;
				target = 0.2f;
			}
			if (i == 3 && Global_00c5e164 != 0)
			{
				if (Global_00c5e164 == 1)
				{
					target = 0.6f;
				}
				else
				{
					target = 1.0f;
					Global_00c5b0d8[3] = target;
				}
				Global_00c5e164 = 0;
			}
			if (i == 3 &&
			    ((GGame::g_game->MyInterface() != NULL && GGame::g_game->MyInterface()->IsPlayBack(0)) || NoCross > 0))
			{
				target = 0.0f;
				Global_00c5b0d8[3] = target;
			}
			if (Global_00c5b0d8[i] > target)
			{
				Global_00c5b0d8[i] -= speed * dt;
				if (Global_00c5b0d8[i] < target)
				{
					Global_00c5b0d8[i] = target;
				}
			}
			else
			{
				Global_00c5b0d8[i] += TriconFadeSpeed * dt;
				if (Global_00c5b0d8[i] > target)
				{
					Global_00c5b0d8[i] = target;
				}
			}
		}
		else
		{
			Global_00c5b0d8[i] -= speed * dt;
			if (Global_00c5b0d8[i] < 0.0f)
			{
				Global_00c5b0d8[i] = 0.0f;
			}
		}
	}
	TriconDraw();
}

CameraModeNew3::~CameraModeNew3() {}

void CameraModeNew3::Initialise()
{
	if (GGame::g_game->GetCamera() != NULL)
	{
		FallbackOrigin = GGame::g_game->GetCamera()->CameraOriginZoomer.GetCurrentValue();
		FallbackHeading = GGame::g_game->GetCamera()->CameraHeadingZoomer.GetCurrentValue();
	}
	else
	{
		FallbackHeading = LHPoint(0.0f, 0.0f, 0.0f);
		FallbackOrigin = FallbackHeading;
	}
	origin = FallbackOrigin;
	heading = FallbackHeading;
	HasFight = false;
	arena = NULL;
	LHCoord mousePos = LHSys::TheSystem.mouse.DefaultPos;
	MousePosCurrent = mousePos;
	MousePos1 = mousePos;
	MousePosPrevious = mousePos;
	field_0x68 = LHPoint(0.0f, 0.0f, 0.0f);
	Length0x1c0 = 0.0f;
	if (InstanceCount++ == 0)
	{
		TriconSprite = LH3DSprite::Create(1, 1);
		TriconSprite->SetMaterial(LH3DAtmos::AtmosMaterial);
		TriconSprite->SetSize(2.0f);
		TriconSprite->colour = LH3DColor(0xffffffff);
		TriconSprite->Frame = 12;
		TriconSprite->field_0x30 = 4;
		LH3DRender::RegisterFinishFrameCallback(1000, true, tricondraw, NULL);
		ForceField = new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 956) LightSheet();
		ForceField->Init(256);
		ForceField->field_0x2c = 0x808080;
		ForceField->ResetPulses();
		ForceField->SetScaleFac(1.0f);
		ForceFieldTexture = LH3DTexture::Create("data\\textures\\forcefield.raw", 0x41, 0, NULL);
		ForceFieldMaterial = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_0xd, ForceFieldTexture);
		ForceFieldMaterial->cull_mode |= 4;
		ForceFieldMaterial->cull_mode |= 1;
	}
}

void CameraModeNew3::DrawHandTricon()
{
	if (TriconSprite == NULL)
	{
		return;
	}
	CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
	TriconSprite->pos = hand->DynamicShadow->matrix.GetPos();
	int   x;
	int   y;
	float depth;
	if (!LH3DTech::ProjectPoint(&TriconSprite->pos, &x, &y, &depth))
	{
		return;
	}
	depth = fabs(depth);
	if (depth < 1.0f)
	{
		depth = 1.0f;
	}
	int   handX = hand->ScreenPos.x;
	int   handY = hand->ScreenPos.y;
	int   dx = handX - x;
	int   dy = handY - y;
	float size = (sqrt(dy * dy + dx * dx) * 10.0 / LHSys::TheSystem.screen.width + 1.0) * sqrt(depth);
	x = (handX + x) / 2;
	y = (handY + y) / 2;

	static Zoomer Fade;
	// BW1W120 009ce6b8
	static bool FirstCall = true;
	if (FirstCall)
	{
		FirstCall = false;
		Fade.SetPosition(0.0f);
	}
	GInterface* playerInterface = GGame::g_game->MyInterface();
	if ((CameraHelp::EnabledFeatures & CAMERA_FEATURE_HELP) && playerInterface != NULL &&
	    !playerInterface->IsPlayBack(0))
	{
		Fade.SetDestination(GGame::g_game->MyInterface()->field_0x48 ? 1.0f : 0.0f, 1.0f);
	}
	else
	{
		Fade.SetDestination(0.0f, 1.0f);
	}
	Fade.Update(GGame::g_game->GetCameraTimeInc() * 0.001f);

	LHCoord screen;
	screen.x = x;
	screen.y = y;
	LH3DTech::Get3DPointFromScreen(screen, TriconSprite->pos, depth);
	float     pulse = (sin(((GetTickCount() >> 3) & 0x1ff) * (PI_F / 256) + (PI_F * 4 / 3)) + 3.0) * 0.25;
	LH3DColor colour;
	colour = GGame::g_game->MyPlayer()->GetPlayer3DColor();
	colour.r = (uint8_t)(colour.r * pulse);
	colour.g = (uint8_t)(colour.g * pulse);
	colour.b = (uint8_t)(colour.b * pulse);
	colour.a = (uint8_t)(Fade.GetCurrentValue() * 127.0f);
	TriconSprite->colour = colour;
	int time = GetTickCount();
	TriconSprite->angle = 0.0f;
	TriconSprite->field_0x30 = 8;
	// TriconSprite->SetMaterial(BlobMaterial);
	TriconSprite->SetSize(size * 0.75f);
	TriconSprite->Frame = (time / 50) & 0xf;
	TriconSprite->Draw();
	TriconSprite->SetSize(size * 0.5f);
	TriconSprite->Frame = 15 - ((time / 100) & 0xf);
	TriconSprite->Draw();
	TriconSprite->field_0x30 = 4;
}

// BW1W120 009ce6bc
int CameraModeNew3::AutoEndFight = 1;
// BW1W120 009ce6c0
static float FightBlendScale = 0.8f;
// BW1W120 009ce6c4
static float FightStartDistance = 5.5f;
// BW1W120 009ce6c8
static float FightMaxDistance = 40.0f;

void CameraModeNew3::TriconDraw()
{
	if (TriconSprite == NULL)
	{
		return;
	}
	// Mac reads the position through Morphable::Get3DObject.
	TriconSprite->pos = GGame::g_game->MyInterface()->GetRenderHand()->DynamicShadow->matrix.GetPos();
	int   x;
	int   y;
	float depth;
	if (!LH3DTech::ProjectPoint(&TriconSprite->pos, &x, &y, &depth))
	{
		return;
	}
	depth = fabs(depth);
	if (depth < 1.0f)
	{
		depth = 1.0f;
	}
	CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
	int    handX = hand->field_0x486c;
	int    handY = hand->field_0x4870;
	if (Global_00c5b100.GetCurrentValue() <= 0.01f)
	{
		x = (x * 3 + handX) / 4;
		y = (y * 3 + handY) / 4;
	}
	{
		float size = depth / 22.0f;
		int   visibleHeight = LHSys::TheSystem.screen.height;
		int   screenHeight = visibleHeight;
		if (GGame::g_game->help_system->field_0x45e8)
		{
			visibleHeight -= (int)(LH3DTech::g_info_transform.resolution.y -
			                       LH3DTech::g_info_transform.resolution.x * (9.0f / 16.0f));
		}
		x = x > 16 ? (x < LHSys::TheSystem.screen.width - 16 ? x : LHSys::TheSystem.screen.width - 16) : 16;
		int top = (screenHeight - visibleHeight) / 2;
		y = y > top + 16 ? (y < top + visibleHeight - 16 ? y : top + visibleHeight - 16) : top + 16;
		LHCoord screen;
		screen.x = x;
		screen.y = y;
		LH3DTech::Get3DPointFromScreen(screen, TriconSprite->pos, depth);

		if (TriconSprite != NULL)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
			TriconSprite->SetMaterial(LH3DAtmos::AtmosMaterial);
			for (int i = 0; i < 4; i++)
			{
				if (Global_00c5b0d8[i] > 0.0f)
				{
					int alpha = (int)(Global_00c5b0d8[i] * 255.0f);
					if (alpha != 0)
					{
						TriconSprite->colour = LH3DColor((alpha << 24) + 0xffffff);
						TriconSprite->angle = i == 1 ? Global_00c5b0ac : 0.0f;
						TriconSprite->Frame = i + 12;
						TriconSprite->SetSize(size);
						TriconSprite->Draw();
					}
				}
			}
		}
	}

	GInterface* playerInterface = GGame::g_game->MyInterface();
	if (playerInterface->IsPlayBack(0))
	{
		int        select = playerInterface->flags.IsSelect();
		int        apply = playerInterface->flags.IsApply();
		int        both = select & apply;
		static int TextOnLeft = 0;
		int        width = LHSys::TheSystem.screen.width;
		if (x > width * 2 / 3)
		{
			TextOnLeft = 1;
		}
		if (x < width / 3)
		{
			TextOnLeft = 0;
		}
		int         key = 0;
		int         mouseType = GGame::g_game->control_map->IsMouseButtonAssignedToAction(BINDABLE_ACTION_MOVE)
		                            ? HelpProfile::GetMouseType()
		                            : 3;
		CH_ANIMTYPE animType = CH_ANIMTYPE_0x0;
		if (GGame::g_game->help_system != NULL && (select || apply || both))
		{
			BINDABLE_ACTIONS action = both     ? BINDABLE_ACTION_ZOOM_ON
			                          : select ? BINDABLE_ACTION_MOVE
			                          : apply  ? BINDABLE_ACTION_ACTION
			                                   : (BINDABLE_ACTIONS)-1;
			if (!HelpSystem::ConvertActionToKMIcon(action, &animType, &key, &mouseType))
			{
				key = 0;
				mouseType = HelpProfile::GetMouseType();
				animType = CH_ANIMTYPE_0x0;
			}
		}
		if (TextOnLeft)
		{
			LH3DColor white;
			white.b = 255;
			white.g = 255;
			white.r = 255;
			white.a = 255;
			LH3DColor red;
			red.b = 0;
			red.g = 0;
			red.r = 255;
			red.a = 255;
			CameraHelp::DrawKeyOrMouse(animType, key, mouseType, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1407),
			                           x - 32, y, 32, KEYALIGN_0x11, &red, &white, 255);
		}
		else
		{
			LH3DColor white;
			white.b = 255;
			white.g = 255;
			white.r = 255;
			white.a = 255;
			LH3DColor red;
			red.b = 0;
			red.g = 0;
			red.r = 255;
			red.a = 255;
			CameraHelp::DrawKeyOrMouse(animType, key, mouseType, HelpTextDataBase::HelpTextDatabase.GetHelpText(0x1407),
			                           x + 32, y, 32, KEYALIGN_0x0, &red, &white, 255);
		}
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

CameraModeNew3::CameraModeNew3(GCamera* camera) : CameraMode(camera)
{
	Initialise();
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Reinitialise(false);
	this->camera->SwitchToViewMode(this);
}

CameraModeNew3::CameraModeNew3(GCamera* camera, const LHPoint* origin_and_focus) : CameraMode(camera)
{
	Initialise();
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Reinitialise(false);
	this->camera->CameraOriginZoomer.SetDestinationWithTime(origin_and_focus[0], FlyTime);
	this->camera->CameraHeadingZoomer.SetDestinationWithTime(origin_and_focus[1], FlyTime);
	this->camera->SwitchToViewMode(this);
}

CameraModeNew3::CameraModeNew3(GCamera* camera, const LHPoint& focus, float distance) : CameraMode(camera)
{
	Initialise();
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	float   heading = this->camera->CalculateRotationAngleY();
	LHPoint origin;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, focus, distance, heading, QUARTER_PI_F);
	Reinitialise(false);
	this->camera->CameraOriginZoomer.SetDestinationWithTime(origin, FlyTime);
	this->camera->CameraHeadingZoomer.SetDestinationWithTime(focus, FlyTime);
	this->camera->SwitchToViewMode(this);
}

void CameraModeNew3::SetupVia(LHPoint& pos, LHPoint& focus, LHPoint& via, float time)
{
	field_0x104 = (pos + via) * 0.5f;
	field_0x104.y += via.GetDistance2D(pos) * time;
	float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(field_0x104.x, field_0x104.z)) + 10.0f;
	if (altitude > field_0x104.y)
	{
		field_0x104.y = altitude;
	}
	field_0x101 = field_0x100 = 1;
	field_0x110 = pos;
	field_0x11c = focus;
}

void CameraModeNew3::ZoomToCitadel(float x, float z, float distance, float pitch, int param_5)
{
	int     now = GetTickCount();
	LHPoint focus = camera->CameraHeadingZoomer.GetCurrentValue();
	LHPoint origin = camera->CameraOriginZoomer.GetCurrentValue();
	if (now - field_0x2f8 > 500 && param_5)
	{
		if (!HasFight)
		{
			distance = CitadelZoomDistance;
			pitch = CitadelZoomPitch;
			UpdateClickParams(origin, focus, true);
			LHPoint direction = focus - origin;
			direction.Normalise();
			direction *= Length0x1c0;
			LHPoint point = origin + direction;
			float   heading = GCamera::GetHeadingFromPoints(origin, focus);
			LHPoint target = point;
			target.y = LH3DIsland::GetAltitude(LH3DMapCoords(target.x, target.z)) + CameraExclusion::Margin;
			LHPoint position;
			GCamera::SetPointFromPointDistanceHeadingAndPitch(&position, target, distance, heading, pitch);
			FlyToPosFoc(position, target, 0.0f);
		}
		field_0x2f8 = now;
		return;
	}
	if (field_0x8 == 1)
	{
		float dx = x - focus.x;
		float dz = z - focus.z;
		if (dx * dx + dz * dz > CitadelZoomRange * CitadelZoomRange)
		{
			field_0x8 = 0;
		}
	}
	if (field_0x8 == 1)
	{
		FlyToPosFoc(field_0x24, field_0x30, 0.4f);
		field_0x8 = 0;
	}
	else
	{
		field_0x24 = origin;
		field_0x30 = focus;
		float   heading = GCamera::GetHeadingFromPoints(origin, focus);
		LHPoint target(x, 0.0f, z);
		target.y = LH3DIsland::GetAltitude(LH3DMapCoords(x, z)) + CameraExclusion::Margin;
		LHPoint position;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&position, target, distance, heading, pitch);
		FlyToPosFoc(position, target, 0.4f);
		field_0x8 = 1;
	}
	field_0x2f8 = 0;
	CameraHelp::CameraHelpCallback(CameraHelpReason_ZoomToCitadel, LHPoint(0.0f, 0.0f, 0.0f), 0);
}

void CameraModeNew3::SetHeadingAndPitch(float heading, float pitch) {}

bool CameraModeNew3::IsRotateKeyModifierActive()
{
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
	{
		return false;
	}
	if (HasFight && arena != NULL)
	{
		return true;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_ON))
	{
		return true;
	}
	return false;
}

void CameraModeNew3::SetFocus(const LHPoint& focus)
{
	camera->CameraHeadingZoomer.SetDestinationWithTime(focus, FlyTime);
	ElapsedTime = 0.0f;
}

void CameraModeNew3::ProcessKeyMovement(uint16_t key)
{
	float dt = GGame::g_game->GetCameraTimeInc() * 0.001f;
	Global_00c5b0d4 = 0.0f;
	Global_00c5b0d0 = 0.0f;
	Global_00c5b0cc = 0.0f;
	Global_00c5b0c8 = 0.0f;
	Global_00c5b0c4 = 0.0f;
	KeyTriconFlags = 0;
	if (Global_00c5b0f0 == 0)
	{
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			KeyTriconFlags |= 9;
		}
		else if (IsRotateKeyModifierActive())
		{
			KeyTriconFlags |= 3;
		}
	}
	if (GGlobal::Global.field_0x2d2ac == 0)
	{
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_RIGHT))
		{
			Global_00c5b0c8 -= dt * -400.0f;
		}
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_LEFT))
		{
			Global_00c5b0c8 -= dt * 400.0f;
		}
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_TILT_DOWN))
		{
			Global_00c5b0c4 -= dt * 400.0f;
		}
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_TILT_UP))
		{
			Global_00c5b0c4 += dt * 400.0f;
		}
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		if (IsRotateKeyModifierActive())
		{
			Global_00c5b0c4 -= dt * 400.0f;
		}
		else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			Global_00c5b0cc -= dt * 400.0f;
		}
		else
		{
			Global_00c5b0d0 -= dt * 400.0f;
		}
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		if (IsRotateKeyModifierActive())
		{
			Global_00c5b0c4 += dt * 400.0f;
		}
		else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			Global_00c5b0cc += dt * 400.0f;
		}
		else
		{
			Global_00c5b0d0 += dt * 400.0f;
		}
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		if (IsRotateKeyModifierActive())
		{
			Global_00c5b0c8 -= dt * -400.0f;
		}
		else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			Global_00c5b0c8 -= dt * -400.0f;
		}
		else
		{
			Global_00c5b0d4 -= dt * 400.0f;
		}
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		if (IsRotateKeyModifierActive())
		{
			Global_00c5b0c8 -= dt * 400.0f;
		}
		else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			Global_00c5b0c8 -= dt * 400.0f;
		}
		else
		{
			Global_00c5b0d4 += dt * 400.0f;
		}
	}

	float originY = camera->CameraOriginZoomer.y.GetCurrentValue();
	float focusY = camera->CameraHeadingZoomer.y.GetCurrentValue();
	float speed;
	if (originY < focusY)
	{
		float height = (focusY - originY) * 3.0f;
		speed = height > EdgeScrollMinSpeed ? (height < EdgeScrollMinSpeed * 4.0f ? height : EdgeScrollMinSpeed * 4.0f)
		                                    : EdgeScrollMinSpeed;
	}
	else
	{
		float height = (originY - focusY) * 3.0f;
		speed = height > EdgeScrollMinSpeed ? (height < EdgeScrollMaxSpeed ? height : EdgeScrollMaxSpeed)
		                                    : EdgeScrollMinSpeed;
	}
	speed = speed * 0.5;

	if (!IsEdgeScrollEnabled())
	{
		return;
	}
	if (Global_00c5b0f0 != 0 && (HandStatus < CAMERA_MODE_HAND_STATUS_0x7 || HandStatus > 10))
	{
		return;
	}
	if (LHSys::TheSystem.screen.windowed)
	{
		return;
	}
	int height = LHSys::TheSystem.screen.height - 1;
	int width = LHSys::TheSystem.screen.width - 1;
	int dy = MouseDelta.y;
	int dx = MouseDelta.x;
	int edge = width / 8;
	if ((float)sqrt((float)(dx * dx + dy * dy)) == 0.0f)
	{
		return;
	}
	if ((MousePos1.x <= -edge && dx < 0) || (MousePos1.x >= edge + width && dx > 0) ||
	    HandStatus == CAMERA_MODE_HAND_STATUS_0x7 || HandStatus == CAMERA_MODE_HAND_STATUS_0x8)
	{
		float t = (float)(MousePosCurrent.y - height / 2) / height;
		t = t * t * t;
		field_0x68.x += dx * EdgeScrollFactor * speed * dt;
		if (MousePosCurrent.y < height / 2)
		{
			t = -t;
		}
		field_0x68.z += dx * EdgeScrollTurnFactor * t * speed * dt;
		return;
	}
	speed *= 0.87f;
	if ((MousePos1.y <= -edge && dy < 0) || (MousePos1.y >= edge + height && dy > 0) ||
	    HandStatus == (CAMERA_MODE_HAND_STATUS)9 || HandStatus == (CAMERA_MODE_HAND_STATUS)10)
	{
		float t = (float)(MousePosCurrent.x - width / 2) / width;
		t = t * t * t;
		field_0x68.y += dy * EdgeScrollFactor * speed * dt;
		if (MousePosCurrent.y < height / 2)
		{
			t = -t;
		}
		field_0x68.z += dy * EdgeScrollTurnFactor * t * speed * dt;
	}
}

void CameraModeNew3::Restart()
{
	Reinitialise(true);
	FlyToPosFoc(origin, heading, 0.1f);
}

void CameraModeNew3::FlyToPosFoc(LHPoint& pos, LHPoint& focus, float time)
{
	LHPoint direction = focus - pos;
	direction.Normalise();
	LHPoint closest;
	if (!CameraExclusion::InsideInclusion(pos, direction, &closest, NULL))
	{
		pos = closest;
	}
	ElapsedTime = 0.0f;
	if (time >= 0.0f)
	{
		LHPoint origin = camera->CameraOriginZoomer.GetCurrentValue();
		SetupVia(pos, focus, origin, time);
	}
	LHPoint origin(camera->CameraOriginZoomer.x.GetCurrentValue(), camera->CameraOriginZoomer.y.GetCurrentValue(),
	               camera->CameraOriginZoomer.z.GetCurrentValue());
	if (origin.GetRange(pos) > FlySoundDistance * 1.5f)
	{
		GGlobal::Global.audio->PlaySoundEffect(NULL, (GetTickCount() & 3) + 0x2e, 3, 0, 0, 0,
		                                       AUDIO_SFX_BANK_TYPE_IN_GAME);
	}
}

void CameraModeNew3::Reinitialise(bool keep_fight)
{
	bool32_t hadFight = HasFight;
	field_0x210.SetPosition(0.0f);
	field_0x240.SetPosition(LHPoint(0.0f, 0.0f, 0.0f));
	field_0x2d0 = true;
	field_0x2f8 = 0;
	if (keep_fight && hadFight)
	{
		if (arena == NULL || !arena->IsAvailable() || arena->Creatures[0] == NULL || arena->Creatures[1] == NULL)
		{
			hadFight = false;
			keep_fight = hadFight != 0;
		}
	}
	if (!keep_fight || !hadFight)
	{
		Yaw0 = HALF_PI_F;
		Pitch0 = 0.0f;
		FightDistance = 1.0f;
		FightTimeLeft = 0;
		TimeInArena = 0;
		FightStatus = fight_status_t_0x2;
		arena = NULL;
		HasFight = false;
	}
	MousePosPrevious = MousePos1 = MousePosCurrent;
	Global_00c5b100.SetPosition(0.0f);
	RotateAroundPoint = false;
	field_0x101 = 0;
	field_0x100 = 0;
	field_0x8 = 0;
	IdleTime = 0.0f;
	field_0x2ec = 0;
	field_0x2f0 = 0;
	RotatePoint = LHPoint(0.0f, 0.0f, 0.0f);
	Global_00c5b0f4 = 0;
	memset(Global_00c5b0d8, 0, sizeof(Global_00c5b0d8));
	Global_00c5b0ac = 0.0f;
	ElapsedTime = 0.0f;
	HandStatus = CAMERA_MODE_HAND_STATUS_NORMAL;
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	Global_00c5b0c4 = 0.0f;
	Global_00c5b0c8 = 0.0f;
	Global_00c5b0cc = 0.0f;
	Global_00c5b0d0 = 0.0f;
	Global_00c5b0d4 = 0.0f;
	FromScreenCentre.y = 0.0f;
	FromScreenCentre.x = 0.0f;
	MouseButtons = CAMERA_MODE_MOUSE_STATUS_NONE;
	MouseTriconFlags = 0;
	KeyTriconFlags = 0;
	Global_00c5b0b4 = 0;
	Global_00c5b0f0 = 0;
	Global_00c5b0b0 = 0;
	Global_00c5b0ec = 0;
	Global_00c5b0bc = 0;
	Global_00c5b0c0 = 0;
	Global_00c5b0b8 = 0;
	LHPoint focus = camera->CameraHeadingZoomer.GetCurrentValue();
	LHPoint position = camera->CameraOriginZoomer.GetCurrentValue();
	HeadingDistance = (position - focus).GetNorme();
	FallbackOrigin = camera->CameraOriginZoomer.GetCurrentValue();
	FallbackHeading = camera->CameraHeadingZoomer.GetCurrentValue();
	field_0x68 = LHPoint(0.0f, 0.0f, 0.0f);
	RotateAroundPoint = false;
	GCamera::GetHeadingAndPitchFromPoints(camera->CameraOriginZoomer.GetCurrentValue(),
	                                      camera->CameraHeadingZoomer.GetCurrentValue(), &Pitch1, &Yaw1);
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
	ControlMap::MouseWheelDelta = 0;
}

float CameraModeNew3::CalcPerpDistance(LHPoint& line_start, LHPoint& line_end, LHPoint& point)
{
	LHPoint line = line_end - line_start;
	LHPoint offset = point - line_start;
	return fabs(offset.DotProductInline(line) / line_end.GetDistance(line_start));
}

void CameraModeNew3::SuggestBestCameraPos(LHPoint pos, LHPoint focus, LHPoint& new_pos, LHPoint& new_focus)
{
	new_focus = focus;
	float heading;
	float pitch;
	GCamera::GetHeadingAndPitchFromPoints(pos, new_focus, &heading, &pitch);
	float distance = new_focus.GetDistance(pos);
	if (distance < 50.0f)
	{
		distance += (50.0f - distance) * 0.8f;
	}
	if (distance > 100.0f)
	{
		distance += (100.0f - distance) * 0.1f;
	}
	heading = FindBestAngle(heading, distance, new_focus, pitch, NULL);
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&new_pos, new_focus, distance, heading, pitch);
}

inline void LHPoint::SetToLandAltitude()
{
	y = LH3DIsland::GetAltitude(LH3DMapCoords(x, z));
}

float CameraModeNew3::FindBestAngle(float heading, float distance, LHPoint& focus, float& pitch, float* best_score)
{
	float scores[32];
	memset(scores, 0, sizeof(scores));
	float focusAltitude = focus.y;
	int   i;
	for (i = 0; i < 32; i++)
	{
		float angle = i * PI_F / 16 + heading;
		for (int j = 3; j < 8; j++)
		{
			LHPoint point;
			GCamera::SetPointFromPointDistanceHeadingAndPitch(&point, focus, j * distance * 0.125f, angle, 0.0f);
			point.SetToLandAltitude();
			scores[i] += focusAltitude - point.y;
		}
	}

	int   bestIndex = 0;
	float bestScore = -1.0e20f;
	float nearDistance = distance * 0.3f;
	for (i = 0; i < 32; i++)
	{
		float angle = i * PI_F / 16;
		scores[i] += cos(angle) * 50.0;
		LHPoint point;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&point, focus, nearDistance, angle + heading, 0.0f);
		point.SetToLandAltitude();
		if (scores[i] > bestScore)
		{
			bestScore = scores[i];
			bestIndex = i;
		}
	}

	LHPoint normal;
	LH3DIsland::GetNormal(focus, &normal);
	float normalHeading;
	float normalPitch;
	GCamera::GetHeadingAndPitchFromPoints(normal + focus, focus, &normalHeading, &normalPitch);
	normalPitch *= 0.5f;
	float oldPitch = pitch * 0.2f;
	pitch = oldPitch + normalPitch * 0.2 + 0.37699114390179034;
	pitch = pitch > EIGHTH_PI_F ? (pitch < (PI_F / 3) ? pitch : PI_F / 3) : EIGHTH_PI_F;
	if (best_score != NULL)
	{
		*best_score = bestScore;
	}
	return bestIndex * PI_F / 16 + heading;
}

void CameraModeNew3::SetNoCross(int no_cross)
{
	if (NoCross < no_cross)
	{
		NoCross = no_cross;
	}
}

void CameraModeNew3::UpdateTricons()
{
	Global_00c5b0f4 = 0;
	GetTickCount();
	if (NoCross > 0)
	{
		NoCross -= LH3DTech::g_delta_time;
	}
	if (NoCross < 0)
	{
		NoCross = 0;
	}
	if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_NONE)
	{
		MouseTriconFlags = 0x80;
		float bottom = LHSys::TheSystem.screen.windowed ? 0.45f : 0.49f;
		if (FromScreenCentreAbs.x > TriconSideThreshold)
		{
			MouseTriconFlags |= 1;
		}
		if (FromScreenCentre.y > TriconTopThreshold)
		{
			MouseTriconFlags |= 1;
		}
		if (FromScreenCentre.y > bottom)
		{
			MouseTriconFlags |= 2;
		}
		if ((!HandHit && FromScreenCentre.y < -0.4f) || FromScreenCentre.y < -bottom)
		{
			MouseTriconFlags |= 7;
		}
		if (MouseTriconFlags & 1)
		{
			MouseTriconFlags |= 0x40;
		}
	}
	else if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_LEFT)
	{
		MouseTriconFlags &= ~0x80;
		if (MouseTriconFlags & 1)
		{
			MouseTriconFlags |= 0x40;
		}
	}
	if (Global_00c5b0c4 != 0.0f || HandStatus == CAMERA_MODE_HAND_STATUS_0x6 ||
	    HandStatus == CAMERA_MODE_HAND_STATUS_TILTING)
	{
		KeyTriconFlags |= 2;
	}
	if (Global_00c5b0c8 != 0.0f || HandStatus == CAMERA_MODE_HAND_STATUS_PANNING)
	{
		KeyTriconFlags |= 1;
	}
	if (HasFight)
	{
		MouseTriconFlags &= ~2;
	}
	uint32_t flags = MouseTriconFlags;
	if (flags & 2)
	{
		Global_00c5b0f4 |= (MouseTriconFlags & 0x80 ? 0x100 : 0) | 1;
	}
	if (flags & 1)
	{
		Global_00c5b0f4 |= (MouseTriconFlags & 0x80 ? 0x200 : 0) | 2;
	}
	if (flags & 8)
	{
		Global_00c5b0f4 |= (MouseTriconFlags & 0x80 ? 0x400 : 0) | 4;
	}
	if (MouseButtons != CAMERA_MODE_MOUSE_STATUS_LEFT)
	{
		if (Global_00c5b0ec)
		{
			flags |= 3;
			flags &= ~0x40;
			Global_00c5b0ac = 0.0f;
		}
		if (!(Global_00c5b0f4 & 1) && (KeyTriconFlags & 2))
		{
			Global_00c5b0f4 = (Global_00c5b0f4 & ~0x100) | 1 | (Global_00c5b0c4 != 0.0f ? 0 : 0x100);
		}
		if (!(Global_00c5b0f4 & 2) && (KeyTriconFlags & 1))
		{
			Global_00c5b0f4 = (Global_00c5b0f4 & ~0x200) | 2 | (Global_00c5b0c8 != 0.0f ? 0 : 0x200);
			flags &= ~0x40;
			Global_00c5b0ac = 0.0f;
		}
		if (!(Global_00c5b0f4 & 4) && (KeyTriconFlags & 8))
		{
			Global_00c5b0f4 = (Global_00c5b0f4 & ~0x400) | ((Global_00c5b0cc != 0.0f ? 0 : 0x400) + 4);
		}
	}
	if (Global_00c5b100.GetCurrentValue() > 0.5f)
	{
		Global_00c5b0f4 = 4;
	}
	if (!(GetCameraFeatures() & CAMERA_FEATURE_PITCH))
	{
		Global_00c5b0f4 &= ~0x101;
	}
	if (!(GetCameraFeatures() & CAMERA_FEATURE_ROTATE))
	{
		Global_00c5b0f4 &= ~0x202;
	}
	if (!(GetCameraFeatures() & CAMERA_FEATURE_ZOOM))
	{
		Global_00c5b0f4 &= ~0x404;
	}
	if ((GetCameraFeatures() & CAMERA_FEATURE_HELP) && GGame::g_game->MyInterface()->field_0x48 == 0)
	{
		Global_00c5b0f4 |= 8;
	}
	if (flags & 0x40)
	{
		Global_00c5b0ac = atan360(FromScreenCentre.x, FromScreenCentre.y) - HALF_PI_F;
	}
	if (MouseTriconFlags & 0x10)
	{
		if ((GetTickCount() / 200) & 1)
		{
			Global_00c5b0f4 = 8;
		}
		else
		{
			Global_00c5b0f4 &= ~8;
		}
	}
	if (field_0x2ec || field_0x2f0)
	{
		Global_00c5b0f4 = 0;
	}
	if (field_0x2f0 && (GetCameraFeatures() & CAMERA_FEATURE_HELP))
	{
		Global_00c5b0f4 |= 8;
	}
}

void CameraModeNew3::UpdateClickParams(LHPoint& pos, LHPoint& focus, bool grab)
{
	field_0x128 = GetTickCount();
	field_0x1b0 = FromScreenCentre;
	field_0x1b8.x = field_0x1b8.y = 0.0f;
	MousePosPrevious = MousePosCurrent;
	field_0x2dc = MousePosCurrent;
	if (grab)
	{
		LastGrabMouseHitPoint = MouseHitPoint;
	}
	Hit0x148 = HandHit;
	if (grab)
	{
		PerpDistance0xec = CalcPerpDistance(pos, focus, MouseHitPoint);
		Heading0x12c = focus;
	}
	field_0x138 = pos;

	LHPoint middle = (pos + focus) * 0.5f;
	Distance0xfc = pos.y - LH3DIsland::GetAltitude(middle);

	field_0x14c = LHPoint(0.0f, 1.0f, 0.0f);
	GCamera::GetHeadingAndPitchFromPoints(pos, focus, &Pitch1, &Yaw1);

	LHPoint ground = pos;
	ground.y = LH3DIsland::GetAltitude(ground);
	if (ground.y > LastGrabMouseHitPoint.y)
	{
		ground.y = LastGrabMouseHitPoint.y;
	}
	LHPoint forward = LastGrabMouseHitPoint - ground;
	LHPoint up(0.0f, 1.0f, 0.0f);
	forward.Normalise();
	LHPoint side;
	side = up ^ forward;
	side.Normalise();
	up = forward ^ side;
	up.Normalise();
	field_0x14c = up;
	field_0x14c.Normalise();
	field_0x158 = field_0x14c.DotProductInline(MouseHitPoint);
	field_0x160 = pos;
	field_0x16c = focus;
	LH3DTech::UpdateWorldToCamera(field_0x178, pos, focus, false);
	Distance0x1a8 = pos.GetDistance(focus);

	Length0x1c0 = 1.0f / 50.0f;
	int count = 1;
	for (int i = 0; i < 16; i++)
	{
		LHCoord screenPos;
		screenPos.x = LHSys::TheSystem.screen.Width() / 2;
		screenPos.y = LHSys::TheSystem.screen.Height() * i / 16;
		LHPoint hit;
		if (LH3DIsland::RayCastFrom2DPoint(screenPos, &hit.x, &hit.z, true, 0.0f))
		{
			hit.SetToLandAltitude();
			count++;
			Length0x1c0 += 1.0f / hit.GetDistance(pos);
		}
	}
	Length0x1c0 = 1.0f / (Length0x1c0 / count);

	float heading;
	float pitch;
	GCamera::GetHeadingAndPitchFromPoints(pos, focus, &heading, &pitch);
	float t = pitch / PI_F / 6.0f;
	t = t > 0.0f ? (t < 1.0f ? t : 1.0f) : 0.0f;
	Length0x1c0 += (HeadingDistance - Length0x1c0) * t;
}

float CameraModeNew3::GetAltitude(LHPoint& pos)
{
	float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	if (UseExclusions)
	{
		for (CameraExclusion* exclusion = NearbyExclusions; exclusion != NULL; exclusion = exclusion->NextNearby)
		{
			if (exclusion->type == EXCLUSIONTYPE_DOME)
			{
				float dx = exclusion->pos.x - pos.x;
				float dz = exclusion->pos.z - pos.z;
				float radiusSq = exclusion->Radius * exclusion->Radius;
				if (dz * dz + dx * dx < radiusSq)
				{
					float x = pos.x - exclusion->pos.x;
					float z = pos.z - exclusion->pos.z;
					float height = sqrt(1.0f - (z * z + x * x) / radiusSq) * exclusion->Height + exclusion->pos.y;
					if (altitude <= height)
					{
						altitude = height;
					}
				}
			}
		}
	}
	return altitude;
}

void CameraModeNew3::SetAltitudeAndNormal(LHPoint& pos, LHPoint& normal)
{
	float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	LH3DIsland::GetNormal(pos, &normal);
	for (CameraExclusion* exclusion = NearbyExclusions; exclusion != NULL; exclusion = exclusion->NextNearby)
	{
		if (exclusion->type == EXCLUSIONTYPE_DOME)
		{
			float dx = exclusion->pos.x - pos.x;
			float dz = exclusion->pos.z - pos.z;
			float radiusSq = exclusion->Radius * exclusion->Radius;
			if (dz * dz + dx * dx < radiusSq)
			{
				LHPoint offset = pos - exclusion->pos;
				float height = sqrt(1.0f - (offset.x * offset.x + offset.z * offset.z) / radiusSq) * exclusion->Height +
				               exclusion->pos.y;
				if (height > altitude)
				{
					normal = offset;
					normal.Normalise();
					altitude = height;
				}
			}
		}
	}
	pos.y = altitude;
}

void CameraModeNew3::DragFocusOntoLand(LHPoint& pos, LHPoint& focus)
{
	float distance = HeadingDistance;
	if (ScreenCentreHit)
	{
		distance = pos.GetDistance(ScreenCentreHitPoint);
	}
	distance -= 1.0f;
	if (distance < 0.1f)
	{
		distance = 0.1f;
	}
	focus.Sub(pos);
	focus.Normalise();
	focus *= distance;
	focus.Add(pos);
	Heading0x12c = focus;
}

bool32_t CameraModeNew3::IsEdgeScrollEnabled()
{
	if (EdgeScrollEnabled && (CameraHelp::EnabledFeatures & CAMERA_FEATURE_EDGE_SCROLL))
	{
		return true;
	}
	return false;
}

bool CameraModeNew3::UpdateStrafe(LHPoint& pos, LHPoint& focus, float& yaw, float& pitch, float time,
                                  unsigned long param_6)
{
	if (!(GetCameraFeatures() & CAMERA_FEATURE_EDGE_SCROLL))
	{
		field_0x68.SetNull();
		return false;
	}
	bool  wasStopped = field_0x68.GetNormeSq() < StrafeStopSpeedSq;
	float dx = time * field_0x68.x;
	float dy = time * field_0x68.y;
	float dz = time * field_0x68.z;
	if (GetCameraFeatures() & CAMERA_FEATURE_MOVE)
	{
		if (dx != 0.0f || dy != 0.0f)
		{
			CameraHelp::CameraHelpCallback(CameraHelpReason_Dragging, pos, param_6);
		}
		double slope = tan(pitch);
		slope = slope > 0.2f ? (slope < 2.0 ? slope : 2.0) : 0.2f;
		LHPoint  move(dx * -0.16f, 0.0f, dy * 0.16f / slope);
		LHMatrix rotation;
		rotation.SetRotationY(-yaw);
		rotation.TransformPoint(move);
		pos.Add(move);
		focus.Add(move);
		Heading0x12c.Add(move);
	}
	if (dz != 0.0f && (GetCameraFeatures() & CAMERA_FEATURE_ROTATE))
	{
		float turn = dz * PI_F;
		yaw += turn / LHSys::TheSystem.screen.width;
		if (fabs(dz) > 0.01f)
		{
			CameraHelp::CameraHelpCallback(CameraHelpReason_Rotate, pos, param_6);
			if (dz > 0.0f)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_RotatePositive, pos, param_6);
			}
			if (dz < 0.0f)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_RotateNegative, pos, param_6);
			}
			SmoothStrafeSpeedX(turn / LHSys::TheSystem.screen.width, time);
		}
	}
	bool isStopped = field_0x68.GetNormeSq() < StrafeStopSpeedSq;
	if (wasStopped && !isStopped)
	{
		UpdateClickParams(pos, focus, true);
	}
	return dz != 0.0f;
}

bool CameraModeNew3::WantToQuitFight(LHPoint pos, LHPoint focus, float scale)
{
	if (HasFight && arena != NULL && ScreenCentreHit)
	{
		LHPoint arenaPos;
		GLandscape::ConvertMapCoordToLandscapePoint(arena->GetPos(), arenaPos);
		if (arenaPos.GetDistance2D(focus) > arena->GetRadius() * scale * 3.2f &&
		    arenaPos.GetDistance2D(pos) > arena->GetRadius() * scale * 4.2f)
		{
			return true;
		}
		if (arenaPos.GetDistance2D(pos) > arena->GetRadius() * scale * 6.0f)
		{
			return true;
		}
	}
	return false;
}

void CameraModeNew3::StartFight(GArena* new_arena)
{
	if (new_arena == NULL || new_arena->Creatures[0] == NULL || new_arena->Creatures[1] == NULL)
	{
		return;
	}
	HasFight = true;
	arena = new_arena;
	bool start = true;
	if (WantToQuitFight(LH3DTech::GetCameraPosition(), ScreenCentreHitPoint, 1.0f))
	{
		start = false;
	}
	if (new_arena->GetCreature(0)->GetPlayer() == GGame::g_game->MyPlayer() ||
	    new_arena->GetCreature(1)->GetPlayer() == GGame::g_game->MyPlayer())
	{
		if ((new_arena->GetCreature(0)->GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) ||
		    (new_arena->GetCreature(1)->GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
		{
			start = true;
		}
	}
	if (start)
	{
		FightDistance = FightStartDistance;
		Yaw0 = HALF_PI_F;
		Pitch0 = PI_F * 0.13f;
		FightStatus = fight_status_t_0x0;
		FightTimeLeft = 0;
		field_0x4e = 0;
		field_0x4d = 0;
		field_0x4c = 0;
		field_0x2d0 = true;
		field_0x210.SetPosition(0.0f);
		field_0x240.SetPosition(LHPoint(0.0f, 0.0f, 0.0f));
		ElapsedTime = 0.0f;
		LHPoint arenaPos;
		GLandscape::ConvertMapCoordToLandscapePoint(arena->GetPos(), arenaPos);
		float   radius = new_arena->GetRadius();
		LHPoint focus;
		LHPoint newPos;
		LHPoint newFocus;
		focus = arenaPos + LHPoint(1.0f, 0.5f, 0.0f) * radius;
		SuggestBestCameraPos(arenaPos, focus, newPos, newFocus);
		FlyToPosFoc(newPos, newFocus, 0.0f);
	}
	else
	{
		HasFight = false;
		arena = NULL;
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		if (status != NULL)
		{
			if (new_arena->GetCreature(0)->GetPlayer() == GGame::g_game->MyPlayer())
			{
				status->guidance->HelpSpritesCreatureFight(*new_arena->Creatures[0]);
			}
			else if (new_arena->GetCreature(1)->GetPlayer() == GGame::g_game->MyPlayer())
			{
				status->guidance->HelpSpritesCreatureFight(*new_arena->Creatures[1]);
			}
		}
	}
}

void CameraModeNew3::EndFightSoon(int force)
{
	if (AutoEndFight || force)
	{
		if (FightStatus == fight_status_t_0x0)
		{
			if (FightTimeLeft <= 0)
			{
				FightTimeLeft = 3000;
			}
			FightStatus = fight_status_t_0x1;
		}
	}
}

void CameraModeNew3::EndFightNow(int force)
{
	if (AutoEndFight || force)
	{
		HasFight = false;
		arena = NULL;
		FightTimeLeft = 0;
		FightStatus = fight_status_t_0x2;
	}
}

bool32_t CameraModeNew3::CanPlayerGestureWhenCameraMoving()
{
	if (HasFight && arena != NULL)
	{
		return true;
	}
	return false;
}

void CameraModeNew3::Validate()
{
	if (arena == NULL || !arena->IsAvailable() || arena->Creatures[0] == NULL || arena->Creatures[1] == NULL)
	{
		if (HasFight)
		{
			EndFightSoon(1);
		}
		arena = NULL;
	}
}

// BW1W120 0045a8c0 BW1M119 inlined
static float NormaliseAngle(float angle)
{
	if (angle >= -PI_F && angle <= PI_F)
	{
		return angle;
	}
	float turns = angle * (1 / TWO_PI);
	angle = (turns - (int)turns) * TWO_PI;
	if (angle > PI_F)
	{
		angle -= TWO_PI;
	}
	if (angle < -PI_F)
	{
		angle += TWO_PI;
	}
	if (angle > PI_F)
	{
		angle -= TWO_PI;
	}
	if (angle < -PI_F)
	{
		angle += TWO_PI;
	}
	return angle;
}

void CameraModeNew3::Update()
{
	bool local_4b = false;
	if (HasFight)
	{
		TimeInArena = 0;
		if (FightStatus == fight_status_t_0x1)
		{
			FightTimeLeft -= GGame::g_game->field_0x205d48;
			if (FightTimeLeft < 0)
			{
				FightStatus = fight_status_t_0x2;
			}
		}
		if (FightStatus == fight_status_t_0x2)
		{
			EndFightNow(1);
		}
		else if (arena == NULL || !arena->IsAvailable())
		{
			EndFightSoon(1);
			arena = NULL;
		}
	}

	static LHPoint MapCentre(HalfMapSize, 0.0f, HalfMapSize);

	float   dt = GGame::g_game->GetCameraTimeInc() * 0.001f;
	LHPoint originDest = camera->CameraOriginZoomer.GetDestination();
	LHPoint focusDest = camera->CameraHeadingZoomer.GetDestination();
	if (HasFight && arena != NULL &&
	    (MouseButtons == CAMERA_MODE_MOUSE_STATUS_NONE || MouseButtons == CAMERA_MODE_MOUSE_STATUS_MIDDLE))
	{
		Heading0x12c = focusDest;
		field_0x4c = 0;
		field_0x4d = 0;
		field_0x4e = 0;
	}
	LHPoint pos = originDest;
	LHPoint origin = camera->CameraOriginZoomer.GetCurrentValue();
	LHPoint focus = camera->CameraHeadingZoomer.GetCurrentValue();
	if (RotateAroundPoint)
	{
		focusDest = Heading0x12c = RotatePoint;
	}

	Global_00c5b0c0 = Global_00c5b0f0;
	Global_00c5b0bc = Global_00c5b0b4;
	Global_00c5b0b8 = Global_00c5b0ec;
	MouseDelta = LHCoord(0, 0);
	if (field_0x2ec == 0)
	{
		HAND_STATE handState = GGame::g_game->MyInterface()->HandState.GetState();
		Global_00c5b0f0 = handState == HAND_STATE_GRIP_LANDSCAPE;
		Global_00c5b0b4 = GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ACTION);
		Global_00c5b0b0 = handState == HAND_STATE_ZOOM_LANDSCAPE;
		if (handState == HAND_STATE_FIGHT)
		{
			Global_00c5b0f0 = GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE);
		}
		if (LHSys::TheSystem.screen.MsWindowHandle == GetFocus() && (LHSys::TheSystem.mouse.Buttons & 1) &&
		    (LHSys::TheSystem.mouse.Buttons & 2))
		{
			Global_00c5b0b0 = 1;
			Global_00c5b0b4 = 0;
			Global_00c5b0f0 = 0;
		}
		Global_00c5e164 = 0;
		if (GGame::g_game->MyInterface()->field_0x3e0.bubble != NULL)
		{
			Global_00c5e164 = 1;
		}
		if (Global_00c5b0b4)
		{
			Global_00c5e164 = 2;
		}
		if (Global_00c5b0b0)
		{
			MousePosPrevious = MousePosCurrent;
		}
		Global_00c5b0ec = GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_AROUND_MOUSE_ON);
		MouseDelta = ControlMap::DeltaPos();
		LHSys::TheSystem.mouse.ClearDeltaPos();
		ControlMap::MouseDelta = LHCoord(0, 0);
		MousePosCurrent = LHSys::TheSystem.mouse.Pos();
		if (Global_00c5b0b0 || (Global_00c5b0f0 && Global_00c5b0b4))
		{
			Global_00c5b0b0 = 1;
			Global_00c5b0b4 = 0;
			Global_00c5b0f0 = 0;
		}
		if (field_0x2f0)
		{
			if (!Global_00c5b0f0 && !Global_00c5b0b4 && !Global_00c5b0ec && !Global_00c5b0b0 &&
			    Global_00c5b0d4 == 0.0f && Global_00c5b0cc == 0.0f && Global_00c5b0d0 == 0.0f &&
			    Global_00c5b0c4 == 0.0f && Global_00c5b0c8 == 0.0f)
			{
				field_0x2f0 = 0;
			}
			else
			{
				Global_00c5b0b0 = 0;
				Global_00c5b0ec = 0;
				Global_00c5b0b4 = 0;
				Global_00c5b0f0 = 0;
				Global_00c5b0c8 = 0.0f;
				Global_00c5b0c4 = 0.0f;
				Global_00c5b0cc = 0.0f;
				Global_00c5b0d0 = 0.0f;
				Global_00c5b0d4 = 0.0f;
			}
		}
		if (!(GetCameraFeatures() & CAMERA_FEATURE_ZOOM_LANDSCAPE))
		{
			Global_00c5b0ec = 0;
			Global_00c5b0b0 = 0;
		}
	}
	else
	{
		MouseDelta.x = 0;
		MouseDelta.y = 0;
		LHSys::TheSystem.mouse.AccumDelta.Set(0, 0);
		Global_00c5b0ec = 0;
		Global_00c5b0b0 = 0;
		Global_00c5b0b4 = 0;
		Global_00c5b0f0 = 0;
		CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
		MousePosCurrent = hand->ScreenPos;
		KeyTriconFlags = 0;
		Global_00c5b0e8 = 0;
		Global_00c5b0c8 = 0.0f;
		Global_00c5b0c4 = 0.0f;
		Global_00c5b0cc = 0.0f;
		Global_00c5b0d0 = 0.0f;
		Global_00c5b0d4 = 0.0f;
	}
	SetTurnOffMouseMove(Global_00c5b0ec || Global_00c5b0b0);

	int mouseInsideX = 1;
	int mouseInsideY = 1;
	if ((MousePosCurrent.x > 0 && MousePosCurrent.x < LHSys::TheSystem.screen.width - 1) ||
	    LHSys::TheSystem.screen.windowed)
	{
		MousePos1.x = MousePosCurrent.x;
	}
	else
	{
		MousePos1.x += MouseDelta.x;
		mouseInsideX = 0;
	}
	if ((MousePosCurrent.y > 0 && MousePosCurrent.y < LHSys::TheSystem.screen.height - 1) ||
	    LHSys::TheSystem.screen.windowed)
	{
		MousePos1.y = MousePosCurrent.y;
	}
	else
	{
		MousePos1.y += MouseDelta.y;
		mouseInsideY = 0;
	}
	field_0x2dc.y += MouseDelta.Y();
	field_0x2dc.x += MouseDelta.X();
	if (Global_00c5b0ec)
	{
		Global_00c5b0b4 = 0;
		Global_00c5b0f0 = 0;
		Global_00c5b0c8 += MouseDelta.x * TiltMouseFactor;
		Global_00c5b0c4 -= MouseDelta.y * RotateMouseFactor;
		if (!Global_00c5b0b8)
		{
			MousePos1 = MousePosCurrent;
		}
		else
		{
			MousePosCurrent = MousePos1;
		}
	}

	static LHCoord GrabMousePos;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON) &&
	    GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_ON))
	{
		static Object* GrabObject = NULL;
		// BW1W120 009ce6cc
		static float   GrabDistance = 50.0f;
		static LHPoint GrabCentre;
		static LHPoint GrabSide;
		static LHPoint GrabUp;
		static LHPoint GrabForward;
		static float   GrabRadius;
		static float   GrabHeading;
		static float   GrabPitch;
		if (Global_00c5b100.GetCurrentValue() < 0.01f)
		{
			GrabMousePos = MousePosCurrent;
			Origin0x1ec = originDest;
			Heading0x204 = focusDest;
			GrabCentre = GGame::g_game->MyInterface()->GetRenderHand()->Get3DObject()->matrix.GetPos();
			GrabObject = GGame::g_game->MyInterface()->interface_collide.object;
			if (GrabObject != NULL)
			{
				GLandscape::ConvertMapCoordToLandscapePoint(GrabObject->Pos, GrabCentre);
			}
			GrabCentre.y = LH3DIsland::GetAltitude(LH3DMapCoords(GrabCentre.x, GrabCentre.z));
			GCamera::GetHeadingAndPitchFromPoints(originDest, focusDest, &GrabHeading, &GrabPitch);
			float distance = originDest.GetDistance(focusDest);
			if (distance > 300.0f)
			{
				GrabRadius = 50.0f;
			}
			else if (distance < 50.0f)
			{
				GrabRadius = 10.0f;
			}
			else
			{
				GrabRadius = 15.0f;
			}
			GrabPitch = (GrabPitch + (PI_F * 3 / 4)) * 0.25f;
			GrabDistance = GrabRadius;
			LHPoint point;
			GCamera::SetPointFromPointDistanceHeadingAndPitch(&point, focusDest, GrabRadius, GrabHeading, GrabPitch);
			GrabForward = point - focusDest;
			GrabForward.Normalise();
			GrabUp = LHPoint(0.0f, 1.0f, 0.0f);
			GrabSide = GrabUp ^ GrabForward;
			GrabSide.Normalise();
			GrabUp = GrabForward ^ GrabSide;
			GrabUp.Normalise();
			MousePosPrevious = MousePosCurrent;
		}
		if (GrabObject != NULL)
		{
			if (GrabObject->IsAvailable())
			{
				GLandscape::ConvertMapCoordToLandscapePoint(GrabObject->Pos, GrabCentre);
				GGame::g_game->MyInterface()->GetRenderHand()->SetPos(GrabCentre);
			}
			else
			{
				GrabObject = NULL;
			}
		}
		GrabCentre.y = LH3DIsland::GetAltitude(LH3DMapCoords(GrabCentre.x, GrabCentre.z));
		field_0x1f8 = GrabCentre;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&field_0x1e0, field_0x1f8, GrabRadius, GrabHeading,
		                                                  GrabPitch);
		Global_00c5b100.SetDestination(1.0f, 0.5f);
	}
	else
	{
		Global_00c5b100.SetDestination(0.0f, 0.5f);
	}
	Global_00c5b100.Update(dt);

	int wheel = 0;
	if (field_0x2ec == 0 && Global_00c5b100.GetCurrentValue() < 0.01f)
	{
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_OUT))
		{
			wheel = ControlMap::MouseWheelDelta != 0 ? ControlMap::MouseWheelDelta : -120;
		}
		else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_IN))
		{
			wheel = ControlMap::MouseWheelDelta != 0 ? ControlMap::MouseWheelDelta : 120;
		}
		ControlMap::MouseWheelDelta = 0;
	}
	Global_00c5b0cc -= wheel * WheelZoomFactor;
	static int ZoomTilting = 0;
	static int ZoomStartX = 0;
	if (Global_00c5b0b0)
	{
		Global_00c5b0cc += MouseDelta.y * ZoomMouseFactor;
		float threshold = LHSys::TheSystem.screen.width * ZoomTiltThreshold;
		if (abs(MouseDelta.x) > threshold || abs(MousePosCurrent.x - ZoomStartX) > threshold)
		{
			ZoomTilting = 1;
		}
		if (ZoomTilting)
		{
			Global_00c5b0c8 += MouseDelta.x * ZoomMouseFactor;
		}
	}
	else
	{
		ZoomTilting = 0;
		ZoomStartX = MousePosCurrent.x;
	}
	Global_00c5b0e8 = Global_00c5b0cc != 0.0f || Global_00c5b0d4 != 0.0f || Global_00c5b0d0 != 0.0f ||
	                  Global_00c5b0c8 != 0.0f || Global_00c5b0c4 != 0.0f || Global_00c5b0ec;
	bool keyMoving = Global_00c5b0cc != 0.0f || Global_00c5b0c8 != 0.0f || Global_00c5b0c4 != 0.0f || Global_00c5b0ec;

	FromScreenCentre.x = (float)MousePosCurrent.x / LHSys::TheSystem.screen.width - 0.5f;
	bool local_cf = false;
	bool local_86 = true;
	bool local_4a = false;
	int  screenHeight = LHSys::TheSystem.screen.height;
	int  visibleHeight = screenHeight;
	if (GGame::g_game->help_system->field_0x45e8)
	{
		visibleHeight = screenHeight - (int)(LH3DTech::g_info_transform.resolution.y -
		                                     LH3DTech::g_info_transform.resolution.x * (9.0f / 16.0f));
	}
	FromScreenCentre.y = (float)(MousePosCurrent.y - screenHeight / 2) / visibleHeight;
	field_0x1b8.x += (float)MouseDelta.x / visibleHeight;
	field_0x1b8.y += (float)MouseDelta.y / LHSys::TheSystem.screen.width;
	FromScreenCentreAbs.x = fabs(FromScreenCentre.x);
	FromScreenCentreAbs.y = fabs(FromScreenCentre.y);
	HandHit = LH3DIsland::RayCastFrom2DPoint(MousePosCurrent, &MouseHitPoint.x, &MouseHitPoint.z, true, 0.0f);
	LHScreen& screen = LHSys::GetScreen();
	LHCoord   screenCentre(screen.Width() / 2, screen.Height() / 2);
	ScreenCentreHit =
		LH3DIsland::RayCastFrom2DPoint(screenCentre, &ScreenCentreHitPoint.x, &ScreenCentreHitPoint.z, true, 0.0f);
	MouseHitPoint.y = LH3DIsland::GetAltitude(LH3DMapCoords(MouseHitPoint.x, MouseHitPoint.z));
	ScreenCentreHitPoint.y = LH3DIsland::GetAltitude(LH3DMapCoords(ScreenCentreHitPoint.x, ScreenCentreHitPoint.z));

	if (ElapsedTime > FlyTime * 3.0f)
	{
		if (WantToQuitFight(originDest, ScreenCentreHitPoint, 0.75f) && (MouseButtons & CAMERA_MODE_MOUSE_STATUS_LEFT))
		{
			EndFightNow(0);
			UpdateClickParams(originDest, focusDest, true);
		}
	}
	if (ScreenCentreHit && !HasFight)
	{
		GArena* found = NULL;
		while ((found = found != NULL ? found->next.Get() : GGame::g_game->GameLists.arenas.Get()) != NULL)
		{
			LHPoint arenaPos;
			GLandscape::ConvertMapCoordToLandscapePoint(found->GetPos(), arenaPos);
			if (arenaPos.GetDistance2DSq(originDest) < found->GetRadius() * found->GetRadius() &&
			    arenaPos.GetDistance2DSq(focusDest) < found->GetRadius() * found->GetRadius() &&
			    found->Creatures[0] != NULL && found->Creatures[1] != NULL)
			{
				break;
			}
		}
		if (found != NULL)
		{
			TimeInArena += LH3DTech::g_delta_time;
			if (TimeInArena > 1000)
			{
				StartFight(found);
			}
		}
	}

	NearbyExclusions = NULL;
	for (CameraExclusion* exclusion = CameraExclusion::ExclusionList; exclusion != NULL; exclusion = exclusion->next)
	{
		float dx = exclusion->pos.x - originDest.x;
		float dz = exclusion->pos.z - originDest.z;
		float margin = CameraExclusion::Margin * 2.0f;
		float radius = margin + exclusion->Radius;
		if (dz * dz + dx * dx < radius * radius)
		{
			if (exclusion->type != EXCLUSIONTYPE_DOME || originDest.y - exclusion->pos.y < margin + exclusion->Height)
			{
				exclusion->NextNearby = NearbyExclusions;
				NearbyExclusions = exclusion;
			}
		}
	}
	if (ScreenCentreHit)
	{
		HeadingDistance = ScreenCentreHitPoint.GetDistance(originDest);
	}
	else
	{
		HeadingDistance = Length0x1c0;
	}
	if (HeadingDistance < 10.0f)
	{
		HeadingDistance = 10.0f;
	}
	if (HandHit)
	{
		CalcPerpDistance(originDest, focusDest, MouseHitPoint);
	}

	float maxPitch = MaxPitch;
	int   buttons = CAMERA_MODE_MOUSE_STATUS_NONE;
	if (abs(MouseDelta.x) > 2 || abs(MouseDelta.y) > 2)
	{
		IdleTime = 0.0f;
	}
	if (!Global_00c5b0f0 && Global_00c5b0c0)
	{
		buttons = CAMERA_MODE_MOUSE_STATUS_NONE;
	}
	if (Global_00c5b0f0)
	{
		buttons |= CAMERA_MODE_MOUSE_STATUS_LEFT;
	}
	if (Global_00c5b0e8)
	{
		buttons |= CAMERA_MODE_MOUSE_STATUS_MIDDLE;
		if (!keyMoving && buttons == (CAMERA_MODE_MOUSE_STATUS)3)
		{
			buttons = CAMERA_MODE_MOUSE_STATUS_LEFT;
			Global_00c5b0e8 = 0;
			Global_00c5b0d0 = 0.0f;
			Global_00c5b0d4 = 0.0f;
		}
	}
	if (!Global_00c5b0f0 && !Global_00c5b0b0 && !Global_00c5b0ec && !Global_00c5b0e8)
	{
		IdleTime += dt;
	}
	else
	{
		IdleTime = 0.0f;
	}
	if (Global_00c5b0e8 || buttons || Global_00c5b0f0 || Global_00c5b0ec || Global_00c5b0b0)
	{
		field_0x100 = 0;
	}
	bool dragging = true;
	if (!Global_00c5b0e8)
	{
		if (!((Global_00c5b0f0 || Global_00c5b0ec || Global_00c5b0b0) &&
		      (abs(MouseDelta.x) > 2 || abs(MouseDelta.y) > 2)))
		{
			dragging = false;
		}
	}
	Global_00c5e168 = dragging;

	bool autoPitched = false;
	if ((GetCameraFeatures() & CAMERA_FEATURE_AUTO_PITCH) &&
	    (buttons == CAMERA_MODE_MOUSE_STATUS_NONE || buttons == CAMERA_MODE_MOUSE_STATUS_MIDDLE))
	{
		float heading;
		float pitch;
		GCamera::GetHeadingAndPitchFromPoints(originDest, Heading0x12c, &heading, &pitch);
		Global_00c5b0c4 = (CameraHelp::AutoPitchParam1 - pitch) * 0.2f;
		if (fabs(Global_00c5b0c4) > 0.01)
		{
			Global_00c5b0c4 = (Global_00c5b0c4 > -dt ? (Global_00c5b0c4 < dt ? Global_00c5b0c4 : dt) : -dt) * -150.0f;
			autoPitched = true;
			local_4a = true;
			buttons = CAMERA_MODE_MOUSE_STATUS_MIDDLE;
		}
		else
		{
			Global_00c5b0c4 = 0.0f;
		}
	}
	if (buttons != MouseButtons || Global_00c5b0b8 != Global_00c5b0ec)
	{
		HandStatus = CAMERA_MODE_HAND_STATUS_NORMAL;
		if (buttons && !HandHit)
		{
			MouseHitPoint = focusDest;
		}
		UpdateClickParams(originDest, focusDest, true);
		MouseButtons = (CAMERA_MODE_MOUSE_STATUS)buttons;
	}
	if (autoPitched)
	{
		MouseButtons = CAMERA_MODE_MOUSE_STATUS_NONE;
		UpdateTricons();
		MouseButtons = (CAMERA_MODE_MOUSE_STATUS)buttons;
	}
	else
	{
		UpdateTricons();
	}
	if (Global_00c5e168 && (MouseTriconFlags & 0x10))
	{
		CameraHelp::CameraHelpCallback(CameraHelpReason_HandTooFarAway, originDest, 0);
	}

	unsigned long helpFlags = wheel ? 8 : 0;
	if (Global_00c5b0ec)
	{
		helpFlags += 0x10;
	}
	if (Global_00c5b0e8 && !Global_00c5b0ec)
	{
		helpFlags++;
	}
	if (MouseButtons & CAMERA_MODE_MOUSE_STATUS_LEFT)
	{
		helpFlags += 2;
	}
	if (Global_00c5b0b0)
	{
		helpFlags += 4;
	}
	float zoom = Global_00c5b0cc * 0.0015f;
	if (!(GetCameraFeatures() & CAMERA_FEATURE_ZOOM))
	{
		zoom = 0.0f;
		Global_00c5b0cc = 0.0f;
	}
	float speed;
	if (originDest.y < focusDest.y)
	{
		float height = (focusDest.y - originDest.y) * 3.0f;
		speed = height > EdgeScrollMinSpeed ? (height < EdgeScrollMinSpeed * 4.0f ? height : EdgeScrollMinSpeed * 4.0f)
		                                    : EdgeScrollMinSpeed;
	}
	else
	{
		float height = (originDest.y - focusDest.y) * 3.0f;
		speed = height > EdgeScrollMinSpeed ? (height < EdgeScrollMaxSpeed ? height : EdgeScrollMaxSpeed)
		                                    : EdgeScrollMinSpeed;
	}
	zoom = speed * zoom;
	Distance0x1a8 = max(CameraExclusion::Margin + 0.1f, zoom + Distance0x1a8);
	if (Distance0x1a8 == CameraExclusion::Margin + 0.1f && zoom != 0.0f && Global_00c5e168)
	{
		CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithGround, originDest, 0);
	}
	float groundAltitude = LH3DIsland::GetAltitude(LH3DMapCoords(originDest.x, originDest.z)) + 3.0f;
	float maxHeight = UseMaxHeight ? MaxHeight : 30000.0f;
	float maxDistance = UseMaxDistance ? MaxDistance : 30000.0f;
	float maxAltitude =
		min(maxHeight, LH3DIsland::GetAltitude(LH3DMapCoords(originDest.x, originDest.z)) + maxDistance);
	if (zoom != 0.0f)
	{
		CameraHelp::CameraHelpCallback(CameraHelpReason_Zooming, originDest, helpFlags);
		field_0x4c = 1;
	}
	VerticalDistance = min(fabs(originDest.y - groundAltitude), fabs(originDest.y - maxAltitude));
	if (originDest.y < focusDest.y)
	{
		VerticalDistance = 0.0f;
	}
	int   dragX = MousePosCurrent.x - MousePosPrevious.x;
	int   dragY = MousePosCurrent.y - MousePosPrevious.y;
	float dragScale = sqrt((double)(dragX * dragX + dragY * dragY)) * Distance0x1a8 * 0.011f;
	if (dragScale < 50.0f)
	{
		dragScale = 50.0f;
	}
	float yaw;
	float pitch;
	int   local_b4 = 0;
	GCamera::GetHeadingAndPitchFromPoints(originDest, Heading0x12c, &yaw, &pitch);
	float distance = Distance0x1a8;
	int   strafed = 0;
	int   local_bc = 0;
	if (IsEdgeScrollEnabled() && MouseButtons == CAMERA_MODE_MOUSE_STATUS_NONE && !Global_00c5b0f0)
	{
		if (UpdateStrafe(originDest, focusDest, yaw, pitch, dt, helpFlags))
		{
			strafed = 1;
			local_b4 = 1;
			if (Length0x1c0 < 0.0f || Length0x1c0 > 5000.0f)
			{
				UpdateClickParams(originDest, focusDest, true);
			}
		}
	}
	if (IsEdgeScrollEnabled())
	{
		if (HandStatus < CAMERA_MODE_HAND_STATUS_0x7)
		{
			float decayXY = (mouseInsideX && mouseInsideY) ? -7.0f : -0.2f;
			float decayZ = (mouseInsideX && mouseInsideY) ? -7.0f : -2.2f;
			field_0x68.x *= (float)exp(decayXY * dt);
			field_0x68.y *= (float)exp(decayXY * dt);
			field_0x68.z *= (float)exp(decayZ * dt);
		}
		else
		{
			field_0x68.x *= (float)exp(-1.0f * dt);
			field_0x68.y *= (float)exp(-1.0f * dt);
			field_0x68.z *= (float)exp(dt * -2.0f);
		}
		if (field_0x68.GetNorm() < StrafeStopSpeedSq)
		{
			field_0x68.SetNull();
		}
	}
	else
	{
		field_0x68.SetNull();
	}
	if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_MIDDLE || MouseButtons == (CAMERA_MODE_MOUSE_STATUS)3)
	{
		local_86 = true;
		if (Global_00c5b0c8 != 0.0f && (GetCameraFeatures() & CAMERA_FEATURE_ROTATE))
		{
			float turn = Global_00c5b0c8 * PI_F;
			yaw += turn / LHSys::TheSystem.screen.width;
			Yaw0 += turn / LHSys::TheSystem.screen.width;
			if (fabs(Global_00c5b0c8) > 0.01)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_Rotate, originDest, helpFlags);
				if (Global_00c5b0c8 > 0.0f)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_RotatePositive, originDest, helpFlags);
				}
				if (Global_00c5b0c8 < 0.0f)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_RotateNegative, originDest, helpFlags);
				}
				SmoothStrafeSpeedX(Global_00c5b0c8 * PI_F / screen.Width(), dt);
				field_0x4d = 1;
				strafed = 1;
			}
		}
		if (Global_00c5b0c4 != 0.0f && ((GetCameraFeatures() & CAMERA_FEATURE_PITCH) || autoPitched))
		{
			if (!autoPitched)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_Pitching, originDest, helpFlags);
				field_0x4e = 1;
			}
			float tilt = MouseTiltRate * Global_00c5b0c4;
			float newPitch = pitch - tilt;
			pitch = newPitch > -(PI_F / 6) ? (newPitch < maxPitch ? newPitch : maxPitch) : -(PI_F / 6);
			Pitch0 -= tilt;
			SmoothStrafeSpeedZ(tilt, dt);
			local_bc = 1;
			if (TiltKeepsFocusHeight && !Global_00c5b0ec)
			{
				local_86 = false;
				local_4a = true;
			}
			else
			{
				float margin = CameraExclusion::Margin * 2.0f;
				if (margin > VerticalDistance)
				{
					float lift = (margin - VerticalDistance) * tilt * HeadingDistance * 0.051f;
					Heading0x12c.y += lift;
					focusDest.y += lift;
					if (originDest.y < focusDest.y)
					{
						local_4a = true;
					}
				}
			}
		}
		if (GetCameraFeatures() & CAMERA_FEATURE_MOVE)
		{
			if (Global_00c5b0d4 != 0.0f || Global_00c5b0d0 != 0.0f)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_Dragging, originDest, helpFlags);
			}
			if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_MIDDLE)
			{
				// Mac evaluates tan(pitch) once per use, so this clamp was probably a macro.
				double slope = tan(pitch);
				slope = slope > 0.2f ? (slope < 2.0 ? slope : 2.0) : 0.2f;
				float    scale = speed * 0.001f;
				LHPoint  move(-(scale * Global_00c5b0d4), 0.0f, scale * Global_00c5b0d0 / slope);
				LHMatrix rotation;
				rotation.SetRotationY(-yaw);
				rotation.TransformPoint(move);
				originDest.Add(move);
				focusDest.Add(move);
				Heading0x12c.Add(move);
				if (Global_00c5b0d4 != 0.0f || Global_00c5b0d0 != 0.0f)
				{
					local_cf = true;
				}
			}
		}
		if (GetCameraFeatures() & CAMERA_FEATURE_ZOOM)
		{
			PerpDistance0xec = max(CameraExclusion::Margin + 0.1f, zoom + PerpDistance0xec);
			Length0x1c0 = max(CameraExclusion::Margin + 0.1f, zoom + Length0x1c0);
			if (zoom != 0.0f && Global_00c5e168)
			{
				if (PerpDistance0xec == CameraExclusion::Margin + 0.1f || Length0x1c0 == CameraExclusion::Margin + 0.1f)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithGround, originDest, 0);
				}
			}
		}
		if ((MouseButtons == CAMERA_MODE_MOUSE_STATUS_MIDDLE && !Global_00c5b0ec) ||
		    HandStatus == CAMERA_MODE_HAND_STATUS_ZOOMING)
		{
			HandStatus = CAMERA_MODE_HAND_STATUS_ZOOMING;
			local_b4 = 1;
		}
		else
		{
			HandStatus = CAMERA_MODE_HAND_STATUS_TILT_ON;
			local_b4 = 2;
		}
		Global_00c5b0d0 = 0.0f;
		Global_00c5b0c4 = 0.0f;
		Global_00c5b0d4 = 0.0f;
		Global_00c5b0c8 = 0.0f;
		Global_00c5b0cc = 0.0f;
	}

	if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_LEFT)
	{
		if (!(MouseTriconFlags & 3))
		{
			HandStatus = CAMERA_MODE_HAND_STATUS_GRABBING_LAND;
		}
		else if (HandStatus == CAMERA_MODE_HAND_STATUS_NORMAL)
		{
			Point2D drag = field_0x1b8;
			if (drag.x * drag.x + drag.y * drag.y > GrabDragThreshold * GrabDragThreshold)
			{
				int     heldTime = GetTickCount() - field_0x128;
				Point2D along(-field_0x1b0.x, -field_0x1b0.y);
				float   length = sqrt(along.y * along.y + along.x * along.x);
				if (length > 0.1f)
				{
					along.x /= length;
					along.y /= length;
				}
				Point2D across(field_0x1b0.y, -field_0x1b0.x);
				length = sqrt(across.x * across.x + across.y * across.y);
				if (length > 0.1f)
				{
					// TODO: The x delta is scaled by the height and the y delta by the width.
					across.x /= length;
					across.y /= length;
				}
				HandStatus = CAMERA_MODE_HAND_STATUS_GRABBING_LAND;
				float alongDrag = drag.x * along.x + drag.y * along.y;
				float acrossDrag = drag.x * across.x + drag.y * across.y;
				if ((MouseTriconFlags & 3) == 3)
				{
					if ((GetCameraFeatures() & (CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE)) !=
					    (CAMERA_FEATURE_PITCH | CAMERA_FEATURE_ROTATE))
					{
						if (GetCameraFeatures() & CAMERA_FEATURE_ROTATE)
						{
							HandStatus = CAMERA_MODE_HAND_STATUS_PANNING;
						}
						else
						{
							HandStatus =
								(MouseTriconFlags & 4) ? CAMERA_MODE_HAND_STATUS_0x6 : CAMERA_MODE_HAND_STATUS_TILTING;
						}
					}
					else if (fabs(drag.y) < fabs(drag.x))
					{
						HandStatus = CAMERA_MODE_HAND_STATUS_PANNING;
					}
					else
					{
						HandStatus =
							(MouseTriconFlags & 4) ? CAMERA_MODE_HAND_STATUS_0x6 : CAMERA_MODE_HAND_STATUS_TILTING;
					}
				}
				else if ((MouseTriconFlags & 1) == 1)
				{
					if ((GetCameraFeatures() & (CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_MOVE)) !=
					    (CAMERA_FEATURE_ROTATE | CAMERA_FEATURE_MOVE))
					{
						HandStatus = (GetCameraFeatures() & CAMERA_FEATURE_ROTATE)
						                 ? CAMERA_MODE_HAND_STATUS_PANNING
						                 : CAMERA_MODE_HAND_STATUS_GRABBING_LAND;
					}
					else if (fabs(acrossDrag) > fabs(alongDrag) || alongDrag < 0.0f || heldTime > GrabRotateTime)
					{
						HandStatus = CAMERA_MODE_HAND_STATUS_PANNING;
					}
					else
					{
						HandStatus = CAMERA_MODE_HAND_STATUS_GRABBING_LAND;
					}
				}
				else if ((MouseTriconFlags & 2) == 2)
				{
					HandStatus = (MouseTriconFlags & 4) ? CAMERA_MODE_HAND_STATUS_0x6 : CAMERA_MODE_HAND_STATUS_TILTING;
				}
				if (HandStatus == CAMERA_MODE_HAND_STATUS_0x6 || HandStatus == CAMERA_MODE_HAND_STATUS_TILTING)
				{
					if (drag.y > 0.0f && heldTime < GrabZoomTime && HandHit)
					{
						HandStatus = CAMERA_MODE_HAND_STATUS_GRABBING_LAND;
					}
				}
			}
		}
		float grabHeading;
		float grabPitch;
		GCamera::GetHeadingAndPitchFromPoints(field_0x138, Heading0x12c, &grabHeading, &grabPitch);
		if (HandStatus >= CAMERA_MODE_HAND_STATUS_0x7 && HandStatus <= 10)
		{
			if (IsEdgeScrollEnabled())
			{
				if (FromScreenCentreAbs.x > FromScreenCentreAbs.y)
				{
					HandStatus = FromScreenCentre.x < 0.0f ? CAMERA_MODE_HAND_STATUS_0x7 : CAMERA_MODE_HAND_STATUS_0x8;
				}
				else
				{
					HandStatus = FromScreenCentre.y < 0.0f ? (CAMERA_MODE_HAND_STATUS)9 : (CAMERA_MODE_HAND_STATUS)10;
				}
				if (UpdateStrafe(originDest, focusDest, yaw, pitch, dt, helpFlags))
				{
					local_b4 = 1;
					if (Length0x1c0 < 0.0f || Length0x1c0 > 5000.0f)
					{
						UpdateClickParams(originDest, focusDest, true);
					}
				}
			}
		}
		else if (HandStatus == CAMERA_MODE_HAND_STATUS_PANNING)
		{
			if (GetCameraFeatures() & CAMERA_FEATURE_ROTATE)
			{
				int width = LHSys::TheSystem.screen.width;
				int height = LHSys::TheSystem.screen.height;
				int visibleHeight = height;
				if (GGame::g_game->help_system->field_0x45e8)
				{
					visibleHeight = height - (int)(LH3DTech::g_info_transform.resolution.y -
					                               LH3DTech::g_info_transform.resolution.x * (9.0f / 16.0f));
				}
				float x = (MousePosCurrent.x - width * 0.5f) / (width * 0.5f);
				float fHeight = height;
				float fVisibleHeight = visibleHeight;
				float y = (MousePosCurrent.y - fHeight * 0.5f) / (fVisibleHeight * 0.5f);
				float radius = y * y + x * x;
				if (radius < 0.89f || radius > 0.91f)
				{
					if (radius != 0.0f)
					{
						radius = 0.9f / sqrt(radius);
					}
					y *= radius;
					x *= radius;
					MousePosCurrent.x = (int)(((x + 1.0f) * width + 1.0f) * 0.5f);
					MousePosCurrent.y = (int)((y * fVisibleHeight + fHeight + 1.0f) * 0.5f);
				}
				float previousAngle =
					atan2((float)(MousePosPrevious.x - width / 2), (float)(MousePosPrevious.y - height / 2));
				float angle = atan2((float)(MousePosCurrent.x - width / 2), (float)(MousePosCurrent.y - height / 2)) -
				              previousAngle;
				if (angle > PI_F)
				{
					angle -= TWO_PI;
				}
				if (angle < -PI_F)
				{
					angle += TWO_PI;
				}
				MousePosPrevious = MousePosCurrent;
				CHand* hand = GGame::g_game->MyInterface()->GetRenderHand();
				hand->field_0x486c = MousePosCurrent.x;
				hand->field_0x4870 = MousePosCurrent.y;
				hand->field_0x4874 = 1;
				if (!GGame::g_game->MyInterface()->IsPlayBack(0))
				{
					LHSys::TheSystem.mouse.SetPosition(&MousePosCurrent);
				}
				yaw += angle;
				local_b4 = 1;
				Yaw0 += angle;
				MouseTriconFlags = 1;
				field_0x4d = 1;
				SmoothStrafeSpeedX(angle, dt);
				strafed = 1;
				if (Global_00c5e168)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_Rotate, originDest, helpFlags);
				}
				if (angle > 0.01f)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_RotatePositive, originDest, helpFlags);
				}
				if (angle < 0.01f)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_RotateNegative, originDest, helpFlags);
				}
			}
		}
		else if (HandStatus == CAMERA_MODE_HAND_STATUS_TILTING || HandStatus == CAMERA_MODE_HAND_STATUS_0x6)
		{
			if (GetCameraFeatures() & CAMERA_FEATURE_PITCH)
			{
				if (Global_00c5e168)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_Pitching, originDest, helpFlags);
					field_0x4e = 1;
				}
				float tilt =
					(float)MouseDelta.y / LHSys::TheSystem.screen.height * TiltMouseScale * LH3DTech::g_camera.fov;
				pitch -= tilt;
				Pitch0 += tilt;
				SmoothStrafeSpeedZ(tilt, dt);
				local_bc = 1;
				if (TiltKeepsFocusHeight && !Global_00c5b0ec)
				{
					local_4a = true;
					local_86 = false;
				}
				else
				{
					float margin = CameraExclusion::Margin * 2.0f;
					if (margin > VerticalDistance)
					{
						float lift = (margin - VerticalDistance) * tilt * HeadingDistance * 0.051f;
						Heading0x12c.y += lift;
						focusDest.y += lift;
						if (originDest.y < focusDest.y)
						{
							local_4a = true;
						}
					}
				}
				local_b4 = 1;
				MouseTriconFlags = 2;
			}
		}
		else if (HandStatus == CAMERA_MODE_HAND_STATUS_GRABBING_LAND)
		{
			if (PerpDistance0xec > 3000.0f)
			{
				MouseTriconFlags = 0x10;
				local_4b = true;
				field_0x2f0 = 1;
			}
			else if (GetCameraFeatures() & CAMERA_FEATURE_MOVE)
			{
				local_b4 = 0;
				MouseTriconFlags = 0;
				LHPoint previous;
				LHPoint current;
				if (HandHit && Hit0x148)
				{
					// Project both mouse positions with the camera as it was when the land was grabbed.
					LHMatrix savedMatrix = LH3DTech::g_world_to_camera;
					LHPoint  savedPos = LH3DTech::g_camera.pos;
					LH3DTech::g_world_to_camera = field_0x178;
					LH3DTech::g_camera.pos = field_0x160;
					LH3DTech::Get3DPointFromScreen(MousePosPrevious, previous, 0.0f);
					LH3DTech::Get3DPointFromScreen(MousePosCurrent, current, 0.0f);
					LH3DTech::g_world_to_camera = savedMatrix;
					LH3DTech::g_camera.pos = savedPos;
					current.Sub(field_0x160);
					previous.Sub(field_0x160);
					double currentDot =
						field_0x14c.y * current.y + field_0x14c.z * current.z + field_0x14c.x * current.x;
					double previousDot =
						field_0x14c.z * previous.z + field_0x14c.y * previous.y + field_0x14c.x * previous.x;
					if ((currentDot < -0.001f && previousDot < -0.001f) ||
					    (currentDot > 0.001f && previousDot > 0.001f))
					{
						double planeDistance = field_0x158 - field_0x14c.DotProductInline(field_0x160);
						double currentT = planeDistance / currentDot;
						double previousT = planeDistance / previousDot;
						if (currentT > 0.0001 && previousT > 0.0001)
						{
							current = current * (float)currentT + field_0x160;
							previous = previous * (float)previousT + field_0x160;
							local_b4 = 1;
						}
					}
					else
					{
						MouseTriconFlags = 0x10;
					}
				}
				if (local_b4)
				{
					if (Global_00c5e168)
					{
						CameraHelp::CameraHelpCallback(CameraHelpReason_Dragging, originDest, helpFlags);
					}
					current.x -= previous.x;
					current.y -= previous.y;
					current.z -= previous.z;
					if (current.x * current.x + current.y * current.y + current.z * current.z > dragScale * dragScale)
					{
						current.FastNormalizeInline();
						current *= dragScale;
					}
					if (fabs(pitch) > GrabZoomPitch)
					{
						if ((Distance0x1a8 > GrabZoomMinDistance && MouseDelta.y > 0) ||
						    (Distance0x1a8 < GrabZoomMaxDistance && MouseDelta.y < 0))
						{
							double steepness = GrabZoomPitch - fabs(pitch);
							steepness = steepness > 0.0 ? (steepness < GrabZoomPitch ? steepness : GrabZoomPitch) : 0.0;
							float factor =
								exp((float)-MouseDelta.y / LHSys::TheSystem.screen.height * GrabZoomScale * steepness);
							factor = factor > (1 / 1.03f) ? (factor < 1.13f ? factor : 1.13f) : (1 / 1.03f);
							float change = dt * 200.0f;
							float minDistance = Distance0x1a8 - change;
							float maxDistance2 = change + Distance0x1a8;
							Distance0x1a8 *= factor;
							Distance0x1a8 = Distance0x1a8 > minDistance
							                    ? (Distance0x1a8 < maxDistance2 ? Distance0x1a8 : maxDistance2)
							                    : minDistance;
						}
					}
					originDest = field_0x160 - current;
					focusDest = field_0x16c - current;
					originDest.x -= focusDest.x;
					originDest.y -= focusDest.y;
					originDest.z -= focusDest.z;
					originDest.Normalise();
					originDest *= Distance0x1a8;
					originDest.Add(focusDest);
					LHPoint hitPoint;
					if (LH3DIsland::RayCast(field_0x160, originDest, &hitPoint.x, &hitPoint.z))
					{
						hitPoint.Sub(field_0x160);
						LHPoint path = originDest - field_0x160;
						float   flatDistanceSq = path.x * path.x + path.z * path.z;
						if (flatDistanceSq > CameraExclusion::Margin * CameraExclusion::Margin)
						{
							float margin = CameraExclusion::Margin / sqrt(flatDistanceSq);
							float t = 1.0f;
							if (fabs(path.x) > fabs(path.z))
							{
								if (fabs(path.x) > 0.0001)
								{
									t = hitPoint.x / path.x - margin;
								}
							}
							else if (fabs(path.z) > 0.0001)
							{
								t = hitPoint.z / path.z - margin;
							}
							if (t > 0.0f && t < 1.0f)
							{
								float back = 1.0f - t;
								originDest = originDest - path * back;
								focusDest = focusDest - path * back;
								if (Global_00c5e168)
								{
									CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithGround, originDest, 0);
								}
							}
						}
					}
				}
				local_b4 = 4;
			}
		}
	}

	if ((GGame::g_game->MyInterface()->flags.IsDoubleClicked() && !Global_00c5b0e8) || local_4b)
	{
		if (GetCameraFeatures() & CAMERA_FEATURE_DOUBLE_CLICK)
		{
			// TODO: Meaning of mouse button flag 0x10 unknown.
			if (LHSys::TheSystem.mouse.ButtonPressed & 0x10)
			{
				LHSys::TheSystem.mouse.ButtonPressed &= ~0x10;
			}
			Object* object = GGame::g_game->MyInterface()->interface_collide.object;
			GGame::g_game->MyInterface()->flags.ClearDoubleClicked();
			bool    follow = false;
			LHPoint target;
			int     found;
			if (object != NULL)
			{
				GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, target);
				CameraHelp::CameraHelpCallback(CameraHelpReason_DoubleClickOnObject, originDest, 0);
				found = 1;
				if (object->IsCreature())
				{
					follow = true;
				}
			}
			else
			{
				found = LH3DIsland::RayCastFrom2DPoint(MousePosCurrent, &target.x, &target.z, true, 0.0f);
				if (found)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_DoubleClickOnPos, originDest, 0);
				}
			}
			if (found)
			{
				target.y = LH3DIsland::GetAltitude(LH3DMapCoords(target.x, target.z));
				LHPoint closest;
				LHPoint direction(1.0f, 0.0f, 0.0f);
				if (!CameraExclusion::InsideInclusion(target, direction, &closest, NULL))
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_DoubleClickInIncludedArea, target, 0);
					target = closest;
				}
				if (CameraExclusion::InsideExclusion(target) == true)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_DoubleClickInExcludedArea, target, 0);
				}
				if (target.GetDistance2DSq(MapCentre) < MapSize * MapSize)
				{
					if (!local_4b && !HasFight)
					{
						GArena* found2 = NULL;
						while ((found2 = found2 != NULL ? found2->next.Get() : GGame::g_game->GameLists.arenas.Get()) !=
						       NULL)
						{
							LHPoint arenaPos;
							GLandscape::ConvertMapCoordToLandscapePoint(found2->GetPos(), arenaPos);
							if (arenaPos.GetDistance2D(target) < found2->GetRadius())
							{
								break;
							}
						}
						if (found2 != NULL)
						{
							follow = false;
							StartFight(found2);
						}
					}
					float focusDistance =
						found ? target.GetDistance(ScreenCentreHitPoint) : target.GetDistance(focusDest);
					bool  findBestAngle = true;
					bool  playSound = false;
					float originDistance = target.GetDistance(originDest);
					float flyDistance = originDistance;
					if (originDistance > FlySoundDistance * 1.5f && focusDistance > 10.0f)
					{
						ElapsedTime = 0.0f;
						flyDistance = FlySoundDistance;
						playSound = true;
					}
					else if (originDistance > FlyDistanceMedium * 1.5f)
					{
						ElapsedTime = FlyTime * 0.5f;
						flyDistance = FlyDistanceMedium;
					}
					else
					{
						ElapsedTime = FlyTime * 0.5f;
						flyDistance = originDistance > FlyDistanceNear * 1.5f ? FlyDistanceNear : FlyDistanceClose;
					}
					if (local_4b)
					{
						ElapsedTime = 0.01f;
						flyDistance = 1000.0f;
						findBestAngle = false;
						playSound = true;
					}
					float flyHeading;
					float flyPitch;
					GCamera::GetHeadingAndPitchFromPoints(originDest, focusDest, &flyHeading, &flyPitch);
					if (findBestAngle)
					{
						flyHeading = FindBestAngle(flyHeading, flyDistance, target, flyPitch, NULL);
					}
					focusDest = target;
					flyPitch =
						flyPitch > EIGHTH_PI_F ? (flyPitch < (PI_F / 2.1f) ? flyPitch : PI_F / 2.1f) : EIGHTH_PI_F;
					GCamera::SetPointFromPointDistanceHeadingAndPitch(&originDest, focusDest, flyDistance, flyHeading,
					                                                  flyPitch);
					local_b4 = 3;
					if (ElapsedTime == 0.0f)
					{
						SetupVia(originDest, focusDest, origin, 0.1f);
					}
					if (playSound)
					{
						// TODO: Sound effect 0x2e-0x31 is a random camera whoosh; its enumerator is not recovered.
						GGlobal::Global.audio->PlaySoundEffect(NULL, (GetTickCount() & 3) + 0x2e, 3, 0, 0, 0,
						                                       AUDIO_SFX_BANK_TYPE_IN_GAME);
					}
					if (follow)
					{
						new ("C:\\dev\\MP\\Black\\CameraModeNew3.cpp", 3955)
							CameraModeFollow(GGame::g_game->GetCamera(), object, 1.0f, 0, 0);
					}
				}
			}
		}
	}

	float fightBlend = 0.0f;
	if (MouseButtons != CAMERA_MODE_MOUSE_STATUS_LEFT &&
	    !(MouseButtons == CAMERA_MODE_MOUSE_STATUS_MIDDLE && local_cf) && HasFight && arena != NULL &&
	    arena->Creatures[0] != NULL && arena->Creatures[1] != NULL)
	{
		LH3DCreature* creature1 = arena->Creatures[0]->physical->Creature3d;
		LH3DCreature* creature2 = arena->Creatures[1]->physical->Creature3d;
		fightBlend = camera->time > FightBlendTime
		                 ? FightBlendScale
		                 : camera->time / FightBlendTime * (FightBlendScale - FightBlendStart) + FightBlendStart;
		fightBlend *= 2.5f;
		LHPoint centre = (creature1->position + creature2->position) * 0.5f;
		centre.y += (creature2->GetHeadHeight() + creature1->GetHeadHeight()) * 0.25f;
		if (zoom != 0.0f)
		{
			FightDistance = (creature1->position.GetDistance2D(creature2->position) + creature1->field_0x5228 +
			                 FightDistance * creature2->field_0x5228 + zoom * 0.3f -
			                 creature1->position.GetDistance2D(creature2->position) - creature1->field_0x5228) /
			                creature2->field_0x5228;
		}
		if (FightDistance > FightMaxDistance)
		{
			EndFightNow(0);
		}
		FightDistance =
			FightDistance > 0.0f ? (FightDistance < FightMaxDistance ? FightDistance : FightMaxDistance) : 0.0f;
		Pitch0 = Pitch0 > (PI_F / 13) ? (Pitch0 < (HALF_PI_F - PI_F / 13) ? Pitch0 : HALF_PI_F - PI_F / 13) : PI_F / 13;
		float   fightDistance = creature1->position.GetDistance2D(creature2->position) + creature1->field_0x5228 +
		                        FightDistance * creature2->field_0x5228;
		float   fightYaw = Yaw0;
		LHPoint direction = creature2->position - creature1->position;
		float   heading = field_0x210.GetCurrentValue();
		if (fabs(direction.x) > 0.01 || fabs(direction.z) > 0.01)
		{
			heading = heading_from_direction_vector(direction);
		}
		if (field_0x2d0)
		{
			field_0x240.SetPosition(centre);
			field_0x210.SetPosition(heading);
			field_0x2d0 = false;
		}
		else
		{
			float current = field_0x210.GetCurrentValue();
			field_0x210.SetDestination(NormaliseAngle(NormaliseAngle(heading) - NormaliseAngle(current)) + current,
			                           5.0f);
			field_0x240.SetDestinationWithTime(centre, 5.0f);
		}
		field_0x210.Update(dt);
		field_0x240.Update(dt);
		fightYaw -= field_0x210.GetCurrentValue();
		focusDest = field_0x240.GetCurrentValue();
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&originDest, focusDest, fightDistance, fightYaw, Pitch0);
		Heading0x12c = focusDest;
		local_4a = false;
		local_86 = true;
		local_b4 = 3;
		RotateAroundPoint = false;
	}

	switch (local_b4)
	{
	case 0:
		if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_NONE)
		{
			DragFocusOntoLand(originDest, focusDest);
		}
		break;
	case 1: {
		pitch = pitch > -(PI_F / 6) ? (pitch < maxPitch ? pitch : maxPitch) : -(PI_F / 6);
		LHPoint direction = focusDest - originDest;
		direction.FastNormalizeInline();
		direction *= Length0x1c0;
		direction.Add(originDest);
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&originDest, Heading0x12c, distance, yaw,
		                                                  pitch > -(PI_F / 6) ? (pitch < maxPitch ? pitch : maxPitch)
		                                                                      : -(PI_F / 6));
		focusDest = Heading0x12c;
		if (zoom == 0.0f)
		{
			LHPoint newTarget = focusDest - originDest;
			newTarget.FastNormalizeInline();
			newTarget *= Length0x1c0;
			newTarget.Add(originDest);
			direction.Sub(newTarget);
			Heading0x12c.Add(direction);
			originDest.Add(direction);
			focusDest = Heading0x12c;
		}
		break;
	}
	case 2: {
		if (PerpDistance0xec > 3000.0f)
		{
			MouseTriconFlags = 0x10;
			break;
		}
		float tanHalfFov = tan(LH3DTech::g_camera.fov * 0.5f);
		float aspect = LHSys::TheSystem.screen.height * tanHalfFov / LHSys::TheSystem.screen.width;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&originDest, Heading0x12c, distance, yaw,
		                                                  pitch > -(PI_F / 6) ? (pitch < maxPitch ? pitch : maxPitch)
		                                                                      : -(PI_F / 6));
		LHPoint forward = originDest - Heading0x12c;
		forward.FastNormalizeInline();
		LHPoint up(0.0f, 1.0f, 0.0f);
		LHPoint side = up ^ forward;
		side.FastNormalizeInline();
		up = forward ^ side;
		up.FastNormalizeInline();
		focusDest = Heading0x12c = LastGrabMouseHitPoint +
		                           side * PerpDistance0xec * tanHalfFov * FromScreenCentre.x * 2.0f +
		                           up * PerpDistance0xec * aspect * FromScreenCentre.y * 2.0f;
		originDest = focusDest + forward * PerpDistance0xec;
		break;
	}
	}

	if ((originDest.y < focusDest.y || pitch < 0.0f) && Global_00c5b0ec)
	{
		local_4a = true;
	}
	if (GetCameraFeatures() & CAMERA_FEATURE_AUTO_PITCH)
	{
		local_86 = false;
		if (MouseButtons == CAMERA_MODE_MOUSE_STATUS_NONE || autoPitched)
		{
			pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) + CameraHelp::AutoPitchParam2;
			local_4a = true;
		}
	}
	if (local_4a)
	{
		LHPoint offset = focusDest - originDest;
		originDest = pos;
		focusDest = originDest + offset;
		Heading0x12c = focusDest;
	}
	if (Global_00c5b100.GetCurrentValue() > 0.01f)
	{
		originDest = (field_0x1e0 - Origin0x1ec) * Global_00c5b100.GetCurrentValue() + Origin0x1ec;
		focusDest = (field_0x1f8 - Heading0x204) * Global_00c5b100.GetCurrentValue() + Heading0x204;
	}

	LHPoint savedOrigin = originDest;
	LHPoint savedFocus = focusDest;
	bool    pushed = false;
	local_4b = false;
	LHPoint forward = originDest - focusDest;
	forward.FastNormalizeInline();
	LHPoint up(0.0f, 1.0f, 0.0f);
	LHPoint side = up ^ forward;
	side.FastNormalizeInline();
	up = forward ^ side;
	up.FastNormalizeInline();
	LHMatrix matrix;
	matrix._41 = originDest.x;
	matrix._42 = originDest.y;
	matrix._43 = originDest.z;
	float margin = CameraExclusion::Margin;
	matrix._11 = margin * side.x;
	matrix._12 = margin * side.y;
	matrix._13 = margin * side.z;
	matrix._21 = margin * up.x;
	matrix._22 = margin * up.y;
	matrix._23 = margin * up.z;
	matrix._31 = margin * forward.x;
	matrix._32 = margin * forward.y;
	matrix._33 = margin * forward.z;
	if (UseExclusions)
	{
		for (CameraExclusion* exclusion = NearbyExclusions; exclusion != NULL; exclusion = exclusion->NextNearby)
		{
			float dx = exclusion->pos.x - originDest.x;
			float dz = exclusion->pos.z - originDest.z;
			float radius = CameraExclusion::Margin + exclusion->Radius;
			if (dz * dz + dx * dx < radius * radius)
			{
				LHPoint offset = originDest - exclusion->pos;
				if (exclusion->type == EXCLUSIONTYPE_CYLINDER)
				{
					float flatDistance = max(sqrt(offset.z * offset.z + offset.x * offset.x), 0.01);
					float scale = (CameraExclusion::Margin + exclusion->Radius) / flatDistance;
					offset.x *= scale;
					offset.z *= scale;
					LHPoint moved = exclusion->pos + offset;
					originDest.x = moved.x;
					originDest.z = moved.z;
					pushed = true;
					if (Global_00c5e168)
					{
						CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithExcludedArea, originDest, 0);
					}
				}
			}
		}
	}
	const char* ringPointCounts = "\x01\x04\x06\x04\x01";
	for (int ring = -2; ring <= 2; ring++)
	{
		float ringAngle = ring * QUARTER_PI_F;
		float ringCos = cos(ringAngle);
		float ringSin = sin(ringAngle);
		int   count = ringPointCounts[ring + 2];
		float fCount = count;
		for (int j = 0; j < count; j++)
		{
			float   angle = j * TWO_PI / fCount;
			LHPoint local(sin(angle) * ringCos, ringSin, cos(angle) * ringCos);
			LHPoint world;
			matrix.SetTranslateOnly(originDest);
			world = matrix * local;
			if (GetAltitude(world) > world.y)
			{
				if (Global_00c5e168)
				{
					CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithGround, originDest, 0);
				}
				LHPoint normal;
				LHPoint ground(world);
				SetAltitudeAndNormal(ground, normal);
				float depth = normal.DotProduct(ground - world);
				float maxDepth = CameraExclusion::Margin * 0.5f;
				if (depth > maxDepth)
				{
					depth = maxDepth;
				}
				LHPoint push = normal * depth;
				originDest.Add(push);
				pushed = true;
				float along = push.DotProduct(forward);
				if (along > 0.0f)
				{
					focusDest.Add(push * along);
					local_4b = true;
				}
			}
		}
	}

	if (CameraModeNew3::DrawForceField)
	{
		LHPoint direction;
		LHPoint closest;
		if (pos.GetDistance2DSq(originDest) < 0.0001f)
		{
			direction = focusDest - originDest;
		}
		else
		{
			direction = pos - originDest;
		}
		LHPoint normal;
		if (!CameraExclusion::InsideInclusion(originDest, direction, &closest, &normal))
		{
			LHPoint toClosest = closest - originDest;
			normal.y = 0.0f;
			toClosest.y = 0.0f;
			toClosest.Normalise();
			normal.Normalise();
			float radius = HandStatus == CAMERA_MODE_HAND_STATUS_PANNING ? 50.0f : 20.0f;
			for (int step = 0; step < 32; step++)
			{
				for (int sign = -1; sign <= 1; sign += 2)
				{
					float   angle = (sign * step) * (PI_F / 32);
					float   s = sin(angle) * radius;
					float   c = cos(angle) * radius;
					LHPoint candidate =
						closest + LHPoint(s * toClosest.x + c * toClosest.z, 0.0f, s * -toClosest.z + c * toClosest.x);
					if (CameraExclusion::InsideInclusion(candidate, direction, NULL, NULL) == true)
					{
						closest = candidate;
						goto found;
					}
				}
			}
		found:
			focusDest -= originDest;
			Heading0x12c -= originDest;
			originDest.x = closest.x;
			originDest.z = closest.z;
			pushed = true;
			Heading0x12c.Add(originDest);
			focusDest.Add(originDest);
			local_4b = true;
			Global_00c5e13c = 0.0f;
			if (Global_00c5e168)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithEdgeOfAllowedArea, originDest, 0);
			}
			if (GGame::g_game->MyInterface() != NULL)
			{
				GGame::g_game->MyInterface()->StartImmersion((IMMERSION_EFFECT_TYPE)0x2a, 0x80000000);
			}
			GGlobal::Global.audio->PlaySoundEffect(NULL, *LH3DTech::GetCameraPosition(), 0x2b, 2, 0, 0, 1,
			                                       AUDIO_SFX_BANK_TYPE_IN_GAME);
			LH3DCameraChecker::Create(100.0f, originDest, 1.0f, 400, false);
			if (HandStatus != CAMERA_MODE_HAND_STATUS_PANNING)
			{
				field_0x2f0 = 1;
			}
			if (ForceField != NULL)
			{
				ForceField->PulseForceField(originDest, 200.0f);
			}
		}
		else
		{
			Global_00c5e13c = closest.GetDistance2D(originDest);
		}
	}
	else
	{
		Global_00c5e13c = 1.0e10f;
	}

	if (local_b4 == 3 && pushed)
	{
		focusDest = savedFocus + (originDest - savedOrigin);
		local_4a = false;
		local_86 = false;
		local_4b = true;
		pushed = true;
	}
	if (!GGame::g_game->GetCamera()->field_0x78 && originDest.y < groundAltitude)
	{
		originDest.y = groundAltitude;
		pushed = true;
	}
	if (UseExclusions && originDest.y > maxAltitude)
	{
		float   over = originDest.y - maxAltitude;
		LHPoint direction = focusDest - originDest;
		if (fabs(direction.y) > 0.01)
		{
			direction.Mul(-over / direction.y);
			originDest.Add(direction);
			focusDest.Add(direction);
			Heading0x12c.Add(direction);
		}
		pushed = true;
		local_4b = true;
		if (Global_00c5e168)
		{
			CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithCeiling, originDest, 0);
		}
	}
	if (!local_86)
	{
		focusDest = focusDest - originDest;
		focusDest.Normalise();
		focusDest.Mul(HeadingDistance);
		focusDest.Add(originDest);
	}
	if (!GGlobal::Global.field_0x2d2ac)
	{
		originDest -= MapCentre;
		focusDest -= MapCentre;
		float distanceSq = originDest.z * originDest.z + originDest.x * originDest.x;
		if (distanceSq > MapSize * MapSize)
		{
			float scale = MapSize / sqrt(distanceSq);
			originDest.x *= scale;
			originDest.z *= scale;
			local_4b = true;
			if (Global_00c5e168)
			{
				CameraHelp::CameraHelpCallback(CameraHelpReason_CollideWithEdgeOfAllowedArea, originDest, 0);
			}
		}
		originDest.Add(MapCentre);
		focusDest.Add(MapCentre);
	}
	LHPoint move = originDest - pos;
	float   moveSq = move.GetNormeSq();
	float   maxMove = MaxMoveSpeed * HeadingDistance * dt;
	maxMove = 300.0f > maxMove ? 300.0f : maxMove;
	if (moveSq > maxMove * maxMove && local_b4 != 3 && zoom == 0.0f)
	{
		move.Normalise();
		originDest = pos + move * maxMove;
		pushed = true;
	}
	else if (!pushed && !local_4b)
	{
		goto skipClick;
	}
	if (local_b4 != 2 && local_b4 != 4)
	{
		if (local_4b)
		{
			Heading0x12c = focusDest;
		}
		Distance0x1a8 = focusDest.GetDistance(originDest);
		if (Hit0x148)
		{
			PerpDistance0xec = CalcPerpDistance(originDest, focusDest, LastGrabMouseHitPoint);
		}
		PerpDistance0xec = max(CameraExclusion::Margin + 0.1f, PerpDistance0xec);
		Distance0x1a8 = max(CameraExclusion::Margin + 0.1f, Distance0x1a8);
		UpdateClickParams(originDest, focusDest, true);
	}
skipClick:
	if (RotateAroundPoint)
	{
		focusDest = Heading0x12c = RotatePoint;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&originDest, focusDest, focusDest.GetDistance(originDest),
		                                                  yaw, pitch);
	}
	ElapsedTime += dt;
	float flyTime = FlyTimeMin;
	if (local_4b)
	{
		flyTime *= 2.0f;
	}
	if (pushed)
	{
		flyTime *= 2.0f;
	}
	if (ElapsedTime <= FlyAccelerateTime)
	{
		flyTime = (flyTime - FlyTime) * (ElapsedTime / FlyAccelerateTime) + FlyTime;
	}
	float originTime = flyTime;
	float focusTime = flyTime;
	if ((GetCameraFeatures() & CAMERA_FEATURE_AUTO_PITCH) && local_4a)
	{
		originTime = 1.0f;
		focusTime = 1.0f;
	}
	if (fightBlend != 0.0f)
	{
		originTime = fightBlend;
		focusTime = fightBlend;
	}
	if (_isnan(originDest.x) || _isnan(originDest.y) || _isnan(originDest.z) || _isnan(focusDest.x) ||
	    _isnan(focusDest.y) || _isnan(focusDest.z))
	{
		originDest = FallbackOrigin;
		focusDest = FallbackHeading;
	}
	else
	{
		if (!(originDest == FallbackOrigin))
		{
			FallbackOrigin = originDest;
		}
		if (!(focusDest == FallbackHeading))
		{
			FallbackHeading = focusDest;
		}
	}
	if (originDest.GetDistanceSq(focusDest) < 0.1f)
	{
		originDest.x += 1.0f;
	}
	if (field_0x100)
	{
		if (FlyTime * 0.5f < camera->CameraOriginZoomer.x.CurrentTime)
		{
			camera->CameraOriginZoomer.SetDestinationWithTime(field_0x110, FlyTime);
			camera->CameraHeadingZoomer.SetDestinationWithTime(field_0x11c, FlyTime);
			ElapsedTime = 0.0f;
			field_0x100 = 0;
		}
		else if (field_0x101)
		{
			LHPoint via = (field_0x104 - origin) * 2.0f;
			if (via.y > 0.0f)
			{
				via.y = 0.0f;
			}
			camera->CameraOriginZoomer.SetDestinationWithTime(field_0x104, FlyTime * 0.9f);
			camera->CameraHeadingZoomer.SetDestinationWithTime(field_0x11c, FlyTime * 0.9f);
			field_0x101 = 0;
		}
	}
	else
	{
		camera->CameraOriginZoomer.SetDestinationWithTime(originDest, originTime);
		camera->CameraHeadingZoomer.SetDestinationWithTime(focusDest, focusTime);
	}
	this->origin = camera->CameraOriginZoomer.GetCurrentValue();
	heading = camera->CameraHeadingZoomer.GetCurrentValue();
	if (!strafed)
	{
		SmoothStrafeSpeedX(0.0f, dt);
	}
	if (!local_bc)
	{
		SmoothStrafeSpeedZ(0.0f, dt);
	}
	if (!GGame::g_game->MyInterface()->IsPlayBack(0))
	{
		// TODO: Original name unknown; whether the game was windowed last frame.
		static bool WasWindowed;
		if (LHSys::TheSystem.WindowedMode)
		{
			MousePosCurrent = MousePosPrevious;
			LHSys::TheSystem.mouse.SetPosition(&MousePosCurrent);
		}
		else if (WasWindowed)
		{
			LHSys::TheSystem.mouse.SetPosition(&MousePosCurrent);
		}
		WasWindowed = LHSys::TheSystem.WindowedMode;
	}
}

void CameraExclusion::DrawCircleXZ(LHPoint& centre, float radius_x, float radius_z, float offset, LH3DColor* color)
{
	LHPoint previous = LHPoint(0.0f, offset, radius_z) + centre;
	for (int i = 1; i <= 16; i++)
	{
		float   angle = i * EIGHTH_PI_F;
		LHPoint next = LHPoint(sin(angle) * radius_x, offset, cos(angle) * radius_z) + centre;
		LH3DLine::AddLine(previous, next, color, NULL);
		previous = next;
	}
}

void CameraExclusion::DrawCircleXY(LHPoint& centre, float radius_x, float radius_y, float offset, LH3DColor* color)
{
	LHPoint previous = LHPoint(0.0f, radius_y, offset) + centre;
	for (int i = 1; i <= 16; i++)
	{
		float   angle = i * EIGHTH_PI_F;
		LHPoint next = LHPoint(sin(angle) * radius_x, cos(angle) * radius_y, offset) + centre;
		LH3DLine::AddLine(previous, next, color, NULL);
		previous = next;
	}
}

void CameraExclusion::DrawCircleYZ(LHPoint& centre, float radius_y, float radius_z, float offset, LH3DColor* color)
{
	LHPoint previous = LHPoint(offset, 0.0f, radius_z) + centre;
	for (int i = 1; i <= 16; i++)
	{
		float   angle = i * EIGHTH_PI_F;
		LHPoint next = LHPoint(offset, sin(angle) * radius_y, cos(angle) * radius_z) + centre;
		LH3DLine::AddLine(previous, next, color, NULL);
		previous = next;
	}
}

void CameraExclusion::DrawSphere(LHPoint& centre, float radius, LH3DColor* color)
{
	DrawCircleXZ(centre, radius, radius, 0.0f, color);
	DrawCircleXY(centre, radius, radius, 0.0f, color);
	DrawCircleYZ(centre, radius, radius, 0.0f, color);
}

void CameraExclusion::DrawSphere(LHPoint& centre, float radius, float height, LH3DColor* color)
{
	DrawCircleXZ(centre, radius, radius, 0.0f, color);
	DrawCircleXY(centre, radius, height, 0.0f, color);
	DrawCircleYZ(centre, height, radius, 0.0f, color);
}

void ResetCameraModeNew3()
{
	CameraExclusion::RemoveAll();
	CameraExclusion::ResetExclusionFile(0);
	CameraModeNew3::NoCross = 0;
	Global_00c5b0c4 = 0.0f;
	Global_00c5e13c = BigDistance;
	Global_00c5b0c8 = 0.0f;
	Global_00c5b0cc = 0.0f;
	Global_00c5b0d0 = 0.0f;
	Global_00c5b0d4 = 0.0f;
	Global_00c5e168 = false;
	Global_00c5b0b8 = 0;
	Global_00c5b0bc = 0;
	Global_00c5b0c0 = 0;
	Global_00c5b0e8 = 0;
	Global_00c5b0ec = 0;
	Global_00c5b0b0 = 0;
	Global_00c5b0b4 = 0;
	Global_00c5b0f0 = 0;
	Global_00c5b100.SetPosition(0.0f);
	Global_00c5b0f4 = 0;
	memset(Global_00c5b0d8, 0, sizeof(Global_00c5b0d8));
	Global_00c5b0ac = 0.0f;
}
