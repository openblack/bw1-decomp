#include "Windmill.h"

// win1.41 00405890 mac 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
Windmill* Windmill::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
{
    return NULL;
}

// win1.41 00405900 mac 100cb6b0 Windmill::GetSaveType(void)
uint32_t Windmill::GetSaveType()
{
    return 0xf8;
}

// win1.41 00405910 mac 100cb6f0 Windmill::GetDebugText(void)
char* Windmill::GetDebugText()
{
    return (char*)0x009c8048;  // ??_C@_09ABCDEFGH@Windmill?$AA@
}

// win1.41 00405920 mac 100cb620 Windmill::_dt(void)
Windmill::~Windmill()
{
}

// win1.41 00405950 mac 102aa970 Windmill::CallVirtualFunctionsForCreation(MapCoords const &)
void Windmill::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00405980 mac 103f15c0 Windmill::Open(void)
void Windmill::Open()
{
}

// win1.41 004059d0 mac 10241170 Windmill::Close(void)
void Windmill::Close()
{
}

// win1.41 004059f0 mac 1007d870 Windmill::PreDraw(void)
void Windmill::PreDraw()
{
}
