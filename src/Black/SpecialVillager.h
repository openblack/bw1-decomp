#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Villager.h" /* For struct Villager */

// Forward Declares

class Base;
class GSpecialVillagerInfo;
class GVillagerInfo;
class GameOSFile;
class GameThing;
struct MapCoords;
class Object;

class SpecialVillager : public Villager
{
public:
	uint32_t field_0x134; /* 0x130 */

	// Override methods

	// BW1W120 00560fe0 BW1M119 0114f530
	virtual ~SpecialVillager();
	// BW1W120 0071f0c0 BW1M119 0114f770
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00560fd0 BW1M119 0114fc50
	virtual char* GetDebugText();
	// BW1W120 0071f5d0 BW1M119 0114ef00
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0071f560 BW1M119 0114efe0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00560fc0 BW1M119 0114fc10
	virtual uint32_t GetSaveType();
	// BW1W120 0071f3d0 BW1M119 0102ff00
	virtual void Draw();
	// BW1W120 0071f490 BW1M119 0114f210
	virtual const char* GetVillagerName();
	// BW1W120 0071f240 BW1M119 0106b580
	virtual uint32_t DrawVillagerInfo();

	// Static methods
	// BW1W120 0071f8f0 BW1M119 0114e8e0
	static void InitOnStartup();

	// BW1W120 0071f1a0 BW1M119 0114f3c0
	static SpecialVillager* Create(const MapCoords& coords, const GVillagerInfo* villager_info, uint32_t age,
	                               bool skeleton, GSpecialVillagerInfo* info);

	// Non-virtual methods

	// BW1W120 0071ef70 BW1M119 0114f7f0
	void MakeHimSpeak(wchar_t* param_1);
	// BW1W120 0071f170 BW1M119 0114f5f0
	void GetSpecialInfo();
	// BW1W120 0071f470 BW1M119 0114f270
	bool CanShowName();
};

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H */
