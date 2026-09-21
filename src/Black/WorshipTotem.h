#ifndef BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H
#define BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "LightSheet.h"  /* For struct LightSheet */

// Forward Declares

class Base;
class EffectValues;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class WorshipSite;

struct Q212WorshipTotem13TChargingData
{
	uint8_t    field_0x0;
	LightSheet light_sheet;
	uint32_t   field_0x64;
	uint32_t   field_0x68;
	uint32_t   field_0x6c;

	// Constructors

	// BW1W120 00780af0 BW1M119 inlined
	Q212WorshipTotem13TChargingData();
};

class WorshipTotem : public CitadelPart
{
public:
	uint32_t                        field_0x8c;
	Q212WorshipTotem13TChargingData ChargingData; /* 0x90 */
	WorshipSite*                    site;         /* 0x100 */

	// Override methods

	// BW1W120 00780810 BW1M119 015be3e0
	virtual ~WorshipTotem();
	// BW1W120 007808e0 BW1M119 015bf440
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00780800 BW1M119 015be670
	virtual char* GetDebugText();
	// BW1W120 00780f10 BW1M119 015be820
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00780f90 BW1M119 015be730
	virtual uint32_t Save(GameOSFile& file);
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
	virtual uint32_t IsSacrificeAltar();
	// BW1W120 007807b0 BW1M119 inlined
	virtual void SetSpecularColor(LH3DColor param_1);
	// BW1W120 007807c0 BW1M119 015be560
	virtual LH3DColor GetSpecularColor();
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
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);

	// Static methods

	// BW1W120 00780930 BW1M119 015bf360
	static WorshipTotem* Create(WorshipSite* site);

	// Constructors

	// BW1W120 00780840 BW1M119 015bf560
	WorshipTotem(WorshipSite* site);
};

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
