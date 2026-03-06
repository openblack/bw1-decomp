#ifndef BW1_DECOMP_LH3D_SKY_INCLUDED_H
#define BW1_DECOMP_LH3D_SKY_INCLUDED_H

#ifdef __cplusplus

struct LH3DSky
{
    void SetDayNightTimes(float night, float dusk_start, float dusk_end, float day);
};

#else // __cplusplus

// win1.41 00869fa0 mac 100b37d0 LH3DSky::SetDayNightTimes(float, float, float, float)
void __cdecl SetDayNightTimes__7LH3DSkyFffff(float night, float dusk_start, float dusk_end, float day) asm("?SetDayNightTimes@LH3DSky@@SAXMMMM@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_LH3D_SKY_INCLUDED_H */
