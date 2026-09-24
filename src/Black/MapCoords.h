#ifndef BW1_DECOMP_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int32_t, uint16_t, uint32_t */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <chlasm/AllMeshes.h>                           /* For enum MESH_LIST */
#include <chlasm/Enum.h>                                /* For enum OBJECT_TYPE */
#include <re_common.h>                                  /* For bool32_t */

// Forward Declares

class Game3DObject;
struct LHPoint;
struct MapCell;
struct MapCellIterator;
struct MapCoords;
class Object;
struct Point2D;
class Town;

struct JustMapXZ
{
	int16_t x; /* 0x0 */
	int16_t z;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01035890
	void Init(unsigned short cell_x, unsigned short cell_z)
	{
		x = cell_x;
		z = cell_z;
	}
	// BW1W120 005e1920 BW1M119 01108550
	void Init(MapCell* cell);
	// BW1W120 005e1860 BW1M119 01024c60
	bool32_t InBounds();
	// BW1W120 005e1950 BW1M119 0102d000
	MapCell* ToMap() const;
};

struct JustWholeMapXZ
{
	int32_t x; /* 0x0 */
	int32_t z;

	// Non-virtual methods

	// BW1W120 005e1900 BW1M119 011085d0
	void Init(const MapCoords& param_1);
};

struct MapCoords : public LH3DMapCoords
{
	// Constructors

	// BW1W120 inlined BW1M119 010707b0
	MapCoords();
	// BW1W120 006031b0 BW1M119 01052840
	MapCoords(long x, long z, float altitude);
	// BW1W120 006031d0 BW1M119 013c72a0
	MapCoords(const char* str);
	// BW1W120 00603030 BW1M119 01375af0
	MapCoords(JustWholeMapXZ* xz);
	// BW1W120 00603160 BW1M119 0106cbb0
	MapCoords(const LHPoint& point);

	// Non-virtual methods

	// BW1W120 00602880 BW1M119 011a5f70
	char* ConvertToText(char* buff);
	// BW1W120 006041c0 BW1M119 01121330
	LHPoint ConvertToLHPoint() const;
	// BW1W120 006042c0 BW1M119 0104c3b0
	bool32_t InBounds() const;
	// BW1W120 00605cc0 BW1M119 013e5320
	float GetTemperature() const;
	// BW1W120 006053c0 BW1M119 010028c0
	bool32_t IsCloseToEqual(const MapCoords& other, float epsilon) const;
	// BW1W120 00605410 BW1M119 01022670
	void operator+=(const MapCoords& other);
	// BW1W120 00605470 BW1M119 0104be60
	// NOTE: mangled ??YMapCoords@@QAEXABUJustMapXZ@@@Z proves void return, non-const (Rule 1);
	// zero existing call sites depend on the old (wrong) MapCoords* / const signature.
	void operator+=(const JustMapXZ& other);
	// BW1W120 006054a0 BW1M119 inlined
	void operator-=(const MapCoords& other);
	// BW1W120 00605520 BW1M119 01052d70
	MapCoords operator+(const MapCoords& other) const;
	// BW1W120 006055c0 BW1M119 inlined
	MapCoords operator-(const MapCoords& other) const;
	// BW1W120 006020e0 BW1M119 01412720
	Town* GetNearestTown(float t_max) const;
	// BW1W120 00603280 BW1M119 01183eb0
	void Set(const char* str);
	// BW1W120 00603340 BW1M119 0106cad0
	MapCoords* Set(const LHPoint& point);
	// BW1W120 inlined BW1M119 inlined
	void SetX(float _x) { SetWholeX((long)(_x * (float)0x10000 / 10.0f)); }
	// BW1W120 inlined BW1M119 0104d810
	void SetWholeX(long _x) { x = _x; }
	// BW1W120 inlined BW1M119 inlined
	void SetZ(float _z) { SetWholeZ((long)(_z * (float)0x10000 / 10.0f)); }
	// BW1W120 inlined BW1M119 0104d850
	void SetWholeZ(long _z) { z = _z; }
	// BW1W120 inlined BW1M119 0104d890
	void SetAltitude(long _altitude) { altitude = _altitude; }
	// BW1W120 00603430 BW1M119 0104c540
	MapCell* ToMap() const;
	// BW1W120 006034b0 BW1M119 0102f600
	Object* GetFirstObjectFixed() const;
	// BW1W120 006034d0 BW1M119 0102f0e0
	MapCellIterator GetFirstIterator() const;
	// BW1W120 006035b0 BW1M119 0101ba20
	bool32_t IsWater() const;
	// BW1W120 00603620 BW1M119 0151adc0
	bool32_t IsDryLand() const;
	// BW1W120 00603720 BW1M119 0106a480
	bool32_t IsLand() const;
	// MapCoords::IsSuitableForFixed 9MESH_LISTff
	// BW1W120 00603b30
	void IsSuitableForFixed(MESH_LIST mesh, float param_2, float param_3);
	// BW1W120 00603dc0 BW1M119 01121940
	void IsSuitableForFixed(Game3DObject* object) const;
	// BW1W120 006045c0 BW1M119 0101c170
	Object* FindType(OBJECT_TYPE type, Object* object) const;
	// BW1W120 00605660 BW1M119 01089f30
	// NOTE: mangled ??8MapCoords@@QBEIABU0@@Z proves const MapCoords& + const method (Rule 1);
	// zero existing call sites depend on the old (wrong) pointer signature.
	bool32_t operator==(const MapCoords& other) const;
	// BW1W120 00605c40 BW1M119 01052890
	LHPoint GetLHPoint() const;
	// BW1W120 00605cd0
	// TODO: fabricated name
	float GetDistanceInMetres(const MapCoords& other) const;
	// BW1W120 00605fb0 BW1M119 01034c00
	float GetMetresDistanceSq(const MapCoords& param_2) const;
	// BW1W120 inlined BW1M119 010ea620
	MapCoords* operator=(const MapCoords* other);
	// BW1W120 inlined BW1M119 0104cb80
	float Altitude() const { return altitude; }
	// BW1W120 00603490 BW1M119 013e9960
	Object* GetFirstObjectMobile() const;
	// BW1W120 006056b0 BW1M119 0148cf80
	// NOTE: mangled ??9MapCoords@@QBEIABU0@@Z is the real operator!= (??9), not a plain "__ne"
	// method -- the plain-name form can never produce this relocation. Renamed + fixed to
	// const MapCoords& / const method (Rule 1); zero existing call sites depended on the old form.
	bool32_t operator!=(const MapCoords& other) const;
	// BW1W120 00604fe0 BW1M119 013621f0
	int CollideCollideWithFixe() const;
};

#pragma inline_depth(2)
inline MapCoords::MapCoords() {}
#pragma inline_depth()

#endif /* BW1_DECOMP_MAP_COORDS_INCLUDED_H */
