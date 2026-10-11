#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For memset, strcpy, strcat */
#include <windows.h> /* For GetSystemInfo, GetTickCount, Sleep */

#include "CPUCheck.h"

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For Report3D__FPCce */

#include <ddraw.h> /* For DirectDrawEnumerateA */

static char DeviceDescription[CPU_CHECK_DEVICE_INFO_SIZE];
static char DriverInfo[CPU_CHECK_DEVICE_INFO_SIZE];
static char DriverIds[CPU_CHECK_DEVICE_INFO_SIZE];
static char DriverWHQL[CPU_CHECK_DEVICE_INFO_SIZE];

static BOOL WINAPI DisplayEnumCallback(GUID* guid, LPSTR description, LPSTR name, LPVOID context);

CPUCheck::CPUCheck()
{
	memset(Reserved, 0, sizeof(Reserved));
	ModelString = NULL;
	TypeString = NULL;
	Summary = NULL;
}

CPUCheck::~CPUCheck()
{
	if (ModelString)
	{
		delete ModelString;
	}
	if (TypeString)
	{
		delete TypeString;
	}
	if (Summary)
	{
		delete Summary;
	}
}

bool CPUCheck::IsEarlyPentium()
{
	bool result = false;
	__asm
	{
		mov eax, CPU_CHECK_CPUID_SIGNATURE_FUNCTION
		cpuid
		and eax, CPU_CHECK_CPUID_EARLY_PENTIUM_BITS
		cmp eax, CPU_CHECK_CPUID_EARLY_PENTIUM_BITS
		sete al
		mov result, al
	}
	return result;
}

bool CPUCheck::HasCPUID()
{
	bool result;
	__asm
	{
		pushfd
		pop eax
		mov ebx, eax
		xor eax, CPU_CHECK_EFLAGS_ID_FLAG
		push eax
		popfd
		pushfd
		pop eax
		xor eax, ebx
		setne al
		mov result, al
	}
	return result;
}

unsigned long CPUCheck::GetNumberOfProcessors()
{
	SYSTEM_INFO info;
	GetSystemInfo(&info);
	return info.dwNumberOfProcessors;
}

int CPUCheck::GetCPUSpeed()
{
	__int64 start;
	__int64 end;
	__asm
		{
		rdtsc
		mov dword ptr start, eax
		mov dword ptr start + CPU_CHECK_TSC_HIGH_OFFSET, edx
	    }
	DWORD startTime = GetTickCount();
	Sleep(CPU_CHECK_SPEED_SLEEP_MILLISECONDS);
	DWORD endTime = GetTickCount();
	__asm
	{
		rdtsc
		mov dword ptr end, eax
		mov dword ptr end + CPU_CHECK_TSC_HIGH_OFFSET, edx
	}
	int speed = (int)((end - start) / (endTime - startTime) / CPU_CHECK_KHZ_PER_MHZ);
	Report3D__FPCce("CPU SPEED %d\n", speed);
	return speed;
}

void CPUCheck::GetProcessorInfo()
{
	if (TypeString)
	{
		delete TypeString;
	}
	TypeString = NULL;
	if (ModelString)
	{
		delete ModelString;
	}
	ModelString = NULL;
	TypeString = new char[CPU_CHECK_TYPE_STRING_SIZE];
	ModelString = new char[CPU_CHECK_MODEL_STRING_SIZE];

	int signature;
	__asm
		{
		mov eax, CPU_CHECK_CPUID_SIGNATURE_FUNCTION
		cpuid
		and eax, CPU_CHECK_SIGNATURE_MASK
		mov signature, eax
	    }
	Signature = signature;

	int vendorEbx;
	int vendorEdx;
	int vendorEcx;
	__asm
		{
		mov eax, CPU_CHECK_CPUID_VENDOR_FUNCTION
		cpuid
		mov vendorEbx, ebx
		mov vendorEdx, edx
		mov vendorEcx, ecx
	    }
	*(int*)&Vendor[0 * sizeof(int)] = vendorEbx;
	*(int*)&Vendor[1 * sizeof(int)] = vendorEdx;
	*(int*)&Vendor[2 * sizeof(int)] = vendorEcx;
	Vendor[CPU_CHECK_VENDOR_LENGTH] = '\0';

	if (strcmp(Vendor, "GenuineIntel") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_INTEL;
	}
	else if (strcmp(Vendor, "UMC UMC UMC") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_UMC;
	}
	else if (strcmp(Vendor, "CyrixInstead") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_CYRIX;
	}
	else if (strcmp(Vendor, "AuthenticAMD") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_AMD;
	}
	else if (strcmp(Vendor, "RiseRiseRise") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_RISE;
	}
	else if (strcmp(Vendor, "NexGenDriven") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_NEXGEN;
	}
	else if (strcmp(Vendor, "CentaurHauls") == 0)
	{
		VendorId = CPU_CHECK_VENDOR_CENTAUR;
	}

	switch ((Signature >> CPU_CHECK_TYPE_SHIFT) & CPU_CHECK_TYPE_MASK)
	{
	case CPU_CHECK_TYPE_PRIMARY:
		sprintf(TypeString, "Primary Processor");
		break;
	case CPU_CHECK_TYPE_OVERDRIVE:
		sprintf(TypeString, "Overdrive Processor");
		break;
	case CPU_CHECK_TYPE_SECONDARY:
		sprintf(TypeString, "Secondary Processor");
		break;
	case CPU_CHECK_TYPE_RESERVED:
		sprintf(TypeString, "Wierd - this bitstring (11b) is reserved.");
		break;
	}

	switch ((Signature >> CPU_CHECK_FAMILY_SHIFT) & CPU_CHECK_FAMILY_MASK)
	{
	case CPU_CHECK_FAMILY_486:
		switch (VendorId)
		{
		case CPU_CHECK_VENDOR_INTEL:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_INTEL_486_DX_25_33:
				sprintf(ModelString, "Intel 486DX 25/33");
				break;
			case CPU_CHECK_INTEL_486_DX_50:
				sprintf(ModelString, "Intel 486DX 50");
				break;
			case CPU_CHECK_INTEL_486_SX:
				sprintf(ModelString, "Intel 486SX");
				break;
			case CPU_CHECK_INTEL_486_DX2:
				sprintf(ModelString, "Intel 486DX2");
				break;
			case CPU_CHECK_INTEL_486_SL:
				sprintf(ModelString, "Intel 486SL");
				break;
			case CPU_CHECK_INTEL_486_SX2:
				sprintf(ModelString, "Intel 486SX2");
				break;
			case CPU_CHECK_INTEL_486_DX2_WB:
				sprintf(ModelString, "Intel 486DX2WB");
				break;
			case CPU_CHECK_INTEL_486_DX4:
				sprintf(ModelString, "Intel 486DX4");
				break;
			case CPU_CHECK_INTEL_486_DX4_WB:
				sprintf(ModelString, "Intel 486DX4WB");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_UMC:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_UMC_486_U5D:
				sprintf(ModelString, "UMC U5D (486)");
				break;
			case CPU_CHECK_UMC_486_U5S:
				sprintf(ModelString, "UMC U5S (486)");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_AMD:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_AMD_486_DX2:
				sprintf(ModelString, "AMD 486DX2");
				break;
			case CPU_CHECK_AMD_486_DX2_WB:
				sprintf(ModelString, "AMD 486DX2WB");
				break;
			case CPU_CHECK_AMD_486_DX4:
				sprintf(ModelString, "AMD 486DX4");
				break;
			case CPU_CHECK_AMD_486_DX4_WB:
				sprintf(ModelString, "AMD 486DX4WB");
				break;
			case CPU_CHECK_AMD_5X86:
				sprintf(ModelString, "AMD 5x86");
				break;
			case CPU_CHECK_AMD_5X86_WB:
				sprintf(ModelString, "AMD 5x86WB");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_CYRIX:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_CYRIX_MEDIAGX:
				sprintf(ModelString, "Cyrix MediaGX (GX/GXm)");
				break;
			case CPU_CHECK_CYRIX_5X86:
				sprintf(ModelString, "Cyrix 5x86");
				break;
			}
			break;
		}
		break;
	case CPU_CHECK_FAMILY_PENTIUM:
		switch (VendorId)
		{
		case CPU_CHECK_VENDOR_INTEL:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_INTEL_P5_A_STEP:
				sprintf(ModelString, "Intel P5 A-step");
				break;
			case CPU_CHECK_INTEL_P5:
				sprintf(ModelString, "Intel P5");
				break;
			case CPU_CHECK_INTEL_P54C:
				sprintf(ModelString, "Intel P54C");
				break;
			case CPU_CHECK_INTEL_P24T_OVERDRIVE:
				sprintf(ModelString, "Intel P24T Overdrive");
				break;
			case CPU_CHECK_INTEL_P55C:
				sprintf(ModelString, "Intel P55C");
				break;
			case CPU_CHECK_INTEL_P54C_REVISED:
				sprintf(ModelString, "Intel P54C");
				break;
			case CPU_CHECK_INTEL_P55C_025:
				sprintf(ModelString, "Intel P55C (0.25 Micrometer process)");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_NEXGEN:
			if (((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK) == CPU_CHECK_NEXGEN_NX586)
			{
				sprintf(ModelString, "NexGen Nx586/Nx586FPU (only later ones)");
			}
			break;
		case CPU_CHECK_VENDOR_CYRIX:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_CYRIX_686MX:
				sprintf(ModelString, "Cyrix 686MX");
				break;
			case CPU_CHECK_CYRIX_686:
				sprintf(ModelString, "Cyrix 686");
				break;
			case CPU_CHECK_VIA_CYRIX_III:
				sprintf(ModelString, "VIA Cyrix III");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_AMD:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_AMD_SSA5:
				sprintf(ModelString, "AMD SSA5 (PR75/PR90/PR100)");
				break;
			case CPU_CHECK_AMD_5K86_PR133:
				sprintf(ModelString, "AMD 5k86 (PR120/PR133)");
				break;
			case CPU_CHECK_AMD_5K86_PR166:
				sprintf(ModelString, "AMD 5k86 (PR166)");
				break;
			case CPU_CHECK_AMD_5K86_PR200:
				sprintf(ModelString, "AMD 5k86 (PR200)");
				break;
			case CPU_CHECK_AMD_K6_030:
				sprintf(ModelString, "AMD K6(0.30 Micrometer process)");
				break;
			case CPU_CHECK_AMD_K6_025:
				sprintf(ModelString, "AMD K6(0.25 Micrometer process)");
				break;
			case CPU_CHECK_AMD_K6_2:
				sprintf(ModelString, "AMD K6/2");
				break;
			case CPU_CHECK_AMD_K6_III:
				sprintf(ModelString, "AMD K6-III");
				break;
			case CPU_CHECK_AMD_K6_2_PLUS:
				sprintf(ModelString, "AMD K6-2+ or K6-III+  (0.18 Micrometer process)");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_CENTAUR:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_CENTAUR_C6:
				sprintf(ModelString, "Centaur/IDT C6");
				break;
			case CPU_CHECK_CENTAUR_C2:
				sprintf(ModelString, "Centaur/IDT C2");
				break;
			case CPU_CHECK_CENTAUR_C3:
				sprintf(ModelString, "Centaur/IDT C3");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_RISE:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_RISE_MP6_025:
				sprintf(ModelString, "RISE mP6 (0.25 Micrometer process)");
				break;
			case CPU_CHECK_RISE_MP6_018:
				sprintf(ModelString, "RISE mP6 (0.18 Micrometer process)");
				break;
			}
			break;
		}
		break;
	case CPU_CHECK_FAMILY_P6:
		switch (VendorId)
		{
		case CPU_CHECK_VENDOR_AMD:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_AMD_K7_025:
				sprintf(ModelString, "AMD K7 (0.25 Micrometer process)");
				break;
			case CPU_CHECK_AMD_K7_018:
				sprintf(ModelString, "AMD K7 (0.18 Micrometer process)");
				break;
			case CPU_CHECK_AMD_K7_018_64K:
				sprintf(ModelString, "AMD K7 (0.18 Micrometer process) with 64 K on-die L2 cache");
				break;
			case CPU_CHECK_AMD_K7_018_256K:
				sprintf(ModelString, "AMD K7 (0.18 Micrometer process) with 256 K on-die L2 cache");
				break;
			}
			break;
		case CPU_CHECK_VENDOR_INTEL:
			switch ((Signature >> CPU_CHECK_MODEL_SHIFT) & CPU_CHECK_MODEL_MASK)
			{
			case CPU_CHECK_INTEL_P6_A_STEP:
				sprintf(ModelString, "Intel P6 A-Step");
				break;
			case CPU_CHECK_INTEL_P6:
				sprintf(ModelString, "Intel P6");
				break;
			case CPU_CHECK_INTEL_P2_028:
				sprintf(ModelString, "Intel P2 (0.28 Micrometer process)");
				break;
			case CPU_CHECK_INTEL_P2_025:
				sprintf(ModelString, "Intel P2 (0.25 Micrometer process)");
				break;
			case CPU_CHECK_INTEL_P2_L2:
				sprintf(ModelString, "Intel P2 with on-die L2 cache");
				break;
			case CPU_CHECK_INTEL_P3_025:
				sprintf(ModelString, "Intel P3 (0.25 Micrometer process)");
				break;
			case CPU_CHECK_INTEL_P3_018_256K:
				sprintf(ModelString, "Intel P3 (0.18 Micrometer process) with 256 K on-die L2 cache");
				break;
			case CPU_CHECK_INTEL_P3_018_512K:
				sprintf(ModelString, "Intel P3 (0.18 Micrometer process) with 1/2 Meg on-die L2 cache");
				break;
			}
			break;
		}
		break;
	case CPU_CHECK_FAMILY_PENTIUM4:
		sprintf(ModelString, "Intel P4 or some variant");
		break;
	default:
		sprintf(ModelString, "Unknown processor type");
		break;
	}
}

BOOL WINAPI DisplayEnumCallback(GUID* guid, LPSTR description, LPSTR name, LPVOID context)
{
	LPDIRECTDRAW7       directDraw;
	DDDEVICEIDENTIFIER2 identifier;
	if (DirectDrawCreateEx(guid, (LPVOID*)&directDraw, IID_IDirectDraw7, NULL) == DD_OK)
	{
		directDraw->GetDeviceIdentifier(&identifier, 0);
		directDraw->Release();
		DWORD high = identifier.liDriverVersion.HighPart;
		DWORD low = identifier.liDriverVersion.LowPart;
		sprintf(DeviceDescription, "Driver desc:%s, Driver name:%s\n", identifier.szDriver, identifier.szDescription);
		sprintf(DriverInfo, "Driver info:Product:0x%u, Version:0x%u, SubVersion:0x%u, Build:0x%u\n", HIWORD(high),
		        LOWORD(high), HIWORD(low), LOWORD(low));
		sprintf(DriverIds, "Driver Vendor ID:0x%X, Driver device ID:0x%X\nDriver SubSysID:0x%X ,Driver Revision:0x%X\n",
		        identifier.dwVendorId, identifier.dwDeviceId, identifier.dwSubSysId, identifier.dwRevision);
		sprintf(DriverWHQL, "Driver Windows Hardware Quality Lab Level:%u\n", identifier.dwWHQLLevel);
		strcat((char*)context, DeviceDescription);
		strcat((char*)context, DriverInfo);
		strcat((char*)context, DriverIds);
		strcat((char*)context, DriverWHQL);
		return TRUE;
	}
	strcat((char*)context, "\nCould not create DirectDraw device to get details from, but managed to get:\n");
	sprintf(DeviceDescription, "Driver desc:%s, Driver name:%s\n", description, name);
	strcat((char*)context, DeviceDescription);
	return TRUE;
}

void CPUCheck::GetDisplayInfo()
{
	strcpy(DisplayInfo, "\nDirectDraw says:\n");
	if (DirectDrawEnumerateA(DisplayEnumCallback, DisplayInfo))
	{
		strcat(DisplayInfo, "That we could not enumerate the devices (strange!).");
	}
	strcat(DisplayInfo, "\n");
}

void CPUCheck::CreateStrings()
{
	if (Summary)
	{
		delete Summary;
	}
	Summary = NULL;
	GetDisplayInfo();
	if (!HasCPUID())
	{
		Summary = new char[CPU_CHECK_SHORT_SUMMARY_SIZE];
		sprintf(Summary, "CPUID Is not present on this PC. (Either its a poor Intel clone, or a pre-pentium chip).\n%s",
		        DisplayInfo);
		return;
	}
	if (IsEarlyPentium())
	{
		Summary = new char[CPU_CHECK_SHORT_SUMMARY_SIZE];
		sprintf(Summary, "Processor is an Early Pentium\n%s", DisplayInfo);
		return;
	}
	Summary = new char[CPU_CHECK_FULL_SUMMARY_SIZE];
	GetProcessorInfo();
	sprintf(Summary,
	        "Number of processors:%d\nProcessor Manufacturer:%s\nProcessor Model:%s\nProcessor Stepping:%x\n%s",
	        GetNumberOfProcessors(), Vendor, ModelString, Signature & CPU_CHECK_STEPPING_MASK, DisplayInfo);
}
