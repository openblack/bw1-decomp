#include "SpellIcon.h"

// win1.41 00726350 mac 10524e60 SpellIcon::GetSpellSeedInfo(void) const
GSpellSeedInfo* SpellIcon::GetSpellSeedInfo() const
{
    return seed_info;
}
