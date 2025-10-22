#ifndef BW1_DECOMP_GLOBALS_INCLUDED_H
#define BW1_DECOMP_GLOBALS_INCLUDED_H

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <d3d.h> /* For IDirect3DDevice7 */
#pragma clang diagnostic pop
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <d3dtypes.h> /* For D3DMATRIX */
#pragma clang diagnostic pop
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <black/AbodeInfo.h> /* For struct GAbodeInfo */
#include <black/CitadelHeartInfo.h> /* For struct GCitadelHeartInfo */
#include <black/DanceInfo.h> /* For struct GDanceInfo */
#include <black/FieldTypeInfo.h> /* For struct GFieldTypeInfo */
#include <black/JCGameBlock.h> /* For struct GameBlock */
#include <black/MagicEffectInfo.h> /* For struct GMagicEffectInfo */
#include <black/MagicInfo.h> /* For struct GMagicInfo */
#include <black/MapCoords.h> /* For struct JustMapXZ */
#include <black/ReactionInfo.h> /* For struct ReactionInfo */
#include <black/ShowNeedsInfo.h> /* For struct GShowNeedsInfo */
#include <black/SpellSeedInfo.h> /* For struct GSpellSeedInfo */
#include <black/TotemStatueInfo.h> /* For struct GTotemStatueInfo */
#include <black/TownDesire.h> /* For struct GTownDesireFunction */
#include <black/TownDesireInfo.h> /* For struct GTownDesireInfo */
#include <black/TribeInfo.h> /* For struct GTribeInfo */
#include <black/VillagerInfo.h> /* For struct DiscipleInfo, struct GVillagerInfo */
#include <black/VillagerStateTableInfo.h> /* For struct GVillagerStateTableInfo */
#include <black/WorshipSiteInfo.h> /* For struct GWorshipSiteInfo */
#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LH3DIsland.h> /* For struct LandBlock */
#include <lionhead/lh3dlib/development/LHMatrix.h> /* For struct LHMatrix */
#include <lionhead/lhlib/ver5.0/LHScript.h> /* For struct LHScriptCommandX_c_ */
#include <reversing_utils/re_common.h> /* For RTL_CRITICAL_SECTION, bool32_t */

// Forward Declares

struct Animal__StateTable;
struct CircleHugStateInfoT;
struct CircleHugStateInfo_field_0x44_node_list;
struct FrontEnd;
struct GGame;
struct GGameInfo;
struct GGlobal;
struct GPlayer;
struct GSpellIconInfo;
struct GTownInfo;
struct GameThingWithPos;
struct GameThing_t;
struct GatheringText;
struct HelpTextDataBase;
struct InfoTransform;
struct LH3DCamera;
struct LH3DMaterial;
struct LH3DMem_t;
struct LH3DMist_namespace;
struct LH3DObject_region;
struct LH3DSubMesh;
struct LH3DTexture;
struct LHPlane;
struct LHPoint;
struct LHPoint2D;
struct LHReleasedFile;
struct LHSys;
struct LiquidParticleGroup;
struct MPFEConnectionStatus;
struct MapCoords;
struct MobileWallHug;
struct PlayerProfile;
struct ScriptDLL;
struct SetRenderModeData;
struct SetupThing;
struct SetupThingDraw_t;
struct VillagerName;
struct Villager__StateTable;
struct ape_hair_t;
struct custom_footpath_display_control_t;
struct g_anim_pack_t;
struct g_pack_t;
struct globals_Script;
struct std__map__pMobileWallHug__ulong_node_list;
struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_node_list;
struct std__set__pMobileWallHug_node_list;

struct globals_t
{
  const struct LH3DColor (*LH3DColor_ARRAY_008ab250)[0x4];
  struct DiscipleInfo (*DiscipleInfo_ARRAY_0099a1f8)[0xd];
  struct SetupThingDraw_t* SetupThingDraw;  /* 0x009c8078 */
  uint32_t* DAT_00be026c;
  int* INT_00bec27c;
  bool* DAT_00bec280;
  uint32_t* DAT_00bec994;
  float* DAT_00bf3380;
  float* FLOAT_00bf33f0;
  int* DAT_00bf42c8;
  int* DAT_00bf42cc;
  int* DAT_00bfe88c;
  int* DAT_00bfe914;
  const struct LH3DColor (*LH3DColor_ARRAY_00bff0b8)[0x8];
  int* DAT_00c0297c;
  uint32_t* DAT_00c20d54;
  enum TRIBE_TYPE* DAT_00c20d58;
  const struct LHScriptCommandX_c_ (*ScriptSignatures)[0x69];  /* 0x00c20f00 */
  float (*SigmoidTable)[0x29];  /* 0x00c23284 */
  float* FLOAT_00c2a150;
  float* g_maxX;  /* 0x00c2ab00 */
  float* g_maxY;  /* 0x00c2ab04 */
  void (__cdecl** _FPinit)( void );  /* 0x00c2d39c */
  int* __app_type;  /* 0x00c2d674 */
  LPCRITICAL_SECTION (*_locktable)[0x30];  /* 0x00c2da60 */
  int32_t (*sin_lookup_table)[0x800];  /* 0x00c31614 */
  int32_t (*cos_lookup_table)[0x800];  /* 0x00c31e14 */
  char (*s_parsed_line)[0x200];  /* 0x00c341c0 */
  float* DAT_00c371d4;
  uint32_t* g_delta_time__8LH3DTech;  /* 0x00c38134 */
  uint32_t* DAT_00c386d0;
  uint32_t* DAT_00c38714;
  struct GAbodeInfo (*GAbodeInfo_ARRAY_00c3c690)[0x93];
  struct SetupThing* SetupThing;  /* 0x00c4cc80 */
  uint32_t* UINT_00c58604;
  struct GCitadelHeartInfo (*GCitadelHeartInfo_ARRAY_00c5e270)[0x1];
  struct LHLinkedList__Creature* CreatureList;  /* 0x00c5fcf8 */
  struct GDanceInfo (*GDanceInfo_ARRAY_00cc4b80)[0x19];
  struct GMagicEffectInfo (*GMagicEffectInfo_ARRAY_00cc6630)[0x42];
  struct GFieldTypeInfo (*GFieldTypeInfo_00ccf070)[0x6];
  char (*CHAR_ARRAY_00cd035c)[0x100];
  uint32_t* DAT_00cd0488;
  struct FrontEnd* FrontEnd_00cd0620;
  char16_t (*UNICODE_00cd3a18)[0x2];
  uint32_t* DAT_00cd3ae8;
  uint8_t* DAT_00cd3aec;
  struct GGlobal* global;  /* 0x00cd3b20 */
  uint32_t (*ARRAY_00d0143c)[0xa];
  uint32_t (*ARRAY_00d01464)[0x64];
  struct GGame** game;  /* 0x00d0195c */
  int* DAT_00d01978;
  int* INT_00d0197c;
  struct globals_Script* Script;  /* 0x00d019a4 */
  int* DAT_00d019b4;
  int* DAT_00d019b8;
  int* DAT_00d019bc;
  struct GGameInfo* GGameInfo_00d019f8;
  struct GameThing_t* GameThing;  /* 0x00d06080 */
  struct Villager__StateTable* VillagerStateTable;  /* 0x00d09198 */
  struct Animal__StateTable* AnimalStateTable;  /* 0x00d12108 */
  void** DAT_00d13f3c;
  struct HelpTextDataBase* HelpTextDataBasePatch;  /* 0x00d17ca0 */
  struct HelpTextDataBase* HelpTextDataBase_00d17ca8;
  struct GameBlock* (*GameBlock_ARRAY_00d189d8)[0x20][0x20];
  struct GameBlock* GameBlock_00d199e0;
  float (*FLOAT_ARRAY_00d1a280)[0x8];
  struct GMagicInfo* (*MagicInfoTable)[0x2a];  /* 0x00d37d10 */
  struct LHPoint2D* Point2D_00d3ee60;
  struct LHPoint2D* Point2D_00d3ee68;
  struct LHPoint2D* Point2D_00d3ee70;
  struct CircleHugStateInfoT* CircleHugStateInfoT_00d3ee78;
  bool* DAT_00d3eed0;
  uint8_t* DAT_00d3eed1;
  struct std__map__pMobileWallHug__ulong_node_list* DAT_00d3eed4;
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_node_list* DAT_00d3eedc;
  struct std__set__pMobileWallHug_node_list* DAT_00d3eee4;
  struct CircleHugStateInfo_field_0x44_node_list* DAT_00d3eef4;
  struct ape_hair_t* ape_hair;  /* 0x00d3f004 */
  struct MPFEConnectionStatus* MPFEConnectionStatus_00d40e20;
  char (*CHAR_ARRAY_00d414d8)[0x80];
  bool* ARGS_NEWGAME;  /* 0x00d46ab9 */
  bool* ARGS_MULTIPLAYER;  /* 0x00d46aba */
  bool* ARGS_LAND;  /* 0x00d46abb */
  bool* ARGS_SKIRMISH;  /* 0x00d46abc */
  bool* ARGS_PREINTROVIDEO;  /* 0x00d46abd */
  bool* ARGS_FORCEINETCONN;  /* 0x00d46abe */
  bool* ARGS_NOINETCONN;  /* 0x00d46abf */
  bool* ARGS_EDITOR;  /* 0x00d46ac0 */
  bool* ARGS_CONVERT;  /* 0x00d46ac1 */
  bool* ARGS_VERSION;  /* 0x00d46ac2 */
  bool* ARGS_NOLOADMUSIC;  /* 0x00d46ac3 */
  bool* ARGS_SETTINGS;  /* 0x00d46ac4 */
  struct PlayerProfile* PlayerProfile_00d4bd38;
  struct GPlayer** DAT_00d4f594;
  struct ReactionInfo (*ReactionInfo_ARRAY_00d4f6b0)[0x29];
  uint32_t* DAT_00d95c0c;
  struct ScriptDLL** script_dll;  /* 0x00d95c10 */
  char (*ARGS_SETTINGS_PATH)[0x108];  /* 0x00d9927c */
  struct GameThingWithPos** DAT_00d99380;
  struct GameThingWithPos** PTR_00d99384;
  float* script_version;  /* 0x00d9957c */
  char (*CHAR_ARRAY_00d99580)[0xc8];
  char (*CHAR_ARRAY_00d99648)[0x80];
  struct MapCoords** PTR_00d99724;
  struct GShowNeedsInfo (*GShowNeedsInfo_ARRAY_00d99738)[0x4];
  struct GSpellIconInfo* GSpellIconInfo_00d9d3e8;
  struct GSpellSeedInfo (*GSpellSeedInfo_ARRAY_00d9d678)[0x1e];
  struct GTotemStatueInfo (*GTotemStatueInfo_ARRAY_00da1d18)[0x9];
  struct GTownInfo* GTownInfo_00da2780;
  struct GTownDesireInfo (*GTownDesireInfo_ARRAY_00da2930)[0x11];
  struct GTownDesireFunction (*GTownDesireFunction_ARRAY_00da32c8)[0x11];
  struct GTribeInfo (*GTribeInfo_ARRAY_00da57a8)[0x9];
  struct JustMapXZ (*JustMapXZ_ARRAY_00da59fc)[0x4];
  uint32_t (*UINT_ARRAY_00da5a10)[0x400];
  struct GVillagerInfo (*GVillagerInfo_ARRAY_00da6be8)[0x54];
  struct VillagerName** PTR_00db9e28;
  struct GVillagerStateTableInfo (*GVillagerStateTableInfo_ARRAY_00db9e68)[0xff];
  struct GWorshipSiteInfo (*GWorshipSiteInfo_ARRAY_00dcbd30)[0x9];
  uint32_t* DAT_00e06020;
  float* near_clipping;  /* 0x00e839e0 */
  struct InfoTransform* g_info_transform;  /* 0x00e839e4 */
  int* DAT_00e83a20;
  char** _aenvptr;  /* 0x00e84218 */
  int* __error_mode;  /* 0x00e84220 */
  void (__cdecl** _adbgmsg)( void );  /* 0x00e843dc */
  struct LHSys* LHSys;  /* 0x00e85040 */
  RTL_CRITICAL_SECTION* lpCriticalSection_00e8c118;
  RTL_CRITICAL_SECTION* lpCriticalSection_00e90650;
  struct LH3DMist_namespace* LH3DMist;  /* 0x00e9a11c */
  struct LandBlock* (*g_ptr_blocks__10LH3DIsland)[0x100];  /* 0x00e9c564 */
  uint8_t (*g_index_block__10LH3DIsland)[0x20][0x20];  /* 0x00e9c964 */
  struct LHMatrix (*LH3DMesh_g_current_list_matrix)[0x100];  /* 0x00e9ce28 */
  struct g_pack_t** LH3DMesh_g_pack;  /* 0x00e9fe34 */
  struct LHMatrix** LH3DMesh_g_current_matrix;  /* 0x00e9fe48 */
  bool* LH3DMesh_g_b_dont_care_about_texture;  /* 0x00e9fe54 */
  struct LH3DObject_region* LH3DObject;  /* 0x00ea1a88 */
  struct LHPoint* grosse_merde_pos;  /* 0x00ea1b58 */
  struct LHPoint* grosse_merde_foc;  /* 0x00ea1b68 */
  struct LHMatrix* g_camera_to_world;  /* 0x00ea1cf8 */
  struct LHMatrix* g_world_to_camera;  /* 0x00ea1d28 */
  struct LHMatrix* g_copy_of_world_to_clipping;  /* 0x00ea1d58 */
  struct LHMatrix* g_mat_paper;  /* 0x00ea1d88 */
  struct LH3DCamera* g_camera;  /* 0x00ea1db8 */
  struct LHMatrix* g_clipping_to_world;  /* 0x00ea9de0 */
  struct LHMatrix* g_local_to_clipping;  /* 0x00ea9e10 */
  struct LHMatrix* g_world_to_clipping;  /* 0x00ea9e40 */
  struct LHPlane* field_0x00ea9e70;
  struct LHPlane* g_sun_light_clipping;  /* 0x00ea9e80 */
  struct LHPlane* field_0x00ea9e90;
  struct LHMatrix** g_current_matrix;  /* 0x00ea9ea0 */
  uint32_t* current_time_maybe;  /* 0x00ea9eb0 */
  uint32_t* g_view_configuration;  /* 0x00ea9ebc */
  uint32_t* DAT_00ea9ec0;
  uint32_t* merde_focus;  /* 0x00ea9ecc */
  void (__fastcall** DAT_00eb9a98)(void* this, const void* edx, struct MobileWallHug* param_3);
  D3DMATRIX* g_d3d_view2proj;  /* 0x00ec7fd0 */
  D3DMATRIX* g_d3d_world2view;  /* 0x00ec8010 */
  uint32_t (*UINT_ARRAY_00ec81f0)[0x800];
  uint32_t (*UINT_ARRAY_00eca1f0)[0x99];
  bool32_t* LH3DRender__g_b_need_tilling;  /* 0x00eca614 */
  struct SetRenderModeData** PTR_00eca618;
  IDirect3DDevice7** Direct3DDevice7;  /* 0x00eca638 */
  struct LH3DMaterial** DAT_00eca64c;
  uint32_t* DAT_00eca654;
  struct GatheringText** game_font;  /* 0x00eccd08 */
  struct LH3DMaterial** DAT_00ed92dc;
  uint8_t* DAT_00edc34c;
  struct LH3DMaterial** PTR_00edc368;
  struct LHReleasedFile* g_cached_tex_file;  /* 0x00edd3e0 */
  struct LH3DTexture** LH3DTexture_first;  /* 0x00edd460 */
  struct LH3DMaterial** PTR_00edd494;
  struct LHReleasedFile* LH3DAnim_file;  /* 0x00edd498 */
  struct g_anim_pack_t** PTR_g_pack;  /* 0x00edd508 */
  struct LH3DMem_t* LH3DMem;  /* 0x00ef6540 */
  struct LiquidParticleGroup** LiquidParticleGroup_first;  /* 0x00ef7538 */
  uint32_t* DAT_00f05220;
  uint32_t* DAT_00f05420;
  int32_t* INT_00fa51c4;
  void (__cdecl** PTR_00fa51d0)(int param_0, int param_1);
  struct LH3DSubMesh** LH3DSubMesh_g_current_sub_mesh;  /* 0x00fa93bc */
  HANDLE* _crtheap;  /* 0x00facca8 */
  char** _acmdln;  /* 0x00fadccc */
  struct custom_footpath_display_control_t* custom_footpath_display_control;  /* 0x00fae800 */
};

static struct globals_t globals = {
    .LH3DColor_ARRAY_008ab250 = (const struct LH3DColor (*)[4])0x008ab250,
    .DiscipleInfo_ARRAY_0099a1f8 = (struct DiscipleInfo (*)[13])0x0099a1f8,
    .SetupThingDraw = (struct SetupThingDraw_t*)0x009c8078,
    .DAT_00be026c = (uint32_t*)0x00be026c,
    .INT_00bec27c = (int*)0x00bec27c,
    .DAT_00bec280 = (bool*)0x00bec280,
    .DAT_00bec994 = (uint32_t*)0x00bec994,
    .DAT_00bf3380 = (float*)0x00bf3380,
    .FLOAT_00bf33f0 = (float*)0x00bf33f0,
    .DAT_00bf42c8 = (int*)0x00bf42c8,
    .DAT_00bf42cc = (int*)0x00bf42cc,
    .DAT_00bfe88c = (int*)0x00bfe88c,
    .DAT_00bfe914 = (int*)0x00bfe914,
    .LH3DColor_ARRAY_00bff0b8 = (const struct LH3DColor (*)[8])0x00bff0b8,
    .DAT_00c0297c = (int*)0x00c0297c,
    .DAT_00c20d54 = (uint32_t*)0x00c20d54,
    .DAT_00c20d58 = (enum TRIBE_TYPE*)0x00c20d58,
    .ScriptSignatures = (const struct LHScriptCommandX_c_ (*)[105])0x00c20f00,
    .SigmoidTable = (float (*)[41])0x00c23284,
    .FLOAT_00c2a150 = (float*)0x00c2a150,
    .g_maxX = (float*)0x00c2ab00,
    .g_maxY = (float*)0x00c2ab04,
    ._FPinit = (void (__cdecl**)( void ))0x00c2d39c,
    .__app_type = (int*)0x00c2d674,
    ._locktable = (LPCRITICAL_SECTION (*)[48])0x00c2da60,
    .sin_lookup_table = (int32_t (*)[2048])0x00c31614,
    .cos_lookup_table = (int32_t (*)[2048])0x00c31e14,
    .s_parsed_line = (char (*)[512])0x00c341c0,
    .DAT_00c371d4 = (float*)0x00c371d4,
    .g_delta_time__8LH3DTech = (uint32_t*)0x00c38134,
    .DAT_00c386d0 = (uint32_t*)0x00c386d0,
    .DAT_00c38714 = (uint32_t*)0x00c38714,
    .GAbodeInfo_ARRAY_00c3c690 = (struct GAbodeInfo (*)[147])0x00c3c690,
    .SetupThing = (struct SetupThing*)0x00c4cc80,
    .UINT_00c58604 = (uint32_t*)0x00c58604,
    .GCitadelHeartInfo_ARRAY_00c5e270 = (struct GCitadelHeartInfo (*)[1])0x00c5e270,
    .CreatureList = (struct LHLinkedList__Creature*)0x00c5fcf8,
    .GDanceInfo_ARRAY_00cc4b80 = (struct GDanceInfo (*)[25])0x00cc4b80,
    .GMagicEffectInfo_ARRAY_00cc6630 = (struct GMagicEffectInfo (*)[66])0x00cc6630,
    .GFieldTypeInfo_00ccf070 = (struct GFieldTypeInfo (*)[6])0x00ccf070,
    .CHAR_ARRAY_00cd035c = (char (*)[256])0x00cd035c,
    .DAT_00cd0488 = (uint32_t*)0x00cd0488,
    .FrontEnd_00cd0620 = (struct FrontEnd*)0x00cd0620,
    .UNICODE_00cd3a18 = (char16_t (*)[2])0x00cd3a18,
    .DAT_00cd3ae8 = (uint32_t*)0x00cd3ae8,
    .DAT_00cd3aec = (uint8_t*)0x00cd3aec,
    .global = (struct GGlobal*)0x00cd3b20,
    .ARRAY_00d0143c = (uint32_t (*)[10])0x00d0143c,
    .ARRAY_00d01464 = (uint32_t (*)[100])0x00d01464,
    .game = (struct GGame**)0x00d0195c,
    .DAT_00d01978 = (int*)0x00d01978,
    .INT_00d0197c = (int*)0x00d0197c,
    .Script = (struct globals_Script*)0x00d019a4,
    .DAT_00d019b4 = (int*)0x00d019b4,
    .DAT_00d019b8 = (int*)0x00d019b8,
    .DAT_00d019bc = (int*)0x00d019bc,
    .GGameInfo_00d019f8 = (struct GGameInfo*)0x00d019f8,
    .GameThing = (struct GameThing_t*)0x00d06080,
    .VillagerStateTable = (struct Villager__StateTable*)0x00d09198,
    .AnimalStateTable = (struct Animal__StateTable*)0x00d12108,
    .DAT_00d13f3c = (void**)0x00d13f3c,
    .HelpTextDataBasePatch = (struct HelpTextDataBase*)0x00d17ca0,
    .HelpTextDataBase_00d17ca8 = (struct HelpTextDataBase*)0x00d17ca8,
    .GameBlock_ARRAY_00d189d8 = (struct GameBlock* (*)[32][32])0x00d189d8,
    .GameBlock_00d199e0 = (struct GameBlock*)0x00d199e0,
    .FLOAT_ARRAY_00d1a280 = (float (*)[8])0x00d1a280,
    .MagicInfoTable = (struct GMagicInfo* (*)[42])0x00d37d10,
    .Point2D_00d3ee60 = (struct LHPoint2D*)0x00d3ee60,
    .Point2D_00d3ee68 = (struct LHPoint2D*)0x00d3ee68,
    .Point2D_00d3ee70 = (struct LHPoint2D*)0x00d3ee70,
    .CircleHugStateInfoT_00d3ee78 = (struct CircleHugStateInfoT*)0x00d3ee78,
    .DAT_00d3eed0 = (bool*)0x00d3eed0,
    .DAT_00d3eed1 = (uint8_t*)0x00d3eed1,
    .DAT_00d3eed4 = (struct std__map__pMobileWallHug__ulong_node_list*)0x00d3eed4,
    .DAT_00d3eedc = (struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_node_list*)0x00d3eedc,
    .DAT_00d3eee4 = (struct std__set__pMobileWallHug_node_list*)0x00d3eee4,
    .DAT_00d3eef4 = (struct CircleHugStateInfo_field_0x44_node_list*)0x00d3eef4,
    .ape_hair = (struct ape_hair_t*)0x00d3f004,
    .MPFEConnectionStatus_00d40e20 = (struct MPFEConnectionStatus*)0x00d40e20,
    .CHAR_ARRAY_00d414d8 = (char (*)[128])0x00d414d8,
    .ARGS_NEWGAME = (bool*)0x00d46ab9,
    .ARGS_MULTIPLAYER = (bool*)0x00d46aba,
    .ARGS_LAND = (bool*)0x00d46abb,
    .ARGS_SKIRMISH = (bool*)0x00d46abc,
    .ARGS_PREINTROVIDEO = (bool*)0x00d46abd,
    .ARGS_FORCEINETCONN = (bool*)0x00d46abe,
    .ARGS_NOINETCONN = (bool*)0x00d46abf,
    .ARGS_EDITOR = (bool*)0x00d46ac0,
    .ARGS_CONVERT = (bool*)0x00d46ac1,
    .ARGS_VERSION = (bool*)0x00d46ac2,
    .ARGS_NOLOADMUSIC = (bool*)0x00d46ac3,
    .ARGS_SETTINGS = (bool*)0x00d46ac4,
    .PlayerProfile_00d4bd38 = (struct PlayerProfile*)0x00d4bd38,
    .DAT_00d4f594 = (struct GPlayer**)0x00d4f594,
    .ReactionInfo_ARRAY_00d4f6b0 = (struct ReactionInfo (*)[41])0x00d4f6b0,
    .DAT_00d95c0c = (uint32_t*)0x00d95c0c,
    .script_dll = (struct ScriptDLL**)0x00d95c10,
    .ARGS_SETTINGS_PATH = (char (*)[264])0x00d9927c,
    .DAT_00d99380 = (struct GameThingWithPos**)0x00d99380,
    .PTR_00d99384 = (struct GameThingWithPos**)0x00d99384,
    .script_version = (float*)0x00d9957c,
    .CHAR_ARRAY_00d99580 = (char (*)[200])0x00d99580,
    .CHAR_ARRAY_00d99648 = (char (*)[128])0x00d99648,
    .PTR_00d99724 = (struct MapCoords**)0x00d99724,
    .GShowNeedsInfo_ARRAY_00d99738 = (struct GShowNeedsInfo (*)[4])0x00d99738,
    .GSpellIconInfo_00d9d3e8 = (struct GSpellIconInfo*)0x00d9d3e8,
    .GSpellSeedInfo_ARRAY_00d9d678 = (struct GSpellSeedInfo (*)[30])0x00d9d678,
    .GTotemStatueInfo_ARRAY_00da1d18 = (struct GTotemStatueInfo (*)[9])0x00da1d18,
    .GTownInfo_00da2780 = (struct GTownInfo*)0x00da2780,
    .GTownDesireInfo_ARRAY_00da2930 = (struct GTownDesireInfo (*)[17])0x00da2930,
    .GTownDesireFunction_ARRAY_00da32c8 = (struct GTownDesireFunction (*)[17])0x00da32c8,
    .GTribeInfo_ARRAY_00da57a8 = (struct GTribeInfo (*)[9])0x00da57a8,
    .JustMapXZ_ARRAY_00da59fc = (struct JustMapXZ (*)[4])0x00da59fc,
    .UINT_ARRAY_00da5a10 = (uint32_t (*)[1024])0x00da5a10,
    .GVillagerInfo_ARRAY_00da6be8 = (struct GVillagerInfo (*)[84])0x00da6be8,
    .PTR_00db9e28 = (struct VillagerName**)0x00db9e28,
    .GVillagerStateTableInfo_ARRAY_00db9e68 = (struct GVillagerStateTableInfo (*)[255])0x00db9e68,
    .GWorshipSiteInfo_ARRAY_00dcbd30 = (struct GWorshipSiteInfo (*)[9])0x00dcbd30,
    .DAT_00e06020 = (uint32_t*)0x00e06020,
    .near_clipping = (float*)0x00e839e0,
    .g_info_transform = (struct InfoTransform*)0x00e839e4,
    .DAT_00e83a20 = (int*)0x00e83a20,
    ._aenvptr = (char**)0x00e84218,
    .__error_mode = (int*)0x00e84220,
    ._adbgmsg = (void (__cdecl**)( void ))0x00e843dc,
    .LHSys = (struct LHSys*)0x00e85040,
    .lpCriticalSection_00e8c118 = (RTL_CRITICAL_SECTION*)0x00e8c118,
    .lpCriticalSection_00e90650 = (RTL_CRITICAL_SECTION*)0x00e90650,
    .LH3DMist = (struct LH3DMist_namespace*)0x00e9a11c,
    .g_ptr_blocks__10LH3DIsland = (struct LandBlock* (*)[256])0x00e9c564,
    .g_index_block__10LH3DIsland = (uint8_t (*)[32][32])0x00e9c964,
    .LH3DMesh_g_current_list_matrix = (struct LHMatrix (*)[256])0x00e9ce28,
    .LH3DMesh_g_pack = (struct g_pack_t**)0x00e9fe34,
    .LH3DMesh_g_current_matrix = (struct LHMatrix**)0x00e9fe48,
    .LH3DMesh_g_b_dont_care_about_texture = (bool*)0x00e9fe54,
    .LH3DObject = (struct LH3DObject_region*)0x00ea1a88,
    .grosse_merde_pos = (struct LHPoint*)0x00ea1b58,
    .grosse_merde_foc = (struct LHPoint*)0x00ea1b68,
    .g_camera_to_world = (struct LHMatrix*)0x00ea1cf8,
    .g_world_to_camera = (struct LHMatrix*)0x00ea1d28,
    .g_copy_of_world_to_clipping = (struct LHMatrix*)0x00ea1d58,
    .g_mat_paper = (struct LHMatrix*)0x00ea1d88,
    .g_camera = (struct LH3DCamera*)0x00ea1db8,
    .g_clipping_to_world = (struct LHMatrix*)0x00ea9de0,
    .g_local_to_clipping = (struct LHMatrix*)0x00ea9e10,
    .g_world_to_clipping = (struct LHMatrix*)0x00ea9e40,
    .field_0x00ea9e70 = (struct LHPlane*)0x00ea9e70,
    .g_sun_light_clipping = (struct LHPlane*)0x00ea9e80,
    .field_0x00ea9e90 = (struct LHPlane*)0x00ea9e90,
    .g_current_matrix = (struct LHMatrix**)0x00ea9ea0,
    .current_time_maybe = (uint32_t*)0x00ea9eb0,
    .g_view_configuration = (uint32_t*)0x00ea9ebc,
    .DAT_00ea9ec0 = (uint32_t*)0x00ea9ec0,
    .merde_focus = (uint32_t*)0x00ea9ecc,
    .DAT_00eb9a98 = (void (__fastcall**)(void* this, const void* edx, struct MobileWallHug* param_3))0x00eb9a98,
    .g_d3d_view2proj = (D3DMATRIX*)0x00ec7fd0,
    .g_d3d_world2view = (D3DMATRIX*)0x00ec8010,
    .UINT_ARRAY_00ec81f0 = (uint32_t (*)[2048])0x00ec81f0,
    .UINT_ARRAY_00eca1f0 = (uint32_t (*)[153])0x00eca1f0,
    .LH3DRender__g_b_need_tilling = (bool32_t*)0x00eca614,
    .PTR_00eca618 = (struct SetRenderModeData**)0x00eca618,
    .Direct3DDevice7 = (IDirect3DDevice7**)0x00eca638,
    .DAT_00eca64c = (struct LH3DMaterial**)0x00eca64c,
    .DAT_00eca654 = (uint32_t*)0x00eca654,
    .game_font = (struct GatheringText**)0x00eccd08,
    .DAT_00ed92dc = (struct LH3DMaterial**)0x00ed92dc,
    .DAT_00edc34c = (uint8_t*)0x00edc34c,
    .PTR_00edc368 = (struct LH3DMaterial**)0x00edc368,
    .g_cached_tex_file = (struct LHReleasedFile*)0x00edd3e0,
    .LH3DTexture_first = (struct LH3DTexture**)0x00edd460,
    .PTR_00edd494 = (struct LH3DMaterial**)0x00edd494,
    .LH3DAnim_file = (struct LHReleasedFile*)0x00edd498,
    .PTR_g_pack = (struct g_anim_pack_t**)0x00edd508,
    .LH3DMem = (struct LH3DMem_t*)0x00ef6540,
    .LiquidParticleGroup_first = (struct LiquidParticleGroup**)0x00ef7538,
    .DAT_00f05220 = (uint32_t*)0x00f05220,
    .DAT_00f05420 = (uint32_t*)0x00f05420,
    .INT_00fa51c4 = (int32_t*)0x00fa51c4,
    .PTR_00fa51d0 = (void (__cdecl**)(int param_0, int param_1))0x00fa51d0,
    .LH3DSubMesh_g_current_sub_mesh = (struct LH3DSubMesh**)0x00fa93bc,
    ._crtheap = (HANDLE*)0x00facca8,
    ._acmdln = (char**)0x00fadccc,
    .custom_footpath_display_control = (struct custom_footpath_display_control_t*)0x00fae800,
};

#endif /* BW1_DECOMP_GLOBALS_INCLUDED_H */
