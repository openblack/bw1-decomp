.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atexit
.extern _malloc
.extern _free
.extern __chkstk
.extern __errno
.extern ___doserrno
.extern _strncpy
.extern _strchr
.extern _calloc
.extern __tolower_lk
.extern _strlen
.extern _memset
.extern __lock
.extern __unlock
.extern __write_lk
.extern __lseek_lk
.extern _strcpy
.extern __get_osfhandle
.extern __lock_fhandle
.extern __unlock_fhandle
.extern _jmp_addr_0x007dc8b0
.extern _jmp_addr_0x007dc920
.extern _jmp_addr_0x007dcaf0
.extern @__ct__8LHScreenFv@4
.extern @__dt__8LHScreenFv@4
.extern _jmp_addr_0x007de6f0
.extern _jmp_addr_0x007de820
.extern _jmp_addr_0x007de8d0
.extern _jmp_addr_0x007dece0
.extern _jmp_addr_0x007ded10
.extern _jmp_addr_0x007e4b80
.extern @__ct__7LHMouseFv@4
.extern @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.extern _jmp_addr_0x007e5b20
.extern _jmp_addr_0x007ef780
.extern _jmp_addr_0x007f3b80
.extern _jmp_addr_0x007f3d20
.extern _jmp_addr_0x007f42b0
.extern __getpid

.globl __setmode

// setmode.obj
__setmode:               push              esi                                            // 0x007db352    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007db353    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007db357    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007db39b                           // 0x007db35d    733c
                         mov.s             ecx, esi                                       // 0x007db35f    8bce
                         mov.s             eax, esi                                       // 0x007db361    8bc6
                         sar               ecx, 5                                         // 0x007db363    c1f905
                         and               eax, 0x1f                                      // 0x007db366    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db369    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db370    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007db373    f644810401
                         {disp8} je        _jmp_addr_0x007db39b                           // 0x007db378    7421
                         push              edi                                            // 0x007db37a    57
                         push              esi                                            // 0x007db37b    56
                         call              __lock_fhandle                                 // 0x007db37c    e8dce6ffff
                         push              dword ptr [esp + 0x14]                         // 0x007db381    ff742414
                         push              esi                                            // 0x007db385    56
                         call              __setmode_lk                                   // 0x007db386    e820000000
                         push              esi                                            // 0x007db38b    56
                         mov.s             edi, eax                                       // 0x007db38c    8bf8
                         call              __unlock_fhandle                               // 0x007db38e    e829e7ffff
                         add               esp, 0x10                                      // 0x007db393    83c410
                         mov.s             eax, edi                                       // 0x007db396    8bc7
                         pop               edi                                            // 0x007db398    5f
                         pop               esi                                            // 0x007db399    5e
                         ret                                                              // 0x007db39a    c3
_jmp_addr_0x007db39b:    call              __errno                                        // 0x007db39b    e8e1dcfeff
                         mov               dword ptr [eax], 0x00000009                    // 0x007db3a0    c70009000000
                         or                eax, -0x1                                      // 0x007db3a6    83c8ff
                         pop               esi                                            // 0x007db3a9    5e
                         ret                                                              // 0x007db3aa    c3
.globl __setmode_lk
__setmode_lk:            {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db3ab    8b442404
                         push              esi                                            // 0x007db3af    56
                         mov.s             ecx, eax                                       // 0x007db3b0    8bc8
                         and               eax, 0x1f                                      // 0x007db3b2    83e01f
                         sar               ecx, 5                                         // 0x007db3b5    c1f905
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db3b8    8d04c0
                         mov               esi, 0x00008000                                // 0x007db3bb    be00800000
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db3c0    8b0c8d60c9fa00
                         {disp8} lea       edx, dword ptr [ecx + eax * 0x4 + 0x04]        // 0x007db3c7    8d548104
                         {disp8} mov       cl, byte ptr [ecx + eax * 0x4 + 0x04]          // 0x007db3cb    8a4c8104
                         mov.s             al, cl                                         // 0x007db3cf    8ac1
                         and               eax, 0x00000080                                // 0x007db3d1    2580000000
                         cmp               dword ptr [esp + 0x0c], esi                    // 0x007db3d6    3974240c
                         {disp8} jne       _jmp_addr_0x007db3e1                           // 0x007db3da    7505
                         and               cl, 0x7f                                       // 0x007db3dc    80e17f
                         {disp8} jmp       _jmp_addr_0x007db3ee                           // 0x007db3df    eb0d
_jmp_addr_0x007db3e1:    cmp               dword ptr [esp + 0x0c], 0x00004000             // 0x007db3e1    817c240c00400000
                         {disp8} jne       _jmp_addr_0x007db3fc                           // 0x007db3e9    7511
                         or                cl, 0x80                                       // 0x007db3eb    80c980
_jmp_addr_0x007db3ee:    neg               eax                                            // 0x007db3ee    f7d8
                         sbb.s             eax, eax                                       // 0x007db3f0    1bc0
                         mov               byte ptr [edx], cl                             // 0x007db3f2    880a
                         and               ax, -0x4000                                    // 0x007db3f4    662500c0
                         add.s             eax, esi                                       // 0x007db3f8    03c6
                         pop               esi                                            // 0x007db3fa    5e
                         ret                                                              // 0x007db3fb    c3
_jmp_addr_0x007db3fc:    call              __errno                                        // 0x007db3fc    e880dcfeff
                         mov               dword ptr [eax], 0x00000016                    // 0x007db401    c70016000000
                         or                eax, -0x1                                      // 0x007db407    83c8ff
                         pop               esi                                            // 0x007db40a    5e
                         ret                                                              // 0x007db40b    c3
                         int3                                                             // 0x007db40c    cc
                         int3                                                             // 0x007db40d    cc
                         int3                                                             // 0x007db40e    cc
                         int3                                                             // 0x007db40f    cc
// End of libcmt.lib
