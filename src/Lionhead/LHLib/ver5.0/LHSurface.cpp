#include <Lionhead/LHLib/ver5.0/LHSurface.h>

#include <string.h>
#include <windows.h>
#include <ddraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

// A multi-part sprite frame: an array of parts, each a positioned LHSprite.
class LHSpriteFrame
{
public:
	void* Parts;
	int   NoParts;

	// BW1W120 007f1170 BW1M119 0115b0b0 (LHCombined Release)
	void GetBoundingRegion(LHRegion* out, long dx, long dy);
	// BW1W120 007f12b0 BW1M119 0115ae40 (LHCombined Release)
	void GetSpritePtrOffsets(long* outX, long* outY, long part);
	// BW1W120 007f12a0 BW1M119 0115aea0 (LHCombined Release)
	LHSprite* GetSpritePtr(long part);
};

// Fixed-address globals
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

LH_RETURN LHSurface::Initialise()
{
	LH_RETURN result = InitialiseSurface();
	if (result == LH_OK)
	{
		Add();
	}
	return result;
}

LH_RETURN LHSurface::InitialiseSurface()
{
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwHeight = Height;
	desc.dwWidth = Width;
	desc.dwSize = sizeof(DDSURFACEDESC2);
	desc.dwFlags = DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH;
	desc.ddsCaps.dwCaps = DDSCAPS_OFFSCREENPLAIN;
	LHSys::GetScreen().PDirectDraw->CreateSurface(&desc, (LPDIRECTDRAWSURFACE7*)this, NULL);
	return Reset();
}

LH_RETURN LHSurface::Reset()
{
	LH_RETURN      result = LH_OK;
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(DDSURFACEDESC2);
	if (Surface->Lock(NULL, &desc, DDLOCK_WAIT, NULL))
	{
		result = LH_FAIL;
	}
	Pitch = desc.lPitch;
	LockedAddress = desc.lpSurface;
	BitDepth = 8 * desc.lPitch / desc.ddpfPixelFormat.dwRGBBitCount;
	if (Surface->Unlock(NULL))
	{
		result = LH_FAIL;
	}
	Valid = result == LH_OK;
	SetTransparentColorSurface();
	if (Image)
	{
		CopyImageIn();
	}
	return result;
}

LH_RETURN LHSurface::Lock()
{
	LH_RETURN      result = LH_OK;
	DDSURFACEDESC2 desc;
	desc.dwSize = sizeof(DDSURFACEDESC2);
	if (Surface->Lock(NULL, &desc, DDLOCK_WAIT | DDLOCK_WRITEONLY, NULL))
	{
		result = LH_FAIL;
	}
	Pitch = desc.lPitch;
	LockedAddress = desc.lpSurface;
	BitDepth = 8 * desc.lPitch / desc.ddpfPixelFormat.dwRGBBitCount;
	return result;
}

LH_RETURN LHSurface::Unlock()
{
	LH_RETURN result = LH_OK;
	if (Surface->Unlock(NULL) != 0)
	{
		result = LH_FAIL;
	}
	return result;
}

LH_RETURN LHSurface::Clear()
{
	if (!Valid)
	{
		return LH_FAIL;
	}
	LH_RETURN result = LH_OK;
	gLHSurfaceBltFx.dwSize = sizeof(DDBLTFX);
	if (Surface->Blt(NULL, NULL, NULL, DDBLT_COLORFILL | DDBLT_WAIT, &gLHSurfaceBltFx))
	{
		result = LH_FAIL;
	}
	return result;
}

LH_RETURN LHSurface::SetTransparentColor(LHColor* color)
{
	HasTransparentColor = 1;
	*(uint16_t*)&TransparentColor.b = *(uint16_t*)&color->b;
	TransparentColor.r = color->r;
	return SetTransparentColorSurface();
}

LH_RETURN LHSurface::SetTransparentColorSurface()
{
	LH_RETURN result = LH_OK;
	if (!Valid)
	{
		return LH_FAIL;
	}
	if (!HasTransparentColor)
	{
		return LH_OK;
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
		result = LH_FAIL;
	}
	return result;
}

LH_RETURN LHSurface::CopyImageIn()
{
	LH_RETURN result = LH_OK;
	if (!Valid)
	{
		return LH_FAIL;
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
			if (LHSys::GetScreen().depth == 16)
			{
				LHSys::GetDraw().Sprite16(outX - left, outY - top, sprite, flags, 0, (LHPixel16*)lockedAddress,
				                          bitDepth);
			}
			else
			{
				LHSys::GetDraw().Sprite24(outX - left, outY - top, sprite, flags, (LHColor*)lockedAddress, bitDepth);
			}
			i += 0xFFFF;
		}
	}
	case LH_SURFACE_IMAGE_TYPE_0x1: {
		unsigned long flags = SpriteFlags;
		LHSprite*     sprite = (LHSprite*)Image;
		int           bitDepth = BitDepth;
		void*         lockedAddress = LockedAddress;
		if (LHSys::GetScreen().depth == 16)
		{
			result = LHSys::GetDraw().Sprite16(0, 0, sprite, flags, 0, (LHPixel16*)lockedAddress, bitDepth);
		}
		else
		{
			LH_RETURN r = LHSys::GetDraw().Sprite24(0, 0, sprite, flags, (LHColor*)lockedAddress, bitDepth);
			Unlock();
			return r;
		}
		break;
	}
	}
	Unlock();
	return result;
}

LH_RETURN LHSurface::SetSpriteFlags(unsigned long flags)
{
	if (SpriteFlags != flags)
	{
		SpriteFlags = flags;
		return CopyImageIn();
	}
	return LH_OK;
}

LH_RETURN LHSurface::SetImage(void* image, LH_SURFACE_IMAGE_TYPE imageType)
{
	// The original hard-codes a single-sprite image regardless of imageType.
	ImageType = LH_SURFACE_IMAGE_TYPE_0x1;
	Image = image;
	return CopyImageIn();
}

LH_RETURN LHSurface::GetScreenSurface(LHRegion* rect, LHCoord* coord, LH_SCREEN_BUFFER screenBuffer)
{
	LHRegion             region = *rect;
	IDirectDrawSurface7* surface;
	if (screenBuffer == LH_SCREEN_BUFFER_0x1)
	{
		region.start.x += LHSys::GetScreen().MsClientOffsetX;
		region.start.y += LHSys::GetScreen().MsClientOffsetY;
		region.end.x += LHSys::GetScreen().MsClientOffsetX;
		region.end.y += LHSys::GetScreen().MsClientOffsetY;
		surface = LHSys::GetScreen().PPrimarySurface;
	}
	else
	{
		surface = LHSys::GetScreen().PBackSurface;
	}
	return CopySurface(&region, coord, surface, LH_COPY_DIRECTION_0x1, 0);
}

LHSurface::~LHSurface()
{
	Remove();
	Surface->Release();
}

LH_RETURN LHSurface::CopySurface(LHRegion* region, LHCoord* coord, IDirectDrawSurface7* dest,
                                 LH_COPY_DIRECTION direction, int useColorKey)
{
	if (!Valid)
	{
		return LH_FAIL;
	}
	LH_RETURN result = LH_OK;
	RECT      srcRect;
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
		result = LH_FAIL;
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

LH_RETURN LHSurface::RestoreAll(int recreate)
{
	LHSurface* surface = gLHSurfaceList;
	LH_RETURN  result = LH_OK;
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
					result = LH_FAIL;
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
