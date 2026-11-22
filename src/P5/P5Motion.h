#ifndef _P5MOTION_HPP_
#define _P5MOTION_HPP_

#define P5MOTION_XYZFILTERSIZE	5
#define P5MOTION_YPRFILTERSIZE	7

#define P5MOTION_YPRABSOLUTE	0
#define P5MOTION_YPRRELATIVE	1

#define	P5MOTION_NORMALAXIS		1
#define	P5MOTION_INVERTAXIS		-1

extern int nXPos, nYPos, nZPos;
extern float fXMickey, fYMickey, fZMickey;
extern float fAbsYawPos, fAbsPitchPos, fAbsRollPos;
extern float fRelYawPos, fRelPitchPos, fRelRollPos;
extern float fFilterX, fFilterY, fFilterZ;

void P5Motion_Init (CP5DLL *device, int id);
void P5Motion_SetClipRegion(int xstart, int xend, int ystart, int yend, int zstart, int zend);
void P5Motion_InvertMouse (int xaxis, int yaxis, int zaxis);

void P5Motion_Process();


#endif