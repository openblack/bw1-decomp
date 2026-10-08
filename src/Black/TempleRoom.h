#ifndef BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H
#define BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For wchar_t */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>

#include "BindableAction.h"   /* For enum BINDABLE_ACTIONS */
#include "CameraHelpTypes.h"  /* For enum KEYALIGN */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

enum TempleRoomsEnum
{
	TEMPLE_ROOM_WORLD = 0x0,
	TEMPLE_ROOM_CREATURE = 0x1,
	TEMPLE_ROOM_CHALLENGE = 0x2,
	TEMPLE_ROOM_UNIVERSE = 0x3,
	TEMPLE_ROOM_GAME_OPTIONS = 0x4,
	TEMPLE_ROOM_SAVE_GAME = 0x5,
	TEMPLE_ROOM_CREDITS = 0x6,
	TEMPLE_ROOM_COUNT = 0x7
};

// Forward Declares

class CPController;
struct GatheringText;
class GlowManager;
struct InnerCamera;
struct LH3DMaterial;
struct LH3DMesh;
class LH3DObject;
struct LH3DTexture;
struct SubMeshDrawData;
struct SubmeshName;
struct Zoomer3d;

struct CallbackData
{
	int           Visible;
	unsigned long SubMesh;
	int           Highlighted;
	float         U0;
	float         V0;
	float         U1;
	float         V1;
	LH3DMaterial* Material;
	int           ScrollAmount;
};

struct ControlDescriptionData
{
	char Name[0x40];
};
static_assert(sizeof(ControlDescriptionData) == 0x40, "Data type is of wrong size");

struct InnerRoom
{
	uint32_t     field_0x0;
	uint32_t     field_0x4;
	uint32_t     field_0x8;
	float        field_0xc;
	uint8_t      field_0x10;
	LH3DMesh*    Mesh;
	LH3DObject*  Object;
	uint32_t     field_0x1c;
	uint32_t     field_0x20;
	GlowManager* Glow;
	uint32_t     field_0x28;

	// Constructors

	// BW1W120 00795030 BW1M119 01544ee0
	InnerRoom();

	// Non-virtual methods

	// BW1W120 007954a0 BW1M119 015442d0
	void DrawGlow(bool reflection);
	// BW1W120 00795430 BW1M119 01544520
	void DrawFloor(int alpha);
	// BW1W120 00795310 BW1M119 01544630
	void Draw(bool reflection, SubMeshDrawData* sub_mesh_data, int num_sub_meshes);
};

class TempleRoom
{
public:
	// BW1W120 00c2a1c0
	static BINDABLE_ACTIONS ToolTipAction;
	// BW1W120 00c2a1c4
	static unsigned long ToolTipText;
	// BW1W120 00e36140
	static KEYALIGN ToolTipAlign;
	// BW1W120 00e36138
	static GatheringText* ScrollFont;

	// Virtual methods

	// First slot is __purecall in the Windows table; derived rooms supply IsAvailable.
	virtual bool32_t IsAvailable() = 0;
	// BW1W120 0079a230 BW1M119 01546280
	virtual void DrawAdditional(bool reflection);
	// BW1W120 00799f80 BW1M119 01546600
	virtual void PreDraw();
	// BW1W120 00799fe0 BW1M119 01546340
	virtual void Draw();
	// BW1W120 00799ed0 BW1M119 015467c0
	virtual void DrawHand();
	// BW1W120 00799e60 BW1M119 015468c0
	virtual void Update();
	// BW1W120 0079a3a0 BW1M119 01545990
	virtual void UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message);
	// BW1W120 0079a5a0 BW1M119 01545900
	virtual void UpdateKeyboard(LH_KEY key, uint16_t modifiers);
	// BW1W120 0079a290 BW1M119 015461a0
	virtual void TriggerIntroCamera(bool param_1, Zoomer3d* param_2, Zoomer3d* param_3);
	// BW1W120 007989e0 BW1M119 01547fe0
	virtual void InitEngine(char* mesh_name, char* floor_mesh_name, char* lights_name, char* camera_name);
	// BW1W120 00798990 BW1M119 01540910
	virtual void InitEngine();
	// BW1W120 00798af0 BW1M119 01547f50
	virtual void CloseEngine();
	// BW1W120 0078d9a0 BW1M119 0136eea0
	virtual void CalculateTooltipsInsideCitadel(BINDABLE_ACTIONS* action, unsigned long* text, KEYALIGN* align);
	// BW1W120 00799f40 BW1M119 01546780
	virtual void PreToolTipProcess();
	// BW1W120 00799f50 BW1M119 01546700
	virtual void PostToolTipProcess();
	// BW1W120 0079a800 BW1M119 015453c0
	virtual void OnEnterRoom();

	char             name[0x20];
	uint32_t         field_0x24;
	SubMeshDrawData* ControlDrawData;
	int              NumControls;
	uint32_t         field_0x30;
	int32_t          field_0x34;
	int32_t          field_0x38;
	char             HelpScriptName[0x40];
	CPController*    People;
	uint8_t          field_0x80[0x40];
	InnerRoom*       inner_room;
	InnerCamera*     camera;
	int32_t          field_0xc8;
	uint8_t          field_0xcc[0x4];
	LHPoint          field_0xd0;
	uint32_t         field_0xdc;
	bool32_t         EngineInitialised;
	float            field_0xe4;
	float            field_0xe8;

	// Static methods

	// BW1W120 0079a600 BW1M119 01545820
	static void ClearText(wchar_t* text);
	// BW1W120 0079a620 BW1M119 015457c0
	static void EndText(wchar_t* text);
	// BW1W120 0079a640 BW1M119 01545710
	static void AddNewLine(wchar_t* text);
	// BW1W120 0079a910 BW1M119 01549350
	static void AddText(wchar_t* text, unsigned long help_text, unsigned long param_3);
	// BW1W120 0079a6a0 BW1M119 015455f0
	static long FindProperTextOffset(unsigned long num_lines, long offset);
	// BW1W120 007991c0 BW1M119 015469c0
	static unsigned long FormatTextureForScroll(LH3DTexture* texture, GatheringText* font, wchar_t* text,
	                                            unsigned long offset, SubmeshName* sub_mesh);

	// Constructors

	// BW1W120 00798870 BW1M119 01548280
	TempleRoom(const char* name);
	// BW1W120 007989a0 BW1M119 01548160
	~TempleRoom();

	// Non-virtual methods

	// BW1W120 00798350 BW1M119 01548850
	void InitNameScrolls(char** names, int count);
	// BW1W120 00798430 BW1M119 015483d0
	void DrawNameScrolls(int count, int fade, int highlighted, wchar_t** names, unsigned long (*colours)[3],
	                     float param_6, float param_7);
	// BW1W120 00798b30 BW1M119 01547650
	void LoadOptionData(char* file_name, unsigned long count, int (**set_callbacks)(CallbackData&),
	                    int (**get_callbacks)(CallbackData&), ControlDescriptionData* controls);
};

#endif /* BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H */
