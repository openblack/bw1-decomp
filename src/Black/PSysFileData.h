#ifndef BW1_DECOMP_P_SYS_FILE_DATA_INCLUDED_H
#define BW1_DECOMP_P_SYS_FILE_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum PARTICLE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "Persistent.h" /* For class PersistentOwner */

// Forward Declares

class PropertyList;

struct PSysFileDataGroup
{
	long     Parent;
	bool     InitiallyCreated;
	uint32_t field_0x8;
	uint32_t field_0xc;
};
static_assert(sizeof(PSysFileDataGroup) == 0x10, "Data type is of wrong size");

class PSysFileData : public PersistentOwner
{
public:
	// Override methods

	// BW1W120 00672620 BW1M119 013e5f70
	virtual void OnLoaded();
	// BW1W120 006724b0 BW1M119 013e63a0
	virtual ~PSysFileData();
	// BW1W120 006aaf80 BW1M119 01474480
	virtual void DefineProperties(PropertyList* list);
	// BW1W120 00672860 BW1M119 013e5c70
	virtual void Clear();

	// BW1W120 006b4c40 BW1M119 0145d400
	bool LoadFromFile(PARTICLE_TYPE type, const char* filename);
	// Windows only, so the names of the two writers are invented. SaveToFile writes the text
	// LoadFromFile reads; SaveAsCode writes the same hierarchy as C++ statements.
	// BW1W120 006b4eb0 BW1M119 null
	bool32_t SaveToFile(const char* filename);
	// BW1W120 006b5130 BW1M119 null
	bool32_t SaveAsCode(const char* filename);

	// BW1W120 00672580 BW1M119 013e6360
	unsigned long GetMaxGroups();
	// BW1W120 00672590 BW1M119 013e6320
	void SetMaxGroups(unsigned long max_groups);
	// BW1W120 006725a0 BW1M119 013e62d0
	bool GetInitiallyCreated(unsigned long group);
	// BW1W120 006725b0 BW1M119 013e6280
	void SetInitiallyCreated(unsigned long group, bool initially_created);
	// BW1W120 006725d0 BW1M119 013e6220
	bool GetTransformHierarchy(unsigned long group);
	// BW1W120 006725f0 BW1M119 013e61c0
	void SetTransformHierarchy(unsigned long group, bool transform_hierarchy);

	uint32_t          field_0x14;
	uint32_t          field_0x18;
	bool              DeleteOnCloseDown;
	float             MaxSpellAge;
	PARTICLE_TYPE     ParticleType;
	uint32_t          field_0x28;
	uint32_t          field_0x2c;
	PSysFileDataGroup Groups[25];
};
static_assert(offsetof(PSysFileData, Groups) == 0x30, "Data member at wrong offset");

#endif /* BW1_DECOMP_P_SYS_FILE_DATA_INCLUDED_H */
