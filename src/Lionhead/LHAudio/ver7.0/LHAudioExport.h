#ifndef BW1_DECOMP_LH_AUDIO_EXPORT_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_EXPORT_INCLUDED_H

#ifdef LH_AUDIO_EXPORTS
#define LH_AUDIO_API __declspec(dllexport)
#else
#define LH_AUDIO_API __declspec(dllimport)
#endif

#endif /* BW1_DECOMP_LH_AUDIO_EXPORT_INCLUDED_H */
