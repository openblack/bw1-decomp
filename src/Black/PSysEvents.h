#ifndef BW1_DECOMP_P_SYS_EVENTS_INCLUDED_H
#define BW1_DECOMP_P_SYS_EVENTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Persistent.h" /* For class Persistent */

// Forward Declares

class AtomCollection;
class AtomCore;
class PersistentOwner;
class PropertyList;

class TEventCondition : public Persistent
{
public:
	TEventCondition(PersistentOwner* owner) : Persistent(owner) { InvertResponse = false; }

	// Override methods

	// BW1W120 006ab480 BW1M119 01473da0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 purecall BW1M119 purecall
	virtual bool ConditionAlwaysTrueForCollection() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ConditionAlwaysTrueForAtom() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ConditionTrueForCollection(AtomCollection* collection) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ConditionTrueForAtom(AtomCore* core) = 0;

	// BW1W120 00670b10 BW1M119 0107f5e0
	bool TestConditionOnAtom(AtomCore* core);

	bool InvertResponse;
};
static_assert(sizeof(TEventCondition) == 0x10, "Data type is of wrong size");

class TCollectionEventCondition : public TEventCondition
{
public:
	TCollectionEventCondition(PersistentOwner* owner) : TEventCondition(owner) {}

	// Override methods

	// BW1W120 006b6df0 BW1M119 0107f580
	virtual bool ConditionAlwaysTrueForCollection() { return false; }
	// BW1W120 006b6e00 BW1M119 013fd790
	virtual bool ConditionAlwaysTrueForAtom() { return true; }
	// BW1W120 006b6e10 BW1M119 013fd7f0
	virtual bool ConditionTrueForAtom(AtomCore* core) { return false; }
};
static_assert(sizeof(TCollectionEventCondition) == 0x10, "Data type is of wrong size");

class TAtomEventCondition : public TEventCondition
{
public:
	TAtomEventCondition(PersistentOwner* owner) : TEventCondition(owner) {}

	// Override methods

	// BW1W120 006b7000 BW1M119 0108c740
	virtual bool ConditionAlwaysTrueForCollection() { return true; }
	// BW1W120 006b7010 BW1M119 0101c010
	virtual bool ConditionAlwaysTrueForAtom() { return false; }
	// BW1W120 006b7020 BW1M119 013fbff0
	virtual bool ConditionTrueForCollection(AtomCollection* collection) { return false; }
};
static_assert(sizeof(TAtomEventCondition) == 0x10, "Data type is of wrong size");

class EventConditionTrueOnCloseDown : public TCollectionEventCondition
{
public:
	EventConditionTrueOnCloseDown(PersistentOwner* owner) : TCollectionEventCondition(owner) {}

	// BW1W120 006b48e0 BW1M119 0145e610
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d7f0 BW1M119 0107ee70
	virtual bool ConditionTrueForCollection(AtomCollection* collection);
};
static_assert(sizeof(EventConditionTrueOnCloseDown) == 0x10, "Data type is of wrong size");

class EventConditionTrueWhenEnabled : public TCollectionEventCondition
{
public:
	EventConditionTrueWhenEnabled(PersistentOwner* owner) : TCollectionEventCondition(owner) {}

	// BW1W120 006b48f0 BW1M119 0145e580
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d810 BW1M119 01081b30
	virtual bool ConditionTrueForCollection(AtomCollection* collection);
};
static_assert(sizeof(EventConditionTrueWhenEnabled) == 0x10, "Data type is of wrong size");

class EC_DeflectionInAtomsHierarchy : public TAtomEventCondition
{
public:
	EC_DeflectionInAtomsHierarchy(PersistentOwner* owner) : TAtomEventCondition(owner) {}

	// BW1W120 006b4900 BW1M119 0145e4f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067daf0 BW1M119 013fc6c0
	virtual bool ConditionTrueForAtom(AtomCore* core);
};
static_assert(sizeof(EC_DeflectionInAtomsHierarchy) == 0x10, "Data type is of wrong size");

class EC_CollectionShouldBeEmitting : public TCollectionEventCondition
{
public:
	EC_CollectionShouldBeEmitting(PersistentOwner* owner) : TCollectionEventCondition(owner) {}

	// BW1W120 006b4910 BW1M119 0145e460
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d830 BW1M119 01083540
	virtual bool ConditionTrueForCollection(AtomCollection* collection);
};
static_assert(sizeof(EC_CollectionShouldBeEmitting) == 0x10, "Data type is of wrong size");

class EC_DeflectionInCollectionsHierarchy : public TCollectionEventCondition
{
public:
	EC_DeflectionInCollectionsHierarchy(PersistentOwner* owner) : TCollectionEventCondition(owner) {}

	// BW1W120 006b4920 BW1M119 0145e3d0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067db20 BW1M119 013fc600
	virtual bool ConditionTrueForCollection(AtomCollection* collection);
};
static_assert(sizeof(EC_DeflectionInCollectionsHierarchy) == 0x10, "Data type is of wrong size");

class EventConditionNever : public TCollectionEventCondition
{
public:
	EventConditionNever(PersistentOwner* owner) : TCollectionEventCondition(owner) {}

	// BW1W120 006b4930 BW1M119 0145e350
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067db90 BW1M119 013fc4c0
	virtual bool ConditionTrueForCollection(AtomCollection* collection);
};
static_assert(sizeof(EventConditionNever) == 0x10, "Data type is of wrong size");

class EventConditionCollectionDelay : public TCollectionEventCondition
{
public:
	EventConditionCollectionDelay(PersistentOwner* owner) : TCollectionEventCondition(owner) { DelayTime = 0.0f; }

	// BW1W120 006b4940 BW1M119 0145e280
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d840 BW1M119 013fce40
	virtual bool ConditionTrueForCollection(AtomCollection* collection);

	float DelayTime;
};
static_assert(sizeof(EventConditionCollectionDelay) == 0x14, "Data type is of wrong size");

class EventConditionCollectionLimitedTime : public TCollectionEventCondition
{
public:
	EventConditionCollectionLimitedTime(PersistentOwner* owner) : TCollectionEventCondition(owner)
	{
		StartTime = 0.0f;
		StopTime = 10.0f;
	}

	// BW1W120 006b4970 BW1M119 0145e190
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d870 BW1M119 013fcd60
	virtual bool ConditionTrueForCollection(AtomCollection* collection);

	float StartTime;
	float StopTime;
};
static_assert(sizeof(EventConditionCollectionLimitedTime) == 0x18, "Data type is of wrong size");

class EventConditionAtomDelay : public TAtomEventCondition
{
public:
	EventConditionAtomDelay(PersistentOwner* owner) : TAtomEventCondition(owner) { DelayTime = 0.0f; }

	// BW1W120 006b49c0 BW1M119 0145e0c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d8b0 BW1M119 013fccd0
	virtual bool ConditionTrueForAtom(AtomCore* core);

	float DelayTime;
};
static_assert(sizeof(EventConditionAtomDelay) == 0x14, "Data type is of wrong size");

class EventConditionAtomNearVillagers : public TAtomEventCondition
{
public:
	EventConditionAtomNearVillagers(PersistentOwner* owner) : TAtomEventCondition(owner) {}

	// BW1W120 006b49f0 BW1M119 0145e030
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d8e0 BW1M119 013fcb90
	virtual bool ConditionTrueForAtom(AtomCore* core);
};
static_assert(sizeof(EventConditionAtomNearVillagers) == 0x10, "Data type is of wrong size");

class EventConditionAtomBelowHeight : public TAtomEventCondition
{
public:
	EventConditionAtomBelowHeight(PersistentOwner* owner) : TAtomEventCondition(owner) { CutOffHeight = 0.0f; }

	// BW1W120 006b4a00 BW1M119 0145df60
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067dba0 BW1M119 013fc390
	virtual bool ConditionTrueForAtom(AtomCore* core);

	float CutOffHeight;
};
static_assert(sizeof(EventConditionAtomBelowHeight) == 0x14, "Data type is of wrong size");

class EC_AtomAlphaAbove : public TAtomEventCondition
{
public:
	EC_AtomAlphaAbove(PersistentOwner* owner) : TAtomEventCondition(owner) { AlphaValue = 0; }

	// BW1W120 006b4a30 BW1M119 0145deb0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067dc80 BW1M119 013fc320
	virtual bool ConditionTrueForAtom(AtomCore* core);

	long AlphaValue;
};
static_assert(sizeof(EC_AtomAlphaAbove) == 0x14, "Data type is of wrong size");

class EventConditionAtomCloseWater : public TAtomEventCondition
{
public:
	EventConditionAtomCloseWater(PersistentOwner* owner) : TAtomEventCondition(owner) { CutOffHeight = 0.0f; }

	// BW1W120 006b4a60 BW1M119 0145dde0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067dca0 BW1M119 013fc120
	virtual bool ConditionTrueForAtom(AtomCore* core);

	float CutOffHeight;
};
static_assert(sizeof(EventConditionAtomCloseWater) == 0x14, "Data type is of wrong size");

class EventConditionFireBallSteam : public TAtomEventCondition
{
public:
	EventConditionFireBallSteam(PersistentOwner* owner) : TAtomEventCondition(owner) {}

	// BW1W120 006b4a90 BW1M119 0145dd50
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067ddd0 BW1M119 013fc050
	virtual bool ConditionTrueForAtom(AtomCore* core);
};
static_assert(sizeof(EventConditionFireBallSteam) == 0x10, "Data type is of wrong size");

class EventConditionAtomBelowSpeed : public TAtomEventCondition
{
public:
	EventConditionAtomBelowSpeed(PersistentOwner* owner) : TAtomEventCondition(owner) { CutOffSpeed = 0.1f; }

	// BW1W120 006b4aa0 BW1M119 0145dc80
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067dab0 BW1M119 013fc760
	virtual bool ConditionTrueForAtom(AtomCore* core);

	float CutOffSpeed;
};
static_assert(sizeof(EventConditionAtomBelowSpeed) == 0x14, "Data type is of wrong size");

class EventConditionAtomInUse : public TAtomEventCondition
{
public:
	EventConditionAtomInUse(PersistentOwner* owner) : TAtomEventCondition(owner) {}

	// BW1W120 006b4ad0 BW1M119 0145dbf0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067db50 BW1M119 013fc590
	virtual bool ConditionTrueForAtom(AtomCore* core);
};
static_assert(sizeof(EventConditionAtomInUse) == 0x10, "Data type is of wrong size");

class EventConditionAtomHasBeenDeflected : public TAtomEventCondition
{
public:
	EventConditionAtomHasBeenDeflected(PersistentOwner* owner) : TAtomEventCondition(owner) {}

	// BW1W120 006b4ae0 BW1M119 0145db60
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067db70 BW1M119 013fc520
	virtual bool ConditionTrueForAtom(AtomCore* core);
};
static_assert(sizeof(EventConditionAtomHasBeenDeflected) == 0x10, "Data type is of wrong size");

class EventConditionAtomLimitedTime : public TAtomEventCondition
{
public:
	EventConditionAtomLimitedTime(PersistentOwner* owner) : TAtomEventCondition(owner)
	{
		StartTime = 0.0f;
		StopTime = 10.0f;
	}

	// BW1W120 006b4af0 BW1M119 0145da80
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d980 BW1M119 013fcae0
	virtual bool ConditionTrueForAtom(AtomCore* core);

	float StartTime;
	float StopTime;
};
static_assert(sizeof(EventConditionAtomLimitedTime) == 0x18, "Data type is of wrong size");

class EventConditionRandom : public TCollectionEventCondition
{
public:
	EventConditionRandom(PersistentOwner* owner) : TCollectionEventCondition(owner) { Freq = 1.0f; }

	// BW1W120 006b4b40 BW1M119 0145d9c0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067d9c0 BW1M119 013fca30
	virtual bool ConditionTrueForCollection(AtomCollection* collection);

	float Freq;
};
static_assert(sizeof(EventConditionRandom) == 0x14, "Data type is of wrong size");

class EventConditionFrameTime : public TAtomEventCondition
{
public:
	EventConditionFrameTime(PersistentOwner* owner) : TAtomEventCondition(owner)
	{
		StartFrame = -1;
		StopFrame = -1;
	}

	// BW1W120 006b4b70 BW1M119 0145d8f0
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067da00 BW1M119 013fc950
	virtual bool ConditionTrueForAtom(AtomCore* core);

	long StartFrame;
	long StopFrame;
};
static_assert(sizeof(EventConditionFrameTime) == 0x18, "Data type is of wrong size");

class EventConditionParentFrameTime : public TCollectionEventCondition
{
public:
	EventConditionParentFrameTime(PersistentOwner* owner) : TCollectionEventCondition(owner)
	{
		StartFrame = -1;
		StopFrame = -1;
	}

	// BW1W120 006b4bc0 BW1M119 0145d810
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 0067da50 BW1M119 013fc840
	virtual bool ConditionTrueForCollection(AtomCollection* collection);

	long StartFrame;
	long StopFrame;
};
static_assert(sizeof(EventConditionParentFrameTime) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_EVENTS_INCLUDED_H */
