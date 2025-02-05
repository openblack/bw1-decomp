.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x007ea000

start_0x007ea000_0x007ea0b0:
// Snippet: asm, [0x007ea000, 0x007ea086)
_jmp_addr_0x007ea000:    {disp8} mov     eax, dword ptr [esp + 0x08]  // 0x007ea000    8b442408
                         and             eax, 0x000000ff              // 0x007ea004    25ff000000
                         cmp             eax, 0x07                    // 0x007ea009    83f807
                         {disp8} ja      _jmp_addr_0x007ea081         // 0x007ea00c    7773
                         jmp             dword ptr [eax*4 + 0x7ea088] // 0x007ea00e    ff248588a07e00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007ea015    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007ea019    8b54240c
                         xor.s           eax, eax                     // 0x007ea01d    33c0
                         cmp.s           ecx, edx                     // 0x007ea01f    3bca
                         sete            al                           // 0x007ea021    0f94c0
                         ret             0x000c                       // 0x007ea024    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007ea027    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007ea02b    8b4c240c
                         xor.s           eax, eax                     // 0x007ea02f    33c0
                         cmp.s           edx, ecx                     // 0x007ea031    3bd1
                         setne           al                           // 0x007ea033    0f95c0
                         ret             0x000c                       // 0x007ea036    c20c00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007ea039    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007ea03d    8b54240c
                         xor.s           eax, eax                     // 0x007ea041    33c0
                         cmp.s           ecx, edx                     // 0x007ea043    3bca
                         setl            al                           // 0x007ea045    0f9cc0
                         ret             0x000c                       // 0x007ea048    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007ea04b    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007ea04f    8b4c240c
                         xor.s           eax, eax                     // 0x007ea053    33c0
                         cmp.s           edx, ecx                     // 0x007ea055    3bd1
                         setg            al                           // 0x007ea057    0f9fc0
                         ret             0x000c                       // 0x007ea05a    c20c00
                         {disp8} mov     ecx, dword ptr [esp + 0x04]  // 0x007ea05d    8b4c2404
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x007ea061    8b54240c
                         xor.s           eax, eax                     // 0x007ea065    33c0
                         cmp.s           ecx, edx                     // 0x007ea067    3bca
                         setle           al                           // 0x007ea069    0f9ec0
                         ret             0x000c                       // 0x007ea06c    c20c00
                         {disp8} mov     edx, dword ptr [esp + 0x04]  // 0x007ea06f    8b542404
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x007ea073    8b4c240c
                         xor.s           eax, eax                     // 0x007ea077    33c0
                         cmp.s           edx, ecx                     // 0x007ea079    3bd1
                         setge           al                           // 0x007ea07b    0f9dc0
                         ret             0x000c                       // 0x007ea07e    c20c00
_jmp_addr_0x007ea081:    xor.s           al, al                       // 0x007ea081    32c0
                         ret             0x000c                       // 0x007ea083    c20c00

// Snippet: db, [0x007ea086, 0x007ea088)
.byte 0x8b, 0xff                  // 0x007ea086

// Snippet: jmptbl, [0x007ea088, 0x007ea0a8)
.byte 0x15, 0xa0, 0x7e, 0x00      // 0x007ea088
.byte 0x15, 0xa0, 0x7e, 0x00      // 0x007ea08c
.byte 0x27, 0xa0, 0x7e, 0x00      // 0x007ea090
.byte 0x27, 0xa0, 0x7e, 0x00      // 0x007ea094
.byte 0x39, 0xa0, 0x7e, 0x00      // 0x007ea098
.byte 0x4b, 0xa0, 0x7e, 0x00      // 0x007ea09c
.byte 0x5d, 0xa0, 0x7e, 0x00      // 0x007ea0a0
.byte 0x6f, 0xa0, 0x7e, 0x00      // 0x007ea0a4

// Snippet: db, [0x007ea0a8, 0x007ea0b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007ea0a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x007ea0ac

