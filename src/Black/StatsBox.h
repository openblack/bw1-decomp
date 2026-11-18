#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GameStatsPackage;
struct StatDetails;
struct SetupBigButton;
struct SetupCheckBox;
struct SetupHLineGraph;
struct SetupHSBarGraph;
struct SetupList;
struct SetupStaticText;
struct SetupTabButton;
struct SetupVBarGraph;

#define STATS_BOX_NUM_TABS        6
#define STATS_BOX_NUM_BAR_GRAPHS  3
#define STATS_BOX_NUM_LINE_GRAPHS 2
#if defined(VERSION_BW1WCI)
#define STATS_BOX_NUM_SCORE_GRAPHS 8
#else
#define STATS_BOX_NUM_SCORE_GRAPHS 4
#endif
#define STATS_BOX_MAX_DETAILS        256
#define STATS_BOX_CREATURE_TURN_TIME 0x2000
#define STATS_BOX_TYKE_LIGHTEN       0x80

enum STATS_BOX_TAB
{
	STATS_BOX_TAB_GAME_OVER = 0,
	STATS_BOX_TAB_SUMMARY = 1,
	STATS_BOX_TAB_CREATURE = 2,
	STATS_BOX_TAB_PEOPLE = 3,
	STATS_BOX_TAB_MIRACLES = 4,
	STATS_BOX_TAB_GENERAL = 5,
};

// How a detail row writes its value: on its own, against the row's maximum, or as a percentage. A row whose
// maximum is the largest of its values writes it on its own.
enum SHOWMAXTYPE
{
	SHOWMAXTYPE_NONE = 0,
	SHOWMAXTYPE_FRACTION = 1,
	SHOWMAXTYPE_PERCENT = 2,
	SHOWMAXTYPE_LARGEST = 3,
};

// Whether a detail row draws its values as a bar graph, as text, or as either following the box's check box.
enum GRAPHDISPLAYTYPE
{
	GRAPHDISPLAYTYPE_BAR = 0,
	GRAPHDISPLAYTYPE_TEXT = 1,
	GRAPHDISPLAYTYPE_BAR_OR_TEXT = 2,
};

class StatsBox : public DialogBoxBase
{
public:
	int               CurrentTab;                              /* 0x10 */
	SetupTabButton*   Tabs[STATS_BOX_NUM_TABS];                /* 0x14 */
	SetupStaticText*  TitleText;                               /* 0x2c */
	SetupBigButton*   BackButton;                              /* 0x30 */
	SetupList*        DetailsList;                             /* 0x34 */
	SetupCheckBox*    CheckBoxes[2];                           /* 0x38 */
	bool              ShowCurrentGame;                         /* 0x40 */
	SetupVBarGraph*   BarGraphs[STATS_BOX_NUM_BAR_GRAPHS];     /* 0x44 */
	SetupHLineGraph*  LineGraphs[STATS_BOX_NUM_LINE_GRAPHS];   /* 0x50 */
	SetupHSBarGraph*  ScoreGraphs[STATS_BOX_NUM_SCORE_GRAPHS]; /* 0x58 */
	int               SelectedDetail;
	GameStatsPackage* Package;
	StatDetails*      StatsBuffer;

	// Override methods

	// BW1W120 0056d370 BW1M119 01325f50
	virtual void Init(uint32_t width, uint32_t height,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0056d980 BW1M119 01325ef0
	virtual void Destroy();
	// BW1W120 0056d990 BW1M119 01325e30
	virtual void InitControls();

	// BW1W120 00d06068
	static StatsBox* Instance;

	// BW1W120 0056da00 BW1M119 013254f0
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053be00 BW1M119 015cc470
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, x, y);
		}
	}

	// BW1W120 inlined
	StatsBox() { StatsBuffer = NULL; }

	// BW1W120 0056af90 BW1M119 01328610
	static uint32_t __stdcall DetailsDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max,
	                                      int clip_min, int clip_max);

	// BW1W120 0056aca0 BW1M119 01328e00
	void CopyDetailsToDynamic(int index, SetupVBarGraph* graph);
#if defined(VERSION_BW1WCI)
	// BW1WCI 0057fc40 BW1MCI119 01349290
	void ADDFLOATPLAYER(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
	                    GRAPHDISPLAYTYPE display, bool32_t show_total = true);
	// BW1WCI 0057fe90 BW1MCI119 01349060
	void ADDULONGPLAYER(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display,
	                    bool32_t show_total = true);
	// BW1WCI 00580030 BW1MCI119 01348ca0
	void ADDFLOATPLAYERWITHTYKE(wchar_t* name, float* value, float* tyke_value, int decimal_places, float max,
	                            SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display, bool32_t show_total = true);
	// BW1WCI 00580320 BW1MCI119 01348910
	void ADDULONGPLAYERWITHTYKE(wchar_t* name, unsigned long* value, unsigned long* tyke_value, float max,
	                            SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display, bool32_t show_total = true);
	// BW1WCI 005805d0 BW1MCI119 01348690
	void ADDFLOATSINGLE(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
	                    GRAPHDISPLAYTYPE display, bool32_t show_total = true);
	// BW1WCI 00580780 BW1MCI119 01348260
	void ADDULONGSINGLE(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display,
	                    bool32_t show_total = true);
#else
	// BW1W120 0056ae00 BW1M119 01328bb0
	void ADDFLOATPLAYER(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
	                    GRAPHDISPLAYTYPE display);
	// BW1W120 0056b010 BW1M119 013289a0
	void ADDULONGPLAYER(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display);
	// BW1W120 0056b190 BW1M119 01328740
	void ADDFLOATSINGLE(wchar_t* name, float* value, int decimal_places, float max, SHOWMAXTYPE show_max,
	                    GRAPHDISPLAYTYPE display);
	// BW1W120 0056b330 BW1M119 01328330
	void ADDULONGSINGLE(wchar_t* name, unsigned long* value, float max, SHOWMAXTYPE show_max, GRAPHDISPLAYTYPE display);
#endif
	// BW1W120 0056b4b0 BW1M119 01326900
	void UpdateDetails();
	// BW1W120 0056d220 BW1M119 01326840
	void ClearDetails();
	// BW1W120 0056d270 BW1M119 013265e0
	void SetTab(int tab);
};

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
