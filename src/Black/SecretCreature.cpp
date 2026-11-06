#include "SecretCreature.h"

#include <string.h> /* For strlen */

#include <Lionhead/LHLog/ver4.0/LHRegistry.h> /* For RegistryRetrieveINT64, RegistryRetrieveString */

static const int CreatureBitPositions[] = {
	CREATURE_BIT_POSITION(SECRET_CREATURE_LEOPARD),    //
	CREATURE_BIT_POSITION(SECRET_CREATURE_HORSE),      //
	CREATURE_BIT_POSITION(SECRET_CREATURE_MANDRILL),   //
	CREATURE_BIT_POSITION(SECRET_CREATURE_GORILLA),    //
	CREATURE_BIT_POSITION(SECRET_CREATURE_RHINO),      //
	CREATURE_BIT_POSITION(SECRET_CREATURE_RESERVED_5), //
	CREATURE_BIT_POSITION(SECRET_CREATURE_RESERVED_6), //
	CREATURE_BIT_POSITION(SECRET_CREATURE_RESERVED_7), //
};

#define CREATURE_BIT(creature) ((int64_t)1 << CreatureBitPositions[creature])
#define ALL_CREATURE_BITS                                                                                              \
	(CREATURE_BIT(SECRET_CREATURE_LEOPARD) | CREATURE_BIT(SECRET_CREATURE_HORSE) |                                     \
	 CREATURE_BIT(SECRET_CREATURE_MANDRILL) | CREATURE_BIT(SECRET_CREATURE_GORILLA) |                                  \
	 CREATURE_BIT(SECRET_CREATURE_RHINO) | CREATURE_BIT(SECRET_CREATURE_RESERVED_5) |                                  \
	 CREATURE_BIT(SECRET_CREATURE_RESERVED_6) | CREATURE_BIT(SECRET_CREATURE_RESERVED_7))

// BW1W120 007119d0 BW1M119 inlined
static void CalcTimerValue(int64_t check_sum, int64_t* timer_value);
// BW1W120 00711a80 BW1M119 inlined
static int64_t GetCreatureBits(int64_t id);
// BW1W120 00711b50 BW1M119 0114c800
static int64_t GetEncodedID(int64_t creature_bits);
// BW1W120 00711be0 BW1M119 inlined
static int64_t HashProductID(char* product_id);
// BW1W120 00711c90 BW1M119 inlined
static int64_t ClearCreatureBits(int64_t id);

SecretCreature SecretCreature::Instance;
int64_t        SecretCreature::PresentCreatures;

static void CalcTimerValue(int64_t check_sum, int64_t* timer_value)
{
	*timer_value = (((check_sum / TIMER_VALUE_DIVISOR) << (check_sum % TIMER_VALUE_DIVIDED_SHIFT_MODULUS)) |
	                ((check_sum << TIMER_VALUE_LEFT_SHIFT) << (check_sum % TIMER_VALUE_LEFT_SHIFT_MODULUS)) |
	                ((check_sum * TIMER_VALUE_MULTIPLIER) >> (check_sum % TIMER_VALUE_RIGHT_SHIFT_MODULUS))) ^
	               TIMER_VALUE_KEY;
}

static int64_t GetCreatureBits(int64_t id)
{
	return id & ALL_CREATURE_BITS;
}

static int64_t HashProductID(char* product_id)
{
	int64_t hash = 0;
	for (int i = 0; i < (int)strlen(product_id); i++)
	{
		hash += product_id[i] * i * PRODUCT_ID_HASH_CHARACTER_SCALE;
	}
	for (int j = 0; j < (int)strlen(product_id); j++)
	{
		hash |= (int64_t)product_id[j] << ((j * PRODUCT_ID_HASH_SHIFT_STEP) & PRODUCT_ID_HASH_SHIFT_MASK);
	}
	return hash;
}

static int64_t ClearCreatureBits(int64_t id)
{
	return id & ~ALL_CREATURE_BITS;
}

static int64_t GetEncodedID(int64_t creature_bits)
{
	unsigned long   size = PRODUCT_ID_LENGTH;
	char            productID[PRODUCT_ID_LENGTH] = {0};
	LH_REG_KEY_TYPE previousKey = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_LOCAL_MACHINE);
	RegistryRetrieveString(CURRENT_VERSION_REGISTRY_KEY, "ProductId", productID, &size);
	int64_t id = ClearCreatureBits(HashProductID(productID)) | creature_bits;
	LHRegistrySetCurrentKey(previousKey);
	return id;
}

SecretCreature::SecretCreature()
{
	LH_REG_KEY_TYPE previousKey = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_CURRENT_USER);

	int64_t checkSum;
	if (RegistryRetrieveINT64(BWSETUP_REGISTRY_KEY, "TimerCheckSum", &checkSum) == LH_FAIL)
	{
		LHRegistrySetCurrentKey(previousKey);
		PresentCreatures = 0;
		return;
	}
	int64_t timerValue;
	if (RegistryRetrieveINT64(BWSETUP_REGISTRY_KEY, "TimerValue", &timerValue) == LH_FAIL)
	{
		LHRegistrySetCurrentKey(previousKey);
		PresentCreatures = 0;
		return;
	}

	int64_t expectedTimerValue;
	CalcTimerValue(checkSum, &expectedTimerValue);
	checkSum = GetEncodedID(checkSum);
	checkSum = GetCreatureBits(checkSum);
	if (timerValue != expectedTimerValue)
	{
		LHRegistrySetCurrentKey(previousKey);
		PresentCreatures = 0;
		return;
	}
	PresentCreatures = checkSum;
	LHRegistrySetCurrentKey(previousKey);
}

SecretCreature::~SecretCreature() {}

bool32_t SecretCreature::IsCreaturePresent(int creature)
{
	if (PresentCreatures & CREATURE_BIT(creature))
	{
		return true;
	}
	return false;
}
