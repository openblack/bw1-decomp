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

	// BW1W120 007e6290 LHSurface::LHSurface(LHSprite *, unsigned long)
	LHSurface(LHSprite* sprite, unsigned long flags);
	// BW1W120 007e62d0 LHSurface::LHSurface(LHSpriteFrame *, unsigned long)
	LHSurface(LHSpriteFrame* frame, unsigned long flags);

	// Non-virtual methods

	// BW1W120 007e6330 LHSurface::Initialise(void)
	int Initialise();
	// BW1W120 007e6350 LHSurface::InitialiseSurface(void)
	int InitialiseSurface();
	// BW1W120 007e63b0 LHSurface::Reset(void)
	int Reset();
	// BW1W120 007e6450 LHSurface::Lock(void)
	int Lock();
	// BW1W120 007e64a0 LHSurface::Unlock(void)
	int Unlock();
	// BW1W120 007e64c0 LHSurface::Clear(void)
	int Clear();
	// BW1W120 007e6500 LHSurface::SetTransparentColor(LHColor *)
	int SetTransparentColor(LHColor* color);
	// BW1W120 007e6530 LHSurface::SetTransparentColorSurface(void)
	int SetTransparentColorSurface();
	// BW1W120 007e6590 LHSurface::CopyImageIn(void)
	int CopyImageIn();
	// BW1W120 007e66e0 LHSurface::SetSpriteFlags(unsigned long)
	int SetSpriteFlags(unsigned long flags);
	// BW1W120 007e6700 LHSurface::SetImage(void *, LH_SURFACE_IMAGE_TYPE)
	int SetImage(void* image, LH_SURFACE_IMAGE_TYPE imageType);
	// BW1W120 007e6720 LHSurface::GetScreenSurface(LHRegion *, LHCoord *, LH_SCREEN_BUFFER)
	int GetScreenSurface(LHRegion* rect, LHCoord* coord, LH_SCREEN_BUFFER screenBuffer);
	// BW1W120 007e67c0 LHSurface::~LHSurface(void)
	~LHSurface();
	// BW1W120 007e67e0 LHSurface::CopySurface(LHRegion *, LHCoord *, IndirectX::IDirectDrawSurface7 *, LH_COPY_DIRECTION, int)
	int CopySurface(LHRegion* region, LHCoord* coord, IDirectDrawSurface7* dest, LH_COPY_DIRECTION direction,
	                int useColorKey);
	// BW1W120 007e68e0 LHSurface::Add(void)
	void Add();
	// BW1W120 007e6920 LHSurface::Remove(void)
	LHSurface* Remove();

	// Static methods

	// BW1W120 007e6960 LHSurface::RestoreAll(int)
	static int RestoreAll(int recreate);
	// BW1W120 007e69b0 LHSurface::InvalidateAll(void)
	static void InvalidateAll();
};

#endif /* BW1_DECOMP_LH_SURFACE_INCLUDED_H */
