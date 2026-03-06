#include "InfluenceInfo.h"
#include "InterfaceMessageBuffer.h"
#include "Interface.h"
#include "InterfaceFlags.h"
#include "InterfaceHandState.h"
#include "InterfaceCollide.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"

// win1.41 005cd110 mac 100fd4a0 GInfluenceInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GInfluenceInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 005cd150 mac 100fd4f0 GInfluenceInfo::_dt(void)
GInfluenceInfo::~GInfluenceInfo()
{
}

// win1.41 005ce2a0 mac 10368cb0 GInterfaceMessageBuffer::_dt(void)
GInterfaceMessageBuffer::~GInterfaceMessageBuffer()
{
}

// win1.41 005ce2c0 mac 10069130 GInterface::GetPlayer(void)
GPlayer* GInterface::GetPlayer()
{
    return 0;
}

// win1.41 005ce2d0 mac 10357dc0 GInterface::GetText(void)
const char* GInterface::GetText()
{
    return 0;
}

// win1.41 005ce2e0 mac 10074680 GInterface::IsActive( const(void))
bool GInterface::IsActive()
{
    return 0;
}

// win1.41 005ce2f0 mac 10357e00 GInterface::GetSaveType(void)
uint32_t GInterface::GetSaveType()
{
    return 0;
}

// win1.41 005ce300 mac 10357e40 GInterface::GetDebugText(void)
char* GInterface::GetDebugText()
{
    return 0;
}

// win1.41 005ce310 mac 1035c380 GInterface::_dt(void)
GInterface::~GInterface()
{
}

// win1.41 005ce340 mac 1035c820 GInterfaceFlags::_dt(void)
GInterfaceFlags::~GInterfaceFlags()
{
}

// win1.41 005ce360 mac 1035c790 InterfaceHandState::_dt(void)
InterfaceHandState::~InterfaceHandState()
{
}

// win1.41 005ce380 mac 1017a1d0 GInterfaceCollide::_dt(void)
GInterfaceCollide::~GInterfaceCollide()
{
}

// win1.41 005ce480 mac 1035c0e0 GInterface::ToBeDeleted(int)
void GInterface::ToBeDeleted(int param_1)
{
}

// win1.41 005ce4d0 mac 1035be80 GInterface::SetToZero(void)
void GInterface::SetToZero()
{
}

// win1.41 005ce670 mac 1035bd00 GInterface::Init(unsigned char)
void GInterface::Init(uint8_t player_number)
{
}

// win1.41 005ce7f0 mac 1035ba90 GInterface::InitLeash(void)
void GInterface::InitLeash()
{
}

// win1.41 005ce920 mac 1035b8b0 GInterface::SetupHand(void)
void GInterface::SetupHand()
{
}

// win1.41 005ce9e0 mac 1007b8b0 GInterface::PreDrawProcess(void)
void GInterface::PreDrawProcess()
{
}

// win1.41 005ceab0 mac 1007d9b0 GInterface::PostDrawProcess(void)
void GInterface::PostDrawProcess()
{
}

// win1.41 005cec10 mac 100254c0 GInterface::Process(void)
void GInterface::Process()
{
}

// win1.41 005cec50 mac 1035b240 GInterface::Get3DSoundPos(LHPoint *)
int GInterface::Get3DSoundPos(LHPoint* param_1)
{
    return 0;
}

// win1.41 005cedc0 mac 1035acc0 GInterfaceStatus::SetActive(int)
void GInterfaceStatus::SetActive(int param_1)
{
}

// win1.41 005d0490 mac 103585e0 GInterface::Save(GameOSFile &)
bool GInterface::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005d04d0 mac 10358550 GInterface::Load(GameOSFile &)
bool GInterface::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005d0510 mac 10358340 GInterface::ResolveLoad(void)
void GInterface::ResolveLoad()
{
}

// win1.41 005d0590 mac 103581e0 GInterface::SaveExtraData(GameOSFile &)
void GInterface::SaveExtraData(GameOSFile* param_1)
{
}

// win1.41 005d0610 mac 10084060 GInterface::UpdateHandRenderCollide(void)
void GInterface::UpdateHandRenderCollide()
{
}

// win1.41 005d29c0 mac 10026ad0 GInterfaceStatus::ResetActionState(void)
void GInterfaceStatus::ResetActionState()
{
}

// win1.41 005d9130 mac 100315f0 GInterface::UpdateAllLeashes(void)
void GInterface::UpdateAllLeashes()
{
}

// win1.41 005d9d80 mac 10004300 GInterface::SendMessageA(INTERFACE_MESSAGE_TYPES, LHCoord *)
bool GInterface::SendMessageA(INTERFACE_MESSAGE_TYPES param_1, LHCoord* param_2)
{
    return 0;
}

// win1.41 005d9e80 mac 10368b50 GInterfaceMessageBuffer::Init(unsigned short)
void GInterfaceMessageBuffer::Init(unsigned short param_1)
{
}

// win1.41 005d9f10 mac 1009c3b0 GInterfaceMessageBuffer::Add(INTERFACE_MESSAGE_TYPES, GInterfaceCollide *, LHCoord *)
bool GInterfaceMessageBuffer::Add(INTERFACE_MESSAGE_TYPES param_1, GInterfaceCollide* param_2, LHCoord* param_3)
{
    return 0;
}

// win1.41 005db860 mac 1036f590 GInterfaceStatus::GInterfaceStatus(void)
// GInterfaceStatus::GInterfaceStatus()
// {
// }

// win1.41 005db930 mac 1037ad30 GLeashStatus::GetSaveType(void)
uint32_t GLeashStatus::GetSaveType()
{
    return 0;
}

// win1.41 005db940 mac 1037aca0 GLeashStatus::_dt(void)
GLeashStatus::~GLeashStatus()
{
}

// win1.41 005db960 mac 1036bdc0 GInterfaceStatus::GetText(void)
const char* GInterfaceStatus::GetText()
{
    return 0;
}

// win1.41 005db970 mac 1036be00 GInterfaceStatus::GetSaveType(void)
uint32_t GInterfaceStatus::GetSaveType()
{
    return 0;
}

// win1.41 005db980 mac 1036be40 GInterfaceStatus::GetDebugText(void)
char* GInterfaceStatus::GetDebugText()
{
    return 0;
}

// win1.41 005db990 mac 1036f480 GInterfaceStatus::_dt(void)
GInterfaceStatus::~GInterfaceStatus()
{
}

// win1.41 005dba00 mac 1036f310 GInterfaceStatus::SetToZero(GInterface *)
void GInterfaceStatus::SetToZero(GInterface* param_1)
{
}

// win1.41 005dbb00 mac 1036f260 GInterfaceStatus::ToBeDeleted(int)
void GInterfaceStatus::ToBeDeleted(int param_1)
{
}

// win1.41 005dbc20 mac 10058730 GInterfaceStatus::GetPlayer(void)
GPlayer* GInterfaceStatus::GetPlayer()
{
    return 0;
}

// win1.41 005dc130 mac 100755c0 GInterfaceStatus::GetFirstObjectInCurrentHand(void)
Object* GInterfaceStatus::GetFirstObjectInCurrentHand()
{
    return 0;
}

// win1.41 005dc2f0 mac 1007b2f0 GInterfaceStatus::IsSpaceInHands(void)
bool GInterfaceStatus::IsSpaceInHands()
{
    return 0;
}

// win1.41 005dc8b0 mac 10035b20 GInterfaceStatus::GetInterface(void)
GInterface* GInterfaceStatus::GetInterface()
{
    return 0;
}

// win1.41 005dc8f0 mac 1036d0e0 GInterfaceStatus::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void GInterfaceStatus::UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2)
{
}

// win1.41 005dca50 mac 1036c810 GInterfaceStatus::Save(GameOSFile &)
bool GInterfaceStatus::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005dcdc0 mac 1036c160 GInterfaceStatus::Load(GameOSFile &)
bool GInterfaceStatus::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005dd130 mac 1036c080 GInterfaceStatus::SaveExtraData(GameOSFile &)
void GInterfaceStatus::SaveExtraData(GameOSFile* param_1)
{
}

// win1.41 005dd190 mac 1036c020 GInterfaceStatus::ResolveLoad(void)
void GInterfaceStatus::ResolveLoad()
{
}

// win1.41 005dd1a0 mac 1036bf20 GInterfaceStatus::Init(unsigned char, GInterface *)
void GInterfaceStatus::Init(uint8_t player_number, GInterface* iface)
{
}
