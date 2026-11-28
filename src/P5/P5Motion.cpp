#include <math.h>   /* For fabs, floor */
#include <stddef.h> /* For NULL */

#include <Black/Camera.h>                   /* For GCamera::CalculatePitch */
#include <Black/FrontEnd.h>                 /* For FrontEnd::CursorOn */
#include <Black/Game.h>                     /* For GGame::g_game */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */
#include <Black/ColourConstants.h>          /* For White */
#include <Black/GameTimeConstants.h>        /* For SecondsPerYear */

#include "P5dll.h" /* For CP5DLL, P5_THUMB, P5_INDEX, P5_MIDDLE, P5_RING, P5_PINKY */
#include "P5Motion.h"

CP5DLL* pP5MotionDevice = NULL;
int     nP5MotionDeviceId;

int nP5MotionMode;
int nP5MotionAcceleration;
int nSavedCursorX, nSavedCursorY;

int   nXPos = 0, nYPos = 0, nZPos = 0;
float fXMickey = 0.0f, fYMickey = 0.0f, fZMickey = 0.0f;
float fAbsYawPos, fAbsPitchPos, fAbsRollPos;
float fRelYawPos, fRelPitchPos, fRelRollPos;

void P5Motion_Init(CP5DLL* device, int id)
{
	pP5MotionDevice = device;
	nP5MotionDeviceId = id;
}

void P5Motion_SetAcceleration(int level)
{
	nP5MotionAcceleration = level;
}

int nClipXStart = 0, nClipXEnd = 1024, nClipYStart = 0, nClipYEnd = 768, nClipZStart = 0, nClipZEnd = 1024;

void P5Motion_SetClipRegion(int xstart, int xend, int ystart, int yend, int zstart, int zend)
{
	nClipXStart = xstart;
	nClipXEnd = xend;
	nClipYStart = ystart;
	nClipYEnd = yend;
	nClipZStart = zstart;
	nClipZEnd = zend;
}

int nXAxisSign = 0, nYAxisSign = 0, nZAxisSign = 0;

void P5Motion_InvertMouse(int xaxis, int yaxis, int zaxis)
{
	nXAxisSign = xaxis;
	nYAxisSign = yaxis;
	nZAxisSign = zaxis;
}

float fXSamples[P5MOTION_XYZFILTERSIZE], fYSamples[P5MOTION_XYZFILTERSIZE], fZSamples[P5MOTION_XYZFILTERSIZE];
float fFilterX, fFilterY, fFilterZ;

void P5Motion_FilterPosition()
{
	static bool32_t bFirstFrame = true;

	if (pP5MotionDevice != NULL)
	{
		if (bFirstFrame == true)
		{
			for (int sample = 0; sample < P5MOTION_XYZFILTERSIZE; sample++)
			{
				fXSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fx - 55.0f;
				fYSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fy + 50.0f;
				fZSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fz;
			}
			bFirstFrame = false;
		}
		else
		{
			float xShift, yShift, zShift;
			int   sample, step;

			xShift =
				fabs(pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fx - fXSamples[P5MOTION_XYZFILTERSIZE - 1]) /
				2.0f;
			xShift *= P5MOTION_XYZFILTERSIZE / P5MOTION_FULL_SHIFT_DISTANCE;
			xShift = (floor(xShift + 1.0f));
			if (xShift > (P5MOTION_XYZFILTERSIZE - 1))
			{
				xShift = P5MOTION_XYZFILTERSIZE - 1;
			}

			yShift =
				fabs(pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fy - fYSamples[P5MOTION_XYZFILTERSIZE - 1]) /
				2.0f;
			yShift *= P5MOTION_XYZFILTERSIZE / P5MOTION_FULL_SHIFT_DISTANCE;
			yShift = floor(yShift + 1.0f);
			if (yShift > (P5MOTION_XYZFILTERSIZE - 1))
			{
				yShift = P5MOTION_XYZFILTERSIZE - 1;
			}

			zShift =
				fabs(pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fz - fZSamples[P5MOTION_XYZFILTERSIZE - 1]) /
				2.0f;
			zShift *= P5MOTION_XYZFILTERSIZE / P5MOTION_FULL_SHIFT_DISTANCE;
			zShift = floor(zShift + 1.0f);
			if (zShift > (P5MOTION_XYZFILTERSIZE - 1))
			{
				zShift = P5MOTION_XYZFILTERSIZE - 1;
			}

			for (step = 0; step < (int)xShift; step++)
			{
				for (sample = 0; sample < P5MOTION_XYZFILTERSIZE - 1; sample++)
				{
					fXSamples[sample] = fXSamples[sample + 1];
				}
				fXSamples[P5MOTION_XYZFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fx;
			}
			for (step = 0; step < (int)yShift; step++)
			{
				for (sample = 0; sample < P5MOTION_XYZFILTERSIZE - 1; sample++)
				{
					fYSamples[sample] = fYSamples[sample + 1];
				}
				fYSamples[P5MOTION_XYZFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fy;
			}
			for (step = 0; step < (int)zShift; step++)
			{
				for (sample = 0; sample < P5MOTION_XYZFILTERSIZE - 1; sample++)
				{
					fZSamples[sample] = fZSamples[sample + 1];
				}
				fZSamples[P5MOTION_XYZFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fz;
			}
		}

		fFilterX = 0.0f;
		fFilterY = 0.0f;
		fFilterZ = 0.0f;
		for (int sample = 0; sample < P5MOTION_XYZFILTERSIZE; sample++)
		{
			fFilterX += fXSamples[sample] / 2.0f;
			fFilterY += fYSamples[sample] / 2.0f;
			fFilterZ += fZSamples[sample] / 2.0f;
		}
		fFilterX /= P5MOTION_XYZFILTERSIZE;
		fFilterY /= P5MOTION_XYZFILTERSIZE;
		fFilterZ /= P5MOTION_XYZFILTERSIZE;
	}
}

float fYawSamples[P5MOTION_YPRFILTERSIZE], fPitchSamples[P5MOTION_YPRFILTERSIZE], fRollSamples[P5MOTION_YPRFILTERSIZE];
float fFilteredYaw, fFilteredPitch, fFilteredRoll;

void P5Motion_FilterOrientation()
{
	static bool32_t bFirstFrame = true;

	if (pP5MotionDevice != NULL)
	{
		if (bFirstFrame == true)
		{
			for (int sample = 0; sample < P5MOTION_YPRFILTERSIZE; sample++)
			{
				fYawSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fyaw;
				fPitchSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fpitch;
				fRollSamples[sample] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_froll;
			}
			bFirstFrame = false;
		}
		else
		{
			for (int sample = 0; sample < P5MOTION_YPRFILTERSIZE - 1; sample++)
			{
				fYawSamples[sample] = fYawSamples[sample + 1];
				fPitchSamples[sample] = fPitchSamples[sample + 1];
				fRollSamples[sample] = fRollSamples[sample + 1];
			}
			fYawSamples[P5MOTION_YPRFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fyaw;
			fPitchSamples[P5MOTION_YPRFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_fpitch;
			fRollSamples[P5MOTION_YPRFILTERSIZE - 1] = pP5MotionDevice->m_P5Devices[nP5MotionDeviceId].m_froll;
		}

		fFilteredYaw = 0.0f;
		fFilteredPitch = 0.0f;
		fFilteredRoll = 0.0f;
		for (int sample = 0; sample < P5MOTION_YPRFILTERSIZE; sample++)
		{
			fFilteredYaw += fYawSamples[sample];
			fFilteredPitch += fPitchSamples[sample];
			fFilteredRoll += fRollSamples[sample];
		}
		fFilteredYaw /= P5MOTION_YPRFILTERSIZE;
		fFilteredPitch /= P5MOTION_YPRFILTERSIZE;
		fFilteredRoll /= P5MOTION_YPRFILTERSIZE;
	}
}

void P5Motion_Process()
{
	static float fLastFilterX = 0.0f, fLastFilterY = 0.0f, fLastFilterZ = 0.0f;

	if (nP5MotionMode != 0 && nP5MotionMode != 2)
	{
		return;
	}

	P5Motion_FilterPosition();

	if (!(pP5MotionDevice->m_P5Devices[0].m_byBendSensor_Data[P5_RING] > P5MOTION_HOLD_BENT &&
	      pP5MotionDevice->m_P5Devices[0].m_byBendSensor_Data[P5_PINKY] > P5MOTION_HOLD_BENT &&
	      pP5MotionDevice->m_P5Devices[0].m_byBendSensor_Data[P5_MIDDLE] < P5MOTION_HOLD_STRAIGHT &&
	      pP5MotionDevice->m_P5Devices[0].m_byBendSensor_Data[P5_INDEX] < P5MOTION_HOLD_STRAIGHT &&
	      pP5MotionDevice->m_P5Devices[0].m_byBendSensor_Data[P5_THUMB] < P5MOTION_HOLD_STRAIGHT))
	{
		fXMickey = (fLastFilterX - fFilterX) * nXAxisSign;
		fYMickey = (fLastFilterY - fFilterY) * nYAxisSign;
		fZMickey = (fLastFilterZ - fFilterZ) * nZAxisSign;

		fXMickey = (fXMickey * fXMickey * P5MOTION_CUBIC_GAIN + P5MOTION_LINEAR_GAIN) * fXMickey;
		fYMickey = (fYMickey * fYMickey * P5MOTION_CUBIC_GAIN + P5MOTION_LINEAR_GAIN) * fYMickey;
		fZMickey = (fZMickey * fZMickey * P5MOTION_CUBIC_GAIN + P5MOTION_LINEAR_GAIN) * fZMickey;

		if (fabs(fXMickey) > 3.0f)
		{
			fXMickey *= 4.0f;
		}
		else
		{
			fXMickey *= 2.0f;
		}
		if (fabs(fYMickey) > 3.0f)
		{
			fYMickey *= 4.0f;
		}
		else
		{
			fYMickey *= 2.0f;
		}
		if (fabs(fZMickey) > 3.0f)
		{
			fZMickey *= 4.0f;
		}
		else
		{
			fZMickey *= 2.0f;
		}

		float speed = GGame::g_game->GetCamera()->CalculatePitch();
		if (speed < 0.1f)
		{
			speed = 0.1f;
		}
		if (FrontEnd::CursorOn)
		{
			speed = 1.0f;
		}

		if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			if (nP5MotionAcceleration == P5MOTION_ACCELERATION_HIGH)
			{
				fXMickey = fXMickey * speed * 1.5f;
				fYMickey = fYMickey * speed * 1.5f;
				fZMickey = fZMickey * speed * 1.5f;
			}
			else if (nP5MotionAcceleration == P5MOTION_ACCELERATION_MEDIUM)
			{
				fXMickey = fXMickey * speed * 0.8f;
				fYMickey = fYMickey * speed * 0.8f;
				fZMickey = fZMickey * speed * 0.8f;
			}
			else
			{
				fXMickey = fXMickey * speed * 0.5f;
				fYMickey = fYMickey * speed * 0.5f;
				fZMickey = fZMickey * speed * 0.5f;
			}
		}

		nXPos += (int)fXMickey;
		nYPos += (int)fYMickey;
		nZPos += (int)fZMickey;

		if (FrontEnd::CursorOn || GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			int x = LHSys::TheSystem.mouse.DeltaPos().x;
			int y = LHSys::TheSystem.mouse.DeltaPos().y;
			if (x < -LHSys::TheSystem.screen.width || x > LHSys::TheSystem.screen.width)
			{
				x = 0;
				y = 0;
			}
			nXPos += x;
			nYPos += y;
			LHSys::TheSystem.mouse.ClearDeltaPos();
		}

		if (nXPos > nClipXEnd)
		{
			nXPos = nClipXEnd;
		}
		else if (nXPos < nClipXStart)
		{
			nXPos = nClipXStart;
		}
		if (nYPos > nClipYEnd)
		{
			nYPos = nClipYEnd;
		}
		else if (nYPos < nClipYStart)
		{
			nYPos = nClipYStart;
		}
		if (nZPos > nClipZEnd)
		{
			nZPos = nClipZEnd;
		}
		else if (nZPos < nClipZStart)
		{
			nZPos = nClipZStart;
		}
	}

	if (LHSys::TheSystem.TurnOffMouseMove)
	{
		nXPos = nSavedCursorX;
		nYPos = nSavedCursorY;
	}
	else
	{
		nSavedCursorX = nXPos;
		nSavedCursorY = nYPos;
	}

	fLastFilterX = fFilterX;
	fLastFilterY = fFilterY;
	fLastFilterZ = fFilterZ;
}

void P5Motion_SetMode(int mode)
{
	nP5MotionMode = mode;
}
