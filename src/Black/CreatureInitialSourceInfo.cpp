#include "CreatureInitialSourceInfo.h"

// CreatureInitialSourceInfo -- a creature's INITIAL desire-source configuration record.
//   Game (BDI source layer): each record seeds the starting threshold/value of one
//   creature "source" -- the inputs that feed desires in the source->desire->action loop
//   the creature's mind runs. B&W keeps a static table of 61 of these, loaded from the
//   creature info data file at startup; the rest of the engine reads them through GetBaseInfo.
//   Tech: derives from GBaseInfo (B&W's data-driven Info-table base).

// The static table itself is defined in the creature data-tables TU (its dynamic
// initialiser lives next to this code in .text); here we only hand it out.
extern CreatureInitialSourceInfo g_creatureInitialSourceInfos[61];

// vtable slot 9 -- overrides GBaseInfo's pure GetBaseInfo.
// Writes the record count (61) to the out-param and returns the table base.
GBaseInfo* CreatureInitialSourceInfo::GetBaseInfo(uint32_t& count)
{
    count = 61;
    return g_creatureInitialSourceInfos;
}

// Trivial destructor: the compiler emits the scalar-deleting dtor (??_G, vtable slot 1)
// that chains the base destructor and -- when the low bit of the hidden flag is set --
// operator delete(this, sizeof == 0x54).
CreatureInitialSourceInfo::~CreatureInitialSourceInfo()
{
}
