.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetSizeFootprintData@LH3DMesh@@QAEIXZ
.extern ?GetSizeUV2Data@LH3DMesh@@QAEIXZ
.extern _jmp_addr_0x00427080
.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern @SetPosition__6ZoomerFf@12
.extern _jmp_addr_0x00511f50
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005c8fe0
.extern _StartScript__7GScriptFPc@4
.extern _jmp_addr_0x006f6840
.extern _jmp_addr_0x00784780
.extern _jmp_addr_0x00784990
.extern _jmp_addr_0x007849a0
.extern _jmp_addr_0x007849d0
.extern ?StartScript@ChallengeRoom@@QAE_NK@Z
.extern _jmp_addr_0x0079a5d0
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___nw__FUl
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Release__8LH3DMeshFv@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern _jmp_addr_0x0081b370
.extern _jmp_addr_0x008398a0
.extern _jmp_addr_0x0083d4b0
.extern _jmp_addr_0x0083d520
.extern _jmp_addr_0x0083d750
.extern _jmp_addr_0x0083d7b0
.extern _jmp_addr_0x0083d7d0
.extern _jmp_addr_0x0083d8d0

.globl _jmp_addr_0x00794970
.globl _jmp_addr_0x007949a0
.globl _jmp_addr_0x007949b0
.globl _jmp_addr_0x007949e0
.globl _jmp_addr_0x00794a00
.globl ?StartScript@Temple@@QAE_NK@Z
.globl _ProcessGameTurn__6TempleFv@0
.globl _jmp_addr_0x00794a80
.globl _jmp_addr_0x00794d30
.globl _jmp_addr_0x00794e30
.globl _jmp_addr_0x00794f30
.globl _jmp_addr_0x00794f70
.globl _jmp_addr_0x00794fb0
.globl ??0InnerRoom@@QAE@XZ 
.globl _jmp_addr_0x00795090
.globl _jmp_addr_0x007950b0
.globl _jmp_addr_0x00795140
.globl _jmp_addr_0x00795210
.globl _jmp_addr_0x007952c0
.globl _jmp_addr_0x00795310
.globl _jmp_addr_0x00795430
.globl _jmp_addr_0x007954a0
.globl @TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d@17
.globl _jmp_addr_0x00795980

.globl _globl_ct_0x00794ab0
.globl _FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff
.globl _TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d

start_0x00794970_0x00795ce0:
// Snippet: asm, [0x00794970, 0x00795cdc)
_jmp_addr_0x00794970:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00794970    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00794974    8b542410
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00794978    8b4908
                         push               eax                                           // 0x0079497b    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0079497c    8b442410
                         push               edx                                           // 0x00794980    52
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00794981    8b542410
                         push               eax                                           // 0x00794985    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00794986    8b442410
                         push               edx                                           // 0x0079498a    52
                         push               eax                                           // 0x0079498b    50
                         call               _jmp_addr_0x00784780                          // 0x0079498c    e8effdfeff
                         ret                0x0014                                        // 0x00794991    c21400
                         nop                                                              // 0x00794994    90
                         nop                                                              // 0x00794995    90
                         nop                                                              // 0x00794996    90
                         nop                                                              // 0x00794997    90
                         nop                                                              // 0x00794998    90
                         nop                                                              // 0x00794999    90
                         nop                                                              // 0x0079499a    90
                         nop                                                              // 0x0079499b    90
                         nop                                                              // 0x0079499c    90
                         nop                                                              // 0x0079499d    90
                         nop                                                              // 0x0079499e    90
                         nop                                                              // 0x0079499f    90
_jmp_addr_0x007949a0:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x007949a0    8b4908
                         {disp32} jmp       _jmp_addr_0x00784990                          // 0x007949a3    e9e8fffeff
                         nop                                                              // 0x007949a8    90
                         nop                                                              // 0x007949a9    90
                         nop                                                              // 0x007949aa    90
                         nop                                                              // 0x007949ab    90
                         nop                                                              // 0x007949ac    90
                         nop                                                              // 0x007949ad    90
                         nop                                                              // 0x007949ae    90
                         nop                                                              // 0x007949af    90
_jmp_addr_0x007949b0:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x007949b0    8b4908
                         {disp32} jmp       _jmp_addr_0x007849a0                          // 0x007949b3    e9e8fffeff
                         nop                                                              // 0x007949b8    90
                         nop                                                              // 0x007949b9    90
                         nop                                                              // 0x007949ba    90
                         nop                                                              // 0x007949bb    90
                         nop                                                              // 0x007949bc    90
                         nop                                                              // 0x007949bd    90
                         nop                                                              // 0x007949be    90
                         nop                                                              // 0x007949bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007949c0    8b442408
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x007949c4    8b4908
                         push               esi                                           // 0x007949c7    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x007949c8    8b742408
                         push               eax                                           // 0x007949cc    50
                         push               esi                                           // 0x007949cd    56
                         call               _jmp_addr_0x007849d0                          // 0x007949ce    e8fdfffeff
                         mov.s              eax, esi                                      // 0x007949d3    8bc6
                         pop                esi                                           // 0x007949d5    5e
                         ret                0x0008                                        // 0x007949d6    c20800
                         nop                                                              // 0x007949d9    90
                         nop                                                              // 0x007949da    90
                         nop                                                              // 0x007949db    90
                         nop                                                              // 0x007949dc    90
                         nop                                                              // 0x007949dd    90
                         nop                                                              // 0x007949de    90
                         nop                                                              // 0x007949df    90
_jmp_addr_0x007949e0:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007949e0    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x007949e4    8b54240c
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x007949e8    8b491c
                         push               eax                                           // 0x007949eb    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007949ec    8b44240c
                         push               edx                                           // 0x007949f0    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x007949f1    8b54240c
                         push               eax                                           // 0x007949f5    50
                         push               edx                                           // 0x007949f6    52
                         call               _jmp_addr_0x0079a5d0                          // 0x007949f7    e8d45b0000
                         ret                0x0010                                        // 0x007949fc    c21000
                         nop                                                              // 0x007949ff    90
_jmp_addr_0x00794a00:    {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x00794a00    8b491c
                         test               ecx, ecx                                      // 0x00794a03    85c9
                         {disp8} je         _jmp_addr_0x00794a1b                          // 0x00794a05    7414
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00794a07    8b54240c
                         mov                eax, dword ptr [ecx]                          // 0x00794a0b    8b01
                         push               edx                                           // 0x00794a0d    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00794a0e    8b54240c
                         push               edx                                           // 0x00794a12    52
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00794a13    8b54240c
                         push               edx                                           // 0x00794a17    52
                         call               dword ptr [eax + 0x30]                        // 0x00794a18    ff5030
_jmp_addr_0x00794a1b:    ret                0x000c                                        // 0x00794a1b    c20c00
                         nop                                                              // 0x00794a1e    90
                         nop                                                              // 0x00794a1f    90
?StartScript@Temple@@QAE_NK@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00794a20    8b442404
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00794a24    8b4908
                         push               eax                                           // 0x00794a27    50
                         call               ?StartScript@ChallengeRoom@@QAE_NK@Z          // 0x00794a28    e8e301ffff
                         ret                0x0004                                        // 0x00794a2d    c20400
_ProcessGameTurn__6TempleFv@0:    {disp32} mov       eax, dword ptr [_game]                        // 0x00794a30    a15c19d000
                         test               byte ptr [eax + 0x14], 0x04                   // 0x00794a35    f6401404
                         {disp8} je         _jmp_addr_0x00794a74                          // 0x00794a39    7439
                         push               -0x1                                          // 0x00794a3b    6aff
                         mov                ecx, 0x00cd3b24                               // 0x00794a3d    b9243bcd00
                         call               _jmp_addr_0x00511f50                          // 0x00794a42    e809d5d7ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x00794a47    8b0d105cd900
                         push               0x18                                          // 0x00794a4d    6a18
                         call               _jmp_addr_0x006f6840                          // 0x00794a4f    e8ec1df6ff
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00794a54    8b0d203bcd00
                         call               _jmp_addr_0x00427080                          // 0x00794a5a    e82126c9ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00794a5f    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00794a65    8b895c002500
                         test               ecx, ecx                                      // 0x00794a6b    85c9
                         {disp8} je         _jmp_addr_0x00794a74                          // 0x00794a6d    7405
                         {disp32} jmp       _jmp_addr_0x005c8fe0                          // 0x00794a6f    e96c45e3ff
_jmp_addr_0x00794a74:    ret                                                              // 0x00794a74    c3
                         nop                                                              // 0x00794a75    90
                         nop                                                              // 0x00794a76    90
                         nop                                                              // 0x00794a77    90
                         nop                                                              // 0x00794a78    90
                         nop                                                              // 0x00794a79    90
                         nop                                                              // 0x00794a7a    90
                         nop                                                              // 0x00794a7b    90
                         nop                                                              // 0x00794a7c    90
                         nop                                                              // 0x00794a7d    90
                         nop                                                              // 0x00794a7e    90
                         nop                                                              // 0x00794a7f    90
_jmp_addr_0x00794a80:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00794a80    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00794a86    e8f5e4dbff
                         test               eax, eax                                      // 0x00794a8b    85c0
                         {disp8} jne        _jmp_addr_0x00794aae                          // 0x00794a8d    751f
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00794a8f    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a0c]             // 0x00794a94    8b880c5a2000
                         test               ecx, ecx                                      // 0x00794a9a    85c9
                         {disp8} jne        _jmp_addr_0x00794aae                          // 0x00794a9c    7510
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00794a9e    8b4c2404
                         push               ecx                                           // 0x00794aa2    51
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x00794aa3    8b8890002500
                         call               _StartScript__7GScriptFPc@4                   // 0x00794aa9    e8626cf5ff
_jmp_addr_0x00794aae:    ret                                                              // 0x00794aae    c3
                         nop                                                              // 0x00794aaf    90
_globl_ct_0x00794ab0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00794ab0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00794ab6    b001
                         test               al, cl                                        // 0x00794ab8    84c8
                         {disp8} jne        _jmp_addr_0x00794ac4                          // 0x00794aba    7508
                         or.s               cl, al                                        // 0x00794abc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00794abe    880d34c9fa00
_jmp_addr_0x00794ac4:    {disp32} jmp       _jmp_addr_0x00794ad0                          // 0x00794ac4    e907000000
                         nop                                                              // 0x00794ac9    90
                         nop                                                              // 0x00794aca    90
                         nop                                                              // 0x00794acb    90
                         nop                                                              // 0x00794acc    90
                         nop                                                              // 0x00794acd    90
                         nop                                                              // 0x00794ace    90
                         nop                                                              // 0x00794acf    90
_jmp_addr_0x00794ad0:    push               0x00407870                                    // 0x00794ad0    6870784000
                         call               _atexit                                       // 0x00794ad5    e8b70c0300
                         pop                ecx                                           // 0x00794ada    59
                         ret                                                              // 0x00794adb    c3
                         nop                                                              // 0x00794adc    90
                         nop                                                              // 0x00794add    90
                         nop                                                              // 0x00794ade    90
                         nop                                                              // 0x00794adf    90
_jmp_addr_0x00794ae0:    sub                esp, 0x24                                     // 0x00794ae0    83ec24
                         push               ebx                                           // 0x00794ae3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x00794ae4    8b5c2438
                         push               esi                                           // 0x00794ae8    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00794ae9    8b742430
                         fld                dword ptr [esi]                               // 0x00794aed    d906
                         push               edi                                           // 0x00794aef    57
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00794af0    d95c2418
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00794af4    d944243c
                         mov                edi, 0x00000001                               // 0x00794af8    bf01000000
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00794afd    d84604
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794b00    897c2434
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794b04    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00794b08    d9442438
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794b0c    d84608
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794b0f    d95c2420
_jmp_addr_0x00794b13:    {disp8} fild       dword ptr [esp + 0x34]                        // 0x00794b13    db442434
                         push               0x0                                           // 0x00794b17    6a00
                         push               ebx                                           // 0x00794b19    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00794b1a    8d442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2504]              // 0x00794b1e    d80d04b58a00
                         push               eax                                           // 0x00794b24    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00794b25    8d4c2424
                         push               ecx                                           // 0x00794b29    51
                         fld                st(0)                                         // 0x00794b2a    d9c0
                         fsin                                                             // 0x00794b2c    d9fe
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794b2e    d84c2448
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00794b32    d95c2434
                         fcos                                                             // 0x00794b36    d9ff
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794b38    d84c2448
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00794b3c    d9442434
                         fadd               dword ptr [esi]                               // 0x00794b40    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794b42    d95c241c
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00794b46    d944244c
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00794b4a    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794b4d    d95c2420
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794b51    d84608
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00794b54    d95c2424
                         call               _jmp_addr_0x008398a0                          // 0x00794b58    e8434d0a00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00794b5d    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00794b61    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00794b65    8b4c2424
                         add                esp, 0x10                                     // 0x00794b69    83c410
                         inc                edi                                           // 0x00794b6c    47
                         cmp                edi, 0x20                                     // 0x00794b6d    83ff20
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00794b70    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00794b74    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00794b78    894c2420
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794b7c    897c2434
                         {disp8} jle        _jmp_addr_0x00794b13                          // 0x00794b80    7e91
                         pop                edi                                           // 0x00794b82    5f
                         pop                esi                                           // 0x00794b83    5e
                         pop                ebx                                           // 0x00794b84    5b
                         add                esp, 0x24                                     // 0x00794b85    83c424
                         ret                                                              // 0x00794b88    c3
                         nop                                                              // 0x00794b89    90
                         nop                                                              // 0x00794b8a    90
                         nop                                                              // 0x00794b8b    90
                         nop                                                              // 0x00794b8c    90
                         nop                                                              // 0x00794b8d    90
                         nop                                                              // 0x00794b8e    90
                         nop                                                              // 0x00794b8f    90
_jmp_addr_0x00794b90:    sub                esp, 0x24                                     // 0x00794b90    83ec24
                         push               ebx                                           // 0x00794b93    53
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x00794b94    8b5c2438
                         push               esi                                           // 0x00794b98    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00794b99    8b742430
                         fld                dword ptr [esi]                               // 0x00794b9d    d906
                         push               edi                                           // 0x00794b9f    57
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00794ba0    d95c2418
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00794ba4    d9442438
                         mov                edi, 0x00000001                               // 0x00794ba8    bf01000000
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00794bad    d84604
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794bb0    897c2434
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794bb4    d95c241c
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00794bb8    d944243c
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794bbc    d84608
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794bbf    d95c2420
_jmp_addr_0x00794bc3:    {disp8} fild       dword ptr [esp + 0x34]                        // 0x00794bc3    db442434
                         push               0x0                                           // 0x00794bc7    6a00
                         push               ebx                                           // 0x00794bc9    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00794bca    8d442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2504]              // 0x00794bce    d80d04b58a00
                         push               eax                                           // 0x00794bd4    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00794bd5    8d4c2424
                         push               ecx                                           // 0x00794bd9    51
                         fld                st(0)                                         // 0x00794bda    d9c0
                         fsin                                                             // 0x00794bdc    d9fe
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794bde    d84c2448
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00794be2    d95c2434
                         fcos                                                             // 0x00794be6    d9ff
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794be8    d84c2448
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00794bec    d9442434
                         fadd               dword ptr [esi]                               // 0x00794bf0    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794bf2    d95c241c
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00794bf6    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794bf9    d95c2420
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00794bfd    d944244c
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794c01    d84608
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00794c04    d95c2424
                         call               _jmp_addr_0x008398a0                          // 0x00794c08    e8934c0a00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00794c0d    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00794c11    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00794c15    8b4c2424
                         add                esp, 0x10                                     // 0x00794c19    83c410
                         inc                edi                                           // 0x00794c1c    47
                         cmp                edi, 0x20                                     // 0x00794c1d    83ff20
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00794c20    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00794c24    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00794c28    894c2420
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794c2c    897c2434
                         {disp8} jle        _jmp_addr_0x00794bc3                          // 0x00794c30    7e91
                         pop                edi                                           // 0x00794c32    5f
                         pop                esi                                           // 0x00794c33    5e
                         pop                ebx                                           // 0x00794c34    5b
                         add                esp, 0x24                                     // 0x00794c35    83c424
                         ret                                                              // 0x00794c38    c3
                         nop                                                              // 0x00794c39    90
                         nop                                                              // 0x00794c3a    90
                         nop                                                              // 0x00794c3b    90
                         nop                                                              // 0x00794c3c    90
                         nop                                                              // 0x00794c3d    90
                         nop                                                              // 0x00794c3e    90
                         nop                                                              // 0x00794c3f    90
_jmp_addr_0x00794c40:    sub                esp, 0x24                                     // 0x00794c40    83ec24
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00794c43    d9442430
                         push               ebx                                           // 0x00794c47    53
                         {disp8} mov        ebx, dword ptr [esp + 0x38]                   // 0x00794c48    8b5c2438
                         push               esi                                           // 0x00794c4c    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00794c4d    8b742430
                         fadd               dword ptr [esi]                               // 0x00794c51    d806
                         push               edi                                           // 0x00794c53    57
                         mov                edi, 0x00000001                               // 0x00794c54    bf01000000
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794c59    897c2434
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00794c5d    d95c2418
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00794c61    d94604
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794c64    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00794c68    d9442438
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794c6c    d84608
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794c6f    d95c2420
_jmp_addr_0x00794c73:    {disp8} fild       dword ptr [esp + 0x34]                        // 0x00794c73    db442434
                         push               0x0                                           // 0x00794c77    6a00
                         push               ebx                                           // 0x00794c79    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00794c7a    8d442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2504]              // 0x00794c7e    d80d04b58a00
                         push               eax                                           // 0x00794c84    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00794c85    8d4c2424
                         push               ecx                                           // 0x00794c89    51
                         fld                st(0)                                         // 0x00794c8a    d9c0
                         fsin                                                             // 0x00794c8c    d9fe
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794c8e    d84c2448
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00794c92    d95c2438
                         fcos                                                             // 0x00794c96    d9ff
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x00794c98    d84c2448
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00794c9c    d944244c
                         fadd               dword ptr [esi]                               // 0x00794ca0    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00794ca2    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00794ca6    d9442438
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x00794caa    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00794cad    d95c2420
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00794cb1    d84608
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00794cb4    d95c2424
                         call               _jmp_addr_0x008398a0                          // 0x00794cb8    e8e34b0a00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00794cbd    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00794cc1    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00794cc5    8b4c2424
                         add                esp, 0x10                                     // 0x00794cc9    83c410
                         inc                edi                                           // 0x00794ccc    47
                         cmp                edi, 0x20                                     // 0x00794ccd    83ff20
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00794cd0    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00794cd4    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00794cd8    894c2420
                         {disp8} mov        dword ptr [esp + 0x34], edi                   // 0x00794cdc    897c2434
                         {disp8} jle        _jmp_addr_0x00794c73                          // 0x00794ce0    7e91
                         pop                edi                                           // 0x00794ce2    5f
                         pop                esi                                           // 0x00794ce3    5e
                         pop                ebx                                           // 0x00794ce4    5b
                         add                esp, 0x24                                     // 0x00794ce5    83c424
                         ret                                                              // 0x00794ce8    c3
                         nop                                                              // 0x00794ce9    90
                         nop                                                              // 0x00794cea    90
                         nop                                                              // 0x00794ceb    90
                         nop                                                              // 0x00794cec    90
                         nop                                                              // 0x00794ced    90
                         nop                                                              // 0x00794cee    90
                         nop                                                              // 0x00794cef    90
                         push               ebx                                           // 0x00794cf0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00794cf1    8b5c2408
                         push               esi                                           // 0x00794cf5    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00794cf6    8b742414
                         push               edi                                           // 0x00794cfa    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00794cfb    8b7c2414
                         push               esi                                           // 0x00794cff    56
                         push               0x0                                           // 0x00794d00    6a00
                         push               edi                                           // 0x00794d02    57
                         push               ebx                                           // 0x00794d03    53
                         call               _jmp_addr_0x00794ae0                          // 0x00794d04    e8d7fdffff
                         push               esi                                           // 0x00794d09    56
                         push               0x0                                           // 0x00794d0a    6a00
                         push               edi                                           // 0x00794d0c    57
                         push               ebx                                           // 0x00794d0d    53
                         call               _jmp_addr_0x00794b90                          // 0x00794d0e    e87dfeffff
                         push               esi                                           // 0x00794d13    56
                         push               0x0                                           // 0x00794d14    6a00
                         push               edi                                           // 0x00794d16    57
                         push               ebx                                           // 0x00794d17    53
                         call               _jmp_addr_0x00794c40                          // 0x00794d18    e823ffffff
                         add                esp, 0x30                                     // 0x00794d1d    83c430
                         pop                edi                                           // 0x00794d20    5f
                         pop                esi                                           // 0x00794d21    5e
                         pop                ebx                                           // 0x00794d22    5b
                         ret                                                              // 0x00794d23    c3
                         nop                                                              // 0x00794d24    90
                         nop                                                              // 0x00794d25    90
                         nop                                                              // 0x00794d26    90
                         nop                                                              // 0x00794d27    90
                         nop                                                              // 0x00794d28    90
                         nop                                                              // 0x00794d29    90
                         nop                                                              // 0x00794d2a    90
                         nop                                                              // 0x00794d2b    90
                         nop                                                              // 0x00794d2c    90
                         nop                                                              // 0x00794d2d    90
                         nop                                                              // 0x00794d2e    90
                         nop                                                              // 0x00794d2f    90
_jmp_addr_0x00794d30:    {disp32} mov       eax, dword ptr [data_bytes + 0x26418c]        // 0x00794d30    a18ca1c200
                         test               eax, eax                                      // 0x00794d35    85c0
                         {disp32} jl        _jmp_addr_0x00794e18                          // 0x00794d37    0f8cdb000000
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794d3d    d9052c60e000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00794d43    d81d90a38a00
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794d49    d9052c60e000
                         fnstsw             ax                                            // 0x00794d4f    dfe0
                         test               ah, 0x01                                      // 0x00794d51    f6c401
                         {disp8} je         _jmp_addr_0x00794dd2                          // 0x00794d54    747c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00794d56    d81d98a38a00
                         fnstsw             ax                                            // 0x00794d5c    dfe0
                         test               ah, 0x41                                      // 0x00794d5e    f6c441
                         {disp8} je         _jmp_addr_0x00794d67                          // 0x00794d61    7404
                         mov                cl, 0x01                                      // 0x00794d63    b101
                         {disp8} jmp        _jmp_addr_0x00794d69                          // 0x00794d65    eb02
_jmp_addr_0x00794d67:    xor.s              cl, cl                                        // 0x00794d67    32c9
_jmp_addr_0x00794d69:    {disp32} fld       dword ptr [data_bytes + 0x440030]             // 0x00794d69    d9053060e000
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x00794d6f    d84c2404
                         {disp32} fadd      dword ptr [data_bytes + 0x44002c]             // 0x00794d73    d8052c60e000
                         {disp32} fst       dword ptr [data_bytes + 0x44002c]             // 0x00794d79    d9152c60e000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00794d7f    d81d98a38a00
                         fnstsw             ax                                            // 0x00794d85    dfe0
                         test               ah, 0x41                                      // 0x00794d87    f6c441
                         {disp8} je         _jmp_addr_0x00794d90                          // 0x00794d8a    7404
                         mov                al, 0x01                                      // 0x00794d8c    b001
                         {disp8} jmp        _jmp_addr_0x00794d92                          // 0x00794d8e    eb02
_jmp_addr_0x00794d90:    xor.s              al, al                                        // 0x00794d90    32c0
_jmp_addr_0x00794d92:    cmp.s              cl, al                                        // 0x00794d92    3ac8
                         {disp8} je         _jmp_addr_0x00794db3                          // 0x00794d94    741d
                         test               cl, cl                                        // 0x00794d96    84c9
                         {disp8} je         _jmp_addr_0x00794db3                          // 0x00794d98    7419
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00794d9a    8b0d203bcd00
                         push               0x1                                           // 0x00794da0    6a01
                         push               0x0                                           // 0x00794da2    6a00
                         push               0x0                                           // 0x00794da4    6a00
                         push               0x0                                           // 0x00794da6    6a00
                         push               0x2                                           // 0x00794da8    6a02
                         push               0x3c                                          // 0x00794daa    6a3c
                         push               0x0                                           // 0x00794dac    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x00794dae    e8ad4fc9ff
_jmp_addr_0x00794db3:    {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794db3    d9052c60e000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00794db9    d81d90a38a00
                         fnstsw             ax                                            // 0x00794dbf    dfe0
                         test               ah, 0x41                                      // 0x00794dc1    f6c441
                         {disp8} jne        _jmp_addr_0x00794e22                          // 0x00794dc4    755c
                         {disp32} mov       dword ptr [data_bytes + 0x44002c], 0x3f800000 // 0x00794dc6    c7052c60e0000000803f
                         {disp8} jmp        _jmp_addr_0x00794e22                          // 0x00794dd0    eb50
_jmp_addr_0x00794dd2:    {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00794dd2    d81d90a38a00
                         fnstsw             ax                                            // 0x00794dd8    dfe0
                         test               ah, 0x41                                      // 0x00794dda    f6c441
                         {disp8} jne        _jmp_addr_0x00794e22                          // 0x00794ddd    7543
                         {disp32} fld       dword ptr [data_bytes + 0x440030]             // 0x00794ddf    d9053060e000
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x00794de5    d84c2404
                         {disp32} fadd      dword ptr [data_bytes + 0x44002c]             // 0x00794de9    d8052c60e000
                         {disp32} fst       dword ptr [data_bytes + 0x44002c]             // 0x00794def    d9152c60e000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x00794df5    d81d78b48a00
                         fnstsw             ax                                            // 0x00794dfb    dfe0
                         test               ah, 0x41                                      // 0x00794dfd    f6c441
                         {disp8} jne        _jmp_addr_0x00794e22                          // 0x00794e00    7520
                         {disp32} mov       dword ptr [data_bytes + 0x44002c], 0x00000000 // 0x00794e02    c7052c60e00000000000
                         {disp32} mov       dword ptr [data_bytes + 0x26418c], 0xffffffff // 0x00794e0c    c7058ca1c200ffffffff
                         {disp8} jmp        _jmp_addr_0x00794e22                          // 0x00794e16    eb0a
_jmp_addr_0x00794e18:    {disp32} mov       dword ptr [data_bytes + 0x44002c], 0x00000000 // 0x00794e18    c7052c60e00000000000
_jmp_addr_0x00794e22:    {disp32} jmp       _jmp_addr_0x00794e30                          // 0x00794e22    e909000000
                         nop                                                              // 0x00794e27    90
                         nop                                                              // 0x00794e28    90
                         nop                                                              // 0x00794e29    90
                         nop                                                              // 0x00794e2a    90
                         nop                                                              // 0x00794e2b    90
                         nop                                                              // 0x00794e2c    90
                         nop                                                              // 0x00794e2d    90
                         nop                                                              // 0x00794e2e    90
                         nop                                                              // 0x00794e2f    90
_jmp_addr_0x00794e30:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00794e30    d90598a38a00
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794e36    d9052c60e000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00794e3c    d81d98a38a00
                         fnstsw             ax                                            // 0x00794e42    dfe0
                         test               ah, 0x41                                      // 0x00794e44    f6c441
                         {disp8} jne        _jmp_addr_0x00794e78                          // 0x00794e47    752f
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794e49    d9052c60e000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2478]              // 0x00794e4f    d81d78b48a00
                         fnstsw             ax                                            // 0x00794e55    dfe0
                         test               ah, 0x01                                      // 0x00794e57    f6c401
                         {disp8} je         _jmp_addr_0x00794e78                          // 0x00794e5a    741c
                         fstp               st(0)                                         // 0x00794e5c    ddd8
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794e5e    d9052c60e000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x00794e64    d80da0368c00
                         fcos                                                             // 0x00794e6a    d9ff
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x00794e6c    dc2d80b68a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0xf5e60]             // 0x00794e72    dc0d60ee9900
_jmp_addr_0x00794e78:    push               ebx                                           // 0x00794e78    53
                         push               esi                                           // 0x00794e79    56
                         push               edi                                           // 0x00794e7a    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x26418c]        // 0x00794e7b    8b3d8ca1c200
                         xor.s              ecx, ecx                                      // 0x00794e81    33c9
                         xor.s              edx, edx                                      // 0x00794e83    33d2
                         mov                eax, 0x00e9ce50                               // 0x00794e85    b850cee900
                         mov                esi, 0x3f800000                               // 0x00794e8a    be0000803f
_jmp_addr_0x00794e8f:    cmp.s              edx, edi                                      // 0x00794e8f    3bd7
                         {disp8} jne        _jmp_addr_0x00794ec4                          // 0x00794e91    7531
                         fld                st(0)                                         // 0x00794e93    d9c0
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00794e95    894804
                         fchs                                                             // 0x00794e98    d9e0
                         mov                dword ptr [eax], ecx                          // 0x00794e9a    8908
                         fld                st(0)                                         // 0x00794e9c    d9c0
                         {disp8} mov        dword ptr [eax + -0x04], ecx                  // 0x00794e9e    8948fc
                         fcos                                                             // 0x00794ea1    d9ff
                         {disp8} mov        dword ptr [eax + -0x0c], ecx                  // 0x00794ea3    8948f4
                         {disp8} mov        dword ptr [eax + -0x14], ecx                  // 0x00794ea6    8948ec
                         {disp8} mov        dword ptr [eax + -0x1c], ecx                  // 0x00794ea9    8948e4
                         {disp8} mov        dword ptr [eax + -0x24], ecx                  // 0x00794eac    8948dc
                         {disp8} mov        dword ptr [eax + -0x18], esi                  // 0x00794eaf    8970e8
                         {disp8} fst        dword ptr [eax + -0x08]                       // 0x00794eb2    d950f8
                         {disp8} fstp       dword ptr [eax + -0x28]                       // 0x00794eb5    d958d8
                         fsin                                                             // 0x00794eb8    d9fe
                         {disp8} fst        dword ptr [eax + -0x20]                       // 0x00794eba    d950e0
                         fchs                                                             // 0x00794ebd    d9e0
                         {disp8} fstp       dword ptr [eax + -0x10]                       // 0x00794ebf    d958f0
                         {disp8} jmp        _jmp_addr_0x00794f12                          // 0x00794ec2    eb4e
_jmp_addr_0x00794ec4:    {disp8} lea        ebx, dword ptr [edi + 0x01]                   // 0x00794ec4    8d5f01
                         cmp.s              edx, ebx                                      // 0x00794ec7    3bd3
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00794ec9    894804
                         mov                dword ptr [eax], ecx                          // 0x00794ecc    8908
                         {disp8} mov        dword ptr [eax + -0x04], ecx                  // 0x00794ece    8948fc
                         {disp8} mov        dword ptr [eax + -0x0c], ecx                  // 0x00794ed1    8948f4
                         {disp8} jne        _jmp_addr_0x00794efa                          // 0x00794ed4    7524
                         fld                st(0)                                         // 0x00794ed6    d9c0
                         {disp8} mov        dword ptr [eax + -0x14], ecx                  // 0x00794ed8    8948ec
                         fcos                                                             // 0x00794edb    d9ff
                         {disp8} mov        dword ptr [eax + -0x1c], ecx                  // 0x00794edd    8948e4
                         {disp8} mov        dword ptr [eax + -0x24], ecx                  // 0x00794ee0    8948dc
                         {disp8} mov        dword ptr [eax + -0x18], esi                  // 0x00794ee3    8970e8
                         {disp8} fst        dword ptr [eax + -0x08]                       // 0x00794ee6    d950f8
                         {disp8} fstp       dword ptr [eax + -0x28]                       // 0x00794ee9    d958d8
                         fld                st(0)                                         // 0x00794eec    d9c0
                         fsin                                                             // 0x00794eee    d9fe
                         {disp8} fst        dword ptr [eax + -0x20]                       // 0x00794ef0    d950e0
                         fchs                                                             // 0x00794ef3    d9e0
                         {disp8} fstp       dword ptr [eax + -0x10]                       // 0x00794ef5    d958f0
                         {disp8} jmp        _jmp_addr_0x00794f12                          // 0x00794ef8    eb18
_jmp_addr_0x00794efa:    {disp8} mov        dword ptr [eax + -0x10], ecx                  // 0x00794efa    8948f0
                         {disp8} mov        dword ptr [eax + -0x14], ecx                  // 0x00794efd    8948ec
                         {disp8} mov        dword ptr [eax + -0x1c], ecx                  // 0x00794f00    8948e4
                         {disp8} mov        dword ptr [eax + -0x20], ecx                  // 0x00794f03    8948e0
                         {disp8} mov        dword ptr [eax + -0x24], ecx                  // 0x00794f06    8948dc
                         {disp8} mov        dword ptr [eax + -0x08], esi                  // 0x00794f09    8970f8
                         {disp8} mov        dword ptr [eax + -0x18], esi                  // 0x00794f0c    8970e8
                         {disp8} mov        dword ptr [eax + -0x28], esi                  // 0x00794f0f    8970d8
_jmp_addr_0x00794f12:    add                eax, 0x30                                     // 0x00794f12    83c030
                         inc                edx                                           // 0x00794f15    42
                         cmp                eax, 0x00e9d450                               // 0x00794f16    3d50d4e900
                         {disp32} jl        _jmp_addr_0x00794e8f                          // 0x00794f1b    0f8c6effffff
                         pop                edi                                           // 0x00794f21    5f
                         fstp               st(0)                                         // 0x00794f22    ddd8
                         pop                esi                                           // 0x00794f24    5e
                         pop                ebx                                           // 0x00794f25    5b
                         ret                                                              // 0x00794f26    c3
                         nop                                                              // 0x00794f27    90
                         nop                                                              // 0x00794f28    90
                         nop                                                              // 0x00794f29    90
                         nop                                                              // 0x00794f2a    90
                         nop                                                              // 0x00794f2b    90
                         nop                                                              // 0x00794f2c    90
                         nop                                                              // 0x00794f2d    90
                         nop                                                              // 0x00794f2e    90
                         nop                                                              // 0x00794f2f    90
_jmp_addr_0x00794f30:    {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794f30    d9052c60e000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00794f36    8b44240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00794f3a    d81d90a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x440030], eax        // 0x00794f40    a33060e000
                         fnstsw             ax                                            // 0x00794f45    dfe0
                         test               ah, 0x41                                      // 0x00794f47    f6c441
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00794f4a    8b442404
                         {disp8} je         _jmp_addr_0x00794f58                          // 0x00794f4e    7408
                         cmp                dword ptr [data_bytes + 0x26418c], eax        // 0x00794f50    39058ca1c200
                         {disp8} je         _jmp_addr_0x00794f6b                          // 0x00794f56    7413
_jmp_addr_0x00794f58:    test               eax, eax                                      // 0x00794f58    85c0
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00794f5a    8b4c2408
                         {disp32} mov       dword ptr [data_bytes + 0x44002c], ecx        // 0x00794f5e    890d2c60e000
                         {disp8} jl         _jmp_addr_0x00794f6b                          // 0x00794f64    7c05
                         {disp32} mov       dword ptr [data_bytes + 0x26418c], eax        // 0x00794f66    a38ca1c200
_jmp_addr_0x00794f6b:    ret                                                              // 0x00794f6b    c3
                         nop                                                              // 0x00794f6c    90
                         nop                                                              // 0x00794f6d    90
                         nop                                                              // 0x00794f6e    90
                         nop                                                              // 0x00794f6f    90
_jmp_addr_0x00794f70:    {disp32} mov       eax, dword ptr [data_bytes + 0x26418c]        // 0x00794f70    a18ca1c200
                         test               eax, eax                                      // 0x00794f75    85c0
                         {disp8} jl         _jmp_addr_0x00794fa6                          // 0x00794f77    7c2d
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00794f79    8b0d203bcd00
                         push               0x1                                           // 0x00794f7f    6a01
                         push               0x0                                           // 0x00794f81    6a00
                         push               0x0                                           // 0x00794f83    6a00
                         push               0x0                                           // 0x00794f85    6a00
                         push               0x2                                           // 0x00794f87    6a02
                         push               0x3d                                          // 0x00794f89    6a3d
                         push               0x0                                           // 0x00794f8b    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x00794f8d    e8ce4dc9ff
                         {disp32} mov       dword ptr [data_bytes + 0x44002c], 0x40000000 // 0x00794f92    c7052c60e00000000040
                         {disp32} mov       dword ptr [data_bytes + 0x440030], 0x40000000 // 0x00794f9c    c7053060e00000000040
_jmp_addr_0x00794fa6:    ret                                                              // 0x00794fa6    c3
                         nop                                                              // 0x00794fa7    90
                         nop                                                              // 0x00794fa8    90
                         nop                                                              // 0x00794fa9    90
                         nop                                                              // 0x00794faa    90
                         nop                                                              // 0x00794fab    90
                         nop                                                              // 0x00794fac    90
                         nop                                                              // 0x00794fad    90
                         nop                                                              // 0x00794fae    90
                         nop                                                              // 0x00794faf    90
_jmp_addr_0x00794fb0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00794fb0    8b442404
                         test               eax, eax                                      // 0x00794fb4    85c0
                         {disp8} jl         _jmp_addr_0x00794fbd                          // 0x00794fb6    7c05
                         {disp32} mov       dword ptr [data_bytes + 0x26418c], eax        // 0x00794fb8    a38ca1c200
_jmp_addr_0x00794fbd:    {disp32} mov       eax, dword ptr [data_bytes + 0x26418c]        // 0x00794fbd    a18ca1c200
                         test               eax, eax                                      // 0x00794fc2    85c0
                         {disp8} jl         _jmp_addr_0x0079502c                          // 0x00794fc4    7c66
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x00794fc6    d9052c60e000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00794fcc    d81d90a38a00
                         fnstsw             ax                                            // 0x00794fd2    dfe0
                         test               ah, 0x41                                      // 0x00794fd4    f6c441
                         {disp8} je         _jmp_addr_0x0079502c                          // 0x00794fd7    7453
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00794fd9    8b0d203bcd00
                         push               0x1                                           // 0x00794fdf    6a01
                         push               0x0                                           // 0x00794fe1    6a00
                         push               0x0                                           // 0x00794fe3    6a00
                         push               0x0                                           // 0x00794fe5    6a00
                         push               0x2                                           // 0x00794fe7    6a02
                         push               0x3d                                          // 0x00794fe9    6a3d
                         push               0x0                                           // 0x00794feb    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x00794fed    e86e4dc9ff
                         {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x00794ff2    d90578b48a00
                         {disp32} fsub      dword ptr [data_bytes + 0x44002c]             // 0x00794ff8    d8252c60e000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00794ffe    8b442408
                         {disp32} mov       dword ptr [data_bytes + 0x440030], eax        // 0x00795002    a33060e000
                         {disp32} fst       dword ptr [data_bytes + 0x44002c]             // 0x00795007    d9152c60e000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0079500d    d81d90a38a00
                         fnstsw             ax                                            // 0x00795013    dfe0
                         test               ah, 0x41                                      // 0x00795015    f6c441
                         {disp8} je         _jmp_addr_0x0079502c                          // 0x00795018    7412
                         {disp32} fld       dword ptr [data_bytes + 0x44002c]             // 0x0079501a    d9052c60e000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1c840]             // 0x00795020    d80540588c00
                         {disp32} fstp      dword ptr [data_bytes + 0x44002c]             // 0x00795026    d91d2c60e000
_jmp_addr_0x0079502c:    ret                                                              // 0x0079502c    c3
                         nop                                                              // 0x0079502d    90
                         nop                                                              // 0x0079502e    90
                         nop                                                              // 0x0079502f    90
??0InnerRoom@@QAE@XZ:
                         sub                esp, 0x0c                                     // 0x00795030    83ec0c
                         mov.s              eax, ecx                                      // 0x00795033    8bc1
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000            // 0x00795035    c744240000000000
                         {disp8} mov        edx, dword ptr [esp + 0x00]                   // 0x0079503d    8b542400
                         mov                dword ptr [ecx], edx                          // 0x00795041    8911
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x00795043    c744240400000000
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0079504b    8b542404
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0079504f    895104
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00795052    c744240800000000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0079505a    8b542408
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0079505e    895108
                         xor.s              ecx, ecx                                      // 0x00795061    33c9
                         {disp8} mov        byte ptr [eax + 0x10], 0x01                   // 0x00795063    c6401001
                         {disp8} mov        dword ptr [eax + 0x0c], 0x42340000            // 0x00795067    c7400c00003442
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0079506e    89481c
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00795071    894814
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x00795074    894820
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x00795077    894818
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0079507a    894824
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0079507d    894828
                         add                esp, 0x0c                                     // 0x00795080    83c40c
                         ret                                                              // 0x00795083    c3
                         nop                                                              // 0x00795084    90
                         nop                                                              // 0x00795085    90
                         nop                                                              // 0x00795086    90
                         nop                                                              // 0x00795087    90
                         nop                                                              // 0x00795088    90
                         nop                                                              // 0x00795089    90
                         nop                                                              // 0x0079508a    90
                         nop                                                              // 0x0079508b    90
                         nop                                                              // 0x0079508c    90
                         nop                                                              // 0x0079508d    90
                         nop                                                              // 0x0079508e    90
                         nop                                                              // 0x0079508f    90
_jmp_addr_0x00795090:    push               esi                                           // 0x00795090    56
                         mov.s              esi, ecx                                      // 0x00795091    8bf1
                         call               _jmp_addr_0x00795140                          // 0x00795093    e8a8000000
                         mov.s              ecx, esi                                      // 0x00795098    8bce
                         call               _jmp_addr_0x007952c0                          // 0x0079509a    e821020000
                         pop                esi                                           // 0x0079509f    5e
                         ret                                                              // 0x007950a0    c3
                         nop                                                              // 0x007950a1    90
                         nop                                                              // 0x007950a2    90
                         nop                                                              // 0x007950a3    90
                         nop                                                              // 0x007950a4    90
                         nop                                                              // 0x007950a5    90
                         nop                                                              // 0x007950a6    90
                         nop                                                              // 0x007950a7    90
                         nop                                                              // 0x007950a8    90
                         nop                                                              // 0x007950a9    90
                         nop                                                              // 0x007950aa    90
                         nop                                                              // 0x007950ab    90
                         nop                                                              // 0x007950ac    90
                         nop                                                              // 0x007950ad    90
                         nop                                                              // 0x007950ae    90
                         nop                                                              // 0x007950af    90
_jmp_addr_0x007950b0:    push               esi                                           // 0x007950b0    56
                         mov.s              esi, ecx                                      // 0x007950b1    8bf1
                         call               _jmp_addr_0x00795140                          // 0x007950b3    e888000000
                         push               0x000000c1                                    // 0x007950b8    68c1000000
                         push               0x00c2a190                                    // 0x007950bd    6890a1c200
                         push               0x8                                           // 0x007950c2    6a08
                         call               ___nw__FUl                                    // 0x007950c4    e8c7660400
                         add                esp, 0x0c                                     // 0x007950c9    83c40c
                         test               eax, eax                                      // 0x007950cc    85c0
                         {disp8} je         _jmp_addr_0x007950df                          // 0x007950ce    740f
                         mov                dword ptr [eax], 0x00000000                   // 0x007950d0    c70000000000
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x007950d6    c7400400000000
                         {disp8} jmp        _jmp_addr_0x007950e1                          // 0x007950dd    eb02
_jmp_addr_0x007950df:    xor.s              eax, eax                                      // 0x007950df    33c0
_jmp_addr_0x007950e1:    {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x007950e1    8b4e18
                         push               0x3f800000                                    // 0x007950e4    680000803f
                         push               ecx                                           // 0x007950e9    51
                         mov.s              ecx, eax                                      // 0x007950ea    8bc8
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x007950ec    894628
                         call               _jmp_addr_0x0083d520                          // 0x007950ef    e82c840a00
                         push               0x000000c3                                    // 0x007950f4    68c3000000
                         push               0x00c2a190                                    // 0x007950f9    6890a1c200
                         push               0x28                                          // 0x007950fe    6a28
                         call               ___nw__FUl                                    // 0x00795100    e88b660400
                         add                esp, 0x0c                                     // 0x00795105    83c40c
                         test               eax, eax                                      // 0x00795108    85c0
                         {disp8} je         _jmp_addr_0x00795126                          // 0x0079510a    741a
                         mov.s              ecx, eax                                      // 0x0079510c    8bc8
                         call               _jmp_addr_0x0083d750                          // 0x0079510e    e83d860a00
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00795113    8b542408
                         push               edx                                           // 0x00795117    52
                         mov.s              ecx, eax                                      // 0x00795118    8bc8
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x0079511a    894624
                         call               _jmp_addr_0x0083d7d0                          // 0x0079511d    e8ae860a00
                         pop                esi                                           // 0x00795122    5e
                         ret                0x0004                                        // 0x00795123    c20400
_jmp_addr_0x00795126:    {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00795126    8b542408
                         xor.s              eax, eax                                      // 0x0079512a    33c0
                         push               edx                                           // 0x0079512c    52
                         mov.s              ecx, eax                                      // 0x0079512d    8bc8
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x0079512f    894624
                         call               _jmp_addr_0x0083d7d0                          // 0x00795132    e899860a00
                         pop                esi                                           // 0x00795137    5e
                         ret                0x0004                                        // 0x00795138    c20400
                         nop                                                              // 0x0079513b    90
                         nop                                                              // 0x0079513c    90
                         nop                                                              // 0x0079513d    90
                         nop                                                              // 0x0079513e    90
                         nop                                                              // 0x0079513f    90
_jmp_addr_0x00795140:    sub                esp, 0x08                                     // 0x00795140    83ec08
                         push               ebx                                           // 0x00795143    53
                         push               ebp                                           // 0x00795144    55
                         push               esi                                           // 0x00795145    56
                         push               edi                                           // 0x00795146    57
                         mov.s              edi, ecx                                      // 0x00795147    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x24]                   // 0x00795149    8b7724
                         xor.s              ebx, ebx                                      // 0x0079514c    33db
                         cmp.s              esi, ebx                                      // 0x0079514e    3bf3
                         {disp8} je         _jmp_addr_0x00795162                          // 0x00795150    7410
                         mov.s              ecx, esi                                      // 0x00795152    8bce
                         call               _jmp_addr_0x0083d7b0                          // 0x00795154    e857860a00
                         push               esi                                           // 0x00795159    56
                         call               ??3@YAXPAX@Z                                  // 0x0079515a    e8399d0100
                         add                esp, 0x04                                     // 0x0079515f    83c404
_jmp_addr_0x00795162:    {disp8} mov        ebp, dword ptr [edi + 0x28]                   // 0x00795162    8b6f28
                         cmp.s              ebp, ebx                                      // 0x00795165    3beb
                         {disp32} je        _jmp_addr_0x007951f3                          // 0x00795167    0f8486000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x0079516d    8b4d04
                         cmp.s              ecx, ebx                                      // 0x00795170    3bcb
                         {disp8} je         _jmp_addr_0x007951ea                          // 0x00795172    7476
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                  // 0x00795174    8b41fc
                         {disp8} lea        edx, dword ptr [ecx + -0x04]                  // 0x00795177    8d51fc
                         {disp32} lea       esi, dword ptr [eax * 0x8 + 0x00000000]       // 0x0079517a    8d34c500000000
                         sub.s              esi, eax                                      // 0x00795181    2bf0
                         dec                eax                                           // 0x00795183    48
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00795184    89542414
                         lea                ecx, dword ptr [ecx + esi * 0x8]              // 0x00795188    8d0cf1
                         {disp8} js         _jmp_addr_0x007951e1                          // 0x0079518b    7854
                         inc                eax                                           // 0x0079518d    40
                         {disp8} lea        esi, dword ptr [ecx + 0x20]                   // 0x0079518e    8d7120
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00795191    89442410
_jmp_addr_0x00795195:    {disp8} mov        eax, dword ptr [esi + -0x3c]                  // 0x00795195    8b46c4
                         sub                esi, 0x38                                     // 0x00795198    83ee38
                         push               eax                                           // 0x0079519b    50
                         call               ??3@YAXPAX@Z                                  // 0x0079519c    e8f79c0100
                         mov                ecx, dword ptr [esi]                          // 0x007951a1    8b0e
                         push               ecx                                           // 0x007951a3    51
                         call               ??3@YAXPAX@Z                                  // 0x007951a4    e8ef9c0100
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x007951a9    8b5604
                         push               edx                                           // 0x007951ac    52
                         call               ??3@YAXPAX@Z                                  // 0x007951ad    e8e69c0100
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x007951b2    8b4608
                         push               eax                                           // 0x007951b5    50
                         call               ??3@YAXPAX@Z                                  // 0x007951b6    e8dd9c0100
                         {disp8} mov        eax, dword ptr [esi + -0x0c]                  // 0x007951bb    8b46f4
                         add                esp, 0x10                                     // 0x007951be    83c410
                         cmp.s              eax, ebx                                      // 0x007951c1    3bc3
                         {disp8} je         _jmp_addr_0x007951d7                          // 0x007951c3    7412
                         dec                dword ptr [data_bytes + 0x504654]             // 0x007951c5    ff0d54a6ec00
                         push               eax                                           // 0x007951cb    50
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x007951cc    895808
                         call               ??3@YAXPAX@Z                                  // 0x007951cf    e8c49c0100
                         add                esp, 0x04                                     // 0x007951d4    83c404
_jmp_addr_0x007951d7:    dec                dword ptr [esp + 0x10]                        // 0x007951d7    ff4c2410
                         {disp8} jne        _jmp_addr_0x00795195                          // 0x007951db    75b8
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007951dd    8b542414
_jmp_addr_0x007951e1:    push               edx                                           // 0x007951e1    52
                         call               ??3@YAXPAX@Z                                  // 0x007951e2    e8b19c0100
                         add                esp, 0x04                                     // 0x007951e7    83c404
_jmp_addr_0x007951ea:    push               ebp                                           // 0x007951ea    55
                         call               ??3@YAXPAX@Z                                  // 0x007951eb    e8a89c0100
                         add                esp, 0x04                                     // 0x007951f0    83c404
_jmp_addr_0x007951f3:    {disp8} mov        dword ptr [edi + 0x24], ebx                   // 0x007951f3    895f24
                         {disp8} mov        dword ptr [edi + 0x28], ebx                   // 0x007951f6    895f28
                         pop                edi                                           // 0x007951f9    5f
                         pop                esi                                           // 0x007951fa    5e
                         pop                ebp                                           // 0x007951fb    5d
                         pop                ebx                                           // 0x007951fc    5b
                         add                esp, 0x08                                     // 0x007951fd    83c408
                         ret                                                              // 0x00795200    c3
                         nop                                                              // 0x00795201    90
                         nop                                                              // 0x00795202    90
                         nop                                                              // 0x00795203    90
                         nop                                                              // 0x00795204    90
                         nop                                                              // 0x00795205    90
                         nop                                                              // 0x00795206    90
                         nop                                                              // 0x00795207    90
                         nop                                                              // 0x00795208    90
                         nop                                                              // 0x00795209    90
                         nop                                                              // 0x0079520a    90
                         nop                                                              // 0x0079520b    90
                         nop                                                              // 0x0079520c    90
                         nop                                                              // 0x0079520d    90
                         nop                                                              // 0x0079520e    90
                         nop                                                              // 0x0079520f    90
_jmp_addr_0x00795210:    push               esi                                           // 0x00795210    56
                         push               edi                                           // 0x00795211    57
                         mov.s              esi, ecx                                      // 0x00795212    8bf1
                         call               _jmp_addr_0x007952c0                          // 0x00795214    e8a7000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00795219    8b442410
                         push               0x0                                           // 0x0079521d    6a00
                         push               eax                                           // 0x0079521f    50
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x00795220    e8cb150700
                         add                esp, 0x08                                     // 0x00795225    83c408
                         xor.s              ecx, ecx                                      // 0x00795228    33c9
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0079522a    894614
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079522d    e89e620700
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00795232    8b5614
                         push               0x0                                           // 0x00795235    6a00
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00795237    894618
                         mov                edi, dword ptr [eax]                          // 0x0079523a    8b38
                         push               0x0                                           // 0x0079523c    6a00
                         mov.s              ecx, eax                                      // 0x0079523e    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x00795240    ff97f4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795246    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x00795249    8b01
                         xor.s              edx, edx                                      // 0x0079524b    33d2
                         call               dword ptr [eax + 0x58]                        // 0x0079524d    ff5058
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795250    8b4e18
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00795253    8b7c240c
                         mov                eax, dword ptr [ecx]                          // 0x00795257    8b01
                         push               0x3f800000                                    // 0x00795259    680000803f
                         push               0x0                                           // 0x0079525e    6a00
                         mov.s              edx, edi                                      // 0x00795260    8bd7
                         call               dword ptr [eax + 0x20]                        // 0x00795262    ff5020
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00795265    8b442414
                         test               eax, eax                                      // 0x00795269    85c0
                         {disp8} je         _jmp_addr_0x007952b3                          // 0x0079526b    7446
                         push               ebx                                           // 0x0079526d    53
                         push               0x0                                           // 0x0079526e    6a00
                         push               eax                                           // 0x00795270    50
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x00795271    e87a150700
                         add                esp, 0x08                                     // 0x00795276    83c408
                         xor.s              ecx, ecx                                      // 0x00795279    33c9
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x0079527b    89461c
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x0079527e    e84d620700
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x00795283    8b561c
                         push               0x0                                           // 0x00795286    6a00
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x00795288    894620
                         mov                ebx, dword ptr [eax]                          // 0x0079528b    8b18
                         push               0x0                                           // 0x0079528d    6a00
                         mov.s              ecx, eax                                      // 0x0079528f    8bc8
                         call               dword ptr [ebx + 0xf4]                        // 0x00795291    ff93f4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x00795297    8b4e20
                         mov                eax, dword ptr [ecx]                          // 0x0079529a    8b01
                         xor.s              edx, edx                                      // 0x0079529c    33d2
                         call               dword ptr [eax + 0x58]                        // 0x0079529e    ff5058
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x007952a1    8b4e20
                         mov                eax, dword ptr [ecx]                          // 0x007952a4    8b01
                         push               0x3f800000                                    // 0x007952a6    680000803f
                         push               0x0                                           // 0x007952ab    6a00
                         mov.s              edx, edi                                      // 0x007952ad    8bd7
                         call               dword ptr [eax + 0x20]                        // 0x007952af    ff5020
                         pop                ebx                                           // 0x007952b2    5b
_jmp_addr_0x007952b3:    pop                edi                                           // 0x007952b3    5f
                         pop                esi                                           // 0x007952b4    5e
                         ret                0x000c                                        // 0x007952b5    c20c00
                         nop                                                              // 0x007952b8    90
                         nop                                                              // 0x007952b9    90
                         nop                                                              // 0x007952ba    90
                         nop                                                              // 0x007952bb    90
                         nop                                                              // 0x007952bc    90
                         nop                                                              // 0x007952bd    90
                         nop                                                              // 0x007952be    90
                         nop                                                              // 0x007952bf    90
_jmp_addr_0x007952c0:    push               esi                                           // 0x007952c0    56
                         mov.s              esi, ecx                                      // 0x007952c1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x007952c3    8b4e14
                         push               edi                                           // 0x007952c6    57
                         xor.s              edi, edi                                      // 0x007952c7    33ff
                         cmp.s              ecx, edi                                      // 0x007952c9    3bcf
                         {disp8} je         _jmp_addr_0x007952d2                          // 0x007952cb    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x007952cd    e82e1a0700
_jmp_addr_0x007952d2:    {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x007952d2    8b4e18
                         cmp.s              ecx, edi                                      // 0x007952d5    3bcf
                         {disp8} je         _jmp_addr_0x007952de                          // 0x007952d7    7405
                         mov                eax, dword ptr [ecx]                          // 0x007952d9    8b01
                         call               dword ptr [eax + 4]                           // 0x007952db    ff5004
_jmp_addr_0x007952de:    {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x007952de    8b4e1c
                         cmp.s              ecx, edi                                      // 0x007952e1    3bcf
                         {disp8} je         _jmp_addr_0x007952ea                          // 0x007952e3    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x007952e5    e8161a0700
_jmp_addr_0x007952ea:    {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x007952ea    8b4e20
                         cmp.s              ecx, edi                                      // 0x007952ed    3bcf
                         {disp8} je         _jmp_addr_0x007952f6                          // 0x007952ef    7405
                         mov                edx, dword ptr [ecx]                          // 0x007952f1    8b11
                         call               dword ptr [edx + 4]                           // 0x007952f3    ff5204
_jmp_addr_0x007952f6:    {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x007952f6    897e1c
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x007952f9    897e14
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x007952fc    897e20
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x007952ff    897e18
                         pop                edi                                           // 0x00795302    5f
                         pop                esi                                           // 0x00795303    5e
                         ret                                                              // 0x00795304    c3
                         nop                                                              // 0x00795305    90
                         nop                                                              // 0x00795306    90
                         nop                                                              // 0x00795307    90
                         nop                                                              // 0x00795308    90
                         nop                                                              // 0x00795309    90
                         nop                                                              // 0x0079530a    90
                         nop                                                              // 0x0079530b    90
                         nop                                                              // 0x0079530c    90
                         nop                                                              // 0x0079530d    90
                         nop                                                              // 0x0079530e    90
                         nop                                                              // 0x0079530f    90
_jmp_addr_0x00795310:    push               ebx                                           // 0x00795310    53
                         push               ebp                                           // 0x00795311    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00795312    8b6c2410
                         push               esi                                           // 0x00795316    56
                         mov.s              esi, ecx                                      // 0x00795317    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x00795319    8b4620
                         or                 ebx, 0xffffffff                               // 0x0079531c    83cbff
                         test               eax, eax                                      // 0x0079531f    85c0
                         push               edi                                           // 0x00795321    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00795322    8b7c241c
                         {disp32} je        _jmp_addr_0x007953d1                          // 0x00795326    0f84a5000000
                         {disp8} mov        al, byte ptr [esp + 0x14]                     // 0x0079532c    8a442414
                         test               al, al                                        // 0x00795330    84c0
                         {disp32} je        _jmp_addr_0x007953d9                          // 0x00795332    0f84a1000000
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00795338    8b4618
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0079533b    d94020
                         add                eax, 0x14                                     // 0x0079533e    83c014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795341    d80d78b68a00
                         mov                edx, 0x00000001                               // 0x00795347    ba01000000
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0079534c    d9580c
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0079534f    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795352    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x00795358    d95810
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x0079535b    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0079535e    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x00795364    d95814
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795367    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x0079536a    8b01
                         call               dword ptr [eax + 0xa0]                        // 0x0079536c    ff90a0000000
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x00795372    a0e481c300
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795377    8b4e18
                         mov                edx, dword ptr [ecx]                          // 0x0079537a    8b11
                         neg                al                                            // 0x0079537c    f6d8
                         push               0x0                                           // 0x0079537e    6a00
                         push               0x1                                           // 0x00795380    6a01
                         push               0x4                                           // 0x00795382    6a04
                         sbb.s              eax, eax                                      // 0x00795384    1bc0
                         and                eax, 0x05                                     // 0x00795386    83e005
                         push               eax                                           // 0x00795389    50
                         push               edi                                           // 0x0079538a    57
                         push               ebp                                           // 0x0079538b    55
                         call               dword ptr [edx + 0x22c]                       // 0x0079538c    ff922c020000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x00795392    8b15e45fe000
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795398    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x0079539b    8b01
                         push               edx                                           // 0x0079539d    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe8]        // 0x0079539e    8b15e85fe000
                         call               dword ptr [eax + 0x2c]                        // 0x007953a4    ff502c
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007953a7    8b4618
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x007953aa    d94020
                         add                eax, 0x14                                     // 0x007953ad    83c014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007953b0    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x007953b6    d9580c
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x007953b9    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007953bc    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x007953c2    d95810
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x007953c5    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007953c8    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x007953ce    d95814
_jmp_addr_0x007953d1:    {disp8} mov        al, byte ptr [esp + 0x14]                     // 0x007953d1    8a442414
                         test               al, al                                        // 0x007953d5    84c0
                         {disp8} jne        _jmp_addr_0x00795426                          // 0x007953d7    754d
_jmp_addr_0x007953d9:    {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x007953d9    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x007953dc    8b01
                         mov                edx, 0x00000001                               // 0x007953de    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x007953e3    ff90a0000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x007953e9    8b15e45fe000
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x007953ef    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x007953f2    8b01
                         push               edx                                           // 0x007953f4    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe8]        // 0x007953f5    8b15e85fe000
                         call               dword ptr [eax + 0x2c]                        // 0x007953fb    ff502c
                         {disp32} mov       dl, byte ptr [data_bytes + 0x2721e4]          // 0x007953fe    8a15e481c300
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795404    8b4e18
                         mov                eax, dword ptr [ecx]                          // 0x00795407    8b01
                         neg                dl                                            // 0x00795409    f6da
                         push               0x1                                           // 0x0079540b    6a01
                         push               0x0                                           // 0x0079540d    6a00
                         push               0x4                                           // 0x0079540f    6a04
                         sbb.s              edx, edx                                      // 0x00795411    1bd2
                         and                edx, 0x05                                     // 0x00795413    83e205
                         push               edx                                           // 0x00795416    52
                         push               edi                                           // 0x00795417    57
                         push               ebp                                           // 0x00795418    55
                         call               dword ptr [eax + 0x22c]                       // 0x00795419    ff902c020000
                         pop                edi                                           // 0x0079541f    5f
                         pop                esi                                           // 0x00795420    5e
                         pop                ebp                                           // 0x00795421    5d
                         pop                ebx                                           // 0x00795422    5b
                         ret                0x000c                                        // 0x00795423    c20c00
_jmp_addr_0x00795426:    pop                edi                                           // 0x00795426    5f
                         pop                esi                                           // 0x00795427    5e
                         pop                ebp                                           // 0x00795428    5d
                         mov.s              eax, ebx                                      // 0x00795429    8bc3
                         pop                ebx                                           // 0x0079542b    5b
                         ret                0x000c                                        // 0x0079542c    c20c00
                         nop                                                              // 0x0079542f    90
_jmp_addr_0x00795430:    push               esi                                           // 0x00795430    56
                         mov.s              esi, ecx                                      // 0x00795431    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x00795433    8b4e20
                         test               ecx, ecx                                      // 0x00795436    85c9
                         {disp8} je         _jmp_addr_0x0079549c                          // 0x00795438    7462
                         mov                eax, dword ptr [ecx]                          // 0x0079543a    8b01
                         push               edi                                           // 0x0079543c    57
                         mov                edx, 0x00000001                               // 0x0079543d    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x00795442    ff90a0000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43ffe4]        // 0x00795448    8b15e45fe000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x43ffe8]        // 0x0079544e    8b3de85fe000
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x00795454    8b4e20
                         mov                eax, dword ptr [ecx]                          // 0x00795457    8b01
                         push               edx                                           // 0x00795459    52
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0079545a    8b542410
                         shl                edx, 0x18                                     // 0x0079545e    c1e218
                         and                edi, 0x00ffffff                               // 0x00795461    81e7ffffff00
                         add.s              edx, edi                                      // 0x00795467    03d7
                         call               dword ptr [eax + 0x2c]                        // 0x00795469    ff502c
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0079546c    8b4e20
                         mov                eax, dword ptr [ecx]                          // 0x0079546f    8b01
                         mov                edx, 0x00000001                               // 0x00795471    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x00795476    ff5048
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x00795479    a0e481c300
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0079547e    8b4e20
                         mov                edx, dword ptr [ecx]                          // 0x00795481    8b11
                         neg                al                                            // 0x00795483    f6d8
                         push               0x0                                           // 0x00795485    6a00
                         push               0x0                                           // 0x00795487    6a00
                         push               0x4                                           // 0x00795489    6a04
                         sbb.s              eax, eax                                      // 0x0079548b    1bc0
                         and                eax, 0x05                                     // 0x0079548d    83e005
                         push               eax                                           // 0x00795490    50
                         push               0x0                                           // 0x00795491    6a00
                         push               0x0                                           // 0x00795493    6a00
                         call               dword ptr [edx + 0x22c]                       // 0x00795495    ff922c020000
                         pop                edi                                           // 0x0079549b    5f
_jmp_addr_0x0079549c:    pop                esi                                           // 0x0079549c    5e
                         ret                0x0004                                        // 0x0079549d    c20400
_jmp_addr_0x007954a0:    {disp32} mov       al, byte ptr [data_bytes + 0x2721e2]          // 0x007954a0    a0e281c300
                         test               al, al                                        // 0x007954a5    84c0
                         push               ebx                                           // 0x007954a7    53
                         push               esi                                           // 0x007954a8    56
                         push               edi                                           // 0x007954a9    57
                         mov.s              esi, ecx                                      // 0x007954aa    8bf1
                         {disp32} je        _jmp_addr_0x00795569                          // 0x007954ac    0f84b7000000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x007954b2    8b4620
                         test               eax, eax                                      // 0x007954b5    85c0
                         {disp8} mov        bl, byte ptr [esp + 0x10]                     // 0x007954b7    8a5c2410
                         {disp8} je         _jmp_addr_0x00795528                          // 0x007954bb    746b
                         test               bl, bl                                        // 0x007954bd    84db
                         {disp8} je         _jmp_addr_0x0079552c                          // 0x007954bf    746b
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007954c1    8b4618
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x007954c4    d94020
                         add                eax, 0x14                                     // 0x007954c7    83c014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007954ca    d80d78b68a00
                         push               0x0                                           // 0x007954d0    6a00
                         push               0x3f800000                                    // 0x007954d2    680000803f
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x007954d7    d9580c
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x007954da    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007954dd    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x007954e3    d95810
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x007954e6    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x007954e9    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x007954ef    d95814
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007954f2    8b4618
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x007954f5    8b4e24
                         push               eax                                           // 0x007954f8    50
                         call               _jmp_addr_0x0083d8d0                          // 0x007954f9    e8d2830a00
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007954fe    8b4618
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x00795501    d94020
                         add                eax, 0x14                                     // 0x00795504    83c014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795507    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0079550d    d9580c
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x00795510    d94010
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795513    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x00795519    d95810
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x0079551c    d94014
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0079551f    d80d78b68a00
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x00795525    d95814
_jmp_addr_0x00795528:    test               bl, bl                                        // 0x00795528    84db
                         {disp8} jne        _jmp_addr_0x00795569                          // 0x0079552a    753d
_jmp_addr_0x0079552c:    {disp32} mov       al, byte ptr [data_bytes + 0x2721e1]          // 0x0079552c    a0e181c300
                         test               al, al                                        // 0x00795531    84c0
                         {disp8} je         _jmp_addr_0x00795569                          // 0x00795533    7434
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00795535    8b4e18
                         push               0x1                                           // 0x00795538    6a01
                         push               0x3f800000                                    // 0x0079553a    680000803f
                         push               ecx                                           // 0x0079553f    51
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x00795540    8b4e24
                         call               _jmp_addr_0x0083d8d0                          // 0x00795543    e888830a00
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x00795548    8b7628
                         mov                eax, dword ptr [esi]                          // 0x0079554b    8b06
                         xor.s              edi, edi                                      // 0x0079554d    33ff
                         test               eax, eax                                      // 0x0079554f    85c0
                         {disp8} jle        _jmp_addr_0x00795569                          // 0x00795551    7e16
                         xor.s              ebx, ebx                                      // 0x00795553    33db
_jmp_addr_0x00795555:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00795555    8b4e04
                         add.s              ecx, ebx                                      // 0x00795558    03cb
                         call               _jmp_addr_0x0083d4b0                          // 0x0079555a    e8517f0a00
                         mov                eax, dword ptr [esi]                          // 0x0079555f    8b06
                         inc                edi                                           // 0x00795561    47
                         add                ebx, 0x38                                     // 0x00795562    83c338
                         cmp.s              edi, eax                                      // 0x00795565    3bf8
                         {disp8} jl         _jmp_addr_0x00795555                          // 0x00795567    7cec
_jmp_addr_0x00795569:    pop                edi                                           // 0x00795569    5f
                         pop                esi                                           // 0x0079556a    5e
                         pop                ebx                                           // 0x0079556b    5b
                         ret                0x0004                                        // 0x0079556c    c20400
                         nop                                                              // 0x0079556f    90
_FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff:
                         sub                esp, 0x18                                     // 0x00795570    83ec18
                         push               ebx                                           // 0x00795573    53
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x00795574    8b5c2424
                         test               ebx, ebx                                      // 0x00795578    85db
                         push               esi                                           // 0x0079557a    56
                         mov.s              esi, ecx                                      // 0x0079557b    8bf1
                         push               edi                                           // 0x0079557d    57
                         {disp32} mov       dword ptr [esi + 0x0000044c], ebx             // 0x0079557e    899e4c040000
                         {disp32} jl        _jmp_addr_0x007957ab                          // 0x00795584    0f8c21020000
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0079558a    8b7c2428
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0079558e    8b4704
                         test               eax, 0x00080000                               // 0x00795591    a900000800
                         {disp32} je        _jmp_addr_0x007957ab                          // 0x00795596    0f840f020000
                         test               ah, -0x80                                     // 0x0079559c    f6c480
                         push               ebp                                           // 0x0079559f    55
                         {disp8} je         _jmp_addr_0x007955ae                          // 0x007955a0    740c
                         mov.s              ecx, edi                                      // 0x007955a2    8bcf
                         call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ        // 0x007955a4    e887e1c6ff
                         {disp8} mov        ebp, dword ptr [eax + 0x08]                   // 0x007955a9    8b6808
                         {disp8} jmp        _jmp_addr_0x007955b0                          // 0x007955ac    eb02
_jmp_addr_0x007955ae:    xor.s              ebp, ebp                                      // 0x007955ae    33ed
_jmp_addr_0x007955b0:    test               dword ptr [edi + 0x04], 0x00040000            // 0x007955b0    f7470400000400
                         {disp8} je         _jmp_addr_0x007955c4                          // 0x007955b7    740b
                         mov.s              ecx, edi                                      // 0x007955b9    8bcf
                         call               ?GetSizeUV2Data@LH3DMesh@@QAEIXZ              // 0x007955bb    e880e1c6ff
                         mov                eax, dword ptr [eax]                          // 0x007955c0    8b00
                         {disp8} jmp        _jmp_addr_0x007955c6                          // 0x007955c2    eb02
_jmp_addr_0x007955c4:    xor.s              eax, eax                                      // 0x007955c4    33c0
_jmp_addr_0x007955c6:    {disp8} mov        ecx, dword ptr [edi + 0x48]                   // 0x007955c6    8b4f48
                         add.s              ecx, eax                                      // 0x007955c9    03c8
                         add.s              ecx, ebp                                      // 0x007955cb    03cd
                         pop                ebp                                           // 0x007955cd    5d
                         {disp32} je        _jmp_addr_0x007957ab                          // 0x007955ce    0f84d7010000
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x007955d4    8b5108
                         {disp32} lea       eax, dword ptr [ebx * 0x8 + 0x00000000]       // 0x007955d7    8d04dd00000000
                         sub.s              eax, ebx                                      // 0x007955de    2bc3
                         shl                eax, 5                                        // 0x007955e0    c1e005
                         {disp32} fld       dword ptr [eax + edx * 0x1 + 0x000000c8]      // 0x007955e3    d98410c8000000
                         add.s              eax, edx                                      // 0x007955ea    03c2
                         {disp32} fadd      dword ptr [eax + 0x000000d4]                  // 0x007955ec    d880d4000000
                         {disp32} fld       dword ptr [eax + 0x000000d8]                  // 0x007955f2    d980d8000000
                         {disp32} fadd      dword ptr [eax + 0x000000cc]                  // 0x007955f8    d880cc000000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x007955fe    d95c241c
                         {disp32} fld       dword ptr [eax + 0x000000dc]                  // 0x00795602    d980dc000000
                         {disp32} fadd      dword ptr [eax + 0x000000d0]                  // 0x00795608    d880d0000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0079560e    d95c2420
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00795612    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00795618    d944241c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0079561c    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00795622    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00795626    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0079562a    8b542410
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0079562e    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00795634    d95c2414
                         fld                st(0)                                         // 0x00795638    d9c0
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x0079563a    d8442430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079563e    d9442410
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x00795642    d8442434
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00795646    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0079564a    d9442414
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0079564e    8b4c241c
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x00795652    d8442438
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00795656    894c2428
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0079565a    d95c2420
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x0079565e    d954242c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00795662    d9442420
                         {disp32} fmul      dword ptr [eax + 0x00000080]                  // 0x00795666    d88880000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0079566c    d944241c
                         {disp8} fmul       dword ptr [eax + 0x74]                        // 0x00795670    d84874
                         faddp              st(1), st                                     // 0x00795673    dec1
                         fxch               st(1)                                         // 0x00795675    d9c9
                         {disp8} fmul       dword ptr [eax + 0x68]                        // 0x00795677    d84868
                         faddp              st(1), st                                     // 0x0079567a    dec1
                         {disp32} fadd      dword ptr [eax + 0x0000008c]                  // 0x0079567c    d8808c000000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00795682    d95c2418
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00795686    d9442420
                         {disp32} fmul      dword ptr [eax + 0x00000084]                  // 0x0079568a    d88884000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00795690    d944241c
                         {disp8} fmul       dword ptr [eax + 0x78]                        // 0x00795694    d84878
                         faddp              st(1), st                                     // 0x00795697    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00795699    d944242c
                         {disp8} fmul       dword ptr [eax + 0x6c]                        // 0x0079569d    d8486c
                         faddp              st(1), st                                     // 0x007956a0    dec1
                         {disp32} fadd      dword ptr [eax + 0x00000090]                  // 0x007956a2    d88090000000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x007956a8    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007956ac    d9442420
                         {disp32} fmul      dword ptr [eax + 0x00000088]                  // 0x007956b0    d88888000000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x007956b6    d944242c
                         {disp8} fmul       dword ptr [eax + 0x70]                        // 0x007956ba    d84870
                         faddp              st(1), st                                     // 0x007956bd    dec1
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007956bf    d9442428
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x007956c3    89542428
                         {disp8} fmul       dword ptr [eax + 0x7c]                        // 0x007956c7    d8487c
                         faddp              st(1), st                                     // 0x007956ca    dec1
                         {disp32} fadd      dword ptr [eax + 0x00000094]                  // 0x007956cc    d88094000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007956d2    d95c2420
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x007956d6    d954242c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x007956da    d9442414
                         {disp32} fmul      dword ptr [eax + 0x00000080]                  // 0x007956de    d88880000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007956e4    d9442410
                         {disp8} fmul       dword ptr [eax + 0x74]                        // 0x007956e8    d84874
                         faddp              st(1), st                                     // 0x007956eb    dec1
                         fxch               st(1)                                         // 0x007956ed    d9c9
                         {disp8} fmul       dword ptr [eax + 0x68]                        // 0x007956ef    d84868
                         faddp              st(1), st                                     // 0x007956f2    dec1
                         {disp32} fadd      dword ptr [eax + 0x0000008c]                  // 0x007956f4    d8808c000000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007956fa    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x007956fe    8b54241c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00795702    d95c240c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00795706    d9442414
                         {disp32} fmul      dword ptr [eax + 0x00000084]                  // 0x0079570a    d88884000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00795710    d9442410
                         {disp8} fmul       dword ptr [eax + 0x78]                        // 0x00795714    d84878
                         faddp              st(1), st                                     // 0x00795717    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00795719    d944242c
                         {disp8} fmul       dword ptr [eax + 0x6c]                        // 0x0079571d    d8486c
                         faddp              st(1), st                                     // 0x00795720    dec1
                         {disp32} fadd      dword ptr [eax + 0x00000090]                  // 0x00795722    d88090000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00795728    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0079572c    d9442414
                         {disp32} fmul      dword ptr [eax + 0x00000088]                  // 0x00795730    d88888000000
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00795736    d9442428
                         {disp8} fmul       dword ptr [eax + 0x7c]                        // 0x0079573a    d8487c
                         faddp              st(1), st                                     // 0x0079573d    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079573f    d944242c
                         {disp8} fmul       dword ptr [eax + 0x70]                        // 0x00795743    d84870
                         faddp              st(1), st                                     // 0x00795746    dec1
                         {disp32} fadd      dword ptr [eax + 0x00000094]                  // 0x00795748    d88094000000
                         {disp32} lea       eax, dword ptr [esi + 0x00000454]             // 0x0079574e    8d8654040000
                         mov                dword ptr [eax], ecx                          // 0x00795754    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00795756    8b4c2420
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0079575a    895004
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079575d    d95c2414
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00795761    894808
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00795764    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00795768    8b4c2410
                         {disp32} lea       edx, dword ptr [esi + 0x00000460]             // 0x0079576c    8d9660040000
                         mov                dword ptr [edx], eax                          // 0x00795772    8902
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00795774    8b442414
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00795778    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0079577b    894208
                         cmp                dword ptr [esi + 0x00000124], 0x04            // 0x0079577e    83be2401000004
                         {disp8} je         _jmp_addr_0x007957ab                          // 0x00795785    7424
                         push               0x1                                           // 0x00795787    6a01
                         push               0x0                                           // 0x00795789    6a00
                         push               0x0                                           // 0x0079578b    6a00
                         push               0x0                                           // 0x0079578d    6a00
                         push               0x3                                           // 0x0079578f    6a03
                         call               dword ptr [__imp__GetTickCount@4]             // 0x00795791    ff15c4918a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00795797    8b0d203bcd00
                         and                eax, 0x03                                     // 0x0079579d    83e003
                         add                eax, 0x2e                                     // 0x007957a0    83c02e
                         push               eax                                           // 0x007957a3    50
                         push               0x0                                           // 0x007957a4    6a00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x007957a6    e8b545c9ff
_jmp_addr_0x007957ab:    pop                edi                                           // 0x007957ab    5f
                         pop                esi                                           // 0x007957ac    5e
                         pop                ebx                                           // 0x007957ad    5b
                         add                esp, 0x18                                     // 0x007957ae    83c418
                         ret                0x0014                                        // 0x007957b1    c21400
                         nop                                                              // 0x007957b4    90
                         nop                                                              // 0x007957b5    90
                         nop                                                              // 0x007957b6    90
                         nop                                                              // 0x007957b7    90
                         nop                                                              // 0x007957b8    90
                         nop                                                              // 0x007957b9    90
                         nop                                                              // 0x007957ba    90
                         nop                                                              // 0x007957bb    90
                         nop                                                              // 0x007957bc    90
                         nop                                                              // 0x007957bd    90
                         nop                                                              // 0x007957be    90
                         nop                                                              // 0x007957bf    90
_TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d:
@TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d@17:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x007957c0    8a442404
                         sub                esp, 0x0c                                     // 0x007957c4    83ec0c
                         push               ebx                                           // 0x007957c7    53
                         push               ebp                                           // 0x007957c8    55
                         xor.s              ebx, ebx                                      // 0x007957c9    33db
                         cmp.s              al, bl                                        // 0x007957cb    3ac3
                         mov.s              ebp, ecx                                      // 0x007957cd    8be9
                         push               esi                                           // 0x007957cf    56
                         push               edi                                           // 0x007957d0    57
                         {disp32} mov       dword ptr [ebp + 0x00000124], ebx             // 0x007957d1    899d24010000
                         {disp32} mov       dword ptr [ebp + 0x000003cc], ebx             // 0x007957d7    899dcc030000
                         {disp32} mov       dword ptr [ebp + 0x000003d0], ebx             // 0x007957dd    899dd0030000
                         {disp32} je        _jmp_addr_0x00795970                          // 0x007957e3    0f8487010000
                         {disp32} mov       byte ptr [ebp + 0x00000398], 0x01             // 0x007957e9    c6859803000001
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x007957f0    d905b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x007957f6    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x007957fb    8b0dc01dea00
                         {disp32} fst       dword ptr [ebp + 0x0000030c]                  // 0x00795801    d9950c030000
                         {disp32} lea       edi, dword ptr [ebp + 0x00000308]             // 0x00795807    8dbd08030000
                         fst                dword ptr [edi]                               // 0x0079580d    d917
                         {disp8} mov        dword ptr [edi + 0x18], ebx                   // 0x0079580f    895f18
                         {disp8} fstp       dword ptr [edi + 0x1c]                        // 0x00795812    d95f1c
                         {disp8} mov        dword ptr [edi + 0x14], ebx                   // 0x00795815    895f14
                         {disp8} mov        dword ptr [edi + 0x2c], ebx                   // 0x00795818    895f2c
                         {disp8} mov        dword ptr [edi + 0x28], ebx                   // 0x0079581b    895f28
                         {disp8} mov        dword ptr [edi + 0x10], ebx                   // 0x0079581e    895f10
                         {disp8} mov        dword ptr [edi + 0x24], ebx                   // 0x00795821    895f24
                         {disp8} mov        dword ptr [edi + 0x0c], ebx                   // 0x00795824    895f0c
                         {disp8} mov        dword ptr [edi + 0x20], ebx                   // 0x00795827    895f20
                         {disp8} mov        dword ptr [edi + 0x08], ebx                   // 0x0079582a    895f08
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0079582d    894c2418
                         mov.s              edx, eax                                      // 0x00795831    8bd0
                         mov.s              ecx, eax                                      // 0x00795833    8bc8
                         {disp8} mov        dword ptr [edi + 0x34], edx                   // 0x00795835    895734
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00795838    8b542418
                         {disp8} mov        dword ptr [edi + 0x4c], ecx                   // 0x0079583c    894f4c
                         push               edx                                           // 0x0079583f    52
                         {disp8} lea        ecx, dword ptr [edi + 0x60]                   // 0x00795840    8d4f60
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00795843    89442418
                         {disp8} mov        dword ptr [edi + 0x30], eax                   // 0x00795847    894730
                         {disp8} mov        dword ptr [edi + 0x48], ebx                   // 0x0079584a    895f48
                         {disp8} mov        dword ptr [edi + 0x44], ebx                   // 0x0079584d    895f44
                         {disp8} mov        dword ptr [edi + 0x5c], ebx                   // 0x00795850    895f5c
                         {disp8} mov        dword ptr [edi + 0x58], ebx                   // 0x00795853    895f58
                         {disp8} mov        dword ptr [edi + 0x40], ebx                   // 0x00795856    895f40
                         {disp8} mov        dword ptr [edi + 0x54], ebx                   // 0x00795859    895f54
                         {disp8} mov        dword ptr [edi + 0x3c], ebx                   // 0x0079585c    895f3c
                         {disp8} mov        dword ptr [edi + 0x50], ebx                   // 0x0079585f    895f50
                         {disp8} mov        dword ptr [edi + 0x38], ebx                   // 0x00795862    895f38
                         call               @SetPosition__6ZoomerFf@12                    // 0x00795865    e856c2caff
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc4]             // 0x0079586a    d905c41dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc8]        // 0x00795870    a1c81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdcc]        // 0x00795875    8b0dcc1dea00
                         {disp32} fst       dword ptr [ebp + 0x0000027c]                  // 0x0079587b    d9957c020000
                         {disp32} fst       dword ptr [ebp + 0x00000278]                  // 0x00795881    d99578020000
                         {disp32} mov       dword ptr [ebp + 0x00000290], ebx             // 0x00795887    899d90020000
                         {disp32} fstp      dword ptr [ebp + 0x00000294]                  // 0x0079588d    d99d94020000
                         {disp32} mov       dword ptr [ebp + 0x0000028c], ebx             // 0x00795893    899d8c020000
                         {disp32} mov       dword ptr [ebp + 0x000002a4], ebx             // 0x00795899    899da4020000
                         {disp32} mov       dword ptr [ebp + 0x000002a0], ebx             // 0x0079589f    899da0020000
                         {disp32} mov       dword ptr [ebp + 0x00000288], ebx             // 0x007958a5    899d88020000
                         {disp32} mov       dword ptr [ebp + 0x0000029c], ebx             // 0x007958ab    899d9c020000
                         {disp32} mov       dword ptr [ebp + 0x00000284], ebx             // 0x007958b1    899d84020000
                         {disp32} mov       dword ptr [ebp + 0x00000298], ebx             // 0x007958b7    899d98020000
                         {disp32} mov       dword ptr [ebp + 0x00000280], ebx             // 0x007958bd    899d80020000
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007958c3    89442414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007958c7    8b542414
                         {disp32} lea       eax, dword ptr [ebp + 0x00000278]             // 0x007958cb    8d8578020000
                         {disp8} mov        dword ptr [eax + 0x34], edx                   // 0x007958d1    895034
                         {disp8} mov        dword ptr [eax + 0x4c], edx                   // 0x007958d4    89504c
                         {disp8} mov        dword ptr [eax + 0x48], ebx                   // 0x007958d7    895848
                         {disp8} mov        dword ptr [eax + 0x44], ebx                   // 0x007958da    895844
                         {disp8} mov        dword ptr [eax + 0x5c], ebx                   // 0x007958dd    89585c
                         {disp8} mov        dword ptr [eax + 0x58], ebx                   // 0x007958e0    895858
                         {disp8} mov        dword ptr [eax + 0x40], ebx                   // 0x007958e3    895840
                         {disp8} mov        dword ptr [eax + 0x54], ebx                   // 0x007958e6    895854
                         {disp8} mov        dword ptr [eax + 0x3c], ebx                   // 0x007958e9    89583c
                         {disp8} mov        dword ptr [eax + 0x50], ebx                   // 0x007958ec    895850
                         {disp8} mov        dword ptr [eax + 0x38], ebx                   // 0x007958ef    895838
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x007958f2    894c2418
                         mov.s              ecx, edx                                      // 0x007958f6    8bca
                         {disp8} mov        dword ptr [eax + 0x30], ecx                   // 0x007958f8    894830
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007958fb    8b4c2418
                         mov.s              edx, ecx                                      // 0x007958ff    8bd1
                         {disp8} mov        dword ptr [eax + 0x64], ecx                   // 0x00795901    894864
                         {disp8} mov        dword ptr [eax + 0x60], edx                   // 0x00795904    895060
                         {disp8} mov        dword ptr [eax + 0x7c], ecx                   // 0x00795907    89487c
                         {disp8} mov        dword ptr [eax + 0x78], ebx                   // 0x0079590a    895878
                         {disp8} mov        dword ptr [eax + 0x74], ebx                   // 0x0079590d    895874
                         {disp32} mov       dword ptr [eax + 0x0000008c], ebx             // 0x00795910    89988c000000
                         {disp32} mov       dword ptr [eax + 0x00000088], ebx             // 0x00795916    899888000000
                         {disp8} mov        dword ptr [eax + 0x70], ebx                   // 0x0079591c    895870
                         {disp32} mov       dword ptr [eax + 0x00000084], ebx             // 0x0079591f    899884000000
                         {disp8} mov        dword ptr [eax + 0x6c], ebx                   // 0x00795925    89586c
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00795928    8b542424
                         cmp.s              edx, ebx                                      // 0x0079592c    3bd3
                         {disp32} mov       dword ptr [eax + 0x00000080], ebx             // 0x0079592e    899880000000
                         {disp8} mov        dword ptr [eax + 0x68], ebx                   // 0x00795934    895868
                         {disp8} je         _jmp_addr_0x0079594e                          // 0x00795937    7415
                         mov                ecx, 0x00000024                               // 0x00795939    b924000000
                         mov.s              esi, edx                                      // 0x0079593e    8bf2
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00795940    f3a5
                         {disp8} lea        edi, dword ptr [ebp + 0x04]                   // 0x00795942    8d7d04
                         mov                ecx, 0x00000024                               // 0x00795945    b924000000
                         mov.s              esi, edx                                      // 0x0079594a    8bf2
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0079594c    f3a5
_jmp_addr_0x0079594e:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0079594e    8b542428
                         cmp.s              edx, ebx                                      // 0x00795952    3bd3
                         {disp8} je         _jmp_addr_0x00795970                          // 0x00795954    741a
                         mov                ecx, 0x00000024                               // 0x00795956    b924000000
                         mov.s              esi, edx                                      // 0x0079595b    8bf2
                         mov.s              edi, eax                                      // 0x0079595d    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0079595f    f3a5
                         {disp32} lea       edi, dword ptr [ebp + 0x00000094]             // 0x00795961    8dbd94000000
                         mov                ecx, 0x00000024                               // 0x00795967    b924000000
                         mov.s              esi, edx                                      // 0x0079596c    8bf2
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0079596e    f3a5
_jmp_addr_0x00795970:    pop                edi                                           // 0x00795970    5f
                         pop                esi                                           // 0x00795971    5e
                         pop                ebp                                           // 0x00795972    5d
                         pop                ebx                                           // 0x00795973    5b
                         add                esp, 0x0c                                     // 0x00795974    83c40c
                         ret                0x000c                                        // 0x00795977    c20c00
                         nop                                                              // 0x0079597a    90
                         nop                                                              // 0x0079597b    90
                         nop                                                              // 0x0079597c    90
                         nop                                                              // 0x0079597d    90
                         nop                                                              // 0x0079597e    90
                         nop                                                              // 0x0079597f    90
_jmp_addr_0x00795980:    sub                esp, 0x24                                     // 0x00795980    83ec24
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00795983    8b442428
                         push               esi                                           // 0x00795987    56
                         mov.s              esi, ecx                                      // 0x00795988    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0079598a    8b4c2430
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0079598e    894c2408
                         push               0x0                                           // 0x00795992    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00795994    8d542414
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00795998    8d4c2408
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0079599c    89442408
                         call               _jmp_addr_0x0081b370                          // 0x007959a0    e8cb590800
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007959a5    d9442410
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x007959a9    8b0dc01dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x007959af    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x007959b5    a1bc1dea00
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x007959ba    894c240c
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x007959be    894c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x007959c2    8b4c2434
                         fsub               dword ptr [ecx]                               // 0x007959c6    d821
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007959c8    8954241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x007959cc    d9442414
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x007959d0    89542404
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x007959d4    d86104
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007959d7    89442408
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007959db    89442420
                         {disp8} mov        al, byte ptr [ecx + 0x10]                     // 0x007959df    8a4110
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007959e2    d95c2414
                         xor.s              dl, dl                                        // 0x007959e6    32d2
                         test               al, al                                        // 0x007959e8    84c0
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x007959ea    d9442418
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x007959ee    d86108
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007959f1    d95c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007959f5    d944241c
                         fsub               dword ptr [ecx]                               // 0x007959f9    d821
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x007959fb    d95c2404
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x007959ff    d9442408
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x00795a03    d86104
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00795a06    d95c2408
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00795a0a    d944240c
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x00795a0e    d86108
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00795a11    d95c240c
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00795a15    d8642404
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00795a19    d9442414
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x00795a1d    d8642408
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00795a21    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00795a25    d9442418
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x00795a29    d864240c
                         {disp8} je         _jmp_addr_0x00795a5f                          // 0x00795a2d    7430
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00795a2f    d9442414
                         fabs                                                             // 0x00795a33    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1ea10]             // 0x00795a35    dc1d107a8c00
                         fnstsw             ax                                            // 0x00795a3b    dfe0
                         test               ah, 0x41                                      // 0x00795a3d    f6c441
                         {disp8} jne        _jmp_addr_0x00795a5f                          // 0x00795a40    751d
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00795a42    d9442408
                         {disp8} fdiv       dword ptr [esp + 0x14]                        // 0x00795a46    d8742414
                         fchs                                                             // 0x00795a4a    d9e0
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x00795a4c    d954242c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00795a50    d81d98a38a00
                         fnstsw             ax                                            // 0x00795a56    dfe0
                         test               ah, 0x41                                      // 0x00795a58    f6c441
                         {disp8} jne        _jmp_addr_0x00795a5f                          // 0x00795a5b    7502
                         mov                dl, 0x01                                      // 0x00795a5d    b201
_jmp_addr_0x00795a5f:    fld                st(0)                                         // 0x00795a5f    d9c0
                         fmul               st, st(1)                                     // 0x00795a61    d8c9
                         fld                st(2)                                         // 0x00795a63    d9c2
                         fmul               st, st(3)                                     // 0x00795a65    d8cb
                         faddp              st(1), st                                     // 0x00795a67    dec1
                         fld                st(1)                                         // 0x00795a69    d9c1
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00795a6b    d84c240c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00795a6f    d9442404
                         fmul               st, st(4)                                     // 0x00795a73    d8cc
                         faddp              st(1), st                                     // 0x00795a75    dec1
                         fadd.s             st(0), st(0)                                  // 0x00795a77    dcc0
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x00795a79    d9410c
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00795a7c    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00795a80    d84c240c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00795a84    d9442404
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x00795a88    d84c2404
                         faddp              st(1), st                                     // 0x00795a8c    dec1
                         fld                st(1)                                         // 0x00795a8e    d9c1
                         fmul               st, st(2)                                     // 0x00795a90    d8ca
                         fsubp              st(1), st                                     // 0x00795a92    dee9
                         fstp               st(1)                                         // 0x00795a94    ddd9
                         fld                st(1)                                         // 0x00795a96    d9c1
                         fmul               st, st(2)                                     // 0x00795a98    d8ca
                         fld                st(1)                                         // 0x00795a9a    d9c1
                         fmul               st, st(4)                                     // 0x00795a9c    d8cc
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x00795a9e    d80d18b48a00
                         fsubp              st(1), st                                     // 0x00795aa4    dee9
                         {disp8} fst        dword ptr [esp + 0x30]                        // 0x00795aa6    d9542430
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00795aaa    d81d98a38a00
                         fnstsw             ax                                            // 0x00795ab0    dfe0
                         test               ah, 0x41                                      // 0x00795ab2    f6c441
                         {disp8} jne        _jmp_addr_0x00795aed                          // 0x00795ab5    7536
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00795ab7    d81d98a38a00
                         fnstsw             ax                                            // 0x00795abd    dfe0
                         test               ah, 0x01                                      // 0x00795abf    f6c401
                         {disp8} je         _jmp_addr_0x00795ace                          // 0x00795ac2    740a
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00795ac4    d9442430
                         fsqrt                                                            // 0x00795ac8    d9fa
                         fxch               st(1)                                         // 0x00795aca    d9c9
                         {disp8} jmp        _jmp_addr_0x00795ad6                          // 0x00795acc    eb08
_jmp_addr_0x00795ace:    fchs                                                             // 0x00795ace    d9e0
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00795ad0    d9442430
                         fsqrt                                                            // 0x00795ad4    d9fa
_jmp_addr_0x00795ad6:    fsubp              st(1), st                                     // 0x00795ad6    dee9
                         fxch               st(1)                                         // 0x00795ad8    d9c9
                         fadd.s             st(0), st(0)                                  // 0x00795ada    dcc0
                         fdivp              st(1), st                                     // 0x00795adc    def9
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00795ade    d81598a38a00
                         fnstsw             ax                                            // 0x00795ae4    dfe0
                         test               ah, 0x41                                      // 0x00795ae6    f6c441
                         {disp8} je         _jmp_addr_0x00795b08                          // 0x00795ae9    741d
                         {disp8} jmp        _jmp_addr_0x00795af1                          // 0x00795aeb    eb04
_jmp_addr_0x00795aed:    fstp               st(0)                                         // 0x00795aed    ddd8
                         fstp               st(0)                                         // 0x00795aef    ddd8
_jmp_addr_0x00795af1:    test               dl, dl                                        // 0x00795af1    84d2
                         fstp               st(0)                                         // 0x00795af3    ddd8
                         {disp32} jne       _jmp_addr_0x00795c96                          // 0x00795af5    0f859b010000
                         fstp               st(0)                                         // 0x00795afb    ddd8
                         xor.s              al, al                                        // 0x00795afd    32c0
                         fstp               st(0)                                         // 0x00795aff    ddd8
                         pop                esi                                           // 0x00795b01    5e
                         add                esp, 0x24                                     // 0x00795b02    83c424
                         ret                0x0020                                        // 0x00795b05    c22000
_jmp_addr_0x00795b08:    cmp                dl, 0x01                                      // 0x00795b08    80fa01
                         {disp32} jne       _jmp_addr_0x00795c8c                          // 0x00795b0b    0f857b010000
                         {disp8} fcom       dword ptr [esp + 0x2c]                        // 0x00795b11    d854242c
                         fnstsw             ax                                            // 0x00795b15    dfe0
                         test               dl, ah                                        // 0x00795b17    84e2
                         {disp32} je        _jmp_addr_0x00795c94                          // 0x00795b19    0f8475010000
_jmp_addr_0x00795b1f:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00795b1f    8b442444
                         test               eax, eax                                      // 0x00795b23    85c0
                         {disp8} je         _jmp_addr_0x00795b2a                          // 0x00795b25    7403
                         mov                byte ptr [eax], 0x00                          // 0x00795b27    c60000
_jmp_addr_0x00795b2a:    fld                st(2)                                         // 0x00795b2a    d9c2
                         {disp32} lea       edx, dword ptr [esi + 0x00000440]             // 0x00795b2c    8d9640040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795b32    d80d78b68a00
                         mov.s              eax, edx                                      // 0x00795b38    8bc2
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00795b3a    d95c241c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00795b3e    d9442414
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00795b42    8b74241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795b46    d80d78b68a00
                         mov                dword ptr [eax], esi                          // 0x00795b4c    8930
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00795b4e    d95c2420
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00795b52    8b742420
                         fld                st(1)                                         // 0x00795b56    d9c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x00795b58    d80d78b68a00
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x00795b5e    897004
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00795b61    d95c2424
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x00795b65    8b742424
                         {disp8} mov        dword ptr [eax + 0x08], esi                   // 0x00795b69    897008
                         fld                dword ptr [edx]                               // 0x00795b6c    d902
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x00795b6e    d94208
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00795b71    8b4204
                         fld                st(1)                                         // 0x00795b74    d9c1
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00795b76    89442444
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00795b7a    d81d98a38a00
                         fnstsw             ax                                            // 0x00795b80    dfe0
                         test               ah, 0x40                                      // 0x00795b82    f6c440
                         {disp8} je         _jmp_addr_0x00795ba5                          // 0x00795b85    741e
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00795b87    d9442444
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00795b8b    d81d98a38a00
                         fnstsw             ax                                            // 0x00795b91    dfe0
                         test               ah, 0x40                                      // 0x00795b93    f6c440
                         {disp8} je         _jmp_addr_0x00795ba5                          // 0x00795b96    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00795b98    d81598a38a00
                         fnstsw             ax                                            // 0x00795b9e    dfe0
                         test               ah, 0x40                                      // 0x00795ba0    f6c440
                         {disp8} jne        _jmp_addr_0x00795bd5                          // 0x00795ba3    7530
_jmp_addr_0x00795ba5:    fld                st(1)                                         // 0x00795ba5    d9c1
                         fmul               st, st(2)                                     // 0x00795ba7    d8ca
                         fld                st(1)                                         // 0x00795ba9    d9c1
                         fmul               st, st(2)                                     // 0x00795bab    d8ca
                         faddp              st(1), st                                     // 0x00795bad    dec1
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00795baf    d9442444
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00795bb3    d84c2444
                         faddp              st(1), st                                     // 0x00795bb7    dec1
                         fsqrt                                                            // 0x00795bb9    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00795bbb    d83d90a38a00
                         fld                st(0)                                         // 0x00795bc1    d9c0
                         fmul               st, st(3)                                     // 0x00795bc3    d8cb
                         fstp               dword ptr [edx]                               // 0x00795bc5    d91a
                         fld                st(0)                                         // 0x00795bc7    d9c0
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00795bc9    d84c2444
                         {disp8} fstp       dword ptr [edx + 0x04]                        // 0x00795bcd    d95a04
                         fmul               st, st(1)                                     // 0x00795bd0    d8c9
                         {disp8} fstp       dword ptr [edx + 0x08]                        // 0x00795bd2    d95a08
_jmp_addr_0x00795bd5:    fstp               st(0)                                         // 0x00795bd5    ddd8
                         fstp               st(0)                                         // 0x00795bd7    ddd8
_jmp_addr_0x00795bd9:    fxch               st(2)                                         // 0x00795bd9    d9ca
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00795bdb    8b442438
                         test               eax, eax                                      // 0x00795bdf    85c0
                         fmul               st, st(2)                                     // 0x00795be1    d8ca
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00795be3    d95c241c
                         fxch               st(1)                                         // 0x00795be7    d9c9
                         fld                st(0)                                         // 0x00795be9    d9c0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00795beb    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00795bef    d95c2420
                         fxch               st(1)                                         // 0x00795bf3    d9c9
                         fmul               st, st(1)                                     // 0x00795bf5    d8c9
                         fxch               st(1)                                         // 0x00795bf7    d9c9
                         fstp               st(0)                                         // 0x00795bf9    ddd8
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00795bfb    d944241c
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x00795bff    d8442404
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00795c03    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00795c07    d9442420
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x00795c0b    d8442408
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00795c0f    d95c2414
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x00795c13    d844240c
                         {disp8} je         _jmp_addr_0x00795c2b                          // 0x00795c17    7412
                         fld                st(0)                                         // 0x00795c19    d9c0
                         fmul               st, st(1)                                     // 0x00795c1b    d8c9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00795c1d    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00795c21    d84c2410
                         faddp              st(1), st                                     // 0x00795c25    dec1
                         fsqrt                                                            // 0x00795c27    d9fa
                         fstp               dword ptr [eax]                               // 0x00795c29    d918
_jmp_addr_0x00795c2b:    {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00795c2b    8b44243c
                         test               eax, eax                                      // 0x00795c2f    85c0
                         {disp8} je         _jmp_addr_0x00795c3d                          // 0x00795c31    740a
                         fld                st(0)                                         // 0x00795c33    d9c0
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00795c35    d9442410
                         fpatan                                                           // 0x00795c39    d9f3
                         fstp               dword ptr [eax]                               // 0x00795c3b    d918
_jmp_addr_0x00795c3d:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00795c3d    d9442410
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00795c41    8b442448
                         test               eax, eax                                      // 0x00795c45    85c0
                         fadd               dword ptr [ecx]                               // 0x00795c47    d801
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00795c49    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00795c4d    d9442414
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x00795c51    d84104
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00795c54    d95c2414
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x00795c58    d84108
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00795c5b    d95c2418
                         {disp8} je         _jmp_addr_0x00795c75                          // 0x00795c5f    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00795c61    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00795c65    8b542414
                         mov                dword ptr [eax], ecx                          // 0x00795c69    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00795c6b    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00795c6f    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00795c72    894808
_jmp_addr_0x00795c75:    {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x00795c75    8b442440
                         test               eax, eax                                      // 0x00795c79    85c0
                         {disp8} je         _jmp_addr_0x00795c83                          // 0x00795c7b    7406
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00795c7d    8b542414
                         mov                dword ptr [eax], edx                          // 0x00795c81    8910
_jmp_addr_0x00795c83:    mov                al, 0x01                                      // 0x00795c83    b001
                         pop                esi                                           // 0x00795c85    5e
                         add                esp, 0x24                                     // 0x00795c86    83c424
                         ret                0x0020                                        // 0x00795c89    c22000
_jmp_addr_0x00795c8c:    test               dl, dl                                        // 0x00795c8c    84d2
                         {disp32} je        _jmp_addr_0x00795b1f                          // 0x00795c8e    0f848bfeffff
_jmp_addr_0x00795c94:    fstp               st(0)                                         // 0x00795c94    ddd8
_jmp_addr_0x00795c96:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00795c96    8b442444
                         test               eax, eax                                      // 0x00795c9a    85c0
                         {disp8} je         _jmp_addr_0x00795ca1                          // 0x00795c9c    7403
                         mov                byte ptr [eax], 0x01                          // 0x00795c9e    c60001
_jmp_addr_0x00795ca1:    {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00795ca1    d944242c
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00795ca5    c744241c00000000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00795cad    8b54241c
                         add                esi, 0x00000440                               // 0x00795cb1    81c640040000
                         mov                dword ptr [esi], edx                          // 0x00795cb7    8916
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x00795cb9    c74424200000803f
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00795cc1    8b442420
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x00795cc5    c744242400000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00795ccd    8b542424
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00795cd1    894604
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00795cd4    895608
                         {disp32} jmp       _jmp_addr_0x00795bd9                          // 0x00795cd7    e9fdfeffff

// Snippet: db, [0x00795cdc, 0x00795ce0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00795cdc

