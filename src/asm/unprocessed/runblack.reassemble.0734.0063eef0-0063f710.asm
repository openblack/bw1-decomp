.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00407a30
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern _jmp_addr_0x00407ef0
.extern _jmp_addr_0x00408f80
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern _jmp_addr_0x00428230
.extern _jmp_addr_0x00429da0
.extern _jmp_addr_0x00439d40
.extern _jmp_addr_0x00439e50
.extern _jmp_addr_0x0043a070
.extern _jmp_addr_0x0043a2c0
.extern _jmp_addr_0x0043a320
.extern _jmp_addr_0x0043a380
.extern _jmp_addr_0x0043a390
.extern _jmp_addr_0x0043aa60
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00540020
.extern _jmp_addr_0x0054ae20
.extern _jmp_addr_0x0054cb50
.extern _jmp_addr_0x0054cb90
.extern _jmp_addr_0x0054da00
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x00553a70
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005d03d0
.extern _jmp_addr_0x005d0410
.extern _jmp_addr_0x005d8a10
.extern ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z
.extern _jmp_addr_0x006405f0
.extern _jmp_addr_0x0066bcd0
.extern _jmp_addr_0x0067d5d0
.extern _jmp_addr_0x006ebb00
.extern _jmp_addr_0x006ebb50
.extern _jmp_addr_0x006ec670
.extern _jmp_addr_0x00794830

.globl _jmp_addr_0x0063ef20
.globl _globl_ct_0x0063eef0

start_0x0063eef0_0x0063f710:
// Snippet: asm, [0x0063eef0, 0x0063f69f)
_globl_ct_0x0063eef0:    {disp32} jmp     _jmp_addr_0x0063ef00                          // 0x0063eef0    e90b000000
                         nop                                                            // 0x0063eef5    90
                         nop                                                            // 0x0063eef6    90
                         nop                                                            // 0x0063eef7    90
                         nop                                                            // 0x0063eef8    90
                         nop                                                            // 0x0063eef9    90
                         nop                                                            // 0x0063eefa    90
                         nop                                                            // 0x0063eefb    90
                         nop                                                            // 0x0063eefc    90
                         nop                                                            // 0x0063eefd    90
                         nop                                                            // 0x0063eefe    90
                         nop                                                            // 0x0063eeff    90
_jmp_addr_0x0063ef00:    xor.s            eax, eax                                      // 0x0063ef00    33c0
                         {disp32} mov     dword ptr [data_bytes + 0x37f620], eax        // 0x0063ef02    a32056d400
                         {disp32} mov     dword ptr [data_bytes + 0x37f624], eax        // 0x0063ef07    a32456d400
                         {disp32} mov     dword ptr [data_bytes + 0x37f628], eax        // 0x0063ef0c    a32856d400
                         ret                                                            // 0x0063ef11    c3
                         nop                                                            // 0x0063ef12    90
                         nop                                                            // 0x0063ef13    90
                         nop                                                            // 0x0063ef14    90
                         nop                                                            // 0x0063ef15    90
                         nop                                                            // 0x0063ef16    90
                         nop                                                            // 0x0063ef17    90
                         nop                                                            // 0x0063ef18    90
                         nop                                                            // 0x0063ef19    90
                         nop                                                            // 0x0063ef1a    90
                         nop                                                            // 0x0063ef1b    90
                         nop                                                            // 0x0063ef1c    90
                         nop                                                            // 0x0063ef1d    90
                         nop                                                            // 0x0063ef1e    90
                         nop                                                            // 0x0063ef1f    90
_jmp_addr_0x0063ef20:    sub              esp, 0x08                                     // 0x0063ef20    83ec08
                         push             ebx                                           // 0x0063ef23    53
                         xor.s            eax, eax                                      // 0x0063ef24    33c0
                         push             ebp                                           // 0x0063ef26    55
                         push             esi                                           // 0x0063ef27    56
                         mov.s            esi, ecx                                      // 0x0063ef28    8bf1
                         {disp32} mov     al, byte ptr [esi + 0x00205a59]               // 0x0063ef2a    8a86595a2000
                         push             edi                                           // 0x0063ef30    57
                         {disp8} mov      dword ptr [esp + 0x10], esi                   // 0x0063ef31    89742410
                         lea              ecx, dword ptr [eax + eax * 0x4]              // 0x0063ef35    8d0c80
                         lea              edx, dword ptr [eax + ecx * 0x8]              // 0x0063ef38    8d14c8
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x0063ef3b    8d0450
                         shl              eax, 5                                        // 0x0063ef3e    c1e005
                         {disp32} mov     ecx, dword ptr [eax + esi * 0x1 + 0x00000a64] // 0x0063ef41    8b8c30640a0000
                         test             ecx, ecx                                      // 0x0063ef48    85c9
                         {disp8} je       _jmp_addr_0x0063ef51                          // 0x0063ef4a    7405
                         call             ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x0063ef4c    e8ff88e3ff
_jmp_addr_0x0063ef51:    {disp32} mov     ecx, dword ptr [esi + 0x00205b80]             // 0x0063ef51    8b8e805b2000
                         {disp32} mov     esi, dword ptr [ecx + 0x00000094]             // 0x0063ef57    8bb194000000
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x0063ef5d    8b44241c
                         xor.s            edx, edx                                      // 0x0063ef61    33d2
                         mov              ebp, 0x00000001                               // 0x0063ef63    bd01000000
                         cmp.s            esi, ebp                                      // 0x0063ef68    3bf5
                         sete             dl                                            // 0x0063ef6a    0f94c2
                         xor.s            ebx, ebx                                      // 0x0063ef6d    33db
                         cmp.s            eax, ebp                                      // 0x0063ef6f    3bc5
                         mov              esi, 0x00000006                               // 0x0063ef71    be06000000
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x0063ef76    89542414
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063ef7a    0f8570010000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063ef80    8b0d5c19d000
                         {disp32} mov     eax, dword ptr [ecx + 0x00205a10]             // 0x0063ef86    8b81105a2000
                         test             eax, eax                                      // 0x0063ef8c    85c0
                         {disp8} je       _jmp_addr_0x0063f005                          // 0x0063ef8e    7475
                         {disp32} mov     eax, dword ptr [ecx + 0x0025005c]             // 0x0063ef90    8b815c002500
                         {disp32} mov     ecx, dword ptr [eax + 0x000045e8]             // 0x0063ef96    8b88e8450000
                         test             ecx, ecx                                      // 0x0063ef9c    85c9
                         {disp8} je       _jmp_addr_0x0063efae                          // 0x0063ef9e    740e
                         {disp32} mov     ecx, dword ptr [eax + 0x000045ec]             // 0x0063efa0    8b88ec450000
                         test             ecx, ecx                                      // 0x0063efa6    85c9
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063efa8    0f8542010000
_jmp_addr_0x0063efae:    {disp32} mov     eax, dword ptr [data_bytes + 0x30daf0]        // 0x0063efae    a1f03acd00
                         {disp32} mov     dword ptr [eax + 0x000000b0], 0x0054b1a0      // 0x0063efb3    c780b0000000a0b15400
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30daf0]        // 0x0063efbd    8b0df03acd00
                         push             ecx                                           // 0x0063efc3    51
                         mov.s            ebx, ebp                                      // 0x0063efc4    8bdd
                         call             _jmp_addr_0x00407a30                          // 0x0063efc6    e8658adcff
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351cac]        // 0x0063efcb    a1ac7cd100
                         add              esp, 0x04                                     // 0x0063efd0    83c404
                         cmp              eax, 0x00000dd1                               // 0x0063efd3    3dd10d0000
                         {disp8} ja       _jmp_addr_0x0063efe1                          // 0x0063efd8    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0063efda    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0063efed                          // 0x0063efdf    eb0c
_jmp_addr_0x0063efe1:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0063efe1    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000a5cc]             // 0x0063efe7    8d82cca50000
_jmp_addr_0x0063efed:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0063efed    8b4008
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30daf0]        // 0x0063eff0    8b0df03acd00
                         push             0x0                                           // 0x0063eff6    6a00
                         push             0x3                                           // 0x0063eff8    6a03
                         push             eax                                           // 0x0063effa    50
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0063effb    e89021ddff
                         {disp32} jmp     _jmp_addr_0x0063f0f0                          // 0x0063f000    e9eb000000
_jmp_addr_0x0063f005:    call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0063f005    e8763ff1ff
                         test             eax, eax                                      // 0x0063f00a    85c0
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063f00c    0f85de000000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f012    8b0d5c19d000
                         cmp              dword ptr [ecx + 0x00205a08], esi             // 0x0063f018    39b1085a2000
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063f01e    0f85cc000000
                         {disp32} mov     eax, dword ptr [ecx + 0x0025005c]             // 0x0063f024    8b815c002500
                         {disp32} mov     edx, dword ptr [eax + 0x000045e8]             // 0x0063f02a    8b90e8450000
                         test             edx, edx                                      // 0x0063f030    85d2
                         mov.s            ebx, ebp                                      // 0x0063f032    8bdd
                         {disp8} je       _jmp_addr_0x0063f044                          // 0x0063f034    740e
                         {disp32} mov     edx, dword ptr [eax + 0x000045ec]             // 0x0063f036    8b90ec450000
                         test             edx, edx                                      // 0x0063f03c    85d2
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063f03e    0f85ac000000
_jmp_addr_0x0063f044:    {disp32} mov     ecx, dword ptr [ecx + 0x00250090]             // 0x0063f044    8b8990002500
                         call             _jmp_addr_0x006ebb50                          // 0x0063f04a    e801cb0a00
                         test             eax, eax                                      // 0x0063f04f    85c0
                         {disp32} je      _jmp_addr_0x0063f0f0                          // 0x0063f051    0f8499000000
                         {disp32} mov     al, byte ptr [data_bytes + 0x5df1db]          // 0x0063f057    a0db51fa00
                         test             al, al                                        // 0x0063f05c    84c0
                         {disp32} jne     _jmp_addr_0x0063f0f0                          // 0x0063f05e    0f858c000000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f064    8b0d5c19d000
                         {disp32} mov     ecx, dword ptr [ecx + 0x00250090]             // 0x0063f06a    8b8990002500
                         push             0x0                                           // 0x0063f070    6a00
                         call             _jmp_addr_0x006ebb00                          // 0x0063f072    e889ca0a00
                         {disp32} mov     eax, dword ptr [data_bytes + 0x33b9a4]        // 0x0063f077    a1a419d000
                         test             eax, eax                                      // 0x0063f07c    85c0
                         {disp8} je       _jmp_addr_0x0063f0bf                          // 0x0063f07e    743f
                         {disp32} mov     eax, dword ptr [data_bytes + 0x35a198]        // 0x0063f080    a19801d200
                         xor.s            ecx, ecx                                      // 0x0063f085    33c9
                         test             eax, eax                                      // 0x0063f087    85c0
                         {disp32} mov     byte ptr [data_bytes + 0x33b9a9], 0x01        // 0x0063f089    c605a919d00001
                         {disp8} jle      _jmp_addr_0x0063f0b3                          // 0x0063f090    7e21
                         mov              edx, 0x00d1d28c                               // 0x0063f092    ba8cd2d100
                         mov              edi, 0x0000feff                               // 0x0063f097    bffffe0000
_jmp_addr_0x0063f09c:    mov              eax, dword ptr [edx]                          // 0x0063f09c    8b02
                         test             eax, eax                                      // 0x0063f09e    85c0
                         {disp8} je       _jmp_addr_0x0063f0a6                          // 0x0063f0a0    7404
                         and              word ptr [eax + 0x24], di                     // 0x0063f0a2    66217824
_jmp_addr_0x0063f0a6:    {disp32} mov     eax, dword ptr [data_bytes + 0x35a198]        // 0x0063f0a6    a19801d200
                         inc              ecx                                           // 0x0063f0ab    41
                         add              edx, 0x04                                     // 0x0063f0ac    83c204
                         cmp.s            ecx, eax                                      // 0x0063f0af    3bc8
                         {disp8} jl       _jmp_addr_0x0063f09c                          // 0x0063f0b1    7ce9
_jmp_addr_0x0063f0b3:    {disp32} mov     dword ptr [data_bytes + 0x35a198], 0x00000000 // 0x0063f0b3    c7059801d20000000000
                         {disp8} jmp      _jmp_addr_0x0063f0f0                          // 0x0063f0bd    eb31
_jmp_addr_0x0063f0bf:    cmp              dword ptr [data_bytes + 0x351cac], 0x00001afb // 0x0063f0bf    813dac7cd100fb1a0000
                         {disp8} ja       _jmp_addr_0x0063f0d2                          // 0x0063f0c9    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0063f0cb    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0063f0de                          // 0x0063f0d0    eb0c
_jmp_addr_0x0063f0d2:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0063f0d2    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x000143c4]             // 0x0063f0d8    8d82c4430100
_jmp_addr_0x0063f0de:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0063f0de    8b4008
                         push             eax                                           // 0x0063f0e1    50
                         call             _jmp_addr_0x0054cb90                          // 0x0063f0e2    e8a9daf0ff
                         push             ebp                                           // 0x0063f0e7    55
                         call             _jmp_addr_0x0054ae20                          // 0x0063f0e8    e833bdf0ff
                         add              esp, 0x08                                     // 0x0063f0ed    83c408
_jmp_addr_0x0063f0f0:    call             _jmp_addr_0x00407ef0                          // 0x0063f0f0    e8fb8ddcff
                         cmp              dword ptr [esp + 0x1c], 0x3c                  // 0x0063f0f5    837c241c3c
                         {disp32} jne     _jmp_addr_0x0063f1dd                          // 0x0063f0fa    0f85dd000000
                         xor.s            bl, bl                                        // 0x0063f100    32db
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f102    e8c98ddcff
                         test             eax, eax                                      // 0x0063f107    85c0
                         {disp8} je       _jmp_addr_0x0063f146                          // 0x0063f109    743b
                         {disp32} mov     al, byte ptr [data_bytes + 0x286cec]          // 0x0063f10b    a0ecccc400
                         test             al, al                                        // 0x0063f110    84c0
                         {disp8} jne      _jmp_addr_0x0063f146                          // 0x0063f112    7532
                         mov              bl, 0x01                                      // 0x0063f114    b301
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f116    e8b58ddcff
                         {disp8} mov      cl, byte ptr [eax + 0x64]                     // 0x0063f11b    8a4864
                         test             cl, cl                                        // 0x0063f11e    84c9
                         {disp8} jne      _jmp_addr_0x0063f146                          // 0x0063f120    7524
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f122    e8a98ddcff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30a65c]        // 0x0063f127    8b0d5c06cd00
                         cmp              eax, dword ptr [ecx + 0x04]                   // 0x0063f12d    3b4104
                         {disp8} jne      _jmp_addr_0x0063f134                          // 0x0063f130    7502
                         xor.s            bl, bl                                        // 0x0063f132    32db
_jmp_addr_0x0063f134:    call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f134    e8978ddcff
                         {disp32} mov     edx, dword ptr [data_bytes + 0x30a63c]        // 0x0063f139    8b153c06cd00
                         cmp              eax, dword ptr [edx + 0x04]                   // 0x0063f13f    3b4204
                         {disp8} jne      _jmp_addr_0x0063f146                          // 0x0063f142    7502
                         xor.s            bl, bl                                        // 0x0063f144    32db
_jmp_addr_0x0063f146:    {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f146    8b0d5c19d000
                         {disp32} mov     eax, dword ptr [ecx + 0x00205a0c]             // 0x0063f14c    8b810c5a2000
                         test             eax, eax                                      // 0x0063f152    85c0
                         {disp32} jne     _jmp_addr_0x0063f1db                          // 0x0063f154    0f8581000000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0063f15a    e8213ef1ff
                         test             eax, eax                                      // 0x0063f15f    85c0
                         {disp8} jne      _jmp_addr_0x0063f1db                          // 0x0063f161    7578
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f163    8b0d5c19d000
                         cmp              dword ptr [ecx + 0x00205a28], ebp             // 0x0063f169    39a9285a2000
                         {disp8} je       _jmp_addr_0x0063f1db                          // 0x0063f16f    746a
                         test             bl, bl                                        // 0x0063f171    84db
                         {disp8} jne      _jmp_addr_0x0063f1db                          // 0x0063f173    7566
                         cmp              dword ptr [ecx + 0x00205a08], esi             // 0x0063f175    39b1085a2000
                         {disp8} je       _jmp_addr_0x0063f1db                          // 0x0063f17b    745e
                         {disp32} mov     eax, dword ptr [ecx + 0x0025005c]             // 0x0063f17d    8b815c002500
                         {disp32} mov     edx, dword ptr [eax + 0x000045e8]             // 0x0063f183    8b90e8450000
                         test             edx, edx                                      // 0x0063f189    85d2
                         {disp8} je       _jmp_addr_0x0063f197                          // 0x0063f18b    740a
                         {disp32} mov     edx, dword ptr [eax + 0x000045ec]             // 0x0063f18d    8b90ec450000
                         test             edx, edx                                      // 0x0063f193    85d2
                         {disp8} jne      _jmp_addr_0x0063f1db                          // 0x0063f195    7544
_jmp_addr_0x0063f197:    call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0063f197    e8e43df1ff
                         test             eax, eax                                      // 0x0063f19c    85c0
                         {disp8} jne      _jmp_addr_0x0063f1db                          // 0x0063f19e    753b
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f1a0    8b0d5c19d000
                         cmp              dword ptr [ecx + 0x00205a28], ebp             // 0x0063f1a6    39a9285a2000
                         {disp8} jne      _jmp_addr_0x0063f1b3                          // 0x0063f1ac    7505
                         call             _jmp_addr_0x00553a70                          // 0x0063f1ae    e8bd48f1ff
_jmp_addr_0x0063f1b3:    cmp              dword ptr [data_bytes + 0x351cac], 0x000019fd // 0x0063f1b3    813dac7cd100fd190000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0063f1bd    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0063f1c9                          // 0x0063f1c2    7605
                         add              eax, 0x000137dc                               // 0x0063f1c4    05dc370100
_jmp_addr_0x0063f1c9:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0063f1c9    8b4808
                         push             ecx                                           // 0x0063f1cc    51
                         call             _jmp_addr_0x0054cb50                          // 0x0063f1cd    e87ed9f0ff
                         push             ebp                                           // 0x0063f1d2    55
                         call             _jmp_addr_0x0054ae20                          // 0x0063f1d3    e848bcf0ff
                         add              esp, 0x08                                     // 0x0063f1d8    83c408
_jmp_addr_0x0063f1db:    mov.s            ebx, ebp                                      // 0x0063f1db    8bdd
_jmp_addr_0x0063f1dd:    {disp32} mov     al, byte ptr [data_bytes + 0x286ced]          // 0x0063f1dd    a0edccc400
                         test             al, al                                        // 0x0063f1e2    84c0
                         {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x0063f1e4    8b7c2420
                         {disp8} je       _jmp_addr_0x0063f251                          // 0x0063f1e8    7467
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                   // 0x0063f1ea    8b74241c
                         cmp.s            esi, ebp                                      // 0x0063f1ee    3bf5
                         mov.s            ebx, ebp                                      // 0x0063f1f0    8bdd
                         {disp8} jne      _jmp_addr_0x0063f211                          // 0x0063f1f2    751d
                         test             di, di                                        // 0x0063f1f4    6685ff
                         {disp8} jne      _jmp_addr_0x0063f211                          // 0x0063f1f7    7518
                         {disp32} mov     al, byte ptr [data_bytes + 0x286cec]          // 0x0063f1f9    a0ecccc400
                         test             al, al                                        // 0x0063f1fe    84c0
                         {disp8} je       _jmp_addr_0x0063f211                          // 0x0063f200    740f
                         call             _jmp_addr_0x00513640                          // 0x0063f202    e83944edff
                         pop              edi                                           // 0x0063f207    5f
                         pop              esi                                           // 0x0063f208    5e
                         pop              ebp                                           // 0x0063f209    5d
                         pop              ebx                                           // 0x0063f20a    5b
                         add              esp, 0x08                                     // 0x0063f20b    83c408
                         ret              0x0008                                        // 0x0063f20e    c20800
_jmp_addr_0x0063f211:    mov.s            edx, edi                                      // 0x0063f211    8bd7
                         and              edx, 0x0000ffff                               // 0x0063f213    81e2ffff0000
                         push             edx                                           // 0x0063f219    52
                         push             esi                                           // 0x0063f21a    56
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f21b    e8b08cdcff
                         mov.s            ecx, eax                                      // 0x0063f220    8bc8
                         call             _jmp_addr_0x00408f80                          // 0x0063f222    e8599ddcff
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f227    e8a48cdcff
                         test             eax, eax                                      // 0x0063f22c    85c0
                         {disp8} je       _jmp_addr_0x0063f255                          // 0x0063f22e    7425
                         call             ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0063f230    e89b8cdcff
                         {disp32} mov     ecx, dword ptr [eax + 0x000000c8]             // 0x0063f235    8b88c8000000
                         test             ecx, ecx                                      // 0x0063f23b    85c9
                         {disp8} jne      _jmp_addr_0x0063f255                          // 0x0063f23d    7516
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x0063f23f    8b442410
                         cmp              dword ptr [eax + 0x00205a28], ebp             // 0x0063f243    39a8285a2000
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f249    0f8446040000
                         {disp8} jmp      _jmp_addr_0x0063f255                          // 0x0063f24f    eb04
_jmp_addr_0x0063f251:    {disp8} mov      esi, dword ptr [esp + 0x1c]                   // 0x0063f251    8b74241c
_jmp_addr_0x0063f255:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0063f255    8b4c2410
                         cmp              dword ptr [ecx + 0x00205a28], ebp             // 0x0063f259    39a9285a2000
                         {disp8} jne      _jmp_addr_0x0063f2a4                          // 0x0063f25f    7543
                         {disp32} mov     edx, dword ptr [_game]                        // 0x0063f261    8b155c19d000
                         {disp32} mov     eax, dword ptr [edx + 0x0025005c]             // 0x0063f267    8b825c002500
                         {disp32} mov     edx, dword ptr [eax + 0x000045e8]             // 0x0063f26d    8b90e8450000
                         test             edx, edx                                      // 0x0063f273    85d2
                         {disp8} je       _jmp_addr_0x0063f285                          // 0x0063f275    740e
                         {disp32} mov     edx, dword ptr [eax + 0x000045ec]             // 0x0063f277    8b90ec450000
                         test             edx, edx                                      // 0x0063f27d    85d2
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f27f    0f8510040000
_jmp_addr_0x0063f285:    test             ebx, ebx                                      // 0x0063f285    85db
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f287    0f8508040000
                         {disp32} mov     ecx, dword ptr [ecx + 0x000059b4]             // 0x0063f28d    8b89b4590000
                         push             edi                                           // 0x0063f293    57
                         push             esi                                           // 0x0063f294    56
                         call             _jmp_addr_0x00794830                          // 0x0063f295    e896551500
                         pop              edi                                           // 0x0063f29a    5f
                         pop              esi                                           // 0x0063f29b    5e
                         pop              ebp                                           // 0x0063f29c    5d
                         pop              ebx                                           // 0x0063f29d    5b
                         add              esp, 0x08                                     // 0x0063f29e    83c408
                         ret              0x0008                                        // 0x0063f2a1    c20800
_jmp_addr_0x0063f2a4:    test             ebx, ebx                                      // 0x0063f2a4    85db
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f2a6    0f85e9030000
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0063f2ac    8b442414
                         test             eax, eax                                      // 0x0063f2b0    85c0
                         {disp8} je       _jmp_addr_0x0063f2c6                          // 0x0063f2b2    7412
                         push             edi                                           // 0x0063f2b4    57
                         push             esi                                           // 0x0063f2b5    56
                         call             _jmp_addr_0x0067d5d0                          // 0x0063f2b6    e815e30300
                         add              esp, 0x08                                     // 0x0063f2bb    83c408
                         test             eax, eax                                      // 0x0063f2be    85c0
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f2c0    0f85cf030000
_jmp_addr_0x0063f2c6:    xor.s            eax, eax                                      // 0x0063f2c6    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf861c]          // 0x0063f2c8    66a11c169a00
                         and.s            eax, edi                                      // 0x0063f2ce    23c7
                         test             ax, ax                                        // 0x0063f2d0    6685c0
                         {disp8} je       _jmp_addr_0x0063f2dc                          // 0x0063f2d3    7407
                         mov              eax, 0x0000002a                               // 0x0063f2d5    b82a000000
                         {disp8} jmp      _jmp_addr_0x0063f306                          // 0x0063f2da    eb2a
_jmp_addr_0x0063f2dc:    xor.s            ecx, ecx                                      // 0x0063f2dc    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861e]          // 0x0063f2de    668b0d1e169a00
                         and.s            ecx, edi                                      // 0x0063f2e5    23cf
                         test             cx, cx                                        // 0x0063f2e7    6685c9
                         {disp8} je       _jmp_addr_0x0063f2f3                          // 0x0063f2ea    7407
                         mov              eax, 0x0000001d                               // 0x0063f2ec    b81d000000
                         {disp8} jmp      _jmp_addr_0x0063f306                          // 0x0063f2f1    eb13
_jmp_addr_0x0063f2f3:    xor.s            eax, eax                                      // 0x0063f2f3    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf8620]          // 0x0063f2f5    66a120169a00
                         and.s            ax, di                                        // 0x0063f2fb    6623c7
                         neg              ax                                            // 0x0063f2fe    66f7d8
                         sbb.s            eax, eax                                      // 0x0063f301    1bc0
                         and              eax, 0x38                                     // 0x0063f303    83e038
_jmp_addr_0x0063f306:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0063f306    8b4c2410
                         push             0x0                                           // 0x0063f30a    6a00
                         push             eax                                           // 0x0063f30c    50
                         push             esi                                           // 0x0063f30d    56
                         call             ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z// 0x0063f30e    e81d050000
                         cmp.s            eax, ebp                                      // 0x0063f313    3bc5
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f315    0f847a030000
                         {disp8} lea      eax, dword ptr [esi + -0x01]                  // 0x0063f31b    8d46ff
                         cmp              eax, 0x31                                     // 0x0063f31e    83f831
                         {disp32} ja      _jmp_addr_0x0063f407                          // 0x0063f321    0f87e0000000
                         xor.s            edx, edx                                      // 0x0063f327    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x0063f6b8]               // 0x0063f329    8a90b8f66300
                         jmp              dword ptr [edx*4 + 0x63f6a0]                  // 0x0063f32f    ff2495a0f66300
                         xor.s            eax, eax                                      // 0x0063f336    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf8620]          // 0x0063f338    66a120169a00
                         and.s            eax, edi                                      // 0x0063f33e    23c7
                         test             ax, ax                                        // 0x0063f340    6685c0
                         {disp32} je      _jmp_addr_0x0063f407                          // 0x0063f343    0f84be000000
                         xor.s            ecx, ecx                                      // 0x0063f349    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861e]          // 0x0063f34b    668b0d1e169a00
                         and.s            ecx, edi                                      // 0x0063f352    23cf
                         test             cx, cx                                        // 0x0063f354    6685c9
                         {disp32} je      _jmp_addr_0x0063f407                          // 0x0063f357    0f84aa000000
                         call             _jmp_addr_0x006405f0                          // 0x0063f35d    e88e120000
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0063f362    8b0d203bcd00
                         {disp32} mov     edx, dword ptr [ecx + 0x000003ac]             // 0x0063f368    8b91ac030000
                         push             edx                                           // 0x0063f36e    52
                         push             0x0                                           // 0x0063f36f    6a00
                         push             0x0                                           // 0x0063f371    6a00
                         push             0x0                                           // 0x0063f373    6a00
                         push             0x3                                           // 0x0063f375    6a03
                         push             0x0000009f                                    // 0x0063f377    689f000000
                         push             0x0                                           // 0x0063f37c    6a00
                         call             _jmp_addr_0x00429da0                          // 0x0063f37e    e81daadeff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f383    8b0d5c19d000
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0063f389    e8c264f1ff
                         test             eax, eax                                      // 0x0063f38e    85c0
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f390    0f84ff020000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f396    8b0d5c19d000
                         push             0x80000000                                    // 0x0063f39c    6800000080
                         push             0x2c                                          // 0x0063f3a1    6a2c
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0063f3a3    e8a864f1ff
                         mov.s            ecx, eax                                      // 0x0063f3a8    8bc8
                         call             _jmp_addr_0x005d8a10                          // 0x0063f3aa    e86196f9ff
                         pop              edi                                           // 0x0063f3af    5f
                         pop              esi                                           // 0x0063f3b0    5e
                         pop              ebp                                           // 0x0063f3b1    5d
                         pop              ebx                                           // 0x0063f3b2    5b
                         add              esp, 0x08                                     // 0x0063f3b3    83c408
                         ret              0x0008                                        // 0x0063f3b6    c20800
                         xor.s            eax, eax                                      // 0x0063f3b9    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf861c]          // 0x0063f3bb    66a11c169a00
                         and.s            eax, edi                                      // 0x0063f3c1    23c7
                         test             ax, ax                                        // 0x0063f3c3    6685c0
                         {disp8} jne      _jmp_addr_0x0063f407                          // 0x0063f3c6    753f
                         xor.s            ecx, ecx                                      // 0x0063f3c8    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861e]          // 0x0063f3ca    668b0d1e169a00
                         and.s            ecx, edi                                      // 0x0063f3d1    23cf
                         test             cx, cx                                        // 0x0063f3d3    6685c9
                         {disp8} jne      _jmp_addr_0x0063f407                          // 0x0063f3d6    752f
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0063f3d8    8b0d5c19d000
                         {disp32} mov     eax, dword ptr [ecx + 0x00250188]             // 0x0063f3de    8b8188012500
                         test             eax, eax                                      // 0x0063f3e4    85c0
                         {disp32} je      _jmp_addr_0x0063f4d7                          // 0x0063f3e6    0f84eb000000
                         {disp32} mov     al, byte ptr [data_bytes + 0x33b984]          // 0x0063f3ec    a08419d000
                         test             al, al                                        // 0x0063f3f1    84c0
                         {disp8} jne      _jmp_addr_0x0063f407                          // 0x0063f3f3    7512
                         call             _jmp_addr_0x0054da00                          // 0x0063f3f5    e806e6f0ff
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0063f3fa    8b0d203bcd00
                         push             0x0                                           // 0x0063f400    6a00
                         call             _jmp_addr_0x00428230                          // 0x0063f402    e8298edeff
_jmp_addr_0x0063f407:    {disp32} mov     eax, dword ptr [_game]                        // 0x0063f407    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x0025005c]             // 0x0063f40c    8b885c002500
                         {disp32} mov     edx, dword ptr [ecx + 0x000045e8]             // 0x0063f412    8b91e8450000
                         test             edx, edx                                      // 0x0063f418    85d2
                         {disp8} je       _jmp_addr_0x0063f42a                          // 0x0063f41a    740e
                         {disp32} mov     edx, dword ptr [ecx + 0x000045ec]             // 0x0063f41c    8b91ec450000
                         test             edx, edx                                      // 0x0063f422    85d2
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f424    0f856b020000
_jmp_addr_0x0063f42a:    {disp32} mov     eax, dword ptr [eax + 0x00250300]             // 0x0063f42a    8b8000032500
                         {disp32} mov     edx, dword ptr [eax + 0x0000652c]             // 0x0063f430    8b902c650000
                         test             edx, edx                                      // 0x0063f436    85d2
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f438    0f8457020000
                         {disp32} mov     edx, dword ptr [eax + 0x00006530]             // 0x0063f43e    8b9030650000
                         test             edx, edx                                      // 0x0063f444    85d2
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f446    0f8449020000
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x0063f44c    8b44241c
                         {disp8} lea      esi, dword ptr [eax + -0x02]                  // 0x0063f450    8d70fe
                         cmp              esi, 0x0d                                     // 0x0063f453    83fe0d
                         {disp32} ja      _jmp_addr_0x0063f695                          // 0x0063f456    0f8739020000
                         xor.s            edx, edx                                      // 0x0063f45c    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x0063f6fc]               // 0x0063f45e    8a96fcf66300
                         jmp              dword ptr [edx*4 + 0x63f6ec]                  // 0x0063f464    ff2495ecf66300
                         {disp32} mov     eax, dword ptr [data_bytes + 0x7384]          // 0x0063f46b    a184d39c00
                         test             eax, eax                                      // 0x0063f470    85c0
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f472    0f841d020000
                         {disp32} mov     eax, dword ptr [ecx + 0x000045e8]             // 0x0063f478    8b81e8450000
                         test             eax, eax                                      // 0x0063f47e    85c0
                         {disp8} je       _jmp_addr_0x0063f490                          // 0x0063f480    740e
                         {disp32} mov     eax, dword ptr [ecx + 0x000045ec]             // 0x0063f482    8b81ec450000
                         test             eax, eax                                      // 0x0063f488    85c0
                         {disp32} jne     _jmp_addr_0x0063f695                          // 0x0063f48a    0f8505020000
_jmp_addr_0x0063f490:    {disp32} mov     ax, word ptr [rdata_bytes + 0xf861c]          // 0x0063f490    66a11c169a00
                         and.s            ax, di                                        // 0x0063f496    6623c7
                         {disp32} je      _jmp_addr_0x0063f5b0                          // 0x0063f499    0f8411010000
                         xor.s            ecx, ecx                                      // 0x0063f49f    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861e]          // 0x0063f4a1    668b0d1e169a00
                         and.s            ecx, edi                                      // 0x0063f4a8    23cf
                         test             cx, cx                                        // 0x0063f4aa    6685c9
                         {disp32} je      _jmp_addr_0x0063f5b0                          // 0x0063f4ad    0f84fd000000
                         lea              edx, dword ptr [esi + esi * 0x8]              // 0x0063f4b3    8d14f6
                         test             byte ptr [edx * 0x4 + 0x00c58b34], 0x01       // 0x0063f4b6    f60495348bc50001
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f4be    0f84d1010000
                         push             esi                                           // 0x0063f4c4    56
                         call             _jmp_addr_0x00439d40                          // 0x0063f4c5    e876a8dfff
                         add              esp, 0x04                                     // 0x0063f4ca    83c404
                         pop              edi                                           // 0x0063f4cd    5f
                         pop              esi                                           // 0x0063f4ce    5e
                         pop              ebp                                           // 0x0063f4cf    5d
                         pop              ebx                                           // 0x0063f4d0    5b
                         add              esp, 0x08                                     // 0x0063f4d1    83c408
                         ret              0x0008                                        // 0x0063f4d4    c20800
_jmp_addr_0x0063f4d7:    {disp32} mov     eax, dword ptr [ecx + 0x0025005c]             // 0x0063f4d7    8b815c002500
                         {disp32} mov     ecx, dword ptr [eax + 0x000045e8]             // 0x0063f4dd    8b88e8450000
                         test             ecx, ecx                                      // 0x0063f4e3    85c9
                         {disp8} je       _jmp_addr_0x0063f4f5                          // 0x0063f4e5    740e
                         {disp32} mov     ecx, dword ptr [eax + 0x000045ec]             // 0x0063f4e7    8b88ec450000
                         test             ecx, ecx                                      // 0x0063f4ed    85c9
                         {disp32} jne     _jmp_addr_0x0063f407                          // 0x0063f4ef    0f8512ffffff
_jmp_addr_0x0063f4f5:    call             _jmp_addr_0x006ec670                          // 0x0063f4f5    e876d10a00
                         test             eax, eax                                      // 0x0063f4fa    85c0
                         {disp32} je      _jmp_addr_0x0063f407                          // 0x0063f4fc    0f8405ffffff
                         call             _jmp_addr_0x00540020                          // 0x0063f502    e8190bf0ff
                         test             al, al                                        // 0x0063f507    84c0
                         {disp32} je      _jmp_addr_0x0063f407                          // 0x0063f509    0f84f8feffff
                         call             dword ptr [rdata_bytes + 0x60c]               // 0x0063f50f    ff150c968a00
                         push             eax                                           // 0x0063f515    50
                         call             dword ptr [__imp__LHNetUseProfile__YAXPAG_Z@4]// 0x0063f516    ff1548958a00
                         push             0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x0063f51c    6838bdd400
                         call             _jmp_addr_0x0066bcd0                          // 0x0063f521    e8aac70200
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30a65c]        // 0x0063f526    8b0d5c06cd00
                         mov              edx, dword ptr [ecx]                          // 0x0063f52c    8b11
                         add              esp, 0x08                                     // 0x0063f52e    83c408
                         call             dword ptr [edx + 0xc]                         // 0x0063f531    ff520c
                         {disp32} jmp     _jmp_addr_0x0063f407                          // 0x0063f534    e9cefeffff
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0063f539    8b4c2410
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0063f53d    e80e63f1ff
                         mov.s            ecx, eax                                      // 0x0063f542    8bc8
                         call             _jmp_addr_0x005d0410                          // 0x0063f544    e8c70ef9ff
                         pop              edi                                           // 0x0063f549    5f
                         pop              esi                                           // 0x0063f54a    5e
                         pop              ebp                                           // 0x0063f54b    5d
                         pop              ebx                                           // 0x0063f54c    5b
                         add              esp, 0x08                                     // 0x0063f54d    83c408
                         ret              0x0008                                        // 0x0063f550    c20800
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0063f553    8b4c2410
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0063f557    e8f462f1ff
                         mov.s            ecx, eax                                      // 0x0063f55c    8bc8
                         call             _jmp_addr_0x005d03d0                          // 0x0063f55e    e86d0ef9ff
                         pop              edi                                           // 0x0063f563    5f
                         pop              esi                                           // 0x0063f564    5e
                         pop              ebp                                           // 0x0063f565    5d
                         pop              ebx                                           // 0x0063f566    5b
                         add              esp, 0x08                                     // 0x0063f567    83c408
                         ret              0x0008                                        // 0x0063f56a    c20800
                         test             di, di                                        // 0x0063f56d    6685ff
                         {disp32} jne     _jmp_addr_0x0063f407                          // 0x0063f570    0f8591feffff
                         {disp32} mov     eax, dword ptr [_game]                        // 0x0063f576    a15c19d000
                         xor.s            ecx, ecx                                      // 0x0063f57b    33c9
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x0063f57d    8b4814
                         not              cl                                            // 0x0063f580    f6d1
                         and              ecx, 0x000000ff                               // 0x0063f582    81e1ff000000
                         shr              ecx, 2                                        // 0x0063f588    c1e902
                         and.s            ecx, ebp                                      // 0x0063f58b    23cd
                         {disp32} mov     dword ptr [data_bytes + 0x33b9d4], ecx        // 0x0063f58d    890dd419d000
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x0063f593    8b5014
                         not              edx                                           // 0x0063f596    f7d2
                         shr              edx, 2                                        // 0x0063f598    c1ea02
                         and.s            edx, ebp                                      // 0x0063f59b    23d5
                         push             edx                                           // 0x0063f59d    52
                         call             _jmp_addr_0x0054ae20                          // 0x0063f59e    e87db8f0ff
                         add              esp, 0x04                                     // 0x0063f5a3    83c404
                         pop              edi                                           // 0x0063f5a6    5f
                         pop              esi                                           // 0x0063f5a7    5e
                         pop              ebp                                           // 0x0063f5a8    5d
                         pop              ebx                                           // 0x0063f5a9    5b
                         add              esp, 0x08                                     // 0x0063f5aa    83c408
                         ret              0x0008                                        // 0x0063f5ad    c20800
_jmp_addr_0x0063f5b0:    xor.s            ecx, ecx                                      // 0x0063f5b0    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861e]          // 0x0063f5b2    668b0d1e169a00
                         and.s            ecx, edi                                      // 0x0063f5b9    23cf
                         test             cx, cx                                        // 0x0063f5bb    6685c9
                         {disp8} je       _jmp_addr_0x0063f5f6                          // 0x0063f5be    7436
                         xor.s            edx, edx                                      // 0x0063f5c0    33d2
                         {disp32} mov     dx, word ptr [rdata_bytes + 0xf8620]          // 0x0063f5c2    668b1520169a00
                         and.s            edx, edi                                      // 0x0063f5c9    23d7
                         test             dx, dx                                        // 0x0063f5cb    6685d2
                         {disp8} jne      _jmp_addr_0x0063f5f6                          // 0x0063f5ce    7526
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0063f5d0    8b4c2410
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0063f5d4    e87762f1ff
                         {disp32} mov     eax, dword ptr [eax + 0x0000039c]             // 0x0063f5d9    8b809c030000
                         add              eax, 0x14                                     // 0x0063f5df    83c014
                         push             eax                                           // 0x0063f5e2    50
                         push             esi                                           // 0x0063f5e3    56
                         call             _jmp_addr_0x00439e50                          // 0x0063f5e4    e867a8dfff
                         add              esp, 0x08                                     // 0x0063f5e9    83c408
                         pop              edi                                           // 0x0063f5ec    5f
                         pop              esi                                           // 0x0063f5ed    5e
                         pop              ebp                                           // 0x0063f5ee    5d
                         pop              ebx                                           // 0x0063f5ef    5b
                         add              esp, 0x08                                     // 0x0063f5f0    83c408
                         ret              0x0008                                        // 0x0063f5f3    c20800
_jmp_addr_0x0063f5f6:    test             ax, ax                                        // 0x0063f5f6    6685c0
                         {disp8} je       _jmp_addr_0x0063f61f                          // 0x0063f5f9    7424
                         lea              eax, dword ptr [esi + esi * 0x8]              // 0x0063f5fb    8d04f6
                         test             byte ptr [eax * 0x4 + 0x00c58b34], 0x01       // 0x0063f5fe    f60485348bc50001
                         {disp32} je      _jmp_addr_0x0063f695                          // 0x0063f606    0f8489000000
                         push             esi                                           // 0x0063f60c    56
                         call             _jmp_addr_0x0043a390                          // 0x0063f60d    e87eaddfff
                         add              esp, 0x04                                     // 0x0063f612    83c404
                         pop              edi                                           // 0x0063f615    5f
                         pop              esi                                           // 0x0063f616    5e
                         pop              ebp                                           // 0x0063f617    5d
                         pop              ebx                                           // 0x0063f618    5b
                         add              esp, 0x08                                     // 0x0063f619    83c408
                         ret              0x0008                                        // 0x0063f61c    c20800
_jmp_addr_0x0063f61f:    test             di, di                                        // 0x0063f61f    6685ff
                         {disp8} jne      _jmp_addr_0x0063f695                          // 0x0063f622    7571
                         lea              ecx, dword ptr [esi + esi * 0x8]              // 0x0063f624    8d0cf6
                         test             byte ptr [ecx * 0x4 + 0x00c58b34], 0x01       // 0x0063f627    f6048d348bc50001
                         {disp8} je       _jmp_addr_0x0063f695                          // 0x0063f62f    7464
                         push             esi                                           // 0x0063f631    56
                         call             _jmp_addr_0x0043a070                          // 0x0063f632    e839aadfff
                         add              esp, 0x04                                     // 0x0063f637    83c404
                         pop              edi                                           // 0x0063f63a    5f
                         pop              esi                                           // 0x0063f63b    5e
                         pop              ebp                                           // 0x0063f63c    5d
                         pop              ebx                                           // 0x0063f63d    5b
                         add              esp, 0x08                                     // 0x0063f63e    83c408
                         ret              0x0008                                        // 0x0063f641    c20800
                         xor.s            edx, edx                                      // 0x0063f644    33d2
                         {disp32} mov     dx, word ptr [rdata_bytes + 0xf861c]          // 0x0063f646    668b151c169a00
                         and.s            edx, edi                                      // 0x0063f64d    23d7
                         test             dx, dx                                        // 0x0063f64f    6685d2
                         {disp8} je       _jmp_addr_0x0063f663                          // 0x0063f652    740f
                         call             _jmp_addr_0x0043a2c0                          // 0x0063f654    e867acdfff
                         pop              edi                                           // 0x0063f659    5f
                         pop              esi                                           // 0x0063f65a    5e
                         pop              ebp                                           // 0x0063f65b    5d
                         pop              ebx                                           // 0x0063f65c    5b
                         add              esp, 0x08                                     // 0x0063f65d    83c408
                         ret              0x0008                                        // 0x0063f660    c20800
_jmp_addr_0x0063f663:    xor.s            eax, eax                                      // 0x0063f663    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf861e]          // 0x0063f665    66a11e169a00
                         and.s            eax, edi                                      // 0x0063f66b    23c7
                         test             ax, ax                                        // 0x0063f66d    6685c0
                         {disp8} je       _jmp_addr_0x0063f681                          // 0x0063f670    740f
                         call             _jmp_addr_0x0043a320                          // 0x0063f672    e8a9acdfff
                         pop              edi                                           // 0x0063f677    5f
                         pop              esi                                           // 0x0063f678    5e
                         pop              ebp                                           // 0x0063f679    5d
                         pop              ebx                                           // 0x0063f67a    5b
                         add              esp, 0x08                                     // 0x0063f67b    83c408
                         ret              0x0008                                        // 0x0063f67e    c20800
_jmp_addr_0x0063f681:    call             _jmp_addr_0x0043aa60                          // 0x0063f681    e8dab3dfff
                         pop              edi                                           // 0x0063f686    5f
                         pop              esi                                           // 0x0063f687    5e
                         pop              ebp                                           // 0x0063f688    5d
                         pop              ebx                                           // 0x0063f689    5b
                         add              esp, 0x08                                     // 0x0063f68a    83c408
                         ret              0x0008                                        // 0x0063f68d    c20800
                         call             _jmp_addr_0x0043a380                          // 0x0063f690    e8ebacdfff
_jmp_addr_0x0063f695:    pop              edi                                           // 0x0063f695    5f
                         pop              esi                                           // 0x0063f696    5e
                         pop              ebp                                           // 0x0063f697    5d
                         pop              ebx                                           // 0x0063f698    5b
                         add              esp, 0x08                                     // 0x0063f699    83c408
                         ret              0x0008                                        // 0x0063f69c    c20800

// Snippet: db, [0x0063f69f, 0x0063f6a0)
.byte 0x90                        // 0x0063f69f

// Snippet: jmptbl, [0x0063f6a0, 0x0063f6b8)
.byte 0xb9, 0xf3, 0x63, 0x00      // 0x0063f6a0
.byte 0x39, 0xf5, 0x63, 0x00      // 0x0063f6a4
.byte 0x36, 0xf3, 0x63, 0x00      // 0x0063f6a8
.byte 0x6d, 0xf5, 0x63, 0x00      // 0x0063f6ac
.byte 0x53, 0xf5, 0x63, 0x00      // 0x0063f6b0
.byte 0x07, 0xf4, 0x63, 0x00      // 0x0063f6b4

// Snippet: ijmptbl, [0x0063f6b8, 0x0063f6ea)
.byte 0x00, 0x05, 0x05, 0x05      // 0x0063f6b8
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6bc
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6c0
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6c4
.byte 0x05, 0x05, 0x01, 0x02      // 0x0063f6c8
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6cc
.byte 0x03, 0x05, 0x05, 0x05      // 0x0063f6d0
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6d4
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6d8
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6dc
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6e0
.byte 0x05, 0x05, 0x05, 0x05      // 0x0063f6e4
.byte 0x05, 0x04                  // 0x0063f6e8

// Snippet: db, [0x0063f6ea, 0x0063f6ec)
.byte 0x8b, 0xff                  // 0x0063f6ea

// Snippet: jmptbl, [0x0063f6ec, 0x0063f6fc)
.byte 0x6b, 0xf4, 0x63, 0x00      // 0x0063f6ec
.byte 0x90, 0xf6, 0x63, 0x00      // 0x0063f6f0
.byte 0x44, 0xf6, 0x63, 0x00      // 0x0063f6f4
.byte 0x95, 0xf6, 0x63, 0x00      // 0x0063f6f8

// Snippet: ijmptbl, [0x0063f6fc, 0x0063f70a)
.byte 0x00, 0x00, 0x00, 0x00      // 0x0063f6fc
.byte 0x00, 0x00, 0x00, 0x03      // 0x0063f700
.byte 0x03, 0x03, 0x03, 0x03      // 0x0063f704
.byte 0x01, 0x02                  // 0x0063f708

// Snippet: db, [0x0063f70a, 0x0063f710)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0063f70a
.byte 0x90, 0x90                  // 0x0063f70e

