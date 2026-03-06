#include "Base.h"

void Base::Serialise(Archive* param_1)
{
}

void Base::Delete()
{
    if (this)
    {
        delete this;
    }
}

void Base::ToBeDeleted(int param_1)
{
    Delete(/*param_1*/);
}

int Base::Get3DSoundPos(LHPoint* param_1)
{
  return 0;
}

void Base::CleanUpForSerialisation()
{
}

void Base::Dump()
{
}

Base::~Base()
{
}
