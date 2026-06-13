#include "GJPersistent.h"

void Persistent::VirtualFunc()
{
}

void Persistent::OnLoaded()
{
}

void Persistent::DefineProperties(PropertyList* list)
{
}

Persistent::~Persistent()
{
    delete m_name;
}
