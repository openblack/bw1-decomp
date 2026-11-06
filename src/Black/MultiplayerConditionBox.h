#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MultiplayerConditionBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x2c];

	// Override methods

	// BW1W120 0056eef0 BW1M119 inlined
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0056f260 BW1M119 inlined
	virtual void Destroy();
	// BW1W120 0056f460 BW1M119 inlined
	virtual void InitControls();

	// BW1W120 00d06058
	static MultiplayerConditionBox* Instance;

	// BW1W120 0056f7d0 BW1M119 null
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053be70 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, x, y);
		}
	}
};

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
