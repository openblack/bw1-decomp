#ifndef BW1_DECOMP_BW_GAME_SPY_PCH_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_PCH_INCLUDED_H

#include "LayerCommunication.h"

#include <stdio.h> /* For sprintf, sscanf */
// Only BW1W120's unit carries the std::ctype<unsigned short>::id guard of the STL headers.
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string> /* For the std::ctype<unsigned short>::id guard */
#endif
#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy, strcmp, strnicmp */
#include <wchar.h>  /* For wcslen, wcscpy, wcsncpy */

#endif /* BW1_DECOMP_BW_GAME_SPY_PCH_INCLUDED_H */
