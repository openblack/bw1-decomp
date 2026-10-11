#include "LoaderAnon.h"

#include <string.h> /* For strcpy */

#define LOADER_ANON_DEFAULT_LOAD_ID "DMPJGR"

LoaderAnon::LoaderAnon(char* detail_prefix, char* enum_prefix, char* load_id)
{
	strcpy(DetailPrefix, detail_prefix);
	strcpy(EnumPrefix, enum_prefix);
	if (load_id == NULL)
	{
		load_id = LOADER_ANON_DEFAULT_LOAD_ID;
	}
	strcpy(LoadId, load_id);
	Groups = NULL;
	CurrentGroup = NULL;
	ErrorCount = 0;
	NumTruncatedStrings = 0;
	UseLoadId = true;
	Cursor = TextBuffer;
}
