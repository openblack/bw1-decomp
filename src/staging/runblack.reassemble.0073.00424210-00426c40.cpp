#include "Arena.h"
#include "GameThingWithPos.h"
#include "Object.h"
#include "MobileObjectInfo.h"
#include "ArrowInfo.h"
#include "Mobile.h"
#include "MobileObject.h"
#include "Arrow.h"
#include "GameThing.h"

// win1.41 00424780 mac 10027dd0 GArena::GetRadius(void)
float GArena::GetRadius()
{
    return 0;
}

// win1.41 00424790 mac 100ad3a0 GArena::GetText(void)
const char* GArena::GetText()
{
    return 0;
}

// win1.41 004247a0 mac 100ad3e0 GArena::GetSaveType(void)
uint32_t GArena::GetSaveType()
{
    return 0;
}

// win1.41 004247b0 mac 100ad420 GArena::GetDebugText(void)
char* GArena::GetDebugText()
{
    return 0;
}

// win1.41 004247c0 mac 100ad310 GArena::_dt(void)
GArena::~GArena()
{
}

// win1.41 004247e0 mac 103e0c80 GameThingWithPos::GetScale(void)
float GameThingWithPos::GetScale()
{
    return 0;
}

// win1.41 004247f0 mac 103e31e0 GameThingWithPos::SetScale(float)
void GameThingWithPos::SetScale(float scale)
{
}

// win1.41 00424800 mac 1015a100 GameThingWithPos::~GameThingWithPos(void)
GameThingWithPos::~GameThingWithPos()
{
}

// win1.41 00424960 mac 100ac760 GArena::ToBeDeleted(int)
void GArena::ToBeDeleted(int param_1)
{
}

// win1.41 004250d0 mac 100aa9e0 GArena::Save(GameOSFile &)
bool GArena::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004251d0 mac 100aa860 GArena::Load(GameOSFile &)
bool GArena::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00425340 mac 10368d70 Object::GetMesh( const(void))
int Object::GetMesh() const
{
    return 0;
}

// win1.41 00425920 mac 100ad790 GMobileObjectInfo::GetMesh( const(void))
uint32_t GMobileObjectInfo::GetMesh() const
{
    return 0;
}

// win1.41 00425930 mac 100ad830 GArrowInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GArrowInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00425980 mac 100ad540 GArrowInfo::_dt(void)
GArrowInfo::~GArrowInfo()
{
}

// win1.41 00425b00 mac 100adca0 Mobile::ValidForPlaceInHand(GInterfaceStatus *)
bool Mobile::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00425b10 mac 100ad890 MobileObject::GetXAngle(void)
float MobileObject::GetXAngle()
{
    return 0;
}

// win1.41 00425b20 mac 100ad8d0 MobileObject::GetZAngle(void)
float MobileObject::GetZAngle()
{
    return 0;
}

// win1.41 00425b30 mac 100ad910 MobileObject::CanBePickedUp(void)
bool MobileObject::CanBePickedUp()
{
    return 0;
}

// win1.41 00425b40 mac 100ad960 MobileObject::GetMesh( const(void))
int MobileObject::GetMesh() const
{
    return 0;
}

// win1.41 00425b50 mac 100ad9d0 MobileObject::GetTastiness(void)
uint32_t MobileObject::GetTastiness()
{
    return 0;
}

// win1.41 00425b60 mac 100ada10 MobileObject::GetCreatureMimicType(void)
uint32_t MobileObject::GetCreatureMimicType()
{
    return 0;
}

// win1.41 00425b70 mac 100ada60 MobileObject::CanBeUsedToHoldWater(Creature *)
bool MobileObject::CanBeUsedToHoldWater(Creature* param_1)
{
    return 0;
}

// win1.41 00425b90 mac 100adae0 MobileObject::CanBeStompedOnByCreature(Creature *)
bool MobileObject::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00425ba0 mac 100adb30 MobileObject::CanBeThrownInTheSeaPlayfully(Creature *)
bool MobileObject::CanBeThrownInTheSeaPlayfully(Creature* param_1)
{
    return 0;
}

// win1.41 00425bb0 mac 100adb90 MobileObject::CanBePlayedWithByCreature(Creature *)
bool MobileObject::CanBePlayedWithByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00425bc0 mac 100adbe0 MobileObject::IsMobileObject(void)
bool MobileObject::IsMobileObject()
{
    return 0;
}

// win1.41 00425bd0 mac 100adc20 MobileObject::GetSaveType(void)
uint32_t MobileObject::GetSaveType()
{
    return 0;
}

// win1.41 00425be0 mac 100adc60 MobileObject::GetDebugText(void)
char* MobileObject::GetDebugText()
{
    return 0;
}

// win1.41 00425bf0 mac inlined Arrow::GetPlayer(void)
GPlayer* Arrow::GetPlayer()
{
    return 0;
}

// win1.41 00425c00 mac inlined Arrow::_dt(void)
Arrow::~Arrow()
{
}

// win1.41 00425c50 mac 100add90 Object::CanBeCrushed(void)
bool Object::CanBeCrushed()
{
    return 0;
}

// win1.41 00425c60 mac 100ade90 Object::CanBeFrighteningToCreature(Creature *)
bool Object::CanBeFrighteningToCreature(Creature* creature)
{
    return 0;
}

// win1.41 00425da0 mac 1054ef00 GameThing::GetDebugText(void)
char* GameThing::GetDebugText()
{
    return 0;
}
