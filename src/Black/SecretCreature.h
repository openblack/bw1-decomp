#ifndef BW1_DECOMP_SECRET_CREATURE_INCLUDED_H
#define BW1_DECOMP_SECRET_CREATURE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For int64_t */

#define BWSETUP_REGISTRY_KEY         "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"
#define CURRENT_VERSION_REGISTRY_KEY "SOFTWARE\\Microsoft\\Windows\\CurrentVersion"
#define PRODUCT_ID_LENGTH            255

#define CREATURE_BIT_POSITION(byte) ((byte) * 8 + 7)

#define TIMER_VALUE_KEY (((int64_t)'D' << 48) | ((int64_t)'A' << 32) | ((int64_t)'N' << 16) | (int64_t)'D')

enum SECRET_CREATURE
{
	SECRET_CREATURE_LEOPARD,
	SECRET_CREATURE_HORSE,
	SECRET_CREATURE_MANDRILL,
	SECRET_CREATURE_GORILLA,
	SECRET_CREATURE_RHINO,
	SECRET_CREATURE_RESERVED_5,
	SECRET_CREATURE_RESERVED_6,
	SECRET_CREATURE_RESERVED_7,
};

class SecretCreature
{
public:
	// BW1W120 00d99038
	static SecretCreature Instance;
	// BW1W120 00d99040
	static int64_t PresentCreatures;

	// BW1W120 00711d90 BW1M119 0114c3b0
	static bool32_t IsCreaturePresent(int creature);

	// BW1W120 007118e0 BW1M119 0114c490
	SecretCreature();
	// BW1W120 00711d80 BW1M119 0114c410
	virtual ~SecretCreature();
};

static_assert(sizeof(SecretCreature) == 0x4, "SecretCreature size is incorrect");

#endif /* BW1_DECOMP_SECRET_CREATURE_INCLUDED_H */
