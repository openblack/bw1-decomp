#define LH_MULTIPLAYER_EXPORTS
#include "LHSNMP.h"

#include <string.h>

// BW1W120 1001f460 BW1M119 011118c0 (LHCombined Release)
SNMPAPI SNMP_FUNC_TYPE SnmpUtilOidCpy(AsnObjectIdentifier* pOidDst, AsnObjectIdentifier* pOidSrc)
{
	pOidDst->ids = (UINT*)GlobalAlloc(GPTR, pOidSrc->idLength * sizeof(UINT));
	if (pOidDst->ids == NULL)
	{
		SetLastError(SNMP_MEM_ALLOC_ERROR);
		return SNMPAPI_ERROR;
	}
	memcpy(pOidDst->ids, pOidSrc->ids, pOidSrc->idLength * sizeof(UINT));
	pOidDst->idLength = pOidSrc->idLength;
	return SNMPAPI_NOERROR;
}

// BW1W120 1001f4c0 BW1M119 01111850 (LHCombined Release)
VOID SNMP_FUNC_TYPE SnmpUtilOidFree(AsnObjectIdentifier* pOid)
{
	GlobalFree(pOid->ids);
	pOid->ids = NULL;
	pOid->idLength = 0;
}

// BW1W120 1001f4e0 BW1M119 011117c0 (LHCombined Release)
SNMPAPI SNMP_FUNC_TYPE SnmpUtilOidNCmp(AsnObjectIdentifier* pOid1, AsnObjectIdentifier* pOid2, UINT nSubIds)
{
	UINT length = nSubIds;
	if (pOid1->idLength < length)
	{
		length = pOid1->idLength;
	}
	if (pOid2->idLength < length)
	{
		length = pOid2->idLength;
	}
	for (UINT i = 0; i < length; i++)
	{
		int difference = pOid1->ids[i] - pOid2->ids[i];
		if (difference != 0)
		{
			return difference;
		}
	}
	return 0;
}

// BW1W120 1001f530 BW1M119 011116f0 (LHCombined Release)
VOID SNMP_FUNC_TYPE SnmpUtilVarBindFree(SnmpVarBind* pVb)
{
	SnmpUtilOidFree(&pVb->name);
	if (pVb->value.asnType == ASN_OBJECTIDENTIFIER)
	{
		SnmpUtilOidFree(&pVb->value.asnValue.object);
	}
	else if (pVb->value.asnType == ASN_OCTETSTRING || pVb->value.asnType == ASN_IPADDRESS ||
	         pVb->value.asnType == ASN_OPAQUE || pVb->value.asnType == ASN_SEQUENCE)
	{
		if (pVb->value.asnValue.string.dynamic)
		{
			GlobalFree(pVb->value.asnValue.string.stream);
		}
	}
	pVb->value.asnType = ASN_NULL;
}

LHSNMP::LHSNMP()
{
	InitSystem();
}

LH_RETURN LHSNMP::InitSystem()
{
	HANDLE              trapEvent;
	AsnObjectIdentifier supportedView;

	if (ExtensionInit == NULL && ExtensionQuery == NULL)
	{
		return LH_OK;
	}

	ExtensionInit = NULL;
	ExtensionInitEx = NULL;
	ExtensionQuery = NULL;
	ExtensionTrap = NULL;

	Library = LoadLibrary("inetmib1.dll");
	if (Library < (HINSTANCE)HINSTANCE_ERROR)
	{
		Library = NULL;
		return LH_FAIL;
	}

	ExtensionInit = (PFNSNMPEXTENSIONINIT)GetProcAddress(Library, "SnmpExtensionInit");
	ExtensionInitEx = (PFNSNMPEXTENSIONINITEX)GetProcAddress(Library, "SnmpExtensionInitEx");
	ExtensionQuery = (PFNSNMPEXTENSIONQUERY)GetProcAddress(Library, "SnmpExtensionQuery");
	ExtensionTrap = (PFNSNMPEXTENSIONTRAP)GetProcAddress(Library, "SnmpExtensionTrap");

	if (ExtensionInit == NULL && ExtensionQuery == NULL)
	{
		return LH_FAIL;
	}

	return Init(GetTickCount(), &trapEvent, &supportedView);
}

LH_RETURN LHSNMP::Init(unsigned long up_time_reference, void** trap_event, AsnObjectIdentifier* first_supported_region)
{
	if (Library == NULL || ExtensionInit == NULL)
	{
		return LH_ERROR;
	}
	return ExtensionInit(up_time_reference, trap_event, first_supported_region) == TRUE ? LH_OK : LH_FAIL;
}

LH_RETURN LHSNMP::InitEx(AsnObjectIdentifier* next_supported_region)
{
	if (Library == NULL || ExtensionInit == NULL)
	{
		return LH_ERROR;
	}
	return ExtensionInitEx(next_supported_region) == TRUE ? LH_OK : LH_FAIL;
}

LH_RETURN LHSNMP::Query(unsigned char pdu_type, SnmpVarBindList* var_bind_list, long* error_status, long* error_index)
{
	if (Library == NULL || ExtensionInit == NULL)
	{
		return LH_ERROR;
	}
	return ExtensionQuery(pdu_type, var_bind_list, error_status, error_index) == TRUE ? LH_OK : LH_FAIL;
}

LH_RETURN LHSNMP::Trap(AsnObjectIdentifier* enterprise_oid, long* generic_trap_id, long* specific_trap_id,
                       unsigned long* time_stamp, SnmpVarBindList* var_bind_list)
{
	if (Library == NULL || ExtensionInit == NULL)
	{
		return LH_ERROR;
	}
	return ExtensionTrap(enterprise_oid, generic_trap_id, specific_trap_id, time_stamp, var_bind_list) == TRUE
	           ? LH_OK
	           : LH_FAIL;
}

LHSNMPNetworkUtils::LHSNMPNetworkUtils(LHSNMP* snmp)
{
	MibNull.idLength = 0;
	MibNull.ids = NULL;
	if (snmp == NULL)
	{
		Snmp = new LHSNMP;
		ExternalSnmp = false;
	}
	else
	{
		Snmp = snmp;
		ExternalSnmp = true;
	}
}

LHSNMPNetworkUtils::~LHSNMPNetworkUtils()
{
	if (!ExternalSnmp)
	{
		delete Snmp;
		Snmp = NULL;
	}
}

LH_RETURN LHSNMPNetworkUtils::GetIPAddress(long* addresses, long* masks, long* count)
{
	if (Snmp == NULL)
	{
		return LH_ERROR;
	}

	UINT                OID_ipAdEntAddr[] = {1, 3, 6, 1, 2, 1, 4, 20, 1, 1};
	UINT                OID_ipAdEntNetMask[] = {1, 3, 6, 1, 2, 1, 4, 20, 1, 3};
	AsnObjectIdentifier MIB_ipAdEntAddr = {sizeof(OID_ipAdEntAddr) / sizeof(UINT), OID_ipAdEntAddr};
	AsnObjectIdentifier MIB_ipAdEntNetMask = {sizeof(OID_ipAdEntNetMask) / sizeof(UINT), OID_ipAdEntNetMask};
	SnmpVarBind         varBind[2];
	SnmpVarBindList     varBindList[2];
	AsnInteger32        errorStatus;
	AsnInteger32        errorIndex;
	bool                done = false;

	varBindList[0].list = &varBind[0];
	varBindList[0].len = 1;
	varBindList[1].list = &varBind[1];
	varBindList[1].len = 1;
	varBind[0].name = MibNull;
	varBind[1].name = MibNull;
	SnmpUtilOidCpy(&varBind[0].name, &MIB_ipAdEntAddr);
	SnmpUtilOidCpy(&varBind[1].name, &MIB_ipAdEntNetMask);

	int entries = 0;
	while (Snmp->Query(SNMP_PDU_GETNEXT, &varBindList[0], &errorStatus, &errorIndex) && !done)
	{
		Snmp->Query(SNMP_PDU_GETNEXT, &varBindList[1], &errorStatus, &errorIndex);
		int ret = SnmpUtilOidNCmp(&varBind[0].name, &MIB_ipAdEntAddr, MIB_ipAdEntAddr.idLength);
		SnmpUtilOidNCmp(&varBind[1].name, &MIB_ipAdEntNetMask, MIB_ipAdEntNetMask.idLength);
		if (ret == 0)
		{
			addresses[entries] = *(long*)varBind[0].value.asnValue.address.stream;
			masks[entries] = *(long*)varBind[1].value.asnValue.address.stream;
			entries++;
		}
		if (entries >= *count || ret != 0)
		{
			done = true;
		}
	}
	*count = entries / 2;

	SnmpUtilVarBindFree(&varBind[1]);
	SnmpUtilVarBindFree(&varBind[0]);
	return LH_OK;
}

LH_RETURN LHSNMPNetworkUtils::GetNrICMPRequestsSent(unsigned long* requests)
{
	if (Snmp == NULL)
	{
		return LH_ERROR;
	}

	UINT                OID_icmpOutEchos[] = {1, 3, 6, 1, 2, 1, 5, 21};
	AsnObjectIdentifier MIB_icmpOutEchos = {sizeof(OID_icmpOutEchos) / sizeof(UINT), OID_icmpOutEchos};
	SnmpVarBind         varBind;
	SnmpVarBindList     varBindList;
	AsnInteger32        errorStatus;
	AsnInteger32        errorIndex;

	varBindList.list = &varBind;
	varBindList.len = 1;
	varBind.name = MibNull;
	SnmpUtilOidCpy(&varBind.name, &MIB_icmpOutEchos);

	if (Snmp->Query(SNMP_PDU_GETNEXT, &varBindList, &errorStatus, &errorIndex))
	{
		if (SnmpUtilOidNCmp(&varBind.name, &MIB_icmpOutEchos, MIB_icmpOutEchos.idLength) == 0)
		{
			*requests = varBind.value.asnValue.counter;
			return LH_OK;
		}
	}
	return LH_FAIL;
}

LH_RETURN LHSNMPNetworkUtils::GetRouteEntry(long* destinations, long* next_hops, long* count)
{
	if (Snmp == NULL)
	{
		return LH_ERROR;
	}

	UINT                OID_ipRouteDest[] = {1, 3, 6, 1, 2, 1, 4, 21, 1, 1};
	UINT                OID_ipRouteNextHop[] = {1, 3, 6, 1, 2, 1, 4, 21, 1, 7};
	AsnObjectIdentifier MIB_ipRouteDest = {sizeof(OID_ipRouteDest) / sizeof(UINT), OID_ipRouteDest};
	AsnObjectIdentifier MIB_ipRouteNextHop = {sizeof(OID_ipRouteNextHop) / sizeof(UINT), OID_ipRouteNextHop};
	SnmpVarBind         varBind[2];
	SnmpVarBindList     varBindList;
	AsnInteger32        errorStatus;
	AsnInteger32        errorIndex;
	bool                done = false;

	varBindList.list = varBind;
	varBindList.len = sizeof(varBind) / sizeof(varBind[0]);
	varBind[0].name = MibNull;
	varBind[1].name = MibNull;
	SnmpUtilOidCpy(&varBind[0].name, &MIB_ipRouteDest);
	SnmpUtilOidCpy(&varBind[1].name, &MIB_ipRouteNextHop);

	int entries = 0;
	while (Snmp->Query(SNMP_PDU_GETNEXT, &varBindList, &errorStatus, &errorIndex) == LH_OK && !done)
	{
		if (SnmpUtilOidNCmp(&varBind[0].name, &MIB_ipRouteDest, MIB_ipRouteDest.idLength) == 0)
		{
			long nextHop = *(long*)varBind[1].value.asnValue.address.stream;
			destinations[entries] = *(long*)varBind[0].value.asnValue.address.stream;
			next_hops[entries] = nextHop;
			entries++;
		}
		else
		{
			done = true;
		}
		if (entries >= *count)
		{
			done = true;
		}
	}
	*count = entries;

	SnmpUtilVarBindFree(&varBind[0]);
	SnmpUtilVarBindFree(&varBind[1]);
	return LH_OK;
}

LH_RETURN LHSNMPNetworkUtils::IsIPPrivate(long address)
{
	unsigned char first = (unsigned char)address;
	unsigned char second = (unsigned char)(address >> 8);

	if (first == 10)
	{
		return LH_OK;
	}
	if (first == 172 && second >= 16 && second <= 31)
	{
		return LH_OK;
	}
	if (first == 192 && second == 168)
	{
		return LH_OK;
	}
	return LH_FAIL;
}

LH_RETURN LHSNMPNetworkUtils::IsIPLoopback(long address)
{
	if ((unsigned char)address == 127 && (unsigned char)(address >> 8) == 0 && (unsigned char)(address >> 16) == 0 &&
	    (unsigned char)((unsigned long)address >> 24) == 1)
	{
		return LH_OK;
	}
	return LH_FAIL;
}

LH_RETURN LHSNMPNetworkUtils::IsDefaultGatewayPrivate()
{
	long count;
	long nextHops[LH_SNMP_MAX_ROUTES];
	long destinations[LH_SNMP_MAX_ROUTES];

	if (Snmp == NULL)
	{
		return LH_ERROR;
	}

	count = LH_SNMP_MAX_ROUTES;
	if (GetRouteEntry(destinations, nextHops, &count) != LH_OK)
	{
		return LH_ERROR;
	}
	if (count == 0)
	{
		return LH_ERROR;
	}

	for (int i = 0; i < count; i++)
	{
		if (destinations[i] == INADDR_ANY && IsIPLoopback(nextHops[i]) == LH_FAIL)
		{
			return IsIPPrivate(nextHops[i]);
		}
	}
	return LH_ERROR;
}
