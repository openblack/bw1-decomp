#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "GameTimeConstants.h"         /* For SecondsPerYear */
#include "CellSize.h"                  /* For CellSize */
#include "Serialise.h"

#include <windows.h> /* For min, OPENFILENAME, GetOpenFileName, GetSaveFileName */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>       /* For LHSys::TheSystem */

#include "ColourConstants.h" /* For White */
#include "Game.h"            /* For GGame::g_game */
#include "MapCoords.h"       /* For struct JustMapXZ, struct JustWholeMapXZ, struct MapCoords */

void Archive::Flush()
{
	if (UsingFile)
	{
		File.Write(Buffer, BufferPos, NULL);
	}
	else
	{
		char* data = NEW(27) char[BufferPos];
		memcpy(data, Buffer, BufferPos);
		MemoryBlocks.AddToEnd(NEW(29) ArchiveMemoryBlocks(data, BufferPos));
		MemoryPos += BufferPos;
	}
	BufferPos = 0;
}

void Archive::Refill()
{
	unsigned long remaining = sizeof(Buffer) - BufferPos;
	if (remaining != 0)
	{
		memcpy(Buffer, &Buffer[BufferPos], remaining);
	}
	if (UsingFile)
	{
		File.Read(&Buffer[sizeof(Buffer)] - BufferPos, BufferPos, NULL);
	}
	else
	{
		memcpy(&Buffer[sizeof(Buffer)] - BufferPos, *Memory + MemoryPos, min(BufferPos, MemoryLength - MemoryPos));
		MemoryPos += BufferPos;
	}
	BufferPos = 0;
}

void DeleteGame()
{
	GGame::g_game->Delete();
	GGame::g_game = NULL;
}

Archive& Archive::operator<<(unsigned char value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(unsigned char*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(signed char value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(signed char*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(unsigned short value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(unsigned short*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(short value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(short*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(unsigned long value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(unsigned long*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(long value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(long*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(int value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(int*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(char value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator<<(float value)
{
	Size += sizeof(value);
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Flush();
	}
	*(float*)&Buffer[BufferPos] = value;
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(unsigned char& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(unsigned char*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(signed char& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(signed char*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(unsigned short& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(unsigned short*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(short& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(short*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(unsigned long& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(unsigned long*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(long& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(long*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(int& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(int*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(char& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

Archive& Archive::operator>>(float& value)
{
	if (BufferPos + sizeof(value) > sizeof(Buffer))
	{
		Refill();
	}
	value = *(float*)&Buffer[BufferPos];
	BufferPos += sizeof(value);
	return *this;
}

void Archive::Serialise(MapCoords& coords)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		*this << (unsigned long)coords.WholeX();
		*this << (unsigned long)coords.WholeZ();
		*this << coords.Altitude();
		break;
	case ARCHIVE_DIRECTION_LOAD:
		unsigned long value;
		*this >> value;
		coords.SetWholeX(value);
		*this >> value;
		coords.SetWholeZ(value);
		*this >> value;
		coords.SetAltitude(value);
		break;
	}
}

void Archive::Serialise(JustWholeMapXZ& coords)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		*this << (long)coords.x;
		*this << (long)coords.z;
		break;
	case ARCHIVE_DIRECTION_LOAD:
		*this >> (long&)coords.x;
		*this >> (long&)coords.z;
		break;
	}
}

void Archive::Serialise(JustMapXZ& coords)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		*this << coords.x;
		*this << coords.z;
		break;
	case ARCHIVE_DIRECTION_LOAD:
		*this >> coords.x;
		*this >> coords.z;
		break;
	}
}

void Archive::Serialise(LHCoord& coord)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		*this << coord.X();
		*this << coord.Y();
		break;
	case ARCHIVE_DIRECTION_LOAD:
		*this >> (long&)coord.x;
		*this >> (long&)coord.y;
		break;
	}
}

void Archive::Serialise(LHPoint& point)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		*this << point.x;
		*this << point.y;
		*this << point.z;
		break;
	case ARCHIVE_DIRECTION_LOAD:
		*this >> point.x;
		*this >> point.y;
		*this >> point.z;
		break;
	}
}

void Archive::Serialise(Base*& base)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		if (base == NULL)
		{
			*this << (unsigned char)ARCHIVE_POINTER_TYPE_NULL << (unsigned long)0;
		}
		break;
	case ARCHIVE_DIRECTION_LOAD:
		unsigned char type;
		*this >> type;
		if (type != ARCHIVE_POINTER_TYPE_NO_ID)
		{
			unsigned long id;
			*this >> id;
			if (id == 0)
			{
				base = NULL;
			}
		}
		break;
	}
}

void Archive::Serialise(BaseInfo*& info)
{
	switch (Direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		if (info == NULL)
		{
			*this << (unsigned char)ARCHIVE_POINTER_TYPE_NULL << (unsigned long)0;
		}
		break;
	case ARCHIVE_DIRECTION_LOAD:
		unsigned char type;
		*this >> type;
		if (type != ARCHIVE_POINTER_TYPE_NO_ID)
		{
			unsigned long id;
			*this >> id;
			if (id == 0)
			{
				info = NULL;
			}
		}
		break;
	}
}

char* ChooseSavedGame(ARCHIVE_DIRECTION direction)
{
	OPENFILENAME dialog;
	dialog.lStructSize = sizeof(dialog);
	dialog.hwndOwner = LHSys::TheSystem.screen.MsWindowHandle;
	dialog.hInstance = NULL;
	dialog.lpstrFilter = NULL;
	dialog.lpstrCustomFilter = NULL;
	dialog.nMaxCustFilter = 0;
	dialog.nFilterIndex = 1;
	dialog.lpstrFile = "Untitled";
	dialog.nMaxFile = SAVED_GAME_FILE_NAME_SIZE;
	dialog.lpstrFileTitle = NULL;
	dialog.nMaxFileTitle = SAVED_GAME_FILE_NAME_SIZE;
	dialog.lpstrInitialDir = ".";
	dialog.lpstrTitle = "Saved Games";
	dialog.Flags = 0;
	dialog.nFileOffset = 0;
	dialog.nFileExtension = 0;
	dialog.lpstrDefExt = NULL;
	dialog.lCustData = 0;
	dialog.lpfnHook = NULL;
	dialog.lpTemplateName = NULL;
	switch (direction)
	{
	case ARCHIVE_DIRECTION_SAVE:
		GetSaveFileName(&dialog);
		break;
	case ARCHIVE_DIRECTION_LOAD:
		GetOpenFileName(&dialog);
		break;
	}
	for (int i = 0; dialog.lpstrFile[i] != '\0'; i++)
	{
		if (dialog.lpstrFile[i] == '.')
		{
			dialog.lpstrFile[i] = '\0';
		}
	}
	LHSys::TheSystem.mouse.Buttons &= ~(LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN);
	return dialog.lpstrFile;
}
