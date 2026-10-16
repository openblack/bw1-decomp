#ifndef BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H
#define BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "LHPTR.h"       /* For LHPTR */
#include "LightSheet.h"  /* For struct LightSheet */

// Forward Declares

class Base;
class EffectValues;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class GInterfaceStatus;
class GWorshipSiteInfo;
struct MapCoords;
class Object;
class Villager;
class WorshipSite;

#define WORSHIP_TOTEM_CHANTS_FOR_FULL_PSYS_POWER 11000.0f
#define WORSHIP_TOTEM_CHARGE_RING_POINTS         10

class WorshipTotem : public CitadelPart
{
public:
	struct TChargingData
	{
		bool        SheetInitialised; /* 0x0 */
		LightSheet  Sheet;            /* 0x4 */
		LH3DObject* PulseObject;      /* 0x6c */

		// Constructors

		// BW1W120 00780af0 BW1M119 inlined
		TChargingData();
		// BW1W120 00780b10 BW1M119 015befa0
		~TChargingData();

		// Non-virtual methods

		// BW1W120 00780b40 BW1M119 015bee30
		void Init();
		// BW1W120 00780be0 BW1M119 015be9d0
		void Draw(WorshipTotem* totem);
	};

	uint32_t           SpecularColor; /* 0x8c */
	TChargingData      ChargingData;  /* 0x90 */
	LHPTR<WorshipSite> Site;          /* 0x100 */

	// Override methods

	// BW1W120 007808e0 BW1M119 015bf440
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00780800 BW1M119 015be670
	virtual char* GetDebugText();
	// BW1W120 00780f10 BW1M119 015be820
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00780f90 BW1M119 015be730
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 007807f0 BW1M119 015be630
	virtual uint32_t GetSaveType();
	// BW1W120 00780f00 BW1M119 015be910
	virtual void ResolveLoad();
	// BW1W120 00780ad0 BW1M119 015bf080
	virtual float GetPSysPower() const;
	// BW1W120 00780a80 BW1M119 015bf250
	virtual float CalculateDesireForFood();
	// BW1W120 00780a90 BW1M119 015bf1e0
	virtual float CalculateDesireForRest();
	// BW1W120 00780aa0 BW1M119 015bf160
	virtual float CalculatePeopleHidingIndicator();
	// BW1W120 007807e0 BW1M119 015be5f0
	virtual bool32_t IsSacrificeAltar();
	// BW1W120 007807b0 BW1M119 inlined
	virtual void SetSpecularColor(unsigned long color);
	// BW1W120 007807c0 BW1M119 015be560
	virtual unsigned long GetSpecularColor();
	// BW1W120 00780a70 BW1M119 015bf2c0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00519360 BW1M119 010cb170
	virtual void Draw();
	// BW1W120 00780ab0 BW1M119 015bf0f0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 007807d0 BW1M119 015be5a0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00780790 BW1M119 015be480
	virtual bool32_t IsSpellSeedReturnPoint() const;
	// BW1W120 007807a0 BW1M119 015be4d0
	virtual bool32_t IsEffectReceiver(EffectValues* values);
	// BW1W120 00781010 BW1M119 015be6b0
	virtual void DiscipleInHandNear(Villager& villager, GInterfaceStatus& status);

	// Static methods

	// BW1W120 00780930 BW1M119 015bf360
	static WorshipTotem* Create(WorshipSite* site);

	// Constructors

	// BW1W120 00780740 BW1M119 015bf6d0
	WorshipTotem();
	// BW1W120 00780840 BW1M119 015bf560
	WorshipTotem(WorshipSite* site);

	// Non-virtual methods

#ifndef VERSION_BW1W100
	// BW1W120 00780980 BW1M119 null
	float GetMaxSinkDepth();
	// BW1W120 007809c0 BW1M119 null
	void SetSinkFromWorshipSpeed();
	// BW1W120 007809f0 BW1M119 null
	void SetWorshipSpeedFromSink();
#endif // VERSION_BW1W100
	// BW1W120 00780a60 BW1M119 015bf320
	const GWorshipSiteInfo* GetInfo() const;
	// BW1W120 00780ee0 BW1M119 015be960
	void DrawMagicSystem();
};

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
