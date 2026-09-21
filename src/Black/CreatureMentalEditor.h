#ifndef BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H

class CreatureMentalEditor
{
public:
	static CreatureMentalEditor* Instance; // 00c8dc34, descriptive identifier
	void                         Draw();   // 004df2e0
	// Mac calls this DrawText; the Windows SDK macro gives the emitted DrawTextA spelling.
	static void DrawTextA(const char* text, unsigned long x, unsigned long y, float size, unsigned long red,
	                      unsigned long green, unsigned long blue); // 004df310
	// BW1W120 004df340 BW1M119 01093c10
	static void Update();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H */
