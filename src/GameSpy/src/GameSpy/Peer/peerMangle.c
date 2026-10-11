/*
GameSpy Peer SDK 
Dan "Mr. Pants" Schoenblum
dan@gamespy.com

Copyright 1999-2001 GameSpy Industries, Inc

18002 Skypark Circle
Irvine, California 92614
949.798.4200 (Tel)
949.798.4299 (Fax)
devsupport@gamespy.com
*/

/*
**
** Title Room
**   #GSP!<gamename>
**
** Group Room
**   #GPG!<groupid>
**
** Staging Room
**   #GSP!<gamename>!<encoded IP of host>
**
** User
**   <encoded-IP>|<profile ID>
**
*/

/*************
** INCLUDES **
*************/
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <ctype.h>
#include "peerMain.h"
#include "peerMangle.h"

/************
** DEFINES **
************/
#define PI_SEPERATOR            "!"

/************
** GLOBALS **
************/
static const char digits_hex[] = "0123456789abcdef";
static const char digits_crypt[] = "aFl4uOD9sfWq1vGp";
static const unsigned int ip_xormask = 0xc3801dc7;
static char ip_cryptbuffer[32];

/**************
** FUNCTIONS **
**************/
//ripped from Aphex's ipencode.h
static const char *
EncodeIPAddr(unsigned int ulIPAddr, char * lpszEncodedAddr)
	{
	struct in_addr	addr;
	int							i;
	char *					pch;
	int							digit_idx;

	//
	// XOR the IP address...
	//
	addr.s_addr = ulIPAddr ^ ip_xormask;

	//
	// Print out the ip addr in hex form...
	//
	sprintf(ip_cryptbuffer, "X%08lxX", addr.s_addr);

	//
	// Translate chars in positions 1 through 8 from hex
	// digits to "crypt" digits...
	//
	for(i=1; i<9; i++)
		{
		pch = strchr(digits_hex, ip_cryptbuffer[i]);
		digit_idx = pch - digits_hex;
		if((digit_idx < 0) || (digit_idx > 15)) // sanity check
			{
			strcpy(ip_cryptbuffer, "X14saFv19X"); // equivalent to 0.0.0.0
			goto all_done;
			}
		ip_cryptbuffer[i] = digits_crypt[digit_idx];
		}

all_done:

	if(lpszEncodedAddr)
		{
		strcpy(lpszEncodedAddr, ip_cryptbuffer);
		return(lpszEncodedAddr);
		}
	else
		return(ip_cryptbuffer);
	}

//ripped from Aphex's ipencode.h
static unsigned int
DecodeIPAddr(const char * lpszEncodedAddr)
	{
	unsigned int		ulIPAddr;
	unsigned int		ulIPAddrXor;
	char						szIPAddr[16];
	char *					pch;
	int							digit_idx;
	int							i;

	if(!lpszEncodedAddr)
		return(0);

	//
	// Confirm that the first char is an 'X', otherwise
	// the string is invalid.
	//
	if(lpszEncodedAddr[0] != 'X')
		return(0);
	if(lpszEncodedAddr[9] != 'X')
		return(0);
	
	//
	// Translate chars from hex digits to "crypt" digits...
	//
	strncpy(szIPAddr, &lpszEncodedAddr[1], 8);
	szIPAddr[8] = 0;
	for(i=0; i<8; i++)
		{
		pch = strchr(digits_crypt, szIPAddr[i]);
		digit_idx = pch - digits_crypt;
		if((digit_idx < 0) || (digit_idx > 15))
			return(0);
		szIPAddr[i] = digits_hex[digit_idx];
		}

	//
	// Convert the string to an unsigned long (the XORd ip addr)...
	//
	//ulIPAddrXor = (unsigned long) strtoul(szIPAddr, NULL, 16);
	sscanf(szIPAddr, "%x", &ulIPAddrXor);

	//
	// re-XOR the IP address and return it...
	//
	ulIPAddr = ulIPAddrXor ^ ip_xormask;
	return(ulIPAddr);
	}

void piMangleTitleRoom
(
	char buffer[PI_ROOM_MAX_LEN],
	const char * title
)
{
	assert(buffer);
	assert(title);
	assert(title[0]);

	sprintf(buffer, "#GSP" PI_SEPERATOR "%s",
		title);
}

void piMangleGroupRoom
(
	char buffer[PI_ROOM_MAX_LEN],
	int groupID
)
{
	assert(buffer);
	assert(groupID);

	sprintf(buffer, "#GPG" PI_SEPERATOR "%d", groupID);
}

void piMangleStagingRoom
(
	char buffer[PI_ROOM_MAX_LEN],
	const char * title,
	unsigned int IP
)
{
	assert(buffer);
	assert(title);
	assert(title[0]);
	assert(IP != 0);

	sprintf(buffer, "#GSP" PI_SEPERATOR "%s" PI_SEPERATOR "%s",
		title,
		EncodeIPAddr(IP, NULL));
}

void piMangleUpdatesRoom
(
	char buffer[PI_ROOM_MAX_LEN],
	const char * title,
	int groupID
)
{
	assert(buffer);
	assert(title);
	assert(title[0]);

	if(groupID)
		sprintf(buffer, "#%s_%d_updates", title, groupID);
	else
		sprintf(buffer, "#%s_updates", title);
}

void piMangleUser
(
	char buffer[PI_USER_MAX_LEN],
	unsigned int IP,
	int profileID
)
{
	assert(buffer);
	assert(IP != 0);
	assert(profileID >= 0);

	sprintf(buffer, "%s|%d",
		EncodeIPAddr(IP, NULL),
		profileID);
}

PEERBool piDemangleUser
(
	const char buffer[PI_USER_MAX_LEN],
	unsigned int * IP,
	int * profileID
)
{
	unsigned int decodedIP;
	int scannedProfileID;

	assert(buffer);
	if(buffer == NULL)
		return PEERFalse;

	// Check the length.
	////////////////////
	if(strlen(buffer) < 12)
		return PEERFalse;

	// Get the IP.
	//////////////
	decodedIP = DecodeIPAddr(buffer);
	if(!decodedIP)
		return PEERFalse;

	// Check the profile ID.
	////////////////////////
	if(!isdigit(buffer[11]))
		return PEERFalse;

	// Get the pid.
	///////////////
	scannedProfileID = atoi(buffer + 11);

	// Check what is wanted.
	////////////////////////
	if(IP)
		*IP = decodedIP;
	if(profileID)
		*profileID = scannedProfileID;


	return PEERTrue;
}

void piMangleIP
(
	char buffer[11],
	unsigned int IP
)
{
	assert(buffer);
	assert(IP != 0);

	EncodeIPAddr(IP, buffer);
}

unsigned int piDemangleIP
(
	const char buffer[11]
)
{
	assert(buffer);
	if(!buffer)
		return PEERFalse;

	return DecodeIPAddr(buffer);
}