#ifndef BW1_DECOMP_LH_SNMP_INCLUDED_H
#define BW1_DECOMP_LH_SNMP_INCLUDED_H

#include <assert.h>  /* For static_assert */
#include <snmp.h>    /* For AsnObjectIdentifier, SnmpVarBindList, PFNSNMPEXTENSION* */
#include <windows.h> /* For HINSTANCE */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>

enum
{
	LH_SNMP_MAX_ROUTES = 200,
};

class LHSNMP
{
public:
	HINSTANCE              Library;
	PFNSNMPEXTENSIONINIT   ExtensionInit;   /* 0x4 */
	PFNSNMPEXTENSIONINITEX ExtensionInitEx; /* 0x8 */
	PFNSNMPEXTENSIONQUERY  ExtensionQuery;  /* 0xc */
	PFNSNMPEXTENSIONTRAP   ExtensionTrap;   /* 0x10 */

	// BW1W120 1001f580 BW1M119 01111690 (LHCombined Release)
	LHSNMP();

	// BW1W120 1001f590 BW1M119 01111510 (LHCombined Release)
	LH_RETURN InitSystem();
	// BW1W120 1001f650 BW1M119 01111470 (LHCombined Release)
	LH_RETURN Init(unsigned long up_time_reference, void** trap_event, AsnObjectIdentifier* first_supported_region);
	// BW1W120 1001f680 BW1M119 011113d0 (LHCombined Release)
	LH_RETURN InitEx(AsnObjectIdentifier* next_supported_region);
	// BW1W120 1001f6b0 BW1M119 01111320 (LHCombined Release)
	LH_RETURN Query(unsigned char pdu_type, SnmpVarBindList* var_bind_list, long* error_status, long* error_index);
	// BW1W120 1001f6f0 BW1M119 01111260 (LHCombined Release)
	LH_RETURN Trap(AsnObjectIdentifier* enterprise_oid, long* generic_trap_id, long* specific_trap_id,
	               unsigned long* time_stamp, SnmpVarBindList* var_bind_list);
};
static_assert(sizeof(LHSNMP) == 0x14, "LHSNMP size is incorrect");

class LHSNMPNetworkUtils
{
public:
	LHSNMP*             Snmp;
	bool                ExternalSnmp; /* 0x4 */
	AsnObjectIdentifier MibNull;      /* 0x8 */

	// BW1W120 1001f730 BW1M119 011111a0 (LHCombined Release)
	LHSNMPNetworkUtils(LHSNMP* snmp);
	// BW1W120 1001f7b0 BW1M119 01111100 (LHCombined Release)
	~LHSNMPNetworkUtils();

	// BW1W120 1001f7d0 BW1M119 01110cf0 (LHCombined Release)
	LH_RETURN GetIPAddress(long* addresses, long* masks, long* count);
	// BW1W120 1001fa20 BW1M119 01110ab0 (LHCombined Release)
	LH_RETURN GetNrICMPRequestsSent(unsigned long* requests);
	// BW1W120 1001fb00 BW1M119 01110750 (LHCombined Release)
	LH_RETURN GetRouteEntry(long* destinations, long* next_hops, long* count);
	// BW1W120 1001fd00 BW1M119 011106c0 (LHCombined Release)
	LH_RETURN IsIPPrivate(long address);
	// BW1W120 1001fd40 BW1M119 01110640 (LHCombined Release)
	LH_RETURN IsIPLoopback(long address);
	// BW1W120 1001fd70 BW1M119 011104b0 (LHCombined Release)
	LH_RETURN IsDefaultGatewayPrivate();
};
static_assert(sizeof(LHSNMPNetworkUtils) == 0x10, "LHSNMPNetworkUtils size is incorrect");

#endif /* BW1_DECOMP_LH_SNMP_INCLUDED_H */
