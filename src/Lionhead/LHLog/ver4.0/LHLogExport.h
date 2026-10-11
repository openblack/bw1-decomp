#ifndef BW1_DECOMP_LH_LOG_EXPORT_INCLUDED_H
#define BW1_DECOMP_LH_LOG_EXPORT_INCLUDED_H

#ifdef LH_LOG_EXPORTS
#define LH_LOG_API __declspec(dllexport)
#else
#define LH_LOG_API __declspec(dllimport)
#endif

#endif /* BW1_DECOMP_LH_LOG_EXPORT_INCLUDED_H */
