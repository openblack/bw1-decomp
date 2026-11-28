#include <stddef.h> /* For NULL */

#include <Black/ColourConstants.h> /* For White */

#include "P5dll.h" /* For CP5DLL, P5_THUMB, P5_INDEX, P5_MIDDLE, P5_RING, P5_PINKY */
#include "P5Bend.h"

CP5DLL* pP5BendDevice;
int     nP5BendDeviceId;

int           nP5ClickEdge[P5BEND_FINGER_COUNT];
bool          bP5ClickLevel[P5BEND_FINGER_COUNT];
unsigned char nBendSensitivity[P5BEND_FINGER_COUNT] = {5, 5, 5, 5, 5};

int nP5ClickSensorLevel = 0;

void P5Bend_SetClickSensitivityLevel(unsigned char level)
{
	int sensitivity = 5;
	switch (level)
	{
	case P5BEND_CLICK_SENSOR_LOW:
		sensitivity = 15;
		break;
	case P5BEND_CLICK_SENSOR_MEDIUM:
		sensitivity = 10;
		break;
	case P5BEND_CLICK_SENSOR_HIGH:
		sensitivity = 5;
		break;
	}
	P5Bend_SetClickSensitivity(P5_THUMB, sensitivity);
	P5Bend_SetClickSensitivity(P5_INDEX, sensitivity);
	P5Bend_SetClickSensitivity(P5_MIDDLE, sensitivity);
	P5Bend_SetClickSensitivity(P5_RING, sensitivity);
	P5Bend_SetClickSensitivity(P5_PINKY, sensitivity);
}

void P5Bend_Init(CP5DLL* device, int id)
{
	pP5BendDevice = device;
	nP5BendDeviceId = id;
}

void P5Bend_SetClickSensorLevel(int level)
{
	nP5ClickSensorLevel = level;
	int sensitivity;
	switch (level)
	{
	case P5BEND_CLICK_SENSOR_LOW:
		sensitivity = 20;
		break;
	case P5BEND_CLICK_SENSOR_MEDIUM:
		sensitivity = 10;
		break;
	case P5BEND_CLICK_SENSOR_HIGH:
		sensitivity = 5;
		break;
	default:
		sensitivity = 5;
		break;
	}
	for (int finger = 0; finger < P5BEND_FINGER_COUNT; finger++)
	{
		P5Bend_SetClickSensitivity(finger, sensitivity);
	}
}

void P5Bend_SetClickSensitivity(int finger, unsigned char sensitivity)
{
	nBendSensitivity[finger] = sensitivity;
}

unsigned char nP5ClickBend[P5BEND_FINGER_COUNT];
int           nP5LastBend[P5BEND_FINGER_COUNT];

void P5Bend_Process()
{
	static bool32_t bFirstFrame = true;

	if (pP5BendDevice != NULL)
	{
		if (bFirstFrame == true)
		{
			for (int finger = 0; finger < P5BEND_FINGER_COUNT; finger++)
			{
				nP5LastBend[finger] = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger];
			}
			bFirstFrame = false;
		}
		else
		{
			for (int finger = 0; finger < P5BEND_FINGER_COUNT; finger++)
			{
				int bendChange = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger] - nP5LastBend[finger];
				nP5ClickEdge[finger] = 0;
				if (!bP5ClickLevel[finger])
				{
					if (bendChange > nBendSensitivity[finger] ||
					    pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger] > P5BEND_CLICK_BEND)
					{
						bP5ClickLevel[finger] = true;
						nP5ClickEdge[finger] = 1;
						nP5ClickBend[finger] = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger];
						nP5LastBend[finger] = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger];
					}
				}
				else if (pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger] < nP5ClickBend[finger] &&
				         (bendChange < -nBendSensitivity[finger] ||
				          pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger] < P5BEND_RELEASE_BEND))
				{
					bP5ClickLevel[finger] = false;
					nP5ClickEdge[finger] = -1;
					nP5LastBend[finger] = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger];
				}
				nP5LastBend[finger] = pP5BendDevice->m_P5Devices[0].m_byBendSensor_Data[finger];
			}
		}
	}
}
