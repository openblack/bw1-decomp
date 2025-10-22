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
.extern _toupper
.extern __chkstk
.extern ___nw__FUl
.extern @SetFullscreenMode__8LHScreenFi@12
.extern _jmp_addr_0x007ddc40
.extern _jmp_addr_0x007ded40
.extern _jmp_addr_0x007df850
.extern _jmp_addr_0x007e3c20
.extern _jmp_addr_0x007e6b40
.extern ??0LHReleasedOSFile@@QAE@XZ
.extern _jmp_addr_0x007e6dc0
.extern _jmp_addr_0x007e6f60
.extern _jmp_addr_0x007e71e0
.extern _jmp_addr_0x007e7aa0
.extern _jmp_addr_0x007e9ae0
.extern _jmp_addr_0x007e9be0
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

.globl _jmp_addr_0x007e89f0
.globl _jmp_addr_0x007e8a20
.globl _jmp_addr_0x007e8a90
.globl ?DestroyVariables@LHScriptX_c_@@QAEXXZ
.globl _jmp_addr_0x007e8d10
.globl _jmp_addr_0x007e8d50
.globl _jmp_addr_0x007e8e20

start_0x007e89f0_0x007e95d0:
// Snippet: asm, [0x007e89f0, 0x007e9564)
_jmp_addr_0x007e89f0:    push              esi                                      // 0x007e89f0    56
                         push              0x0                                      // 0x007e89f1    6a00
                         mov.s             esi, ecx                                 // 0x007e89f3    8bf1
                         push              0x0                                      // 0x007e89f5    6a00
                         call              _jmp_addr_0x007e8a00                     // 0x007e89f7    e804000000
                         mov.s             eax, esi                                 // 0x007e89fc    8bc6
                         pop               esi                                      // 0x007e89fe    5e
                         ret                                                        // 0x007e89ff    c3
_jmp_addr_0x007e8a00:    {disp8} mov       eax, dword ptr [esp + 0x04]              // 0x007e8a00    8b442404
                         {disp8} mov       edx, dword ptr [esp + 0x08]              // 0x007e8a04    8b542408
                         {disp8} mov       dword ptr [ecx + 0x04], eax              // 0x007e8a08    894104
                         {disp8} mov       dword ptr [ecx + 0x08], edx              // 0x007e8a0b    895108
                         mov               dword ptr [ecx], 0x00000001              // 0x007e8a0e    c70101000000
                         ret               0x0008                                   // 0x007e8a14    c20800
                         nop                                                        // 0x007e8a17    90
                         nop                                                        // 0x007e8a18    90
                         nop                                                        // 0x007e8a19    90
                         nop                                                        // 0x007e8a1a    90
                         nop                                                        // 0x007e8a1b    90
                         nop                                                        // 0x007e8a1c    90
                         nop                                                        // 0x007e8a1d    90
                         nop                                                        // 0x007e8a1e    90
                         nop                                                        // 0x007e8a1f    90
_jmp_addr_0x007e8a20:    {disp8} mov       al, byte ptr [ecx + 0x14]                // 0x007e8a20    8a4114
                         ret                                                        // 0x007e8a23    c3
                         nop                                                        // 0x007e8a24    90
                         nop                                                        // 0x007e8a25    90
                         nop                                                        // 0x007e8a26    90
                         nop                                                        // 0x007e8a27    90
                         nop                                                        // 0x007e8a28    90
                         nop                                                        // 0x007e8a29    90
                         nop                                                        // 0x007e8a2a    90
                         nop                                                        // 0x007e8a2b    90
                         nop                                                        // 0x007e8a2c    90
                         nop                                                        // 0x007e8a2d    90
                         nop                                                        // 0x007e8a2e    90
                         nop                                                        // 0x007e8a2f    90
                         {disp8} mov       al, byte ptr [ecx + 0x7e]                // 0x007e8a30    8a417e
                         ret                                                        // 0x007e8a33    c3
                         nop                                                        // 0x007e8a34    90
                         nop                                                        // 0x007e8a35    90
                         nop                                                        // 0x007e8a36    90
                         nop                                                        // 0x007e8a37    90
                         nop                                                        // 0x007e8a38    90
                         nop                                                        // 0x007e8a39    90
                         nop                                                        // 0x007e8a3a    90
                         nop                                                        // 0x007e8a3b    90
                         nop                                                        // 0x007e8a3c    90
                         nop                                                        // 0x007e8a3d    90
                         nop                                                        // 0x007e8a3e    90
                         nop                                                        // 0x007e8a3f    90
                         {disp8} mov       al, byte ptr [ecx + 0x7f]                // 0x007e8a40    8a417f
                         ret                                                        // 0x007e8a43    c3
                         nop                                                        // 0x007e8a44    90
                         nop                                                        // 0x007e8a45    90
                         nop                                                        // 0x007e8a46    90
                         nop                                                        // 0x007e8a47    90
                         nop                                                        // 0x007e8a48    90
                         nop                                                        // 0x007e8a49    90
                         nop                                                        // 0x007e8a4a    90
                         nop                                                        // 0x007e8a4b    90
                         nop                                                        // 0x007e8a4c    90
                         nop                                                        // 0x007e8a4d    90
                         nop                                                        // 0x007e8a4e    90
                         nop                                                        // 0x007e8a4f    90
                         {disp32} mov      al, byte ptr [ecx + 0x00000080]          // 0x007e8a50    8a8180000000
                         ret                                                        // 0x007e8a56    c3
                         nop                                                        // 0x007e8a57    90
                         nop                                                        // 0x007e8a58    90
                         nop                                                        // 0x007e8a59    90
                         nop                                                        // 0x007e8a5a    90
                         nop                                                        // 0x007e8a5b    90
                         nop                                                        // 0x007e8a5c    90
                         nop                                                        // 0x007e8a5d    90
                         nop                                                        // 0x007e8a5e    90
                         nop                                                        // 0x007e8a5f    90
                         {disp8} mov       al, byte ptr [ecx + 0x7b]                // 0x007e8a60    8a417b
                         ret                                                        // 0x007e8a63    c3
                         nop                                                        // 0x007e8a64    90
                         nop                                                        // 0x007e8a65    90
                         nop                                                        // 0x007e8a66    90
                         nop                                                        // 0x007e8a67    90
                         nop                                                        // 0x007e8a68    90
                         nop                                                        // 0x007e8a69    90
                         nop                                                        // 0x007e8a6a    90
                         nop                                                        // 0x007e8a6b    90
                         nop                                                        // 0x007e8a6c    90
                         nop                                                        // 0x007e8a6d    90
                         nop                                                        // 0x007e8a6e    90
                         nop                                                        // 0x007e8a6f    90
                         {disp8} mov       al, byte ptr [ecx + 0x7c]                // 0x007e8a70    8a417c
                         ret                                                        // 0x007e8a73    c3
                         nop                                                        // 0x007e8a74    90
                         nop                                                        // 0x007e8a75    90
                         nop                                                        // 0x007e8a76    90
                         nop                                                        // 0x007e8a77    90
                         nop                                                        // 0x007e8a78    90
                         nop                                                        // 0x007e8a79    90
                         nop                                                        // 0x007e8a7a    90
                         nop                                                        // 0x007e8a7b    90
                         nop                                                        // 0x007e8a7c    90
                         nop                                                        // 0x007e8a7d    90
                         nop                                                        // 0x007e8a7e    90
                         nop                                                        // 0x007e8a7f    90
                         {disp8} mov       al, byte ptr [ecx + 0x7d]                // 0x007e8a80    8a417d
                         ret                                                        // 0x007e8a83    c3
                         nop                                                        // 0x007e8a84    90
                         nop                                                        // 0x007e8a85    90
                         nop                                                        // 0x007e8a86    90
                         nop                                                        // 0x007e8a87    90
                         nop                                                        // 0x007e8a88    90
                         nop                                                        // 0x007e8a89    90
                         nop                                                        // 0x007e8a8a    90
                         nop                                                        // 0x007e8a8b    90
                         nop                                                        // 0x007e8a8c    90
                         nop                                                        // 0x007e8a8d    90
                         nop                                                        // 0x007e8a8e    90
                         nop                                                        // 0x007e8a8f    90
_jmp_addr_0x007e8a90:    push              ebx                                      // 0x007e8a90    53
                         {disp8} mov       ebx, dword ptr [esp + 0x0c]              // 0x007e8a91    8b5c240c
                         push              ebp                                      // 0x007e8a95    55
                         push              esi                                      // 0x007e8a96    56
                         {disp8} mov       esi, dword ptr [esp + 0x10]              // 0x007e8a97    8b742410
                         mov               byte ptr [ebx], 0x00                     // 0x007e8a9b    c60300
                         mov.s             ebp, ecx                                 // 0x007e8a9e    8be9
                         push              edi                                      // 0x007e8aa0    57
                         mov               eax, dword ptr [esi]                     // 0x007e8aa1    8b06
                         mov.s             edi, ebx                                 // 0x007e8aa3    8bfb
                         mov               cl, byte ptr [eax]                       // 0x007e8aa5    8a08
                         push              ecx                                      // 0x007e8aa7    51
                         call              _jmp_addr_0x007e6f60                     // 0x007e8aa8    e8b3e4ffff
                         add               esp, 0x04                                // 0x007e8aad    83c404
                         test              eax, eax                                 // 0x007e8ab0    85c0
                         {disp8} je        _jmp_addr_0x007e8acd                     // 0x007e8ab2    7419
_jmp_addr_0x007e8ab4:    mov               eax, dword ptr [esi]                     // 0x007e8ab4    8b06
                         cmp               byte ptr [eax], 0x00                     // 0x007e8ab6    803800
                         {disp8} je        _jmp_addr_0x007e8acd                     // 0x007e8ab9    7412
                         inc               eax                                      // 0x007e8abb    40
                         mov               dword ptr [esi], eax                     // 0x007e8abc    8906
                         mov               dl, byte ptr [eax]                       // 0x007e8abe    8a10
                         push              edx                                      // 0x007e8ac0    52
                         call              _jmp_addr_0x007e6f60                     // 0x007e8ac1    e89ae4ffff
                         add               esp, 0x04                                // 0x007e8ac6    83c404
                         test              eax, eax                                 // 0x007e8ac9    85c0
                         {disp8} jne       _jmp_addr_0x007e8ab4                     // 0x007e8acb    75e7
_jmp_addr_0x007e8acd:    mov               eax, dword ptr [esi]                     // 0x007e8acd    8b06
                         mov               al, byte ptr [eax]                       // 0x007e8acf    8a00
                         cmp               al, 0x0a                                 // 0x007e8ad1    3c0a
                         {disp8} je        _jmp_addr_0x007e8ad9                     // 0x007e8ad3    7404
                         test              al, al                                   // 0x007e8ad5    84c0
                         {disp8} jne       _jmp_addr_0x007e8ae0                     // 0x007e8ad7    7507
_jmp_addr_0x007e8ad9:    {disp8} mov       ecx, dword ptr [esp + 0x1c]              // 0x007e8ad9    8b4c241c
                         mov               byte ptr [ecx], 0x01                     // 0x007e8add    c60101
_jmp_addr_0x007e8ae0:    mov               ecx, dword ptr [esi]                     // 0x007e8ae0    8b0e
                         mov               al, byte ptr [ecx]                       // 0x007e8ae2    8a01
                         cmp               al, 0x22                                 // 0x007e8ae4    3c22
                         {disp32} jne      _jmp_addr_0x007e8b77                     // 0x007e8ae6    0f858b000000
                         {disp8} lea       eax, dword ptr [ecx + 0x01]              // 0x007e8aec    8d4101
                         mov               dword ptr [esi], eax                     // 0x007e8aef    8906
                         mov               al, byte ptr [eax]                       // 0x007e8af1    8a00
                         cmp               al, 0x22                                 // 0x007e8af3    3c22
                         {disp8} je        _jmp_addr_0x007e8b0f                     // 0x007e8af5    7418
_jmp_addr_0x007e8af7:    test              al, al                                   // 0x007e8af7    84c0
                         {disp8} je        _jmp_addr_0x007e8b0f                     // 0x007e8af9    7414
                         cmp               al, 0x0a                                 // 0x007e8afb    3c0a
                         {disp8} je        _jmp_addr_0x007e8b0f                     // 0x007e8afd    7410
                         mov               byte ptr [edi], al                       // 0x007e8aff    8807
                         mov               edx, dword ptr [esi]                     // 0x007e8b01    8b16
                         inc               edi                                      // 0x007e8b03    47
                         inc               edx                                      // 0x007e8b04    42
                         mov.s             eax, edx                                 // 0x007e8b05    8bc2
                         mov               dword ptr [esi], edx                     // 0x007e8b07    8916
                         mov               al, byte ptr [eax]                       // 0x007e8b09    8a00
                         cmp               al, 0x22                                 // 0x007e8b0b    3c22
                         {disp8} jne       _jmp_addr_0x007e8af7                     // 0x007e8b0d    75e8
_jmp_addr_0x007e8b0f:    mov               byte ptr [edi], 0x00                     // 0x007e8b0f    c60700
                         mov               eax, dword ptr [esi]                     // 0x007e8b12    8b06
                         cmp               byte ptr [eax], 0x22                     // 0x007e8b14    803822
                         {disp8} jne       _jmp_addr_0x007e8b5b                     // 0x007e8b17    7542
                         inc               eax                                      // 0x007e8b19    40
                         mov               dword ptr [esi], eax                     // 0x007e8b1a    8906
                         mov               dl, byte ptr [eax]                       // 0x007e8b1c    8a10
                         push              edx                                      // 0x007e8b1e    52
                         call              _jmp_addr_0x007e6f60                     // 0x007e8b1f    e83ce4ffff
                         add               esp, 0x04                                // 0x007e8b24    83c404
                         test              eax, eax                                 // 0x007e8b27    85c0
                         {disp8} je        _jmp_addr_0x007e8b44                     // 0x007e8b29    7419
_jmp_addr_0x007e8b2b:    mov               eax, dword ptr [esi]                     // 0x007e8b2b    8b06
                         cmp               byte ptr [eax], 0x00                     // 0x007e8b2d    803800
                         {disp8} je        _jmp_addr_0x007e8b44                     // 0x007e8b30    7412
                         inc               eax                                      // 0x007e8b32    40
                         mov               dword ptr [esi], eax                     // 0x007e8b33    8906
                         mov               al, byte ptr [eax]                       // 0x007e8b35    8a00
                         push              eax                                      // 0x007e8b37    50
                         call              _jmp_addr_0x007e6f60                     // 0x007e8b38    e823e4ffff
                         add               esp, 0x04                                // 0x007e8b3d    83c404
                         test              eax, eax                                 // 0x007e8b40    85c0
                         {disp8} jne       _jmp_addr_0x007e8b2b                     // 0x007e8b42    75e7
_jmp_addr_0x007e8b44:    mov               ecx, dword ptr [esi]                     // 0x007e8b44    8b0e
                         mov               al, byte ptr [ecx]                       // 0x007e8b46    8a01
                         cmp               al, 0x2c                                 // 0x007e8b48    3c2c
                         {disp8} je        _jmp_addr_0x007e8b58                     // 0x007e8b4a    740c
                         cmp               al, 0x28                                 // 0x007e8b4c    3c28
                         {disp8} je        _jmp_addr_0x007e8b58                     // 0x007e8b4e    7408
                         cmp               al, 0x29                                 // 0x007e8b50    3c29
                         {disp8} je        _jmp_addr_0x007e8b58                     // 0x007e8b52    7404
                         cmp               al, 0x3a                                 // 0x007e8b54    3c3a
                         {disp8} jne       _jmp_addr_0x007e8b5b                     // 0x007e8b56    7503
_jmp_addr_0x007e8b58:    inc               ecx                                      // 0x007e8b58    41
                         mov               dword ptr [esi], ecx                     // 0x007e8b59    890e
_jmp_addr_0x007e8b5b:    mov               ecx, dword ptr [esi]                     // 0x007e8b5b    8b0e
                         mov               al, byte ptr [ecx]                       // 0x007e8b5d    8a01
                         cmp               al, 0x0a                                 // 0x007e8b5f    3c0a
                         {disp8} je        _jmp_addr_0x007e8b67                     // 0x007e8b61    7404
                         test              al, al                                   // 0x007e8b63    84c0
                         {disp8} jne       _jmp_addr_0x007e8b6e                     // 0x007e8b65    7507
_jmp_addr_0x007e8b67:    {disp8} mov       edx, dword ptr [esp + 0x1c]              // 0x007e8b67    8b54241c
                         mov               byte ptr [edx], 0x01                     // 0x007e8b6b    c60201
_jmp_addr_0x007e8b6e:    pop               edi                                      // 0x007e8b6e    5f
                         pop               esi                                      // 0x007e8b6f    5e
                         pop               ebp                                      // 0x007e8b70    5d
                         xor.s             eax, eax                                 // 0x007e8b71    33c0
                         pop               ebx                                      // 0x007e8b73    5b
                         ret               0x000c                                   // 0x007e8b74    c20c00
_jmp_addr_0x007e8b77:    cmp               al, 0x3d                                 // 0x007e8b77    3c3d
                         {disp8} je        _jmp_addr_0x007e8bde                     // 0x007e8b79    7463
                         cmp               al, 0x21                                 // 0x007e8b7b    3c21
                         {disp8} je        _jmp_addr_0x007e8bde                     // 0x007e8b7d    745f
                         cmp               al, 0x3e                                 // 0x007e8b7f    3c3e
                         {disp8} je        _jmp_addr_0x007e8bde                     // 0x007e8b81    745b
                         cmp               al, 0x3c                                 // 0x007e8b83    3c3c
                         {disp8} je        _jmp_addr_0x007e8bde                     // 0x007e8b85    7457
                         push              eax                                      // 0x007e8b87    50
                         call              _jmp_addr_0x007e6f60                     // 0x007e8b88    e8d3e3ffff
                         add               esp, 0x04                                // 0x007e8b8d    83c404
                         test              eax, eax                                 // 0x007e8b90    85c0
                         {disp8} jne       _jmp_addr_0x007e8bf9                     // 0x007e8b92    7565
_jmp_addr_0x007e8b94:    mov               ecx, dword ptr [esi]                     // 0x007e8b94    8b0e
                         mov               al, byte ptr [ecx]                       // 0x007e8b96    8a01
                         test              al, al                                   // 0x007e8b98    84c0
                         {disp8} je        _jmp_addr_0x007e8bf9                     // 0x007e8b9a    745d
                         cmp               al, 0x2c                                 // 0x007e8b9c    3c2c
                         {disp8} je        _jmp_addr_0x007e8bf7                     // 0x007e8b9e    7457
                         cmp               al, 0x28                                 // 0x007e8ba0    3c28
                         {disp8} je        _jmp_addr_0x007e8bf7                     // 0x007e8ba2    7453
                         cmp               al, 0x29                                 // 0x007e8ba4    3c29
                         {disp8} je        _jmp_addr_0x007e8bf7                     // 0x007e8ba6    744f
                         cmp               al, 0x3a                                 // 0x007e8ba8    3c3a
                         {disp8} je        _jmp_addr_0x007e8bf7                     // 0x007e8baa    744b
                         cmp               al, 0x3d                                 // 0x007e8bac    3c3d
                         {disp8} je        _jmp_addr_0x007e8bf9                     // 0x007e8bae    7449
                         cmp               al, 0x21                                 // 0x007e8bb0    3c21
                         {disp8} je        _jmp_addr_0x007e8bf9                     // 0x007e8bb2    7445
                         cmp               al, 0x3e                                 // 0x007e8bb4    3c3e
                         {disp8} je        _jmp_addr_0x007e8bf9                     // 0x007e8bb6    7441
                         cmp               al, 0x3c                                 // 0x007e8bb8    3c3c
                         {disp8} je        _jmp_addr_0x007e8bf9                     // 0x007e8bba    743d
                         movsx             eax, al                                  // 0x007e8bbc    0fbec0
                         inc               ecx                                      // 0x007e8bbf    41
                         push              eax                                      // 0x007e8bc0    50
                         mov               dword ptr [esi], ecx                     // 0x007e8bc1    890e
                         call              _toupper                                 // 0x007e8bc3    e889d2fdff
                         mov               byte ptr [edi], al                       // 0x007e8bc8    8807
                         mov               eax, dword ptr [esi]                     // 0x007e8bca    8b06
                         inc               edi                                      // 0x007e8bcc    47
                         mov               cl, byte ptr [eax]                       // 0x007e8bcd    8a08
                         push              ecx                                      // 0x007e8bcf    51
                         call              _jmp_addr_0x007e6f60                     // 0x007e8bd0    e88be3ffff
                         add               esp, 0x08                                // 0x007e8bd5    83c408
                         test              eax, eax                                 // 0x007e8bd8    85c0
                         {disp8} je        _jmp_addr_0x007e8b94                     // 0x007e8bda    74b8
                         {disp8} jmp       _jmp_addr_0x007e8bf9                     // 0x007e8bdc    eb1b
_jmp_addr_0x007e8bde:    mov               byte ptr [ebx], al                       // 0x007e8bde    8803
                         mov               edx, dword ptr [esi]                     // 0x007e8be0    8b16
                         inc               edx                                      // 0x007e8be2    42
                         {disp8} lea       edi, dword ptr [ebx + 0x01]              // 0x007e8be3    8d7b01
                         mov.s             eax, edx                                 // 0x007e8be6    8bc2
                         mov               dword ptr [esi], edx                     // 0x007e8be8    8916
                         mov               al, byte ptr [eax]                       // 0x007e8bea    8a00
                         cmp               al, 0x3d                                 // 0x007e8bec    3c3d
                         {disp8} je        _jmp_addr_0x007e8bf4                     // 0x007e8bee    7404
                         cmp               al, 0x3e                                 // 0x007e8bf0    3c3e
                         {disp8} jne       _jmp_addr_0x007e8bf9                     // 0x007e8bf2    7505
_jmp_addr_0x007e8bf4:    mov               byte ptr [edi], al                       // 0x007e8bf4    8807
                         inc               edi                                      // 0x007e8bf6    47
_jmp_addr_0x007e8bf7:    inc               dword ptr [esi]                          // 0x007e8bf7    ff06
_jmp_addr_0x007e8bf9:    mov               byte ptr [edi], 0x00                     // 0x007e8bf9    c60700
                         mov               edx, dword ptr [esi]                     // 0x007e8bfc    8b16
                         mov               al, byte ptr [edx]                       // 0x007e8bfe    8a02
                         cmp               al, 0x0a                                 // 0x007e8c00    3c0a
                         {disp8} je        _jmp_addr_0x007e8c08                     // 0x007e8c02    7404
                         test              al, al                                   // 0x007e8c04    84c0
                         {disp8} jne       _jmp_addr_0x007e8c0f                     // 0x007e8c06    7507
_jmp_addr_0x007e8c08:    {disp8} mov       eax, dword ptr [esp + 0x1c]              // 0x007e8c08    8b44241c
                         mov               byte ptr [eax], 0x01                     // 0x007e8c0c    c60001
_jmp_addr_0x007e8c0f:    {disp32} mov      eax, dword ptr [data_bytes + 0x26e3c0]   // 0x007e8c0f    a1c043c300
                         xor.s             esi, esi                                 // 0x007e8c14    33f6
                         test              eax, eax                                 // 0x007e8c16    85c0
                         {disp8} je        _jmp_addr_0x007e8c46                     // 0x007e8c18    742c
                         mov               eax, 0x00c343c0                          // 0x007e8c1a    b8c043c300
_jmp_addr_0x007e8c1f:    mov               ecx, dword ptr [eax]                     // 0x007e8c1f    8b08
                         push              ecx                                      // 0x007e8c21    51
                         push              ebx                                      // 0x007e8c22    53
                         call              _jmp_addr_0x007e6dc0                     // 0x007e8c23    e898e1ffff
                         add               esp, 0x08                                // 0x007e8c28    83c408
                         test              eax, eax                                 // 0x007e8c2b    85c0
                         {disp8} je        _jmp_addr_0x007e8c7a                     // 0x007e8c2d    744b
                         inc               esi                                      // 0x007e8c2f    46
                         movsx             edx, si                                  // 0x007e8c30    0fbfd6
                         shl               edx, 4                                   // 0x007e8c33    c1e204
                         {disp32} mov      ecx, dword ptr [edx + 0x00c343c0]        // 0x007e8c36    8b8ac043c300
                         {disp32} lea      eax, dword ptr [edx + 0x00c343c0]        // 0x007e8c3c    8d82c043c300
                         test              ecx, ecx                                 // 0x007e8c42    85c9
                         {disp8} jne       _jmp_addr_0x007e8c1f                     // 0x007e8c44    75d9
_jmp_addr_0x007e8c46:    {disp8} mov       ecx, dword ptr [ebp + 0x20]              // 0x007e8c46    8b4d20
                         test              ecx, ecx                                 // 0x007e8c49    85c9
                         {disp8} je        _jmp_addr_0x007e8c94                     // 0x007e8c4b    7447
                         mov               eax, dword ptr [ecx]                     // 0x007e8c4d    8b01
                         xor.s             esi, esi                                 // 0x007e8c4f    33f6
                         test              eax, eax                                 // 0x007e8c51    85c0
                         {disp8} je        _jmp_addr_0x007e8c94                     // 0x007e8c53    743f
                         xor.s             eax, eax                                 // 0x007e8c55    33c0
_jmp_addr_0x007e8c57:    mov               eax, dword ptr [ecx + eax * 0x1]         // 0x007e8c57    8b0401
                         push              eax                                      // 0x007e8c5a    50
                         push              ebx                                      // 0x007e8c5b    53
                         call              _jmp_addr_0x007e6dc0                     // 0x007e8c5c    e85fe1ffff
                         add               esp, 0x08                                // 0x007e8c61    83c408
                         test              eax, eax                                 // 0x007e8c64    85c0
                         {disp8} je        _jmp_addr_0x007e8c85                     // 0x007e8c66    741d
                         {disp8} mov       ecx, dword ptr [ebp + 0x20]              // 0x007e8c68    8b4d20
                         inc               esi                                      // 0x007e8c6b    46
                         movsx             eax, si                                  // 0x007e8c6c    0fbfc6
                         shl               eax, 4                                   // 0x007e8c6f    c1e004
                         cmp               dword ptr [ecx + eax * 0x1], 0x00        // 0x007e8c72    833c0100
                         {disp8} jne       _jmp_addr_0x007e8c57                     // 0x007e8c76    75df
                         {disp8} jmp       _jmp_addr_0x007e8c94                     // 0x007e8c78    eb1a
_jmp_addr_0x007e8c7a:    movsx             eax, si                                  // 0x007e8c7a    0fbfc6
                         pop               edi                                      // 0x007e8c7d    5f
                         pop               esi                                      // 0x007e8c7e    5e
                         pop               ebp                                      // 0x007e8c7f    5d
                         inc               eax                                      // 0x007e8c80    40
                         pop               ebx                                      // 0x007e8c81    5b
                         ret               0x000c                                   // 0x007e8c82    c20c00
_jmp_addr_0x007e8c85:    movsx             ecx, si                                  // 0x007e8c85    0fbfce
                         pop               edi                                      // 0x007e8c88    5f
                         or                eax, -0x1                                // 0x007e8c89    83c8ff
                         pop               esi                                      // 0x007e8c8c    5e
                         pop               ebp                                      // 0x007e8c8d    5d
                         sub.s             eax, ecx                                 // 0x007e8c8e    2bc1
                         pop               ebx                                      // 0x007e8c90    5b
                         ret               0x000c                                   // 0x007e8c91    c20c00
_jmp_addr_0x007e8c94:    push              ebx                                      // 0x007e8c94    53
                         mov.s             ecx, ebp                                 // 0x007e8c95    8bcd
                         call              _jmp_addr_0x007e8d10                     // 0x007e8c97    e874000000
                         test              eax, eax                                 // 0x007e8c9c    85c0
                         {disp32} je       _jmp_addr_0x007e8b6e                     // 0x007e8c9e    0f84cafeffff
                         pop               edi                                      // 0x007e8ca4    5f
                         pop               esi                                      // 0x007e8ca5    5e
                         pop               ebp                                      // 0x007e8ca6    5d
                         mov               eax, 0x0000001e                          // 0x007e8ca7    b81e000000
                         pop               ebx                                      // 0x007e8cac    5b
                         ret               0x000c                                   // 0x007e8cad    c20c00
?DestroyVariables@LHScriptX_c_@@QAEXXZ:
                                          push              ebx                                      // 0x007e8cb0    53
                         mov.s             ebx, ecx                                 // 0x007e8cb1    8bd9
                         push              esi                                      // 0x007e8cb3    56
                         {disp8} mov       esi, dword ptr [ebx + 0x1c]              // 0x007e8cb4    8b731c
                         test              esi, esi                                 // 0x007e8cb7    85f6
                         {disp8} je        _jmp_addr_0x007e8cfa                     // 0x007e8cb9    743f
                         push              edi                                      // 0x007e8cbb    57
_jmp_addr_0x007e8cbc:    {disp8} mov       eax, dword ptr [esi + 0x04]              // 0x007e8cbc    8b4604
                         test              eax, eax                                 // 0x007e8cbf    85c0
                         {disp8} je        _jmp_addr_0x007e8ccc                     // 0x007e8cc1    7409
                         push              eax                                      // 0x007e8cc3    50
                         call              ??3@YAXPAX@Z                             // 0x007e8cc4    e8cf61fcff
                         add               esp, 0x04                                // 0x007e8cc9    83c404
_jmp_addr_0x007e8ccc:    mov               eax, dword ptr [esi]                     // 0x007e8ccc    8b06
                         dec               eax                                      // 0x007e8cce    48
                         {disp8} jne       _jmp_addr_0x007e8ce1                     // 0x007e8ccf    7510
                         {disp8} mov       eax, dword ptr [esi + 0x08]              // 0x007e8cd1    8b4608
                         test              eax, eax                                 // 0x007e8cd4    85c0
                         {disp8} je        _jmp_addr_0x007e8ce1                     // 0x007e8cd6    7409
                         push              eax                                      // 0x007e8cd8    50
                         call              ??3@YAXPAX@Z                             // 0x007e8cd9    e8ba61fcff
                         add               esp, 0x04                                // 0x007e8cde    83c404
_jmp_addr_0x007e8ce1:    {disp8} mov       edi, dword ptr [esi + 0x0c]              // 0x007e8ce1    8b7e0c
                         push              esi                                      // 0x007e8ce4    56
                         call              ??3@YAXPAX@Z                             // 0x007e8ce5    e8ae61fcff
                         add               esp, 0x04                                // 0x007e8cea    83c404
                         mov.s             esi, edi                                 // 0x007e8ced    8bf7
                         test              edi, edi                                 // 0x007e8cef    85ff
                         {disp8} jne       _jmp_addr_0x007e8cbc                     // 0x007e8cf1    75c9
                         {disp8} mov       dword ptr [ebx + 0x1c], edi              // 0x007e8cf3    897b1c
                         pop               edi                                      // 0x007e8cf6    5f
                         pop               esi                                      // 0x007e8cf7    5e
                         pop               ebx                                      // 0x007e8cf8    5b
                         ret                                                        // 0x007e8cf9    c3
_jmp_addr_0x007e8cfa:    {disp8} mov       dword ptr [ebx + 0x1c], 0x00000000       // 0x007e8cfa    c7431c00000000
                         pop               esi                                      // 0x007e8d01    5e
                         pop               ebx                                      // 0x007e8d02    5b
                         ret                                                        // 0x007e8d03    c3
                         nop                                                        // 0x007e8d04    90
                         nop                                                        // 0x007e8d05    90
                         nop                                                        // 0x007e8d06    90
                         nop                                                        // 0x007e8d07    90
                         nop                                                        // 0x007e8d08    90
                         nop                                                        // 0x007e8d09    90
                         nop                                                        // 0x007e8d0a    90
                         nop                                                        // 0x007e8d0b    90
                         nop                                                        // 0x007e8d0c    90
                         nop                                                        // 0x007e8d0d    90
                         nop                                                        // 0x007e8d0e    90
                         nop                                                        // 0x007e8d0f    90
_jmp_addr_0x007e8d10:    push              esi                                      // 0x007e8d10    56
                         push              edi                                      // 0x007e8d11    57
                         {disp8} mov       edi, dword ptr [esp + 0x0c]              // 0x007e8d12    8b7c240c
                         cmp               byte ptr [edi], 0x00                     // 0x007e8d16    803f00
                         {disp8} je        _jmp_addr_0x007e8d3a                     // 0x007e8d19    741f
                         {disp8} mov       esi, dword ptr [ecx + 0x1c]              // 0x007e8d1b    8b711c
                         test              esi, esi                                 // 0x007e8d1e    85f6
                         {disp8} je        _jmp_addr_0x007e8d3a                     // 0x007e8d20    7418
_jmp_addr_0x007e8d22:    {disp8} mov       eax, dword ptr [esi + 0x04]              // 0x007e8d22    8b4604
                         push              eax                                      // 0x007e8d25    50
                         push              edi                                      // 0x007e8d26    57
                         call              _jmp_addr_0x007e6dc0                     // 0x007e8d27    e894e0ffff
                         add               esp, 0x08                                // 0x007e8d2c    83c408
                         test              eax, eax                                 // 0x007e8d2f    85c0
                         {disp8} je        _jmp_addr_0x007e8d41                     // 0x007e8d31    740e
                         {disp8} mov       esi, dword ptr [esi + 0x0c]              // 0x007e8d33    8b760c
                         test              esi, esi                                 // 0x007e8d36    85f6
                         {disp8} jne       _jmp_addr_0x007e8d22                     // 0x007e8d38    75e8
_jmp_addr_0x007e8d3a:    pop               edi                                      // 0x007e8d3a    5f
                         xor.s             eax, eax                                 // 0x007e8d3b    33c0
                         pop               esi                                      // 0x007e8d3d    5e
                         ret               0x0004                                   // 0x007e8d3e    c20400
_jmp_addr_0x007e8d41:    mov.s             eax, esi                                 // 0x007e8d41    8bc6
                         pop               edi                                      // 0x007e8d43    5f
                         pop               esi                                      // 0x007e8d44    5e
                         ret               0x0004                                   // 0x007e8d45    c20400
                         nop                                                        // 0x007e8d48    90
                         nop                                                        // 0x007e8d49    90
                         nop                                                        // 0x007e8d4a    90
                         nop                                                        // 0x007e8d4b    90
                         nop                                                        // 0x007e8d4c    90
                         nop                                                        // 0x007e8d4d    90
                         nop                                                        // 0x007e8d4e    90
                         nop                                                        // 0x007e8d4f    90
_jmp_addr_0x007e8d50:    {disp32} mov      eax, fs:[0x0]                            // 0x007e8d50    64a100000000
                         push              -0x1                                     // 0x007e8d56    6aff
                         push              0x008a7b6b                               // 0x007e8d58    686b7b8a00
                         push              eax                                      // 0x007e8d5d    50
                         mov               eax, 0x0000110c                          // 0x007e8d5e    b80c110000
                         {disp32} mov      fs:[0x0], esp                            // 0x007e8d63    64892500000000
                         call              __chkstk                                 // 0x007e8d6a    e841e1fdff
                         push              esi                                      // 0x007e8d6f    56
                         mov.s             esi, ecx                                 // 0x007e8d70    8bf1
                         {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e8d72    8d4c2404
                         call              ??0LHReleasedOSFile@@QAE@XZ              // 0x007e8d76    e895dfffff
                         xor.s             eax, eax                                 // 0x007e8d7b    33c0
                         push              0x2                                      // 0x007e8d7d    6a02
                         {disp32} mov      dword ptr [esp + 0x0000111c], eax        // 0x007e8d7f    8984241c110000
                         {disp8} mov       dword ptr [esi + 0x04], eax              // 0x007e8d86    894604
                         {disp32} mov      eax, dword ptr [esp + 0x00001124]        // 0x007e8d89    8b842424110000
                         {disp8} lea       ecx, dword ptr [esp + 0x08]              // 0x007e8d90    8d4c2408
                         push              eax                                      // 0x007e8d94    50
                         mov               dword ptr [esi], 0xffffffff              // 0x007e8d95    c706ffffffff
                         call              @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16                     // 0x007e8d9b    e8403afdff
                         test              eax, eax                                 // 0x007e8da0    85c0
                         {disp8} jne       _jmp_addr_0x007e8de9                     // 0x007e8da2    7545
                         {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e8da4    8d4c2404
                         push              ecx                                      // 0x007e8da8    51
                         mov.s             ecx, esi                                 // 0x007e8da9    8bce
                         call              _jmp_addr_0x007e6b40                     // 0x007e8dab    e890ddffff
                         {disp32} lea      edx, dword ptr [esp + 0x00000110]        // 0x007e8db0    8d942410010000
                         {disp8} lea       eax, dword ptr [esp + 0x04]              // 0x007e8db7    8d442404
                         push              edx                                      // 0x007e8dbb    52
                         push              eax                                      // 0x007e8dbc    50
                         mov.s             ecx, esi                                 // 0x007e8dbd    8bce
                         call              _jmp_addr_0x007e7aa0                     // 0x007e8dbf    e8dcecffff
                         test              al, al                                   // 0x007e8dc4    84c0
                         {disp8} je        _jmp_addr_0x007e8de0                     // 0x007e8dc6    7418
_jmp_addr_0x007e8dc8:    {disp32} lea      ecx, dword ptr [esp + 0x00000110]        // 0x007e8dc8    8d8c2410010000
                         {disp8} lea       edx, dword ptr [esp + 0x04]              // 0x007e8dcf    8d542404
                         push              ecx                                      // 0x007e8dd3    51
                         push              edx                                      // 0x007e8dd4    52
                         mov.s             ecx, esi                                 // 0x007e8dd5    8bce
                         call              _jmp_addr_0x007e7aa0                     // 0x007e8dd7    e8c4ecffff
                         test              al, al                                   // 0x007e8ddc    84c0
                         {disp8} jne       _jmp_addr_0x007e8dc8                     // 0x007e8dde    75e8
_jmp_addr_0x007e8de0:    {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e8de0    8d4c2404
                         call              ?Close@LHOSFile@@QAEIXZ                  // 0x007e8de4    e8773afdff
_jmp_addr_0x007e8de9:    {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x007e8de9    8d4c2404
                         {disp32} mov      dword ptr [esp + 0x00001118], 0xffffffff // 0x007e8ded    c7842418110000ffffffff
                         call              _jmp_addr_0x007bcad0                     // 0x007e8df8    e8d33cfdff
                         {disp32} mov      ecx, dword ptr [esp + 0x00001110]        // 0x007e8dfd    8b8c2410110000
                         xor.s             eax, eax                                 // 0x007e8e04    33c0
                         pop               esi                                      // 0x007e8e06    5e
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8e07    64890d00000000
                         add               esp, 0x00001118                          // 0x007e8e0e    81c418110000
                         ret               0x0008                                   // 0x007e8e14    c20800
                         nop                                                        // 0x007e8e17    90
                         nop                                                        // 0x007e8e18    90
                         nop                                                        // 0x007e8e19    90
                         nop                                                        // 0x007e8e1a    90
                         nop                                                        // 0x007e8e1b    90
                         nop                                                        // 0x007e8e1c    90
                         nop                                                        // 0x007e8e1d    90
                         nop                                                        // 0x007e8e1e    90
                         nop                                                        // 0x007e8e1f    90
_jmp_addr_0x007e8e20:    {disp32} mov      eax, fs:[0x0]                            // 0x007e8e20    64a100000000
                         push              -0x1                                     // 0x007e8e26    6aff
                         push              0x008a7bae                               // 0x007e8e28    68ae7b8a00
                         push              eax                                      // 0x007e8e2d    50
                         {disp8} mov       eax, dword ptr [esp + 0x10]              // 0x007e8e2e    8b442410
                         {disp32} mov      fs:[0x0], esp                            // 0x007e8e32    64892500000000
                         push              ebx                                      // 0x007e8e39    53
                         push              esi                                      // 0x007e8e3a    56
                         test              eax, eax                                 // 0x007e8e3b    85c0
                         push              edi                                      // 0x007e8e3d    57
                         {disp32} jle      _jmp_addr_0x007e953f                     // 0x007e8e3e    0f8efb060000
                         dec               eax                                      // 0x007e8e44    48
                         cmp               eax, 0x1a                                // 0x007e8e45    83f81a
                         {disp32} ja       _jmp_addr_0x007e930e                     // 0x007e8e48    0f87c0040000
                         jmp               dword ptr [eax*4 + 0x7e9564]             // 0x007e8e4e    ff248564957e00
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e8e55    8b742420
                         cmp               dword ptr [esi + 0x0000c00c], 0x01       // 0x007e8e59    83be0cc0000001
                         {disp8} jne       _jmp_addr_0x007e8e6e                     // 0x007e8e60    750c
                         push              0x1                                      // 0x007e8e62    6a01
                         mov               ecx, 0x00e85050                          // 0x007e8e64    b95050e800
                         call              @SetFullscreenMode__8LHScreenFi@12       // 0x007e8e69    e86242ffff
_jmp_addr_0x007e8e6e:    {disp32} mov      al, byte ptr [esi + 0x0000c008]          // 0x007e8e6e    8a8608c00000
                         {disp32} mov      cx, word ptr [esi + 0x0000c004]          // 0x007e8e74    668b8e04c00000
                         {disp32} mov      dx, word ptr [esi + 0x0000c000]          // 0x007e8e7b    668b9600c00000
                         push              eax                                      // 0x007e8e82    50
                         push              ecx                                      // 0x007e8e83    51
                         push              edx                                      // 0x007e8e84    52
                         mov               ecx, 0x00e85050                          // 0x007e8e85    b95050e800
                         call              _jmp_addr_0x007ddc40                     // 0x007e8e8a    e8b14dffff
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8e8f    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8e93    64890d00000000
                         pop               edi                                      // 0x007e8e9a    5f
                         pop               esi                                      // 0x007e8e9b    5e
                         pop               ebx                                      // 0x007e8e9c    5b
                         add               esp, 0x0c                                // 0x007e8e9d    83c40c
                         ret               0x0008                                   // 0x007e8ea0    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e8ea3    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x0000c000]        // 0x007e8ea7    8b8800c00000
                         push              ecx                                      // 0x007e8ead    51
                         call              _jmp_addr_0x0087fd00                     // 0x007e8eae    e84d6e0900
                         add               esp, 0x04                                // 0x007e8eb3    83c404
                         xor.s             eax, eax                                 // 0x007e8eb6    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8eb8    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8ebc    64890d00000000
                         pop               edi                                      // 0x007e8ec3    5f
                         pop               esi                                      // 0x007e8ec4    5e
                         pop               ebx                                      // 0x007e8ec5    5b
                         add               esp, 0x0c                                // 0x007e8ec6    83c40c
                         ret               0x0008                                   // 0x007e8ec9    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e8ecc    8b542420
                         mov               ecx, 0x00e85050                          // 0x007e8ed0    b95050e800
                         {disp32} mov      eax, dword ptr [edx + 0x0000c000]        // 0x007e8ed5    8b8200c00000
                         push              eax                                      // 0x007e8edb    50
                         call              _jmp_addr_0x007ded40                     // 0x007e8edc    e85f5effff
                         push              0x1                                      // 0x007e8ee1    6a01
                         call              _jmp_addr_0x0087fc90                     // 0x007e8ee3    e8a86d0900
                         add               esp, 0x04                                // 0x007e8ee8    83c404
                         xor.s             eax, eax                                 // 0x007e8eeb    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8eed    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8ef1    64890d00000000
                         pop               edi                                      // 0x007e8ef8    5f
                         pop               esi                                      // 0x007e8ef9    5e
                         pop               ebx                                      // 0x007e8efa    5b
                         add               esp, 0x0c                                // 0x007e8efb    83c40c
                         ret               0x0008                                   // 0x007e8efe    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e8f01    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x0000c000]        // 0x007e8f05    8b9100c00000
                         push              edx                                      // 0x007e8f0b    52
                         call              _jmp_addr_0x0087fca0                     // 0x007e8f0c    e88f6d0900
                         add               esp, 0x04                                // 0x007e8f11    83c404
                         xor.s             eax, eax                                 // 0x007e8f14    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8f16    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8f1a    64890d00000000
                         pop               edi                                      // 0x007e8f21    5f
                         pop               esi                                      // 0x007e8f22    5e
                         pop               ebx                                      // 0x007e8f23    5b
                         add               esp, 0x0c                                // 0x007e8f24    83c40c
                         ret               0x0008                                   // 0x007e8f27    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e8f2a    8b442420
                         push              eax                                      // 0x007e8f2e    50
                         call              _jmp_addr_0x007e71e0                     // 0x007e8f2f    e8ace2ffff
                         push              eax                                      // 0x007e8f34    50
                         call              _jmp_addr_0x0087fd10                     // 0x007e8f35    e8d66d0900
                         add               esp, 0x08                                // 0x007e8f3a    83c408
                         xor.s             eax, eax                                 // 0x007e8f3d    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8f3f    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8f43    64890d00000000
                         pop               edi                                      // 0x007e8f4a    5f
                         pop               esi                                      // 0x007e8f4b    5e
                         pop               ebx                                      // 0x007e8f4c    5b
                         add               esp, 0x0c                                // 0x007e8f4d    83c40c
                         ret               0x0008                                   // 0x007e8f50    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e8f53    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x0000c000]        // 0x007e8f57    8b9100c00000
                         push              edx                                      // 0x007e8f5d    52
                         call              _jmp_addr_0x0087fd20                     // 0x007e8f5e    e8bd6d0900
                         add               esp, 0x04                                // 0x007e8f63    83c404
                         xor.s             eax, eax                                 // 0x007e8f66    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8f68    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8f6c    64890d00000000
                         pop               edi                                      // 0x007e8f73    5f
                         pop               esi                                      // 0x007e8f74    5e
                         pop               ebx                                      // 0x007e8f75    5b
                         add               esp, 0x0c                                // 0x007e8f76    83c40c
                         ret               0x0008                                   // 0x007e8f79    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e8f7c    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x0000c000]        // 0x007e8f80    8b8800c00000
                         push              ecx                                      // 0x007e8f86    51
                         call              _jmp_addr_0x0087fcb0                     // 0x007e8f87    e8246d0900
                         add               esp, 0x04                                // 0x007e8f8c    83c404
                         xor.s             eax, eax                                 // 0x007e8f8f    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8f91    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8f95    64890d00000000
                         pop               edi                                      // 0x007e8f9c    5f
                         pop               esi                                      // 0x007e8f9d    5e
                         pop               ebx                                      // 0x007e8f9e    5b
                         add               esp, 0x0c                                // 0x007e8f9f    83c40c
                         ret               0x0008                                   // 0x007e8fa2    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e8fa5    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x0000c000]        // 0x007e8fa9    8b8200c00000
                         shl               eax, 0x14                                // 0x007e8faf    c1e014
                         push              eax                                      // 0x007e8fb2    50
                         call              _jmp_addr_0x0087fcc0                     // 0x007e8fb3    e8086d0900
                         add               esp, 0x04                                // 0x007e8fb8    83c404
                         xor.s             eax, eax                                 // 0x007e8fbb    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8fbd    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8fc1    64890d00000000
                         pop               edi                                      // 0x007e8fc8    5f
                         pop               esi                                      // 0x007e8fc9    5e
                         pop               ebx                                      // 0x007e8fca    5b
                         add               esp, 0x0c                                // 0x007e8fcb    83c40c
                         ret               0x0008                                   // 0x007e8fce    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e8fd1    8b4c2420
                         {disp32} mov      edx, dword ptr [ecx + 0x0000c000]        // 0x007e8fd5    8b9100c00000
                         shl               edx, 0x14                                // 0x007e8fdb    c1e214
                         push              edx                                      // 0x007e8fde    52
                         call              _jmp_addr_0x0087fcd0                     // 0x007e8fdf    e8ec6c0900
                         add               esp, 0x04                                // 0x007e8fe4    83c404
                         xor.s             eax, eax                                 // 0x007e8fe7    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e8fe9    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e8fed    64890d00000000
                         pop               edi                                      // 0x007e8ff4    5f
                         pop               esi                                      // 0x007e8ff5    5e
                         pop               ebx                                      // 0x007e8ff6    5b
                         add               esp, 0x0c                                // 0x007e8ff7    83c40c
                         ret               0x0008                                   // 0x007e8ffa    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e8ffd    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x0000c000]        // 0x007e9001    8b8800c00000
                         push              ecx                                      // 0x007e9007    51
                         call              _jmp_addr_0x0087fd30                     // 0x007e9008    e8236d0900
                         add               esp, 0x04                                // 0x007e900d    83c404
                         xor.s             eax, eax                                 // 0x007e9010    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9012    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9016    64890d00000000
                         pop               edi                                      // 0x007e901d    5f
                         pop               esi                                      // 0x007e901e    5e
                         pop               ebx                                      // 0x007e901f    5b
                         add               esp, 0x0c                                // 0x007e9020    83c40c
                         ret               0x0008                                   // 0x007e9023    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e9026    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x0000c000]        // 0x007e902a    8b8200c00000
                         push              eax                                      // 0x007e9030    50
                         call              _jmp_addr_0x0087fce0                     // 0x007e9031    e8aa6c0900
                         add               esp, 0x04                                // 0x007e9036    83c404
                         xor.s             eax, eax                                 // 0x007e9039    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e903b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e903f    64890d00000000
                         pop               edi                                      // 0x007e9046    5f
                         pop               esi                                      // 0x007e9047    5e
                         pop               ebx                                      // 0x007e9048    5b
                         add               esp, 0x0c                                // 0x007e9049    83c40c
                         ret               0x0008                                   // 0x007e904c    c20800
                         {disp8} mov       ecx, dword ptr [esp + 0x20]              // 0x007e904f    8b4c2420
                         push              ecx                                      // 0x007e9053    51
                         {disp32} fild     dword ptr [ecx + 0x0000c000]             // 0x007e9054    db8100c00000
                         fld               st(0)                                    // 0x007e905a    d9c0
                         fmul              st, st(1)                                // 0x007e905c    d8c9
                         fstp              dword ptr [esp]                          // 0x007e905e    d91c24
                         fstp              st(0)                                    // 0x007e9061    ddd8
                         call              _jmp_addr_0x0087fd40                     // 0x007e9063    e8d86c0900
                         add               esp, 0x04                                // 0x007e9068    83c404
                         xor.s             eax, eax                                 // 0x007e906b    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e906d    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9071    64890d00000000
                         pop               edi                                      // 0x007e9078    5f
                         pop               esi                                      // 0x007e9079    5e
                         pop               ebx                                      // 0x007e907a    5b
                         add               esp, 0x0c                                // 0x007e907b    83c40c
                         ret               0x0008                                   // 0x007e907e    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e9081    8b542420
                         {disp32} mov      eax, dword ptr [edx + 0x0000c000]        // 0x007e9085    8b8200c00000
                         push              eax                                      // 0x007e908b    50
                         call              _jmp_addr_0x0087fcf0                     // 0x007e908c    e85f6c0900
                         add               esp, 0x04                                // 0x007e9091    83c404
                         xor.s             eax, eax                                 // 0x007e9094    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9096    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e909a    64890d00000000
                         pop               edi                                      // 0x007e90a1    5f
                         pop               esi                                      // 0x007e90a2    5e
                         pop               ebx                                      // 0x007e90a3    5b
                         add               esp, 0x0c                                // 0x007e90a4    83c40c
                         ret               0x0008                                   // 0x007e90a7    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e90aa    8b742420
                         {disp32} mov      eax, dword ptr [esi + 0x0000c004]        // 0x007e90ae    8b8604c00000
                         cmp               eax, 0x64                                // 0x007e90b4    83f864
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e90d2 // 0x007e90b7    7219
                         mov               eax, 0x00000003                          // 0x007e90b9    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e90be    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e90c2    64890d00000000
                         pop               edi                                      // 0x007e90c9    5f
                         pop               esi                                      // 0x007e90ca    5e
                         pop               ebx                                      // 0x007e90cb    5b
                         add               esp, 0x0c                                // 0x007e90cc    83c40c
                         ret               0x0008                                   // 0x007e90cf    c20800
_jmp_addr_0x007e90d2:    mov.s             ecx, eax                                 // 0x007e90d2    8bc8
                         push              0x0                                      // 0x007e90d4    6a00
                         shl               ecx, 5                                   // 0x007e90d6    c1e105
                         add.s             ecx, eax                                 // 0x007e90d9    03c8
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e85968]  // 0x007e90db    8d14cd6859e800
                         push              edx                                      // 0x007e90e2    52
                         push              esi                                      // 0x007e90e3    56
                         call              _jmp_addr_0x007e71e0                     // 0x007e90e4    e8f7e0ffff
                         add               esp, 0x04                                // 0x007e90e9    83c404
                         push              eax                                      // 0x007e90ec    50
                         call              _jmp_addr_0x007bd0c0                     // 0x007e90ed    e8ce3ffdff
                         mov.s             ebx, eax                                 // 0x007e90f2    8bd8
                         add               esp, 0x0c                                // 0x007e90f4    83c40c
                         test              ebx, ebx                                 // 0x007e90f7    85db
                         {disp32} jne      _jmp_addr_0x007e9429                     // 0x007e90f9    0f852a030000
                         {disp32} mov      eax, dword ptr [esi + 0x0000c004]        // 0x007e90ff    8b8604c00000
                         push              esi                                      // 0x007e9105    56
                         mov.s             ecx, eax                                 // 0x007e9106    8bc8
                         shl               ecx, 5                                   // 0x007e9108    c1e105
                         add.s             ecx, eax                                 // 0x007e910b    03c8
                         {disp32} mov      byte ptr [ecx * 0x8 + 0x00e85964], 0x01  // 0x007e910d    c604cd6459e80001
                         call              _jmp_addr_0x007e71e0                     // 0x007e9115    e8c6e0ffff
                         {disp32} mov      esi, dword ptr [esi + 0x0000c004]        // 0x007e911a    8bb604c00000
                         add               esp, 0x04                                // 0x007e9120    83c404
                         mov.s             edx, esi                                 // 0x007e9123    8bd6
                         shl               edx, 5                                   // 0x007e9125    c1e205
                         add.s             edx, esi                                 // 0x007e9128    03d6
                         {disp32} lea      edx, dword ptr [edx * 0x8 + 0x00e8596c]  // 0x007e912a    8d14d56c59e800
                         {disp32} jmp      _jmp_addr_0x007e93eb                     // 0x007e9131    e9b5020000
                         {disp8} mov       edi, dword ptr [esp + 0x20]              // 0x007e9136    8b7c2420
                         cmp               dword ptr [edi + 0x0000c004], 0x64       // 0x007e913a    83bf04c0000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e915c // 0x007e9141    7219
                         mov               eax, 0x00000003                          // 0x007e9143    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9148    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e914c    64890d00000000
                         pop               edi                                      // 0x007e9153    5f
                         pop               esi                                      // 0x007e9154    5e
                         pop               ebx                                      // 0x007e9155    5b
                         add               esp, 0x0c                                // 0x007e9156    83c40c
                         ret               0x0008                                   // 0x007e9159    c20800
_jmp_addr_0x007e915c:    push              0x00000138                               // 0x007e915c    6838010000
                         push              0x00c34da4                               // 0x007e9161    68a44dc300
                         push              0x8                                      // 0x007e9166    6a08
                         call              ___nw__FUl                               // 0x007e9168    e82326ffff
                         mov.s             esi, eax                                 // 0x007e916d    8bf0
                         {disp32} mov      eax, dword ptr [edi + 0x0000c004]        // 0x007e916f    8b8704c00000
                         mov.s             ecx, eax                                 // 0x007e9175    8bc8
                         add               esp, 0x0c                                // 0x007e9177    83c40c
                         shl               ecx, 5                                   // 0x007e917a    c1e105
                         add.s             ecx, eax                                 // 0x007e917d    03c8
                         mov               ebx, 0x00000003                          // 0x007e917f    bb03000000
                         test              esi, esi                                 // 0x007e9184    85f6
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], esi  // 0x007e9186    8934cd6859e800
                         {disp32} je       _jmp_addr_0x007e9429                     // 0x007e918d    0f8496020000
                         push              0x0                                      // 0x007e9193    6a00
                         push              esi                                      // 0x007e9195    56
                         push              edi                                      // 0x007e9196    57
                         call              _jmp_addr_0x007e71e0                     // 0x007e9197    e844e0ffff
                         add               esp, 0x04                                // 0x007e919c    83c404
                         push              eax                                      // 0x007e919f    50
                         call              _jmp_addr_0x007efb60                     // 0x007e91a0    e8bb690000
                         mov.s             ebx, eax                                 // 0x007e91a5    8bd8
                         add               esp, 0x0c                                // 0x007e91a7    83c40c
                         test              ebx, ebx                                 // 0x007e91aa    85db
                         {disp8} jne       _jmp_addr_0x007e9215                     // 0x007e91ac    7567
                         {disp32} mov      eax, dword ptr [edi + 0x0000c004]        // 0x007e91ae    8b8704c00000
                         push              edi                                      // 0x007e91b4    57
                         mov.s             edx, eax                                 // 0x007e91b5    8bd0
                         shl               edx, 5                                   // 0x007e91b7    c1e205
                         add.s             edx, eax                                 // 0x007e91ba    03d0
                         {disp32} mov      byte ptr [edx * 0x8 + 0x00e85964], 0x02  // 0x007e91bc    c604d56459e80002
                         call              _jmp_addr_0x007e71e0                     // 0x007e91c4    e817e0ffff
                         {disp32} mov      edi, dword ptr [edi + 0x0000c004]        // 0x007e91c9    8bbf04c00000
                         add               esp, 0x04                                // 0x007e91cf    83c404
                         mov.s             ecx, edi                                 // 0x007e91d2    8bcf
                         shl               ecx, 5                                   // 0x007e91d4    c1e105
                         add.s             ecx, edi                                 // 0x007e91d7    03cf
                         mov.s             edi, eax                                 // 0x007e91d9    8bf8
                         xor.s             eax, eax                                 // 0x007e91db    33c0
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e8596c]  // 0x007e91dd    8d14cd6c59e800
                         or                ecx, 0xffffffff                          // 0x007e91e4    83c9ff
                         repne scasb                                                // 0x007e91e7    f2ae
                         not               ecx                                      // 0x007e91e9    f7d1
                         sub.s             edi, ecx                                 // 0x007e91eb    2bf9
                         mov.s             eax, ecx                                 // 0x007e91ed    8bc1
                         mov.s             esi, edi                                 // 0x007e91ef    8bf7
                         mov.s             edi, edx                                 // 0x007e91f1    8bfa
                         shr               ecx, 2                                   // 0x007e91f3    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x007e91f6    f3a5
                         mov.s             ecx, eax                                 // 0x007e91f8    8bc8
                         mov.s             eax, ebx                                 // 0x007e91fa    8bc3
                         and               ecx, 0x03                                // 0x007e91fc    83e103
                         rep movsb                                                  // 0x007e91ff    f3a4
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9201    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9205    64890d00000000
                         pop               edi                                      // 0x007e920c    5f
                         pop               esi                                      // 0x007e920d    5e
                         pop               ebx                                      // 0x007e920e    5b
                         add               esp, 0x0c                                // 0x007e920f    83c40c
                         ret               0x0008                                   // 0x007e9212    c20800
_jmp_addr_0x007e9215:    push              esi                                      // 0x007e9215    56
                         call              ??3@YAXPAX@Z                             // 0x007e9216    e87d5cfcff
                         add               esp, 0x04                                // 0x007e921b    83c404
                         mov.s             eax, ebx                                 // 0x007e921e    8bc3
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9220    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9224    64890d00000000
                         pop               edi                                      // 0x007e922b    5f
                         pop               esi                                      // 0x007e922c    5e
                         pop               ebx                                      // 0x007e922d    5b
                         add               esp, 0x0c                                // 0x007e922e    83c40c
                         ret               0x0008                                   // 0x007e9231    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e9234    8b742420
                         cmp               dword ptr [esi + 0x0000c004], 0x64       // 0x007e9238    83be04c0000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e925a // 0x007e923f    7219
                         mov               eax, 0x00000003                          // 0x007e9241    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9246    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e924a    64890d00000000
                         pop               edi                                      // 0x007e9251    5f
                         pop               esi                                      // 0x007e9252    5e
                         pop               ebx                                      // 0x007e9253    5b
                         add               esp, 0x0c                                // 0x007e9254    83c40c
                         ret               0x0008                                   // 0x007e9257    c20800
_jmp_addr_0x007e925a:    push              0x0000014d                               // 0x007e925a    684d010000
                         push              0x00c34da4                               // 0x007e925f    68a44dc300
                         push              0xc                                      // 0x007e9264    6a0c
                         call              ___nw__FUl                               // 0x007e9266    e82525ffff
                         add               esp, 0x0c                                // 0x007e926b    83c40c
                         {disp8} mov       dword ptr [esp + 0x20], eax              // 0x007e926e    89442420
                         test              eax, eax                                 // 0x007e9272    85c0
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000       // 0x007e9274    c744241400000000
                         {disp8} je        _jmp_addr_0x007e9289                     // 0x007e927c    740b
                         mov.s             ecx, eax                                 // 0x007e927e    8bc8
                         call              _jmp_addr_0x007e89f0                     // 0x007e9280    e86bf7ffff
                         mov.s             edi, eax                                 // 0x007e9285    8bf8
                         {disp8} jmp       _jmp_addr_0x007e928b                     // 0x007e9287    eb02
_jmp_addr_0x007e9289:    xor.s             edi, edi                                 // 0x007e9289    33ff
_jmp_addr_0x007e928b:    {disp32} mov      eax, dword ptr [esi + 0x0000c004]        // 0x007e928b    8b8604c00000
                         {disp8} mov       dword ptr [esp + 0x14], 0xffffffff       // 0x007e9291    c7442414ffffffff
                         mov.s             ecx, eax                                 // 0x007e9299    8bc8
                         mov               ebx, 0x00000003                          // 0x007e929b    bb03000000
                         shl               ecx, 5                                   // 0x007e92a0    c1e105
                         add.s             ecx, eax                                 // 0x007e92a3    03c8
                         test              edi, edi                                 // 0x007e92a5    85ff
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], edi  // 0x007e92a7    893ccd6859e800
                         {disp32} je       _jmp_addr_0x007e9429                     // 0x007e92ae    0f8475010000
                         {disp32} mov      eax, dword ptr [esi + 0x0000c008]        // 0x007e92b4    8b8608c00000
                         cmp               eax, 0x10                                // 0x007e92ba    83f810
                         {disp8} je        _jmp_addr_0x007e92c8                     // 0x007e92bd    7409
                         cmp               eax, 0x18                                // 0x007e92bf    83f818
                         {disp32} jne      _jmp_addr_0x007e9420                     // 0x007e92c2    0f8558010000
_jmp_addr_0x007e92c8:    sub               eax, 0x10                                // 0x007e92c8    83e810
                         push              0x0                                      // 0x007e92cb    6a00
                         neg               eax                                      // 0x007e92cd    f7d8
                         sbb.s             eax, eax                                 // 0x007e92cf    1bc0
                         push              0x0                                      // 0x007e92d1    6a00
                         and               al, -0x02                                // 0x007e92d3    24fe
                         push              0x0                                      // 0x007e92d5    6a00
                         add               eax, 0x03                                // 0x007e92d7    83c003
                         push              eax                                      // 0x007e92da    50
                         push              0x0                                      // 0x007e92db    6a00
                         push              edi                                      // 0x007e92dd    57
                         push              esi                                      // 0x007e92de    56
                         call              _jmp_addr_0x007e71e0                     // 0x007e92df    e8fcdeffff
                         add               esp, 0x04                                // 0x007e92e4    83c404
                         mov               ecx, 0x00e85874                          // 0x007e92e7    b97458e800
                         push              eax                                      // 0x007e92ec    50
                         call              _jmp_addr_0x007efcf0                     // 0x007e92ed    e8fe690000
                         mov.s             ebx, eax                                 // 0x007e92f2    8bd8
                         test              ebx, ebx                                 // 0x007e92f4    85db
                         {disp32} jne      _jmp_addr_0x007e9420                     // 0x007e92f6    0f8524010000
                         {disp32} jmp      _jmp_addr_0x007e93b9                     // 0x007e92fc    e9b8000000
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e9301    8b742420
                         cmp               dword ptr [esi + 0x0000c004], 0x64       // 0x007e9305    83be04c0000064
                         .byte             0x72, 0x19// {disp8} jb _jmp_addr_0x007e9327 // 0x007e930c    7219
_jmp_addr_0x007e930e:    mov               eax, 0x00000003                          // 0x007e930e    b803000000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9313    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9317    64890d00000000
                         pop               edi                                      // 0x007e931e    5f
                         pop               esi                                      // 0x007e931f    5e
                         pop               ebx                                      // 0x007e9320    5b
                         add               esp, 0x0c                                // 0x007e9321    83c40c
                         ret               0x0008                                   // 0x007e9324    c20800
_jmp_addr_0x007e9327:    push              0x00000163                               // 0x007e9327    6863010000
                         push              0x00c34da4                               // 0x007e932c    68a44dc300
                         push              0xc                                      // 0x007e9331    6a0c
                         call              ___nw__FUl                               // 0x007e9333    e85824ffff
                         add               esp, 0x0c                                // 0x007e9338    83c40c
                         {disp8} mov       dword ptr [esp + 0x20], eax              // 0x007e933b    89442420
                         test              eax, eax                                 // 0x007e933f    85c0
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000001       // 0x007e9341    c744241401000000
                         {disp8} je        _jmp_addr_0x007e9356                     // 0x007e9349    740b
                         mov.s             ecx, eax                                 // 0x007e934b    8bc8
                         call              _jmp_addr_0x007e89f0                     // 0x007e934d    e89ef6ffff
                         mov.s             edi, eax                                 // 0x007e9352    8bf8
                         {disp8} jmp       _jmp_addr_0x007e9358                     // 0x007e9354    eb02
_jmp_addr_0x007e9356:    xor.s             edi, edi                                 // 0x007e9356    33ff
_jmp_addr_0x007e9358:    {disp32} mov      eax, dword ptr [esi + 0x0000c004]        // 0x007e9358    8b8604c00000
                         {disp8} mov       dword ptr [esp + 0x14], 0xffffffff       // 0x007e935e    c7442414ffffffff
                         mov.s             ecx, eax                                 // 0x007e9366    8bc8
                         mov               ebx, 0x00000003                          // 0x007e9368    bb03000000
                         shl               ecx, 5                                   // 0x007e936d    c1e105
                         add.s             ecx, eax                                 // 0x007e9370    03c8
                         test              edi, edi                                 // 0x007e9372    85ff
                         {disp32} mov      dword ptr [ecx * 0x8 + 0x00e85968], edi  // 0x007e9374    893ccd6859e800
                         {disp32} je       _jmp_addr_0x007e9429                     // 0x007e937b    0f84a8000000
                         push              0x0                                      // 0x007e9381    6a00
                         push              0x0                                      // 0x007e9383    6a00
                         push              0x0                                      // 0x007e9385    6a00
                         mov               ecx, 0x00e85050                          // 0x007e9387    b95050e800
                         call              _jmp_addr_0x007e8a20                     // 0x007e938c    e88ff6ffff
                         sub               al, 0x10                                 // 0x007e9391    2c10
                         neg               al                                       // 0x007e9393    f6d8
                         sbb.s             eax, eax                                 // 0x007e9395    1bc0
                         and               al, -0x02                                // 0x007e9397    24fe
                         add.s             eax, ebx                                 // 0x007e9399    03c3
                         push              eax                                      // 0x007e939b    50
                         push              0x0                                      // 0x007e939c    6a00
                         push              edi                                      // 0x007e939e    57
                         push              esi                                      // 0x007e939f    56
                         call              _jmp_addr_0x007e71e0                     // 0x007e93a0    e83bdeffff
                         add               esp, 0x04                                // 0x007e93a5    83c404
                         mov               ecx, 0x00e85874                          // 0x007e93a8    b97458e800
                         push              eax                                      // 0x007e93ad    50
                         call              _jmp_addr_0x007efcf0                     // 0x007e93ae    e83d690000
                         mov.s             ebx, eax                                 // 0x007e93b3    8bd8
                         test              ebx, ebx                                 // 0x007e93b5    85db
                         {disp8} jne       _jmp_addr_0x007e9420                     // 0x007e93b7    7567
_jmp_addr_0x007e93b9:    {disp32} mov      eax, dword ptr [esi + 0x0000c004]        // 0x007e93b9    8b8604c00000
                         push              esi                                      // 0x007e93bf    56
                         mov.s             edx, eax                                 // 0x007e93c0    8bd0
                         shl               edx, 5                                   // 0x007e93c2    c1e205
                         add.s             edx, eax                                 // 0x007e93c5    03d0
                         {disp32} mov      byte ptr [edx * 0x8 + 0x00e85964], 0x03  // 0x007e93c7    c604d56459e80003
                         call              _jmp_addr_0x007e71e0                     // 0x007e93cf    e80cdeffff
                         {disp32} mov      esi, dword ptr [esi + 0x0000c004]        // 0x007e93d4    8bb604c00000
                         add               esp, 0x04                                // 0x007e93da    83c404
                         mov.s             ecx, esi                                 // 0x007e93dd    8bce
                         shl               ecx, 5                                   // 0x007e93df    c1e105
                         add.s             ecx, esi                                 // 0x007e93e2    03ce
                         {disp32} lea      edx, dword ptr [ecx * 0x8 + 0x00e8596c]  // 0x007e93e4    8d14cd6c59e800
_jmp_addr_0x007e93eb:    mov.s             edi, eax                                 // 0x007e93eb    8bf8
                         or                ecx, 0xffffffff                          // 0x007e93ed    83c9ff
                         xor.s             eax, eax                                 // 0x007e93f0    33c0
                         repne scasb                                                // 0x007e93f2    f2ae
                         not               ecx                                      // 0x007e93f4    f7d1
                         sub.s             edi, ecx                                 // 0x007e93f6    2bf9
                         mov.s             eax, ecx                                 // 0x007e93f8    8bc1
                         mov.s             esi, edi                                 // 0x007e93fa    8bf7
                         mov.s             edi, edx                                 // 0x007e93fc    8bfa
                         shr               ecx, 2                                   // 0x007e93fe    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x007e9401    f3a5
                         mov.s             ecx, eax                                 // 0x007e9403    8bc8
                         mov.s             eax, ebx                                 // 0x007e9405    8bc3
                         and               ecx, 0x03                                // 0x007e9407    83e103
                         rep movsb                                                  // 0x007e940a    f3a4
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e940c    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9410    64890d00000000
                         pop               edi                                      // 0x007e9417    5f
                         pop               esi                                      // 0x007e9418    5e
                         pop               ebx                                      // 0x007e9419    5b
                         add               esp, 0x0c                                // 0x007e941a    83c40c
                         ret               0x0008                                   // 0x007e941d    c20800
_jmp_addr_0x007e9420:    push              edi                                      // 0x007e9420    57
                         call              ??3@YAXPAX@Z                             // 0x007e9421    e8725afcff
                         add               esp, 0x04                                // 0x007e9426    83c404
_jmp_addr_0x007e9429:    mov.s             eax, ebx                                 // 0x007e9429    8bc3
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e942b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e942f    64890d00000000
                         pop               edi                                      // 0x007e9436    5f
                         pop               esi                                      // 0x007e9437    5e
                         pop               ebx                                      // 0x007e9438    5b
                         add               esp, 0x0c                                // 0x007e9439    83c40c
                         ret               0x0008                                   // 0x007e943c    c20800
                         {disp8} mov       esi, dword ptr [esp + 0x20]              // 0x007e943f    8b742420
                         {disp32} mov      cl, byte ptr [esi + 0x0000c008]          // 0x007e9443    8a8e08c00000
                         {disp32} mov      dl, byte ptr [esi + 0x0000c004]          // 0x007e9449    8a9604c00000
                         {disp32} mov      al, byte ptr [esi + 0x0000c000]          // 0x007e944f    8a8600c00000
                         push              ecx                                      // 0x007e9455    51
                         push              edx                                      // 0x007e9456    52
                         push              eax                                      // 0x007e9457    50
                         mov               ecx, 0x00e91edc                          // 0x007e9458    b9dc1ee900
                         call              _jmp_addr_0x00521a90                     // 0x007e945d    e82e86d3ff
                         {disp32} mov      cl, byte ptr [esi + 0x0000c008]          // 0x007e9462    8a8e08c00000
                         {disp32} mov      dl, byte ptr [esi + 0x0000c004]          // 0x007e9468    8a9604c00000
                         {disp32} mov      al, byte ptr [esi + 0x0000c000]          // 0x007e946e    8a8600c00000
                         push              ecx                                      // 0x007e9474    51
                         push              edx                                      // 0x007e9475    52
                         push              eax                                      // 0x007e9476    50
                         mov               ecx, 0x00e91ee0                          // 0x007e9477    b9e01ee900
                         call              _jmp_addr_0x007df850                     // 0x007e947c    e8cf63ffff
                         xor.s             eax, eax                                 // 0x007e9481    33c0
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e9483    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9487    64890d00000000
                         pop               edi                                      // 0x007e948e    5f
                         pop               esi                                      // 0x007e948f    5e
                         pop               ebx                                      // 0x007e9490    5b
                         add               esp, 0x0c                                // 0x007e9491    83c40c
                         ret               0x0008                                   // 0x007e9494    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e9497    8b442420
                         {disp32} mov      ecx, dword ptr [eax + 0x0000c004]        // 0x007e949b    8b8804c00000
                         sub               ecx, 0x10                                // 0x007e94a1    83e910
                         neg               ecx                                      // 0x007e94a4    f7d9
                         sbb.s             ecx, ecx                                 // 0x007e94a6    1bc9
                         and               ecx, 0xfffffffe                          // 0x007e94a8    83e1fe
                         add               ecx, 0x3                                 // 0x007e94ab    83c103
                         push              ecx                                      // 0x007e94ae    51
                         push              eax                                      // 0x007e94af    50
                         {disp8} jmp       _jmp_addr_0x007e94cd                     // 0x007e94b0    eb1b
                         mov               ecx, 0x00e85050                          // 0x007e94b2    b95050e800
                         call              _jmp_addr_0x007e8a20                     // 0x007e94b7    e864f5ffff
                         sub               al, 0x10                                 // 0x007e94bc    2c10
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e94be    8b542420
                         neg               al                                       // 0x007e94c2    f6d8
                         sbb.s             eax, eax                                 // 0x007e94c4    1bc0
                         and               al, -0x02                                // 0x007e94c6    24fe
                         add               eax, 0x03                                // 0x007e94c8    83c003
                         push              eax                                      // 0x007e94cb    50
                         push              edx                                      // 0x007e94cc    52
_jmp_addr_0x007e94cd:    call              _jmp_addr_0x007e71e0                     // 0x007e94cd    e80eddffff
                         add               esp, 0x04                                // 0x007e94d2    83c404
                         mov               ecx, 0x00e8c084                          // 0x007e94d5    b984c0e800
                         push              eax                                      // 0x007e94da    50
                         call              _jmp_addr_0x007e3c20                     // 0x007e94db    e840a7ffff
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e94e0    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e94e4    64890d00000000
                         pop               edi                                      // 0x007e94eb    5f
                         pop               esi                                      // 0x007e94ec    5e
                         pop               ebx                                      // 0x007e94ed    5b
                         add               esp, 0x0c                                // 0x007e94ee    83c40c
                         ret               0x0008                                   // 0x007e94f1    c20800
                         {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e94f4    8b542420
                         push              edx                                      // 0x007e94f8    52
                         push              eax                                      // 0x007e94f9    50
                         call              _jmp_addr_0x007e9be0                     // 0x007e94fa    e8e1060000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e94ff    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9503    64890d00000000
                         pop               edi                                      // 0x007e950a    5f
                         pop               esi                                      // 0x007e950b    5e
                         pop               ebx                                      // 0x007e950c    5b
                         add               esp, 0x0c                                // 0x007e950d    83c40c
                         ret               0x0008                                   // 0x007e9510    c20800
                         {disp8} mov       eax, dword ptr [esp + 0x20]              // 0x007e9513    8b442420
                         {disp32} lea      edx, dword ptr [eax + 0x00002000]        // 0x007e9517    8d9000200000
                         push              edx                                      // 0x007e951d    52
                         {disp32} lea      edx, dword ptr [eax + 0x00001000]        // 0x007e951e    8d9000100000
                         push              edx                                      // 0x007e9524    52
                         push              eax                                      // 0x007e9525    50
                         call              _jmp_addr_0x007e9ae0                     // 0x007e9526    e8b5050000
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]              // 0x007e952b    8b4c240c
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e952f    64890d00000000
                         pop               edi                                      // 0x007e9536    5f
                         pop               esi                                      // 0x007e9537    5e
                         pop               ebx                                      // 0x007e9538    5b
                         add               esp, 0x0c                                // 0x007e9539    83c40c
                         ret               0x0008                                   // 0x007e953c    c20800
_jmp_addr_0x007e953f:    {disp8} mov       edx, dword ptr [esp + 0x20]              // 0x007e953f    8b542420
                         push              edx                                      // 0x007e9543    52
                         or                edx, 0xffffffff                          // 0x007e9544    83caff
                         sub.s             edx, eax                                 // 0x007e9547    2bd0
                         push              edx                                      // 0x007e9549    52
                         call              dword ptr [ecx + 0x24]                   // 0x007e954a    ff5124
                         {disp8} mov       ecx, dword ptr [esp + 0x14]              // 0x007e954d    8b4c2414
                         add               esp, 0x08                                // 0x007e9551    83c408
                         {disp32} mov      fs:[0x0], ecx                            // 0x007e9554    64890d00000000
                         pop               edi                                      // 0x007e955b    5f
                         pop               esi                                      // 0x007e955c    5e
                         pop               ebx                                      // 0x007e955d    5b
                         add               esp, 0x0c                                // 0x007e955e    83c40c
                         ret               0x0008                                   // 0x007e9561    c20800

// Snippet: jmptbl, [0x007e9564, 0x007e95d0)
.byte 0x55, 0x8e, 0x7e, 0x00      // 0x007e9564
.byte 0xa3, 0x8e, 0x7e, 0x00      // 0x007e9568
.byte 0xcc, 0x8e, 0x7e, 0x00      // 0x007e956c
.byte 0x01, 0x8f, 0x7e, 0x00      // 0x007e9570
.byte 0x2a, 0x8f, 0x7e, 0x00      // 0x007e9574
.byte 0x53, 0x8f, 0x7e, 0x00      // 0x007e9578
.byte 0x7c, 0x8f, 0x7e, 0x00      // 0x007e957c
.byte 0xa5, 0x8f, 0x7e, 0x00      // 0x007e9580
.byte 0xd1, 0x8f, 0x7e, 0x00      // 0x007e9584
.byte 0xfd, 0x8f, 0x7e, 0x00      // 0x007e9588
.byte 0x26, 0x90, 0x7e, 0x00      // 0x007e958c
.byte 0x4f, 0x90, 0x7e, 0x00      // 0x007e9590
.byte 0x81, 0x90, 0x7e, 0x00      // 0x007e9594
.byte 0x0e, 0x93, 0x7e, 0x00      // 0x007e9598
.byte 0x0e, 0x93, 0x7e, 0x00      // 0x007e959c
.byte 0x0e, 0x93, 0x7e, 0x00      // 0x007e95a0
.byte 0x36, 0x91, 0x7e, 0x00      // 0x007e95a4
.byte 0x34, 0x92, 0x7e, 0x00      // 0x007e95a8
.byte 0x01, 0x93, 0x7e, 0x00      // 0x007e95ac
.byte 0xaa, 0x90, 0x7e, 0x00      // 0x007e95b0
.byte 0x97, 0x94, 0x7e, 0x00      // 0x007e95b4
.byte 0xb2, 0x94, 0x7e, 0x00      // 0x007e95b8
.byte 0x3f, 0x94, 0x7e, 0x00      // 0x007e95bc
.byte 0xf4, 0x94, 0x7e, 0x00      // 0x007e95c0
.byte 0xf4, 0x94, 0x7e, 0x00      // 0x007e95c4
.byte 0xf4, 0x94, 0x7e, 0x00      // 0x007e95c8
.byte 0x13, 0x95, 0x7e, 0x00      // 0x007e95cc

