#include "VillagerNames.h"

struct VillagerNameBlock* CurrentVillagerNameBlock;
void* PTR_00db9e28;

// win1.41 00762720 mac 1058ba90 VillagerNameBlock::Alloc(void)
VillagerName* VillagerNameBlock::Alloc()
{
    return NULL;
}

// win1.41 00762780 mac 1058b960 VillagerNameBlock::Delete(VillagerName *)
void VillagerNameBlock::Delete(VillagerName* name)
{
}

// win1.41 007627e0 mac 10012bf0 VillagerNameBlock::DeleteAll(void)
bool VillagerNameBlock::DeleteAll()
{
    return false;
}

// win1.41 00762820 mac inlined VillagerNameBlock::VillagerNameBlock(void)
VillagerNameBlock::VillagerNameBlock()
{
}

// win1.41 007628a0 mac 100b5250 VillagerName::AddDrawing(void)
void VillagerName::AddDrawing()
{
}

// win1.41 00762900 mac inlined VillagerNameBlock::~VillagerNameBlock()
VillagerNameBlock::~VillagerNameBlock()
{
}

// win1.41 00762970 mac inlined VillagerNameBlock::FreeAll(void)
void VillagerNameBlock::FreeAll()
{
}

// win1.41 007629e0 mac 1058b1a0 VillagerName::Add(float, LHPoint, wchar_t *, LH3DColor &)
VillagerName* VillagerName::Add(float text_size, struct LHPoint point, const char16_t* text, const struct LH3DColor* p_color)
{
    return NULL;
}

// win1.41 00762dc0 mac 1058add0 VillagerName::Draw(void)
void VillagerName::Draw()
{
}
