.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00521a90
.extern  ??3@YAXPAX@Z
.extern @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16
.extern ?Close@LHOSFile@@QAEIXZ
.extern _jmp_addr_0x007bcad0
.extern _jmp_addr_0x007bd0c0
.extern ___nw__FUl
.extern @SetFullscreenMode__8LHScreenFi@12
.extern _jmp_addr_0x007ddc40
.extern _jmp_addr_0x007ded40
.extern _jmp_addr_0x007df850
.extern _jmp_addr_0x007e3c20
.extern ??0LHReleasedOSFile@@QAE@XZ
.extern _jmp_addr_0x007e71f0
.extern @LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16
.extern _jmp_addr_0x007e89f0
.extern _jmp_addr_0x007e8a20
.extern _jmp_addr_0x007e9910
.extern _jmp_addr_0x007e9a10
.extern _jmp_addr_0x007e9ad0
.extern _jmp_addr_0x007efb60
.extern _jmp_addr_0x007efcf0
.extern _jmp_addr_0x0087fc90
.extern _jmp_addr_0x0087fca0
.extern _jmp_addr_0x0087fcb0
.extern _jmp_addr_0x0087fcc0
.extern _jmp_addr_0x0087fcd0
.extern _jmp_addr_0x0087fce0
.extern _jmp_addr_0x0087fcf0
.extern _jmp_addr_0x0087fd00
.extern _jmp_addr_0x0087fd10
.extern _jmp_addr_0x0087fd20
.extern _jmp_addr_0x0087fd30
.extern _jmp_addr_0x0087fd40

.globl @LoadFile__12LHScriptX_c_FPcPl@16
.globl _jmp_addr_0x007e8240

start_0x007e8170_0x007e89f0:
// Snippet: asm, [0x007e8170, 0x007e8984)
@LoadFile__12LHScriptX_c_FPcPl@16:    push              -0x1                                     // 0x007e8170    6aff
                         push              0x008a7b0b                               // 0x007e8172    680b7b8a00
                         {disp32} mov      eax, fs:[0x0]                            // 0x007e8177    64a100000000
                         push              eax                                      // 0x007e817d    50
                         {disp32} mov      fs:[0x0], esp                            // 0x007e817e    64892500000000
                         sub               esp, 0x0000090c                          // 0x007e8185    81ec0c090000
                         push              esi                                      // 0x007e818b    56
                         mov.s             esi, ecx                                 // 0x007e818c    8bf1
                         {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e818e    8d4c2404
                         call              ??0LHReleasedOSFile@@QAE@XZ              // 0x007e8192    e879ebffff
                         xor.s             eax, eax                                 // 0x007e8197    33c0
                         push              0x2                                      // 0x007e8199    6a02
                         {disp32} mov      dword ptr [esp + 0x0000091c], eax        // 0x007e819b    8984241c090000
                         {disp8} mov       dword ptr [esi + 0x04], eax              // 0x007e81a2    894604
                         {disp32} mov      eax, dword ptr [esp + 0x00000924]        // 0x007e81a5    8b842424090000
                         {disp8} lea       ecx, dword ptr [esp + 0x08]              // 0x007e81ac    8d4c2408
                         push              eax                                      // 0x007e81b0    50
                         mov               dword ptr [esi], 0xffffffff              // 0x007e81b1    c706ffffffff
                         call              @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16                     // 0x007e81b7    e82446fdff
                         test              eax, eax                                 // 0x007e81bc    85c0
                         {disp8} jne       _jmp_addr_0x007e8205                     // 0x007e81be    7545
                         {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e81c0    8d4c2404
                         push              ecx                                      // 0x007e81c4    51
                         mov.s             ecx, esi                                 // 0x007e81c5    8bce
                         call              _jmp_addr_0x007e9ad0                     // 0x007e81c7    e804190000
                         {disp32} lea      edx, dword ptr [esp + 0x00000110]        // 0x007e81cc    8d942410010000
                         {disp8} lea       eax, dword ptr [esp + 0x04]              // 0x007e81d3    8d442404
                         push              edx                                      // 0x007e81d7    52
                         push              eax                                      // 0x007e81d8    50
                         mov.s             ecx, esi                                 // 0x007e81d9    8bce
                         call              @LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16                     // 0x007e81db    e820f2ffff
                         test              al, al                                   // 0x007e81e0    84c0
                         {disp8} je        _jmp_addr_0x007e81fc                     // 0x007e81e2    7418
_jmp_addr_0x007e81e4:    {disp32} lea      ecx, dword ptr [esp + 0x00000110]        // 0x007e81e4    8d8c2410010000
                         {disp8} lea       edx, dword ptr [esp + 0x04]              // 0x007e81eb    8d542404
                         push              ecx                                      // 0x007e81ef    51
                         push              edx                                      // 0x007e81f0    52
                         mov.s             ecx, esi                                 // 0x007e81f1    8bce
                         call              @LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16                     // 0x007e81f3    e808f2ffff
                         test              al, al                                   // 0x007e81f8    84c0
                         {disp8} jne       _jmp_addr_0x007e81e4                     // 0x007e81fa    75e8
_jmp_addr_0x007e81fc:    {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e81fc    8d4c2404
                         call              ?Close@LHOSFile@@QAEIXZ                  // 0x007e8200    e85b46fdff
_jmp_addr_0x007e8205:    {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e8205    8d4c2404
                         {disp32} mov      dword ptr [esp + 0x00000918], 0xffffffff // 0x007e8209    c7842418090000ffffffff
                         call              _jmp_addr_0x007bcad0                     // 0x007e8214    e8b748fdff
                         {disp32} mov      ecx, dword ptr [esp + 0x00000910]        // 0x007e8219    8b8c2410090000
                         xor.s             eax, eax                                 // 0x007e8220    33c0
                         pop               esi                                      // 0x007e8222    5e
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8223    64890d00000000
                         add               esp, 0x00000918                          // 0x007e822a    81c418090000
                         ret               0x0008                                   // 0x007e8230    c20800
                         nop                                                        // 0x007e8233    90
                         nop                                                        // 0x007e8234    90
                         nop                                                        // 0x007e8235    90
                         nop                                                        // 0x007e8236    90
                         nop                                                        // 0x007e8237    90
                         nop                                                        // 0x007e8238    90
                         nop                                                        // 0x007e8239    90
                         nop                                                        // 0x007e823a    90
                         nop                                                        // 0x007e823b    90
                         nop                                                        // 0x007e823c    90
                         nop                                                        // 0x007e823d    90
                         nop                                                        // 0x007e823e    90
                         nop                                                        // 0x007e823f    90
_jmp_addr_0x007e8240:    {disp32} mov      eax, fs:[0x0]                            // 0x007e8240    64a100000000
                         push              -0x1                                     // 0x007e8246    6aff
                         push              0x008a7b4e                               // 0x007e8248    684e7b8a00
                         push              eax                                      // 0x007e824d    50
                         {disp8} mov       eax, dword ptr [esp + 0x10]              // 0x007e824e    8b442410
                         {disp32} mov      fs:[0x0], esp                            // 0x007e8252    64892500000000
                         push              ebx                                      // 0x007e8259    53
                         push              esi                                      // 0x007e825a    56
                         test              eax, eax                                 // 0x007e825b    85c0
                         push              edi                                      // 0x007e825d    57
                         {disp32} jle      _jmp_addr_0x007e895f                     // 0x007e825e    0f8efb060000
                         dec               eax                                      // 0x007e8264    48
                         cmp               eax, 0x1a                                // 0x007e8265    83f81a
                         {disp32} ja       _jmp_addr_0x007e872e                     // 0x007e8268    0f87c0040000
                         jmp               dword ptr [eax*4 + 0x7e8984]             // 0x007e826e    ff248584897e00
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e8275    8b742420
                         cmp               dword ptr [esi + 0x0000600c], 0x01       // 0x007e8279    83be0c60000001
                         {disp8} jne       _jmp_addr_0x007e828e                     // 0x007e8280    750c
                         push              0x1                                      // 0x007e8282    6a01
                         mov               ecx, 0x00e85050                          // 0x007e8284    b95050e800
                         call              @SetFullscreenMode__8LHScreenFi@12       // 0x007e8289    e8424effff
_jmp_addr_0x007e828e:    {disp32} mov      al, byte ptr [esi + 0x00006008]          // 0x007e828e    8a8608600000
                         {disp32} mov      cx, word ptr [esi + 0x00006004]          // 0x007e8294    668b8e04600000
                         {disp32} mov      dx, word ptr [esi + 0x00006000]          // 0x007e829b    668b9600600000
                         push              eax                                      // 0x007e82a2    50
                         push              ecx                                      // 0x007e82a3    51
                         push              edx                                      // 0x007e82a4    52
                         mov               ecx, 0x00e85050                          // 0x007e82a5    b95050e800
                         call              _jmp_addr_0x007ddc40                     // 0x007e82aa    e89159ffff
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e82af    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e82b3    64890d00000000
                         pop               edi                                      // 0x007e82ba    5f
                         pop               esi                                      // 0x007e82bb    5e
                         pop               ebx                                      // 0x007e82bc    5b
                         add               esp, 0x0c                                // 0x007e82bd    83c40c
                         ret               0x0008                                   // 0x007e82c0    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e82c3    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x00006000]        // 0x007e82c7    8b8800600000
                         push              ecx                                      // 0x007e82cd    51
                         call              _jmp_addr_0x0087fd00                     // 0x007e82ce    e82d7a0900
                         add               esp, 0x04                                // 0x007e82d3    83c404
                         xor.s             eax, eax                                 // 0x007e82d6    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e82d8    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e82dc    64890d00000000
                         pop               edi                                      // 0x007e82e3    5f
                         pop               esi                                      // 0x007e82e4    5e
                         pop               ebx                                      // 0x007e82e5    5b
                         add               esp, 0x0c                                // 0x007e82e6    83c40c
                         ret               0x0008                                   // 0x007e82e9    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e82ec    8b542420
                         mov               ecx, 0x00e85050                          // 0x007e82f0    b95050e800
                         {disp32} mov      eax, dword ptr [edx + 0x00006000]        // 0x007e82f5    8b8200600000
                         push              eax                                      // 0x007e82fb    50
                         call              _jmp_addr_0x007ded40                     // 0x007e82fc    e83f6affff
                         push              0x1                                      // 0x007e8301    6a01
                         call              _jmp_addr_0x0087fc90                     // 0x007e8303    e888790900
                         add               esp, 0x04                                // 0x007e8308    83c404
                         xor.s             eax, eax                                 // 0x007e830b    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e830d    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8311    64890d00000000
                         pop               edi                                      // 0x007e8318    5f
                         pop               esi                                      // 0x007e8319    5e
                         pop               ebx                                      // 0x007e831a    5b
                         add               esp, 0x0c                                // 0x007e831b    83c40c
                         ret               0x0008                                   // 0x007e831e    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e8321    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x00006000]        // 0x007e8325    8b9100600000
                         push              edx                                      // 0x007e832b    52
                         call              _jmp_addr_0x0087fca0                     // 0x007e832c    e86f790900
                         add               esp, 0x04                                // 0x007e8331    83c404
                         xor.s             eax, eax                                 // 0x007e8334    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8336    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e833a    64890d00000000
                         pop               edi                                      // 0x007e8341    5f
                         pop               esi                                      // 0x007e8342    5e
                         pop               ebx                                      // 0x007e8343    5b
                         add               esp, 0x0c                                // 0x007e8344    83c40c
                         ret               0x0008                                   // 0x007e8347    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e834a    8b442420
                         push              eax                                      // 0x007e834e    50
                         call              _jmp_addr_0x007e71f0                     // 0x007e834f    e89ceeffff
                         push              eax                                      // 0x007e8354    50
                         call              _jmp_addr_0x0087fd10                     // 0x007e8355    e8b6790900
                         add               esp, 0x08                                // 0x007e835a    83c408
                         xor.s             eax, eax                                 // 0x007e835d    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e835f    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8363    64890d00000000
                         pop               edi                                      // 0x007e836a    5f
                         pop               esi                                      // 0x007e836b    5e
                         pop               ebx                                      // 0x007e836c    5b
                         add               esp, 0x0c                                // 0x007e836d    83c40c
                         ret               0x0008                                   // 0x007e8370    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e8373    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x00006000]        // 0x007e8377    8b9100600000
                         push              edx                                      // 0x007e837d    52
                         call              _jmp_addr_0x0087fd20                     // 0x007e837e    e89d790900
                         add               esp, 0x04                                // 0x007e8383    83c404
                         xor.s             eax, eax                                 // 0x007e8386    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8388    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e838c    64890d00000000
                         pop               edi                                      // 0x007e8393    5f
                         pop               esi                                      // 0x007e8394    5e
                         pop               ebx                                      // 0x007e8395    5b
                         add               esp, 0x0c                                // 0x007e8396    83c40c
                         ret               0x0008                                   // 0x007e8399    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e839c    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x00006000]        // 0x007e83a0    8b8800600000
                         push              ecx                                      // 0x007e83a6    51
                         call              _jmp_addr_0x0087fcb0                     // 0x007e83a7    e804790900
                         add               esp, 0x04                                // 0x007e83ac    83c404
                         xor.s             eax, eax                                 // 0x007e83af    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e83b1    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e83b5    64890d00000000
                         pop               edi                                      // 0x007e83bc    5f
                         pop               esi                                      // 0x007e83bd    5e
                         pop               ebx                                      // 0x007e83be    5b
                         add               esp, 0x0c                                // 0x007e83bf    83c40c
                         ret               0x0008                                   // 0x007e83c2    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e83c5    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x00006000]        // 0x007e83c9    8b8200600000
                         shl               eax, 0x14                                // 0x007e83cf    c1e014
                         push              eax                                      // 0x007e83d2    50
                         call              _jmp_addr_0x0087fcc0                     // 0x007e83d3    e8e8780900
                         add               esp, 0x04                                // 0x007e83d8    83c404
                         xor.s             eax, eax                                 // 0x007e83db    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e83dd    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e83e1    64890d00000000
                         pop               edi                                      // 0x007e83e8    5f
                         pop               esi                                      // 0x007e83e9    5e
                         pop               ebx                                      // 0x007e83ea    5b
                         add               esp, 0x0c                                // 0x007e83eb    83c40c
                         ret               0x0008                                   // 0x007e83ee    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e83f1    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x00006000]        // 0x007e83f5    8b9100600000
                         shl               edx, 0x14                                // 0x007e83fb    c1e214
                         push              edx                                      // 0x007e83fe    52
                         call              _jmp_addr_0x0087fcd0                     // 0x007e83ff    e8cc780900
                         add               esp, 0x04                                // 0x007e8404    83c404
                         xor.s             eax, eax                                 // 0x007e8407    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8409    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e840d    64890d00000000
                         pop               edi                                      // 0x007e8414    5f
                         pop               esi                                      // 0x007e8415    5e
                         pop               ebx                                      // 0x007e8416    5b
                         add               esp, 0x0c                                // 0x007e8417    83c40c
                         ret               0x0008                                   // 0x007e841a    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e841d    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x00006000]        // 0x007e8421    8b8800600000
                         push              ecx                                      // 0x007e8427    51
                         call              _jmp_addr_0x0087fd30                     // 0x007e8428    e803790900
                         add               esp, 0x04                                // 0x007e842d    83c404
                         xor.s             eax, eax                                 // 0x007e8430    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8432    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8436    64890d00000000
                         pop               edi                                      // 0x007e843d    5f
                         pop               esi                                      // 0x007e843e    5e
                         pop               ebx                                      // 0x007e843f    5b
                         add               esp, 0x0c                                // 0x007e8440    83c40c
                         ret               0x0008                                   // 0x007e8443    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e8446    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x00006000]        // 0x007e844a    8b8200600000
                         push              eax                                      // 0x007e8450    50
                         call              _jmp_addr_0x0087fce0                     // 0x007e8451    e88a780900
                         add               esp, 0x04                                // 0x007e8456    83c404
                         xor.s             eax, eax                                 // 0x007e8459    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e845b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e845f    64890d00000000
                         pop               edi                                      // 0x007e8466    5f
                         pop               esi                                      // 0x007e8467    5e
                         pop               ebx                                      // 0x007e8468    5b
                         add               esp, 0x0c                                // 0x007e8469    83c40c
                         ret               0x0008                                   // 0x007e846c    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e846f    8b4c2420
                         push              ecx                                      // 0x007e8473    51
                         {disp32} fild     dword ptr [ecx + 0x00006000]             // 0x007e8474    db8100600000
                         fld               st(0)                                    // 0x007e847a    d9c0
                         fmul              st, st(1)                                // 0x007e847c    d8c9
                         fstp              dword ptr [esp]                          // 0x007e847e    d91c24
                         fstp              st(0)                                    // 0x007e8481    ddd8
                         call              _jmp_addr_0x0087fd40                     // 0x007e8483    e8b8780900
                         add               esp, 0x04                                // 0x007e8488    83c404
                         xor.s             eax, eax                                 // 0x007e848b    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e848d    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8491    64890d00000000
                         pop               edi                                      // 0x007e8498    5f
                         pop               esi                                      // 0x007e8499    5e
                         pop               ebx                                      // 0x007e849a    5b
                         add               esp, 0x0c                                // 0x007e849b    83c40c
                         ret               0x0008                                   // 0x007e849e    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e84a1    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x00006000]        // 0x007e84a5    8b8200600000
                         push              eax                                      // 0x007e84ab    50
                         call              _jmp_addr_0x0087fcf0                     // 0x007e84ac    e83f780900
                         add               esp, 0x04                                // 0x007e84b1    83c404
                         xor.s             eax, eax                                 // 0x007e84b4    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e84b6    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e84ba    64890d00000000
                         pop               edi                                      // 0x007e84c1    5f
                         pop               esi                                      // 0x007e84c2    5e
                         pop               ebx                                      // 0x007e84c3    5b
                         add               esp, 0x0c                                // 0x007e84c4    83c40c
                         ret               0x0008                                   // 0x007e84c7    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e84ca    8b742420
                         {disp32} mov      eax, dword ptr [esi + 0x00006004]        // 0x007e84ce    8b8604600000
                         cmp               eax, 0x64                                // 0x007e84d4    83f864
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e84f2 // 0x007e84d7    7219
                         mov               eax, 0x00000003                          // 0x007e84d9    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e84de    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e84e2    64890d00000000
                         pop               edi                                      // 0x007e84e9    5f
                         pop               esi                                      // 0x007e84ea    5e
                         pop               ebx                                      // 0x007e84eb    5b
                         add               esp, 0x0c                                // 0x007e84ec    83c40c
                         ret               0x0008                                   // 0x007e84ef    c20800
_jmp_addr_0x007e84f2:    mov.s             ecx, eax                                 // 0x007e84f2    8bc8
                         push              0x0                                      // 0x007e84f4    6a00
                         shl               ecx, 5                                   // 0x007e84f6    c1e105
                         add.s             ecx, eax                                 // 0x007e84f9    03c8
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e85968]  // 0x007e84fb    8d14cd6859e800
                         push              edx                                      // 0x007e8502    52
                         push              esi                                      // 0x007e8503    56
                         call              _jmp_addr_0x007e71f0                     // 0x007e8504    e8e7ecffff
                         add               esp, 0x04                                // 0x007e8509    83c404
                         push              eax                                      // 0x007e850c    50
                         call              _jmp_addr_0x007bd0c0                     // 0x007e850d    e8ae4bfdff
                         mov.s             ebx, eax                                 // 0x007e8512    8bd8
                         add               esp, 0x0c                                // 0x007e8514    83c40c
                         test              ebx, ebx                                 // 0x007e8517    85db
                         {disp32} jne      _jmp_addr_0x007e8849                     // 0x007e8519    0f852a030000
                         {disp32} mov      eax, dword ptr [esi + 0x00006004]        // 0x007e851f    8b8604600000
                         push              esi                                      // 0x007e8525    56
                         mov.s             ecx, eax                                 // 0x007e8526    8bc8
                         shl               ecx, 5                                   // 0x007e8528    c1e105
                         add.s             ecx, eax                                 // 0x007e852b    03c8
                         {disp32} mov      byte ptr [ecx * 0x8 + 0x00e85964], 0x01  // 0x007e852d    c604cd6459e80001
                         call              _jmp_addr_0x007e71f0                     // 0x007e8535    e8b6ecffff
                         {disp32} mov      esi, dword ptr [esi + 0x00006004]        // 0x007e853a    8bb604600000
                         add               esp, 0x04                                // 0x007e8540    83c404
                         mov.s             edx, esi                                 // 0x007e8543    8bd6
                         shl               edx, 5                                   // 0x007e8545    c1e205
                         add.s             edx, esi                                 // 0x007e8548    03d6
                         {disp32} lea      edx, dword ptr [edx * 0x8 + 0x00e8596c]  // 0x007e854a    8d14d56c59e800
                         {disp32} jmp      _jmp_addr_0x007e880b                     // 0x007e8551    e9b5020000
                         {disp8} mov       edi, dword ptr [esp + 0x20]              // 0x007e8556    8b7c2420
                         cmp               dword ptr [edi + 0x00006004], 0x64       // 0x007e855a    83bf0460000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e857c // 0x007e8561    7219
                         mov               eax, 0x00000003                          // 0x007e8563    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8568    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e856c    64890d00000000
                         pop               edi                                      // 0x007e8573    5f
                         pop               esi                                      // 0x007e8574    5e
                         pop               ebx                                      // 0x007e8575    5b
                         add               esp, 0x0c                                // 0x007e8576    83c40c
                         ret               0x0008                                   // 0x007e8579    c20800
_jmp_addr_0x007e857c:    push              0x00000138                               // 0x007e857c    6838010000
                         push              0x00c34da4                               // 0x007e8581    68a44dc300
                         push              0x8                                      // 0x007e8586    6a08
                         call              ___nw__FUl                               // 0x007e8588    e80332ffff
                         mov.s             esi, eax                                 // 0x007e858d    8bf0
                         {disp32} mov      eax, dword ptr [edi + 0x00006004]        // 0x007e858f    8b8704600000
                         mov.s             ecx, eax                                 // 0x007e8595    8bc8
                         add               esp, 0x0c                                // 0x007e8597    83c40c
                         shl               ecx, 5                                   // 0x007e859a    c1e105
                         add.s             ecx, eax                                 // 0x007e859d    03c8
                         mov               ebx, 0x00000003                          // 0x007e859f    bb03000000
                         test              esi, esi                                 // 0x007e85a4    85f6
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], esi  // 0x007e85a6    8934cd6859e800
                         {disp32} je       _jmp_addr_0x007e8849                     // 0x007e85ad    0f8496020000
                         push              0x0                                      // 0x007e85b3    6a00
                         push              esi                                      // 0x007e85b5    56
                         push              edi                                      // 0x007e85b6    57
                         call              _jmp_addr_0x007e71f0                     // 0x007e85b7    e834ecffff
                         add               esp, 0x04                                // 0x007e85bc    83c404
                         push              eax                                      // 0x007e85bf    50
                         call              _jmp_addr_0x007efb60                     // 0x007e85c0    e89b750000
                         mov.s             ebx, eax                                 // 0x007e85c5    8bd8
                         add               esp, 0x0c                                // 0x007e85c7    83c40c
                         test              ebx, ebx                                 // 0x007e85ca    85db
                         {disp8} jne       _jmp_addr_0x007e8635                     // 0x007e85cc    7567
                         {disp32} mov      eax, dword ptr [edi + 0x00006004]        // 0x007e85ce    8b8704600000
                         push              edi                                      // 0x007e85d4    57
                         mov.s             edx, eax                                 // 0x007e85d5    8bd0
                         shl               edx, 5                                   // 0x007e85d7    c1e205
                         add.s             edx, eax                                 // 0x007e85da    03d0
                         {disp32} mov      byte ptr [edx * 0x8 + 0x00e85964], 0x02  // 0x007e85dc    c604d56459e80002
                         call              _jmp_addr_0x007e71f0                     // 0x007e85e4    e807ecffff
                         {disp32} mov      edi, dword ptr [edi + 0x00006004]        // 0x007e85e9    8bbf04600000
                         add               esp, 0x04                                // 0x007e85ef    83c404
                         mov.s             ecx, edi                                 // 0x007e85f2    8bcf
                         shl               ecx, 5                                   // 0x007e85f4    c1e105
                         add.s             ecx, edi                                 // 0x007e85f7    03cf
                         mov.s             edi, eax                                 // 0x007e85f9    8bf8
                         xor.s             eax, eax                                 // 0x007e85fb    33c0
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e8596c]  // 0x007e85fd    8d14cd6c59e800
                         or                ecx, 0xffffffff                          // 0x007e8604    83c9ff
                         repne scasb                                                // 0x007e8607    f2ae
                         not               ecx                                      // 0x007e8609    f7d1
                         sub.s             edi, ecx                                 // 0x007e860b    2bf9
                         mov.s             eax, ecx                                 // 0x007e860d    8bc1
                         mov.s             esi, edi                                 // 0x007e860f    8bf7
                         mov.s             edi, edx                                 // 0x007e8611    8bfa
                         shr               ecx, 2                                   // 0x007e8613    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x007e8616    f3a5
                         mov.s             ecx, eax                                 // 0x007e8618    8bc8
                         mov.s             eax, ebx                                 // 0x007e861a    8bc3
                         and               ecx, 0x03                                // 0x007e861c    83e103
                         rep movsb                                                  // 0x007e861f    f3a4
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8621    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8625    64890d00000000
                         pop               edi                                      // 0x007e862c    5f
                         pop               esi                                      // 0x007e862d    5e
                         pop               ebx                                      // 0x007e862e    5b
                         add               esp, 0x0c                                // 0x007e862f    83c40c
                         ret               0x0008                                   // 0x007e8632    c20800
_jmp_addr_0x007e8635:    push              esi                                      // 0x007e8635    56
                         call              ??3@YAXPAX@Z                             // 0x007e8636    e85d68fcff
                         add               esp, 0x04                                // 0x007e863b    83c404
                         mov.s             eax, ebx                                 // 0x007e863e    8bc3
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8640    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8644    64890d00000000
                         pop               edi                                      // 0x007e864b    5f
                         pop               esi                                      // 0x007e864c    5e
                         pop               ebx                                      // 0x007e864d    5b
                         add               esp, 0x0c                                // 0x007e864e    83c40c
                         ret               0x0008                                   // 0x007e8651    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e8654    8b742420
                         cmp               dword ptr [esi + 0x00006004], 0x64       // 0x007e8658    83be0460000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e867a // 0x007e865f    7219
                         mov               eax, 0x00000003                          // 0x007e8661    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8666    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e866a    64890d00000000
                         pop               edi                                      // 0x007e8671    5f
                         pop               esi                                      // 0x007e8672    5e
                         pop               ebx                                      // 0x007e8673    5b
                         add               esp, 0x0c                                // 0x007e8674    83c40c
                         ret               0x0008                                   // 0x007e8677    c20800
_jmp_addr_0x007e867a:    push              0x0000014d                               // 0x007e867a    684d010000
                         push              0x00c34da4                               // 0x007e867f    68a44dc300
                         push              0xc                                      // 0x007e8684    6a0c
                         call              ___nw__FUl                               // 0x007e8686    e80531ffff
                         add               esp, 0x0c                                // 0x007e868b    83c40c
                         {disp8} mov       dword ptr [esp + 0x20], eax              // 0x007e868e    89442420
                         test              eax, eax                                 // 0x007e8692    85c0
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000       // 0x007e8694    c744241400000000
                         {disp8} je        _jmp_addr_0x007e86a9                     // 0x007e869c    740b
                         mov.s             ecx, eax                                 // 0x007e869e    8bc8
                         call              _jmp_addr_0x007e89f0                     // 0x007e86a0    e84b030000
                         mov.s             edi, eax                                 // 0x007e86a5    8bf8
                         {disp8} jmp       _jmp_addr_0x007e86ab                     // 0x007e86a7    eb02
_jmp_addr_0x007e86a9:    xor.s             edi, edi                                 // 0x007e86a9    33ff
_jmp_addr_0x007e86ab:    {disp32} mov      eax, dword ptr [esi + 0x00006004]        // 0x007e86ab    8b8604600000
                         {disp8} mov       dword ptr [esp + 0x14], 0xffffffff       // 0x007e86b1    c7442414ffffffff
                         mov.s             ecx, eax                                 // 0x007e86b9    8bc8
                         mov               ebx, 0x00000003                          // 0x007e86bb    bb03000000
                         shl               ecx, 5                                   // 0x007e86c0    c1e105
                         add.s             ecx, eax                                 // 0x007e86c3    03c8
                         test              edi, edi                                 // 0x007e86c5    85ff
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], edi  // 0x007e86c7    893ccd6859e800
                         {disp32} je       _jmp_addr_0x007e8849                     // 0x007e86ce    0f8475010000
                         {disp32} mov      eax, dword ptr [esi + 0x00006008]        // 0x007e86d4    8b8608600000
                         cmp               eax, 0x10                                // 0x007e86da    83f810
                         {disp8} je        _jmp_addr_0x007e86e8                     // 0x007e86dd    7409
                         cmp               eax, 0x18                                // 0x007e86df    83f818
                         {disp32} jne      _jmp_addr_0x007e8840                     // 0x007e86e2    0f8558010000
_jmp_addr_0x007e86e8:    sub               eax, 0x10                                // 0x007e86e8    83e810
                         push              0x0                                      // 0x007e86eb    6a00
                         neg               eax                                      // 0x007e86ed    f7d8
                         sbb.s             eax, eax                                 // 0x007e86ef    1bc0
                         push              0x0                                      // 0x007e86f1    6a00
                         and               al, -0x02                                // 0x007e86f3    24fe
                         push              0x0                                      // 0x007e86f5    6a00
                         add               eax, 0x03                                // 0x007e86f7    83c003
                         push              eax                                      // 0x007e86fa    50
                         push              0x0                                      // 0x007e86fb    6a00
                         push              edi                                      // 0x007e86fd    57
                         push              esi                                      // 0x007e86fe    56
                         call              _jmp_addr_0x007e71f0                     // 0x007e86ff    e8eceaffff
                         add               esp, 0x04                                // 0x007e8704    83c404
                         mov               ecx, 0x00e85874                          // 0x007e8707    b97458e800
                         push              eax                                      // 0x007e870c    50
                         call              _jmp_addr_0x007efcf0                     // 0x007e870d    e8de750000
                         mov.s             ebx, eax                                 // 0x007e8712    8bd8
                         test              ebx, ebx                                 // 0x007e8714    85db
                         {disp32} jne      _jmp_addr_0x007e8840                     // 0x007e8716    0f8524010000
                         {disp32} jmp      _jmp_addr_0x007e87d9                     // 0x007e871c    e9b8000000
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e8721    8b742420
                         cmp               dword ptr [esi + 0x00006004], 0x64       // 0x007e8725    83be0460000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e8747 // 0x007e872c    7219
_jmp_addr_0x007e872e:    mov               eax, 0x00000003                          // 0x007e872e    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8733    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8737    64890d00000000
                         pop               edi                                      // 0x007e873e    5f
                         pop               esi                                      // 0x007e873f    5e
                         pop               ebx                                      // 0x007e8740    5b
                         add               esp, 0x0c                                // 0x007e8741    83c40c
                         ret               0x0008                                   // 0x007e8744    c20800
_jmp_addr_0x007e8747:    push              0x00000163                               // 0x007e8747    6863010000
                         push              0x00c34da4                               // 0x007e874c    68a44dc300
                         push              0xc                                      // 0x007e8751    6a0c
                         call              ___nw__FUl                               // 0x007e8753    e83830ffff
                         add               esp, 0x0c                                // 0x007e8758    83c40c
                         {disp8} mov       dword ptr [esp + 0x20], eax              // 0x007e875b    89442420
                         test              eax, eax                                 // 0x007e875f    85c0
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000001       // 0x007e8761    c744241401000000
                         {disp8} je        _jmp_addr_0x007e8776                     // 0x007e8769    740b
                         mov.s             ecx, eax                                 // 0x007e876b    8bc8
                         call              _jmp_addr_0x007e89f0                     // 0x007e876d    e87e020000
                         mov.s             edi, eax                                 // 0x007e8772    8bf8
                         {disp8} jmp       _jmp_addr_0x007e8778                     // 0x007e8774    eb02
_jmp_addr_0x007e8776:    xor.s             edi, edi                                 // 0x007e8776    33ff
_jmp_addr_0x007e8778:    {disp32} mov      eax, dword ptr [esi + 0x00006004]        // 0x007e8778    8b8604600000
                         {disp8} mov       dword ptr [esp + 0x14], 0xffffffff       // 0x007e877e    c7442414ffffffff
                         mov.s             ecx, eax                                 // 0x007e8786    8bc8
                         mov               ebx, 0x00000003                          // 0x007e8788    bb03000000
                         shl               ecx, 5                                   // 0x007e878d    c1e105
                         add.s             ecx, eax                                 // 0x007e8790    03c8
                         test              edi, edi                                 // 0x007e8792    85ff
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], edi  // 0x007e8794    893ccd6859e800
                         {disp32} je       _jmp_addr_0x007e8849                     // 0x007e879b    0f84a8000000
                         push              0x0                                      // 0x007e87a1    6a00
                         push              0x0                                      // 0x007e87a3    6a00
                         push              0x0                                      // 0x007e87a5    6a00
                         mov               ecx, 0x00e85050                          // 0x007e87a7    b95050e800
                         call              _jmp_addr_0x007e8a20                     // 0x007e87ac    e86f020000
                         sub               al, 0x10                                 // 0x007e87b1    2c10
                         neg               al                                       // 0x007e87b3    f6d8
                         sbb.s             eax, eax                                 // 0x007e87b5    1bc0
                         and               al, -0x02                                // 0x007e87b7    24fe
                         add.s             eax, ebx                                 // 0x007e87b9    03c3
                         push              eax                                      // 0x007e87bb    50
                         push              0x0                                      // 0x007e87bc    6a00
                         push              edi                                      // 0x007e87be    57
                         push              esi                                      // 0x007e87bf    56
                         call              _jmp_addr_0x007e71f0                     // 0x007e87c0    e82beaffff
                         add               esp, 0x04                                // 0x007e87c5    83c404
                         mov               ecx, 0x00e85874                          // 0x007e87c8    b97458e800
                         push              eax                                      // 0x007e87cd    50
                         call              _jmp_addr_0x007efcf0                     // 0x007e87ce    e81d750000
                         mov.s             ebx, eax                                 // 0x007e87d3    8bd8
                         test              ebx, ebx                                 // 0x007e87d5    85db
                         {disp8} jne       _jmp_addr_0x007e8840                     // 0x007e87d7    7567
_jmp_addr_0x007e87d9:    {disp32} mov      eax, dword ptr [esi + 0x00006004]        // 0x007e87d9    8b8604600000
                         push              esi                                      // 0x007e87df    56
                         mov.s             edx, eax                                 // 0x007e87e0    8bd0
                         shl               edx, 5                                   // 0x007e87e2    c1e205
                         add.s             edx, eax                                 // 0x007e87e5    03d0
                         {disp32} mov      byte ptr [edx * 0x8 + 0x00e85964], 0x03  // 0x007e87e7    c604d56459e80003
                         call              _jmp_addr_0x007e71f0                     // 0x007e87ef    e8fce9ffff
                         {disp32} mov      esi, dword ptr [esi + 0x00006004]        // 0x007e87f4    8bb604600000
                         add               esp, 0x04                                // 0x007e87fa    83c404
                         mov.s             ecx, esi                                 // 0x007e87fd    8bce
                         shl               ecx, 5                                   // 0x007e87ff    c1e105
                         add.s             ecx, esi                                 // 0x007e8802    03ce
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e8596c]  // 0x007e8804    8d14cd6c59e800
_jmp_addr_0x007e880b:    mov.s             edi, eax                                 // 0x007e880b    8bf8
                         or                ecx, 0xffffffff                          // 0x007e880d    83c9ff
                         xor.s             eax, eax                                 // 0x007e8810    33c0
                         repne scasb                                                // 0x007e8812    f2ae
                         not               ecx                                      // 0x007e8814    f7d1
                         sub.s             edi, ecx                                 // 0x007e8816    2bf9
                         mov.s             eax, ecx                                 // 0x007e8818    8bc1
                         mov.s             esi, edi                                 // 0x007e881a    8bf7
                         mov.s             edi, edx                                 // 0x007e881c    8bfa
                         shr               ecx, 2                                   // 0x007e881e    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x007e8821    f3a5
                         mov.s             ecx, eax                                 // 0x007e8823    8bc8
                         mov.s             eax, ebx                                 // 0x007e8825    8bc3
                         and               ecx, 0x03                                // 0x007e8827    83e103
                         rep movsb                                                  // 0x007e882a    f3a4
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e882c    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8830    64890d00000000
                         pop               edi                                      // 0x007e8837    5f
                         pop               esi                                      // 0x007e8838    5e
                         pop               ebx                                      // 0x007e8839    5b
                         add               esp, 0x0c                                // 0x007e883a    83c40c
                         ret               0x0008                                   // 0x007e883d    c20800
_jmp_addr_0x007e8840:    push              edi                                      // 0x007e8840    57
                         call              ??3@YAXPAX@Z                             // 0x007e8841    e85266fcff
                         add               esp, 0x04                                // 0x007e8846    83c404
_jmp_addr_0x007e8849:    mov.s             eax, ebx                                 // 0x007e8849    8bc3
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e884b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e884f    64890d00000000
                         pop               edi                                      // 0x007e8856    5f
                         pop               esi                                      // 0x007e8857    5e
                         pop               ebx                                      // 0x007e8858    5b
                         add               esp, 0x0c                                // 0x007e8859    83c40c
                         ret               0x0008                                   // 0x007e885c    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e885f    8b742420
                         {disp32} mov      cl, byte ptr [esi + 0x00006008]          // 0x007e8863    8a8e08600000
                         {disp32} mov      dl, byte ptr [esi + 0x00006004]          // 0x007e8869    8a9604600000
                         {disp32} mov      al, byte ptr [esi + 0x00006000]          // 0x007e886f    8a8600600000
                         push              ecx                                      // 0x007e8875    51
                         push              edx                                      // 0x007e8876    52
                         push              eax                                      // 0x007e8877    50
                         mov               ecx, 0x00e91edc                          // 0x007e8878    b9dc1ee900
                         call              _jmp_addr_0x00521a90                     // 0x007e887d    e80e92d3ff
                         {disp32} mov      cl, byte ptr [esi + 0x00006008]          // 0x007e8882    8a8e08600000
                         {disp32} mov      dl, byte ptr [esi + 0x00006004]          // 0x007e8888    8a9604600000
                         {disp32} mov      al, byte ptr [esi + 0x00006000]          // 0x007e888e    8a8600600000
                         push              ecx                                      // 0x007e8894    51
                         push              edx                                      // 0x007e8895    52
                         push              eax                                      // 0x007e8896    50
                         mov               ecx, 0x00e91ee0                          // 0x007e8897    b9e01ee900
                         call              _jmp_addr_0x007df850                     // 0x007e889c    e8af6fffff
                         xor.s             eax, eax                                 // 0x007e88a1    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e88a3    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e88a7    64890d00000000
                         pop               edi                                      // 0x007e88ae    5f
                         pop               esi                                      // 0x007e88af    5e
                         pop               ebx                                      // 0x007e88b0    5b
                         add               esp, 0x0c                                // 0x007e88b1    83c40c
                         ret               0x0008                                   // 0x007e88b4    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e88b7    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x00006004]        // 0x007e88bb    8b8804600000
                         sub               ecx, 0x10                                // 0x007e88c1    83e910
                         neg               ecx                                      // 0x007e88c4    f7d9
                         sbb.s             ecx, ecx                                 // 0x007e88c6    1bc9
                         and               ecx, 0xfffffffe                          // 0x007e88c8    83e1fe
                         add               ecx, 0x3                                 // 0x007e88cb    83c103
                         push              ecx                                      // 0x007e88ce    51
                         push              eax                                      // 0x007e88cf    50
                         {disp8} jmp       _jmp_addr_0x007e88ed                     // 0x007e88d0    eb1b
                         mov               ecx, 0x00e85050                          // 0x007e88d2    b95050e800
                         call              _jmp_addr_0x007e8a20                     // 0x007e88d7    e844010000
                         sub               al, 0x10                                 // 0x007e88dc    2c10
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e88de    8b542420
                         neg               al                                       // 0x007e88e2    f6d8
                         sbb.s             eax, eax                                 // 0x007e88e4    1bc0
                         and               al, -0x02                                // 0x007e88e6    24fe
                         add               eax, 0x03                                // 0x007e88e8    83c003
                         push              eax                                      // 0x007e88eb    50
                         push              edx                                      // 0x007e88ec    52
_jmp_addr_0x007e88ed:    call              _jmp_addr_0x007e71f0                     // 0x007e88ed    e8fee8ffff
                         add               esp, 0x04                                // 0x007e88f2    83c404
                         mov               ecx, 0x00e8c084                          // 0x007e88f5    b984c0e800
                         push              eax                                      // 0x007e88fa    50
                         call              _jmp_addr_0x007e3c20                     // 0x007e88fb    e820b3ffff
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8900    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8904    64890d00000000
                         pop               edi                                      // 0x007e890b    5f
                         pop               esi                                      // 0x007e890c    5e
                         pop               ebx                                      // 0x007e890d    5b
                         add               esp, 0x0c                                // 0x007e890e    83c40c
                         ret               0x0008                                   // 0x007e8911    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e8914    8b542420
                         push              edx                                      // 0x007e8918    52
                         push              eax                                      // 0x007e8919    50
                         call              _jmp_addr_0x007e9a10                     // 0x007e891a    e8f1100000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e891f    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8923    64890d00000000
                         pop               edi                                      // 0x007e892a    5f
                         pop               esi                                      // 0x007e892b    5e
                         pop               ebx                                      // 0x007e892c    5b
                         add               esp, 0x0c                                // 0x007e892d    83c40c
                         ret               0x0008                                   // 0x007e8930    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e8933    8b442420
                         {disp32} lea      edx, dword ptr [eax + 0x00001000]        // 0x007e8937    8d9000100000
                         push              edx                                      // 0x007e893d    52
                         {disp32} lea      edx, dword ptr [eax + 0x00000800]        // 0x007e893e    8d9000080000
                         push              edx                                      // 0x007e8944    52
                         push              eax                                      // 0x007e8945    50
                         call              _jmp_addr_0x007e9910                     // 0x007e8946    e8c50f0000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e894b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e894f    64890d00000000
                         pop               edi                                      // 0x007e8956    5f
                         pop               esi                                      // 0x007e8957    5e
                         pop               ebx                                      // 0x007e8958    5b
                         add               esp, 0x0c                                // 0x007e8959    83c40c
                         ret               0x0008                                   // 0x007e895c    c20800
_jmp_addr_0x007e895f:    {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e895f    8b542420
                         push              edx                                      // 0x007e8963    52
                         or                edx, 0xffffffff                          // 0x007e8964    83caff
                         sub.s             edx, eax                                 // 0x007e8967    2bd0
                         push              edx                                      // 0x007e8969    52
                         call              dword ptr [ecx + 0x24]                   // 0x007e896a    ff5124
                         {disp8} mov       ecx, dword ptr [esp + 0x14]              // 0x007e896d    8b4c2414
                         add               esp, 0x08                                // 0x007e8971    83c408
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8974    64890d00000000
                         pop               edi                                      // 0x007e897b    5f
                         pop               esi                                      // 0x007e897c    5e
                         pop               ebx                                      // 0x007e897d    5b
                         add               esp, 0x0c                                // 0x007e897e    83c40c
                         ret               0x0008                                   // 0x007e8981    c20800

// Snippet: jmptbl, [0x007e8984, 0x007e89f0)
.byte 0x75, 0x82, 0x7e, 0x00      // 0x007e8984
.byte 0xc3, 0x82, 0x7e, 0x00      // 0x007e8988
.byte 0xec, 0x82, 0x7e, 0x00      // 0x007e898c
.byte 0x21, 0x83, 0x7e, 0x00      // 0x007e8990
.byte 0x4a, 0x83, 0x7e, 0x00      // 0x007e8994
.byte 0x73, 0x83, 0x7e, 0x00      // 0x007e8998
.byte 0x9c, 0x83, 0x7e, 0x00      // 0x007e899c
.byte 0xc5, 0x83, 0x7e, 0x00      // 0x007e89a0
.byte 0xf1, 0x83, 0x7e, 0x00      // 0x007e89a4
.byte 0x1d, 0x84, 0x7e, 0x00      // 0x007e89a8
.byte 0x46, 0x84, 0x7e, 0x00      // 0x007e89ac
.byte 0x6f, 0x84, 0x7e, 0x00      // 0x007e89b0
.byte 0xa1, 0x84, 0x7e, 0x00      // 0x007e89b4
.byte 0x2e, 0x87, 0x7e, 0x00      // 0x007e89b8
.byte 0x2e, 0x87, 0x7e, 0x00      // 0x007e89bc
.byte 0x2e, 0x87, 0x7e, 0x00      // 0x007e89c0
.byte 0x56, 0x85, 0x7e, 0x00      // 0x007e89c4
.byte 0x54, 0x86, 0x7e, 0x00      // 0x007e89c8
.byte 0x21, 0x87, 0x7e, 0x00      // 0x007e89cc
.byte 0xca, 0x84, 0x7e, 0x00      // 0x007e89d0
.byte 0xb7, 0x88, 0x7e, 0x00      // 0x007e89d4
.byte 0xd2, 0x88, 0x7e, 0x00      // 0x007e89d8
.byte 0x5f, 0x88, 0x7e, 0x00      // 0x007e89dc
.byte 0x14, 0x89, 0x7e, 0x00      // 0x007e89e0
.byte 0x14, 0x89, 0x7e, 0x00      // 0x007e89e4
.byte 0x14, 0x89, 0x7e, 0x00      // 0x007e89e8
.byte 0x33, 0x89, 0x7e, 0x00      // 0x007e89ec

