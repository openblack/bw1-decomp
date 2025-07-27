.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _sprintf

.globl _jmp_addr_0x0050e7e0

start_0x0050e7e0_0x0050e880:
// Snippet: asm, [0x0050e7e0, 0x0050e849)
_jmp_addr_0x0050e7e0:    {disp32} mov     byte ptr [data_bytes + 0x2ffcd4], 0x00 // 0x0050e7e0    c605d45ccc0000
                         mov              eax, dword ptr [ecx]                   // 0x0050e7e7    8b01
                         dec              eax                                    // 0x0050e7e9    48
                         cmp              eax, 0x27                              // 0x0050e7ea    83f827
                         {disp8} ja       _jmp_addr_0x0050e843                   // 0x0050e7ed    7754
                         xor.s            edx, edx                               // 0x0050e7ef    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x0050e858]        // 0x0050e7f1    8a9058e85000
                         jmp              dword ptr [edx*4 + 0x50e84c]           // 0x0050e7f7    ff24954ce85000
                         {disp8} fld      dword ptr [ecx + 0x04]                 // 0x0050e7fe    d94104
                         sub              esp, 0x08                              // 0x0050e801    83ec08
                         fstp             qword ptr [esp]                        // 0x0050e804    dd1c24
                         push             0x009d0604                             // 0x0050e807    6804069d00
                         push             0x00cc5cd4                             // 0x0050e80c    68d45ccc00
                         call             _sprintf                               // 0x0050e811    e8bc6f2b00
                         add              esp, 0x10                              // 0x0050e816    83c410
                         mov              eax, 0x00cc5cd4                        // 0x0050e819    b8d45ccc00
                         ret                                                     // 0x0050e81e    c3
                         {disp8} fld      dword ptr [ecx + 0x08]                 // 0x0050e81f    d94108
                         sub              esp, 0x08                              // 0x0050e822    83ec08
                         fstp             qword ptr [esp]                        // 0x0050e825    dd1c24
                         sub              esp, 0x08                              // 0x0050e828    83ec08
                         {disp8} fld      dword ptr [ecx + 0x04]                 // 0x0050e82b    d94104
                         fstp             qword ptr [esp]                        // 0x0050e82e    dd1c24
                         push             0x00be83bc                             // 0x0050e831    68bc83be00
                         push             0x00cc5cd4                             // 0x0050e836    68d45ccc00
                         call             _sprintf                               // 0x0050e83b    e8926f2b00
                         add              esp, 0x18                              // 0x0050e840    83c418
_jmp_addr_0x0050e843:    mov              eax, 0x00cc5cd4                        // 0x0050e843    b8d45ccc00
                         ret                                                     // 0x0050e848    c3

// Snippet: db, [0x0050e849, 0x0050e84c)
.byte 0x8d, 0x49, 0x00            // 0x0050e849

// Snippet: jmptbl, [0x0050e84c, 0x0050e858)
.byte 0xfe, 0xe7, 0x50, 0x00      // 0x0050e84c
.byte 0x1f, 0xe8, 0x50, 0x00      // 0x0050e850
.byte 0x43, 0xe8, 0x50, 0x00      // 0x0050e854

// Snippet: ijmptbl, [0x0050e858, 0x0050e880)
.byte 0x00, 0x02, 0x02, 0x02      // 0x0050e858
.byte 0x02, 0x02, 0x02, 0x02      // 0x0050e85c
.byte 0x00, 0x02, 0x00, 0x01      // 0x0050e860
.byte 0x00, 0x02, 0x02, 0x02      // 0x0050e864
.byte 0x02, 0x02, 0x02, 0x02      // 0x0050e868
.byte 0x02, 0x02, 0x02, 0x02      // 0x0050e86c
.byte 0x02, 0x02, 0x02, 0x02      // 0x0050e870
.byte 0x02, 0x02, 0x02, 0x02      // 0x0050e874
.byte 0x00, 0x02, 0x02, 0x02      // 0x0050e878
.byte 0x02, 0x02, 0x02, 0x00      // 0x0050e87c

