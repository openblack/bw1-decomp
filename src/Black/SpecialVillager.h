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

class SpecialVillager: public Villager
{
public:
    uint32_t field_0x134; /* 0x130 */

    // Override methods

    // BW1W120 00560fe0 BW1M100 10147590 SpecialVillager::_dt(void)
    virtual ~SpecialVillager();
    // BW1W120 0071f0c0 BW1M100 101477e0 SpecialVillager::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00560fd0 BW1M100 10147cc0 SpecialVillager::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0071f5d0 BW1M100 10146d20 SpecialVillager::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0071f560 BW1M100 10146e00 SpecialVillager::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00560fc0 BW1M100 10147c80 SpecialVillager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0071f3d0 BW1M100 1002d450 SpecialVillager::Draw(void)
    virtual void Draw();
    // BW1W120 0071f490 BW1M100 10147040 SpecialVillager::GetVillagerName(void)
    virtual const char* GetVillagerName();
    // BW1W120 0071f240 BW1M100 10068e20 SpecialVillager::DrawVillagerInfo(void)
    virtual uint32_t DrawVillagerInfo();

    // Static methods

    // BW1W120 0071f1a0 BW1M100 10147420 SpecialVillager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int, GSpecialVillagerInfo *)
    static SpecialVillager* Create(const MapCoords* coords, const GVillagerInfo* villager_info, uint32_t age, bool skeleton, GSpecialVillagerInfo* info);

    // Non-virtual methods

    // BW1W120 0071f470 BW1M100 101470a0 SpecialVillager::CanShowName(void)
    bool CanShowName();
};

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H */
