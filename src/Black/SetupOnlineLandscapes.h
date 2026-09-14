#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LH3DTexture;
struct LH3DMaterial;
class SetupList;
class SetupEdit;
class SetupBigButton;
class SetupButton;
class SetupStaticText;

class SetupOnlineLandscapes : public DialogBoxBase
{
public:
	// Recovered prefix only, NOT allocation-ready. The original has fields through +0x4c4.
	// The embedded download object's construction/lifetime at +0x10 remains unrecovered.
	uint8_t          field_0x10[0x70];
	LH3DTexture*     Thumbnail; /* 0x80 */
	LH3DMaterial*    ThumbnailMaterial;
	uint8_t          field_0x88[0x10];
	SetupList*       LandscapeList; /* 0x98 */
	SetupList*       DescriptionList;
	SetupEdit*       Help;
	SetupBigButton*  Back;
	SetupButton*     Download;
	SetupStaticText* LandscapeLabel;
	SetupStaticText* DescriptionLabel; /* 0xb0 */

	// Override methods

	// BW1W120 00547ff0 BW1M100 105cbb10 SetupOnlineLandscapes::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005482a0 BW1M100 105cbaa0 SetupOnlineLandscapes::Destroy(void)
	virtual void Destroy();
	// BW1W120 00549910 BW1M100 105c9f10 SetupOnlineLandscapes::Show(void)
	virtual void Show();
	// BW1W120 005482b0 BW1M100 105cba40 SetupOnlineLandscapes::InitControls(void)
	virtual void InitControls();

	// BW1W120 00548920. Descriptive name; nonvirtual ECX method.
	void ReleaseThumbnail();
};

static_assert(offsetof(SetupOnlineLandscapes, Thumbnail) == 0x80, "Online landscape texture offset is incorrect");
static_assert(offsetof(SetupOnlineLandscapes, LandscapeList) == 0x98, "Online landscape list offset is incorrect");
static_assert(offsetof(SetupOnlineLandscapes, DescriptionLabel) == 0xb0, "Online landscape label offset is incorrect");

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
