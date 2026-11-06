#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class StatsBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x30];
	bool    ShowCurrentGame; /* 0x40 */
	uint8_t field_0x41[0x2f];
	void*   StatsBuffer; /* 0x70 */

	// Override methods

	// BW1W120 0056d370 BW1M119 01325f50
	virtual void Init(uint32_t background_style, uint32_t tall_background,
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
};

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
