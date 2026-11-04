#include "MPFECreatureDownload.h"

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strcmp, strlen, strcpy, memcpy, _strnicmp */
#include <uchar.h>  /* For char16_t, used by LHNetBase.h */

#include "ColourConstants.h" /* For White */
#include "CellSize.h"        /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>

#include "LHNetBase.h"         /* For LHNetBase::Instance */
#include "MPFEData.h"          /* For MPFEData::Data */
#include "MPFEStartGameData.h" /* For struct MPFEStartGameData */
#include "ZipData.h"           /* For class ZipData */

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string>
#endif

MPFECreatureDownload::MPFECreatureDownload()
{
	UserData = NULL;
	CreatureFile = NULL;
	UserDataLen = 0;
	CreatureFileSize = 0;
}

MPFECreatureDownload::~MPFECreatureDownload()
{
	if (CreatureFile != NULL)
	{
		delete[] CreatureFile;
		CreatureFile = NULL;
	}
	CreatureFileSize = 0;
	if (UserData != NULL)
	{
		delete[] UserData;
		UserData = NULL;
	}
	UserDataLen = 0;
	Alignment = 0.0f;
}

void MPFECreatureDownload::Stop()
{
	Query.Reset();
	Querying = false;
	if (CreatureFile != NULL)
	{
		delete[] CreatureFile;
		CreatureFile = NULL;
	}
	CreatureFileSize = 0;
	if (UserData != NULL)
	{
		delete[] UserData;
		UserData = NULL;
	}
	UserDataLen = 0;
	Alignment = 0.0f;
}

MPFE_CREATURE_DOWNLOAD_RESULT MPFECreatureDownload::Start(unsigned long id)
{
	char transaction[200];
	sprintf(transaction, "CLANGETCFILE %u", id);
	Querying = true;
	if (db_execute_transaction_async(&Query, transaction, LHNetBase::Instance.User, NULL) == DBSTATUS_ERROR)
	{
		Querying = false;
		return MPFE_CREATURE_DOWNLOAD_RESULT_ERROR;
	}
	return MPFE_CREATURE_DOWNLOAD_RESULT_PENDING;
}

MPFE_CREATURE_DOWNLOAD_RESULT MPFECreatureDownload::Refresh()
{
	if (Querying == true)
	{
		switch (db_get_status_async(&Query))
		{
		case DBSTATUS_COMPLETE: {
			MPFE_CREATURE_DOWNLOAD_RESULT result = MPFE_CREATURE_DOWNLOAD_RESULT_ERROR;
			Querying = false;

			unsigned long rows;
			unsigned long columns;
			char**        table;
			if (db_get_result(&Query, &columns, &rows, &table) == DBSTATUS_ERROR)
			{
				MPFEData::Data.D_CreatureErrorMessage();
				return result;
			}

			if (strcmp("", table[0]) == 0)
			{
				MPFEData::Data.D_CreatureUploadedNextTime();
			}
			else
			{
				char prefix[] = "CLANCREATECREATURE";
				if (_strnicmp(table[0], prefix, strlen(prefix)) == 0)
				{
					CreatureFile = new char[strlen(table[0]) + sizeof(unsigned long) + 1];
					strcpy(CreatureFile, table[0]);
					CreatureFileSize = strlen(CreatureFile) + 1;
					UserData = NULL;
					UserDataLen = 0;
					Alignment = 0.0f;
				}
				else
				{
					char*         decoded;
					unsigned long decodedLength;
					LHWebDecode(table[0], strlen(table[0]), &decoded, &decodedLength);
					ZipData zip;
					zip.SetCompressedData(decoded, decodedLength);
					LHWebEncodingFreePtr(decoded);

					MPFEStartGameData data;
					data.DecodeData(zip.UncompressedData);
					CreatureFileSize = data.CreatureLength;
					CreatureFile = new char[CreatureFileSize];
					memcpy(CreatureFile, data.CreatureData, CreatureFileSize);
					UserDataLen = data.MemoryLength;
					UserData = new char[UserDataLen];
					memcpy(UserData, data.MemoryData, UserDataLen);
					Alignment = data.GetAlignment();
				}
				result = MPFE_CREATURE_DOWNLOAD_RESULT_COMPLETE;
			}
			db_free_data(table);
			return result;
		}
		case DBSTATUS_PENDING:
			return MPFE_CREATURE_DOWNLOAD_RESULT_PENDING;
		case DBSTATUS_ERROR:
			MPFEData::Data.D_CreatureErrorMessage();
			Querying = false;
			return MPFE_CREATURE_DOWNLOAD_RESULT_ERROR;
		}
	}
	return MPFE_CREATURE_DOWNLOAD_RESULT_IDLE;
}
