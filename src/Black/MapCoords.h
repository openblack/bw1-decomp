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

	// BW1W120 inlined BW1M100 10032f20 JustMapXZ::Init(unsigned short, unsigned short)
	void Init(unsigned short cell_x, unsigned short cell_z)
	{
		x = cell_x;
		z = cell_z;
	}
	// BW1W120 005e1920 BW1M100 100fe800 JustMapXZ::Init(MapCell*)
	void Init(MapCell* cell);
	// BW1W120 005e1860 BW1M100 100220f0 JustMapXZ::InBounds(void)
	bool32_t InBounds();
	// BW1W120 005e1950 BW1M100 1002a480 JustMapXZ::ToMap(void) const
	MapCell* ToMap() const;
};

struct JustWholeMapXZ
{
	int32_t x; /* 0x0 */
	int32_t z;

	// Non-virtual methods

	// BW1W120 005e1900 BW1M100 100fe880 JustWholeMapXZ::Init(const MapCoords&)
	void Init(const MapCoords& param_1);
};

struct MapCoords : public LH3DMapCoords
{
	// Constructors

	// BW1W120 inlined BW1M100 1006e040 MapCoords::MapCoords(void)
	MapCoords();
	// BW1W120 006031b0 BW1M100 1004feb0 MapCoords::MapCoords(long, long, float)
	MapCoords(long x, long z, float altitude);
	// BW1W120 006031d0 BW1M100 10324c60 MapCoords::MapCoords(char*)
	MapCoords(const char* str);
	// BW1W120 00603030 BW1M100 100b5330 MapCoords::MapCoords(JustWholeMapXZ*)
	MapCoords(JustWholeMapXZ* xz);
	// BW1W120 00603160 BW1M100 1006a450 MapCoords::MapCoords(const LHPoint&)
	MapCoords(const LHPoint& point);

	// Non-virtual methods

	// BW1W120 00602880 BW1M100 10569c60 MapCoords::ConvertToText(char*)
	char* ConvertToText(char* buff);
	// BW1W120 006041c0 BW1M100 101bffb0 MapCoords::ConvertToLHPoint(void) const
	LHPoint ConvertToLHPoint() const;
	// BW1W120 006042c0 BW1M100 100499f0 MapCoords::InBounds(void) const
	bool32_t InBounds() const;
	// BW1W120 00605cc0 BW1M100 1055fea0 MapCoords::GetTemperature(void) const
	float GetTemperature() const;
	// BW1W120 006053c0 BW1M100 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
	bool32_t IsCloseToEqual(const MapCoords& other, float epsilon) const;
	// BW1W120 00605410 BW1M100 1001fb00 MapCoords::operator+=(MapCoords const &)
	void operator+=(const MapCoords& other);
	// BW1W120 00605470 BW1M100 100494b0 MapCoords::operator+=(JustMapXZ const &)
	// NOTE: mangled ??YMapCoords@@QAEXABUJustMapXZ@@@Z proves void return, non-const (Rule 1);
	// zero existing call sites depend on the old (wrong) MapCoords* / const signature.
	void operator+=(const JustMapXZ& other);
	// BW1W120 006054a0 BW1M100 inlined MapCoords::operator-=(MapCoords const &)
	void operator-=(const MapCoords& other);
	// BW1W120 00605520 BW1M100 100503e0 MapCoords::operator+(MapCoords const &) const
	MapCoords operator+(const MapCoords& other) const;
	// BW1W120 006055c0 BW1M100 inlined MapCoords::operator-(MapCoords const &) const
	MapCoords operator-(const MapCoords& other) const;
	// BW1W120 006020e0 BW1M100 1048f050 MapCoords::GetNearestTown(float) const
	Town* GetNearestTown(float t_max);
	// BW1W120 00603280 BW1M100 10513100 MapCoords::Set(char*)
	void Set(const char* str);
	// BW1W120 00603340 BW1M100 1006a370 MapCoords::Set(const LHPoint&)
	MapCoords* Set(const LHPoint& point);
	// BW1W120 inline BW1M100 inline MapCoords::SetX(float)
	void SetX(float _x) { SetWholeX((long)(_x * (float)0x10000 / 10.0f)); }
	// BW1W120 inline BW1M100 1004ae60 LH3DMapCoords::SetWholeX(long)
	void SetWholeX(long _x) { x = _x; }
	// BW1W120 inline BW1M100 inline MapCoords::SetZ(float)
	void SetZ(float _z) { SetWholeZ((long)(_z * (float)0x10000 / 10.0f)); }
	// BW1W120 inline BW1M100 1004aea0 LH3DMapCoords::SetWholeZ(long)
	void SetWholeZ(long _z) { z = _z; }
	// BW1W120 inline BW1M100 1004aee0 LH3DMapCoords::SetAltitude(long)
	void SetAltitude(long _altitude) { altitude = _altitude; }
	// BW1W120 00603430 BW1M100 10049b80 MapCoords::ToMap(void) const
	MapCell* ToMap() const;
	// BW1W120 006034b0 BW1M100 1002cb50 MapCoords::GetFirstObjectFixed(void) const
	Object* GetFirstObjectFixed();
	// BW1W120 006034d0 BW1M100 1002c570 MapCoords::GetFirstIterator(void) const
	MapCellIterator GetFirstIterator() const;
	// BW1W120 006035b0 BW1M100 10018e70 MapCoords::IsWater(void) const
	bool32_t IsWater() const;
	// BW1W120 00603b30 BW1M100 1055e480 MapCoords::IsSuitableForFixed(MESH_LIST, float, float) const
	void IsSuitableForFixed(MESH_LIST mesh, float param_2, float param_3);
	// BW1W120 00603dc0 BW1M100 101c2c00 MapCoords::IsSuitableForFixed(Game3DObject*) const
	void IsSuitableForFixed(Game3DObject* object);
	// BW1W120 006045c0 BW1M100 100195c0 MapCoords::FindType(OBJECT_TYPE, Object*) const
	Object* FindType(OBJECT_TYPE type, Object* object) const;
	// BW1W120 00605660 BW1M100 10087b50 MapCoords::operator==(MapCoords const &) const
	// NOTE: mangled ??8MapCoords@@QBEIABU0@@Z proves const MapCoords& + const method (Rule 1);
	// zero existing call sites depend on the old (wrong) pointer signature.
	bool32_t operator==(const MapCoords& other) const;
	// BW1W120 00605c40 BW1M100 1004ff00 MapCoords::GetLHPoint(void) const
	LHPoint GetLHPoint() const;
	// BW1W120 00605cd0 MapCoords::GetDistanceInMetres(MapCoords const &) const
	// TODO: fabricated name
	float GetDistanceInMetres(const MapCoords& other) const;
	// BW1W120 00605fb0 BW1M100 10032290 MapCoords::GetMetresDistanceSq(const MapCoords&) const
	float GetMetresDistanceSq(MapCoords* param_2);
	// BW1W120 inlined BW1M100 100e62c0 MapCoords::operator=(const MapCoords&)
	MapCoords* operator=(const MapCoords* other);
	// BW1W120 inlined BW1M100 1004a1d0 MapCoords::Altitude(void) const
	float Altitude() const { return altitude; }
	// BW1W120 00603490 BW1M100 105a3bb0 MapCoords::GetFirstObjectMobile(void) const
	Object* GetFirstObjectMobile();
	// BW1W120 006056b0 BW1M100 10557130 MapCoords::operator!=(const MapCoords&) const
	// NOTE: mangled ??9MapCoords@@QBEIABU0@@Z is the real operator!= (??9), not a plain "__ne"
	// method -- the plain-name form can never produce this relocation. Renamed + fixed to
	// const MapCoords& / const method (Rule 1); zero existing call sites depended on the old form.
	bool32_t operator!=(const MapCoords& other) const;
	// BW1W120 00604fe0 BW1M100 10406220 MapCoords::CollideCollideWithFixe(void) const
	int CollideCollideWithFixe();
};

#pragma inline_depth(2)
inline MapCoords::MapCoords() {}
#pragma inline_depth()

#endif /* BW1_DECOMP_MAP_COORDS_INCLUDED_H */
