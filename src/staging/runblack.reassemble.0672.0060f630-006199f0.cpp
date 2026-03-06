#include "MobileWallHug.h"
#include "Map.h"
#include "Landscape.h"
#include "Morphable.h"

// win1.41 0060f760 mac 103c1910 MobileWallHug::SetToZero(void)
void MobileWallHug::SetToZero()
{
}

// win1.41 0060fc50 mac 10084230 MobileWallHug::SetSpeed(long)
void MobileWallHug::SetSpeed(int param_1)
{
}

// win1.41 00612660 mac 100fddf0 GMap::ToMap(long, long)
MapCell* GMap::ToMap(uint32_t cell_x, uint32_t cell_z)
{
    return 0;
}

// win1.41 00612690 mac 10049c10 GMap::InBounds(long, long)
bool GMap::InBounds(uint32_t x, uint32_t z)
{
    return 0;
}

// win1.41 00613750 mac 10048570 GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &)
LHPoint* GLandscape::ConvertMapCoordToLandscapePoint(const MapCoords* param_2, LHPoint* param_1)
{
    return 0;
}

// win1.41 00617310 mac 10108d10 Morphable::MorphInit(LHPoint &, long, void* )
void Morphable::MorphInit(LHPoint* point, long param_3, void* param_4)
{
}

// win1.41 00617470 mac 10108c30 Morphable::AddHairGroup()
uint32_t Morphable::AddHairGroup()
{
    return 0;
}

// win1.41 00617620 mac 10108960 Morphable::SelectMesh(long)
void Morphable::SelectMesh(int param_1)
{
}

// win1.41 00617ae0 mac 10107f50 Morphable::ReadBinary(LHFile *, AnimInfo *, AnimInfo *)
uint32_t Morphable::ReadBinary(LHFile* file, AnimInfo* info_1, AnimInfo* info_2)
{
    return 0;
}

// win1.41 00617eb0 mac 10107d70 Morphable::SetAnimTime(long, long)
void Morphable::SetAnimTime(int param_1, int param_2)
{
}

// win1.41 00617ee0 mac 10107a90 Morphable::ReadExtraDataBinary
// ERROR building signature: substring not found

// win1.41 00618360 mac 101073d0 Morphable::LoadBase(char *)
uint32_t Morphable::LoadBase(char* param_1)
{
    return 0;
}

// win1.41 006186b0 mac 10107250 Morphable::LoadExtraTexture(void)
uint32_t Morphable::LoadExtraTexture()
{
    return 0;
}

// win1.41 00618720 mac 10106d80 Morphable::LoadMesh(char*, long)
uint32_t Morphable::LoadMesh(char* param_2, int param_3)
{
    return 0;
}

// win1.41 00619100 mac 101063f0 Morphable::MorphAnims(void)
void Morphable::MorphAnims()
{
}

// win1.41 00619500 mac 101061c0 Morphable::MorphTexture(void)
void Morphable::MorphTexture()
{
}

// win1.41 00619650 mac 10084860 Morphable::GetAnim(long, long)
CAnim* Morphable::GetAnim(long anim_index, long param_3)
{
    return 0;
}

// win1.41 00619690 mac 10084450 Morphable::GetSetAnim(long, long, long)
CAnim* Morphable::GetSetAnim(long param_1, long param_2, long param_3)
{
    return 0;
}
