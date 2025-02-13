#ifndef BW1_DECOMP_INTERNAL_INCLUDED_H
#define BW1_DECOMP_INTERNAL_INCLUDED_H

// win1.41 007c9eb4 mac inline _cinit(void)
void __cdecl _cinit(void);
// win1.41 007cb621 mac inline _mtinitlocks(void)
void __cdecl _mtinitlocks(void);
// win1.41 007d22a6 mac inline _mtinit(void)
int __cdecl _mtinit(void);
// win1.41 007d4e51 mac inline _ioinit(void)
void __cdecl _ioinit(void);
// win1.41 007d6a7f mac inline _setenvp(void)
void __cdecl _setenvp(void);
// win1.41 007d6b38 mac inline _setargv(void)
void __cdecl _setargv(void);

#endif /* BW1_DECOMP_INTERNAL_INCLUDED_H */
