#ifndef BW1_DECOMP_LH_SURFACE_INCLUDED_H
#define BW1_DECOMP_LH_SURFACE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include <ddraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>

#include "LHScreen.h"

struct LHRegion;
struct LHCoord;
class LHSpriteFrame;
struct LHSprite;

// What LHSurface::Image points at.
enum LH_SURFACE_IMAGE_TYPE
{
	LH_SURFACE_IMAGE_TYPE_0x0 = 0x0, /* Image is an LHSpriteFrame* (multi-part) */
	LH_SURFACE_IMAGE_TYPE_0x1 = 0x1, /* Image is an LHSprite* (single) */
	_LH_SURFACE_IMAGE_TYPE_COUNT = 0x2
};

// Blt direction used by CopySurface.
enum LH_COPY_DIRECTION
{
	LH_COPY_DIRECTION_0x0 = 0x0, /* other surface -> this surface */
	LH_COPY_DIRECTION_0x1 = 0x1, /* this surface -> other surface */
	_LH_COPY_DIRECTION_COUNT = 0x2
};

// An offscreen-plain DirectDraw surface used as a screen-save / image buffer.
// Every initialised instance is threaded onto the global gLHSurfaceList so the
// whole set can be invalidated/restored when the display mode changes.
struct LHSurface
{
	IDirectDrawSurface7*  Surface;             /* 0x00 */
	LHColor               TransparentColor;    /* 0x04 */
	int                   HasTransparentColor; /* 0x08 */
	int                   BitDepth;            /* 0x0c pixels-per-row of the locked surface */
	int                   Pitch;               /* 0x10 lPitch of the locked surface (bytes) */
	uint16_t              Width;               /* 0x14 */
	uint16_t              Height;              /* 0x16 */
	void*                 LockedAddress;       /* 0x18 lpSurface while locked */
	void*                 Image;               /* 0x1c LHSprite* or LHSpriteFrame* per ImageType */
	LH_SURFACE_IMAGE_TYPE ImageType;           /* 0x20 */
	uint32_t              SpriteFlags;         /* 0x24 flags forwarded to LHDraw::Sprite* */
	LHSurface*            Next;                /* 0x28 next node in gLHSurfaceList */
	int                   Valid;               /* 0x2c */

	// Constructors

	// BW1W120 007e6290 BW1M119 0115d950 (LHCombined Release)
	LHSurface(LHSprite* sprite, unsigned long flags);
	// BW1W120 007e62d0 BW1M119 0115d840 (LHCombined Release)
	LHSurface(LHSpriteFrame* frame, unsigned long flags);

	// Non-virtual methods

	// BW1W120 007e6330 BW1M119 0115d790 (LHCombined Release)
	int Initialise();
	// BW1W120 007e6350 BW1M119 0115d6d0 (LHCombined Release)
	int InitialiseSurface();
	// BW1W120 007e63b0 BW1M119 0115d5c0 (LHCombined Release)
	int Reset();
	// BW1W120 007e6450 BW1M119 0115d500 (LHCombined Release)
	int Lock();
	// BW1W120 007e64a0 BW1M119 0115d490 (LHCombined Release)
	int Unlock();
	// BW1W120 007e64c0 BW1M119 0115d3f0 (LHCombined Release)
	int Clear();
	// BW1W120 007e6500 BW1M119 0115d370 (LHCombined Release)
	int SetTransparentColor(LHColor* color);
	// BW1W120 007e6530 BW1M119 0115d290 (LHCombined Release)
	int SetTransparentColorSurface();
	// BW1W120 007e6590 BW1M119 0115d010 (LHCombined Release)
	int CopyImageIn();
	// BW1W120 007e66e0 BW1M119 0115cfa0 (LHCombined Release)
	int SetSpriteFlags(unsigned long flags);
	// BW1W120 007e6700 BW1M119 0115cf30 (LHCombined Release)
	int SetImage(void* image, LH_SURFACE_IMAGE_TYPE imageType);
	// BW1W120 007e6720 BW1M119 0115ce40 (LHCombined Release)
	int GetScreenSurface(LHRegion* rect, LHCoord* coord, LH_SCREEN_BUFFER screenBuffer);
	// BW1W120 007e67c0 BW1M119 0115cd60 (LHCombined Release)
	~LHSurface();
	// BW1W120 007e67e0 BW1M119 0115cb60 (LHCombined Release)
	int CopySurface(LHRegion* region, LHCoord* coord, IDirectDrawSurface7* dest, LH_COPY_DIRECTION direction,
	                int useColorKey);
	// BW1W120 007dc8b0
	int CopyRegionFromScreen(LHRegion* region, LHCoord* pos, int from_primary);
	// BW1W120 007e68e0 BW1M119 0115caf0 (LHCombined Release)
	void Add();
	// BW1W120 007e6920 BW1M119 0115ca70 (LHCombined Release)
	LHSurface* Remove();

	// Static methods

	// BW1W120 007e6960 BW1M119 0115c9b0 (LHCombined Release)
	static int RestoreAll(int recreate);
	// BW1W120 007e69b0 BW1M119 0115c950 (LHCombined Release)
	static void InvalidateAll();
};

#endif /* BW1_DECOMP_LH_SURFACE_INCLUDED_H */
