.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x007e9df0
.globl _jmp_addr_0x007e9e00

start_0x007e9df0_0x007e9eb0:
// Snippet: asm, [0x007e9df0, 0x007e9e86)
_jmp_addr_0x007e9df0:    mov             al, 0x20                     // 0x007e9df0    b020
                         ret                                          // 0x007e9df2    c3
                         nop                                          // 0x007e9df3    90
                         nop                                          // 0x007e9df4    90
                         nop                                          // 0x007e9df5    90
                         nop                                          // 0x007e9df6    90
                         nop                                          // 0x007e9df7    90
                         nop                                          // 0x007e9df8    90
                         nop                                          // 0x007e9df9    90
                         nop                                          // 0x007e9dfa    90
                         nop                                          // 0x007e9dfb    90
                         nop                                          // 0x007e9dfc    90
                         nop                                          // 0x007e9dfd    90
                         nop                                          // 0x007e9dfe    90
                         nop                                          // 0x007e9dff    90
_jmp_addr_0x007e9e00:    {disp8} mov     eax, dword ptr [esp + 0x08]  // 0x007e9e00    8b442408
                         and             eax, 0x000000ff              // 0x007e9e04    25ff000000
                         cmp             eax, 0x07                    // 0x007e9e09    83f807
                         {disp8} ja      _jmp_addr_0x007e9e81         // 0x007e9e0c    7773
                         jmp             dword ptr [eax*4 + 0x7e9e88] // 0x007e9e0e    ff2485889e7e00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007e9e15    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007e9e19    8b54240c
                         xor.s           eax, eax                     // 0x007e9e1d    33c0
                         cmp.s           ecx, edx                     // 0x007e9e1f    3bca
                         sete            al                           // 0x007e9e21    0f94c0
                         ret             0x000c                       // 0x007e9e24    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007e9e27    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007e9e2b    8b4c240c
                         xor.s           eax, eax                     // 0x007e9e2f    33c0
                         cmp.s           edx, ecx                     // 0x007e9e31    3bd1
                         setne           al                           // 0x007e9e33    0f95c0
                         ret             0x000c                       // 0x007e9e36    c20c00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007e9e39    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007e9e3d    8b54240c
                         xor.s           eax, eax                     // 0x007e9e41    33c0
                         cmp.s           ecx, edx                     // 0x007e9e43    3bca
                         setl            al                           // 0x007e9e45    0f9cc0
                         ret             0x000c                       // 0x007e9e48    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007e9e4b    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007e9e4f    8b4c240c
                         xor.s           eax, eax                     // 0x007e9e53    33c0
                         cmp.s           edx, ecx                     // 0x007e9e55    3bd1
                         setg            al                           // 0x007e9e57    0f9fc0
                         ret             0x000c                       // 0x007e9e5a    c20c00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007e9e5d    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007e9e61    8b54240c
                         xor.s           eax, eax                     // 0x007e9e65    33c0
                         cmp.s           ecx, edx                     // 0x007e9e67    3bca
                         setle           al                           // 0x007e9e69    0f9ec0
                         ret             0x000c                       // 0x007e9e6c    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007e9e6f    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007e9e73    8b4c240c
                         xor.s           eax, eax                     // 0x007e9e77    33c0
                         cmp.s           edx, ecx                     // 0x007e9e79    3bd1
                         setge           al                           // 0x007e9e7b    0f9dc0
                         ret             0x000c                       // 0x007e9e7e    c20c00
_jmp_addr_0x007e9e81:    xor.s           al, al                       // 0x007e9e81    32c0
                         ret             0x000c                       // 0x007e9e83    c20c00

// Snippet: db, [0x007e9e86, 0x007e9e88)
.byte 0x8b, 0xff                  // 0x007e9e86

// Snippet: jmptbl, [0x007e9e88, 0x007e9ea8)
.byte 0x15, 0x9e, 0x7e, 0x00      // 0x007e9e88
.byte 0x15, 0x9e, 0x7e, 0x00      // 0x007e9e8c
.byte 0x27, 0x9e, 0x7e, 0x00      // 0x007e9e90
.byte 0x27, 0x9e, 0x7e, 0x00      // 0x007e9e94
.byte 0x39, 0x9e, 0x7e, 0x00      // 0x007e9e98
.byte 0x4b, 0x9e, 0x7e, 0x00      // 0x007e9e9c
.byte 0x5d, 0x9e, 0x7e, 0x00      // 0x007e9ea0
.byte 0x6f, 0x9e, 0x7e, 0x00      // 0x007e9ea4

// Snippet: db, [0x007e9ea8, 0x007e9eb0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e9ea8
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e9eac

