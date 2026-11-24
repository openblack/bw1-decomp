#ifndef BW1_DECOMP_WIN_CONDITION_TEMPLATE_INCLUDED_H
#define BW1_DECOMP_WIN_CONDITION_TEMPLATE_INCLUDED_H

#include <list>   /* For std::list */
#include <map>    /* For std::map */
#include <string> /* For std::string */

#include "WinConditionSettings.h" /* For WinConditionSettings */

struct WinConditionTemplate
{
	std::map<int, WinConditionSettings> Conditions;
	std::string                         MapName;

	// BW1W120 00dcbc70 BW1M119 null
	static std::list<WinConditionTemplate*> List;
};

// BW1W120 007760a0 BW1M119 null
void LoadConditionTemplate(const char* file_name);

#endif /* BW1_DECOMP_WIN_CONDITION_TEMPLATE_INCLUDED_H */
