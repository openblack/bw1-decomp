#include "GestureSystemData.h"

#include <string.h> /* For memset */

#include <windows.h> /* For max */

#include <Lionhead/LH3DLib/development/LHRegionF.h>
#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHOSFile */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For LHSys */

#include "GestureConstants.h"
#include "GestureSystem.h"

#define GESTURE_NORMALISED_SIZE       1.0f
#define GESTURE_MIN_NORMALISED_HEIGHT 0.1f

void GestureSystemData::SetToZero()
{
	memset(Samples, 0, sizeof(Samples));
	field_0x64a = 0;
	Gesture = 0;
	CheckAspectRatio = 0;
	AllowReverse = 0;
	CheckDirection = 0;
	SampleCount = 0;
}

void GestureSystemData::CalculateContent(GestureSystem* system)
{
	SetToZero();
	for (int i = 0; i < system->GetPointCount(); i++)
	{
		uint32_t type = i < system->GetPointCount() - 1 ? system->GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;
		if (type != GESTURE_KEY_POINT_TYPE_NONE)
		{
			AddSample(system->GetSampleAt(i));
		}
	}
	CalculateRatio();
}

void GestureSystemData::CalculateContentFromAllSamples(GestureSystem* system)
{
	SetToZero();
	for (int i = 0; i < system->GetPointCount(); i++)
	{
		AddSample(system->GetSampleAt(i));
	}
	CalculateRatio();
}

void GestureSystemData::AddSample(GestureSampleBase* sample)
{
	Samples[SampleCount] = *sample;
	SampleCount++;
}

void GestureSystemData::CalculateTransformedRegion(LHRegionF* region, long start, long end)
{
	float maxX = Samples[start].Position.x;
	float minX = maxX;
	float maxZ = Samples[start].Position.z;
	float minZ = maxZ;
	for (int i = start + 1; i <= end; i++)
	{
		if (Samples[i].Position.x < minX)
		{
			minX = Samples[i].Position.x;
		}
		else if (Samples[i].Position.x > maxX)
		{
			maxX = Samples[i].Position.x;
		}
		if (Samples[i].Position.z < minZ)
		{
			minZ = Samples[i].Position.z;
		}
		else if (Samples[i].Position.z > maxZ)
		{
			maxZ = Samples[i].Position.z;
		}
	}
	region->start.Set(minX, minZ);
	region->end.Set(maxX, maxZ);
}

void GestureSystemData::CalculateTransformedRegion(LHRegionF* region)
{
	CalculateTransformedRegion(region, 0, SampleCount - 1);
}

float GestureSystemData::CalculateRatio(LHRegionF* region)
{
	float height =
		(region->end.Y() - region->start.Y() + 1.0f) * (LHSys::GetScreen().width / (float)LHSys::GetScreen().height);
	return (region->end.X() - region->start.X() + 1.0f) / max(1.0f, height);
}

void GestureSystemData::CalculateRatio()
{
	LHRegionF region;
	CalculateTransformedRegion(&region);
	if (region.end.X() <= GESTURE_NORMALISED_SIZE && region.end.Y() <= GESTURE_NORMALISED_SIZE)
	{
		AspectRatio = region.end.X() / max(region.end.Y(), GESTURE_MIN_NORMALISED_HEIGHT);
	}
	else
	{
		AspectRatio = CalculateRatio(&region);
	}
}

void GestureSystemData::NormaliseSamples()
{
	float     aspect = LHSys::GetScreen().width / (float)LHSys::GetScreen().height;
	LHRegionF region;
	CalculateTransformedRegion(&region);
	if (region.end.X() > GESTURE_NORMALISED_SIZE || region.end.Y() > GESTURE_NORMALISED_SIZE)
	{
		float scale = (region.end.Y() - region.start.Y() + 1.0f) * aspect;
		scale = max(scale, region.end.X() - region.start.X() + 1.0f);
		for (uint8_t i = 0; i < SampleCount; i++)
		{
			Samples[i].Position.x = (Samples[i].Position.x - region.start.X()) / scale;
			Samples[i].Position.z = (Samples[i].Position.z - region.start.Y()) * aspect / scale;
		}
	}
}

void GestureSystemData::NormaliseSamplesAndCalculateRatio()
{
	NormaliseSamples();
	CalculateRatio();
}

int GestureSystemData::GetKeyPointType(long index) const
{
	if (index == 0)
	{
		return GESTURE_KEY_POINT_TYPE_START;
	}
	if (index >= SampleCount - 1)
	{
		return GESTURE_KEY_POINT_TYPE_END;
	}
	if (Samples[index].Turn != 0.0f)
	{
		return GESTURE_KEY_POINT_TYPE_JUNCTION;
	}
	return GESTURE_KEY_POINT_TYPE_NONE;
}

int GestureSystemData::fn_00579090(int param_1, int param_2)
{
	return 0;
}

LH_FILE_RESULT GestureSystemData::Serialise(LHOSFile* file, int saving)
{
	if (saving == 0)
	{
		if (file->ReadChecked(Samples, sizeof(Samples)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(Samples, sizeof(Samples)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&SampleCount, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&SampleCount, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&Gesture, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&Gesture, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&field_0x64a, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&field_0x64a, sizeof(uint32_t)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&CheckDirection, sizeof(CheckDirection)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&CheckDirection, sizeof(CheckDirection)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&AllowReverse, sizeof(AllowReverse)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&AllowReverse, sizeof(AllowReverse)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&CheckAspectRatio, sizeof(CheckAspectRatio)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&CheckAspectRatio, sizeof(CheckAspectRatio)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	if (saving == 0)
	{
		if (file->ReadChecked(&AspectRatio, sizeof(AspectRatio)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	else
	{
		if (file->WriteChecked(&AspectRatio, sizeof(AspectRatio)) != LH_FILE_RESULT_OK)
		{
			return LH_FILE_RESULT_ERROR;
		}
	}
	return LH_FILE_RESULT_OK;
}
