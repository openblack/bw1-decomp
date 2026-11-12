#ifndef BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H
#define BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For int32_t, uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LH3DWay.h> /* For class LH3DWay */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Prss.h>    /* For struct Prss */

#define CAMERA_EDITOR_NAME_LENGTH 0x21
#define CAMERA_EDITOR_MAX_TRACKS  50

#define CAMERA_EDITOR_FILE_VERSION     2
#define CAMERA_EDITOR_FILE_HEADER_SIZE 8
#define CAMERA_EDITOR_WAY_TYPE         'c'

#define CAMERA_EDITOR_KEY_DELAY   800
#define CAMERA_EDITOR_BLINK_CYCLE 1000
#define CAMERA_EDITOR_BLINK_HALF  500

#define CAMERA_EDITOR_INPUT_LENGTH  64
#define CAMERA_EDITOR_DEFAULT_SPEED 100
#define CAMERA_EDITOR_TIME_STEPS    15

#define CAMERA_EDITOR_WIDTH_NAME   12
#define CAMERA_EDITOR_WIDTH_SCRIPT 7
#define CAMERA_EDITOR_WIDTH_STEP   6
#define CAMERA_EDITOR_WIDTH_SHORT  4
#define CAMERA_EDITOR_WIDTH_LETTER 3

#define CAMERA_EDITOR_LIST_X            6
#define CAMERA_EDITOR_LIST_Y            20
#define CAMERA_EDITOR_LIST_ROWS         20
#define CAMERA_EDITOR_LIST_COLUMNS      3
#define CAMERA_EDITOR_LIST_PAGE         (CAMERA_EDITOR_LIST_ROWS * CAMERA_EDITOR_LIST_COLUMNS)
#define CAMERA_EDITOR_LIST_COLUMN_CHARS 32
#define CAMERA_EDITOR_LIST_PAD_WIDTH    16
#define CAMERA_EDITOR_LIST_PAD_HEIGHT   84
#define CAMERA_EDITOR_LIST_TEXT_X       4
#define CAMERA_EDITOR_LIST_TEXT_Y       24
#define CAMERA_EDITOR_LIST_TEXT_INDENT  6
#define CAMERA_EDITOR_LIST_LINE_GAP     4

enum CAMERA_EDITOR_MODE
{
	CAMERA_EDITOR_MODE_NORMAL = 0,
	CAMERA_EDITOR_MODE_CHOOSE_SCRIPT = 5,
	CAMERA_EDITOR_MODE_CHOOSE_CAMERA = 8,
	CAMERA_EDITOR_MODE_EDIT_CAMERA = 9,
};

enum CAMERA_EDITOR_BUTTON
{
	CAMERA_EDITOR_BUTTON_NONE = 0,
	CAMERA_EDITOR_BUTTON_SAVE = 1,
	CAMERA_EDITOR_BUTTON_TRY_ME = 2,
	CAMERA_EDITOR_BUTTON_CREATE_SCRIPT = 3,
	CAMERA_EDITOR_BUTTON_DELETE_SCRIPT = 4,
	CAMERA_EDITOR_BUTTON_CHOOSE_SCRIPT = 5,
	CAMERA_EDITOR_BUTTON_CREATE_CAMERA = 6,
	CAMERA_EDITOR_BUTTON_DELETE_CAMERA = 7,
	CAMERA_EDITOR_BUTTON_CHOOSE_CAMERA = 8,
	CAMERA_EDITOR_BUTTON_EDIT_CAMERA = 9,
	CAMERA_EDITOR_BUTTON_SPEED = 10,
	CAMERA_EDITOR_BUTTON_INSERT = 11,
	CAMERA_EDITOR_BUTTON_UP_TENTH = 12,
	CAMERA_EDITOR_BUTTON_UP_ONE = 13,
	CAMERA_EDITOR_BUTTON_UP_TEN = 14,
	CAMERA_EDITOR_BUTTON_DOWN_TENTH = 15,
	CAMERA_EDITOR_BUTTON_DOWN_ONE = 16,
	CAMERA_EDITOR_BUTTON_DOWN_TEN = 17,
	CAMERA_EDITOR_BUTTON_TARGET = 18,
	CAMERA_EDITOR_BUTTON_POSITION = 19,
	CAMERA_EDITOR_BUTTON_AXIS_X = 20,
	CAMERA_EDITOR_BUTTON_AXIS_Y = 21,
	CAMERA_EDITOR_BUTTON_AXIS_Z = 22,
	CAMERA_EDITOR_BUTTON_PREVIOUS_TRACK = 23,
	CAMERA_EDITOR_BUTTON_NEXT_TRACK = 24,
};

enum CAMERA_EDITOR_AXIS
{
	CAMERA_EDITOR_AXIS_X,
	CAMERA_EDITOR_AXIS_Y,
	CAMERA_EDITOR_AXIS_Z,
};

class GCameraEditor : public Prss
{
public:
	struct CameraBin
	{
		LHPoint Position;
		LHPoint Focus;
		float   field_0x18;
		float   Speed;
	};

	struct TName
	{
		char Name[CAMERA_EDITOR_NAME_LENGTH];

		// BW1W120 004459f0 BW1M119 011a46a0
		bool32_t After(TName* other);
	};

	struct InfoTrack;

	struct CameraInfo
	{
		TName       Name;
		CameraBin   Camera; /* 0x24 */
		InfoTrack*  Track;  /* 0x44 */
		CameraInfo* Next;   /* 0x48 */

		// BW1W120 004459d0 BW1M119 inlined
		bool32_t After(CameraInfo* other);
		// BW1W120 00447290 BW1M119 inlined
		int GetIndex();
		// BW1W120 00445e50 BW1M119 inlined
		void UpdateOverride();
		// BW1W120 00445930 BW1M119 011a4760
		static void BubbleSort();
	};

	struct InfoTrack
	{
		int               Id;
		int               NumCameras;
		int               Time;
		float             Speed;
		InfoTrack*        Next;
		CameraInfo**      Cameras; /* 0x14 */
		LHPoint           Position;
		LHPoint           Focus;
		LH3DWay*          PositionWay; /* 0x30 */
		LH3DWay*          FocusWay;
		LH3DWay::Running* PositionRunning;
		LH3DWay::Running* FocusRunning;

		// BW1W120 004462c0 BW1M119 inlined
		void GetName(char* name);
		// BW1W120 00446350 BW1M119 inlined
		void AddCamera(CameraInfo* camera);
		// BW1W120 004465e0 BW1M119 inlined
		void Rebuild();
		// BW1W120 00446700 BW1M119 inlined
		void RemoveCamera(CameraInfo* camera);
		// BW1W120 004471f0 BW1M119 inlined
		void Renumber(int index);
		// BW1W120 00446450 BW1M119 011a4230
		void Draw();
	};

	struct ScriptInfo
	{
		TName       Name;
		int         NumCameras; /* 0x24 */
		float       Speeds[CAMERA_EDITOR_MAX_TRACKS];
		int         Times[CAMERA_EDITOR_MAX_TRACKS]; /* 0xf0 */
		CameraInfo* Cameras;                         /* 0x1b8 */
		InfoTrack*  Tracks;
		ScriptInfo* Next; /* 0x1c0 */

		// BW1W120 inlined BW1M119 inlined
		ScriptInfo(char* name);
		// BW1W120 004459b0 BW1M119 inlined
		bool32_t After(ScriptInfo* other);
		// BW1W120 00444db0 BW1M119 inlined
		~ScriptInfo();
		// BW1W120 004458b0 BW1M119 inlined
		static void BubbleSort();
	};

	// BW1W120 00c59cf8
	static GCameraEditor* Instance;
	bool32_t              InputEnabled;
	CAMERA_EDITOR_MODE    Mode;
	int                   ListOffset;
	int                   ListCount;
	bool32_t              MousePressed;
	int                   Selected;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GCameraEditor();

	// Override methods

	// BW1W120 00443bc0 BW1M119 inlined
	virtual Prss* ProcessTurn();
	// BW1W120 00443be0 BW1M119 inlined
	virtual void Display();
	// BW1W120 00445ca0 BW1M119 inlined
	virtual void PrssKey(LH_KEY key, uint16_t modifier);
	// BW1W120 00444570 BW1M119 inlined
	virtual void ClickFunction(int id, int button, int data);
	// BW1W120 004441b0 BW1M119 inlined
	virtual void StringFunction(long id, char* text, int data);

	// Static methods

	// BW1W120 00444f60 BW1M119 inlined
	static GCameraEditor* Create(Prss* parent);
	// BW1W120 00445010 BW1M119 inlined
	static void ProcessInputs();
	// BW1W120 00445050 BW1M119 011a4ef0
	static void FinalDraw();
	// BW1W120 00445190 BW1M119 011a49a0
	static void GetSelected(long count, TName* names);
	// BW1W120 00445530 BW1M119 011a4880
	static void CreateSegFile();
	// BW1W120 004455f0 BW1M119 inlined
	static void Init();
	// BW1W120 00445660 BW1M119 inlined
	static void Destroy();
	// BW1W120 00445a20 BW1M119 inlined
	static void LoadScripts();
	// BW1W120 00445c40 BW1M119 inlined
	static ScriptInfo* GetScript(long index);
	// BW1W120 00445c70 BW1M119 inlined
	static CameraInfo* GetCamera(long index);
	// BW1W120 00445cb0 BW1M119 inlined
	static void DrawCross(LHPoint* point);
	// BW1W120 00445e10 BW1M119 011a4600
	static void Draw3DPart();
	// BW1W120 00445ee0 BW1M119 inlined
	static CameraInfo* AddCamera(char* name, ScriptInfo* script, CameraInfo* source);
	// BW1W120 004460a0 BW1M119 inlined
	static InfoTrack* GetTrack(char* name);
	// BW1W120 00446270 BW1M119 inlined
	static int ParseNumber(char* text, int value);
	// BW1W120 00446810 BW1M119 inlined
	static void AdjustCamera(float delta);
	// BW1W120 00446880 BW1M119 inlined
	static bool32_t IsCommand(char* name);
	// BW1W120 00446920 BW1M119 inlined
	static void ApplyCommand(char* name);
	// BW1W120 00446b30 BW1M119 inlined
	static void SaveSegments(void* data, int size);
	// BW1W120 00446e00 BW1M119 inlined
	static void Save();
	// BW1W120 00446fe0 BW1M119 011a3fb0
	static void LoadCameraFromHD(long index, CameraBin& bin);
};

#endif /* BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H */
