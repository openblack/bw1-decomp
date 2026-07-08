#ifndef BW1_DECOMP_LH_DRAW_INCLUDED_H
#define BW1_DECOMP_LH_DRAW_INCLUDED_H

#include <stdint.h>

struct LHColor;
struct LHRegion;

struct LHPixel16
{
	uint16_t value; /* 0x0 */
};

struct LHSprite
{
	uint16_t Width;     /* 0x0 */
	uint16_t Height;    /* 0x2 */
	uint8_t* PixelData; /* 0x4 */
};

class LHDraw
{
public:
	uint32_t drawAddress;
	int      pixelPitch;

	// BW1W120 007deef0 LHDraw::HVLine16(long, long, long, long, LHPixel16)
	int HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color);
	// BW1W120 007defa0 LHDraw::HVLine24(long, long, long, long, LHColor)
	int HVLine24(long x0, long y0, long x1, long y1, LHColor color);
	// BW1W120 007df060 LHDraw::HVLine16(long, long, long, long, LHPixel16, unsigned long)
	int HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode);
	// BW1W120 007df430 LHDraw::HVLine24(long, long, long, long, LHColor, unsigned long)
	int HVLine24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode);

	// BW1W120 007dfe70 LHDraw::Line16(long, long, long, long, LHPixel16, unsigned long, LHPixel16 *, unsigned long)
	int Line16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode, LHPixel16* drawBuffer,
	           unsigned long pixelPitch);
	// BW1W120 007df870 LHDraw::Line24(long, long, long, long, LHColor, unsigned long, LHColor *, unsigned long)
	int Line24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode, LHColor* drawBuffer,
	           unsigned long pixelPitch);

	// BW1W120 007e2810 LHDraw::Box16(long, long, long, long, LHPixel16)
	int Box16(long left, long top, long right, long bottom, LHPixel16 color);
	// BW1W120 007e2880 LHDraw::Box24(long, long, long, long, LHColor)
	int Box24(long left, long top, long right, long bottom, LHColor color);
	// BW1W120 007e2910 LHDraw::Box16(long, long, long, long, LHPixel16, unsigned long)
	int Box16(long left, long top, long right, long bottom, LHPixel16 color, unsigned long style);
	// BW1W120 007e2b40 LHDraw::Box24(long, long, long, long, LHColor, unsigned long)
	int Box24(long left, long top, long right, long bottom, LHColor color, unsigned long style);
	// BW1W120 007e2df0 LHDraw::EmbossedBox16(long, long, long, long, LHPixel16, LHPixel16, unsigned char, unsigned char, unsigned long)
	int EmbossedBox16(long left, long top, long right, long bottom, LHPixel16 fillColor, LHPixel16 edgeColor,
	                  uint8_t lightDir, uint8_t bevelWidth, unsigned long style);
	// BW1W120 007e3630 LHDraw::EmbossedBox24(long, long, long, long, LHColor, LHColor, unsigned char, unsigned char, unsigned long)
	int EmbossedBox24(long left, long top, long right, long bottom, LHColor fillColor, LHColor edgeColor,
	                  uint8_t lightDir, uint8_t bevelWidth, unsigned long style);

	// BW1W120 007ea0b0 LHDraw::Pixel16(unsigned long, unsigned long, LHPixel16, unsigned long)
	int Pixel16(unsigned long x, unsigned long y, LHPixel16 color, unsigned long mode);
	// BW1W120 007ea240 LHDraw::Pixel24(unsigned long, unsigned long, LHColor, unsigned long)
	int Pixel24(unsigned long x, unsigned long y, LHColor color, unsigned long mode);

	// BW1W120 007ea570 LHDraw::Circle16(long, long, unsigned long, LHPixel16, unsigned long)
	int Circle16(long centerX, long centerY, unsigned long radius, LHPixel16 color, unsigned long mode);
	// BW1W120 007ea810 LHDraw::Circle24(long, long, unsigned long, LHColor, unsigned long)
	int Circle24(long centerX, long centerY, unsigned long radius, LHColor color, unsigned long mode);

	// BW1W120 007eab90 LHDraw::Sprite16(long, long, LHSprite *)
	int Sprite16(long x, long y, LHSprite* sprite);
	// BW1W120 007eac00 LHDraw::Sprite24(long, long, LHSprite *)
	int Sprite24(long x, long y, LHSprite* sprite);
	// BW1W120 007eacb0 LHDraw::Sprite24To16(long, long, LHSprite *)
	int Sprite24To16(long x, long y, LHSprite* sprite);

	// BW1W120 007eadb0 LHDraw::Sprite24(long, long, LHSprite *, unsigned long, LHColor *, unsigned long)
	int Sprite24(long x, long y, LHSprite* sprite, unsigned long flags, LHColor* drawBuffer, unsigned long pixelPitch);
	// BW1W120 007eb250 LHDraw::Sprite24To16(long, long, LHSprite *, unsigned long, LHPixel16 *, unsigned long)
	int Sprite24To16(long x, long y, LHSprite* sprite, unsigned long flags, LHPixel16* drawBuffer,
	                 unsigned long pixelPitch);
	// BW1W120 007eb870 LHDraw::Sprite16(long, long, LHSprite *, unsigned long, unsigned short, LHPixel16 *, unsigned long)
	int Sprite16(long x, long y, LHSprite* sprite, unsigned long flags, unsigned short alpha, LHPixel16* drawBuffer,
	             unsigned long pixelPitch);

	// BW1W120 007ebde0 LHDraw::HeightSprite16(long, long, LHSprite *, unsigned long, unsigned long)
	int HeightSprite16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);
	// BW1W120 007ec210 LHDraw::HeightSprite24(long, long, LHSprite *, unsigned long, unsigned long)
	int HeightSprite24(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);
	// BW1W120 007ec6b0 LHDraw::HeightSprite24To16(long, long, LHSprite *, unsigned long, unsigned long)
	int HeightSprite24To16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);

	// BW1W120 007ecc90 LHDraw::RegionSprite16(long, long, LHSprite *, LHRegion *, unsigned long)
	int RegionSprite16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);
	// BW1W120 007ed0e0 LHDraw::RegionSprite24(long, long, LHSprite *, LHRegion *, unsigned long)
	int RegionSprite24(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);
	// BW1W120 007ed580 LHDraw::RegionSprite24To16(long, long, LHSprite *, LHRegion *, unsigned long)
	int RegionSprite24To16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);

	// BW1W120 007edb90 LHDraw::OneColorSprite16(long, long, LHSprite *, LHPixel16, unsigned long)
	int OneColorSprite16(long x, long y, LHSprite* sprite, LHPixel16 color, unsigned long flags);
	// BW1W120 007ee050 LHDraw::OneColorSprite24(long, long, LHSprite *, LHColor, unsigned long)
	int OneColorSprite24(long x, long y, LHSprite* sprite, LHColor color, unsigned long flags);

	// BW1W120 007f1990 LHDraw::ScaledSprite16xxx(long, long, unsigned long, unsigned long, LHSprite *, unsigned long)
	int ScaledSprite16xxx(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                      unsigned long flags);
	// BW1W120 007f1e70 LHDraw::ScaledSprite24(long, long, unsigned long, unsigned long, LHSprite *, unsigned long)
	int ScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                   unsigned long flags);
	// BW1W120 007f23b0 LHDraw::ScaledSprite24To16(long, long, unsigned long, unsigned long, LHSprite *, unsigned long)
	int ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                       unsigned long flags);
	// BW1W120 007f2a50 LHDraw::ScaledSprite16(long, long, unsigned long, unsigned long, LHSprite *, unsigned long)
	int ScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                   unsigned long flags);
	// BW1W120 007f2f30 LHDraw::OneColorScaledSprite16(long, long, unsigned long, unsigned long, LHSprite *, LHPixel16, unsigned long)
	int OneColorScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                           LHPixel16 color, unsigned long flags);
	// BW1W120 007f3530 LHDraw::OneColorScaledSprite24(long, long, unsigned long, unsigned long, LHSprite *, LHColor, unsigned long)
	int OneColorScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                           LHColor color, unsigned long flags);
};

#endif /* BW1_DECOMP_LH_DRAW_INCLUDED_H */
