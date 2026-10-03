#ifndef BW1_DECOMP_EDITOR_HUG_INCLUDED_H
#define BW1_DECOMP_EDITOR_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <list>
#include <map>

#include <chlasm/LHKeyBoard.h>                 /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/Prss.h> /* For struct Prss */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct MouseInput;

// The wall hugging test editor: a villager is sent from Start to Goal and the cells it passes through are kept in Path
// for Display to draw.
class EditorHug : public Prss
{
public:
	MapCoords            Start;
	MapCoords            Goal;
	int                  field_0x28;
	int                  field_0x2c;
	std::list<MapCoords> Path;

	// Drawn by Display and cleared by PrssKey, but nothing in the release build adds to it.
	// BW1W120 00cc6340 BW1M119 null
	static std::map<MapCoords, int> DebugCells;

	// Override methods

	// BW1W120 0051f180 BW1M119 null
	virtual Prss* ProcessTurn();
	// BW1W120 0051f200 BW1M119 null
	virtual void Display();
	// BW1W120 0060db30 BW1M119 null
	virtual void PrssKey(LH_KEY key, uint16_t param_2);
	// BW1W120 0051f3b0 BW1M119 null
	virtual void PrssMouse(MouseInput* param_1);
	// BW1W120 0051f5b0 BW1M119 null
	virtual void ClickFunction(int param_1, int param_2, int param_3);
};
static_assert(sizeof(EditorHug) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_EDITOR_HUG_INCLUDED_H */
