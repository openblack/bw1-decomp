#ifndef BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <string>   /* For std::string */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <re_common.h>        /* For bool32_t */

#include "Persistent.h" /* For class Persistent */

// Forward Declares

class AtomCore;
class Chain;
class FloatProvider;
class LH3DObject;
class LH3DSprite;
class PropertyList;

class ParticleCreator : public Persistent
{
public:
	ParticleCreator(PersistentOwner* owner) : Persistent(owner)
	{
		UsePlayerColorBlend = 1.0f;
		ColorB = 255;
		ColorG = 255;
		ColorR = 255;
		ColorA = 255;
		UsePlayerColor = false;
		SpecColorB = 0;
		SpecColorG = 0;
		SpecColorR = 0;
		LoopAnim = true;
		InitialScale = 1.0f;
	}

	// Override methods

	// The destructor is implicit: the derived destructors call ~Persistent directly.
	// Its scalar deleting destructor is BW1W120 006a9400 (BW1M119 013e7f60).
	// BW1W120 006b34c0 BW1M119 01460880
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 purecall BW1M119 purecall
	virtual void CreateParticle(AtomCore* core) = 0;
	// BW1W120 006a88e0 BW1M119 013e5f30
	virtual void PreLoadData();
	// BW1W120 00670ae0 BW1M119 013e7e80
	virtual LH3DSprite* CreateSprite();
	// BW1W120 00670af0 BW1M119 013e7e40
	virtual LH3DObject* CreateLH3DObject();
	// BW1W120 00670b00 BW1M119 013e7e00
	virtual void* GetBitmap();
	// BW1W120 006a88f0 BW1M119 013e7f10
	virtual bool32_t IsParticleBaseChainCreator();

	bool  LoopAnim;
	bool  UsePlayerColor;
	float UsePlayerColorBlend;
	long  ColorA;
	long  ColorR;
	long  ColorG;
	long  ColorB;
	long  SpecColorR;
	long  SpecColorG;
	long  SpecColorB;
	float InitialScale;
};
static_assert(sizeof(ParticleCreator) == 0x34, "Data type is of wrong size");

class ParticleBaseMeshCreator : public ParticleCreator
{
public:
	// Override methods

	// BW1W120 006a8900 BW1M119 014484c0
	virtual ~ParticleBaseMeshCreator();
	// BW1W120 006b37a0 BW1M119 01460250
	virtual void DefineProperties(PropertyList* list);

	std::string MeshFileName;
	MESH_LIST   MeshEnum;
	float       HeightStretch;
	bool        FaceCameraSprite;
	bool        FaceCamera;
	bool        UseScriptHightlightPulse;
	uint8_t     field_0x4f;
	uint32_t    field_0x50;
};
static_assert(sizeof(ParticleBaseMeshCreator) == 0x54, "Data type is of wrong size");

class ParticleBaseChainCreator : public ParticleCreator
{
public:
	// Override methods

	// BW1W120 inlined BW1M119 014443a0
	virtual ~ParticleBaseChainCreator() {}
	// BW1W120 006aa760 BW1M119 01448f50
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006aa770 BW1M119 01448fa0
	virtual bool32_t IsParticleBaseChainCreator();
	// BW1W120 purecall BW1M119 purecall
	virtual void CreateChain(long index) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void CreateChainParticle(AtomCore* core, Chain* chain, long index) = 0;

	uint32_t field_0x34;
	uint32_t field_0x38;
};
static_assert(sizeof(ParticleBaseChainCreator) == 0x3c, "Data type is of wrong size");

class ParticlePointCreator : public ParticleCreator
{
public:
	ParticlePointCreator(PersistentOwner* owner) : ParticleCreator(owner) {}

	// BW1W120 006b35c0 BW1M119 014606f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a8770 BW1M119 0109cff0
	virtual void CreateParticle(AtomCore* core);
};
static_assert(sizeof(ParticlePointCreator) == 0x34, "Data type is of wrong size");

class ParticleVolBlendMeshCreator : public ParticleCreator
{
public:
	// BW1W120 006aaa50 BW1M119 01443810
	ParticleVolBlendMeshCreator(PersistentOwner* owner);

	// BW1W120 006b35d0 BW1M119 01460470
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aad00 BW1M119 014432c0
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 inlined BW1M119 null
	virtual void CreateChain(long index);
	// BW1W120 inlined BW1M119 null
	virtual void CreateChainParticle(AtomCore* core, Chain* chain, long index);

	uint32_t    field_0x34;
	uint32_t    field_0x38;
	std::string MeshFileName1;
	std::string MeshFileName2;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	bool        MeshChangeMaterialProps;
	uint8_t     field_0x60;
	bool        PlayAnim;
	uint8_t     field_0x62;
	uint8_t     field_0x63;
	float       FrameRate;
	long        NumFrames;
};
static_assert(sizeof(ParticleVolBlendMeshCreator) == 0x6c, "Data type is of wrong size");

class ParticleMeshCreator : public ParticleBaseMeshCreator
{
public:
	// BW1W120 006a8960 BW1M119 01448b50
	ParticleMeshCreator(PersistentOwner* owner);

	// BW1W120 006b38b0 BW1M119 0145ff90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a8b00 BW1M119 01448580
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006a8a30 BW1M119 014489a0
	virtual void PreLoadData();
	// BW1W120 006a8aa0 BW1M119 01448890
	virtual LH3DObject* CreateLH3DObject();

	uint8_t  field_0x54;
	bool     UseAdditiveAlpha;
	bool     MaterialUpdateZBuffer;
	bool     MaterialSetDoubleSided;
	bool     MeshChangeMaterialProps;
	uint8_t  field_0x59;
	bool     UseGlobalAlpha;
	bool     NeverClip;
	bool     UseDynamicLighting;
	bool     CastHumanShadow;
	bool     DrawWithLandscapeColor;
	bool     DrawCutByPlane;
	uint32_t field_0x60;
};
static_assert(sizeof(ParticleMeshCreator) == 0x64, "Data type is of wrong size");

class ParticleMeshCreatorAnimTextured : public ParticleBaseMeshCreator
{
public:
	// BW1W120 006a8bb0 BW1M119 01448320
	ParticleMeshCreatorAnimTextured(PersistentOwner* owner);

	// BW1W120 006b3970 BW1M119 0145fbe0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a8da0 BW1M119 01447bd0
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006a8cb0 BW1M119 01448160
	virtual void PreLoadData();
	// BW1W120 006a8d20 BW1M119 01448020
	virtual LH3DObject* CreateLH3DObject();
	// BW1W120 inlined BW1M119 null
	virtual void CreateChain(long index);

	uint8_t field_0x54;
	bool    UseAdditiveAlpha;
	bool    MaterialUpdateZBuffer;
	bool    MaterialSetDoubleSided;
	bool    MeshChangeMaterialProps;
	uint8_t field_0x59;
	bool    UseGlobalAlpha;
	uint8_t field_0x5b;
	uint8_t field_0x5c;
	bool    NeverClip;
	bool    PlayAnim;
	bool    UseDynamicLighting;
	float   FrameRate;
	long    NumFrames;
	long    TextureHeight;
	long    TextureWidth;
	bool    SlideU;
	bool    SlideV;
	bool    RandomiseInitFrame;
	bool    RandomiseFrameRate;
	bool    DrawMelted;
	uint8_t field_0x75;
	uint8_t field_0x76;
	uint8_t field_0x77;
	float   FrameRateMax;
	float   InitialOffsetFrac;
	float   StretchY;
	bool    DrawWithLandscapeColor;
	uint8_t field_0x85;
	uint8_t field_0x86;
	uint8_t field_0x87;
};
static_assert(sizeof(ParticleMeshCreatorAnimTextured) == 0x88, "Data type is of wrong size");

class ParticleGJMeshCreator : public ParticleCreator
{
public:
	// BW1W120 006a8f50 BW1M119 01447aa0
	ParticleGJMeshCreator(PersistentOwner* owner);

	// BW1W120 006b3b10 BW1M119 0145f9f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a9120 BW1M119 01447750
	virtual void CreateParticle(AtomCore* core);

	uint32_t    field_0x34;
	std::string MeshFileName;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	uint8_t     field_0x4b;
	uint32_t    field_0x4c;
};
static_assert(sizeof(ParticleGJMeshCreator) == 0x50, "Data type is of wrong size");

class ParticleMistCreator : public ParticleCreator
{
public:
	// BW1W120 006aa380 BW1M119 01444980
	ParticleMistCreator(PersistentOwner* owner);

	// BW1W120 006b3c00 BW1M119 0145f770
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aa530 BW1M119 01444910
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006aa540 BW1M119 01444860
	virtual void* GetBitmap();

	uint32_t    field_0x34;
	uint32_t    field_0x38;
	uint32_t    field_0x3c;
	uint32_t    field_0x40;
	uint32_t    field_0x44;
	uint32_t    field_0x48;
	uint32_t    field_0x4c;
	uint32_t    field_0x50;
	long        Pitch;
	long        NumFramesInFile;
	long        NumFramesInUse;
	std::string TextureFileName;
	float       InitialScaleMin;
	float       Ratio;
	bool        RandomiseScale;
	bool        IsShadowMap;
	bool        LoadLightMap;
	bool        TakeRatioFromMatrix;
};
static_assert(sizeof(ParticleMistCreator) == 0x7c, "Data type is of wrong size");

class ParticleAnimCreator : public ParticleCreator
{
public:
	// BW1W120 006a9180 BW1M119 01447580
	ParticleAnimCreator(PersistentOwner* owner);

	// BW1W120 006b3d70 BW1M119 0145f420
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a98c0 BW1M119 01446a20
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006a9550 BW1M119 01447240
	virtual void PreLoadData();
	// BW1W120 006a9760 BW1M119 01446f80
	virtual LH3DObject* CreateLH3DObject();

	uint32_t    field_0x34;
	uint32_t    field_0x38;
	uint32_t    field_0x3c;
	uint32_t    field_0x40;
	float       SpeedUpFactor;
	MESH_LIST   MeshEnum;
	std::string MeshFileName;
	std::string MeshFileName1;
	std::string MeshFileName2;
	ANIM_LIST   AnimEnum;
	std::string AnimFileName;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	uint8_t     field_0x93;
	uint32_t    field_0x94;
	float       FrameToStartBlend;
	float       FrameToEndBlend;
	bool        UseSuperSortedPolys;
	bool        PlayAnim;
	bool        RandomiseInitFrame;
	bool        NeverClip;
	bool        UseDynamicLighting;
	bool        UseGlobalAlpha;
	uint8_t     field_0xa6;
	uint8_t     field_0xa7;
};
static_assert(sizeof(ParticleAnimCreator) == 0xa8, "Data type is of wrong size");

class ParticleGoodEvilCreator : public ParticleCreator
{
public:
	// BW1W120 006aa970 BW1M119 01443b20
	ParticleGoodEvilCreator(PersistentOwner* owner);

	// BW1W120 006b40c0 BW1M119 0145f1b0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aaa00 BW1M119 01443990
	virtual void CreateParticle(AtomCore* core);

	ParticleCreator* PCreatorEvil;
	ParticleCreator* PCreatorGood;
	float            AlignmentSwitch;
};
static_assert(sizeof(ParticleGoodEvilCreator) == 0x40, "Data type is of wrong size");

class ParticleAnimWithCameraCreator : public ParticleAnimCreator
{
public:
	// BW1W120 006a9920 BW1M119 01446970
	ParticleAnimWithCameraCreator(PersistentOwner* owner);

	// BW1W120 006b42a0 BW1M119 0145f0c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a9b00 BW1M119 01445ff0
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006a9a00 BW1M119 014465f0
	virtual void PreLoadData();
	// BW1W120 006a9ae0 BW1M119 01446270
	virtual LH3DObject* CreateLH3DObject();

	uint32_t    field_0xa8;
	std::string CameraFileName;
	float       PauseBeforePlay;
};
static_assert(sizeof(ParticleAnimWithCameraCreator) == 0xc0, "Data type is of wrong size");

class ParticleSpriteCreator : public ParticleCreator
{
public:
	// BW1W120 006a9e30 BW1M119 01445830
	ParticleSpriteCreator(PersistentOwner* owner);

	// BW1W120 006b4380 BW1M119 0145ed60
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aa010 BW1M119 0101e980
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006aa020 BW1M119 01445690
	virtual void PreLoadData();
	// BW1W120 006aa070 BW1M119 0101d0b0
	virtual LH3DSprite* CreateSprite();

	uint32_t    field_0x34;
	uint32_t    field_0x38;
	std::string TextureFileName;
	long        NumFrames;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	uint8_t     field_0x53;
	uint32_t    field_0x54;
	float       FrameRate;
	float       StretchVertically;
	float       SpriteOriginX;
	float       SpriteOriginY;
	long        NumSpritesPerRow;
	long        ScaleAlpha;
	long        InitFrame;
	long        FileOffset;
	bool        PlayAnim;
	bool        UseLandscapeColor;
	bool        RandomiseScale;
	bool        RandomiseInitFrame;
	bool        SetHorozontal;
	bool        SetVertical;
	bool        CentreAtBase;
	bool        RandomiseFrameDirection;
	uint8_t     field_0x80;
	bool        IgnoreRotation;
	uint8_t     field_0x82;
	uint8_t     field_0x83;
};
static_assert(sizeof(ParticleSpriteCreator) == 0x84, "Data type is of wrong size");

class ParticleSymbolSpriteCreator : public ParticleCreator
{
public:
	// BW1W120 006aa280 BW1M119 01444e60
	ParticleSymbolSpriteCreator(PersistentOwner* owner);

	// BW1W120 006b45d0 BW1M119 0145ebc0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aa300 BW1M119 01444b00
	virtual void CreateParticle(AtomCore* core);
};
static_assert(sizeof(ParticleSymbolSpriteCreator) == 0x34, "Data type is of wrong size");

class ParticleLightMapCreator : public ParticleCreator
{
public:
	// BW1W120 006a9b60 BW1M119 01445e70
	ParticleLightMapCreator(PersistentOwner* owner);

	// BW1W120 006b45e0 BW1M119 0145e930
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a9d30 BW1M119 01445d40
	virtual void CreateParticle(AtomCore* core);
	// BW1W120 006a9d40 BW1M119 01445c90
	virtual void* GetBitmap();

	uint32_t    field_0x34;
	uint32_t    field_0x38;
	uint32_t    field_0x3c;
	uint32_t    field_0x40;
	uint32_t    field_0x44;
	uint32_t    field_0x48;
	uint32_t    field_0x4c;
	uint32_t    field_0x50;
	std::string TextureFileName;
	long        Pitch;
	long        NumFramesInFile;
	long        NumFramesInUse;
	float       RandJitter;
	bool        UseRandJitter;
	uint8_t     field_0x75;
	uint8_t     field_0x76;
	uint8_t     field_0x77;
	float       FrameRate;
	bool        PlayAnim;
	uint8_t     field_0x7d;
	uint8_t     field_0x7e;
	uint8_t     field_0x7f;
	float       ShiftX;
	float       ShiftZ;
};
static_assert(sizeof(ParticleLightMapCreator) == 0x88, "Data type is of wrong size");

class ParticleChainCreator : public ParticleBaseChainCreator
{
public:
	// BW1W120 006aa6c0 BW1M119 01444260
	ParticleChainCreator(PersistentOwner* owner);

	// BW1W120 006b4760 BW1M119 0145e6a0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006aa7f0 BW1M119 014440e0
	virtual void PreLoadData();
	// BW1W120 006aa880 BW1M119 01443e90
	virtual void CreateChain(long index);
	// BW1W120 006aa900 BW1M119 01443c00
	virtual void CreateChainParticle(AtomCore* core, Chain* chain, long index);

	std::string TextureFileName;
	bool        UseAdditiveAlpha;
	bool        MaterialUpdateZBuffer;
	bool        MaterialSetDoubleSided;
	uint8_t     field_0x4f;
	uint8_t     field_0x50;
	bool        UseDynamicLighting;
	uint8_t     field_0x52;
	uint8_t     field_0x53;
	long        FileOffset;
	long        FrameOfHead;
	long        FrameOfTail;
	long        FrameHeight;
	long        FrameWidth;
	long        NumTexturesForWholeChain;
};
static_assert(sizeof(ParticleChainCreator) == 0x6c, "Data type is of wrong size");

#endif /* BW1_DECOMP_PARTICLE_CREATOR_INCLUDED_H */
