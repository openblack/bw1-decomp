#include "GestureSystemDataList.h"

#include <windows.h> /* For max */

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For LHReleasedOSFile */

#include "GestureConstants.h"
#include "GestureSystemData.h"

void GestureSystemDataList::Reset()
{
	if (Data != NULL)
	{
		delete[] Data;
		Data = NULL;
	}
	Data = NULL;
	Count = 0;
}

bool32_t GestureSystemDataList::AddData(GestureSystemData* data)
{
	GestureSystemData* oldData = NULL;
	if (Data != NULL)
	{
		oldData = Data;
	}
	Count++;
	Data = new GestureSystemData[Count];
	if (Data == NULL)
	{
		Data = oldData;
		return false;
	}
	GestureSystemData* destination = Data;
	if (oldData != NULL)
	{
		GestureSystemData* source = oldData;
		for (int i = 0; i < Count - 1; i++, source++, destination++)
		{
			*destination = *source;
		}
		delete[] oldData;
	}
	*destination = *data;
	return true;
}

bool32_t GestureSystemDataList::RemoveData(GestureSystemData* data)
{
	int index = data - Data;
	if (index < 0 || index >= Count)
	{
		return false;
	}
	if (Count > 1)
	{
		for (; index < Count - 1; index++)
		{
			Data[index] = Data[index + 1];
		}
		GestureSystemData* oldData = Data;
		Count--;
		Data = new GestureSystemData[Count];
		if (Data == NULL)
		{
			Data = oldData;
			return false;
		}
		for (int i = 0; i < Count; i++)
		{
			Data[i] = oldData[i];
		}
		delete[] oldData;
	}
	else
	{
		if (Data != NULL)
		{
			delete[] Data;
		}
		Data = NULL;
		Count = 0;
	}
	return true;
}

int GestureSystemDataList::CountGesture(uint8_t gesture)
{
	GestureSystemData* data = Data;
	int                count = 0;
	for (int i = 0; i < Count; i++, data++)
	{
		if (data->Gesture == gesture)
		{
			count++;
		}
	}
	return count;
}

void GestureSystemDataList::RenumberGesturesAbove(uint8_t gesture)
{
	GestureSystemData* data = Data;
	for (int i = 0; i < Count; i++, data++)
	{
		if (data->Gesture > gesture)
		{
			data->Gesture--;
		}
	}
}

GestureSystemData* GestureSystemDataList::GetData(int index) const
{
	if (index >= Count || index < 0)
	{
		return NULL;
	}
	return &Data[index];
}

GestureSystemData* GestureSystemDataList::GetGestureFromResult(long gesture) const
{
	for (int i = 0; i < Count; i++)
	{
		GestureSystemData* data = GetData(i);
		if (data != NULL && data->Gesture == gesture)
		{
			return data;
		}
	}
	return NULL;
}

bool32_t GestureSystemDataList::Load(char* path)
{
	LHReleasedOSFile file;
	Reset();
	if (file.Open(path, LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		file.Close();
		return false;
	}
	size_t read;
	if (file.Read(&Count, sizeof(Count), &read) != LH_FILE_RESULT_OK || read != sizeof(Count))
	{
		Reset();
		file.Close();
		return false;
	}
	Data = new GestureSystemData[Count];
	if (Data == NULL)
	{
		Reset();
		file.Close();
		return false;
	}
	GestureSystemData* data = Data;
	for (int i = 0; i < Count; i++, data++)
	{
		if (data->Serialise(&file, 0) == LH_FILE_RESULT_ERROR)
		{
			Reset();
			file.Close();
			return false;
		}
	}
	file.Close();
	return true;
}

int GestureSystemDataList::fn_00579C60(int param_1)
{
	return 0;
}

int GestureSystemDataList::fn_00579C70(int param_1)
{
	return 0;
}

uint8_t GestureSystemDataList::GetHighestGesture()
{
	int     i = 0;
	uint8_t highest = 0;
	for (; i < Count; i++)
	{
		uint8_t gesture = GetData(i)->Gesture;
		highest = max(gesture, highest);
	}
	return highest;
}

int GestureSystemDataList::GetOffset(GestureSystemData* data) const
{
	return data - Data;
}
