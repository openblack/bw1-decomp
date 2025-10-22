.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.extern ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ
.extern ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x0044cf90
.extern @__ct__7LHPointFRC7LHPoint@12
.extern _jmp_addr_0x0046df00
.extern _jmp_addr_0x0047cce0
.extern _jmp_addr_0x00482d40
.extern _jmp_addr_0x00484300
.extern _jmp_addr_0x004f4c50
.extern ?Draw@Abode@@UAEXXZ
.extern _jmp_addr_0x00517080
.extern _jmp_addr_0x0051a830
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00576f20
.extern _jmp_addr_0x0057d4c0
.extern _jmp_addr_0x005c9090
.extern _jmp_addr_0x005ced10
.extern _jmp_addr_0x005d56c0
.extern _jmp_addr_0x005faf80
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern _jmp_addr_0x00637dd0
.extern _jmp_addr_0x0063b5d0
.extern _jmp_addr_0x0063b7e0
.extern _jmp_addr_0x0064ab20
.extern ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ
.extern _jmp_addr_0x0068e120
.extern _jmp_addr_0x006ea950
.extern _jmp_addr_0x00719c10
.extern _jmp_addr_0x00726d20
.extern _jmp_addr_0x00726d30
.extern _jmp_addr_0x00727630
.extern _jmp_addr_0x00727690
.extern _jmp_addr_0x00727700
.extern _jmp_addr_0x0072a570
.extern _jmp_addr_0x0072a840
.extern _jmp_addr_0x0072af50
.extern _jmp_addr_0x00730480
.extern _jmp_addr_0x00730570
.extern _jmp_addr_0x0074eb40
.extern _jmp_addr_0x00780ee0
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern __CIfmod
.extern _jmp_addr_0x007f8d30
.extern _jmp_addr_0x007faff0
.extern _jmp_addr_0x007fb3f0
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern _jmp_addr_0x00802120
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z
.extern _jmp_addr_0x0080bec0
.extern _jmp_addr_0x0080bf10
.extern _jmp_addr_0x008190d0
.extern ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z
.extern _jmp_addr_0x008398a0
.extern _jmp_addr_0x00841170

.globl _jmp_addr_0x005178d0
.globl ?Draw@Rock@@UAEXXZ
.globl _jmp_addr_0x00517f90
.globl _jmp_addr_0x00518050
.extern ?Draw@MultiMapFixed@@UAEXXZ
.globl ?Draw@SingleMapFixed@@UAEXXZ
.globl ?Draw@MobileObject@@UAEXXZ
.globl _jmp_addr_0x00518640
.globl _jmp_addr_0x00518b90
.globl _jmp_addr_0x00518bf0
.globl _jmp_addr_0x00519320
.globl _jmp_addr_0x005198f0
.globl _jmp_addr_0x00519960
.globl _jmp_addr_0x00519ad0
.globl ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.globl ?Draw@MultiMapFixed@@UAEXXZ
.globl ?Draw@Creature@@UAEXXZ
.globl ?Draw@MobileStatic@@UAEXXZ
.globl ?DrawInHand@Scaffold@@UAEXPAVGInterfaceStatus@@@Z
.globl ?Draw@Feature@@UAEXXZ
.globl ?Draw@Creed@@UAEXXZ
.globl ?DrawOutOfMap@Creed@@UAEX_N@Z
.globl ?Draw@SpellSeed@@UAEXXZ
.globl ?DrawOutOfMap@OneOffSpellSeed@@UAEX_N@Z
.globl ?Draw@OneOffSpellSeed@@UAEXXZ
.globl ?DrawOutOfMap@SpellSeed@@UAEX_N@Z
.globl ?Draw@StoragePit@@UAEXXZ
.globl ?Draw@WorshipTotem@@UAEXXZ
.globl ?Draw@WorshipSite@@UAEXXZ
.globl ?Draw@TownCentreSpellIcon@@UAEXXZ
.globl ?Draw@SpellIcon@@UAEXXZ

start_0x005178d0_0x0051a830:
// Snippet: asm, [0x005178d0, 0x0051a806)
_jmp_addr_0x005178d0:    {disp32} mov       eax, dword ptr [data_bytes + 0x30030c]        // 0x005178d0    a10c63cc00
                         push               esi                                           // 0x005178d5    56
                         xor.s              esi, esi                                      // 0x005178d6    33f6
                         cmp.s              eax, esi                                      // 0x005178d8    3bc6
                         {disp8} jle        _jmp_addr_0x005178ff                          // 0x005178da    7e23
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3002e4]        // 0x005178dc    8b0de462cc00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3002e8]        // 0x005178e2    8b15e862cc00
                         push               eax                                           // 0x005178e8    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3002e0]        // 0x005178e9    a1e062cc00
                         push               eax                                           // 0x005178ee    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3002ec]        // 0x005178ef    a1ec62cc00
                         push               ecx                                           // 0x005178f4    51
                         push               edx                                           // 0x005178f5    52
                         push               eax                                           // 0x005178f6    50
                         call               _jmp_addr_0x00517080                          // 0x005178f7    e884f7ffff
                         add                esp, 0x14                                     // 0x005178fc    83c414
_jmp_addr_0x005178ff:    {disp32} mov       dword ptr [data_bytes + 0x30030c], esi        // 0x005178ff    89350c63cc00
                         {disp32} mov       dword ptr [data_bytes + 0x300310], esi        // 0x00517905    89351063cc00
                         pop                esi                                           // 0x0051790b    5e
                         ret                                                              // 0x0051790c    c3
                         nop                                                              // 0x0051790d    90
                         nop                                                              // 0x0051790e    90
                         nop                                                              // 0x0051790f    90
?Draw@Creature@@UAEXXZ:
                         sub                esp, 0x48                                     // 0x00517910    83ec48
                         push               ebx                                           // 0x00517913    53
                         push               ebp                                           // 0x00517914    55
                         push               esi                                           // 0x00517915    56
                         mov.s              esi, ecx                                      // 0x00517916    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x24]                     // 0x00517918    8a4624
                         xor.s              ebx, ebx                                      // 0x0051791b    33db
                         test               al, 0x10                                      // 0x0051791d    a810
                         push               edi                                           // 0x0051791f    57
                         {disp32} je        _jmp_addr_0x005179dc                          // 0x00517920    0f84b6000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00517926    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0051792c    e81fdf0300
                         mov.s              ecx, eax                                      // 0x00517931    8bc8
                         call               _jmp_addr_0x005ced10                          // 0x00517933    e8d8730b00
                         cmp.s              eax, esi                                      // 0x00517938    3bc6
                         {disp32} jne       _jmp_addr_0x005179dc                          // 0x0051793a    0f859c000000
                         {disp32} mov       dword ptr [data_bytes + 0x30030c], 0x000000ff // 0x00517940    c7050c63cc00ff000000
                         {disp32} mov       dword ptr [data_bytes + 0x300310], 0x00000001 // 0x0051794a    c7051063cc0001000000
                         mov                eax, dword ptr [esi]                          // 0x00517954    8b06
                         mov.s              ecx, esi                                      // 0x00517956    8bce
                         call               dword ptr [eax + 0x11c]                       // 0x00517958    ff901c010000
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0051795e    d82d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3002ec]             // 0x00517964    d91dec62cc00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x0051796a    8b8e60010000
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x00517970    d9411c
                         mov.s              ecx, esi                                      // 0x00517973    8bce
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x00517975    d82d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3002e8]             // 0x0051797b    d91de862cc00
                         {disp32} mov       edx, dword ptr [esi + 0x00000160]             // 0x00517981    8b9660010000
                         {disp8} fld        dword ptr [edx + 0x30]                        // 0x00517987    d94230
                         {disp32} fstp      dword ptr [data_bytes + 0x3002e4]             // 0x0051798a    d91de462cc00
                         mov                eax, dword ptr [esi]                          // 0x00517990    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x00517992    ff501c
                         test               eax, eax                                      // 0x00517995    85c0
                         {disp8} je         _jmp_addr_0x005179dc                          // 0x00517997    7443
                         mov                edx, dword ptr [esi]                          // 0x00517999    8b16
                         mov.s              ecx, esi                                      // 0x0051799b    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0051799d    ff521c
                         mov.s              ecx, eax                                      // 0x005179a0    8bc8
                         call               _jmp_addr_0x0064ab20                          // 0x005179a2    e879311300
                         cmp.s              eax, ebx                                      // 0x005179a7    3bc3
                         {disp8} je         _jmp_addr_0x005179dc                          // 0x005179a9    7431
                         {disp32} mov       ecx, dword ptr [eax + 0x00004878]             // 0x005179ab    8b8878480000
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x4 + 0x0000487c] // 0x005179b1    8b94887c480000
                         push               ebx                                           // 0x005179b8    53
                         push               0x00be8ed8                                    // 0x005179b9    68d88ebe00
                         push               0x009cece0                                    // 0x005179be    68e0ec9c00
                         push               ebx                                           // 0x005179c3    53
                         push               edx                                           // 0x005179c4    52
                         call               ___RTDynamicCast                              // 0x005179c5    e84fe02a00
                         add                esp, 0x14                                     // 0x005179ca    83c414
                         cmp.s              eax, ebx                                      // 0x005179cd    3bc3
                         {disp8} je         _jmp_addr_0x005179dc                          // 0x005179cf    740b
                         {disp32} mov       eax, dword ptr [eax + 0x000000d8]             // 0x005179d1    8b80d8000000
                         {disp32} mov       dword ptr [data_bytes + 0x3002e0], eax        // 0x005179d7    a3e062cc00
_jmp_addr_0x005179dc:    cmp                dword ptr [data_bytes + 0x380a78], ebx        // 0x005179dc    391d786ad400
                         {disp32} je        _jmp_addr_0x00517a89                          // 0x005179e2    0f84a1000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]             // 0x005179e8    8b8e64010000
                         {disp32} mov       ebp, dword ptr [ecx + 0x0000222c]             // 0x005179ee    8ba92c220000
                         cmp.s              ebp, ebx                                      // 0x005179f4    3beb
                         {disp32} je        _jmp_addr_0x00517a89                          // 0x005179f6    0f848d000000
_jmp_addr_0x005179fc:    {disp8} mov        edx, dword ptr [ebp + 0x2c]                   // 0x005179fc    8b552c
                         {disp8} lea        edi, dword ptr [ebp + 0x24]                   // 0x005179ff    8d7d24
                         mov.s              ecx, edi                                      // 0x00517a02    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00517a04    89542414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00517a08    e883b62e00
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x00517a0d    d8442414
                         push               ebx                                           // 0x00517a11    53
                         {disp8} mov        byte ptr [esp + 0x14], bl                     // 0x00517a12    885c2414
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00517a16    d95c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00517a1a    8b4c2424
                         fild               dword ptr [edi]                               // 0x00517a1e    db07
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00517a20    894c243c
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00517a24    8d4c2438
                         {disp8} mov        byte ptr [esp + 0x15], bl                     // 0x00517a28    885c2415
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517a2c    d80da4a38a00
                         {disp8} mov        byte ptr [esp + 0x16], -0x01                  // 0x00517a32    c6442416ff
                         {disp8} mov        byte ptr [esp + 0x17], -0x01                  // 0x00517a37    c6442417ff
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00517a3c    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00517a40    8b442420
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00517a44    db4704
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00517a47    89442438
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00517a4b    8d442414
                         push               eax                                           // 0x00517a4f    50
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517a50    d80da4a38a00
                         push               ecx                                           // 0x00517a56    51
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00517a57    d95c2430
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00517a5b    8b542430
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00517a5f    d944242c
                         {disp8} mov        dword ptr [esp + 0x48], edx                   // 0x00517a63    89542448
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1651c]             // 0x00517a67    d8051cf58b00
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x00517a6d    8d542428
                         push               edx                                           // 0x00517a71    52
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00517a72    d95c2448
                         call               _jmp_addr_0x008398a0                          // 0x00517a76    e8251e3200
                         {disp8} mov        ebp, dword ptr [ebp + 0x08]                   // 0x00517a7b    8b6d08
                         add                esp, 0x10                                     // 0x00517a7e    83c410
                         cmp.s              ebp, ebx                                      // 0x00517a81    3beb
                         {disp32} jne       _jmp_addr_0x005179fc                          // 0x00517a83    0f8573ffffff
_jmp_addr_0x00517a89:    cmp                dword ptr [data_bytes + 0x2bcf48], ebx        // 0x00517a89    391d482fc800
                         {disp8} je         _jmp_addr_0x00517ad1                          // 0x00517a8f    7440
                         mov.s              ecx, esi                                      // 0x00517a91    8bce
                         call               _jmp_addr_0x0047cce0                          // 0x00517a93    e84852f6ff
                         test               eax, eax                                      // 0x00517a98    85c0
                         {disp8} je         _jmp_addr_0x00517ad1                          // 0x00517a9a    7435
                         {disp32} mov       ecx, dword ptr [esi + 0x000011b4]             // 0x00517a9c    8b8eb4110000
                         push               0x1                                           // 0x00517aa2    6a01
                         push               0x3f000000                                    // 0x00517aa4    680000003f
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00517aa9    8d442418
                         push               eax                                           // 0x00517aad    50
                         push               ecx                                           // 0x00517aae    51
                         {disp32} lea       edx, dword ptr [esi + 0x000011a8]             // 0x00517aaf    8d96a8110000
                         push               edx                                           // 0x00517ab5    52
                         {disp8} mov        byte ptr [esp + 0x24], bl                     // 0x00517ab6    885c2424
                         {disp8} mov        byte ptr [esp + 0x25], -0x01                  // 0x00517aba    c6442425ff
                         {disp8} mov        byte ptr [esp + 0x26], -0x01                  // 0x00517abf    c6442426ff
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                  // 0x00517ac4    c6442427ff
                         call               _jmp_addr_0x0074eb40                          // 0x00517ac9    e872702300
                         add                esp, 0x14                                     // 0x00517ace    83c414
_jmp_addr_0x00517ad1:    {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00517ad1    8b8e60010000
                         {disp8} mov        eax, dword ptr [ecx + 0x58]                   // 0x00517ad7    8b4158
                         {disp32} mov       eax, dword ptr [eax + 0x0000482c]             // 0x00517ada    8b802c480000
                         cmp                dword ptr [esi + 0x40], eax                   // 0x00517ae0    394640
                         {disp8} je         _jmp_addr_0x00517ae8                          // 0x00517ae3    7403
                         {disp8} mov        dword ptr [esi + 0x40], eax                   // 0x00517ae5    894640
_jmp_addr_0x00517ae8:    {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00517ae8    8b4958
                         mov                edx, dword ptr [ecx]                          // 0x00517aeb    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x00517aed    ff521c
                         test               eax, eax                                      // 0x00517af0    85c0
                         {disp8} je         _jmp_addr_0x00517b09                          // 0x00517af2    7415
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00517af4    8b0d5c19d000
                         push               ebx                                           // 0x00517afa    53
                         push               ebx                                           // 0x00517afb    53
                         push               esi                                           // 0x00517afc    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00517afd    e84edd0300
                         mov.s              ecx, eax                                      // 0x00517b02    8bc8
                         call               _jmp_addr_0x005d56c0                          // 0x00517b04    e8b7db0b00
_jmp_addr_0x00517b09:    {disp32} mov       eax, dword ptr [esi + 0x00000160]             // 0x00517b09    8b8660010000
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00517b0f    8b4858
                         call               _jmp_addr_0x00484300                          // 0x00517b12    e8e9c7f6ff
                         cmp                dword ptr [data_bytes + 0x2bcf48], ebx        // 0x00517b17    391d482fc800
                         {disp8} je         _jmp_addr_0x00517b2d                          // 0x00517b1d    740e
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00517b1f    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x00517b25    8b4958
                         call               _jmp_addr_0x00482d40                          // 0x00517b28    e813b2f6ff
_jmp_addr_0x00517b2d:    cmp                dword ptr [data_bytes + 0x2bcf58], ebx        // 0x00517b2d    391d582fc800
                         {disp32} je        _jmp_addr_0x00517c40                          // 0x00517b33    0f8407010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00517b39    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000f58]             // 0x00517b3f    8b88580f0000
                         cmp.s              ecx, ebx                                      // 0x00517b45    3bcb
                         {disp32} je        _jmp_addr_0x00517c40                          // 0x00517b47    0f84f3000000
                         mov.s              ebp, ecx                                      // 0x00517b4d    8be9
                         {disp8} mov        edx, dword ptr [ebp + 0x2c]                   // 0x00517b4f    8b552c
                         {disp8} lea        edi, dword ptr [ebp + 0x24]                   // 0x00517b52    8d7d24
                         mov.s              ecx, edi                                      // 0x00517b55    8bcf
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00517b57    89542418
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00517b5b    e830b52e00
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00517b60    d8442418
                         push               ebx                                           // 0x00517b64    53
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00517b65    8d4c2414
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00517b69    d95c2424
                         push               ecx                                           // 0x00517b6d    51
                         fild               dword ptr [edi]                               // 0x00517b6e    db07
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x00517b70    8d542448
                         push               edx                                           // 0x00517b74    52
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517b75    d80da4a38a00
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x00517b7b    d9542428
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00517b7f    db4704
                         {disp8} mov        byte ptr [esp + 0x1c], bl                     // 0x00517b82    885c241c
                         {disp8} mov        byte ptr [esp + 0x1d], bl                     // 0x00517b86    885c241d
                         {disp8} mov        byte ptr [esp + 0x1e], -0x01                  // 0x00517b8a    c644241eff
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517b8f    d80da4a38a00
                         {disp8} mov        byte ptr [esp + 0x1f], -0x01                  // 0x00517b95    c644241fff
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00517b9a    d95c2430
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00517b9e    8b442430
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x00517ba2    89442454
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00517ba6    d95c244c
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00517baa    8d442428
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00517bae    d944242c
                         push               eax                                           // 0x00517bb2    50
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00517bb3    d80558768c00
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x00517bb9    d95c2454
                         call               _jmp_addr_0x008398a0                          // 0x00517bbd    e8de1c3200
                         {disp8} mov        edi, dword ptr [ebp + 0x30]                   // 0x00517bc2    8b7d30
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x00517bc5    8b4f1c
                         add                edi, 0x14                                     // 0x00517bc8    83c714
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00517bcb    894c2428
                         add                esp, 0x10                                     // 0x00517bcf    83c410
                         mov.s              ecx, edi                                      // 0x00517bd2    8bcf
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00517bd4    e8b7b42e00
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00517bd9    d8442418
                         mov                al, 0x20                                      // 0x00517bdd    b020
                         push               ebx                                           // 0x00517bdf    53
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00517be0    d95c243c
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x00517be4    8d4c2450
                         fild               dword ptr [edi]                               // 0x00517be8    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517bea    d80da4a38a00
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x00517bf0    d9542438
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00517bf4    db4704
                         {disp8} mov        byte ptr [esp + 0x18], al                     // 0x00517bf7    88442418
                         {disp8} mov        byte ptr [esp + 0x19], al                     // 0x00517bfb    88442419
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00517bff    8d442418
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00517c03    d80da4a38a00
                         push               eax                                           // 0x00517c09    50
                         push               ecx                                           // 0x00517c0a    51
                         {disp8} mov        byte ptr [esp + 0x22], -0x01                  // 0x00517c0b    c6442422ff
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00517c10    d95c2448
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x00517c14    8b542448
                         {disp8} mov        dword ptr [esp + 0x60], edx                   // 0x00517c18    89542460
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x00517c1c    d95c2458
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00517c20    8d542440
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00517c24    d9442444
                         push               edx                                           // 0x00517c28    52
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00517c29    d80558768c00
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                  // 0x00517c2f    c6442427ff
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x00517c34    d95c2460
                         call               _jmp_addr_0x008398a0                          // 0x00517c38    e8631c3200
                         add                esp, 0x10                                     // 0x00517c3d    83c410
_jmp_addr_0x00517c40:    cmp                dword ptr [data_bytes + 0x2bcf4c], ebx        // 0x00517c40    391d4c2fc800
                         {disp32} je        _jmp_addr_0x00517d17                          // 0x00517c46    0f84cb000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00517c4c    8b8664010000
                         cmp                dword ptr [eax + 0x00020d08], ebx             // 0x00517c52    3998080d0200
                         {disp32} jle       _jmp_addr_0x00517d17                          // 0x00517c58    0f8eb9000000
                         {disp32} mov       edx, dword ptr [eax + 0x00020cf0]             // 0x00517c5e    8b90f00c0200
                         {disp32} lea       ecx, dword ptr [eax + 0x00020cf0]             // 0x00517c64    8d88f00c0200
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00517c6a    89542434
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00517c6e    8b5104
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00517c71    89542438
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00517c75    8b5108
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00517c78    8954243c
                         {disp32} mov       edx, dword ptr [eax + 0x00020cfc]             // 0x00517c7c    8b90fc0c0200
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00517c82    8954241c
                         {disp32} mov       edx, dword ptr [eax + 0x00020d00]             // 0x00517c86    8b90000d0200
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00517c8c    89542420
                         {disp32} mov       eax, dword ptr [eax + 0x00020d04]             // 0x00517c90    8b80040d0200
                         push               ebx                                           // 0x00517c96    53
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00517c97    8d542418
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00517c9b    89442428
                         push               edx                                           // 0x00517c9f    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00517ca0    8d44243c
                         push               eax                                           // 0x00517ca4    50
                         push               ecx                                           // 0x00517ca5    51
                         {disp8} mov        byte ptr [esp + 0x20], bl                     // 0x00517ca6    885c2420
                         {disp8} mov        byte ptr [esp + 0x21], bl                     // 0x00517caa    885c2421
                         {disp8} mov        byte ptr [esp + 0x22], -0x01                  // 0x00517cae    c6442422ff
                         {disp8} mov        byte ptr [esp + 0x23], -0x01                  // 0x00517cb3    c6442423ff
                         {disp8} mov        byte ptr [esp + 0x24], bl                     // 0x00517cb8    885c2424
                         {disp8} mov        byte ptr [esp + 0x25], -0x01                  // 0x00517cbc    c6442425ff
                         {disp8} mov        byte ptr [esp + 0x26], bl                     // 0x00517cc1    885c2426
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                  // 0x00517cc5    c6442427ff
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x00517cca    c744244800000000
                         call               _jmp_addr_0x008398a0                          // 0x00517cd2    e8c91b3200
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00517cd7    8b8664010000
                         push               ebx                                           // 0x00517cdd    53
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00517cde    8d4c2424
                         push               ecx                                           // 0x00517ce2    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x00517ce3    8d542434
                         push               edx                                           // 0x00517ce7    52
                         add                eax, 0x00020cfc                               // 0x00517ce8    05fc0c0200
                         push               eax                                           // 0x00517ced    50
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x00517cee    c744244000000000
                         call               _jmp_addr_0x008398a0                          // 0x00517cf6    e8a51b3200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00517cfb    8b0d5c19d000
                         {disp8} mov        al, byte ptr [ecx + 0x14]                     // 0x00517d01    8a4114
                         add                esp, 0x20                                     // 0x00517d04    83c420
                         test               al, 0x04                                      // 0x00517d07    a804
                         {disp8} jne        _jmp_addr_0x00517d17                          // 0x00517d09    750c
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00517d0b    8b8664010000
                         dec                dword ptr [eax + 0x00020d08]                  // 0x00517d11    ff88080d0200
_jmp_addr_0x00517d17:    cmp                dword ptr [data_bytes + 0x2bcf50], ebx        // 0x00517d17    391d502fc800
                         {disp8} je         _jmp_addr_0x00517d76                          // 0x00517d1d    7457
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x00517d1f    8b8664010000
                         {disp32} mov       edx, dword ptr [eax + 0x00020d0c]             // 0x00517d25    8b900c0d0200
                         add                eax, 0x00020d0c                               // 0x00517d2b    050c0d0200
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00517d30    89542434
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00517d34    8b4804
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00517d37    894c2438
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00517d3b    d9442438
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00517d3f    8b5008
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00517d42    d80558768c00
                         push               ebx                                           // 0x00517d48    53
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00517d49    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x00517d4d    89542440
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00517d51    d95c243c
                         push               ecx                                           // 0x00517d55    51
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00517d56    8d54243c
                         push               edx                                           // 0x00517d5a    52
                         push               eax                                           // 0x00517d5b    50
                         {disp8} mov        byte ptr [esp + 0x24], bl                     // 0x00517d5c    885c2424
                         {disp8} mov        byte ptr [esp + 0x25], bl                     // 0x00517d60    885c2425
                         {disp8} mov        byte ptr [esp + 0x26], -0x01                  // 0x00517d64    c6442426ff
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                  // 0x00517d69    c6442427ff
                         call               _jmp_addr_0x008398a0                          // 0x00517d6e    e82d1b3200
                         add                esp, 0x10                                     // 0x00517d73    83c410
_jmp_addr_0x00517d76:    {disp32} mov       ecx, dword ptr [esi + 0x00000168]             // 0x00517d76    8b8e68010000
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00517d7c    d94108
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2f734]             // 0x00517d7f    d81d34878d00
                         fnstsw             ax                                            // 0x00517d85    dfe0
                         test               ah, 0x41                                      // 0x00517d87    f6c441
                         {disp8} jne        _jmp_addr_0x00517d93                          // 0x00517d8a    7507
                         mov                eax, 0x00000001                               // 0x00517d8c    b801000000
                         {disp8} jmp        _jmp_addr_0x00517da8                          // 0x00517d91    eb15
_jmp_addr_0x00517d93:    {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00517d93    d94108
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2f730]             // 0x00517d96    d81d30878d00
                         fnstsw             ax                                            // 0x00517d9c    dfe0
                         test               ah, 0x01                                      // 0x00517d9e    f6c401
                         {disp8} je         _jmp_addr_0x00517db1                          // 0x00517da1    740e
                         mov                eax, 0x00000003                               // 0x00517da3    b803000000
_jmp_addr_0x00517da8:    cmp                dword ptr [eax * 0x4 + 0x00eccd08], ebx       // 0x00517da8    391c8508cdec00
                         {disp8} jne        _jmp_addr_0x00517db3                          // 0x00517daf    7502
_jmp_addr_0x00517db1:    xor.s              eax, eax                                      // 0x00517db1    33c0
_jmp_addr_0x00517db3:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00eccd08]       // 0x00517db3    8b048508cdec00
                         {disp32} mov       dword ptr [data_bytes + 0x300318], eax        // 0x00517dba    a31863cc00
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x00517dbf    8b8e60010000
                         {disp8} mov        edx, dword ptr [ecx + 0x58]                   // 0x00517dc5    8b5158
                         {disp32} mov       eax, dword ptr [edx + 0x000047f0]             // 0x00517dc8    8b82f0470000
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00517dce    8b4824
                         add                eax, 0x24                                     // 0x00517dd1    83c024
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00517dd4    894c2428
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00517dd8    d9442428
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00517ddc    8b5004
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00517ddf    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00517de5    8954242c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00517de9    8b4008
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00517dec    d80d04c48a00
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00517df2    89442430
                         call               _jmp_addr_0x007a1400                          // 0x00517df6    e805962800
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00517dfb    d9442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x00517dff    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x00517e05    8944244c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00517e09    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00517e0f    e8ec952800
                         mov                edx, dword ptr [esi]                          // 0x00517e14    8b16
                         mov.s              ecx, esi                                      // 0x00517e16    8bce
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x00517e18    89442450
                         {disp8} mov        dword ptr [esp + 0x54], 0x00000000            // 0x00517e1c    c744245400000000
                         call               dword ptr [edx + 0x42c]                       // 0x00517e24    ff922c040000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00517e2a    d95c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00517e2e    8d4c244c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00517e32    e859b22e00
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00517e37    d8442418
                         {disp32} mov       eax, dword ptr [esi + 0x00001274]             // 0x00517e3b    8b8674120000
                         cmp.s              eax, ebx                                      // 0x00517e41    3bc3
                         {disp32} mov       ecx, dword ptr [esi + 0x0000127c]             // 0x00517e43    8b8e7c120000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00517e49    d95c242c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x300318]        // 0x00517e4d    8b151863cc00
                         {disp32} mov       dword ptr [ecx + 0x000000ac], edx             // 0x00517e53    8991ac000000
                         {disp8} je         _jmp_addr_0x00517e7d                          // 0x00517e59    7422
                         push               ebx                                           // 0x00517e5b    53
                         push               ebx                                           // 0x00517e5c    53
                         sub                esp, 0x0c                                     // 0x00517e5d    83ec0c
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00517e60    8d44243c
                         mov.s              ecx, esp                                      // 0x00517e64    8bcc
                         push               eax                                           // 0x00517e66    50
                         call               @__ct__7LHPointFRC7LHPoint@12                 // 0x00517e67    e85451f3ff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000127c]             // 0x00517e6c    8b8e7c120000
                         push               esi                                           // 0x00517e72    56
                         push               0x00479670                                    // 0x00517e73    6870964700
                         call               _jmp_addr_0x00576f20                          // 0x00517e78    e8a3f00500
_jmp_addr_0x00517e7d:    cmp                dword ptr [data_bytes + 0x2bcf54], ebx        // 0x00517e7d    391d542fc800
                         {disp8} je         _jmp_addr_0x00517eee                          // 0x00517e83    7469
                         {disp32} mov       edi, dword ptr [esi + 0x00001220]             // 0x00517e85    8bbe20120000
                         cmp.s              edi, ebx                                      // 0x00517e8b    3bfb
                         {disp8} je         _jmp_addr_0x00517eee                          // 0x00517e8d    745f
_jmp_addr_0x00517e8f:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00517e8f    8b4704
                         fld                dword ptr [eax]                               // 0x00517e92    d900
                         push               ebx                                           // 0x00517e94    53
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x00517e95    d9542438
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00517e99    8b4804
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00517e9c    894c243c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00517ea0    8b5008
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x00517ea3    d95c2450
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00517ea7    d944243c
                         mov.s              eax, edx                                      // 0x00517eab    8bc2
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2414]              // 0x00517ead    d80514b48a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00517eb3    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x00517eb7    89542440
                         push               ecx                                           // 0x00517ebb    51
                         {disp8} lea        edx, dword ptr [esp + 0x54]                   // 0x00517ebc    8d542454
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x00517ec0    d95c2458
                         {disp8} mov        dword ptr [esp + 0x5c], eax                   // 0x00517ec4    8944245c
                         push               edx                                           // 0x00517ec8    52
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00517ec9    8d442440
                         push               eax                                           // 0x00517ecd    50
                         {disp8} mov        byte ptr [esp + 0x24], bl                     // 0x00517ece    885c2424
                         {disp8} mov        byte ptr [esp + 0x25], bl                     // 0x00517ed2    885c2425
                         {disp8} mov        byte ptr [esp + 0x26], -0x01                  // 0x00517ed6    c6442426ff
                         {disp8} mov        byte ptr [esp + 0x27], -0x01                  // 0x00517edb    c6442427ff
                         call               _jmp_addr_0x008398a0                          // 0x00517ee0    e8bb193200
                         mov                edi, dword ptr [edi]                          // 0x00517ee5    8b3f
                         add                esp, 0x10                                     // 0x00517ee7    83c410
                         cmp.s              edi, ebx                                      // 0x00517eea    3bfb
                         {disp8} jne        _jmp_addr_0x00517e8f                          // 0x00517eec    75a1
_jmp_addr_0x00517eee:    {disp32} mov       ecx, dword ptr [esi + 0x00000370]             // 0x00517eee    8b8e70030000
                         call               _jmp_addr_0x004f4c50                          // 0x00517ef4    e857cdfdff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000109c]             // 0x00517ef9    8b8e9c100000
                         cmp.s              ecx, ebx                                      // 0x00517eff    3bcb
                         {disp8} je         _jmp_addr_0x00517f08                          // 0x00517f01    7405
                         call               _jmp_addr_0x007f8d30                          // 0x00517f03    e8280e2e00
_jmp_addr_0x00517f08:    pop                edi                                           // 0x00517f08    5f
                         pop                esi                                           // 0x00517f09    5e
                         pop                ebp                                           // 0x00517f0a    5d
                         pop                ebx                                           // 0x00517f0b    5b
                         add                esp, 0x48                                     // 0x00517f0c    83c448
                         ret                                                              // 0x00517f0f    c3
?Draw@Rock@@UAEXXZ:
                         push               ecx                                           // 0x00517f10    51
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00517f11    8b4144
                         test               eax, eax                                      // 0x00517f14    85c0
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00517f16    894c2400
                         {disp8} je         _jmp_addr_0x00517f23                          // 0x00517f1a    7407
                         call               _jmp_addr_0x00518050                          // 0x00517f1c    e82f010000
                         pop                ecx                                           // 0x00517f21    59
                         ret                                                              // 0x00517f22    c3
_jmp_addr_0x00517f23:    push               ebx                                           // 0x00517f23    53
                         push               ebp                                           // 0x00517f24    55
                         push               esi                                           // 0x00517f25    56
                         {disp8} mov        esi, dword ptr [ecx + 0x40]                   // 0x00517f26    8b7140
                         push               edi                                           // 0x00517f29    57
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x00517f2a    8d7e50
                         push               edi                                           // 0x00517f2d    57
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                   // 0x00517f2e    8d5e4c
                         {disp8} lea        ebp, dword ptr [esi + 0x38]                   // 0x00517f31    8d6e38
                         push               ebx                                           // 0x00517f34    53
                         push               ebp                                           // 0x00517f35    55
                         call               _jmp_addr_0x00801c90                          // 0x00517f36    e8559d2e00
                         mov                eax, dword ptr [edi]                          // 0x00517f3b    8b07
                         push               ebx                                           // 0x00517f3d    53
                         push               eax                                           // 0x00517f3e    50
                         push               ebp                                           // 0x00517f3f    55
                         call               _jmp_addr_0x007feb30                          // 0x00517f40    e8eb6b2e00
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00517f45    8b542428
                         add                esp, 0x18                                     // 0x00517f49    83c418
                         mov.s              ecx, esi                                      // 0x00517f4c    8bce
                         mov                dword ptr [edi], eax                          // 0x00517f4e    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x00517f50    e87b361200
                         pop                edi                                           // 0x00517f55    5f
                         pop                esi                                           // 0x00517f56    5e
                         pop                ebp                                           // 0x00517f57    5d
                         pop                ebx                                           // 0x00517f58    5b
                         pop                ecx                                           // 0x00517f59    59
                         ret                                                              // 0x00517f5a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00517f5b    e81999eeff
?Draw@MobileStatic@@UAEXXZ:
                         push               esi                                           // 0x00517f60    56
                         mov.s              esi, ecx                                      // 0x00517f61    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00517f63    8b4640
                         test               eax, eax                                      // 0x00517f66    85c0
                         {disp8} je         _jmp_addr_0x00517f80                          // 0x00517f68    7416
                         mov                eax, dword ptr [esi]                          // 0x00517f6a    8b06
                         call               dword ptr [eax + 0x3cc]                       // 0x00517f6c    ff90cc030000
                         test               eax, eax                                      // 0x00517f72    85c0
                         {disp8} je         _jmp_addr_0x00517f80                          // 0x00517f74    740a
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00517f76    8b4e40
                         {disp8} mov        dword ptr [ecx + 0x64], 0x00000001            // 0x00517f79    c7416401000000
_jmp_addr_0x00517f80:    mov.s              ecx, esi                                      // 0x00517f80    8bce
                         call               ?Draw@MultiMapFixed@@UAEXXZ                   // 0x00517f82    e809010000
                         pop                esi                                           // 0x00517f87    5e
                         ret                                                              // 0x00517f88    c3
                         nop                                                              // 0x00517f89    90
                         nop                                                              // 0x00517f8a    90
                         nop                                                              // 0x00517f8b    90
                         nop                                                              // 0x00517f8c    90
                         nop                                                              // 0x00517f8d    90
                         nop                                                              // 0x00517f8e    90
                         nop                                                              // 0x00517f8f    90
_jmp_addr_0x00517f90:    push               ecx                                           // 0x00517f90    51
                         push               ebx                                           // 0x00517f91    53
                         push               esi                                           // 0x00517f92    56
                         mov.s              esi, ecx                                      // 0x00517f93    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00517f95    8b06
                         push               edi                                           // 0x00517f97    57
                         call               dword ptr [eax + 0x898]                       // 0x00517f98    ff9098080000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00517f9e    d95c240c
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00517fa2    8b7c2414
                         {disp8} lea        ecx, dword ptr [edi + 0x50]                   // 0x00517fa6    8d4f50
                         push               ecx                                           // 0x00517fa9    51
                         {disp8} lea        edx, dword ptr [edi + 0x4c]                   // 0x00517faa    8d574c
                         push               edx                                           // 0x00517fad    52
                         {disp8} lea        eax, dword ptr [edi + 0x38]                   // 0x00517fae    8d4738
                         push               eax                                           // 0x00517fb1    50
                         call               _jmp_addr_0x00801c90                          // 0x00517fb2    e8d99c2e00
                         {disp8} mov        ebx, dword ptr [esi + 0x44]                   // 0x00517fb7    8b5e44
                         add                esp, 0x0c                                     // 0x00517fba    83c40c
                         test               ebx, ebx                                      // 0x00517fbd    85db
                         {disp8} je         _jmp_addr_0x00517fe0                          // 0x00517fbf    741f
                         mov.s              ecx, ebx                                      // 0x00517fc1    8bcb
                         call               _jmp_addr_0x00730480                          // 0x00517fc3    e8b8842100
                         push               eax                                           // 0x00517fc8    50
                         mov.s              ecx, ebx                                      // 0x00517fc9    8bcb
                         call               _jmp_addr_0x00730570                          // 0x00517fcb    e8a0852100
                         mov.s              edx, eax                                      // 0x00517fd0    8bd0
                         mov.s              ecx, edi                                      // 0x00517fd2    8bcf
                         call               _jmp_addr_0x0080bf10                          // 0x00517fd4    e8373f2f00
                         mov.s              ecx, esi                                      // 0x00517fd9    8bce
                         call               _jmp_addr_0x00637dd0                          // 0x00517fdb    e8f0fd1100
_jmp_addr_0x00517fe0:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00517fe0    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00517fe4    d81d98a38a00
                         fnstsw             ax                                            // 0x00517fea    dfe0
                         test               ah, 0x40                                      // 0x00517fec    f6c440
                         {disp8} jne        _jmp_addr_0x00518000                          // 0x00517fef    750f
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00517ff1    8b44240c
                         mov                edx, dword ptr [edi]                          // 0x00517ff5    8b17
                         push               eax                                           // 0x00517ff7    50
                         mov.s              ecx, edi                                      // 0x00517ff8    8bcf
                         call               dword ptr [edx + 0x110]                       // 0x00517ffa    ff9210010000
_jmp_addr_0x00518000:    {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00518000    a1f01aea00
                         test               eax, eax                                      // 0x00518005    85c0
                         {disp8} je         _jmp_addr_0x00518042                          // 0x00518007    7439
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbaf4]        // 0x00518009    8b0df41aea00
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0051800f    8b155c19d000
                         push               ecx                                           // 0x00518015    51
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x00518016    8b8a5c002500
                         push               esi                                           // 0x0051801c    56
                         call               _jmp_addr_0x005c9090                          // 0x0051801d    e86e100b00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbad0]        // 0x00518022    a1d01aea00
                         test               eax, eax                                      // 0x00518027    85c0
                         {disp8} je         _jmp_addr_0x00518042                          // 0x00518029    7417
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0051802b    8b0d5c19d000
                         push               0x0                                           // 0x00518031    6a00
                         push               0x0                                           // 0x00518033    6a00
                         push               esi                                           // 0x00518035    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00518036    e815d80300
                         mov.s              ecx, eax                                      // 0x0051803b    8bc8
                         call               _jmp_addr_0x005d56c0                          // 0x0051803d    e87ed60b00
_jmp_addr_0x00518042:    pop                edi                                           // 0x00518042    5f
                         pop                esi                                           // 0x00518043    5e
                         pop                ebx                                           // 0x00518044    5b
                         pop                ecx                                           // 0x00518045    59
                         ret                0x0004                                        // 0x00518046    c20400
                         nop                                                              // 0x00518049    90
                         nop                                                              // 0x0051804a    90
                         nop                                                              // 0x0051804b    90
                         nop                                                              // 0x0051804c    90
                         nop                                                              // 0x0051804d    90
                         nop                                                              // 0x0051804e    90
                         nop                                                              // 0x0051804f    90
_jmp_addr_0x00518050:    push               ebx                                           // 0x00518050    53
                         push               esi                                           // 0x00518051    56
                         mov.s              esi, ecx                                      // 0x00518052    8bf1
                         push               edi                                           // 0x00518054    57
                         {disp8} mov        edi, dword ptr [esi + 0x44]                   // 0x00518055    8b7e44
                         mov.s              ecx, edi                                      // 0x00518058    8bcf
                         call               _jmp_addr_0x00730480                          // 0x0051805a    e821842100
                         mov.s              ecx, edi                                      // 0x0051805f    8bcf
                         mov.s              ebx, eax                                      // 0x00518061    8bd8
                         call               _jmp_addr_0x00730570                          // 0x00518063    e808852100
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x00518068    8b7e40
                         push               ebx                                           // 0x0051806b    53
                         mov.s              edx, eax                                      // 0x0051806c    8bd0
                         mov.s              ecx, edi                                      // 0x0051806e    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x00518070    e84b3e2f00
                         mov.s              edx, esi                                      // 0x00518075    8bd6
                         mov.s              ecx, edi                                      // 0x00518077    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x00518079    e852351200
                         mov.s              ecx, esi                                      // 0x0051807e    8bce
                         call               _jmp_addr_0x00637dd0                          // 0x00518080    e84bfd1100
                         pop                edi                                           // 0x00518085    5f
                         pop                esi                                           // 0x00518086    5e
                         pop                ebx                                           // 0x00518087    5b
                         ret                                                              // 0x00518088    c3
                         nop                                                              // 0x00518089    90
                         nop                                                              // 0x0051808a    90
                         nop                                                              // 0x0051808b    90
                         nop                                                              // 0x0051808c    90
                         nop                                                              // 0x0051808d    90
                         nop                                                              // 0x0051808e    90
                         nop                                                              // 0x0051808f    90
?Draw@MultiMapFixed@@UAEXXZ:
                         push               ebx                                           // 0x00518090    53
                         mov.s              ebx, ecx                                      // 0x00518091    8bd9
                         mov                eax, dword ptr [ebx]                          // 0x00518093    8b03
                         call               dword ptr [eax + 0x8a4]                       // 0x00518095    ff90a4080000
                         cmp                eax, 0x01                                     // 0x0051809b    83f801
                         {disp8} jne        _jmp_addr_0x005180ad                          // 0x0051809e    750d
                         {disp8} mov        ecx, dword ptr [ebx + 0x40]                   // 0x005180a0    8b4b40
                         push               ecx                                           // 0x005180a3    51
                         mov.s              ecx, ebx                                      // 0x005180a4    8bcb
                         call               _jmp_addr_0x00517f90                          // 0x005180a6    e8e5feffff
                         pop                ebx                                           // 0x005180ab    5b
                         ret                                                              // 0x005180ac    c3
_jmp_addr_0x005180ad:    {disp8} mov        eax, dword ptr [ebx + 0x44]                   // 0x005180ad    8b4344
                         test               eax, eax                                      // 0x005180b0    85c0
                         {disp8} je         _jmp_addr_0x005180bd                          // 0x005180b2    7409
                         mov.s              ecx, ebx                                      // 0x005180b4    8bcb
                         call               _jmp_addr_0x00518050                          // 0x005180b6    e895ffffff
                         pop                ebx                                           // 0x005180bb    5b
                         ret                                                              // 0x005180bc    c3
_jmp_addr_0x005180bd:    push               ebp                                           // 0x005180bd    55
                         push               esi                                           // 0x005180be    56
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                   // 0x005180bf    8b7340
                         push               edi                                           // 0x005180c2    57
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x005180c3    8d7e50
                         push               edi                                           // 0x005180c6    57
                         {disp8} lea        ebp, dword ptr [esi + 0x4c]                   // 0x005180c7    8d6e4c
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x005180ca    8d4638
                         push               ebp                                           // 0x005180cd    55
                         push               eax                                           // 0x005180ce    50
                         call               _jmp_addr_0x00801c90                          // 0x005180cf    e8bc9b2e00
                         mov                edx, dword ptr [edi]                          // 0x005180d4    8b17
                         push               ebp                                           // 0x005180d6    55
                         push               edx                                           // 0x005180d7    52
                         {disp8} lea        eax, dword ptr [esi + 0x38]                   // 0x005180d8    8d4638
                         push               eax                                           // 0x005180db    50
                         call               _jmp_addr_0x007feb30                          // 0x005180dc    e84f6a2e00
                         add                esp, 0x18                                     // 0x005180e1    83c418
                         mov.s              edx, ebx                                      // 0x005180e4    8bd3
                         mov.s              ecx, esi                                      // 0x005180e6    8bce
                         mov                dword ptr [edi], eax                          // 0x005180e8    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x005180ea    e8e1341200
                         pop                edi                                           // 0x005180ef    5f
                         pop                esi                                           // 0x005180f0    5e
                         pop                ebp                                           // 0x005180f1    5d
                         pop                ebx                                           // 0x005180f2    5b
                         ret                                                              // 0x005180f3    c3
                         nop                                                              // 0x005180f4    90
                         nop                                                              // 0x005180f5    90
                         nop                                                              // 0x005180f6    90
                         nop                                                              // 0x005180f7    90
                         nop                                                              // 0x005180f8    90
                         nop                                                              // 0x005180f9    90
                         nop                                                              // 0x005180fa    90
                         nop                                                              // 0x005180fb    90
                         nop                                                              // 0x005180fc    90
                         nop                                                              // 0x005180fd    90
                         nop                                                              // 0x005180fe    90
                         nop                                                              // 0x005180ff    90
?Draw@SingleMapFixed@@UAEXXZ:
                         push               ecx                                           // 0x00518100    51
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00518101    8b4144
                         test               eax, eax                                      // 0x00518104    85c0
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00518106    894c2400
                         {disp8} je         _jmp_addr_0x00518113                          // 0x0051810a    7407
                         call               _jmp_addr_0x00518050                          // 0x0051810c    e83fffffff
                         pop                ecx                                           // 0x00518111    59
                         ret                                                              // 0x00518112    c3
_jmp_addr_0x00518113:    push               ebx                                           // 0x00518113    53
                         push               ebp                                           // 0x00518114    55
                         push               esi                                           // 0x00518115    56
                         {disp8} mov        esi, dword ptr [ecx + 0x40]                   // 0x00518116    8b7140
                         push               edi                                           // 0x00518119    57
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x0051811a    8d7e50
                         push               edi                                           // 0x0051811d    57
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                   // 0x0051811e    8d5e4c
                         {disp8} lea        ebp, dword ptr [esi + 0x38]                   // 0x00518121    8d6e38
                         push               ebx                                           // 0x00518124    53
                         push               ebp                                           // 0x00518125    55
                         call               _jmp_addr_0x00801c90                          // 0x00518126    e8659b2e00
                         mov                eax, dword ptr [edi]                          // 0x0051812b    8b07
                         push               ebx                                           // 0x0051812d    53
                         push               eax                                           // 0x0051812e    50
                         push               ebp                                           // 0x0051812f    55
                         call               _jmp_addr_0x007feb30                          // 0x00518130    e8fb692e00
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00518135    8b542428
                         add                esp, 0x18                                     // 0x00518139    83c418
                         mov.s              ecx, esi                                      // 0x0051813c    8bce
                         mov                dword ptr [edi], eax                          // 0x0051813e    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x00518140    e88b341200
                         pop                edi                                           // 0x00518145    5f
                         pop                esi                                           // 0x00518146    5e
                         pop                ebp                                           // 0x00518147    5d
                         pop                ebx                                           // 0x00518148    5b
                         pop                ecx                                           // 0x00518149    59
                         ret                                                              // 0x0051814a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0051814b    e82997eeff
?Draw@MobileObject@@UAEXXZ:
                         push               ecx                                           // 0x00518150    51
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00518151    8b4144
                         test               eax, eax                                      // 0x00518154    85c0
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00518156    894c2400
                         {disp8} je         _jmp_addr_0x00518163                          // 0x0051815a    7407
                         call               _jmp_addr_0x00518050                          // 0x0051815c    e8effeffff
                         pop                ecx                                           // 0x00518161    59
                         ret                                                              // 0x00518162    c3
_jmp_addr_0x00518163:    push               ebx                                           // 0x00518163    53
                         push               ebp                                           // 0x00518164    55
                         push               esi                                           // 0x00518165    56
                         {disp8} mov        esi, dword ptr [ecx + 0x40]                   // 0x00518166    8b7140
                         push               edi                                           // 0x00518169    57
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x0051816a    8d7e50
                         push               edi                                           // 0x0051816d    57
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                   // 0x0051816e    8d5e4c
                         {disp8} lea        ebp, dword ptr [esi + 0x38]                   // 0x00518171    8d6e38
                         push               ebx                                           // 0x00518174    53
                         push               ebp                                           // 0x00518175    55
                         call               _jmp_addr_0x00801c90                          // 0x00518176    e8159b2e00
                         mov                eax, dword ptr [edi]                          // 0x0051817b    8b07
                         push               ebx                                           // 0x0051817d    53
                         push               eax                                           // 0x0051817e    50
                         push               ebp                                           // 0x0051817f    55
                         call               _jmp_addr_0x007feb30                          // 0x00518180    e8ab692e00
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00518185    8b542428
                         add                esp, 0x18                                     // 0x00518189    83c418
                         mov.s              ecx, esi                                      // 0x0051818c    8bce
                         mov                dword ptr [edi], eax                          // 0x0051818e    8907
                         call               _jmp_addr_0x0063b5d0                          // 0x00518190    e83b341200
                         pop                edi                                           // 0x00518195    5f
                         pop                esi                                           // 0x00518196    5e
                         pop                ebp                                           // 0x00518197    5d
                         pop                ebx                                           // 0x00518198    5b
                         pop                ecx                                           // 0x00518199    59
                         ret                                                              // 0x0051819a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0051819b    e8d996eeff
?DrawInHand@Scaffold@@UAEXPAVGInterfaceStatus@@@Z:
                         sub                esp, 0x00000190                               // 0x005181a0    81ec90010000
                         push               ebp                                           // 0x005181a6    55
                         push               esi                                           // 0x005181a7    56
                         {disp32} mov       esi, dword ptr [esp + 0x0000019c]             // 0x005181a8    8bb4249c010000
                         push               edi                                           // 0x005181af    57
                         mov.s              edi, ecx                                      // 0x005181b0    8bf9
                         push               esi                                           // 0x005181b2    56
                         call               ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z                          // 0x005181b3    e8280f0000
                         xor.s              ebp, ebp                                      // 0x005181b8    33ed
                         push               ebp                                           // 0x005181ba    55
                         mov.s              ecx, edi                                      // 0x005181bb    8bcf
                         call               _jmp_addr_0x006ea950                          // 0x005181bd    e88e271d00
                         test               eax, eax                                      // 0x005181c2    85c0
                         {disp32} je        _jmp_addr_0x00518634                          // 0x005181c4    0f846a040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005181ca    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005181d0    e87bd60300
                         cmp                esi, dword ptr [eax + 0x0000039c]             // 0x005181d5    3bb09c030000
                         {disp32} jne       _jmp_addr_0x00518634                          // 0x005181db    0f8553040000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005181e1    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025053c]             // 0x005181e6    8b803c052500
                         xor.s              edx, edx                                      // 0x005181ec    33d2
                         mov                ecx, 0x00000064                               // 0x005181ee    b964000000
                         div                ecx                                           // 0x005181f3    f7f1
                         {disp8} mov        eax, dword ptr [edi + 0x78]                   // 0x005181f5    8b4778
                         cmp.s              edx, eax                                      // 0x005181f8    3bd0
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x005181fe   // 0x005181fa    7202
                         mov.s              edx, eax                                      // 0x005181fc    8bd0
_jmp_addr_0x005181fe:    sub.s              eax, edx                                      // 0x005181fe    2bc2
                         {disp32} mov       edx, dword ptr [edi + 0x00000084]             // 0x00518200    8b9784000000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00518206    89442410
                         cmp.s              eax, ebp                                      // 0x0051820a    3bc5
                         {disp32} mov       al, byte ptr [edi + 0x00000088]               // 0x0051820c    8a8788000000
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00518212    8954240c
                         {disp32} jle       _jmp_addr_0x00518306                          // 0x00518216    0f8eea000000
                         test               al, 0x01                                      // 0x0051821c    a801
                         {disp32} je        _jmp_addr_0x005182c5                          // 0x0051821e    0f84a1000000
                         cmp                dword ptr [data_bytes + 0x30031c], ebp        // 0x00518224    392d1c63cc00
                         {disp8} jne        _jmp_addr_0x005182ab                          // 0x0051822a    757f
                         {disp32} mov       dword ptr [data_bytes + 0x300320], ebp        // 0x0051822c    892d2063cc00
                         {disp8} mov        ecx, dword ptr [edi + 0x6c]                   // 0x00518232    8b4f6c
                         call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ                          // 0x00518235    e896d4eeff
                         mov                edx, dword ptr [eax]                          // 0x0051823a    8b10
                         mov.s              ecx, eax                                      // 0x0051823c    8bc8
                         call               dword ptr [edx + 0x44]                        // 0x0051823e    ff5244
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00518241    8d4c2434
                         mov.s              esi, eax                                      // 0x00518245    8bf0
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x00518247    ff155c978a00
                         cmp.s              esi, ebp                                      // 0x0051824d    3bf5
                         {disp8} jge        _jmp_addr_0x0051825b                          // 0x0051824f    7d0a
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000064            // 0x00518251    c744247c64000000
                         {disp8} jmp        _jmp_addr_0x00518269                          // 0x00518259    eb0e
_jmp_addr_0x0051825b:    lea                eax, dword ptr [esi + esi * 0x2]              // 0x0051825b    8d0476
                         mov                ecx, 0x0000006e                               // 0x0051825e    b96e000000
                         sub.s              ecx, eax                                      // 0x00518263    2bc8
                         {disp8} mov        dword ptr [esp + 0x7c], ecx                   // 0x00518265    894c247c
_jmp_addr_0x00518269:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00518269    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003ac]             // 0x0051826f    8b91ac030000
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x00518275    8d442434
                         push               eax                                           // 0x00518279    50
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0051827a    8954243c
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000033            // 0x0051827e    c744245c33000000
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x00518286    896c2444
                         {disp8} mov        dword ptr [esp + 0x58], ebp                   // 0x0051828a    896c2458
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x0051828e    896c2440
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x00518292    e8991bf1ff
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00518297    8d4c2434
                         {disp32} mov       dword ptr [data_bytes + 0x30031c], 0x00000001 // 0x0051829b    c7051c63cc0001000000
                         call               dword ptr [rdata_bytes + 0x758]               // 0x005182a5    ff1558978a00
_jmp_addr_0x005182ab:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x005182ab    db442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26154]             // 0x005182af    d80d54f18c00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x005182b5    d82d90a38a00
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005182bb    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005182bf    d95c240c
                         {disp8} jmp        _jmp_addr_0x0051830e                          // 0x005182c3    eb49
_jmp_addr_0x005182c5:    cmp                dword ptr [data_bytes + 0x300320], ebp        // 0x005182c5    392d2063cc00
                         {disp8} jne        _jmp_addr_0x005182f2                          // 0x005182cb    7525
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x005182cd    8b0d203bcd00
                         push               0x1                                           // 0x005182d3    6a01
                         push               ebp                                           // 0x005182d5    55
                         push               ebp                                           // 0x005182d6    55
                         push               ebp                                           // 0x005182d7    55
                         push               0x2                                           // 0x005182d8    6a02
                         push               0x32                                          // 0x005182da    6a32
                         push               ebp                                           // 0x005182dc    55
                         {disp32} mov       dword ptr [data_bytes + 0x30031c], ebp        // 0x005182dd    892d1c63cc00
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x005182e3    e8781af1ff
                         {disp32} mov       dword ptr [data_bytes + 0x300320], 0x00000001 // 0x005182e8    c7052063cc0001000000
_jmp_addr_0x005182f2:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x005182f2    db442410
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005182f6    d84c240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26154]             // 0x005182fa    d80d54f18c00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00518300    d95c240c
                         {disp8} jmp        _jmp_addr_0x0051830e                          // 0x00518304    eb08
_jmp_addr_0x00518306:    test               al, 0x01                                      // 0x00518306    a801
                         {disp32} je        _jmp_addr_0x00518634                          // 0x00518308    0f8426030000
_jmp_addr_0x0051830e:    {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x0051830e    8b4f74
                         cmp.s              ecx, ebp                                      // 0x00518311    3bcd
                         {disp32} je        _jmp_addr_0x00518634                          // 0x00518313    0f841b030000
                         mov                eax, dword ptr [ecx]                          // 0x00518319    8b01
                         mov                edx, 0x00000001                               // 0x0051831b    ba01000000
                         call               dword ptr [eax + 0x40]                        // 0x00518320    ff5040
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00518323    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00518329    e822d50300
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0051832e    8b88a0030000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000482c]             // 0x00518334    8b912c480000
                         add                edx, 0x38                                     // 0x0051833a    83c238
                         push               edx                                           // 0x0051833d    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0051833e    8d4c242c
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x00518342    e819ae0e00
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00518347    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025053c]             // 0x0051834c    8b803c052500
                         xor.s              edx, edx                                      // 0x00518352    33d2
                         mov                ecx, 0x00000064                               // 0x00518354    b964000000
                         div                ecx                                           // 0x00518359    f7f1
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0051835b    8b442430
                         {disp8} mov        esi, dword ptr [edi + 0x74]                   // 0x0051835f    8b7774
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x00518362    896c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00518366    8d4c2428
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0051836a    89542414
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0051836e    df6c2414
                         {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x00518372    8b5728
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00518375    89442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]             // 0x00518379    d80d104b8c00
                         {disp32} fmul      dword ptr [edx + 0x00000114]                  // 0x0051837f    d88a14010000
                         {disp32} fadd      dword ptr [edi + 0x00000080]                  // 0x00518385    d88780000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0051838b    d95c2410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0051838f    e8fcac2e00
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x00518394    d8442414
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00518398    d95c2418
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x0051839c    db442428
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005183a0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005183a6    d95c2414
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x005183aa    db44242c
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005183ae    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005183b4    d95c241c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005183b8    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005183bc    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005183c2    d944240c
                         fnstsw             ax                                            // 0x005183c6    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005183c8    d81d90a38a00
                         test               ah, 0x40                                      // 0x005183ce    f6c440
                         fnstsw             ax                                            // 0x005183d1    dfe0
                         {disp32} jne       _jmp_addr_0x00518540                          // 0x005183d3    0f8567010000
                         test               ah, 0x40                                      // 0x005183d9    f6c440
                         {disp32} jne       _jmp_addr_0x0051849d                          // 0x005183dc    0f85bb000000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005183e2    8b4c240c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005183e6    d9442414
                         {disp8} mov        dword ptr [esi + 0x40], ebp                   // 0x005183ea    896e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebp                   // 0x005183ed    896e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebp                   // 0x005183f0    896e38
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x005183f3    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp                   // 0x005183f6    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp                   // 0x005183f9    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x005183fc    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp                   // 0x005183ff    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp                   // 0x00518402    896e18
                         {disp8} mov        dword ptr [esi + 0x34], ecx                   // 0x00518405    894e34
                         mov.s              edx, ecx                                      // 0x00518408    8bd1
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x0051840a    895624
                         mov.s              eax, ecx                                      // 0x0051840d    8bc1
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0051840f    894614
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x00518412    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x00518415    d95e38
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00518418    d9442418
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0051841c    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x0051841f    d95e3c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518422    d944241c
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x00518426    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x00518429    d95e40
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0051842c    d9442410
                         fcos                                                             // 0x00518430    d9ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518432    d9442410
                         fsin                                                             // 0x00518436    d9fe
                         fld                st(0)                                         // 0x00518438    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0051843a    d84e14
                         fld                st(1)                                         // 0x0051843d    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0051843f    d84e2c
                         fld                st(3)                                         // 0x00518442    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x00518444    d84e14
                         faddp              st(1), st                                     // 0x00518447    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x00518449    d95e14
                         fld                st(2)                                         // 0x0051844c    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0051844e    d84e2c
                         fsub               st, st(1)                                     // 0x00518451    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x00518453    d95e2c
                         fstp               st(0)                                         // 0x00518456    ddd8
                         fld                st(0)                                         // 0x00518458    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0051845a    d84e18
                         fld                st(1)                                         // 0x0051845d    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0051845f    d84e30
                         fld                st(3)                                         // 0x00518462    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00518464    d84e18
                         faddp              st(1), st                                     // 0x00518467    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x00518469    d95e18
                         fld                st(2)                                         // 0x0051846c    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0051846e    d84e30
                         fsub               st, st(1)                                     // 0x00518471    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00518473    d95e30
                         fstp               st(0)                                         // 0x00518476    ddd8
                         fld                st(0)                                         // 0x00518478    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0051847a    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0051847d    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00518481    d84e34
                         fld                st(1)                                         // 0x00518484    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00518486    d84e1c
                         faddp              st(1), st                                     // 0x00518489    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0051848b    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x0051848e    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00518491    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00518495    d95e34
                         {disp32} jmp       _jmp_addr_0x005185b2                          // 0x00518498    e915010000
_jmp_addr_0x0051849d:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0051849d    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005184a1    8b4c2414
                         fcos                                                             // 0x005184a5    d9ff
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005184a7    8b542418
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x005184ab    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp                   // 0x005184ae    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp                   // 0x005184b1    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x005184b4    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp                   // 0x005184b7    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp                   // 0x005184ba    896e18
                         {disp8} mov        dword ptr [esi + 0x38], ecx                   // 0x005184bd    894e38
                         {disp8} mov        dword ptr [esi + 0x3c], edx                   // 0x005184c0    89563c
                         mov                eax, 0x3f800000                               // 0x005184c3    b80000803f
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x005184c8    894634
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x005184cb    894624
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x005184ce    894614
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005184d1    8b44241c
                         {disp8} mov        dword ptr [esi + 0x40], eax                   // 0x005184d5    894640
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005184d8    d9442410
                         fsin                                                             // 0x005184dc    d9fe
                         fld                st(0)                                         // 0x005184de    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x005184e0    d84e14
                         fld                st(1)                                         // 0x005184e3    d9c1
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x005184e5    d84e2c
                         fld                st(3)                                         // 0x005184e8    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x005184ea    d84e14
                         faddp              st(1), st                                     // 0x005184ed    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x005184ef    d95e14
                         fld                st(2)                                         // 0x005184f2    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x005184f4    d84e2c
                         fsub               st, st(1)                                     // 0x005184f7    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x005184f9    d95e2c
                         fstp               st(0)                                         // 0x005184fc    ddd8
                         fld                st(0)                                         // 0x005184fe    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00518500    d84e18
                         fld                st(1)                                         // 0x00518503    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00518505    d84e30
                         fld                st(3)                                         // 0x00518508    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0051850a    d84e18
                         faddp              st(1), st                                     // 0x0051850d    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x0051850f    d95e18
                         fld                st(2)                                         // 0x00518512    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00518514    d84e30
                         fsub               st, st(1)                                     // 0x00518517    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00518519    d95e30
                         fstp               st(0)                                         // 0x0051851c    ddd8
                         fld                st(0)                                         // 0x0051851e    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00518520    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00518523    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00518527    d84e34
                         fld                st(1)                                         // 0x0051852a    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0051852c    d84e1c
                         faddp              st(1), st                                     // 0x0051852f    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00518531    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00518534    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00518537    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x0051853b    d95e34
                         {disp8} jmp        _jmp_addr_0x005185b2                          // 0x0051853e    eb72
_jmp_addr_0x00518540:    test               ah, 0x40                                      // 0x00518540    f6c440
                         {disp8} jne        _jmp_addr_0x00518591                          // 0x00518543    754c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00518545    8b4c240c
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00518549    d9442414
                         {disp8} mov        dword ptr [esi + 0x40], ebp                   // 0x0051854d    896e40
                         {disp8} mov        dword ptr [esi + 0x3c], ebp                   // 0x00518550    896e3c
                         {disp8} mov        dword ptr [esi + 0x38], ebp                   // 0x00518553    896e38
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x00518556    896e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebp                   // 0x00518559    896e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebp                   // 0x0051855c    896e28
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x0051855f    896e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebp                   // 0x00518562    896e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebp                   // 0x00518565    896e18
                         {disp8} mov        dword ptr [esi + 0x34], ecx                   // 0x00518568    894e34
                         mov.s              edx, ecx                                      // 0x0051856b    8bd1
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x0051856d    895624
                         mov.s              eax, ecx                                      // 0x00518570    8bc1
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00518572    894614
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x00518575    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x00518578    d95e38
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0051857b    d9442418
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0051857f    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00518582    d95e3c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518585    d944241c
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x00518589    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x0051858c    d95e40
                         {disp8} jmp        _jmp_addr_0x005185b2                          // 0x0051858f    eb21
_jmp_addr_0x00518591:    push               ebx                                           // 0x00518591    53
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x00518592    8d5e14
                         mov.s              ecx, ebx                                      // 0x00518595    8bcb
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x00518597    e864afeeff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0051859c    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005185a0    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005185a4    8b442420
                         {disp8} mov        dword ptr [ebx + 0x24], ecx                   // 0x005185a8    894b24
                         {disp8} mov        dword ptr [ebx + 0x28], edx                   // 0x005185ab    895328
                         {disp8} mov        dword ptr [ebx + 0x2c], eax                   // 0x005185ae    89432c
                         pop                ebx                                           // 0x005185b1    5b
_jmp_addr_0x005185b2:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005185b2    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005185b6    8b542410
                         {disp8} mov        dword ptr [esi + 0x48], edx                   // 0x005185ba    895648
                         {disp8} mov        dword ptr [esi + 0x44], ecx                   // 0x005185bd    894e44
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x005185c0    8b4f74
                         mov                eax, dword ptr [ecx]                          // 0x005185c3    8b01
                         mov                edx, 0x00000001                               // 0x005185c5    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x005185ca    ff5048
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x005185cd    8d4c2424
                         push               ecx                                           // 0x005185d1    51
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x005185d2    8d542424
                         push               edx                                           // 0x005185d6    52
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x005185d7    8d442430
                         push               eax                                           // 0x005185db    50
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x005185dc    896c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                   // 0x005185e0    896c2430
                         call               _jmp_addr_0x00802120                          // 0x005185e4    e8379b2e00
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x005185e9    8b74242c
                         mov.s              ecx, esi                                      // 0x005185ed    8bce
                         shr                ecx, 0x18                                     // 0x005185ef    c1e918
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x005185f2    894c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x005185f6    896c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x005185fa    df6c2420
                         add                esp, 0x0c                                     // 0x005185fe    83c40c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x24c8]              // 0x00518601    d80dc8b48a00
                         call               _jmp_addr_0x007a1400                          // 0x00518607    e8f48d2800
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0051860c    8b542424
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x00518610    8b4f74
                         shl                eax, 0x18                                     // 0x00518613    c1e018
                         and                esi, 0x00ffffff                               // 0x00518616    81e6ffffff00
                         or.s               eax, esi                                      // 0x0051861c    0bc6
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0051861e    89442420
                         mov                esi, dword ptr [ecx]                          // 0x00518622    8b31
                         push               edx                                           // 0x00518624    52
                         mov.s              edx, eax                                      // 0x00518625    8bd0
                         call               dword ptr [esi + 0x2c]                        // 0x00518627    ff562c
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x0051862a    8b4f74
                         xor.s              edx, edx                                      // 0x0051862d    33d2
                         call               _jmp_addr_0x0063b5d0                          // 0x0051862f    e89c2f1200
_jmp_addr_0x00518634:    pop                edi                                           // 0x00518634    5f
                         pop                esi                                           // 0x00518635    5e
                         pop                ebp                                           // 0x00518636    5d
                         add                esp, 0x00000190                               // 0x00518637    81c490010000
                         ret                0x0004                                        // 0x0051863d    c20400
_jmp_addr_0x00518640:    push               esi                                           // 0x00518640    56
                         mov.s              esi, ecx                                      // 0x00518641    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000039c]             // 0x00518643    8b8e9c030000
                         xor.s              eax, eax                                      // 0x00518649    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00000090]               // 0x0051864b    8a8190000000
                         test               al, al                                        // 0x00518651    84c0
                         {disp8} je         _jmp_addr_0x00518670                          // 0x00518653    741b
                         and                eax, 0x000000ff                               // 0x00518655    25ff000000
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x0051865a    8d14c500000000
                         sub.s              edx, eax                                      // 0x00518661    2bd0
                         {disp8} lea        ecx, dword ptr [ecx + edx * 0x4 + 0x58]       // 0x00518663    8d4c9158
                         test               ecx, ecx                                      // 0x00518667    85c9
                         {disp8} je         _jmp_addr_0x00518670                          // 0x00518669    7405
                         call               _jmp_addr_0x005faf80                          // 0x0051866b    e810290e00
_jmp_addr_0x00518670:    {disp32} mov       ecx, dword ptr [esi + 0x0000039c]             // 0x00518670    8b8e9c030000
                         mov                eax, dword ptr [ecx]                          // 0x00518676    8b01
                         push               0x1                                           // 0x00518678    6a01
                         call               dword ptr [eax + 0x500]                       // 0x0051867a    ff9000050000
                         pop                esi                                           // 0x00518680    5e
                         ret                                                              // 0x00518681    c3
                         nop                                                              // 0x00518682    90
                         nop                                                              // 0x00518683    90
                         nop                                                              // 0x00518684    90
                         nop                                                              // 0x00518685    90
                         nop                                                              // 0x00518686    90
                         nop                                                              // 0x00518687    90
                         nop                                                              // 0x00518688    90
                         nop                                                              // 0x00518689    90
                         nop                                                              // 0x0051868a    90
                         nop                                                              // 0x0051868b    90
                         nop                                                              // 0x0051868c    90
                         nop                                                              // 0x0051868d    90
                         nop                                                              // 0x0051868e    90
                         nop                                                              // 0x0051868f    90
?Draw@Feature@@UAEXXZ:
                         {disp32} jmp       ?Draw@MultiMapFixed@@UAEXXZ                   // 0x00518690    e9fbf9ffff
                         nop                                                              // 0x00518695    90
                         nop                                                              // 0x00518696    90
                         nop                                                              // 0x00518697    90
                         nop                                                              // 0x00518698    90
                         nop                                                              // 0x00518699    90
                         nop                                                              // 0x0051869a    90
                         nop                                                              // 0x0051869b    90
                         nop                                                              // 0x0051869c    90
                         nop                                                              // 0x0051869d    90
                         nop                                                              // 0x0051869e    90
                         nop                                                              // 0x0051869f    90
?Draw@Creed@@UAEXXZ:
                         push               esi                                           // 0x005186a0    56
                         mov.s              esi, ecx                                      // 0x005186a1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x005186a3    8b4e68
                         test               ecx, ecx                                      // 0x005186a6    85c9
                         {disp8} je         _jmp_addr_0x005186c8                          // 0x005186a8    741e
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x005186aa    8b4640
                         test               eax, eax                                      // 0x005186ad    85c0
                         {disp8} je         _jmp_addr_0x005186c8                          // 0x005186af    7417
                         {disp8} mov        edx, dword ptr [eax + 0x44]                   // 0x005186b1    8b5044
                         push               edx                                           // 0x005186b4    52
                         add                eax, 0x14                                     // 0x005186b5    83c014
                         push               eax                                           // 0x005186b8    50
                         call               _jmp_addr_0x0068e120                          // 0x005186b9    e8625a1700
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005186be    8b4e40
                         mov.s              edx, esi                                      // 0x005186c1    8bd6
                         call               _jmp_addr_0x0063b7e0                          // 0x005186c3    e818311200
_jmp_addr_0x005186c8:    pop                esi                                           // 0x005186c8    5e
                         ret                                                              // 0x005186c9    c3
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]  // 0x005186ca    ff1578998a00
?DrawOutOfMap@Creed@@UAEX_N@Z:
                         push               esi                                           // 0x005186d0    56
                         mov.s              esi, ecx                                      // 0x005186d1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x005186d3    8b4668
                         test               eax, eax                                      // 0x005186d6    85c0
                         {disp8} je         _jmp_addr_0x005186ff                          // 0x005186d8    7425
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x005186da    8b4640
                         test               eax, eax                                      // 0x005186dd    85c0
                         {disp8} je         _jmp_addr_0x005186ff                          // 0x005186df    741e
                         or                 dword ptr [eax + 8], 0x40                     // 0x005186e1    83480840
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x005186e5    8b4640
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x005186e8    8b4844
                         push               ecx                                           // 0x005186eb    51
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x005186ec    8b4e68
                         add                eax, 0x14                                     // 0x005186ef    83c014
                         push               eax                                           // 0x005186f2    50
                         call               _jmp_addr_0x0068e120                          // 0x005186f3    e8285a1700
                         {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x005186f8    8b7640
                         and                dword ptr [esi + 0x08], 0xffffffbf            // 0x005186fb    836608bf
_jmp_addr_0x005186ff:    pop                esi                                           // 0x005186ff    5e
                         ret                0x0004                                        // 0x00518700    c20400
                         nop                                                              // 0x00518703    90
                         nop                                                              // 0x00518704    90
                         nop                                                              // 0x00518705    90
                         nop                                                              // 0x00518706    90
                         nop                                                              // 0x00518707    90
                         nop                                                              // 0x00518708    90
                         nop                                                              // 0x00518709    90
                         nop                                                              // 0x0051870a    90
                         nop                                                              // 0x0051870b    90
                         nop                                                              // 0x0051870c    90
                         nop                                                              // 0x0051870d    90
                         nop                                                              // 0x0051870e    90
                         nop                                                              // 0x0051870f    90
?Draw@SpellSeed@@UAEXXZ:
                         ret                                                              // 0x00518710    c3
                         nop                                                              // 0x00518711    90
                         nop                                                              // 0x00518712    90
                         nop                                                              // 0x00518713    90
                         nop                                                              // 0x00518714    90
                         nop                                                              // 0x00518715    90
                         nop                                                              // 0x00518716    90
                         nop                                                              // 0x00518717    90
                         nop                                                              // 0x00518718    90
                         nop                                                              // 0x00518719    90
                         nop                                                              // 0x0051871a    90
                         nop                                                              // 0x0051871b    90
                         nop                                                              // 0x0051871c    90
                         nop                                                              // 0x0051871d    90
                         nop                                                              // 0x0051871e    90
                         nop                                                              // 0x0051871f    90
_jmp_addr_0x00518720:    {disp32} mov       al, byte ptr [data_bytes + 0x222e8d]          // 0x00518720    a08d8ebe00
                         sub                esp, 0x70                                     // 0x00518725    83ec70
                         test               al, al                                        // 0x00518728    84c0
                         push               edi                                           // 0x0051872a    57
                         mov.s              edi, ecx                                      // 0x0051872b    8bf9
                         {disp32} je        _jmp_addr_0x00518b8a                          // 0x0051872d    0f8457040000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00518733    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x00518736    8b01
                         push               esi                                           // 0x00518738    56
                         call               dword ptr [eax + 0xf8]                        // 0x00518739    ff90f8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0051873f    8b4818
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00518742    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00518746    d9442418
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x0051874a    8b501c
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x0051874d    8b4f40
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00518750    8954241c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518754    d944241c
                         add                eax, 0x18                                     // 0x00518758    83c018
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0051875b    8b4008
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0051875e    89442420
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00518762    d9442420
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x00518766    d8492c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518769    d944241c
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x0051876d    d84920
                         faddp              st(1), st                                     // 0x00518770    dec1
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00518772    d9442418
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00518776    d84914
                         faddp              st(1), st                                     // 0x00518779    dec1
                         {disp8} fadd       dword ptr [ecx + 0x38]                        // 0x0051877b    d84138
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0051877e    d95c2418
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00518782    d9442420
                         {disp8} fmul       dword ptr [ecx + 0x30]                        // 0x00518786    d84930
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518789    d944241c
                         {disp8} fmul       dword ptr [ecx + 0x24]                        // 0x0051878d    d84924
                         faddp              st(1), st                                     // 0x00518790    dec1
                         fld                st(2)                                         // 0x00518792    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00518794    d84918
                         faddp              st(1), st                                     // 0x00518797    dec1
                         {disp8} fadd       dword ptr [ecx + 0x3c]                        // 0x00518799    d8413c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0051879c    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005187a0    d9442420
                         {disp8} fmul       dword ptr [ecx + 0x34]                        // 0x005187a4    d84934
                         fxch               st(1)                                         // 0x005187a7    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x28]                        // 0x005187a9    d84928
                         faddp              st(1), st                                     // 0x005187ac    dec1
                         fxch               st(1)                                         // 0x005187ae    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x005187b0    d8491c
                         faddp              st(1), st                                     // 0x005187b3    dec1
                         {disp8} fadd       dword ptr [ecx + 0x40]                        // 0x005187b5    d84140
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005187b8    d95c2420
                         mov                edx, dword ptr [ecx]                          // 0x005187bc    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x005187be    ff92f8000000
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x005187c4    d94018
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x005187c7    d80d78b68a00
                         {disp8} mov        esi, dword ptr [edi + 0x40]                   // 0x005187cd    8b7740
                         add                eax, 0x18                                     // 0x005187d0    83c018
                         add                esi, 0x14                                     // 0x005187d3    83c614
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005187d6    d95c2430
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x005187da    d94004
                         mov.s              ecx, esi                                      // 0x005187dd    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x005187df    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005187e5    d95c2434
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x005187e9    d94008
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x005187ec    d80d78b68a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x005187f2    d95c2438
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x005187f6    e805adeeff
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x005187fb    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x005187ff    8b4c2434
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00518803    8b542438
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00518807    894624
                         {disp8} mov        dword ptr [esi + 0x28], ecx                   // 0x0051880a    894e28
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x0051880d    89562c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00518810    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00518816    e865390300
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0051881b    d9442418
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x0051881f    a1b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x00518824    8b0dbc1dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0051882a    8b15c01dea00
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00518830    89442430
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x00518834    d8642430
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00518838    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0051883c    89542438
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00518840    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518844    d944241c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00518848    8b442424
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0051884c    d8642434
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00518850    8944240c
                         pop                esi                                           // 0x00518854    5e
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00518855    d95c2424
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00518859    d944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0051885d    8b4c2424
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x00518861    d8642434
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00518865    894c240c
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00518869    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0051886d    d9442420
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00518871    8b542428
                         fabs                                                             // 0x00518875    d9e1
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00518877    89542410
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x0051887b    dc1dd8798c00
                         fnstsw             ax                                            // 0x00518881    dfe0
                         test               ah, 0x01                                      // 0x00518883    f6c401
                         {disp8} je         _jmp_addr_0x005188bc                          // 0x00518886    7434
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00518888    d9442428
                         fabs                                                             // 0x0051888c    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1e9d8]             // 0x0051888e    dc1dd8798c00
                         fnstsw             ax                                            // 0x00518894    dfe0
                         test               ah, 0x01                                      // 0x00518896    f6c401
                         {disp8} je         _jmp_addr_0x005188bc                          // 0x00518899    7421
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0051889b    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0051889f    d81d98a38a00
                         fnstsw             ax                                            // 0x005188a5    dfe0
                         test               ah, 0x41                                      // 0x005188a7    f6c441
                         {disp8} jne        _jmp_addr_0x005188b4                          // 0x005188aa    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x005188ac    d90518f58b00
                         {disp8} jmp        _jmp_addr_0x005188f3                          // 0x005188b2    eb3f
_jmp_addr_0x005188b4:    {disp32} fld       dword ptr [rdata_bytes + 0x2f738]             // 0x005188b4    d90538878d00
                         {disp8} jmp        _jmp_addr_0x005188f3                          // 0x005188ba    eb37
_jmp_addr_0x005188bc:    {disp8} fld        dword ptr [esp + 0x20]                        // 0x005188bc    d9442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005188c0    d81d98a38a00
                         fnstsw             ax                                            // 0x005188c6    dfe0
                         test               ah, 0x40                                      // 0x005188c8    f6c440
                         {disp8} je         _jmp_addr_0x005188ef                          // 0x005188cb    7422
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005188cd    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005188d1    d81d98a38a00
                         fnstsw             ax                                            // 0x005188d7    dfe0
                         test               ah, 0x40                                      // 0x005188d9    f6c440
                         {disp8} je         _jmp_addr_0x005188ef                          // 0x005188dc    7411
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005188de    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005188e2    d81d98a38a00
                         fnstsw             ax                                            // 0x005188e8    dfe0
                         test               ah, 0x40                                      // 0x005188ea    f6c440
                         {disp8} jne        _jmp_addr_0x00518937                          // 0x005188ed    7548
_jmp_addr_0x005188ef:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x005188ef    d9442408
_jmp_addr_0x005188f3:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005188f3    d944240c
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x005188f7    d84c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005188fb    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005188ff    d84c2410
                         faddp              st(1), st                                     // 0x00518903    dec1
                         fld                st(1)                                         // 0x00518905    d9c1
                         fmul               st, st(2)                                     // 0x00518907    d8ca
                         faddp              st(1), st                                     // 0x00518909    dec1
                         fsqrt                                                            // 0x0051890b    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0051890d    d83d90a38a00
                         {disp8} fst        dword ptr [esp + 0x04]                        // 0x00518913    d9542404
                         fmul               st, st(1)                                     // 0x00518917    d8c9
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00518919    d95c2408
                         fstp               st(0)                                         // 0x0051891d    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0051891f    d9442404
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00518923    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00518927    d95c240c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0051892b    d9442404
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0051892f    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00518933    d95c2410
_jmp_addr_0x00518937:    {disp32} mov       cl, byte ptr [data_bytes + 0x3002dc]          // 0x00518937    8a0ddc62cc00
                         mov                al, 0x01                                      // 0x0051893d    b001
                         test               al, cl                                        // 0x0051893f    84c8
                         {disp8} jne        _jmp_addr_0x00518978                          // 0x00518941    7535
                         mov.s              dl, cl                                        // 0x00518943    8ad1
                         or.s               dl, al                                        // 0x00518945    0ad0
                         push               0x00518c40                                    // 0x00518947    68408c5100
                         {disp32} mov       byte ptr [data_bytes + 0x3002dc], dl          // 0x0051894c    8815dc62cc00
                         {disp32} mov       dword ptr [data_bytes + 0x3002d0], 0x00000000 // 0x00518952    c705d062cc0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3002d4], 0x3f800000 // 0x0051895c    c705d462cc000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x3002d8], 0x00000000 // 0x00518966    c705d862cc0000000000
                         call               _atexit                                       // 0x00518970    e81cce2a00
                         add                esp, 0x04                                     // 0x00518975    83c404
_jmp_addr_0x00518978:    {disp32} fld       dword ptr [data_bytes + 0x3002d4]             // 0x00518978    d905d462cc00
                         push               ecx                                           // 0x0051897e    51
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0051897f    d84c2410
                         {disp32} fld       dword ptr [data_bytes + 0x3002d8]             // 0x00518983    d905d862cc00
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00518989    d84c2414
                         faddp              st(1), st                                     // 0x0051898d    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x3002d0]             // 0x0051898f    d905d062cc00
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00518995    d84c240c
                         faddp              st(1), st                                     // 0x00518999    dec1
                         fchs                                                             // 0x0051899b    d9e0
                         fld                st(0)                                         // 0x0051899d    d9c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0051899f    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005189a3    d95c2430
                         fld                st(0)                                         // 0x005189a7    d9c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005189a9    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005189ad    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x005189b1    d84c2414
                         {disp32} fadd      dword ptr [data_bytes + 0x3002d8]             // 0x005189b5    d805d862cc00
                         fstp               dword ptr [esp]                               // 0x005189bb    d91c24
                         push               ecx                                           // 0x005189be    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005189bf    d9442438
                         {disp32} fadd      dword ptr [data_bytes + 0x3002d4]             // 0x005189c3    d805d462cc00
                         fstp               dword ptr [esp]                               // 0x005189c9    d91c24
                         push               ecx                                           // 0x005189cc    51
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005189cd    d9442438
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x005189d1    8d4c242c
                         {disp32} fadd      dword ptr [data_bytes + 0x3002d0]             // 0x005189d5    d805d062cc00
                         fstp               dword ptr [esp]                               // 0x005189db    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x005189de    e81d9df2ff
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005189e3    d9442420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005189e7    8b442420
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005189eb    d81d98a38a00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005189f1    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005189f5    8b542428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x005189f9    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x005189fd    894c2430
                         fnstsw             ax                                            // 0x00518a01    dfe0
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00518a03    89542434
                         test               ah, 0x40                                      // 0x00518a07    f6c440
                         {disp8} je         _jmp_addr_0x00518a2e                          // 0x00518a0a    7422
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00518a0c    d9442424
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00518a10    d81d98a38a00
                         fnstsw             ax                                            // 0x00518a16    dfe0
                         test               ah, 0x40                                      // 0x00518a18    f6c440
                         {disp8} je         _jmp_addr_0x00518a2e                          // 0x00518a1b    7411
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00518a1d    d9442428
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00518a21    d81d98a38a00
                         fnstsw             ax                                            // 0x00518a27    dfe0
                         test               ah, 0x40                                      // 0x00518a29    f6c440
                         {disp8} jne        _jmp_addr_0x00518a6c                          // 0x00518a2c    753e
_jmp_addr_0x00518a2e:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x00518a2e    d9442428
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00518a32    d84c2428
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00518a36    d9442424
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x00518a3a    d84c2424
                         faddp              st(1), st                                     // 0x00518a3e    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00518a40    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x00518a44    d84c2420
                         faddp              st(1), st                                     // 0x00518a48    dec1
                         fsqrt                                                            // 0x00518a4a    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00518a4c    d83d90a38a00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00518a52    d9442420
                         fmul               st, st(1)                                     // 0x00518a56    d8c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00518a58    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00518a5c    d9442424
                         fmul               st, st(1)                                     // 0x00518a60    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00518a62    d95c2430
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00518a66    d84c2428
                         {disp8} jmp        _jmp_addr_0x00518a70                          // 0x00518a6a    eb04
_jmp_addr_0x00518a6c:    {disp8} fld        dword ptr [esp + 0x34]                        // 0x00518a6c    d9442434
_jmp_addr_0x00518a70:    {disp8} fld        dword ptr [esp + 0x30]                        // 0x00518a70    d9442430
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00518a74    8b54242c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00518a78    d84c2410
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x00518a7c    8954244c
                         fld                st(1)                                         // 0x00518a80    d9c1
                         {disp8} mov        dword ptr [esp + 0x70], 0x00000000            // 0x00518a82    c744247000000000
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00518a8a    d84c240c
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x00518a8e    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000            // 0x00518a96    c744246800000000
                         fsubp              st(1), st                                     // 0x00518a9e    dee9
                         fld                st(1)                                         // 0x00518aa0    d9c1
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00518aa2    d84c2408
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00518aa6    d944242c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00518aaa    d84c2410
                         fsubp              st(1), st                                     // 0x00518aae    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00518ab0    d95c2424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00518ab4    8b442424
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00518ab8    d944242c
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x00518abc    89442450
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00518ac0    d84c240c
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00518ac4    8b442430
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00518ac8    d9442430
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x00518acc    89442458
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00518ad0    d84c2408
                         fsubp              st(1), st                                     // 0x00518ad4    dee9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00518ad6    d95c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00518ada    8b4c2428
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x00518ade    894c245c
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00518ae2    d95c2444
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x00518ae6    8d4c2444
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x00518aea    d9442408
                         fchs                                                             // 0x00518aee    d9e0
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00518af0    d95c2448
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00518af4    d944240c
                         fchs                                                             // 0x00518af8    d9e0
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x00518afa    d95c2454
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518afe    d9442410
                         fchs                                                             // 0x00518b02    d9e0
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x00518b04    d95c2460
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x00518b08    d95c2464
                         call               _jmp_addr_0x007fb3f0                          // 0x00518b0c    e8df282e00
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00518b11    8b4f40
                         {disp8} lea        edx, dword ptr [esp + 0x44]                   // 0x00518b14    8d542444
                         add                ecx, 0x14                                     // 0x00518b18    83c114
                         call               _jmp_addr_0x007faff0                          // 0x00518b1b    e8d0242e00
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x00518b20    8b4740
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x00518b23    8b4844
                         push               ecx                                           // 0x00518b26    51
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                   // 0x00518b27    8d4814
                         call               _jmp_addr_0x00518b90                          // 0x00518b2a    e861000000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00518b2f    8b4f40
                         mov                edx, dword ptr [ecx]                          // 0x00518b32    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x00518b34    ff92f8000000
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00518b3a    8b4818
                         add                eax, 0x18                                     // 0x00518b3d    83c018
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00518b40    894c2438
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00518b44    8b5004
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00518b47    8b4f40
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00518b4a    8954243c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00518b4e    8b4008
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x00518b51    8d542438
                         add                ecx, 0x14                                     // 0x00518b55    83c114
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00518b58    89442440
                         call               _jmp_addr_0x00518bf0                          // 0x00518b5c    e88f000000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00518b61    8d4c2438
                         push               ecx                                           // 0x00518b65    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x00518b66    8d542430
                         push               edx                                           // 0x00518b6a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00518b6b    8d4c241c
                         call               _jmp_addr_0x0044cf90                          // 0x00518b6f    e81c44f3ff
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x00518b74    8b4f40
                         mov                edx, dword ptr [eax]                          // 0x00518b77    8b10
                         add                ecx, 0x38                                     // 0x00518b79    83c138
                         mov                dword ptr [ecx], edx                          // 0x00518b7c    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00518b7e    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00518b81    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00518b84    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00518b87    894108
_jmp_addr_0x00518b8a:    pop                edi                                           // 0x00518b8a    5f
                         add                esp, 0x70                                     // 0x00518b8b    83c470
                         ret                                                              // 0x00518b8e    c3
                         nop                                                              // 0x00518b8f    90
_jmp_addr_0x00518b90:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518b90    d9442404
                         fmul               dword ptr [ecx]                               // 0x00518b94    d809
                         fstp               dword ptr [ecx]                               // 0x00518b96    d919
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518b98    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00518b9c    d84904
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x00518b9f    d95904
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518ba2    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00518ba6    d84908
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x00518ba9    d95908
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bac    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x00518bb0    d8490c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x00518bb3    d9590c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bb6    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x00518bba    d84910
                         {disp8} fstp       dword ptr [ecx + 0x10]                        // 0x00518bbd    d95910
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bc0    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00518bc4    d84914
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x00518bc7    d95914
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bca    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00518bce    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x00518bd1    d95918
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bd4    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00518bd8    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x00518bdb    d9591c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00518bde    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00518be2    d84920
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x00518be5    d95920
                         ret                0x0004                                        // 0x00518be8    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00518beb    e8898ceeff
_jmp_addr_0x00518bf0:    fld                dword ptr [edx]                               // 0x00518bf0    d902
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x00518bf2    d94204
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x00518bf5    d94208
                         fld                st(0)                                         // 0x00518bf8    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00518bfa    d84918
                         fld                st(2)                                         // 0x00518bfd    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x00518bff    d8490c
                         faddp              st(1), st                                     // 0x00518c02    dec1
                         fld                st(3)                                         // 0x00518c04    d9c3
                         fmul               dword ptr [ecx]                               // 0x00518c06    d809
                         faddp              st(1), st                                     // 0x00518c08    dec1
                         fstp               dword ptr [edx]                               // 0x00518c0a    d91a
                         fld                st(0)                                         // 0x00518c0c    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00518c0e    d8491c
                         fld                st(2)                                         // 0x00518c11    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x00518c13    d84910
                         faddp              st(1), st                                     // 0x00518c16    dec1
                         fld                st(3)                                         // 0x00518c18    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00518c1a    d84904
                         faddp              st(1), st                                     // 0x00518c1d    dec1
                         {disp8} fstp       dword ptr [edx + 0x04]                        // 0x00518c1f    d95a04
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00518c22    d84920
                         fxch               st(1)                                         // 0x00518c25    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x00518c27    d84914
                         faddp              st(1), st                                     // 0x00518c2a    dec1
                         fxch               st(1)                                         // 0x00518c2c    d9c9
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00518c2e    d84908
                         faddp              st(1), st                                     // 0x00518c31    dec1
                         {disp8} fstp       dword ptr [edx + 0x08]                        // 0x00518c33    d95a08
                         ret                                                              // 0x00518c36    c3
                         nop                                                              // 0x00518c37    90
                         nop                                                              // 0x00518c38    90
                         nop                                                              // 0x00518c39    90
                         nop                                                              // 0x00518c3a    90
                         nop                                                              // 0x00518c3b    90
                         nop                                                              // 0x00518c3c    90
                         nop                                                              // 0x00518c3d    90
                         nop                                                              // 0x00518c3e    90
                         nop                                                              // 0x00518c3f    90
                         ret                                                              // 0x00518c40    c3
                         nop                                                              // 0x00518c41    90
                         nop                                                              // 0x00518c42    90
                         nop                                                              // 0x00518c43    90
                         nop                                                              // 0x00518c44    90
                         nop                                                              // 0x00518c45    90
                         nop                                                              // 0x00518c46    90
                         nop                                                              // 0x00518c47    90
                         nop                                                              // 0x00518c48    90
                         nop                                                              // 0x00518c49    90
                         nop                                                              // 0x00518c4a    90
                         nop                                                              // 0x00518c4b    90
                         nop                                                              // 0x00518c4c    90
                         nop                                                              // 0x00518c4d    90
                         nop                                                              // 0x00518c4e    90
                         nop                                                              // 0x00518c4f    90
?DrawOutOfMap@OneOffSpellSeed@@UAEX_N@Z:
                         sub                esp, 0x60                                     // 0x00518c50    83ec60
                         push               esi                                           // 0x00518c53    56
                         mov.s              esi, ecx                                      // 0x00518c54    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00518c56    8b4640
                         test               eax, eax                                      // 0x00518c59    85c0
                         push               edi                                           // 0x00518c5b    57
                         mov                edi, 0x00000040                               // 0x00518c5c    bf40000000
                         {disp8} je         _jmp_addr_0x00518c66                          // 0x00518c61    7403
                         or                 dword ptr [eax + 8], edi                      // 0x00518c63    097808
_jmp_addr_0x00518c66:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00518c66    8b4670
                         test               eax, eax                                      // 0x00518c69    85c0
                         {disp32} je        _jmp_addr_0x00518e7c                          // 0x00518c6b    0f840b020000
                         push               ebx                                           // 0x00518c71    53
                         mov.s              ecx, esi                                      // 0x00518c72    8bce
                         call               _jmp_addr_0x0072a570                          // 0x00518c74    e8f7182100
                         mov.s              ecx, esi                                      // 0x00518c79    8bce
                         call               _jmp_addr_0x00518720                          // 0x00518c7b    e8a0faffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518c80    8b4e40
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                   // 0x00518c83    8b4138
                         {disp8} mov        edx, dword ptr [ecx + 0x3c]                   // 0x00518c86    8b513c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00518c89    89442424
                         {disp8} mov        eax, dword ptr [ecx + 0x40]                   // 0x00518c8d    8b4140
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00518c90    89542428
                         mov                edx, dword ptr [ecx]                          // 0x00518c94    8b11
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00518c96    8944242c
                         call               dword ptr [edx + 0xf8]                        // 0x00518c9a    ff92f8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518ca0    8b4e40
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x00518ca3    d94120
                         add                ecx, 0x14                                     // 0x00518ca6    83c114
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00518ca9    d8481c
                         add                eax, 0x18                                     // 0x00518cac    83c018
                         {disp8} fld        dword ptr [ecx + 0x18]                        // 0x00518caf    d94118
                         push               ecx                                           // 0x00518cb2    51
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00518cb3    d84808
                         faddp              st(1), st                                     // 0x00518cb6    dec1
                         fld                dword ptr [eax]                               // 0x00518cb8    d900
                         fmul               dword ptr [ecx]                               // 0x00518cba    d809
                         faddp              st(1), st                                     // 0x00518cbc    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x00518cbe    d84124
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00518cc1    d95c241c
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x00518cc5    d94110
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00518cc8    d84804
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x00518ccb    d94104
                         fmul               dword ptr [eax]                               // 0x00518cce    d808
                         faddp              st(1), st                                     // 0x00518cd0    dec1
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x00518cd2    d9411c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00518cd5    d84808
                         faddp              st(1), st                                     // 0x00518cd8    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x00518cda    d84128
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00518cdd    d95c2420
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x00518ce1    d94114
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00518ce4    d84804
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00518ce7    d94108
                         fmul               dword ptr [eax]                               // 0x00518cea    d808
                         faddp              st(1), st                                     // 0x00518cec    dec1
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x00518cee    d94120
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00518cf1    d84808
                         faddp              st(1), st                                     // 0x00518cf4    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x00518cf6    d8412c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00518cf9    d95c2424
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x00518cfd    d905b81dea00
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00518d03    d864241c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00518d07    d95c2410
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdbc]             // 0x00518d0b    d905bc1dea00
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x00518d11    d8642420
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00518d15    d95c2414
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc0]             // 0x00518d19    d905c01dea00
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00518d1f    d8642424
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00518d23    d9542418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00518d27    d9442414
                         fld                st(0)                                         // 0x00518d2b    d9c0
                         fmul               st, st(1)                                     // 0x00518d2d    d8c9
                         fld                st(2)                                         // 0x00518d2f    d9c2
                         fmul               st, st(3)                                     // 0x00518d31    d8cb
                         faddp              st(1), st                                     // 0x00518d33    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518d35    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00518d39    d84c2410
                         faddp              st(1), st                                     // 0x00518d3d    dec1
                         fstp               dword ptr [esp]                               // 0x00518d3f    d91c24
                         fstp               st(0)                                         // 0x00518d42    ddd8
                         fstp               st(0)                                         // 0x00518d44    ddd8
                         call               _jmp_addr_0x00841170                          // 0x00518d46    e825843200
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518d4b    d9442410
                         add                esp, 0x04                                     // 0x00518d4f    83c404
                         fmul               st, st(1)                                     // 0x00518d52    d8c9
                         mov                eax, dword ptr [esi]                          // 0x00518d54    8b06
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00518d56    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518d5a    d9442410
                         mov.s              ecx, esi                                      // 0x00518d5e    8bce
                         fmul               st, st(1)                                     // 0x00518d60    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00518d62    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00518d66    d9442414
                         fmul               st, st(1)                                     // 0x00518d6a    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00518d6c    d95c2414
                         fstp               st(0)                                         // 0x00518d70    ddd8
                         call               dword ptr [eax + 0x60]                        // 0x00518d72    ff5060
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00518d75    d944240c
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518d79    8b4e40
                         fmul               st, st(1)                                     // 0x00518d7c    d8c9
                         add                ecx, 0x38                                     // 0x00518d7e    83c138
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00518d81    d95c2430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518d85    d9442410
                         fmul               st, st(1)                                     // 0x00518d89    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00518d8b    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00518d8f    d84c2414
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00518d93    d9442430
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00518d97    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00518d9b    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00518d9f    8b542418
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00518da3    d9442434
                         mov                dword ptr [ecx], edx                          // 0x00518da7    8911
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00518da9    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00518dad    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00518db1    8b44241c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00518db5    894104
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00518db8    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00518dbc    d95c2420
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00518dc0    8b542420
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00518dc4    895108
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00518dc7    8b4640
                         or                 dword ptr [eax + 8], edi                      // 0x00518dca    097808
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518dcd    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00518dd0    8b01
                         mov                edx, 0x00000001                               // 0x00518dd2    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x00518dd7    ff5048
                         {disp32} mov       edx, dword ptr [data_bytes + 0x222e8c]        // 0x00518dda    8b158c8ebe00
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x00518de0    8b7e40
                         and                edx, 0x000000ff                               // 0x00518de3    81e2ff000000
                         shl                edx, 0x18                                     // 0x00518de9    c1e218
                         push               0x0                                           // 0x00518dec    6a00
                         or                 edx, 0xffffff                                 // 0x00518dee    81caffffff00
                         mov.s              ecx, edi                                      // 0x00518df4    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x00518df6    e8c5302f00
                         {disp8} mov        ebx, dword ptr [esp + 0x70]                   // 0x00518dfb    8b5c2470
                         mov.s              cl, bl                                        // 0x00518dff    8acb
                         neg                cl                                            // 0x00518e01    f6d9
                         sbb.s              ecx, ecx                                      // 0x00518e03    1bc9
                         and.s              ecx, esi                                      // 0x00518e05    23ce
                         mov.s              edx, ecx                                      // 0x00518e07    8bd1
                         mov.s              ecx, edi                                      // 0x00518e09    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x00518e0b    e8c0271200
                         {disp8} mov        edx, dword ptr [esi + 0x40]                   // 0x00518e10    8b5640
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00518e13    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00518e17    8b4c2428
                         add                edx, 0x38                                     // 0x00518e1b    83c238
                         mov                dword ptr [edx], eax                          // 0x00518e1e    8902
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00518e20    8b44242c
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00518e24    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00518e27    894208
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00518e2a    8b4640
                         and                dword ptr [eax + 0x08], 0xffffffbf            // 0x00518e2d    836008bf
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00518e31    a1f01aea00
                         test               eax, eax                                      // 0x00518e36    85c0
                         mov.s              edi, eax                                      // 0x00518e38    8bf8
                         {disp8} je         _jmp_addr_0x00518e75                          // 0x00518e3a    7439
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x00518e3c    8d4c2470
                         push               ecx                                           // 0x00518e40    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00518e41    8d542440
                         push               edx                                           // 0x00518e45    52
                         mov.s              ecx, esi                                      // 0x00518e46    8bce
                         call               _jmp_addr_0x0072a840                          // 0x00518e48    e8f3192100
                         {disp8} mov        eax, dword ptr [esp + 0x70]                   // 0x00518e4d    8b442470
                         push               eax                                           // 0x00518e51    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00518e52    8d4c2440
                         push               ecx                                           // 0x00518e56    51
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00518e57    8b4e70
                         call               _jmp_addr_0x00727630                          // 0x00518e5a    e8d1e72000
                         {disp8} mov        edx, dword ptr [esi + 0x40]                   // 0x00518e5f    8b5640
                         {disp8} mov        eax, dword ptr [edx + 0x4c]                   // 0x00518e62    8b424c
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00518e65    8b4e70
                         shr                eax, 0x18                                     // 0x00518e68    c1e818
                         push               eax                                           // 0x00518e6b    50
                         push               ebx                                           // 0x00518e6c    53
                         push               0x0                                           // 0x00518e6d    6a00
                         push               esi                                           // 0x00518e6f    56
                         call               _jmp_addr_0x00519ad0                          // 0x00518e70    e85b0c0000
_jmp_addr_0x00518e75:    {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], edi        // 0x00518e75    893df01aea00
                         pop                ebx                                           // 0x00518e7b    5b
_jmp_addr_0x00518e7c:    {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x00518e7c    8b7640
                         test               esi, esi                                      // 0x00518e7f    85f6
                         {disp8} je         _jmp_addr_0x00518e87                          // 0x00518e81    7404
                         and                dword ptr [esi + 0x08], 0xffffffbf            // 0x00518e83    836608bf
_jmp_addr_0x00518e87:    pop                edi                                           // 0x00518e87    5f
                         pop                esi                                           // 0x00518e88    5e
                         add                esp, 0x60                                     // 0x00518e89    83c460
                         ret                0x0004                                        // 0x00518e8c    c20400
                         nop                                                              // 0x00518e8f    90
?Draw@OneOffSpellSeed@@UAEXXZ:
                         sub                esp, 0x64                                     // 0x00518e90    83ec64
                         push               esi                                           // 0x00518e93    56
                         mov.s              esi, ecx                                      // 0x00518e94    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00518e96    8b4670
                         test               eax, eax                                      // 0x00518e99    85c0
                         {disp32} je        _jmp_addr_0x00519092                          // 0x00518e9b    0f84f1010000
                         push               edi                                           // 0x00518ea1    57
                         call               _jmp_addr_0x0072a570                          // 0x00518ea2    e8c9162100
                         mov.s              ecx, esi                                      // 0x00518ea7    8bce
                         call               _jmp_addr_0x00518720                          // 0x00518ea9    e872f8ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518eae    8b4e40
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                   // 0x00518eb1    8b4138
                         {disp8} mov        edx, dword ptr [ecx + 0x3c]                   // 0x00518eb4    8b513c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00518eb7    89442424
                         {disp8} mov        eax, dword ptr [ecx + 0x40]                   // 0x00518ebb    8b4140
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00518ebe    89542428
                         mov                edx, dword ptr [ecx]                          // 0x00518ec2    8b11
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00518ec4    8944242c
                         call               dword ptr [edx + 0xf8]                        // 0x00518ec8    ff92f8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518ece    8b4e40
                         {disp8} fld        dword ptr [ecx + 0x2c]                        // 0x00518ed1    d9412c
                         add                ecx, 0x14                                     // 0x00518ed4    83c114
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00518ed7    d84820
                         add                eax, 0x18                                     // 0x00518eda    83c018
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x00518edd    d9410c
                         push               ecx                                           // 0x00518ee0    51
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00518ee1    d84804
                         faddp              st(1), st                                     // 0x00518ee4    dec1
                         fld                dword ptr [eax]                               // 0x00518ee6    d900
                         fmul               dword ptr [ecx]                               // 0x00518ee8    d809
                         faddp              st(1), st                                     // 0x00518eea    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x00518eec    d84124
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00518eef    d95c241c
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x00518ef3    d9411c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00518ef6    d84808
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x00518ef9    d94104
                         fmul               dword ptr [eax]                               // 0x00518efc    d808
                         faddp              st(1), st                                     // 0x00518efe    dec1
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x00518f00    d94110
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00518f03    d84804
                         faddp              st(1), st                                     // 0x00518f06    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x00518f08    d84128
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00518f0b    d95c2420
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x00518f0f    d94120
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00518f12    d84808
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00518f15    d94108
                         fmul               dword ptr [eax]                               // 0x00518f18    d808
                         faddp              st(1), st                                     // 0x00518f1a    dec1
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x00518f1c    d94114
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00518f1f    d84804
                         faddp              st(1), st                                     // 0x00518f22    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x00518f24    d8412c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00518f27    d95c2424
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x00518f2b    d905b81dea00
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00518f31    d864241c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00518f35    d95c2410
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdbc]             // 0x00518f39    d905bc1dea00
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x00518f3f    d8642420
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00518f43    d95c2414
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc0]             // 0x00518f47    d905c01dea00
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00518f4d    d8642424
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00518f51    d9542418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00518f55    d9442414
                         fld                st(0)                                         // 0x00518f59    d9c0
                         fmul               st, st(1)                                     // 0x00518f5b    d8c9
                         fld                st(2)                                         // 0x00518f5d    d9c2
                         fmul               st, st(3)                                     // 0x00518f5f    d8cb
                         faddp              st(1), st                                     // 0x00518f61    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518f63    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00518f67    d84c2410
                         faddp              st(1), st                                     // 0x00518f6b    dec1
                         fstp               dword ptr [esp]                               // 0x00518f6d    d91c24
                         fstp               st(0)                                         // 0x00518f70    ddd8
                         fstp               st(0)                                         // 0x00518f72    ddd8
                         call               _jmp_addr_0x00841170                          // 0x00518f74    e8f7813200
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518f79    d9442410
                         add                esp, 0x04                                     // 0x00518f7d    83c404
                         fmul               st, st(1)                                     // 0x00518f80    d8c9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00518f82    d95c240c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518f86    d9442410
                         mov                eax, dword ptr [esi]                          // 0x00518f8a    8b06
                         fmul               st, st(1)                                     // 0x00518f8c    d8c9
                         mov.s              ecx, esi                                      // 0x00518f8e    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00518f90    d95c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00518f94    d9442414
                         fmul               st, st(1)                                     // 0x00518f98    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00518f9a    d95c2414
                         fstp               st(0)                                         // 0x00518f9e    ddd8
                         call               dword ptr [eax + 0x60]                        // 0x00518fa0    ff5060
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00518fa3    d944240c
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518fa7    8b4e40
                         fmul               st, st(1)                                     // 0x00518faa    d8c9
                         add                ecx, 0x38                                     // 0x00518fac    83c138
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00518faf    d95c2430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00518fb3    d9442410
                         fmul               st, st(1)                                     // 0x00518fb7    d8c9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00518fb9    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00518fbd    d84c2414
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00518fc1    d9442430
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00518fc5    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00518fc9    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00518fcd    8b542418
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00518fd1    d9442434
                         mov                dword ptr [ecx], edx                          // 0x00518fd5    8911
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00518fd7    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00518fdb    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00518fdf    8b44241c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00518fe3    894104
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00518fe6    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00518fea    d95c2420
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00518fee    8b542420
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00518ff2    895108
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00518ff5    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00518ff8    8b01
                         mov                edx, 0x00000001                               // 0x00518ffa    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x00518fff    ff5048
                         {disp32} mov       edx, dword ptr [data_bytes + 0x222e8c]        // 0x00519002    8b158c8ebe00
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x00519008    8b7e40
                         and                edx, 0x000000ff                               // 0x0051900b    81e2ff000000
                         shl                edx, 0x18                                     // 0x00519011    c1e218
                         push               0x0                                           // 0x00519014    6a00
                         or                 edx, 0xffffff                                 // 0x00519016    81caffffff00
                         mov.s              ecx, edi                                      // 0x0051901c    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x0051901e    e89d2e2f00
                         mov.s              edx, esi                                      // 0x00519023    8bd6
                         mov.s              ecx, edi                                      // 0x00519025    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x00519027    e8a4251200
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0051902c    8b4e40
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0051902f    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00519033    8b442428
                         add                ecx, 0x38                                     // 0x00519037    83c138
                         mov                dword ptr [ecx], edx                          // 0x0051903a    8911
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0051903c    8b54242c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00519040    894104
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00519043    895108
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00519046    a1f01aea00
                         test               eax, eax                                      // 0x0051904b    85c0
                         mov.s              edi, eax                                      // 0x0051904d    8bf8
                         {disp8} je         _jmp_addr_0x0051908b                          // 0x0051904f    743a
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00519051    8d442408
                         push               eax                                           // 0x00519055    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00519056    8d4c2440
                         push               ecx                                           // 0x0051905a    51
                         mov.s              ecx, esi                                      // 0x0051905b    8bce
                         call               _jmp_addr_0x0072a840                          // 0x0051905d    e8de172100
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00519062    8b542408
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00519066    8b4e70
                         push               edx                                           // 0x00519069    52
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x0051906a    8d442440
                         push               eax                                           // 0x0051906e    50
                         call               _jmp_addr_0x00727630                          // 0x0051906f    e8bce52000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00519074    8b4e40
                         {disp8} mov        edx, dword ptr [ecx + 0x4c]                   // 0x00519077    8b514c
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x0051907a    8b4e70
                         shr                edx, 0x18                                     // 0x0051907d    c1ea18
                         push               edx                                           // 0x00519080    52
                         push               0x1                                           // 0x00519081    6a01
                         push               0x0                                           // 0x00519083    6a00
                         push               esi                                           // 0x00519085    56
                         call               _jmp_addr_0x00519ad0                          // 0x00519086    e8450a0000
_jmp_addr_0x0051908b:    {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], edi        // 0x0051908b    893df01aea00
                         pop                edi                                           // 0x00519091    5f
_jmp_addr_0x00519092:    pop                esi                                           // 0x00519092    5e
                         add                esp, 0x64                                     // 0x00519093    83c464
                         ret                                                              // 0x00519096    c3
                         nop                                                              // 0x00519097    90
                         nop                                                              // 0x00519098    90
                         nop                                                              // 0x00519099    90
                         nop                                                              // 0x0051909a    90
                         nop                                                              // 0x0051909b    90
                         nop                                                              // 0x0051909c    90
                         nop                                                              // 0x0051909d    90
                         nop                                                              // 0x0051909e    90
                         nop                                                              // 0x0051909f    90
?DrawOutOfMap@SpellSeed@@UAEX_N@Z:
                         push               esi                                           // 0x005190a0    56
                         mov.s              esi, ecx                                      // 0x005190a1    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x00000090]               // 0x005190a3    8a8690000000
                         test               al, al                                        // 0x005190a9    84c0
                         {disp8} je         _jmp_addr_0x005190db                          // 0x005190ab    742e
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x005190ad    8b4640
                         test               eax, eax                                      // 0x005190b0    85c0
                         {disp8} je         _jmp_addr_0x005190b8                          // 0x005190b2    7404
                         or                 dword ptr [eax + 8], 0x40                     // 0x005190b4    83480840
_jmp_addr_0x005190b8:    mov                eax, dword ptr [esi]                          // 0x005190b8    8b06
                         mov.s              ecx, esi                                      // 0x005190ba    8bce
                         call               dword ptr [eax + 0x618]                       // 0x005190bc    ff9018060000
                         cmp                al, 0x01                                      // 0x005190c2    3c01
                         {disp8} jne        _jmp_addr_0x005190d0                          // 0x005190c4    750a
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005190c6    8b4e40
                         xor.s              edx, edx                                      // 0x005190c9    33d2
                         call               _jmp_addr_0x0063b5d0                          // 0x005190cb    e800251200
_jmp_addr_0x005190d0:    {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x005190d0    8b7640
                         test               esi, esi                                      // 0x005190d3    85f6
                         {disp8} je         _jmp_addr_0x005190db                          // 0x005190d5    7404
                         and                dword ptr [esi + 0x08], 0xffffffbf            // 0x005190d7    836608bf
_jmp_addr_0x005190db:    pop                esi                                           // 0x005190db    5e
                         ret                0x0004                                        // 0x005190dc    c20400
                         nop                                                              // 0x005190df    90
?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z:
                         sub                esp, 0x34                                     // 0x005190e0    83ec34
                         push               esi                                           // 0x005190e3    56
                         mov.s              esi, ecx                                      // 0x005190e4    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005190e6    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005190ec    e85fc70300
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x005190f1    8b4c243c
                         cmp                ecx, dword ptr [eax + 0x0000039c]             // 0x005190f5    3b889c030000
                         {disp8} jne        _jmp_addr_0x0051911a                          // 0x005190fb    751d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005190fd    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00519103    e848c70300
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x00519108    8b88a0030000
                         call               _jmp_addr_0x0046df00                          // 0x0051910e    e8ed4df5ff
                         pop                esi                                           // 0x00519113    5e
                         add                esp, 0x34                                     // 0x00519114    83c434
                         ret                0x0004                                        // 0x00519117    c20400
_jmp_addr_0x0051911a:    {disp32} lea       eax, dword ptr [ecx + 0x000000c8]             // 0x0051911a    8d81c8000000
                         mov                edx, dword ptr [eax]                          // 0x00519120    8b10
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00519122    89542408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00519126    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00519129    8b4008
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0051912c    89442410
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x00519130    8b4640
                         test               eax, eax                                      // 0x00519133    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00519135    8954240c
                         {disp8} je         _jmp_addr_0x0051913f                          // 0x00519139    7404
                         or                 dword ptr [eax + 8], 0x40                     // 0x0051913b    83480840
_jmp_addr_0x0051913f:    {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0051913f    8b4640
                         test               eax, eax                                      // 0x00519142    85c0
                         push               ebx                                           // 0x00519144    53
                         push               edi                                           // 0x00519145    57
                         {disp32} je        _jmp_addr_0x00519303                          // 0x00519146    0f84b7010000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0051914c    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00205d48]             // 0x00519152    8b82485d2000
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e0]             // 0x00519158    8b91e0000000
                         add.s              eax, edx                                      // 0x0051915e    03c2
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e4]             // 0x00519160    8b91e4000000
                         test               edx, edx                                      // 0x00519166    85d2
                         {disp32} mov       dword ptr [ecx + 0x000000e0], eax             // 0x00519168    8981e0000000
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0051916e    8954240c
                         {disp8} jne        _jmp_addr_0x005191d4                          // 0x00519172    7560
                         {disp8} mov        eax, dword ptr [esi + 0x50]                   // 0x00519174    8b4650
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00519177    8d4c2410
                         push               ecx                                           // 0x0051917b    51
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0051917c    8d4c2438
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00519180    89442410
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x00519184    e8d79f0e00
                         {disp8} mov        ebx, dword ptr [esi + 0x40]                   // 0x00519189    8b5e40
                         mov.s              edi, eax                                      // 0x0051918c    8bf8
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0051918e    8b5708
                         mov.s              ecx, edi                                      // 0x00519191    8bcf
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00519193    89542444
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00519197    e8f49e2e00
                         {disp8} fadd       dword ptr [esp + 0x44]                        // 0x0051919c    d8442444
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005191a0    8b44240c
                         push               eax                                           // 0x005191a4    50
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005191a5    d95c2424
                         push               0x0                                           // 0x005191a9    6a00
                         fild               dword ptr [edi]                               // 0x005191ab    db07
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x005191ad    8d542424
                         mov.s              ecx, ebx                                      // 0x005191b1    8bcb
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005191b3    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005191b9    d95c2424
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x005191bd    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005191c0    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005191c6    d95c242c
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x005191ca    e8719ff0ff
                         {disp32} jmp       _jmp_addr_0x005192f7                          // 0x005191cf    e923010000
_jmp_addr_0x005191d4:    cmp.s              eax, edx                                      // 0x005191d4    3bc2
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x005191d6    89442444
                         {disp8} jl         _jmp_addr_0x005191e0                          // 0x005191da    7c04
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x005191dc    89542444
_jmp_addr_0x005191e0:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005191e0    d9442410
                         {disp8} mov        eax, dword ptr [esi + 0x50]                   // 0x005191e4    8b4650
                         {disp32} fsub      dword ptr [ecx + 0x000000d4]                  // 0x005191e7    d8a1d4000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x005191ed    d9442414
                         {disp32} fsub      dword ptr [ecx + 0x000000d8]                  // 0x005191f1    d8a1d8000000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005191f7    d95c2420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005191fb    d9442418
                         {disp32} fsub      dword ptr [ecx + 0x000000dc]                  // 0x005191ff    d8a1dc000000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00519205    d95c2424
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00519209    db442444
                         {disp8} fidiv      dword ptr [esp + 0x0c]                        // 0x0051920d    da74240c
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00519211    d95c2444
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00519215    d84c2444
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00519219    d9442420
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x0051921d    d84c2444
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00519221    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00519225    d9442424
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00519229    d84c2444
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0051922d    89442444
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00519231    d95c2430
                         {disp32} fadd      dword ptr [ecx + 0x000000d4]                  // 0x00519235    d881d4000000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051923b    d95c2434
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0051923f    d944242c
                         {disp32} fadd      dword ptr [ecx + 0x000000d8]                  // 0x00519243    d881d8000000
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00519249    d95c2438
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0051924d    d9442430
                         {disp32} fadd      dword ptr [ecx + 0x000000dc]                  // 0x00519251    d881dc000000
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x00519257    8d4c2434
                         push               ecx                                           // 0x0051925b    51
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0051925c    8d4c242c
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00519260    d95c2440
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x00519264    e8f79e0e00
                         {disp8} mov        ebx, dword ptr [esi + 0x40]                   // 0x00519269    8b5e40
                         mov.s              edi, eax                                      // 0x0051926c    8bf8
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0051926e    8b5708
                         mov.s              ecx, edi                                      // 0x00519271    8bcf
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00519273    8954240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00519277    e8149e2e00
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x0051927c    d844240c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00519280    d95c2420
                         fild               dword ptr [edi]                               // 0x00519284    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519286    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0051928c    d95c241c
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00519290    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519293    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00519299    d95c2424
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0051929d    d9442444
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005192a1    d81d90a38a00
                         fnstsw             ax                                            // 0x005192a7    dfe0
                         test               ah, 0x40                                      // 0x005192a9    f6c440
                         {disp8} jne        _jmp_addr_0x005192dd                          // 0x005192ac    752f
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x005192ae    8b442444
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x005192b2    8d7b14
                         push               eax                                           // 0x005192b5    50
                         mov.s              ecx, edi                                      // 0x005192b6    8bcf
                         call               _jmp_addr_0x00519320                          // 0x005192b8    e863000000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005192bd    d944241c
                         {disp8} fadd       dword ptr [edi + 0x24]                        // 0x005192c1    d84724
                         {disp8} fstp       dword ptr [edi + 0x24]                        // 0x005192c4    d95f24
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005192c7    d9442420
                         {disp8} fadd       dword ptr [edi + 0x28]                        // 0x005192cb    d84728
                         {disp8} fstp       dword ptr [edi + 0x28]                        // 0x005192ce    d95f28
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005192d1    d9442424
                         {disp8} fadd       dword ptr [edi + 0x2c]                        // 0x005192d5    d8472c
                         {disp8} fstp       dword ptr [edi + 0x2c]                        // 0x005192d8    d95f2c
                         {disp8} jmp        _jmp_addr_0x005192e9                          // 0x005192db    eb0c
_jmp_addr_0x005192dd:    {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005192dd    8d54241c
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                   // 0x005192e1    8d4b14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x005192e4    e847a2eeff
_jmp_addr_0x005192e9:    {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x005192e9    8b4c2444
                         {disp8} mov        dword ptr [ebx + 0x44], ecx                   // 0x005192ed    894b44
                         {disp8} mov        dword ptr [ebx + 0x48], 0x00000000            // 0x005192f0    c7434800000000
_jmp_addr_0x005192f7:    mov                edx, dword ptr [esi]                          // 0x005192f7    8b16
                         push               0x0                                           // 0x005192f9    6a00
                         mov.s              ecx, esi                                      // 0x005192fb    8bce
                         call               dword ptr [edx + 0x614]                       // 0x005192fd    ff9214060000
_jmp_addr_0x00519303:    {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x00519303    8b7640
                         test               esi, esi                                      // 0x00519306    85f6
                         pop                edi                                           // 0x00519308    5f
                         pop                ebx                                           // 0x00519309    5b
                         {disp8} je         _jmp_addr_0x00519310                          // 0x0051930a    7404
                         and                dword ptr [esi + 0x08], 0xffffffbf            // 0x0051930c    836608bf
_jmp_addr_0x00519310:    pop                esi                                           // 0x00519310    5e
                         add                esp, 0x34                                     // 0x00519311    83c434
                         ret                0x0004                                        // 0x00519314    c20400
                         nop                                                              // 0x00519317    90
                         nop                                                              // 0x00519318    90
                         nop                                                              // 0x00519319    90
                         nop                                                              // 0x0051931a    90
                         nop                                                              // 0x0051931b    90
                         nop                                                              // 0x0051931c    90
                         nop                                                              // 0x0051931d    90
                         nop                                                              // 0x0051931e    90
                         nop                                                              // 0x0051931f    90
_jmp_addr_0x00519320:    xor.s              eax, eax                                      // 0x00519320    33c0
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x00519322    89412c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x00519325    894128
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x00519328    894124
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x0051932b    89411c
                         {disp8} mov        dword ptr [ecx + 0x18], eax                   // 0x0051932e    894118
                         {disp8} mov        dword ptr [ecx + 0x14], eax                   // 0x00519331    894114
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x00519334    89410c
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00519337    894108
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0051933a    894104
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0051933d    8b442404
                         mov.s              edx, eax                                      // 0x00519341    8bd0
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00519343    894120
                         {disp8} mov        dword ptr [ecx + 0x10], edx                   // 0x00519346    895110
                         mov                dword ptr [ecx], eax                          // 0x00519349    8901
                         ret                0x0004                                        // 0x0051934b    c20400
                         nop                                                              // 0x0051934e    90
                         nop                                                              // 0x0051934f    90
?Draw@StoragePit@@UAEXXZ:
                         {disp32} jmp       ?Draw@Abode@@UAEXXZ                           // 0x00519350    e91bccffff
                         nop                                                              // 0x00519355    90
                         nop                                                              // 0x00519356    90
                         nop                                                              // 0x00519357    90
                         nop                                                              // 0x00519358    90
                         nop                                                              // 0x00519359    90
                         nop                                                              // 0x0051935a    90
                         nop                                                              // 0x0051935b    90
                         nop                                                              // 0x0051935c    90
                         nop                                                              // 0x0051935d    90
                         nop                                                              // 0x0051935e    90
                         nop                                                              // 0x0051935f    90
?Draw@WorshipTotem@@UAEXXZ:
                         push               ecx                                           // 0x00519360    51
                         push               esi                                           // 0x00519361    56
                         mov.s              esi, ecx                                      // 0x00519362    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00519364    8b06
                         push               edi                                           // 0x00519366    57
                         {disp8} mov        dword ptr [esp + 0x08], esi                   // 0x00519367    89742408
                         call               dword ptr [eax + 0x890]                       // 0x0051936b    ff9090080000
                         test               eax, eax                                      // 0x00519371    85c0
                         {disp8} je         _jmp_addr_0x005193c1                          // 0x00519373    744c
                         {disp8} mov        esi, dword ptr [esi + 0x40]                   // 0x00519375    8b7640
                         push               ebx                                           // 0x00519378    53
                         push               ebp                                           // 0x00519379    55
                         {disp8} lea        edi, dword ptr [esi + 0x50]                   // 0x0051937a    8d7e50
                         push               edi                                           // 0x0051937d    57
                         {disp8} lea        ebx, dword ptr [esi + 0x4c]                   // 0x0051937e    8d5e4c
                         {disp8} lea        ebp, dword ptr [esi + 0x38]                   // 0x00519381    8d6e38
                         push               ebx                                           // 0x00519384    53
                         push               ebp                                           // 0x00519385    55
                         call               _jmp_addr_0x00801c90                          // 0x00519386    e805892e00
                         mov                ecx, dword ptr [edi]                          // 0x0051938b    8b0f
                         push               ebx                                           // 0x0051938d    53
                         push               ecx                                           // 0x0051938e    51
                         push               ebp                                           // 0x0051938f    55
                         call               _jmp_addr_0x007feb30                          // 0x00519390    e89b572e00
                         mov                dword ptr [edi], eax                          // 0x00519395    8907
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00519397    8b7c2428
                         add                esp, 0x18                                     // 0x0051939b    83c418
                         mov.s              edx, edi                                      // 0x0051939e    8bd7
                         mov.s              ecx, esi                                      // 0x005193a0    8bce
                         call               _jmp_addr_0x0063b5d0                          // 0x005193a2    e829221200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x005193a7    a1f01aea00
                         test               eax, eax                                      // 0x005193ac    85c0
                         pop                ebp                                           // 0x005193ae    5d
                         pop                ebx                                           // 0x005193af    5b
                         {disp8} je         _jmp_addr_0x005193c1                          // 0x005193b0    740f
                         mov.s              ecx, edi                                      // 0x005193b2    8bcf
                         mov.s              esi, eax                                      // 0x005193b4    8bf0
                         call               _jmp_addr_0x00780ee0                          // 0x005193b6    e8257b2600
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], esi        // 0x005193bb    8935f01aea00
_jmp_addr_0x005193c1:    pop                edi                                           // 0x005193c1    5f
                         pop                esi                                           // 0x005193c2    5e
                         pop                ecx                                           // 0x005193c3    59
                         ret                                                              // 0x005193c4    c3
                         nop                                                              // 0x005193c5    90
                         nop                                                              // 0x005193c6    90
                         nop                                                              // 0x005193c7    90
                         nop                                                              // 0x005193c8    90
                         nop                                                              // 0x005193c9    90
                         nop                                                              // 0x005193ca    90
                         nop                                                              // 0x005193cb    90
                         nop                                                              // 0x005193cc    90
                         nop                                                              // 0x005193cd    90
                         nop                                                              // 0x005193ce    90
                         nop                                                              // 0x005193cf    90
?Draw@WorshipSite@@UAEXXZ:
                         sub                esp, 0x18                                     // 0x005193d0    83ec18
                         push               ebx                                           // 0x005193d3    53
                         mov.s              ebx, ecx                                      // 0x005193d4    8bd9
                         mov                eax, dword ptr [ebx]                          // 0x005193d6    8b03
                         push               edi                                           // 0x005193d8    57
                         call               dword ptr [eax + 0x890]                       // 0x005193d9    ff9090080000
                         test               eax, eax                                      // 0x005193df    85c0
                         {disp8} jne        _jmp_addr_0x005193f4                          // 0x005193e1    7511
                         {disp8} mov        ecx, dword ptr [ebx + 0x40]                   // 0x005193e3    8b4b40
                         push               ecx                                           // 0x005193e6    51
                         mov.s              ecx, ebx                                      // 0x005193e7    8bcb
                         call               _jmp_addr_0x00517f90                          // 0x005193e9    e8a2ebffff
                         pop                edi                                           // 0x005193ee    5f
                         pop                ebx                                           // 0x005193ef    5b
                         add                esp, 0x18                                     // 0x005193f0    83c418
                         ret                                                              // 0x005193f3    c3
_jmp_addr_0x005193f4:    {disp32} mov       ecx, dword ptr [ebx + 0x00000090]             // 0x005193f4    8b8b90000000
                         call               _jmp_addr_0x00719c10                          // 0x005193fa    e811082000
                         {disp8} mov        eax, dword ptr [ebx + 0x44]                   // 0x005193ff    8b4344
                         xor.s              edi, edi                                      // 0x00519402    33ff
                         cmp.s              eax, edi                                      // 0x00519404    3bc7
                         {disp8} je         _jmp_addr_0x00519415                          // 0x00519406    740d
                         mov.s              ecx, ebx                                      // 0x00519408    8bcb
                         call               _jmp_addr_0x00518050                          // 0x0051940a    e841ecffff
                         pop                edi                                           // 0x0051940f    5f
                         pop                ebx                                           // 0x00519410    5b
                         add                esp, 0x18                                     // 0x00519411    83c418
                         ret                                                              // 0x00519414    c3
_jmp_addr_0x00519415:    mov                edx, dword ptr [ebx]                          // 0x00519415    8b13
                         push               esi                                           // 0x00519417    56
                         mov.s              ecx, ebx                                      // 0x00519418    8bcb
                         call               dword ptr [edx + 0x120]                       // 0x0051941a    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00519420    d95c240c
                         mov                eax, dword ptr [ebx]                          // 0x00519424    8b03
                         mov.s              ecx, ebx                                      // 0x00519426    8bcb
                         call               dword ptr [eax + 0x508]                       // 0x00519428    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0051942e    d95c2410
                         {disp8} fild       dword ptr [ebx + 0x14]                        // 0x00519432    db4314
                         {disp8} mov        esi, dword ptr [ebx + 0x40]                   // 0x00519435    8b7340
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                   // 0x00519438    8d4b14
                         {disp8} lea        edx, dword ptr [esi + 0x50]                   // 0x0051943b    8d5650
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051943e    d80da4a38a00
                         push               edx                                           // 0x00519444    52
                         {disp8} lea        edx, dword ptr [esi + 0x4c]                   // 0x00519445    8d564c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00519448    d95c241c
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x0051944c    db4104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051944f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00519455    d95c2424
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x00519459    d94108
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0051945c    d95c2420
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                           // 0x00519460    e8db9e2e00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00519465    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00519469    d95c241c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0051946d    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00519471    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00519477    d944240c
                         fnstsw             ax                                            // 0x0051947b    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0051947d    d81d90a38a00
                         test               ah, 0x40                                      // 0x00519483    f6c440
                         fnstsw             ax                                            // 0x00519486    dfe0
                         {disp32} jne       _jmp_addr_0x005195dc                          // 0x00519488    0f854e010000
                         test               ah, 0x40                                      // 0x0051948e    f6c440
                         {disp32} jne       _jmp_addr_0x00519552                          // 0x00519491    0f85bb000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00519497    8b44240c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0051949b    d9442418
                         {disp8} mov        dword ptr [esi + 0x40], edi                   // 0x0051949f    897e40
                         {disp8} mov        dword ptr [esi + 0x3c], edi                   // 0x005194a2    897e3c
                         {disp8} mov        dword ptr [esi + 0x38], edi                   // 0x005194a5    897e38
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x005194a8    897e30
                         {disp8} mov        dword ptr [esi + 0x2c], edi                   // 0x005194ab    897e2c
                         {disp8} mov        dword ptr [esi + 0x28], edi                   // 0x005194ae    897e28
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x005194b1    897e20
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x005194b4    897e1c
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x005194b7    897e18
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x005194ba    894634
                         mov.s              ecx, eax                                      // 0x005194bd    8bc8
                         {disp8} mov        dword ptr [esi + 0x24], ecx                   // 0x005194bf    894e24
                         mov.s              edx, eax                                      // 0x005194c2    8bd0
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x005194c4    895614
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x005194c7    d84638
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x005194ca    d95e38
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005194cd    d944241c
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x005194d1    d8463c
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x005194d4    d95e3c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005194d7    d9442420
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x005194db    d84640
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x005194de    d95e40
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005194e1    d9442410
                         fcos                                                             // 0x005194e5    d9ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005194e7    d9442410
                         fsin                                                             // 0x005194eb    d9fe
                         fld                st(0)                                         // 0x005194ed    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x005194ef    d84e14
                         fld                st(2)                                         // 0x005194f2    d9c2
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x005194f4    d84e14
                         fld                st(2)                                         // 0x005194f7    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x005194f9    d84e2c
                         faddp              st(1), st                                     // 0x005194fc    dec1
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x005194fe    d95e14
                         fld                st(2)                                         // 0x00519501    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00519503    d84e2c
                         fsub               st, st(1)                                     // 0x00519506    d8e1
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x00519508    d95e2c
                         fstp               st(0)                                         // 0x0051950b    ddd8
                         fld                st(0)                                         // 0x0051950d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0051950f    d84e18
                         fld                st(1)                                         // 0x00519512    d9c1
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00519514    d84e30
                         fld                st(3)                                         // 0x00519517    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x00519519    d84e18
                         faddp              st(1), st                                     // 0x0051951c    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x0051951e    d95e18
                         fld                st(2)                                         // 0x00519521    d9c2
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x00519523    d84e30
                         fsub               st, st(1)                                     // 0x00519526    d8e1
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00519528    d95e30
                         fstp               st(0)                                         // 0x0051952b    ddd8
                         fld                st(0)                                         // 0x0051952d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0051952f    d84e1c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00519532    d95c2414
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00519536    d84e34
                         fld                st(1)                                         // 0x00519539    d9c1
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0051953b    d84e1c
                         faddp              st(1), st                                     // 0x0051953e    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00519540    d95e1c
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x00519543    d84e34
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00519546    d8642414
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x0051954a    d95e34
                         {disp32} jmp       _jmp_addr_0x0051961c                          // 0x0051954d    e9ca000000
_jmp_addr_0x00519552:    {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00519552    8d7e14
                         mov.s              ecx, edi                                      // 0x00519555    8bcf
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x00519557    e8a49feeff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0051955c    d9442410
                         fcos                                                             // 0x00519560    d9ff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00519562    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00519566    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0051956a    8b542420
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0051956e    894724
                         {disp8} mov        dword ptr [edi + 0x28], ecx                   // 0x00519571    894f28
                         {disp8} mov        dword ptr [edi + 0x2c], edx                   // 0x00519574    89572c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519577    d9442410
                         fsin                                                             // 0x0051957b    d9fe
                         fld                st(0)                                         // 0x0051957d    d9c0
                         fmul               dword ptr [edi]                               // 0x0051957f    d80f
                         fld                st(1)                                         // 0x00519581    d9c1
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00519583    d84f18
                         fld                st(3)                                         // 0x00519586    d9c3
                         fmul               dword ptr [edi]                               // 0x00519588    d80f
                         faddp              st(1), st                                     // 0x0051958a    dec1
                         fstp               dword ptr [edi]                               // 0x0051958c    d91f
                         fld                st(2)                                         // 0x0051958e    d9c2
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x00519590    d84f18
                         fsub               st, st(1)                                     // 0x00519593    d8e1
                         {disp8} fstp       dword ptr [edi + 0x18]                        // 0x00519595    d95f18
                         fstp               st(0)                                         // 0x00519598    ddd8
                         fld                st(0)                                         // 0x0051959a    d9c0
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x0051959c    d84f04
                         fld                st(1)                                         // 0x0051959f    d9c1
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x005195a1    d84f1c
                         fld                st(3)                                         // 0x005195a4    d9c3
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x005195a6    d84f04
                         faddp              st(1), st                                     // 0x005195a9    dec1
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x005195ab    d95f04
                         fld                st(2)                                         // 0x005195ae    d9c2
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x005195b0    d84f1c
                         fsub               st, st(1)                                     // 0x005195b3    d8e1
                         {disp8} fstp       dword ptr [edi + 0x1c]                        // 0x005195b5    d95f1c
                         fstp               st(0)                                         // 0x005195b8    ddd8
                         fld                st(0)                                         // 0x005195ba    d9c0
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x005195bc    d84f08
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005195bf    d95c2414
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x005195c3    d84f20
                         fld                st(1)                                         // 0x005195c6    d9c1
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x005195c8    d84f08
                         faddp              st(1), st                                     // 0x005195cb    dec1
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x005195cd    d95f08
                         {disp8} fmul       dword ptr [edi + 0x20]                        // 0x005195d0    d84f20
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005195d3    d8642414
                         {disp8} fstp       dword ptr [edi + 0x20]                        // 0x005195d7    d95f20
                         {disp8} jmp        _jmp_addr_0x0051961c                          // 0x005195da    eb40
_jmp_addr_0x005195dc:    test               ah, 0x40                                      // 0x005195dc    f6c440
                         {disp8} jne        _jmp_addr_0x00519610                          // 0x005195df    752f
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005195e1    8b44240c
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x005195e5    8d7e14
                         push               eax                                           // 0x005195e8    50
                         mov.s              ecx, edi                                      // 0x005195e9    8bcf
                         call               _jmp_addr_0x00519320                          // 0x005195eb    e830fdffff
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005195f0    d9442418
                         {disp8} fadd       dword ptr [edi + 0x24]                        // 0x005195f4    d84724
                         {disp8} fstp       dword ptr [edi + 0x24]                        // 0x005195f7    d95f24
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005195fa    d944241c
                         {disp8} fadd       dword ptr [edi + 0x28]                        // 0x005195fe    d84728
                         {disp8} fstp       dword ptr [edi + 0x28]                        // 0x00519601    d95f28
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00519604    d9442420
                         {disp8} fadd       dword ptr [edi + 0x2c]                        // 0x00519608    d8472c
                         {disp8} fstp       dword ptr [edi + 0x2c]                        // 0x0051960b    d95f2c
                         {disp8} jmp        _jmp_addr_0x0051961c                          // 0x0051960e    eb0c
_jmp_addr_0x00519610:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519610    8d542418
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00519614    8d4e14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x00519617    e8149feeff
_jmp_addr_0x0051961c:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0051961c    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00519620    8b542410
                         {disp8} mov        dword ptr [esi + 0x44], ecx                   // 0x00519624    894e44
                         {disp8} mov        dword ptr [esi + 0x48], edx                   // 0x00519627    895648
                         mov.s              edx, ebx                                      // 0x0051962a    8bd3
                         mov.s              ecx, esi                                      // 0x0051962c    8bce
                         call               _jmp_addr_0x0063b5d0                          // 0x0051962e    e89d1f1200
                         pop                esi                                           // 0x00519633    5e
                         pop                edi                                           // 0x00519634    5f
                         pop                ebx                                           // 0x00519635    5b
                         add                esp, 0x18                                     // 0x00519636    83c418
                         ret                                                              // 0x00519639    c3
                         call               dword ptr [__imp__GetUserNameA@4]             // 0x0051963a    ff150c908a00
?Draw@TownCentreSpellIcon@@UAEXXZ:
                         {disp32} jmp       ?Draw@SpellIcon@@UAEXXZ                       // 0x00519640    e90b000000
                         nop                                                              // 0x00519645    90
                         nop                                                              // 0x00519646    90
                         nop                                                              // 0x00519647    90
                         nop                                                              // 0x00519648    90
                         nop                                                              // 0x00519649    90
                         nop                                                              // 0x0051964a    90
                         nop                                                              // 0x0051964b    90
                         nop                                                              // 0x0051964c    90
                         nop                                                              // 0x0051964d    90
                         nop                                                              // 0x0051964e    90
                         nop                                                              // 0x0051964f    90
?Draw@SpellIcon@@UAEXXZ:
                         sub                esp, 0x18                                     // 0x00519650    83ec18
                         push               esi                                           // 0x00519653    56
                         mov.s              esi, ecx                                      // 0x00519654    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00519656    8b06
                         call               dword ptr [eax + 0x890]                       // 0x00519658    ff9090080000
                         test               eax, eax                                      // 0x0051965e    85c0
                         {disp8} jne        _jmp_addr_0x00519672                          // 0x00519660    7510
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00519662    8b4e40
                         push               ecx                                           // 0x00519665    51
                         mov.s              ecx, esi                                      // 0x00519666    8bce
                         call               _jmp_addr_0x00517f90                          // 0x00519668    e823e9ffff
                         pop                esi                                           // 0x0051966d    5e
                         add                esp, 0x18                                     // 0x0051966e    83c418
                         ret                                                              // 0x00519671    c3
_jmp_addr_0x00519672:    {disp32} mov       eax, dword ptr [esi + 0x0000010c]             // 0x00519672    8b860c010000
                         test               eax, eax                                      // 0x00519678    85c0
                         push               ebx                                           // 0x0051967a    53
                         push               edi                                           // 0x0051967b    57
                         {disp32} jne       _jmp_addr_0x005197af                          // 0x0051967c    0f852d010000
                         mov                edx, dword ptr [esi]                          // 0x00519682    8b16
                         mov.s              ecx, esi                                      // 0x00519684    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00519686    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0051968c    d95c240c
                         mov                eax, dword ptr [esi]                          // 0x00519690    8b06
                         mov.s              ecx, esi                                      // 0x00519692    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00519694    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0051969a    d95c2410
                         {disp8} fild       dword ptr [esi + 0x14]                        // 0x0051969e    db4614
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x005196a1    8b7e40
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x005196a4    8d4e14
                         {disp8} lea        edx, dword ptr [edi + 0x50]                   // 0x005196a7    8d5750
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005196aa    d80da4a38a00
                         push               edx                                           // 0x005196b0    52
                         {disp8} lea        edx, dword ptr [edi + 0x4c]                   // 0x005196b1    8d574c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005196b4    d95c241c
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x005196b8    db4104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005196bb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005196c1    d95c2424
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x005196c5    d94108
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005196c8    d95c2420
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                           // 0x005196cc    e86f9c2e00
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x005196d1    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005196d5    d95c241c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005196d9    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005196dd    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005196e3    d944240c
                         fnstsw             ax                                            // 0x005196e7    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005196e9    d81d90a38a00
                         test               ah, 0x40                                      // 0x005196ef    f6c440
                         fnstsw             ax                                            // 0x005196f2    dfe0
                         {disp8} jne        _jmp_addr_0x0051975e                          // 0x005196f4    7568
                         test               ah, 0x40                                      // 0x005196f6    f6c440
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x005196f9    8d5f14
                         {disp8} jne        _jmp_addr_0x00519734                          // 0x005196fc    7536
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005196fe    8b44240c
                         push               eax                                           // 0x00519702    50
                         mov.s              ecx, ebx                                      // 0x00519703    8bcb
                         call               _jmp_addr_0x00519320                          // 0x00519705    e816fcffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0051970a    8d542418
                         mov.s              ecx, ebx                                      // 0x0051970e    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x00519710    e85b9eeeff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00519715    8b4c2410
                         push               ecx                                           // 0x00519719    51
                         mov.s              ecx, ebx                                      // 0x0051971a    8bcb
                         call               _jmp_addr_0x005198f0                          // 0x0051971c    e8cf010000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00519721    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00519725    8b542410
                         {disp8} mov        dword ptr [edi + 0x44], ecx                   // 0x00519729    894f44
                         {disp8} mov        dword ptr [edi + 0x48], edx                   // 0x0051972c    895748
                         {disp32} jmp       _jmp_addr_0x005198b2                          // 0x0051972f    e97e010000
_jmp_addr_0x00519734:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519734    8d542418
                         mov.s              ecx, ebx                                      // 0x00519738    8bcb
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x0051973a    e8f19deeff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0051973f    8b542410
                         push               edx                                           // 0x00519743    52
                         mov.s              ecx, ebx                                      // 0x00519744    8bcb
                         call               _jmp_addr_0x005198f0                          // 0x00519746    e8a5010000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0051974b    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0051974f    8b542410
                         {disp8} mov        dword ptr [edi + 0x44], ecx                   // 0x00519753    894f44
                         {disp8} mov        dword ptr [edi + 0x48], edx                   // 0x00519756    895748
                         {disp32} jmp       _jmp_addr_0x005198b2                          // 0x00519759    e954010000
_jmp_addr_0x0051975e:    test               ah, 0x40                                      // 0x0051975e    f6c440
                         {disp8} jne        _jmp_addr_0x00519790                          // 0x00519761    752d
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00519763    8b44240c
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x00519767    8d5f14
                         push               eax                                           // 0x0051976a    50
                         mov.s              ecx, ebx                                      // 0x0051976b    8bcb
                         call               _jmp_addr_0x00519320                          // 0x0051976d    e8aefbffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519772    8d542418
                         mov.s              ecx, ebx                                      // 0x00519776    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x00519778    e8f39deeff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0051977d    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00519781    8b542410
                         {disp8} mov        dword ptr [edi + 0x44], ecx                   // 0x00519785    894f44
                         {disp8} mov        dword ptr [edi + 0x48], edx                   // 0x00519788    895748
                         {disp32} jmp       _jmp_addr_0x005198b2                          // 0x0051978b    e922010000
_jmp_addr_0x00519790:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519790    8d542418
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x00519794    8d4f14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x00519797    e8949deeff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0051979c    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005197a0    8b542410
                         {disp8} mov        dword ptr [edi + 0x44], ecx                   // 0x005197a4    894f44
                         {disp8} mov        dword ptr [edi + 0x48], edx                   // 0x005197a7    895748
                         {disp32} jmp       _jmp_addr_0x005198b2                          // 0x005197aa    e903010000
_jmp_addr_0x005197af:    mov                eax, dword ptr [esi]                          // 0x005197af    8b06
                         mov.s              ecx, esi                                      // 0x005197b1    8bce
                         call               dword ptr [eax + 0x120]                       // 0x005197b3    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x005197b9    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x005197bd    8b16
                         mov.s              ecx, esi                                      // 0x005197bf    8bce
                         call               dword ptr [edx + 0x508]                       // 0x005197c1    ff9208050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005197c7    d95c2410
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x005197cb    8b461c
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x005197ce    8b7e40
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x005197d1    8d5e14
                         mov.s              ecx, ebx                                      // 0x005197d4    8bcb
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005197d6    89442414
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005197da    e8b1982e00
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x005197df    d8442414
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005197e3    d95c241c
                         fild               dword ptr [ebx]                               // 0x005197e7    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005197e9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005197ef    d95c2418
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x005197f3    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005197f6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005197fc    d95c2420
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519800    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00519804    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0051980a    d944240c
                         fnstsw             ax                                            // 0x0051980e    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00519810    d81d90a38a00
                         test               ah, 0x40                                      // 0x00519816    f6c440
                         fnstsw             ax                                            // 0x00519819    dfe0
                         {disp8} jne        _jmp_addr_0x00519863                          // 0x0051981b    7546
                         test               ah, 0x40                                      // 0x0051981d    f6c440
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x00519820    8d5f14
                         {disp8} jne        _jmp_addr_0x0051984a                          // 0x00519823    7525
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00519825    8b4c240c
                         push               ecx                                           // 0x00519829    51
                         mov.s              ecx, ebx                                      // 0x0051982a    8bcb
                         call               _jmp_addr_0x00519320                          // 0x0051982c    e8effaffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519831    8d542418
                         mov.s              ecx, ebx                                      // 0x00519835    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x00519837    e8349deeff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0051983c    8b542410
                         push               edx                                           // 0x00519840    52
                         mov.s              ecx, ebx                                      // 0x00519841    8bcb
                         call               _jmp_addr_0x005198f0                          // 0x00519843    e8a8000000
                         {disp8} jmp        _jmp_addr_0x00519890                          // 0x00519848    eb46
_jmp_addr_0x0051984a:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0051984a    8d542418
                         mov.s              ecx, ebx                                      // 0x0051984e    8bcb
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x00519850    e8db9ceeff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00519855    8b442410
                         push               eax                                           // 0x00519859    50
                         mov.s              ecx, ebx                                      // 0x0051985a    8bcb
                         call               _jmp_addr_0x005198f0                          // 0x0051985c    e88f000000
                         {disp8} jmp        _jmp_addr_0x00519890                          // 0x00519861    eb2d
_jmp_addr_0x00519863:    test               ah, 0x40                                      // 0x00519863    f6c440
                         {disp8} jne        _jmp_addr_0x00519884                          // 0x00519866    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00519868    8b4c240c
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x0051986c    8d5f14
                         push               ecx                                           // 0x0051986f    51
                         mov.s              ecx, ebx                                      // 0x00519870    8bcb
                         call               _jmp_addr_0x00519320                          // 0x00519872    e8a9faffff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519877    8d542418
                         mov.s              ecx, ebx                                      // 0x0051987b    8bcb
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x0051987d    e8ee9ceeff
                         {disp8} jmp        _jmp_addr_0x00519890                          // 0x00519882    eb0c
_jmp_addr_0x00519884:    {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519884    8d542418
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x00519888    8d4f14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x0051988b    e8a09ceeff
_jmp_addr_0x00519890:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00519890    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00519894    8b442410
                         {disp8} mov        dword ptr [edi + 0x44], edx                   // 0x00519898    895744
                         {disp8} mov        dword ptr [edi + 0x48], eax                   // 0x0051989b    894748
                         {disp32} mov       ecx, dword ptr [esi + 0x0000010c]             // 0x0051989e    8b8e0c010000
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x005198a4    8b7e40
                         push               ecx                                           // 0x005198a7    51
                         or                 edx, 0xffffffff                               // 0x005198a8    83caff
                         mov.s              ecx, edi                                      // 0x005198ab    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x005198ad    e80e262f00
_jmp_addr_0x005198b2:    mov.s              edx, esi                                      // 0x005198b2    8bd6
                         mov.s              ecx, edi                                      // 0x005198b4    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x005198b6    e8151d1200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x005198bb    a1f01aea00
                         test               eax, eax                                      // 0x005198c0    85c0
                         pop                edi                                           // 0x005198c2    5f
                         pop                ebx                                           // 0x005198c3    5b
                         {disp8} je         _jmp_addr_0x005198de                          // 0x005198c4    7418
                         {disp8} mov        edx, dword ptr [esi + 0x40]                   // 0x005198c6    8b5640
                         {disp8} mov        eax, dword ptr [edx + 0x4c]                   // 0x005198c9    8b424c
                         shr                eax, 0x18                                     // 0x005198cc    c1e818
                         push               eax                                           // 0x005198cf    50
                         mov.s              ecx, esi                                      // 0x005198d0    8bce
                         call               _jmp_addr_0x00726d30                          // 0x005198d2    e859d42000
                         mov.s              ecx, esi                                      // 0x005198d7    8bce
                         call               _jmp_addr_0x00726d20                          // 0x005198d9    e842d42000
_jmp_addr_0x005198de:    pop                esi                                           // 0x005198de    5e
                         add                esp, 0x18                                     // 0x005198df    83c418
                         ret                                                              // 0x005198e2    c3
                         nop                                                              // 0x005198e3    90
                         nop                                                              // 0x005198e4    90
                         nop                                                              // 0x005198e5    90
                         nop                                                              // 0x005198e6    90
                         nop                                                              // 0x005198e7    90
                         nop                                                              // 0x005198e8    90
                         nop                                                              // 0x005198e9    90
                         nop                                                              // 0x005198ea    90
                         nop                                                              // 0x005198eb    90
                         nop                                                              // 0x005198ec    90
                         nop                                                              // 0x005198ed    90
                         nop                                                              // 0x005198ee    90
                         nop                                                              // 0x005198ef    90
_jmp_addr_0x005198f0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x005198f0    d9442404
                         fcos                                                             // 0x005198f4    d9ff
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x005198f6    d9442404
                         fsin                                                             // 0x005198fa    d9fe
                         fld                st(0)                                         // 0x005198fc    d9c0
                         fmul               dword ptr [ecx]                               // 0x005198fe    d809
                         fld                st(1)                                         // 0x00519900    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00519902    d84918
                         fld                st(3)                                         // 0x00519905    d9c3
                         fmul               dword ptr [ecx]                               // 0x00519907    d809
                         faddp              st(1), st                                     // 0x00519909    dec1
                         fstp               dword ptr [ecx]                               // 0x0051990b    d919
                         fld                st(2)                                         // 0x0051990d    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0051990f    d84918
                         fsub               st, st(1)                                     // 0x00519912    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x00519914    d95918
                         fstp               st(0)                                         // 0x00519917    ddd8
                         fld                st(0)                                         // 0x00519919    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0051991b    d84904
                         fld                st(1)                                         // 0x0051991e    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00519920    d8491c
                         fld                st(3)                                         // 0x00519923    d9c3
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x00519925    d84904
                         faddp              st(1), st                                     // 0x00519928    dec1
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0051992a    d95904
                         fld                st(2)                                         // 0x0051992d    d9c2
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x0051992f    d8491c
                         fsub               st, st(1)                                     // 0x00519932    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x00519934    d9591c
                         fstp               st(0)                                         // 0x00519937    ddd8
                         fld                st(0)                                         // 0x00519939    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0051993b    d84908
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0051993e    d95c2404
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x00519942    d84920
                         fld                st(1)                                         // 0x00519945    d9c1
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x00519947    d84908
                         faddp              st(1), st                                     // 0x0051994a    dec1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0051994c    d95908
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x0051994f    d84920
                         {disp8} fsub       dword ptr [esp + 0x04]                        // 0x00519952    d8642404
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x00519956    d95920
                         ret                0x0004                                        // 0x00519959    c20400
                         nop                                                              // 0x0051995c    90
                         nop                                                              // 0x0051995d    90
                         nop                                                              // 0x0051995e    90
                         nop                                                              // 0x0051995f    90
_jmp_addr_0x00519960:    sub                esp, 0x58                                     // 0x00519960    83ec58
                         push               ebx                                           // 0x00519963    53
                         push               esi                                           // 0x00519964    56
                         {disp8} mov        esi, dword ptr [esp + 0x68]                   // 0x00519965    8b742468
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x00519969    8d442468
                         push               eax                                           // 0x0051996d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0051996e    8d4c240c
                         push               ecx                                           // 0x00519972    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00519973    8d542418
                         mov.s              ecx, esi                                      // 0x00519977    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40 // 0x00519979    c705a09eea00409eea00
                         call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z   // 0x00519983    e808fa2f00
                         mov.s              ebx, eax                                      // 0x00519988    8bd8
                         test               ebx, ebx                                      // 0x0051998a    85db
                         {disp32} je        _jmp_addr_0x00519ac0                          // 0x0051998c    0f842e010000
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00519992    8b4e08
                         mov                edx, dword ptr [esi]                          // 0x00519995    8b16
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00519997    8b4604
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0051999a    894c2420
                         push               edi                                           // 0x0051999e    57
                         mov                ecx, 0x0000000c                               // 0x0051999f    b90c000000
                         mov                esi, 0x00ea1d28                               // 0x005199a4    be281dea00
                         {disp8} lea        edi, dword ptr [esp + 0x34]                   // 0x005199a9    8d7c2434
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005199ad    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x005199af    8d4c2434
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005199b3    8954241c
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005199b7    89442420
                         call               _jmp_addr_0x007fb3f0                          // 0x005199bb    e8301a2e00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x005199c0    8d542410
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005199c4    d9442440
                         push               edx                                           // 0x005199c8    52
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x005199c9    d9442448
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005199cd    d95c2430
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005199d1    8d54241c
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x005199d5    d944244c
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x005199d9    8d4c2420
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005199dd    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x005199e1    d84c2474
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x005199e5    d9442430
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x005199e9    d84c2474
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x005199ed    d95c2430
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005199f1    d9442434
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x005199f5    d84c2474
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x005199f9    d95c2434
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x005199fd    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00519a01    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00519a05    d9442424
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x00519a09    d8442430
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00519a0d    d95c2424
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00519a11    d9442428
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x00519a15    d8442434
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00519a19    d95c2428
                         call               _jmp_addr_0x008190d0                          // 0x00519a1d    e8aef62f00
                         test               eax, eax                                      // 0x00519a22    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00519a24    8b44240c
                         pop                edi                                           // 0x00519a28    5f
                         {disp8} jne        _jmp_addr_0x00519a33                          // 0x00519a29    7508
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00519a2b    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x00519a45                          // 0x00519a31    eb12
_jmp_addr_0x00519a33:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00519a33    8b54240c
                         mov.s              ecx, eax                                      // 0x00519a37    8bc8
                         sub.s              ecx, edx                                      // 0x00519a39    2bca
                         {disp8} mov        dword ptr [esp + 0x6c], ecx                   // 0x00519a3b    894c246c
                         {disp8} fild       dword ptr [esp + 0x6c]                        // 0x00519a3f    db44246c
                         fabs                                                             // 0x00519a43    d9e1
_jmp_addr_0x00519a45:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00519a45    8b742410
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbac8]        // 0x00519a49    8b15c81aea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbacc]        // 0x00519a4f    8b0dcc1aea00
                         sub.s              edx, esi                                      // 0x00519a55    2bd6
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x00519a57    8954246c
                         {disp8} fild       dword ptr [esp + 0x6c]                        // 0x00519a5b    db44246c
                         sub.s              ecx, eax                                      // 0x00519a5f    2bc8
                         {disp8} mov        dword ptr [esp + 0x6c], ecx                   // 0x00519a61    894c246c
                         {disp8} fild       dword ptr [esp + 0x6c]                        // 0x00519a65    db44246c
                         {disp8} mov        esi, dword ptr [esp + 0x64]                   // 0x00519a69    8b742464
                         fld                st(0)                                         // 0x00519a6d    d9c0
                         fmul               st, st(1)                                     // 0x00519a6f    d8c9
                         fld                st(2)                                         // 0x00519a71    d9c2
                         fmul               st, st(3)                                     // 0x00519a73    d8cb
                         faddp              st(1), st                                     // 0x00519a75    dec1
                         fld                st(3)                                         // 0x00519a77    d9c3
                         fmul               st, st(4)                                     // 0x00519a79    d8cc
                         fcompp                                                           // 0x00519a7b    ded9
                         fstp               st(0)                                         // 0x00519a7d    ddd8
                         fnstsw             ax                                            // 0x00519a7f    dfe0
                         fstp               st(0)                                         // 0x00519a81    ddd8
                         test               ah, 0x41                                      // 0x00519a83    f6c441
                         fstp               st(0)                                         // 0x00519a86    ddd8
                         {disp8} jne        _jmp_addr_0x00519aa4                          // 0x00519a88    751a
                         {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x00519a8a    8b542468
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00519a8e    8b0d5c19d000
                         push               0x0                                           // 0x00519a94    6a00
                         push               edx                                           // 0x00519a96    52
                         push               esi                                           // 0x00519a97    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00519a98    e8b3bd0300
                         mov.s              ecx, eax                                      // 0x00519a9d    8bc8
                         call               _jmp_addr_0x005d56c0                          // 0x00519a9f    e81cbc0b00
_jmp_addr_0x00519aa4:    cmp                ebx, 0x02                                     // 0x00519aa4    83fb02
                         {disp8} jne        _jmp_addr_0x00519ac0                          // 0x00519aa7    7517
                         {disp8} mov        eax, dword ptr [esp + 0x68]                   // 0x00519aa9    8b442468
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00519aad    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x00519ab3    8b895c002500
                         push               eax                                           // 0x00519ab9    50
                         push               esi                                           // 0x00519aba    56
                         call               _jmp_addr_0x005c9090                          // 0x00519abb    e8d0f50a00
_jmp_addr_0x00519ac0:    pop                esi                                           // 0x00519ac0    5e
                         pop                ebx                                           // 0x00519ac1    5b
                         add                esp, 0x58                                     // 0x00519ac2    83c458
                         ret                                                              // 0x00519ac5    c3
                         nop                                                              // 0x00519ac6    90
                         nop                                                              // 0x00519ac7    90
                         nop                                                              // 0x00519ac8    90
                         nop                                                              // 0x00519ac9    90
                         nop                                                              // 0x00519aca    90
                         nop                                                              // 0x00519acb    90
                         nop                                                              // 0x00519acc    90
                         nop                                                              // 0x00519acd    90
                         nop                                                              // 0x00519ace    90
                         nop                                                              // 0x00519acf    90
_jmp_addr_0x00519ad0:    sub                esp, 0x34                                     // 0x00519ad0    83ec34
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00519ad3    a1f01aea00
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x00519ad8    db05c09eea00
                         push               ebx                                           // 0x00519ade    53
                         push               ebp                                           // 0x00519adf    55
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00519ae0    d80db0a38a00
                         push               esi                                           // 0x00519ae6    56
                         push               edi                                           // 0x00519ae7    57
                         mov.s              esi, ecx                                      // 0x00519ae8    8bf1
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00519aea    8944241c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00519aee    d95c2418
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x00519af2    8b4648
                         lea                edi, dword ptr [eax + eax * 0x4]              // 0x00519af5    8d3c80
                         lea                edi, dword ptr [edi + edi * 0x4]              // 0x00519af8    8d3cbf
                         shl                edi, 4                                        // 0x00519afb    c1e704
                         add                edi, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x00519afe    81c778d6d900
                         call               _jmp_addr_0x00727690                          // 0x00519b04    e887db2000
                         xor.s              ebx, ebx                                      // 0x00519b09    33db
                         test               eax, eax                                      // 0x00519b0b    85c0
                         {disp32} je        _jmp_addr_0x0051a1b2                          // 0x00519b0d    0f849f060000
                         {disp32} fld       dword ptr [edi + 0x00000144]                  // 0x00519b13    d98744010000
                         {disp8} fmul       dword ptr [esi + 0x54]                        // 0x00519b19    d84e54
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00519b1c    d95c2414
                         {disp32} fld       dword ptr [rdata_bytes + 0x2f700]             // 0x00519b20    d90500878d00
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00519b26    d84c2418
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x00519b2a    d8463c
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x00519b2d    d9542424
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00519b31    d95e3c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00519b34    d9442424
                         {disp32} fld       qword ptr [rdata_bytes + 0x2b5d8]             // 0x00519b38    dd05d8458d00
                         call               __CIfmod                                      // 0x00519b3e    e807e52a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00519b43    d81598a38a00
                         fnstsw             ax                                            // 0x00519b49    dfe0
                         test               ah, 0x01                                      // 0x00519b4b    f6c401
                         {disp8} je         _jmp_addr_0x00519b56                          // 0x00519b4e    7406
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x00519b50    d80510b28a00
_jmp_addr_0x00519b56:    push               ebx                                           // 0x00519b56    53
                         {disp8} fstp       dword ptr [esi + 0x3c]                        // 0x00519b57    d95e3c
                         mov.s              ecx, esi                                      // 0x00519b5a    8bce
                         call               _jmp_addr_0x00727700                          // 0x00519b5c    e89fdb2000
                         mov.s              ecx, eax                                      // 0x00519b61    8bc8
                         call               _jmp_addr_0x0072af50                          // 0x00519b63    e8e8132100
                         mov                edx, dword ptr [eax]                          // 0x00519b68    8b10
                         mov.s              ecx, eax                                      // 0x00519b6a    8bc8
                         call               dword ptr [edx + 0x38]                        // 0x00519b6c    ff5238
                         mov.s              ebp, eax                                      // 0x00519b6f    8be8
                         cmp.s              ebp, ebx                                      // 0x00519b71    3beb
                         {disp32} je        _jmp_addr_0x0051a0b3                          // 0x00519b73    0f843a050000
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519b79    8b4e2c
                         mov                eax, dword ptr [ecx]                          // 0x00519b7c    8b01
                         mov                edx, 0x00000001                               // 0x00519b7e    ba01000000
                         call               dword ptr [eax + 0xec]                        // 0x00519b83    ff90ec000000
                         {disp32} fld       dword ptr [rdata_bytes + 0x2f6f0]             // 0x00519b89    d905f0868d00
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00519b8f    d84c2418
                         {disp8} fadd       dword ptr [esi + 0x34]                        // 0x00519b93    d84634
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x00519b96    d9542424
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00519b9a    d95e34
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00519b9d    d9442424
                         {disp32} fld       qword ptr [rdata_bytes + 0x2f740]             // 0x00519ba1    dd0540878d00
                         call               __CIfmod                                      // 0x00519ba7    e89ee42a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00519bac    d81598a38a00
                         fnstsw             ax                                            // 0x00519bb2    dfe0
                         test               ah, 0x01                                      // 0x00519bb4    f6c401
                         {disp8} je         _jmp_addr_0x00519bbf                          // 0x00519bb7    7406
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26134]             // 0x00519bb9    d80534f18c00
_jmp_addr_0x00519bbf:    {disp8} fst        dword ptr [esi + 0x34]                        // 0x00519bbf    d95634
                         call               _jmp_addr_0x007a1400                          // 0x00519bc2    e839782800
                         mov.s              edi, eax                                      // 0x00519bc7    8bf8
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519bc9    8b462c
                         mov                ecx, dword ptr [eax]                          // 0x00519bcc    8b08
                         mov.s              eax, edi                                      // 0x00519bce    8bc7
                         cdq                                                              // 0x00519bd0    99
                         and                edx, 0x07                                     // 0x00519bd1    83e207
                         add.s              eax, edx                                      // 0x00519bd4    03c2
                         sar                eax, 3                                        // 0x00519bd6    c1f803
                         and                edi, 0x80000007                               // 0x00519bd9    81e707000080
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00519bdf    89442424
                         push               ecx                                           // 0x00519be3    51
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00519be4    db442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f6cc]             // 0x00519be8    d80dcc868d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26134]             // 0x00519bee    d80d34f18c00
                         fstp               dword ptr [esp]                               // 0x00519bf4    d91c24
                         {disp8} jns        _jmp_addr_0x00519bfe                          // 0x00519bf7    7905
                         dec                edi                                           // 0x00519bf9    4f
                         or                 edi, 0xfffffff8                               // 0x00519bfa    83cff8
                         inc                edi                                           // 0x00519bfd    47
_jmp_addr_0x00519bfe:    {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x00519bfe    897c2428
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00519c02    db442428
                         mov.s              edx, ecx                                      // 0x00519c06    8bd1
                         push               ecx                                           // 0x00519c08    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f6cc]             // 0x00519c09    d80dcc868d00
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519c0f    8b4e2c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26134]             // 0x00519c12    d80d34f18c00
                         fstp               dword ptr [esp]                               // 0x00519c18    d91c24
                         call               dword ptr [edx + 0xe8]                        // 0x00519c1b    ff92e8000000
                         cmp                dword ptr [ebp + 0x58], ebx                   // 0x00519c21    395d58
                         {disp8} jne        _jmp_addr_0x00519c31                          // 0x00519c24    750b
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x2f6f8]        // 0x00519c26    a1f8868d00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00519c2b    89442424
                         {disp8} jmp        _jmp_addr_0x00519c3b                          // 0x00519c2f    eb0a
_jmp_addr_0x00519c31:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0x2f6f4]        // 0x00519c31    8b0df4868d00
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00519c37    894c2424
_jmp_addr_0x00519c3b:    {disp8} fld        dword ptr [esp + 0x24]                        // 0x00519c3b    d9442424
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00519c3f    d84c2418
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x00519c43    d84638
                         {disp32} fld       qword ptr [__real@8@3fff8000000000000000]   // 0x00519c46    dd0580b68a00
                         call               __CIfmod                                      // 0x00519c4c    e8f9e32a00
                         {disp8} fst        dword ptr [esi + 0x38]                        // 0x00519c51    d95638
                         {disp32} fmul      dword ptr [__real@40c90fdb]                   // 0x00519c54    d80d10b28a00
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x00519c5a    8b4e1c
                         {disp8} mov        edx, dword ptr [esi + 0x3c]                   // 0x00519c5d    8b563c
                         fsin                                                             // 0x00519c60    d9fe
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519c62    8b462c
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00519c65    8d7e14
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00519c68    894c2420
                         mov.s              ecx, edi                                      // 0x00519c6c    8bcf
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00519c6e    89542424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00519c72    89442428
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00519c76    d80590a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00519c7c    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00519c82    d95c2410
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00519c86    e805942e00
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00519c8b    d8442420
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00519c8f    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00519c93    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00519c97    8b4c2428
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00519c9b    d95c243c
                         push               edx                                           // 0x00519c9f    52
                         fild               dword ptr [edi]                               // 0x00519ca0    db07
                         push               eax                                           // 0x00519ca2    50
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00519ca3    8d542440
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519ca7    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00519cad    d95c2440
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00519cb1    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519cb4    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00519cba    d95c2448
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x00519cbe    e87d94f0ff
                         {disp8} mov        eax, dword ptr [ebp + 0x58]                   // 0x00519cc3    8b4558
                         sub                eax, 0x05                                     // 0x00519cc6    83e805
                         {disp8} je         _jmp_addr_0x00519d1e                          // 0x00519cc9    7453
                         dec                eax                                           // 0x00519ccb    48
                         {disp32} jne       _jmp_addr_0x00519d6a                          // 0x00519ccc    0f8598000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519cd2    d9442410
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519cd6    8b462c
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x00519cd9    d80d38b28a00
                         add                eax, 0x14                                     // 0x00519cdf    83c014
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x00519ce2    d82d90a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519ce8    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]             // 0x00519cec    d80d044a8c00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x00519cf2    d82d90a38a00
                         fld                st(0)                                         // 0x00519cf8    d9c0
                         fmul               dword ptr [eax]                               // 0x00519cfa    d808
                         fstp               dword ptr [eax]                               // 0x00519cfc    d918
                         fld                st(0)                                         // 0x00519cfe    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00519d00    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00519d03    d95804
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00519d06    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00519d09    d95808
                         fld                st(0)                                         // 0x00519d0c    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00519d0e    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x00519d11    d95818
                         fld                st(0)                                         // 0x00519d14    d9c0
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00519d16    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x00519d19    d9581c
                         {disp8} jmp        _jmp_addr_0x00519d64                          // 0x00519d1c    eb46
_jmp_addr_0x00519d1e:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519d1e    d9442410
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519d22    8b462c
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x00519d25    d80d4cb28a00
                         add                eax, 0x14                                     // 0x00519d2b    83c014
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00519d2e    d80590a38a00
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x00519d34    d9542420
                         fld                st(0)                                         // 0x00519d38    d9c0
                         fmul               dword ptr [eax]                               // 0x00519d3a    d808
                         fstp               dword ptr [eax]                               // 0x00519d3c    d918
                         fld                st(0)                                         // 0x00519d3e    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00519d40    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00519d43    d95804
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00519d46    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00519d49    d95808
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00519d4c    d9442420
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00519d50    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x00519d53    d95818
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00519d56    d9442420
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00519d5a    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x00519d5d    d9581c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00519d60    d9442420
_jmp_addr_0x00519d64:    {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00519d64    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x00519d67    d95820
_jmp_addr_0x00519d6a:    {disp8} mov        ebp, dword ptr [ebp + 0x58]                   // 0x00519d6a    8b6d58
                         cmp                ebp, 0x07                                     // 0x00519d6d    83fd07
                         {disp32} ja        _jmp_addr_0x0051a05b                          // 0x00519d70    0f87e5020000
                         jmp                dword ptr [ebp*4 + 0x51a808]                  // 0x00519d76    ff24ad08a85100
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519d7d    8b462c
                         {disp8} lea        edi, dword ptr [eax + 0x50]                   // 0x00519d80    8d7850
                         {disp8} lea        ebp, dword ptr [eax + 0x4c]                   // 0x00519d83    8d684c
                         push               edi                                           // 0x00519d86    57
                         add                eax, 0x38                                     // 0x00519d87    83c038
                         push               ebp                                           // 0x00519d8a    55
                         push               eax                                           // 0x00519d8b    50
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00519d8c    89442434
                         call               _jmp_addr_0x00801c90                          // 0x00519d90    e8fb7e2e00
                         mov                ecx, dword ptr [edi]                          // 0x00519d95    8b0f
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00519d97    8b542434
                         push               ebp                                           // 0x00519d9b    55
                         push               ecx                                           // 0x00519d9c    51
                         push               edx                                           // 0x00519d9d    52
                         call               _jmp_addr_0x007feb30                          // 0x00519d9e    e88d4d2e00
                         mov                dword ptr [edi], eax                          // 0x00519da3    8907
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519da5    8b462c
                         and                dword ptr [eax + 0x4c], 0x00ffffff            // 0x00519da8    81604cffffff00
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x00519daf    8b44246c
                         {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x00519db3    8b7e2c
                         and                eax, 0x000000ff                               // 0x00519db6    25ff000000
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00519dbb    89442440
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x00519dbf    db442440
                         add                esp, 0x18                                     // 0x00519dc3    83c418
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00519dc6    d84c2410
                         call               _jmp_addr_0x007a1400                          // 0x00519dca    e831762800
                         {disp8} mov        ecx, dword ptr [edi + 0x4c]                   // 0x00519dcf    8b4f4c
                         and                eax, 0x000000ff                               // 0x00519dd2    25ff000000
                         shl                eax, 0x18                                     // 0x00519dd7    c1e018
                         or.s               ecx, eax                                      // 0x00519dda    0bc8
                         {disp8} mov        dword ptr [edi + 0x4c], ecx                   // 0x00519ddc    894f4c
                         {disp32} jmp       _jmp_addr_0x0051a02e                          // 0x00519ddf    e94a020000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519de4    8b462c
                         {disp8} lea        edi, dword ptr [eax + 0x50]                   // 0x00519de7    8d7850
                         {disp8} lea        ebp, dword ptr [eax + 0x4c]                   // 0x00519dea    8d684c
                         push               edi                                           // 0x00519ded    57
                         add                eax, 0x38                                     // 0x00519dee    83c038
                         push               ebp                                           // 0x00519df1    55
                         push               eax                                           // 0x00519df2    50
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00519df3    89442434
                         call               _jmp_addr_0x00801c90                          // 0x00519df7    e8947e2e00
                         mov                eax, dword ptr [edi]                          // 0x00519dfc    8b07
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00519dfe    8b4c2434
                         push               ebp                                           // 0x00519e02    55
                         push               eax                                           // 0x00519e03    50
                         push               ecx                                           // 0x00519e04    51
                         call               _jmp_addr_0x007feb30                          // 0x00519e05    e8264d2e00
                         mov                dword ptr [edi], eax                          // 0x00519e0a    8907
                         {disp8} mov        edx, dword ptr [esi + 0x2c]                   // 0x00519e0c    8b562c
                         mov                edi, dword ptr [edx]                          // 0x00519e0f    8b3a
                         push               ebx                                           // 0x00519e11    53
                         call               _jmp_addr_0x0057d4c0                          // 0x00519e12    e8a9360600
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519e17    8b4e2c
                         add                esp, 0x1c                                     // 0x00519e1a    83c41c
                         push               eax                                           // 0x00519e1d    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00519e1e    8b442414
                         push               0x00354f8d                                    // 0x00519e22    688d4f3500
                         push               eax                                           // 0x00519e27    50
                         call               dword ptr [edi + 0x15c]                       // 0x00519e28    ff975c010000
                         {disp32} jmp       _jmp_addr_0x0051a1b2                          // 0x00519e2e    e97f030000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519e33    8b462c
                         {disp8} mov        edx, dword ptr [eax + 0x4c]                   // 0x00519e36    8b504c
                         {disp8} mov        edi, dword ptr [esp + 0x54]                   // 0x00519e39    8b7c2454
                         and                edx, 0x00ffffff                               // 0x00519e3d    81e2ffffff00
                         {disp8} mov        dword ptr [eax + 0x4c], edx                   // 0x00519e43    89504c
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519e46    8b462c
                         {disp8} mov        edx, dword ptr [eax + 0x4c]                   // 0x00519e49    8b504c
                         and                edi, 0x000000ff                               // 0x00519e4c    81e7ff000000
                         mov.s              ecx, edi                                      // 0x00519e52    8bcf
                         shl                ecx, 0x18                                     // 0x00519e54    c1e118
                         or.s               edx, ecx                                      // 0x00519e57    0bd1
                         {disp8} mov        cl, byte ptr [esp + 0x54]                     // 0x00519e59    8a4c2454
                         {disp8} mov        dword ptr [eax + 0x4c], edx                   // 0x00519e5d    89504c
                         {disp8} mov        ebp, dword ptr [esi + 0x2c]                   // 0x00519e60    8b6e2c
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00519e63    8b4500
                         xor.s              edx, edx                                      // 0x00519e66    33d2
                         cmp                cl, -0x01                                     // 0x00519e68    80f9ff
                         setne              dl                                            // 0x00519e6b    0f95c2
                         mov.s              ecx, ebp                                      // 0x00519e6e    8bcd
                         call               dword ptr [eax + 0x48]                        // 0x00519e70    ff5048
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519e73    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x00519e76    8b11
                         call               dword ptr [edx + 0x104]                       // 0x00519e78    ff9204010000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519e7e    8b462c
                         {disp8} mov        ebp, dword ptr [eax + 0x4c]                   // 0x00519e81    8b684c
                         and                ebp, 0x00ffffff                               // 0x00519e84    81e5ffffff00
                         {disp8} mov        dword ptr [eax + 0x4c], ebp                   // 0x00519e8a    89684c
                         {disp32} fld       dword ptr [rdata_bytes + 0x2f6fc]             // 0x00519e8d    d905fc868d00
                         {disp8} mov        ebp, dword ptr [esi + 0x2c]                   // 0x00519e93    8b6e2c
                         fchs                                                             // 0x00519e96    d9e0
                         {disp8} fmul       dword ptr [esi + 0x38]                        // 0x00519e98    d84e38
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2f6fc]             // 0x00519e9b    d805fc868d00
                         call               _jmp_addr_0x007a1400                          // 0x00519ea1    e85a752800
                         {disp8} mov        edx, dword ptr [ebp + 0x4c]                   // 0x00519ea6    8b554c
                         and                eax, 0x000000ff                               // 0x00519ea9    25ff000000
                         imul               eax, edi                                      // 0x00519eae    0fafc7
                         and                eax, 0xffffff00                               // 0x00519eb1    2500ffffff
                         shl                eax, 0x10                                     // 0x00519eb6    c1e010
                         or.s               edx, eax                                      // 0x00519eb9    0bd0
                         {disp8} mov        dword ptr [ebp + 0x4c], edx                   // 0x00519ebb    89554c
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519ebe    8b462c
                         {disp8} fld        dword ptr [esi + 0x38]                        // 0x00519ec1    d94638
                         add                eax, 0x14                                     // 0x00519ec4    83c014
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00519ec7    d80590a38a00
                         fld                st(0)                                         // 0x00519ecd    d9c0
                         fmul               dword ptr [eax]                               // 0x00519ecf    d808
                         fstp               dword ptr [eax]                               // 0x00519ed1    d918
                         fld                st(0)                                         // 0x00519ed3    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x00519ed5    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00519ed8    d95804
                         fld                st(0)                                         // 0x00519edb    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x00519edd    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x00519ee0    d95808
                         fld                st(0)                                         // 0x00519ee3    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x00519ee5    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x00519ee8    d9580c
                         fld                st(0)                                         // 0x00519eeb    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00519eed    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x00519ef0    d95810
                         fld                st(0)                                         // 0x00519ef3    d9c0
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00519ef5    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x00519ef8    d95814
                         fld                st(0)                                         // 0x00519efb    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00519efd    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x00519f00    d95818
                         fld                st(0)                                         // 0x00519f03    d9c0
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00519f05    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x00519f08    d9581c
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00519f0b    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x00519f0e    d95820
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519f11    8b462c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00519f14    d9442410
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x00519f18    d80590a38a00
                         {disp8} fmul       dword ptr [eax + 0x44]                        // 0x00519f1e    d84844
                         {disp8} fstp       dword ptr [eax + 0x44]                        // 0x00519f21    d95844
                         {disp32} jmp       _jmp_addr_0x0051a02e                          // 0x00519f24    e905010000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00519f29    d90590a38a00
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x00519f2f    8b4708
                         {disp8} fsub       dword ptr [esi + 0x38]                        // 0x00519f32    d86638
                         {disp8} mov        ebp, dword ptr [esi + 0x2c]                   // 0x00519f35    8b6e2c
                         mov.s              ecx, edi                                      // 0x00519f38    8bcf
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00519f3a    89442428
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00519f3e    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00519f42    d95c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00519f46    e845912e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x00519f4b    d8442428
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00519f4f    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00519f53    8b542424
                         push               ecx                                           // 0x00519f57    51
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00519f58    d95c2440
                         push               edx                                           // 0x00519f5c    52
                         fild               dword ptr [edi]                               // 0x00519f5d    db07
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00519f5f    8d542440
                         mov.s              ecx, ebp                                      // 0x00519f63    8bcd
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519f65    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00519f6b    d95c2440
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x00519f6f    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x00519f72    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x00519f78    d95c2448
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x00519f7c    e8bf91f0ff
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519f81    8b462c
                         {disp8} mov        ebp, dword ptr [eax + 0x4c]                   // 0x00519f84    8b684c
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x00519f87    8b4c2454
                         and                ebp, 0x00ffffff                               // 0x00519f8b    81e5ffffff00
                         {disp8} mov        dword ptr [eax + 0x4c], ebp                   // 0x00519f91    89684c
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519f94    8b462c
                         mov.s              ebp, ecx                                      // 0x00519f97    8be9
                         and                ebp, 0x000000ff                               // 0x00519f99    81e5ff000000
                         mov.s              edx, ebp                                      // 0x00519f9f    8bd5
                         shl                edx, 0x18                                     // 0x00519fa1    c1e218
                         or                 dword ptr [eax + 0x4c], edx                   // 0x00519fa4    09504c
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519fa7    8b462c
                         mov                eax, dword ptr [eax]                          // 0x00519faa    8b00
                         xor.s              edx, edx                                      // 0x00519fac    33d2
                         cmp                cl, -0x01                                     // 0x00519fae    80f9ff
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519fb1    8b4e2c
                         setne              dl                                            // 0x00519fb4    0f95c2
                         call               dword ptr [eax + 0x48]                        // 0x00519fb7    ff5048
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x00519fba    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x00519fbd    8b11
                         call               dword ptr [edx + 0x104]                       // 0x00519fbf    ff9204010000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519fc5    8b462c
                         and                dword ptr [eax + 0x4c], 0x00ffffff            // 0x00519fc8    81604cffffff00
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x00519fcf    8b462c
                         {disp8} lea        ecx, dword ptr [ebp + ebp * 0x4 + 0x00]       // 0x00519fd2    8d4cad00
                         {disp8} mov        ebp, dword ptr [eax + 0x4c]                   // 0x00519fd6    8b684c
                         shl                ecx, 0x14                                     // 0x00519fd9    c1e114
                         and                ecx, 0xff000000                               // 0x00519fdc    81e1000000ff
                         or.s               ebp, ecx                                      // 0x00519fe2    0be9
                         {disp8} mov        dword ptr [eax + 0x4c], ebp                   // 0x00519fe4    89684c
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x00519fe7    8b5708
                         {disp8} mov        ebp, dword ptr [esi + 0x2c]                   // 0x00519fea    8b6e2c
                         mov.s              ecx, edi                                      // 0x00519fed    8bcf
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00519fef    89542428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00519ff3    e898902e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x00519ff8    d8442428
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00519ffc    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0051a000    8b4c2424
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0051a004    d95c243c
                         push               eax                                           // 0x0051a008    50
                         fild               dword ptr [edi]                               // 0x0051a009    db07
                         push               ecx                                           // 0x0051a00b    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x0051a00c    8d542440
                         mov.s              ecx, ebp                                      // 0x0051a010    8bcd
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a012    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0051a018    d95c2440
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x0051a01c    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a01f    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0051a025    d95c2448
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x0051a029    e81291f0ff
_jmp_addr_0x0051a02e:    {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a02e    8b4e2c
                         mov                eax, dword ptr [ecx]                          // 0x0051a031    8b01
                         mov                edx, 0x00000001                               // 0x0051a033    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x0051a038    ff5048
                         cmp                byte ptr [esp + 0x4c], bl                     // 0x0051a03b    385c244c
                         {disp8} je         _jmp_addr_0x0051a051                          // 0x0051a03f    7410
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a041    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x0051a044    8b11
                         call               dword ptr [edx + 0x104]                       // 0x0051a046    ff9204010000
                         {disp32} jmp       _jmp_addr_0x0051a1b2                          // 0x0051a04c    e961010000
_jmp_addr_0x0051a051:    {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a051    8b4e2c
                         xor.s              edx, edx                                      // 0x0051a054    33d2
                         {disp32} jmp       _jmp_addr_0x0051a1ad                          // 0x0051a056    e952010000
_jmp_addr_0x0051a05b:    {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a05b    8b4e2c
                         mov                eax, dword ptr [ecx]                          // 0x0051a05e    8b01
                         xor.s              edx, edx                                      // 0x0051a060    33d2
                         cmp                byte ptr [esp + 0x54], -0x01                  // 0x0051a062    807c2454ff
                         setne              dl                                            // 0x0051a067    0f95c2
                         call               dword ptr [eax + 0x48]                        // 0x0051a06a    ff5048
                         cmp                byte ptr [esp + 0x4c], bl                     // 0x0051a06d    385c244c
                         {disp8} je         _jmp_addr_0x0051a083                          // 0x0051a071    7410
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a073    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x0051a076    8b11
                         call               dword ptr [edx + 0x104]                       // 0x0051a078    ff9204010000
                         {disp32} jmp       _jmp_addr_0x0051a1b2                          // 0x0051a07e    e92f010000
_jmp_addr_0x0051a083:    {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x0051a083    8b7e2c
                         {disp8} lea        ebp, dword ptr [edi + 0x50]                   // 0x0051a086    8d6f50
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                   // 0x0051a089    8d474c
                         push               ebp                                           // 0x0051a08c    55
                         {disp8} lea        ecx, dword ptr [edi + 0x38]                   // 0x0051a08d    8d4f38
                         push               eax                                           // 0x0051a090    50
                         push               ecx                                           // 0x0051a091    51
                         call               _jmp_addr_0x00801c90                          // 0x0051a092    e8f97b2e00
                         {disp8} lea        eax, dword ptr [edi + 0x4c]                   // 0x0051a097    8d474c
                         push               eax                                           // 0x0051a09a    50
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0051a09b    8b4500
                         push               eax                                           // 0x0051a09e    50
                         {disp8} lea        eax, dword ptr [edi + 0x38]                   // 0x0051a09f    8d4738
                         push               eax                                           // 0x0051a0a2    50
                         call               _jmp_addr_0x007feb30                          // 0x0051a0a3    e8884a2e00
                         add                esp, 0x18                                     // 0x0051a0a8    83c418
                         {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x0051a0ab    894500
                         {disp32} jmp       _jmp_addr_0x0051a1a9                          // 0x0051a0ae    e9f6000000
_jmp_addr_0x0051a0b3:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x0051a0b3    8b462c
                         {disp8} mov        ebp, dword ptr [eax + 0x4c]                   // 0x0051a0b6    8b684c
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x0051a0b9    8b4c2454
                         and                ebp, 0x00ffffff                               // 0x0051a0bd    81e5ffffff00
                         {disp8} mov        dword ptr [eax + 0x4c], ebp                   // 0x0051a0c3    89684c
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x0051a0c6    8b462c
                         {disp8} mov        edi, dword ptr [eax + 0x4c]                   // 0x0051a0c9    8b784c
                         mov.s              edx, ecx                                      // 0x0051a0cc    8bd1
                         and                edx, 0x000000ff                               // 0x0051a0ce    81e2ff000000
                         shl                edx, 0x18                                     // 0x0051a0d4    c1e218
                         or.s               edi, edx                                      // 0x0051a0d7    0bfa
                         xor.s              edx, edx                                      // 0x0051a0d9    33d2
                         cmp                cl, -0x01                                     // 0x0051a0db    80f9ff
                         setne              dl                                            // 0x0051a0de    0f95c2
                         {disp8} mov        dword ptr [eax + 0x4c], edi                   // 0x0051a0e1    89784c
                         {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x0051a0e4    8b7e2c
                         mov                eax, dword ptr [edi]                          // 0x0051a0e7    8b07
                         mov.s              ecx, edi                                      // 0x0051a0e9    8bcf
                         call               dword ptr [eax + 0x48]                        // 0x0051a0eb    ff5048
                         cmp                byte ptr [esp + 0x4c], bl                     // 0x0051a0ee    385c244c
                         {disp8} je         _jmp_addr_0x0051a152                          // 0x0051a0f2    745e
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                   // 0x0051a0f4    8b4e3c
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x0051a0f7    8b561c
                         {disp8} mov        ebp, dword ptr [esi + 0x2c]                   // 0x0051a0fa    8b6e2c
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0051a0fd    8d7e14
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0051a100    894c2424
                         mov.s              ecx, edi                                      // 0x0051a104    8bcf
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0051a106    89542428
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0051a10a    e8818f2e00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0051a10f    d8442428
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0051a113    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0051a117    8b4c2424
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0051a11b    d95c243c
                         push               eax                                           // 0x0051a11f    50
                         fild               dword ptr [edi]                               // 0x0051a120    db07
                         push               ecx                                           // 0x0051a122    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x0051a123    8d542440
                         mov.s              ecx, ebp                                      // 0x0051a127    8bcd
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a129    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0051a12f    d95c2440
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x0051a133    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a136    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0051a13c    d95c2448
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x0051a140    e8fb8ff0ff
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a145    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x0051a148    8b11
                         call               dword ptr [edx + 0x104]                       // 0x0051a14a    ff9204010000
                         {disp8} jmp        _jmp_addr_0x0051a1b2                          // 0x0051a150    eb60
_jmp_addr_0x0051a152:    {disp8} fild       dword ptr [esi + 0x14]                        // 0x0051a152    db4614
                         {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x0051a155    8b7e2c
                         {disp8} mov        eax, dword ptr [esi + 0x3c]                   // 0x0051a158    8b463c
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0051a15b    8d4e14
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a15e    d80da4a38a00
                         {disp8} lea        edx, dword ptr [edi + 0x50]                   // 0x0051a164    8d5750
                         push               edx                                           // 0x0051a167    52
                         {disp8} lea        edx, dword ptr [edi + 0x4c]                   // 0x0051a168    8d574c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0051a16b    d95c2430
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0051a16f    8944242c
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x0051a173    db4104
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a176    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0051a17c    d95c2438
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0051a180    d94108
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051a183    d95c2434
                         call               ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                           // 0x0051a187    e8b4912e00
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x0051a18c    d8442430
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0051a190    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0051a194    8b4c2428
                         push               eax                                           // 0x0051a198    50
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051a199    d95c2434
                         push               ecx                                           // 0x0051a19d    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0051a19e    8d542434
                         mov.s              ecx, edi                                      // 0x0051a1a2    8bcf
                         call               ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x0051a1a4    e8978ff0ff
_jmp_addr_0x0051a1a9:    xor.s              edx, edx                                      // 0x0051a1a9    33d2
                         mov.s              ecx, edi                                      // 0x0051a1ab    8bcf
_jmp_addr_0x0051a1ad:    call               _jmp_addr_0x0063b5d0                          // 0x0051a1ad    e81e141200
_jmp_addr_0x0051a1b2:    {disp8} mov        ebp, dword ptr [esp + 0x48]                   // 0x0051a1b2    8b6c2448
                         cmp.s              ebp, ebx                                      // 0x0051a1b6    3beb
                         {disp32} je        _jmp_addr_0x0051a24b                          // 0x0051a1b8    0f848d000000
                         cmp                byte ptr [esp + 0x50], bl                     // 0x0051a1be    385c2450
                         {disp32} je        _jmp_addr_0x0051a24b                          // 0x0051a1c2    0f8483000000
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x0051a1c8    8b561c
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x0051a1cb    8d7e14
                         mov.s              ecx, edi                                      // 0x0051a1ce    8bcf
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x0051a1d0    89542450
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0051a1d4    e8b78e2e00
                         {disp8} fadd       dword ptr [esp + 0x50]                        // 0x0051a1d9    d8442450
                         mov.s              ecx, esi                                      // 0x0051a1dd    8bce
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0051a1df    d95c2430
                         fild               dword ptr [edi]                               // 0x0051a1e3    db07
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a1e5    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0051a1eb    d95c242c
                         {disp8} fild       dword ptr [edi + 0x04]                        // 0x0051a1ef    db4704
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0051a1f2    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051a1f8    d95c2434
                         call               _jmp_addr_0x00727690                          // 0x0051a1fc    e88fd42000
                         test               eax, eax                                      // 0x0051a201    85c0
                         {disp8} je         _jmp_addr_0x0051a234                          // 0x0051a203    742f
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x0051a205    8b4e2c
                         mov                eax, dword ptr [ecx]                          // 0x0051a208    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x0051a20a    ff90f8000000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0051a210    d944242c
                         {disp8} fadd       dword ptr [eax + 0x18]                        // 0x0051a214    d84018
                         add                eax, 0x18                                     // 0x0051a217    83c018
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0051a21a    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0051a21e    d9442430
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x0051a222    d84004
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0051a225    d95c2430
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0051a229    d9442434
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x0051a22d    d84008
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051a230    d95c2434
_jmp_addr_0x0051a234:    {disp8} fld        dword ptr [esi + 0x54]                        // 0x0051a234    d94654
                         push               ecx                                           // 0x0051a237    51
                         fadd.s             st(0), st(0)                                  // 0x0051a238    dcc0
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0051a23a    8d4c2430
                         fstp               dword ptr [esp]                               // 0x0051a23e    d91c24
                         push               ecx                                           // 0x0051a241    51
                         push               ebp                                           // 0x0051a242    55
                         call               _jmp_addr_0x00519960                          // 0x0051a243    e818f7ffff
                         add                esp, 0x0c                                     // 0x0051a248    83c40c
_jmp_addr_0x0051a24b:    {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0051a24b    8b4e50
                         cmp.s              ecx, ebx                                      // 0x0051a24e    3bcb
                         {disp8} je         _jmp_addr_0x0051a2d0                          // 0x0051a250    747e
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x0051a252    8b442454
                         mov                edx, dword ptr [ecx]                          // 0x0051a256    8b11
                         push               eax                                           // 0x0051a258    50
                         call               dword ptr [edx + 0x12c]                       // 0x0051a259    ff922c010000
                         cmp                byte ptr [esp + 0x4c], bl                     // 0x0051a25f    385c244c
                         {disp8} mov        al, byte ptr [esi + 0x5c]                     // 0x0051a263    8a465c
                         {disp8} je         _jmp_addr_0x0051a299                          // 0x0051a266    7431
                         cmp.s              al, bl                                        // 0x0051a268    3ac3
                         {disp8} je         _jmp_addr_0x0051a27e                          // 0x0051a26a    7412
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0051a26c    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205d64]             // 0x0051a272    8b91645d2000
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x0051a278    89542450
                         {disp8} jmp        _jmp_addr_0x0051a286                          // 0x0051a27c    eb08
_jmp_addr_0x0051a27e:    {disp8} mov        dword ptr [esp + 0x50], 0x3f800000            // 0x0051a27e    c74424500000803f
_jmp_addr_0x0051a286:    {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0051a286    8b4e50
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x0051a289    8b542450
                         mov                eax, dword ptr [ecx]                          // 0x0051a28d    8b01
                         push               ebx                                           // 0x0051a28f    53
                         push               edx                                           // 0x0051a290    52
                         call               dword ptr [eax + 0x104]                       // 0x0051a291    ff9004010000
                         {disp8} jmp        _jmp_addr_0x0051a2d0                          // 0x0051a297    eb37
_jmp_addr_0x0051a299:    cmp.s              al, bl                                        // 0x0051a299    3ac3
                         {disp8} je         _jmp_addr_0x0051a2ae                          // 0x0051a29b    7411
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0051a29d    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205d64]             // 0x0051a2a2    8b88645d2000
                         {disp8} mov        dword ptr [esp + 0x50], ecx                   // 0x0051a2a8    894c2450
                         {disp8} jmp        _jmp_addr_0x0051a2b6                          // 0x0051a2ac    eb08
_jmp_addr_0x0051a2ae:    {disp8} mov        dword ptr [esp + 0x50], 0x3f800000            // 0x0051a2ae    c74424500000803f
_jmp_addr_0x0051a2b6:    {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0051a2b6    8b4e50
                         mov                edi, dword ptr [ecx]                          // 0x0051a2b9    8b39
                         call               dword ptr [edi + 0x130]                       // 0x0051a2bb    ff9730010000
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x0051a2c1    8b542450
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0051a2c5    8b4e50
                         push               eax                                           // 0x0051a2c8    50
                         push               edx                                           // 0x0051a2c9    52
                         call               dword ptr [edi + 0x10c]                       // 0x0051a2ca    ff970c010000
_jmp_addr_0x0051a2d0:    cmp                dword ptr [esi + 0x60], -0x01                 // 0x0051a2d0    837e60ff
                         {disp32} je        _jmp_addr_0x0051a7b6                          // 0x0051a2d4    0f84dc040000
                         {disp8} mov        eax, dword ptr [esi + 0x54]                   // 0x0051a2da    8b4654
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0051a2dd    89442448
                         cmp                dword ptr [esi + 0x30], ebx                   // 0x0051a2e1    395e30
                         {disp32} je        _jmp_addr_0x0051a7ec                          // 0x0051a2e4    0f8402050000
                         {disp32} fld       dword ptr [data_bytes + 0x222e94]             // 0x0051a2ea    d905948ebe00
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0051a2f0    d84c2418
                         {disp8} fadd       dword ptr [esi + 0x44]                        // 0x0051a2f4    d84644
                         {disp32} fld       qword ptr [rdata_bytes + 0x2b5d8]             // 0x0051a2f7    dd05d8458d00
                         call               __CIfmod                                      // 0x0051a2fd    e848dd2a00
                         {disp8} fstp       dword ptr [esi + 0x44]                        // 0x0051a302    d95e44
                         {disp32} fld       dword ptr [data_bytes + 0x222e90]             // 0x0051a305    d905908ebe00
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0051a30b    d84c2418
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x0051a30f    d84640
                         {disp32} fld       qword ptr [rdata_bytes + 0x2b5d8]             // 0x0051a312    dd05d8458d00
                         call               __CIfmod                                      // 0x0051a318    e82ddd2a00
                         xor.s              eax, eax                                      // 0x0051a31d    33c0
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x0051a31f    d95e40
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0051a322    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x0051a328    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0051a32e    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0051a331    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0051a334    8d0450
                         mov                edx, dword ptr [esi]                          // 0x0051a337    8b16
                         shl                eax, 5                                        // 0x0051a339    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0051a33c    8d7c0818
                         mov.s              ecx, esi                                      // 0x0051a340    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0051a342    ff521c
                         cmp.s              eax, edi                                      // 0x0051a345    3bc7
                         {disp8} jne        _jmp_addr_0x0051a369                          // 0x0051a347    7520
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0051a349    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0051a34f    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0051a351    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0051a357    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0051a35a    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0051a35d    8d0450
                         shl                eax, 5                                        // 0x0051a360    c1e005
                         {disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0051a363    8d440818
                         {disp8} jmp        _jmp_addr_0x0051a370                          // 0x0051a367    eb07
_jmp_addr_0x0051a369:    mov                edx, dword ptr [esi]                          // 0x0051a369    8b16
                         mov.s              ecx, esi                                      // 0x0051a36b    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x0051a36d    ff521c
_jmp_addr_0x0051a370:    {disp32} mov       edx, dword ptr [data_bytes + 0x222ea0]        // 0x0051a370    8b15a08ebe00
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a376    8b4e30
                         mov                edi, dword ptr [ecx]                          // 0x0051a379    8b39
                         and                edx, 0x000000ff                               // 0x0051a37b    81e2ff000000
                         mov.s              ecx, edx                                      // 0x0051a381    8bca
                         shl                ecx, 8                                        // 0x0051a383    c1e108
                         or.s               ecx, edx                                      // 0x0051a386    0bca
                         shl                ecx, 8                                        // 0x0051a388    c1e108
                         or.s               ecx, edx                                      // 0x0051a38b    0bca
                         push               ecx                                           // 0x0051a38d    51
                         mov.s              ecx, eax                                      // 0x0051a38e    8bc8
                         call               ?GetPlayerColour@GPlayer@@QBE?AULH3DColor@@XZ // 0x0051a390    e86b341300
                         mov.s              edx, eax                                      // 0x0051a395    8bd0
                         xor.s              eax, eax                                      // 0x0051a397    33c0
                         {disp8} mov        al, byte ptr [esi + 0x70]                     // 0x0051a399    8a4670
                         and                edx, 0x00ffffff                               // 0x0051a39c    81e2ffffff00
                         mov.s              ecx, eax                                      // 0x0051a3a2    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x0051a3a4    8b442458
                         and                eax, 0x000000ff                               // 0x0051a3a8    25ff000000
                         imul               ecx, eax                                      // 0x0051a3ad    0fafc8
                         and                ecx, 0xffffff00                               // 0x0051a3b0    81e100ffffff
                         shl                ecx, 0x10                                     // 0x0051a3b6    c1e110
                         or.s               edx, ecx                                      // 0x0051a3b9    0bd1
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a3bb    8b4e30
                         call               dword ptr [edi + 0x2c]                        // 0x0051a3be    ff572c
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0051a3c1    8b5660
                         xor.s              ebp, ebp                                      // 0x0051a3c4    33ed
                         inc                edx                                           // 0x0051a3c6    42
                         test               edx, edx                                      // 0x0051a3c7    85d2
                         {disp32} jle       _jmp_addr_0x0051a7d0                          // 0x0051a3c9    0f8e01040000
                         mov                edi, 0x3f800000                               // 0x0051a3cf    bf0000803f
_jmp_addr_0x0051a3d4:    cmp.s              ebp, ebx                                      // 0x0051a3d4    3beb
                         {disp32} fld       dword ptr [data_bytes + 0x222ea4]             // 0x0051a3d6    d905a48ebe00
                         {disp8} jne        _jmp_addr_0x0051a3e8                          // 0x0051a3dc    750a
                         fchs                                                             // 0x0051a3de    d9e0
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0051a3e0    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0051a3ee                          // 0x0051a3e6    eb06
_jmp_addr_0x0051a3e8:    {disp32} fld       dword ptr [data_bytes + 0x222ea8]             // 0x0051a3e8    d905a88ebe00
_jmp_addr_0x0051a3ee:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a3ee    8b4630
                         {disp8} mov        dword ptr [eax + 0x40], ebx                   // 0x0051a3f1    895840
                         {disp8} mov        dword ptr [eax + 0x3c], ebx                   // 0x0051a3f4    89583c
                         {disp8} mov        dword ptr [eax + 0x38], ebx                   // 0x0051a3f7    895838
                         {disp8} mov        dword ptr [eax + 0x30], ebx                   // 0x0051a3fa    895830
                         {disp8} mov        dword ptr [eax + 0x2c], ebx                   // 0x0051a3fd    89582c
                         {disp8} mov        dword ptr [eax + 0x28], ebx                   // 0x0051a400    895828
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x0051a403    895820
                         {disp8} mov        dword ptr [eax + 0x1c], ebx                   // 0x0051a406    89581c
                         {disp8} mov        dword ptr [eax + 0x18], ebx                   // 0x0051a409    895818
                         {disp8} mov        dword ptr [eax + 0x34], edi                   // 0x0051a40c    897834
                         {disp8} mov        dword ptr [eax + 0x24], edi                   // 0x0051a40f    897824
                         {disp8} mov        dword ptr [eax + 0x14], edi                   // 0x0051a412    897814
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a415    8b4e30
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x0051a418    d94120
                         {disp8} mov        edx, dword ptr [ecx + 0x2c]                   // 0x0051a41b    8b512c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0051a41e    d80d78b68a00
                         add                eax, 0x14                                     // 0x0051a424    83c014
                         {disp8} lea        eax, dword ptr [ecx + 0x2c]                   // 0x0051a427    8d412c
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0051a42a    89542438
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0051a42e    8b5004
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0051a431    d95c242c
                         {disp8} fld        dword ptr [ecx + 0x24]                        // 0x0051a435    d94124
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0051a438    8954243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0051a43c    d80d78b68a00
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0051a442    8b5008
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x0051a445    89542440
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0051a449    d95c2430
                         {disp8} fld        dword ptr [ecx + 0x28]                        // 0x0051a44d    d94128
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0051a450    8b4c242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x0051a454    d80d78b68a00
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0051a45a    8b542430
                         mov                dword ptr [eax], ecx                          // 0x0051a45e    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0051a460    895004
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0051a463    d95c2434
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0051a467    8b4c2434
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0051a46b    894808
                         {disp8} mov        edx, dword ptr [esi + 0x30]                   // 0x0051a46e    8b5630
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0051a471    8b442438
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0051a475    8b4c243c
                         add                edx, 0x20                                     // 0x0051a479    83c220
                         mov                dword ptr [edx], eax                          // 0x0051a47c    8902
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0051a47e    8b442440
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0051a482    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0051a485    894208
                         {disp8} fadd       dword ptr [esi + 0x44]                        // 0x0051a488    d84644
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a48b    8b4630
                         add                eax, 0x14                                     // 0x0051a48e    83c014
                         fld                st(0)                                         // 0x0051a491    d9c0
                         fcos                                                             // 0x0051a493    d9ff
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0051a495    d95c2450
                         fsin                                                             // 0x0051a499    d9fe
                         fld                st(0)                                         // 0x0051a49b    d9c0
                         fmul               dword ptr [eax]                               // 0x0051a49d    d808
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a49f    d9442450
                         fmul               dword ptr [eax]                               // 0x0051a4a3    d808
                         fld                st(2)                                         // 0x0051a4a5    d9c2
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0051a4a7    d84808
                         fsubp              st(1), st                                     // 0x0051a4aa    dee9
                         fstp               dword ptr [eax]                               // 0x0051a4ac    d918
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a4ae    d9442450
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0051a4b2    d84808
                         fadd               st, st(1)                                     // 0x0051a4b5    d8c1
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0051a4b7    d95808
                         fstp               st(0)                                         // 0x0051a4ba    ddd8
                         fld                st(0)                                         // 0x0051a4bc    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a4be    d8480c
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a4c1    d9442450
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a4c5    d8480c
                         fld                st(2)                                         // 0x0051a4c8    d9c2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0051a4ca    d84814
                         fsubp              st(1), st                                     // 0x0051a4cd    dee9
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0051a4cf    d9580c
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a4d2    d9442450
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0051a4d6    d84814
                         fadd               st, st(1)                                     // 0x0051a4d9    d8c1
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0051a4db    d95814
                         fstp               st(0)                                         // 0x0051a4de    ddd8
                         fld                st(0)                                         // 0x0051a4e0    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a4e2    d84818
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a4e5    d9442450
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a4e9    d84818
                         fld                st(2)                                         // 0x0051a4ec    d9c2
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0051a4ee    d84820
                         fsubp              st(1), st                                     // 0x0051a4f1    dee9
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0051a4f3    d95818
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a4f6    d9442450
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0051a4fa    d84820
                         fadd               st, st(1)                                     // 0x0051a4fd    d8c1
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0051a4ff    d95820
                         fstp               st(0)                                         // 0x0051a502    ddd8
                         fld                st(0)                                         // 0x0051a504    d9c0
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a506    d84824
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0051a509    d95c2454
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a50d    d9442450
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a511    d84824
                         fxch               st(1)                                         // 0x0051a514    d9c9
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0051a516    d8482c
                         fsubp              st(1), st                                     // 0x0051a519    dee9
                         {disp8} fstp       dword ptr [eax + 0x24]                        // 0x0051a51b    d95824
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a51e    d9442450
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0051a522    d8482c
                         {disp8} fadd       dword ptr [esp + 0x54]                        // 0x0051a525    d8442454
                         {disp8} fstp       dword ptr [eax + 0x2c]                        // 0x0051a529    d9582c
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a52c    8b4630
                         {disp32} fld       dword ptr [data_bytes + 0x222e98]             // 0x0051a52f    d905988ebe00
                         add                eax, 0x14                                     // 0x0051a535    83c014
                         fcos                                                             // 0x0051a538    d9ff
                         {disp32} fld       dword ptr [data_bytes + 0x222e98]             // 0x0051a53a    d905988ebe00
                         fsin                                                             // 0x0051a540    d9fe
                         fld                st(0)                                         // 0x0051a542    d9c0
                         fmul               dword ptr [eax]                               // 0x0051a544    d808
                         fld                st(2)                                         // 0x0051a546    d9c2
                         fmul               dword ptr [eax]                               // 0x0051a548    d808
                         fld                st(2)                                         // 0x0051a54a    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0051a54c    d84804
                         faddp              st(1), st                                     // 0x0051a54f    dec1
                         fstp               dword ptr [eax]                               // 0x0051a551    d918
                         fld                st(2)                                         // 0x0051a553    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0051a555    d84804
                         fsub               st, st(1)                                     // 0x0051a558    d8e1
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0051a55a    d95804
                         fstp               st(0)                                         // 0x0051a55d    ddd8
                         fld                st(0)                                         // 0x0051a55f    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a561    d8480c
                         fld                st(2)                                         // 0x0051a564    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a566    d8480c
                         fld                st(2)                                         // 0x0051a569    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0051a56b    d84810
                         faddp              st(1), st                                     // 0x0051a56e    dec1
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0051a570    d9580c
                         fld                st(2)                                         // 0x0051a573    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0051a575    d84810
                         fsub               st, st(1)                                     // 0x0051a578    d8e1
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0051a57a    d95810
                         fstp               st(0)                                         // 0x0051a57d    ddd8
                         fld                st(0)                                         // 0x0051a57f    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a581    d84818
                         fld                st(2)                                         // 0x0051a584    d9c2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a586    d84818
                         fld                st(2)                                         // 0x0051a589    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0051a58b    d8481c
                         faddp              st(1), st                                     // 0x0051a58e    dec1
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0051a590    d95818
                         fld                st(2)                                         // 0x0051a593    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0051a595    d8481c
                         fsub               st, st(1)                                     // 0x0051a598    d8e1
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0051a59a    d9581c
                         fstp               st(0)                                         // 0x0051a59d    ddd8
                         fld                st(0)                                         // 0x0051a59f    d9c0
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a5a1    d84824
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0051a5a4    d95c2450
                         fld                st(1)                                         // 0x0051a5a8    d9c1
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a5aa    d84824
                         fxch               st(1)                                         // 0x0051a5ad    d9c9
                         {disp8} fmul       dword ptr [eax + 0x28]                        // 0x0051a5af    d84828
                         faddp              st(1), st                                     // 0x0051a5b2    dec1
                         {disp8} fstp       dword ptr [eax + 0x24]                        // 0x0051a5b4    d95824
                         {disp8} fmul       dword ptr [eax + 0x28]                        // 0x0051a5b7    d84828
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0051a5ba    d8642450
                         {disp8} fstp       dword ptr [eax + 0x28]                        // 0x0051a5be    d95828
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a5c1    8b4630
                         add                eax, 0x14                                     // 0x0051a5c4    83c014
                         fld                st(0)                                         // 0x0051a5c7    d9c0
                         fcos                                                             // 0x0051a5c9    d9ff
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0051a5cb    d95c2450
                         fsin                                                             // 0x0051a5cf    d9fe
                         fld                st(0)                                         // 0x0051a5d1    d9c0
                         fmul               dword ptr [eax]                               // 0x0051a5d3    d808
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a5d5    d9442450
                         fmul               dword ptr [eax]                               // 0x0051a5d9    d808
                         fld                st(2)                                         // 0x0051a5db    d9c2
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0051a5dd    d84808
                         fsubp              st(1), st                                     // 0x0051a5e0    dee9
                         fstp               dword ptr [eax]                               // 0x0051a5e2    d918
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a5e4    d9442450
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0051a5e8    d84808
                         fadd               st, st(1)                                     // 0x0051a5eb    d8c1
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0051a5ed    d95808
                         fstp               st(0)                                         // 0x0051a5f0    ddd8
                         fld                st(0)                                         // 0x0051a5f2    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a5f4    d8480c
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a5f7    d9442450
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a5fb    d8480c
                         fld                st(2)                                         // 0x0051a5fe    d9c2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0051a600    d84814
                         fsubp              st(1), st                                     // 0x0051a603    dee9
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0051a605    d9580c
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a608    d9442450
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0051a60c    d84814
                         fadd               st, st(1)                                     // 0x0051a60f    d8c1
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0051a611    d95814
                         fstp               st(0)                                         // 0x0051a614    ddd8
                         fld                st(0)                                         // 0x0051a616    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a618    d84818
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a61b    d9442450
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a61f    d84818
                         fld                st(2)                                         // 0x0051a622    d9c2
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0051a624    d84820
                         fsubp              st(1), st                                     // 0x0051a627    dee9
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0051a629    d95818
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a62c    d9442450
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0051a630    d84820
                         fadd               st, st(1)                                     // 0x0051a633    d8c1
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0051a635    d95820
                         fstp               st(0)                                         // 0x0051a638    ddd8
                         fld                st(0)                                         // 0x0051a63a    d9c0
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a63c    d84824
                         {disp8} fstp       dword ptr [esp + 0x54]                        // 0x0051a63f    d95c2454
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a643    d9442450
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a647    d84824
                         fxch               st(1)                                         // 0x0051a64a    d9c9
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0051a64c    d8482c
                         fsubp              st(1), st                                     // 0x0051a64f    dee9
                         {disp8} fstp       dword ptr [eax + 0x24]                        // 0x0051a651    d95824
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0051a654    d9442450
                         {disp8} fmul       dword ptr [eax + 0x2c]                        // 0x0051a658    d8482c
                         {disp8} fadd       dword ptr [esp + 0x54]                        // 0x0051a65b    d8442454
                         {disp8} fstp       dword ptr [eax + 0x2c]                        // 0x0051a65f    d9582c
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a662    8b4630
                         {disp32} fld       dword ptr [data_bytes + 0x222eac]             // 0x0051a665    d905ac8ebe00
                         add                eax, 0x14                                     // 0x0051a66b    83c014
                         fcos                                                             // 0x0051a66e    d9ff
                         {disp32} fld       dword ptr [data_bytes + 0x222eac]             // 0x0051a670    d905ac8ebe00
                         fsin                                                             // 0x0051a676    d9fe
                         fld                st(0)                                         // 0x0051a678    d9c0
                         fmul               dword ptr [eax]                               // 0x0051a67a    d808
                         fld                st(2)                                         // 0x0051a67c    d9c2
                         fmul               dword ptr [eax]                               // 0x0051a67e    d808
                         fld                st(2)                                         // 0x0051a680    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0051a682    d84804
                         faddp              st(1), st                                     // 0x0051a685    dec1
                         fstp               dword ptr [eax]                               // 0x0051a687    d918
                         fld                st(2)                                         // 0x0051a689    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0051a68b    d84804
                         fsub               st, st(1)                                     // 0x0051a68e    d8e1
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0051a690    d95804
                         fstp               st(0)                                         // 0x0051a693    ddd8
                         fld                st(0)                                         // 0x0051a695    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a697    d8480c
                         fld                st(2)                                         // 0x0051a69a    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a69c    d8480c
                         fld                st(2)                                         // 0x0051a69f    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0051a6a1    d84810
                         faddp              st(1), st                                     // 0x0051a6a4    dec1
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0051a6a6    d9580c
                         fld                st(2)                                         // 0x0051a6a9    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0051a6ab    d84810
                         fsub               st, st(1)                                     // 0x0051a6ae    d8e1
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0051a6b0    d95810
                         fstp               st(0)                                         // 0x0051a6b3    ddd8
                         fld                st(0)                                         // 0x0051a6b5    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a6b7    d84818
                         fld                st(2)                                         // 0x0051a6ba    d9c2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a6bc    d84818
                         fld                st(2)                                         // 0x0051a6bf    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0051a6c1    d8481c
                         faddp              st(1), st                                     // 0x0051a6c4    dec1
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0051a6c6    d95818
                         fld                st(2)                                         // 0x0051a6c9    d9c2
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0051a6cb    d8481c
                         fsub               st, st(1)                                     // 0x0051a6ce    d8e1
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0051a6d0    d9581c
                         fstp               st(0)                                         // 0x0051a6d3    ddd8
                         fld                st(0)                                         // 0x0051a6d5    d9c0
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a6d7    d84824
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0051a6da    d95c2450
                         fld                st(1)                                         // 0x0051a6de    d9c1
                         {disp8} fmul       dword ptr [eax + 0x24]                        // 0x0051a6e0    d84824
                         fxch               st(1)                                         // 0x0051a6e3    d9c9
                         {disp8} fmul       dword ptr [eax + 0x28]                        // 0x0051a6e5    d84828
                         faddp              st(1), st                                     // 0x0051a6e8    dec1
                         {disp8} fstp       dword ptr [eax + 0x24]                        // 0x0051a6ea    d95824
                         {disp8} fmul       dword ptr [eax + 0x28]                        // 0x0051a6ed    d84828
                         {disp8} fsub       dword ptr [esp + 0x50]                        // 0x0051a6f0    d8642450
                         {disp8} fstp       dword ptr [eax + 0x28]                        // 0x0051a6f4    d95828
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a6f7    8b4630
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x0051a6fa    8b4e64
                         {disp8} mov        dword ptr [eax + 0x38], ecx                   // 0x0051a6fd    894838
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x0051a700    8b5668
                         {disp8} mov        dword ptr [eax + 0x3c], edx                   // 0x0051a703    89503c
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0051a706    8b4e6c
                         {disp8} mov        dword ptr [eax + 0x40], ecx                   // 0x0051a709    894840
                         {disp32} fld       dword ptr [data_bytes + 0x222e9c]             // 0x0051a70c    d9059c8ebe00
                         {disp8} fmul       dword ptr [esi + 0x58]                        // 0x0051a712    d84e58
                         {disp8} mov        edx, dword ptr [esi + 0x30]                   // 0x0051a715    8b5630
                         add                eax, 0x14                                     // 0x0051a718    83c014
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x0051a71b    d84c2448
                         {disp8} fst        dword ptr [edx + 0x44]                        // 0x0051a71f    d95244
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a722    8b4630
                         fld                st(0)                                         // 0x0051a725    d9c0
                         add                eax, 0x14                                     // 0x0051a727    83c014
                         fmul               dword ptr [eax]                               // 0x0051a72a    d808
                         fstp               dword ptr [eax]                               // 0x0051a72c    d918
                         fld                st(0)                                         // 0x0051a72e    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0051a730    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0051a733    d95804
                         fld                st(0)                                         // 0x0051a736    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0051a738    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0051a73b    d95808
                         fld                st(0)                                         // 0x0051a73e    d9c0
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0051a740    d8480c
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0051a743    d9580c
                         fld                st(0)                                         // 0x0051a746    d9c0
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0051a748    d84810
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0051a74b    d95810
                         fld                st(0)                                         // 0x0051a74e    d9c0
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0051a750    d84814
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0051a753    d95814
                         fld                st(0)                                         // 0x0051a756    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0051a758    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0051a75b    d95818
                         fld                st(0)                                         // 0x0051a75e    d9c0
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0051a760    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0051a763    d9581c
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0051a766    d84820
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0051a769    d95820
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x0051a76c    8b4630
                         add                eax, 0x14                                     // 0x0051a76f    83c014
                         push               eax                                           // 0x0051a772    50
                         call               _jmp_addr_0x0051a830                          // 0x0051a773    e8b8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a778    8b4e30
                         mov                edx, dword ptr [ecx]                          // 0x0051a77b    8b11
                         add                esp, 0x04                                     // 0x0051a77d    83c404
                         call               dword ptr [edx + 0x104]                       // 0x0051a780    ff9204010000
                         cmp                byte ptr [esp + 0x4c], bl                     // 0x0051a786    385c244c
                         {disp8} jne        _jmp_addr_0x0051a79e                          // 0x0051a78a    7512
                         cmp                ebp, dword ptr [esi + 0x60]                   // 0x0051a78c    3b6e60
                         {disp8} jne        _jmp_addr_0x0051a79e                          // 0x0051a78f    750d
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a791    8b4e30
                         mov                edx, dword ptr [ecx]                          // 0x0051a794    8b11
                         call               dword ptr [edx + 0x100]                       // 0x0051a796    ff9200010000
                         {disp8} jmp        _jmp_addr_0x0051a7a9                          // 0x0051a79c    eb0b
_jmp_addr_0x0051a79e:    {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0051a79e    8b4e30
                         mov                eax, dword ptr [ecx]                          // 0x0051a7a1    8b01
                         call               dword ptr [eax + 0x104]                       // 0x0051a7a3    ff9004010000
_jmp_addr_0x0051a7a9:    {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0051a7a9    8b4e60
                         inc                ebp                                           // 0x0051a7ac    45
                         inc                ecx                                           // 0x0051a7ad    41
                         cmp.s              ebp, ecx                                      // 0x0051a7ae    3be9
                         {disp32} jl        _jmp_addr_0x0051a3d4                          // 0x0051a7b0    0f8c1efcffff
_jmp_addr_0x0051a7b6:    {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x0051a7b6    a1f01aea00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0051a7bb    8b54241c
                         pop                edi                                           // 0x0051a7bf    5f
                         pop                esi                                           // 0x0051a7c0    5e
                         or.s               eax, edx                                      // 0x0051a7c1    0bc2
                         pop                ebp                                           // 0x0051a7c3    5d
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], eax        // 0x0051a7c4    a3f01aea00
                         pop                ebx                                           // 0x0051a7c9    5b
                         add                esp, 0x34                                     // 0x0051a7ca    83c434
                         ret                0x0010                                        // 0x0051a7cd    c21000
_jmp_addr_0x0051a7d0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbaf0]        // 0x0051a7d0    8b0df01aea00
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0051a7d6    8b44241c
                         pop                edi                                           // 0x0051a7da    5f
                         pop                esi                                           // 0x0051a7db    5e
                         or.s               ecx, eax                                      // 0x0051a7dc    0bc8
                         pop                ebp                                           // 0x0051a7de    5d
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], ecx        // 0x0051a7df    890df01aea00
                         pop                ebx                                           // 0x0051a7e5    5b
                         add                esp, 0x34                                     // 0x0051a7e6    83c434
                         ret                0x0010                                        // 0x0051a7e9    c21000
_jmp_addr_0x0051a7ec:    {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x0051a7ec    a1f01aea00
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0051a7f1    8b4c241c
                         pop                edi                                           // 0x0051a7f5    5f
                         pop                esi                                           // 0x0051a7f6    5e
                         or.s               eax, ecx                                      // 0x0051a7f7    0bc1
                         pop                ebp                                           // 0x0051a7f9    5d
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], eax        // 0x0051a7fa    a3f01aea00
                         pop                ebx                                           // 0x0051a7ff    5b
                         add                esp, 0x34                                     // 0x0051a800    83c434
                         ret                0x0010                                        // 0x0051a803    c21000

// Snippet: db, [0x0051a806, 0x0051a808)
.byte 0x8b, 0xff                  // 0x0051a806

// Snippet: jmptbl, [0x0051a808, 0x0051a828)
.byte 0xe4, 0x9d, 0x51, 0x00      // 0x0051a808
.byte 0x29, 0x9f, 0x51, 0x00      // 0x0051a80c
.byte 0x33, 0x9e, 0x51, 0x00      // 0x0051a810
.byte 0x5b, 0xa0, 0x51, 0x00      // 0x0051a814
.byte 0x5b, 0xa0, 0x51, 0x00      // 0x0051a818
.byte 0x5b, 0xa0, 0x51, 0x00      // 0x0051a81c
.byte 0x5b, 0xa0, 0x51, 0x00      // 0x0051a820
.byte 0x7d, 0x9d, 0x51, 0x00      // 0x0051a824

// Snippet: db, [0x0051a828, 0x0051a830)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051a828
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051a82c

