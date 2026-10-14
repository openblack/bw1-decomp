#include <Lionhead/LHLib/ver5.0/LHMouse.h>

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
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSurface.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#define FILEPATH "C:\\Dev\\Libs\\lionhead\\lhlib\\VER5.0\\LHMouse.cpp"

CRITICAL_SECTION            LHScreen::CriticalSection;
static IDirectInputA*       gDirectInput;
static IDirectInputDeviceA* gMouseDevice;

inline void LHCoord::AddMSWindowOffset()
{
	LHCoord offset;
	offset.x = LHSys::GetScreen().MsClientOffsetX;
	offset.y = LHSys::GetScreen().MsClientOffsetY;
	x += offset.x;
	y += offset.y;
}

inline int LHSurface::Blit(LHRegion* region, LHCoord* pos, LH_SCREEN_BUFFER screen_buffer)
{
	LHCoord coord;
	coord.x = pos->x;
	coord.y = pos->y;
	IDirectDrawSurface7* surface;
	if (screen_buffer == LH_SCREEN_BUFFER_PRIMARY)
	{
		coord.AddMSWindowOffset();
		surface = LHSys::GetScreen().PPrimarySurface;
	}
	else
	{
		surface = LHSys::GetScreen().PBackSurface;
	}
	return CopySurface(region, &coord, surface, LH_COPY_DIRECTION_0x0, 0);
}

inline void LHMouse::UnDraw()
{
	Lock();
	if (!Locked)
	{
		SaveSurface[BufferToggle]->Blit(&PrevSavedRegion, &PrevDrawRegion.start, LH_SCREEN_BUFFER_PRIMARY);
		Locked = true;
	}
	Unlock();
}

inline void LHMouse::StopDoubleBuffering()
{
	Lock();
	if (DoubleBuffered)
	{
		UnDraw();
		DoubleBuffered = false;
	}
	Unlock();
}

LHMouse::LHMouse()
{
	InitializeCriticalSection(&LHScreen::CriticalSection);
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

void LHMouse::UpdateDeltaPos()
{
	DIMOUSESTATE state;
	HRESULT      result;
	if (gMouseDevice)
	{
		do
		{
			result = gMouseDevice->GetDeviceState(sizeof(DIMOUSESTATE), &state);
			if (result == DIERR_INPUTLOST || result == DIERR_NOTACQUIRED)
			{
				result = gMouseDevice->Acquire();
				if (FAILED(result))
					return;
			}
		} while (result == DIERR_NOTACQUIRED);
		if (SUCCEEDED(result))
		{
			if (MouseWheelSkip)
			{
				MouseWheelSkip = false;
			}
			else
			{
				if ((int16_t)state.lZ < 2000)
					LHSys::GetMouse().MouseWheelAccum += (int16_t)state.lZ;
				if (state.lZ)
					IsWheelPresent = true;
			}
			AccumDelta.x += state.lX;
			AccumDelta.y += state.lY;
		}
	}
}

int LHMouse::InitDirectInput()
{
	if (DirectInputCreateA(LHSys::GetInstance(), DIRECTINPUT_VERSION, &gDirectInput, NULL) < 0)
		return LH_FAIL;
	if (gDirectInput->CreateDevice(GUID_SysMouse, (LPDIRECTINPUTDEVICEA*)&gMouseDevice, NULL) < 0)
		return LH_FAIL;
	if (gMouseDevice->SetDataFormat(&c_dfDIMouse) < 0)
		return LH_FAIL;
	if (gMouseDevice->SetCooperativeLevel(LHSys::GetScreen().MsWindowHandle, DISCL_NONEXCLUSIVE | DISCL_FOREGROUND) < 0)
		return LH_FAIL;
	if (gMouseDevice->Acquire() < 0)
		return LH_FAIL;
	return LH_OK;
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

static inline long ScalePos(float pos, float size, long margin)
{
	return (long)(pos * size / (size - 2 * margin) - margin);
}

void LHMouse::UpdateCurrentPos(LHCoord coord)
{
	EffectivePos.x = ScalePos(coord.x, LHSys::GetScreen().width, Margin.x);
	float y = coord.y;
	EffectivePos.y = ScalePos(y, LHSys::GetScreen().height, Margin.y);
	if (UsePadding)
	{
		if (coord.x < Margin.x)
			DefaultPos.x = 0;
		else if (coord.x > LHSys::GetScreen().width - Margin.x)
			DefaultPos.x = LHSys::GetScreen().width;
		else
			DefaultPos.x = ScalePos(coord.x, LHSys::GetScreen().width, Margin.x);
		if (coord.y < Margin.y)
			DefaultPos.y = 0;
		else if (coord.y > LHSys::GetScreen().height - Margin.y)
			DefaultPos.y = LHSys::GetScreen().height;
		else
			DefaultPos.y = ScalePos(y, LHSys::GetScreen().height, Margin.y);
	}
	else
	{
		DefaultPos = coord;
	}
	CurrentPos = DefaultPos;
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
	Lock();
	ButtonPressed |= button;
	Buttons |= button;
	switch (button)
	{
	case LH_MOUSE_BUTTON_RIGHT_DOWN:
		ButtonPos[LH_MOUSE_BUTTON_POS_RIGHT_DOWN] = DefaultPos;
		ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
		Buttons &= ~LH_MOUSE_BUTTON_RIGHT_UP;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_RIGHT_UP:
		ButtonPos[LH_MOUSE_BUTTON_POS_RIGHT_UP] = DefaultPos;
		Buttons &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_MIDDLE_DOWN:
		ButtonPos[LH_MOUSE_BUTTON_POS_MIDDLE_DOWN] = DefaultPos;
		ButtonPressed &= ~LH_MOUSE_BUTTON_MIDDLE_UP;
		Buttons &= ~LH_MOUSE_BUTTON_MIDDLE_UP;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_MIDDLE_UP:
		ButtonPos[LH_MOUSE_BUTTON_POS_MIDDLE_UP] = DefaultPos;
		Buttons &= ~LH_MOUSE_BUTTON_MIDDLE_DOWN;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_LEFT_DOWN:
		ButtonPos[LH_MOUSE_BUTTON_POS_LEFT_DOWN] = DefaultPos;
		ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
		Buttons &= ~LH_MOUSE_BUTTON_LEFT_UP;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_LEFT_UP:
		ButtonPos[LH_MOUSE_BUTTON_POS_LEFT_UP] = DefaultPos;
		Buttons &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_LEFT_DOUBLE_CLICK:
		ButtonPos[LH_MOUSE_BUTTON_POS_LEFT_DOUBLE_CLICK] = DefaultPos;
		Unlock();
		break;
	case LH_MOUSE_BUTTON_RIGHT_DOUBLE_CLICK:
		ButtonPos[LH_MOUSE_BUTTON_POS_RIGHT_DOUBLE_CLICK] = DefaultPos;
		Unlock();
		break;
	case 0:
		ButtonPos[LH_MOUSE_BUTTON_POS_NONE] = DefaultPos;
	default:
		Unlock();
		break;
	}
}

int LHMouse::SetPosition(LHCoord* position)
{
	if (LHSys::TheSystem.WindowedMode)
	{
		ImageMode = LH_MOUSE_IMAGE_TYPE_0x01;
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 7, 0, 0);
		LHSys::GetMouse().UpdateCurrentPos(*position);
		LHSys::GetMouse().Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x4);
	}
	else
	{
		POINT point;
		point.x = position->x;
		point.y = position->y;
		ClientToScreen(LHSys::GetScreen().MsWindowHandle, &point);
		SetCursorPos(point.x, point.y);
	}
	return 0;
}

int LHMouse::SetPositionRel(LHCoord* delta)
{
	POINT point;
	point.x = delta->x + DefaultPos.x;
	point.y = delta->y + DefaultPos.y;
	ClientToScreen(LHSys::GetScreen().MsWindowHandle, &point);
	SetCursorPos(point.x, point.y);
	return 0;
}

int LHMouse::SetWorkingArea(uint16_t width, uint16_t height)
{
	Lock();
	UnDraw();
	if (width && height)
		field_10 = true;
	else
		field_10 = false;
	if (SingleSurface)
	{
		delete SingleSurface;
		SingleSurface = NULL;
	}
	if (field_10)
		SingleSurface = new (FILEPATH, 328) LHSurface(width, height);
	else if (ImageMode == 32)
		SingleSurface = new (FILEPATH, 330) LHSurface(SingleSprite, 0);

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
		delete SaveSurface[0];
		SaveSurface[0] = NULL;
		delete SaveSurface[1];
		SaveSurface[1] = NULL;
	}
	if (CurrentSurface)
	{
		delete CurrentSurface;
		CurrentSurface = NULL;
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
				width = max(width, (*frames)->Width);
				height = max(height, (*frames)->Height);
				++frames;
			}
		}
		if (SingleSurface)
		{
			width = max(width, SingleSurface->Width);
			height = max(height, SingleSurface->Height);
		}
		if (Mode8Surface)
		{
			width = max(width, Mode8Surface->Width);
			height = max(height, Mode8Surface->Height);
		}
	}

	if (width && height)
	{
		SaveSurface[0] = new (FILEPATH, 380) LHSurface(width, height);
		SaveSurface[1] = new (FILEPATH, 381) LHSurface(width, height);
		SaveSurface[0]->Initialise();
		SaveSurface[1]->Initialise();
		CurrentSurface = new (FILEPATH, 384) LHSurface(width, height);
		CurrentSurface->Initialise();
	}

	BufferToggle = 0;
	Unlock();
	return 0;
}

int LHMouse::SetSpriteFlags(unsigned long flags)
{
	Lock();
	SpriteFlags = flags;
	int result;
	if (SingleSurface)
		result = SingleSurface->SetSpriteFlags(flags & 0x60);
	else
		result = flags;
	if (FrameSurfaces)
	{
		for (uint16_t i = 0; i < FrameCount16; i++)
			FrameSurfaces[i]->SetSpriteFlags(SpriteFlags & 0x60);
	}
	Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x80);
	Unlock();
	return result;
}

int LHMouse::SetCursor(void* image, LH_MOUSE_IMAGE_TYPE imageType, int reallocSurface)
{
	Lock();
	field_18 = imageType;
	if (ImageMode != LH_MOUSE_IMAGE_TYPE_ANIMATED)
		ImageMode = imageType;
	SingleSprite = NULL;
	Mode8Surface = NULL;
	if (ImageMode == LH_MOUSE_IMAGE_TYPE_SPRITE)
		SingleSprite = (LHSprite*)image;
	if (ImageMode == LH_MOUSE_IMAGE_TYPE_SURFACE)
		Mode8Surface = (LHSurface*)image;
	if (reallocSurface)
		SetWorkingArea(0, 0);
	if (ImageMode == LH_MOUSE_IMAGE_TYPE_SPRITE)
	{
		if (SingleSurface->Image != SingleSprite || SingleSurface->ImageType != LH_SURFACE_IMAGE_TYPE_SPRITE)
			SingleSurface->SetImage(SingleSprite, LH_SURFACE_IMAGE_TYPE_SPRITE);
	}
	if (ImageMode != LH_MOUSE_IMAGE_TYPE_ANIMATED)
	{
		if ((ImageMode & ~7) == 0)
		{
			Lock();
			if (DoubleBuffered)
			{
				Lock();
				if (!Locked)
				{
					SaveSurface[BufferToggle]->CopyRegionFromScreen(&PrevSavedRegion, &PrevDrawRegion.start, 1);
					Locked = true;
				}
				Unlock();
				DoubleBuffered = false;
			}
			Unlock();
			PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 7, 0, 0);
		}
		if ((ImageMode & ~7) != 0)
		{
			Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x8);
			Unlock();
			return 0;
		}
		StopDoubleBuffering();
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 7, 0, 0);
	}
	Unlock();
	return 0;
}

void LHMouse::PinImage(int16_t x, int16_t y)
{
	Lock();
	Pinned = true;
	if (x == (int16_t)0x8000)
	{
		PinPos = DefaultPos;
		Unlock();
		return;
	}
	PinPos.x = x;
	PinPos.y = y;
	Unlock();
}

void LHMouse::UpdateDrawRegions(LHSurface* surface)
{
	if ((ImageMode & ~7) == 0)
		return;
	if (!Pinned)
		PinPos = DefaultPos;
	long x;
	long y;
	if (ImageMode == LH_MOUSE_IMAGE_TYPE_ANIMATED && !IsMultiFrame)
	{
		LHCoord* offset = &FramePartOffsets[CurrentFrame];
		x = PinPos.x - Hotspot.x - offset->x;
		y = PinPos.y - offset->y;
	}
	else
	{
		x = PinPos.x - Hotspot.x;
		y = PinPos.y;
	}
	y -= Hotspot.y;

	if (!surface)
	{
		switch (ImageMode)
		{
		case LH_MOUSE_IMAGE_TYPE_SURFACE:
			surface = Mode8Surface;
			break;
		case LH_MOUSE_IMAGE_TYPE_SPRITE:
			surface = SingleSurface;
			break;
		case LH_MOUSE_IMAGE_TYPE_ANIMATED:
			surface = FrameSurfaces[CurrentFrame];
			break;
		}
	}
	DrawRegion.start.x = x;
	DrawRegion.start.y = y;
	DrawRegion.end.x = x + surface->Width - 1;
	DrawRegion.end.y = y + surface->Height - 1;

	bool onScreen = true;
	if (DrawRegion.start.x < 0)
		DrawRegion.start.x = 0;
	else if (DrawRegion.start.x >= LHSys::GetScreen().width)
		onScreen = false;
	if (onScreen)
	{
		if (DrawRegion.start.y < 0)
			DrawRegion.start.y = 0;
		else if (DrawRegion.start.y >= LHSys::GetScreen().height)
			onScreen = false;
	}
	if (onScreen)
	{
		if (DrawRegion.end.x < 0)
			onScreen = false;
		else if (DrawRegion.end.x >= LHSys::GetScreen().width)
			DrawRegion.end.x = LHSys::GetScreen().width - 1;
	}
	if (onScreen)
	{
		if (DrawRegion.end.y < 0)
			onScreen = false;
		else if (DrawRegion.end.y >= LHSys::GetScreen().height)
			DrawRegion.end.y = LHSys::GetScreen().height - 1;
	}
	if (onScreen)
	{
		SavedRegion = DrawRegion;
		SavedRegion.start.x -= x;
		SavedRegion.start.y -= y;
		SavedRegion.end.x -= x;
		SavedRegion.end.y -= y;
		return;
	}

	StopDoubleBuffering();
}

void LHMouse::Draw(LH_SCREEN_BUFFER buffer, LH_MOUSE_EVENT_TYPE eventType)
{
	if ((ImageMode & ~7) == 0)
	{
		if (DrawCallback)
		{
			Lock();
			DrawCallback(CallbackArg1, eventType, CurrentFrame, CallbackArg2);
			Unlock();
		}
		return;
	}
	if ((EventMask & eventType) == 0)
		return;

	Lock();
	LHSprite* sprite = NULL;
	if (eventType == LH_MOUSE_EVENT_TYPE_0x2 && !AnimType)
	{
		Unlock();
		return;
	}
	int suppress;
	ScreenBuffer = buffer;
	if (DrawCallback && (eventType & 0x47) != 0)
		suppress = DrawCallback(CallbackArg1, eventType, CurrentFrame, CallbackArg2);
	else
		suppress = (eventType & 0x3BD) == 0 && ((eventType & LH_MOUSE_EVENT_TYPE_0x2) == 0 || !AnimType);

	LHSurface* image;
	switch (ImageMode)
	{
	case LH_MOUSE_IMAGE_TYPE_SURFACE:
		image = Mode8Surface;
		break;
	case LH_MOUSE_IMAGE_TYPE_SPRITE:
		image = SingleSurface;
		sprite = SingleSprite;
		break;
	case LH_MOUSE_IMAGE_TYPE_ANIMATED:
		image = FrameSurfaces[CurrentFrame];
		if (IsMultiFrame == 1)
			sprite = (LHSprite*)FrameBank + CurrentFrame;
		break;
	}
	UpdateDrawRegions(image);
	if (DoubleBuffered && LHSys::GetScreen().opened && (ImageMode & ~7) != 0 && !suppress)
	{
		if ((ImageMode == LH_MOUSE_IMAGE_TYPE_SPRITE || ImageMode == LH_MOUSE_IMAGE_TYPE_ANIMATED) &&
		    ((SpriteFlags & 0xE) != 0 || SpriteColor16))
		{
			GetScreenUnderCursorNoSetup(CurrentSurface, NULL);
			LHSurface* surface = CurrentSurface;
			surface->Lock();
			surface->Unlock();
			int           pitch = CurrentSurface->BitDepth;
			void*         address = CurrentSurface->LockedAddress;
			unsigned long flags = SpriteFlags;
			if (LHSys::GetScreen().depth == 16)
				LHSys::GetDraw().Sprite16(0, 0, sprite, flags, SpriteColor16, (LHPixel16*)address, pitch);
			else
				LHSys::GetDraw().Sprite24(0, 0, sprite, flags, (LHColor*)address, pitch);
			image = CurrentSurface;
		}
		GetScreenUnderCursorNoSetup(SaveSurface[BufferToggle == 0], image);
		UnDraw();
		image->Blit(&SavedRegion, &DrawRegion.start, buffer);
		Locked = false;
		PrevSavedRegion = SavedRegion;
		PrevDrawRegion = DrawRegion;
		BufferToggle = BufferToggle == 0;
		if (eventType == LH_MOUSE_EVENT_TYPE_0x2)
			SetAnimFrame();
	}
	Unlock();
}

void LHMouse::SetCurrentCursorAnimFrame(unsigned long frame)
{
	CurrentFrame = frame;
}

void LHMouse::SetAnimFrame()
{
	switch (AnimType)
	{
	case LH_ANIMATE_TYPE_LOOP:
		if (CurrentFrame < (uint16_t)(FrameCount - 1))
		{
			CurrentFrame++;
		}
		else
		{
			CurrentFrame = 0;
			PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 6, 0, 0);
		}
		break;
	case LH_ANIMATE_TYPE_PING_PONG:
		if (!AnimReverse)
		{
			if (CurrentFrame < (uint16_t)(FrameCount - 1))
			{
				CurrentFrame++;
			}
			else if (!(Buttons & LH_MOUSE_BUTTON_LEFT_DOWN))
			{
				if (CurrentFrame)
					CurrentFrame--;
				AnimReverse = true;
			}
		}
		else if (CurrentFrame)
		{
			CurrentFrame--;
		}
		else
		{
			PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 6, 0, 0);
		}
		break;
	case LH_ANIMATE_TYPE_ONE_SHOT:
		if (FrameCount16)
			CurrentFrame = (CurrentFrame + 1) % FrameCount16;
		else
			CurrentFrame = (CurrentFrame + 1) % FrameCount;
		break;
	}
}

void LHMouse::SetAnimateImages(LH_ANIMATE_IMAGE_TYPE imageType, void* images, unsigned long index)
{
	Lock();
	if (FrameSurfaces)
	{
		for (uint16_t i = 0; i < FrameCount16; ++i)
			delete FrameSurfaces[i];
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
		switch (imageType)
		{
		case LH_ANIMATE_IMAGE_TYPE_0x1: {
			IsMultiFrame = true;
			FrameBank = (void*)((uint32_t*)images)[1];
			FrameCount16 = ((uint16_t*)images)[4];
			FrameSurfaces = (LHSurface**)LHMem::Alloc(sizeof(LHSurface*) * FrameCount16);
			for (uint16_t i = 0; i < FrameCount16; ++i)
				FrameSurfaces[i] = new (FILEPATH, 673) LHSurface((LHSprite*)FrameBank + i, SpriteFlags & 0x60);
			break;
		}
		case LH_ANIMATE_IMAGE_TYPE_0x0: {
			IsMultiFrame = false;
			FrameBank = (void*)(*(uint32_t*)images + 76 * index);
			FrameCount16 = ((uint32_t*)FrameBank)[2];
			FramePartOffsets = (LHCoord*)LHMem::Alloc(sizeof(LHCoord) * FrameCount16);
			FrameSurfaces = (LHSurface**)LHMem::Alloc(sizeof(LHSurface*) * FrameCount16);
			for (uint16_t i = 0; i < FrameCount16; ++i)
				FrameSurfaces[i] =
					new (FILEPATH, 685) LHSurface((LHSpriteFrame*)(*(uint32_t*)FrameBank + 16 * i), SpriteFlags & 0x60);
			break;
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
		Animate(LH_ANIMATE_TYPE_STOP, 0, 0xFFFFFFFF);
	}
	if (field_10)
		SetWorkingArea(SingleSurface->Width, SingleSurface->Height);
	else
		SetWorkingArea(0, 0);
	if (!AnimType || CurrentFrame >= (unsigned int)FrameCount16)
		CurrentFrame = 0;
	Unlock();
}

void LHMouse::Animate(LH_ANIMATE_TYPE animType, uint16_t param, unsigned long frameCount)
{
	Lock();
	AnimParam = param;
	AnimType = animType;
	switch (animType)
	{
	case LH_ANIMATE_TYPE_STOP:
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 6, 0, 0);
		FrameCount = 0;
		CurrentFrame = 0;
		ImageMode = field_18;
		if ((ImageMode & ~7) != 0)
		{
			Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x200);
			Unlock();
			return;
		}
		StopDoubleBuffering();
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 7, 0, 0);
		Unlock();
		return;
	case LH_ANIMATE_TYPE_LOOP:
	case LH_ANIMATE_TYPE_PING_PONG:
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 6, 0, 0);
		if (FrameBank)
			ImageMode = LH_MOUSE_IMAGE_TYPE_ANIMATED;
		AnimReverse = false;
		FrameCount = FrameCount16 ? FrameCount16 : frameCount;
		CurrentFrame = 0;
		Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x100);
		Unlock();
		return;
	case LH_ANIMATE_TYPE_ONE_SHOT:
		if (FrameBank)
			ImageMode = LH_MOUSE_IMAGE_TYPE_ANIMATED;
		AnimReverse = false;
		CurrentFrame = 0;
		FrameCount = FrameCount16 ? FrameCount16 : frameCount;
		Draw(LH_SCREEN_BUFFER_PRIMARY, LH_MOUSE_EVENT_TYPE_0x100);
		PostMessageA(LHSys::GetScreen().MsWindowHandle, WM_APP + 5, 0, 0);
		break;
	}
	Unlock();
}

int LHMouse::GetScreenUnderCursorNoSetup(LHSurface* surface, LHSurface* prevSurface)
{
	Lock();
	int      result = surface->GetScreenSurface(&DrawRegion, &SavedRegion.start, (LH_SCREEN_BUFFER)ScreenBuffer);
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
					Unlock();
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
	Unlock();
	return result;
}
