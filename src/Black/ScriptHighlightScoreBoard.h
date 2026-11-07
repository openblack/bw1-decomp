#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_SCORE_BOARD_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_SCORE_BOARD_INCLUDED_H

#include "ScriptHighlight.h"     /* For class ScriptHighlight */
#include "ScriptHighlightInfo.h" /* For class GScriptHighlightInfo */

#ifdef VERSION_BW1WCI
inline bool32_t ScriptHighlight::IsScoreBoard()
{
	return GetInfo()->GetType() == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD ||
	       GetInfo()->GetType() == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG;
}
#endif

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_SCORE_BOARD_INCLUDED_H */
