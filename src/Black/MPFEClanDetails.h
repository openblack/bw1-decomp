#ifndef BW1_DECOMP_MPFE_CLAN_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <string.h> /* For strcpy */
#include <wchar.h>  /* For wchar_t, wcscpy */

#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo, LHWebEncodingFreePtr */

class MPFEClanDetails
{
public:
	bool          IsLeader;          /* 0x0 */
	bool          HaveInfo;          /* 0x1 */
	unsigned long ID;                /* 0x4 */
	wchar_t       Name[0x100];       /* 0x8 */
	char          WebAddress[0x100]; /* 0x208 */
	char          LeaderName[0x100]; /* 0x308 */
	wchar_t       Motto[0x100];      /* 0x408 */
	unsigned long BitmapLength;      /* 0x608 */
	char*         Bitmap;            /* 0x60c */
	bool          Querying;          /* 0x610 */
	bool          Queried;           /* 0x611 */
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	float Rating; /* 0x614 */
#endif
	DBInfo Query;

	// BW1W120 0062b990 BW1M119 013a90d0
	void Refresh();

	// BW1W120 inlined BW1M119 inlined
	MPFEClanDetails()
	{
		wcscpy(Name, L"");
		BitmapLength = 0;
		Bitmap = NULL;
		IsLeader = false;
		Querying = false;
		HaveInfo = false;
		Queried = false;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		Rating = 0.0f;
#endif
	}
	// BW1W120 00632120 BW1M119 013b1670
	~MPFEClanDetails()
	{
		if (Bitmap != NULL)
		{
			LHWebEncodingFreePtr(Bitmap);
		}
		if (Querying)
		{
			Query.Reset();
		}
		strcpy(WebAddress, "");
	}
};

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(sizeof(MPFEClanDetails) == 0x664, "MPFEClanDetails size is incorrect");
#else
static_assert(sizeof(MPFEClanDetails) == 0x660, "MPFEClanDetails size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_CLAN_DETAILS_INCLUDED_H */
