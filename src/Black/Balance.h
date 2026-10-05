#ifndef BW1_DECOMP_BALANCE_INCLUDED_H
#define BW1_DECOMP_BALANCE_INCLUDED_H

#include <string.h> /* For _stricmp */

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */
#include <chlasm/Enum.h>         /* For NUM_REACTION_FUNCTIONS */

#include "MapCellConstants.h" /* For MetresPerMapCell */

// Forward Declares

class GScriptOpposingCreature;
class ReactionInfo;

class GInfoFileTable
{
public:
	enum
	{
		FILE_NAME_LENGTH = 50
	};

	// Static data

	// BW1W120 009cb628
	static char InfoFiles[][FILE_NAME_LENGTH];

	// Static methods

	// BW1W120 inlined BW1M119 0118cda0
	static char* GetInfoFile() { return InfoFiles[0]; }
	// BW1W120 inlined BW1M119 0118cad0
	static int GetNoOfElementsInInfoFileTable()
	{
		int count = 0;
		while (true)
		{
			if (_stricmp(GetInfoFile() + count * FILE_NAME_LENGTH, "") == 0)
				return count;
			count++;
		}
	}
	// BW1W120 0042fb90 BW1M119 0118ca60
	static char* JustFileName(char* path, unsigned long length)
	{
		for (unsigned long i = length; i > 0; i--)
		{
			if (path[i] == '\\')
				return path + i + 1;
		}
		return path;
	}
	// BW1W120 inlined BW1M119 inlined
	static int FindInfoFile(const char* name)
	{
		for (int index = GetNoOfElementsInInfoFileTable(); index >= 0; index--)
		{
			if (_stricmp(name, GetInfoFile() + index * FILE_NAME_LENGTH) == 0 ||
			    _stricmp(name, JustFileName(GetInfoFile() + index * FILE_NAME_LENGTH, FILE_NAME_LENGTH)) == 0)
				return index;
		}
		return -1;
	}
};

class GInfoArrays
{
public:
	// BW1W120 00d4f6b0
	static ReactionInfo ReactionInfos[NUM_REACTION_FUNCTIONS];
	// BW1W120 00d95e50
	static GScriptOpposingCreature ScriptOpposingCreatures[CREATURE_TYPE_LAST];
};

inline float GetBalanceMetresPerMapCell()
{
	return MetresPerMapCell;
}

// BW1W120 0042b400 BW1M119 0118cde0
void generate_variable_ammendments(void);
// BW1W120 0042b460 BW1M119 0118ad30
void load_variables(void);

#endif /* BW1_DECOMP_BALANCE_INCLUDED_H */
