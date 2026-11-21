#ifndef BW1_DECOMP_LH_PIXEL16_INLINE_INCLUDED_H
#define BW1_DECOMP_LH_PIXEL16_INLINE_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include "LHDraw.h"   /* For class LHPixel16 */
#include "LHSystem.h" /* For LHSys::GetScreen */

inline void LHPixel16::Set(uint8_t red, uint8_t green, uint8_t blue)
{
	value = ((blue >> LHSys::GetScreen().GetBlueScale()) << LHSys::GetScreen().GetBlueShift()) +
	        ((green >> LHSys::GetScreen().GetGreenScale()) << LHSys::GetScreen().GetGreenShift()) +
	        ((red >> LHSys::GetScreen().GetRedScale()) << LHSys::GetScreen().GetRedShift());
}

#endif /* BW1_DECOMP_LH_PIXEL16_INLINE_INCLUDED_H */
