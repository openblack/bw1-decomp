.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007dc8b0
.extern @UpdateCurrentPos__7LHMouseF7LHCoord@16
.extern _jmp_addr_0x007e6070
.extern _jmp_addr_0x007e6290
.extern _jmp_addr_0x007e62d0
.extern _jmp_addr_0x007e6330
.extern _jmp_addr_0x007e6450
.extern _jmp_addr_0x007e64a0
.extern _jmp_addr_0x007e6500
.extern _jmp_addr_0x007e66e0
.extern _jmp_addr_0x007e6700
.extern _jmp_addr_0x007e67c0
.extern _jmp_addr_0x007e67e0
.extern _jmp_addr_0x007e69d0
.extern _jmp_addr_0x007e6a30
.extern _jmp_addr_0x007eadb0
.extern _jmp_addr_0x007eb870

.globl @SetPosition__7LHMouseFP7LHCoord@12
.globl ??0LHMouse@@QAE@XZ 
.globl _jmp_addr_0x007e5320
.globl @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20
.globl _jmp_addr_0x007e5550
.globl @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.globl _jmp_addr_0x007e5b20

start_0x007e4e40_0x007e6070:
// Snippet: asm, [0x007e4e40, 0x007e6055)
@SetPosition__7LHMouseFP7LHCoord@12:    {disp32} mov     al, byte ptr [data_bytes + 0x4c60fa]     // 0x007e4e40    a0fac0e800
                         sub              esp, 0x08                                // 0x007e4e45    83ec08
                         test             al, al                                   // 0x007e4e48    84c0
                         {disp8} je       _jmp_addr_0x007e4e93                     // 0x007e4e4a    7447
                         {disp8} mov      dword ptr [ecx + 0x14], 0x00000001       // 0x007e4e4c    c7411401000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf078]   // 0x007e4e53    a17850e800
                         push             0x0                                      // 0x007e4e58    6a00
                         push             0x0                                      // 0x007e4e5a    6a00
                         push             0x00008007                               // 0x007e4e5c    6807800000
                         push             eax                                      // 0x007e4e61    50
                         call             dword ptr [__imp__PostMessageA@4]        // 0x007e4e62    ff15fc978a00
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x007e4e68    8b44240c
                         {disp8} mov      ecx, dword ptr [eax + 0x04]              // 0x007e4e6c    8b4804
                         mov              edx, dword ptr [eax]                     // 0x007e4e6f    8b10
                         push             ecx                                      // 0x007e4e71    51
                         push             edx                                      // 0x007e4e72    52
                         mov              ecx, 0x00e85204                          // 0x007e4e73    b90452e800
                         call             @UpdateCurrentPos__7LHMouseF7LHCoord@16  // 0x007e4e78    e823fbffff
                         push             0x4                                      // 0x007e4e7d    6a04
                         push             0x1                                      // 0x007e4e7f    6a01
                         mov              ecx, 0x00e85204                          // 0x007e4e81    b90452e800
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e4e86    e835090000
                         xor.s            eax, eax                                 // 0x007e4e8b    33c0
                         add              esp, 0x08                                // 0x007e4e8d    83c408
                         ret              0x0004                                   // 0x007e4e90    c20400
_jmp_addr_0x007e4e93:    {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x007e4e93    8b44240c
                         mov              ecx, dword ptr [eax]                     // 0x007e4e97    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]              // 0x007e4e99    8b5004
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x007e4e9c    894c2400
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf078]   // 0x007e4ea0    8b0d7850e800
                         {disp8} lea      eax, dword ptr [esp + 0x00]              // 0x007e4ea6    8d442400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x007e4eaa    89542404
                         push             eax                                      // 0x007e4eae    50
                         push             ecx                                      // 0x007e4eaf    51
                         call             dword ptr [__imp__ClientToScreen@4]      // 0x007e4eb0    ff1538988a00
                         {disp8} mov      edx, dword ptr [esp + 0x04]              // 0x007e4eb6    8b542404
                         {disp8} mov      eax, dword ptr [esp + 0x00]              // 0x007e4eba    8b442400
                         push             edx                                      // 0x007e4ebe    52
                         push             eax                                      // 0x007e4ebf    50
                         call             dword ptr [__imp__SetCursorPos@4]        // 0x007e4ec0    ff15e4978a00
                         xor.s            eax, eax                                 // 0x007e4ec6    33c0
                         add              esp, 0x08                                // 0x007e4ec8    83c408
                         ret              0x0004                                   // 0x007e4ecb    c20400
                         nop                                                       // 0x007e4ece    90
                         nop                                                       // 0x007e4ecf    90
                         sub              esp, 0x08                                // 0x007e4ed0    83ec08
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x007e4ed3    8b44240c
                         {disp32} mov     edx, dword ptr [ecx + 0x000000bc]        // 0x007e4ed7    8b91bc000000
                         {disp32} mov     ecx, dword ptr [ecx + 0x000000c0]        // 0x007e4edd    8b89c0000000
                         add              edx, dword ptr [eax]                     // 0x007e4ee3    0310
                         {disp8} mov      dword ptr [esp + 0x00], edx              // 0x007e4ee5    89542400
                         {disp8} mov      edx, dword ptr [eax + 0x04]              // 0x007e4ee9    8b5004
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf078]   // 0x007e4eec    a17850e800
                         add.s            ecx, edx                                 // 0x007e4ef1    03ca
                         {disp8} lea      edx, dword ptr [esp + 0x00]              // 0x007e4ef3    8d542400
                         {disp8} mov      dword ptr [esp + 0x04], ecx              // 0x007e4ef7    894c2404
                         push             edx                                      // 0x007e4efb    52
                         push             eax                                      // 0x007e4efc    50
                         call             dword ptr [__imp__ClientToScreen@4]      // 0x007e4efd    ff1538988a00
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x007e4f03    8b4c2404
                         {disp8} mov      edx, dword ptr [esp + 0x00]              // 0x007e4f07    8b542400
                         push             ecx                                      // 0x007e4f0b    51
                         push             edx                                      // 0x007e4f0c    52
                         call             dword ptr [__imp__SetCursorPos@4]        // 0x007e4f0d    ff15e4978a00
                         xor.s            eax, eax                                 // 0x007e4f13    33c0
                         add              esp, 0x08                                // 0x007e4f15    83c408
                         ret              0x0004                                   // 0x007e4f18    c20400
                         nop                                                       // 0x007e4f1b    90
                         nop                                                       // 0x007e4f1c    90
                         nop                                                       // 0x007e4f1d    90
                         nop                                                       // 0x007e4f1e    90
                         nop                                                       // 0x007e4f1f    90
??0LHMouse@@QAE@XZ:
                         push             ebx                                      // 0x007e4f20    53
                         push             esi                                      // 0x007e4f21    56
                         push             edi                                      // 0x007e4f22    57
                         mov.s            esi, ecx                                 // 0x007e4f23    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e4f25    685006e900
                         call             dword ptr [rdata_bytes + 0x17c]          // 0x007e4f2a    ff157c918a00
                         {disp32} mov     edi, dword ptr [rdata_bytes + 0x804]     // 0x007e4f30    8b3d04988a00
                         mov              eax, 0x00000002                          // 0x007e4f36    b802000000
                         {disp8} mov      dword ptr [esi + 0x18], eax              // 0x007e4f3b    894618
                         {disp8} mov      dword ptr [esi + 0x14], eax              // 0x007e4f3e    894614
                         mov              eax, 0x00000001                          // 0x007e4f41    b801000000
                         xor.s            ebx, ebx                                 // 0x007e4f46    33db
                         push             0x2b                                     // 0x007e4f48    6a2b
                         {disp8} mov      dword ptr [esi + 0x0c], eax              // 0x007e4f4a    89460c
                         {disp32} mov     dword ptr [esi + 0x000000cc], ebx        // 0x007e4f4d    899ecc000000
                         {disp8} mov      dword ptr [esi + 0x08], eax              // 0x007e4f53    894608
                         {disp8} mov      dword ptr [esi + 0x6c], ebx              // 0x007e4f56    895e6c
                         {disp8} mov      dword ptr [esi + 0x10], ebx              // 0x007e4f59    895e10
                         {disp8} mov      dword ptr [esi + 0x24], 0x00000007       // 0x007e4f5c    c7462407000000
                         {disp8} mov      byte ptr [esi + 0x28], bl                // 0x007e4f63    885e28
                         {disp32} mov     dword ptr [esi + 0x000000f8], ebx        // 0x007e4f66    899ef8000000
                         {disp32} mov     dword ptr [esi + 0x000000fc], ebx        // 0x007e4f6c    899efc000000
                         call             edi                                      // 0x007e4f72    ffd7
                         push             0x4b                                     // 0x007e4f74    6a4b
                         {disp8} mov      dword ptr [esi + 0x48], eax              // 0x007e4f76    894648
                         call             edi                                      // 0x007e4f79    ffd7
                         {disp8} mov      dword ptr [esi + 0x44], eax              // 0x007e4f7b    894644
                         {disp32} mov     dword ptr [esi + 0x000000e0], ebx        // 0x007e4f7e    899ee0000000
                         {disp32} mov     dword ptr [esi + 0x000000e4], ebx        // 0x007e4f84    899ee4000000
                         mov.s            eax, esi                                 // 0x007e4f8a    8bc6
                         pop              edi                                      // 0x007e4f8c    5f
                         pop              esi                                      // 0x007e4f8d    5e
                         pop              ebx                                      // 0x007e4f8e    5b
                         ret                                                       // 0x007e4f8f    c3
_jmp_addr_0x007e4f90:    {disp32} mov     eax, fs:[0x0]                            // 0x007e4f90    64a100000000
                         push             -0x1                                     // 0x007e4f96    6aff
                         push             0x008a7a87                               // 0x007e4f98    68877a8a00
                         push             eax                                      // 0x007e4f9d    50
                         {disp32} mov     fs:[0x0], esp                            // 0x007e4f9e    64892500000000
                         push             ebx                                      // 0x007e4fa5    53
                         push             ebp                                      // 0x007e4fa6    55
                         push             esi                                      // 0x007e4fa7    56
                         push             edi                                      // 0x007e4fa8    57
                         {disp32} mov     edi, dword ptr [rdata_bytes + 0x180]     // 0x007e4fa9    8b3d80918a00
                         mov.s            esi, ecx                                 // 0x007e4faf    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e4fb1    685006e900
                         call             edi                                      // 0x007e4fb6    ffd7
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e4fb8    685006e900
                         call             edi                                      // 0x007e4fbd    ffd7
                         {disp8} mov      eax, dword ptr [esi + 0x08]              // 0x007e4fbf    8b4608
                         mov              edi, 0x00000001                          // 0x007e4fc2    bf01000000
                         test             eax, eax                                 // 0x007e4fc7    85c0
                         {disp8} jne      _jmp_addr_0x007e4feb                     // 0x007e4fc9    7520
                         xor.s            eax, eax                                 // 0x007e4fcb    33c0
                         {disp32} lea     edx, dword ptr [esi + 0x000000a4]        // 0x007e4fcd    8d96a4000000
                         {disp8} mov      al, byte ptr [esi + 0x28]                // 0x007e4fd3    8a4628
                         push             edi                                      // 0x007e4fd6    57
                         push             edx                                      // 0x007e4fd7    52
                         {disp8} mov      ecx, dword ptr [esi + eax * 0x4 + 0x2c]  // 0x007e4fd8    8b4c862c
                         {disp32} lea     eax, dword ptr [esi + 0x00000084]        // 0x007e4fdc    8d8684000000
                         push             eax                                      // 0x007e4fe2    50
                         call             _jmp_addr_0x007e52b0                     // 0x007e4fe3    e8c8020000
                         {disp8} mov      dword ptr [esi + 0x08], edi              // 0x007e4fe8    897e08
_jmp_addr_0x007e4feb:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e4feb    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e4ff0    ff1584918a00
                         {disp8} mov      ebp, dword ptr [esp + 0x20]              // 0x007e4ff6    8b6c2420
                         {disp8} mov      ebx, dword ptr [esp + 0x24]              // 0x007e4ffa    8b5c2424
                         test             bp, bp                                   // 0x007e4ffe    6685ed
                         {disp8} je       _jmp_addr_0x007e500d                     // 0x007e5001    740a
                         test             bx, bx                                   // 0x007e5003    6685db
                         {disp8} je       _jmp_addr_0x007e500d                     // 0x007e5006    7405
                         {disp8} mov      dword ptr [esi + 0x10], edi              // 0x007e5008    897e10
                         {disp8} jmp      _jmp_addr_0x007e5014                     // 0x007e500b    eb07
_jmp_addr_0x007e500d:    {disp8} mov      dword ptr [esi + 0x10], 0x00000000       // 0x007e500d    c7461000000000
_jmp_addr_0x007e5014:    {disp8} mov      edi, dword ptr [esi + 0x3c]              // 0x007e5014    8b7e3c
                         test             edi, edi                                 // 0x007e5017    85ff
                         {disp8} je       _jmp_addr_0x007e5034                     // 0x007e5019    7419
                         mov.s            ecx, edi                                 // 0x007e501b    8bcf
                         call             _jmp_addr_0x007e67c0                     // 0x007e501d    e89e170000
                         push             edi                                      // 0x007e5022    57
                         mov              ecx, 0x00e85964                          // 0x007e5023    b96459e800
                         call             _jmp_addr_0x007e6a30                     // 0x007e5028    e8031a0000
                         {disp8} mov      dword ptr [esi + 0x3c], 0x00000000       // 0x007e502d    c7463c00000000
_jmp_addr_0x007e5034:    {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x007e5034    8b4610
                         test             eax, eax                                 // 0x007e5037    85c0
                         {disp8} je       _jmp_addr_0x007e5067                     // 0x007e5039    742c
                         push             0x30                                     // 0x007e503b    6a30
                         mov              ecx, 0x00e85964                          // 0x007e503d    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5042    e889190000
                         xor.s            ecx, ecx                                 // 0x007e5047    33c9
                         cmp.s            eax, ecx                                 // 0x007e5049    3bc1
                         {disp8} je       _jmp_addr_0x007e5063                     // 0x007e504b    7416
                         {disp8} mov      dword ptr [eax + 0x08], ecx              // 0x007e504d    894808
                         {disp8} mov      word ptr [eax + 0x14], bp                // 0x007e5050    66896814
                         {disp8} mov      word ptr [eax + 0x16], bx                // 0x007e5054    66895816
                         {disp8} mov      dword ptr [eax + 0x1c], ecx              // 0x007e5058    89481c
                         {disp8} mov      dword ptr [eax + 0x24], ecx              // 0x007e505b    894824
                         {disp8} mov      dword ptr [eax + 0x28], ecx              // 0x007e505e    894828
                         {disp8} jmp      _jmp_addr_0x007e50a2                     // 0x007e5061    eb3f
_jmp_addr_0x007e5063:    xor.s            eax, eax                                 // 0x007e5063    33c0
                         {disp8} jmp      _jmp_addr_0x007e50a2                     // 0x007e5065    eb3b
_jmp_addr_0x007e5067:    cmp              dword ptr [esi + 0x14], 0x20             // 0x007e5067    837e1420
                         {disp8} jne      _jmp_addr_0x007e50a5                     // 0x007e506b    7538
                         push             0x30                                     // 0x007e506d    6a30
                         mov              ecx, 0x00e85964                          // 0x007e506f    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5074    e857190000
                         {disp8} mov      dword ptr [esp + 0x20], eax              // 0x007e5079    89442420
                         test             eax, eax                                 // 0x007e507d    85c0
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000       // 0x007e507f    c744241800000000
                         {disp8} je       _jmp_addr_0x007e5098                     // 0x007e5087    740f
                         {disp8} mov      ecx, dword ptr [esi + 0x38]              // 0x007e5089    8b4e38
                         push             0x0                                      // 0x007e508c    6a00
                         push             ecx                                      // 0x007e508e    51
                         mov.s            ecx, eax                                 // 0x007e508f    8bc8
                         call             _jmp_addr_0x007e6290                     // 0x007e5091    e8fa110000
                         {disp8} jmp      _jmp_addr_0x007e509a                     // 0x007e5096    eb02
_jmp_addr_0x007e5098:    xor.s            eax, eax                                 // 0x007e5098    33c0
_jmp_addr_0x007e509a:    {disp8} mov      dword ptr [esp + 0x18], 0xffffffff       // 0x007e509a    c7442418ffffffff
_jmp_addr_0x007e50a2:    {disp8} mov      dword ptr [esi + 0x3c], eax              // 0x007e50a2    89463c
_jmp_addr_0x007e50a5:    {disp8} mov      ecx, dword ptr [esi + 0x3c]              // 0x007e50a5    8b4e3c
                         test             ecx, ecx                                 // 0x007e50a8    85c9
                         {disp8} je       _jmp_addr_0x007e50e0                     // 0x007e50aa    7434
                         call             _jmp_addr_0x007e6330                     // 0x007e50ac    e87f120000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]              // 0x007e50b1    8b461c
                         test             eax, eax                                 // 0x007e50b4    85c0
                         {disp8} je       _jmp_addr_0x007e50c4                     // 0x007e50b6    740c
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]              // 0x007e50b8    8b4e3c
                         and              eax, 0x60                                // 0x007e50bb    83e060
                         push             eax                                      // 0x007e50be    50
                         call             _jmp_addr_0x007e66e0                     // 0x007e50bf    e81c160000
_jmp_addr_0x007e50c4:    {disp8} mov      ecx, dword ptr [esi + 0x3c]              // 0x007e50c4    8b4e3c
                         {disp8} lea      edx, dword ptr [esp + 0x20]              // 0x007e50c7    8d542420
                         push             edx                                      // 0x007e50cb    52
                         {disp8} mov      byte ptr [esp + 0x24], 0x00              // 0x007e50cc    c644242400
                         {disp8} mov      byte ptr [esp + 0x25], 0x00              // 0x007e50d1    c644242500
                         {disp8} mov      byte ptr [esp + 0x26], 0x00              // 0x007e50d6    c644242600
                         call             _jmp_addr_0x007e6500                     // 0x007e50db    e820140000
_jmp_addr_0x007e50e0:    {disp8} mov      edi, dword ptr [esi + 0x2c]              // 0x007e50e0    8b7e2c
                         test             edi, edi                                 // 0x007e50e3    85ff
                         {disp8} je       _jmp_addr_0x007e5120                     // 0x007e50e5    7439
                         mov.s            ecx, edi                                 // 0x007e50e7    8bcf
                         call             _jmp_addr_0x007e67c0                     // 0x007e50e9    e8d2160000
                         push             edi                                      // 0x007e50ee    57
                         mov              ecx, 0x00e85964                          // 0x007e50ef    b96459e800
                         call             _jmp_addr_0x007e6a30                     // 0x007e50f4    e837190000
                         {disp8} mov      edi, dword ptr [esi + 0x30]              // 0x007e50f9    8b7e30
                         {disp8} mov      dword ptr [esi + 0x2c], 0x00000000       // 0x007e50fc    c7462c00000000
                         test             edi, edi                                 // 0x007e5103    85ff
                         {disp8} je       _jmp_addr_0x007e5119                     // 0x007e5105    7412
                         mov.s            ecx, edi                                 // 0x007e5107    8bcf
                         call             _jmp_addr_0x007e67c0                     // 0x007e5109    e8b2160000
                         push             edi                                      // 0x007e510e    57
                         mov              ecx, 0x00e85964                          // 0x007e510f    b96459e800
                         call             _jmp_addr_0x007e6a30                     // 0x007e5114    e817190000
_jmp_addr_0x007e5119:    {disp8} mov      dword ptr [esi + 0x30], 0x00000000       // 0x007e5119    c7463000000000
_jmp_addr_0x007e5120:    {disp8} mov      edi, dword ptr [esi + 0x34]              // 0x007e5120    8b7e34
                         test             edi, edi                                 // 0x007e5123    85ff
                         {disp8} je       _jmp_addr_0x007e5140                     // 0x007e5125    7419
                         mov.s            ecx, edi                                 // 0x007e5127    8bcf
                         call             _jmp_addr_0x007e67c0                     // 0x007e5129    e892160000
                         push             edi                                      // 0x007e512e    57
                         mov              ecx, 0x00e85964                          // 0x007e512f    b96459e800
                         call             _jmp_addr_0x007e6a30                     // 0x007e5134    e8f7180000
                         {disp8} mov      dword ptr [esi + 0x34], 0x00000000       // 0x007e5139    c7463400000000
_jmp_addr_0x007e5140:    test             bp, bp                                   // 0x007e5140    6685ed
                         {disp8} je       _jmp_addr_0x007e514e                     // 0x007e5143    7409
                         test             bx, bx                                   // 0x007e5145    6685db
                         {disp32} jne     _jmp_addr_0x007e51cf                     // 0x007e5148    0f8581000000
_jmp_addr_0x007e514e:    {disp8} mov      ecx, dword ptr [esi + 0x58]              // 0x007e514e    8b4e58
                         xor.s            ebx, ebx                                 // 0x007e5151    33db
                         xor.s            ebp, ebp                                 // 0x007e5153    33ed
                         test             ecx, ecx                                 // 0x007e5155    85c9
                         {disp8} je       _jmp_addr_0x007e518d                     // 0x007e5157    7434
                         {disp8} mov      ax, word ptr [esi + 0x5c]                // 0x007e5159    668b465c
                         test             ax, ax                                   // 0x007e515d    6685c0
                         {disp8} jbe      _jmp_addr_0x007e518d                     // 0x007e5160    762b
                         and              eax, 0x0000ffff                          // 0x007e5162    25ffff0000
                         mov.s            edx, ecx                                 // 0x007e5167    8bd1
                         mov.s            edi, eax                                 // 0x007e5169    8bf8
_jmp_addr_0x007e516b:    mov              eax, dword ptr [edx]                     // 0x007e516b    8b02
                         {disp8} mov      cx, word ptr [eax + 0x14]                // 0x007e516d    668b4814
                         cmp.s            bp, cx                                   // 0x007e5171    663be9
                         {disp8} jbe      _jmp_addr_0x007e5178                     // 0x007e5174    7602
                         mov.s            ecx, ebp                                 // 0x007e5176    8bcd
_jmp_addr_0x007e5178:    {disp8} mov      ax, word ptr [eax + 0x16]                // 0x007e5178    668b4016
                         mov.s            ebp, ecx                                 // 0x007e517c    8be9
                         cmp.s            bx, ax                                   // 0x007e517e    663bd8
                         {disp8} jbe      _jmp_addr_0x007e5185                     // 0x007e5181    7602
                         mov.s            eax, ebx                                 // 0x007e5183    8bc3
_jmp_addr_0x007e5185:    add              edx, 0x04                                // 0x007e5185    83c204
                         dec              edi                                      // 0x007e5188    4f
                         mov.s            ebx, eax                                 // 0x007e5189    8bd8
                         {disp8} jne      _jmp_addr_0x007e516b                     // 0x007e518b    75de
_jmp_addr_0x007e518d:    {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x007e518d    8b463c
                         test             eax, eax                                 // 0x007e5190    85c0
                         {disp8} je       _jmp_addr_0x007e51ae                     // 0x007e5192    741a
                         {disp8} mov      cx, word ptr [eax + 0x14]                // 0x007e5194    668b4814
                         cmp.s            bp, cx                                   // 0x007e5198    663be9
                         {disp8} jbe      _jmp_addr_0x007e519f                     // 0x007e519b    7602
                         mov.s            ecx, ebp                                 // 0x007e519d    8bcd
_jmp_addr_0x007e519f:    {disp8} mov      ax, word ptr [eax + 0x16]                // 0x007e519f    668b4016
                         mov.s            ebp, ecx                                 // 0x007e51a3    8be9
                         cmp.s            bx, ax                                   // 0x007e51a5    663bd8
                         {disp8} jbe      _jmp_addr_0x007e51ac                     // 0x007e51a8    7602
                         mov.s            eax, ebx                                 // 0x007e51aa    8bc3
_jmp_addr_0x007e51ac:    mov.s            ebx, eax                                 // 0x007e51ac    8bd8
_jmp_addr_0x007e51ae:    {disp8} mov      eax, dword ptr [esi + 0x40]              // 0x007e51ae    8b4640
                         test             eax, eax                                 // 0x007e51b1    85c0
                         {disp8} je       _jmp_addr_0x007e51cf                     // 0x007e51b3    741a
                         {disp8} mov      cx, word ptr [eax + 0x14]                // 0x007e51b5    668b4814
                         cmp.s            bp, cx                                   // 0x007e51b9    663be9
                         {disp8} jbe      _jmp_addr_0x007e51c0                     // 0x007e51bc    7602
                         mov.s            ecx, ebp                                 // 0x007e51be    8bcd
_jmp_addr_0x007e51c0:    {disp8} mov      ax, word ptr [eax + 0x16]                // 0x007e51c0    668b4016
                         mov.s            ebp, ecx                                 // 0x007e51c4    8be9
                         cmp.s            bx, ax                                   // 0x007e51c6    663bd8
                         {disp8} jbe      _jmp_addr_0x007e51cd                     // 0x007e51c9    7602
                         mov.s            eax, ebx                                 // 0x007e51cb    8bc3
_jmp_addr_0x007e51cd:    mov.s            ebx, eax                                 // 0x007e51cd    8bd8
_jmp_addr_0x007e51cf:    test             bp, bp                                   // 0x007e51cf    6685ed
                         {disp32} je      _jmp_addr_0x007e527b                     // 0x007e51d2    0f84a3000000
                         test             bx, bx                                   // 0x007e51d8    6685db
                         {disp32} je      _jmp_addr_0x007e527b                     // 0x007e51db    0f849a000000
                         push             0x30                                     // 0x007e51e1    6a30
                         mov              ecx, 0x00e85964                          // 0x007e51e3    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e51e8    e8e3170000
                         xor.s            edi, edi                                 // 0x007e51ed    33ff
                         cmp.s            eax, edi                                 // 0x007e51ef    3bc7
                         {disp8} je       _jmp_addr_0x007e5209                     // 0x007e51f1    7416
                         {disp8} mov      dword ptr [eax + 0x08], edi              // 0x007e51f3    897808
                         {disp8} mov      word ptr [eax + 0x14], bp                // 0x007e51f6    66896814
                         {disp8} mov      word ptr [eax + 0x16], bx                // 0x007e51fa    66895816
                         {disp8} mov      dword ptr [eax + 0x1c], edi              // 0x007e51fe    89781c
                         {disp8} mov      dword ptr [eax + 0x24], edi              // 0x007e5201    897824
                         {disp8} mov      dword ptr [eax + 0x28], edi              // 0x007e5204    897828
                         {disp8} jmp      _jmp_addr_0x007e520b                     // 0x007e5207    eb02
_jmp_addr_0x007e5209:    xor.s            eax, eax                                 // 0x007e5209    33c0
_jmp_addr_0x007e520b:    push             0x30                                     // 0x007e520b    6a30
                         mov              ecx, 0x00e85964                          // 0x007e520d    b96459e800
                         {disp8} mov      dword ptr [esi + 0x2c], eax              // 0x007e5212    89462c
                         call             _jmp_addr_0x007e69d0                     // 0x007e5215    e8b6170000
                         cmp.s            eax, edi                                 // 0x007e521a    3bc7
                         {disp8} je       _jmp_addr_0x007e5234                     // 0x007e521c    7416
                         {disp8} mov      dword ptr [eax + 0x08], edi              // 0x007e521e    897808
                         {disp8} mov      word ptr [eax + 0x14], bp                // 0x007e5221    66896814
                         {disp8} mov      word ptr [eax + 0x16], bx                // 0x007e5225    66895816
                         {disp8} mov      dword ptr [eax + 0x1c], edi              // 0x007e5229    89781c
                         {disp8} mov      dword ptr [eax + 0x24], edi              // 0x007e522c    897824
                         {disp8} mov      dword ptr [eax + 0x28], edi              // 0x007e522f    897828
                         {disp8} jmp      _jmp_addr_0x007e5236                     // 0x007e5232    eb02
_jmp_addr_0x007e5234:    xor.s            eax, eax                                 // 0x007e5234    33c0
_jmp_addr_0x007e5236:    {disp8} mov      ecx, dword ptr [esi + 0x2c]              // 0x007e5236    8b4e2c
                         {disp8} mov      dword ptr [esi + 0x30], eax              // 0x007e5239    894630
                         call             _jmp_addr_0x007e6330                     // 0x007e523c    e8ef100000
                         {disp8} mov      ecx, dword ptr [esi + 0x30]              // 0x007e5241    8b4e30
                         call             _jmp_addr_0x007e6330                     // 0x007e5244    e8e7100000
                         push             0x30                                     // 0x007e5249    6a30
                         mov              ecx, 0x00e85964                          // 0x007e524b    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5250    e87b170000
                         cmp.s            eax, edi                                 // 0x007e5255    3bc7
                         {disp8} je       _jmp_addr_0x007e526f                     // 0x007e5257    7416
                         {disp8} mov      dword ptr [eax + 0x08], edi              // 0x007e5259    897808
                         {disp8} mov      word ptr [eax + 0x14], bp                // 0x007e525c    66896814
                         {disp8} mov      word ptr [eax + 0x16], bx                // 0x007e5260    66895816
                         {disp8} mov      dword ptr [eax + 0x1c], edi              // 0x007e5264    89781c
                         {disp8} mov      dword ptr [eax + 0x24], edi              // 0x007e5267    897824
                         {disp8} mov      dword ptr [eax + 0x28], edi              // 0x007e526a    897828
                         {disp8} jmp      _jmp_addr_0x007e5271                     // 0x007e526d    eb02
_jmp_addr_0x007e526f:    xor.s            eax, eax                                 // 0x007e526f    33c0
_jmp_addr_0x007e5271:    mov.s            ecx, eax                                 // 0x007e5271    8bc8
                         {disp8} mov      dword ptr [esi + 0x34], eax              // 0x007e5273    894634
                         call             _jmp_addr_0x007e6330                     // 0x007e5276    e8b5100000
_jmp_addr_0x007e527b:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e527b    685006e900
                         {disp8} mov      byte ptr [esi + 0x28], 0x00              // 0x007e5280    c6462800
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5284    ff1584918a00
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x007e528a    8b4c2410
                         pop              edi                                      // 0x007e528e    5f
                         pop              esi                                      // 0x007e528f    5e
                         pop              ebp                                      // 0x007e5290    5d
                         xor.s            eax, eax                                 // 0x007e5291    33c0
                         {disp32} mov     fs:[0x0], ecx                            // 0x007e5293    64890d00000000
                         pop              ebx                                      // 0x007e529a    5b
                         add              esp, 0x0c                                // 0x007e529b    83c40c
                         ret              0x0008                                   // 0x007e529e    c20800
                         nop                                                       // 0x007e52a1    90
                         nop                                                       // 0x007e52a2    90
                         nop                                                       // 0x007e52a3    90
                         nop                                                       // 0x007e52a4    90
                         nop                                                       // 0x007e52a5    90
                         nop                                                       // 0x007e52a6    90
                         nop                                                       // 0x007e52a7    90
                         nop                                                       // 0x007e52a8    90
                         nop                                                       // 0x007e52a9    90
                         nop                                                       // 0x007e52aa    90
                         nop                                                       // 0x007e52ab    90
                         nop                                                       // 0x007e52ac    90
                         nop                                                       // 0x007e52ad    90
                         nop                                                       // 0x007e52ae    90
                         nop                                                       // 0x007e52af    90
_jmp_addr_0x007e52b0:    sub              esp, 0x10                                // 0x007e52b0    83ec10
                         {disp8} mov      eax, dword ptr [esp + 0x18]              // 0x007e52b3    8b442418
                         mov              edx, dword ptr [eax]                     // 0x007e52b7    8b10
                         {disp8} mov      eax, dword ptr [eax + 0x04]              // 0x007e52b9    8b4004
                         {disp8} mov      dword ptr [esp + 0x04], eax              // 0x007e52bc    89442404
                         {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x007e52c0    8b44241c
                         cmp              eax, 0x01                                // 0x007e52c4    83f801
                         {disp8} mov      dword ptr [esp + 0x00], edx              // 0x007e52c7    89542400
                         {disp8} jne      _jmp_addr_0x007e52fd                     // 0x007e52cb    7530
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf0a8]   // 0x007e52cd    a1a850e800
                         {disp32} mov     edx, dword ptr [data_bytes + 0x4bf0ac]   // 0x007e52d2    8b15ac50e800
                         push             esi                                      // 0x007e52d8    56
                         {disp8} mov      esi, dword ptr [esp + 0x04]              // 0x007e52d9    8b742404
                         {disp8} mov      dword ptr [esp + 0x0c], eax              // 0x007e52dd    8944240c
                         add.s            esi, eax                                 // 0x007e52e1    03f0
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x007e52e3    8b442408
                         {disp8} mov      dword ptr [esp + 0x04], esi              // 0x007e52e7    89742404
                         add.s            eax, edx                                 // 0x007e52eb    03c2
                         {disp8} mov      dword ptr [esp + 0x10], edx              // 0x007e52ed    89542410
                         {disp8} mov      dword ptr [esp + 0x08], eax              // 0x007e52f1    89442408
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf080]   // 0x007e52f5    a18050e800
                         pop              esi                                      // 0x007e52fa    5e
                         {disp8} jmp      _jmp_addr_0x007e5302                     // 0x007e52fb    eb05
_jmp_addr_0x007e52fd:    {disp32} mov     eax, dword ptr [data_bytes + 0x4bf084]   // 0x007e52fd    a18450e800
_jmp_addr_0x007e5302:    push             0x0                                      // 0x007e5302    6a00
                         push             0x0                                      // 0x007e5304    6a00
                         push             eax                                      // 0x007e5306    50
                         {disp8} mov      eax, dword ptr [esp + 0x20]              // 0x007e5307    8b442420
                         {disp8} lea      edx, dword ptr [esp + 0x0c]              // 0x007e530b    8d54240c
                         push             edx                                      // 0x007e530f    52
                         push             eax                                      // 0x007e5310    50
                         call             _jmp_addr_0x007e67e0                     // 0x007e5311    e8ca140000
                         add              esp, 0x10                                // 0x007e5316    83c410
                         ret              0x000c                                   // 0x007e5319    c20c00
                         nop                                                       // 0x007e531c    90
                         nop                                                       // 0x007e531d    90
                         nop                                                       // 0x007e531e    90
                         nop                                                       // 0x007e531f    90
_jmp_addr_0x007e5320:    {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x007e5320    8b442404
                         mov              ecx, 0x00e85964                          // 0x007e5324    b96459e800
                         push             eax                                      // 0x007e5329    50
                         call             _jmp_addr_0x007e6a30                     // 0x007e532a    e801170000
                         ret                                                       // 0x007e532f    c3
                         push             ebx                                      // 0x007e5330    53
                         push             esi                                      // 0x007e5331    56
                         push             edi                                      // 0x007e5332    57
                         mov.s            esi, ecx                                 // 0x007e5333    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5335    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e533a    ff1580918a00
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]              // 0x007e5340    8b4e3c
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x007e5343    8b442410
                         test             ecx, ecx                                 // 0x007e5347    85c9
                         {disp8} mov      dword ptr [esi + 0x1c], eax              // 0x007e5349    89461c
                         {disp8} je       _jmp_addr_0x007e535b                     // 0x007e534c    740d
                         and              eax, 0x60                                // 0x007e534e    83e060
                         push             eax                                      // 0x007e5351    50
                         call             _jmp_addr_0x007e66e0                     // 0x007e5352    e889130000
                         mov.s            ebx, eax                                 // 0x007e5357    8bd8
                         {disp8} jmp      _jmp_addr_0x007e535f                     // 0x007e5359    eb04
_jmp_addr_0x007e535b:    {disp8} mov      ebx, dword ptr [esp + 0x10]              // 0x007e535b    8b5c2410
_jmp_addr_0x007e535f:    {disp8} mov      eax, dword ptr [esi + 0x58]              // 0x007e535f    8b4658
                         test             eax, eax                                 // 0x007e5362    85c0
                         {disp8} je       _jmp_addr_0x007e538f                     // 0x007e5364    7429
                         xor.s            edi, edi                                 // 0x007e5366    33ff
                         cmp              word ptr [esi + 0x5c], di                // 0x007e5368    66397e5c
                         {disp8} jbe      _jmp_addr_0x007e538f                     // 0x007e536c    7621
_jmp_addr_0x007e536e:    {disp8} mov      eax, dword ptr [esi + 0x1c]              // 0x007e536e    8b461c
                         {disp8} mov      edx, dword ptr [esi + 0x58]              // 0x007e5371    8b5658
                         mov.s            ecx, edi                                 // 0x007e5374    8bcf
                         and              eax, 0x60                                // 0x007e5376    83e060
                         and              ecx, 0x0000ffff                          // 0x007e5379    81e1ffff0000
                         push             eax                                      // 0x007e537f    50
                         mov              ecx, dword ptr [edx + ecx * 0x4]         // 0x007e5380    8b0c8a
                         call             _jmp_addr_0x007e66e0                     // 0x007e5383    e858130000
                         inc              edi                                      // 0x007e5388    47
                         cmp              di, word ptr [esi + 0x5c]                // 0x007e5389    663b7e5c
                         .byte            0x72, 0xdf// {disp8} jb _jmp_addr_0x007e536e // 0x007e538d    72df
_jmp_addr_0x007e538f:    push             0x00000080                               // 0x007e538f    6880000000
                         push             0x1                                      // 0x007e5394    6a01
                         mov.s            ecx, esi                                 // 0x007e5396    8bce
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e5398    e823040000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e539d    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e53a2    ff1584918a00
                         pop              edi                                      // 0x007e53a8    5f
                         mov.s            eax, ebx                                 // 0x007e53a9    8bc3
                         pop              esi                                      // 0x007e53ab    5e
                         pop              ebx                                      // 0x007e53ac    5b
                         ret              0x0004                                   // 0x007e53ad    c20400
@SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20:    push             ebx                                      // 0x007e53b0    53
                         {disp32} mov     ebx, dword ptr [rdata_bytes + 0x180]     // 0x007e53b1    8b1d80918a00
                         push             ebp                                      // 0x007e53b7    55
                         push             esi                                      // 0x007e53b8    56
                         push             edi                                      // 0x007e53b9    57
                         mov.s            esi, ecx                                 // 0x007e53ba    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e53bc    685006e900
                         call             ebx                                      // 0x007e53c1    ffd3
                         {disp8} mov      ecx, dword ptr [esi + 0x14]              // 0x007e53c3    8b4e14
                         {disp8} mov      eax, dword ptr [esp + 0x18]              // 0x007e53c6    8b442418
                         cmp              ecx, 0x40                                // 0x007e53ca    83f940
                         {disp8} mov      dword ptr [esi + 0x18], eax              // 0x007e53cd    894618
                         {disp8} je       _jmp_addr_0x007e53d5                     // 0x007e53d0    7403
                         {disp8} mov      dword ptr [esi + 0x14], eax              // 0x007e53d2    894614
_jmp_addr_0x007e53d5:    {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x007e53d5    8b4614
                         {disp8} mov      ecx, dword ptr [esp + 0x14]              // 0x007e53d8    8b4c2414
                         xor.s            edx, edx                                 // 0x007e53dc    33d2
                         cmp              eax, 0x20                                // 0x007e53de    83f820
                         {disp8} mov      dword ptr [esi + 0x38], edx              // 0x007e53e1    895638
                         {disp8} mov      dword ptr [esi + 0x40], edx              // 0x007e53e4    895640
                         {disp8} jne      _jmp_addr_0x007e53ec                     // 0x007e53e7    7503
                         {disp8} mov      dword ptr [esi + 0x38], ecx              // 0x007e53e9    894e38
_jmp_addr_0x007e53ec:    cmp              eax, 0x08                                // 0x007e53ec    83f808
                         {disp8} jne      _jmp_addr_0x007e53f4                     // 0x007e53ef    7503
                         {disp8} mov      dword ptr [esi + 0x40], ecx              // 0x007e53f1    894e40
_jmp_addr_0x007e53f4:    cmp              dword ptr [esp + 0x1c], edx              // 0x007e53f4    3954241c
                         {disp8} je       _jmp_addr_0x007e5403                     // 0x007e53f8    7409
                         push             edx                                      // 0x007e53fa    52
                         push             edx                                      // 0x007e53fb    52
                         mov.s            ecx, esi                                 // 0x007e53fc    8bce
                         call             _jmp_addr_0x007e4f90                     // 0x007e53fe    e88dfbffff
_jmp_addr_0x007e5403:    cmp              dword ptr [esi + 0x14], 0x20             // 0x007e5403    837e1420
                         {disp8} jne      _jmp_addr_0x007e5422                     // 0x007e5407    7519
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]              // 0x007e5409    8b4e3c
                         {disp8} mov      eax, dword ptr [esi + 0x38]              // 0x007e540c    8b4638
                         cmp              dword ptr [ecx + 0x1c], eax              // 0x007e540f    39411c
                         {disp8} jne      _jmp_addr_0x007e541a                     // 0x007e5412    7506
                         cmp              dword ptr [ecx + 0x20], 0x01             // 0x007e5414    83792001
                         {disp8} je       _jmp_addr_0x007e5422                     // 0x007e5418    7408
_jmp_addr_0x007e541a:    push             0x1                                      // 0x007e541a    6a01
                         push             eax                                      // 0x007e541c    50
                         call             _jmp_addr_0x007e6700                     // 0x007e541d    e8de120000
_jmp_addr_0x007e5422:    {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x007e5422    8b4614
                         {disp32} mov     edi, dword ptr [rdata_bytes + 0x184]     // 0x007e5425    8b3d84918a00
                         cmp              eax, 0x40                                // 0x007e542b    83f840
                         {disp32} je      _jmp_addr_0x007e5534                     // 0x007e542e    0f8400010000
                         {disp32} mov     ebp, dword ptr [__imp__PostMessageA@4]   // 0x007e5434    8b2dfc978a00
                         test             eax, 0xfffffff8                          // 0x007e543a    a9f8ffffff
                         {disp8} jne      _jmp_addr_0x007e54a8                     // 0x007e543f    7567
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5441    685006e900
                         call             ebx                                      // 0x007e5446    ffd3
                         {disp8} mov      eax, dword ptr [esi + 0x0c]              // 0x007e5448    8b460c
                         test             eax, eax                                 // 0x007e544b    85c0
                         {disp8} je       _jmp_addr_0x007e5490                     // 0x007e544d    7441
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e544f    685006e900
                         call             ebx                                      // 0x007e5454    ffd3
                         {disp8} mov      eax, dword ptr [esi + 0x08]              // 0x007e5456    8b4608
                         test             eax, eax                                 // 0x007e5459    85c0
                         {disp8} jne      _jmp_addr_0x007e5482                     // 0x007e545b    7525
                         xor.s            edx, edx                                 // 0x007e545d    33d2
                         {disp32} lea     eax, dword ptr [esi + 0x000000a4]        // 0x007e545f    8d86a4000000
                         {disp8} mov      dl, byte ptr [esi + 0x28]                // 0x007e5465    8a5628
                         push             0x1                                      // 0x007e5468    6a01
                         {disp32} lea     ecx, dword ptr [esi + 0x00000084]        // 0x007e546a    8d8e84000000
                         push             eax                                      // 0x007e5470    50
                         push             ecx                                      // 0x007e5471    51
                         {disp8} mov      ecx, dword ptr [esi + edx * 0x4 + 0x2c]  // 0x007e5472    8b4c962c
                         call             _jmp_addr_0x007dc8b0                     // 0x007e5476    e83574ffff
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000001       // 0x007e547b    c7460801000000
_jmp_addr_0x007e5482:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5482    685006e900
                         call             edi                                      // 0x007e5487    ffd7
                         {disp8} mov      dword ptr [esi + 0x0c], 0x00000000       // 0x007e5489    c7460c00000000
_jmp_addr_0x007e5490:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5490    685006e900
                         call             edi                                      // 0x007e5495    ffd7
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf078]   // 0x007e5497    a17850e800
                         push             0x0                                      // 0x007e549c    6a00
                         push             0x0                                      // 0x007e549e    6a00
                         push             0x00008007                               // 0x007e54a0    6807800000
                         push             eax                                      // 0x007e54a5    50
                         call             ebp                                      // 0x007e54a6    ffd5
_jmp_addr_0x007e54a8:    test             dword ptr [esi + 0x14], 0xfffffff8       // 0x007e54a8    f74614f8ffffff
                         {disp8} je       _jmp_addr_0x007e54cc                     // 0x007e54af    741b
                         push             0x8                                      // 0x007e54b1    6a08
                         push             0x1                                      // 0x007e54b3    6a01
                         mov.s            ecx, esi                                 // 0x007e54b5    8bce
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e54b7    e804030000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e54bc    685006e900
                         call             edi                                      // 0x007e54c1    ffd7
                         pop              edi                                      // 0x007e54c3    5f
                         pop              esi                                      // 0x007e54c4    5e
                         pop              ebp                                      // 0x007e54c5    5d
                         xor.s            eax, eax                                 // 0x007e54c6    33c0
                         pop              ebx                                      // 0x007e54c8    5b
                         ret              0x000c                                   // 0x007e54c9    c20c00
_jmp_addr_0x007e54cc:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e54cc    685006e900
                         call             ebx                                      // 0x007e54d1    ffd3
                         {disp8} mov      eax, dword ptr [esi + 0x0c]              // 0x007e54d3    8b460c
                         test             eax, eax                                 // 0x007e54d6    85c0
                         {disp8} je       _jmp_addr_0x007e551b                     // 0x007e54d8    7441
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e54da    685006e900
                         call             ebx                                      // 0x007e54df    ffd3
                         {disp8} mov      eax, dword ptr [esi + 0x08]              // 0x007e54e1    8b4608
                         test             eax, eax                                 // 0x007e54e4    85c0
                         {disp8} jne      _jmp_addr_0x007e550d                     // 0x007e54e6    7525
                         xor.s            eax, eax                                 // 0x007e54e8    33c0
                         {disp32} lea     ecx, dword ptr [esi + 0x000000a4]        // 0x007e54ea    8d8ea4000000
                         {disp8} mov      al, byte ptr [esi + 0x28]                // 0x007e54f0    8a4628
                         push             0x1                                      // 0x007e54f3    6a01
                         {disp32} lea     edx, dword ptr [esi + 0x00000084]        // 0x007e54f5    8d9684000000
                         push             ecx                                      // 0x007e54fb    51
                         {disp8} mov      ecx, dword ptr [esi + eax * 0x4 + 0x2c]  // 0x007e54fc    8b4c862c
                         push             edx                                      // 0x007e5500    52
                         call             _jmp_addr_0x007e52b0                     // 0x007e5501    e8aafdffff
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000001       // 0x007e5506    c7460801000000
_jmp_addr_0x007e550d:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e550d    685006e900
                         call             edi                                      // 0x007e5512    ffd7
                         {disp8} mov      dword ptr [esi + 0x0c], 0x00000000       // 0x007e5514    c7460c00000000
_jmp_addr_0x007e551b:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e551b    685006e900
                         call             edi                                      // 0x007e5520    ffd7
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf078]   // 0x007e5522    8b0d7850e800
                         push             0x0                                      // 0x007e5528    6a00
                         push             0x0                                      // 0x007e552a    6a00
                         push             0x00008007                               // 0x007e552c    6807800000
                         push             ecx                                      // 0x007e5531    51
                         call             ebp                                      // 0x007e5532    ffd5
_jmp_addr_0x007e5534:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5534    685006e900
                         call             edi                                      // 0x007e5539    ffd7
                         pop              edi                                      // 0x007e553b    5f
                         pop              esi                                      // 0x007e553c    5e
                         pop              ebp                                      // 0x007e553d    5d
                         xor.s            eax, eax                                 // 0x007e553e    33c0
                         pop              ebx                                      // 0x007e5540    5b
                         ret              0x000c                                   // 0x007e5541    c20c00
                         nop                                                       // 0x007e5544    90
                         nop                                                       // 0x007e5545    90
                         nop                                                       // 0x007e5546    90
                         nop                                                       // 0x007e5547    90
                         nop                                                       // 0x007e5548    90
                         nop                                                       // 0x007e5549    90
                         nop                                                       // 0x007e554a    90
                         nop                                                       // 0x007e554b    90
                         nop                                                       // 0x007e554c    90
                         nop                                                       // 0x007e554d    90
                         nop                                                       // 0x007e554e    90
                         nop                                                       // 0x007e554f    90
_jmp_addr_0x007e5550:    push             esi                                      // 0x007e5550    56
                         mov.s            esi, ecx                                 // 0x007e5551    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5553    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e5558    ff1580918a00
                         {disp8} mov      ax, word ptr [esp + 0x08]                // 0x007e555e    668b442408
                         {disp32} mov     dword ptr [esi + 0x000000cc], 0x00000001 // 0x007e5563    c786cc00000001000000
                         cmp              ax, -0x8000                              // 0x007e556d    663d0080
                         {disp8} jne      _jmp_addr_0x007e559a                     // 0x007e5571    7527
                         {disp32} mov     eax, dword ptr [esi + 0x000000bc]        // 0x007e5573    8b86bc000000
                         {disp32} mov     ecx, dword ptr [esi + 0x000000c0]        // 0x007e5579    8b8ec0000000
                         {disp32} mov     dword ptr [esi + 0x000000c4], eax        // 0x007e557f    8986c4000000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5585    685006e900
                         {disp32} mov     dword ptr [esi + 0x000000c8], ecx        // 0x007e558a    898ec8000000
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5590    ff1584918a00
                         pop              esi                                      // 0x007e5596    5e
                         ret              0x0008                                   // 0x007e5597    c20800
_jmp_addr_0x007e559a:    movsx            edx, ax                                  // 0x007e559a    0fbfd0
                         movsx            eax, word ptr [esp + 0x0c]               // 0x007e559d    0fbf44240c
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e55a2    685006e900
                         {disp32} mov     dword ptr [esi + 0x000000c4], edx        // 0x007e55a7    8996c4000000
                         {disp32} mov     dword ptr [esi + 0x000000c8], eax        // 0x007e55ad    8986c8000000
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e55b3    ff1584918a00
                         pop              esi                                      // 0x007e55b9    5e
                         ret              0x0008                                   // 0x007e55ba    c20800
                         nop                                                       // 0x007e55bd    90
                         nop                                                       // 0x007e55be    90
                         nop                                                       // 0x007e55bf    90
_jmp_addr_0x007e55c0:    push             ebx                                      // 0x007e55c0    53
                         push             esi                                      // 0x007e55c1    56
                         mov.s            esi, ecx                                 // 0x007e55c2    8bf1
                         push             edi                                      // 0x007e55c4    57
                         {disp8} mov      ecx, dword ptr [esi + 0x14]              // 0x007e55c5    8b4e14
                         test             ecx, 0xfffffff8                          // 0x007e55c8    f7c1f8ffffff
                         {disp32} je      _jmp_addr_0x007e57b5                     // 0x007e55ce    0f84e1010000
                         {disp32} mov     eax, dword ptr [esi + 0x000000cc]        // 0x007e55d4    8b86cc000000
                         test             eax, eax                                 // 0x007e55da    85c0
                         {disp8} jne      _jmp_addr_0x007e55f6                     // 0x007e55dc    7518
                         {disp32} mov     eax, dword ptr [esi + 0x000000bc]        // 0x007e55de    8b86bc000000
                         {disp32} mov     edx, dword ptr [esi + 0x000000c0]        // 0x007e55e4    8b96c0000000
                         {disp32} mov     dword ptr [esi + 0x000000c4], eax        // 0x007e55ea    8986c4000000
                         {disp32} mov     dword ptr [esi + 0x000000c8], edx        // 0x007e55f0    8996c8000000
_jmp_addr_0x007e55f6:    cmp              ecx, 0x40                                // 0x007e55f6    83f940
                         {disp8} jne      _jmp_addr_0x007e562b                     // 0x007e55f9    7530
                         {disp8} mov      eax, dword ptr [esi + 0x4c]              // 0x007e55fb    8b464c
                         test             eax, eax                                 // 0x007e55fe    85c0
                         {disp8} jne      _jmp_addr_0x007e562b                     // 0x007e5600    7529
                         {disp8} mov      eax, dword ptr [esi + 0x60]              // 0x007e5602    8b4660
                         {disp8} mov      edx, dword ptr [esi + 0x54]              // 0x007e5605    8b5654
                         {disp32} mov     ebx, dword ptr [esi + 0x000000b4]        // 0x007e5608    8b9eb4000000
                         mov              edi, dword ptr [edx + eax * 0x8]         // 0x007e560e    8b3cc2
                         lea              eax, dword ptr [edx + eax * 0x8]         // 0x007e5611    8d04c2
                         {disp32} mov     edx, dword ptr [esi + 0x000000c4]        // 0x007e5614    8b96c4000000
                         sub.s            edx, ebx                                 // 0x007e561a    2bd3
                         {disp8} mov      ebx, dword ptr [eax + 0x04]              // 0x007e561c    8b5804
                         sub.s            edx, edi                                 // 0x007e561f    2bd7
                         {disp32} mov     edi, dword ptr [esi + 0x000000c8]        // 0x007e5621    8bbec8000000
                         sub.s            edi, ebx                                 // 0x007e5627    2bfb
                         {disp8} jmp      _jmp_addr_0x007e563f                     // 0x007e5629    eb14
_jmp_addr_0x007e562b:    {disp32} mov     edx, dword ptr [esi + 0x000000c4]        // 0x007e562b    8b96c4000000
                         {disp32} mov     edi, dword ptr [esi + 0x000000b4]        // 0x007e5631    8bbeb4000000
                         sub.s            edx, edi                                 // 0x007e5637    2bd7
                         {disp32} mov     edi, dword ptr [esi + 0x000000c8]        // 0x007e5639    8bbec8000000
_jmp_addr_0x007e563f:    {disp32} mov     eax, dword ptr [esi + 0x000000b8]        // 0x007e563f    8b86b8000000
                         sub.s            edi, eax                                 // 0x007e5645    2bf8
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x007e5647    8b442410
                         test             eax, eax                                 // 0x007e564b    85c0
                         {disp8} jne      _jmp_addr_0x007e5671                     // 0x007e564d    7522
                         cmp              ecx, 0x08                                // 0x007e564f    83f908
                         {disp8} je       _jmp_addr_0x007e566e                     // 0x007e5652    741a
                         cmp              ecx, 0x20                                // 0x007e5654    83f920
                         {disp8} je       _jmp_addr_0x007e5669                     // 0x007e5657    7410
                         cmp              ecx, 0x40                                // 0x007e5659    83f940
                         {disp8} jne      _jmp_addr_0x007e5671                     // 0x007e565c    7513
                         {disp8} mov      eax, dword ptr [esi + 0x60]              // 0x007e565e    8b4660
                         {disp8} mov      ecx, dword ptr [esi + 0x58]              // 0x007e5661    8b4e58
                         mov              eax, dword ptr [ecx + eax * 0x4]         // 0x007e5664    8b0481
                         {disp8} jmp      _jmp_addr_0x007e5671                     // 0x007e5667    eb08
_jmp_addr_0x007e5669:    {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x007e5669    8b463c
                         {disp8} jmp      _jmp_addr_0x007e5671                     // 0x007e566c    eb03
_jmp_addr_0x007e566e:    {disp8} mov      eax, dword ptr [esi + 0x40]              // 0x007e566e    8b4640
_jmp_addr_0x007e5671:    {disp8} mov      cx, word ptr [eax + 0x16]                // 0x007e5671    668b4816
                         {disp8} mov      bx, word ptr [eax + 0x14]                // 0x007e5675    668b5814
                         and              ebx, 0x0000ffff                          // 0x007e5679    81e3ffff0000
                         and              ecx, 0x0000ffff                          // 0x007e567f    81e1ffff0000
                         {disp32} lea     eax, dword ptr [esi + 0x00000094]        // 0x007e5685    8d8694000000
                         {disp8} lea      ebx, dword ptr [ebx + edx * 0x1 + -0x01] // 0x007e568b    8d5c13ff
                         {disp8} lea      ecx, dword ptr [ecx + edi * 0x1 + -0x01] // 0x007e568f    8d4c39ff
                         mov              dword ptr [eax], edx                     // 0x007e5693    8910
                         {disp8} mov      dword ptr [eax + 0x04], edi              // 0x007e5695    897804
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x007e5698    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ecx              // 0x007e569b    89480c
                         mov              ecx, dword ptr [eax]                     // 0x007e569e    8b08
                         test             ecx, ecx                                 // 0x007e56a0    85c9
                         {disp8} jge      _jmp_addr_0x007e56ac                     // 0x007e56a2    7d08
                         mov              dword ptr [eax], 0x00000000              // 0x007e56a4    c70000000000
                         {disp8} jmp      _jmp_addr_0x007e56c0                     // 0x007e56aa    eb14
_jmp_addr_0x007e56ac:    {disp32} mov     ebx, dword ptr [data_bytes + 0x4bf058]   // 0x007e56ac    8b1d5850e800
                         and              ebx, 0x0000ffff                          // 0x007e56b2    81e3ffff0000
                         cmp.s            ecx, ebx                                 // 0x007e56b8    3bcb
                         {disp32} jge     _jmp_addr_0x007e5753                     // 0x007e56ba    0f8d93000000
_jmp_addr_0x007e56c0:    {disp8} mov      ecx, dword ptr [eax + 0x04]              // 0x007e56c0    8b4804
                         test             ecx, ecx                                 // 0x007e56c3    85c9
                         {disp8} jge      _jmp_addr_0x007e56d0                     // 0x007e56c5    7d09
                         {disp8} mov      dword ptr [eax + 0x04], 0x00000000       // 0x007e56c7    c7400400000000
                         {disp8} jmp      _jmp_addr_0x007e56dd                     // 0x007e56ce    eb0d
_jmp_addr_0x007e56d0:    xor.s            ebx, ebx                                 // 0x007e56d0    33db
                         {disp32} mov     bx, word ptr [data_bytes + 0x4bf05a]     // 0x007e56d2    668b1d5a50e800
                         cmp.s            ecx, ebx                                 // 0x007e56d9    3bcb
                         {disp8} jge      _jmp_addr_0x007e5753                     // 0x007e56db    7d76
_jmp_addr_0x007e56dd:    {disp8} mov      ebx, dword ptr [eax + 0x08]              // 0x007e56dd    8b5808
                         test             ebx, ebx                                 // 0x007e56e0    85db
                         {disp8} jl       _jmp_addr_0x007e5753                     // 0x007e56e2    7c6f
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf058]   // 0x007e56e4    8b0d5850e800
                         and              ecx, 0x0000ffff                          // 0x007e56ea    81e1ffff0000
                         cmp.s            ebx, ecx                                 // 0x007e56f0    3bd9
                         {disp8} jl       _jmp_addr_0x007e56f8                     // 0x007e56f2    7c04
                         dec              ecx                                      // 0x007e56f4    49
                         {disp8} mov      dword ptr [eax + 0x08], ecx              // 0x007e56f5    894808
_jmp_addr_0x007e56f8:    {disp8} mov      ebx, dword ptr [eax + 0x0c]              // 0x007e56f8    8b580c
                         test             ebx, ebx                                 // 0x007e56fb    85db
                         {disp8} jl       _jmp_addr_0x007e5753                     // 0x007e56fd    7c54
                         xor.s            ecx, ecx                                 // 0x007e56ff    33c9
                         {disp32} mov     cx, word ptr [data_bytes + 0x4bf05a]     // 0x007e5701    668b0d5a50e800
                         cmp.s            ebx, ecx                                 // 0x007e5708    3bd9
                         {disp8} jl       _jmp_addr_0x007e5710                     // 0x007e570a    7c04
                         dec              ecx                                      // 0x007e570c    49
                         {disp8} mov      dword ptr [eax + 0x0c], ecx              // 0x007e570d    89480c
_jmp_addr_0x007e5710:    mov              ebx, dword ptr [eax]                     // 0x007e5710    8b18
                         {disp8} lea      ecx, dword ptr [esi + 0x74]              // 0x007e5712    8d4e74
                         mov.s            esi, ecx                                 // 0x007e5715    8bf1
                         neg              edi                                      // 0x007e5717    f7df
                         mov              dword ptr [esi], ebx                     // 0x007e5719    891e
                         {disp8} mov      ebx, dword ptr [eax + 0x04]              // 0x007e571b    8b5804
                         neg              edx                                      // 0x007e571e    f7da
                         {disp8} mov      dword ptr [esi + 0x04], ebx              // 0x007e5720    895e04
                         {disp8} mov      ebx, dword ptr [eax + 0x08]              // 0x007e5723    8b5808
                         {disp8} mov      eax, dword ptr [eax + 0x0c]              // 0x007e5726    8b400c
                         {disp8} mov      dword ptr [esi + 0x08], ebx              // 0x007e5729    895e08
                         {disp8} mov      dword ptr [esi + 0x0c], eax              // 0x007e572c    89460c
                         mov              eax, dword ptr [ecx]                     // 0x007e572f    8b01
                         {disp8} mov      ebx, dword ptr [ecx + 0x04]              // 0x007e5731    8b5904
                         {disp8} mov      esi, dword ptr [ecx + 0x08]              // 0x007e5734    8b7108
                         add.s            eax, edx                                 // 0x007e5737    03c2
                         add.s            ebx, edi                                 // 0x007e5739    03df
                         mov              dword ptr [ecx], eax                     // 0x007e573b    8901
                         {disp8} mov      dword ptr [ecx + 0x04], ebx              // 0x007e573d    895904
                         {disp8} mov      eax, dword ptr [ecx + 0x0c]              // 0x007e5740    8b410c
                         add.s            edx, esi                                 // 0x007e5743    03d6
                         add.s            eax, edi                                 // 0x007e5745    03c7
                         pop              edi                                      // 0x007e5747    5f
                         pop              esi                                      // 0x007e5748    5e
                         {disp8} mov      dword ptr [ecx + 0x08], edx              // 0x007e5749    895108
                         {disp8} mov      dword ptr [ecx + 0x0c], eax              // 0x007e574c    89410c
                         pop              ebx                                      // 0x007e574f    5b
                         ret              0x0004                                   // 0x007e5750    c20400
_jmp_addr_0x007e5753:    {disp32} mov     edi, dword ptr [rdata_bytes + 0x180]     // 0x007e5753    8b3d80918a00
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5759    685006e900
                         call             edi                                      // 0x007e575e    ffd7
                         {disp8} mov      eax, dword ptr [esi + 0x0c]              // 0x007e5760    8b460c
                         {disp32} mov     ebx, dword ptr [rdata_bytes + 0x184]     // 0x007e5763    8b1d84918a00
                         test             eax, eax                                 // 0x007e5769    85c0
                         {disp8} je       _jmp_addr_0x007e57ae                     // 0x007e576b    7441
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e576d    685006e900
                         call             edi                                      // 0x007e5772    ffd7
                         {disp8} mov      eax, dword ptr [esi + 0x08]              // 0x007e5774    8b4608
                         test             eax, eax                                 // 0x007e5777    85c0
                         {disp8} jne      _jmp_addr_0x007e57a0                     // 0x007e5779    7525
                         xor.s            eax, eax                                 // 0x007e577b    33c0
                         {disp32} lea     ecx, dword ptr [esi + 0x000000a4]        // 0x007e577d    8d8ea4000000
                         {disp8} mov      al, byte ptr [esi + 0x28]                // 0x007e5783    8a4628
                         push             0x1                                      // 0x007e5786    6a01
                         {disp32} lea     edx, dword ptr [esi + 0x00000084]        // 0x007e5788    8d9684000000
                         push             ecx                                      // 0x007e578e    51
                         {disp8} mov      ecx, dword ptr [esi + eax * 0x4 + 0x2c]  // 0x007e578f    8b4c862c
                         push             edx                                      // 0x007e5793    52
                         call             _jmp_addr_0x007e52b0                     // 0x007e5794    e817fbffff
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000001       // 0x007e5799    c7460801000000
_jmp_addr_0x007e57a0:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e57a0    685006e900
                         call             ebx                                      // 0x007e57a5    ffd3
                         {disp8} mov      dword ptr [esi + 0x0c], 0x00000000       // 0x007e57a7    c7460c00000000
_jmp_addr_0x007e57ae:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e57ae    685006e900
                         call             ebx                                      // 0x007e57b3    ffd3
_jmp_addr_0x007e57b5:    pop              edi                                      // 0x007e57b5    5f
                         pop              esi                                      // 0x007e57b6    5e
                         pop              ebx                                      // 0x007e57b7    5b
                         ret              0x0004                                   // 0x007e57b8    c20400
                         nop                                                       // 0x007e57bb    90
                         nop                                                       // 0x007e57bc    90
                         nop                                                       // 0x007e57bd    90
                         nop                                                       // 0x007e57be    90
                         nop                                                       // 0x007e57bf    90
@Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16:    sub              esp, 0x10                                // 0x007e57c0    83ec10
                         push             ebx                                      // 0x007e57c3    53
                         push             esi                                      // 0x007e57c4    56
                         mov.s            esi, ecx                                 // 0x007e57c5    8bf1
                         test             dword ptr [esi + 0x14], 0xfffffff8       // 0x007e57c7    f74614f8ffffff
                         {disp8} jne      _jmp_addr_0x007e5816                     // 0x007e57ce    7546
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x007e57d0    8b4604
                         test             eax, eax                                 // 0x007e57d3    85c0
                         {disp32} je      _jmp_addr_0x007e5ae5                     // 0x007e57d5    0f840a030000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e57db    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e57e0    ff1580918a00
                         {disp32} mov     eax, dword ptr [esi + 0x00000164]        // 0x007e57e6    8b8664010000
                         {disp8} mov      ecx, dword ptr [esi + 0x60]              // 0x007e57ec    8b4e60
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x007e57ef    8b542420
                         push             eax                                      // 0x007e57f3    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000150]        // 0x007e57f4    8b8650010000
                         push             ecx                                      // 0x007e57fa    51
                         push             edx                                      // 0x007e57fb    52
                         push             eax                                      // 0x007e57fc    50
                         call             dword ptr [esi + 4]                      // 0x007e57fd    ff5604
                         add              esp, 0x10                                // 0x007e5800    83c410
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5803    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5808    ff1584918a00
                         pop              esi                                      // 0x007e580e    5e
                         pop              ebx                                      // 0x007e580f    5b
                         add              esp, 0x10                                // 0x007e5810    83c410
                         ret              0x0008                                   // 0x007e5813    c20800
_jmp_addr_0x007e5816:    {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x007e5816    8b4c2420
                         {disp8} mov      eax, dword ptr [esi + 0x24]              // 0x007e581a    8b4624
                         test             ecx, eax                                 // 0x007e581d    85c1
                         {disp32} je      _jmp_addr_0x007e5ae5                     // 0x007e581f    0f84c0020000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5825    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e582a    ff1580918a00
                         {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x007e5830    8b4c2420
                         xor.s            ebx, ebx                                 // 0x007e5834    33db
                         cmp              ecx, 0x02                                // 0x007e5836    83f902
                         {disp8} jne      _jmp_addr_0x007e5855                     // 0x007e5839    751a
                         {disp8} mov      eax, dword ptr [esi + 0x6c]              // 0x007e583b    8b466c
                         test             eax, eax                                 // 0x007e583e    85c0
                         {disp8} jne      _jmp_addr_0x007e5855                     // 0x007e5840    7513
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5842    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5847    ff1584918a00
                         pop              esi                                      // 0x007e584d    5e
                         pop              ebx                                      // 0x007e584e    5b
                         add              esp, 0x10                                // 0x007e584f    83c410
                         ret              0x0008                                   // 0x007e5852    c20800
_jmp_addr_0x007e5855:    {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x007e5855    8b4604
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x007e5858    8b54241c
                         push             ebp                                      // 0x007e585c    55
                         push             edi                                      // 0x007e585d    57
                         test             eax, eax                                 // 0x007e585e    85c0
                         mov              dword ptr [esi], edx                     // 0x007e5860    8916
                         {disp8} je       _jmp_addr_0x007e5885                     // 0x007e5862    7421
                         test             cl, 0x47                                 // 0x007e5864    f6c147
                         {disp8} je       _jmp_addr_0x007e5885                     // 0x007e5867    741c
                         {disp32} mov     edx, dword ptr [esi + 0x00000164]        // 0x007e5869    8b9664010000
                         push             edx                                      // 0x007e586f    52
                         {disp8} mov      edx, dword ptr [esi + 0x60]              // 0x007e5870    8b5660
                         push             edx                                      // 0x007e5873    52
                         push             ecx                                      // 0x007e5874    51
                         {disp32} mov     ecx, dword ptr [esi + 0x00000150]        // 0x007e5875    8b8e50010000
                         push             ecx                                      // 0x007e587b    51
                         call             eax                                      // 0x007e587c    ffd0
                         add              esp, 0x10                                // 0x007e587e    83c410
                         mov.s            edi, eax                                 // 0x007e5881    8bf8
                         {disp8} jmp      _jmp_addr_0x007e58a2                     // 0x007e5883    eb1d
_jmp_addr_0x007e5885:    test             ecx, 0x000003bd                          // 0x007e5885    f7c1bd030000
                         {disp8} jne      _jmp_addr_0x007e58a0                     // 0x007e588b    7513
                         test             cl, 0x02                                 // 0x007e588d    f6c102
                         {disp8} je       _jmp_addr_0x007e5899                     // 0x007e5890    7407
                         {disp8} mov      eax, dword ptr [esi + 0x6c]              // 0x007e5892    8b466c
                         test             eax, eax                                 // 0x007e5895    85c0
                         {disp8} jne      _jmp_addr_0x007e58a0                     // 0x007e5897    7507
_jmp_addr_0x007e5899:    mov              edi, 0x00000001                          // 0x007e5899    bf01000000
                         {disp8} jmp      _jmp_addr_0x007e58a2                     // 0x007e589e    eb02
_jmp_addr_0x007e58a0:    xor.s            edi, edi                                 // 0x007e58a0    33ff
_jmp_addr_0x007e58a2:    {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x007e58a2    8b4614
                         cmp              eax, 0x08                                // 0x007e58a5    83f808
                         {disp8} je       _jmp_addr_0x007e58d5                     // 0x007e58a8    742b
                         cmp              eax, 0x20                                // 0x007e58aa    83f820
                         {disp8} je       _jmp_addr_0x007e58cd                     // 0x007e58ad    741e
                         cmp              eax, 0x40                                // 0x007e58af    83f840
                         {disp8} jne      _jmp_addr_0x007e58da                     // 0x007e58b2    7526
                         {disp8} mov      eax, dword ptr [esi + 0x60]              // 0x007e58b4    8b4660
                         {disp8} mov      edx, dword ptr [esi + 0x58]              // 0x007e58b7    8b5658
                         {disp8} mov      ecx, dword ptr [esi + 0x4c]              // 0x007e58ba    8b4e4c
                         mov              ebp, dword ptr [edx + eax * 0x4]         // 0x007e58bd    8b2c82
                         cmp              ecx, 0x01                                // 0x007e58c0    83f901
                         {disp8} jne      _jmp_addr_0x007e58de                     // 0x007e58c3    7519
                         {disp8} mov      ecx, dword ptr [esi + 0x50]              // 0x007e58c5    8b4e50
                         lea              ebx, dword ptr [ecx + eax * 0x8]         // 0x007e58c8    8d1cc1
                         {disp8} jmp      _jmp_addr_0x007e58de                     // 0x007e58cb    eb11
_jmp_addr_0x007e58cd:    {disp8} mov      ebp, dword ptr [esi + 0x3c]              // 0x007e58cd    8b6e3c
                         {disp8} mov      ebx, dword ptr [esi + 0x38]              // 0x007e58d0    8b5e38
                         {disp8} jmp      _jmp_addr_0x007e58de                     // 0x007e58d3    eb09
_jmp_addr_0x007e58d5:    {disp8} mov      ebp, dword ptr [esi + 0x40]              // 0x007e58d5    8b6e40
                         {disp8} jmp      _jmp_addr_0x007e58de                     // 0x007e58d8    eb04
_jmp_addr_0x007e58da:    {disp8} mov      ebp, dword ptr [esp + 0x28]              // 0x007e58da    8b6c2428
_jmp_addr_0x007e58de:    push             ebp                                      // 0x007e58de    55
                         mov.s            ecx, esi                                 // 0x007e58df    8bce
                         call             _jmp_addr_0x007e55c0                     // 0x007e58e1    e8dafcffff
                         {disp8} mov      eax, dword ptr [esi + 0x0c]              // 0x007e58e6    8b460c
                         test             eax, eax                                 // 0x007e58e9    85c0
                         {disp32} je      _jmp_addr_0x007e5ad8                     // 0x007e58eb    0f84e7010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf054]   // 0x007e58f1    a15450e800
                         test             eax, eax                                 // 0x007e58f6    85c0
                         {disp32} je      _jmp_addr_0x007e5ad8                     // 0x007e58f8    0f84da010000
                         {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x007e58fe    8b4614
                         test             eax, 0xfffffff8                          // 0x007e5901    a9f8ffffff
                         {disp32} je      _jmp_addr_0x007e5ad8                     // 0x007e5906    0f84cc010000
                         test             edi, edi                                 // 0x007e590c    85ff
                         {disp32} jne     _jmp_addr_0x007e5ad8                     // 0x007e590e    0f85c4010000
                         cmp              eax, 0x20                                // 0x007e5914    83f820
                         {disp8} je       _jmp_addr_0x007e591e                     // 0x007e5917    7405
                         cmp              eax, 0x40                                // 0x007e5919    83f840
                         {disp8} jne      _jmp_addr_0x007e598a                     // 0x007e591c    756c
_jmp_addr_0x007e591e:    test             byte ptr [esi + 0x1c], 0x0e              // 0x007e591e    f6461c0e
                         {disp8} jne      _jmp_addr_0x007e592b                     // 0x007e5922    7507
                         cmp              word ptr [esi + 0x20], 0x00              // 0x007e5924    66837e2000
                         {disp8} je       _jmp_addr_0x007e598a                     // 0x007e5929    745f
_jmp_addr_0x007e592b:    {disp8} mov      edx, dword ptr [esi + 0x34]              // 0x007e592b    8b5634
                         push             0x0                                      // 0x007e592e    6a00
                         push             edx                                      // 0x007e5930    52
                         mov.s            ecx, esi                                 // 0x007e5931    8bce
                         call             _jmp_addr_0x007e6070                     // 0x007e5933    e838070000
                         {disp8} mov      edi, dword ptr [esi + 0x34]              // 0x007e5938    8b7e34
                         mov.s            ecx, edi                                 // 0x007e593b    8bcf
                         call             _jmp_addr_0x007e6450                     // 0x007e593d    e80e0b0000
                         mov.s            ecx, edi                                 // 0x007e5942    8bcf
                         call             _jmp_addr_0x007e64a0                     // 0x007e5944    e8570b0000
                         {disp8} mov      eax, dword ptr [esi + 0x34]              // 0x007e5949    8b4634
                         cmp              byte ptr [data_bytes + 0x4bf064], 0x10   // 0x007e594c    803d6450e80010
                         {disp8} mov      edx, dword ptr [esi + 0x1c]              // 0x007e5953    8b561c
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]              // 0x007e5956    8b480c
                         {disp8} mov      eax, dword ptr [eax + 0x18]              // 0x007e5959    8b4018
                         push             ecx                                      // 0x007e595c    51
                         push             eax                                      // 0x007e595d    50
                         {disp8} jne      _jmp_addr_0x007e5977                     // 0x007e595e    7517
                         {disp8} mov      ax, word ptr [esi + 0x20]                // 0x007e5960    668b4620
                         mov              ecx, 0x00e8586c                          // 0x007e5964    b96c58e800
                         push             eax                                      // 0x007e5969    50
                         push             edx                                      // 0x007e596a    52
                         push             ebx                                      // 0x007e596b    53
                         push             0x0                                      // 0x007e596c    6a00
                         push             0x0                                      // 0x007e596e    6a00
                         call             _jmp_addr_0x007eb870                     // 0x007e5970    e8fb5e0000
                         {disp8} jmp      _jmp_addr_0x007e5987                     // 0x007e5975    eb10
_jmp_addr_0x007e5977:    push             edx                                      // 0x007e5977    52
                         push             ebx                                      // 0x007e5978    53
                         push             0x0                                      // 0x007e5979    6a00
                         push             0x0                                      // 0x007e597b    6a00
                         mov              ecx, 0x00e8586c                          // 0x007e597d    b96c58e800
                         call             _jmp_addr_0x007eadb0                     // 0x007e5982    e829540000
_jmp_addr_0x007e5987:    {disp8} mov      ebp, dword ptr [esi + 0x34]              // 0x007e5987    8b6e34
_jmp_addr_0x007e598a:    {disp8} mov      bl, byte ptr [esi + 0x28]                // 0x007e598a    8a5e28
                         xor.s            ecx, ecx                                 // 0x007e598d    33c9
                         test             bl, bl                                   // 0x007e598f    84db
                         sete             cl                                       // 0x007e5991    0f94c1
                         push             ebp                                      // 0x007e5994    55
                         {disp8} mov      edx, dword ptr [esi + ecx * 0x4 + 0x2c]  // 0x007e5995    8b548e2c
                         mov.s            ecx, esi                                 // 0x007e5999    8bce
                         push             edx                                      // 0x007e599b    52
                         call             _jmp_addr_0x007e6070                     // 0x007e599c    e8cf060000
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e59a1    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e59a6    ff1580918a00
                         {disp8} mov      eax, dword ptr [esi + 0x08]              // 0x007e59ac    8b4608
                         test             eax, eax                                 // 0x007e59af    85c0
                         {disp8} jne      _jmp_addr_0x007e59fd                     // 0x007e59b1    754a
                         {disp32} mov     ecx, dword ptr [esi + 0x000000a4]        // 0x007e59b3    8b8ea4000000
                         {disp32} mov     edx, dword ptr [esi + 0x000000a8]        // 0x007e59b9    8b96a8000000
                         xor.s            eax, eax                                 // 0x007e59bf    33c0
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x007e59c1    894c2410
                         {disp8} mov      al, byte ptr [esi + 0x28]                // 0x007e59c5    8a4628
                         {disp8} lea      ecx, dword ptr [esp + 0x10]              // 0x007e59c8    8d4c2410
                         {disp8} mov      dword ptr [esp + 0x14], edx              // 0x007e59cc    89542414
                         {disp8} mov      edi, dword ptr [esi + eax * 0x4 + 0x2c]  // 0x007e59d0    8b7c862c
                         call             _jmp_addr_0x007e5af0                     // 0x007e59d4    e817010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf080]   // 0x007e59d9    a18050e800
                         push             0x0                                      // 0x007e59de    6a00
                         push             0x0                                      // 0x007e59e0    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x18]              // 0x007e59e2    8d4c2418
                         push             eax                                      // 0x007e59e6    50
                         {disp32} lea     edx, dword ptr [esi + 0x00000084]        // 0x007e59e7    8d9684000000
                         push             ecx                                      // 0x007e59ed    51
                         push             edx                                      // 0x007e59ee    52
                         mov.s            ecx, edi                                 // 0x007e59ef    8bcf
                         call             _jmp_addr_0x007e67e0                     // 0x007e59f1    e8ea0d0000
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000001       // 0x007e59f6    c7460801000000
_jmp_addr_0x007e59fd:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e59fd    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5a02    ff1584918a00
                         {disp32} mov     eax, dword ptr [esi + 0x00000094]        // 0x007e5a08    8b8694000000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000098]        // 0x007e5a0e    8b8e98000000
                         {disp8} mov      dword ptr [esp + 0x10], eax              // 0x007e5a14    89442410
                         {disp8} mov      eax, dword ptr [esp + 0x24]              // 0x007e5a18    8b442424
                         cmp              eax, 0x01                                // 0x007e5a1c    83f801
                         {disp8} mov      dword ptr [esp + 0x14], ecx              // 0x007e5a1f    894c2414
                         {disp8} jne      _jmp_addr_0x007e5a53                     // 0x007e5a23    752e
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf0a8]   // 0x007e5a25    a1a850e800
                         {disp8} mov      edx, dword ptr [esp + 0x10]              // 0x007e5a2a    8b542410
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf0ac]   // 0x007e5a2e    8b0dac50e800
                         {disp8} mov      dword ptr [esp + 0x18], eax              // 0x007e5a34    89442418
                         add.s            edx, eax                                 // 0x007e5a38    03d0
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x007e5a3a    8b442414
                         add.s            eax, ecx                                 // 0x007e5a3e    03c1
                         {disp8} mov      dword ptr [esp + 0x1c], ecx              // 0x007e5a40    894c241c
                         {disp8} mov      dword ptr [esp + 0x14], eax              // 0x007e5a44    89442414
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf080]   // 0x007e5a48    a18050e800
                         {disp8} mov      dword ptr [esp + 0x10], edx              // 0x007e5a4d    89542410
                         {disp8} jmp      _jmp_addr_0x007e5a58                     // 0x007e5a51    eb05
_jmp_addr_0x007e5a53:    {disp32} mov     eax, dword ptr [data_bytes + 0x4bf084]   // 0x007e5a53    a18450e800
_jmp_addr_0x007e5a58:    push             0x0                                      // 0x007e5a58    6a00
                         push             0x0                                      // 0x007e5a5a    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x18]              // 0x007e5a5c    8d542418
                         {disp8} lea      edi, dword ptr [esi + 0x74]              // 0x007e5a60    8d7e74
                         push             eax                                      // 0x007e5a63    50
                         push             edx                                      // 0x007e5a64    52
                         push             edi                                      // 0x007e5a65    57
                         mov.s            ecx, ebp                                 // 0x007e5a66    8bcd
                         call             _jmp_addr_0x007e67e0                     // 0x007e5a68    e8730d0000
                         mov              ecx, dword ptr [edi]                     // 0x007e5a6d    8b0f
                         {disp8} mov      edx, dword ptr [edi + 0x04]              // 0x007e5a6f    8b5704
                         {disp32} lea     eax, dword ptr [esi + 0x00000084]        // 0x007e5a72    8d8684000000
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000000       // 0x007e5a78    c7460800000000
                         mov              dword ptr [eax], ecx                     // 0x007e5a7f    8908
                         {disp8} mov      ecx, dword ptr [edi + 0x08]              // 0x007e5a81    8b4f08
                         {disp8} mov      dword ptr [eax + 0x04], edx              // 0x007e5a84    895004
                         {disp8} mov      edx, dword ptr [edi + 0x0c]              // 0x007e5a87    8b570c
                         {disp8} mov      dword ptr [eax + 0x08], ecx              // 0x007e5a8a    894808
                         {disp32} mov     ecx, dword ptr [esi + 0x00000094]        // 0x007e5a8d    8b8e94000000
                         {disp8} mov      dword ptr [eax + 0x0c], edx              // 0x007e5a93    89500c
                         {disp32} mov     edx, dword ptr [esi + 0x00000098]        // 0x007e5a96    8b9698000000
                         {disp32} lea     eax, dword ptr [esi + 0x000000a4]        // 0x007e5a9c    8d86a4000000
                         {disp32} mov     dword ptr [esi + 0x000000a4], ecx        // 0x007e5aa2    898ea4000000
                         {disp32} mov     ecx, dword ptr [esi + 0x0000009c]        // 0x007e5aa8    8b8e9c000000
                         {disp8} mov      dword ptr [eax + 0x04], edx              // 0x007e5aae    895004
                         {disp32} mov     edx, dword ptr [esi + 0x000000a0]        // 0x007e5ab1    8b96a0000000
                         {disp8} mov      dword ptr [eax + 0x08], ecx              // 0x007e5ab7    894808
                         {disp8} mov      cl, byte ptr [esi + 0x28]                // 0x007e5aba    8a4e28
                         test             cl, cl                                   // 0x007e5abd    84c9
                         {disp8} mov      dword ptr [eax + 0x0c], edx              // 0x007e5abf    89500c
                         sete             al                                       // 0x007e5ac2    0f94c0
                         {disp8} mov      byte ptr [esi + 0x28], al                // 0x007e5ac5    884628
                         {disp8} mov      eax, dword ptr [esp + 0x28]              // 0x007e5ac8    8b442428
                         cmp              eax, 0x02                                // 0x007e5acc    83f802
                         {disp8} jne      _jmp_addr_0x007e5ad8                     // 0x007e5acf    7507
                         mov.s            ecx, esi                                 // 0x007e5ad1    8bce
                         call             _jmp_addr_0x007e5b30                     // 0x007e5ad3    e858000000
_jmp_addr_0x007e5ad8:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5ad8    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5add    ff1584918a00
                         pop              edi                                      // 0x007e5ae3    5f
                         pop              ebp                                      // 0x007e5ae4    5d
_jmp_addr_0x007e5ae5:    pop              esi                                      // 0x007e5ae5    5e
                         pop              ebx                                      // 0x007e5ae6    5b
                         add              esp, 0x10                                // 0x007e5ae7    83c410
                         ret              0x0008                                   // 0x007e5aea    c20800
                         nop                                                       // 0x007e5aed    90
                         nop                                                       // 0x007e5aee    90
                         nop                                                       // 0x007e5aef    90
_jmp_addr_0x007e5af0:    sub              esp, 0x08                                // 0x007e5af0    83ec08
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf0a8]   // 0x007e5af3    a1a850e800
                         {disp32} mov     edx, dword ptr [data_bytes + 0x4bf0ac]   // 0x007e5af8    8b15ac50e800
                         push             esi                                      // 0x007e5afe    56
                         mov              esi, dword ptr [ecx]                     // 0x007e5aff    8b31
                         {disp8} mov      dword ptr [esp + 0x04], eax              // 0x007e5b01    89442404
                         add.s            esi, eax                                 // 0x007e5b05    03f0
                         {disp8} mov      eax, dword ptr [ecx + 0x04]              // 0x007e5b07    8b4104
                         mov              dword ptr [ecx], esi                     // 0x007e5b0a    8931
                         add.s            eax, edx                                 // 0x007e5b0c    03c2
                         {disp8} mov      dword ptr [esp + 0x08], edx              // 0x007e5b0e    89542408
                         {disp8} mov      dword ptr [ecx + 0x04], eax              // 0x007e5b12    894104
                         pop              esi                                      // 0x007e5b15    5e
                         add              esp, 0x08                                // 0x007e5b16    83c408
                         ret                                                       // 0x007e5b19    c3
                         nop                                                       // 0x007e5b1a    90
                         nop                                                       // 0x007e5b1b    90
                         nop                                                       // 0x007e5b1c    90
                         nop                                                       // 0x007e5b1d    90
                         nop                                                       // 0x007e5b1e    90
                         nop                                                       // 0x007e5b1f    90
_jmp_addr_0x007e5b20:    {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x007e5b20    8b442404
                         {disp8} mov      dword ptr [ecx + 0x60], eax              // 0x007e5b24    894160
                         ret              0x0004                                   // 0x007e5b27    c20400
                         nop                                                       // 0x007e5b2a    90
                         nop                                                       // 0x007e5b2b    90
                         nop                                                       // 0x007e5b2c    90
                         nop                                                       // 0x007e5b2d    90
                         nop                                                       // 0x007e5b2e    90
                         nop                                                       // 0x007e5b2f    90
_jmp_addr_0x007e5b30:    {disp8} mov      eax, dword ptr [ecx + 0x6c]              // 0x007e5b30    8b416c
                         push             esi                                      // 0x007e5b33    56
                         dec              eax                                      // 0x007e5b34    48
                         {disp8} je       _jmp_addr_0x007e5bb0                     // 0x007e5b35    7479
                         dec              eax                                      // 0x007e5b37    48
                         {disp8} je       _jmp_addr_0x007e5b68                     // 0x007e5b38    742e
                         dec              eax                                      // 0x007e5b3a    48
                         {disp32} jne     _jmp_addr_0x007e5be5                     // 0x007e5b3b    0f85a4000000
                         {disp8} mov      si, word ptr [ecx + 0x5c]                // 0x007e5b41    668b715c
                         {disp8} mov      eax, dword ptr [ecx + 0x60]              // 0x007e5b45    8b4160
                         test             si, si                                   // 0x007e5b48    6685f6
                         {disp8} je       _jmp_addr_0x007e5b5d                     // 0x007e5b4b    7410
                         inc              eax                                      // 0x007e5b4d    40
                         and              esi, 0x0000ffff                          // 0x007e5b4e    81e6ffff0000
                         xor.s            edx, edx                                 // 0x007e5b54    33d2
                         div              esi                                      // 0x007e5b56    f7f6
                         pop              esi                                      // 0x007e5b58    5e
                         {disp8} mov      dword ptr [ecx + 0x60], edx              // 0x007e5b59    895160
                         ret                                                       // 0x007e5b5c    c3
_jmp_addr_0x007e5b5d:    inc              eax                                      // 0x007e5b5d    40
                         xor.s            edx, edx                                 // 0x007e5b5e    33d2
                         div              dword ptr [ecx + 0x64]                   // 0x007e5b60    f77164
                         pop              esi                                      // 0x007e5b63    5e
                         {disp8} mov      dword ptr [ecx + 0x60], edx              // 0x007e5b64    895160
                         ret                                                       // 0x007e5b67    c3
_jmp_addr_0x007e5b68:    {disp8} mov      eax, dword ptr [ecx + 0x70]              // 0x007e5b68    8b4170
                         test             eax, eax                                 // 0x007e5b6b    85c0
                         {disp8} mov      eax, dword ptr [ecx + 0x60]              // 0x007e5b6d    8b4160
                         {disp8} jne      _jmp_addr_0x007e5ba6                     // 0x007e5b70    7534
                         {disp8} mov      dx, word ptr [ecx + 0x64]                // 0x007e5b72    668b5164
                         dec              dx                                       // 0x007e5b76    664a
                         and              edx, 0x0000ffff                          // 0x007e5b78    81e2ffff0000
                         cmp.s            eax, edx                                 // 0x007e5b7e    3bc2
                         {disp8} jae      _jmp_addr_0x007e5b88                     // 0x007e5b80    7306
                         inc              eax                                      // 0x007e5b82    40
                         pop              esi                                      // 0x007e5b83    5e
                         {disp8} mov      dword ptr [ecx + 0x60], eax              // 0x007e5b84    894160
                         ret                                                       // 0x007e5b87    c3
_jmp_addr_0x007e5b88:    push             ebx                                      // 0x007e5b88    53
                         {disp32} mov     bl, byte ptr [ecx + 0x00000100]          // 0x007e5b89    8a9900010000
                         mov              edx, 0x00000001                          // 0x007e5b8f    ba01000000
                         test             dl, bl                                   // 0x007e5b94    84da
                         pop              ebx                                      // 0x007e5b96    5b
                         {disp8} jne      _jmp_addr_0x007e5be5                     // 0x007e5b97    754c
                         test             eax, eax                                 // 0x007e5b99    85c0
                         {disp8} je       _jmp_addr_0x007e5ba1                     // 0x007e5b9b    7404
                         dec              eax                                      // 0x007e5b9d    48
                         {disp8} mov      dword ptr [ecx + 0x60], eax              // 0x007e5b9e    894160
_jmp_addr_0x007e5ba1:    {disp8} mov      dword ptr [ecx + 0x70], edx              // 0x007e5ba1    895170
                         pop              esi                                      // 0x007e5ba4    5e
                         ret                                                       // 0x007e5ba5    c3
_jmp_addr_0x007e5ba6:    test             eax, eax                                 // 0x007e5ba6    85c0
                         {disp8} je       _jmp_addr_0x007e5bd0                     // 0x007e5ba8    7426
                         dec              eax                                      // 0x007e5baa    48
                         pop              esi                                      // 0x007e5bab    5e
                         {disp8} mov      dword ptr [ecx + 0x60], eax              // 0x007e5bac    894160
                         ret                                                       // 0x007e5baf    c3
_jmp_addr_0x007e5bb0:    {disp8} mov      dx, word ptr [ecx + 0x64]                // 0x007e5bb0    668b5164
                         {disp8} mov      eax, dword ptr [ecx + 0x60]              // 0x007e5bb4    8b4160
                         dec              dx                                       // 0x007e5bb7    664a
                         and              edx, 0x0000ffff                          // 0x007e5bb9    81e2ffff0000
                         cmp.s            eax, edx                                 // 0x007e5bbf    3bc2
                         {disp8} jae      _jmp_addr_0x007e5bc9                     // 0x007e5bc1    7306
                         inc              eax                                      // 0x007e5bc3    40
                         pop              esi                                      // 0x007e5bc4    5e
                         {disp8} mov      dword ptr [ecx + 0x60], eax              // 0x007e5bc5    894160
                         ret                                                       // 0x007e5bc8    c3
_jmp_addr_0x007e5bc9:    {disp8} mov      dword ptr [ecx + 0x60], 0x00000000       // 0x007e5bc9    c7416000000000
_jmp_addr_0x007e5bd0:    {disp32} mov     eax, dword ptr [data_bytes + 0x4bf078]   // 0x007e5bd0    a17850e800
                         push             0x0                                      // 0x007e5bd5    6a00
                         push             0x0                                      // 0x007e5bd7    6a00
                         push             0x00008006                               // 0x007e5bd9    6806800000
                         push             eax                                      // 0x007e5bde    50
                         call             dword ptr [__imp__PostMessageA@4]        // 0x007e5bdf    ff15fc978a00
_jmp_addr_0x007e5be5:    pop              esi                                      // 0x007e5be5    5e
                         ret                                                       // 0x007e5be6    c3
                         nop                                                       // 0x007e5be7    90
                         nop                                                       // 0x007e5be8    90
                         nop                                                       // 0x007e5be9    90
                         nop                                                       // 0x007e5bea    90
                         nop                                                       // 0x007e5beb    90
                         nop                                                       // 0x007e5bec    90
                         nop                                                       // 0x007e5bed    90
                         nop                                                       // 0x007e5bee    90
                         nop                                                       // 0x007e5bef    90
                         {disp32} mov     eax, fs:[0x0]                            // 0x007e5bf0    64a100000000
                         push             -0x1                                     // 0x007e5bf6    6aff
                         push             0x008a7ace                               // 0x007e5bf8    68ce7a8a00
                         push             eax                                      // 0x007e5bfd    50
                         {disp32} mov     fs:[0x0], esp                            // 0x007e5bfe    64892500000000
                         push             ebx                                      // 0x007e5c05    53
                         push             ebp                                      // 0x007e5c06    55
                         push             esi                                      // 0x007e5c07    56
                         push             edi                                      // 0x007e5c08    57
                         mov.s            esi, ecx                                 // 0x007e5c09    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5c0b    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]// 0x007e5c10    ff1580918a00
                         {disp8} mov      eax, dword ptr [esi + 0x58]              // 0x007e5c16    8b4658
                         xor.s            ebx, ebx                                 // 0x007e5c19    33db
                         cmp.s            eax, ebx                                 // 0x007e5c1b    3bc3
                         {disp8} je       _jmp_addr_0x007e5c66                     // 0x007e5c1d    7447
                         xor.s            ebp, ebp                                 // 0x007e5c1f    33ed
                         cmp              word ptr [esi + 0x5c], bx                // 0x007e5c21    66395e5c
                         {disp8} jbe      _jmp_addr_0x007e5c51                     // 0x007e5c25    762a
_jmp_addr_0x007e5c27:    {disp8} mov      ecx, dword ptr [esi + 0x58]              // 0x007e5c27    8b4e58
                         mov.s            eax, ebp                                 // 0x007e5c2a    8bc5
                         and              eax, 0x0000ffff                          // 0x007e5c2c    25ffff0000
                         mov              edi, dword ptr [ecx + eax * 0x4]         // 0x007e5c31    8b3c81
                         cmp.s            edi, ebx                                 // 0x007e5c34    3bfb
                         {disp8} je       _jmp_addr_0x007e5c4a                     // 0x007e5c36    7412
                         mov.s            ecx, edi                                 // 0x007e5c38    8bcf
                         call             _jmp_addr_0x007e67c0                     // 0x007e5c3a    e8810b0000
                         push             edi                                      // 0x007e5c3f    57
                         mov              ecx, 0x00e85964                          // 0x007e5c40    b96459e800
                         call             _jmp_addr_0x007e6a30                     // 0x007e5c45    e8e60d0000
_jmp_addr_0x007e5c4a:    inc              ebp                                      // 0x007e5c4a    45
                         cmp              bp, word ptr [esi + 0x5c]                // 0x007e5c4b    663b6e5c
                         .byte            0x72, 0xd6// {disp8} jb _jmp_addr_0x007e5c27 // 0x007e5c4f    72d6
_jmp_addr_0x007e5c51:    {disp8} mov      edx, dword ptr [esi + 0x58]              // 0x007e5c51    8b5658
                         mov              ecx, 0x00e85964                          // 0x007e5c54    b96459e800
                         push             edx                                      // 0x007e5c59    52
                         call             _jmp_addr_0x007e6a30                     // 0x007e5c5a    e8d10d0000
                         {disp8} mov      dword ptr [esi + 0x58], ebx              // 0x007e5c5f    895e58
                         {disp8} mov      word ptr [esi + 0x5c], bx                // 0x007e5c62    66895e5c
_jmp_addr_0x007e5c66:    {disp8} mov      eax, dword ptr [esi + 0x54]              // 0x007e5c66    8b4654
                         cmp.s            eax, ebx                                 // 0x007e5c69    3bc3
                         {disp8} je       _jmp_addr_0x007e5c79                     // 0x007e5c6b    740c
                         push             eax                                      // 0x007e5c6d    50
                         call             ??3@YAXPAX@Z                             // 0x007e5c6e    e82592fcff
                         add              esp, 0x04                                // 0x007e5c73    83c404
                         {disp8} mov      dword ptr [esi + 0x54], ebx              // 0x007e5c76    895e54
_jmp_addr_0x007e5c79:    {disp8} mov      ecx, dword ptr [esp + 0x24]              // 0x007e5c79    8b4c2424
                         {disp8} mov      dword ptr [esi + 0x50], ebx              // 0x007e5c7d    895e50
                         cmp.s            ecx, ebx                                 // 0x007e5c80    3bcb
                         {disp32} je      _jmp_addr_0x007e5e35                     // 0x007e5c82    0f84ad010000
                         {disp8} mov      eax, dword ptr [esp + 0x20]              // 0x007e5c88    8b442420
                         sub.s            eax, ebx                                 // 0x007e5c8c    2bc3
                         {disp32} je      _jmp_addr_0x007e5d30                     // 0x007e5c8e    0f849c000000
                         dec              eax                                      // 0x007e5c94    48
                         {disp32} jne     _jmp_addr_0x007e5ddf                     // 0x007e5c95    0f8544010000
                         {disp8} mov      dword ptr [esi + 0x4c], 0x00000001       // 0x007e5c9b    c7464c01000000
                         {disp8} mov      eax, dword ptr [ecx + 0x04]              // 0x007e5ca2    8b4104
                         {disp8} mov      dword ptr [esi + 0x50], eax              // 0x007e5ca5    894650
                         {disp8} mov      ax, word ptr [ecx + 0x08]                // 0x007e5ca8    668b4108
                         {disp8} mov      word ptr [esi + 0x5c], ax                // 0x007e5cac    6689465c
                         and              eax, 0x0000ffff                          // 0x007e5cb0    25ffff0000
                         shl              eax, 2                                   // 0x007e5cb5    c1e002
                         push             eax                                      // 0x007e5cb8    50
                         mov              ecx, 0x00e85964                          // 0x007e5cb9    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5cbe    e80d0d0000
                         xor.s            edi, edi                                 // 0x007e5cc3    33ff
                         cmp              word ptr [esi + 0x5c], bx                // 0x007e5cc5    66395e5c
                         {disp8} mov      dword ptr [esi + 0x58], eax              // 0x007e5cc9    894658
                         {disp32} jbe     _jmp_addr_0x007e5ddf                     // 0x007e5ccc    0f860d010000
                         or               ebx, 0xffffffff                          // 0x007e5cd2    83cbff
_jmp_addr_0x007e5cd5:    push             0x30                                     // 0x007e5cd5    6a30
                         mov              ecx, 0x00e85964                          // 0x007e5cd7    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5cdc    e8ef0c0000
                         {disp8} mov      dword ptr [esp + 0x24], eax              // 0x007e5ce1    89442424
                         test             eax, eax                                 // 0x007e5ce5    85c0
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000       // 0x007e5ce7    c744241800000000
                         {disp8} je       _jmp_addr_0x007e5d10                     // 0x007e5cef    741f
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]              // 0x007e5cf1    8b4e1c
                         mov.s            edx, edi                                 // 0x007e5cf4    8bd7
                         and              ecx, 0x60                                // 0x007e5cf6    83e160
                         and              edx, 0x0000ffff                          // 0x007e5cf9    81e2ffff0000
                         push             ecx                                      // 0x007e5cff    51
                         {disp8} mov      ecx, dword ptr [esi + 0x50]              // 0x007e5d00    8b4e50
                         lea              edx, dword ptr [ecx + edx * 0x8]         // 0x007e5d03    8d14d1
                         mov.s            ecx, eax                                 // 0x007e5d06    8bc8
                         push             edx                                      // 0x007e5d08    52
                         call             _jmp_addr_0x007e6290                     // 0x007e5d09    e882050000
                         {disp8} jmp      _jmp_addr_0x007e5d12                     // 0x007e5d0e    eb02
_jmp_addr_0x007e5d10:    xor.s            eax, eax                                 // 0x007e5d10    33c0
_jmp_addr_0x007e5d12:    {disp8} mov      edx, dword ptr [esi + 0x58]              // 0x007e5d12    8b5658
                         mov.s            ecx, edi                                 // 0x007e5d15    8bcf
                         and              ecx, 0x0000ffff                          // 0x007e5d17    81e1ffff0000
                         inc              edi                                      // 0x007e5d1d    47
                         {disp8} mov      dword ptr [esp + 0x18], ebx              // 0x007e5d1e    895c2418
                         mov              dword ptr [edx + ecx * 0x4], eax         // 0x007e5d22    89048a
                         cmp              di, word ptr [esi + 0x5c]                // 0x007e5d25    663b7e5c
                         .byte            0x72, 0xaa// {disp8} jb _jmp_addr_0x007e5cd5 // 0x007e5d29    72aa
                         {disp32} jmp     _jmp_addr_0x007e5ddd                     // 0x007e5d2b    e9ad000000
_jmp_addr_0x007e5d30:    {disp8} mov      eax, dword ptr [esp + 0x28]              // 0x007e5d30    8b442428
                         {disp8} mov      dword ptr [esi + 0x4c], ebx              // 0x007e5d34    895e4c
                         mov              ecx, dword ptr [ecx]                     // 0x007e5d37    8b09
                         lea              edx, dword ptr [eax + eax * 0x8]         // 0x007e5d39    8d14c0
                         lea              eax, dword ptr [eax + edx * 0x2]         // 0x007e5d3c    8d0450
                         lea              eax, dword ptr [ecx + eax * 0x4]         // 0x007e5d3f    8d0481
                         mov              ecx, 0x00e85964                          // 0x007e5d42    b96459e800
                         {disp8} mov      dword ptr [esi + 0x50], eax              // 0x007e5d47    894650
                         {disp8} mov      eax, dword ptr [eax + 0x08]              // 0x007e5d4a    8b4008
                         {disp8} mov      word ptr [esi + 0x5c], ax                // 0x007e5d4d    6689465c
                         and              eax, 0x0000ffff                          // 0x007e5d51    25ffff0000
                         shl              eax, 3                                   // 0x007e5d56    c1e003
                         push             eax                                      // 0x007e5d59    50
                         call             _jmp_addr_0x007e69d0                     // 0x007e5d5a    e8710c0000
                         xor.s            edx, edx                                 // 0x007e5d5f    33d2
                         mov              ecx, 0x00e85964                          // 0x007e5d61    b96459e800
                         {disp8} mov      dx, word ptr [esi + 0x5c]                // 0x007e5d66    668b565c
                         {disp8} mov      dword ptr [esi + 0x54], eax              // 0x007e5d6a    894654
                         shl              edx, 2                                   // 0x007e5d6d    c1e202
                         push             edx                                      // 0x007e5d70    52
                         call             _jmp_addr_0x007e69d0                     // 0x007e5d71    e85a0c0000
                         xor.s            edi, edi                                 // 0x007e5d76    33ff
                         cmp              word ptr [esi + 0x5c], bx                // 0x007e5d78    66395e5c
                         {disp8} mov      dword ptr [esi + 0x58], eax              // 0x007e5d7c    894658
                         {disp8} jbe      _jmp_addr_0x007e5ddf                     // 0x007e5d7f    765e
                         mov              ebp, 0x00000001                          // 0x007e5d81    bd01000000
                         or               ebx, 0xffffffff                          // 0x007e5d86    83cbff
_jmp_addr_0x007e5d89:    push             0x30                                     // 0x007e5d89    6a30
                         mov              ecx, 0x00e85964                          // 0x007e5d8b    b96459e800
                         call             _jmp_addr_0x007e69d0                     // 0x007e5d90    e83b0c0000
                         {disp8} mov      dword ptr [esp + 0x24], eax              // 0x007e5d95    89442424
                         test             eax, eax                                 // 0x007e5d99    85c0
                         {disp8} mov      dword ptr [esp + 0x18], ebp              // 0x007e5d9b    896c2418
                         {disp8} je       _jmp_addr_0x007e5dc2                     // 0x007e5d9f    7421
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]              // 0x007e5da1    8b4e1c
                         mov.s            edx, edi                                 // 0x007e5da4    8bd7
                         and              ecx, 0x60                                // 0x007e5da6    83e160
                         and              edx, 0x0000ffff                          // 0x007e5da9    81e2ffff0000
                         push             ecx                                      // 0x007e5daf    51
                         {disp8} mov      ecx, dword ptr [esi + 0x50]              // 0x007e5db0    8b4e50
                         shl              edx, 4                                   // 0x007e5db3    c1e204
                         add              edx, dword ptr [ecx]                     // 0x007e5db6    0311
                         mov.s            ecx, eax                                 // 0x007e5db8    8bc8
                         push             edx                                      // 0x007e5dba    52
                         call             _jmp_addr_0x007e62d0                     // 0x007e5dbb    e810050000
                         {disp8} jmp      _jmp_addr_0x007e5dc4                     // 0x007e5dc0    eb02
_jmp_addr_0x007e5dc2:    xor.s            eax, eax                                 // 0x007e5dc2    33c0
_jmp_addr_0x007e5dc4:    {disp8} mov      ecx, dword ptr [esi + 0x58]              // 0x007e5dc4    8b4e58
                         mov.s            edx, edi                                 // 0x007e5dc7    8bd7
                         and              edx, 0x0000ffff                          // 0x007e5dc9    81e2ffff0000
                         inc              edi                                      // 0x007e5dcf    47
                         {disp8} mov      dword ptr [esp + 0x18], ebx              // 0x007e5dd0    895c2418
                         mov              dword ptr [ecx + edx * 0x4], eax         // 0x007e5dd4    890491
                         cmp              di, word ptr [esi + 0x5c]                // 0x007e5dd7    663b7e5c
                         .byte            0x72, 0xac// {disp8} jb _jmp_addr_0x007e5d89 // 0x007e5ddb    72ac
_jmp_addr_0x007e5ddd:    xor.s            ebx, ebx                                 // 0x007e5ddd    33db
_jmp_addr_0x007e5ddf:    xor.s            ebp, ebp                                 // 0x007e5ddf    33ed
                         cmp              word ptr [esi + 0x5c], bx                // 0x007e5de1    66395e5c
                         {disp8} jbe      _jmp_addr_0x007e5e40                     // 0x007e5de5    7659
                         mov              bl, 0x0e                                 // 0x007e5de7    b30e
_jmp_addr_0x007e5de9:    {disp8} mov      edx, dword ptr [esi + 0x58]              // 0x007e5de9    8b5658
                         mov.s            edi, ebp                                 // 0x007e5dec    8bfd
                         and              edi, 0x0000ffff                          // 0x007e5dee    81e7ffff0000
                         shl              edi, 2                                   // 0x007e5df4    c1e702
                         mov              ecx, dword ptr [edi + edx * 0x1]         // 0x007e5df7    8b0c17
                         call             _jmp_addr_0x007e6330                     // 0x007e5dfa    e831050000
                         test             byte ptr [esi + 0x1c], bl                // 0x007e5dff    845e1c
                         {disp8} jne      _jmp_addr_0x007e5e2a                     // 0x007e5e02    7526
                         cmp              word ptr [esi + 0x20], 0x00              // 0x007e5e04    66837e2000
                         {disp8} jne      _jmp_addr_0x007e5e2a                     // 0x007e5e09    751f
                         {disp8} mov      ecx, dword ptr [esi + 0x58]              // 0x007e5e0b    8b4e58
                         {disp8} lea      eax, dword ptr [esp + 0x24]              // 0x007e5e0e    8d442424
                         {disp8} mov      byte ptr [esp + 0x24], 0x00              // 0x007e5e12    c644242400
                         {disp8} mov      byte ptr [esp + 0x25], 0x00              // 0x007e5e17    c644242500
                         {disp8} mov      byte ptr [esp + 0x26], 0x00              // 0x007e5e1c    c644242600
                         mov              ecx, dword ptr [edi + ecx * 0x1]         // 0x007e5e21    8b0c0f
                         push             eax                                      // 0x007e5e24    50
                         call             _jmp_addr_0x007e6500                     // 0x007e5e25    e8d6060000
_jmp_addr_0x007e5e2a:    inc              ebp                                      // 0x007e5e2a    45
                         cmp              bp, word ptr [esi + 0x5c]                // 0x007e5e2b    663b6e5c
                         .byte            0x72, 0xb8// {disp8} jb _jmp_addr_0x007e5de9 // 0x007e5e2f    72b8
                         xor.s            ebx, ebx                                 // 0x007e5e31    33db
                         {disp8} jmp      _jmp_addr_0x007e5e40                     // 0x007e5e33    eb0b
_jmp_addr_0x007e5e35:    push             -0x1                                     // 0x007e5e35    6aff
                         push             ebx                                      // 0x007e5e37    53
                         push             ebx                                      // 0x007e5e38    53
                         mov.s            ecx, esi                                 // 0x007e5e39    8bce
                         call             _jmp_addr_0x007e5ea0                     // 0x007e5e3b    e860000000
_jmp_addr_0x007e5e40:    cmp              dword ptr [esi + 0x10], ebx              // 0x007e5e40    395e10
                         {disp8} je       _jmp_addr_0x007e5e54                     // 0x007e5e43    740f
                         {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x007e5e45    8b463c
                         {disp8} mov      dx, word ptr [eax + 0x16]                // 0x007e5e48    668b5016
                         {disp8} mov      ax, word ptr [eax + 0x14]                // 0x007e5e4c    668b4014
                         push             edx                                      // 0x007e5e50    52
                         push             eax                                      // 0x007e5e51    50
                         {disp8} jmp      _jmp_addr_0x007e5e56                     // 0x007e5e52    eb02
_jmp_addr_0x007e5e54:    push             ebx                                      // 0x007e5e54    53
                         push             ebx                                      // 0x007e5e55    53
_jmp_addr_0x007e5e56:    mov.s            ecx, esi                                 // 0x007e5e56    8bce
                         call             _jmp_addr_0x007e4f90                     // 0x007e5e58    e833f1ffff
                         cmp              dword ptr [esi + 0x6c], ebx              // 0x007e5e5d    395e6c
                         {disp8} je       _jmp_addr_0x007e5e6f                     // 0x007e5e60    740d
                         {disp8} mov      eax, dword ptr [esi + 0x60]              // 0x007e5e62    8b4660
                         xor.s            ecx, ecx                                 // 0x007e5e65    33c9
                         {disp8} mov      cx, word ptr [esi + 0x5c]                // 0x007e5e67    668b4e5c
                         cmp.s            eax, ecx                                 // 0x007e5e6b    3bc1
                         .byte            0x72, 0x3// {disp8} jb _jmp_addr_0x007e5e72 // 0x007e5e6d    7203
_jmp_addr_0x007e5e6f:    {disp8} mov      dword ptr [esi + 0x60], ebx              // 0x007e5e6f    895e60
_jmp_addr_0x007e5e72:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5e72    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5e77    ff1584918a00
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x007e5e7d    8b4c2410
                         pop              edi                                      // 0x007e5e81    5f
                         pop              esi                                      // 0x007e5e82    5e
                         pop              ebp                                      // 0x007e5e83    5d
                         {disp32} mov     fs:[0x0], ecx                            // 0x007e5e84    64890d00000000
                         pop              ebx                                      // 0x007e5e8b    5b
                         add              esp, 0x0c                                // 0x007e5e8c    83c40c
                         ret              0x000c                                   // 0x007e5e8f    c20c00
                         nop                                                       // 0x007e5e92    90
                         nop                                                       // 0x007e5e93    90
                         nop                                                       // 0x007e5e94    90
                         nop                                                       // 0x007e5e95    90
                         nop                                                       // 0x007e5e96    90
                         nop                                                       // 0x007e5e97    90
                         nop                                                       // 0x007e5e98    90
                         nop                                                       // 0x007e5e99    90
                         nop                                                       // 0x007e5e9a    90
                         nop                                                       // 0x007e5e9b    90
                         nop                                                       // 0x007e5e9c    90
                         nop                                                       // 0x007e5e9d    90
                         nop                                                       // 0x007e5e9e    90
                         nop                                                       // 0x007e5e9f    90
_jmp_addr_0x007e5ea0:    push             ebx                                      // 0x007e5ea0    53
                         push             ebp                                      // 0x007e5ea1    55
                         push             esi                                      // 0x007e5ea2    56
                         push             edi                                      // 0x007e5ea3    57
                         {disp32} mov     edi, dword ptr [rdata_bytes + 0x180]     // 0x007e5ea4    8b3d80918a00
                         mov.s            esi, ecx                                 // 0x007e5eaa    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5eac    685006e900
                         call             edi                                      // 0x007e5eb1    ffd7
                         {disp8} mov      ax, word ptr [esp + 0x18]                // 0x007e5eb3    668b442418
                         {disp8} mov      word ptr [esi + 0x68], ax                // 0x007e5eb8    66894668
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x007e5ebc    8b442414
                         cmp              eax, 0x03                                // 0x007e5ec0    83f803
                         {disp8} mov      dword ptr [esi + 0x6c], eax              // 0x007e5ec3    89466c
                         {disp32} ja      _jmp_addr_0x007e6043                     // 0x007e5ec6    0f8777010000
                         jmp              dword ptr [eax*4 + 0x7e6058]             // 0x007e5ecc    ff248558607e00
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf078]   // 0x007e5ed3    8b0d7850e800
                         {disp32} mov     ebp, dword ptr [__imp__PostMessageA@4]   // 0x007e5ed9    8b2dfc978a00
                         xor.s            ebx, ebx                                 // 0x007e5edf    33db
                         push             ebx                                      // 0x007e5ee1    53
                         push             ebx                                      // 0x007e5ee2    53
                         push             0x00008006                               // 0x007e5ee3    6806800000
                         push             ecx                                      // 0x007e5ee8    51
                         call             ebp                                      // 0x007e5ee9    ffd5
                         {disp8} mov      eax, dword ptr [esi + 0x18]              // 0x007e5eeb    8b4618
                         {disp8} mov      dword ptr [esi + 0x64], ebx              // 0x007e5eee    895e64
                         test             eax, 0xfffffff8                          // 0x007e5ef1    a9f8ffffff
                         {disp8} mov      dword ptr [esi + 0x60], ebx              // 0x007e5ef6    895e60
                         {disp8} mov      dword ptr [esi + 0x14], eax              // 0x007e5ef9    894614
                         {disp8} je       _jmp_addr_0x007e5f1e                     // 0x007e5efc    7420
                         push             0x00000200                               // 0x007e5efe    6800020000
                         push             0x1                                      // 0x007e5f03    6a01
                         mov.s            ecx, esi                                 // 0x007e5f05    8bce
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e5f07    e8b4f8ffff
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f0c    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5f11    ff1584918a00
                         pop              edi                                      // 0x007e5f17    5f
                         pop              esi                                      // 0x007e5f18    5e
                         pop              ebp                                      // 0x007e5f19    5d
                         pop              ebx                                      // 0x007e5f1a    5b
                         ret              0x000c                                   // 0x007e5f1b    c20c00
_jmp_addr_0x007e5f1e:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f1e    685006e900
                         call             edi                                      // 0x007e5f23    ffd7
                         cmp              dword ptr [esi + 0x0c], ebx              // 0x007e5f25    395e0c
                         {disp8} je       _jmp_addr_0x007e5f69                     // 0x007e5f28    743f
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f2a    685006e900
                         call             edi                                      // 0x007e5f2f    ffd7
                         cmp              dword ptr [esi + 0x08], ebx              // 0x007e5f31    395e08
                         {disp8} jne      _jmp_addr_0x007e5f5b                     // 0x007e5f34    7525
                         xor.s            ecx, ecx                                 // 0x007e5f36    33c9
                         {disp32} lea     edx, dword ptr [esi + 0x000000a4]        // 0x007e5f38    8d96a4000000
                         {disp8} mov      cl, byte ptr [esi + 0x28]                // 0x007e5f3e    8a4e28
                         push             0x1                                      // 0x007e5f41    6a01
                         {disp32} lea     eax, dword ptr [esi + 0x00000084]        // 0x007e5f43    8d8684000000
                         push             edx                                      // 0x007e5f49    52
                         {disp8} mov      ecx, dword ptr [esi + ecx * 0x4 + 0x2c]  // 0x007e5f4a    8b4c8e2c
                         push             eax                                      // 0x007e5f4e    50
                         call             _jmp_addr_0x007e52b0                     // 0x007e5f4f    e85cf3ffff
                         {disp8} mov      dword ptr [esi + 0x08], 0x00000001       // 0x007e5f54    c7460801000000
_jmp_addr_0x007e5f5b:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f5b    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5f60    ff1584918a00
                         {disp8} mov      dword ptr [esi + 0x0c], ebx              // 0x007e5f66    895e0c
_jmp_addr_0x007e5f69:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f69    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5f6e    ff1584918a00
                         {disp32} mov     edx, dword ptr [data_bytes + 0x4bf078]   // 0x007e5f74    8b157850e800
                         push             ebx                                      // 0x007e5f7a    53
                         push             ebx                                      // 0x007e5f7b    53
                         push             0x00008007                               // 0x007e5f7c    6807800000
                         push             edx                                      // 0x007e5f81    52
                         call             ebp                                      // 0x007e5f82    ffd5
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5f84    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5f89    ff1584918a00
                         pop              edi                                      // 0x007e5f8f    5f
                         pop              esi                                      // 0x007e5f90    5e
                         pop              ebp                                      // 0x007e5f91    5d
                         pop              ebx                                      // 0x007e5f92    5b
                         ret              0x000c                                   // 0x007e5f93    c20c00
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf078]   // 0x007e5f96    a17850e800
                         xor.s            ebx, ebx                                 // 0x007e5f9b    33db
                         push             ebx                                      // 0x007e5f9d    53
                         push             ebx                                      // 0x007e5f9e    53
                         push             0x00008006                               // 0x007e5f9f    6806800000
                         push             eax                                      // 0x007e5fa4    50
                         call             dword ptr [__imp__PostMessageA@4]        // 0x007e5fa5    ff15fc978a00
                         cmp              dword ptr [esi + 0x50], ebx              // 0x007e5fab    395e50
                         {disp8} je       _jmp_addr_0x007e5fb7                     // 0x007e5fae    7407
                         {disp8} mov      dword ptr [esi + 0x14], 0x00000040       // 0x007e5fb0    c7461440000000
_jmp_addr_0x007e5fb7:    {disp8} mov      ax, word ptr [esi + 0x5c]                // 0x007e5fb7    668b465c
                         {disp8} mov      dword ptr [esi + 0x70], ebx              // 0x007e5fbb    895e70
                         cmp.s            ax, bx                                   // 0x007e5fbe    663bc3
                         {disp8} je       _jmp_addr_0x007e5fca                     // 0x007e5fc1    7407
                         and              eax, 0x0000ffff                          // 0x007e5fc3    25ffff0000
                         {disp8} jmp      _jmp_addr_0x007e5fce                     // 0x007e5fc8    eb04
_jmp_addr_0x007e5fca:    {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x007e5fca    8b44241c
_jmp_addr_0x007e5fce:    push             0x00000100                               // 0x007e5fce    6800010000
                         push             0x1                                      // 0x007e5fd3    6a01
                         mov.s            ecx, esi                                 // 0x007e5fd5    8bce
                         {disp8} mov      dword ptr [esi + 0x64], eax              // 0x007e5fd7    894664
                         {disp8} mov      dword ptr [esi + 0x60], ebx              // 0x007e5fda    895e60
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e5fdd    e8def7ffff
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e5fe2    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e5fe7    ff1584918a00
                         pop              edi                                      // 0x007e5fed    5f
                         pop              esi                                      // 0x007e5fee    5e
                         pop              ebp                                      // 0x007e5fef    5d
                         pop              ebx                                      // 0x007e5ff0    5b
                         ret              0x000c                                   // 0x007e5ff1    c20c00
                         {disp8} mov      eax, dword ptr [esi + 0x50]              // 0x007e5ff4    8b4650
                         xor.s            ebx, ebx                                 // 0x007e5ff7    33db
                         cmp.s            eax, ebx                                 // 0x007e5ff9    3bc3
                         {disp8} je       _jmp_addr_0x007e6004                     // 0x007e5ffb    7407
                         {disp8} mov      dword ptr [esi + 0x14], 0x00000040       // 0x007e5ffd    c7461440000000
_jmp_addr_0x007e6004:    {disp8} mov      ax, word ptr [esi + 0x5c]                // 0x007e6004    668b465c
                         {disp8} mov      dword ptr [esi + 0x70], ebx              // 0x007e6008    895e70
                         cmp.s            ax, bx                                   // 0x007e600b    663bc3
                         {disp8} mov      dword ptr [esi + 0x60], ebx              // 0x007e600e    895e60
                         {disp8} je       _jmp_addr_0x007e601a                     // 0x007e6011    7407
                         and              eax, 0x0000ffff                          // 0x007e6013    25ffff0000
                         {disp8} jmp      _jmp_addr_0x007e601e                     // 0x007e6018    eb04
_jmp_addr_0x007e601a:    {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x007e601a    8b44241c
_jmp_addr_0x007e601e:    push             0x00000100                               // 0x007e601e    6800010000
                         push             0x1                                      // 0x007e6023    6a01
                         mov.s            ecx, esi                                 // 0x007e6025    8bce
                         {disp8} mov      dword ptr [esi + 0x64], eax              // 0x007e6027    894664
                         call             @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                     // 0x007e602a    e891f7ffff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf078]   // 0x007e602f    8b0d7850e800
                         push             ebx                                      // 0x007e6035    53
                         push             ebx                                      // 0x007e6036    53
                         push             0x00008005                               // 0x007e6037    6805800000
                         push             ecx                                      // 0x007e603c    51
                         call             dword ptr [__imp__PostMessageA@4]        // 0x007e603d    ff15fc978a00
_jmp_addr_0x007e6043:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e6043    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]// 0x007e6048    ff1584918a00
                         pop              edi                                      // 0x007e604e    5f
                         pop              esi                                      // 0x007e604f    5e
                         pop              ebp                                      // 0x007e6050    5d
                         pop              ebx                                      // 0x007e6051    5b
                         ret              0x000c                                   // 0x007e6052    c20c00

// Snippet: db, [0x007e6055, 0x007e6058)
.byte 0x8d, 0x49, 0x00            // 0x007e6055

// Snippet: jmptbl, [0x007e6058, 0x007e6068)
.byte 0xd3, 0x5e, 0x7e, 0x00      // 0x007e6058
.byte 0x96, 0x5f, 0x7e, 0x00      // 0x007e605c
.byte 0x96, 0x5f, 0x7e, 0x00      // 0x007e6060
.byte 0xf4, 0x5f, 0x7e, 0x00      // 0x007e6064

// Snippet: db, [0x007e6068, 0x007e6070)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e6068
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e606c

