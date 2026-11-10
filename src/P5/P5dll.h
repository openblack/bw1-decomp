/******************************************************************************
//	File:	p5dll.hpp
//	Use:	wrapper that is exposed to the world.
//	
//	Authors:	Av Utukuri, Igor Borysov
//	
//
//
//	Copyright (c) 2001 Essential Reality LLC
//
//
//	Updates
//
//	Aug 24\01 - Av Utukuri - Finished V1.0, made all variables follow hungarian notation, cleaned up dead code
******************************************************************************/

#ifndef _P5DLL_H_
#define _P5DLL_H_

#ifdef P5DLL_EXPORTS
#define P5DLL_API __declspec(dllexport)
#else
#define P5DLL_API __declspec(dllimport)
#endif

// This class is exported from the P5DLL.dll
#define P5HEAD_SEPARATION	51.2f
#define P5BOOL	unsigned int

//fingers definitions
#define P5_THUMB   0x0
#define P5_INDEX   0x1
#define P5_MIDDLE  0x2
#define P5_RING    0x3
#define P5_PINKY   0x4

//filter modes definitions
#define P5_FILTER_NONE			0x0
#define P5_FILTER_DEADBEND		0x1
#define P5_FILTER_AVERAGE		0x2

//Error Codes
#define P5ERROR_NONE					0x00
#define P5ERROR_NOP5DETECTED			0x01
#define P5ERROR_P5DISCONNECTED			0x02
#define P5ERROR_P5CONNECTED				0x03
#define P5ERROR_INVALID_P5ID			0x04
#define P5ERROR_INVALID_P5GLOVETYPE		0x05
#define P5ERROR_WRONGFIRMWAREVER		0x06

//Glove types
#define P5GLOVETYPE_RIGHTHAND			0x00
#define P5GLOVETYPE_LEFTHAND			0x01

typedef struct
{
	//Actual P5 variables
	char VendorID[50], ProductID[50], Version[50];
	char ProductString[255], ManufacturerString[255], SerialNumString[255];

	int m_nDeviceID;
	int m_nMajorRevisionNumber, m_nMinorRevisionNumber;

	int m_nGloveType;

	float m_fx, m_fy, m_fz;					//x,y,z of the hand
	float m_fyaw, m_fpitch, m_froll;		//yaw\pitch\roll of the hand
	unsigned char m_byBendSensor_Data[5];	//All the bend sensor data
	unsigned char m_byButtons[4];			//P5 Button data
	float m_fRotMat[3][3];						//matrix for inverse kinematics

}P5Data;
 
class P5DLL_API CP5DLL
{
public:


	int m_nNumP5;
	P5Data *m_P5Devices;

	//Constructors and destructors
	CP5DLL();
	~CP5DLL();

	//Close function
	void P5_Close();
	//Init function - required on start of program
	P5BOOL P5_Init(void);

	void P5_SetClickSensitivity(int P5Id, unsigned char leftvalue, unsigned char rightvalue, unsigned char middlevalue);
	void P5_GetClickSensitivity(int P5Id, int *leftclick, int *rightclick, int *middleclick);

	void P5_SaveBendSensors(int P5Id);
	void P5_CalibrateBendSensors(int P5Id);
	void P5_CalibratePositionData(int P5Id);

	P5BOOL P5_GetMouseState(int P5Id);
	void P5_SetMouseState(int P5Id, P5BOOL state);
	void P5_SetMouseStickTime(int P5Id, unsigned char time);
	int P5_GetMouseStickTime(int P5Id);
	void P5_GetMouseButtonAllocation(int P5Id, int *leftclick, int *rightclick, int *middleclick);
	void P5_SetMouseButtonAllocation(int P5Id, int leftclickfinger, int rightclickfinger, int middleclickfinger);

	P5BOOL P5_GetLastError(int *P5Id, int *ErrorCode);


#ifdef TEST_DLL
	void P5_GetRawDistalSensorData(int P5Id);
#endif
};

#endif
