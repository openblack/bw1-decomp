#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/MeshIntersect.h> /* For struct MeshIntersect */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "JCMisc.h"        /* For struct TattooInfo */

#define TATTOO_EDITOR_NUM_PICTURES     16
#define TATTOO_EDITOR_NUM_TATTOOS      8
#define TATTOO_EDITOR_COLOUR_DATA_SIZE 0x3000

#define TATTOO_EDITOR_NO_SLOT                0xf
#define TATTOO_EDITOR_LOOK_TIME              1500
#define TATTOO_EDITOR_MAX_IDLE_ACTIONS       10
#define TATTOO_EDITOR_IDLE_TIME              20000
#define TATTOO_EDITOR_FACING_THRESHOLD       -0.2f
#define TATTOO_EDITOR_MAX_HOVER_DISTANCE     0x1000
#define TATTOO_EDITOR_INITIAL_HOVER_DISTANCE 0x7ffffff
#define TATTOO_EDITOR_FACE_TIME              1800
#define TATTOO_EDITOR_CAMERA_TIME_SCALE      0.0003f
#define TATTOO_EDITOR_CAMERA_DAMPING         -8.0f
#define TATTOO_EDITOR_COLOUR_COLUMNS         32
#define TATTOO_EDITOR_COLOUR_ROWS            128

enum TATTOO_EDITOR_CONTROL_ID
{
	TATTOO_EDITOR_CONTROL_ID_ACCEPT = 1,
	TATTOO_EDITOR_CONTROL_ID_CANCEL = 2,
	TATTOO_EDITOR_CONTROL_ID_COLOUR = 5,
	TATTOO_EDITOR_CONTROL_ID_BRIGHTNESS = 6,
	TATTOO_EDITOR_CONTROL_ID_ROTATE = 11,
	TATTOO_EDITOR_CONTROL_ID_PICTURE = 100,
};

class LH3DCreature;
struct SetupBigButton;
struct SetupColourPicker;
struct SetupPicture;

class TattooEditor : public DialogBoxBase
{
public:
	bool               TattooChanged;                                   /* 0x10 */
	SetupBigButton*    AcceptButton;                                    /* 0x14 */
	SetupBigButton*    CancelButton;                                    /* 0x18 */
	SetupBigButton*    RotateButton;                                    /* 0x1c */
	SetupPicture*      Pictures[TATTOO_EDITOR_NUM_PICTURES];            /* 0x20 */
	SetupColourPicker* ColourPicker;                                    /* 0x60 */
	SetupColourPicker* BrightnessPicker;                                /* 0x64 */
	TattooInfo         OriginalTattoos[TATTOO_EDITOR_NUM_TATTOOS];      /* 0x68 */
	TattooInfo         Tattoos[TATTOO_EDITOR_NUM_TATTOOS];              /* 0x88 */
	uint8_t            ColourData[TATTOO_EDITOR_COLOUR_DATA_SIZE];      /* 0xa8 */
	int                DraggedPicture;                                  /* 0x30a8 */
	MeshIntersect      TattooIntersects[TATTOO_EDITOR_NUM_TATTOOS];     /* 0x30ac */
	bool32_t           TattooIntersectValid[TATTOO_EDITOR_NUM_TATTOOS]; /* 0x31ec */
	LH3DCreature*      C3D;                                             /* 0x320c */
	bool               OwnsC3D;                                         /* 0x3210 */
	int                HoveredTattoo;                                   /* 0x3214 */
	int                HoveredTattooX;                                  /* 0x3218 */
	int                HoveredTattooY;                                  /* 0x321c */
	int                HoveredDistance;                                 /* 0x3220 */
	int                field_0x3224;

	// BW1W120 00cd0b70
	static TattooEditor* Instance;
	// BW1W120 00cd06e4
	static int IdleActionTimer;
	// BW1W120 00cd06e0
	static int IdleActionCount;

	// BW1W120 00542510 BW1M119 015c4900
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005427e0 BW1M119 015c48a0
	virtual void Destroy();
	// BW1W120 0053bd20 BW1M119 015ccbc0
	virtual bool CanESCOut() { return false; }
	// BW1W120 005433e0 BW1M119 015c3740
	virtual void InitControls();

	// BW1W120 00543440 BW1M119 015c2a90
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 005427f0 BW1M119 015c44e0
	void CreateFakeCreature();
	// BW1W120 00542a90 BW1M119 015c4220
	void DrawC3D();
	// BW1W120 00542c50 BW1M119 015c3af0
	void UpdateC3D();
	// BW1W120 00543200 BW1M119 015c3800
	void SetC3D(LH3DCreature* creature);
};

static_assert(sizeof(TattooEditor) == 0x3228, "TattooEditor size is incorrect");

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
