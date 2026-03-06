#include "Feature.h"
#include "lionhead/lh3dlib/development/LH3DObject.h"

// win1.41 00422e70 mac 100d1840 Feature::GetSaveType(void)
uint32_t Feature::GetSaveType()
{
    return 0;
}

// win1.41 00422e80 mac 100d1880 Feature::GetDebugText(void)
char* Feature::GetDebugText()
{
    return 0;
}

// win1.41 00422e90 mac 100a7a50 Feature::_dt(void)
Feature::~Feature()
{
}

// win1.41 00423140 mac 10041480 LH3DObject::SetPosition(const LHPoint&, float, float)
void LH3DObject::SetPosition(LHPoint* point, float y_angle, float scale)
{
}
