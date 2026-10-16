#ifndef BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H
#define BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHMatrix.h>  /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>     /* For class LHLinkedList */

#include "CalculateDrawPosInfo.h" /* For class CalculateDrawPosInfo */
#include "GJBaseUtils.h"          /* For GJArray, GJDoubleLinkList */
#include "PSysAnimInfo.h"         /* For class PSysAnimInfo */
#include "PSysBase.h"             /* For struct PSysBase */
#include "PSysModifiers.h"        /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

class AtomCollectionModifier;
class AtomCore;
class Base;
class Chain;
class DrawOffset;
class GameOSFile;
class GameThing;
class PSysManager;
class PSysSound;
class PSysSoundAction;
class RenderParticle;

#define PSYS_MAX_ALPHA 255.0f

#if defined(VERSION_BW1W100)
#define PSYS_ATOM_CORE_HEADER_FILE "C:\\dev\\black\\PSysAtomCore.h"
#elif defined(VERSION_BW1W110)
#define PSYS_ATOM_CORE_HEADER_FILE "C:\\dev\\Black\\PSysAtomCore.h"
#else
#define PSYS_ATOM_CORE_HEADER_FILE "C:\\dev\\MP\\Black\\PSysAtomCore.h"
#endif

class AtomCollection : public PSysBase
{
public:
	AtomCollection*                              Previous;
	AtomCollection*                              Next;
	LHLinkedList<const AtomCollectionModifier*>  Modifiers;
	GJDoubleLinkList<BaseCollectionModifierData> ModifierData;
	float                                        BirthTime;
	PSysManager*                                 Manager;
	long                                         Group;
	uint8_t                                      InGlobalCoords : 1;
	uint8_t                                      InterpolateDrawPos : 1;
	uint8_t                                      field_0x38 : 6;
	uint8_t                                      field_0x39;
	uint8_t                                      field_0x3a;
	uint8_t                                      field_0x3b;
	AtomCore*                                    ParentAtom;
	GJDoubleLinkList<AtomCore>                   Atoms;
	Chain*                                       ParticleChain;
	bool32_t                                     TransmitsTransform;
	uint8_t                                      Alpha;

	// BW1W120 00674890 BW1M119 013eac80
	virtual ~AtomCollection();
	// BW1W120 00674880 BW1M119 0142cb40
	virtual char* GetDebugText();
	// BW1W120 00674870 BW1M119 0142cb00
	virtual uint32_t GetSaveType();

	// BW1W120 00674830 BW1M119 013eaf30
	AtomCollection();

	// Non-virtual methods

	// BW1W120 00674ed0 BW1M119 01079960
	float GetAge();
	// BW1W120 00674af0 BW1M119 0108c6c0
	const LHPoint* GetCurrentParentPos();
	// BW1W120 00674bb0 BW1M119 0108c7a0
	const LHPoint* GetCurrentParentVel();
	// BW1W120 006751d0 BW1M119 013e8b70
	void LocalToGlobal(LHPoint* pos) const;
	// BW1W120 00675410 BW1M119 0101bd00
	void GlobalToLocal(LHPoint* pos) const;
	// BW1W120 00674c00 BW1M119 01014d10
	void DeleteFromAtomList(AtomCore* core);
	// BW1W120 00674c60 BW1M119 01075e70
	void CommonInitNewAtom(AtomCore* core);
	// BW1W120 00674eb0 BW1M119 013ea3c0
	void InitNewAtom(AtomCore* core, long group);
	// BW1W120 00674dd0 BW1M119 010814e0
	void InitNewAtom(AtomCore* core, const GJArray<long>& groups);
	// BW1W120 inlined BW1M119 010a1c60
	AtomCore* GetParentAtom() const { return ParentAtom; }
	// BW1W120 inlined BW1M119 013e9d50
	bool IsInGlobalCoords() { return InGlobalCoords; }

	template <class T> void FindModifier(const T*& modifier) const
	{
		modifier = NULL;
		for (LHLinkedNode<const AtomCollectionModifier*>* node = Modifiers.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			modifier = dynamic_cast<const T*>(node->payload);
			if (modifier)
			{
				break;
			}
		}
	}

	// Finds the data this collection keeps for the modifier, creating it on first use.
	template <class T> void GetModifierData(const AtomCollectionModifier* modifier, T*& data)
	{
		for (GJDoubleLinkList<BaseCollectionModifierData>::Iterator it(ModifierData); !it.IsFinished(); it++)
		{
			if (it->Modifier == modifier)
			{
				data = (T*)it.GetRef();
				return;
			}
		}
		data = new (PSYS_ATOM_CORE_HEADER_FILE, 206) T(modifier);
		ModifierData.InsertIntoList(data);
	}
};
static_assert(offsetof(AtomCollection, ModifierData) == 0x24, "Data member is at wrong offset");
static_assert(offsetof(AtomCollection, Manager) == 0x30, "Data member is at wrong offset");
static_assert(offsetof(AtomCollection, Atoms) == 0x40, "Data member is at wrong offset");
static_assert(sizeof(AtomCollection) == 0x54, "Data type is of wrong size");

class AtomCore : public PSysBase
{
public:
	AtomCore*                              Previous;
	AtomCore*                              Next;
	GJDoubleLinkList<AtomCollection>       SubCollections;
	GJDoubleLinkList<BaseAtomModifierData> ModifierData;
	GJDoubleLinkList<PSysSound>            Sounds;
	LHPoint                                Velocity;
	float                                  BirthTime;
	LHMatrix                               RotationMatrix;
	float                                  BaseScale;
	float                                  Scale;
	float                                  StretchHeight;
	LHPoint                                LocalPos;
	LH3DColor                              Colour;
	LH3DColor                              Specular;
	uint8_t                                Flag0 : 1;
	uint8_t                                Flag1 : 1;
	uint8_t                                Flag2 : 1;
	uint8_t                                HasBeenDeflected : 1;
	uint8_t                                InUse : 1;
	uint8_t                                field_0x95;
	uint16_t                               field_0x96;
	CalculateDrawPosInfo                   DrawPosInfo;
	CalculateDrawPosInfo                   LastDrawPosInfo;
	float                                  field_0x108;
	float                                  FrameTime;
	PSysAnimInfo                           AnimInfo;
	float                                  GravityScale;
	AtomCollection*                        Collection;
	DrawOffset*                            Offset;
	RenderParticle*                        Particle;
	uint8_t                                RandomSeed;

	// Override methods

	// BW1W120 006739f0 BW1M119 010941f0
	virtual ~AtomCore();
	// BW1W120 00673c70 BW1M119 013ed030
	virtual float GetRadius();
	// BW1W120 006739e0 BW1M119 0142cbc0
	virtual char* GetDebugText();
	// BW1W120 00694840 BW1M119 01426200
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb3a0 BW1M119 0148d310
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006739d0 BW1M119 0142cb80
	virtual uint32_t GetSaveType();

	// BW1W120 00673830 BW1M119 010807b0
	AtomCore();

	// Static methods

	// BW1W120 006737f0 BW1M119 01080a00
	static AtomCore* Create();

	// Non-virtual methods

	// BW1W120 00673af0 BW1M119 013ed2e0
	void SetDrawOffset(DrawOffset* offset);
	// BW1W120 00673b70 BW1M119 0108aa60
	void AddSubCollections(const GJArray<long>& groups);
	// BW1W120 00673bb0 BW1M119 013ed160
	void AddSubCollection(long group);
	// BW1W120 00673bd0 BW1M119 013ed0b0
	void MoveToBaseGroup(long group);
	// BW1W120 00673cc0 BW1M119 0103a160
	float GetAtomAge() const;
	// BW1W120 00673ce0 BW1M119 01027290
	void SetAtomAge(float age);
	// BW1W120 00673d00 BW1M119 013ece30
	void LocalToGlobal(LHPoint* pos) const;
	// BW1W120 00673d40 BW1M119 0101bc90
	void GlobalToLocal(LHPoint* pos) const;
	// BW1W120 00673d80 BW1M119 013ec870
	void CalculateGlobalPos(LHPoint* pos) const;
	// BW1W120 00673e40 BW1M119 013ec560
	void CalculateGlobalPos(LHMatrix* matrix) const;
	// BW1W120 00673e60 BW1M119 013ec4c0
	void GetRandomSurfacePos(LHPoint* pos) const;
	// BW1W120 00674100 BW1M119 0101d050
	void SetFrame(long frame);
	// BW1W120 00674120 BW1M119 013ebdb0
	void SetRotationMatrix(const LHMatrix& matrix);
	// BW1W120 00674360 BW1M119 013eb870
	void SetAngleY(float angle);
	// BW1W120 006743a0 BW1M119 013eb7a0
	void SetAngleZ(float angle);
	// BW1W120 006743e0 BW1M119 013eb6f0
	void RandomiseOrientation();
	// BW1W120 00674420 BW1M119 013eb640
	void GetLastGlobalMovement(LHPoint* movement) const;
	// BW1W120 00674500 BW1M119 013eb270
	void StopSound(PSysSound* sound);
	// BW1W120 00674550 BW1M119 013eb210
	PSysSound* GetSoundOfAction(long action);
	// BW1W120 00674570 BW1M119 013eb150
	bool HasActiveSoundOfAction(long action);
	// BW1W120 006745d0 BW1M119 0109f6c0
	void StartSound(const PSysSoundAction& action);
	// BW1W120 006747e0 BW1M119 013eb080
	void StopAllSounds();
	// BW1W120 inlined BW1M119 01053da0
	const LHPoint& GetLocalPos() const { return LocalPos; }
	// BW1W120 inlined BW1M119 013e9d00
	void SetLocalPos(const LHPoint& pos) { LocalPos = pos; }
	// BW1W120 inlined BW1M119 013eb3d0
	AtomCore* GetParentAtom() const { return Collection ? Collection->ParentAtom : NULL; }
	// BW1W120 inlined BW1M119 inlined
	DrawOffset* GetDrawOffset() const { return Offset; }
	// BW1W120 inlined BW1M119 013eb5b0
	float GetCombinedScale() const { return Scale * BaseScale; }
	// BW1W120 inlined BW1M119 inlined
	float GetScale() const { return Scale; }
	// BW1W120 inlined BW1M119 inlined
	float GetGravityScale() const { return GravityScale; }
	// BW1W120 inlined BW1M119 inlined
	uint8_t GetAlpha() const { return Colour.a; }
	// BW1W120 inlined BW1M119 013eb600
	const LHMatrix& GetRotationMatrix() const { return RotationMatrix; }
	// BW1W120 inlined BW1M119 inlined
	void SetScale(float scale) { Scale = scale; }
	// BW1W120 inlined BW1M119 inlined
	void SetStretchHeight(float stretch_height) { StretchHeight = stretch_height; }
	// BW1W120 inlined BW1M119 inlined
	void SetScaleXYZ(float scale_y, float scale_xz)
	{
		Scale = scale_xz;
		StretchHeight = scale_xz > 0.0001f ? scale_y / scale_xz : 0.0f;
	}
	// BW1W120 inlined BW1M119 inlined
	void SetAlpha(uint8_t alpha)
	{
		*(uint32_t*)&Colour &= 0x00ffffff;
		*(uint32_t*)&Colour |= alpha << 24;
	}

	// Finds the data this atom keeps for the modifier, creating it on first use.
	template <class T> void GetModifierData(const AtomCollectionModifier* modifier, T*& data)
	{
		for (GJDoubleLinkList<BaseAtomModifierData>::Iterator it(ModifierData); !it.IsFinished(); it++)
		{
			if (it->Modifier == modifier)
			{
				data = (T*)it.GetRef();
				return;
			}
		}
		data = new (PSYS_ATOM_CORE_HEADER_FILE, 506) T(modifier);
		ModifierData.InsertIntoList(data);
	}
};
static_assert(offsetof(AtomCore, Velocity) == 0x34, "Data member is at wrong offset");
static_assert(offsetof(AtomCore, LocalPos) == 0x80, "Data member is at wrong offset");
static_assert(offsetof(AtomCore, DrawPosInfo) == 0x98, "Data member is at wrong offset");
static_assert(offsetof(AtomCore, AnimInfo) == 0x110, "Data member is at wrong offset");
static_assert(offsetof(AtomCore, Collection) == 0x120, "Data member is at wrong offset");
static_assert(sizeof(AtomCore) == 0x130, "Data type is of wrong size");

#undef PSYS_ATOM_CORE_HEADER_FILE

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
