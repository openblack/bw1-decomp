#include <Lionhead/LHLib/ver5.0/LHMouse.h>

#include <new>
#include <windows.h>

#define DIRECTINPUT_VERSION 0x0700
#include <dinput.h>

#ifndef SM_MOUSEWHEELPRESENT
#define SM_MOUSEWHEELPRESENT 75 /* absent from the MSVC 6.0 SDK headers */
#endif


#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHMem.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSurface.h>
#include <Lionhead/LHLib/ver5.0/LHSystemGlobals.h>

IDirectInputA*       gDirectInput;    // 0xE90668
IDirectInputDeviceA* gMouseDevice;    // 0xE9066C

static int __stdcall CopyRegionFromScreen(LHRegion* dst, LHCoord* pos, int fromPrimary)
{
	LHCoord coord;
	coord.x = pos->x;
	coord.y = pos->y;
	IDirectDrawSurface7* surface;
	if (fromPrimary == 1)
	{
		coord.x += g_lhScreen.MsClientOffsetX;
		coord.y += g_lhScreen.MsClientOffsetY;
		surface = g_lhScreen.PPrimarySurface;
	}
	else
	{
		surface = g_lhScreen.PBackSurface;
	}
	return ((LHSurface*)dst)->CopySurface(dst, &coord, surface, LH_COPY_DIRECTION_0x0, 0);
}

LHMouse::LHMouse()
{
	InitializeCriticalSection(&g_screenCritSec);
	field_18 = 2;
	ImageMode = 2;
	DoubleBuffered = 1;
	Pinned = 0;
	Locked = 1;
	AnimType = 0;
	field_10 = 0;
	EventMask = 7;
	BufferToggle = 0;
	UsePadding = 0;
	MouseWheelAccum = 0;
	NumButtons = GetSystemMetrics(SM_CMOUSEBUTTONS);
	IsWheelPresent = GetSystemMetrics(SM_MOUSEWHEELPRESENT);
	AccumDelta.x = 0;
	AccumDelta.y = 0;
}

int LHMouse::UpdateDeltaPos()
{
	DIMOUSESTATE state;
	int          result = (int)gMouseDevice;
	if (gMouseDevice)
	{
		result = gMouseDevice->GetDeviceState(sizeof(DIMOUSESTATE), &state);
		if (((result != DIERR_INPUTLOST) && (result != DIERR_NOTACQUIRED)) || (result = gMouseDevice->Acquire()) >= 0)
		{
			if (result >= 0)
			{
				if (gMouseWheelSkip)
				{
					gMouseWheelSkip = 0;
				}
				else
				{
					if ((int16_t)state.lZ < 2000)
						MouseWheelAccum += (int16_t)state.lZ;
					if (state.lZ)
						IsWheelPresent = 1;
				}
				AccumDelta.x += state.lX;
				AccumDelta.y += state.lY;
			}
		}
	}
	return result;
}

int LHMouse::InitDirectInput()
{
	if (DirectInputCreateA(g_hInstance, DIRECTINPUT_VERSION, &gDirectInput, NULL) < 0)
		return 2;
	if (gDirectInput->CreateDevice(GUID_SysMouse, (LPDIRECTINPUTDEVICEA*)&gMouseDevice, NULL) < 0)
		return 2;
	if (gMouseDevice->SetDataFormat(&c_dfDIMouse) < 0)
		return 2;
	if (gMouseDevice->SetCooperativeLevel(g_lhScreen.MsWindowHandle, DISCL_NONEXCLUSIVE | DISCL_FOREGROUND) >= 0)
		return gMouseDevice->Acquire() >= 0 ? 0 : 2;
	return 2;
}

int LHMouse::ShutdownDirectInput()
{
	if (gMouseDevice)
	{
		gMouseDevice->Unacquire();
		gMouseDevice->Release();
		gMouseDevice = NULL;
	}
	if (gDirectInput)
	{
		gDirectInput->Release();
		gDirectInput = NULL;
	}
	return 0;
}

int LHMouse::UpdateCurrentPos(LHCoord coord)
{
	// TODO(nonmatching): x87 evaluation order for the mixed float/int expression differs.
	int width = g_lhScreen.width;
	int height = g_lhScreen.height;
	EffectivePos.x = (int)((float)coord.x * width / (width - 2 * Margin.x) - Margin.x);
	EffectivePos.y = (int)((float)coord.y * height / (height - 2 * Margin.y) - Margin.y);
	if (UsePadding)
	{
		int marginX = Margin.x;
		if (coord.x < marginX)
			DefaultPos.x = 0;
		else if (coord.x > width - marginX)
			DefaultPos.x = width;
		else
			DefaultPos.x = (int)((float)coord.x * width / (width - 2 * marginX) - marginX);
		int marginY = Margin.y;
		if (coord.y < marginY)
			DefaultPos.y = 0;
		else if (coord.y > height - marginY)
			DefaultPos.y = height;
		else
			DefaultPos.y = (int)((float)coord.y * height / (height - 2 * marginY) - marginY);
	}
	else
	{
		DefaultPos.x = coord.x;
		DefaultPos.y = coord.y;
	}
	CurrentPos.x = DefaultPos.x;
	CurrentPos.y = DefaultPos.y;
	return DefaultPos.y;
}

void LHMouse::SetMouseMargin(LHCoord margin)
{
	if (margin.x || margin.y)
	{
		Margin.x = margin.x;
		Margin.y = margin.y;
		UsePadding = 1;
	}
	else
	{
		UsePadding = 0;
	}
}

void LHMouse::SetButtons(uint8_t button)
{
	// TODO(nonmatching): pressed/held masks allocated to different registers than the original.
	EnterCriticalSection(&g_screenCritSec);
	uint8_t pressed = ButtonPressed | button;
	uint8_t held = Buttons | button;
	ButtonPressed = pressed;
	Buttons = held;
	switch (button)
	{
	case 2:
		ButtonPos[1].x = DefaultPos.x;
		ButtonPos[1].y = DefaultPos.y;
		ButtonPressed = pressed & 0xF7;
		Buttons = held & 0xF7;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 8:
		ButtonPos[4].x = DefaultPos.x;
		ButtonPos[4].y = DefaultPos.y;
		Buttons = held & 0xFD;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 0x40:
		ButtonPos[2].x = DefaultPos.x;
		ButtonPos[2].y = DefaultPos.y;
		ButtonPressed = pressed & 0x7F;
		Buttons = held & 0x7F;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 0x80:
		ButtonPos[5].x = DefaultPos.x;
		ButtonPos[5].y = DefaultPos.y;
		Buttons = held & 0xBF;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 1:
		ButtonPos[0].x = DefaultPos.x;
		ButtonPos[0].y = DefaultPos.y;
		ButtonPressed = pressed & 0xFB;
		Buttons = held & 0xFB;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 4:
		ButtonPos[3].x = DefaultPos.x;
		ButtonPos[3].y = DefaultPos.y;
		Buttons = held & 0xFE;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 0x10:
		ButtonPos[6].x = DefaultPos.x;
		ButtonPos[6].y = DefaultPos.y;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 0x20:
		ButtonPos[7].x = DefaultPos.x;
		ButtonPos[7].y = DefaultPos.y;
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 0:
		ButtonPos[8].x = DefaultPos.x;
		ButtonPos[8].y = DefaultPos.y;
		// fallthrough to the shared unlock
	default:
		LeaveCriticalSection(&g_screenCritSec);
		break;
	}
}

int LHMouse::SetPosition(LHCoord* position)
{
	if (gWindowedMode)
	{
		ImageMode = 1;
		PostMessageA(g_lhScreen.MsWindowHandle, 0x8007, 0, 0);
		gMouse.UpdateCurrentPos(*position);
		gMouse.Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)4);
	}
	else
	{
		POINT point;
		point.x = position->x;
		point.y = position->y;
		ClientToScreen(g_lhScreen.MsWindowHandle, &point);
		SetCursorPos(point.x, point.y);
	}
	return 0;
}

int LHMouse::SetPositionRel(LHCoord* delta)
{
	POINT point;
	point.x = delta->x + DefaultPos.x;
	point.y = delta->y + DefaultPos.y;
	ClientToScreen(g_lhScreen.MsWindowHandle, &point);
	SetCursorPos(point.x, point.y);
	return 0;
}

static LHSurface* AllocWorkSurface(uint16_t width, uint16_t height)
{
	LHSurface* surface = (LHSurface*)LHMem::Alloc(sizeof(LHSurface));
	if (surface)
	{
		surface->HasTransparentColor = 0;
		surface->Width = width;
		surface->Height = height;
		surface->Image = NULL;
		surface->SpriteFlags = 0;
		surface->Next = NULL;
	}
	return surface;
}

int LHMouse::SetWorkingArea(uint16_t width, uint16_t height)
{
	EnterCriticalSection(&g_screenCritSec);
	EnterCriticalSection(&g_screenCritSec);
	if (!Locked)
	{
		CopyRegionFromScreen(&PrevSavedRegion, (LHCoord*)&PrevDrawRegion, 1);
		Locked = 1;
	}
	LeaveCriticalSection(&g_screenCritSec);

	field_10 = width && height;
	if (SingleSurface)
	{
		SingleSurface->~LHSurface();
		LHMem::Free(SingleSurface);
		SingleSurface = NULL;
	}
	if (field_10)
	{
		SingleSurface = AllocWorkSurface(width, height);
	}
	else if (ImageMode == 32)
	{
		void* mem = LHMem::Alloc(sizeof(LHSurface));
		SingleSurface = mem ? new (mem) LHSurface(SingleSprite, 0) : NULL;
	}

	if (SingleSurface)
	{
		SingleSurface->Initialise();
		if (SpriteFlags)
			SingleSurface->SetSpriteFlags(SpriteFlags & 0x60);
		LHColor transparent;
		transparent.b = 0;
		transparent.g = 0;
		transparent.r = 0;
		SingleSurface->SetTransparentColor(&transparent);
	}

	if (SaveSurface[0])
	{
		SaveSurface[0]->~LHSurface();
		LHMem::Free(SaveSurface[0]);
		SaveSurface[0] = NULL;
		if (SaveSurface[1])
		{
			SaveSurface[1]->~LHSurface();
			LHMem::Free(SaveSurface[1]);
		}
		SaveSurface[1] = NULL;
	}
	if (Mode8Surface)
	{
		Mode8Surface->~LHSurface();
		LHMem::Free(Mode8Surface);
		Mode8Surface = NULL;
	}

	if (!width || !height)
	{
		width = 0;
		height = 0;
		if (FrameSurfaces && FrameCount16)
		{
			LHSurface** frames = FrameSurfaces;
			for (int i = FrameCount16; i; --i)
			{
				if (width < (*frames)->Width)
					width = (*frames)->Width;
				if (height < (*frames)->Height)
					height = (*frames)->Height;
				++frames;
			}
		}
		if (SingleSurface)
		{
			if (width < SingleSurface->Width)
				width = SingleSurface->Width;
			if (height < SingleSurface->Height)
				height = SingleSurface->Height;
		}
		if (CurrentSurface)
		{
			if (width < CurrentSurface->Width)
				width = CurrentSurface->Width;
			if (height < CurrentSurface->Height)
				height = CurrentSurface->Height;
		}
	}

	if (width && height)
	{
		SaveSurface[0] = AllocWorkSurface(width, height);
		SaveSurface[1] = AllocWorkSurface(width, height);
		SaveSurface[0]->Initialise();
		SaveSurface[1]->Initialise();
		Mode8Surface = AllocWorkSurface(width, height);
		Mode8Surface->Initialise();
	}

	BufferToggle = 0;
	LeaveCriticalSection(&g_screenCritSec);
	return 0;
}

int LHMouse::SetSpriteFlags(unsigned long flags)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	LHSurface* single = SingleSurface;
	SpriteFlags = flags;
	int result;
	if (single)
		result = single->SetSpriteFlags(flags & 0x60);
	else
		result = flags;
	if (FrameSurfaces)
	{
		for (uint16_t i = 0; i < FrameCount16; ++i)
			FrameSurfaces[i]->SetSpriteFlags(SpriteFlags & 0x60);
	}
	Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)128);
	LeaveCriticalSection(&g_screenCritSec);
	return result;
}

int LHMouse::SetCursor(void* image, LH_MOUSE_IMAGE_TYPE imageType, int reallocSurface)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	int prevMode = ImageMode;
	field_18 = imageType;
	if (prevMode != 64)
		ImageMode = imageType;
	int mode = ImageMode;
	SingleSprite = NULL;
	Mode8Surface = NULL;
	if (mode == 32)
		SingleSprite = (LHSprite*)image;
	if (mode == 8)
		Mode8Surface = (LHSurface*)image;
	if (reallocSurface)
		SetWorkingArea(0, 0);
	if (ImageMode == 32)
	{
		LHSurface* surface = SingleSurface;
		if (surface->Image != SingleSprite || surface->ImageType != LH_SURFACE_IMAGE_TYPE_0x1)
			surface->SetImage(SingleSprite, LH_SURFACE_IMAGE_TYPE_0x1);
	}
	int mode2 = ImageMode;
	if (mode2 != 64)
	{
		if ((mode2 & ~7) == 0)
		{
			EnterCriticalSection(&g_screenCritSec);
			if (DoubleBuffered)
			{
				EnterCriticalSection(&g_screenCritSec);
				if (!Locked)
				{
					CopyRegionFromScreen(&PrevSavedRegion, (LHCoord*)&PrevDrawRegion, 1);
					Locked = 1;
				}
				LeaveCriticalSection(&g_screenCritSec);
				DoubleBuffered = 0;
			}
			LeaveCriticalSection(&g_screenCritSec);
			PostMessageA(g_lhScreen.MsWindowHandle, 0x8007, 0, 0);
		}
		if ((ImageMode & ~7) != 0)
		{
			Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)8);
			LeaveCriticalSection(&g_screenCritSec);
			return 0;
		}
		EnterCriticalSection(&g_screenCritSec);
		if (DoubleBuffered)
		{
			EnterCriticalSection(&g_screenCritSec);
			if (!Locked)
			{
				CopyRegionFromScreen(&PrevSavedRegion, (LHCoord*)&PrevDrawRegion, 1);
				Locked = 1;
			}
			LeaveCriticalSection(&g_screenCritSec);
			DoubleBuffered = 0;
		}
		LeaveCriticalSection(&g_screenCritSec);
		PostMessageA(g_lhScreen.MsWindowHandle, 0x8007, 0, 0);
	}
	LeaveCriticalSection(&g_screenCritSec);
	return 0;
}

void LHMouse::PinImage(int16_t x, int16_t y)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	Pinned = 1;
	if (x == (int16_t)0x8000)
	{
		PinPos.x = DefaultPos.x;
		PinPos.y = DefaultPos.y;
	}
	else
	{
		PinPos.x = x;
		PinPos.y = y;
	}
	LeaveCriticalSection(&g_screenCritSec);
}

void LHMouse::UpdateDrawRegions(LHSurface* surface)
{
	// TODO(nonmatching)
	int mode = ImageMode;
	if ((mode & ~7) == 0)
		return;
	if (!Pinned)
	{
		PinPos.x = DefaultPos.x;
		PinPos.y = DefaultPos.y;
	}
	int x;
	int y;
	if (mode != 64 || IsMultiFrame)
	{
		x = PinPos.x - Hotspot.x;
		y = PinPos.y;
	}
	else
	{
		int* offsets = FramePartOffsets;
		x = PinPos.x - Hotspot.x - offsets[2 * CurrentFrame];
		y = PinPos.y - offsets[2 * CurrentFrame + 1];
	}
	y -= Hotspot.y;

	if (!surface)
	{
		switch (mode)
		{
		case 8:
			surface = Mode8Surface;
			break;
		case 32:
			surface = SingleSurface;
			break;
		case 64:
			surface = FrameSurfaces[CurrentFrame];
			break;
		}
	}
	int width = surface->Width;
	int height = surface->Height;
	DrawRegion.start.x = x;
	DrawRegion.start.y = y;
	DrawRegion.end.x = width + x - 1;
	DrawRegion.end.y = height + y - 1;

	bool offScreen = false;
	if (DrawRegion.start.x < 0)
		DrawRegion.start.x = 0;
	else if (DrawRegion.start.x >= g_lhScreen.width)
		offScreen = true;
	if (!offScreen)
	{
		if (DrawRegion.start.y < 0)
			DrawRegion.start.y = 0;
		else if (DrawRegion.start.y >= g_lhScreen.height)
			offScreen = true;
	}
	if (!offScreen)
	{
		if (DrawRegion.end.x < 0)
			offScreen = true;
		else
		{
			if (DrawRegion.end.x >= g_lhScreen.width)
				DrawRegion.end.x = g_lhScreen.width - 1;
			if (DrawRegion.end.y < 0)
				offScreen = true;
			else
			{
				if (DrawRegion.end.y >= g_lhScreen.height)
					DrawRegion.end.y = g_lhScreen.height - 1;
				SavedRegion.start.x = DrawRegion.start.x - x;
				SavedRegion.start.y = DrawRegion.start.y - y;
				SavedRegion.end.x = DrawRegion.end.x - x;
				SavedRegion.end.y = DrawRegion.end.y - y;
				return;
			}
		}
	}

	EnterCriticalSection(&g_screenCritSec);
	if (DoubleBuffered)
	{
		EnterCriticalSection(&g_screenCritSec);
		if (!Locked)
		{
			CopyRegionFromScreen(&PrevSavedRegion, (LHCoord*)&PrevDrawRegion, 1);
			Locked = 1;
		}
		LeaveCriticalSection(&g_screenCritSec);
		DoubleBuffered = 0;
	}
	LeaveCriticalSection(&g_screenCritSec);
}

void LHMouse::Draw(LH_SCREEN_BUFFER buffer, LH_MOUSE_EVENT_TYPE eventType)
{
	// TODO(nonmatching)
	if ((ImageMode & ~7) == 0)
	{
		if (DrawCallback)
		{
			EnterCriticalSection(&g_screenCritSec);
			DrawCallback(CallbackArg1, eventType, CurrentFrame, CallbackArg2);
			LeaveCriticalSection(&g_screenCritSec);
		}
		return;
	}
	if ((EventMask & eventType) == 0)
		return;

	EnterCriticalSection(&g_screenCritSec);
	LHSprite* sprite = NULL;
	if (eventType == 2 && !AnimType)
	{
		LeaveCriticalSection(&g_screenCritSec);
		return;
	}
	int suppress;
	ScreenBuffer = buffer;
	if (DrawCallback && (eventType & 0x47) != 0)
		suppress = DrawCallback(CallbackArg1, eventType, CurrentFrame, CallbackArg2);
	else
		suppress = (eventType & 0x3BD) == 0 && ((eventType & 2) == 0 || !AnimType);

	LHSurface* image;
	switch (ImageMode)
	{
	case 8:
		image = Mode8Surface;
		break;
	case 32:
		image = SingleSurface;
		sprite = SingleSprite;
		break;
	case 64:
		image = FrameSurfaces[CurrentFrame];
		if (IsMultiFrame == 1)
			sprite = (LHSprite*)((char*)FrameBank + 8 * CurrentFrame);
		break;
	default:
		image = (LHSurface*)eventType;
		break;
	}
	UpdateDrawRegions(image);
	if (DoubleBuffered && g_lhScreen.opened)
	{
		int mode = ImageMode;
		if ((mode & ~7) != 0 && !suppress)
		{
			if ((mode == 32 || mode == 64) && ((SpriteFlags & 0xE) != 0 || SpriteColor16))
			{
				GetScreenUnderCursorNoSetup(CurrentSurface, 0);
				CurrentSurface->Lock();
				CurrentSurface->Unlock();
				LHSurface* cur = CurrentSurface;
				if (g_lhScreen.depth == 16)
					gLHDraw.Sprite16(0, 0, sprite, SpriteFlags, SpriteColor16, (LHPixel16*)cur->LockedAddress,
					                 cur->BitDepth);
				else
					gLHDraw.Sprite24(0, 0, sprite, SpriteFlags, (LHColor*)cur->LockedAddress, cur->BitDepth);
				image = CurrentSurface;
			}
			GetScreenUnderCursorNoSetup(SaveSurface[BufferToggle == 0], image);
			EnterCriticalSection(&g_screenCritSec);
			if (!Locked)
			{
				LHCoord coord;
				coord.x = PrevDrawRegion.start.x;
				coord.y = PrevDrawRegion.start.y;
				LHSurface* prev = SaveSurface[BufferToggle];
				coord.x += g_lhScreen.MsClientOffsetX; // LHCoord::AddMSWindowOffset (0x7e5af0)
				coord.y += g_lhScreen.MsClientOffsetY;
				prev->CopySurface(&PrevSavedRegion, &coord, g_lhScreen.PPrimarySurface, LH_COPY_DIRECTION_0x0, 0);
				Locked = 1;
			}
			LeaveCriticalSection(&g_screenCritSec);
			LHCoord coord;
			coord.x = DrawRegion.start.x;
			coord.y = DrawRegion.start.y;
			IDirectDrawSurface7* dest;
			if (buffer == 1)
			{
				coord.x += g_lhScreen.MsClientOffsetX;
				coord.y += g_lhScreen.MsClientOffsetY;
				dest = g_lhScreen.PPrimarySurface;
			}
			else
			{
				dest = g_lhScreen.PBackSurface;
			}
			image->CopySurface(&SavedRegion, &coord, dest, LH_COPY_DIRECTION_0x0, 0);
			Locked = 0;
			PrevSavedRegion.start.x = SavedRegion.start.x;
			PrevSavedRegion.start.y = SavedRegion.start.y;
			PrevSavedRegion.end.x = SavedRegion.end.x;
			PrevSavedRegion.end.y = SavedRegion.end.y;
			PrevDrawRegion.start.x = DrawRegion.start.x;
			PrevDrawRegion.start.y = DrawRegion.start.y;
			PrevDrawRegion.end.x = DrawRegion.end.x;
			PrevDrawRegion.end.y = DrawRegion.end.y;
			BufferToggle = BufferToggle == 0;
			if (eventType == 2)
				SetAnimFrame();
		}
	}
	LeaveCriticalSection(&g_screenCritSec);
}

void LHMouse::SetCurrentCursorAnimFrame(unsigned long frame)
{
	// TODO(nonmatching)
	CurrentFrame = frame;
}

int LHMouse::SetAnimFrame()
{
	// TODO(nonmatching)
	if (AnimType == 1)
	{
		unsigned int frame = CurrentFrame;
		if (frame < (uint16_t)(FrameCount - 1))
		{
			CurrentFrame = frame + 1;
			return CurrentFrame;
		}
		CurrentFrame = 0;
		return PostMessageA(g_lhScreen.MsWindowHandle, 0x8006, 0, 0);
	}
	if (AnimType != 2)
	{
		int result = AnimType - 3;
		if (AnimType == 3)
		{
			int frame = CurrentFrame;
			if (FrameCount16)
			{
				unsigned int count = FrameCount16;
				result = (unsigned int)(frame + 1) / count;
				CurrentFrame = (unsigned int)(frame + 1) % count;
			}
			else
			{
				result = (unsigned int)(frame + 1) / (unsigned int)FrameCount;
				CurrentFrame = (unsigned int)(frame + 1) % (unsigned int)FrameCount;
			}
		}
		return result;
	}
	int result = CurrentFrame;
	if (AnimReverse)
	{
		if (result)
		{
			CurrentFrame = --result;
			return result;
		}
		return PostMessageA(g_lhScreen.MsWindowHandle, 0x8006, 0, 0);
	}
	if ((unsigned int)result >= (uint16_t)(FrameCount - 1))
	{
		if ((Buttons & 1) == 0)
		{
			if (result)
				CurrentFrame = --result;
			AnimReverse = 1;
		}
	}
	else
	{
		CurrentFrame = ++result;
	}
	return result;
}

void LHMouse::SetAnimateImages(LH_ANIMATE_IMAGE_TYPE imageType, void* images, unsigned long index)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	if (FrameSurfaces)
	{
		for (uint16_t i = 0; i < FrameCount16; ++i)
		{
			LHSurface* frame = FrameSurfaces[i];
			if (frame)
			{
				frame->~LHSurface();
				LHMem::Free(frame);
			}
		}
		LHMem::Free(FrameSurfaces);
		FrameSurfaces = NULL;
		FrameCount16 = 0;
	}
	if (FramePartOffsets)
	{
		::operator delete(FramePartOffsets);
		FramePartOffsets = NULL;
	}
	FrameBank = NULL;
	if (images)
	{
		if (imageType == LH_ANIMATE_IMAGE_TYPE_0x1)
		{
			IsMultiFrame = 1;
			FrameBank = (void*)((uint32_t*)images)[1];
			FrameCount16 = ((uint16_t*)images)[4];
			FrameSurfaces = (LHSurface**)LHMem::Alloc(4 * FrameCount16);
			for (uint16_t i = 0; i < FrameCount16; ++i)
			{
				void* mem = LHMem::Alloc(sizeof(LHSurface));
				FrameSurfaces[i] = mem ? new (mem) LHSurface((LHSprite*)FrameBank + i, SpriteFlags & 0x60) : NULL;
			}
		}
		else
		{
			IsMultiFrame = 0;
			void* bank = (void*)(*(uint32_t*)images + 76 * index);
			FrameBank = bank;
			FrameCount16 = ((uint32_t*)bank)[2];
			FramePartOffsets = (int*)LHMem::Alloc(8 * FrameCount16);
			FrameSurfaces = (LHSurface**)LHMem::Alloc(4 * FrameCount16);
			for (uint16_t i = 0; i < FrameCount16; ++i)
			{
				void* mem = LHMem::Alloc(sizeof(LHSurface));
				FrameSurfaces[i] =
					mem ? new (mem) LHSurface((LHSpriteFrame*)(*(uint32_t*)FrameBank + 16 * i), SpriteFlags & 0x60)
						: NULL;
			}
		}
		for (uint16_t j = 0; j < FrameCount16; ++j)
		{
			FrameSurfaces[j]->Initialise();
			if ((SpriteFlags & 0xE) == 0 && !SpriteColor16)
			{
				LHColor transparent;
				transparent.b = 0;
				transparent.g = 0;
				transparent.r = 0;
				FrameSurfaces[j]->SetTransparentColor(&transparent);
			}
		}
	}
	else
	{
		Animate(LH_ANIMATE_TYPE_0x0, 0, 0xFFFFFFFF);
	}
	if (field_10)
		SetWorkingArea(SingleSurface->Width, SingleSurface->Height);
	else
		SetWorkingArea(0, 0);
	if (!AnimType || CurrentFrame >= (unsigned int)FrameCount16)
		CurrentFrame = 0;
	LeaveCriticalSection(&g_screenCritSec);
}

void LHMouse::Animate(LH_ANIMATE_TYPE animType, uint16_t param, unsigned long frameCount)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	AnimParam = param;
	AnimType = animType;
	switch (animType)
	{
	case 0: {
		PostMessageA(g_lhScreen.MsWindowHandle, 0x8006, 0, 0);
		int savedMode = field_18;
		FrameCount = 0;
		CurrentFrame = 0;
		ImageMode = savedMode;
		if ((savedMode & ~7) != 0)
		{
			Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)512);
			LeaveCriticalSection(&g_screenCritSec);
		}
		else
		{
			EnterCriticalSection(&g_screenCritSec);
			if (DoubleBuffered)
			{
				EnterCriticalSection(&g_screenCritSec);
				if (!Locked)
				{
					CopyRegionFromScreen(&PrevSavedRegion, (LHCoord*)&PrevDrawRegion, 1);
					Locked = 1;
				}
				LeaveCriticalSection(&g_screenCritSec);
				DoubleBuffered = 0;
			}
			LeaveCriticalSection(&g_screenCritSec);
			PostMessageA(g_lhScreen.MsWindowHandle, 0x8007, 0, 0);
			LeaveCriticalSection(&g_screenCritSec);
		}
		break;
	}
	case 1:
	case 2:
		PostMessageA(g_lhScreen.MsWindowHandle, 0x8006, 0, 0);
		if (FrameBank)
			ImageMode = 64;
		AnimReverse = 0;
		FrameCount = FrameCount16 ? FrameCount16 : frameCount;
		CurrentFrame = 0;
		Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)256);
		LeaveCriticalSection(&g_screenCritSec);
		break;
	case 3:
		if (FrameBank)
			ImageMode = 64;
		AnimReverse = 0;
		CurrentFrame = 0;
		FrameCount = FrameCount16 ? FrameCount16 : frameCount;
		Draw((LH_SCREEN_BUFFER)1, (LH_MOUSE_EVENT_TYPE)256);
		PostMessageA(g_lhScreen.MsWindowHandle, 0x8005, 0, 0);
		LeaveCriticalSection(&g_screenCritSec);
		break;
	default:
		LeaveCriticalSection(&g_screenCritSec);
		break;
	}
}

int LHMouse::GetScreenUnderCursorNoSetup(LHSurface* surface, LHSurface* prevSurface)
{
	// TODO(nonmatching)
	EnterCriticalSection(&g_screenCritSec);
	int      result = surface->GetScreenSurface(&DrawRegion, (LHCoord*)&SavedRegion, (LH_SCREEN_BUFFER)ScreenBuffer);
	LHRegion clip;
	clip.start.x = PrevDrawRegion.start.x;
	clip.start.y = PrevDrawRegion.start.y;
	clip.end.x = PrevDrawRegion.end.x;
	clip.end.y = PrevDrawRegion.end.y;
	if (!result)
	{
		bool disjoint = false;
		if (clip.start.x < DrawRegion.start.x)
			clip.start.x = DrawRegion.start.x;
		else if (clip.start.x > DrawRegion.end.x)
			disjoint = true;
		if (!disjoint)
		{
			if (clip.start.y < DrawRegion.start.y)
				clip.start.y = DrawRegion.start.y;
			else if (clip.start.y > DrawRegion.end.y)
				disjoint = true;
		}
		if (!disjoint)
		{
			if (clip.end.x > DrawRegion.end.x)
				clip.end.x = DrawRegion.end.x;
			else if (clip.end.x < DrawRegion.start.x)
				disjoint = true;
		}
		if (!disjoint)
		{
			if (clip.end.y > DrawRegion.end.y)
				clip.end.y = DrawRegion.end.y;
			else if (clip.end.y < DrawRegion.start.y)
				disjoint = true;
		}
		if (!disjoint)
		{
			LHCoord  coord;
			LHRegion src;
			src.end.y = clip.end.y;
			src.end.x = clip.end.x;
			coord.x = clip.start.x + (SavedRegion.start.x - DrawRegion.start.x);
			src.start.x = clip.start.x;
			coord.y = SavedRegion.start.y + (clip.start.y - DrawRegion.start.y);
			src.start.y = clip.start.y;
			int dx = PrevSavedRegion.start.x - PrevDrawRegion.start.x;
			int dy = PrevSavedRegion.start.y - PrevDrawRegion.start.y;
			clip.start.x += dx;
			clip.start.y += dy;
			clip.end.x += dx;
			clip.end.y += dy;
			if (Locked)
			{
				result = 0;
			}
			else
			{
				LHSurface* save = SaveSurface[BufferToggle];
				result = surface->CopySurface(&clip, &coord, save->Surface, LH_COPY_DIRECTION_0x1,
				                              save->HasTransparentColor);
				if (result)
				{
					LeaveCriticalSection(&g_screenCritSec);
					return result;
				}
			}
			if (prevSurface)
			{
				coord.x = src.start.x + PrevSavedRegion.start.x - PrevDrawRegion.start.x;
				coord.y = PrevSavedRegion.start.y + src.start.y - PrevDrawRegion.start.y;
				int sdx = SavedRegion.start.x - DrawRegion.start.x;
				int sdy = SavedRegion.start.y - DrawRegion.start.y;
				src.start.x += sdx;
				src.start.y += sdy;
				src.end.x += sdx;
				src.end.y += sdy;
				result = SaveSurface[BufferToggle]->CopySurface(
					&src, &coord, prevSurface->Surface, LH_COPY_DIRECTION_0x1, prevSurface->HasTransparentColor);
			}
		}
	}
	LeaveCriticalSection(&g_screenCritSec);
	return result;
}
