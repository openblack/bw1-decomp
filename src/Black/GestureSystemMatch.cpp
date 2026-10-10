#include "GestureSystemDataList.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h> /* For EighthScale */
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>  /* For PI_OVER_2 */

#include <math.h> /* For fabs */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F, TWO_PI */
#include <Lionhead/LH3DLib/development/LHRegionF.h>

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_camera */
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHCoordF.h>

#include "Camera.h"
#include "Game.h"
#include "GestureConstants.h"
#include "GestureSystem.h"
#include "GestureSystemPacketData.h"
#include "GestureSystemData.h"
#include "GestureSystemResult.h"
#include "Landscape.h"
#include "Utils.h"

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = LH3DTech::g_camera.pos;
}

enum
{
	GESTURE_PACKET_TYPE_POINT = 0,
	GESTURE_PACKET_TYPE_REGION = 2
};

const float GESTURE_THIN_RATIO = 0.15f;
const float GESTURE_WIDE_RATIO = 4.0f;

#define GESTURE_PACKET_SIZE_SCALE 1.05f

GestureSystemData* GestureSystemDataList::FindBestMatch(GestureSystemData* input, GestureSystemResult* result)
{
	float               bestScore = -1.0f;
	GestureSystemData*  best = NULL;
	GestureSystemResult bestResult;
	GestureSystemData*  candidate = Data;
	for (int i = 0; i < Count; i++, candidate++)
	{
		if (candidate->GetMatchScore() > bestScore && MatchGesture(candidate, input, result))
		{
			float score = candidate->GetMatchScore();
			if (score > bestScore)
			{
				best = candidate;
				bestScore = score;
				bestResult = *result;
			}
		}
	}
	*result = bestResult;
	return best;
}

bool32_t GestureSystemDataList::MatchGestureForResult(long gesture, GestureSystemData* input,
                                                      GestureSystemResult* result) const
{
	GestureSystemData* data = Data;
	for (int i = 0; i < Count; i++, data++)
	{
		if (data->Gesture == gesture && MatchGesture(data, input, result))
		{
			return true;
		}
	}
	return false;
}

bool32_t GestureSystemDataList::MatchGestureAt(int index, GestureSystemData* input, GestureSystemResult* result)
{
	GestureSystemData* data = GetData(index);
	if (data != NULL)
	{
		return MatchGesture(data, input, result);
	}
	return false;
}

bool32_t GestureSystemDataList::CheckForGestureRatio(GestureSystemData* stored, GestureSystemData* input,
                                                     GestureSystemResult* result) const
{
	if (stored->CheckAspectRatio)
	{
		LHRegionF region;
		input->CalculateTransformedRegion(&region, result->StartSample, result->EndSample);
		float ratio = GestureSystemData::CalculateRatio(&region);
		if (ratio < GESTURE_THIN_RATIO)
		{
			return stored->AspectRatio < GESTURE_THIN_RATIO;
		}
		if (ratio > GESTURE_WIDE_RATIO)
		{
			return stored->AspectRatio > GESTURE_THIN_RATIO;
		}
		return stored->AspectRatio >= GESTURE_THIN_RATIO && stored->AspectRatio <= GESTURE_WIDE_RATIO;
	}
	return true;
}

bool32_t GestureSystemDataList::MatchGesture(GestureSystemData* stored, GestureSystemData* input,
                                             GestureSystemResult* result) const
{
	if (CheckForGestureRotations(stored, input, result))
	{
		result->Reversed = false;
		result->Gesture = stored->Gesture;
	}
	else if (stored->AllowReverse && CheckForInverseGestureRotations(stored, input, result))
	{
		result->Reversed = true;
		result->Gesture = stored->Gesture;
	}
	else
	{
		result->SetToZero();
		return false;
	}
	result->DataIndex = GetOffset(stored);
	return true;
}

bool32_t GestureSystemDataList::CheckForStartDirection(GestureSystemData* stored, GestureSystemData* input, long index,
                                                       int reversed) const
{
	if (stored->CheckDirection)
	{
		int inputDirection = (uint8_t)input->Samples[index].Direction;
		if (reversed)
		{
			return (uint8_t)(stored->Samples[0].Direction ? GESTURE_DIRECTION_COUNT - stored->Samples[0].Direction
			                                              : 0) == inputDirection;
		}
		return (uint8_t)stored->Samples[0].Direction == inputDirection;
	}
	return true;
}

float GestureSystemDataList::NormaliseAngle(float angle) const
{
	if ((float)fabs(angle) > PI_F)
	{
		if (angle < 0.0f)
		{
			return angle + TWO_PI;
		}
		return angle - TWO_PI;
	}
	return angle;
}

bool32_t GestureSystemDataList::CheckForGestureRotations(GestureSystemData* stored, GestureSystemData* input,
                                                         GestureSystemResult* result) const
{
	for (int start = 1; start < input->GetSampleCount() - 1; start++)
	{
		if (!CheckForStartDirection(stored, input, start - 1, false))
		{
			continue;
		}
		int   inputIndex = start;
		int   storedIndex = 1;
		float error = 0.0f;
		float lastInputTurn;
		float lastStoredTurn;
		while (storedIndex < stored->GetSampleCount() - 1)
		{
			float skippedError;
			float inputStepTurn = 0.0f;
			if (inputIndex < input->GetSampleCount() - 1)
			{
				lastInputTurn = input->Samples[inputIndex].Turn;
				inputStepTurn = lastInputTurn;
				inputIndex++;
			}
			float storedStepTurn = 0.0f;
			if (storedIndex < stored->GetSampleCount() - 1)
			{
				lastStoredTurn = stored->Samples[storedIndex].Turn;
				storedStepTurn = lastStoredTurn;
				storedIndex++;
			}
			error = NormaliseAngle(storedStepTurn - inputStepTurn + error);
			if (inputIndex < input->GetSampleCount() - 1)
			{
				float nextTurn = input->Samples[inputIndex].Turn;
				if ((float)fabs(nextTurn) < GESTURE_WIDE_ANGLE_TOLERANCE ||
				    (float)fabs(lastInputTurn) < GESTURE_WIDE_ANGLE_TOLERANCE)
				{
					skippedError = NormaliseAngle(error - nextTurn);
					if ((float)fabs(skippedError) < (float)fabs(error))
					{
						error = skippedError;
						inputIndex++;
					}
				}
			}
			if (storedIndex < stored->GetSampleCount() - 1)
			{
				float nextTurn = stored->Samples[storedIndex].Turn;
				if ((float)fabs(nextTurn) < GESTURE_WIDE_ANGLE_TOLERANCE ||
				    (float)fabs(lastStoredTurn) < GESTURE_WIDE_ANGLE_TOLERANCE)
				{
					skippedError = NormaliseAngle(nextTurn + error);
					if ((float)fabs(skippedError) < (float)fabs(error))
					{
						storedIndex++;
						error = skippedError;
					}
				}
			}
			if ((float)fabs(error) > GESTURE_DOUBLE_ANGLE_TOLERANCE)
			{
				goto next_start;
			}
		}
		result->StartSample = start - 1;
		result->EndSample = inputIndex;
		if (CheckForGestureRatio(stored, input, result))
		{
			return true;
		}
	next_start:;
	}
	return false;
}

bool32_t GestureSystemDataList::CheckForInverseGestureRotations(GestureSystemData* stored, GestureSystemData* input,
                                                                GestureSystemResult* result) const
{
	for (int start = 1; start < input->GetSampleCount() - 1; start++)
	{
		if (!CheckForStartDirection(stored, input, start - 1, true))
		{
			continue;
		}
		float error = 0.0f;
		int   inputIndex = start;
		int   storedIndex = 1;
		float lastInputTurn;
		float lastStoredTurn;
		while (storedIndex < stored->GetSampleCount() - 1)
		{
			float skippedError;
			float inputStepTurn = 0.0f;
			if (inputIndex < input->GetSampleCount() - 1)
			{
				lastInputTurn = -input->Samples[inputIndex].Turn;
				inputStepTurn = lastInputTurn;
				inputIndex++;
			}
			float storedStepTurn = 0.0f;
			if (storedIndex < stored->GetSampleCount() - 1)
			{
				lastStoredTurn = stored->Samples[storedIndex].Turn;
				storedStepTurn = lastStoredTurn;
				storedIndex++;
			}
			error += storedStepTurn - inputStepTurn;
			if (inputIndex < input->GetSampleCount() - 1)
			{
				float nextTurn = -input->Samples[inputIndex].Turn;
				if ((float)fabs(nextTurn) < GESTURE_WIDE_ANGLE_TOLERANCE ||
				    (float)fabs(lastInputTurn) < GESTURE_WIDE_ANGLE_TOLERANCE)
				{
					skippedError = error - nextTurn;
					if ((float)fabs(skippedError) < (float)fabs(error))
					{
						error = skippedError;
						inputIndex++;
					}
				}
			}
			if (storedIndex < stored->GetSampleCount() - 1)
			{
				float nextTurn = stored->Samples[storedIndex].Turn;
				if ((float)fabs(nextTurn) < GESTURE_WIDE_ANGLE_TOLERANCE ||
				    (float)fabs(lastStoredTurn) < GESTURE_WIDE_ANGLE_TOLERANCE)
				{
					skippedError = nextTurn + error;
					if ((float)fabs(skippedError) < (float)fabs(error))
					{
						storedIndex++;
						error = skippedError;
					}
				}
			}
			if ((float)fabs(error) > GESTURE_DOUBLE_ANGLE_TOLERANCE)
			{
				goto next_start;
			}
		}
		result->StartSample = start;
		result->EndSample = inputIndex - 1;
		if (CheckForGestureRatio(stored, input, result))
		{
			return true;
		}
	next_start:;
	}
	return false;
}

void GestureSystemDataList::CalculateGesturePacket(GestureSystem* system, GestureSystemData* input,
                                                   GestureSystemResult* result, GestureSystemPacketData* packet)
{
	GestureSystemData* gestureData = GetGestureFromResult(result->GetResult());
	packet->field_0x4 = result->IsInverse();
	packet->Gesture = result->GetResult();
	long start;
	long end;
	system->CalculateGestureOffsets(result, &start, &end);
	LHPoint position;
	float   size;
	switch (gestureData->field_0x64a)
	{
	case GESTURE_PACKET_TYPE_POINT:
		position = *system->GetWorldPoint(start);
		size = 1.0f;
		break;
	case GESTURE_PACKET_TYPE_REGION: {
		LHRegionF region;
		system->CalculateTransformedRegion(&region, start, end);
		LHCoordF centre;
		region.CentreCoord(&centre);
		float   height = region.end.Y() - region.start.Y() + 1.0f;
		float   width = region.end.X() - region.start.X() + 1.0f;
		float   extent = max(width, height);
		LHCoord screen;
		screen.Set((long)centre.X(), (long)centre.Y());
		GGame::g_game->landscape.GetLHPointFromScreenCoord(&screen, &position, NULL);
		float   distance = GGame::g_game->GetCamera()->GetDistance(position);
		LHCoord edgeScreen;
		edgeScreen.Set((long)(centre.X() + extent * 0.5f), (long)centre.Y());
		LHPoint edge;
		GUtils::SetPointFromScreenPointAndDistance(&edgeScreen, distance, &edge);
		LHPoint camera;
		GGame::g_game->GetCamera()->GetPosition(camera);
		LHPoint centreOffset = position - camera;
		LHPoint edgeOffset = edge - camera;
		float   angle = GGame::g_game->GetCamera()->CalculateRotationAngleY();
		float   cosAngle = cos(angle);
		float   sinAngle = -sin(angle);
		LHPoint rotatedCentre(centreOffset.x * cosAngle + centreOffset.z * sinAngle, centreOffset.y, centreOffset.z);
		LHPoint rotatedEdge(edgeOffset.x * cosAngle + edgeOffset.z * sinAngle, edgeOffset.y, edgeOffset.z);
		size = (float)fabs(rotatedCentre.x - rotatedEdge.x) * GESTURE_PACKET_SIZE_SCALE;
		break;
	}
	default:
		position = *system->GetWorldPoint(start);
		size = 1.0f;
		break;
	}
	packet->Size = size;
	packet->Position = position;
}
