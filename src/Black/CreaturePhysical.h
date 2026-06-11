#ifndef BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

// Forward Declares

class Creature;
class CreatureInfo;
class LH3DCreature;
struct MapCoords;

class CreatureDamageMap: public Base
{
public:
    uint32_t field_0x8;
    uint32_t field_0xc;

    // Override methods

    // win1.41 004ef4a0 mac 101e28f0 CreatureDamageMap::_dt(void)
    virtual ~CreatureDamageMap();
};

class CreaturePhysical: public Base
{
public:
    uint32_t field_0x8;
    float strength;
    uint32_t field_0x10;
    float field_0x14;
    float field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint16_t field_0x24;
    uint8_t field_0x26;
    uint8_t field_0x27;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    float field_0x30;
    uint32_t field_0x34;
    uint32_t field_0x38;
    float field_0x3c;
    uint32_t field_0x40;
    uint32_t field_0x44;
    float field_0x48;
    uint32_t field_0x4c;
    uint32_t field_0x50;
    Creature* creature;
    LH3DCreature* creature_3d;
    CreatureDamageMap damage_map;
    uint8_t* field_0x6c;
    uint32_t field_0x70;

    // Override methods

    // win1.41 004ef4c0 mac 101defb0 CreaturePhysical::_dt(void)
    virtual ~CreaturePhysical();

    // Constructors

    // win1.41 004ef2c0 mac 102767c0 CreaturePhysical::CreaturePhysical(MapCoords const &, unsigned short, CreatureInfo const *, Creature *)
    CreaturePhysical(const MapCoords* coords, uint16_t param_2, const CreatureInfo* info, Creature* creature);
};

#endif /* BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H */
