#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t, uintptr_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h" /* For struct LHMatrix */

// Forward Declares

struct LH3DMesh;
struct LH3DObject;
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
  uintptr_t IsPreSetup;  /* 0x0 */
  uintptr_t __dt;
  uintptr_t GetU;
  uintptr_t GetV;
  uintptr_t SetPaper;  /* 0x10 */
  uintptr_t IsPaper;
  uintptr_t SetNoSnow;
  uintptr_t IsNoSnow;
  uintptr_t SetPosition__10LH3DObjectFRC7LHPointff;  /* 0x20 */
  uintptr_t SetPosition__10LH3DObjectFfff;
  uintptr_t SetLinkedPosition;
  uintptr_t SetColorSpecular;
  uintptr_t SetWindowColor;  /* 0x30 */
  uintptr_t SetSnowlevel__10LH3DObjectFR7LHPoint;
  uintptr_t SetSnowlevel__10LH3DObjectFi;
  bool (__fastcall* IsUseAlpha)(struct LH3DObject* this);
  void (__fastcall* SetNeedSorting)(struct LH3DObject* this, bool value);  /* 0x40 */
  uintptr_t IsNeedSorting;
  uintptr_t SetDrawWithGlobalAlpha;
  uintptr_t IsDrawWithGlobalAlpha;
  uintptr_t field_0x50;
  uintptr_t field_0x54;
  void (__fastcall* SetDynamicLighting)(struct LH3DObject* param_0, bool param_1);
  uintptr_t IsDynamicLighting;
  uintptr_t field_0x60;
  uintptr_t field_0x64;
  uintptr_t field_0x68;
  uintptr_t field_0x6c;
  uintptr_t SetEnumFlag;  /* 0x70 */
  uintptr_t GetEnumFlag;
  void (__fastcall* SetCastDynamicShadow)(struct LH3DObject* param_0, bool param_1);
  uintptr_t IsCastDynamicShadow;
  void (__fastcall* SetShadowOnTexture)(struct LH3DObject* param_0, bool param_1);  /* 0x80 */
  uintptr_t IsShadowOnTexture;
  void (__fastcall* SetFootPrintOnTexture)(struct LH3DObject* param_0, bool param_1);
  uintptr_t IsFootPrintOnTexture;
  uintptr_t SetShadowOnTextureChroma;  /* 0x90 */
  uintptr_t IsShadowOnTextureChroma;
  void (__fastcall* SetDisappear)(struct LH3DObject* param_0, bool param_1);
  uintptr_t IsDisappear;
  uintptr_t field_0xa0;
  uintptr_t field_0xa4;
  uintptr_t field_0xa8;
  uintptr_t field_0xac;
  uintptr_t field_0xb0;
  uintptr_t field_0xb4;
  uintptr_t field_0xb8;
  uintptr_t field_0xbc;
  uintptr_t field_0xc0;
  uintptr_t field_0xc4;
  uintptr_t field_0xc8;
  uintptr_t field_0xcc;
  uintptr_t field_0xd0;
  uintptr_t field_0xd4;
  uintptr_t field_0xd8;
  uintptr_t SetFastBlending;
  uintptr_t field_0xe0;
  uintptr_t field_0xe4;
  uintptr_t field_0xe8;
  uintptr_t field_0xec;
  uintptr_t field_0xf0;
  uint32_t (__fastcall* SetMesh)(struct LH3DObject* param_0, struct LH3DMesh* param_1, struct LH3DMesh* param_2, struct LH3DMesh* param_3);
  struct LH3DMesh* (__fastcall* GetMesh)(struct LH3DObject* this);
  uintptr_t DrawDebugInfo;
  uintptr_t AddDrawing;  /* 0x100 */
  uintptr_t DrawWithClipping;
  uintptr_t DrawTnL;
  uintptr_t field_0x10c;
  uintptr_t field_0x110;
  uintptr_t field_0x114;
  uintptr_t field_0x118;
  uintptr_t field_0x11c;
  uintptr_t field_0x120;
  uintptr_t field_0x124;
  uintptr_t field_0x128;
  uintptr_t field_0x12c;
  uintptr_t field_0x130;
  uintptr_t field_0x134;
  uintptr_t field_0x138;
  uintptr_t field_0x13c;
  uintptr_t field_0x140;
  uintptr_t field_0x144;
  uintptr_t field_0x148;
  uintptr_t field_0x14c;
  uintptr_t field_0x150;
  uintptr_t field_0x154;
  uintptr_t field_0x158;
  uintptr_t field_0x15c;
  uintptr_t field_0x160;
  uintptr_t field_0x164;
  uintptr_t field_0x168;
  uintptr_t field_0x16c;
  uintptr_t field_0x170;
  uintptr_t field_0x174;
  uintptr_t field_0x178;
  uintptr_t field_0x17c;
  uintptr_t field_0x180;
  int (__fastcall* GetCurrentAnim)(struct LH3DObject* this);
  uintptr_t field_0x188;
  uintptr_t field_0x18c;
  uintptr_t field_0x190;
  uintptr_t field_0x194;
  uintptr_t field_0x198;
  uintptr_t field_0x19c;
  uintptr_t field_0x1a0;
  uintptr_t field_0x1a4;
  uintptr_t field_0x1a8;
  bool (__fastcall* IsAnimated)(const struct LH3DObject* this);
  uintptr_t field_0x1b0;
  uintptr_t field_0x1b4;
  uintptr_t field_0x1b8;
  uintptr_t ContainsThisBoundingBox;
  bool (__fastcall* GetChimneyPos)(const struct LH3DObject* this, struct LHPoint* point);  /* 0x1c0 */
  bool (__fastcall* GetDoorPos)(const struct LH3DObject* this, struct LHPoint* point);
  uintptr_t GetExtraPos__10LH3DObjectFlP8LHMatrix;
  bool (__fastcall* GetExtraPos__10LH3DObjectCFlP7LHPoint)(const struct LH3DObject* this, int param_2, struct LHPoint* point);
  uintptr_t SetLod;  /* 0x1d0 */
  uintptr_t GetLod;
  uintptr_t SetStatus;
  uintptr_t GetStatus;
  uintptr_t CheckTriangleCollide;  /* 0x1e0 */
  uintptr_t CheckPixelCollide;
  void (__fastcall* UpdateMelting)(struct LH3DObject* this);
  uintptr_t MeltBorder;
  uintptr_t IsMorphWithLand;  /* 0x1f0 */
  bool (__fastcall* IsStaticMorphable)(const struct LH3DObject* this);
  uintptr_t IsTemple;
  uintptr_t IsChangedSize;
  uintptr_t SetTempleLife;  /* 0x200 */
  uintptr_t GetTempleEntrance;
  uintptr_t ProcessAlignement;
  uintptr_t SetStage;
  uintptr_t GetStage__10LH3DObjectFv;  /* 0x210 */
  uintptr_t GetStage__10LH3DObjectFf;
  uintptr_t SetNasty;
  uintptr_t GetNasty;
  uintptr_t InitTemple;  /* 0x220 */
  uintptr_t GetNewEP;
  uintptr_t HowManyNewEp;
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

static struct LH3DObjectVftable* const __vt__10LH3DObject = (struct LH3DObjectVftable* const)0x009a251c;

// Static methods

// win1.41 00423140 mac 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
void __fastcall SetPosition__10LH3DObjectFRC7LHPointff(struct LH3DObject* this, struct LHPoint* point, float y_angle, float scale);
// win1.41 0080b4d0 mac 10620204 LH3DObject::Create(LH3DObject::ObjectType)
struct LH3DObject* __fastcall Create__10LH3DObjectFQ210LH3DObject10ObjectType(enum LH3DObject__ObjectType object_type);

// Constructors

// win1.41 inlined mac inlined LH3DObject::LH3DObject(void)
struct LH3DObject* __fastcall __ct__10LH3DObjectFv(struct LH3DObject* this);

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
