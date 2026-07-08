#ifndef BW1_DECOMP_MAP_INCLUDED_H
#define BW1_DECOMP_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum OBJECT_TYPE */

#include "Base.h" /* For struct Base */

// Forward Declares

class Fixed;
class Object;

struct MapCell
{
	Object* first_object_mobile; /* 0x0 */
	Object* first_object_fixed;

	// Static methods

	// BW1W120 00601510 BW1M100 1000b040 MapCell::DoesObjectTypeCountAsFixed(OBJECT_TYPE)
	static bool DoesObjectTypeCountAsFixed(OBJECT_TYPE type);

	// Non-virtual methods

	// BW1W120 00601b60 BW1M100 10054090 MapCell::SetFirstObjectMobile(Object *)
	void SetFirstObjectMobile(Object* object);
	// BW1W120 00601b70 BW1M100 104a6ee0 MapCell::SetFirstObjectFixed(Object *)
	void SetFirstObjectFixed(Object* object);
	// BW1W120 00601380 BW1M100 101cbfc0 MapCell::Clean(void)
	void Clean();
	// BW1W120 006015e0 BW1M100 100121f0 MapCell::FindTypeOnMap(OBJECT_TYPE, Object *) const
	Object* FindTypeOnMap(OBJECT_TYPE type, Object* object);
	// BW1W120 00601b80 BW1M100 100544d0 MapCell::GetX(void) const
	uint32_t GetX();
	// BW1W120 00601ba0 BW1M100 10054640 MapCell::GetZ(void) const
	uint32_t GetZ();
	// BW1W120 00601690 BW1M100 10570500 MapCell::FindFixedOnMap(Object *)
	Fixed* FindFixedOnMap(Object* param_1);
};

struct MapCellIterator
{
	Object*  object; /* 0x0 */
	bool     is_fixed;
	MapCell* cell;

	// Non-virtual methods

	// BW1W120 inlined BW1M100 1002c620 MapCellIterator::MoveToMobileObsIfNeededAndPoss(void)
	void MoveToMobileObsIfNeededAndPoss();
};

class GMap : public Base
{
public:
	uint8_t  field_0x8;
	uint8_t  field_0x9;
	uint8_t  field_0xa;
	uint8_t  field_0xb;
	uint32_t cell_extent_zx[0x2];
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;
	uint32_t field_0x28;
	uint32_t field_0x2c;
	uint32_t field_0x30;
	uint32_t field_0x34;
	uint32_t field_0x38;
	uint8_t  field_0x3c;
	uint8_t  field_0x3d;
	uint8_t  field_0x3e;
	uint8_t  field_0x3f;
	uint32_t field_0x40;
	MapCell  cells[0x200][0x200];
	uint16_t count_0x200044;
	uint8_t  field_0x200046;
	uint8_t  field_0x200047;
	uint8_t  field_0x200048;
	uint8_t  field_0x200049;
	uint8_t  field_0x20004a;
	uint8_t  field_0x20004b;
	uint8_t  field_0x20004c;
	uint8_t  field_0x20004d;
	uint8_t  field_0x20004e;
	uint8_t  field_0x20004f;

	// Override methods

	// BW1W120 006010c0 BW1M100 1055f620 GMap::_dt(void)
	virtual ~GMap();

	// Constructors

	// BW1W120 00601080 BW1M100 10552040 GMap::GMap(void)
	GMap();

	// Non-virtual methods

	// BW1W120 00612660 BW1M100 100fddf0 GMap::ToMap(long, long)
	MapCell* ToMap(uint32_t cell_x, uint32_t cell_z);
	// BW1W120 00612690 BW1M100 10049c10 GMap::InBounds(long, long)
	bool InBounds(uint32_t x, uint32_t z);
};

#endif /* BW1_DECOMP_MAP_INCLUDED_H */
