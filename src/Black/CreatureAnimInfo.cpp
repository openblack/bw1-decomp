#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include <stdio.h>  /* For fopen, fgetc, fscanf, sprintf */
#include <string.h> /* For strcpy */

#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct AnimInfo */
#include <Lionhead/LHFile/ver3.0/LHFilePath.h>     /* For g_GameDriveCharacter */

char CatInfo::Read(FILE* file)
{
	char c;

	do
	{
		c = fgetc(file);
	} while (c != 'E' && c != '=' && c != '-' && c != 'C' && c != 'N' && c != 'L' && c != 'W' && c != 'D');

	AnimationCount = 0;
	while (c != 'E' && c != '=')
	{
		switch (c)
		{
		case 'D':
			AnimationType[AnimationCount] = AnimInfoType_D;
			break;
		case 'C':
			AnimationType[AnimationCount] = AnimInfoType_C;
			break;
		case 'N':
			AnimationType[AnimationCount] = AnimInfoType_N;
			break;
		case 'L':
			AnimationType[AnimationCount] = AnimInfoType_L;
			break;
		case 'W':
			AnimationType[AnimationCount] = AnimInfoType_W;
			break;
		default:
			AnimationType[AnimationCount] = AnimInfoType_Minus;
			break;
		}
		fscanf(file, "%s", AnimationNames[AnimationCount]);
		AnimationCount++;

		do
		{
			c = fgetc(file);
		} while (c != 'E' && c != '=' && c != '-' && c != 'C' && c != 'N' && c != 'L' && c != 'W' && c != 'D');
	}
	return c;
}

bool32_t AnimInfo::Read(char* spec_filename)
{
	char  path[256];
	FILE* file;
	char  c;

	CategoryCount = 0;

	strcpy(path, spec_filename);
	file = fopen(path, "rt");
	if (file == NULL)
	{
		sprintf(path, GAME_DRIVE_PATH_FORMAT, g_GameDriveCharacter, spec_filename);
		file = fopen(path, "rt");
		if (file == NULL)
		{
			return false;
		}
	}

	fscanf(file, "%d", &SpecVersion);
	do
	{
		c = fgetc(file);
	} while (c != 'E' && c != '=' && c != '-');
	if (c == EOF)
	{
		return false;
	}

	while (c != 'E')
	{
		fscanf(file, "%s", CategoryNames[CategoryCount]);
		c = Categories[CategoryCount].Read(file);
		CategoryCount++;
	}
	fclose(file);
	return true;
}
