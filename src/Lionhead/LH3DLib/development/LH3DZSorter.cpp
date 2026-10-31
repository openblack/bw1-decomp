#include "LH3DZSorter.h"

#include "LH3DMem.h" /* For LH3DMem */

LH3DZSorter::ZObject* g_z_first;
int                   g_z_object_count;

unsigned long LH3DZSorter::UserData;

LH3DZSorter::ZObject g_z_objects[LH3D_Z_SORTER_CAPACITY];

LH3DZSorter* __fastcall LH3DZSorter::Create(long max_objects)
{
	LH3DZSorter* sorter = (LH3DZSorter*)LH3DMem::Alloc(
		sizeof(LH3DZSorter) + LH3D_Z_SORTER_CAPACITY * (LH3D_Z_SORTER_ENTRY_SIZE + 2 * LH3D_Z_SORTER_POINTER_SIZE));
	if (sorter != NULL)
	{
		sorter->Entries = (uint8_t*)sorter + sizeof(LH3DZSorter);
		sorter->SortedList = (uint8_t*)sorter->Entries + LH3D_Z_SORTER_CAPACITY * LH3D_Z_SORTER_ENTRY_SIZE;
		sorter->MaxCount = LH3D_Z_SORTER_MAX_COUNT;
		sorter->Count = 0;
		sorter->Scratch = (uint8_t*)sorter->SortedList + LH3D_Z_SORTER_CAPACITY * LH3D_Z_SORTER_POINTER_SIZE;
	}
	return sorter;
}

void LH3DZSorter::Release()
{
	LH3DMem::Free(this);
}

void LH3DZSorter::CloseSort() {}

void __fastcall LH3DZSorter::NewZObject(void* object, DrawCallback draw, float distance, unsigned long flags)
{
	if (g_z_object_count >= LH3D_Z_SORTER_CAPACITY)
	{
		return;
	}
	ZObject* newObject = &g_z_objects[g_z_object_count++];
	newObject->Next = NULL;
	newObject->Draw = draw;
	newObject->Object = object;
	newObject->Distance = distance;
	newObject->Flags = flags;
	if (g_z_first != NULL)
	{
		ZObject* previous = NULL;
		ZObject* current = g_z_first;
		bool32_t searching = true;
		while (current != NULL && searching)
		{
			if (current->Distance < distance)
			{
				searching = false;
				if (previous != NULL)
				{
					previous->Next = newObject;
				}
				else
				{
					g_z_first = newObject;
				}
				newObject->Next = current;
			}
			previous = current;
			current = current->Next;
		}
		if (searching)
		{
			previous->Next = newObject;
		}
	}
	else
	{
		g_z_first = newObject;
	}
}

void LH3DZSorter::OpenSort()
{
	g_z_first = NULL;
	g_z_object_count = 0;
}
