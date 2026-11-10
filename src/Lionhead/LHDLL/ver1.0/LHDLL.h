#ifndef BW1_DECOMP_LHDLL_INCLUDED_H
#define BW1_DECOMP_LHDLL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

// Forward Declares

class LHNetEvent;
class LHTransport;

class LHDLL
{
public:
	bool         _valid; /* 0x4 */
	void*        _library;
	LHTransport* _library_end;
	LHTransport* _black_end;
	LH_RETURN(__cdecl* _initialise)(LHTransport* library_end, ...);
	LH_RETURN(__cdecl* _lookin)(LHTransport* library_end, unsigned long mask);
	LH_RETURN(__cdecl* _uninitialise)(LHTransport* library_end);
	char* LibraryPath; /* 0x20 */

	// BW1W120 007ad1a0 BW1M119 010dac10 (LHCombined Release)
	static LHDLL* Create(const char* library_path);
	// BW1W120 007ad230 BW1M119 010da950 (LHCombined Release)
	static LHDLL* AddToInternalList(LHDLL* dll);
	// BW1W120 007ad2f0 BW1M119 010da650 (LHCombined Release)
	static void Destroy();

	// BW1W120 007ad370 BW1M119 010da550 (LHCombined Release)
	LHDLL(const char* library_path);

	// BW1W120 007ad4c0 BW1M119 010da420 (LHCombined Release)
	~LHDLL();

	// BW1W120 007ad3c0 BW1M119 010da4e0 (LHCombined Release)
	void Reset();
	// BW1W120 007ad4f0 BW1M119 010da180 (LHCombined Release)
	LH_RETURN Load(void (*callback)(void*));
	// BW1W120 007add80 BW1M119 010da050 (LHCombined Release)
	LH_RETURN UnLoad();
	// BW1W120 007adec0 BW1M119 010d9fe0 (LHCombined Release)
	LHNetEvent* Read(unsigned long timeout);
	// BW1W120 007adfd0 BW1M119 010d9f60 (LHCombined Release)
	LH_RETURN Write(LHNetEvent* net_event);
	// BW1W120 007ae0e0 BW1M119 010d9ee0 (LHCombined Release)
	LH_RETURN Initialise();
	// BW1W120 007ae2c0 BW1M119 010d9e60 (LHCombined Release)
	LH_RETURN LookIn();
	// BW1W120 007ae4d0 BW1M119 010d9de0 (LHCombined Release)
	LH_RETURN UnInitialise();

	// BW1W120 007add70 BW1M119 010da150 (LHCombined Release)
	virtual bool GetAPI();
	// BW1W120 007ad4b0 BW1M119 010da4b0 (LHCombined Release)
	virtual bool ResetAPI();
};

#endif /* BW1_DECOMP_LHDLL_INCLUDED_H */
