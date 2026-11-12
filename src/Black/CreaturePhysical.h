#ifndef BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <re_common.h> /* For CLAMP */

#include "Base.h" /* For struct Base */

// Forward Declares

class Archive;
class Creature;
class CreatureInfo;
class LH3DCreature;
struct MapCoords;
class Object;

class CreatureDamageMap : public Base
{
public:
	uint32_t field_0x8;
	uint32_t field_0xc;

	// Override methods

	// BW1W120 004ef4a0 BW1M119 011e9f00
	virtual ~CreatureDamageMap();
};

#define CREATURE_HEIGHT_TO_SIZE (1.0f / 15.0f)

#define CREATURE_MAX_FATNESS_CHANGE_PER_TURN 0.01f

#define CREATURE_MIN_MAX_ENERGY 1.0f

class CreaturePhysical : public Base
{
public:
	uint32_t          Age;
	float             strength;
	float             Warmth;
	float             Fatness;
	float             PreviousFatness;
	float             Energy;
	float             Itchiness;
	uint16_t          field_0x24;
	uint8_t           field_0x26;
	uint8_t           field_0x27;
	Object*           ObjectCarried;
	float             AmountOfPoo;
	float             Exhaustion;
	float             Dehydration;
	float             field_0x38;
	float             DefaultSpeedInMetres;
	float             RunningSpeedInMetres;
	bool32_t          IsAvoidingObject;
	float             field_0x48;
	float             Illness;
	int               EnvMapped;
	Creature*         creature;
	LH3DCreature*     Creature3d;
	CreatureDamageMap DamageMap;
	float             Size;
	uint32_t          NumGameTicksAlive;

	// Override methods

	// BW1W120 004ef4c0 BW1M119 011e6790
	virtual ~CreaturePhysical();
	// BW1W120 inlined BW1M119 011e3230
	float GetStrength() { return strength; }
	// BW1W120 inlined BW1M119 01509280
	float GetFatness() { return Fatness; }
	// BW1W120 004e8e70 BW1M119 0126bf30
	void SaveBody(Archive& archive);
	// BW1W120 004e8ff0 BW1M119 0126bd40
	void LoadBody(Archive& archive);
	// BW1W120 004efb60 BW1M119 01279d40
	void UpdateAttributesAfterPerformingAction(unsigned long action);
	// BW1W120 004ef510 BW1M119 0127a010
	void UpdateAttributesAsTimePasses(const CreatureInfo* info);
	// BW1W120 004efc40 BW1M119 01279c20
	void UpdateAttributesBeforeProcessingCreature3D(const CreatureInfo* info);
	// BW1W120 004f0170 BW1M119 01279640
	void ModifyStrength(float amount);
	// BW1W120 004f0100 BW1M119 01279740
	void SetStrength(float strength);
	// BW1W120 004f0210 BW1M119 01279500
	void SetEnvMapped(int env_mapped);
	// BW1W120 004f02b0 BW1M119 01279450
	static float ConvertStrengthTo3D(float strength, unsigned long creature_type);

	// Constructors

	// BW1W120 004ef2c0 BW1M119 0127a5d0
	CreaturePhysical(const MapCoords& coords, uint16_t param_2, const CreatureInfo* info, Creature* creature);

	// Non-virtual methods

	// BW1W120 004ef4f0 BW1M119 0127a570
	float GetUserSize();
	// BW1W120 inlined BW1M119 011db0c0
	uint32_t GetAge() { return Age; }
	// BW1W120 004efc20 BW1M119 01279cd0
	bool32_t IsKnackered(const CreatureInfo* info);
	// BW1W120 004efc70 BW1M119 01279b30
	uint32_t GetVisionRange();
	// BW1W120 004f00e0 BW1M119 01279810
	bool32_t StartTurning(float heading);
	// BW1W120 inlined BW1M119 011e9d60
	Object* GetObjectCarried() { return ObjectCarried; }
	// BW1W120 inlined BW1M119 01509240
	float GetEnergy() { return Energy; }
	// BW1W120 inlined BW1M119 0128f490
	float GetMaxEnergy() { return CREATURE_MIN_MAX_ENERGY > GetUserSize() ? CREATURE_MIN_MAX_ENERGY : GetUserSize(); }
	// BW1W120 inlined BW1M119 inlined
	void SetEnergy(float energy)
	{
		Energy = energy;
		CLAMP(Energy, 0.0f, 1.0f);
	}
	// BW1W120 inlined BW1M119 0128f450
	float GetExhaustion() { return Exhaustion; }
	// BW1W120 inlined BW1M119 012a0300
	float GetAmountOfPoo() { return AmountOfPoo; }
	// BW1W120 inlined BW1M119 015091c0
	float GetDehydration() { return Dehydration; }
	// BW1W120 inlined BW1M119 01509200
	float GetItchiness() { return Itchiness; }
	// BW1W120 inlined BW1M119 015092c0
	float GetWarmth() { return Warmth; }
};

#endif /* BW1_DECOMP_CREATURE_PHYSICAL_INCLUDED_H */
