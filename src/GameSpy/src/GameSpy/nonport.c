/******
nonport.c
GameSpy Common Code

BW1: The Win32 nonport.c that LHMultiplayerR.dll links (circa 2001). The 2007
SDK moved these functions into common/ (gsPlatformUtil.c, gsPlatformSocket.c)
and left this file as a stub; they are restored here in their old form.
******/
#include <windows.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

unsigned long current_time()  //returns current time in milliseconds
{
	return (GetTickCount());
}

void msleep(unsigned long msec)
{
	Sleep(msec);
}

void SocketStartUp()
{
	WSADATA data;

	WSAStartup(MAKEWORD(1,1), &data);
}

void SocketShutDown()
{
	WSACleanup();
}

int SetSockBlocking(SOCKET sock, int isblocking)
{
	int rcode;
	unsigned long argp;

	if(isblocking)
		argp = 0;
	else
		argp = 1;

	rcode = ioctlsocket(sock, FIONBIO, &argp);
	if(rcode == 0)
		return 1;

	return 0;
}

int DisableNagle(SOCKET sock)
{
	int rcode;
	int noDelay = 1;

	rcode = setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (char *)&noDelay, sizeof(int));
	return (rcode != SOCKET_ERROR);
}

///////////////////////////////////////////////////////////////////////////////
// Cross platform random number generator
#define RANa 16807                 // multiplier
#define LONGRAND_MAX 2147483647L   // 2**31 - 1

static long randomnum = 1;

static long nextlongrand(long seed)
{
	unsigned

	long lo, hi;
	lo = RANa *(unsigned long)(seed & 0xFFFF);
	hi = RANa *((unsigned long)seed >> 16);
	lo += (hi & 0x7FFF) << 16;

	if (lo > LONGRAND_MAX)
	{
		lo &= LONGRAND_MAX;
		++lo;
	}
	lo += hi >> 15;

	if (lo > LONGRAND_MAX)
	{
		lo &= LONGRAND_MAX;
		++lo;
	}

	return(long)lo;
}

// return next random long
static long longrand(void)
{
	randomnum = nextlongrand(randomnum);
	return randomnum;
}

// to seed it
static void Util_RandSeed(unsigned long seed)
{
	// nonzero seed
	randomnum = seed ? (long)(seed & LONGRAND_MAX) : 1;
}

static int Util_RandInt(int low, int high)
{
	int range = high-low;
	int num;

	num = (int)(longrand() % range);

	return(num + low);
}

static void GenerateID(char *keyval)
{
	int i;
	const char crypttab[63] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	LARGE_INTEGER l1;
	UINT seed;
	if (QueryPerformanceCounter(&l1))
		seed = (l1.LowPart ^ l1.HighPart);
	else
		seed = 0;
	Util_RandSeed(seed ^ GetTickCount() ^ (unsigned long)time(NULL) ^ clock());
	for (i = 0; i < 19; i++)
		if (i == 4 || i == 9 || i == 14)
			keyval[i] = '-';
	else
		keyval[i] = crypttab[Util_RandInt(0, 62)];
	keyval[19] = 0;
}

#define REG_KEY	  "Software\\GameSpy\\GameSpy 3D\\Registration"

const char * GOAGetUniqueID(void)
{
	static char keyval[MAX_PATH];
	unsigned int ret;

	int docreate;
	HKEY thekey;
	DWORD thetype = REG_SZ;
	DWORD len = MAX_PATH;
	DWORD disp;

	if (RegOpenKeyExA(HKEY_CURRENT_USER, REG_KEY, 0, KEY_ALL_ACCESS, &thekey) != ERROR_SUCCESS)
		docreate = 1;
	else
		docreate = 0;
	ret = RegQueryValueExA(thekey, (LPCSTR)"Crypt", 0, &thetype, (LPBYTE)keyval, &len);

	if (ret != 0 || strlen(keyval) != 19)//need to generate a new key
	{
		GenerateID(keyval);
		if (docreate)
		{
			ret = RegCreateKeyExA(HKEY_CURRENT_USER, REG_KEY, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS, NULL, &thekey, &disp);
		}
		RegSetValueExA(thekey, (LPCSTR)"Crypt", 0, REG_SZ, (const LPBYTE)keyval, strlen(keyval)+1);
	}

	RegCloseKey(thekey);

	// Strip out the -'s.
	/////////////////////
	memmove(keyval + 4, keyval + 5, 4);
	memmove(keyval + 8, keyval + 10, 4);
	memmove(keyval + 12, keyval + 15, 4);
	keyval[16] = '\0';

	return keyval;
}
