#ifndef BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H
#define BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "DrawingObject.h" /* For struct DrawingObject */

struct VillagerNameBlock
{
    uint8_t field_0x0[0x14];

    // Static methods

    // win1.41 00762720 mac 1058ba90 VillagerNameBlock::Alloc(void)
    static VillagerName* Alloc();
    // win1.41 00762780 mac 1058b960 VillagerNameBlock::Delete(VillagerName *)
    static void Delete(VillagerName* name);

    // Constructors

    // win1.41 00762820 mac inlined VillagerNameBlock::VillagerNameBlock(void)
    VillagerNameBlock();

    // Non-virtual methods

    // win1.41 007627e0 mac 10012bf0 VillagerNameBlock::DeleteAll(void)
    bool32_t DeleteAll();
    // win1.41 00762900 mac inlined VillagerNameBlock::~VillagerNameBlock()
    void ~VillagerNameBlock();
    // win1.41 00762970 mac inlined VillagerNameBlock::FreeAll(void)
    void FreeAll();
};

class VillagerName: public DrawingObject
{
public:
    float left; /* 0x4 */
    float top;
    float right;
    float bottom; /* 0x10 */
    float arrow_x;
    float arrow_y;
    float depth;
    float text_size; /* 0x20 */
    float field_0x24;
    int num_lines;
    float text_padding;
    char16_t field_0x30[0x100];
    uint8_t field_0x230[0x200];
    char16_t* lines[0x8]; /* 0x430 */
    LH3DColor color; /* 0x450 */
    LHPoint point;
    VillagerName* next; /* 0x460 */

    // Override methods

    // win1.41 007628a0 mac 100b5250 VillagerName::AddDrawing(void)
    virtual void AddDrawing();

    // Static methods

    // win1.41 007629e0 mac 1058b1a0 VillagerName::Add(float, LHPoint, wchar_t *, LH3DColor &)
    static VillagerName* Add(float text_size, LHPoint point, const char16_t* text, const LH3DColor* p_color);

    // Non-virtual methods

    // win1.41 00762dc0 mac 1058add0 VillagerName::Draw(void)
    void Draw();
};

#endif /* BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H */
