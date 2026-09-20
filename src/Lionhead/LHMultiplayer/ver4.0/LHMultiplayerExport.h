#ifndef BW1_DECOMP_LH_MULTIPLAYER_EXPORT_INCLUDED_H
#define BW1_DECOMP_LH_MULTIPLAYER_EXPORT_INCLUDED_H

#ifdef LH_MULTIPLAYER_EXPORTS
#define LH_MULTIPLAYER_API __declspec(dllexport)
#else
#define LH_MULTIPLAYER_API __declspec(dllimport)
#endif

#endif
