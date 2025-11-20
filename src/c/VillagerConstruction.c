#include "Villager.h"
void __cdecl globl_ct_0x00759070(void)
{
    asm("{disp32} jmp       _FUN_00759080__8VillagerFv");                    // 0x00759070    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00759080__8VillagerFv(void)
{
    asm("xor.s              eax, eax");                                      // 0x00759080    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dd8], eax");        // 0x00759082    a3d89ddb00
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3ddc], eax");        // 0x00759087    a3dc9ddb00
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de0], eax");        // 0x0075908c    a3e09ddb00
    asm("ret");                                                              // 0x00759091    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckForClearArea__8VillagerFRC9MapCoordsf(struct Villager* this, const void* edx, const struct MapCoords* param_1, float param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x007590a0    83ec0c
    asm("push               esi");                                           // 0x007590a3    56
    asm("mov.s              esi, ecx");                                      // 0x007590a4    8bf1
    asm("push               edi");                                           // 0x007590a6    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x007590a7    8b7c2418
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dec], 0x47c34f80"); // 0x007590ab    c705ec9ddb00804fc347
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de8], 0x00000000"); // 0x007590b5    c705e89ddb0000000000
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de4], esi");        // 0x007590bf    8935e49ddb00
    asm("{disp8} mov        eax, dword ptr [edi + 0x08]");                   // 0x007590c5    8b4708
    asm("mov.s              ecx, edi");                                      // 0x007590c8    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007590ca    89442418
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x007590ce    e8bd9f0a00
    asm("{disp8} fadd       dword ptr [esp + 0x18]");                        // 0x007590d3    d8442418
    asm("{disp32} mov       ecx, dword ptr [rdata_bytes + 0xf1944]");        // 0x007590d7    8b0d44a99900
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x007590dd    8b54241c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x007590e1    d95c240c
    asm("push               0x1");                                           // 0x007590e5    6a01
    asm("fild               dword ptr [edi]");                               // 0x007590e7    db07
    asm("push               ecx");                                           // 0x007590e9    51
    asm("push               0x007591e0");                                    // 0x007590ea    68e0917500
    asm("push               edx");                                           // 0x007590ef    52
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x007590f0    d80da4a38a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x007590f6    8d442418
    asm("push               eax");                                           // 0x007590fa    50
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x007590fb    d95c241c
    asm("{disp8} fild       dword ptr [edi + 0x04]");                        // 0x007590ff    db4704
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759102    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00759108    d95c2424
    asm("call               _jmp_addr_0x0074e4c0");                          // 0x0075910c    e8af53ffff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3de8]");        // 0x00759111    8b0de89ddb00
    asm("add                esp, 0x14");                                     // 0x00759117    83c414
    asm("test               ecx, ecx");                                      // 0x0075911a    85c9
    asm("{disp32} je        _jmp_addr_0x007591c7");                          // 0x0075911c    0f84a5000000
    asm("{disp32} fld       dword ptr [data_bytes + 0x3f3dec]");             // 0x00759122    d905ec9ddb00
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2478]");              // 0x00759128    d81d78b48a00
    asm("fnstsw             ax");                                            // 0x0075912e    dfe0
    asm("test               ah, 0x01");                                      // 0x00759130    f6c401
    asm("{disp8} je         _jmp_addr_0x00759193");                          // 0x00759133    745e
    asm("add                ecx, 0x14");                                     // 0x00759135    83c114
    asm("push               ecx");                                           // 0x00759138    51
    asm("push               edi");                                           // 0x00759139    57
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075913a    e83141ffff
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x0075913f    d95c2424
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x00759143    8b4c2424
    asm("push               ecx");                                           // 0x00759147    51
    asm("call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z");          // 0x00759148    e8e34affff
    asm("add                esp, 0x0c");                                     // 0x0075914d    83c40c
    asm("push               eax");                                           // 0x00759150    50
    asm("mov.s              ecx, esi");                                      // 0x00759151    8bce
    asm("call               @SetGameAngle__13MobileWallHugFUs@10");          // 0x00759153    e83849ebff
    asm("mov                edx, dword ptr [esi]");                          // 0x00759158    8b16
    asm("push               0x000000b9");                                    // 0x0075915a    68b9000000
    asm("mov.s              ecx, esi");                                      // 0x0075915f    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759161    ff92e8080000
    asm("push               0x1");                                           // 0x00759167    6a01
    asm("push               0x000000b9");                                    // 0x00759169    68b9000000
    asm("mov.s              ecx, esi");                                      // 0x0075916e    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00759170    e84b39e9ff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3de8]");        // 0x00759175    8b0de89ddb00
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075917b    8b01
    asm("push               esi");                                           // 0x0075917d    56
    asm("call               dword ptr [eax + 0x81c]");                       // 0x0075917e    ff901c080000
    asm("fstp               st(0)");                                         // 0x00759184    ddd8
    asm("pop                edi");                                           // 0x00759186    5f
    asm("mov                eax, 0x00000001");                               // 0x00759187    b801000000
    asm("pop                esi");                                           // 0x0075918c    5e
    asm("add                esp, 0x0c");                                     // 0x0075918d    83c40c
    asm("ret                0x0008");                                        // 0x00759190    c20800
    asm("_jmp_addr_0x00759193:");
    asm("push               0x000000b9");                                    // 0x00759193    68b9000000
    asm("push               0x00db9dd8");                                    // 0x00759198    68d89ddb00
    asm("mov.s              ecx, esi");                                      // 0x0075919d    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075919f    e8ec96e9ff
    asm("push               edi");                                           // 0x007591a4    57
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000118]");             // 0x007591a5    8d8e18010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x007591ab    e85087e8ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x007591b0    8b4c241c
    asm("pop                edi");                                           // 0x007591b4    5f
    asm("{disp32} mov       dword ptr [esi + 0x00000120], ecx");             // 0x007591b5    898e20010000
    asm("mov                eax, 0x00000001");                               // 0x007591bb    b801000000
    asm("pop                esi");                                           // 0x007591c0    5e
    asm("add                esp, 0x0c");                                     // 0x007591c1    83c40c
    asm("ret                0x0008");                                        // 0x007591c4    c20800
    asm("_jmp_addr_0x007591c7:");
    asm("pop                edi");                                           // 0x007591c7    5f
    asm("xor.s              eax, eax");                                      // 0x007591c8    33c0
    asm("pop                esi");                                           // 0x007591ca    5e
    asm("add                esp, 0x0c");                                     // 0x007591cb    83c40c
    asm("ret                0x0008");                                        // 0x007591ce    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ProcessPoint__14ClearAreaPointFRC7LHPoint(struct ClearAreaPoint* this, const void* edx, const struct LHPoint* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x007591e0    83ec18
    asm("push               esi");                                           // 0x007591e3    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x20]");                   // 0x007591e4    8b742420
    asm("fld                dword ptr [esi]");                               // 0x007591e8    d906
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x007591ea    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007591f0    e80b820400
    asm("{disp8} fld        dword ptr [esi + 0x08]");                        // 0x007591f5    d94608
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x007591f8    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007591fe    89442404
    asm("call               _jmp_addr_0x007a1400");                          // 0x00759202    e8f9810400
    asm("push               0x0");                                           // 0x00759207    6a00
    asm("push               -0x1");                                          // 0x00759209    6aff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075920b    8d4c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075920f    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00759213    c744241400000000
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x0075921b    e8a0b3eaff
    asm("mov.s              esi, eax");                                      // 0x00759220    8bf0
    asm("test               esi, esi");                                      // 0x00759222    85f6
    asm("{disp32} je        _jmp_addr_0x007592d3");                          // 0x00759224    0f84a9000000
    asm("_jmp_addr_0x0075922a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075922a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075922c    8bce
    asm("call               dword ptr [eax + 0x814]");                       // 0x0075922e    ff9014080000
    asm("test               eax, eax");                                      // 0x00759234    85c0
    asm("{disp32} je        _jmp_addr_0x007592bd");                          // 0x00759236    0f8481000000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3de4]");        // 0x0075923c    a1e49ddb00
    asm("mov                edx, dword ptr [esi]");                          // 0x00759241    8b16
    asm("push               eax");                                           // 0x00759243    50
    asm("mov.s              ecx, esi");                                      // 0x00759244    8bce
    asm("call               dword ptr [edx + 0x810]");                       // 0x00759246    ff9210080000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]");              // 0x0075924c    d81df4c38a00
    asm("fnstsw             ax");                                            // 0x00759252    dfe0
    asm("test               ah, 0x41");                                      // 0x00759254    f6c441
    asm("{disp8} jne        _jmp_addr_0x007592bd");                          // 0x00759257    7564
    asm("mov                edx, dword ptr [esi]");                          // 0x00759259    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075925b    8d442404
    asm("push               eax");                                           // 0x0075925f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00759260    8d4c2414
    asm("push               ecx");                                           // 0x00759264    51
    asm("mov.s              ecx, esi");                                      // 0x00759265    8bce
    asm("call               dword ptr [edx + 0x83c]");                       // 0x00759267    ff923c080000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3de4]");        // 0x0075926d    a1e49ddb00
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00759272    8d542410
    asm("push               edx");                                           // 0x00759276    52
    asm("add                eax, 0x14");                                     // 0x00759277    83c014
    asm("push               eax");                                           // 0x0075927a    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075927b    e8f03affff
    asm("{disp32} fcom      dword ptr [data_bytes + 0x3f3dec]");             // 0x00759280    d815ec9ddb00
    asm("add                esp, 0x08");                                     // 0x00759286    83c408
    asm("fnstsw             ax");                                            // 0x00759289    dfe0
    asm("test               ah, 0x01");                                      // 0x0075928b    f6c401
    asm("{disp8} je         _jmp_addr_0x007592bb");                          // 0x0075928e    742b
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00759290    8b4c2410
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3dec]");             // 0x00759294    d91dec9ddb00
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x0075929a    8b542414
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075929e    8b442418
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de8], esi");        // 0x007592a2    8935e89ddb00
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dd8], ecx");        // 0x007592a8    890dd89ddb00
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3ddc], edx");        // 0x007592ae    8915dc9ddb00
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de0], eax");        // 0x007592b4    a3e09ddb00
    asm("{disp8} jmp        _jmp_addr_0x007592bd");                          // 0x007592b9    eb02
    asm("_jmp_addr_0x007592bb:");
    asm("fstp               st(0)");                                         // 0x007592bb    ddd8
    asm("_jmp_addr_0x007592bd:");
    asm("push               esi");                                           // 0x007592bd    56
    asm("push               -0x1");                                          // 0x007592be    6aff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007592c0    8d4c240c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x007592c4    e8f7b2eaff
    asm("mov.s              esi, eax");                                      // 0x007592c9    8bf0
    asm("test               esi, esi");                                      // 0x007592cb    85f6
    asm("{disp32} jne       _jmp_addr_0x0075922a");                          // 0x007592cd    0f8557ffffff
    asm("_jmp_addr_0x007592d3:");
    asm("mov                eax, 0x00000001");                               // 0x007592d3    b801000000
    asm("pop                esi");                                           // 0x007592d8    5e
    asm("add                esp, 0x18");                                     // 0x007592d9    83c418
    asm("ret");                                                              // 0x007592dc    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArriveAtPushObject__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x007592e0    83ec10
    asm("push               esi");                                           // 0x007592e3    56
    asm("mov.s              esi, ecx");                                      // 0x007592e4    8bf1
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000118]");             // 0x007592e6    8d8618010000
    asm("push               eax");                                           // 0x007592ec    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007592ed    8d4c240c
    asm("call               _jmp_addr_0x00603030");                          // 0x007592f1    e83a9deaff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000120]");             // 0x007592f6    8b8e20010000
    asm("mov.s              edx, ecx");                                      // 0x007592fc    8bd1
    asm("push               edx");                                           // 0x007592fe    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007592ff    8d44240c
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00759303    894c2408
    asm("push               eax");                                           // 0x00759307    50
    asm("mov.s              ecx, esi");                                      // 0x00759308    8bce
    asm("call               ?CheckForClearArea@Villager@@QAEIABUMapCoords@@M@Z");                          // 0x0075930a    e891fdffff
    asm("cmp                eax, 0x01");                                     // 0x0075930f    83f801
    asm("{disp8} jne        _jmp_addr_0x00759319");                          // 0x00759312    7505
    asm("pop                esi");                                           // 0x00759314    5e
    asm("add                esp, 0x10");                                     // 0x00759315    83c410
    asm("ret");                                                              // 0x00759318    c3
    asm("_jmp_addr_0x00759319:");
    asm("mov.s              ecx, esi");                                      // 0x00759319    8bce
    asm("call               ?ReenterBuildingState@Villager@@QAEIXZ");        // 0x0075931b    e840fcffff
    asm("pop                esi");                                           // 0x00759320    5e
    asm("add                esp, 0x10");                                     // 0x00759321    83c410
    asm("ret");                                                              // 0x00759324    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyToBuild__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00759330    56
    asm("mov.s              esi, ecx");                                      // 0x00759331    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759333    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759335    ff5048
    asm("test               eax, eax");                                      // 0x00759338    85c0
    asm("{disp8} je         _jmp_addr_0x00759369");                          // 0x0075933a    742d
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000f2]");               // 0x0075933c    8a96f2000000
    asm("xor.s              ecx, ecx");                                      // 0x00759342    33c9
    asm("cmp                dl, 0x04");                                      // 0x00759344    80fa04
    asm("sete               cl");                                            // 0x00759347    0f94c1
    asm("push               ecx");                                           // 0x0075934a    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075934b    8d4e14
    asm("push               ecx");                                           // 0x0075934e    51
    asm("mov.s              ecx, eax");                                      // 0x0075934f    8bc8
    asm("call               ?GetBestBuildingSite@Town@@QAEIABUMapCoords@@H@Z");                          // 0x00759351    e80a3cfeff
    asm("test               eax, eax");                                      // 0x00759356    85c0
    asm("{disp8} je         _jmp_addr_0x00759369");                          // 0x00759358    740f
    asm("push               eax");                                           // 0x0075935a    50
    asm("mov.s              ecx, esi");                                      // 0x0075935b    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075935d    e84ef1ffff
    asm("cmp                eax, 0x01");                                     // 0x00759362    83f801
    asm("{disp8} jne        _jmp_addr_0x00759369");                          // 0x00759365    7502
    asm("pop                esi");                                           // 0x00759367    5e
    asm("ret");                                                              // 0x00759368    c3
    asm("_jmp_addr_0x00759369:");
    asm("xor.s              eax, eax");                                      // 0x00759369    33c0
    asm("pop                esi");                                           // 0x0075936b    5e
    asm("ret");                                                              // 0x0075936c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyToRepair__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00759370    56
    asm("mov.s              esi, ecx");                                      // 0x00759371    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759373    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759375    ff5048
    asm("test               eax, eax");                                      // 0x00759378    85c0
    asm("{disp8} je         _jmp_addr_0x00759396");                          // 0x0075937a    741a
    asm("mov.s              ecx, eax");                                      // 0x0075937c    8bc8
    asm("call               ?GetBestRepairBuildingSite@Town@@QAEIXZ");       // 0x0075937e    e81debfeff
    asm("test               eax, eax");                                      // 0x00759383    85c0
    asm("{disp8} je         _jmp_addr_0x00759396");                          // 0x00759385    740f
    asm("push               eax");                                           // 0x00759387    50
    asm("mov.s              ecx, esi");                                      // 0x00759388    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075938a    e821f1ffff
    asm("cmp                eax, 0x01");                                     // 0x0075938f    83f801
    asm("{disp8} jne        _jmp_addr_0x00759396");                          // 0x00759392    7502
    asm("pop                esi");                                           // 0x00759394    5e
    asm("ret");                                                              // 0x00759395    c3
    asm("_jmp_addr_0x00759396:");
    asm("xor.s              eax, eax");                                      // 0x00759396    33c0
    asm("pop                esi");                                           // 0x00759398    5e
    asm("ret");                                                              // 0x00759399    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfySupplyWorkshop__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007593a0    83ec0c
    asm("push               esi");                                           // 0x007593a3    56
    asm("mov.s              esi, ecx");                                      // 0x007593a4    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007593a6    8b06
    asm("push               edi");                                           // 0x007593a8    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007593a9    ff5048
    asm("test               eax, eax");                                      // 0x007593ac    85c0
    asm("{disp32} je        _jmp_addr_0x00759440");                          // 0x007593ae    0f848c000000
    asm("push               0x1");                                           // 0x007593b4    6a01
    asm("push               0x1");                                           // 0x007593b6    6a01
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007593b8    8d4e14
    asm("push               ecx");                                           // 0x007593bb    51
    asm("mov.s              ecx, eax");                                      // 0x007593bc    8bc8
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x007593be    e88d6efeff
    asm("mov.s              edi, eax");                                      // 0x007593c3    8bf8
    asm("test               edi, edi");                                      // 0x007593c5    85ff
    asm("{disp8} je         _jmp_addr_0x00759440");                          // 0x007593c7    7477
    asm("cmp                word ptr [esi + 0x000000f6], 0x00");             // 0x007593c9    6683bef600000000
    asm("{disp8} je         _jmp_addr_0x007593fb");                          // 0x007593d1    7428
    asm("mov                edx, dword ptr [edi]");                          // 0x007593d3    8b17
    asm("push               0x000000d2");                                    // 0x007593d5    68d2000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007593da    8d44240c
    asm("push               eax");                                           // 0x007593de    50
    asm("mov.s              ecx, edi");                                      // 0x007593df    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x007593e1    ff9204010000
    asm("push               eax");                                           // 0x007593e7    50
    asm("push               edi");                                           // 0x007593e8    57
    asm("mov.s              ecx, esi");                                      // 0x007593e9    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007593eb    e83049e9ff
    asm("pop                edi");                                           // 0x007593f0    5f
    asm("mov                eax, 0x00000001");                               // 0x007593f1    b801000000
    asm("pop                esi");                                           // 0x007593f6    5e
    asm("add                esp, 0x0c");                                     // 0x007593f7    83c40c
    asm("ret");                                                              // 0x007593fa    c3
    asm("_jmp_addr_0x007593fb:");
    asm("mov.s              ecx, esi");                                      // 0x007593fb    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x007593fd    e80e8bffff
    asm("mov.s              edi, eax");                                      // 0x00759402    8bf8
    asm("test               edi, edi");                                      // 0x00759404    85ff
    asm("{disp8} je         _jmp_addr_0x00759440");                          // 0x00759406    7438
    asm("mov                edx, dword ptr [edi]");                          // 0x00759408    8b17
    asm("push               0x1");                                           // 0x0075940a    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075940c    8bcf
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075940e    ff9298000000
    asm("test               eax, eax");                                      // 0x00759414    85c0
    asm("{disp8} jle        _jmp_addr_0x00759440");                          // 0x00759416    7e28
    asm("mov                eax, dword ptr [edi]");                          // 0x00759418    8b07
    asm("push               0x000000d3");                                    // 0x0075941a    68d3000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075941f    8d4c240c
    asm("push               ecx");                                           // 0x00759423    51
    asm("mov.s              ecx, edi");                                      // 0x00759424    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00759426    ff9004010000
    asm("push               eax");                                           // 0x0075942c    50
    asm("push               edi");                                           // 0x0075942d    57
    asm("mov.s              ecx, esi");                                      // 0x0075942e    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00759430    e8eb48e9ff
    asm("pop                edi");                                           // 0x00759435    5f
    asm("mov                eax, 0x00000001");                               // 0x00759436    b801000000
    asm("pop                esi");                                           // 0x0075943b    5e
    asm("add                esp, 0x0c");                                     // 0x0075943c    83c40c
    asm("ret");                                                              // 0x0075943f    c3
    asm("_jmp_addr_0x00759440:");
    asm("pop                edi");                                           // 0x00759440    5f
    asm("xor.s              eax, eax");                                      // 0x00759441    33c0
    asm("pop                esi");                                           // 0x00759443    5e
    asm("add                esp, 0x0c");                                     // 0x00759444    83c40c
    asm("ret");                                                              // 0x00759447    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtStoragePitForWorkshopMaterials__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00759450    83ec0c
    asm("push               ebx");                                           // 0x00759453    53
    asm("push               esi");                                           // 0x00759454    56
    asm("mov.s              esi, ecx");                                      // 0x00759455    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759457    8b06
    asm("push               edi");                                           // 0x00759459    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075945a    ff5048
    asm("mov.s              ebx, eax");                                      // 0x0075945d    8bd8
    asm("test               ebx, ebx");                                      // 0x0075945f    85db
    asm("{disp8} jne        _jmp_addr_0x0075946a");                          // 0x00759461    7507
    asm("pop                edi");                                           // 0x00759463    5f
    asm("pop                esi");                                           // 0x00759464    5e
    asm("pop                ebx");                                           // 0x00759465    5b
    asm("add                esp, 0x0c");                                     // 0x00759466    83c40c
    asm("ret");                                                              // 0x00759469    c3
    asm("_jmp_addr_0x0075946a:");
    asm("mov.s              ecx, esi");                                      // 0x0075946a    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075946c    e89f8affff
    asm("mov.s              edi, eax");                                      // 0x00759471    8bf8
    asm("test               edi, edi");                                      // 0x00759473    85ff
    asm("{disp32} je        _jmp_addr_0x00759500");                          // 0x00759475    0f8485000000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075947b    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075947d    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075947f    ff92d4000000
    asm("test               eax, eax");                                      // 0x00759485    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x00759487    7477
    asm("push               0x0");                                           // 0x00759489    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075948b    8bce
    asm("call               @AreWeThere__13MobileWallHugFf@12");             // 0x0075948d    e8ae18ebff
    asm("test               eax, eax");                                      // 0x00759492    85c0
    asm("{disp8} je         _jmp_addr_0x007594d7");                          // 0x00759494    7441
    asm("push               0x1");                                           // 0x00759496    6a01
    asm("push               0x1");                                           // 0x00759498    6a01
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075949a    8d4614
    asm("push               eax");                                           // 0x0075949d    50
    asm("mov.s              ecx, ebx");                                      // 0x0075949e    8bcb
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x007594a0    e8ab6dfeff
    asm("test               eax, eax");                                      // 0x007594a5    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x007594a7    7457
    asm("mov.s              ecx, esi");                                      // 0x007594a9    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x007594ab    e84080ffff
    asm("movsx              eax, ax");                                       // 0x007594b0    0fbfc0
    asm("test               eax, eax");                                      // 0x007594b3    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x007594b5    7449
    asm("push               0x000000a3");                                    // 0x007594b7    68a3000000
    asm("push               0x000000d2");                                    // 0x007594bc    68d2000000
    asm("push               eax");                                           // 0x007594c1    50
    asm("push               0x1");                                           // 0x007594c2    6a01
    asm("mov.s              ecx, esi");                                      // 0x007594c4    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                          // 0x007594c6    e805040100
    asm("pop                edi");                                           // 0x007594cb    5f
    asm("pop                esi");                                           // 0x007594cc    5e
    asm("mov                eax, 0x00000001");                               // 0x007594cd    b801000000
    asm("pop                ebx");                                           // 0x007594d2    5b
    asm("add                esp, 0x0c");                                     // 0x007594d3    83c40c
    asm("ret");                                                              // 0x007594d6    c3
    asm("_jmp_addr_0x007594d7:");
    asm("mov                edx, dword ptr [edi]");                          // 0x007594d7    8b17
    asm("push               0x000000d3");                                    // 0x007594d9    68d3000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007594de    8d442410
    asm("push               eax");                                           // 0x007594e2    50
    asm("mov.s              ecx, edi");                                      // 0x007594e3    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x007594e5    ff9204010000
    asm("push               eax");                                           // 0x007594eb    50
    asm("push               edi");                                           // 0x007594ec    57
    asm("mov.s              ecx, esi");                                      // 0x007594ed    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007594ef    e82c48e9ff
    asm("pop                edi");                                           // 0x007594f4    5f
    asm("pop                esi");                                           // 0x007594f5    5e
    asm("mov                eax, 0x00000001");                               // 0x007594f6    b801000000
    asm("pop                ebx");                                           // 0x007594fb    5b
    asm("add                esp, 0x0c");                                     // 0x007594fc    83c40c
    asm("ret");                                                              // 0x007594ff    c3
    asm("_jmp_addr_0x00759500:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759500    8b16
    asm("push               0x000000a3");                                    // 0x00759502    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759507    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759509    ff92e8080000
    asm("pop                edi");                                           // 0x0075950f    5f
    asm("pop                esi");                                           // 0x00759510    5e
    asm("mov                eax, 0x00000001");                               // 0x00759511    b801000000
    asm("pop                ebx");                                           // 0x00759516    5b
    asm("add                esp, 0x0c");                                     // 0x00759517    83c40c
    asm("ret");                                                              // 0x0075951a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtWorkshopForDropOff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00759520    83ec0c
    asm("push               ebx");                                           // 0x00759523    53
    asm("push               esi");                                           // 0x00759524    56
    asm("mov.s              esi, ecx");                                      // 0x00759525    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759527    8b06
    asm("push               edi");                                           // 0x00759529    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075952a    ff5048
    asm("test               eax, eax");                                      // 0x0075952d    85c0
    asm("{disp8} jne        _jmp_addr_0x00759538");                          // 0x0075952f    7507
    asm("pop                edi");                                           // 0x00759531    5f
    asm("pop                esi");                                           // 0x00759532    5e
    asm("pop                ebx");                                           // 0x00759533    5b
    asm("add                esp, 0x0c");                                     // 0x00759534    83c40c
    asm("ret");                                                              // 0x00759537    c3
    asm("_jmp_addr_0x00759538:");
    asm("push               0x1");                                           // 0x00759538    6a01
    asm("push               0x1");                                           // 0x0075953a    6a01
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075953c    8d4e14
    asm("push               ecx");                                           // 0x0075953f    51
    asm("mov.s              ecx, eax");                                      // 0x00759540    8bc8
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x00759542    e8096dfeff
    asm("mov.s              edi, eax");                                      // 0x00759547    8bf8
    asm("test               edi, edi");                                      // 0x00759549    85ff
    asm("{disp8} je         _jmp_addr_0x00759591");                          // 0x0075954b    7444
    asm("mov                edx, dword ptr [edi]");                          // 0x0075954d    8b17
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075954f    8b1e
    asm("push               0x0");                                           // 0x00759551    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00759553    8d442410
    asm("push               eax");                                           // 0x00759557    50
    asm("mov.s              ecx, edi");                                      // 0x00759558    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x0075955a    ff9204010000
    asm("push               eax");                                           // 0x00759560    50
    asm("mov.s              ecx, esi");                                      // 0x00759561    8bce
    asm("call               dword ptr [ebx + 0x85c]");                       // 0x00759563    ff935c080000
    asm("test               eax, eax");                                      // 0x00759569    85c0
    asm("{disp8} je         _jmp_addr_0x007595ac");                          // 0x0075956b    743f
    asm("movsx              ebx, word ptr [esi + 0x000000f6]");              // 0x0075956d    0fbf9ef6000000
    asm("push               ebx");                                           // 0x00759574    53
    asm("mov.s              ecx, esi");                                      // 0x00759575    8bce
    asm("call               ?DropWood@Villager@@QAEGG@Z");                   // 0x00759577    e8c47cffff
    asm("mov                edx, dword ptr [edi]");                          // 0x0075957c    8b17
    asm("push               0x0");                                           // 0x0075957e    6a00
    asm("push               0x0");                                           // 0x00759580    6a00
    asm("push               0x0");                                           // 0x00759582    6a00
    asm("push               0x0");                                           // 0x00759584    6a00
    asm("push               ebx");                                           // 0x00759586    53
    asm("push               0x1");                                           // 0x00759587    6a01
    asm("mov.s              ecx, edi");                                      // 0x00759589    8bcf
    asm("call               dword ptr [edx + 0x9c]");                        // 0x0075958b    ff929c000000
    asm("_jmp_addr_0x00759591:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759591    8b16
    asm("push               0x000000a3");                                    // 0x00759593    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759598    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075959a    ff92e8080000
    asm("pop                edi");                                           // 0x007595a0    5f
    asm("pop                esi");                                           // 0x007595a1    5e
    asm("mov                eax, 0x00000001");                               // 0x007595a2    b801000000
    asm("pop                ebx");                                           // 0x007595a7    5b
    asm("add                esp, 0x0c");                                     // 0x007595a8    83c40c
    asm("ret");                                                              // 0x007595ab    c3
    asm("_jmp_addr_0x007595ac:");
    asm("mov                eax, dword ptr [edi]");                          // 0x007595ac    8b07
    asm("push               0x000000d2");                                    // 0x007595ae    68d2000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x007595b3    8d4c2410
    asm("push               ecx");                                           // 0x007595b7    51
    asm("mov.s              ecx, edi");                                      // 0x007595b8    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x007595ba    ff9004010000
    asm("push               eax");                                           // 0x007595c0    50
    asm("push               edi");                                           // 0x007595c1    57
    asm("mov.s              ecx, esi");                                      // 0x007595c2    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007595c4    e85747e9ff
    asm("pop                edi");                                           // 0x007595c9    5f
    asm("pop                esi");                                           // 0x007595ca    5e
    asm("mov                eax, 0x00000001");                               // 0x007595cb    b801000000
    asm("pop                ebx");                                           // 0x007595d0    5b
    asm("add                esp, 0x0c");                                     // 0x007595d1    83c40c
    asm("ret");                                                              // 0x007595d4    c3
    __builtin_unreachable();
}

uint32_t __fastcall CheckForScaffoldForBuildingSite__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    return 0x2b;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScaffoldValid__8VillagerFv(struct Villager* this)
{
    asm("xor.s              al, al");                                        // 0x007595f0    32c0
    asm("ret");                                                              // 0x007595f2    c3
    __builtin_unreachable();
}

bool32_t __fastcall ExitBringScaffoldToBuildingSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    return 1;
}

struct MapCoords* __fastcall GetPosForPushObject__8VillagerFP6ObjectR9MapCoords(struct Villager* this, const void* edx, struct Object* param_1, struct MapCoords* param_2)
{
    asm("sub                esp, 0x28");                                     // 0x00759610    83ec28
    asm("push               esi");                                           // 0x00759613    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x38]");                   // 0x00759614    8b742438
    asm("{disp8} mov        eax, dword ptr [esi + 0x08]");                   // 0x00759618    8b4608
    asm("push               edi");                                           // 0x0075961b    57
    asm("mov.s              edi, ecx");                                      // 0x0075961c    8bf9
    asm("mov.s              ecx, esi");                                      // 0x0075961e    8bce
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x00759620    8944243c
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00759624    e8679a0a00
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x00759629    d844243c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                   // 0x0075962d    8b4c2438
    asm("mov                edx, dword ptr [ecx]");                          // 0x00759631    8b11
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00759633    d95c2428
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00759637    8d442408
    asm("fild               dword ptr [esi]");                               // 0x0075963b    db06
    asm("push               eax");                                           // 0x0075963d    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x0075963e    8d44241c
    asm("push               eax");                                           // 0x00759642    50
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759643    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00759649    d95c242c
    asm("{disp8} fild       dword ptr [esi + 0x04]");                        // 0x0075964d    db4604
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759650    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x34]");                        // 0x00759656    d95c2434
    asm("call               dword ptr [edx + 0x798]");                       // 0x0075965a    ff9298070000
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00759660    d9442418
    asm("mov                edx, dword ptr [edi]");                          // 0x00759664    8b17
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x00759666    d8642424
    asm("mov.s              ecx, edi");                                      // 0x0075966a    8bcf
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075966c    d95c240c
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00759670    d944241c
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x00759674    d8642428
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00759678    d95c2410
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075967c    d9442420
    asm("{disp8} fsub       dword ptr [esp + 0x2c]");                        // 0x00759680    d864242c
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00759684    d95c2414
    asm("call               dword ptr [edx + 0x60]");                        // 0x00759688    ff5260
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x0075968b    d8442408
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0075968f    d95c243c
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00759693    d944240c
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x00759697    d81598a38a00
    asm("fnstsw             ax");                                            // 0x0075969d    dfe0
    asm("test               ah, 0x40");                                      // 0x0075969f    f6c440
    asm("{disp8} je         _jmp_addr_0x007596c6");                          // 0x007596a2    7422
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x007596a4    d9442410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007596a8    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007596ae    dfe0
    asm("test               ah, 0x40");                                      // 0x007596b0    f6c440
    asm("{disp8} je         _jmp_addr_0x007596c6");                          // 0x007596b3    7411
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596b5    d9442414
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007596b9    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007596bf    dfe0
    asm("test               ah, 0x40");                                      // 0x007596c1    f6c440
    asm("{disp8} jne        _jmp_addr_0x007596f4");                          // 0x007596c4    752e
    asm("_jmp_addr_0x007596c6:");
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596c6    d9442414
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x007596ca    d84c2414
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x007596ce    d9442410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x007596d2    d84c2410
    asm("faddp              st(1), st");                                     // 0x007596d6    dec1
    asm("fld                st(1)");                                         // 0x007596d8    d9c1
    asm("fmul               st, st(2)");                                     // 0x007596da    d8ca
    asm("faddp              st(1), st");                                     // 0x007596dc    dec1
    asm("fsqrt");                                                            // 0x007596de    d9fa
    asm("{disp8} fdivr      dword ptr [esp + 0x3c]");                        // 0x007596e0    d87c243c
    asm("fld                st(0)");                                         // 0x007596e4    d9c0
    asm("fmulp              st(2), st");                                     // 0x007596e6    deca
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596e8    d9442414
    asm("fmul               st, st(1)");                                     // 0x007596ec    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x007596ee    d95c2414
    asm("fstp               st(0)");                                         // 0x007596f2    ddd8
    asm("_jmp_addr_0x007596f4:");
    asm("{disp8} fadd       dword ptr [esp + 0x18]");                        // 0x007596f4    d8442418
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x007596f8    d9442420
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x007596fc    d8442414
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00759700    d95c2420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00759704    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075970a    e8f17c0400
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075970f    d9442420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00759713    d80d00c48a00
    asm("mov.s              esi, eax");                                      // 0x00759719    8bf0
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075971b    e8e07c0400
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x00759720    8b4c2434
    asm("mov.s              edx, ecx");                                      // 0x00759724    8bd1
    asm("mov                dword ptr [edx], esi");                          // 0x00759726    8932
    asm("{disp8} mov        dword ptr [edx + 0x04], eax");                   // 0x00759728    894204
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0x00000000");            // 0x0075972b    c744242c00000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x00759733    8b44242c
    asm("pop                edi");                                           // 0x00759737    5f
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x00759738    894208
    asm("mov.s              eax, ecx");                                      // 0x0075973b    8bc1
    asm("pop                esi");                                           // 0x0075973d    5e
    asm("add                esp, 0x28");                                     // 0x0075973e    83c428
    asm("ret                0x000c");                                        // 0x00759741    c20c00
    __builtin_unreachable();
}

bool32_t __fastcall EnterBuilding__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("push               esi");                                           // 0x00759750    56
    asm("mov.s              esi, ecx");                                      // 0x00759751    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759753    8b06
    asm("push               edi");                                           // 0x00759755    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000fc]");             // 0x00759756    8bbefc000000
    asm("push               edi");                                           // 0x0075975c    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075975d    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00759760    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00759762    e89937feff
    asm("test               eax, eax");                                      // 0x00759767    85c0
    asm("{disp8} jne        _jmp_addr_0x00759770");                          // 0x00759769    7505
    asm("pop                edi");                                           // 0x0075976b    5f
    asm("pop                esi");                                           // 0x0075976c    5e
    asm("ret                0x0008");                                        // 0x0075976d    c20800
    asm("_jmp_addr_0x00759770:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00759770    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00759774    8b54240c
    asm("and                ecx, 0x000000ff");                               // 0x00759778    81e1ff000000
    asm("push               ecx");                                           // 0x0075977e    51
    asm("and                edx, 0x000000ff");                               // 0x0075977f    81e2ff000000
    asm("push               edx");                                           // 0x00759785    52
    asm("mov.s              ecx, esi");                                      // 0x00759786    8bce
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");                          // 0x00759788    e8438dffff
    asm("test               eax, eax");                                      // 0x0075978d    85c0
    asm("{disp8} jne        _jmp_addr_0x00759799");                          // 0x0075978f    7508
    asm("push               esi");                                           // 0x00759791    56
    asm("mov.s              ecx, edi");                                      // 0x00759792    8bcf
    asm("call               _jmp_addr_0x0043be40");                          // 0x00759794    e8a726ceff
    asm("_jmp_addr_0x00759799:");
    asm("pop                edi");                                           // 0x00759799    5f
    asm("mov                eax, 0x00000001");                               // 0x0075979a    b801000000
    asm("pop                esi");                                           // 0x0075979f    5e
    asm("ret                0x0008");                                        // 0x007597a0    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitBuilding__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x007597b0    56
    asm("mov.s              esi, ecx");                                      // 0x007597b1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007597b3    8b4c2408
    asm("mov                eax, dword ptr [esi]");                          // 0x007597b7    8b06
    asm("and                ecx, 0x000000ff");                               // 0x007597b9    81e1ff000000
    asm("push               ecx");                                           // 0x007597bf    51
    asm("mov.s              ecx, esi");                                      // 0x007597c0    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x007597c2    ff906c090000
    asm("test               eax, eax");                                      // 0x007597c8    85c0
    asm("{disp8} jne        _jmp_addr_0x00759806");                          // 0x007597ca    753a
    asm("mov                edx, dword ptr [esi]");                          // 0x007597cc    8b16
    asm("mov.s              ecx, esi");                                      // 0x007597ce    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007597d0    ff5248
    asm("test               eax, eax");                                      // 0x007597d3    85c0
    asm("{disp8} je         _jmp_addr_0x007597fc");                          // 0x007597d5    7425
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000fc]");             // 0x007597d7    8b86fc000000
    asm("push               eax");                                           // 0x007597dd    50
    asm("mov                eax, dword ptr [esi]");                          // 0x007597de    8b06
    asm("mov.s              ecx, esi");                                      // 0x007597e0    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007597e2    ff5048
    asm("mov.s              ecx, eax");                                      // 0x007597e5    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x007597e7    e81437feff
    asm("test               eax, eax");                                      // 0x007597ec    85c0
    asm("{disp8} je         _jmp_addr_0x007597fc");                          // 0x007597ee    740c
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x007597f0    8b8efc000000
    asm("push               esi");                                           // 0x007597f6    56
    asm("call               _jmp_addr_0x0043be90");                          // 0x007597f7    e89426ceff
    asm("_jmp_addr_0x007597fc:");
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], 0x00000000");      // 0x007597fc    c786fc00000000000000
    asm("_jmp_addr_0x00759806:");
    asm("mov                eax, 0x00000001");                               // 0x00759806    b801000000
    asm("pop                esi");                                           // 0x0075980b    5e
    asm("ret                0x0004");                                        // 0x0075980c    c20400
    __builtin_unreachable();
}
