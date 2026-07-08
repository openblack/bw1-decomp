#ifndef BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "EffectInfo.h" /* For struct GEffectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GMagicEffectInfo : public GEffectInfo
{
public:
	char     name[0x30]; /* 0x34 */
	uint32_t field_0x64;
	uint32_t field_0x68;
	uint32_t field_0x6c;
	uint32_t field_0x70;
	float    field_0x74;
	float    field_0x78;
	float    field_0x7c;
	float    field_0x80;
	float    field_0x84;
	uint32_t field_0x88;
	uint32_t field_0x8c;
	uint32_t field_0x90;
	int      field_0x94;
	uint32_t field_0x98;
	uint32_t field_0x9c;
	int      field_0xa0;
	uint32_t field_0xa4;
	float    field_0xa8;
	float    field_0xac;
	float    field_0xb0;
	float    field_0xb4;
	float    field_0xb8;
	float    field_0xbc;
	float    field_0xc0;
	float    field_0xc4;
	float    field_0xc8;
	uint32_t field_0xcc;
	uint32_t field_0xd0;
	uint32_t field_0xd4;
	uint32_t field_0xd8;
	uint32_t field_0xdc;
	uint32_t field_0xe0;
	uint32_t field_0xe4;
	uint32_t field_0xe8;
	uint32_t field_0xec;
	uint32_t field_0xf0;
	uint32_t field_0xf4;
	uint32_t field_0xf8;
	uint32_t field_0xfc;
	uint32_t field_0x100;
	uint32_t field_0x104;
	uint32_t field_0x108;
	uint32_t field_0x10c;
	uint32_t field_0x110;
	float    field_0x114;
	float    field_0x118;

	// Override methods

	// BW1W120 00524ea0 BW1M100 100cca30 GMagicEffectInfo::_dt(void)
	virtual ~GMagicEffectInfo();
	// BW1W120 00524e30 BW1M100 100ccbe0 GMagicEffectInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Constructors

	// BW1W120 00524e00 BW1M100 100ccad0 GMagicEffectInfo::GMagicEffectInfo(void)
	GMagicEffectInfo();
};

#endif /* BW1_DECOMP_MAGIC_EFFECT_INFO_INCLUDED_H */
