#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#ifdef __cplusplus

struct LH_SamplePlayOptions
{
    uint8_t field_0x0[0x4];
    uint32_t field_0x4;
    uint32_t field_0x8;
    uint32_t field_0xc;
    uint8_t field_0x10[0x10];
    void* field_0x20;
    uint32_t field_0x24;
    uint8_t field_0x28[0x8];
    float field_0x30;
    float field_0x34;
    float field_0x38;
    uint8_t field_0x3c[0x12c];

    // Constructors

    // win1.41 10010e90 mac 100397c0 LH_SamplePlayOptions::LH_SamplePlayOptions(void)
    __declspec(dllimport) LH_SamplePlayOptions();

    // Non-virtual methods

    // win1.41 10011010 mac 1003a2c0 LH_SamplePlayOptions::~LH_SamplePlayOptions(void)
    __declspec(dllimport) ~LH_SamplePlayOptions();
};

#else // __cplusplus

struct LH_SamplePlayOptions
{
  uint8_t field_0x0[0x168];
};
static_assert(sizeof(struct LH_SamplePlayOptions) == 0x168, "Data type is of wrong size");

// Constructors

// win1.41 10010e90 mac 100397c0 LH_SamplePlayOptions::LH_SamplePlayOptions(void)
struct LH_SamplePlayOptions* __fastcall __ct__20LH_SamplePlayOptionsFv(struct LH_SamplePlayOptions* this) asm("??0LH_SamplePlayOptions@@QAE@XZ");

// Non-virtual methods

// win1.41 10011010 mac 1003a2c0 LH_SamplePlayOptions::~LH_SamplePlayOptions(void)
void __fastcall __dt__20LH_SamplePlayOptionsFv(struct LH_SamplePlayOptions* this) asm("??_DLH_SamplePlayOptions@@QAEXXZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
