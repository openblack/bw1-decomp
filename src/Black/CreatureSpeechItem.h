#ifndef BW1_DECOMP_CREATURE_SPEECH_ITEM_INCLUDED_H
#define BW1_DECOMP_CREATURE_SPEECH_ITEM_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h> /* For LHPlayer */

class CreatureSpeechItem
{
public:
	int      StartTime;
	wchar_t* Text;
	LHPlayer Player;

	// BW1W120 00479520 BW1M119 011df530
	CreatureSpeechItem(wchar_t* text, LHPlayer* player);

	// BW1W120 004795b0 BW1M119 011df490
	~CreatureSpeechItem();
};

#endif /* BW1_DECOMP_CREATURE_SPEECH_ITEM_INCLUDED_H */
