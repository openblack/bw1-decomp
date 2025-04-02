.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004012d0

.globl _globl_ct_0x00401170
.globl _jmp_addr_0x007d4cc3
.globl _jmp_addr_0x00401140

start_0x00401140_0x004011d0:
// Snippet: asm, [0x00401140, 0x004011cc)
_jmp_addr_0x00401140:    {disp8} mov      eax, dword ptr [esp + 0x0c]     // 0x00401140    8b44240c
                         dec              eax                             // 0x00401144    48
                         {disp8} js       _jmp_addr_0x00401167            // 0x00401145    7820
                         push             ebx                             // 0x00401147    53
                         {disp8} mov      ebx, dword ptr [esp + 0x14]     // 0x00401148    8b5c2414
                         push             ebp                             // 0x0040114c    55
                         {disp8} mov      ebp, dword ptr [esp + 0x10]     // 0x0040114d    8b6c2410
                         push             esi                             // 0x00401151    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]     // 0x00401152    8b742410
                         push             edi                             // 0x00401156    57
                         {disp8} lea      edi, dword ptr [eax + 0x01]     // 0x00401157    8d7801
_jmp_addr_0x0040115a:    mov.s            ecx, esi                        // 0x0040115a    8bce
                         call             ebx                             // 0x0040115c    ffd3
                         add.s            esi, ebp                        // 0x0040115e    03f5
                         dec              edi                             // 0x00401160    4f
                         {disp8} jne      _jmp_addr_0x0040115a            // 0x00401161    75f7
                         pop              edi                             // 0x00401163    5f
                         pop              esi                             // 0x00401164    5e
                         pop              ebp                             // 0x00401165    5d
                         pop              ebx                             // 0x00401166    5b
_jmp_addr_0x00401167:    ret              0x0010                          // 0x00401167    c21000
                         call             dword ptr [__imp__waveInClose@4]// 0x0040116a    ff15a8988a00
_globl_ct_0x00401170:    call             _jmp_addr_0x00401180            // 0x00401170    e80b000000
                         {disp32} jmp     _jmp_addr_0x004012d0            // 0x00401175    e956010000
                         nop                                              // 0x0040117a    90
                         nop                                              // 0x0040117b    90
                         nop                                              // 0x0040117c    90
                         nop                                              // 0x0040117d    90
                         nop                                              // 0x0040117e    90
                         nop                                              // 0x0040117f    90
_jmp_addr_0x00401180:    mov              eax, 0x00c3c690                 // 0x00401180    b890c6c300
                         mov              ecx, 0x00000093                 // 0x00401185    b993000000
                         xor.s            edx, edx                        // 0x0040118a    33d2
_jmp_addr_0x0040118c:    mov              dword ptr [eax], 0x008a9a44     // 0x0040118c    c700449a8a00
                         {disp8} mov      dword ptr [eax + 0x04], edx     // 0x00401192    895004
                         {disp8} mov      dword ptr [eax + 0x08], edx     // 0x00401195    895008
                         mov              dword ptr [eax], 0x008a99f8     // 0x00401198    c700f8998a00
                         add              eax, 0x000001c8                 // 0x0040119e    05c8010000
                         dec              ecx                             // 0x004011a3    49
                         {disp8} jne      _jmp_addr_0x0040118c            // 0x004011a4    75e6
                         ret                                              // 0x004011a6    c3
                         nop                                              // 0x004011a7    90
                         nop                                              // 0x004011a8    90
                         nop                                              // 0x004011a9    90
                         nop                                              // 0x004011aa    90
                         nop                                              // 0x004011ab    90
                         nop                                              // 0x004011ac    90
                         nop                                              // 0x004011ad    90
                         nop                                              // 0x004011ae    90
                         nop                                              // 0x004011af    90
                         ret              0x0004                          // 0x004011b0    c20400
                         nop                                              // 0x004011b3    90
                         nop                                              // 0x004011b4    90
                         nop                                              // 0x004011b5    90
                         nop                                              // 0x004011b6    90
                         nop                                              // 0x004011b7    90
                         nop                                              // 0x004011b8    90
                         nop                                              // 0x004011b9    90
                         nop                                              // 0x004011ba    90
                         nop                                              // 0x004011bb    90
                         nop                                              // 0x004011bc    90
                         nop                                              // 0x004011bd    90
                         nop                                              // 0x004011be    90
                         nop                                              // 0x004011bf    90
                         test             ecx, ecx                        // 0x004011c0    85c9
                         {disp8} je       _jmp_addr_0x004011cb            // 0x004011c2    7407
                         mov              eax, dword ptr [ecx]            // 0x004011c4    8b01
                         push             0x1                             // 0x004011c6    6a01
                         call             dword ptr [eax + 4]             // 0x004011c8    ff5004
_jmp_addr_0x004011cb:    ret                                              // 0x004011cb    c3

// Snippet: db, [0x004011cc, 0x004011d0)
.byte 0x45, 0x16, 0xa1, 0x03      // 0x004011cc

