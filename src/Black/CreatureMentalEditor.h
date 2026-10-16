#ifndef BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H

class CreatureMental;
struct LHPixel16;
struct MapCoords;

class CreatureMentalEditor
{
public:
	// BW1W120 004df2c0 BW1M119 01264470
	CreatureMentalEditor(CreatureMental* mental);
	// BW1W120 004df2d0 BW1M119 012643f0
	~CreatureMentalEditor();

	// BW1W120 004df270 BW1M119 null
	void InitialiseIcons();
	// BW1W120 004df280 BW1M119 null
	void ReleaseIcons();
	// BW1W120 004df290 BW1M119 null
	void Refresh();
	// BW1W120 004df2a0 BW1M119 null
	void Process();
	// BW1W120 004df2b0 BW1M119 012644c0
	int ProcessHand(const MapCoords& coords, int, int);
	// BW1W120 004df2e0 BW1M119 012643b0
	void Draw();
	// BW1W120 004df2f0 BW1M119 null
	void Draw3D();
	// BW1W120 004df300 BW1M119 null
	void ProcessGameTurn();
	// BW1W120 004df310 BW1M119 01264360
	static void DrawTextA(const char* text, unsigned long x, unsigned long y, float size, unsigned long red,
	                      unsigned long green, unsigned long blue);
	// BW1W120 004df320 BW1M119 01264310
	static void DrawLine(unsigned long x0, unsigned long y0, unsigned long x1, unsigned long y1, LHPixel16& colour);
	// BW1W120 004df330 BW1M119 null
	static void UpdateDraw();
	// BW1W120 004df340 BW1M119 01093c10
	static void Update();

	// BW1W120 00c8dc30 BW1M119 null
	static CreatureMental* Mind;
	// BW1W120 00c8dc34 BW1M119 null
	static CreatureMentalEditor* Instance;
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_EDITOR_INCLUDED_H */
