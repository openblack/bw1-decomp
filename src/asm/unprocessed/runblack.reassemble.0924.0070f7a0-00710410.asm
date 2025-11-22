.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00414730
.extern _jmp_addr_0x00426d30
.extern _jmp_addr_0x00428230
.extern _jmp_addr_0x004287d0
.extern _jmp_addr_0x00429230
.extern _jmp_addr_0x00429340
.extern _jmp_addr_0x004293b0
.extern _jmp_addr_0x004293e0
.extern _jmp_addr_0x00429880
.extern _jmp_addr_0x004298a0
.extern _jmp_addr_0x004298c0
.extern _jmp_addr_0x004298f0
.extern _jmp_addr_0x00429910
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern @StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE@20
.extern _jmp_addr_0x0042a280
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern _jmp_addr_0x0064d6a0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f8260
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x0071a610
.extern _jmp_addr_0x0071a640
.extern ?Create@SoundTag@@SAPAV1@PAVGameThingWithPos@@K_NKKHHW4AUDIO_SFX_BANK_TYPE@@H@Z
.extern _jmp_addr_0x0071ebe0
.extern _jmp_addr_0x007a1400
.extern _atexit

.globl _jmp_addr_0x0070f8e0
.globl _jmp_addr_0x00710350

.globl _globl_ct_0x0070f7a0
.globl _globl_ct_0x0070f7d0
.globl _globl_ct_0x00710300
.globl _globl_ct_0x00710330

start_0x0070f7a0_0x00710410:
// Snippet: asm, [0x0070f7a0, 0x007103ff)
_globl_ct_0x0070f7a0:    {disp32} mov     cl, byte ptr [_DAT_00fac934]                  // 0x0070f7a0    8a0d34c9fa00
                         mov              al, 0x01                                      // 0x0070f7a6    b001
                         test             al, cl                                        // 0x0070f7a8    84c8
                         {disp8} jne      _jmp_addr_0x0070f7b4                          // 0x0070f7aa    7508
                         or.s             cl, al                                        // 0x0070f7ac    0ac8
                         {disp32} mov     byte ptr [_DAT_00fac934], cl                  // 0x0070f7ae    880d34c9fa00
_jmp_addr_0x0070f7b4:    {disp32} jmp     _jmp_addr_0x0070f7c0                          // 0x0070f7b4    e907000000
                         nop                                                            // 0x0070f7b9    90
                         nop                                                            // 0x0070f7ba    90
                         nop                                                            // 0x0070f7bb    90
                         nop                                                            // 0x0070f7bc    90
                         nop                                                            // 0x0070f7bd    90
                         nop                                                            // 0x0070f7be    90
                         nop                                                            // 0x0070f7bf    90
_jmp_addr_0x0070f7c0:    push             0x00407870                                    // 0x0070f7c0    6870784000
                         call             _atexit                                       // 0x0070f7c5    e8c75f0b00
                         pop              ecx                                           // 0x0070f7ca    59
                         ret                                                            // 0x0070f7cb    c3
                         nop                                                            // 0x0070f7cc    90
                         nop                                                            // 0x0070f7cd    90
                         nop                                                            // 0x0070f7ce    90
                         nop                                                            // 0x0070f7cf    90
_globl_ct_0x0070f7d0:    {disp32} jmp     _jmp_addr_0x0070f7e0                          // 0x0070f7d0    e90b000000
                         nop                                                            // 0x0070f7d5    90
                         nop                                                            // 0x0070f7d6    90
                         nop                                                            // 0x0070f7d7    90
                         nop                                                            // 0x0070f7d8    90
                         nop                                                            // 0x0070f7d9    90
                         nop                                                            // 0x0070f7da    90
                         nop                                                            // 0x0070f7db    90
                         nop                                                            // 0x0070f7dc    90
                         nop                                                            // 0x0070f7dd    90
                         nop                                                            // 0x0070f7de    90
                         nop                                                            // 0x0070f7df    90
_jmp_addr_0x0070f7e0:    {disp32} mov     dword ptr [data_bytes + 0x3d3020], 0xffffffff // 0x0070f7e0    c7052090d900ffffffff
                         ret                                                            // 0x0070f7ea    c3
                         nop                                                            // 0x0070f7eb    90
                         nop                                                            // 0x0070f7ec    90
                         nop                                                            // 0x0070f7ed    90
                         nop                                                            // 0x0070f7ee    90
                         nop                                                            // 0x0070f7ef    90
                         sub              esp, 0x0000017c                               // 0x0070f7f0    81ec7c010000
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070f7f6    8b0d105cd900
                         push             ebx                                           // 0x0070f7fc    53
                         push             esi                                           // 0x0070f7fd    56
                         push             edi                                           // 0x0070f7fe    57
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x0070f7ff    8d44240c
                         push             eax                                           // 0x0070f803    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f804    e8b773feff
                         {disp32} mov     esi, dword ptr [_script_dll]                  // 0x0070f809    8b35105cd900
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x0070f80f    8d4c240c
                         push             ecx                                           // 0x0070f813    51
                         mov.s            ecx, esi                                      // 0x0070f814    8bce
                         mov.s            edi, eax                                      // 0x0070f816    8bf8
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f818    e8a373feff
                         {disp8} lea      edx, dword ptr [esp + 0x10]                   // 0x0070f81d    8d542410
                         push             edx                                           // 0x0070f821    52
                         mov.s            ecx, esi                                      // 0x0070f822    8bce
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0070f824    89442410
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f828    e89373feff
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0070f82d    89442410
                         {disp8} lea      eax, dword ptr [esp + 0x14]                   // 0x0070f831    8d442414
                         push             eax                                           // 0x0070f835    50
                         mov.s            ecx, esi                                      // 0x0070f836    8bce
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f838    e88373feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070f83d    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x18]                   // 0x0070f843    8d542418
                         push             edx                                           // 0x0070f847    52
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x0070f848    89442418
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f84c    e86f73feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070f851    8b0d105cd900
                         mov.s            ebx, eax                                      // 0x0070f857    8bd8
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                   // 0x0070f859    8d44241c
                         push             eax                                           // 0x0070f85d    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f85e    e85d73feff
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x0070f863    8d4c2420
                         mov.s            esi, eax                                      // 0x0070f867    8bf0
                         call             dword ptr [rdata_bytes + 0x75c]               // 0x0070f869    ff155c978a00
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070f86f    8b0d203bcd00
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0070f875    8b442414
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x0070f879    89742444
                         {disp32} mov     edx, dword ptr [ecx + ebx * 0x4 + 0x000003a8] // 0x0070f87d    8b9499a8030000
                         {disp8} mov      dword ptr [esp + 0x24], edx                   // 0x0070f884    89542424
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x0070f888    8b542410
                         {disp8} mov      dword ptr [esp + 0x54], edx                   // 0x0070f88c    89542454
                         {disp8} mov      dword ptr [esp + 0x50], eax                   // 0x0070f890    89442450
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x0070f894    8b44240c
                         {disp8} lea      edx, dword ptr [esp + 0x20]                   // 0x0070f898    8d542420
                         push             edx                                           // 0x0070f89c    52
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x0070f89d    89742444
                         {disp32} mov     dword ptr [esp + 0x00000188], 0x00000001      // 0x0070f8a1    c784248801000001000000
                         {disp8} mov      dword ptr [esp + 0x5c], eax                   // 0x0070f8ac    8944245c
                         {disp8} mov      dword ptr [esp + 0x2c], edi                   // 0x0070f8b0    897c242c
                         {disp8} mov      dword ptr [esp + 0x30], 0x00000000            // 0x0070f8b4    c744243000000000
                         call             @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0070f8bc    e86fa5d1ff
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x0070f8c1    8d4c2420
                         call             dword ptr [rdata_bytes + 0x758]               // 0x0070f8c5    ff1558978a00
                         pop              edi                                           // 0x0070f8cb    5f
                         pop              esi                                           // 0x0070f8cc    5e
                         pop              ebx                                           // 0x0070f8cd    5b
                         add              esp, 0x0000017c                               // 0x0070f8ce    81c47c010000
                         ret                                                            // 0x0070f8d4    c3
                         nop                                                            // 0x0070f8d5    90
                         nop                                                            // 0x0070f8d6    90
                         nop                                                            // 0x0070f8d7    90
                         nop                                                            // 0x0070f8d8    90
                         nop                                                            // 0x0070f8d9    90
                         nop                                                            // 0x0070f8da    90
                         nop                                                            // 0x0070f8db    90
                         nop                                                            // 0x0070f8dc    90
                         nop                                                            // 0x0070f8dd    90
                         nop                                                            // 0x0070f8de    90
                         nop                                                            // 0x0070f8df    90
_jmp_addr_0x0070f8e0:    {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x0070f8e0    8b4c2404
                         sub              esp, 0x00000168                               // 0x0070f8e4    81ec68010000
                         cmp              ecx, 0x00001b3e                               // 0x0070f8ea    81f93e1b0000
                         .byte            0x72, 0x2// {disp8} jb _jmp_addr_0x0070f8f4   // 0x0070f8f0    7202
                         xor.s            ecx, ecx                                      // 0x0070f8f2    33c9
_jmp_addr_0x0070f8f4:    lea              eax, dword ptr [ecx + ecx * 0x2]              // 0x0070f8f4    8d0449
                         shl              eax, 2                                        // 0x0070f8f7    c1e002
                         push             esi                                           // 0x0070f8fa    56
                         {disp32} mov     esi, dword ptr [eax + 0x00942b40]             // 0x0070f8fb    8bb0402b9400
                         test             esi, esi                                      // 0x0070f901    85f6
                         push             edi                                           // 0x0070f903    57
                         {disp32} mov     edi, dword ptr [eax + 0x00942b3c]             // 0x0070f904    8bb83c2b9400
                         {disp32} je      _jmp_addr_0x0070f9a6                          // 0x0070f90a    0f8496000000
                         cmp              dword ptr [eax + 0x00942b38], ecx             // 0x0070f910    3988382b9400
                         {disp8} je       _jmp_addr_0x0070f91a                          // 0x0070f916    7402
                         xor.s            edi, edi                                      // 0x0070f918    33ff
_jmp_addr_0x0070f91a:    {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x0070f91a    8d4c2408
                         call             dword ptr [rdata_bytes + 0x75c]               // 0x0070f91e    ff155c978a00
                         {disp32} mov     edx, dword ptr [esp + 0x0000017c]             // 0x0070f924    8b94247c010000
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070f92b    8b0d203bcd00
                         neg              edx                                           // 0x0070f931    f7da
                         sbb.s            edx, edx                                      // 0x0070f933    1bd2
                         and              edx, 0xfffffffe                               // 0x0070f935    83e2fe
                         add              edx, 0x0000270f                               // 0x0070f938    81c20f270000
                         {disp8} mov      dword ptr [esp + 0x2c], esi                   // 0x0070f93e    8974242c
                         {disp32} mov     eax, dword ptr [ecx + edi * 0x4 + 0x000003a8] // 0x0070f942    8b84b9a8030000
                         {disp8} mov      dword ptr [esp + 0x28], edx                   // 0x0070f949    89542428
                         {disp32} mov     edx, dword ptr [esp + 0x00000180]             // 0x0070f94d    8b942480010000
                         test             edx, edx                                      // 0x0070f954    85d2
                         {disp8} mov      dword ptr [esp + 0x0c], eax                   // 0x0070f956    8944240c
                         {disp32} mov     eax, dword ptr [esp + 0x00000178]             // 0x0070f95a    8b842478010000
                         {disp32} mov     dword ptr [esp + 0x0000016c], 0x00000001      // 0x0070f961    c784246c01000001000000
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0070f96c    89442410
                         {disp8} je       _jmp_addr_0x0070f98a                          // 0x0070f970    7418
                         test             eax, eax                                      // 0x0070f972    85c0
                         {disp8} je       _jmp_addr_0x0070f98a                          // 0x0070f974    7414
                         mov              eax, dword ptr [edx]                          // 0x0070f976    8b02
                         {disp8} mov      dword ptr [esp + 0x38], eax                   // 0x0070f978    89442438
                         {disp8} mov      eax, dword ptr [edx + 0x04]                   // 0x0070f97c    8b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]                   // 0x0070f97f    8b5208
                         {disp8} mov      dword ptr [esp + 0x3c], eax                   // 0x0070f982    8944243c
                         {disp8} mov      dword ptr [esp + 0x40], edx                   // 0x0070f986    89542440
_jmp_addr_0x0070f98a:    {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070f98a    8d442408
                         push             eax                                           // 0x0070f98e    50
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000            // 0x0070f98f    c744241800000000
                         call             @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0070f997    e894a4d1ff
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x0070f99c    8d4c2408
                         call             dword ptr [rdata_bytes + 0x758]               // 0x0070f9a0    ff1558978a00
_jmp_addr_0x0070f9a6:    pop              edi                                           // 0x0070f9a6    5f
                         pop              esi                                           // 0x0070f9a7    5e
                         add              esp, 0x00000168                               // 0x0070f9a8    81c468010000
                         ret                                                            // 0x0070f9ae    c3
                         nop                                                            // 0x0070f9af    90
                         sub              esp, 0x10                                     // 0x0070f9b0    83ec10
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070f9b3    8b0d105cd900
                         push             esi                                           // 0x0070f9b9    56
                         push             edi                                           // 0x0070f9ba    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070f9bb    8d442408
                         push             eax                                           // 0x0070f9bf    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f9c0    e8fb71feff
                         {disp32} mov     esi, dword ptr [_script_dll]                  // 0x0070f9c5    8b35105cd900
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x0070f9cb    8d4c2408
                         push             ecx                                           // 0x0070f9cf    51
                         mov.s            ecx, esi                                      // 0x0070f9d0    8bce
                         mov.s            edi, eax                                      // 0x0070f9d2    8bf8
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f9d4    e8e771feff
                         mov.s            edx, eax                                      // 0x0070f9d9    8bd0
                         {disp8} mov      dword ptr [esp + 0x08], eax                   // 0x0070f9db    89442408
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070f9df    8d442408
                         push             eax                                           // 0x0070f9e3    50
                         mov.s            ecx, esi                                      // 0x0070f9e4    8bce
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x0070f9e6    89542418
                         call             _jmp_addr_0x006f6bc0                          // 0x0070f9ea    e8d171feff
                         mov.s            ecx, eax                                      // 0x0070f9ef    8bc8
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0070f9f1    8d542408
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x0070f9f5    894c2410
                         push             edx                                           // 0x0070f9f9    52
                         mov.s            ecx, esi                                      // 0x0070f9fa    8bce
                         {disp8} mov      dword ptr [esp + 0x0c], eax                   // 0x0070f9fc    8944240c
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa00    e8bb71feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fa05    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0070fa0b    8d542408
                         push             edx                                           // 0x0070fa0f    52
                         {disp8} mov      dword ptr [esp + 0x0c], eax                   // 0x0070fa10    8944240c
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0070fa14    89442410
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa18    e8a371feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fa1d    8b0d105cd900
                         mov.s            esi, eax                                      // 0x0070fa23    8bf0
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070fa25    8d442408
                         push             eax                                           // 0x0070fa29    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa2a    e89171feff
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x0070fa2f    8d4c240c
                         push             ecx                                           // 0x0070fa33    51
                         push             eax                                           // 0x0070fa34    50
                         push             edi                                           // 0x0070fa35    57
                         push             esi                                           // 0x0070fa36    56
                         call             _jmp_addr_0x0070f8e0                          // 0x0070fa37    e8a4feffff
                         add              esp, 0x10                                     // 0x0070fa3c    83c410
                         pop              edi                                           // 0x0070fa3f    5f
                         pop              esi                                           // 0x0070fa40    5e
                         add              esp, 0x10                                     // 0x0070fa41    83c410
                         ret                                                            // 0x0070fa44    c3
                         nop                                                            // 0x0070fa45    90
                         nop                                                            // 0x0070fa46    90
                         nop                                                            // 0x0070fa47    90
                         nop                                                            // 0x0070fa48    90
                         nop                                                            // 0x0070fa49    90
                         nop                                                            // 0x0070fa4a    90
                         nop                                                            // 0x0070fa4b    90
                         nop                                                            // 0x0070fa4c    90
                         nop                                                            // 0x0070fa4d    90
                         nop                                                            // 0x0070fa4e    90
                         nop                                                            // 0x0070fa4f    90
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fa50    8b0d105cd900
                         sub              esp, 0x08                                     // 0x0070fa56    83ec08
                         push             esi                                           // 0x0070fa59    56
                         push             edi                                           // 0x0070fa5a    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070fa5b    8d442408
                         push             eax                                           // 0x0070fa5f    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa60    e85b71feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fa65    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0070fa6b    8d542408
                         push             edx                                           // 0x0070fa6f    52
                         mov.s            edi, eax                                      // 0x0070fa70    8bf8
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa72    e84971feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fa77    8b0d105cd900
                         mov.s            esi, eax                                      // 0x0070fa7d    8bf0
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x0070fa7f    8d44240c
                         push             eax                                           // 0x0070fa83    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fa84    e83771feff
                         test             eax, eax                                      // 0x0070fa89    85c0
                         {disp8} je       _jmp_addr_0x0070fb08                          // 0x0070fa8b    747b
                         cmp              esi, dword ptr [data_bytes + 0x351cac]        // 0x0070fa8d    3b35ac7cd100
                         {disp8} jae      _jmp_addr_0x0070fa99                          // 0x0070fa93    7304
                         test             esi, esi                                      // 0x0070fa95    85f6
                         {disp8} ja       _jmp_addr_0x0070faa1                          // 0x0070fa97    7708
_jmp_addr_0x0070fa99:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0070fa99    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x0070faad                          // 0x0070fa9f    eb0c
_jmp_addr_0x0070faa1:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0070faa1    8b15a87cd100
                         lea              ecx, dword ptr [esi + esi * 0x2]              // 0x0070faa7    8d0c76
                         lea              ecx, dword ptr [edx + ecx * 0x4]              // 0x0070faaa    8d0c8a
_jmp_addr_0x0070faad:    lea              eax, dword ptr [esi + esi * 0x2]              // 0x0070faad    8d0476
                         shl              eax, 2                                        // 0x0070fab0    c1e002
                         {disp32} mov     esi, dword ptr [eax + 0x00942b3c]             // 0x0070fab3    8bb03c2b9400
                         {disp32} mov     edi, dword ptr [eax + 0x00942b40]             // 0x0070fab9    8bb8402b9400
                         cmp              dword ptr [ecx], 0x02                         // 0x0070fabf    833902
                         {disp8} je       _jmp_addr_0x0070faef                          // 0x0070fac2    742b
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fac4    8b0d203bcd00
                         push             esi                                           // 0x0070faca    56
                         push             0x0000270e                                    // 0x0070facb    680e270000
                         push             edi                                           // 0x0070fad0    57
                         call             @StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE@20                          // 0x0070fad1    e83aa7d1ff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fad6    8b0d203bcd00
                         push             esi                                           // 0x0070fadc    56
                         mov              eax, 0x0000270d                               // 0x0070fadd    b80d270000
                         push             eax                                           // 0x0070fae2    50
                         push             edi                                           // 0x0070fae3    57
                         call             @StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE@20                          // 0x0070fae4    e827a7d1ff
                         pop              edi                                           // 0x0070fae9    5f
                         pop              esi                                           // 0x0070faea    5e
                         add              esp, 0x08                                     // 0x0070faeb    83c408
                         ret                                                            // 0x0070faee    c3
_jmp_addr_0x0070faef:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070faef    8b0d203bcd00
                         push             esi                                           // 0x0070faf5    56
                         mov              eax, 0x0000270c                               // 0x0070faf6    b80c270000
                         push             eax                                           // 0x0070fafb    50
                         push             edi                                           // 0x0070fafc    57
                         call             @StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE@20                          // 0x0070fafd    e80ea7d1ff
                         pop              edi                                           // 0x0070fb02    5f
                         pop              esi                                           // 0x0070fb03    5e
                         add              esp, 0x08                                     // 0x0070fb04    83c408
                         ret                                                            // 0x0070fb07    c3
_jmp_addr_0x0070fb08:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fb08    8b0d203bcd00
                         push             edi                                           // 0x0070fb0e    57
                         push             esi                                           // 0x0070fb0f    56
                         push             esi                                           // 0x0070fb10    56
                         call             @StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE@20                          // 0x0070fb11    e8faa6d1ff
                         pop              edi                                           // 0x0070fb16    5f
                         pop              esi                                           // 0x0070fb17    5e
                         add              esp, 0x08                                     // 0x0070fb18    83c408
                         ret                                                            // 0x0070fb1b    c3
                         nop                                                            // 0x0070fb1c    90
                         nop                                                            // 0x0070fb1d    90
                         nop                                                            // 0x0070fb1e    90
                         nop                                                            // 0x0070fb1f    90
                         push             ecx                                           // 0x0070fb20    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fb21    8b0d105cd900
                         push             esi                                           // 0x0070fb27    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070fb28    8d442404
                         push             eax                                           // 0x0070fb2c    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fb2d    e88e70feff
                         mov.s            esi, eax                                      // 0x0070fb32    8bf0
                         test             esi, esi                                      // 0x0070fb34    85f6
                         {disp8} jl       _jmp_addr_0x0070fb3d                          // 0x0070fb36    7c05
                         cmp              esi, 0x55                                     // 0x0070fb38    83fe55
                         {disp8} jle      _jmp_addr_0x0070fb4a                          // 0x0070fb3b    7e0d
_jmp_addr_0x0070fb3d:    push             0x00c20adc                                    // 0x0070fb3d    68dc0ac200
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fb42    e86967feff
                         add              esp, 0x04                                     // 0x0070fb47    83c404
_jmp_addr_0x0070fb4a:    {disp32} mov     ecx, dword ptr [_game]                        // 0x0070fb4a    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x00250090]             // 0x0070fb50    8b9190002500
                         {disp32} mov     dword ptr [edx + 0x00000098], 0x00000000      // 0x0070fb56    c7829800000000000000
                         {disp32} mov     eax, dword ptr [_game]                        // 0x0070fb60    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x00250090]             // 0x0070fb65    8b8890002500
                         {disp32} mov     dword ptr [ecx + 0x0000009c], 0x00000000      // 0x0070fb6b    c7819c00000000000000
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fb75    8b0d203bcd00
                         push             esi                                           // 0x0070fb7b    56
                         call             _jmp_addr_0x00428230                          // 0x0070fb7c    e8af86d1ff
                         pop              esi                                           // 0x0070fb81    5e
                         pop              ecx                                           // 0x0070fb82    59
                         ret                                                            // 0x0070fb83    c3
                         nop                                                            // 0x0070fb84    90
                         nop                                                            // 0x0070fb85    90
                         nop                                                            // 0x0070fb86    90
                         nop                                                            // 0x0070fb87    90
                         nop                                                            // 0x0070fb88    90
                         nop                                                            // 0x0070fb89    90
                         nop                                                            // 0x0070fb8a    90
                         nop                                                            // 0x0070fb8b    90
                         nop                                                            // 0x0070fb8c    90
                         nop                                                            // 0x0070fb8d    90
                         nop                                                            // 0x0070fb8e    90
                         nop                                                            // 0x0070fb8f    90
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fb90    8b0d203bcd00
                         push             0x0                                           // 0x0070fb96    6a00
                         call             _jmp_addr_0x00428230                          // 0x0070fb98    e89386d1ff
                         ret                                                            // 0x0070fb9d    c3
                         nop                                                            // 0x0070fb9e    90
                         nop                                                            // 0x0070fb9f    90
                         push             ecx                                           // 0x0070fba0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fba1    8b0d105cd900
                         push             esi                                           // 0x0070fba7    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070fba8    8d442404
                         push             eax                                           // 0x0070fbac    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fbad    e80e70feff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fbb2    8b0d203bcd00
                         mov.s            esi, eax                                      // 0x0070fbb8    8bf0
                         call             _jmp_addr_0x00426d30                          // 0x0070fbba    e87171d1ff
                         test             eax, eax                                      // 0x0070fbbf    85c0
                         {disp8} je       _jmp_addr_0x0070fbe4                          // 0x0070fbc1    7421
                         {disp32} mov     edx, dword ptr [_global]                      // 0x0070fbc3    8b15203bcd00
                         {disp8} mov      eax, dword ptr [edx + 0x28]                   // 0x0070fbc9    8b4228
                         xor.s            ecx, ecx                                      // 0x0070fbcc    33c9
                         cmp.s            eax, esi                                      // 0x0070fbce    3bc6
                         setne            cl                                            // 0x0070fbd0    0f95c1
                         push             0x6                                           // 0x0070fbd3    6a06
                         push             ecx                                           // 0x0070fbd5    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fbd6    8b0d105cd900
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070fbdc    e8bf6ffeff
                         pop              esi                                           // 0x0070fbe1    5e
                         pop              ecx                                           // 0x0070fbe2    59
                         ret                                                            // 0x0070fbe3    c3
_jmp_addr_0x0070fbe4:    call             _jmp_addr_0x006f8260                          // 0x0070fbe4    e87786feff
                         pop              esi                                           // 0x0070fbe9    5e
                         pop              ecx                                           // 0x0070fbea    59
                         ret                                                            // 0x0070fbeb    c3
                         nop                                                            // 0x0070fbec    90
                         nop                                                            // 0x0070fbed    90
                         nop                                                            // 0x0070fbee    90
                         nop                                                            // 0x0070fbef    90
                         push             ecx                                           // 0x0070fbf0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fbf1    8b0d105cd900
                         push             esi                                           // 0x0070fbf7    56
                         push             edi                                           // 0x0070fbf8    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070fbf9    8d442408
                         push             eax                                           // 0x0070fbfd    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fbfe    e8bd6ffeff
                         push             eax                                           // 0x0070fc03    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fc04    e817d6ffff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fc09    8b0d105cd900
                         add              esp, 0x04                                     // 0x0070fc0f    83c404
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0070fc12    8d542408
                         push             edx                                           // 0x0070fc16    52
                         mov.s            esi, eax                                      // 0x0070fc17    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fc19    e8a26ffeff
                         test             esi, esi                                      // 0x0070fc1e    85f6
                         mov.s            edi, eax                                      // 0x0070fc20    8bf8
                         {disp8} jne      _jmp_addr_0x0070fc31                          // 0x0070fc22    750d
                         push             0x00c0c258                                    // 0x0070fc24    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fc29    e88266feff
                         add              esp, 0x04                                     // 0x0070fc2e    83c404
_jmp_addr_0x0070fc31:    test             edi, edi                                      // 0x0070fc31    85ff
                         {disp8} jle      _jmp_addr_0x0070fc3a                          // 0x0070fc33    7e05
                         cmp              edi, 0x55                                     // 0x0070fc35    83ff55
                         {disp8} jl       _jmp_addr_0x0070fc47                          // 0x0070fc38    7c0d
_jmp_addr_0x0070fc3a:    push             0x00c20adc                                    // 0x0070fc3a    68dc0ac200
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fc3f    e86c66feff
                         add              esp, 0x04                                     // 0x0070fc44    83c404
_jmp_addr_0x0070fc47:    test             esi, esi                                      // 0x0070fc47    85f6
                         {disp8} je       _jmp_addr_0x0070fc58                          // 0x0070fc49    740d
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fc4b    8b0d203bcd00
                         push             esi                                           // 0x0070fc51    56
                         push             edi                                           // 0x0070fc52    57
                         call             _jmp_addr_0x00429230                          // 0x0070fc53    e8d895d1ff
_jmp_addr_0x0070fc58:    pop              edi                                           // 0x0070fc58    5f
                         pop              esi                                           // 0x0070fc59    5e
                         pop              ecx                                           // 0x0070fc5a    59
                         ret                                                            // 0x0070fc5b    c3
                         nop                                                            // 0x0070fc5c    90
                         nop                                                            // 0x0070fc5d    90
                         nop                                                            // 0x0070fc5e    90
                         nop                                                            // 0x0070fc5f    90
                         push             ecx                                           // 0x0070fc60    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fc61    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070fc67    8d442400
                         push             eax                                           // 0x0070fc6b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fc6c    e84f6ffeff
                         push             eax                                           // 0x0070fc71    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fc72    e8a9d5ffff
                         add              esp, 0x04                                     // 0x0070fc77    83c404
                         test             eax, eax                                      // 0x0070fc7a    85c0
                         {disp8} jne      _jmp_addr_0x0070fc8d                          // 0x0070fc7c    750f
                         push             0x00c0c258                                    // 0x0070fc7e    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fc83    e82866feff
                         add              esp, 0x04                                     // 0x0070fc88    83c404
                         pop              ecx                                           // 0x0070fc8b    59
                         ret                                                            // 0x0070fc8c    c3
_jmp_addr_0x0070fc8d:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fc8d    8b0d203bcd00
                         push             eax                                           // 0x0070fc93    50
                         call             _jmp_addr_0x00429340                          // 0x0070fc94    e8a796d1ff
                         pop              ecx                                           // 0x0070fc99    59
                         ret                                                            // 0x0070fc9a    c3
                         nop                                                            // 0x0070fc9b    90
                         nop                                                            // 0x0070fc9c    90
                         nop                                                            // 0x0070fc9d    90
                         nop                                                            // 0x0070fc9e    90
                         nop                                                            // 0x0070fc9f    90
                         push             ecx                                           // 0x0070fca0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fca1    8b0d105cd900
                         push             esi                                           // 0x0070fca7    56
                         push             edi                                           // 0x0070fca8    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x0070fca9    8d442408
                         push             eax                                           // 0x0070fcad    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fcae    e80d6ffeff
                         push             eax                                           // 0x0070fcb3    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fcb4    e867d5ffff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fcb9    8b0d105cd900
                         add              esp, 0x04                                     // 0x0070fcbf    83c404
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0070fcc2    8d542408
                         push             edx                                           // 0x0070fcc6    52
                         mov.s            esi, eax                                      // 0x0070fcc7    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fcc9    e8f26efeff
                         push             eax                                           // 0x0070fcce    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fccf    e84cd5ffff
                         add              esp, 0x04                                     // 0x0070fcd4    83c404
                         test             esi, esi                                      // 0x0070fcd7    85f6
                         mov.s            edi, eax                                      // 0x0070fcd9    8bf8
                         {disp8} je       _jmp_addr_0x0070fce1                          // 0x0070fcdb    7404
                         test             edi, edi                                      // 0x0070fcdd    85ff
                         {disp8} jne      _jmp_addr_0x0070fcee                          // 0x0070fcdf    750d
_jmp_addr_0x0070fce1:    push             0x00c0c258                                    // 0x0070fce1    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fce6    e8c565feff
                         add              esp, 0x04                                     // 0x0070fceb    83c404
_jmp_addr_0x0070fcee:    test             esi, esi                                      // 0x0070fcee    85f6
                         {disp8} je       _jmp_addr_0x0070fd03                          // 0x0070fcf0    7411
                         test             edi, edi                                      // 0x0070fcf2    85ff
                         {disp8} je       _jmp_addr_0x0070fd03                          // 0x0070fcf4    740d
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fcf6    8b0d203bcd00
                         push             esi                                           // 0x0070fcfc    56
                         push             edi                                           // 0x0070fcfd    57
                         call             _jmp_addr_0x00429880                          // 0x0070fcfe    e87d9bd1ff
_jmp_addr_0x0070fd03:    pop              edi                                           // 0x0070fd03    5f
                         pop              esi                                           // 0x0070fd04    5e
                         pop              ecx                                           // 0x0070fd05    59
                         ret                                                            // 0x0070fd06    c3
                         nop                                                            // 0x0070fd07    90
                         nop                                                            // 0x0070fd08    90
                         nop                                                            // 0x0070fd09    90
                         nop                                                            // 0x0070fd0a    90
                         nop                                                            // 0x0070fd0b    90
                         nop                                                            // 0x0070fd0c    90
                         nop                                                            // 0x0070fd0d    90
                         nop                                                            // 0x0070fd0e    90
                         nop                                                            // 0x0070fd0f    90
                         push             ecx                                           // 0x0070fd10    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fd11    8b0d105cd900
                         push             esi                                           // 0x0070fd17    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070fd18    8d442404
                         push             eax                                           // 0x0070fd1c    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fd1d    e89e6efeff
                         push             eax                                           // 0x0070fd22    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fd23    e8f8d4ffff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fd28    8b0d105cd900
                         add              esp, 0x04                                     // 0x0070fd2e    83c404
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x0070fd31    8d542404
                         push             edx                                           // 0x0070fd35    52
                         mov.s            esi, eax                                      // 0x0070fd36    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fd38    e8836efeff
                         test             esi, esi                                      // 0x0070fd3d    85f6
                         {disp8} jne      _jmp_addr_0x0070fd51                          // 0x0070fd3f    7510
                         push             0x00c0c258                                    // 0x0070fd41    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fd46    e86565feff
                         add              esp, 0x04                                     // 0x0070fd4b    83c404
                         pop              esi                                           // 0x0070fd4e    5e
                         pop              ecx                                           // 0x0070fd4f    59
                         ret                                                            // 0x0070fd50    c3
_jmp_addr_0x0070fd51:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fd51    8b0d203bcd00
                         push             eax                                           // 0x0070fd57    50
                         push             esi                                           // 0x0070fd58    56
                         call             _jmp_addr_0x004298a0                          // 0x0070fd59    e8429bd1ff
                         pop              esi                                           // 0x0070fd5e    5e
                         pop              ecx                                           // 0x0070fd5f    59
                         ret                                                            // 0x0070fd60    c3
                         nop                                                            // 0x0070fd61    90
                         nop                                                            // 0x0070fd62    90
                         nop                                                            // 0x0070fd63    90
                         nop                                                            // 0x0070fd64    90
                         nop                                                            // 0x0070fd65    90
                         nop                                                            // 0x0070fd66    90
                         nop                                                            // 0x0070fd67    90
                         nop                                                            // 0x0070fd68    90
                         nop                                                            // 0x0070fd69    90
                         nop                                                            // 0x0070fd6a    90
                         nop                                                            // 0x0070fd6b    90
                         nop                                                            // 0x0070fd6c    90
                         nop                                                            // 0x0070fd6d    90
                         nop                                                            // 0x0070fd6e    90
                         nop                                                            // 0x0070fd6f    90
                         push             ecx                                           // 0x0070fd70    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fd71    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070fd77    8d442400
                         push             eax                                           // 0x0070fd7b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fd7c    e83f6efeff
                         push             eax                                           // 0x0070fd81    50
                         call             _jmp_addr_0x0070d220                          // 0x0070fd82    e899d4ffff
                         add              esp, 0x04                                     // 0x0070fd87    83c404
                         test             eax, eax                                      // 0x0070fd8a    85c0
                         {disp8} jne      _jmp_addr_0x0070fdb7                          // 0x0070fd8c    7529
                         push             0x00c0c258                                    // 0x0070fd8e    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fd93    e81865feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fd98    8b0d105cd900
                         add              esp, 0x04                                     // 0x0070fd9e    83c404
                         {disp8} mov      dword ptr [esp + 0x00], 0x00000000            // 0x0070fda1    c744240000000000
                         {disp8} mov      edx, dword ptr [esp + 0x00]                   // 0x0070fda9    8b542400
                         push             0x2                                           // 0x0070fdad    6a02
                         push             edx                                           // 0x0070fdaf    52
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070fdb0    e8eb6dfeff
                         pop              ecx                                           // 0x0070fdb5    59
                         ret                                                            // 0x0070fdb6    c3
_jmp_addr_0x0070fdb7:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fdb7    8b0d203bcd00
                         push             eax                                           // 0x0070fdbd    50
                         call             _jmp_addr_0x004293b0                          // 0x0070fdbe    e8ed95d1ff
                         {disp8} fstp     dword ptr [esp + 0x00]                        // 0x0070fdc3    d95c2400
                         {disp8} mov      ecx, dword ptr [esp + 0x00]                   // 0x0070fdc7    8b4c2400
                         push             0x2                                           // 0x0070fdcb    6a02
                         push             ecx                                           // 0x0070fdcd    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fdce    8b0d105cd900
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070fdd4    e8c76dfeff
                         pop              ecx                                           // 0x0070fdd9    59
                         ret                                                            // 0x0070fdda    c3
                         nop                                                            // 0x0070fddb    90
                         nop                                                            // 0x0070fddc    90
                         nop                                                            // 0x0070fddd    90
                         nop                                                            // 0x0070fdde    90
                         nop                                                            // 0x0070fddf    90
                         push             ecx                                           // 0x0070fde0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fde1    8b0d105cd900
                         push             esi                                           // 0x0070fde7    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070fde8    8d442404
                         push             eax                                           // 0x0070fdec    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fded    e8ce6dfeff
                         mov.s            esi, eax                                      // 0x0070fdf2    8bf0
                         test             esi, esi                                      // 0x0070fdf4    85f6
                         {disp8} jle      _jmp_addr_0x0070fdfd                          // 0x0070fdf6    7e05
                         cmp              esi, 0x55                                     // 0x0070fdf8    83fe55
                         {disp8} jl       _jmp_addr_0x0070fe0a                          // 0x0070fdfb    7c0d
_jmp_addr_0x0070fdfd:    push             0x00c20b04                                    // 0x0070fdfd    68040bc200
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fe02    e8a964feff
                         add              esp, 0x04                                     // 0x0070fe07    83c404
_jmp_addr_0x0070fe0a:    test             esi, esi                                      // 0x0070fe0a    85f6
                         {disp8} jle      _jmp_addr_0x0070fe13                          // 0x0070fe0c    7e05
                         cmp              esi, 0x55                                     // 0x0070fe0e    83fe55
                         {disp8} jl       _jmp_addr_0x0070fe2d                          // 0x0070fe11    7c1a
_jmp_addr_0x0070fe13:    {disp8} mov      dword ptr [esp + 0x04], 0x00000000            // 0x0070fe13    c744240400000000
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x0070fe1b    8b4c2404
                         push             0x2                                           // 0x0070fe1f    6a02
                         push             ecx                                           // 0x0070fe21    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fe22    8b0d105cd900
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070fe28    e8736dfeff
_jmp_addr_0x0070fe2d:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fe2d    8b0d203bcd00
                         push             esi                                           // 0x0070fe33    56
                         call             _jmp_addr_0x004293e0                          // 0x0070fe34    e8a795d1ff
                         {disp8} fstp     dword ptr [esp + 0x04]                        // 0x0070fe39    d95c2404
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x0070fe3d    8b542404
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fe41    8b0d105cd900
                         push             0x2                                           // 0x0070fe47    6a02
                         push             edx                                           // 0x0070fe49    52
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070fe4a    e8516dfeff
                         pop              esi                                           // 0x0070fe4f    5e
                         pop              ecx                                           // 0x0070fe50    59
                         ret                                                            // 0x0070fe51    c3
                         nop                                                            // 0x0070fe52    90
                         nop                                                            // 0x0070fe53    90
                         nop                                                            // 0x0070fe54    90
                         nop                                                            // 0x0070fe55    90
                         nop                                                            // 0x0070fe56    90
                         nop                                                            // 0x0070fe57    90
                         nop                                                            // 0x0070fe58    90
                         nop                                                            // 0x0070fe59    90
                         nop                                                            // 0x0070fe5a    90
                         nop                                                            // 0x0070fe5b    90
                         nop                                                            // 0x0070fe5c    90
                         nop                                                            // 0x0070fe5d    90
                         nop                                                            // 0x0070fe5e    90
                         nop                                                            // 0x0070fe5f    90
                         sub              esp, 0x1c                                     // 0x0070fe60    83ec1c
                         push             esi                                           // 0x0070fe63    56
                         {disp32} mov     esi, dword ptr [_script_dll]                  // 0x0070fe64    8b35105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070fe6a    8d442404
                         push             eax                                           // 0x0070fe6e    50
                         mov.s            ecx, esi                                      // 0x0070fe6f    8bce
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fe71    e84a6dfeff
                         mov.s            ecx, eax                                      // 0x0070fe76    8bc8
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x0070fe78    8d542404
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x0070fe7c    894c2410
                         push             edx                                           // 0x0070fe80    52
                         mov.s            ecx, esi                                      // 0x0070fe81    8bce
                         {disp8} mov      dword ptr [esp + 0x08], eax                   // 0x0070fe83    89442408
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fe87    e8346dfeff
                         {disp8} lea      ecx, dword ptr [esp + 0x04]                   // 0x0070fe8c    8d4c2404
                         push             ecx                                           // 0x0070fe90    51
                         mov.s            ecx, esi                                      // 0x0070fe91    8bce
                         {disp8} mov      dword ptr [esp + 0x08], eax                   // 0x0070fe93    89442408
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0070fe97    89442410
                         call             _jmp_addr_0x006f6bc0                          // 0x0070fe9b    e8206dfeff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070fea0    8b0d105cd900
                         mov.s            edx, eax                                      // 0x0070fea6    8bd0
                         {disp8} mov      dword ptr [esp + 0x04], eax                   // 0x0070fea8    89442404
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x0070feac    8d442404
                         push             eax                                           // 0x0070feb0    50
                         {disp8} mov      dword ptr [esp + 0x0c], edx                   // 0x0070feb1    8954240c
                         call             _jmp_addr_0x006f6bc0                          // 0x0070feb5    e8066dfeff
                         push             eax                                           // 0x0070feba    50
                         call             _jmp_addr_0x0070d220                          // 0x0070febb    e860d3ffff
                         mov.s            esi, eax                                      // 0x0070fec0    8bf0
                         add              esp, 0x04                                     // 0x0070fec2    83c404
                         test             esi, esi                                      // 0x0070fec5    85f6
                         {disp8} jne      _jmp_addr_0x0070fedb                          // 0x0070fec7    7512
                         push             0x00c0c258                                    // 0x0070fec9    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070fece    e8dd63feff
                         add              esp, 0x04                                     // 0x0070fed3    83c404
                         pop              esi                                           // 0x0070fed6    5e
                         add              esp, 0x1c                                     // 0x0070fed7    83c41c
                         ret                                                            // 0x0070feda    c3
_jmp_addr_0x0070fedb:    {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x0070fedb    8d4c2408
                         push             ecx                                           // 0x0070fedf    51
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                   // 0x0070fee0    8d4c2418
                         call             @__ct__9MapCoordsFRC7LHPoint@12               // 0x0070fee4    e87732efff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0070fee9    8b0d203bcd00
                         push             eax                                           // 0x0070feef    50
                         push             esi                                           // 0x0070fef0    56
                         call             _jmp_addr_0x004298c0                          // 0x0070fef1    e8ca99d1ff
                         pop              esi                                           // 0x0070fef6    5e
                         add              esp, 0x1c                                     // 0x0070fef7    83c41c
                         ret                                                            // 0x0070fefa    c3
                         nop                                                            // 0x0070fefb    90
                         nop                                                            // 0x0070fefc    90
                         nop                                                            // 0x0070fefd    90
                         nop                                                            // 0x0070fefe    90
                         nop                                                            // 0x0070feff    90
                         push             ecx                                           // 0x0070ff00    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ff01    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070ff07    8d442400
                         push             eax                                           // 0x0070ff0b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070ff0c    e8af6cfeff
                         push             eax                                           // 0x0070ff11    50
                         call             _jmp_addr_0x0070d220                          // 0x0070ff12    e809d3ffff
                         add              esp, 0x04                                     // 0x0070ff17    83c404
                         test             eax, eax                                      // 0x0070ff1a    85c0
                         {disp8} jne      _jmp_addr_0x0070ff2d                          // 0x0070ff1c    750f
                         push             0x00c0c258                                    // 0x0070ff1e    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070ff23    e88863feff
                         add              esp, 0x04                                     // 0x0070ff28    83c404
                         pop              ecx                                           // 0x0070ff2b    59
                         ret                                                            // 0x0070ff2c    c3
_jmp_addr_0x0070ff2d:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070ff2d    8b0d203bcd00
                         push             eax                                           // 0x0070ff33    50
                         call             _jmp_addr_0x00429910                          // 0x0070ff34    e8d799d1ff
                         pop              ecx                                           // 0x0070ff39    59
                         ret                                                            // 0x0070ff3a    c3
                         nop                                                            // 0x0070ff3b    90
                         nop                                                            // 0x0070ff3c    90
                         nop                                                            // 0x0070ff3d    90
                         nop                                                            // 0x0070ff3e    90
                         nop                                                            // 0x0070ff3f    90
                         push             ecx                                           // 0x0070ff40    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ff41    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070ff47    8d442400
                         push             eax                                           // 0x0070ff4b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070ff4c    e86f6cfeff
                         push             eax                                           // 0x0070ff51    50
                         call             _jmp_addr_0x0070d220                          // 0x0070ff52    e8c9d2ffff
                         add              esp, 0x04                                     // 0x0070ff57    83c404
                         test             eax, eax                                      // 0x0070ff5a    85c0
                         {disp8} jne      _jmp_addr_0x0070ff7c                          // 0x0070ff5c    751e
                         push             0x00c0c258                                    // 0x0070ff5e    6858c2c000
                         call             ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x0070ff63    e84863feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ff68    8b0d105cd900
                         add              esp, 0x04                                     // 0x0070ff6e    83c404
                         push             0x6                                           // 0x0070ff71    6a06
                         push             0x1                                           // 0x0070ff73    6a01
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ff75    e8266cfeff
                         pop              ecx                                           // 0x0070ff7a    59
                         ret                                                            // 0x0070ff7b    c3
_jmp_addr_0x0070ff7c:    {disp32} mov     ecx, dword ptr [_global]                      // 0x0070ff7c    8b0d203bcd00
                         push             eax                                           // 0x0070ff82    50
                         call             _jmp_addr_0x004298f0                          // 0x0070ff83    e86899d1ff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ff88    8b0d105cd900
                         push             0x6                                           // 0x0070ff8e    6a06
                         push             eax                                           // 0x0070ff90    50
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0070ff91    e80a6cfeff
                         pop              ecx                                           // 0x0070ff96    59
                         ret                                                            // 0x0070ff97    c3
                         nop                                                            // 0x0070ff98    90
                         nop                                                            // 0x0070ff99    90
                         nop                                                            // 0x0070ff9a    90
                         nop                                                            // 0x0070ff9b    90
                         nop                                                            // 0x0070ff9c    90
                         nop                                                            // 0x0070ff9d    90
                         nop                                                            // 0x0070ff9e    90
                         nop                                                            // 0x0070ff9f    90
                         push             ecx                                           // 0x0070ffa0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ffa1    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070ffa7    8d442400
                         push             eax                                           // 0x0070ffab    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070ffac    e80f6cfeff
                         test             eax, eax                                      // 0x0070ffb1    85c0
                         {disp8} je       _jmp_addr_0x0070ffd5                          // 0x0070ffb3    7420
                         push             0x1                                           // 0x0070ffb5    6a01
                         push             0x40e00000                                    // 0x0070ffb7    680000e040
                         push             0x00c5e158                                    // 0x0070ffbc    6858e1c500
                         {disp32} mov     dword ptr [data_bytes + 0x298158], 0x00000000 // 0x0070ffc1    c70558e1c50000000000
                         call             _jmp_addr_0x0071a610                          // 0x0070ffcb    e840a60000
                         add              esp, 0x0c                                     // 0x0070ffd0    83c40c
                         pop              ecx                                           // 0x0070ffd3    59
                         ret                                                            // 0x0070ffd4    c3
_jmp_addr_0x0070ffd5:    call             _jmp_addr_0x0071a640                          // 0x0070ffd5    e866a60000
                         pop              ecx                                           // 0x0070ffda    59
                         ret                                                            // 0x0070ffdb    c3
                         nop                                                            // 0x0070ffdc    90
                         nop                                                            // 0x0070ffdd    90
                         nop                                                            // 0x0070ffde    90
                         nop                                                            // 0x0070ffdf    90
                         push             ecx                                           // 0x0070ffe0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0070ffe1    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x0070ffe7    8d442400
                         push             eax                                           // 0x0070ffeb    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0070ffec    e8cf6bfeff
                         test             eax, eax                                      // 0x0070fff1    85c0
                         {disp8} je       _jmp_addr_0x00710015                          // 0x0070fff3    7420
                         push             0x1                                           // 0x0070fff5    6a01
                         push             0x40a00000                                    // 0x0070fff7    680000a040
                         push             0x00c5e15c                                    // 0x0070fffc    685ce1c500
                         {disp32} mov     dword ptr [data_bytes + 0x29815c], 0x00000000 // 0x00710001    c7055ce1c50000000000
                         call             _jmp_addr_0x0071a610                          // 0x0071000b    e800a60000
                         add              esp, 0x0c                                     // 0x00710010    83c40c
                         pop              ecx                                           // 0x00710013    59
                         ret                                                            // 0x00710014    c3
_jmp_addr_0x00710015:    call             _jmp_addr_0x0071a640                          // 0x00710015    e826a60000
                         pop              ecx                                           // 0x0071001a    59
                         ret                                                            // 0x0071001b    c3
                         nop                                                            // 0x0071001c    90
                         nop                                                            // 0x0071001d    90
                         nop                                                            // 0x0071001e    90
                         nop                                                            // 0x0071001f    90
                         push             ecx                                           // 0x00710020    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710021    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x00710027    8d442400
                         push             eax                                           // 0x0071002b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071002c    e88f6bfeff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00710031    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x00250090]             // 0x00710037    8b9190002500
                         {disp32} mov     dword ptr [edx + 0x00000084], eax             // 0x0071003d    898284000000
                         pop              ecx                                           // 0x00710043    59
                         ret                                                            // 0x00710044    c3
                         nop                                                            // 0x00710045    90
                         nop                                                            // 0x00710046    90
                         nop                                                            // 0x00710047    90
                         nop                                                            // 0x00710048    90
                         nop                                                            // 0x00710049    90
                         nop                                                            // 0x0071004a    90
                         nop                                                            // 0x0071004b    90
                         nop                                                            // 0x0071004c    90
                         nop                                                            // 0x0071004d    90
                         nop                                                            // 0x0071004e    90
                         nop                                                            // 0x0071004f    90
                         push             ecx                                           // 0x00710050    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710051    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x00710057    8d442400
                         push             eax                                           // 0x0071005b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071005c    e85f6bfeff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00710061    8b0d203bcd00
                         {disp8} mov      dword ptr [esp + 0x00], eax                   // 0x00710067    89442400
                         call             _jmp_addr_0x00426d30                          // 0x0071006b    e8c06cd1ff
                         test             eax, eax                                      // 0x00710070    85c0
                         {disp8} je       _jmp_addr_0x007100a6                          // 0x00710072    7432
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00710074    8b0d5c19d000
                         {disp8} fld      dword ptr [esp + 0x00]                        // 0x0071007a    d9442400
                         push             esi                                           // 0x0071007e    56
                         {disp32} mov     esi, dword ptr [ecx + 0x00250090]             // 0x0071007f    8bb190002500
                         push             0x6                                           // 0x00710085    6a06
                         call             _jmp_addr_0x007a1400                          // 0x00710087    e874130900
                         {disp32} mov     edx, dword ptr [esi + 0x00000098]             // 0x0071008c    8b9698000000
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710092    8b0d105cd900
                         cmp.s            edx, eax                                      // 0x00710098    3bd0
                         sbb.s            edx, edx                                      // 0x0071009a    1bd2
                         inc              edx                                           // 0x0071009c    42
                         push             edx                                           // 0x0071009d    52
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0071009e    e8fd6afeff
                         pop              esi                                           // 0x007100a3    5e
                         pop              ecx                                           // 0x007100a4    59
                         ret                                                            // 0x007100a5    c3
_jmp_addr_0x007100a6:    call             _jmp_addr_0x006f8260                          // 0x007100a6    e8b581feff
                         pop              ecx                                           // 0x007100ab    59
                         ret                                                            // 0x007100ac    c3
                         nop                                                            // 0x007100ad    90
                         nop                                                            // 0x007100ae    90
                         nop                                                            // 0x007100af    90
                         push             ecx                                           // 0x007100b0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x007100b1    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x007100b7    8d442400
                         push             eax                                           // 0x007100bb    50
                         call             _jmp_addr_0x006f6bc0                          // 0x007100bc    e8ff6afeff
                         test             eax, eax                                      // 0x007100c1    85c0
                         {disp8} jne      _jmp_addr_0x007100e8                          // 0x007100c3    7523
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x007100c5    8b0d203bcd00
                         call             _jmp_addr_0x004287d0                          // 0x007100cb    e80087d1ff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x007100d0    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x00250090]             // 0x007100d6    8b9190002500
                         {disp32} mov     dword ptr [edx + 0x00000090], 0x00000001      // 0x007100dc    c7829000000001000000
                         pop              ecx                                           // 0x007100e6    59
                         ret                                                            // 0x007100e7    c3
_jmp_addr_0x007100e8:    {disp32} mov     eax, dword ptr [_game]                        // 0x007100e8    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x00250090]             // 0x007100ed    8b8890002500
                         {disp32} mov     dword ptr [ecx + 0x00000090], 0x00000000      // 0x007100f3    c7819000000000000000
                         pop              ecx                                           // 0x007100fd    59
                         ret                                                            // 0x007100fe    c3
                         nop                                                            // 0x007100ff    90
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00710100    8b0d203bcd00
                         call             _jmp_addr_0x00426d30                          // 0x00710106    e8256cd1ff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0071010b    8b0d105cd900
                         push             0x6                                           // 0x00710111    6a06
                         push             eax                                           // 0x00710113    50
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x00710114    e8876afeff
                         ret                                                            // 0x00710119    c3
                         nop                                                            // 0x0071011a    90
                         nop                                                            // 0x0071011b    90
                         nop                                                            // 0x0071011c    90
                         nop                                                            // 0x0071011d    90
                         nop                                                            // 0x0071011e    90
                         nop                                                            // 0x0071011f    90
                         push             ecx                                           // 0x00710120    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710121    8b0d105cd900
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x00710127    8d442400
                         push             eax                                           // 0x0071012b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071012c    e88f6afeff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00710131    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x00250090]             // 0x00710137    8b9190002500
                         {disp32} mov     dword ptr [edx + 0x00000094], eax             // 0x0071013d    898294000000
                         pop              ecx                                           // 0x00710143    59
                         ret                                                            // 0x00710144    c3
                         nop                                                            // 0x00710145    90
                         nop                                                            // 0x00710146    90
                         nop                                                            // 0x00710147    90
                         nop                                                            // 0x00710148    90
                         nop                                                            // 0x00710149    90
                         nop                                                            // 0x0071014a    90
                         nop                                                            // 0x0071014b    90
                         nop                                                            // 0x0071014c    90
                         nop                                                            // 0x0071014d    90
                         nop                                                            // 0x0071014e    90
                         nop                                                            // 0x0071014f    90
                         push             ecx                                           // 0x00710150    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710151    8b0d105cd900
                         push             ebx                                           // 0x00710157    53
                         push             esi                                           // 0x00710158    56
                         push             edi                                           // 0x00710159    57
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x0071015a    8d44240c
                         push             eax                                           // 0x0071015e    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071015f    e85c6afeff
                         push             eax                                           // 0x00710164    50
                         call             _jmp_addr_0x0070d220                          // 0x00710165    e8b6d0ffff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0071016a    8b0d105cd900
                         add              esp, 0x04                                     // 0x00710170    83c404
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x00710173    8d54240c
                         push             edx                                           // 0x00710177    52
                         mov.s            esi, eax                                      // 0x00710178    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x0071017a    e8416afeff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x0071017f    8b0d105cd900
                         mov.s            edi, eax                                      // 0x00710185    8bf8
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x00710187    8d44240c
                         push             eax                                           // 0x0071018b    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071018c    e82f6afeff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710191    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x00710197    8d54240c
                         push             edx                                           // 0x0071019b    52
                         mov.s            ebx, eax                                      // 0x0071019c    8bd8
                         call             _jmp_addr_0x006f6bc0                          // 0x0071019e    e81d6afeff
                         test             esi, esi                                      // 0x007101a3    85f6
                         {disp8} je       _jmp_addr_0x007101c1                          // 0x007101a5    741a
                         push             0x0                                           // 0x007101a7    6a00
                         push             edi                                           // 0x007101a9    57
                         push             eax                                           // 0x007101aa    50
                         test             eax, eax                                      // 0x007101ab    85c0
                         push             0x0                                           // 0x007101ad    6a00
                         setne            al                                            // 0x007101af    0f95c0
                         push             0x0                                           // 0x007101b2    6a00
                         push             0x2                                           // 0x007101b4    6a02
                         push             eax                                           // 0x007101b6    50
                         push             ebx                                           // 0x007101b7    53
                         push             esi                                           // 0x007101b8    56
                         call             ?Create@SoundTag@@SAPAV1@PAVGameThingWithPos@@K_NKKHHW4AUDIO_SFX_BANK_TYPE@@H@Z                // 0x007101b9    e882e60000
                         add              esp, 0x24                                     // 0x007101be    83c424
_jmp_addr_0x007101c1:    pop              edi                                           // 0x007101c1    5f
                         pop              esi                                           // 0x007101c2    5e
                         pop              ebx                                           // 0x007101c3    5b
                         pop              ecx                                           // 0x007101c4    59
                         ret                                                            // 0x007101c5    c3
                         nop                                                            // 0x007101c6    90
                         nop                                                            // 0x007101c7    90
                         nop                                                            // 0x007101c8    90
                         nop                                                            // 0x007101c9    90
                         nop                                                            // 0x007101ca    90
                         nop                                                            // 0x007101cb    90
                         nop                                                            // 0x007101cc    90
                         nop                                                            // 0x007101cd    90
                         nop                                                            // 0x007101ce    90
                         nop                                                            // 0x007101cf    90
                         push             ecx                                           // 0x007101d0    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x007101d1    8b0d105cd900
                         push             esi                                           // 0x007101d7    56
                         push             edi                                           // 0x007101d8    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x007101d9    8d442408
                         push             eax                                           // 0x007101dd    50
                         call             _jmp_addr_0x006f6bc0                          // 0x007101de    e8dd69feff
                         push             eax                                           // 0x007101e3    50
                         call             _jmp_addr_0x0070d220                          // 0x007101e4    e837d0ffff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x007101e9    8b0d105cd900
                         add              esp, 0x04                                     // 0x007101ef    83c404
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x007101f2    8d542408
                         push             edx                                           // 0x007101f6    52
                         mov.s            esi, eax                                      // 0x007101f7    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x007101f9    e8c269feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x007101fe    8b0d105cd900
                         mov.s            edi, eax                                      // 0x00710204    8bf8
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x00710206    8d442408
                         push             eax                                           // 0x0071020a    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071020b    e8b069feff
                         test             esi, esi                                      // 0x00710210    85f6
                         {disp8} je       _jmp_addr_0x0071021f                          // 0x00710212    740b
                         push             edi                                           // 0x00710214    57
                         push             eax                                           // 0x00710215    50
                         push             esi                                           // 0x00710216    56
                         call             _jmp_addr_0x0071ebe0                          // 0x00710217    e8c4e90000
                         add              esp, 0x0c                                     // 0x0071021c    83c40c
_jmp_addr_0x0071021f:    pop              edi                                           // 0x0071021f    5f
                         pop              esi                                           // 0x00710220    5e
                         pop              ecx                                           // 0x00710221    59
                         ret                                                            // 0x00710222    c3
                         nop                                                            // 0x00710223    90
                         nop                                                            // 0x00710224    90
                         nop                                                            // 0x00710225    90
                         nop                                                            // 0x00710226    90
                         nop                                                            // 0x00710227    90
                         nop                                                            // 0x00710228    90
                         nop                                                            // 0x00710229    90
                         nop                                                            // 0x0071022a    90
                         nop                                                            // 0x0071022b    90
                         nop                                                            // 0x0071022c    90
                         nop                                                            // 0x0071022d    90
                         nop                                                            // 0x0071022e    90
                         nop                                                            // 0x0071022f    90
                         push             ecx                                           // 0x00710230    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710231    8b0d105cd900
                         push             esi                                           // 0x00710237    56
                         {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x00710238    8d442404
                         push             eax                                           // 0x0071023c    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071023d    e87e69feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710242    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x00710248    8d542404
                         push             edx                                           // 0x0071024c    52
                         mov.s            esi, eax                                      // 0x0071024d    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x0071024f    e86c69feff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00710254    8b0d203bcd00
                         push             esi                                           // 0x0071025a    56
                         push             eax                                           // 0x0071025b    50
                         push             eax                                           // 0x0071025c    50
                         call             _jmp_addr_0x0042a280                          // 0x0071025d    e81ea0d1ff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710262    8b0d105cd900
                         push             0x6                                           // 0x00710268    6a06
                         push             eax                                           // 0x0071026a    50
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x0071026b    e83069feff
                         pop              esi                                           // 0x00710270    5e
                         pop              ecx                                           // 0x00710271    59
                         ret                                                            // 0x00710272    c3
                         nop                                                            // 0x00710273    90
                         nop                                                            // 0x00710274    90
                         nop                                                            // 0x00710275    90
                         nop                                                            // 0x00710276    90
                         nop                                                            // 0x00710277    90
                         nop                                                            // 0x00710278    90
                         nop                                                            // 0x00710279    90
                         nop                                                            // 0x0071027a    90
                         nop                                                            // 0x0071027b    90
                         nop                                                            // 0x0071027c    90
                         nop                                                            // 0x0071027d    90
                         nop                                                            // 0x0071027e    90
                         nop                                                            // 0x0071027f    90
                         push             ecx                                           // 0x00710280    51
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710281    8b0d105cd900
                         push             esi                                           // 0x00710287    56
                         push             edi                                           // 0x00710288    57
                         {disp8} lea      eax, dword ptr [esp + 0x08]                   // 0x00710289    8d442408
                         push             eax                                           // 0x0071028d    50
                         call             _jmp_addr_0x006f6bc0                          // 0x0071028e    e82d69feff
                         {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x00710293    8b0d105cd900
                         {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x00710299    8d542408
                         push             edx                                           // 0x0071029d    52
                         mov.s            esi, eax                                      // 0x0071029e    8bf0
                         call             _jmp_addr_0x006f6bc0                          // 0x007102a0    e81b69feff
                         xor.s            edi, edi                                      // 0x007102a5    33ff
                         cmp              esi, 0x00001b3e                               // 0x007102a7    81fe3e1b0000
                         .byte            0x72, 0x2// {disp8} jb _jmp_addr_0x007102b1   // 0x007102ad    7202
                         xor.s            esi, esi                                      // 0x007102af    33f6
_jmp_addr_0x007102b1:    lea              ecx, dword ptr [esi + esi * 0x2]              // 0x007102b1    8d0c76
                         shl              ecx, 2                                        // 0x007102b4    c1e102
                         {disp32} mov     edx, dword ptr [ecx + 0x00942b3c]             // 0x007102b7    8b913c2b9400
                         {disp32} mov     ecx, dword ptr [ecx + 0x00942b40]             // 0x007102bd    8b89402b9400
                         test             ecx, ecx                                      // 0x007102c3    85c9
                         {disp8} je       _jmp_addr_0x007102e3                          // 0x007102c5    741c
                         neg              eax                                           // 0x007102c7    f7d8
                         sbb.s            eax, eax                                      // 0x007102c9    1bc0
                         push             edx                                           // 0x007102cb    52
                         and              eax, 0xfffffffe                               // 0x007102cc    83e0fe
                         push             ecx                                           // 0x007102cf    51
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x007102d0    8b0d203bcd00
                         add              eax, 0x0000270f                               // 0x007102d6    050f270000
                         push             eax                                           // 0x007102db    50
                         call             _jmp_addr_0x0042a280                          // 0x007102dc    e89f9fd1ff
                         mov.s            edi, eax                                      // 0x007102e1    8bf8
_jmp_addr_0x007102e3:    {disp32} mov     ecx, dword ptr [_script_dll]                  // 0x007102e3    8b0d105cd900
                         push             0x6                                           // 0x007102e9    6a06
                         push             edi                                           // 0x007102eb    57
                         call             ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x007102ec    e8af68feff
                         pop              edi                                           // 0x007102f1    5f
                         pop              esi                                           // 0x007102f2    5e
                         pop              ecx                                           // 0x007102f3    59
                         ret                                                            // 0x007102f4    c3
                         nop                                                            // 0x007102f5    90
                         nop                                                            // 0x007102f6    90
                         nop                                                            // 0x007102f7    90
                         nop                                                            // 0x007102f8    90
                         nop                                                            // 0x007102f9    90
                         nop                                                            // 0x007102fa    90
                         nop                                                            // 0x007102fb    90
                         nop                                                            // 0x007102fc    90
                         nop                                                            // 0x007102fd    90
                         nop                                                            // 0x007102fe    90
                         nop                                                            // 0x007102ff    90
_globl_ct_0x00710300:    {disp32} mov     cl, byte ptr [_DAT_00fac934]                  // 0x00710300    8a0d34c9fa00
                         mov              al, 0x01                                      // 0x00710306    b001
                         test             al, cl                                        // 0x00710308    84c8
                         {disp8} jne      _jmp_addr_0x00710314                          // 0x0071030a    7508
                         or.s             cl, al                                        // 0x0071030c    0ac8
                         {disp32} mov     byte ptr [_DAT_00fac934], cl                  // 0x0071030e    880d34c9fa00
_jmp_addr_0x00710314:    {disp32} jmp     _jmp_addr_0x00710320                          // 0x00710314    e907000000
                         nop                                                            // 0x00710319    90
                         nop                                                            // 0x0071031a    90
                         nop                                                            // 0x0071031b    90
                         nop                                                            // 0x0071031c    90
                         nop                                                            // 0x0071031d    90
                         nop                                                            // 0x0071031e    90
                         nop                                                            // 0x0071031f    90
_jmp_addr_0x00710320:    push             0x00407870                                    // 0x00710320    6870784000
                         call             _atexit                                       // 0x00710325    e867540b00
                         pop              ecx                                           // 0x0071032a    59
                         ret                                                            // 0x0071032b    c3
                         nop                                                            // 0x0071032c    90
                         nop                                                            // 0x0071032d    90
                         nop                                                            // 0x0071032e    90
                         nop                                                            // 0x0071032f    90
_globl_ct_0x00710330:    {disp32} jmp     _jmp_addr_0x00710340                          // 0x00710330    e90b000000
                         nop                                                            // 0x00710335    90
                         nop                                                            // 0x00710336    90
                         nop                                                            // 0x00710337    90
                         nop                                                            // 0x00710338    90
                         nop                                                            // 0x00710339    90
                         nop                                                            // 0x0071033a    90
                         nop                                                            // 0x0071033b    90
                         nop                                                            // 0x0071033c    90
                         nop                                                            // 0x0071033d    90
                         nop                                                            // 0x0071033e    90
                         nop                                                            // 0x0071033f    90
_jmp_addr_0x00710340:    {disp32} mov     dword ptr [data_bytes + 0x3d3024], 0xffffffff // 0x00710340    c7052490d900ffffffff
                         ret                                                            // 0x0071034a    c3
                         nop                                                            // 0x0071034b    90
                         nop                                                            // 0x0071034c    90
                         nop                                                            // 0x0071034d    90
                         nop                                                            // 0x0071034e    90
                         nop                                                            // 0x0071034f    90
_jmp_addr_0x00710350:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00710350    8b442404
                         add              eax, -0x02                                    // 0x00710354    83c0fe
                         cmp              eax, 0x03                                     // 0x00710357    83f803
                         {disp32} ja      _jmp_addr_0x007103f9                          // 0x0071035a    0f8799000000
                         jmp              dword ptr [eax*4 + 0x710400]                  // 0x00710360    ff248500047100
                         mov              eax, 0x00000002                               // 0x00710367    b802000000
                         ret                                                            // 0x0071036c    c3
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0071036d    8b0d5c19d000
                         xor.s            eax, eax                                      // 0x00710373    33c0
                         {disp32} mov     al, byte ptr [ecx + 0x00205a59]               // 0x00710375    8a81595a2000
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x0071037b    8d1480
                         lea              edx, dword ptr [eax + edx * 0x8]              // 0x0071037e    8d14d0
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x00710381    8d0450
                         shl              eax, 5                                        // 0x00710384    c1e005
                         {disp8} lea      ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00710387    8d4c0818
                         call             _jmp_addr_0x0064d6a0                          // 0x0071038b    e810d3f3ff
                         push             ecx                                           // 0x00710390    51
                         fstp             dword ptr [esp]                               // 0x00710391    d91c24
                         call             _jmp_addr_0x00414730                          // 0x00710394    e89743d0ff
                         xor.s            ecx, ecx                                      // 0x00710399    33c9
                         add              esp, 0x04                                     // 0x0071039b    83c404
                         cmp              eax, 0x03                                     // 0x0071039e    83f803
                         setl             cl                                            // 0x007103a1    0f9cc1
                         inc              ecx                                           // 0x007103a4    41
                         mov.s            eax, ecx                                      // 0x007103a5    8bc1
                         ret                                                            // 0x007103a7    c3
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x007103a8    8b0d5c19d000
                         xor.s            eax, eax                                      // 0x007103ae    33c0
                         {disp32} mov     al, byte ptr [ecx + 0x00205a59]               // 0x007103b0    8a81595a2000
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x007103b6    8d1480
                         lea              edx, dword ptr [eax + edx * 0x8]              // 0x007103b9    8d14d0
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x007103bc    8d0450
                         shl              eax, 5                                        // 0x007103bf    c1e005
                         {disp8} lea      ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x007103c2    8d4c0818
                         call             _jmp_addr_0x0064d6a0                          // 0x007103c6    e8d5d2f3ff
                         push             ecx                                           // 0x007103cb    51
                         fstp             dword ptr [esp]                               // 0x007103cc    d91c24
                         call             _jmp_addr_0x00414730                          // 0x007103cf    e85c43d0ff
                         xor.s            ecx, ecx                                      // 0x007103d4    33c9
                         add              esp, 0x04                                     // 0x007103d6    83c404
                         cmp              eax, 0x03                                     // 0x007103d9    83f803
                         setge            cl                                            // 0x007103dc    0f9dc1
                         inc              ecx                                           // 0x007103df    41
                         mov.s            eax, ecx                                      // 0x007103e0    8bc1
                         ret                                                            // 0x007103e2    c3
                         push             0x64                                          // 0x007103e3    6a64
                         call             ?LocalRand@GRand@@SAIJ@Z                      // 0x007103e5    e886e1fcff
                         xor.s            edx, edx                                      // 0x007103ea    33d2
                         add              esp, 0x04                                     // 0x007103ec    83c404
                         cmp              eax, 0x32                                     // 0x007103ef    83f832
                         seta             dl                                            // 0x007103f2    0f97c2
                         inc              edx                                           // 0x007103f5    42
                         mov.s            eax, edx                                      // 0x007103f6    8bc2
                         ret                                                            // 0x007103f8    c3
_jmp_addr_0x007103f9:    mov              eax, 0x00000001                               // 0x007103f9    b801000000
                         ret                                                            // 0x007103fe    c3

// Snippet: db, [0x007103ff, 0x00710400)
.byte 0x90                        // 0x007103ff

// Snippet: jmptbl, [0x00710400, 0x00710410)
.byte 0x67, 0x03, 0x71, 0x00      // 0x00710400
.byte 0x6d, 0x03, 0x71, 0x00      // 0x00710404
.byte 0xa8, 0x03, 0x71, 0x00      // 0x00710408
.byte 0xe3, 0x03, 0x71, 0x00      // 0x0071040c

