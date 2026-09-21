#ifndef BW1_DECOMP_LH_DRAW_INCLUDED_H
#define BW1_DECOMP_LH_DRAW_INCLUDED_H

#include <stdint.h>

struct LHColor;
struct LHRegion;

struct LHPixel16
{
	uint16_t value;

	// BW1W120 00449650 BW1M119 0114d640 (LHCombined Release)
	void Set(LHColor color);
	// BW1W120 00521a90
	void Set(uint8_t red, uint8_t green, uint8_t blue);
};

struct LHSprite
{
	uint16_t Width;
	uint16_t Height;
	uint8_t* PixelData;
};

class LHDraw
{
public:
	uint32_t drawAddress;
	int      pixelPitch;

	// BW1W120 007deef0 BW1M119 01141af0 (LHCombined Release)
	int HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color);
	// BW1W120 007defa0 BW1M119 01141960 (LHCombined Release)
	int HVLine24(long x0, long y0, long x1, long y1, LHColor color);
	// BW1W120 007df060 BW1M119 01141250 (LHCombined Release)
	int HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode);
	// BW1W120 007df430 BW1M119 01140900 (LHCombined Release)
	int HVLine24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode);

	// BW1W120 007dfe70 BW1M119 0113f130 (LHCombined Release)
	int Line16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode, LHPixel16* drawBuffer,
	           unsigned long pixelPitch);
	// BW1W120 007df870 BW1M119 0113fcd0 (LHCombined Release)
	int Line24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode, LHColor* drawBuffer,
	           unsigned long pixelPitch);

	// BW1W120 007e2810 BW1M119 011335e0 (LHCombined Release)
	int Box16(long left, long top, long right, long bottom, LHPixel16 color);
	// BW1W120 007e2880 BW1M119 01133510 (LHCombined Release)
	int Box24(long left, long top, long right, long bottom, LHColor color);
	// BW1W120 007e2910 BW1M119 01133190 (LHCombined Release)
	int Box16(long left, long top, long right, long bottom, LHPixel16 color, unsigned long style);
	// BW1W120 007e2b40 BW1M119 01132e10 (LHCombined Release)
	int Box24(long left, long top, long right, long bottom, LHColor color, unsigned long style);
	// BW1W120 007e2df0 BW1M119 01131f90 (LHCombined Release)
	int EmbossedBox16(long left, long top, long right, long bottom, LHPixel16 fillColor, LHPixel16 edgeColor,
	                  uint8_t lightDir, uint8_t bevelWidth, unsigned long style);
	// BW1W120 007e3630 BW1M119 01131200 (LHCombined Release)
	int EmbossedBox24(long left, long top, long right, long bottom, LHColor fillColor, LHColor edgeColor,
	                  uint8_t lightDir, uint8_t bevelWidth, unsigned long style);

	// BW1W120 007ea0b0 BW1M119 01148bb0 (LHCombined Release)
	int Pixel16(unsigned long x, unsigned long y, LHPixel16 color, unsigned long mode);
	// BW1W120 007ea240 BW1M119 01148770 (LHCombined Release)
	int Pixel24(unsigned long x, unsigned long y, LHColor color, unsigned long mode);

	// BW1W120 007ea570 BW1M119 01133930 (LHCombined Release)
	int Circle16(long centerX, long centerY, unsigned long radius, LHPixel16 color, unsigned long mode);
	// BW1W120 007ea810 BW1M119 011336b0 (LHCombined Release)
	int Circle24(long centerX, long centerY, unsigned long radius, LHColor color, unsigned long mode);

	// BW1W120 007eab90 BW1M119 01159b60 (LHCombined Release)
	int Sprite16(long x, long y, LHSprite* sprite);
	// BW1W120 007eac00 BW1M119 01159a10 (LHCombined Release)
	int Sprite24(long x, long y, LHSprite* sprite);
	// BW1W120 007eacb0 BW1M119 01159850 (LHCombined Release)
	int Sprite24To16(long x, long y, LHSprite* sprite);

	// BW1W120 007eadb0 BW1M119 011590a0 (LHCombined Release)
	int Sprite24(long x, long y, LHSprite* sprite, unsigned long flags, LHColor* drawBuffer, unsigned long pixelPitch);
	// BW1W120 007eb250 BW1M119 01158a20 (LHCombined Release)
	int Sprite24To16(long x, long y, LHSprite* sprite, unsigned long flags, LHPixel16* drawBuffer,
	                 unsigned long pixelPitch);
	// BW1W120 007eb870 BW1M119 011582c0 (LHCombined Release)
	int Sprite16(long x, long y, LHSprite* sprite, unsigned long flags, unsigned short alpha, LHPixel16* drawBuffer,
	             unsigned long pixelPitch);

	// BW1W120 007ebde0 BW1M119 01157c40 (LHCombined Release)
	int HeightSprite16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);
	// BW1W120 007ec210 BW1M119 01157470 (LHCombined Release)
	int HeightSprite24(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);
	// BW1W120 007ec6b0 BW1M119 01156e40 (LHCombined Release)
	int HeightSprite24To16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags);

	// BW1W120 007ecc90 BW1M119 01156790 (LHCombined Release)
	int RegionSprite16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);
	// BW1W120 007ed0e0 BW1M119 01155f90 (LHCombined Release)
	int RegionSprite24(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);
	// BW1W120 007ed580 BW1M119 01155930 (LHCombined Release)
	int RegionSprite24To16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags);

	// BW1W120 007edb90 BW1M119 011551c0 (LHCombined Release)
	int OneColorSprite16(long x, long y, LHSprite* sprite, LHPixel16 color, unsigned long flags);
	// BW1W120 007ee050 BW1M119 011548a0 (LHCombined Release)
	int OneColorSprite24(long x, long y, LHSprite* sprite, LHColor color, unsigned long flags);

	// BW1W120 007f1990 BW1M119 0114a240 (LHCombined Release)
	int ScaledSprite16xxx(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                      unsigned long flags);
	// BW1W120 007f1e70 BW1M119 0114b400 (LHCombined Release)
	int ScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                   unsigned long flags);
	// BW1W120 007f23b0 BW1M119 0114a910 (LHCombined Release)
	int ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                       unsigned long flags);
	// BW1W120 007f2a50 BW1M119 0114bc00 (LHCombined Release)
	int ScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                   unsigned long flags);
	// BW1W120 007f2f30 BW1M119 01149960 (LHCombined Release)
	int OneColorScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                           LHPixel16 color, unsigned long flags);
	// BW1W120 007f3530 BW1M119 01148ed0 (LHCombined Release)
	int OneColorScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
	                           LHColor color, unsigned long flags);
};

#endif /* BW1_DECOMP_LH_DRAW_INCLUDED_H */
