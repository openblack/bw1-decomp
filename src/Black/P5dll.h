#ifndef BW1_DECOMP_P5DLL_INCLUDED_H
#define BW1_DECOMP_P5DLL_INCLUDED_H

#define P5BOOL unsigned int

#define P5_THUMB  0x0
#define P5_INDEX  0x1
#define P5_MIDDLE 0x2
#define P5_RING   0x3
#define P5_PINKY  0x4

#define P5_FINGERS 5

typedef struct
{
	char VendorID[50], ProductID[50], Version[50];
	char ProductString[255], ManufacturerString[255], SerialNumString[255];

	int m_nDeviceID;
	int m_nMajorRevisionNumber, m_nMinorRevisionNumber;

	int m_nGloveType;

	float         m_fx, m_fy, m_fz;
	float         m_fyaw, m_fpitch, m_froll;
	unsigned char m_byBendSensor_Data[P5_FINGERS];
	unsigned char m_byButtons[4];
	float         m_fRotMat[3][3];
} P5Data;

class __declspec(dllimport) CP5DLL
{
public:
	int     m_nNumP5;
	P5Data* m_P5Devices;

	// BW1W120 null BW1M119 null
	CP5DLL();
	// BW1W120 null BW1M119 null
	~CP5DLL();

	// BW1W120 null BW1M119 null
	P5BOOL P5_Init(void);
	// BW1W120 null BW1M119 null
	void P5_SetMouseState(int P5Id, P5BOOL state);
};

#endif /* BW1_DECOMP_P5DLL_INCLUDED_H */
