#ifndef BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t */

struct LH3DMapCoords
{
    LH3DMapCoordsFull x; /* 0x0 */
    LH3DMapCoordsFull z;
    float altitude;

    // Non-virtual methods

    // win1.41 inlined mac 1006a8c0 LH3DMapCoords::AddToMapX(void) const
    void AddToMapX(uint16_t x);
    // win1.41 inlined mac 1006a880 LH3DMapCoords::AddToMapZ(void) const
    void AddToMapZ(uint16_t z);
    // win1.41 inlined mac inlined LH3DMapCoords::CentreOnMap(void)
    void CentreOnMap();
    // win1.41 inlined mac inlined LH3DMapCoords::SetFractionX(short)
    void SetFractionX(uint16_t x);
    // win1.41 inlined mac inlined LH3DMapCoords::SetFractionZ(short)
    void SetFractionZ(uint16_t z);
    // win1.41 inlined mac 10049a90 LH3DMapCoords::MapX(void) const
    uint16_t MapX();
    // win1.41 inlined mac 100499b0 LH3DMapCoords::MapZ(void) const
    uint16_t MapZ();
    // win1.41 inlined mac 100456f0 LH3DMapCoords::WholeX(void) const
    uint32_t WholeX();
    // win1.41 inlined mac 10045a60 LH3DMapCoords::WholeZ(void) const
    uint32_t WholeZ();
    // win1.41 inlined mac inlined LH3DMapCoords::SetMapX(short) const
    void SetMapX(uint16_t x);
    // win1.41 inlined mac inlined LH3DMapCoords::SetMapZ(short) const
    void SetMapZ(uint16_t z);
    // win1.41 inlined mac 1004ae60 LH3DMapCoords::SetWholeX(int)
    void SetWholeX(int x);
    // win1.41 inlined mac 1004aea0 LH3DMapCoords::SetWholeZ(int)
    void SetWholeZ(int z);
    // win1.41 inlined mac 1004aee0 LH3DMapCoords::SetAltitude(float)
    void SetAltitude(float altitude);
    // win1.41 0054b820 mac inlined LH3DMapCoords::SetZero(void)
    void SetZero();
};

#endif /* BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H */
