#ifndef BW1_DECOMP_BASE_INFO_INCLUDED_H
#define BW1_DECOMP_BASE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For LHListNode */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct LHColor;

class GBaseInfo : public Base
{
public:
	LHListNode<GBaseInfo> next; /* 0x8 */
	int                   index;

	// BW1W120 00c58604
	static uint32_t InfoCount;

	// Override methods

	// BW1W120 004140b0 BW1M119 0112ba50
	virtual const char* GetDebugText() const { return NULL; }
	// BW1W120 00436c60 BW1M119 0142e670
	virtual LHColor GetDebugColor() const;
	// BW1W120 purecall BW1M119 purecall
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos) = 0;
	// BW1W120 00401230 BW1M119 0112ba90
	virtual void UpdateValue(float param_1, uint32_t param_2, uint32_t param_3) {}

	// Static methods

	// BW1W120 00436c30 BW1M119 0142e530
	static GBaseInfo* GetInfoPtr(unsigned long index);

	// Constructors

	// BW1W120 0042e5e0 BW1M119 010affb0
	GBaseInfo() {}

	// Non-virtual methods

	// BW1W120 00436bd0 BW1M119 01519580
	void SetInfoID();
	// BW1W120 00436c00 BW1M119 01342090
	unsigned long GetInfoID() const;
};

class BaseInfo
{
public:
	uint32_t UniqueId; /* 0x4 */
	uint32_t AddressOffset;

	// Override methods

	// BW1W120 0055c770 BW1M119 010466a0
	virtual bool IsClear() const { return UniqueId == 0 && AddressOffset == 0; }

	// Constructors

	// BW1W120 inlined BW1M119 0130f570
	BaseInfo()
	{
		AddressOffset = 0;
		UniqueId = 0;
	}

	// Non-virtual methods

	// BW1W120 00436bb0 BW1M119 01001410
	void Set(Base* base);
};

#endif /* BW1_DECOMP_BASE_INFO_INCLUDED_H */
