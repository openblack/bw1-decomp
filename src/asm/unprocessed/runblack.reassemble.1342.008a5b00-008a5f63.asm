.intel_syntax noprefix
.align 16

.extern rdata_bytes

.globl _jmp_addr_0x008a5b00

_jmp_addr_0x008a5b00:    jmp              dword ptr [rdata_bytes + 0x34]          // 0x008a5b00    ff2534908a00
                         jmp              dword ptr [rdata_bytes + 0x6c4]         // 0x008a5b06    ff25c4968a00
