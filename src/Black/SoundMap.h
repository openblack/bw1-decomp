#ifndef BW1_DECOMP_SOUND_MAP_INCLUDED_H
#define BW1_DECOMP_SOUND_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Audio.h"     /* For NUM_ATMOS_TYPES */
#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */
#include "Terrain.h"   /* For enum ATMOS_TYPE */
#include <string.h>

struct AtmosMapTypeInfo
{
	uint16_t Count;
	float    Distance;
	uint16_t NearestX;
	uint16_t NearestZ;

	// BW1W120 0071d510 BW1M119 01048180
	void Add(const MapCoords& receiver, const MapCoords& coords);
	// BW1W120 inlined BW1M119 0102bbf0
	uint16_t GetCount() const { return Count; }
};

struct AtmosMapInfo
{
	AtmosMapTypeInfo Types[NUM_ATMOS_TYPES];

	// BW1W120 0071d4f0 BW1M119 0101b180
	void Clear();
	// BW1W120 inlined BW1M119 0102b5d0
	AtmosMapTypeInfo* GetInfo(ATMOS_TYPE type)
	{
		if (type >= ATMOS_TYPE_NONE && type < NUM_ATMOS_TYPES)
		{
			return &Types[type];
		}
		return Types;
	}
};

class GSoundMap : public Base
{
public:
	AtmosMapInfo AtmosMap;
	uint16_t     TotalCount;
	float        Volumes[NUM_ATMOS_TYPES];
	LHPoint      ReceiverPos;
	MapCoords    Coords;
	float        Radius;
	float        HeightAboveLand;
	float        ReceiverHeight;

	// Override methods

	// BW1W120 0054ba10 BW1M119 013d88d0
	virtual ~GSoundMap();
	// BW1W120 0071d990 BW1M119 0106aa90
	virtual void Dump();

	// Non-virtual methods
	// BW1W120 0071d6f0 BW1M119 0107b310
	void Update();
	// BW1W120 0071d800 BW1M119 0106d0e0
	void CalculateRadiusPointAndDistance();
	// BW1W120 0071d720 BW1M119 01045d30
	void UpdateFromMap(const MapCoords& coords);
	// BW1W120 0071dd60 BW1M119 0102b630
	void CalculateAtmosVolumes(const MapCoords& coords);
	// BW1W120 0071db80 BW1M119 0101aec0
	void CalculateAtmosWeightings(float* normal, float* atmosphere, float* sea);
	// BW1W120 0071e260 BW1M119 01045ef0
	void AddAtmosType(ATMOS_TYPE type, const MapCoords& coords);
	// BW1W120 0071d5c0 BW1M119 0101fd20
	float GetAtmosDistance(ATMOS_TYPE type);
	// BW1W120 0071d5e0 BW1M119 01026db0
	void GetAtmosPoint(ATMOS_TYPE type, LHPoint* point);
	// BW1W120 0071e210 BW1M119 0101b230
	float GetPercentage(ATMOS_TYPE type);
	// BW1W120 0071dac0 BW1M119 01074af0
	float GetVolumePercentageForHeight(const LHPoint& pos);
	// BW1W120 0071d8e0 BW1M119 0106a530
	static int GetSurfaceType(const MapCoords& coords);
	// BW1W120 inlined BW1M119 01362dd0
	LHPoint GetReceiverPos() { return ReceiverPos; }

	// Constructors

	// BW1W120 0054b9d0 BW1M119 inlined
	GSoundMap()
	{
		Reset();
		memset(Volumes, 0, sizeof(Volumes));
	}
	// BW1W120 0071d6d0 BW1M119 0101b120
	void Reset();
};

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
