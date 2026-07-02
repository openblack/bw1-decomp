#ifndef BW1_DECOMP_LH3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h" /* For struct LHMatrix */

// Forward Declares

struct LH3DAnim;
struct LH3DLODData;
struct LH3DMaterial;
struct LH3DMesh;
struct LHBoundingBox;
struct LHPoint;

class LH3DObject
{
public:
    enum ObjectType
    {
      STATIC = 0x0,
      MORPHABLE = 0x1,
      ANIMATED = 0x2,
      COMPLEX = 0x3,
      SMOKE = 0x4,
      FIRE_00 = 0x5,
      FIRE_35 = 0x6,
      MIST = 0x7,
      CITADEL = 0x8,
      COUNT = 0x9
    };

    uint32_t flags_1; /* 0x4 */
    uint32_t flags_2;
    uint32_t field_0xc;
    float importance; /* 0x10 */
    LHMatrix matrix;
    float scale; /* 0x44 */
    float y_angle;
    LH3DColor color;
    LH3DColor specular; /* 0x50 */
    LH3DColor window_color;
    int snow_level;
    int field_0x5c;
    uint32_t field_0x60;
    uint32_t field_0x64;
    float u;
    float v;
    LH3DObject* next; /* 0x70 */
    uint32_t field_0x74;
    uint8_t field_0x78;

    // Virtual functions

    virtual bool32_t IsPreSetup(); /* 0x0 */
    virtual ~LH3DObject();
    virtual float GetU();
    virtual float GetV();
    virtual void SetPaper(int param_1); /* 0x10 */
    virtual bool32_t IsPaper();
    virtual void SetNoSnow(int param_1);
    virtual bool32_t IsNoSnow();
    virtual void SetPosition_1(const LHPoint* point, float param_2, float param_3); /* 0x20 */
    virtual void SetPosition_2(float x, float y, float z);
    virtual void SetLinkedPosition(LH3DObject* linked_obj);
    virtual void SetColorSpecular(uint32_t param_1, uint32_t param_2);
    virtual void SetWindowColor(uint32_t color); /* 0x30 */
    virtual void SetSnowlevel_1(int level);
    virtual void SetSnowlevel_2(LHPoint* point);
    virtual bool32_t IsUseAlpha();
    virtual void SetNeedSorting(int value); /* 0x40 */
    virtual bool32_t IsNeedSorting();
    virtual void SetDrawWithGlobalAlpha(int param_1);
    virtual bool32_t IsDrawWithGlobalAlpha();
    virtual void SetLinked(int param_1); /* 0x50 */
    virtual bool32_t IsLinked();
    virtual void SetDynamicLighting(int param_1);
    virtual bool32_t IsDynamicLighting();
    virtual void SetEnumFlag(int flag); /* 0x60 */
    virtual int GetEnumFlag();
    virtual void SetSpecialLight(int param_1);
    virtual int GetSpecialLight();
    virtual void SetDontDraw(int param_1); /* 0x70 */
    virtual int GetDontDraw();
    virtual void SetCastDynamicShadow(int param_1);
    virtual bool32_t IsCastDynamicShadow();
    virtual void SetShadowOnTexture(int param_1); /* 0x80 */
    virtual bool32_t IsShadowOnTexture();
    virtual void SetFootPrintOnTexture(int param_1);
    virtual bool32_t IsFootPrintOnTexture();
    virtual void SetShadowOnTextureChroma(int param_1); /* 0x90 */
    virtual bool32_t IsShadowOnTextureChroma();
    virtual void SetDisappear(int param_1);
    virtual bool32_t IsDisappear();
    virtual void SetNeedClipping(int param_1); /* 0xa0 */
    virtual bool32_t IsNeedClipping();
    virtual int GetVisageId();
    virtual void SetVisage(int visage_id);
    virtual bool32_t IsHuman(); /* 0xb0 */
    virtual void SetHuman();
    virtual bool32_t IsInBuild();
    virtual void SetInBuild(int param_1);
    virtual bool32_t IsHumanShadowed(); /* 0xc0 */
    virtual void SetHumanShadowed(int param_1);
    virtual bool32_t IsGlowing();
    virtual void SetIsGlowing(int param_1);
    virtual bool32_t IsSuperSortedPolys(); /* 0xd0 */
    virtual void SetSuperSortedPolys(int param_1);
    virtual bool32_t IsFastBlending();
    virtual void SetFastBlending(float param_1, LH3DMesh* mesh1, LH3DMesh* mesh2);
    virtual void SetNeedTilling(int param_1); /* 0xe0 */
    virtual bool32_t IsNeedTilling();
    virtual void SetAnimatedUV_1(float param_1, float param_2, float param_3);
    virtual void SetAnimatedUV_2(int param_1);
    virtual bool32_t IsAnimatedUV(); /* 0xf0 */
    virtual uint32_t SetMesh(LH3DMesh* param_1, LH3DMesh* param_2, LH3DMesh* param_3);
    virtual LH3DMesh* GetMesh();
    virtual void DrawDebugInfo();
    virtual void AddDrawing(); /* 0x100 */
    virtual void DrawWithClipping();
    virtual void Draw();
    virtual void DrawTnL();
    virtual void DrawPartialyBuilt(float param_1); /* 0x110 */
    virtual void DrawSpecialLight(float param_1, uint32_t param_2);
    virtual void DrawUnderWater();
    virtual void DrawCutByPlane();
    virtual void DrawExtraMetric(); /* 0x120 */
    virtual void DrawSnow_1();
    virtual void DrawSnow_2(LH3DMaterial* material);
    virtual void DrawReverse();
    virtual void DrawGlassFronted(float param_1, float param_2, float param_3); /* 0x130 */
    virtual void DrawCage(float param_1);
    virtual void DrawVolLightGJ(uint32_t param_1, uint32_t param_2, LH3DMaterial* material);
    virtual void DrawEnvMapST();
    virtual void DrawLOD(LH3DLODData* lod_data, int param_2); /* 0x140 */
    virtual void DrawEnvMapMT();
    virtual void DrawRefMapMT();
    virtual void DrawNormals();
    virtual void DrawJustPhys(); /* 0x150 */
    virtual void DrawFizz_1();
    virtual void DrawFizz_2(float param_1, LH3DMaterial* material);
    virtual void DrawFroz_1();
    virtual void DrawFroz_2(float param_1, uint32_t param_2, LH3DMaterial* material); /* 0x160 */
    virtual void DrawTextureShadow(uint32_t param_1, uint32_t param_2);
    virtual void DrawTextureShadow32x32(void* param_1);
    virtual void DrawMorphLand();
    virtual void DrawBlendBaseCitadelle(); /* 0x170 */
    virtual void DrawIntoSprite(void* sprite_data);
    virtual void DrawForMouse();
    virtual void Blend(LH3DObject* obj1, LH3DObject* obj2);
    virtual void SetCurrentAnim(LH3DAnim* anim); /* 0x180 */
    virtual int GetCurrentAnim();
    virtual void SetCurrentCycleTime(int time);
    virtual float GetCurrentCycleTime();
    virtual void SetLastAnim(const LH3DAnim* anim); /* 0x190 */
    virtual LH3DAnim* GetLastAnim();
    virtual void SetLastCycleTime(int time);
    virtual float GetLastCycleTime();
    virtual void SetBlendFactor(float factor); /* 0x1a0 */
    virtual float GetBlendFactor();
    virtual bool32_t IsComplex();
    virtual bool32_t IsAnimated();
    virtual bool32_t IsHDO(); /* 0x1b0 */
    virtual void SetHDO();
    virtual void* GetShadowInfo();
    virtual bool32_t ContainsThisBoundingBox(const LHBoundingBox* bbox);
    virtual bool32_t GetChimneyPos(LHPoint* point); /* 0x1c0 */
    virtual bool32_t GetDoorPos(LHPoint* point);
    virtual bool32_t GetExtraPos_1(int param_1, LHPoint* point);
    virtual void GetExtraPos_2(int param_1, LHMatrix* matrix);
    virtual void SetLod(int lod); /* 0x1d0 */
    virtual float GetLod();
    virtual void SetStatus(int status);
    virtual float GetStatus();
    virtual void CheckTriangleCollide(); /* 0x1e0 */
    virtual void CheckPixelCollide();
    virtual void UpdateMelting();
    virtual void MeltBorder();
    virtual bool32_t IsMorphWithLand(); /* 0x1f0 */
    virtual bool32_t IsStaticMorphable();
    virtual bool32_t IsTemple();
    virtual bool32_t IsChangedSize();
    virtual void SetTempleLife(float life); /* 0x200 */
    virtual void* GetTempleEntrance();
    virtual void ProcessAlignement();
    virtual void SetStage(float stage);
    virtual float GetStage_1(); /* 0x210 */
    virtual float GetStage_2(float param_1);
    virtual void SetNasty(float nasty);
    virtual float GetNasty();
    virtual void InitTemple(LHPoint* point, float param_2); /* 0x220 */
    virtual void GetNewEP(int param_1, int param_2, LHMatrix* matrix);
    virtual int HowManyNewEp(int param_1);

    // Static methods

    // BW1W120 0080b4d0 BW1M100 10620204 LH3DObject::Create(LH3DObject::ObjectType)
    static LH3DObject* Create(ObjectType object_type);

    // Constructors

    // BW1W120 inlined BW1M100 inlined LH3DObject::LH3DObject(void)
    LH3DObject();

    // Non-virtual functions

    // BW1W120 00423140 BW1M100 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
    void SetPosition(const LHPoint& point, float y_angle, float scale);
};

#endif /* BW1_DECOMP_LH3D_OBJECT_INCLUDED_H */
