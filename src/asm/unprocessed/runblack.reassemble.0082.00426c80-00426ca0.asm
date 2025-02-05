.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x00426c80

start_0x00426c80_0x00426ca0:
// Snippet: asm, [0x00426c80, 0x00426c9b)
_jmp_addr_0x00426c80:    {disp8} mov      eax, dword ptr [esp + 0x04]             // 0x00426c80    8b442404
                         cmp              eax, 0x07                               // 0x00426c84    83f807
                         {disp8} jl       _jmp_addr_0x00426c91                    // 0x00426c87    7c08
                         mov              eax, 0x00000001                         // 0x00426c89    b801000000
                         ret              0x0004                                  // 0x00426c8e    c20400
_jmp_addr_0x00426c91:    {disp32} mov     eax, dword ptr [eax * 0x4 + 0x009c99f0] // 0x00426c91    8b0485f0999c00
                         ret              0x0004                                  // 0x00426c98    c20400

// Snippet: db, [0x00426c9b, 0x00426ca0)
.byte 0xe8, 0xd9, 0xab, 0xfd      // 0x00426c9b
.byte 0xff                        // 0x00426c9f

