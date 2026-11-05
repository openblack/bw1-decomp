#ifndef BW1_DECOMP_MPFE_CONNECTION_TYPE_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_TYPE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#include <re_common.h> /* For bool32_t */

#include "Dialup.h" /* For DIALUP_PROPERTIES */

enum MPFE_CONNECTION_TYPE
{
	MPFE_CONNECTION_TYPE_DIALUP = 0,
	MPFE_CONNECTION_TYPE_LAN = 1,
};

class MPFEConnectionType
{
public:
	// BW1W120 00d40e28
	static LHLinkedList<MPFEConnectionType*> ConnectionList;

	MPFE_CONNECTION_TYPE Type;             /* 0x0 */
	DIALUP_PROPERTIES    DialupProperties; /* 0x4 */
	wchar_t              Name[0x80];       /* 0x840 */
	int                  EntryIndex;       /* 0x940 */
	bool                 Connected;        /* 0x944 */
	bool                 ForceLan;         /* 0x945 */
	bool                 IsDefault;        /* 0x946 */
	bool                 AlreadyConnected; /* 0x947 */
	char                 Address[0x100];   /* 0x948 */

	// BW1W120 0062d1c0 BW1M119 013a9fd0
	static void ReleaseDialup();
	// BW1W120 0062d1e0 BW1M119 013a9f90
	static bool DialupPresent();
	// BW1W120 0062d210 BW1M119 013a9d50
	static void InitialiseConnectionList();
	// BW1W120 0062d6e0 BW1M119 013a9b60
	static MPFEConnectionType* ModemConnected();

	// BW1W120 0062d710 BW1M119 013a9b20
	bool32_t DialModem(wchar_t* status_text);
	// BW1W120 0062d740 BW1M119 013a9ae0
	void HangupModem();
};

static_assert(sizeof(MPFEConnectionType) == 0xa48, "MPFEConnectionType size is incorrect");

#endif /* BW1_DECOMP_MPFE_CONNECTION_TYPE_INCLUDED_H */
