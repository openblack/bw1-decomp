.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x0056a4d0

start_0x0056a4d0_0x0056a6d0:
// Snippet: asm, [0x0056a4d0, 0x0056a629)
_jmp_addr_0x0056a4d0:    {disp8} mov      eax, dword ptr [esp + 0x04]  // 0x0056a4d0    8b442404
                         dec              eax                          // 0x0056a4d4    48
                         cmp              eax, 0x28                    // 0x0056a4d5    83f828
                         {disp32} ja      _jmp_addr_0x0056a626         // 0x0056a4d8    0f8748010000
                         jmp              dword ptr [eax*4 + 0x56a62c] // 0x0056a4de    ff24852ca65600
                         {disp32} inc     dword ptr [ecx + 0x00001090] // 0x0056a4e5    ff8190100000
                         ret              0x0004                       // 0x0056a4eb    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001094] // 0x0056a4ee    ff8194100000
                         ret              0x0004                       // 0x0056a4f4    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001098] // 0x0056a4f7    ff8198100000
                         ret              0x0004                       // 0x0056a4fd    c20400
                         {disp32} inc     dword ptr [ecx + 0x0000109c] // 0x0056a500    ff819c100000
                         ret              0x0004                       // 0x0056a506    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010a0] // 0x0056a509    ff81a0100000
                         ret              0x0004                       // 0x0056a50f    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010a4] // 0x0056a512    ff81a4100000
                         ret              0x0004                       // 0x0056a518    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010a8] // 0x0056a51b    ff81a8100000
                         ret              0x0004                       // 0x0056a521    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010ac] // 0x0056a524    ff81ac100000
                         ret              0x0004                       // 0x0056a52a    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010b0] // 0x0056a52d    ff81b0100000
                         ret              0x0004                       // 0x0056a533    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010b4] // 0x0056a536    ff81b4100000
                         ret              0x0004                       // 0x0056a53c    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010b8] // 0x0056a53f    ff81b8100000
                         ret              0x0004                       // 0x0056a545    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010bc] // 0x0056a548    ff81bc100000
                         ret              0x0004                       // 0x0056a54e    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010c0] // 0x0056a551    ff81c0100000
                         ret              0x0004                       // 0x0056a557    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010c4] // 0x0056a55a    ff81c4100000
                         ret              0x0004                       // 0x0056a560    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010c8] // 0x0056a563    ff81c8100000
                         ret              0x0004                       // 0x0056a569    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010cc] // 0x0056a56c    ff81cc100000
                         ret              0x0004                       // 0x0056a572    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010d0] // 0x0056a575    ff81d0100000
                         ret              0x0004                       // 0x0056a57b    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010d4] // 0x0056a57e    ff81d4100000
                         ret              0x0004                       // 0x0056a584    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010d8] // 0x0056a587    ff81d8100000
                         ret              0x0004                       // 0x0056a58d    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010dc] // 0x0056a590    ff81dc100000
                         ret              0x0004                       // 0x0056a596    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010e0] // 0x0056a599    ff81e0100000
                         ret              0x0004                       // 0x0056a59f    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010e4] // 0x0056a5a2    ff81e4100000
                         ret              0x0004                       // 0x0056a5a8    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010e8] // 0x0056a5ab    ff81e8100000
                         ret              0x0004                       // 0x0056a5b1    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010ec] // 0x0056a5b4    ff81ec100000
                         ret              0x0004                       // 0x0056a5ba    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010f0] // 0x0056a5bd    ff81f0100000
                         ret              0x0004                       // 0x0056a5c3    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010f4] // 0x0056a5c6    ff81f4100000
                         ret              0x0004                       // 0x0056a5cc    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010f8] // 0x0056a5cf    ff81f8100000
                         ret              0x0004                       // 0x0056a5d5    c20400
                         {disp32} inc     dword ptr [ecx + 0x000010fc] // 0x0056a5d8    ff81fc100000
                         ret              0x0004                       // 0x0056a5de    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001100] // 0x0056a5e1    ff8100110000
                         ret              0x0004                       // 0x0056a5e7    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001104] // 0x0056a5ea    ff8104110000
                         ret              0x0004                       // 0x0056a5f0    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001108] // 0x0056a5f3    ff8108110000
                         ret              0x0004                       // 0x0056a5f9    c20400
                         {disp32} inc     dword ptr [ecx + 0x0000110c] // 0x0056a5fc    ff810c110000
                         ret              0x0004                       // 0x0056a602    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001110] // 0x0056a605    ff8110110000
                         ret              0x0004                       // 0x0056a60b    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001114] // 0x0056a60e    ff8114110000
                         ret              0x0004                       // 0x0056a614    c20400
                         {disp32} inc     dword ptr [ecx + 0x00001118] // 0x0056a617    ff8118110000
                         ret              0x0004                       // 0x0056a61d    c20400
                         {disp32} inc     dword ptr [ecx + 0x0000111c] // 0x0056a620    ff811c110000
_jmp_addr_0x0056a626:    ret              0x0004                       // 0x0056a626    c20400

// Snippet: db, [0x0056a629, 0x0056a62c)
.byte 0x8d, 0x49, 0x00            // 0x0056a629

// Snippet: jmptbl, [0x0056a62c, 0x0056a6d0)
.byte 0xe5, 0xa4, 0x56, 0x00      // 0x0056a62c
.byte 0xee, 0xa4, 0x56, 0x00      // 0x0056a630
.byte 0xf7, 0xa4, 0x56, 0x00      // 0x0056a634
.byte 0x00, 0xa5, 0x56, 0x00      // 0x0056a638
.byte 0x09, 0xa5, 0x56, 0x00      // 0x0056a63c
.byte 0x12, 0xa5, 0x56, 0x00      // 0x0056a640
.byte 0x1b, 0xa5, 0x56, 0x00      // 0x0056a644
.byte 0x24, 0xa5, 0x56, 0x00      // 0x0056a648
.byte 0x2d, 0xa5, 0x56, 0x00      // 0x0056a64c
.byte 0x36, 0xa5, 0x56, 0x00      // 0x0056a650
.byte 0x3f, 0xa5, 0x56, 0x00      // 0x0056a654
.byte 0x48, 0xa5, 0x56, 0x00      // 0x0056a658
.byte 0x51, 0xa5, 0x56, 0x00      // 0x0056a65c
.byte 0x5a, 0xa5, 0x56, 0x00      // 0x0056a660
.byte 0x63, 0xa5, 0x56, 0x00      // 0x0056a664
.byte 0x6c, 0xa5, 0x56, 0x00      // 0x0056a668
.byte 0x75, 0xa5, 0x56, 0x00      // 0x0056a66c
.byte 0x7e, 0xa5, 0x56, 0x00      // 0x0056a670
.byte 0x87, 0xa5, 0x56, 0x00      // 0x0056a674
.byte 0x90, 0xa5, 0x56, 0x00      // 0x0056a678
.byte 0x99, 0xa5, 0x56, 0x00      // 0x0056a67c
.byte 0xa2, 0xa5, 0x56, 0x00      // 0x0056a680
.byte 0xab, 0xa5, 0x56, 0x00      // 0x0056a684
.byte 0xb4, 0xa5, 0x56, 0x00      // 0x0056a688
.byte 0xbd, 0xa5, 0x56, 0x00      // 0x0056a68c
.byte 0xc6, 0xa5, 0x56, 0x00      // 0x0056a690
.byte 0xcf, 0xa5, 0x56, 0x00      // 0x0056a694
.byte 0xd8, 0xa5, 0x56, 0x00      // 0x0056a698
.byte 0xe1, 0xa5, 0x56, 0x00      // 0x0056a69c
.byte 0xea, 0xa5, 0x56, 0x00      // 0x0056a6a0
.byte 0xf3, 0xa5, 0x56, 0x00      // 0x0056a6a4
.byte 0xfc, 0xa5, 0x56, 0x00      // 0x0056a6a8
.byte 0x05, 0xa6, 0x56, 0x00      // 0x0056a6ac
.byte 0x0e, 0xa6, 0x56, 0x00      // 0x0056a6b0
.byte 0x17, 0xa6, 0x56, 0x00      // 0x0056a6b4
.byte 0x26, 0xa6, 0x56, 0x00      // 0x0056a6b8
.byte 0x26, 0xa6, 0x56, 0x00      // 0x0056a6bc
.byte 0x26, 0xa6, 0x56, 0x00      // 0x0056a6c0
.byte 0x26, 0xa6, 0x56, 0x00      // 0x0056a6c4
.byte 0x26, 0xa6, 0x56, 0x00      // 0x0056a6c8
.byte 0x20, 0xa6, 0x56, 0x00      // 0x0056a6cc

