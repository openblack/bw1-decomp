#ifndef _P5BEND_HPP_
#define _P5BEND_HPP_

extern int nP5ClickEdge[5];
extern bool bP5ClickLevel[5];
extern unsigned char nBendSensitivity[5];

void P5Bend_Init(CP5DLL *device, int id);
void P5Bend_SetClickSensitivity(int finger, unsigned char value);
void P5Bend_Process();


#endif