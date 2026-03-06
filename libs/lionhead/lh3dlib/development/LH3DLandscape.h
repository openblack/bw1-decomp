#ifndef BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H

#ifdef __cplusplus

struct LH3DLandscape
{
    void Release();
};

#else // __cplusplus

// win1.41 00871220 mac 1061cc1c LH3DLandscape::Release(void)
void __stdcall Release__13LH3DLandscapeFv(void);

#endif // __cplusplus

#endif /* BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H */
