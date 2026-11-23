#ifndef BW1_DECOMP_LH_SYSTEM_INLINE_INCLUDED_H
#define BW1_DECOMP_LH_SYSTEM_INLINE_INCLUDED_H

#include <windows.h> /* For InitializeCriticalSection */

#include "LHJoypad.h" /* For struct LHJoypad, struct LHJoypads */
#include "LHSystem.h" /* For struct LHKeyboard */

inline LHJoypad::LHJoypad()
{
	field_0x4 = 0;
	field_0x5 = 0;
}

inline LHJoypads::LHJoypads()
{
	count = 0;
}

inline LHKeyboard::LHKeyboard()
{
	InitializeCriticalSection(&CriticalSection);
}

#endif /* BW1_DECOMP_LH_SYSTEM_INLINE_INCLUDED_H */
