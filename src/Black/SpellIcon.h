#ifndef BW1_DECOMP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                            /* For enum MAGIC_TYPE, enum SPELL_SEED_TYPE */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h>                              /* For bool32_t */

#include "LightSheet.h"    /* For struct LightSheet */
#include "MapCoords.h"     /* For struct MapCoords */
#include "LHPTR.h"         /* For LHPTR */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GSpellIconInfo;
class GSpellSeedInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;
class SpellSeedGraphic;
class WorshipSite;

class SpellIcon : public MultiMapFixed
{
public:
	struct TChargingData
	{
		uint8_t    field_0x0;
		LightSheet light_sheet;
		uint32_t   field_0x6c;
		int        field_0x70;
		uint32_t   field_0x74;

		// Constructors

		// BW1W120 00726690 BW1M119 0152bae0
		TChargingData();
	};

	LHFastPointer<SpellSeedGraphic> graphic;
	LHPTR<const GSpellSeedInfo>     seed_info;
	uint32_t                        field_0x84;
	TChargingData                   ChargingData;
	MapCoords                       SpellCoords;
	unsigned long                   SpecularColor;

	// Override methods

	// BW1W120 00726080 BW1M119 0152ccb0
	virtual ~SpellIcon();
	// BW1W120 007260a0 BW1M119 0152cbe0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00726540 BW1M119 0152bd70
	virtual GPlayer* GetPlayer();
	// BW1W120 00726570 BW1M119 0152bce0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0055d370 BW1M119 0152e500
	virtual SpellIcon* CastSpellIcon() { return this; }
	// BW1W120 0055d470 BW1M119 0152e830
	virtual char* GetDebugText() { return "SpellIcon:"; }
	// BW1W120 00727a00 BW1M119 01529310
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00727940 BW1M119 01529440
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d460 BW1M119 0152e7f0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SPELL_ICON; }
	// BW1W120 0055d420 BW1M119 0152e6c0
	virtual uint32_t GetCreatureBeliefType() { return CREATURE_BELIEF_TYPE_SPELL_ICON; }
	// BW1W120 00726420 BW1M119 0152c010
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 0055d430 BW1M119 0152e700
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature) { return false; }
	// BW1W120 0055d3a0 BW1M119 014a5e20
	virtual WorshipSite* GetWorshipSite() { return NULL; }
	// BW1W120 0055d450 BW1M119 0152e7b0
	virtual bool32_t IsSpellIcon() { return true; }
	// BW1W120 007261a0 BW1M119 0152c800
	virtual void Create3DObject();
	// BW1W120 007265d0 BW1M119 0152bb70
	virtual int MoveMapObject(const MapCoords& param_1);
	// BW1W120 0055d380 BW1M119 inlined
	virtual void SetSpecularColor(unsigned long color) { SpecularColor = color; }
	// BW1W120 0055d390 BW1M119 0152e580
	virtual LH3DColor GetSpecularColor();
	// BW1W120 007265c0 BW1M119 0152bcb0
	virtual uint32_t Process();
	// BW1W120 0055d440 BW1M119 0152e750
	virtual MESH_LIST GetMesh() const { return info->GetMesh(); }
	// BW1W120 00519650 BW1M119 010cad50
	virtual void Draw();
	// BW1W120 00726160 BW1M119 0152c920
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055d400 BW1M119 0152e630
	virtual bool32_t IsSpellSeedReturnPoint() const { return true; }
	// BW1W120 0055d410 BW1M119 0152e670
	virtual bool32_t ValidAsInterfaceLeashTarget() { return false; }
	// BW1W120 007263c0 BW1M119 0152c070
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00726430 BW1M119 0152bf30
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 007260e0 BW1M119 0152cb90
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0055d3b0 BW1M119 0152e5c0
	virtual bool32_t IsRepaired() { return GetPercentRepaired() >= 1.0f; }
	// BW1W120 0055d3d0 BW1M119 010caf30
	virtual bool32_t IsBuilt()
	{
		if ((FixedFlags & FIXED_FLAG_UNDER_CONSTRUCTION) == FIXED_FLAG_UNDER_CONSTRUCTION)
		{
			return false;
		}
		return GetPercentBuilt() >= 1.0f;
	}

	// Constructors

	// BW1W120 0055d320 BW1M119 0130f190
	SpellIcon() { SetToZero(); }
	// BW1W120 00725ff0 BW1M119 0152cd50
	SpellIcon(const MapCoords& coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, float y_angle,
	          float scale, float param_6, int param_7);

	// Non-virtual methods

	// BW1W120 007260f0 BW1M119 0152caf0
	void SetToZero();
	// BW1W120 00726d20 BW1M119 0152b110
	void DrawMagicSystem();
	// BW1W120 00726d30 BW1M119 0152b050
	void DrawSpellSeedGraphic(uint8_t param_1);
	// BW1W120 00726310 BW1M119 0152c2b0
	bool32_t IsSpellSeed(SPELL_SEED_TYPE type);
	// BW1W120 00726350 BW1M119 0152c3c0
	GSpellSeedInfo* GetSpellSeedInfo() const;
	// BW1W120 00726360 BW1M119 0152c220
	SPELL_SEED_TYPE GetSpellSeedType();
	// BW1W120 00726380 BW1M119 0152c1c0
	MAGIC_TYPE GetMagicType();
};

#endif /* BW1_DECOMP_SPELL_ICON_INCLUDED_H */
