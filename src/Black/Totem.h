#ifndef BW1_DECOMP_TOTEM_INCLUDED_H
#define BW1_DECOMP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "Abode.h"     /* For struct Abode */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class EffectValues;
class GAbodeInfo;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;
class Town;

class Totem : public Abode
{
public:
	MapCoords field_0xc4;
	MapCoords field_0xd0;
	uint32_t  field_0xdc;
	uint32_t  field_0xe0;

	// Override methods

	// BW1W120 00561580 BW1M119 0112f890
	virtual ~Totem();
	// BW1W120 00737410 BW1M119 0154c480
	virtual void Delete();
	// BW1W120 00737430 BW1M119 0154c400
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561570 BW1M119 0154b720
	virtual char* GetDebugText();
	// BW1W120 00737800 BW1M119 0154b890
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007378b0 BW1M119 0154b760
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561560 BW1M119 0154b6f0
	virtual uint32_t GetSaveType();
	// BW1W120 00561530 BW1M119 0113c380
	virtual bool32_t IsCastShadowAtNight();
	// BW1W120 00561510 BW1M119 0113c2e0
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 00561500 BW1M119 0113c290
	virtual bool32_t CanBeImpressedByCreature(Creature* param_1);
	// BW1W120 004e3e60 BW1M119 015ee530
	virtual bool32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1);
	// BW1W120 0051aba0 BW1M119 010c8ea0
	virtual void Draw();
	// BW1W120 00737490 BW1M119 0154c2a0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00737520 BW1M119 0154c080
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 00737570 BW1M119 0154bfa0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 007375c0 BW1M119 0154bf30
	virtual bool32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 00737610 BW1M119 0154bd30
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 007375e0 BW1M119 0154bea0
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 00737600 BW1M119 0154be40
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00561520 BW1M119 0113c330
	virtual bool32_t IsEffectReceiver(EffectValues* param_1);

	// Constructors

	// BW1W120 00737390 BW1M119 0154c4f0
	Totem(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
	      int wood);

	// Static methods

	// BW1W120 007374c0 BW1M119 0154c180
	static Totem* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                     float food, int wood);
};

#endif /* BW1_DECOMP_TOTEM_INCLUDED_H */
