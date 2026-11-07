#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

LH_RETURN LHDraw::ScaledSprite16xxx(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                    unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                 unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                     LHSprite* sprite, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                 unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return LH_OK;
}

LH_RETURN LHDraw::OneColorScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                         LHSprite* sprite, LHPixel16 color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)color;
	(void)flags;
	return LH_OK;
}

LH_RETURN LHDraw::OneColorScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                         LHSprite* sprite, LHColor color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)color;
	(void)flags;
	return LH_OK;
}
