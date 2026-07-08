#include <Lionhead/LHLib/ver5.0/LHSurface.h>

#include <string.h>
#include <windows.h>
#include <ddraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>

// A multi-part sprite frame: an array of parts, each a positioned LHSprite.
class LHSpriteFrame
{
public:
	void* Parts;
	int   NoParts;

	// BW1W120 007f1170 LHSpriteFrame::GetBoundingRegion(LHRegion *, long, long)
	void GetBoundingRegion(LHRegion* out, long dx, long dy);
	// BW1W120 007f12b0 LHSpriteFrame::GetSpritePtrOffsets(long *, long *, long)
	void GetSpritePtrOffsets(long* outX, long* outY, long part);
	// BW1W120 007f12a0 LHSpriteFrame::GetSpritePtr(long)
	LHSprite* GetSpritePtr(long part);
};

// Fixed-address globals
extern LHScreen   g_lhScreen;      // 0xE85050 the global LHScreen instance
extern LHDraw     gLHDraw;         // 0xE8586C the global LHDraw context (draws to the back buffer)
extern DDBLTFX    gLHSurfaceBltFx; // 0xE90670 scratch DDBLTFX reused by Clear()
extern LHSurface* gLHSurfaceList;  // 0xE906D8 head of the registered-surface list
extern uint16_t   gLHSurfaceCount; // 0xE906D4 number of registered surfaces

LHSurface::LHSurface(LHSprite* sprite, unsigned long flags)
{
	ImageType = LH_SURFACE_IMAGE_TYPE_0x1;
	Image = sprite;
	Width = sprite->Width;
	Height = sprite->Height;
	SpriteFlags = flags;
	HasTransparentColor = 0;
	Next = NULL;
}

LHSurface::LHSurface(LHSpriteFrame* frame, unsigned long flags)
{
	ImageType = LH_SURFACE_IMAGE_TYPE_0x0;
	HasTransparentColor = 0;
	Next = NULL;
	Image = frame;
	SpriteFlags = flags;
	LHRegion rect;
	frame->GetBoundingRegion(&rect, 0, 0);
	Width = rect.end.x - rect.start.x + 1;
	Height = rect.end.y - rect.start.y + 1;
}

int LHSurface::Initialise()
{
	int result = InitialiseSurface();
	if (!result)
	{
		Add();
	}
	return result;
}

int LHSurface::InitialiseSurface()
{
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwHeight = Height;
	desc.dwWidth = Width;
	desc.dwSize = sizeof(DDSURFACEDESC2);
	desc.dwFlags = DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH;
	desc.ddsCaps.dwCaps = DDSCAPS_OFFSCREENPLAIN;
	g_lhScreen.PDirectDraw->CreateSurface(&desc, (LPDIRECTDRAWSURFACE7*)this, NULL);
	return Reset();
}

int LHSurface::Reset()
{
	int            result = 0;
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(DDSURFACEDESC2);
	if (Surface->Lock(NULL, &desc, DDLOCK_WAIT, NULL))
	{
		result = 2;
	}
	Pitch = desc.lPitch;
	LockedAddress = desc.lpSurface;
	BitDepth = 8 * desc.lPitch / desc.ddpfPixelFormat.dwRGBBitCount;
	if (Surface->Unlock(NULL))
	{
		result = 2;
	}
	Valid = result == 0;
	SetTransparentColorSurface();
	if (Image)
	{
		CopyImageIn();
	}
	return result;
}

int LHSurface::Lock()
{
	int            result = 0;
	DDSURFACEDESC2 desc;
	desc.dwSize = sizeof(DDSURFACEDESC2);
	if (Surface->Lock(NULL, &desc, DDLOCK_WAIT | DDLOCK_WRITEONLY, NULL))
	{
		result = 2;
	}
	Pitch = desc.lPitch;
	LockedAddress = desc.lpSurface;
	BitDepth = 8 * desc.lPitch / desc.ddpfPixelFormat.dwRGBBitCount;
	return result;
}

int LHSurface::Unlock()
{
	int result = 0;
	if (Surface->Unlock(NULL) != 0)
	{
		result = 2;
	}
	return result;
}

int LHSurface::Clear()
{
	if (!Valid)
	{
		return 2;
	}
	int result = 0;
	gLHSurfaceBltFx.dwSize = sizeof(DDBLTFX);
	if (Surface->Blt(NULL, NULL, NULL, DDBLT_COLORFILL | DDBLT_WAIT, &gLHSurfaceBltFx))
	{
		result = 2;
	}
	return result;
}

int LHSurface::SetTransparentColor(LHColor* color)
{
	HasTransparentColor = 1;
	*(uint16_t*)&TransparentColor.b = *(uint16_t*)&color->b;
	TransparentColor.r = color->r;
	return SetTransparentColorSurface();
}

int LHSurface::SetTransparentColorSurface()
{
	int result = 0;
	if (!Valid)
	{
		return 2;
	}
	if (!HasTransparentColor)
	{
		return 0;
	}
	IDirectDrawSurface7* surface = Surface;
	LHColor*             color = &TransparentColor;
	DDCOLORKEY           key;
	key.dwColorSpaceLowValue = 0;
	*(uint16_t*)&key.dwColorSpaceLowValue = *(uint16_t*)&color->b;
	*((uint8_t*)&key.dwColorSpaceLowValue + 2) = color->r;
	key.dwColorSpaceHighValue = key.dwColorSpaceLowValue;
	if (surface->SetColorKey(DDCKEY_SRCBLT, &key))
	{
		result = 2;
	}
	return result;
}

int LHSurface::CopyImageIn()
{
	int result = 0;
	if (!Valid)
	{
		return 2;
	}
	Clear();
	Lock();
	switch (ImageType)
	{
	case LH_SURFACE_IMAGE_TYPE_0x0: {
		// TODO: This transcribes the original byte-for-byte. The frame path
		// iterates the parts with a 16-bit part index that decrements past zero
		// and never terminates (the exit condition is absent in the shipped
		// code), so it never falls through to the Unlock below. This path appears
		// to be dead/never-exercised in practice. Flagged for review.
		LHRegion rect;
		((LHSpriteFrame*)Image)->GetBoundingRegion(&rect, 0, 0);
		int i = ((LHSpriteFrame*)Image)->NoParts - 1;
		for (;;)
		{
			long outX;
			long outY;
			((LHSpriteFrame*)Image)->GetSpritePtrOffsets(&outX, &outY, (unsigned short)i);
			unsigned long flags = SpriteFlags;
			int           bitDepth = BitDepth;
			void*         lockedAddress = LockedAddress;
			int           top = rect.start.y;
			int           left = rect.start.x;
			LHSprite*     sprite = ((LHSpriteFrame*)Image)->GetSpritePtr((unsigned short)i);
			if (g_lhScreen.depth == 16)
			{
				gLHDraw.Sprite16(outX - left, outY - top, sprite, flags, 0, (LHPixel16*)lockedAddress, bitDepth);
			}
			else
			{
				gLHDraw.Sprite24(outX - left, outY - top, sprite, flags, (LHColor*)lockedAddress, bitDepth);
			}
			i += 0xFFFF;
		}
	}
	case LH_SURFACE_IMAGE_TYPE_0x1: {
		unsigned long flags = SpriteFlags;
		LHSprite*     sprite = (LHSprite*)Image;
		int           bitDepth = BitDepth;
		void*         lockedAddress = LockedAddress;
		if (g_lhScreen.depth == 16)
		{
			result = gLHDraw.Sprite16(0, 0, sprite, flags, 0, (LHPixel16*)lockedAddress, bitDepth);
		}
		else
		{
			int r = gLHDraw.Sprite24(0, 0, sprite, flags, (LHColor*)lockedAddress, bitDepth);
			Unlock();
			return r;
		}
		break;
	}
	}
	Unlock();
	return result;
}

int LHSurface::SetSpriteFlags(unsigned long flags)
{
	if (SpriteFlags != flags)
	{
		SpriteFlags = flags;
		return CopyImageIn();
	}
	return 0;
}

int LHSurface::SetImage(void* image, LH_SURFACE_IMAGE_TYPE imageType)
{
	// The original hard-codes a single-sprite image regardless of imageType.
	ImageType = LH_SURFACE_IMAGE_TYPE_0x1;
	Image = image;
	return CopyImageIn();
}

int LHSurface::GetScreenSurface(LHRegion* rect, LHCoord* coord, LH_SCREEN_BUFFER screenBuffer)
{
	LHRegion             region = *rect;
	IDirectDrawSurface7* surface;
	if (screenBuffer == LH_SCREEN_BUFFER_0x1)
	{
		region.start.x += g_lhScreen.MsClientOffsetX;
		region.start.y += g_lhScreen.MsClientOffsetY;
		region.end.x += g_lhScreen.MsClientOffsetX;
		region.end.y += g_lhScreen.MsClientOffsetY;
		surface = g_lhScreen.PPrimarySurface;
	}
	else
	{
		surface = g_lhScreen.PBackSurface;
	}
	return CopySurface(&region, coord, surface, LH_COPY_DIRECTION_0x1, 0);
}

LHSurface::~LHSurface()
{
	Remove();
	Surface->Release();
}

int LHSurface::CopySurface(LHRegion* region, LHCoord* coord, IDirectDrawSurface7* dest, LH_COPY_DIRECTION direction,
                           int useColorKey)
{
	if (!Valid)
	{
		return 2;
	}
	int  result = 0;
	RECT srcRect;
	if (region)
	{
		region->GetRect(&srcRect);
	}
	RECT dstRect;
	int  x = coord->x;
	int  y = coord->y;
	dstRect.left = coord->x;
	dstRect.top = y;
	int width = region ? (region->end.x - region->start.x + 1) : Width;
	dstRect.right = width + x;
	int height = region ? (region->end.y - region->start.y + 1) : Height;
	dstRect.bottom = height + y;
	int hr;
	if (direction == LH_COPY_DIRECTION_0x1)
	{
		hr = Surface->Blt(&dstRect, dest, region ? &srcRect : NULL,
		                  useColorKey ? (DDBLT_KEYSRC | DDBLT_WAIT) : DDBLT_WAIT, NULL);
	}
	else
	{
		hr = dest->Blt(&dstRect, Surface, region ? &srcRect : NULL,
		               HasTransparentColor ? (DDBLT_KEYSRC | DDBLT_WAIT) : DDBLT_WAIT, NULL);
	}
	if (hr)
	{
		result = 2;
	}
	return result;
}

void LHSurface::Add()
{
	if (gLHSurfaceList == NULL)
	{
		gLHSurfaceList = this;
		++gLHSurfaceCount;
	}
	else
	{
		LHSurface* node = gLHSurfaceList;
		while (node->Next)
		{
			node = node->Next;
		}
		node->Next = this;
		++gLHSurfaceCount;
	}
}

LHSurface* LHSurface::Remove()
{
	LHSurface* result;
	if (gLHSurfaceList == this)
	{
		result = Next;
		--gLHSurfaceCount;
		gLHSurfaceList = result;
	}
	else
	{
		LHSurface* prev = gLHSurfaceList;
		for (result = gLHSurfaceList->Next; result != this; result = result->Next)
		{
			prev = result;
		}
		prev->Next = Next;
		--gLHSurfaceCount;
	}
	return result;
}

int LHSurface::RestoreAll(int recreate)
{
	LHSurface* surface = gLHSurfaceList;
	int        result = 0;
	if (gLHSurfaceList)
	{
		do
		{
			if (recreate)
			{
				surface->InitialiseSurface();
			}
			else
			{
				if (surface->Surface->Restore())
				{
					result = 2;
				}
				surface->Reset();
			}
			surface = surface->Next;
		} while (surface);
	}
	return result;
}

void LHSurface::InvalidateAll()
{
	for (LHSurface* surface = gLHSurfaceList; surface; surface = surface->Next)
	{
		surface->Valid = 0;
	}
}
