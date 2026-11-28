#ifndef _P5BEND_HPP_
#define _P5BEND_HPP_

#define P5BEND_FINGER_COUNT  (P5_PINKY + 1)
#define P5BEND_CLICK_BEND    50
#define P5BEND_RELEASE_BEND  25

enum P5BEND_CLICK_SENSOR
{
	P5BEND_CLICK_SENSOR_LOW,
	P5BEND_CLICK_SENSOR_MEDIUM,
	P5BEND_CLICK_SENSOR_HIGH,
};

extern int nP5ClickEdge[5];
extern bool bP5ClickLevel[5];
extern unsigned char nBendSensitivity[5];

void P5Bend_Init(CP5DLL *device, int id);
void P5Bend_SetClickSensitivity(int finger, unsigned char value);
void P5Bend_Process();


#endif