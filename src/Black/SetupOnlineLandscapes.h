#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHMultiplayer/ver4.0/LHFileDownload.h> /* For class LHFileDownload */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>           /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LandscapeDetails;
struct LH3DMaterial;
struct LH3DTexture;
struct SetupBigButton;
struct SetupButton;
struct SetupEdit;
struct SetupList;
struct SetupStaticText;

#define SETUP_ONLINE_LANDSCAPES_THUMBNAIL_DOWNLOADED_COLOUR 0xff
#define SETUP_ONLINE_LANDSCAPES_MAP_DOWNLOADED_COLOUR       0xff0000

enum SETUP_ONLINE_LANDSCAPES_CONTROL_ID
{
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_BACK = 0,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LIST = 2,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_LANDSCAPE_LABEL = 3,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DOWNLOAD = 4,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DESCRIPTION_LIST = 5,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_DESCRIPTION_LABEL = 6,
	SETUP_ONLINE_LANDSCAPES_CONTROL_ID_HELP = 998,
};

class SetupOnlineLandscapes : public DialogBoxBase
{
public:
	enum OLB_STATES
	{
		OLB_STATE_NONE = 0,
		OLB_STATE_DOWNLOADING_THUMBNAIL = 1,
		OLB_STATE_DOWNLOADING_MAP = 2,
		OLB_STATE_DOWNLOADING_LIST = 3,
		OLB_STATE_IDLE = 4,
	};

	// BW1W120 00cd1670
	static SetupOnlineLandscapes* Instance;

	LHFileDownload                  FileDownload;     /* 0x10 */
	int                             DownloadingIndex; /* 0x7c */
	LH3DTexture*                    Thumbnail;        /* 0x80 */
	LH3DMaterial*                   ThumbnailMaterial;
	uint32_t                        field_0x88;
	uint8_t                         field_0x8c[0x4];
	bool32_t                        ChoosingMap;
	OLB_STATES                      State;         /* 0x94 */
	SetupList*                      LandscapeList; /* 0x98 */
	SetupList*                      DescriptionList;
	SetupEdit*                      Help; /* 0xa0 */
	SetupBigButton*                 Back;
	SetupButton*                    Download;
	SetupStaticText*                LandscapeLabel;
	SetupStaticText*                DescriptionLabel; /* 0xb0 */
	LandscapeDetails*               ChosenMap;
	LHLinkedList<LandscapeDetails*> Landscapes; /* 0xb8 */
	uint8_t                         field_0xc0[0x404];
	int                             ThumbnailSize; /* 0x4c4 */

	// BW1W120 00547ff0 BW1M119 015d2610
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005482a0 BW1M119 015d25a0
	virtual void Destroy();
	// BW1W120 00549910 BW1M119 015d09e0
	virtual void Show();
	// BW1W120 005482b0 BW1M119 015d2540
	virtual void InitControls();

	// BW1W120 005482e0 BW1M119 015d1aa0
	bool LoadThumbnail(char* path, SetupBox* box, char16_t* message);
	// BW1W120 00548920 BW1M119 015d19a0
	void ReleaseThumbnail();
	// BW1W120 00548990 BW1M119 015d1720
	bool AnyMapsAvailable();

	// BW1W120 00549930 BW1M119 015d0730
	bool CheckIfWeHaveMap(LandscapeDetails* landscape);

	// BW1W120 00548ab0 BW1M119 015d0a70
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053c620
	~SetupOnlineLandscapes() {}
};
static_assert(sizeof(SetupOnlineLandscapes) == 0x4c8, "Data type is of wrong size");

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
