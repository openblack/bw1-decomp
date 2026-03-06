#include "PSysManager.h"
#include "JPSysInterface.h"

// win1.41 00672c90 mac 10423cc0 PSysManager::GetSaveType(void)
uint32_t PSysManager::GetSaveType()
{
    return 0;
}

// win1.41 00672ca0 mac 10423d00 PSysManager::GetDebugText(void)
char* PSysManager::GetDebugText()
{
    return 0;
}

// win1.41 00672cb0 mac 103dcfb0 PSysManager::_dt(void)
PSysManager::~PSysManager()
{
}

// win1.41 006735c0 mac 103dc100 PSysManager::GetPlayer(void)
GPlayer* PSysManager::GetPlayer()
{
    return 0;
}

// win1.41 00673690 mac inlined GJPSysInterface::Process(PSysProcessInfo *)
void GJPSysInterface::Process(PSysProcessInfo* param_1)
{
}

// win1.41 006736b0 mac inlined GJPSysInterface::Process(PSysProcessInfo *const, unsigned int)
uint32_t GJPSysInterface::Process(const PSysProcessInfo* param_1, uint32_t param_2)
{
    return 0;
}

// win1.41 00673700 mac inlined GJPSysInterface::Draw(bool)
void GJPSysInterface::Draw(bool param_1)
{
}
