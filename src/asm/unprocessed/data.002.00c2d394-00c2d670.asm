.intel_syntax noprefix
.align 16
.section .data

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

.macro _RTTI_Type_Descriptor name post_alignment type
    .global ??_R0?A\type\name@@@8
??_R0?A\type\name@@@8:
    .long ??_7type_info@@6B@
    .long 0
    ASCIZ_ALIGNED ".?A\type\name@@" \post_alignment
.endm

.globl ___mbcodepage
.globl __mbcasemap
.globl __mbctype
.globl ___mblcid
.globl ___piob
.globl __nstream
.globl ___setlc_active
.globl ___unguarded_readlc_active
.globl __acmdln
.globl __cflush
.globl ___lc_handle
.globl ___crtLCMapStringA
.globl ___lc_codepage
.globl ___lc_collate_cp
.globl ___lc_id
.globl ___lconv_static_null
.globl __umaskval
.globl __osver
.globl __winver
.globl __winmajor
.globl __winminor
.globl ___argc
.globl ___argv
.globl ___wargv
.globl __environ
.globl ___initenv
.globl __wenviron
.globl ___winitenv
.globl __pgmptr
.globl __wpgmptr
.globl __exitflag
.globl __C_Termination_Done
.globl __C_Exit_Done
.globl ___onexitend
.globl ___onexitbegin
.globl __aenvptr
.globl __wenvptr
.globl ___error_mode
.globl _?cacheid@?1??_expandlocale@@9@9
.globl _?cachecp@?1??_expandlocale@@9@9
.globl __except_list
.globl __fltused
.globl __ldused
.globl __FPinit
.globl __NLG_Destination
.globl _start_tics
.globl ___pioinfo
.globl __nhandle

__fltused:                                                                                                         // [0x267394] 0x009c6000 + 0x267394 = 0x00c2d394
.long 0x00009875
__ldused:
.long 0x00009873

__FPinit:                                                                                                          // [0x26739c] 0x009c6000 + 0x26739c = 0x00c2d39c
.long _fltused
.long _jmp_addr_0x007c561b
.long _jmp_addr_0x007c561b

_RTTI_Type_Descriptor type_info, 1, V                                                                              // [0x2673a8] 0x009c6000 + 0x2673a8 = 0x00c2d3a8

.byte 0xc4, 0x05, 0x9a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x3f, 0x41, 0x56, 0x62, 0x61, 0x64, 0x5f               // [0x2673c0] 0x009c6000 + 0x2673c0 = 0x00c2d3c0
.byte 0x74, 0x79, 0x70, 0x65, 0x69, 0x64, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x2673d0] 0x009c6000 + 0x2673d0 = 0x00c2d3d0

.byte 0xc4, 0x05, 0x9a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x3f, 0x41, 0x56, 0x5f, 0x5f, 0x6e, 0x6f               // [0x2673e0] 0x009c6000 + 0x2673e0 = 0x00c2d3e0
.byte 0x6e, 0x5f, 0x72, 0x74, 0x74, 0x69, 0x5f, 0x6f, 0x62, 0x6a, 0x65, 0x63, 0x74, 0x40, 0x40, 0x00               // [0x2673f0] 0x009c6000 + 0x2673f0 = 0x00c2d3f0

.byte 0xc4, 0x05, 0x9a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x3f, 0x41, 0x56, 0x62, 0x61, 0x64, 0x5f               // [0x267400] 0x009c6000 + 0x267400 = 0x00c2d400
.byte 0x63, 0x61, 0x73, 0x74, 0x40, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x267410] 0x009c6000 + 0x267410 = 0x00c2d410
.byte 0x61, 0x73, 0x69, 0x6e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x267420] 0x009c6000 + 0x267420 = 0x00c2d420
.byte 0x61, 0x63, 0x6f, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x267430] 0x009c6000 + 0x267430 = 0x00c2d430
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x3f, 0x70, 0x6f, 0x77, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x267440] 0x009c6000 + 0x267440 = 0x00c2d440
.byte 0x04, 0x66, 0x6d, 0x6f, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x16, 0x00               // [0x267450] 0x009c6000 + 0x267450 = 0x00c2d450
.byte 0x54, 0x80, 0x7c, 0x00, 0x86, 0x1b, 0x7d, 0x00, 0x1f, 0x1b, 0x7d, 0x00, 0x86, 0x1b, 0x7d, 0x00               // [0x267460] 0x009c6000 + 0x267460 = 0x00c2d460
.byte 0xe4, 0x1a, 0x7d, 0x00, 0x86, 0x1b, 0x7d, 0x00, 0x1f, 0x1b, 0x7d, 0x00, 0x86, 0x1b, 0x7d, 0x00               // [0x267470] 0x009c6000 + 0x267470 = 0x00c2d470
.byte 0x1d, 0x1b, 0x7d, 0x00, 0x1d, 0x1b, 0x7d, 0x00, 0x47, 0x1b, 0x7d, 0x00, 0x1d, 0x1b, 0x7d, 0x00               // [0x267480] 0x009c6000 + 0x267480 = 0x00c2d480
.byte 0x86, 0x1b, 0x7d, 0x00, 0x86, 0x1b, 0x7d, 0x00, 0x1f, 0x1b, 0x7d, 0x00, 0x86, 0x1b, 0x7d, 0x00               // [0x267490] 0x009c6000 + 0x267490 = 0x00c2d490
.byte 0x3f, 0x1b, 0x00, 0x00                                                                                       // [0x2674a0] 0x009c6000 + 0x2674a0 = 0x00c2d4a0

// EXSUP.INC
__NLG_Destination:                                                                                                 // [0x2674a0] 0x009c6000 + 0x2674a4 = 0x00c2d4a4
.long 0x19930520
.long 0x00000000
.long 0x00000000
.long 0x00000000

.byte 0x3f, 0x17, 0x00, 0x00                                                                                       // [0x2674b0] 0x009c6000 + 0x2674b4 = 0x00c2d4b4

// Virtual (non-allocated at build time)
.set __except_list,                             0x00000000

.set ___lconv_static_null,                      0x00e841d0
.set __umaskval,                                0x00e841d4
.set __osver,                                   0x00e841d8
.set __winver,                                  0x00e841dc
.set __winmajor,                                0x00e841e0
.set __winminor,                                0x00e841e4
.set ___argc,                                   0x00e841e8
.set ___argv,                                   0x00e841ec
.set ___wargv,                                  0x00e841f0
.set __environ,                                 0x00e841f4
.set ___initenv,                                0x00e841f8
.set __wenviron,                                0x00e841fc
.set ___winitenv,                               0x00e84200
.set __pgmptr,                                  0x00e84204
.set __wpgmptr,                                 0x00e84208
.set __exitflag,                                0x00e8420c
.set __C_Termination_Done,                      0x00e84210
.set __C_Exit_Done,                             0x00e84214
.set __aenvptr,                                 0x00e84218
.set __wenvptr,                                 0x00e8421c
.set ___error_mode,                             0x00e84220
.set _?cacheid@?1??_expandlocale@@9@9,          0x00e84224
.set _?cachecp@?1??_expandlocale@@9@9,          0x00e8422c
.set __cflush,                                  0x00e84230

.set ___lc_handle,                              0x00e84298

.set ___crtLCMapStringA,                        0x00e842a0

.set ___lc_codepage,                            0x00e842b0
.set ___lc_collate_cp,                          0x00e842b4

.set ___lc_id,                                  0x00e84504
.set _start_tics,                               0x00fac880
.set ___pioinfo,                                0x00fac960

.set __nhandle,                                 0x00faca60
.set ___mbcodepage,                             0x00faca64

.set __mbcasemap,                               0x00faca80
.set __mbctype,                                 0x00facb80
.set ___mblcid,                                 0x00facc84
.set ___piob,                                   0x00faccb8

.set __nstream,                                 0x00fadcc0
.set ___setlc_active,                           0x00fadcc4
.set ___unguarded_readlc_active,                0x00fadcc8
.set __acmdln,                                  0x00fadccc

.set ___onexitend,                              0x00fadcd8
.set ___onexitbegin,                            0x00fadcdc
