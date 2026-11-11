#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEConnectionStatus.h"

#include <io.h>     /* For _filelength, _fileno */
#include <stdio.h>  /* For FILE, fclose, fopen, fread, sprintf */
#include <stdlib.h> /* For abort */
#include <string.h> /* For strcmp, strcpy */
#include <wchar.h>  /* For wcscpy */

#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For LHLinkedListIterator */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>           /* For RegistryRetrieveULong */
#include <Lionhead/LHMultiplayer/ver4.0/LHSocketTCP.h>  /* For GetIPAddress */
#include <Lionhead/LH3DLib/development/LH3DRender.h>    /* For RenderLoadingFrame */

#include "DialogBoxBase.h"         /* For DialogBoxBase::HideAll */
#include "Dialup.h"                /* For class Dialup, DIALUP_PROPERTIES */
#include "FrontEnd.h"              /* For FrontEnd::InMultiplayerScreens, WCHAR2CHAR */
#include "LayerCommunication.h"    /* For LayerCommunication */
#include "MPFEChannelSelector.h"   /* For MPFEChannelSelector::Instance */
#include "MPFEChooseConnection.h"  /* For MPFEChooseConnection::Instance */
#include "MPFEConditionMessages.h" /* For GetInfoFileChecksum, GetInfoFileChecksum2 */
#include "MPFEConnectionType.h"    /* For MPFEConnectionType */
#include "MPFEData.h"              /* For MPFEData::Data */
#include "MPFEFindGame.h"          /* For MPFEFindGame::Instance */
#include "MPFELogin.h"             /* For MPFELogin::Instance */
#include "SafeDisc.h"              /* For SafeDiscRecord, CHECK_PROTECTION_MARKER */
#include "SecretCreature.h"        /* For BWSETUP_REGISTRY_KEY */

#define MPFE_CONNECTION_STATUS_INFO_FILE     ".\\scripts\\info.dat"
#define MPFE_CONNECTION_STATUS_CREATURE_PATH ".\\Data\\CTR\\"

LHLinkedList<MPFEConnectionType*> MPFEConnectionType::ConnectionList;
Dialup*                           MPFEConnectionType::DialupConnection = NULL;

#ifndef VERSION_BW1W100
static char CreatureMeshFiles[][0x100] = {
	"A_Bear_Boned_base.L3D",         //
	"A_Bear_Boned_evil.L3D",         //
	"A_Bear_Boned_Fat.L3D",          //
	"A_Bear_Boned_good.L3D",         //
	"A_Bear_Boned_Strong.L3D",       //
	"A_Bear_Boned_Thin.L3D",         //
	"A_Bear_Boned_Weak.L3D",         //
	"A_Greek_Boned_base.L3D",        //
	"A_Greek_Boned_Base_Evil.L3D",   //
	"A_Greek_Boned_Base_Fat.L3D",    //
	"A_Greek_Boned_Base_Good.L3D",   //
	"A_Greek_Boned_Base_Strong.L3D", //
	"A_Greek_Boned_Base_Thin.L3D",   //
	"A_Greek_Boned_Base_Weak.L3D",   //
	"A_horse_boned.l3d",             //
	"A_horse_evil.l3d",              //
	"A_horse_fat.l3d",               //
	"A_horse_good.l3d",              //
	"A_horse_strong.l3d",            //
	"A_horse_Thin.l3d",              //
	"A_horse_weak.l3d",              //
	"A_Tiger2_Base.l3d",             //
	"A_Tiger2_Evil.l3d",             //
	"A_Tiger2_Fat.l3d",              //
	"A_Tiger2_Good.l3d",             //
	"A_Tiger2_Strong.l3d",           //
	"A_Tiger2_Thin.l3d",             //
	"A_Tiger2_Weak.l3d",             //
	"C_Ape_Boned_Base.L3D",          //
	"C_Ape_Boned_Evil.L3D",          //
	"C_Ape_Boned_Fat.L3D",           //
	"C_Ape_Boned_Good.L3D",          //
	"C_Ape_Boned_Strong.L3D",        //
	"C_Ape_Boned_Thin.L3D",          //
	"C_Ape_Boned_Weak.L3D",          //
	"C_CHIMP_base.l3d",              //
	"C_CHIMP_evil.l3d",              //
	"C_CHIMP_fat.l3d",               //
	"C_CHIMP_good.l3d",              //
	"C_CHIMP_strong.l3d",            //
	"C_CHIMP_thin.l3d",              //
	"C_CHIMP_weak.l3d",              //
	"C_Cow_Boned.l3d",               //
	"C_Cow_Evil.l3d",                //
	"C_Cow_Fat.l3d",                 //
	"C_Cow_Good.l3d",                //
	"C_Cow_Strong.l3d",              //
	"C_Cow_Thin.l3d",                //
	"C_Cow_Weak.l3d",                //
	"C_gorilla_boned_base.l3d",      //
	"C_gorilla_boned_evil.l3d",      //
	"C_gorilla_boned_fat.l3d",       //
	"C_gorilla_boned_good.l3d",      //
	"C_gorilla_boned_strong.l3d",    //
	"C_gorilla_boned_thin.l3d",      //
	"C_gorilla_boned_weak.l3d",      //
	"C_leopard_base.l3d",            //
	"C_leopard_evil.l3d",            //
	"C_leopard_fat.l3d",             //
	"C_leopard_good.l3d",            //
	"C_leopard_strong.l3d",          //
	"C_leopard_thin.l3d",            //
	"C_leopard_weak.l3d",            //
	"C_Lion_base.l3d",               //
	"C_Lion_evil.l3d",               //
	"C_Lion_fat.l3d",                //
	"C_Lion_good.l3d",               //
	"C_Lion_strong.l3d",             //
	"C_Lion_thin.l3d",               //
	"C_Lion_weak.l3d",               //
	"C_mandrill_boned_base.l3d",     //
	"C_mandrill_boned_evil.l3d",     //
	"C_mandrill_boned_fat.l3d",      //
	"C_mandrill_boned_good.l3d",     //
	"C_mandrill_boned_strong.l3d",   //
	"C_mandrill_boned_thin.l3d",     //
	"C_mandrill_boned_weak.l3d",     //
	"C_Polar_Bear_Base.L3D",         //
	"C_Polar_Bear_Evil.L3D",         //
	"C_Polar_Bear_Fat.L3D",          //
	"C_Polar_Bear_Good.L3D",         //
	"C_Polar_Bear_Strong.L3D",       //
	"C_Polar_Bear_Thin.L3D",         //
	"C_Polar_Bear_Weak.L3D",         //
	"C_rhino_base.l3d",              //
	"C_rhino_evil.l3d",              //
	"C_rhino_fat.l3d",               //
	"C_rhino_good.l3d",              //
	"C_rhino_strong.l3d",            //
	"C_rhino_thin.l3d",              //
	"C_rhino_weak.l3d",              //
	"C_Sheep_Base.l3d",              //
	"C_Sheep_evil.l3d",              //
	"C_Sheep_fat.l3d",               //
	"C_Sheep_good.l3d",              //
	"C_Sheep_strong.l3d",            //
	"C_Sheep_thin.l3d",              //
	"C_Sheep_weak.l3d",              //
	"C_Tortoise_Base.l3d",           //
	"C_Tortoise_Evil.l3d",           //
	"C_Tortoise_Fat.l3d",            //
	"C_Tortoise_Good.l3d",           //
	"C_Tortoise_Strong.l3d",         //
	"C_Tortoise_Thin.l3d",           //
	"C_Tortoise_Weak.l3d",           //
	"C_wolf_base.l3d",               //
	"C_wolf_evil2.l3d",              //
	"C_wolf_fat.l3d",                //
	"C_wolf_good.l3d",               //
	"C_wolf_strong.l3d",             //
	"C_wolf_thin.l3d",               //
	"C_wolf_weak.l3d",               //
	"C_zebra_base.l3d",              //
	"C_zebra_evil.l3d",              //
	"C_zebra_fat.l3d",               //
	"C_zebra_good.l3d",              //
	"C_zebra_strong.l3d",            //
	"C_zebra_thin.l3d",              //
	"C_zebra_weak.l3d",              //
	"LAST",                          //
};

static char CreatureBodyFiles[][0x100] = {
	"Bape.CBN",       //
	"bbear.CBN",      //
	"bchimp.CBN",     //
	"Bcow.CBN",       //
	"bgorilla.CBN",   //
	"Bgreek.CBN",     //
	"Bhorse.CBN",     //
	"bleopard.CBN",   //
	"Blion.CBN",      //
	"bmandrill.CBN",  //
	"BPolarBear.CBN", //
	"brhino.CBN",     //
	"bsheep.CBN",     //
	"btiger.CBN",     //
	"btort.CBN",      //
	"bwolf.CBN",      //
	"bzebra.CBN",     //
	"LAST",           //
};
#endif

#if defined(VERSION_BW1W100)
static SafeDiscRecord Record = {
	/* Seed */ {{0xc3, 0x06, 0x3d, 0x09, 0x7b, 0x13, 0x4f, 0x09, 0xce, 0x2c, 0x08, 0x12,
                 0x29, 0x16, 0xe9, 0x1b, 0x08, 0x1b, 0xf4, 0x24, 0xcf, 0x21, 0x31, 0x2e}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x50, // runtime value
	/* Unk1 */ {0x2f, 0xab, 0x40, 0x19, 0x36, 0xe8, 0x49, 0xda, 0x3c, 0x25, 0x53, 0x9f, 0x43, 0x62, 0x5c, 0x65,
                0x4a, 0x9f, 0x65, 0x44, 0x53, 0xc2, 0x6e, 0x71, 0x57, 0x19, 0x78, 0x5c, 0x0e, 0x19, 0x81},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0x47, 0x92, 0xb8, 0xe3, 0x73, 0xdd, 0x6c, 0xfe, 0xa5, 0x50, 0x42, 0x21, 0xab, 0xc3, 0xd7, 0x0e},
	/* ANext */ 0xc2b3acb7,    // runtime value
	/* BWrapVA */ 0xcb6096a2,  // runtime value
	/* CDesc */ 0xd4f4cb73,    // runtime value
	/* DRuntime */ 0xdcc3cd18, // runtime value
	/* EStatic */ 0xe6f5a90b,
	/* FStatic */ 0xf032afce,
	/* Cookie */ {0x9d, 0xa4, 0x04, 0xb3, 0x36}, // runtime value
	/* Pad3 */ 0x00,
};
#elif defined(VERSION_BW1W110)
static SafeDiscRecord Record = {
	/* Seed */ {{0x27, 0x5a, 0xf1, 0x73, 0xa7, 0x93, 0x8f, 0x73, 0xce, 0x6e, 0x9c, 0xe7,
                 0x55, 0x4b, 0xb6, 0x5b, 0x98, 0x68, 0xc5, 0xcf, 0xc3, 0xc2, 0xb6, 0x43}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x14, // runtime value
	/* Unk1 */ {0x77, 0x99, 0x2b, 0x39, 0xd1, 0x8a, 0x9f, 0x5e, 0x2b, 0x7c, 0x13, 0x87, 0x85, 0x6d, 0x87, 0xa9,
                0xdf, 0x5e, 0xfb, 0xf4, 0x7c, 0x72, 0x6f, 0x5d, 0x93, 0x41, 0xe3, 0xf2, 0xbe, 0x69, 0x57},
	/* Type */ 0x00000010,
	/* Magic */ 0x419f56e7,
	/* Unk2 */ {0xa8, 0x11, 0x66, 0x23, 0x84, 0x32, 0xd9, 0x6a, 0x66, 0xb3, 0x16, 0xd3, 0x96, 0x61, 0xc7, 0x32},
	/* ANext */ 0xd6cd2dce,    // runtime value
	/* BWrapVA */ 0xf60365da,  // runtime value
	/* CDesc */ 0x6acd5ca1,    // runtime value
	/* DRuntime */ 0xde3b2378, // runtime value
	/* EStatic */ 0x00000000,
	/* FStatic */ 0xc47baef6,
	/* Cookie */ {0x1d, 0x82, 0x74, 0x3a, 0x44}, // runtime value
	/* Unk3 */ {0xdc, 0x65, 0xae, 0x54, 0x62, 0x60, 0xcf, 0xaa},
};
#elif defined(VERSION_BW1W120)
static SafeDiscRecord Record = {
	/* Seed */ {{0x8b, 0xe8, 0x6a, 0xff, 0x94, 0xdf, 0xf7, 0xe2, 0xd7, 0x08, 0x9d, 0x1d,
                 0xad, 0x11, 0x2f, 0xc4, 0x82, 0x1a, 0xc2, 0xa7, 0x5f, 0x23, 0x61, 0x89}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x32,
	/* Unk1 */ {0x2c, 0x04, 0x6b, 0x0b, 0x35, 0xbb, 0x4e, 0xe3, 0x3d, 0x5e, 0x30, 0xba, 0x46, 0xfd, 0x13, 0x8c,
                0x4f, 0x90, 0xf5, 0x00, 0x00, 0x00, 0x00, 0x25, 0xc9, 0xf3, 0xd4, 0x3e, 0x61, 0xaa, 0xba, 0x17,
                0x6a, 0x49, 0x9c, 0x40, 0xb2, 0xc6, 0x03, 0x60, 0x9a, 0x53, 0x7f, 0xc1, 0x7b, 0xc3, 0x61, 0x9a,
                0x84, 0x66, 0x43, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0xfb, 0x1d, 0x28, 0x45,
                0x8a, 0xf0, 0x09, 0x18, 0x1e, 0xad, 0x78, 0x9b, 0xdc, 0x85, 0x0d, 0xa0, 0xb9, 0xf4, 0x92, 0xa0,
                0xb9, 0xf4, 0x92, 0x7d, 0xc2, 0x6b, 0x74, 0x52, 0xcb, 0x0e, 0x56},
};
#elif defined(VERSION_BW1W130)
static SafeDiscRecord Record = {
	/* Seed */ {{0xc3, 0xf3, 0x92, 0xff, 0xd9, 0xf4, 0xaf, 0xe9, 0x3a, 0x15, 0x3d, 0x16,
                 0x77, 0x2a, 0x6f, 0xd3, 0xa9, 0x3f, 0xa2, 0xbd, 0xeb, 0x54, 0xe1, 0xa7}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0x22,
	/* Unk1 */ {0x6a, 0x24, 0x90, 0x5d, 0x7f, 0x7b, 0x7a, 0x94, 0x94, 0xbe, 0x64, 0xd2, 0xa9, 0xfd, 0x4e, 0x09,
                0xbf, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00, 0x77, 0xc4, 0x41, 0x25, 0x7d, 0xe9, 0x8a, 0x0b, 0xbb,
                0xfe, 0xc9, 0xf5, 0xc0, 0x57, 0x3a, 0x04, 0x31, 0xe0, 0xc8, 0xde, 0x2f, 0x29, 0x02, 0xc8, 0x65,
                0x3e, 0xc1, 0xb2, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xa7, 0xb6, 0x5d, 0x28, 0xe3,
                0x4a, 0x86, 0xe4, 0x5c, 0xe1, 0xac, 0xcf, 0x15, 0x89, 0x6d, 0xcf, 0xc1, 0xbd, 0x17, 0x2c, 0xc1,
                0xbd, 0x17, 0x2c, 0xfb, 0xd2, 0x2a, 0x16, 0x35, 0xe8, 0x69, 0x00},
};
#elif defined(VERSION_BW1WCI)
static SafeDiscRecord Record = {
	/* Seed */ {{0xb2, 0x53, 0xbc, 0x27, 0xf2, 0xb0, 0x3a, 0x27, 0x94, 0x55, 0xfe, 0x4f,
                 0x76, 0xca, 0x50, 0x77, 0xcc, 0x4e, 0xf1, 0x9e, 0x7a, 0xa2, 0xad, 0xc6}},
	/* Pad0 */ {0x00, 0x00, 0x00, 0x00},
	/* Checksum */ 0xdb,
	/* Unk1 */ {0x49, 0x26, 0x16, 0x91, 0x9d, 0xe2, 0x3d, 0x43, 0xf1, 0x9e, 0x65, 0xf5, 0x44, 0x5b, 0x8d, 0xa6,
                0x98, 0x17, 0xb5, 0xa8, 0x1e, 0x15, 0xdc, 0x6a, 0x71, 0xf4, 0x04, 0x40, 0xcf, 0xef, 0x2c, 0x00,
                0x00, 0x00, 0x00, 0xe0, 0x06, 0x69, 0x78, 0xd2, 0x8e, 0x81, 0xa3, 0x84, 0xe2, 0x3d, 0xcb, 0xc0,
                0x37, 0xac, 0x03, 0xec, 0x89, 0xb6, 0x1a, 0xfa, 0xec, 0x56, 0x42, 0xea, 0x31, 0x2f, 0x6a, 0x02,
                0xd8, 0x88, 0x91, 0x10, 0x00, 0x00, 0x00, 0x74, 0x69, 0xf5, 0xe1, 0x70, 0x3a, 0x8d, 0x5a, 0x21,
                0xd3, 0xf7, 0xe0, 0x16, 0xdf, 0x7f, 0xe8, 0x31, 0xb4, 0x46, 0xab, 0x41, 0x27, 0x71, 0x2b},
};
#endif

uint64_t GetInfoFileChecksum2()
{
	uint32_t sum = 0;
	uint32_t weighted = 0;
	FILE*    file = fopen(MPFE_CONNECTION_STATUS_INFO_FILE, "rb");
	if (file != NULL)
	{
		unsigned long length = _filelength((_fileno)(file));
		for (unsigned long i = 0; i < length; i++)
		{
			unsigned char c;
			fread(&c, 1, 1, file);
			sum += c;
			weighted += c * 3 + c % 35;
		}
		fclose(file);
#ifdef VERSION_BW1W100
		uint64_t checksum = (uint64_t)weighted | ((uint64_t)sum << 32);
#else
		uint64_t checksum = (uint64_t)weighted | ((uint64_t)(sum + length) << 32);
#endif
		CHECK_PROTECTION_MARKER(Record);
		return checksum;
	}
	abort();
}

uint64_t GetInfoFileChecksum()
{
	uint32_t sum = 0;
	uint32_t weighted = 0;
	FILE*    file = fopen(MPFE_CONNECTION_STATUS_INFO_FILE, "rb");
	if (file != NULL)
	{
		unsigned long  length = _filelength((_fileno)(file));
		unsigned char* buffer = new unsigned char[length];
		fread(buffer, length, 1, file);
		fclose(file);
		for (unsigned long i = 0; i < length; i++)
		{
			uint32_t c = buffer[i];
			sum += c;
			weighted += c % 99 + c / 20 + c * 6;
		}
		delete[] buffer;
#ifdef VERSION_BW1W100
		return (uint64_t)sum | ((uint64_t)weighted << 32);
#else
		return (uint64_t)(length + sum) | ((uint64_t)weighted << 32);
#endif
	}
	abort();
}

#ifndef VERSION_BW1W100
unsigned __int64 GetCreatureFileChecksum()
{
	uint32_t checksum[2];
	checksum[0] = 0;
	checksum[1] = 0;
	for (int i = 0; strcmp(CreatureBodyFiles[i], "LAST") != 0; i++)
	{
		char path[0x100];
		sprintf(path, MPFE_CONNECTION_STATUS_CREATURE_PATH "%s", CreatureBodyFiles[i]);
		FILE* file = fopen(path, "rb");
		if (file == NULL)
		{
			abort();
		}
		unsigned long  length = _filelength((_fileno)(file));
		unsigned char* buffer = new unsigned char[length];
		fread(buffer, length, 1, file);
		fclose(file);
		unsigned long j;
		for (j = 0; j < length; j++)
		{
			uint32_t c = buffer[j];
			checksum[0] += c;
			checksum[1] += c % 23 + c / 45 + c * 32;
		}
		RenderLoadingFrame(true);
		checksum[0] += j * checksum[1] + length;
		delete[] buffer;
	}
	return (uint64_t)checksum[0] | ((uint64_t)checksum[1] << 32);
}
#endif

void MPFEConnectionType::ReleaseDialup()
{
	if (DialupConnection != NULL)
	{
		DialupConnection->Release();
		DialupConnection = NULL;
	}
}

bool MPFEConnectionType::DialupPresent()
{
	return DialupConnection != NULL ? true : false;
}

#ifndef VERSION_BW1W100
bool MPFEConnectionType::LANPresent()
{
	for (LHLinkedListIterator<MPFEConnectionType*> it = ConnectionList.GetStart(); it; it++)
	{
		if (it.Get()->Type == MPFE_CONNECTION_TYPE_LAN)
		{
			return true;
		}
	}
	return false;
}
#endif

void MPFEConnectionType::InitialiseConnectionList()
{
	if (ConnectionList.count != 0)
	{
		return;
	}

	DialupConnection = new Dialup;
	bool          dialupAvailable = DialupConnection->Initialise() != false;
	unsigned long forceLan = 0;
	RegistryRetrieveULong(BWSETUP_REGISTRY_KEY, "ForceLan", &forceLan);
	if (strcmp(GetIPAddress(), "127.0.0.1") != 0 || forceLan != 0)
	{
		MPFEConnectionType* lan = new MPFEConnectionType;
		lan->ForceLan = forceLan > 0;
		strcpy(lan->Address, GetIPAddress());
		lan->Type = MPFE_CONNECTION_TYPE_LAN;
		ConnectionList.Add(lan);
	}

	if (dialupAvailable)
	{
		int               count = DialupConnection->GetNoDialUpConnections();
		int               defaultIndex = DialupConnection->GetDefaultEntryIndex();
		DIALUP_PROPERTIES properties;
		if (defaultIndex != -1 && DialupConnection->GetDialupProperties(defaultIndex, &properties))
		{
			MPFEConnectionType* entry = new MPFEConnectionType;
			entry->EntryIndex = defaultIndex;
			entry->Type = MPFE_CONNECTION_TYPE_DIALUP;
			entry->IsDefault = true;
			wcscpy(entry->Name, properties.EntryName);
			if (properties.AlreadyConnected)
			{
				strcpy(entry->Address, WCHAR2CHAR(properties.IPAddress));
			}
			entry->Connected = entry->AlreadyConnected = properties.AlreadyConnected == true;
			ConnectionList.AddToEnd(entry);
		}
		for (int i = 0; i < count; i++)
		{
			if (DialupConnection->GetDialupProperties(i, &properties) && i != defaultIndex)
			{
				MPFEConnectionType* entry = new MPFEConnectionType;
				entry->DialupProperties = properties;
				if (properties.AlreadyConnected)
				{
					strcpy(entry->Address, WCHAR2CHAR(properties.IPAddress));
				}
				wcscpy(entry->Name, properties.EntryName);
				entry->IsDefault = false;
				entry->Type = MPFE_CONNECTION_TYPE_DIALUP;
				entry->EntryIndex = i;
				entry->Connected = entry->AlreadyConnected = properties.AlreadyConnected == true;
				ConnectionList.AddToEnd(entry);
			}
		}
	}
}

void MPFEConnectionType::UpdateConnectionStates()
{
	for (LHLinkedListIterator<MPFEConnectionType*> it = ConnectionList.GetStart(); it; it++)
	{
		if (it.Get()->Type == MPFE_CONNECTION_TYPE_DIALUP)
		{
			DIALUP_PROPERTIES properties;
			if (DialupConnection->GetDialupProperties(it.Get()->EntryIndex, &properties))
			{
				it.Get()->Connected = properties.AlreadyConnected == true;
				if (properties.AlreadyConnected)
				{
					strcpy(it.Get()->Address, WCHAR2CHAR(properties.IPAddress));
				}
				else
				{
					strcpy(it.Get()->Address, "");
				}
			}
		}
	}
}

MPFEConnectionType* MPFEConnectionType::GetLANConnection()
{
	for (LHLinkedListIterator<MPFEConnectionType*> it = ConnectionList.GetStart(); it; it++)
	{
		if (it.Get()->Type == MPFE_CONNECTION_TYPE_LAN)
		{
			return it.Get();
		}
	}
	return NULL;
}

MPFEConnectionType* MPFEConnectionType::ModemConnected()
{
	UpdateConnectionStates();
	for (LHLinkedListIterator<MPFEConnectionType*> it = ConnectionList.GetStart(); it; it++)
	{
		if (it.Get()->Type == MPFE_CONNECTION_TYPE_DIALUP && it.Get()->Connected)
		{
			return it.Get();
		}
	}
	return NULL;
}

bool32_t MPFEConnectionType::DialModem(wchar_t* status_text)
{
	return DialupConnection->Connect(EntryIndex, MPFEChooseConnection::DialCallback, DialupProperties.UserName,
	                                 DialupProperties.Password, status_text);
}

void MPFEConnectionType::HangupModem()
{
	DialupConnection->Disconnect(EntryIndex);
}

void MPFEConnectionType::HangupDialledConnections()
{
	UpdateConnectionStates();
	for (LHLinkedListIterator<MPFEConnectionType*> it = ConnectionList.GetStart(); it; it++)
	{
		if (it.Get()->Type == MPFE_CONNECTION_TYPE_DIALUP && (it.Get()->Connected & !it.Get()->AlreadyConnected))
		{
			DialupConnection->Disconnect(it.Get()->EntryIndex);
			it.Get()->Connected = false;
			it.Get()->AlreadyConnected = false;
		}
	}
}

MPFEConnectionStatus MPFEConnectionStatus::Status;

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
bool MPFEConnectionStatus::UsingInternetLobby()
{
	return type == LOBBY_TYPE_INTERNET ? true : false;
}

bool MPFEConnectionStatus::UsingLanLobby()
{
	return type == LOBBY_TYPE_LAN ? true : false;
}

bool MPFEConnectionStatus::UsingDialupConnection()
{
	if (Connection == NULL)
	{
		return false;
	}
	return Connection->Type == MPFE_CONNECTION_TYPE_DIALUP ? true : false;
}

bool MPFEConnectionStatus::UsingLanConnection()
{
	if (Connection == NULL)
	{
		return false;
	}
	return Connection->Type == MPFE_CONNECTION_TYPE_LAN ? true : false;
}
#endif

void MPFEConnectionStatus::SetConnection(MPFEConnectionType* connection)
{
	Connection = connection;
	if (connection != NULL)
	{
		DialogBoxBase::HideAll();
		if (connection->Type == MPFE_CONNECTION_TYPE_LAN)
		{
			MPFEFindGame::Instance.Show();
			return;
		}
		connection->Connected = true;
		SetLobbyType(LOBBY_TYPE_INTERNET);
	}
}

void MPFEConnectionStatus::SetLobbyType(LOBBY_TYPE lobby_type)
{
	type = lobby_type;
	if (lobby_type == _LOBBY_TYPE_COUNT)
	{
		return;
	}
	DialogBoxBase::HideAll();
	if (type != LOBBY_TYPE_INTERNET)
	{
		MPFEData::Data.Reset();
		if (MPFEData::Data.Layer->Connect())
		{
			MPFEChannelSelector::Instance.Show();
		}
	}
	else
	{
		MPFELogin::Instance.Show();
	}
}

void MPFEConnectionStatus::LeaveLobbyScreen()
{
	DialogBoxBase::HideAll();
	MPFEData::Data.Layer->Disconnect();
	MPFEChannelSelector::Instance.RemoveAllChannels();
	if (type == LOBBY_TYPE_INTERNET)
	{
		MPFELogin::Instance.Show();
		return;
	}
	type = _LOBBY_TYPE_COUNT;
	MPFEFindGame::Instance.Show();
}

void MPFEConnectionStatus::LeaveLoginScreen()
{
	MPFEChooseConnection::AskedForIPAddress = false;
	type = _LOBBY_TYPE_COUNT;
	DialogBoxBase::HideAll();
	if (Connection->Type == MPFE_CONNECTION_TYPE_LAN)
	{
		MPFEFindGame::Instance.Show();
		return;
	}
	if (Connection->AlreadyConnected)
	{
		LeaveConnectionScreen();
		return;
	}
	MPFEConnectionType::HangupDialledConnections();
	MPFEChooseConnection::Instance.Show();
}

void MPFEConnectionStatus::LeaveLobbyTypeScreen()
{
	MPFEChooseConnection::AskedForIPAddress = false;
	DialogBoxBase::HideAll();
	MPFEConnectionType::HangupDialledConnections();
	MPFEChooseConnection::Instance.Show();
}

void MPFEConnectionStatus::LeaveConnectionScreen()
{
	DialogBoxBase::HideAll();
	Connection = NULL;
	FrontEnd::InMultiplayerScreens = false;
}

void MPFEConnectionStatus::DoLogin()
{
	MPFEData::Data.Reset();
	MPFEData::Data.Layer->Connect();
}

void MPFEConnectionStatus::ReEnterMultiplayerScreens()
{
	MPFEChooseConnection::AskedForIPAddress = false;
	FrontEnd::InMultiplayerScreens = true;
	FrontEnd::MultiplayerGameRunning = false;
	DialogBoxBase::HideAll();
	if (Connection != NULL)
	{
		if (IsLanLobby())
		{
			DialogBoxBase::HideAll();
			MPFEData::Data.Layer->Disconnect();
			MPFEChannelSelector::Instance.RemoveAllChannels();
			SetLobbyType(LOBBY_TYPE_LAN);
		}
		else
		{
			LeaveLobbyScreen();
		}
	}
	else
	{
		SetLobbyType(_LOBBY_TYPE_COUNT);
		MPFEChooseConnection::Instance.Show();
	}
}

void MPFEConnectionStatus::StartMultiplayerScreens()
{
	MPFEChooseConnection::AskedForIPAddress = false;
	FrontEnd::InMultiplayerScreens = true;
	FrontEnd::MultiplayerGameRunning = false;
	DialogBoxBase::HideAll();
	MPFEChooseConnection::Instance.Show();
}

void MPFEConnectionStatus::StartGame()
{
	FrontEnd::InMultiplayerScreens = false;
	FrontEnd::MultiplayerGameRunning = true;
	DialogBoxBase::HideAll();
}

bool MPFEConnectionStatus::IsLanLobby()
{
	return type == LOBBY_TYPE_LAN;
}

bool MPFEConnectionStatus::IsInternetLobby()
{
	return type == LOBBY_TYPE_INTERNET;
}

bool MPFEConnectionStatus::IsInALobby()
{
	return type != _LOBBY_TYPE_COUNT;
}
