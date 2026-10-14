#include "GameTimeConstants.h"
#include "SpecialVillager.h"

#include "GameThing.h"
#include "SpecialVillagerInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */

GSpecialVillagerInfo GSpecialVillagerInfo::Infos[SPECIAL_VILLAGER_INFO_LAST];

// BW1W120 0071f0c0 BW1M119 0114f770
// TODO: 79.5% (body correct; ~90% once wchar_t enabled) — blocked on the native-wchar_t
// build issue. The callee's true symbol is
// ?MakeHimSpeak@SpecialVillager@@QAEXPA_W@Z (PA_W == native wchar_t*), but this MSVC6.5
// build has no native wchar_t (no /Zc:wchar_t support, no built-in keyword; the CRT
// headers typedef wchar_t == unsigned short), so our MakeHimSpeak mangles PAG
// (unsigned short*) and the call operand can't match. Also a scheduler tie-break: target
// emits `push eax; mov ecx,esi` (this loaded after the arg push), ours `mov ecx,esi;
// push eax`. Both resolve once native wchar_t is enabled project-wide (dispatcher/config).
void SpecialVillager::ToBeDeleted(int param_1)
{
	MakeHimSpeak(NULL);
	Villager::ToBeDeleted(param_1);
}

// BW1W120 0071f470 BW1M119 0114f270
// TODO: 86% — 3 residual diffs are MSVC6.5 codegen limits, not source-shape. Target does
// the bit test entirely byte-wide (`not al; shr al,6; and al,1`) and pops esi last; our
// build widens the shift/mask to eax (`not al; shr eax,6; and eax,1`) and pops esi early.
// Verified unreachable across 12+ source forms (bitfield, compound-assign on uint8_t,
// explicit (uint8_t) casts) — this cl.exe always promotes byte >>/& to 32-bit. Likely a
// MSVC6.0-SP5 (original) vs MSVC6.5 (decomp) codegen delta.
bool SpecialVillager::CanShowName()
{
	if (IsInScript())
		return false;
	return (GameThing::Flags & GAME_THING_FLAG_NAME_HIDDEN) == 0;
}

bool32_t SpecialVillager::Load(GameOSFile& file)
{
	if (Villager::Load(file))
	{
		file.ReadIt(InfoIndex);
		return true;
	}
	return false;
}

bool32_t SpecialVillager::Save(GameOSFile& file)
{
	if (Villager::Save(file))
	{
		file.WriteIt(InfoIndex);
		return true;
	}
	return false;
}

GBaseInfo* GSpecialVillagerInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = SPECIAL_VILLAGER_INFO_LAST;
	return Infos;
}

GSpecialVillagerInfo::~GSpecialVillagerInfo() {}
