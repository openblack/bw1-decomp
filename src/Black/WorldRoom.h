#ifndef BW1_DECOMP_WORLD_ROOM_INCLUDED_H
#define BW1_DECOMP_WORLD_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For wchar_t */
#include <stdint.h> /* For uint16_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */
#include <re_common.h>                          /* For bool32_t */

#include "TempleRoom.h" /* For class TempleRoom */

#define WORLD_ROOM_ENGINE_PATH "data\\citadel\\engine\\"
#define WORLD_ROOM_ICON_PATH   "data\\citadel\\icons\\"

#define WORLD_ROOM_CONTROL_COUNT        11
#define WORLD_ROOM_SIGN_FADE            (0xff * 4)
#define WORLD_ROOM_TEXT_ID_OFFSET       4
#define WORLD_ROOM_CI_TOOLTIP_ID_OFFSET 8

#define WORLD_ROOM_DOOR_DRAW_THRESHOLD   0.01f
#define WORLD_ROOM_MARKER_SCALE          0.05f
#define WORLD_ROOM_MARKER_GLOW_SIZE      0.65f
#define WORLD_ROOM_MARKER_GLOW_LIFT      0.1f
#define WORLD_ROOM_MARKER_GLOW_RED       0x7c
#define WORLD_ROOM_MARKER_GLOW_GREEN     0x6e
#define WORLD_ROOM_MARKER_GLOW_BLUE      0x61
#define WORLD_ROOM_MARKER_LIGHTEN_AMOUNT 64
#define WORLD_ROOM_SPELL_MARKER_SCALE    0.1f
#define WORLD_ROOM_SPELL_HEIGHT_OFFSET   0.5f
#define WORLD_ROOM_SPELL_SEED_SIZE       0.1f

#define WORLD_ROOM_ANIMATION_TIME_SCALE  0.001f
#define WORLD_ROOM_WATER_COLOUR_SCALE    208
#define WORLD_ROOM_WATER_ALPHA_AMPLITUDE 32.0
#define WORLD_ROOM_WATER_ALPHA_BASE      128.0
#define WORLD_ROOM_WATER_U_SPEED         0.01f
#define WORLD_ROOM_WATER_BASE_V_SPEED    0.007f
#define WORLD_ROOM_WATER_UPPER_V_SPEED   0.005f
#define WORLD_ROOM_UPPER_WATER_OFFSET    0.05f

#define WORLD_ROOM_EXIT_GLOW_DELAY           2.2
#define WORLD_ROOM_EXIT_GLOW_INITIAL_RATE    1.5
#define WORLD_ROOM_EXIT_GLOW_KNEE            2.0f
#define WORLD_ROOM_EXIT_GLOW_ACCELERATION    1.5f
#define WORLD_ROOM_EXIT_GLOW_LIMIT           4.0f
#define WORLD_ROOM_EXIT_GLOW_BRIGHTNESS_RATE 127.0f
#define WORLD_ROOM_EXIT_GLOW_ALPHA_RATE      75.0f
#define WORLD_ROOM_EXIT_GLOW_SPREAD_RATE     7.0f
#define WORLD_ROOM_EXIT_GLOW_START_X         80.0f
#define WORLD_ROOM_EXIT_GLOW_END_X           60.0f
#define WORLD_ROOM_EXIT_GLOW_HEIGHT          5.0f
#define WORLD_ROOM_EXIT_GLOW_START_HEIGHT    20.0f
#define WORLD_ROOM_EXIT_GLOW_END_HEIGHT_BASE 20.0f
#define WORLD_ROOM_EXIT_GLOW_END_HEIGHT_RATE 10.0f
#define WORLD_ROOM_EXIT_GLOW_END_RADIUS_RATE 15.0f

#define WORLD_ROOM_STATISTICS_ZOOM_THRESHOLD 0.5
#define WORLD_ROOM_INFLUENCE_SCALE_DIVISOR   80.0f
#define WORLD_ROOM_SCROLL_CAMERA_PITCH       (-30.0f)

#define WORLD_ROOM_BUTTON_PITCH_MAGIC      95
#define WORLD_ROOM_BUTTON_PITCH_NORMAL     100
#define WORLD_ROOM_BUTTON_PITCH_INFLUENCE  105
#define WORLD_ROOM_BUTTON_PITCH_CHALLENGES 108
#define WORLD_ROOM_BUTTON_PITCH_CREATURE   110

enum WORLD_ROOM_DRAW_PASS
{
	WORLD_ROOM_DRAW_PASS_GLOW = 0,
	WORLD_ROOM_DRAW_PASS_MARKERS,
	WORLD_ROOM_DRAW_PASS_COUNT
};

// Forward Declares

struct CallbackData;
struct ControlDescriptionData;
struct GatheringText;
class GameOSFile;
struct LH3DMaterial;
struct LH3DMesh;
class LH3DObject;
struct LH3DTexture;
class MiniMap;
class SpellSeedGraphic;
struct SubmeshName;

class WorldRoom : public TempleRoom
{
public:
	// BW1W120 00c2a478
	static bool32_t ShowInfluence;
	// BW1W120 00c2a4ec
	static bool32_t DisplayCitadel;
	// BW1W120 00c2a4f0
	static bool32_t DisplayMagicActivity;
	// BW1W120 00c2a4f4
	static bool32_t DisplayInfluence;
	// BW1W120 00c2a4f8
	static bool32_t DisplayCreature;
	// BW1W120 00c2a4fc
	static bool32_t DisplayChallenges;
	// BW1W120 00e36158
	static wchar_t WorldStatisticsText[8192];
	// BW1W120 00e3a194
	static float MarkerAngle;
	// BW1W120 00e3a198
	static SubmeshName* ScrollSubMesh;
	// BW1W120 00e3a19c
	static unsigned long ScrollNumLines;
	// BW1W120 00e3a1a0
	static long ScrollOffset;
	// BW1W120 00e3a1a4
	static LH3DTexture* ScrollTexture;
	// BW1W120 00e3a1a8
	static LH3DMaterial* ScrollMaterial;
	// BW1W120 00e3a1ac
	static bool32_t ShowStatistics;
	// BW1W120 00e3a1b0
	static bool32_t RoomsAvailable;

	// BW1W120 00c2a7a8
	static bool32_t (*ControlSetCallbacks[WORLD_ROOM_CONTROL_COUNT])(CallbackData& data);
	// BW1W120 00c2a7d4
	static bool32_t (*ControlGetCallbacks[WORLD_ROOM_CONTROL_COUNT])(CallbackData& data);
	// BW1W120 00c2a800
	static ControlDescriptionData Controls[WORLD_ROOM_CONTROL_COUNT];

	// Override methods

	// BW1W120 0079d260 BW1M119 015ac2a0
	virtual bool32_t IsAvailable() { return true; }
	// BW1W120 0079e140 BW1M119 015ae6d0
	virtual void DrawAdditional(bool reflection);
	// BW1W120 0079f430 BW1M119 015ac8a0
	virtual void PreDraw();
	// BW1W120 0079e280 BW1M119 015adec0
	virtual void Draw();
	// BW1W120 0079e250 BW1M119 015ae650
	virtual void Update();
	// BW1W120 0079e900 BW1M119 015ade40
	virtual void UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message);
	// BW1W120 0079e920 BW1M119 015adde0
	virtual void UpdateKeyboard(LH_KEY key, uint16_t modifiers);
	// BW1W120 0079d280 BW1M119 015afa80
	virtual void InitEngine();
	// BW1W120 0079d6c0 BW1M119 015af900
	virtual void CloseEngine();
	// BW1W120 0079f440 BW1M119 015ac6d0
	virtual void PreToolTipProcess();

	// Virtual methods

	// BW1W120 0079d7a0 BW1M119 015af7d0
	virtual void DrawDoors();

	LH3DMesh*                       WaterMesh;
	LH3DObject*                     WaterObject;
	LH3DMesh*                       CitadelIconMesh;
	LH3DObject*                     CitadelIconObject;
	LH3DMesh*                       CreatureIconMesh;
	LH3DObject*                     CreatureIconObject;
	LH3DMesh*                       ChallengeIconMesh;
	LH3DObject*                     ChallengeIconObject;
	uint8_t                         field_0x10c[0x40];
	LHLinkedList<SpellSeedGraphic*> SpellSeedGraphics;
	MiniMap*                        Map;
	GatheringText*                  Font;
	uint32_t                        Unused;

	// Static methods

	// BW1W120 0079f250 BW1M119 015ac8f0
	static void MakeScrollText(bool32_t use_scroll_submesh);
	// BW1W120 0079f640 BW1M119 015ac4d0
	static void SaveButtonConfig(GameOSFile& file);
	// BW1W120 0079f790 BW1M119 015ac2e0
	static void LoadButtonConfig(GameOSFile& file);
	// BW1W120 0079f0e0 BW1M119 015acb30
	static bool32_t WorldScrollGet(CallbackData& data);
	// BW1W120 0079f090 BW1M119 015acd80
	static bool32_t WorldScrollSet(CallbackData& data);
	// BW1W120 0079f050 BW1M119 015ace30
	static bool32_t WorldButtonDisplayChallengesUncheckedGet(CallbackData& data);
	// BW1W120 0079f010 BW1M119 015acee0
	static bool32_t WorldButtonDisplayChallengesCheckedGet(CallbackData& data);
	// BW1W120 0079efd0 BW1M119 015acf90
	static bool32_t WorldButtonDisplayInfluenceUncheckedGet(CallbackData& data);
	// BW1W120 0079ef90 BW1M119 015ad040
	static bool32_t WorldButtonDisplayInfluenceCheckedGet(CallbackData& data);
	// BW1W120 0079ef50 BW1M119 015ad0f0
	static bool32_t WorldButtonDisplayMagicActivityUncheckedGet(CallbackData& data);
	// BW1W120 0079ef10 BW1M119 015ad1a0
	static bool32_t WorldButtonDisplayMagicActivityCheckedGet(CallbackData& data);
	// BW1W120 0079eed0 BW1M119 015ad250
	static bool32_t WorldButtonDisplayCreatureUncheckedGet(CallbackData& data);
	// BW1W120 0079ee90 BW1M119 015ad300
	static bool32_t WorldButtonDisplayCreatureCheckedGet(CallbackData& data);
	// BW1W120 0079ee50 BW1M119 015ad3b0
	static bool32_t WorldButtonDisplayCitadelUncheckedGet(CallbackData& data);
	// BW1W120 0079ee10 BW1M119 015ad450
	static bool32_t WorldButtonDisplayCitadelCheckedGet(CallbackData& data);
	// BW1W120 0079eda0 BW1M119 015ad500
	static bool32_t WorldButtonDisplayChallengesUncheckedSet(CallbackData& data);
	// BW1W120 0079ed20 BW1M119 015ad5e0
	static bool32_t WorldButtonDisplayChallengesCheckedSet(CallbackData& data);
	// BW1W120 0079ec90 BW1M119 015ad6c0
	static bool32_t WorldButtonDisplayInfluenceUncheckedSet(CallbackData& data);
	// BW1W120 0079ec20 BW1M119 015ad7c0
	static bool32_t WorldButtonDisplayInfluenceCheckedSet(CallbackData& data);
	// BW1W120 0079ebb0 BW1M119 015ad8a0
	static bool32_t WorldButtonDisplayMagicActivityUncheckedSet(CallbackData& data);
	// BW1W120 0079eb30 BW1M119 015ad980
	static bool32_t WorldButtonDisplayMagicActivityCheckedSet(CallbackData& data);
	// BW1W120 0079eab0 BW1M119 015ada60
	static bool32_t WorldButtonDisplayCreatureUncheckedSet(CallbackData& data);
	// BW1W120 0079ea30 BW1M119 015adb40
	static bool32_t WorldButtonDisplayCreatureCheckedSet(CallbackData& data);
	// BW1W120 0079e9c0 BW1M119 015adc20
	static bool32_t WorldButtonDisplayCitadelUncheckedSet(CallbackData& data);
	// BW1W120 0079e940 BW1M119 015add00
	static bool32_t WorldButtonDisplayCitadelCheckedSet(CallbackData& data);

	// Constructors

	// BW1W120 0079d1c0 BW1M119 015affa0
	WorldRoom();
	// BW1W120 0079d270 BW1M119 null
	~WorldRoom();

	// Non-virtual methods

	// BW1W120 0079d830 BW1M119 015af590
	void DrawCitadel(bool glow);
	// BW1W120 0079dab0 BW1M119 015af340
	void DrawCreature(bool glow);
	// BW1W120 0079dcc0 BW1M119 null
	void DrawWorldMapColours();
	// BW1W120 0079dcd0 BW1M119 015af2d0
	void CreateWorldMapColours();
	// BW1W120 0079dce0 BW1M119 015af1c0
	void DestroyWorldMapColours();
	// BW1W120 0079df50 BW1M119 015aecc0
	void CreateWorldMapSpells();
	// BW1W120 0079df90 BW1M119 015aebe0
	void DrawWorldMapSpells();
	// BW1W120 0079e000 BW1M119 015aeb10
	void DestroyWorldMapSpells();
	// BW1W120 0079e030 BW1M119 015ae8b0
	void DrawChallenges(bool glow);
	// BW1W120 0079f5d0 BW1M119 inlined
	void ResetStatics();
};

#endif /* BW1_DECOMP_WORLD_ROOM_INCLUDED_H */
