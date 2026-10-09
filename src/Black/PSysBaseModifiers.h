#ifndef BW1_DECOMP_P_SYS_BASE_MODIFIERS_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_MODIFIERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */

#include "GJBaseUtils.h"     /* For GJArray */
#include "PSysSoundAction.h" /* For class PSysSoundAction */
#include "Persistent.h"      /* For class Persistent, class FloatProvider */

// Forward Declares

class AtomCollection;
class AtomCore;
class ParticleCreator;
class PersistentOwner;
class PropertyList;
class PSysManager;
class TEventCondition;

class AtomCollectionModifier : public Persistent
{
public:
	// BW1W120 00675a40 BW1M119 013ef170
	AtomCollectionModifier(PersistentOwner* owner);

	// BW1W120 00675aa0 BW1M119 013eefd0
	virtual ~AtomCollectionModifier() {}
	// BW1W120 006ab340 BW1M119 01473e20
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00675a80 BW1M119 0109acd0
	virtual void AddReference(AtomCollection* collection) const;
	// BW1W120 00675a90 BW1M119 0109fb50
	virtual void DeleteReference(AtomCollection* collection) const;
	// BW1W120 00675b10 BW1M119 010437e0
	virtual void ModifyAtomCollection(AtomCollection* collection) const;
	// BW1W120 00675b80 BW1M119 013ef070
	virtual void ModifyAtomCore(AtomCore* core) const;

	mutable short    ReferenceCount;
	uint16_t         field_0xe;
	uint32_t         Flags;
	long             Group;
	bool             RemoveOnCloseDown;
	TEventCondition* Condition;
};
static_assert(sizeof(AtomCollectionModifier) == 0x20, "Data type is of wrong size");

class UpdateRule : public AtomCollectionModifier
{
public:
	UpdateRule(PersistentOwner* owner) : AtomCollectionModifier(owner) { Flags |= 8; }

	// BW1W120 006abc70 BW1M119 01472ad0
	virtual void DefineProperties(PropertyList* list);
};
static_assert(sizeof(UpdateRule) == 0x20, "Data type is of wrong size");

class AppearanceUpdateRule : public AtomCollectionModifier
{
public:
	AppearanceUpdateRule(PersistentOwner* owner) : AtomCollectionModifier(owner) { Flags |= 0x10; }

	// BW1W120 006bb960 BW1M119 01455640
	virtual ~AppearanceUpdateRule() {}
	// BW1W120 006ab4a0 BW1M119 01473c70
	virtual void DefineProperties(PropertyList* list);
};
static_assert(sizeof(AppearanceUpdateRule) == 0x20, "Data type is of wrong size");

class AtomCreateRule : public AtomCollectionModifier
{
public:
	AtomCreateRule(PersistentOwner* owner) : AtomCollectionModifier(owner)
	{
		Flags |= 6;
		PCreator = NULL;
	}

	// BW1W120 006af6f0 BW1M119 0146bd90
	virtual void DefineProperties(PropertyList* list);

	// BW1W120 0069e050 BW1M119 0143ea60
	unsigned long NextGroupsGetSize();
	// BW1W120 0069e060 BW1M119 0143ea00
	void NextGroupsSetSize(unsigned long size);
	// BW1W120 0069e0c0 BW1M119 0143e9b0
	long NextGroupsGet(unsigned long index);
	// BW1W120 0069e0d0 BW1M119 0143e960
	void NextGroupsSet(unsigned long index, long group);

	GJArray<long>    NextGroups;
	ParticleCreator* PCreator;
};
static_assert(sizeof(AtomCreateRule) == 0x2c, "Data type is of wrong size");

class OnceOnlyCreateRule : public AtomCreateRule
{
public:
	OnceOnlyCreateRule(PersistentOwner* owner) : AtomCreateRule(owner) {}

	// BW1W120 006b0b50 BW1M119 01468a10
	virtual void DefineProperties(PropertyList* list);
};
static_assert(sizeof(OnceOnlyCreateRule) == 0x2c, "Data type is of wrong size");

class EmitterRule : public AtomCreateRule
{
public:
	class CollectionData : public BaseCollectionModifierData
	{
	public:
		long NumEmitted;
		long EmitTime;
		bool FirstUpdate;

		// BW1W120 0055fd40 BW1M119 inlined
		CollectionData(const AtomCollectionModifier* modifier)
			: BaseCollectionModifierData(modifier), NumEmitted(0), EmitTime(0)
		{
			FirstUpdate = true;
		}

		// BW1W120 0055fd70 BW1M119 01427820
		virtual uint32_t GetSaveType() { return GAME_THING_TYPE_EMITTER_RULE_COLLECTION_DATA; }
		// BW1W120 0055fd80 BW1M119 01427870
		virtual char* GetDebugText() { return "##a_class:"; }
		// BW1W120 006993d0 BW1M119 014214e0
		virtual uint32_t Load(GameOSFile& file);
		// BW1W120 006cfee0 BW1M119 014885d0
		virtual uint32_t Save(GameOSFile& file);
	};

	EmitterRule(PersistentOwner* owner) : AtomCreateRule(owner)
	{
		EmissionFreq = 0.001f;
		MaxAtoms = -1;
		MaxTotalAtomsToEmit = -1;
		InitiallyVisible = true;
		Randomise = true;
		AllowMultipleEmits = false;
	}

	// BW1W120 006af8e0 BW1M119 0146ba40
	virtual void DefineProperties(PropertyList* list);

	// BW1W120 006a63a0 BW1M119 01075040
	void ShouldEmit(AtomCollection* collection) const;

	float           EmissionFreq;
	long            MaxAtoms;
	long            MaxTotalAtomsToEmit;
	bool            InitiallyVisible;
	bool            Randomise;
	bool            AllowMultipleEmits;
	PSysSoundAction SoundEmission;
};
static_assert(sizeof(EmitterRule::CollectionData) == 0x2c, "Data type is of wrong size");
static_assert(sizeof(EmitterRule) == 0x54, "Data type is of wrong size");

class RemoveRule : public AtomCollectionModifier
{
public:
	RemoveRule(PersistentOwner* owner) : AtomCollectionModifier(owner) { Flags |= 0x20; }

	// BW1W120 006b32b0 BW1M119 01460f90
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006a3e60 BW1M119 010399c0
	virtual void ModifyAtomCore(AtomCore* core) const;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ShouldRemove(AtomCollection* collection, AtomCore* core) const = 0;
};
static_assert(sizeof(RemoveRule) == 0x20, "Data type is of wrong size");

class ConstFloatProvider : public FloatProvider
{
public:
	ConstFloatProvider(PersistentOwner* owner) : FloatProvider(owner), ConstValue(0.0f) {}

	// BW1W120 006ab1a0 BW1M119 014743f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069da80 BW1M119 0143f530
	virtual void UpdateParams(const PSysManager* manager);

	float ConstValue;
};
static_assert(sizeof(ConstFloatProvider) == 0x14, "Data type is of wrong size");

class FloatProvider_ParentAtomScale : public FloatProvider
{
public:
	FloatProvider_ParentAtomScale(PersistentOwner* owner) : FloatProvider(owner), Scale(1.0f) {}

	// BW1W120 006ab1c0 BW1M119 01474350
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 006b8150 BW1M119 014753e0
	virtual void UpdateParams(const PSysManager* manager) {}
	// BW1W120 0069da60 BW1M119 0143f590
	virtual float GetValueForCollection(AtomCollection* collection);

	float Scale;
};
static_assert(sizeof(FloatProvider_ParentAtomScale) == 0x14, "Data type is of wrong size");

class MagnitudeFloatProvider : public FloatProvider
{
public:
	MagnitudeFloatProvider(PersistentOwner* owner)
		: FloatProvider(owner), ScaleBy(1.0f), Minimum(-1000000.0f), Maximum(1000000.0f)
	{
	}

	// BW1W120 006ab1e0 BW1M119 01474260
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069da90 BW1M119 0107f6e0
	virtual void UpdateParams(const PSysManager* manager);

	float ScaleBy;
	float Minimum;
	float Maximum;
};
static_assert(sizeof(MagnitudeFloatProvider) == 0x1c, "Data type is of wrong size");

class StrengthFloatProvider : public FloatProvider
{
public:
	StrengthFloatProvider(PersistentOwner* owner)
		: FloatProvider(owner), ScaleBy(1.0f), Minimum(-1000000.0f), Maximum(1000000.0f)
	{
	}

	// BW1W120 006ab240 BW1M119 01474180
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069daf0 BW1M119 01083fd0
	virtual void UpdateParams(const PSysManager* manager);

	float ScaleBy;
	float Minimum;
	float Maximum;
};
static_assert(sizeof(StrengthFloatProvider) == 0x1c, "Data type is of wrong size");

class MagnitudeTimesStrengthFloatProvider : public FloatProvider
{
public:
	MagnitudeTimesStrengthFloatProvider(PersistentOwner* owner) : FloatProvider(owner)
	{
		ScaleBy = 1.0f;
		Minimum = 0.0f;
		Maximum = 100.0f;
	}

	// BW1W120 006ab2a0 BW1M119 01474090
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069db50 BW1M119 0143f340
	virtual void UpdateParams(const PSysManager* manager);

	float ScaleBy;
	float Minimum;
	float Maximum;
};
static_assert(sizeof(MagnitudeTimesStrengthFloatProvider) == 0x1c, "Data type is of wrong size");

class RenderHandScaleFloatProvider : public FloatProvider
{
public:
	RenderHandScaleFloatProvider(PersistentOwner* owner) : FloatProvider(owner) { ScaleBy = 1.0f; }

	// BW1W120 006ab300 BW1M119 01473ff0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069a750 BW1M119 0142df90
	virtual void UpdateParams(const PSysManager* manager);

	float ScaleBy;
};
static_assert(sizeof(RenderHandScaleFloatProvider) == 0x14, "Data type is of wrong size");

class RenderHandScaleTimesStrengthFloatProvider : public FloatProvider
{
public:
	RenderHandScaleTimesStrengthFloatProvider(PersistentOwner* owner) : FloatProvider(owner) { ScaleBy = 1.0f; }

	// BW1W120 006ab320 BW1M119 01473f50
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0069a770 BW1M119 0142df10
	virtual void UpdateParams(const PSysManager* manager);

	float ScaleBy;
};
static_assert(sizeof(RenderHandScaleTimesStrengthFloatProvider) == 0x14, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_BASE_MODIFIERS_INCLUDED_H */
