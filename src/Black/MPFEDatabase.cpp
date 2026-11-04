#include "MPFEDatabase.h"

#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy */
#include <uchar.h>  /* For char16_t, used by LHNetBase.h */

#include "ColourConstants.h"  /* For White */
#include "LandscapeDetails.h" /* For struct LandscapeDetails */
#include "LHNetBase.h"        /* For LHNetBase::Instance */

char*                           MPFEDatabase::OnlineMapsPath = ".\\Online Maps\\";
LHLinkedList<LandscapeDetails*> MPFEDatabase::Landscapes;
DBInfo                          MPFEDatabase::Query;

MPFEDatabase::MPFEDatabase()
{
	Querying = false;
	ProgressPercentage = 0.0f;
}

MPFEDatabase::~MPFEDatabase() {}

void MPFEDatabase::InitFromDisk()
{
	LandscapeDetails::GetFromDisk(&Landscapes);
}

MPFE_DATABASE_RESULT MPFEDatabase::RefreshDatabase()
{
	if (!Querying)
	{
		return MPFE_DATABASE_RESULT_IDLE;
	}

	DBSTATUS status = db_get_status_async(&Query);
	if (status == DBSTATUS_COMPLETE)
	{
		DatabaseComplete();
		return MPFE_DATABASE_RESULT_COMPLETE;
	}
	if (status == DBSTATUS_ERROR)
	{
		DatabaseError();
		return MPFE_DATABASE_RESULT_ERROR;
	}
	if (Query.ResultSize == 0)
	{
		ProgressPercentage = 0.0f;
		return MPFE_DATABASE_RESULT_PENDING;
	}
	ProgressPercentage = Query.RequestSize * (Query.ResultSize / 100.0f);
	return MPFE_DATABASE_RESULT_PENDING;
}

void MPFEDatabase::SaveToDisk()
{
	LandscapeDetails::DumpListToDisk(".\\Online Maps\\localmaps.txt", &Landscapes);
}

MPFE_DATABASE_RESULT MPFEDatabase::RepopulateDatabase()
{
	if (db_execute_transaction_async(&Query, "BWMAPS_GETLIST", LHNetBase::Instance.User, NULL) == DBSTATUS_ERROR)
	{
		DatabaseError();
		return MPFE_DATABASE_RESULT_ERROR;
	}
	Querying = true;
	ProgressPercentage = 0.0f;
	return MPFE_DATABASE_RESULT_PENDING;
}

void MPFEDatabase::StopQuerying()
{
	if (Querying)
	{
		Query.Reset();
		Querying = false;
		ProgressPercentage = 0.0f;
	}
}

LandscapeDetails* MPFEDatabase::GetLandscapeDetailsforNumber(unsigned long id)
{
	for (LHLinkedNode<LandscapeDetails*>* node = Landscapes.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->ID == id)
		{
			return node->payload;
		}
	}
	return NULL;
}

void MPFEDatabase::ParseDatabaseInformation()
{
	Landscapes.DeleteAll();

	unsigned long rows;
	unsigned long columns;
	char**        table;
	db_get_result(&Query, &columns, &rows, &table);
	for (unsigned long row = 0; row < rows; row++)
	{
		LandscapeDetails* details = new LandscapeDetails;
		details->ID = atoi(table[row * columns]);
		strcpy(details->Name, table[row * columns + 1]);
		strcpy(details->FileName, table[row * columns + 2]);
		details->NumTeams = atoi(table[row * columns + 3]);
		strcpy(details->ServerAddress, table[row * columns + 4]);
		strcpy(details->ServerPath, table[row * columns + 5]);
		details->MapOnDisk = details->AreWeOnDisk(true);
		details->ThumbnailOnDisk = details->AreWeOnDisk(false);
		details->FromDatabase = true;
		Landscapes.AddToEnd(details);
	}
	if (rows > 0)
	{
		db_free_data(table);
	}
}

void MPFEDatabase::DatabaseError()
{
	if (Querying)
	{
		Query.Reset();
		Querying = false;
	}
}

void MPFEDatabase::DatabaseComplete()
{
	if (Querying)
	{
		ProgressPercentage = 100.0f;
		ParseDatabaseInformation();
		SaveToDisk();
		Querying = false;
	}
}
