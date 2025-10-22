#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h" /* For struct LHMatrix */

// Forward Declares

struct LH3DAnim;
struct LH3DLODData;
struct LH3DMaterial;
struct LH3DMesh;
struct LH3DObject;
struct LHBoundingBox;
struct LHPoint;

enum LH3DObject__ObjectType
{
  LH3DObject__ObjectType_STATIC = 0x0,
  LH3DObject__ObjectType_MORPHABLE = 0x1,
  LH3DObject__ObjectType_ANIMATED = 0x2,
  LH3DObject__ObjectType_COMPLEX = 0x3,
  LH3DObject__ObjectType_SMOKE = 0x4,
  LH3DObject__ObjectType_FIRE_00 = 0x5,
  LH3DObject__ObjectType_FIRE_35 = 0x6,
  LH3DObject__ObjectType_MIST = 0x7,
  LH3DObject__ObjectType_CITADEL = 0x8,
  _LH3DObject__ObjectType_COUNT = 0x9
};
static_assert(sizeof(enum LH3DObject__ObjectType) == 0x4, "Data type is of wrong size");

static const char* LH3DObject__ObjectType_strs[_LH3DObject__ObjectType_COUNT] = {
  "LH3DObject__ObjectType_STATIC",
  "LH3DObject__ObjectType_MORPHABLE",
  "LH3DObject__ObjectType_ANIMATED",
  "LH3DObject__ObjectType_COMPLEX",
  "LH3DObject__ObjectType_SMOKE",
  "LH3DObject__ObjectType_FIRE_00",
  "LH3DObject__ObjectType_FIRE_35",
  "LH3DObject__ObjectType_MIST",
  "LH3DObject__ObjectType_CITADEL",
};

struct LH3DObjectVftable
{
  bool (__fastcall* IsPreSetup)(struct LH3DObject* this);  /* 0x0 */
  void (__fastcall* __dt)(struct LH3DObject* this, const void* edx, bool param_1);
  float (__fastcall* GetU)(struct LH3DObject* this);
  float (__fastcall* GetV)(struct LH3DObject* this);
  void (__fastcall* SetPaper)(struct LH3DObject* this, const void* edx, int param_1);  /* 0x10 */
  bool (__fastcall* IsPaper)(struct LH3DObject* this);
  void (__fastcall* SetNoSnow)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsNoSnow)(struct LH3DObject* this);
  void (__fastcall* SetPosition_1)(struct LH3DObject* this, const void* edx, const struct LHPoint* point, float param_2, float param_3);  /* 0x20 */
  void (__fastcall* SetPosition_2)(struct LH3DObject* this, const void* edx, float x, float y, float z);
  void (__fastcall* SetLinkedPosition)(struct LH3DObject* this, const void* edx, struct LH3DObject* linked_obj);
  void (__fastcall* SetColorSpecular)(struct LH3DObject* this, const void* edx, uint32_t param_1, uint32_t param_2);
  void (__fastcall* SetWindowColor)(struct LH3DObject* this, const void* edx, uint32_t color);  /* 0x30 */
  void (__fastcall* SetSnowlevel_1)(struct LH3DObject* this, const void* edx, int level);
  void (__fastcall* SetSnowlevel_2)(struct LH3DObject* this, const void* edx, struct LHPoint* point);
  bool (__fastcall* IsUseAlpha)(struct LH3DObject* this);
  void (__fastcall* SetNeedSorting)(struct LH3DObject* this, const void* edx, int value);  /* 0x40 */
  bool (__fastcall* IsNeedSorting)(struct LH3DObject* this);
  void (__fastcall* SetDrawWithGlobalAlpha)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsDrawWithGlobalAlpha)(struct LH3DObject* this);
  void (__fastcall* SetLinked)(struct LH3DObject* this, const void* edx, int param_1);  /* 0x50 */
  bool (__fastcall* IsLinked)(struct LH3DObject* this);
  void (__fastcall* SetDynamicLighting)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsDynamicLighting)(struct LH3DObject* this);
  void (__fastcall* SetEnumFlag)(struct LH3DObject* this, const void* edx, int flag);  /* 0x60 */
  int (__fastcall* GetEnumFlag)(struct LH3DObject* this);
  void (__fastcall* SetSpecialLight)(struct LH3DObject* this, const void* edx, int param_1);
  int (__fastcall* GetSpecialLight)(struct LH3DObject* this);
  void (__fastcall* SetDontDraw)(struct LH3DObject* this, const void* edx, int param_1);  /* 0x70 */
  int (__fastcall* GetDontDraw)(struct LH3DObject* this);
  void (__fastcall* SetCastDynamicShadow)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsCastDynamicShadow)(struct LH3DObject* this);
  void (__fastcall* SetShadowOnTexture)(struct LH3DObject* this, const void* edx, int param_1);  /* 0x80 */
  bool (__fastcall* IsShadowOnTexture)(struct LH3DObject* this);
  void (__fastcall* SetFootPrintOnTexture)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsFootPrintOnTexture)(struct LH3DObject* this);
  void (__fastcall* SetShadowOnTextureChroma)(struct LH3DObject* this, const void* edx, int param_1);  /* 0x90 */
  bool (__fastcall* IsShadowOnTextureChroma)(struct LH3DObject* this);
  void (__fastcall* SetDisappear)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsDisappear)(struct LH3DObject* this);
  void (__fastcall* SetNeedClipping)(struct LH3DObject* this, const void* edx, int param_1);  /* 0xa0 */
  bool (__fastcall* IsNeedClipping)(struct LH3DObject* this);
  int (__fastcall* GetVisageId)(struct LH3DObject* this);
  void (__fastcall* SetVisage)(struct LH3DObject* this, const void* edx, int visage_id);
  bool (__fastcall* IsHuman)(struct LH3DObject* this);  /* 0xb0 */
  void (__fastcall* SetHuman)(struct LH3DObject* this);
  bool (__fastcall* IsInBuild)(struct LH3DObject* this);
  void (__fastcall* SetInBuild)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsHumanShadowed)(struct LH3DObject* this);  /* 0xc0 */
  void (__fastcall* SetHumanShadowed)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsGlowing)(struct LH3DObject* this);
  void (__fastcall* SetIsGlowing)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsSuperSortedPolys)(struct LH3DObject* this);  /* 0xd0 */
  void (__fastcall* SetSuperSortedPolys)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsFastBlending)(struct LH3DObject* this);
  void (__fastcall* SetFastBlending)(struct LH3DObject* this, const void* edx, float param_1, struct LH3DMesh* mesh1, struct LH3DMesh* mesh2);
  void (__fastcall* SetNeedTilling)(struct LH3DObject* this, const void* edx, int param_1);  /* 0xe0 */
  bool (__fastcall* IsNeedTilling)(struct LH3DObject* this);
  void (__fastcall* SetAnimatedUV_1)(struct LH3DObject* this, const void* edx, float param_1, float param_2, float param_3);
  void (__fastcall* SetAnimatedUV_2)(struct LH3DObject* this, const void* edx, int param_1);
  bool (__fastcall* IsAnimatedUV)(struct LH3DObject* this);  /* 0xf0 */
  uint32_t (__fastcall* SetMesh)(struct LH3DObject* this, const void* edx, struct LH3DMesh* param_1, struct LH3DMesh* param_2, struct LH3DMesh* param_3);
  struct LH3DMesh* (__fastcall* GetMesh)(const struct LH3DObject* this);
  void (__fastcall* DrawDebugInfo)(struct LH3DObject* this);
  void (__fastcall* AddDrawing)(struct LH3DObject* this);  /* 0x100 */
  void (__fastcall* DrawWithClipping)(struct LH3DObject* this);
  void (__fastcall* Draw)(struct LH3DObject* this);
  void (__fastcall* DrawTnL)(struct LH3DObject* this);
  void (__fastcall* DrawPartialyBuilt)(struct LH3DObject* this, const void* edx, float param_1);  /* 0x110 */
  void (__fastcall* DrawSpecialLight)(struct LH3DObject* this, const void* edx, float param_1, uint32_t param_2);
  void (__fastcall* DrawUnderWater)(struct LH3DObject* this);
  void (__fastcall* DrawCutByPlane)(struct LH3DObject* this);
  void (__fastcall* DrawExtraMetric)(struct LH3DObject* this);  /* 0x120 */
  void (__fastcall* DrawSnow_1)(struct LH3DObject* this);
  void (__fastcall* DrawSnow_2)(struct LH3DObject* this, const void* edx, struct LH3DMaterial* material);
  void (__fastcall* DrawReverse)(struct LH3DObject* this);
  void (__fastcall* DrawGlassFronted)(struct LH3DObject* this, const void* edx, float param_1, float param_2, float param_3);  /* 0x130 */
  void (__fastcall* DrawCage)(struct LH3DObject* this, const void* edx, float param_1);
  void (__fastcall* DrawVolLightGJ)(struct LH3DObject* this, const void* edx, uint32_t param_1, uint32_t param_2, struct LH3DMaterial* material);
  void (__fastcall* DrawEnvMapST)(struct LH3DObject* this);
  void (__fastcall* DrawLOD)(struct LH3DObject* this, const void* edx, struct LH3DLODData* lod_data, int param_2);  /* 0x140 */
  void (__fastcall* DrawEnvMapMT)(struct LH3DObject* this);
  void (__fastcall* DrawRefMapMT)(struct LH3DObject* this);
  void (__fastcall* DrawNormals)(const struct LH3DObject* this);
  void (__fastcall* DrawJustPhys)(struct LH3DObject* this);  /* 0x150 */
  void (__fastcall* DrawFizz_1)(struct LH3DObject* this);
  void (__fastcall* DrawFizz_2)(struct LH3DObject* this, const void* edx, float param_1, struct LH3DMaterial* material);
  void (__fastcall* DrawFroz_1)(struct LH3DObject* this);
  void (__fastcall* DrawFroz_2)(struct LH3DObject* this, const void* edx, float param_1, uint32_t param_2, struct LH3DMaterial* material);  /* 0x160 */
  void (__fastcall* DrawTextureShadow)(const struct LH3DObject* this, const void* edx, uint32_t param_1, uint32_t param_2);
  void (__fastcall* DrawTextureShadow32x32)(struct LH3DObject* this, const void* edx, void* param_1);
  void (__fastcall* DrawMorphLand)(struct LH3DObject* this);
  void (__fastcall* DrawBlendBaseCitadelle)(struct LH3DObject* this);  /* 0x170 */
  void (__fastcall* DrawIntoSprite)(struct LH3DObject* this, const void* edx, void* sprite_data);
  void (__fastcall* DrawForMouse)(struct LH3DObject* this);
  void (__fastcall* Blend)(struct LH3DObject* this, const void* edx, struct LH3DObject* obj1, struct LH3DObject* obj2);
  void (__fastcall* SetCurrentAnim)(struct LH3DObject* this, const void* edx, struct LH3DAnim* anim);  /* 0x180 */
  int (__fastcall* GetCurrentAnim)(struct LH3DObject* this);
  void (__fastcall* SetCurrentCycleTime)(struct LH3DObject* this, const void* edx, int time);
  float (__fastcall* GetCurrentCycleTime)(struct LH3DObject* this);
  void (__fastcall* SetLastAnim)(struct LH3DObject* this, const void* edx, const struct LH3DAnim* anim);  /* 0x190 */
  struct LH3DAnim* (__fastcall* GetLastAnim)(struct LH3DObject* this);
  void (__fastcall* SetLastCycleTime)(struct LH3DObject* this, const void* edx, int time);
  float (__fastcall* GetLastCycleTime)(struct LH3DObject* this);
  void (__fastcall* SetBlendFactor)(struct LH3DObject* this, const void* edx, float factor);  /* 0x1a0 */
  float (__fastcall* GetBlendFactor)(struct LH3DObject* this);
  bool (__fastcall* IsComplex)(struct LH3DObject* this);
  bool (__fastcall* IsAnimated)(struct LH3DObject* this);
  bool (__fastcall* IsHDO)(struct LH3DObject* this);  /* 0x1b0 */
  void (__fastcall* SetHDO)(struct LH3DObject* this);
  void* (__fastcall* GetShadowInfo)(struct LH3DObject* this);
  bool (__fastcall* ContainsThisBoundingBox)(struct LH3DObject* this, const void* edx, const struct LHBoundingBox* bbox);
  bool (__fastcall* GetChimneyPos)(const struct LH3DObject* this, const void* edx, struct LHPoint* point);  /* 0x1c0 */
  bool (__fastcall* GetDoorPos)(const struct LH3DObject* this, const void* edx, struct LHPoint* point);
  bool (__fastcall* GetExtraPos_1)(const struct LH3DObject* this, const void* edx, int param_1, struct LHPoint* point);
  void (__fastcall* GetExtraPos_2)(struct LH3DObject* this, const void* edx, int param_1, struct LHMatrix* matrix);
  void (__fastcall* SetLod)(struct LH3DObject* this, const void* edx, int lod);  /* 0x1d0 */
  float (__fastcall* GetLod)(struct LH3DObject* this);
  void (__fastcall* SetStatus)(struct LH3DObject* this, const void* edx, int status);
  float (__fastcall* GetStatus)(struct LH3DObject* this);
  void (__fastcall* CheckTriangleCollide)(struct LH3DObject* this);  /* 0x1e0 */
  void (__fastcall* CheckPixelCollide)(struct LH3DObject* this);
  void (__fastcall* UpdateMelting)(struct LH3DObject* this);
  void (__fastcall* MeltBorder)(struct LH3DObject* this);
  bool (__fastcall* IsMorphWithLand)(struct LH3DObject* this);  /* 0x1f0 */
  bool (__fastcall* IsStaticMorphable)(const struct LH3DObject* this);
  bool (__fastcall* IsTemple)(struct LH3DObject* this);
  bool (__fastcall* IsChangedSize)(struct LH3DObject* this);
  void (__fastcall* SetTempleLife)(struct LH3DObject* this, const void* edx, float life);  /* 0x200 */
  void* (__fastcall* GetTempleEntrance)(struct LH3DObject* this);
  void (__fastcall* ProcessAlignement)(struct LH3DObject* this);
  void (__fastcall* SetStage)(struct LH3DObject* this, const void* edx, float stage);
  float (__fastcall* GetStage_1)(struct LH3DObject* this);  /* 0x210 */
  float (__fastcall* GetStage_2)(struct LH3DObject* this, const void* edx, float param_1);
  void (__fastcall* SetNasty)(struct LH3DObject* this, const void* edx, float nasty);
  float (__fastcall* GetNasty)(struct LH3DObject* this);
  void (__fastcall* InitTemple)(struct LH3DObject* this, const void* edx, struct LHPoint* point, float param_2);  /* 0x220 */
  void (__fastcall* GetNewEP)(struct LH3DObject* this, const void* edx, int param_1, int param_2, struct LHMatrix* matrix);
  int (__fastcall* HowManyNewEp)(struct LH3DObject* this, const void* edx, int param_1);
};
static_assert(sizeof(struct LH3DObjectVftable) == 0x22c, "Data type is of wrong size");

struct LH3DObject
{
  struct LH3DObjectVftable* vftable;  /* 0x0 */
  uint32_t flags_1;
  uint32_t flags_2;
  uint32_t field_0xc;
  float importance;  /* 0x10 */
  struct LHMatrix matrix;
  float scale;  /* 0x44 */
  float y_angle;
  struct LH3DColor color;
  struct LH3DColor specular;  /* 0x50 */
  struct LH3DColor window_color;
  int snow_level;
  int field_0x5c;
  uint32_t field_0x60;
  uint32_t field_0x64;
  float u;
  float v;
  struct LH3DObject* next;  /* 0x70 */
  uint32_t field_0x74;
  uint8_t field_0x78;
};
static_assert(sizeof(struct LH3DObject) == 0x7c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a2518 mac 101ca628 LH3DObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10LH3DObject asm("??_R4LH3DObject@@6B@");
// win1.41 009a251c mac 101ca638 LH3DObject::`vftable'
extern const struct LH3DObjectVftable __vt__10LH3DObject asm("??_7LH3DObject@@6B@");

// Static methods

// win1.41 00423140 mac 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
void __fastcall SetPosition__10LH3DObjectFRC7LHPointff(struct LH3DObject* this, struct LHPoint* point, float y_angle, float scale) asm("?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z");
// win1.41 0080b4d0 mac 10620204 LH3DObject::Create(LH3DObject::ObjectType)
struct LH3DObject* __fastcall Create__10LH3DObjectFQ210LH3DObject10ObjectType(enum LH3DObject__ObjectType object_type);

// Constructors

// win1.41 inlined mac inlined LH3DObject::LH3DObject(void)
struct LH3DObject* __fastcall __ct__10LH3DObjectFv(struct LH3DObject* this) asm("??0LH3DObject@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
