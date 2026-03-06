#include "MPFEClanList.h"
#include "MPFEChangeClanRequest.h"
#include "MPFECondtionUpdateMessage.h"
#include "MPFEConnectionStatus.h"
#include "MPFEDatabase.h"
#include "MPFEDownloads.h"
#include "MPFEFileTransferMessage.h"
#include "MPFEFindGame.h"
#include "MPFEStartGameOkayToStartMessage.h"
#include "MPFEStartGameReadyMessage.h"
#include "MPFEStartGameTransferFilesMessage.h"
#include "MPFEStartGameNowMessage.h"
#include "MPFEDisconnectNowMessage.h"
#include "MPFELogin.h"

// win1.41 0062bf30 mac 10396a90 MPFEClanList::_dt(void)
MPFEClanList::~MPFEClanList()
{
}

// win1.41 0062c160 mac 10397200 MPFEChangeClanRequest::_dt(void)
MPFEChangeClanRequest::~MPFEChangeClanRequest()
{
}

// win1.41 0062c860 mac inlined MPFECondtionUpdateMessage::_dt(void)
MPFECondtionUpdateMessage::~MPFECondtionUpdateMessage()
{
}

// win1.41 0062dab0 mac 103a1860 MPFEConnectionStatus::IsLanLobby(void)
bool MPFEConnectionStatus::IsLanLobby()
{
    return 0;
}

// win1.41 0062dac0 mac 103a1810 MPFEConnectionStatus::IsInternetLobby(void)
bool MPFEConnectionStatus::IsInternetLobby()
{
    return 0;
}

// win1.41 0062e100 mac 103a3ce0 MPFEDatabase::MPFEDatabase(void)
MPFEDatabase::MPFEDatabase()
{
}

// win1.41 0062e4f0 mac 103a35b0 MPFEDatabase::DatabaseError(void)
void MPFEDatabase::DatabaseError()
{
}

// win1.41 0062e510 mac 103a3520 MPFEDatabase::DatabaseComplete(void)
void MPFEDatabase::DatabaseComplete()
{
}

// win1.41 0062e580 mac 103a4cc0 MPFEDownloads::MPFEDownloads(void)
MPFEDownloads::MPFEDownloads()
{
}

// win1.41 0062e740 mac 103a49b0 MPFEDownloads::FileCompleted(void)
void MPFEDownloads::FileCompleted()
{
}

// win1.41 0062e750 mac 103a4970 MPFEDownloads::FileError(void)
void MPFEDownloads::FileError()
{
}

// win1.41 0062f4a0 mac 103a5220 MPFEFileTransferMessage::_dt(void)
MPFEFileTransferMessage::~MPFEFileTransferMessage()
{
}

// win1.41 0062f650 mac 103a5d40 MPFEFindGame::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void MPFEFindGame::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0062f8c0 mac 103a5d10 MPFEFindGame::Destroy(void)
void MPFEFindGame::Destroy()
{
}

// win1.41 0062fb90 mac 10393eb0 MPFEStartGameOkayToStartMessage::_dt(void)
MPFEStartGameOkayToStartMessage::~MPFEStartGameOkayToStartMessage()
{
}

// win1.41 0062fd00 mac 103a7130 MPFEStartGameReadyMessage::_dt(void)
MPFEStartGameReadyMessage::~MPFEStartGameReadyMessage()
{
}

// win1.41 00630050 mac 103a6e30 MPFEStartGameTransferFilesMessage::_dt(void)
MPFEStartGameTransferFilesMessage::~MPFEStartGameTransferFilesMessage()
{
}

// win1.41 00630170 mac 10396930 MPFEStartGameNowMessage::_dt(void)
MPFEStartGameNowMessage::~MPFEStartGameNowMessage()
{
}

// win1.41 006302c0 mac 10393c20 MPFEDisconnectNowMessage::_dt(void)
MPFEDisconnectNowMessage::~MPFEDisconnectNowMessage()
{
}

// win1.41 00630580 mac 103a80e0 MPFELogin::MPFELogin(void)
MPFELogin::MPFELogin()
{
}

// win1.41 00630610 mac 103a7d90 MPFELogin::InitControls(void)
void MPFELogin::InitControls()
{
}

// win1.41 006307f0 mac 103a7750 MPFELogin::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void MPFELogin::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 00630d60 mac 103a7720 MPFELogin::Destroy(void)
void MPFELogin::Destroy()
{
}
