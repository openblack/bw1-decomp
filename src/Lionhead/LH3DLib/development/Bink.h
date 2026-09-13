#ifndef BW1_DECOMP_BINK_INCLUDED_H
#define BW1_DECOMP_BINK_INCLUDED_H

// Bink 1.0w output ABI verified against the game DLL. Public names corroborated
// by RAD's Bink 1.5v SDK. Movie instance layouts differ, so keep the handle opaque.
struct BINK;
typedef BINK* HBINK;

struct BINKREALTIME
{
	unsigned long FrameNum;
	unsigned long FrameRate;
	unsigned long FrameRateDiv;
	unsigned long Frames;
	unsigned long FramesTime;
	unsigned long FramesVideoDecompTime;
	unsigned long FramesAudioDecompTime;
	unsigned long FramesReadTime;
	unsigned long FramesIdleReadTime;
	unsigned long FramesThreadReadTime;
	unsigned long FramesBlitTime;
	unsigned long ReadBufferSize;
	unsigned long ReadBufferUsed;
	unsigned long FramesDataRate;
};

extern "C" __declspec(dllimport) void __stdcall BinkService(HBINK bink);
extern "C" __declspec(dllimport) void __stdcall BinkGetRealtime(HBINK bink, BINKREALTIME* realtime,
                                                                unsigned long frames);

#endif /* BW1_DECOMP_BINK_INCLUDED_H */
