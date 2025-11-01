#include "Villager.h"

__attribute__((XOR32rr_REV))
bool __fastcall MakeVillagesMeet__8VillagerFP8Villager15VILLAGER_STATESf(struct Villager* this, const void* edx, struct Villager* param_1, enum VILLAGER_STATES param_2, float param_3)
{
    asm("sub                esp, 0x18");                                     // 0x00752690    83ec18
    asm("push               esi");                                           // 0x00752693    56
    asm("mov.s              esi, ecx");                                      // 0x00752694    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");                   // 0x00752696    8b4c2428
    asm("mov                eax, dword ptr [esi]");                          // 0x0075269a    8b06
    asm("push               edi");                                           // 0x0075269c    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x24]");                   // 0x0075269d    8b7c2424
    asm("push               ecx");                                           // 0x007526a1    51
    asm("push               edi");                                           // 0x007526a2    57
    asm("mov.s              ecx, esi");                                      // 0x007526a3    8bce
    asm("call               dword ptr [eax + 0x6b8]");                       // 0x007526a5    ff90b8060000
    asm("test               eax, eax");                                      // 0x007526ab    85c0
    asm("{disp8} je         _jmp_addr_0x007526db");                          // 0x007526ad    742c
    asm("push               edi");                                           // 0x007526af    57
    asm("mov.s              ecx, esi");                                      // 0x007526b0    8bce
    asm("call               ?MakeVillagerFaceObject@Villager@@QAE_NPAVObject@@@Z");                          // 0x007526b2    e8a9000000
    asm("push               esi");                                           // 0x007526b7    56
    asm("mov.s              ecx, edi");                                      // 0x007526b8    8bcf
    asm("call               ?MakeVillagerFaceObject@Villager@@QAE_NPAVObject@@@Z");                          // 0x007526ba    e8a1000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                   // 0x007526bf    8b442428
    asm("mov                edx, dword ptr [esi]");                          // 0x007526c3    8b16
    asm("push               eax");                                           // 0x007526c5    50
    asm("mov.s              ecx, esi");                                      // 0x007526c6    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007526c8    ff92e8080000
    asm("pop                edi");                                           // 0x007526ce    5f
    asm("mov                eax, 0x00000001");                               // 0x007526cf    b801000000
    asm("pop                esi");                                           // 0x007526d4    5e
    asm("add                esp, 0x18");                                     // 0x007526d5    83c418
    asm("ret                0x000c");                                        // 0x007526d8    c20c00
    asm("_jmp_addr_0x007526db:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]");                   // 0x007526db    8b4c242c
    asm("push               ebx");                                           // 0x007526df    53
    asm("push               ebp");                                           // 0x007526e0    55
    asm("push               ecx");                                           // 0x007526e1    51
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                   // 0x007526e2    8d5f14
    asm("push               ebx");                                           // 0x007526e5    53
    asm("{disp8} lea        ebp, dword ptr [esi + 0x14]");                   // 0x007526e6    8d6e14
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x007526e9    8d542418
    asm("push               ebp");                                           // 0x007526ed    55
    asm("push               edx");                                           // 0x007526ee    52
    asm("call               ?GetMidPoint@GUtils@@SAXAAUMapCoords@@0M@Z");    // 0x007526ef    e8ccc5ffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x40]");                   // 0x007526f4    8b442440
    asm("add                esp, 0x10");                                     // 0x007526f8    83c410
    asm("push               eax");                                           // 0x007526fb    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007526fc    8d4c2414
    asm("push               ecx");                                           // 0x00752700    51
    asm("mov.s              ecx, esi");                                      // 0x00752701    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00752703    e8f8100100
    asm("{disp8} mov        edx, dword ptr [esp + 0x34]");                   // 0x00752708    8b542434
    asm("push               edx");                                           // 0x0075270c    52
    asm("push               ebp");                                           // 0x0075270d    55
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075270e    8d442424
    asm("push               ebx");                                           // 0x00752712    53
    asm("push               eax");                                           // 0x00752713    50
    asm("call               ?GetMidPoint@GUtils@@SAXAAUMapCoords@@0M@Z");    // 0x00752714    e8a7c5ffff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00752719    8b08
    asm("{disp8} mov        dword ptr [esp + 0x20], ecx");                   // 0x0075271b    894c2420
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075271f    8b5004
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00752722    8b4c2440
    asm("add                esp, 0x10");                                     // 0x00752726    83c410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00752729    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075272d    8b4008
    asm("push               ecx");                                           // 0x00752730    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x00752731    8d542414
    asm("push               edx");                                           // 0x00752735    52
    asm("mov.s              ecx, edi");                                      // 0x00752736    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00752738    89442420
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075273c    e8bf100100
    asm("pop                ebp");                                           // 0x00752741    5d
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");             // 0x00752742    89b718010000
    asm("pop                ebx");                                           // 0x00752748    5b
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x00752749    89be18010000
    asm("pop                edi");                                           // 0x0075274f    5f
    asm("xor.s              eax, eax");                                      // 0x00752750    33c0
    asm("pop                esi");                                           // 0x00752752    5e
    asm("add                esp, 0x18");                                     // 0x00752753    83c418
    asm("ret                0x000c");                                        // 0x00752756    c20c00
    __builtin_unreachable();
}

bool __fastcall MakeVillagerFaceObject__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00752760    8b442404
    asm("push               esi");                                           // 0x00752764    56
    asm("mov.s              esi, ecx");                                      // 0x00752765    8bf1
    asm("add                eax, 0x14");                                     // 0x00752767    83c014
    asm("push               eax");                                           // 0x0075276a    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075276b    8d4e14
    asm("push               ecx");                                           // 0x0075276e    51
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075276f    e8fcaaffff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752774    d95c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00752778    8b542410
    asm("push               edx");                                           // 0x0075277c    52
    asm("call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z");          // 0x0075277d    e8aeb4ffff
    asm("add                esp, 0x0c");                                     // 0x00752782    83c40c
    asm("push               eax");                                           // 0x00752785    50
    asm("mov.s              ecx, esi");                                      // 0x00752786    8bce
    asm("call               @SetGameAngle__13MobileWallHugFUs@10");          // 0x00752788    e803b3ebff
    asm("mov                eax, 0x00000001");                               // 0x0075278d    b801000000
    asm("pop                esi");                                           // 0x00752792    5e
    asm("ret                0x0004");                                        // 0x00752793    c20400
    __builtin_unreachable();
}

int __fastcall ExitReaction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("push               esi");                                           // 0x007527a0    56
    asm("mov.s              esi, ecx");                                      // 0x007527a1    8bf1
    asm("push               esi");                                           // 0x007527a3    56
    asm("{disp8} lea        ecx, dword ptr [esi + 0x70]");                   // 0x007527a4    8d4e70
    asm("call               _jmp_addr_0x0060a9f0");                          // 0x007527a7    e84482ebff
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007527ac    8b442408
    asm("and                eax, 0x000000ff");                               // 0x007527b0    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x007527b5    8d0c40
    asm("shl                ecx, 3");                                        // 0x007527b8    c1e103
    asm("sub.s              ecx, eax");                                      // 0x007527bb    2bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007527bd    8d0449
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f30]");       // 0x007527c0    8b0c85309fdb00
    asm("test               ecx, ecx");                                      // 0x007527c7    85c9
    asm("{disp8} jne        _jmp_addr_0x007527d5");                          // 0x007527c9    750a
    asm("mov                edx, dword ptr [esi]");                          // 0x007527cb    8b16
    asm("mov.s              ecx, esi");                                      // 0x007527cd    8bce
    asm("call               dword ptr [edx + 0x998]");                       // 0x007527cf    ff9298090000
    asm("_jmp_addr_0x007527d5:");
    asm("mov                eax, 0x00000001");                               // 0x007527d5    b801000000
    asm("pop                esi");                                           // 0x007527da    5e
    asm("ret                0x0004");                                        // 0x007527db    c20400
    __builtin_unreachable();
}

bool __fastcall ExitDance__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               ebx");                                           // 0x007527e0    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x007527e1    8b5c2408
    asm("push               esi");                                           // 0x007527e5    56
    asm("mov.s              esi, ecx");                                      // 0x007527e6    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007527e8    8b06
    asm("mov.s              ecx, ebx");                                      // 0x007527ea    8bcb
    asm("and                ecx, 0x000000ff");                               // 0x007527ec    81e1ff000000
    asm("push               ecx");                                           // 0x007527f2    51
    asm("mov.s              ecx, esi");                                      // 0x007527f3    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x007527f5    ff906c090000
    asm("test               eax, eax");                                      // 0x007527fb    85c0
    asm("{disp8} jne        _jmp_addr_0x00752810");                          // 0x007527fd    7511
    asm("cmp                bl, 0x05");                                      // 0x007527ff    80fb05
    asm("{disp8} je         _jmp_addr_0x00752810");                          // 0x00752802    740c
    asm("mov                edx, dword ptr [esi]");                          // 0x00752804    8b16
    asm("push               0x1");                                           // 0x00752806    6a01
    asm("mov.s              ecx, esi");                                      // 0x00752808    8bce
    asm("call               dword ptr [edx + 0xb08]");                       // 0x0075280a    ff92080b0000
    asm("_jmp_addr_0x00752810:");
    asm("pop                esi");                                           // 0x00752810    5e
    asm("mov                eax, 0x00000001");                               // 0x00752811    b801000000
    asm("pop                ebx");                                           // 0x00752816    5b
    asm("ret                0x0004");                                        // 0x00752817    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailableForWorshipSite__8VillagerFi(struct Villager* this, const void* edx, int param_1)
{
    asm("push               esi");                                           // 0x00752820    56
    asm("mov.s              esi, ecx");                                      // 0x00752821    8bf1
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x00752823    e868faffff
    asm("test               eax, eax");                                      // 0x00752828    85c0
    asm("{disp8} je         _jmp_addr_0x00752858");                          // 0x0075282a    742c
    asm("xor.s              eax, eax");                                      // 0x0075282c    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x0075282e    668b86e0000000
    asm("shr                eax, 9");                                        // 0x00752835    c1e809
    asm("test               al, 0x01");                                      // 0x00752838    a801
    asm("{disp8} je         _jmp_addr_0x00752844");                          // 0x0075283a    7408
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0075283c    8b442408
    asm("test               eax, eax");                                      // 0x00752840    85c0
    asm("{disp8} je         _jmp_addr_0x00752858");                          // 0x00752842    7414
    asm("_jmp_addr_0x00752844:");
    asm("mov.s              ecx, esi");                                      // 0x00752844    8bce
    asm("call               ?IsAtOrOnTheWayToWorshipSite@Villager@@QAE_NXZ");// 0x00752846    e815000000
    asm("test               eax, eax");                                      // 0x0075284b    85c0
    asm("{disp8} jne        _jmp_addr_0x00752858");                          // 0x0075284d    7509
    asm("mov                eax, 0x00000001");                               // 0x0075284f    b801000000
    asm("pop                esi");                                           // 0x00752854    5e
    asm("ret                0x0004");                                        // 0x00752855    c20400
    asm("_jmp_addr_0x00752858:");
    asm("xor.s              eax, eax");                                      // 0x00752858    33c0
    asm("pop                esi");                                           // 0x0075285a    5e
    asm("ret                0x0004");                                        // 0x0075285b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAtOrOnTheWayToWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00752860    56
    asm("mov.s              esi, ecx");                                      // 0x00752861    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00752863    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00752865    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x0075286b    25ff000000
    asm("cmp                eax, 0x000000c9");                               // 0x00752870    3dc9000000
    asm("{disp8} je         _jmp_addr_0x00752885");                          // 0x00752875    740e
    asm("cmp                eax, 0x000000ca");                               // 0x00752877    3dca000000
    asm("{disp8} je         _jmp_addr_0x00752885");                          // 0x0075287c    7407
    asm("cmp                eax, 0x000000fb");                               // 0x0075287e    3dfb000000
    asm("{disp8} jne        _jmp_addr_0x0075288d");                          // 0x00752883    7508
    asm("_jmp_addr_0x00752885:");
    asm("xor.s              eax, eax");                                      // 0x00752885    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008e]");               // 0x00752887    8a868e000000
    asm("_jmp_addr_0x0075288d:");
    asm("test               byte ptr [esi + 0x000000e0], 0x02");             // 0x0075288d    f686e000000002
    asm("pop                esi");                                           // 0x00752894    5e
    asm("{disp8} jne        _jmp_addr_0x007528a4");                          // 0x00752895    750d
    asm("cmp                eax, 0x3b");                                     // 0x00752897    83f83b
    asm("{disp8} je         _jmp_addr_0x007528a4");                          // 0x0075289a    7408
    asm("cmp                eax, 0x2e");                                     // 0x0075289c    83f82e
    asm("{disp8} je         _jmp_addr_0x007528a4");                          // 0x0075289f    7403
    asm("xor.s              eax, eax");                                      // 0x007528a1    33c0
    asm("ret");                                                              // 0x007528a3    c3
    asm("_jmp_addr_0x007528a4:");
    asm("mov                eax, 0x00000001");                               // 0x007528a4    b801000000
    asm("ret");                                                              // 0x007528a9    c3
    __builtin_unreachable();
}

uint32_t __fastcall DebugShowTime__8VillagerFUlUcUc(struct Living* this, const void* edx, uint32_t param_1, uint8_t param_2, uint8_t param_3)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x007528b0    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007528b2    ff90040b0000
    asm("ret                0x000c");                                        // 0x007528b8    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetAge__8VillagerFUl(struct Living* this, const void* edx, uint32_t age)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x3e0bcc]");          // 0x007528c0    a0cc6bda00
    asm("test               al, 0x01");                                      // 0x007528c5    a801
    asm("push               ebx");                                           // 0x007528c7    53
    asm("push               ebp");                                           // 0x007528c8    55
    asm("push               esi");                                           // 0x007528c9    56
    asm("push               edi");                                           // 0x007528ca    57
    asm("mov.s              esi, ecx");                                      // 0x007528cb    8bf1
    asm("{disp8} jne        _jmp_addr_0x007528f6");                          // 0x007528cd    7527
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x007528cf    8b0d34fee900
    asm("mov.s              bl, al");                                        // 0x007528d5    8ad8
    asm("or                 bl, 1");                                         // 0x007528d7    80cb01
    asm("{disp32} mov       byte ptr [data_bytes + 0x3e0bcc], bl");          // 0x007528da    881dcc6bda00
    asm("mov                edx, dword ptr [ecx]");                          // 0x007528e0    8b11
    asm("mov                eax, 0x000001ff");                               // 0x007528e2    b8ff010000
    asm("cmp.s              edx, eax");                                      // 0x007528e7    3bd0
    asm("{disp8} jg         _jmp_addr_0x007528ed");                          // 0x007528e9    7f02
    asm("xor.s              eax, eax");                                      // 0x007528eb    33c0
    asm("_jmp_addr_0x007528ed:");
    asm("{disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x007528ed    8b448104
    asm("{disp32} mov       dword ptr [data_bytes + 0x3e0bc8], eax");        // 0x007528f1    a3c86bda00
    asm("_jmp_addr_0x007528f6:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007528f6    8b4e28
    asm("{disp32} mov       edi, dword ptr [ecx + 0x00000138]");             // 0x007528f9    8bb938010000
    asm("{disp8} mov        ebx, dword ptr [esp + 0x14]");                   // 0x007528ff    8b5c2414
    asm("cmp.s              ebx, edi");                                      // 0x00752903    3bdf
    asm(".byte              0x72, 0x12");// {disp8} jb _jmp_addr_0x00752919  // 0x00752905    7212
    asm("cmp                ebx, 0x12");                                     // 0x00752907    83fb12
    asm("{disp8} jae        _jmp_addr_0x00752911");                          // 0x0075290a    7305
    asm("mov                ebx, 0x00000012");                               // 0x0075290c    bb12000000
    asm("_jmp_addr_0x00752911:");
    asm("cmp.s              ebx, edi");                                      // 0x00752911    3bdf
    asm("{disp32} jae       _jmp_addr_0x007529b6");                          // 0x00752913    0f839d000000
    asm("_jmp_addr_0x00752919:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00752919    8b16
    asm("or                 byte ptr [esi + 0xe0], 8");                      // 0x0075291b    808ee000000008
    asm("mov.s              ecx, esi");                                      // 0x00752922    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00752924    ff92d0080000
    asm("cmp.s              eax, edi");                                      // 0x0075292a    3bc7
    asm("{disp32} jb        _jmp_addr_0x00752a62");                          // 0x0075292c    0f8230010000
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                   // 0x00752932    8b4640
    asm("test               eax, eax");                                      // 0x00752935    85c0
    asm("{disp32} je        _jmp_addr_0x00752a62");                          // 0x00752937    0f8425010000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075293d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075293f    8bce
    asm("call               dword ptr [eax + 0x4a0]");                       // 0x00752941    ff90a0040000
    asm("test               eax, eax");                                      // 0x00752947    85c0
    asm("{disp8} je         _jmp_addr_0x00752963");                          // 0x00752949    7418
    asm("_jmp_addr_0x0075294b:");
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x3e0bc8]");        // 0x0075294b    8b15c86bda00
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00752951    8b4e40
    asm("mov                eax, dword ptr [ecx]");                          // 0x00752954    8b01
    asm("push               edx");                                           // 0x00752956    52
    asm("push               edx");                                           // 0x00752957    52
    asm("call               dword ptr [eax + 0xf4]");                        // 0x00752958    ff90f4000000
    asm("{disp32} jmp       _jmp_addr_0x00752a62");                          // 0x0075295e    e9ff000000
    asm("_jmp_addr_0x00752963:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00752963    8b4e28
    asm("{disp32} mov       eax, dword ptr [ecx + 0x0000020c]");             // 0x00752966    8b810c020000
    asm("test               eax, eax");                                      // 0x0075296c    85c0
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x0075296e    8b1534fee900
    asm("{disp8} jl         _jmp_addr_0x0075297a");                          // 0x00752974    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x00752976    3b02
    asm("{disp8} jl         _jmp_addr_0x0075297c");                          // 0x00752978    7c02
    asm("_jmp_addr_0x0075297a:");
    asm("xor.s              eax, eax");                                      // 0x0075297a    33c0
    asm("_jmp_addr_0x0075297c:");
    asm("{disp8} mov        eax, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x0075297c    8b448204
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00752980    89442414
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000208]");             // 0x00752984    8b8108020000
    asm("test               eax, eax");                                      // 0x0075298a    85c0
    asm("{disp8} jl         _jmp_addr_0x00752992");                          // 0x0075298c    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x0075298e    3b02
    asm("{disp8} jl         _jmp_addr_0x00752994");                          // 0x00752990    7c02
    asm("_jmp_addr_0x00752992:");
    asm("xor.s              eax, eax");                                      // 0x00752992    33c0
    asm("_jmp_addr_0x00752994:");
    asm("{disp8} mov        edi, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x00752994    8b7c8204
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000204]");             // 0x00752998    8b8104020000
    asm("test               eax, eax");                                      // 0x0075299e    85c0
    asm("{disp8} jl         _jmp_addr_0x007529a6");                          // 0x007529a0    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x007529a2    3b02
    asm("{disp8} jl         _jmp_addr_0x007529a8");                          // 0x007529a4    7c02
    asm("_jmp_addr_0x007529a6:");
    asm("xor.s              eax, eax");                                      // 0x007529a6    33c0
    asm("_jmp_addr_0x007529a8:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x007529a8    8b4e40
    asm("mov                ebp, dword ptr [ecx]");                          // 0x007529ab    8b29
    asm("push               dword ptr [esp + 0x14]");                        // 0x007529ad    ff742414
    asm("{disp32} jmp       _jmp_addr_0x00752a57");                          // 0x007529b1    e9a1000000
    asm("_jmp_addr_0x007529b6:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007529b6    8b16
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xf7, 0xff");// and word ptr [esi + 0x000000e0], -0x0009 // 0x007529b8    6681a6e0000000f7ff
    asm("mov.s              ecx, esi");                                      // 0x007529c1    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x007529c3    ff92d0080000
    asm("cmp.s              eax, edi");                                      // 0x007529c9    3bc7
    asm("{disp32} jae       _jmp_addr_0x00752a62");                          // 0x007529cb    0f8391000000
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                   // 0x007529d1    8b4640
    asm("test               eax, eax");                                      // 0x007529d4    85c0
    asm("{disp32} je        _jmp_addr_0x00752a62");                          // 0x007529d6    0f8486000000
    asm("mov                eax, dword ptr [esi]");                          // 0x007529dc    8b06
    asm("mov.s              ecx, esi");                                      // 0x007529de    8bce
    asm("call               dword ptr [eax + 0x4a0]");                       // 0x007529e0    ff90a0040000
    asm("test               eax, eax");                                      // 0x007529e6    85c0
    asm("{disp32} jne       _jmp_addr_0x0075294b");                          // 0x007529e8    0f855dffffff
    asm("mov                edx, dword ptr [esi]");                          // 0x007529ee    8b16
    asm("push               0x2");                                           // 0x007529f0    6a02
    asm("mov.s              ecx, esi");                                      // 0x007529f2    8bce
    asm("call               dword ptr [edx + 0x60c]");                       // 0x007529f4    ff920c060000
    asm("test               eax, eax");                                      // 0x007529fa    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x007529fc    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x00752a08");                          // 0x00752a02    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x00752a04    3b01
    asm("{disp8} jl         _jmp_addr_0x00752a0a");                          // 0x00752a06    7c02
    asm("_jmp_addr_0x00752a08:");
    asm("xor.s              eax, eax");                                      // 0x00752a08    33c0
    asm("_jmp_addr_0x00752a0a:");
    asm("{disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x00752a0a    8b448104
    asm("mov                edx, dword ptr [esi]");                          // 0x00752a0e    8b16
    asm("push               0x1");                                           // 0x00752a10    6a01
    asm("mov.s              ecx, esi");                                      // 0x00752a12    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00752a14    89442418
    asm("call               dword ptr [edx + 0x60c]");                       // 0x00752a18    ff920c060000
    asm("test               eax, eax");                                      // 0x00752a1e    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00752a20    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x00752a2c");                          // 0x00752a26    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x00752a28    3b01
    asm("{disp8} jl         _jmp_addr_0x00752a2e");                          // 0x00752a2a    7c02
    asm("_jmp_addr_0x00752a2c:");
    asm("xor.s              eax, eax");                                      // 0x00752a2c    33c0
    asm("_jmp_addr_0x00752a2e:");
    asm("{disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x00752a2e    8b7c8104
    asm("mov                eax, dword ptr [esi]");                          // 0x00752a32    8b06
    asm("push               0x0");                                           // 0x00752a34    6a00
    asm("mov.s              ecx, esi");                                      // 0x00752a36    8bce
    asm("call               dword ptr [eax + 0x60c]");                       // 0x00752a38    ff900c060000
    asm("test               eax, eax");                                      // 0x00752a3e    85c0
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00752a40    8b1534fee900
    asm("{disp8} jl         _jmp_addr_0x00752a4c");                          // 0x00752a46    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x00752a48    3b02
    asm("{disp8} jl         _jmp_addr_0x00752a4e");                          // 0x00752a4a    7c02
    asm("_jmp_addr_0x00752a4c:");
    asm("xor.s              eax, eax");                                      // 0x00752a4c    33c0
    asm("_jmp_addr_0x00752a4e:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00752a4e    8b4e40
    asm("mov                ebp, dword ptr [ecx]");                          // 0x00752a51    8b29
    asm("push               dword ptr [esp + 0x14]");                        // 0x00752a53    ff742414
    asm("_jmp_addr_0x00752a57:");
    asm("{disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x00752a57    8b548204
    asm("push               edi");                                           // 0x00752a5b    57
    asm("call               dword ptr [ebp + 0xf4]");                        // 0x00752a5c    ff95f4000000
    asm("_jmp_addr_0x00752a62:");
    asm("push               ebx");                                           // 0x00752a62    53
    asm("mov.s              ecx, esi");                                      // 0x00752a63    8bce
    asm("call               ?InitialiseScale@Villager@@QAEXK@Z");            // 0x00752a65    e816d1ffff
    asm("push               ebx");                                           // 0x00752a6a    53
    asm("mov.s              ecx, esi");                                      // 0x00752a6b    8bce
    asm("call               ?SetScaleForAge@Villager@@QAEXK@Z");             // 0x00752a6d    e81e000000
    asm("push               ebx");                                           // 0x00752a72    53
    asm("mov.s              ecx, esi");                                      // 0x00752a73    8bce
    asm("call               @SetAge__6LivingFUl@12");                        // 0x00752a75    e846a8e9ff
    asm("pop                edi");                                           // 0x00752a7a    5f
    asm("pop                esi");                                           // 0x00752a7b    5e
    asm("pop                ebp");                                           // 0x00752a7c    5d
    asm("pop                ebx");                                           // 0x00752a7d    5b
    asm("ret                0x0004");                                        // 0x00752a7e    c20400
    __builtin_unreachable();
}

void __fastcall SetScaleForAge__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1)
{
    asm("push               ebx");                                           // 0x00752a90    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00752a91    8b5c2408
    asm("push               esi");                                           // 0x00752a95    56
    asm("mov.s              esi, ecx");                                      // 0x00752a96    8bf1
    asm("push               edi");                                           // 0x00752a98    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00752a99    8b7e28
    asm("cmp                ebx, dword ptr [edi + 0x00000138]");             // 0x00752a9c    3b9f38010000
    asm("{disp8} jae        _jmp_addr_0x00752af5");                          // 0x00752aa2    7351
    asm("mov                eax, dword ptr [esi]");                          // 0x00752aa4    8b06
    asm("call               dword ptr [eax + 0x120]");                       // 0x00752aa6    ff9020010000
    asm("{disp32} fsubr     dword ptr [edi + ebx * 0x4 + 0x000002ec]");      // 0x00752aac    d8ac9fec020000
    asm("mov                edi, dword ptr [esi]");                          // 0x00752ab3    8b3e
    asm("push               0x0000092f");                                    // 0x00752ab5    682f090000
    asm("{disp32} fmul      dword ptr [__real@3f400000]");                   // 0x00752aba    d80d74b28a00
    asm("push               0x00c235dc");                                    // 0x00752ac0    68dc35c200
    asm("push               ecx");                                           // 0x00752ac5    51
    asm("fstp               dword ptr [esp]");                               // 0x00752ac6    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00752ac9    e862baf8ff
    asm("mov                edx, dword ptr [esi]");                          // 0x00752ace    8b16
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00752ad0    d95c241c
    asm("add                esp, 0x0c");                                     // 0x00752ad4    83c40c
    asm("mov.s              ecx, esi");                                      // 0x00752ad7    8bce
    asm("call               dword ptr [edx + 0x120]");                       // 0x00752ad9    ff9220010000
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x00752adf    d8442410
    asm("push               ecx");                                           // 0x00752ae3    51
    asm("mov.s              ecx, esi");                                      // 0x00752ae4    8bce
    asm("fstp               dword ptr [esp]");                               // 0x00752ae6    d91c24
    asm("call               dword ptr [edi + 0x124]");                       // 0x00752ae9    ff9724010000
    asm("pop                edi");                                           // 0x00752aef    5f
    asm("pop                esi");                                           // 0x00752af0    5e
    asm("pop                ebx");                                           // 0x00752af1    5b
    asm("ret                0x0004");                                        // 0x00752af2    c20400
    asm("_jmp_addr_0x00752af5:");
    asm("push               0x00000933");                                    // 0x00752af5    6833090000
    asm("push               0x00c235dc");                                    // 0x00752afa    68dc35c200
    asm("push               0x3dcccccd");                                    // 0x00752aff    68cdcccc3d
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00752b04    e827baf8ff
    asm("mov                eax, dword ptr [esi]");                          // 0x00752b09    8b06
    asm("{disp32} fsubr     dword ptr [rdata_bytes + 0x33f4]");              // 0x00752b0b    d82df4c38a00
    asm("add                esp, 0x0c");                                     // 0x00752b11    83c40c
    asm("mov.s              ecx, esi");                                      // 0x00752b14    8bce
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00752b16    d80590a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752b1c    d95c2410
    asm("call               dword ptr [eax + 0x120]");                       // 0x00752b20    ff9020010000
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x00752b26    d85c2410
    asm("fnstsw             ax");                                            // 0x00752b2a    dfe0
    asm("test               ah, 0x01");                                      // 0x00752b2c    f6c401
    asm("{disp8} je         _jmp_addr_0x00752b56");                          // 0x00752b2f    7425
    asm("push               0x00000933");                                    // 0x00752b31    6833090000
    asm("push               0x00c235dc");                                    // 0x00752b36    68dc35c200
    asm("push               0x3dcccccd");                                    // 0x00752b3b    68cdcccc3d
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00752b40    e8ebb9f8ff
    asm("{disp32} fsubr     dword ptr [rdata_bytes + 0x33f4]");              // 0x00752b45    d82df4c38a00
    asm("add                esp, 0x0c");                                     // 0x00752b4b    83c40c
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00752b4e    d80590a38a00
    asm("{disp8} jmp        _jmp_addr_0x00752b60");                          // 0x00752b54    eb0a
    asm("_jmp_addr_0x00752b56:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00752b56    8b16
    asm("mov.s              ecx, esi");                                      // 0x00752b58    8bce
    asm("call               dword ptr [edx + 0x120]");                       // 0x00752b5a    ff9220010000
    asm("_jmp_addr_0x00752b60:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00752b60    8b06
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752b62    d95c2410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00752b66    8b4c2410
    asm("push               ecx");                                           // 0x00752b6a    51
    asm("mov.s              ecx, esi");                                      // 0x00752b6b    8bce
    asm("call               dword ptr [eax + 0x124]");                       // 0x00752b6d    ff9024010000
    asm("pop                edi");                                           // 0x00752b73    5f
    asm("pop                esi");                                           // 0x00752b74    5e
    asm("pop                ebx");                                           // 0x00752b75    5b
    asm("ret                0x0004");                                        // 0x00752b76    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall SetStateWhenTappedOnAbode__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00752b80    83ec0c
    asm("push               esi");                                           // 0x00752b83    56
    asm("mov.s              esi, ecx");                                      // 0x00752b84    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00752b86    8b06
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00752b88    ff502c
    asm("test               eax, eax");                                      // 0x00752b8b    85c0
    asm("{disp8} je         _jmp_addr_0x00752bc1");                          // 0x00752b8d    7432
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x00752b8f    f686e000000004
    asm("{disp8} je         _jmp_addr_0x00752bc1");                          // 0x00752b96    7429
    asm("push               0x0");                                           // 0x00752b98    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00752b9a    8d4c2408
    asm("push               ecx");                                           // 0x00752b9e    51
    asm("mov.s              ecx, esi");                                      // 0x00752b9f    8bce
    asm("call               ?FindPosOutsideAbode@Villager@@QAEXPAVAbode@@@Z");                          // 0x00752ba1    e8ca080000
    asm("push               0x000000a3");                                    // 0x00752ba6    68a3000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x00752bab    8d542408
    asm("push               edx");                                           // 0x00752baf    52
    asm("mov.s              ecx, esi");                                      // 0x00752bb0    8bce
    asm("call               ?SetupAfterTapOnAbode@Villager@@QAEXAAUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00752bb2    e849e80000
    asm("mov                eax, 0x00000001");                               // 0x00752bb7    b801000000
    asm("pop                esi");                                           // 0x00752bbc    5e
    asm("add                esp, 0x0c");                                     // 0x00752bbd    83c40c
    asm("ret");                                                              // 0x00752bc0    c3
    asm("_jmp_addr_0x00752bc1:");
    asm("xor.s              eax, eax");                                      // 0x00752bc1    33c0
    asm("pop                esi");                                           // 0x00752bc3    5e
    asm("add                esp, 0x0c");                                     // 0x00752bc4    83c40c
    asm("ret");                                                              // 0x00752bc7    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToApplyThisToObject__8VillagerFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2)
{
    asm("push               esi");                                           // 0x00752bd0    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                   // 0x00752bd1    8b74240c
    asm("push               edi");                                           // 0x00752bd5    57
    asm("push               0x0");                                           // 0x00752bd6    6a00
    asm("push               0x009c8ee8");                                    // 0x00752bd8    68e88e9c00
    asm("push               0x009c7f50");                                    // 0x00752bdd    68507f9c00
    asm("push               0x0");                                           // 0x00752be2    6a00
    asm("push               esi");                                           // 0x00752be4    56
    asm("mov.s              edi, ecx");                                      // 0x00752be5    8bf9
    asm("call               ___RTDynamicCast");                              // 0x00752be7    e82d2e0700
    asm("add                esp, 0x14");                                     // 0x00752bec    83c414
    asm("test               eax, eax");                                      // 0x00752bef    85c0
    asm("{disp8} je         _jmp_addr_0x00752bfd");                          // 0x00752bf1    740a
    asm("pop                edi");                                           // 0x00752bf3    5f
    asm("mov                eax, 0x00000001");                               // 0x00752bf4    b801000000
    asm("pop                esi");                                           // 0x00752bf9    5e
    asm("ret                0x0008");                                        // 0x00752bfa    c20800
    asm("_jmp_addr_0x00752bfd:");
    asm("push               0x0");                                           // 0x00752bfd    6a00
    asm("push               0x00be0360");                                    // 0x00752bff    686003be00
    asm("push               0x009c7f50");                                    // 0x00752c04    68507f9c00
    asm("push               0x0");                                           // 0x00752c09    6a00
    asm("push               esi");                                           // 0x00752c0b    56
    asm("call               ___RTDynamicCast");                              // 0x00752c0c    e8082e0700
    asm("add                esp, 0x14");                                     // 0x00752c11    83c414
    asm("test               eax, eax");                                      // 0x00752c14    85c0
    asm("{disp8} je         _jmp_addr_0x00752c2f");                          // 0x00752c16    7417
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x00752c18    8b4c240c
    asm("push               edi");                                           // 0x00752c1c    57
    asm("push               ecx");                                           // 0x00752c1d    51
    asm("mov.s              ecx, eax");                                      // 0x00752c1e    8bc8
    asm("call               _jmp_addr_0x005fc4b0");                          // 0x00752c20    e88b98eaff
    asm("cmp                eax, 0x01");                                     // 0x00752c25    83f801
    asm("{disp8} jne        _jmp_addr_0x00752c2f");                          // 0x00752c28    7505
    asm("pop                edi");                                           // 0x00752c2a    5f
    asm("pop                esi");                                           // 0x00752c2b    5e
    asm("ret                0x0008");                                        // 0x00752c2c    c20800
    asm("_jmp_addr_0x00752c2f:");
    asm("pop                edi");                                           // 0x00752c2f    5f
    asm("xor.s              eax, eax");                                      // 0x00752c30    33c0
    asm("pop                esi");                                           // 0x00752c32    5e
    asm("ret                0x0008");                                        // 0x00752c33    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ApplyThisToObject__8VillagerFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3)
{
    asm("sub                esp, 0x00000198");                               // 0x00752c40    81ec98010000
    asm("push               ebx");                                           // 0x00752c46    53
    asm("push               ebp");                                           // 0x00752c47    55
    asm("push               esi");                                           // 0x00752c48    56
    asm("push               edi");                                           // 0x00752c49    57
    asm("{disp32} mov       edi, dword ptr [esp + 0x000001b0]");             // 0x00752c4a    8bbc24b0010000
    asm("push               0x0");                                           // 0x00752c51    6a00
    asm("push               0x009c8ee8");                                    // 0x00752c53    68e88e9c00
    asm("push               0x009c7f50");                                    // 0x00752c58    68507f9c00
    asm("push               0x0");                                           // 0x00752c5d    6a00
    asm("push               edi");                                           // 0x00752c5f    57
    asm("mov.s              esi, ecx");                                      // 0x00752c60    8bf1
    asm("call               ___RTDynamicCast");                              // 0x00752c62    e8b22d0700
    asm("mov.s              ebp, eax");                                      // 0x00752c67    8be8
    asm("add                esp, 0x14");                                     // 0x00752c69    83c414
    asm("test               ebp, ebp");                                      // 0x00752c6c    85ed
    asm("{disp32} je        _jmp_addr_0x00752fc2");                          // 0x00752c6e    0f844e030000
    asm("{disp32} mov       ecx, dword ptr [ebp + 0x00000100]");             // 0x00752c74    8b8d00010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00752c7a    8b01
    asm("call               dword ptr [eax + 0x890]");                       // 0x00752c7c    ff9090080000
    asm("test               eax, eax");                                      // 0x00752c82    85c0
    asm("{disp32} je        _jmp_addr_0x00752fb0");                          // 0x00752c84    0f8426030000
    asm("xor.s              ecx, ecx");                                      // 0x00752c8a    33c9
    asm("{disp8} mov        cx, word ptr [esi + 0x24]");                     // 0x00752c8c    668b4e24
    asm("not                cx");                                            // 0x00752c90    66f7d1
    asm("shr                ecx, 0xe");                                      // 0x00752c93    c1e90e
    asm("test               cl, 0x01");                                      // 0x00752c96    f6c101
    asm("{disp32} je        _jmp_addr_0x00752fb0");                          // 0x00752c99    0f8411030000
    asm("mov                edx, dword ptr [esi]");                          // 0x00752c9f    8b16
    asm("mov.s              ecx, esi");                                      // 0x00752ca1    8bce
    asm("call               dword ptr [edx + 0x5c0]");                       // 0x00752ca3    ff92c0050000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752ca9    d95c2410
    asm("{disp32} mov       edi, dword ptr [esp + 0x000001ac]");             // 0x00752cad    8bbc24ac010000
    asm("mov                eax, dword ptr [edi]");                          // 0x00752cb4    8b07
    asm("{disp32} mov       ebx, dword ptr [ebp + 0x00000100]");             // 0x00752cb6    8b9d00010000
    asm("mov.s              ecx, edi");                                      // 0x00752cbc    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00752cbe    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x00752cc1    8b16
    asm("mov.s              ecx, esi");                                      // 0x00752cc3    8bce
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00752cc5    ff92f80a0000
    asm("test               eax, eax");                                      // 0x00752ccb    85c0
    asm("{disp8} je         _jmp_addr_0x00752cdd");                          // 0x00752ccd    740e
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00752ccf    d9442410
    asm("{disp32} fmul      qword ptr [__real@3ff4000000000000]");           // 0x00752cd3    dc0dd8a88a00
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752cd9    d95c2410
    asm("_jmp_addr_0x00752cdd:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00752cdd    d9442410
    asm("mov.s              ecx, edi");                                      // 0x00752ce1    8bcf
    asm("{disp32} fadd      dword ptr [ebx + 0x000000f0]");                  // 0x00752ce3    d883f0000000
    asm("{disp32} fstp      dword ptr [ebx + 0x000000f0]");                  // 0x00752ce9    d99bf0000000
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00752cef    d9442410
    asm("{disp32} fadd      dword ptr [ebx + 0x000000f4]");                  // 0x00752cf3    d883f4000000
    asm("{disp32} fstp      dword ptr [ebx + 0x000000f4]");                  // 0x00752cf9    d99bf4000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00752cff    8b07
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00752d01    ff501c
    asm("test               eax, eax");                                      // 0x00752d04    85c0
    asm("{disp8} je         _jmp_addr_0x00752d15");                          // 0x00752d06    740d
    asm("push               0x0");                                           // 0x00752d08    6a00
    asm("push               esi");                                           // 0x00752d0a    56
    asm("push               0x28");                                          // 0x00752d0b    6a28
    asm("push               edi");                                           // 0x00752d0d    57
    asm("mov.s              ecx, eax");                                      // 0x00752d0e    8bc8
    asm("call               _jmp_addr_0x004ea900");                          // 0x00752d10    e8eb7bd9ff
    asm("_jmp_addr_0x00752d15:");
    asm("test               edi, edi");                                      // 0x00752d15    85ff
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00752d17    c744241400000000
    asm("{disp8} je         _jmp_addr_0x00752d2c");                          // 0x00752d1f    740b
    asm("mov                edx, dword ptr [edi]");                          // 0x00752d21    8b17
    asm("mov.s              ecx, edi");                                      // 0x00752d23    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00752d25    ff521c
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00752d28    89442414
    asm("_jmp_addr_0x00752d2c:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00752d2c    8b06
    asm("push               0x1");                                           // 0x00752d2e    6a01
    asm("mov.s              ecx, esi");                                      // 0x00752d30    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x00752d32    ff901c010000
    asm("push               ecx");                                           // 0x00752d38    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00752d39    8b4c241c
    asm("fstp               dword ptr [esp]");                               // 0x00752d3d    d91c24
    asm("push               ecx");                                           // 0x00752d40    51
    asm("push               0x7");                                           // 0x00752d41    6a07
    asm("mov.s              ecx, esi");                                      // 0x00752d43    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                          // 0x00752d45    e876d9ffff
    asm("{disp8} lea        edx, dword ptr [ebp + 0x14]");                   // 0x00752d4a    8d5514
    asm("mov                eax, dword ptr [edx]");                          // 0x00752d4d    8b02
    asm("{disp8} mov        ecx, dword ptr [edx + 0x04]");                   // 0x00752d4f    8b4a04
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                   // 0x00752d52    8b5208
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x00752d55    89442424
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x00752d59    8b4500
    asm("{disp8} mov        dword ptr [esp + 0x28], ecx");                   // 0x00752d5c    894c2428
    asm("mov.s              ecx, ebp");                                      // 0x00752d60    8bcd
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x00752d62    8954242c
    asm("call               dword ptr [eax + 0x42c]");                       // 0x00752d66    ff902c040000
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00752d6c    d944242c
    asm("push               0x0");                                           // 0x00752d70    6a00
    asm("fadd               st, st(1)");                                     // 0x00752d72    d8c1
    asm("push               0x3f800000");                                    // 0x00752d74    680000803f
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                   // 0x00752d79    8d4c242c
    asm("{disp8} fstp       dword ptr [esp + 0x34]");                        // 0x00752d7d    d95c2434
    asm("push               0x1b");                                          // 0x00752d81    6a1b
    asm("push               ecx");                                           // 0x00752d83    51
    asm("fstp               st(0)");                                         // 0x00752d84    ddd8
    asm("call               _jmp_addr_0x0063e540");                          // 0x00752d86    e8b5b7eeff
    asm("mov.s              ebp, eax");                                      // 0x00752d8b    8be8
    asm("add                esp, 0x10");                                     // 0x00752d8d    83c410
    asm("test               ebp, ebp");                                      // 0x00752d90    85ed
    asm("{disp8} je         _jmp_addr_0x00752dac");                          // 0x00752d92    7418
    asm("{disp8} mov        edx, dword ptr [ebp + 0x00]");                   // 0x00752d94    8b5500
    asm("mov                eax, dword ptr [ebx]");                          // 0x00752d97    8b03
    asm("mov.s              ecx, ebx");                                      // 0x00752d99    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00752d9b    89542414
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00752d9f    ff501c
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x00752da2    8b542414
    asm("push               eax");                                           // 0x00752da6    50
    asm("mov.s              ecx, ebp");                                      // 0x00752da7    8bcd
    asm("call               dword ptr [edx + 0x20]");                        // 0x00752da9    ff5220
    asm("_jmp_addr_0x00752dac:");
    asm("test               edi, edi");                                      // 0x00752dac    85ff
    asm("{disp32} je        _jmp_addr_0x00752eb5");                          // 0x00752dae    0f8401010000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000cc]");             // 0x00752db4    8b8fcc000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000c8]");             // 0x00752dba    8b87c8000000
    asm("{disp32} mov       edx, dword ptr [edi + 0x000000d0]");             // 0x00752dc0    8b97d0000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x00752dc6    894c241c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x40]");                   // 0x00752dca    8d4c2440
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00752dce    89442418
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x00752dd2    89542420
    asm("call               dword ptr [rdata_bytes + 0x75c]");               // 0x00752dd6    ff155c978a00
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x00752ddc    8b0d203bcd00
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000003ac]");             // 0x00752de2    8b81ac030000
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x00752de8    8b542418
    asm("{disp8} mov        dword ptr [esp + 0x44], eax");                   // 0x00752dec    89442444
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00752df0    8b44241c
    asm("{disp8} mov        dword ptr [esp + 0x74], eax");                   // 0x00752df4    89442474
    asm("{disp8} mov        dword ptr [esp + 0x70], edx");                   // 0x00752df8    89542470
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x00752dfc    8b542420
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x00752e00    8d442440
    asm("mov                ebx, 0x00000001");                               // 0x00752e04    bb01000000
    asm("push               eax");                                           // 0x00752e09    50
    asm("{disp8} mov        dword ptr [esp + 0x68], 0x000000b3");            // 0x00752e0a    c7442468b3000000
    asm("{disp8} mov        dword ptr [esp + 0x64], esi");                   // 0x00752e12    89742464
    asm("{disp8} mov        dword ptr [esp + 0x4c], ebx");                   // 0x00752e16    895c244c
    asm("{disp8} mov        dword ptr [esp + 0x7c], edx");                   // 0x00752e1a    8954247c
    asm("{disp8} mov        dword ptr [esp + 0x50], 0x00000000");            // 0x00752e1e    c744245000000000
    asm("call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12");                          // 0x00752e26    e80570cdff
    asm("mov                edx, dword ptr [esi]");                          // 0x00752e2b    8b16
    asm("mov.s              ecx, esi");                                      // 0x00752e2d    8bce
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00752e2f    ff92f80a0000
    asm("test               eax, eax");                                      // 0x00752e35    85c0
    asm("{disp8} je         _jmp_addr_0x00752e65");                          // 0x00752e37    742c
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x00752e39    8b0d203bcd00
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000003bc]");             // 0x00752e3f    8b81bc030000
    asm("{disp8} lea        edx, dword ptr [esp + 0x40]");                   // 0x00752e45    8d542440
    asm("push               edx");                                           // 0x00752e49    52
    asm("{disp8} mov        dword ptr [esp + 0x48], eax");                   // 0x00752e4a    89442448
    asm("call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12");                          // 0x00752e4e    e8dd6fcdff
    asm("push               0xa");                                           // 0x00752e53    6a0a
    asm("push               0xd");                                           // 0x00752e55    6a0d
    asm("call               _jmp_addr_0x0071ed40");                          // 0x00752e57    e8e4befcff
    asm("add                esp, 0x08");                                     // 0x00752e5c    83c408
    asm("{disp8} mov        dword ptr [esp + 0x64], eax");                   // 0x00752e5f    89442464
    asm("{disp8} jmp        _jmp_addr_0x00752eab");                          // 0x00752e63    eb46
    asm("_jmp_addr_0x00752e65:");
    asm("{disp32} mov       eax, dword ptr [_global]");                      // 0x00752e65    a1203bcd00
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000003b0]");             // 0x00752e6a    8b88b0030000
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x00752e70    8b5628
    asm("{disp8} mov        dword ptr [esp + 0x44], ecx");                   // 0x00752e73    894c2444
    asm("cmp                dword ptr [edx + 0x000001f8], ebx");             // 0x00752e77    399af8010000
    asm("{disp8} jne        _jmp_addr_0x00752e88");                          // 0x00752e7d    7509
    asm("push               0x6");                                           // 0x00752e7f    6a06
    asm("push               0x00000218");                                    // 0x00752e81    6818020000
    asm("{disp8} jmp        _jmp_addr_0x00752e8f");                          // 0x00752e86    eb07
    asm("_jmp_addr_0x00752e88:");
    asm("push               0x8");                                           // 0x00752e88    6a08
    asm("push               0x000000dd");                                    // 0x00752e8a    68dd000000
    asm("_jmp_addr_0x00752e8f:");
    asm("call               _jmp_addr_0x0071ed40");                          // 0x00752e8f    e8acbefcff
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x00752e94    8b0d203bcd00
    asm("{disp8} mov        dword ptr [esp + 0x6c], eax");                   // 0x00752e9a    8944246c
    asm("add                esp, 0x08");                                     // 0x00752e9e    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x00752ea1    8d442440
    asm("push               eax");                                           // 0x00752ea5    50
    asm("call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12");                          // 0x00752ea6    e8856fcdff
    asm("_jmp_addr_0x00752eab:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x40]");                   // 0x00752eab    8d4c2440
    asm("call               dword ptr [rdata_bytes + 0x758]");               // 0x00752eaf    ff1558978a00
    asm("_jmp_addr_0x00752eb5:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00752eb5    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                          // 0x00752ebb    e8c029e0ff
    asm("cmp.s              edi, eax");                                      // 0x00752ec0    3bf8
    asm("{disp32} jne       _jmp_addr_0x00752f95");                          // 0x00752ec2    0f85cd000000
    asm("push               0x000009a6");                                    // 0x00752ec8    68a6090000
    asm("push               0x00c235dc");                                    // 0x00752ecd    68dc35c200
    asm("push               0x000000a0");                                    // 0x00752ed2    68a0000000
    asm("call               ___nw__FUl");                                    // 0x00752ed7    e8b4880800
    asm("xor.s              ebx, ebx");                                      // 0x00752edc    33db
    asm("add                esp, 0x0c");                                     // 0x00752ede    83c40c
    asm("cmp.s              eax, ebx");                                      // 0x00752ee1    3bc3
    asm("{disp8} je         _jmp_addr_0x00752f01");                          // 0x00752ee3    741c
    asm("{disp8} mov        dword ptr [eax + 0x14], ebx");                   // 0x00752ee5    895814
    asm("{disp8} mov        dword ptr [eax + 0x18], ebx");                   // 0x00752ee8    895818
    asm("mov                dword ptr [eax], 0x008c589c");                   // 0x00752eeb    c7009c588c00
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x5132e8]");        // 0x00752ef1    8b0de892ed00
    asm("{disp8} mov        dword ptr [eax + 0x04], ecx");                   // 0x00752ef7    894804
    asm("{disp32} mov       dword ptr [data_bytes + 0x5132e8], eax");        // 0x00752efa    a3e892ed00
    asm("mov.s              ebx, eax");                                      // 0x00752eff    8bd8
    asm("_jmp_addr_0x00752f01:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00752f01    d9442410
    asm("sub                esp, 0x08");                                     // 0x00752f05    83ec08
    asm("fstp               qword ptr [esp]");                               // 0x00752f08    dd1c24
    asm("{disp8} lea        edx, dword ptr [esp + 0x38]");                   // 0x00752f0b    8d542438
    asm("push               0x00bf3aa4");                                    // 0x00752f0f    68a43abf00
    asm("push               edx");                                           // 0x00752f14    52
    asm("call               _sprintf");                                      // 0x00752f15    e8b8280700
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00752f1a    8b0d5c19d000
    asm("add                esp, 0x10");                                     // 0x00752f20    83c410
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");      // 0x00752f23    e82829e0ff
    asm("mov.s              edi, eax");                                      // 0x00752f28    8bf8
    asm("{disp32} mov       eax, dword ptr [edi + 0x000003c0]");             // 0x00752f2a    8b87c0030000
    asm("add                edi, 0x000003b8");                               // 0x00752f30    81c7b8030000
    asm("mov.s              ecx, edi");                                      // 0x00752f36    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00752f38    89442414
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00752f3c    e84f010b00
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x00752f41    d8442414
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00752f45    8d4c2410
    asm("mov                al, -0x01");                                     // 0x00752f49    b0ff
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00752f4b    d95c241c
    asm("push               ecx");                                           // 0x00752f4f    51
    asm("fild               dword ptr [edi]");                               // 0x00752f50    db07
    asm("{disp8} lea        edx, dword ptr [esp + 0x34]");                   // 0x00752f52    8d542434
    asm("push               edx");                                           // 0x00752f56    52
    asm("{disp8} mov        byte ptr [esp + 0x18], 0x00");                   // 0x00752f57    c644241800
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00752f5c    d80da4a38a00
    asm("{disp8} mov        byte ptr [esp + 0x19], 0x00");                   // 0x00752f62    c644241900
    asm("{disp8} mov        byte ptr [esp + 0x1a], al");                     // 0x00752f67    8844241a
    asm("{disp8} mov        byte ptr [esp + 0x1b], al");                     // 0x00752f6b    8844241b
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00752f6f    d95c2420
    asm("{disp8} fild       dword ptr [edi + 0x04]");                        // 0x00752f73    db4704
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00752f76    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00752f7c    d95c2428
    asm("call               _CHAR2WCHAR__FPc");                              // 0x00752f80    e81bd10d00
    asm("add                esp, 0x04");                                     // 0x00752f85    83c404
    asm("push               eax");                                           // 0x00752f88    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00752f89    8d442420
    asm("push               eax");                                           // 0x00752f8d    50
    asm("mov.s              ecx, ebx");                                      // 0x00752f8e    8bcb
    asm("call               _jmp_addr_0x00833a00");                          // 0x00752f90    e86b0a0e00
    asm("_jmp_addr_0x00752f95:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00752f95    8b16
    asm("push               0x0");                                           // 0x00752f97    6a00
    asm("mov.s              ecx, esi");                                      // 0x00752f99    8bce
    asm("call               dword ptr [edx + 0xc]");                         // 0x00752f9b    ff520c
    asm("pop                edi");                                           // 0x00752f9e    5f
    asm("pop                esi");                                           // 0x00752f9f    5e
    asm("pop                ebp");                                           // 0x00752fa0    5d
    asm("mov                eax, 0x00000003");                               // 0x00752fa1    b803000000
    asm("pop                ebx");                                           // 0x00752fa6    5b
    asm("add                esp, 0x00000198");                               // 0x00752fa7    81c498010000
    asm("ret                0x000c");                                        // 0x00752fad    c20c00
    asm("_jmp_addr_0x00752fb0:");
    asm("pop                edi");                                           // 0x00752fb0    5f
    asm("pop                esi");                                           // 0x00752fb1    5e
    asm("pop                ebp");                                           // 0x00752fb2    5d
    asm("mov                eax, 0x00000017");                               // 0x00752fb3    b817000000
    asm("pop                ebx");                                           // 0x00752fb8    5b
    asm("add                esp, 0x00000198");                               // 0x00752fb9    81c498010000
    asm("ret                0x000c");                                        // 0x00752fbf    c20c00
    asm("_jmp_addr_0x00752fc2:");
    asm("push               0x0");                                           // 0x00752fc2    6a00
    asm("push               0x00be0360");                                    // 0x00752fc4    686003be00
    asm("push               0x009c7f50");                                    // 0x00752fc9    68507f9c00
    asm("push               0x0");                                           // 0x00752fce    6a00
    asm("push               edi");                                           // 0x00752fd0    57
    asm("call               ___RTDynamicCast");                              // 0x00752fd1    e8432a0700
    asm("mov.s              edi, eax");                                      // 0x00752fd6    8bf8
    asm("add                esp, 0x14");                                     // 0x00752fd8    83c414
    asm("test               edi, edi");                                      // 0x00752fdb    85ff
    asm("{disp8} je         _jmp_addr_0x0075300a");                          // 0x00752fdd    742b
    asm("{disp32} mov       ebx, dword ptr [esp + 0x000001ac]");             // 0x00752fdf    8b9c24ac010000
    asm("push               esi");                                           // 0x00752fe6    56
    asm("push               ebx");                                           // 0x00752fe7    53
    asm("mov.s              ecx, edi");                                      // 0x00752fe8    8bcf
    asm("call               _jmp_addr_0x005fc4b0");                          // 0x00752fea    e8c194eaff
    asm("cmp                eax, 0x01");                                     // 0x00752fef    83f801
    asm("{disp8} jne        _jmp_addr_0x0075300a");                          // 0x00752ff2    7516
    asm("push               esi");                                           // 0x00752ff4    56
    asm("push               ebx");                                           // 0x00752ff5    53
    asm("mov.s              ecx, edi");                                      // 0x00752ff6    8bcf
    asm("call               _jmp_addr_0x005fc4f0");                          // 0x00752ff8    e8f394eaff
    asm("pop                edi");                                           // 0x00752ffd    5f
    asm("pop                esi");                                           // 0x00752ffe    5e
    asm("pop                ebp");                                           // 0x00752fff    5d
    asm("pop                ebx");                                           // 0x00753000    5b
    asm("add                esp, 0x00000198");                               // 0x00753001    81c498010000
    asm("ret                0x000c");                                        // 0x00753007    c20c00
    asm("_jmp_addr_0x0075300a:");
    asm("pop                edi");                                           // 0x0075300a    5f
    asm("pop                esi");                                           // 0x0075300b    5e
    asm("pop                ebp");                                           // 0x0075300c    5d
    asm("xor.s              eax, eax");                                      // 0x0075300d    33c0
    asm("pop                ebx");                                           // 0x0075300f    5b
    asm("add                esp, 0x00000198");                               // 0x00753010    81c498010000
    asm("ret                0x000c");                                        // 0x00753016    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall GetScriptObjectType__8VillagerFv(struct GameThingWithPos* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00753020    8b01
    asm("call               dword ptr [eax + 0x458]");                       // 0x00753022    ff9058040000
    asm("neg                eax");                                           // 0x00753028    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075302a    1bc0
    asm("neg                eax");                                           // 0x0075302c    f7d8
    asm("add                eax, 0x04");                                     // 0x0075302e    83c004
    asm("ret");                                                              // 0x00753031    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsTouching_2__8VillagerCFP9MapCoords(const struct Object* this, const void* edx, struct MapCoords* param_1)
{
    asm("push               esi");                                           // 0x00753040    56
    asm("mov.s              esi, ecx");                                      // 0x00753041    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x00753043    8b4c2408
    asm("mov                eax, dword ptr [esi]");                          // 0x00753047    8b06
    asm("push               ecx");                                           // 0x00753049    51
    asm("mov.s              ecx, esi");                                      // 0x0075304a    8bce
    asm("call               dword ptr [eax + 0x13c]");                       // 0x0075304c    ff903c010000
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00753052    d95c2408
    asm("mov                edx, dword ptr [esi]");                          // 0x00753056    8b16
    asm("mov.s              ecx, esi");                                      // 0x00753058    8bce
    asm("call               dword ptr [edx + 0x130]");                       // 0x0075305a    ff9230010000
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x00753060    d85c2408
    asm("pop                esi");                                           // 0x00753064    5e
    asm("fnstsw             ax");                                            // 0x00753065    dfe0
    asm("test               ah, 0x41");                                      // 0x00753067    f6c441
    asm("{disp8} jne        _jmp_addr_0x00753074");                          // 0x0075306a    7508
    asm("mov                eax, 0x00000001");                               // 0x0075306c    b801000000
    asm("ret                0x0004");                                        // 0x00753071    c20400
    asm("_jmp_addr_0x00753074:");
    asm("xor.s              eax, eax");                                      // 0x00753074    33c0
    asm("ret                0x0004");                                        // 0x00753076    c20400
    __builtin_unreachable();
}

uint32_t __fastcall InterfaceSetInMagicHand__8VillagerFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1)
{
    asm("push               esi");                                           // 0x00753080    56
    asm("mov.s              esi, ecx");                                      // 0x00753081    8bf1
    asm("or                 byte ptr [esi + 0xe0], 0x20");                   // 0x00753083    808ee000000020
    asm("cmp                byte ptr [esi + 0x0000008d], 0x7b");             // 0x0075308a    80be8d0000007b
    asm("push               edi");                                           // 0x00753091    57
    asm("{disp8} jne        _jmp_addr_0x007530c0");                          // 0x00753092    752c
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x00753094    8b8618010000
    asm("test               eax, eax");                                      // 0x0075309a    85c0
    asm("{disp8} je         _jmp_addr_0x007530c0");                          // 0x0075309c    7422
    asm("{disp32} mov       dword ptr [eax + 0x00000118], 0x00000000");      // 0x0075309e    c7801801000000000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x007530a8    8b8e18010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x007530ae    8b01
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x007530b0    ff90c8080000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x007530b6    c7861801000000000000
    asm("_jmp_addr_0x007530c0:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x007530c0    8b7c240c
    asm("mov                edx, dword ptr [edi]");                          // 0x007530c4    8b17
    asm("push               ebp");                                           // 0x007530c6    55
    asm("mov.s              ecx, edi");                                      // 0x007530c7    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007530c9    ff521c
    asm("mov.s              ebp, eax");                                      // 0x007530cc    8be8
    asm("mov                eax, dword ptr [esi]");                          // 0x007530ce    8b06
    asm("mov.s              ecx, esi");                                      // 0x007530d0    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007530d2    ff501c
    asm("cmp.s              eax, ebp");                                      // 0x007530d5    3bc5
    asm("pop                ebp");                                           // 0x007530d7    5d
    asm("{disp8} jne        _jmp_addr_0x007530fa");                          // 0x007530d8    7520
    asm("mov.s              ecx, esi");                                      // 0x007530da    8bce
    asm("call               _jmp_addr_0x00761090");                          // 0x007530dc    e8afdf0000
    asm("test               eax, eax");                                      // 0x007530e1    85c0
    asm("{disp8} je         _jmp_addr_0x007530fa");                          // 0x007530e3    7415
    asm("mov                edx, dword ptr [edi]");                          // 0x007530e5    8b17
    asm("push               0x0");                                           // 0x007530e7    6a00
    asm("mov.s              ecx, edi");                                      // 0x007530e9    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007530eb    ff521c
    asm("push               eax");                                           // 0x007530ee    50
    asm("push               0x20");                                          // 0x007530ef    6a20
    asm("push               esi");                                           // 0x007530f1    56
    asm("call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");              // 0x007530f2    e8790cf9ff
    asm("add                esp, 0x10");                                     // 0x007530f7    83c410
    asm("_jmp_addr_0x007530fa:");
    asm("push               edi");                                           // 0x007530fa    57
    asm("mov.s              ecx, esi");                                      // 0x007530fb    8bce
    asm("call               ?InterfaceSetInMagicHand@Living@@UAEIPAVGInterfaceStatus@@@Z");                          // 0x007530fd    e8ae9be9ff
    asm("pop                edi");                                           // 0x00753102    5f
    asm("pop                esi");                                           // 0x00753103    5e
    asm("ret                0x0004");                                        // 0x00753104    c20400
    __builtin_unreachable();
}

void __fastcall SetSpeedInMetres__8VillagerFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00753110    8b442408
    asm("push               esi");                                           // 0x00753114    56
    asm("mov.s              esi, ecx");                                      // 0x00753115    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x00753117    8b4c2408
    asm("push               eax");                                           // 0x0075311b    50
    asm("push               ecx");                                           // 0x0075311c    51
    asm("call               _jmp_addr_0x0074dce0");                          // 0x0075311d    e8beabffff
    asm("add                esp, 0x04");                                     // 0x00753122    83c404
    asm("push               eax");                                           // 0x00753125    50
    asm("mov.s              ecx, esi");                                      // 0x00753126    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                  // 0x00753128    e8a3ddffff
    asm("pop                esi");                                           // 0x0075312d    5e
    asm("ret                0x0008");                                        // 0x0075312e    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall FUN_00753140__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00753140    51
    asm("mov                eax, dword ptr [ecx]");                          // 0x00753141    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00753143    ff90040b0000
    asm("{disp8} mov        byte ptr [esp + 0x00], al");                     // 0x00753149    88442400
    asm("{disp8} mov        eax, dword ptr [esp + 0x00]");                   // 0x0075314d    8b442400
    asm("and                eax, 0x000000ff");                               // 0x00753151    25ff000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x00753156    8d04c0
    asm("shl                eax, 4");                                        // 0x00753159    c1e004
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091b8]");             // 0x0075315c    8b88b891d000
    asm("cmp                ecx, 0x007597b0");                               // 0x00753162    81f9b0977500
    asm("{disp8} jne        _jmp_addr_0x00753190");                          // 0x00753168    7526
    asm("test               ecx, ecx");                                      // 0x0075316a    85c9
    asm("{disp8} je         _jmp_addr_0x0075318c");                          // 0x0075316c    741e
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091bc]");             // 0x0075316e    8b88bc91d000
    asm("test               ecx, ecx");                                      // 0x00753174    85c9
    asm("{disp8} jne        _jmp_addr_0x00753190");                          // 0x00753176    7518
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c0]");             // 0x00753178    8b88c091d000
    asm("test               ecx, ecx");                                      // 0x0075317e    85c9
    asm("{disp8} jne        _jmp_addr_0x00753190");                          // 0x00753180    750e
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091c4]");             // 0x00753182    8b88c491d000
    asm("test               ecx, ecx");                                      // 0x00753188    85c9
    asm("{disp8} jne        _jmp_addr_0x00753190");                          // 0x0075318a    7504
    asm("_jmp_addr_0x0075318c:");
    asm("mov                al, 0x01");                                      // 0x0075318c    b001
    asm("pop                ecx");                                           // 0x0075318e    59
    asm("ret");                                                              // 0x0075318f    c3
    asm("_jmp_addr_0x00753190:");
    asm("xor.s              al, al");                                        // 0x00753190    32c0
    asm("pop                ecx");                                           // 0x00753192    59
    asm("ret");                                                              // 0x00753193    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsVagrant__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x007531a0    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00205bfc]");             // 0x007531a5    8b80fc5b2000
    asm("test               eax, eax");                                      // 0x007531ab    85c0
    asm("{disp8} je         _jmp_addr_0x007531bd");                          // 0x007531ad    740e
    asm("_jmp_addr_0x007531af:");
    asm("cmp.s              eax, ecx");                                      // 0x007531af    3bc1
    asm("{disp8} je         _jmp_addr_0x007531bd");                          // 0x007531b1    740a
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x007531b3    8b80e4000000
    asm("test               eax, eax");                                      // 0x007531b9    85c0
    asm("{disp8} jne        _jmp_addr_0x007531af");                          // 0x007531bb    75f2
    asm("_jmp_addr_0x007531bd:");
    asm("xor.s              ecx, ecx");                                      // 0x007531bd    33c9
    asm("test               eax, eax");                                      // 0x007531bf    85c0
    asm("setne              cl");                                            // 0x007531c1    0f95c1
    asm("mov.s              eax, ecx");                                      // 0x007531c4    8bc1
    asm("ret");                                                              // 0x007531c6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall ReleaseFromScript__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x007531d0    51
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x007531d1    a15c19d000
    asm("push               esi");                                           // 0x007531d6    56
    asm("mov.s              esi, ecx");                                      // 0x007531d7    8bf1
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");                   // 0x007531d9    8b4814
    asm("test               ch, -0x80");                                     // 0x007531dc    f6c580
    asm("{disp32} jne       _jmp_addr_0x00753335");                          // 0x007531df    0f8550010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b8]");             // 0x007531e5    8b86b8000000
    asm("test               eax, eax");                                      // 0x007531eb    85c0
    asm("{disp8} je         _jmp_addr_0x00753209");                          // 0x007531ed    741a
    asm("cmp                dword ptr [eax + 0x30], esi");                   // 0x007531ef    397030
    asm("{disp8} jne        _jmp_addr_0x007531fb");                          // 0x007531f2    7507
    asm("{disp8} mov        dword ptr [eax + 0x30], 0x00000000");            // 0x007531f4    c7403000000000
    asm("_jmp_addr_0x007531fb:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000b8]");             // 0x007531fb    8b8eb8000000
    asm("push               0x0");                                           // 0x00753201    6a00
    asm("push               esi");                                           // 0x00753203    56
    asm("call               _jmp_addr_0x0052fb50");                          // 0x00753204    e847c9ddff
    asm("_jmp_addr_0x00753209:");
    asm("test               byte ptr [esi + 0x24], 0x44");                   // 0x00753209    f6462444
    asm("mov                edx, dword ptr [esi]");                          // 0x0075320d    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075320f    8bce
    asm("{disp32} jne       _jmp_addr_0x007532e6");                          // 0x00753211    0f85cf000000
    asm("call               dword ptr [edx + 0x11c]");                       // 0x00753217    ff921c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075321d    d81d98a38a00
    asm("mov.s              ecx, esi");                                      // 0x00753223    8bce
    asm("fnstsw             ax");                                            // 0x00753225    dfe0
    asm("test               ah, 0x41");                                      // 0x00753227    f6c441
    asm("mov                eax, dword ptr [esi]");                          // 0x0075322a    8b06
    asm("{disp8} je         _jmp_addr_0x00753283");                          // 0x0075322c    7455
    asm("call               dword ptr [eax + 0x6c]");                        // 0x0075322e    ff506c
    asm("test               eax, eax");                                      // 0x00753231    85c0
    asm("{disp8} je         _jmp_addr_0x0075323e");                          // 0x00753233    7409
    asm("mov                edx, dword ptr [eax]");                          // 0x00753235    8b10
    asm("mov.s              ecx, eax");                                      // 0x00753237    8bc8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00753239    ff521c
    asm("{disp8} jmp        _jmp_addr_0x00753240");                          // 0x0075323c    eb02
    asm("_jmp_addr_0x0075323e:");
    asm("xor.s              eax, eax");                                      // 0x0075323e    33c0
    asm("_jmp_addr_0x00753240:");
    asm("push               0x1");                                           // 0x00753240    6a01
    asm("push               0x0");                                           // 0x00753242    6a00
    asm("push               eax");                                           // 0x00753244    50
    asm("push               0x0");                                           // 0x00753245    6a00
    asm("mov.s              ecx, esi");                                      // 0x00753247    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                          // 0x00753249    e872d4ffff
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x0075324e    8a868c000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00753254    8b16
    asm("{disp8} mov        byte ptr [esp + 0x04], al");                     // 0x00753256    88442404
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075325a    8b442404
    asm("and                eax, 0x000000ff");                               // 0x0075325e    25ff000000
    asm("push               eax");                                           // 0x00753263    50
    asm("mov.s              ecx, esi");                                      // 0x00753264    8bce
    asm("call               dword ptr [edx + 0x970]");                       // 0x00753266    ff9270090000
    asm("test               eax, eax");                                      // 0x0075326c    85c0
    asm("{disp32} jne       _jmp_addr_0x00753335");                          // 0x0075326e    0f85c1000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00753274    8b16
    asm("push               0xf");                                           // 0x00753276    6a0f
    asm("mov.s              ecx, esi");                                      // 0x00753278    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075327a    ff92e8080000
    asm("pop                esi");                                           // 0x00753280    5e
    asm("pop                ecx");                                           // 0x00753281    59
    asm("ret");                                                              // 0x00753282    c3
    asm("_jmp_addr_0x00753283:");
    asm("call               dword ptr [eax + 0x48]");                        // 0x00753283    ff5048
    asm("test               eax, eax");                                      // 0x00753286    85c0
    asm("{disp8} je         _jmp_addr_0x00753297");                          // 0x00753288    740d
    asm("mov                edx, dword ptr [esi]");                          // 0x0075328a    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075328c    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x0075328e    ff92c8080000
    asm("pop                esi");                                           // 0x00753294    5e
    asm("pop                ecx");                                           // 0x00753295    59
    asm("ret");                                                              // 0x00753296    c3
    asm("_jmp_addr_0x00753297:");
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00753297    a15c19d000
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00205bfc]");             // 0x0075329c    8d88fc5b2000
    asm("mov                eax, dword ptr [ecx]");                          // 0x007532a2    8b01
    asm("test               eax, eax");                                      // 0x007532a4    85c0
    asm("{disp8} je         _jmp_addr_0x007532bc");                          // 0x007532a6    7414
    asm("_jmp_addr_0x007532a8:");
    asm("cmp.s              eax, esi");                                      // 0x007532a8    3bc6
    asm("{disp8} je         _jmp_addr_0x007532b8");                          // 0x007532aa    740c
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x007532ac    8b80e4000000
    asm("test               eax, eax");                                      // 0x007532b2    85c0
    asm("{disp8} jne        _jmp_addr_0x007532a8");                          // 0x007532b4    75f2
    asm("{disp8} jmp        _jmp_addr_0x007532bc");                          // 0x007532b6    eb04
    asm("_jmp_addr_0x007532b8:");
    asm("test               eax, eax");                                      // 0x007532b8    85c0
    asm("{disp8} jne        _jmp_addr_0x007532cd");                          // 0x007532ba    7511
    asm("_jmp_addr_0x007532bc:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x007532bc    8b11
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");             // 0x007532be    8996e4000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x007532c4    8b4104
    asm("inc                eax");                                           // 0x007532c7    40
    asm("mov                dword ptr [ecx], esi");                          // 0x007532c8    8931
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x007532ca    894104
    asm("_jmp_addr_0x007532cd:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007532cd    8b06
    asm("push               0x00000082");                                    // 0x007532cf    6882000000
    asm("mov.s              ecx, esi");                                      // 0x007532d4    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007532d6    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x007532dc    8bce
    asm("call               _jmp_addr_0x0076a8d0");                          // 0x007532de    e8ed750100
    asm("pop                esi");                                           // 0x007532e3    5e
    asm("pop                ecx");                                           // 0x007532e4    59
    asm("ret");                                                              // 0x007532e5    c3
    asm("_jmp_addr_0x007532e6:");
    asm("call               dword ptr [edx + 0x48]");                        // 0x007532e6    ff5248
    asm("test               eax, eax");                                      // 0x007532e9    85c0
    asm("{disp8} jne        _jmp_addr_0x00753335");                          // 0x007532eb    7548
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x007532ed    a15c19d000
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00205bfc]");             // 0x007532f2    8d88fc5b2000
    asm("mov                eax, dword ptr [ecx]");                          // 0x007532f8    8b01
    asm("test               eax, eax");                                      // 0x007532fa    85c0
    asm("{disp8} je         _jmp_addr_0x00753324");                          // 0x007532fc    7426
    asm("_jmp_addr_0x007532fe:");
    asm("cmp.s              eax, esi");                                      // 0x007532fe    3bc6
    asm("{disp8} je         _jmp_addr_0x00753320");                          // 0x00753300    741e
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x00753302    8b80e4000000
    asm("test               eax, eax");                                      // 0x00753308    85c0
    asm("{disp8} jne        _jmp_addr_0x007532fe");                          // 0x0075330a    75f2
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075330c    8b11
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");             // 0x0075330e    8996e4000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x00753314    8b4104
    asm("inc                eax");                                           // 0x00753317    40
    asm("mov                dword ptr [ecx], esi");                          // 0x00753318    8931
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x0075331a    894104
    asm("pop                esi");                                           // 0x0075331d    5e
    asm("pop                ecx");                                           // 0x0075331e    59
    asm("ret");                                                              // 0x0075331f    c3
    asm("_jmp_addr_0x00753320:");
    asm("test               eax, eax");                                      // 0x00753320    85c0
    asm("{disp8} jne        _jmp_addr_0x00753335");                          // 0x00753322    7511
    asm("_jmp_addr_0x00753324:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x00753324    8b11
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");             // 0x00753326    8996e4000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x0075332c    8b4104
    asm("inc                eax");                                           // 0x0075332f    40
    asm("mov                dword ptr [ecx], esi");                          // 0x00753330    8931
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x00753332    894104
    asm("_jmp_addr_0x00753335:");
    asm("pop                esi");                                           // 0x00753335    5e
    asm("pop                ecx");                                           // 0x00753336    59
    asm("ret");                                                              // 0x00753337    c3
    __builtin_unreachable();
}

void __fastcall TestSpecial__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00753340    56
    asm("mov.s              esi, ecx");                                      // 0x00753341    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00753343    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00753345    ff5048
    asm("test               eax, eax");                                      // 0x00753348    85c0
    asm("{disp8} je         _jmp_addr_0x0075336f");                          // 0x0075334a    7423
    asm("mov                edx, dword ptr [esi]");                          // 0x0075334c    8b16
    asm("push               esi");                                           // 0x0075334e    56
    asm("mov.s              ecx, esi");                                      // 0x0075334f    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00753351    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00753354    8bc8
    asm("call               ?RemoveVillager@Town@@QAEXPAVVillager@@@Z");     // 0x00753356    e8b5aefeff
    asm("push               0x0");                                           // 0x0075335b    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075335d    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");            // 0x0075335f    e8cc310000
    asm("and                word ptr [esi + 0x000000b4], -0x0401");          // 0x00753364    6681a6b4000000fffb
    asm("pop                esi");                                           // 0x0075336d    5e
    asm("ret");                                                              // 0x0075336e    c3
    asm("_jmp_addr_0x0075336f:");
    asm("mov.s              ecx, esi");                                      // 0x0075336f    8bce
    asm("call               ?ReleaseFromScript@Villager@@QAEXXZ");           // 0x00753371    e85afeffff
    asm("and                word ptr [esi + 0x000000b4], -0x0401");          // 0x00753376    6681a6b4000000fffb
    asm("pop                esi");                                           // 0x0075337f    5e
    asm("ret");                                                              // 0x00753380    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetResourceFrom__8VillagerFP6Object13RESOURCE_TYPEs(struct Villager* this, const void* edx, struct Object* param_1, enum RESOURCE_TYPE param_2, short param_3)
{
    asm("push               ebx");                                           // 0x00753390    53
    asm("push               ebp");                                           // 0x00753391    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x10]");                   // 0x00753392    8b6c2410
    asm("push               esi");                                           // 0x00753396    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x10]");                   // 0x00753397    8b742410
    asm("mov                eax, dword ptr [esi]");                          // 0x0075339b    8b06
    asm("push               edi");                                           // 0x0075339d    57
    asm("mov.s              edi, ecx");                                      // 0x0075339e    8bf9
    asm("movsx              ecx, word ptr [esp + 0x1c]");                    // 0x007533a0    0fbf4c241c
    asm("push               0x0");                                           // 0x007533a5    6a00
    asm("push               0x0");                                           // 0x007533a7    6a00
    asm("push               ecx");                                           // 0x007533a9    51
    asm("push               ebp");                                           // 0x007533aa    55
    asm("mov.s              ecx, esi");                                      // 0x007533ab    8bce
    asm("call               dword ptr [eax + 0xa0]");                        // 0x007533ad    ff90a0000000
    asm("mov.s              ebx, eax");                                      // 0x007533b3    8bd8
    asm("test               bx, bx");                                        // 0x007533b5    6685db
    asm("{disp8} je         _jmp_addr_0x00753402");                          // 0x007533b8    7448
    asm("mov                edx, dword ptr [esi]");                          // 0x007533ba    8b16
    asm("mov.s              ecx, esi");                                      // 0x007533bc    8bce
    asm("call               dword ptr [edx + 0x820]");                       // 0x007533be    ff9220080000
    asm("push               eax");                                           // 0x007533c4    50
    asm("push               ebx");                                           // 0x007533c5    53
    asm("push               ebp");                                           // 0x007533c6    55
    asm("mov.s              ecx, edi");                                      // 0x007533c7    8bcf
    asm("call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z");                          // 0x007533c9    e822e0ffff
    asm("mov                eax, dword ptr [esi]");                          // 0x007533ce    8b06
    asm("mov.s              ecx, esi");                                      // 0x007533d0    8bce
    asm("call               dword ptr [eax + 0x4a8]");                       // 0x007533d2    ff90a8040000
    asm("test               al, al");                                        // 0x007533d8    84c0
    asm("{disp8} je         _jmp_addr_0x007533e8");                          // 0x007533da    740c
    asm("mov                edx, dword ptr [edi]");                          // 0x007533dc    8b17
    asm("push               0x1");                                           // 0x007533de    6a01
    asm("mov.s              ecx, edi");                                      // 0x007533e0    8bcf
    asm("call               dword ptr [edx + 0x878]");                       // 0x007533e2    ff9278080000
    asm("_jmp_addr_0x007533e8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007533e8    8b06
    asm("mov.s              ecx, esi");                                      // 0x007533ea    8bce
    asm("call               dword ptr [eax + 0x4a4]");                       // 0x007533ec    ff90a4040000
    asm("test               al, al");                                        // 0x007533f2    84c0
    asm("{disp8} je         _jmp_addr_0x00753402");                          // 0x007533f4    740c
    asm("mov                edx, dword ptr [edi]");                          // 0x007533f6    8b17
    asm("push               0x1");                                           // 0x007533f8    6a01
    asm("mov.s              ecx, edi");                                      // 0x007533fa    8bcf
    asm("call               dword ptr [edx + 0x69c]");                       // 0x007533fc    ff929c060000
    asm("_jmp_addr_0x00753402:");
    asm("pop                edi");                                           // 0x00753402    5f
    asm("pop                esi");                                           // 0x00753403    5e
    asm("pop                ebp");                                           // 0x00753404    5d
    asm("mov.s              ax, bx");                                        // 0x00753405    668bc3
    asm("pop                ebx");                                           // 0x00753408    5b
    asm("ret                0x000c");                                        // 0x00753409    c20c00
    __builtin_unreachable();
}

void __fastcall SetFoodSpeedup__8VillagerFb(struct Living* this, const void* edx, bool param_1)
{
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                     // 0x00753410    8a442404
    asm("test               al, al");                                        // 0x00753414    84c0
    asm("{disp8} je         _jmp_addr_0x00753422");                          // 0x00753416    740a
    asm("{disp32} mov       byte ptr [ecx + 0x000000f0], -0x01");            // 0x00753418    c681f0000000ff
    asm("ret                0x0004");                                        // 0x0075341f    c20400
    asm("_jmp_addr_0x00753422:");
    asm("{disp32} mov       byte ptr [ecx + 0x000000f0], 0x00");             // 0x00753422    c681f000000000
    asm("ret                0x0004");                                        // 0x00753429    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall ProcessFoodSpeedup__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00753430    56
    asm("mov.s              esi, ecx");                                      // 0x00753431    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00753433    8b06
    asm("call               dword ptr [eax + 0x87c]");                       // 0x00753435    ff907c080000
    asm("test               al, al");                                        // 0x0075343b    84c0
    asm("{disp8} je         _jmp_addr_0x0075345e");                          // 0x0075343d    741f
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0075343f    8b0d5c19d000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00205a40]");             // 0x00753445    8b81405a2000
    asm("xor.s              edx, edx");                                      // 0x0075344b    33d2
    asm("mov                ecx, 0x0000000a");                               // 0x0075344d    b90a000000
    asm("div                ecx");                                           // 0x00753452    f7f1
    asm("test               edx, edx");                                      // 0x00753454    85d2
    asm("{disp8} jne        _jmp_addr_0x0075345e");                          // 0x00753456    7506
    asm("dec                byte ptr [esi + 0x000000f0]");                   // 0x00753458    fe8ef0000000
    asm("_jmp_addr_0x0075345e:");
    asm("pop                esi");                                           // 0x0075345e    5e
    asm("ret");                                                              // 0x0075345f    c3
    __builtin_unreachable();
}

void __fastcall IncreaseLife__8VillagerFf(struct Object* this, const void* edx, float param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00753460    8b442404
    asm("push               eax");                                           // 0x00753464    50
    asm("call               ?IncreaseLife@Object@@UAEXM@Z");                 // 0x00753465    e80644eeff
    asm("ret                0x0004");                                        // 0x0075346a    c20400
    __builtin_unreachable();
}

void __fastcall FindPosOutsideAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* param_1)
{
    asm("sub                esp, 0x28");                                     // 0x00753470    83ec28
    asm("push               esi");                                           // 0x00753473    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x34]");                   // 0x00753474    8b742434
    asm("test               esi, esi");                                      // 0x00753478    85f6
    asm("{disp8} jne        _jmp_addr_0x00753483");                          // 0x0075347a    7507
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075347c    e8dfecffff
    asm("mov.s              esi, eax");                                      // 0x00753481    8bf0
    asm("_jmp_addr_0x00753483:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00753483    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00753485    8d4c2414
    asm("push               ecx");                                           // 0x00753489    51
    asm("mov.s              ecx, esi");                                      // 0x0075348a    8bce
    asm("call               dword ptr [eax + 0x104]");                       // 0x0075348c    ff9004010000
    asm("push               eax");                                           // 0x00753492    50
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x00753493    8d5614
    asm("push               edx");                                           // 0x00753496    52
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00753497    e8d49dffff
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0075349c    d95c243c
    asm("push               0x00000a96");                                    // 0x007534a0    68960a0000
    asm("push               0x00c235dc");                                    // 0x007534a5    68dc35c200
    asm("push               0x3fc00000");                                    // 0x007534aa    680000c03f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007534af    e87cb0f8ff
    asm("{disp32} fadd      dword ptr [__real@3fc00000]");                   // 0x007534b4    d8054cb28a00
    asm("push               0x00000a97");                                    // 0x007534ba    68970a0000
    asm("push               0x00c235dc");                                    // 0x007534bf    68dc35c200
    asm("push               0x3f490fdb");                                    // 0x007534c4    68db0f493f
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x007534c9    d95c2424
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007534cd    e85eb0f8ff
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                   // 0x007534d2    8b442424
    asm("{disp32} fsubr     dword ptr [rdata_bytes + 0x1dca0]");             // 0x007534d6    d82da06c8c00
    asm("push               eax");                                           // 0x007534dc    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x38]");                   // 0x007534dd    8d542438
    asm("{disp8} fadd       dword ptr [esp + 0x58]");                        // 0x007534e1    d8442458
    asm("{disp8} fstp       dword ptr [esp + 0x58]");                        // 0x007534e5    d95c2458
    asm("{disp8} mov        ecx, dword ptr [esp + 0x58]");                   // 0x007534e9    8b4c2458
    asm("push               ecx");                                           // 0x007534ed    51
    asm("push               edx");                                           // 0x007534ee    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x007534ef    e88ca0ffff
    asm("mov                edx, dword ptr [esi]");                          // 0x007534f4    8b16
    asm("add                esp, 0x2c");                                     // 0x007534f6    83c42c
    asm("push               eax");                                           // 0x007534f9    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007534fa    8d44240c
    asm("push               eax");                                           // 0x007534fe    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                   // 0x007534ff    8d442428
    asm("push               eax");                                           // 0x00753503    50
    asm("mov.s              ecx, esi");                                      // 0x00753504    8bce
    asm("call               dword ptr [edx + 0x104]");                       // 0x00753506    ff9204010000
    asm("mov.s              ecx, eax");                                      // 0x0075350c    8bc8
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x0075350e    e80d20ebff
    asm("{disp8} mov        eax, dword ptr [esp + 0x30]");                   // 0x00753513    8b442430
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00753517    8b542408
    asm("mov.s              ecx, eax");                                      // 0x0075351b    8bc8
    asm("mov                dword ptr [ecx], edx");                          // 0x0075351d    8911
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x0075351f    8b54240c
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x00753523    895104
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00753526    8b542410
    asm("{disp8} mov        dword ptr [ecx + 0x08], edx");                   // 0x0075352a    895108
    asm("pop                esi");                                           // 0x0075352d    5e
    asm("add                esp, 0x28");                                     // 0x0075352e    83c428
    asm("ret                0x0008");                                        // 0x00753531    c20800
    __builtin_unreachable();
}

struct Abode* __fastcall FUN_00753540__8VillagerFv(const struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc6c]");        // 0x00753540    a16c3ccd00
    asm("test               eax, eax");                                      // 0x00753545    85c0
    asm("push               esi");                                           // 0x00753547    56
    asm("mov.s              esi, ecx");                                      // 0x00753548    8bf1
    asm("{disp8} je         _jmp_addr_0x00753558");                          // 0x0075354a    740c
    asm("mov                eax, dword ptr [esi]");                          // 0x0075354c    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075354e    ff5048
    asm("mov.s              ecx, esi");                                      // 0x00753551    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00753553    e808ecffff
    asm("_jmp_addr_0x00753558:");
    asm("pop                esi");                                           // 0x00753558    5e
    asm("ret");                                                              // 0x00753559    c3
    __builtin_unreachable();
}

void __fastcall AdjustTownModifier__8VillagerF15VILLAGER_STATESi(struct Villager* this, const void* edx, enum VILLAGER_STATES state, int param_2)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00753560    8b01
    asm("sub                esp, 0x00000408");                               // 0x00753562    81ec08040000
    asm("push               esi");                                           // 0x00753568    56
    asm("push               edi");                                           // 0x00753569    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075356a    ff5048
    asm("mov.s              edi, eax");                                      // 0x0075356d    8bf8
    asm("test               edi, edi");                                      // 0x0075356f    85ff
    asm("{disp32} je        _jmp_addr_0x0075367c");                          // 0x00753571    0f8405010000
    asm("{disp32} mov       ecx, dword ptr [esp + 0x00000414]");             // 0x00753577    8b8c2414040000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x0075357e    8d0449
    asm("shl                eax, 3");                                        // 0x00753581    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00753584    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x00753586    8d0440
    asm("shl                eax, 2");                                        // 0x00753589    c1e002
    asm("{disp32} mov       esi, dword ptr [eax + 0x00db9e7c]");             // 0x0075358c    8bb07c9edb00
    asm("cmp                esi, -0x01");                                    // 0x00753592    83feff
    asm("{disp32} je        _jmp_addr_0x0075367c");                          // 0x00753595    0f84e1000000
    asm("{disp32} fld       dword ptr [eax + 0x00db9e80]");                  // 0x0075359b    d980809edb00
    asm("{disp32} mov       eax, dword ptr [esp + 0x00000418]");             // 0x007535a1    8b842418040000
    asm("test               eax, eax");                                      // 0x007535a8    85c0
    asm("{disp8} je         _jmp_addr_0x007535b4");                          // 0x007535aa    7408
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x007535ac    d90590a38a00
    asm("{disp8} jmp        _jmp_addr_0x007535ba");                          // 0x007535b2    eb06
    asm("_jmp_addr_0x007535b4:");
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x2678]");              // 0x007535b4    d90578b68a00
    asm("_jmp_addr_0x007535ba:");
    asm("fld                st(0)");                                         // 0x007535ba    d9c0
    asm("fmul               st, st(2)");                                     // 0x007535bc    d8ca
    asm("{disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000510]");      // 0x007535be    d884b710050000
    asm("{disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000510]");      // 0x007535c5    d99cb710050000
    asm("{disp32} fadd      dword ptr [edi + esi * 0x4 + 0x00000554]");      // 0x007535cc    d884b754050000
    asm("{disp8} fst        dword ptr [esp + 0x08]");                        // 0x007535d3    d9542408
    asm("fstp               st(1)");                                         // 0x007535d7    ddd9
    asm("{disp32} fstp      dword ptr [edi + esi * 0x4 + 0x00000554]");      // 0x007535d9    d99cb754050000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]");        // 0x007535e0    a1743ccd00
    asm("test               eax, eax");                                      // 0x007535e5    85c0
    asm("{disp32} je        _jmp_addr_0x0075367c");                          // 0x007535e7    0f848f000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007535ed    8b4c2408
    asm("push               ecx");                                           // 0x007535f1    51
    asm("call               _jmp_addr_0x0048f820");                          // 0x007535f2    e829c2d3ff
    asm("{disp32} mov       edx, dword ptr [edi + esi * 0x4 + 0x00000510]"); // 0x007535f7    8b94b710050000
    asm("add                esp, 0x04");                                     // 0x007535fe    83c404
    asm("push               eax");                                           // 0x00753601    50
    asm("push               edx");                                           // 0x00753602    52
    asm("call               _jmp_addr_0x0048f820");                          // 0x00753603    e818c2d3ff
    asm("add                esp, 0x04");                                     // 0x00753608    83c404
    asm("push               eax");                                           // 0x0075360b    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075360c    8d442414
    asm("push               0x00c2367c");                                    // 0x00753610    687c36c200
    asm("push               eax");                                           // 0x00753615    50
    asm("call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]");   // 0x00753616    ff155c938a00
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0075361c    8b0d5c19d000
    asm("{disp32} mov       edx, dword ptr [ecx + 0x002502d8]");             // 0x00753622    8b91d8022500
    asm("add                esp, 0x10");                                     // 0x00753628    83c410
    asm("push               eax");                                           // 0x0075362b    50
    asm("push               edx");                                           // 0x0075362c    52
    asm("call               _fprintf");                                      // 0x0075362d    e87e370700
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]");        // 0x00753632    a1743ccd00
    asm("add                esp, 0x08");                                     // 0x00753637    83c408
    asm("test               eax, eax");                                      // 0x0075363a    85c0
    asm("{disp8} je         _jmp_addr_0x0075367c");                          // 0x0075363c    743e
    asm("call               dword ptr [rdata_bytes + 0x354]");               // 0x0075363e    ff1554938a00
    asm("push               eax");                                           // 0x00753644    50
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00753645    a15c19d000
    asm("{disp32} mov       ecx, dword ptr [eax + 0x002502d8]");             // 0x0075364a    8b88d8022500
    asm("push               ecx");                                           // 0x00753650    51
    asm("call               _fprintf");                                      // 0x00753651    e85a370700
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc74]");        // 0x00753656    a1743ccd00
    asm("add                esp, 0x08");                                     // 0x0075365b    83c408
    asm("test               eax, eax");                                      // 0x0075365e    85c0
    asm("{disp8} je         _jmp_addr_0x0075367c");                          // 0x00753660    741a
    asm("{disp32} mov       edx, dword ptr [_game]");                        // 0x00753662    8b155c19d000
    asm("{disp32} mov       eax, dword ptr [edx + 0x002502d8]");             // 0x00753668    8b82d8022500
    asm("push               0x009cf590");                                    // 0x0075366e    6890f59c00
    asm("push               eax");                                           // 0x00753673    50
    asm("call               _fprintf");                                      // 0x00753674    e837370700
    asm("add                esp, 0x08");                                     // 0x00753679    83c408
    asm("_jmp_addr_0x0075367c:");
    asm("pop                edi");                                           // 0x0075367c    5f
    asm("pop                esi");                                           // 0x0075367d    5e
    asm("add                esp, 0x00000408");                               // 0x0075367e    81c408040000
    asm("ret                0x0008");                                        // 0x00753684    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetState__8VillagerFUlUc(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state)
{
    asm("push               ebx");                                           // 0x00753690    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00753691    8b5c2408
    asm("cmp                ebx, 0x02");                                     // 0x00753695    83fb02
    asm("push               ebp");                                           // 0x00753698    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x10]");                   // 0x00753699    8b6c2410
    asm("push               edi");                                           // 0x0075369d    57
    asm("mov.s              edi, ecx");                                      // 0x0075369e    8bf9
    asm("{disp8} jne        _jmp_addr_0x007536bf");                          // 0x007536a0    751d
    asm("mov.s              eax, ebp");                                      // 0x007536a2    8bc5
    asm("and                eax, 0x000000ff");                               // 0x007536a4    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x007536a9    8d0c40
    asm("shl                ecx, 3");                                        // 0x007536ac    c1e103
    asm("sub.s              ecx, eax");                                      // 0x007536af    2bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007536b1    8d0449
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9e88]");       // 0x007536b4    8b0c85889edb00
    asm("test               ecx, ecx");                                      // 0x007536bb    85c9
    asm("{disp8} jne        _jmp_addr_0x00753734");                          // 0x007536bd    7575
    asm("_jmp_addr_0x007536bf:");
    asm("xor.s              ecx, ecx");                                      // 0x007536bf    33c9
    asm("{disp32} mov       cl, byte ptr [ebx + edi * 0x1 + 0x0000008c]");   // 0x007536c1    8a8c3b8c000000
    asm("push               esi");                                           // 0x007536c8    56
    asm("mov.s              esi, ebp");                                      // 0x007536c9    8bf5
    asm("and                esi, 0x000000ff");                               // 0x007536cb    81e6ff000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007536d1    8d0449
    asm("shl                eax, 3");                                        // 0x007536d4    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007536d7    2bc1
    asm("lea                edx, dword ptr [eax + eax * 0x2]");              // 0x007536d9    8d1440
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e84]");       // 0x007536dc    8b0495849edb00
    asm("test               eax, eax");                                      // 0x007536e3    85c0
    asm("{disp8} je         _jmp_addr_0x007536f5");                          // 0x007536e5    740e
    asm("test               ecx, ecx");                                      // 0x007536e7    85c9
    asm("{disp8} je         _jmp_addr_0x007536f5");                          // 0x007536e9    740a
    asm("push               0x0");                                           // 0x007536eb    6a00
    asm("push               ecx");                                           // 0x007536ed    51
    asm("mov.s              ecx, edi");                                      // 0x007536ee    8bcf
    asm("call               ?AdjustTownModifier@Villager@@QAEXW4VILLAGER_STATES@@H@Z"); // 0x007536f0    e86bfeffff
    asm("_jmp_addr_0x007536f5:");
    asm("lea                eax, dword ptr [esi + esi * 0x2]");              // 0x007536f5    8d0476
    asm("shl                eax, 3");                                        // 0x007536f8    c1e003
    asm("sub.s              eax, esi");                                      // 0x007536fb    2bc6
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x007536fd    8d0440
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9e84]");       // 0x00753700    8b0c85849edb00
    asm("test               ecx, ecx");                                      // 0x00753707    85c9
    asm("{disp8} je         _jmp_addr_0x00753719");                          // 0x00753709    740e
    asm("test               esi, esi");                                      // 0x0075370b    85f6
    asm("{disp8} je         _jmp_addr_0x00753719");                          // 0x0075370d    740a
    asm("push               0x1");                                           // 0x0075370f    6a01
    asm("push               esi");                                           // 0x00753711    56
    asm("mov.s              ecx, edi");                                      // 0x00753712    8bcf
    asm("call               ?AdjustTownModifier@Villager@@QAEXW4VILLAGER_STATES@@H@Z"); // 0x00753714    e847feffff
    asm("_jmp_addr_0x00753719:");
    asm("test               ebx, ebx");                                      // 0x00753719    85db
    asm("pop                esi");                                           // 0x0075371b    5e
    asm("{disp8} jne        _jmp_addr_0x0075372b");                          // 0x0075371c    750d
    asm("mov                edx, dword ptr [edi]");                          // 0x0075371e    8b17
    asm("push               ebx");                                           // 0x00753720    53
    asm("push               0x1");                                           // 0x00753721    6a01
    asm("mov.s              ecx, edi");                                      // 0x00753723    8bcf
    asm("call               dword ptr [edx + 0x938]");                       // 0x00753725    ff9238090000
    asm("_jmp_addr_0x0075372b:");
    asm("push               ebp");                                           // 0x0075372b    55
    asm("push               ebx");                                           // 0x0075372c    53
    asm("mov.s              ecx, edi");                                      // 0x0075372d    8bcf
    asm("call               @SetState__6LivingFUlUc@16");                    // 0x0075372f    e84cf3e9ff
    asm("_jmp_addr_0x00753734:");
    asm("pop                edi");                                           // 0x00753734    5f
    asm("pop                ebp");                                           // 0x00753735    5d
    asm("pop                ebx");                                           // 0x00753736    5b
    asm("ret                0x0008");                                        // 0x00753737    c20800
    __builtin_unreachable();
}

void __fastcall SetStateSpeed__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x00753740    56
    asm("mov.s              esi, ecx");                                      // 0x00753741    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00753743    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00753745    ff90040b0000
    asm("mov.s              ecx, esi");                                      // 0x0075374b    8bce
    asm("push               eax");                                           // 0x0075374d    50
    asm("call               ?SetStateSpeed@Villager@@QAEXE@Z");              // 0x0075374e    e80d000000
    asm("pop                esi");                                           // 0x00753753    5e
    asm("ret");                                                              // 0x00753754    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetStateSpeed__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("sub                esp, 0x10");                                     // 0x00753760    83ec10
    asm("push               esi");                                           // 0x00753763    56
    asm("mov.s              esi, ecx");                                      // 0x00753764    8bf1
    asm("test               byte ptr [esi + 0x25], 0x04");                   // 0x00753766    f6462504
    asm("{disp32} jne       _jmp_addr_0x00753b48");                          // 0x0075376a    0f85d8030000
    asm("mov                eax, dword ptr [esi]");                          // 0x00753770    8b06
    asm("call               dword ptr [eax + 0x978]");                       // 0x00753772    ff9078090000
    asm("test               eax, eax");                                      // 0x00753778    85c0
    asm("{disp32} jne       _jmp_addr_0x00753b48");                          // 0x0075377a    0f85c8030000
    asm("mov                edx, dword ptr [esi]");                          // 0x00753780    8b16
    asm("push               ebx");                                           // 0x00753782    53
    asm("push               ebp");                                           // 0x00753783    55
    asm("push               edi");                                           // 0x00753784    57
    asm("mov.s              ecx, esi");                                      // 0x00753785    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00753787    ff5248
    asm("mov.s              edi, eax");                                      // 0x0075378a    8bf8
    asm("mov                eax, dword ptr [esi]");                          // 0x0075378c    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075378e    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00753790    ff501c
    asm("mov.s              ecx, eax");                                      // 0x00753793    8bc8
    asm("xor.s              ebp, ebp");                                      // 0x00753795    33ed
    asm("cmp.s              ecx, ebp");                                      // 0x00753797    3bcd
    asm("{disp8} je         _jmp_addr_0x007537be");                          // 0x00753799    7423
    asm("{disp32} fld       dword ptr [ecx + 0x000000c8]");                  // 0x0075379b    d981c8000000
    asm("{disp32} fcomp     dword ptr [__real@3dcccccd]");                   // 0x007537a1    d81d2cb28a00
    asm("fnstsw             ax");                                            // 0x007537a7    dfe0
    asm("test               ah, 0x41");                                      // 0x007537a9    f6c441
    asm("{disp8} jne        _jmp_addr_0x007537b6");                          // 0x007537ac    7508
    asm("{disp32} fld       dword ptr [ecx + 0x000000c8]");                  // 0x007537ae    d981c8000000
    asm("{disp8} jmp        _jmp_addr_0x007537c4");                          // 0x007537b4    eb0e
    asm("_jmp_addr_0x007537b6:");
    asm("{disp32} fld       dword ptr [__real@3dcccccd]");                   // 0x007537b6    d9052cb28a00
    asm("{disp8} jmp        _jmp_addr_0x007537c4");                          // 0x007537bc    eb06
    asm("_jmp_addr_0x007537be:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x007537be    d90590a38a00
    asm("_jmp_addr_0x007537c4:");
    asm("cmp.s              edi, ebp");                                      // 0x007537c4    3bfd
    asm("{disp32} fld       dword ptr [data_bytes + 0x354290]");             // 0x007537c6    d90590a2d100
    asm("fmul               st, st(1)");                                     // 0x007537cc    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007537ce    d95c2410
    asm("fstp               st(0)");                                         // 0x007537d2    ddd8
    asm("{disp32} je        _jmp_addr_0x007538a7");                          // 0x007537d4    0f84cd000000
    asm("cmp.s              ecx, ebp");                                      // 0x007537da    3bcd
    asm("{disp32} je        _jmp_addr_0x007538a7");                          // 0x007537dc    0f84c5000000
    asm("{disp32} mov       edx, dword ptr [_game]");                        // 0x007537e2    8b155c19d000
    asm("xor.s              eax, eax");                                      // 0x007537e8    33c0
    asm("{disp32} mov       al, byte ptr [edx + 0x00205a5b]");               // 0x007537ea    8a825b5a2000
    asm("lea                ebx, dword ptr [eax + eax * 0x4]");              // 0x007537f0    8d1c80
    asm("lea                ebx, dword ptr [eax + ebx * 0x8]");              // 0x007537f3    8d1cd8
    asm("lea                eax, dword ptr [eax + ebx * 0x2]");              // 0x007537f6    8d0458
    asm("shl                eax, 5");                                        // 0x007537f9    c1e005
    asm("{disp8} lea        edx, dword ptr [eax + edx * 0x1 + 0x18]");       // 0x007537fc    8d541018
    asm("cmp.s              ecx, edx");                                      // 0x00753800    3bca
    asm("{disp32} je        _jmp_addr_0x007538a7");                          // 0x00753802    0f849f000000
    asm("push               ecx");                                           // 0x00753808    51
    asm("mov.s              ecx, edi");                                      // 0x00753809    8bcf
    asm("call               _jmp_addr_0x0073bab0");                          // 0x0075380b    e8a082feff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00753810    d95c2414
    asm("mov.s              ecx, edi");                                      // 0x00753814    8bcf
    asm("call               _jmp_addr_0x0073e4b0");                          // 0x00753816    e895acfeff
    asm("{disp8} fsubr      dword ptr [esp + 0x14]");                        // 0x0075381b    d86c2414
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075381f    d81598a38a00
    asm("fnstsw             ax");                                            // 0x00753825    dfe0
    asm("test               ah, 0x41");                                      // 0x00753827    f6c441
    asm("{disp8} jne        _jmp_addr_0x00753838");                          // 0x0075382a    750c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");              // 0x0075382c    d80d04c48a00
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00753832    d95c2414
    asm("{disp8} jmp        _jmp_addr_0x0075383a");                          // 0x00753836    eb02
    asm("_jmp_addr_0x00753838:");
    asm("fstp               st(0)");                                         // 0x00753838    ddd8
    asm("_jmp_addr_0x0075383a:");
    asm("{disp32} fld       dword ptr [data_bytes + 0x35429c]");             // 0x0075383a    d9059ca2d100
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x00753840    d81590a38a00
    asm("{disp8} fst        dword ptr [esp + 0x18]");                        // 0x00753846    d9542418
    asm("fnstsw             ax");                                            // 0x0075384a    dfe0
    asm("test               ah, 0x40");                                      // 0x0075384c    f6c440
    asm("{disp8} je         _jmp_addr_0x00753895");                          // 0x0075384f    7444
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00753851    8b0d5c19d000
    asm("fstp               st(0)");                                         // 0x00753857    ddd8
    asm("cmp                dword ptr [ecx + 0x00205a0c], ebp");             // 0x00753859    39a90c5a2000
    asm("{disp8} jne        _jmp_addr_0x00753886");                          // 0x0075385f    7525
    asm("call               ?IsMultiplayerGame@GGame@@QBE_NXZ");             // 0x00753861    e81af7dfff
    asm("test               eax, eax");                                      // 0x00753866    85c0
    asm("{disp8} jne        _jmp_addr_0x00753886");                          // 0x00753868    751c
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x0075386a    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00205a08]");             // 0x0075386f    8b80085a2000
    asm("cmp                eax, 0x05");                                     // 0x00753875    83f805
    asm("{disp8} ja         _jmp_addr_0x00753891");                          // 0x00753878    7717
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x0075387a    8b4f28
    asm("{disp32} fld       dword ptr [ecx + eax * 0x4 + 0x00000170]");      // 0x0075387d    d9848170010000
    asm("{disp8} jmp        _jmp_addr_0x00753895");                          // 0x00753884    eb0f
    asm("_jmp_addr_0x00753886:");
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00753886    8b5728
    asm("{disp32} fld       dword ptr [edx + 0x0000016c]");                  // 0x00753889    d9826c010000
    asm("{disp8} jmp        _jmp_addr_0x00753895");                          // 0x0075388f    eb04
    asm("_jmp_addr_0x00753891:");
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00753891    d9442418
    asm("_jmp_addr_0x00753895:");
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x00753895    d84c2414
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00753899    d80590a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075389f    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007538a3    d95c2410
    asm("_jmp_addr_0x007538a7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007538a7    8b06
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x007538a9    8b5e28
    asm("mov.s              ecx, esi");                                      // 0x007538ac    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x007538ae    ff901c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x00000380]");                  // 0x007538b4    d89b80030000
    asm("fnstsw             ax");                                            // 0x007538ba    dfe0
    asm("test               ah, 0x41");                                      // 0x007538bc    f6c441
    asm("{disp8} je         _jmp_addr_0x007538f0");                          // 0x007538bf    742f
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007538c1    8b7e28
    asm("push               0x00000b18");                                    // 0x007538c4    68180b0000
    asm("push               0x00c235dc");                                    // 0x007538c9    68dc35c200
    asm("push               0x3e4ccccd");                                    // 0x007538ce    68cdcc4c3e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007538d3    e858acf8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1ea44]");             // 0x007538d8    d805447a8c00
    asm("{disp32} fimul     dword ptr [edi + 0x00000114]");                  // 0x007538de    da8f14010000
    asm("add                esp, 0x0c");                                     // 0x007538e4    83c40c
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x007538e7    d84c2410
    asm("{disp32} jmp       _jmp_addr_0x00753b36");                          // 0x007538eb    e946020000
    asm("_jmp_addr_0x007538f0:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007538f0    8b16
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x007538f2    8b5e28
    asm("mov.s              ecx, esi");                                      // 0x007538f5    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x007538f7    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x0000037c]");                  // 0x007538fd    d89b7c030000
    asm("fnstsw             ax");                                            // 0x00753903    dfe0
    asm("test               ah, 0x41");                                      // 0x00753905    f6c441
    asm("{disp8} je         _jmp_addr_0x00753939");                          // 0x00753908    742f
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0075390a    8b7e28
    asm("push               0x00000b1c");                                    // 0x0075390d    681c0b0000
    asm("push               0x00c235dc");                                    // 0x00753912    68dc35c200
    asm("push               0x3e800000");                                    // 0x00753917    680000803e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075391c    e80facf8ff
    asm("{disp32} fadd      dword ptr [_rdata_float0p5]");                   // 0x00753921    d805b4a38a00
    asm("{disp32} fimul     dword ptr [edi + 0x00000104]");                  // 0x00753927    da8f04010000
    asm("add                esp, 0x0c");                                     // 0x0075392d    83c40c
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00753930    d84c2410
    asm("{disp32} jmp       _jmp_addr_0x00753b36");                          // 0x00753934    e9fd010000
    asm("_jmp_addr_0x00753939:");
    asm("cmp.s              edi, ebp");                                      // 0x00753939    3bfd
    asm("{disp8} je         _jmp_addr_0x0075397b");                          // 0x0075393b    743e
    asm("mov.s              ecx, edi");                                      // 0x0075393d    8bcf
    asm("call               ?IsInStateOfEmergency@Town@@QAE_NXZ");           // 0x0075393f    e82c40ffff
    asm("test               eax, eax");                                      // 0x00753944    85c0
    asm("{disp8} je         _jmp_addr_0x0075397b");                          // 0x00753946    7433
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00753948    8b7e28
    asm("push               0x00000b20");                                    // 0x0075394b    68200b0000
    asm("push               0x00c235dc");                                    // 0x00753950    68dc35c200
    asm("push               0x3f000000");                                    // 0x00753955    680000003f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075395a    e8d1abf8ff
    asm("{disp32} fadd      dword ptr [__real@3f400000]");                   // 0x0075395f    d80574b28a00
    asm("{disp32} fimul     dword ptr [edi + 0x00000108]");                  // 0x00753965    da8f08010000
    asm("add                esp, 0x0c");                                     // 0x0075396b    83c40c
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075396e    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00753972    d95c2410
    asm("{disp32} jmp       _jmp_addr_0x00753b15");                          // 0x00753976    e99a010000
    asm("_jmp_addr_0x0075397b:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                   // 0x0075397b    8b442424
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075397f    d90590a38a00
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x00753985    8b5e28
    asm("and                eax, 0x000000ff");                               // 0x00753988    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x0075398d    8d0c40
    asm("shl                ecx, 3");                                        // 0x00753990    c1e103
    asm("sub.s              ecx, eax");                                      // 0x00753993    2bc8
    asm("cmp.s              edi, ebp");                                      // 0x00753995    3bfd
    asm("lea                edx, dword ptr [ecx + ecx * 0x2]");              // 0x00753997    8d1449
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e9c]");       // 0x0075399a    8b04959c9edb00
    asm("{disp32} mov       ecx, dword ptr [ebx + eax * 0x4 + 0x00000104]"); // 0x007539a1    8b8c8304010000
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x007539a8    894c2414
    asm("{disp8} je         _jmp_addr_0x007539f8");                          // 0x007539ac    744a
    asm("{disp32} mov       edx, dword ptr [ebx + 0x0000036c]");             // 0x007539ae    8b936c030000
    asm("fstp               st(0)");                                         // 0x007539b4    ddd8
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x007539b6    8d4f34
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                   // 0x007539b9    89542424
    asm("call               _jmp_addr_0x00747150");                          // 0x007539bd    e88e37ffff
    asm("{disp32} fdiv      dword ptr [ebx + 0x00000370]");                  // 0x007539c2    d8b370030000
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x007539c8    d81598a38a00
    asm("fnstsw             ax");                                            // 0x007539ce    dfe0
    asm("test               ah, 0x01");                                      // 0x007539d0    f6c401
    asm("{disp8} je         _jmp_addr_0x007539df");                          // 0x007539d3    740a
    asm("fstp               st(0)");                                         // 0x007539d5    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x007539d7    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x007539f4");                          // 0x007539dd    eb15
    asm("_jmp_addr_0x007539df:");
    asm("{disp32} fcom      dword ptr [_rdata_float0p5]");                   // 0x007539df    d815b4a38a00
    asm("fnstsw             ax");                                            // 0x007539e5    dfe0
    asm("test               ah, 0x41");                                      // 0x007539e7    f6c441
    asm("{disp8} jne        _jmp_addr_0x007539f4");                          // 0x007539ea    7508
    asm("fstp               st(0)");                                         // 0x007539ec    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p5]");                   // 0x007539ee    d905b4a38a00
    asm("_jmp_addr_0x007539f4:");
    asm("{disp8} fadd       dword ptr [esp + 0x24]");                        // 0x007539f4    d8442424
    asm("_jmp_addr_0x007539f8:");
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000f2]");               // 0x007539f8    8a8ef2000000
    asm("cmp                cl, 0x09");                                      // 0x007539fe    80f909
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00753a01    8b4628
    asm("{disp8} jne        _jmp_addr_0x00753a1a");                          // 0x00753a04    7514
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000278]");             // 0x00753a06    8b9078020000
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00753a0c    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                   // 0x00753a10    896c241c
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00753a14    df6c2418
    asm("{disp8} jmp        _jmp_addr_0x00753a2c");                          // 0x00753a18    eb12
    asm("_jmp_addr_0x00753a1a:");
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000268]");             // 0x00753a1a    8b9068020000
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00753a20    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                   // 0x00753a24    896c241c
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00753a28    df6c2418
    asm("_jmp_addr_0x00753a2c:");
    asm("cmp                cl, 0x09");                                      // 0x00753a2c    80f909
    asm("{disp8} jne        _jmp_addr_0x00753a45");                          // 0x00753a2f    7514
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000274]");             // 0x00753a31    8b8874020000
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00753a37    894c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                   // 0x00753a3b    896c241c
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00753a3f    df6c2418
    asm("{disp8} jmp        _jmp_addr_0x00753a57");                          // 0x00753a43    eb12
    asm("_jmp_addr_0x00753a45:");
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000264]");             // 0x00753a45    8b9064020000
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00753a4b    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                   // 0x00753a4f    896c241c
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00753a53    df6c2418
    asm("_jmp_addr_0x00753a57:");
    asm("movsx              ecx, word ptr [esi + 0x000000f6]");              // 0x00753a57    0fbf8ef6000000
    asm("{disp32} fld       dword ptr [eax + 0x00000374]");                  // 0x00753a5e    d98074030000
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00753a64    d80590a38a00
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x00753a6a    894c2424
    asm("movsx              edx, word ptr [esi + 0x000000f4]");              // 0x00753a6e    0fbf96f4000000
    asm("{disp8} fild       dword ptr [esp + 0x24]");                        // 0x00753a75    db442424
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00753a79    89542418
    asm("fdiv               st, st(3)");                                     // 0x00753a7d    d8f3
    asm("fsubp              st(1), st");                                     // 0x00753a7f    dee9
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00753a81    d95c2424
    asm("{disp32} fld       dword ptr [eax + 0x00000378]");                  // 0x00753a85    d98078030000
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00753a8b    d80590a38a00
    asm("{disp8} fild       dword ptr [esp + 0x18]");                        // 0x00753a91    db442418
    asm("fdiv               st, st(2)");                                     // 0x00753a95    d8f2
    asm("fsubp              st(1), st");                                     // 0x00753a97    dee9
    asm("fstp               st(2)");                                         // 0x00753a99    ddda
    asm("fstp               st(0)");                                         // 0x00753a9b    ddd8
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00753a9d    d9442424
    asm("{disp32} fcomp     dword ptr [__real@3f400000]");                   // 0x00753aa1    d81d74b28a00
    asm("fnstsw             ax");                                            // 0x00753aa7    dfe0
    asm("test               ah, 0x01");                                      // 0x00753aa9    f6c401
    asm("{disp8} je         _jmp_addr_0x00753ab8");                          // 0x00753aac    740a
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x3f400000");            // 0x00753aae    c74424240000403f
    asm("{disp8} jmp        _jmp_addr_0x00753ad1");                          // 0x00753ab6    eb19
    asm("_jmp_addr_0x00753ab8:");
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00753ab8    d9442424
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00753abc    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00753ac2    dfe0
    asm("test               ah, 0x41");                                      // 0x00753ac4    f6c441
    asm("{disp8} jne        _jmp_addr_0x00753ad1");                          // 0x00753ac7    7508
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x3f800000");            // 0x00753ac9    c74424240000803f
    asm("_jmp_addr_0x00753ad1:");
    asm("{disp32} fcom      dword ptr [__real@3f400000]");                   // 0x00753ad1    d81574b28a00
    asm("fnstsw             ax");                                            // 0x00753ad7    dfe0
    asm("test               ah, 0x01");                                      // 0x00753ad9    f6c401
    asm("{disp8} je         _jmp_addr_0x00753ae8");                          // 0x00753adc    740a
    asm("fstp               st(0)");                                         // 0x00753ade    ddd8
    asm("{disp32} fld       dword ptr [__real@3f400000]");                   // 0x00753ae0    d90574b28a00
    asm("{disp8} jmp        _jmp_addr_0x00753afd");                          // 0x00753ae6    eb15
    asm("_jmp_addr_0x00753ae8:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x00753ae8    d81590a38a00
    asm("fnstsw             ax");                                            // 0x00753aee    dfe0
    asm("test               ah, 0x41");                                      // 0x00753af0    f6c441
    asm("{disp8} jne        _jmp_addr_0x00753afd");                          // 0x00753af3    7508
    asm("fstp               st(0)");                                         // 0x00753af5    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00753af7    d90590a38a00
    asm("_jmp_addr_0x00753afd:");
    asm("{disp8} fild       dword ptr [esp + 0x14]");                        // 0x00753afd    db442414
    asm("fmul               st, st(1)");                                     // 0x00753b01    d8c9
    asm("{disp8} fmul       dword ptr [esp + 0x24]");                        // 0x00753b03    d84c2424
    asm("fmul               st, st(2)");                                     // 0x00753b07    d8ca
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00753b09    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00753b0d    d95c2410
    asm("fstp               st(0)");                                         // 0x00753b11    ddd8
    asm("fstp               st(0)");                                         // 0x00753b13    ddd8
    asm("_jmp_addr_0x00753b15:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00753b15    8b06
    asm("mov.s              ecx, esi");                                      // 0x00753b17    8bce
    asm("call               dword ptr [eax + 0x87c]");                       // 0x00753b19    ff907c080000
    asm("test               al, al");                                        // 0x00753b1f    84c0
    asm("{disp8} je         _jmp_addr_0x00753b32");                          // 0x00753b21    740f
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00753b23    8b4e28
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00753b26    d9442410
    asm("{disp32} fmul      dword ptr [ecx + 0x0000039c]");                  // 0x00753b2a    d8899c030000
    asm("{disp8} jmp        _jmp_addr_0x00753b36");                          // 0x00753b30    eb04
    asm("_jmp_addr_0x00753b32:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00753b32    d9442410
    asm("_jmp_addr_0x00753b36:");
    asm("push               0x1");                                           // 0x00753b36    6a01
    asm("call               _jmp_addr_0x007a1400");                          // 0x00753b38    e8c3d80400
    asm("push               eax");                                           // 0x00753b3d    50
    asm("mov.s              ecx, esi");                                      // 0x00753b3e    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                  // 0x00753b40    e88bd3ffff
    asm("pop                edi");                                           // 0x00753b45    5f
    asm("pop                ebp");                                           // 0x00753b46    5d
    asm("pop                ebx");                                           // 0x00753b47    5b
    asm("_jmp_addr_0x00753b48:");
    asm("pop                esi");                                           // 0x00753b48    5e
    asm("add                esp, 0x10");                                     // 0x00753b49    83c410
    asm("ret                0x0004");                                        // 0x00753b4c    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SetupNothingToDo__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00753b50    83ec0c
    asm("push               ebx");                                           // 0x00753b53    53
    asm("push               esi");                                           // 0x00753b54    56
    asm("mov.s              esi, ecx");                                      // 0x00753b55    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00753b57    8b06
    asm("push               edi");                                           // 0x00753b59    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00753b5a    ff5048
    asm("mov.s              ecx, esi");                                      // 0x00753b5d    8bce
    asm("mov.s              ebx, eax");                                      // 0x00753b5f    8bd8
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00753b61    e8fae5ffff
    asm("push               0x00000b46");                                    // 0x00753b66    68460b0000
    asm("push               0x00c235dc");                                    // 0x00753b6b    68dc35c200
    asm("push               0x9");                                           // 0x00753b70    6a09
    asm("mov.s              edi, eax");                                      // 0x00753b72    8bf8
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00753b74    e897a9f8ff
    asm("add                esp, 0x0c");                                     // 0x00753b79    83c40c
    asm("cmp                eax, 0x08");                                     // 0x00753b7c    83f808
    asm("{disp32} ja        _jmp_addr_0x00753c3f");                          // 0x00753b7f    0f87ba000000
    asm("xor.s              ecx, ecx");                                      // 0x00753b85    33c9
    asm("{disp32} mov       cl, byte ptr [eax + 0x00753c64]");               // 0x00753b87    8a88643c7500
    asm("jmp                dword ptr [ecx*4 + 0x753c58]");                  // 0x00753b8d    ff248d583c7500
    asm("test               edi, edi");                                      // 0x00753b94    85ff
    asm("{disp8} je         _jmp_addr_0x00753ba6");                          // 0x00753b96    740e
    asm("mov                edx, dword ptr [edi]");                          // 0x00753b98    8b17
    asm("mov.s              ecx, edi");                                      // 0x00753b9a    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00753b9c    ff92d4000000
    asm("test               eax, eax");                                      // 0x00753ba2    85c0
    asm("{disp8} jne        _jmp_addr_0x00753bbf");                          // 0x00753ba4    7519
    asm("_jmp_addr_0x00753ba6:");
    asm("push               0x00000b4b");                                    // 0x00753ba6    684b0b0000
    asm("push               0x00c235dc");                                    // 0x00753bab    68dc35c200
    asm("push               0x64");                                          // 0x00753bb0    6a64
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00753bb2    e859a9f8ff
    asm("add                esp, 0x0c");                                     // 0x00753bb7    83c40c
    asm("cmp                eax, 0x0a");                                     // 0x00753bba    83f80a
    asm("{disp8} jae        _jmp_addr_0x00753bd7");                          // 0x00753bbd    7318
    asm("_jmp_addr_0x00753bbf:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00753bbf    8b06
    asm("push               0x24");                                          // 0x00753bc1    6a24
    asm("mov.s              ecx, esi");                                      // 0x00753bc3    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00753bc5    ff90e8080000
    asm("pop                edi");                                           // 0x00753bcb    5f
    asm("pop                esi");                                           // 0x00753bcc    5e
    asm("mov                eax, 0x00000001");                               // 0x00753bcd    b801000000
    asm("pop                ebx");                                           // 0x00753bd2    5b
    asm("add                esp, 0x0c");                                     // 0x00753bd3    83c40c
    asm("ret");                                                              // 0x00753bd6    c3
    asm("_jmp_addr_0x00753bd7:");
    asm("test               edi, edi");                                      // 0x00753bd7    85ff
    asm("{disp8} je         _jmp_addr_0x00753bf6");                          // 0x00753bd9    741b
    asm("mov                edx, dword ptr [esi]");                          // 0x00753bdb    8b16
    asm("push               0x000000f5");                                    // 0x00753bdd    68f5000000
    asm("mov.s              ecx, esi");                                      // 0x00753be2    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00753be4    ff92e8080000
    asm("pop                edi");                                           // 0x00753bea    5f
    asm("pop                esi");                                           // 0x00753beb    5e
    asm("mov                eax, 0x00000001");                               // 0x00753bec    b801000000
    asm("pop                ebx");                                           // 0x00753bf1    5b
    asm("add                esp, 0x0c");                                     // 0x00753bf2    83c40c
    asm("ret");                                                              // 0x00753bf5    c3
    asm("_jmp_addr_0x00753bf6:");
    asm("test               ebx, ebx");                                      // 0x00753bf6    85db
    asm("{disp8} je         _jmp_addr_0x00753c3f");                          // 0x00753bf8    7445
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00753bfa    8d44240c
    asm("push               eax");                                           // 0x00753bfe    50
    asm("mov.s              ecx, esi");                                      // 0x00753bff    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00753c01    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00753c09    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x00753c11    c744241800000000
    asm("call               ?GetChillOutPos@Villager@@QAEIAAUMapCoords@@@Z");// 0x00753c19    e852000000
    asm("test               eax, eax");                                      // 0x00753c1e    85c0
    asm("{disp8} je         _jmp_addr_0x00753c3f");                          // 0x00753c20    741d
    asm("push               0x000000f6");                                    // 0x00753c22    68f6000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00753c27    8d4c2410
    asm("push               ecx");                                           // 0x00753c2b    51
    asm("mov.s              ecx, esi");                                      // 0x00753c2c    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00753c2e    e85dece9ff
    asm("pop                edi");                                           // 0x00753c33    5f
    asm("pop                esi");                                           // 0x00753c34    5e
    asm("mov                eax, 0x00000001");                               // 0x00753c35    b801000000
    asm("pop                ebx");                                           // 0x00753c3a    5b
    asm("add                esp, 0x0c");                                     // 0x00753c3b    83c40c
    asm("ret");                                                              // 0x00753c3e    c3
    asm("_jmp_addr_0x00753c3f:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00753c3f    8b16
    asm("push               0x24");                                          // 0x00753c41    6a24
    asm("mov.s              ecx, esi");                                      // 0x00753c43    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00753c45    ff92e8080000
    asm("pop                edi");                                           // 0x00753c4b    5f
    asm("pop                esi");                                           // 0x00753c4c    5e
    asm("mov                eax, 0x00000001");                               // 0x00753c4d    b801000000
    asm("pop                ebx");                                           // 0x00753c52    5b
    asm("add                esp, 0x0c");                                     // 0x00753c53    83c40c
    asm("ret");                                                              // 0x00753c56    c3
    // Snippet: db, [0x00753c57, 0x00753c58)
    asm(".byte 0x90");                        // 0x00753c57
    // Snippet: jmptbl, [0x00753c58, 0x00753c64)
    asm(".byte 0x94, 0x3b, 0x75, 0x00");      // 0x00753c58
    asm(".byte 0xd7, 0x3b, 0x75, 0x00");      // 0x00753c5c
    asm(".byte 0xf6, 0x3b, 0x75, 0x00");      // 0x00753c60
    // Snippet: ijmptbl, [0x00753c64, 0x00753c6d)
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x00753c64
    asm(".byte 0x02, 0x02, 0x02, 0x02");      // 0x00753c68
    asm(".byte 0x02");                        // 0x00753c6c
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetChillOutPos__8VillagerFR9MapCoords(struct Villager* this, const void* edx, struct MapCoords* coords)
{
    asm("sub               esp, 0x2c");                                     // 0x00753c70    83ec2c
    asm("push              esi");                                           // 0x00753c73    56
    asm("push              edi");                                           // 0x00753c74    57
    asm("mov.s             edi, ecx");                                      // 0x00753c75    8bf9
    asm("mov               eax, dword ptr [edi]");                          // 0x00753c77    8b07
    asm("call              dword ptr [eax + 0x48]");                        // 0x00753c79    ff5048
    asm("mov.s             esi, eax");                                      // 0x00753c7c    8bf0
    asm("test              esi, esi");                                      // 0x00753c7e    85f6
    asm("{disp32} je       _jmp_addr_0x00753d45");                          // 0x00753c80    0f84bf000000
    asm("{disp8} lea       ecx, dword ptr [esp + 0x10]");                   // 0x00753c86    8d4c2410
    asm("push              ecx");                                           // 0x00753c8a    51
    asm("mov.s             ecx, esi");                                      // 0x00753c8b    8bce
    asm("call              ?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z");  // 0x00753c8d    e81eccfeff
    asm("{disp8} mov       edx, dword ptr [esi + 0x28]");                   // 0x00753c92    8b5628
    asm("{disp32} fld      dword ptr [edx + 0x00000140]");                  // 0x00753c95    d98240010000
    asm("add               edi, 0x14");                                     // 0x00753c9b    83c714
    asm("{disp32} fmul     dword ptr [rdata_bytes + 0x3404]");              // 0x00753c9e    d80d04c48a00
    asm("{disp8} lea       eax, dword ptr [esp + 0x10]");                   // 0x00753ca4    8d442410
    asm("push              edi");                                           // 0x00753ca8    57
    asm("push              eax");                                           // 0x00753ca9    50
    asm("{disp8} fstp      dword ptr [esp + 0x10]");                        // 0x00753caa    d95c2410
    asm("call              ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00753cae    e8bd95ffff
    asm("{disp8} fstp      dword ptr [esp + 0x14]");                        // 0x00753cb3    d95c2414
    asm("push              0x00000b7c");                                    // 0x00753cb7    687c0b0000
    asm("push              0x00c235dc");                                    // 0x00753cbc    68dc35c200
    asm("push              0x3f490fdb");                                    // 0x00753cc1    68db0f493f
    asm("call              ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00753cc6    e865a8f8ff
    asm("{disp32} fsub     dword ptr [rdata_bytes + 0x1dca0]");             // 0x00753ccb    d825a06c8c00
    asm("add               esp, 0x14");                                     // 0x00753cd1    83c414
    asm("push              0x00000b7d");                                    // 0x00753cd4    687d0b0000
    asm("{disp8} fadd      dword ptr [esp + 0x10]");                        // 0x00753cd9    d8442410
    asm("push              0x00c235dc");                                    // 0x00753cdd    68dc35c200
    asm("push              ecx");                                           // 0x00753ce2    51
    asm("{disp8} fstp      dword ptr [esp + 0x18]");                        // 0x00753ce3    d95c2418
    asm("{disp8} fld       dword ptr [esp + 0x14]");                        // 0x00753ce7    d9442414
    asm("{disp32} fmul     dword ptr [rdata_bytes + 0x56ec8]");             // 0x00753ceb    d80dc8fe8f00
    asm("fstp              dword ptr [esp]");                               // 0x00753cf1    d91c24
    asm("call              ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00753cf4    e837a8f8ff
    asm("{disp8} mov       ecx, dword ptr [esp + 0x18]");                   // 0x00753cf9    8b4c2418
    asm("{disp8} fadd      dword ptr [esp + 0x14]");                        // 0x00753cfd    d8442414
    asm("add               esp, 0x08");                                     // 0x00753d01    83c408
    asm("{disp8} lea       edx, dword ptr [esp + 0x20]");                   // 0x00753d04    8d542420
    asm("fstp              dword ptr [esp]");                               // 0x00753d08    d91c24
    asm("push              ecx");                                           // 0x00753d0b    51
    asm("push              edx");                                           // 0x00753d0c    52
    asm("call              ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00753d0d    e86e98ffff
    asm("add               esp, 0x0c");                                     // 0x00753d12    83c40c
    asm("push              eax");                                           // 0x00753d15    50
    asm("{disp8} lea       eax, dword ptr [esp + 0x2c]");                   // 0x00753d16    8d44242c
    asm("push              eax");                                           // 0x00753d1a    50
    asm("{disp8} lea       ecx, dword ptr [esp + 0x18]");                   // 0x00753d1b    8d4c2418
    asm("call              @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x00753d1f    e8fc17ebff
    asm("mov               edx, dword ptr [eax]");                          // 0x00753d24    8b10
    asm("{disp8} mov       ecx, dword ptr [esp + 0x38]");                   // 0x00753d26    8b4c2438
    asm("mov               dword ptr [ecx], edx");                          // 0x00753d2a    8911
    asm("{disp8} mov       edx, dword ptr [eax + 0x04]");                   // 0x00753d2c    8b5004
    asm("{disp8} mov       dword ptr [ecx + 0x04], edx");                   // 0x00753d2f    895104
    asm("{disp8} mov       eax, dword ptr [eax + 0x08]");                   // 0x00753d32    8b4008
    asm("pop               edi");                                           // 0x00753d35    5f
    asm("{disp8} mov       dword ptr [ecx + 0x08], eax");                   // 0x00753d36    894108
    asm("mov               eax, 0x00000001");                               // 0x00753d39    b801000000
    asm("pop               esi");                                           // 0x00753d3e    5e
    asm("add               esp, 0x2c");                                     // 0x00753d3f    83c42c
    asm("ret               0x0004");                                        // 0x00753d42    c20400
    asm("_jmp_addr_0x00753d45:");
    asm("pop               edi");                                           // 0x00753d45    5f
    asm("xor.s             eax, eax");                                      // 0x00753d46    33c0
    asm("pop               esi");                                           // 0x00753d48    5e
    asm("add               esp, 0x2c");                                     // 0x00753d49    83c42c
    asm("ret               0x0004");                                        // 0x00753d4c    c20400
    asm("nop");                                                             // 0x00753d4f    90
    asm("sub               esp, 0x10");                                     // 0x00753d50    83ec10
    asm("push              esi");                                           // 0x00753d53    56
    asm("mov.s             esi, ecx");                                      // 0x00753d54    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x00753d56    8b06
    asm("call              dword ptr [eax + 0x48]");                        // 0x00753d58    ff5048
    asm("test              eax, eax");                                      // 0x00753d5b    85c0
    asm("{disp8} je        _jmp_addr_0x00753dbb");                          // 0x00753d5d    745c
    asm("{disp8} mov       ecx, dword ptr [eax + 0x28]");                   // 0x00753d5f    8b4828
    asm("{disp32} fld      dword ptr [ecx + 0x00000144]");                  // 0x00753d62    d98144010000
    asm("mov.s             ecx, esi");                                      // 0x00753d68    8bce
    asm("{disp32} fmul     dword ptr [_rdata_float0p5]");                   // 0x00753d6a    d80db4a38a00
    asm("{disp8} fstp      dword ptr [esp + 0x04]");                        // 0x00753d70    d95c2404
    asm("call              ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00753d74    e8e7e3ffff
    asm("test              eax, eax");                                      // 0x00753d79    85c0
    asm("{disp8} je        _jmp_addr_0x00753dbb");                          // 0x00753d7b    743e
    asm("{disp8} fld       dword ptr [esp + 0x04]");                        // 0x00753d7d    d9442404
    asm("{disp8} mov       edx, dword ptr [esp + 0x04]");                   // 0x00753d81    8b542404
    asm("push              ecx");                                           // 0x00753d85    51
    asm("fstp              dword ptr [esp]");                               // 0x00753d86    d91c24
    asm("push              edx");                                           // 0x00753d89    52
    asm("push              0x40400000");                                    // 0x00753d8a    6800004040
    asm("{disp8} lea       ecx, dword ptr [esp + 0x14]");                   // 0x00753d8f    8d4c2414
    asm("push              ecx");                                           // 0x00753d93    51
    asm("mov.s             ecx, eax");                                      // 0x00753d94    8bc8
    asm("call              ?GetPosOutside@Abode@@QAEPAUMapCoords@@PAU2@MMM@Z");  // 0x00753d96    e84535cbff
    asm("mov               ecx, dword ptr [eax]");                          // 0x00753d9b    8b08
    asm("{disp8} mov       edx, dword ptr [esp + 0x18]");                   // 0x00753d9d    8b542418
    asm("mov               dword ptr [edx], ecx");                          // 0x00753da1    890a
    asm("{disp8} mov       ecx, dword ptr [eax + 0x04]");                   // 0x00753da3    8b4804
    asm("{disp8} mov       dword ptr [edx + 0x04], ecx");                   // 0x00753da6    894a04
    asm("{disp8} mov       eax, dword ptr [eax + 0x08]");                   // 0x00753da9    8b4008
    asm("{disp8} mov       dword ptr [edx + 0x08], eax");                   // 0x00753dac    894208
    asm("mov               eax, 0x00000001");                               // 0x00753daf    b801000000
    asm("pop               esi");                                           // 0x00753db4    5e
    asm("add               esp, 0x10");                                     // 0x00753db5    83c410
    asm("ret               0x0004");                                        // 0x00753db8    c20400
    asm("_jmp_addr_0x00753dbb:");
    asm("xor.s             eax, eax");                                      // 0x00753dbb    33c0
    asm("pop               esi");                                           // 0x00753dbd    5e
    asm("add               esp, 0x10");                                     // 0x00753dbe    83c410
    asm("ret               0x0004");                                        // 0x00753dc1    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall VillagerCreated__8VillagerFv(struct Villager* this)
{
    asm("xor.s             eax, eax");                                      // 0x00753dd0    33c0
    asm("{disp8} mov       ax, word ptr [ecx + 0x58]");                     // 0x00753dd2    668b4158
    asm("test              ax, ax");                                        // 0x00753dd6    6685c0
    asm("{disp8} lea       edx, dword ptr [eax + -0x01]");                  // 0x00753dd9    8d50ff
    asm("{disp8} mov       word ptr [ecx + 0x58], dx");                     // 0x00753ddc    66895158
    asm("{disp8} jne       _jmp_addr_0x00753df3");                          // 0x00753de0    7511
    asm("{disp8} mov       word ptr [ecx + 0x58], ax");                     // 0x00753de2    66894158
    asm("mov               eax, dword ptr [ecx]");                          // 0x00753de6    8b01
    asm("push              0x000000a3");                                    // 0x00753de8    68a3000000
    asm("call              dword ptr [eax + 0x8e8]");                       // 0x00753ded    ff90e8080000
    asm("_jmp_addr_0x00753df3:");
    asm("mov               eax, 0x00000001");                               // 0x00753df3    b801000000
    asm("ret");                                                             // 0x00753df8    c3
    __builtin_unreachable();
}

uint32_t __fastcall RemoveFromGame__8VillagerFv(struct Object* this)
{
    asm("push              esi");                                           // 0x00753e00    56
    asm("mov.s             esi, ecx");                                      // 0x00753e01    8bf1
    asm("call              ?DeleteDependancys@Villager@@QAEXXZ");           // 0x00753e03    e858bfffff
    asm("mov.s             ecx, esi");                                      // 0x00753e08    8bce
    asm("call              ?RemoveFromGame@Living@@UAEIXZ");                // 0x00753e0a    e851a7e9ff
    asm("pop               esi");                                           // 0x00753e0f    5e
    asm("ret");                                                             // 0x00753e10    c3
    __builtin_unreachable();
}

struct GameThingWithPos* __fastcall GetResourceDropoffPos__8VillagerF13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1)
{
    asm("sub               esp, 0x0c");                                     // 0x00753e20    83ec0c
    asm("push              ebx");                                           // 0x00753e23    53
    asm("push              esi");                                           // 0x00753e24    56
    asm("mov.s             esi, ecx");                                      // 0x00753e25    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x00753e27    8b06
    asm("push              edi");                                           // 0x00753e29    57
    asm("call              dword ptr [eax + 0x48]");                        // 0x00753e2a    ff5048
    asm("mov.s             ecx, esi");                                      // 0x00753e2d    8bce
    asm("mov.s             ebx, eax");                                      // 0x00753e2f    8bd8
    asm("{disp8} mov       dword ptr [esp + 0x0c], 0x00000000");            // 0x00753e31    c744240c00000000
    asm("{disp8} mov       dword ptr [esp + 0x10], 0x00000000");            // 0x00753e39    c744241000000000
    asm("{disp8} mov       dword ptr [esp + 0x14], 0x00000000");            // 0x00753e41    c744241400000000
    asm("call              ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00753e49    e8c2e0ffff
    asm("mov.s             edi, eax");                                      // 0x00753e4e    8bf8
    asm("test              edi, edi");                                      // 0x00753e50    85ff
    asm("{disp8} je        _jmp_addr_0x00753e7c");                          // 0x00753e52    7428
    asm("mov               edx, dword ptr [edi]");                          // 0x00753e54    8b17
    asm("mov.s             ecx, edi");                                      // 0x00753e56    8bcf
    asm("call              dword ptr [edx + 0xd4]");                        // 0x00753e58    ff92d4000000
    asm("test              eax, eax");                                      // 0x00753e5e    85c0
    asm("{disp8} je        _jmp_addr_0x00753e7c");                          // 0x00753e60    741a
    asm("_jmp_addr_0x00753e62:");
    asm("{disp8} mov       esi, dword ptr [esp + 0x1c]");                   // 0x00753e62    8b74241c
    asm("mov               eax, dword ptr [edi]");                          // 0x00753e66    8b07
    asm("push              esi");                                           // 0x00753e68    56
    asm("mov.s             ecx, edi");                                      // 0x00753e69    8bcf
    asm("call              dword ptr [eax + 0x104]");                       // 0x00753e6b    ff9004010000
    asm("pop               edi");                                           // 0x00753e71    5f
    asm("mov.s             eax, esi");                                      // 0x00753e72    8bc6
    asm("pop               esi");                                           // 0x00753e74    5e
    asm("pop               ebx");                                           // 0x00753e75    5b
    asm("add               esp, 0x0c");                                     // 0x00753e76    83c40c
    asm("ret               0x0008");                                        // 0x00753e79    c20800
    asm("_jmp_addr_0x00753e7c:");
    asm("test              ebx, ebx");                                      // 0x00753e7c    85db
    asm("{disp8} je        _jmp_addr_0x00753ed3");                          // 0x00753e7e    7453
    asm("mov.s             ecx, ebx");                                      // 0x00753e80    8bcb
    asm("call              ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");     // 0x00753e82    e82977feff
    asm("mov.s             edi, eax");                                      // 0x00753e87    8bf8
    asm("test              edi, edi");                                      // 0x00753e89    85ff
    asm("{disp8} je        _jmp_addr_0x00753e9b");                          // 0x00753e8b    740e
    asm("mov               edx, dword ptr [edi]");                          // 0x00753e8d    8b17
    asm("mov.s             ecx, edi");                                      // 0x00753e8f    8bcf
    asm("call              dword ptr [edx + 0xd4]");                        // 0x00753e91    ff92d4000000
    asm("test              eax, eax");                                      // 0x00753e97    85c0
    asm("{disp8} jne       _jmp_addr_0x00753e62");                          // 0x00753e99    75c7
    asm("_jmp_addr_0x00753e9b:");
    asm("{disp8} mov       ecx, dword ptr [esp + 0x20]");                   // 0x00753e9b    8b4c2420
    asm("push              ecx");                                           // 0x00753e9f    51
    asm("{disp8} lea       edx, dword ptr [esp + 0x10]");                   // 0x00753ea0    8d542410
    asm("push              edx");                                           // 0x00753ea4    52
    asm("add               esi, 0x14");                                     // 0x00753ea5    83c614
    asm("push              esi");                                           // 0x00753ea8    56
    asm("mov.s             ecx, ebx");                                      // 0x00753ea9    8bcb
    asm("call              ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z");                          // 0x00753eab    e850aafeff
    asm("{disp8} mov       eax, dword ptr [esp + 0x1c]");                   // 0x00753eb0    8b44241c
    asm("{disp8} mov       edx, dword ptr [esp + 0x0c]");                   // 0x00753eb4    8b54240c
    asm("mov.s             ecx, eax");                                      // 0x00753eb8    8bc8
    asm("mov               dword ptr [ecx], edx");                          // 0x00753eba    8911
    asm("{disp8} mov       edx, dword ptr [esp + 0x10]");                   // 0x00753ebc    8b542410
    asm("pop               edi");                                           // 0x00753ec0    5f
    asm("{disp8} mov       dword ptr [ecx + 0x04], edx");                   // 0x00753ec1    895104
    asm("{disp8} mov       edx, dword ptr [esp + 0x10]");                   // 0x00753ec4    8b542410
    asm("pop               esi");                                           // 0x00753ec8    5e
    asm("{disp8} mov       dword ptr [ecx + 0x08], edx");                   // 0x00753ec9    895108
    asm("pop               ebx");                                           // 0x00753ecc    5b
    asm("add               esp, 0x0c");                                     // 0x00753ecd    83c40c
    asm("ret               0x0008");                                        // 0x00753ed0    c20800
    asm("_jmp_addr_0x00753ed3:");
    asm("{disp8} mov       eax, dword ptr [esp + 0x1c]");                   // 0x00753ed3    8b44241c
    asm("add               esi, 0x14");                                     // 0x00753ed7    83c614
    asm("mov               edx, dword ptr [esi]");                          // 0x00753eda    8b16
    asm("mov.s             ecx, eax");                                      // 0x00753edc    8bc8
    asm("mov               dword ptr [ecx], edx");                          // 0x00753ede    8911
    asm("{disp8} mov       edx, dword ptr [esi + 0x04]");                   // 0x00753ee0    8b5604
    asm("{disp8} mov       dword ptr [ecx + 0x04], edx");                   // 0x00753ee3    895104
    asm("{disp8} mov       edx, dword ptr [esi + 0x08]");                   // 0x00753ee6    8b5608
    asm("pop               edi");                                           // 0x00753ee9    5f
    asm("pop               esi");                                           // 0x00753eea    5e
    asm("{disp8} mov       dword ptr [ecx + 0x08], edx");                   // 0x00753eeb    895108
    asm("pop               ebx");                                           // 0x00753eee    5b
    asm("add               esp, 0x0c");                                     // 0x00753eef    83c40c
    asm("ret               0x0008");                                        // 0x00753ef2    c20800
    __builtin_unreachable();
}

bool __fastcall IsFinalState__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov       eax, dword ptr [esp + 0x04]");                   // 0x00753f00    8b442404
    asm("and               eax, 0x000000ff");                               // 0x00753f04    25ff000000
    asm("lea               ecx, dword ptr [eax + eax * 0x2]");              // 0x00753f09    8d0c40
    asm("shl               ecx, 3");                                        // 0x00753f0c    c1e103
    asm("sub.s             ecx, eax");                                      // 0x00753f0f    2bc8
    asm("lea               eax, dword ptr [ecx + ecx * 0x2]");              // 0x00753f11    8d0449
    asm("{disp32} mov      eax, dword ptr [eax * 0x4 + 0x00db9e84]");       // 0x00753f14    8b0485849edb00
    asm("ret               0x0004");                                        // 0x00753f1b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum HELP_TEXT __fastcall GetQueryFirstEnumText__8VillagerFv(struct GameThingWithPos* this)
{
    asm("push              esi");                                           // 0x00753f20    56
    asm("mov.s             esi, ecx");                                      // 0x00753f21    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x00753f23    8b06
    asm("call              dword ptr [eax + 0xb04]");                       // 0x00753f25    ff90040b0000
    asm("and               eax, 0x000000ff");                               // 0x00753f2b    25ff000000
    asm("mov.s             ecx, eax");                                      // 0x00753f30    8bc8
    asm("lea               eax, dword ptr [ecx + ecx * 0x2]");              // 0x00753f32    8d0449
    asm("shl               eax, 3");                                        // 0x00753f35    c1e003
    asm("sub.s             eax, ecx");                                      // 0x00753f38    2bc1
    asm("lea               ecx, dword ptr [eax + eax * 0x2]");              // 0x00753f3a    8d0c40
    asm("{disp32} mov      eax, dword ptr [ecx * 0x4 + 0x00db9f78]");       // 0x00753f3d    8b048d789fdb00
    asm("test              eax, eax");                                      // 0x00753f44    85c0
    asm("{disp8} jne       _jmp_addr_0x00753f8e");                          // 0x00753f46    7546
    asm("xor.s             edx, edx");                                      // 0x00753f48    33d2
    asm("{disp32} mov      dx, word ptr [esi + 0x000000e0]");               // 0x00753f4a    668b96e0000000
    asm("shr               edx, 9");                                        // 0x00753f51    c1ea09
    asm("test              dl, 0x01");                                      // 0x00753f54    f6c201
    asm("{disp8} je        _jmp_addr_0x00753f87");                          // 0x00753f57    742e
    asm("{disp32} mov      al, byte ptr [esi + 0x000000f2]");               // 0x00753f59    8a86f2000000
    asm("test              eax, eax");                                      // 0x00753f5f    85c0
    asm("{disp8} jl        _jmp_addr_0x00753f6f");                          // 0x00753f61    7c0c
    asm("cmp               eax, 0x07");                                     // 0x00753f63    83f807
    asm("{disp8} jg        _jmp_addr_0x00753f6f");                          // 0x00753f66    7f07
    asm("add               eax, 0x00000c39");                               // 0x00753f68    05390c0000
    asm("pop               esi");                                           // 0x00753f6d    5e
    asm("ret");                                                             // 0x00753f6e    c3
    asm("_jmp_addr_0x00753f6f:");
    asm("cmp               eax, 0x09");                                     // 0x00753f6f    83f809
    asm("{disp8} jne       _jmp_addr_0x00753f7b");                          // 0x00753f72    7507
    asm("mov               eax, 0x00000ad2");                               // 0x00753f74    b8d20a0000
    asm("pop               esi");                                           // 0x00753f79    5e
    asm("ret");                                                             // 0x00753f7a    c3
    asm("_jmp_addr_0x00753f7b:");
    asm("cmp               eax, 0x08");                                     // 0x00753f7b    83f808
    asm("{disp8} jne       _jmp_addr_0x00753f87");                          // 0x00753f7e    7507
    asm("mov               eax, 0x00000c39");                               // 0x00753f80    b8390c0000
    asm("pop               esi");                                           // 0x00753f85    5e
    asm("ret");                                                             // 0x00753f86    c3
    asm("_jmp_addr_0x00753f87:");
    asm("mov.s             ecx, esi");                                      // 0x00753f87    8bce
    asm("call              ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ");                          // 0x00753f89    e8f245eeff
    asm("_jmp_addr_0x00753f8e:");
    asm("pop               esi");                                           // 0x00753f8e    5e
    asm("ret");                                                             // 0x00753f8f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum HELP_TEXT __fastcall GetQueryLastEnumText__8VillagerFv(struct GameThingWithPos* this)
{
    asm("push              esi");                                           // 0x00753f90    56
    asm("mov.s             esi, ecx");                                      // 0x00753f91    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x00753f93    8b06
    asm("push              edi");                                           // 0x00753f95    57
    asm("call              dword ptr [eax + 0xb04]");                       // 0x00753f96    ff90040b0000
    asm("and               eax, 0x000000ff");                               // 0x00753f9c    25ff000000
    asm("mov.s             ecx, eax");                                      // 0x00753fa1    8bc8
    asm("lea               eax, dword ptr [ecx + ecx * 0x2]");              // 0x00753fa3    8d0449
    asm("shl               eax, 3");                                        // 0x00753fa6    c1e003
    asm("sub.s             eax, ecx");                                      // 0x00753fa9    2bc1
    asm("lea               ecx, dword ptr [eax + eax * 0x2]");              // 0x00753fab    8d0c40
    asm("{disp32} mov      edi, dword ptr [ecx * 0x4 + 0x00db9f78]");       // 0x00753fae    8b3c8d789fdb00
    asm("test              edi, edi");                                      // 0x00753fb5    85ff
    asm("{disp8} jne       _jmp_addr_0x00754007");                          // 0x00753fb7    754e
    asm("xor.s             edx, edx");                                      // 0x00753fb9    33d2
    asm("{disp32} mov      dx, word ptr [esi + 0x000000e0]");               // 0x00753fbb    668b96e0000000
    asm("shr               edx, 9");                                        // 0x00753fc2    c1ea09
    asm("test              dl, 0x01");                                      // 0x00753fc5    f6c201
    asm("{disp8} je        _jmp_addr_0x00753ffd");                          // 0x00753fc8    7433
    asm("xor.s             eax, eax");                                      // 0x00753fca    33c0
    asm("{disp32} mov      al, byte ptr [esi + 0x000000f2]");               // 0x00753fcc    8a86f2000000
    asm("test              eax, eax");                                      // 0x00753fd2    85c0
    asm("{disp8} jl        _jmp_addr_0x00753fe3");                          // 0x00753fd4    7c0d
    asm("cmp               eax, 0x07");                                     // 0x00753fd6    83f807
    asm("{disp8} jg        _jmp_addr_0x00753fe3");                          // 0x00753fd9    7f08
    asm("pop               edi");                                           // 0x00753fdb    5f
    asm("add               eax, 0x00000c39");                               // 0x00753fdc    05390c0000
    asm("pop               esi");                                           // 0x00753fe1    5e
    asm("ret");                                                             // 0x00753fe2    c3
    asm("_jmp_addr_0x00753fe3:");
    asm("cmp               eax, 0x09");                                     // 0x00753fe3    83f809
    asm("{disp8} jne       _jmp_addr_0x00753ff0");                          // 0x00753fe6    7508
    asm("pop               edi");                                           // 0x00753fe8    5f
    asm("mov               eax, 0x00000ad2");                               // 0x00753fe9    b8d20a0000
    asm("pop               esi");                                           // 0x00753fee    5e
    asm("ret");                                                             // 0x00753fef    c3
    asm("_jmp_addr_0x00753ff0:");
    asm("cmp               eax, 0x08");                                     // 0x00753ff0    83f808
    asm("{disp8} jne       _jmp_addr_0x00753ffd");                          // 0x00753ff3    7508
    asm("pop               edi");                                           // 0x00753ff5    5f
    asm("mov               eax, 0x00000c39");                               // 0x00753ff6    b8390c0000
    asm("pop               esi");                                           // 0x00753ffb    5e
    asm("ret");                                                             // 0x00753ffc    c3
    asm("_jmp_addr_0x00753ffd:");
    asm("mov.s             ecx, esi");                                      // 0x00753ffd    8bce
    asm("call              ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ");                          // 0x00753fff    e88c45eeff
    asm("pop               edi");                                           // 0x00754004    5f
    asm("pop               esi");                                           // 0x00754005    5e
    asm("ret");                                                             // 0x00754006    c3
    asm("_jmp_addr_0x00754007:");
    asm("mov               eax, dword ptr [esi]");                          // 0x00754007    8b06
    asm("mov.s             ecx, esi");                                      // 0x00754009    8bce
    asm("call              dword ptr [eax + 0xb04]");                       // 0x0075400b    ff90040b0000
    asm("and               eax, 0x000000ff");                               // 0x00754011    25ff000000
    asm("mov.s             ecx, eax");                                      // 0x00754016    8bc8
    asm("lea               eax, dword ptr [ecx + ecx * 0x2]");              // 0x00754018    8d0449
    asm("shl               eax, 3");                                        // 0x0075401b    c1e003
    asm("sub.s             eax, ecx");                                      // 0x0075401e    2bc1
    asm("lea               ecx, dword ptr [eax + eax * 0x2]");              // 0x00754020    8d0c40
    asm("cmp               dword ptr [ecx * 0x4 + 0x00db9f78], edi");       // 0x00754023    393c8d789fdb00
    asm("{disp8} jbe       _jmp_addr_0x00754049");                          // 0x0075402a    761d
    asm("xor.s             ecx, ecx");                                      // 0x0075402c    33c9
    asm("{disp32} mov      cl, byte ptr [esi + 0x0000008c]");               // 0x0075402e    8a8e8c000000
    asm("pop               edi");                                           // 0x00754034    5f
    asm("pop               esi");                                           // 0x00754035    5e
    asm("lea               eax, dword ptr [ecx + ecx * 0x2]");              // 0x00754036    8d0449
    asm("shl               eax, 3");                                        // 0x00754039    c1e003
    asm("sub.s             eax, ecx");                                      // 0x0075403c    2bc1
    asm("lea               edx, dword ptr [eax + eax * 0x2]");              // 0x0075403e    8d1440
    asm("{disp32} mov      eax, dword ptr [edx * 0x4 + 0x00db9f78]");       // 0x00754041    8b0495789fdb00
    asm("ret");                                                             // 0x00754048    c3
    asm("_jmp_addr_0x00754049:");
    asm("mov.s             eax, edi");                                      // 0x00754049    8bc7
    asm("pop               edi");                                           // 0x0075404b    5f
    asm("pop               esi");                                           // 0x0075404c    5e
    asm("ret");                                                             // 0x0075404d    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetFOVHelpMessageSet__8VillagerFv(struct GameThingWithPos* this)
{
    asm("{disp32} jmp      ?GetFOVHelpMessageSet@Object@@UAEIXZ");          // 0x00754050    e94b45eeff
    __builtin_unreachable();
}

uint32_t __fastcall GetFOVHelpCondition__8VillagerFv(struct GameThingWithPos* this)
{
    asm("{disp32} jmp      ?GetFOVHelpCondition@Object@@UAEIXZ");           // 0x00754060    e94b45eeff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetDiscipleNothingToDo__8VillagerFv(struct Villager* this)
{
    asm("sub               esp, 0x0c");                                     // 0x00754070    83ec0c
    asm("push              esi");                                           // 0x00754073    56
    asm("{disp8} lea       eax, dword ptr [esp + 0x04]");                   // 0x00754074    8d442404
    asm("mov.s             esi, ecx");                                      // 0x00754078    8bf1
    asm("push              eax");                                           // 0x0075407a    50
    asm("{disp8} mov       dword ptr [esp + 0x08], 0x00000000");            // 0x0075407b    c744240800000000
    asm("{disp8} mov       dword ptr [esp + 0x0c], 0x00000000");            // 0x00754083    c744240c00000000
    asm("{disp8} mov       dword ptr [esp + 0x10], 0x00000000");            // 0x0075408b    c744241000000000
    asm("call              ?FindDisciplePrayerPos@Villager@@QAE_NPAUMapCoords@@@Z");                          // 0x00754093    e8e8000000
    asm("test              eax, eax");                                      // 0x00754098    85c0
    asm("{disp8} je        _jmp_addr_0x007540bd");                          // 0x0075409a    7421
    asm("push              0x000000dd");                                    // 0x0075409c    68dd000000
    asm("{disp8} lea       ecx, dword ptr [esp + 0x08]");                   // 0x007540a1    8d4c2408
    asm("push              ecx");                                           // 0x007540a5    51
    asm("mov.s             ecx, esi");                                      // 0x007540a6    8bce
    asm("{disp8} mov       word ptr [esi + 0x58], 0x0000");                 // 0x007540a8    66c746580000
    asm("call              @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007540ae    e8dde7e9ff
    asm("mov               eax, 0x00000001");                               // 0x007540b3    b801000000
    asm("pop               esi");                                           // 0x007540b8    5e
    asm("add               esp, 0x0c");                                     // 0x007540b9    83c40c
    asm("ret");                                                             // 0x007540bc    c3
    asm("_jmp_addr_0x007540bd:");
    asm("xor.s             eax, eax");                                      // 0x007540bd    33c0
    asm("pop               esi");                                           // 0x007540bf    5e
    asm("add               esp, 0x0c");                                     // 0x007540c0    83c40c
    asm("ret");                                                             // 0x007540c3    c3
    __builtin_unreachable();
}

bool32_t __fastcall DiscipleNothingToDo__8VillagerFv(struct Villager* this)
{
    asm("push              esi");                                           // 0x007540d0    56
    asm("mov.s             esi, ecx");                                      // 0x007540d1    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x007540d3    8b06
    asm("call              dword ptr [eax + 0x48]");                        // 0x007540d5    ff5048
    asm("{disp32} mov      ecx, dword ptr [eax + 0x000005e8]");             // 0x007540d8    8b88e8050000
    asm("test              ecx, ecx");                                      // 0x007540de    85c9
    asm("{disp8} je        _jmp_addr_0x007540fa");                          // 0x007540e0    7418
    asm("push              0x00000c35");                                    // 0x007540e2    68350c0000
    asm("push              0x00c235dc");                                    // 0x007540e7    68dc35c200
    asm("push              0xa");                                           // 0x007540ec    6a0a
    asm("call              ?GameRand@GRand@@SAHJ@Z");                       // 0x007540ee    e81da4f8ff
    asm("add               esp, 0x0c");                                     // 0x007540f3    83c40c
    asm("{disp8} mov       word ptr [esi + 0x58], ax");                     // 0x007540f6    66894658
    asm("_jmp_addr_0x007540fa:");
    asm("dec               word ptr [esi + 0x58]");                         // 0x007540fa    66ff4e58
    asm("{disp8} mov       ax, word ptr [esi + 0x58]");                     // 0x007540fe    668b4658
    asm("test              ax, ax");                                        // 0x00754102    6685c0
    asm("{disp8} jg        _jmp_addr_0x00754132");                          // 0x00754105    7f2b
    asm("push              0x1");                                           // 0x00754107    6a01
    asm("mov.s             ecx, esi");                                      // 0x00754109    8bce
    asm("call              @IsReadyForNewAnimation__6LivingFUl@12");        // 0x0075410b    e85088e9ff
    asm("test              eax, eax");                                      // 0x00754110    85c0
    asm("{disp8} je        _jmp_addr_0x0075412c");                          // 0x00754112    7418
    asm("mov.s             ecx, esi");                                      // 0x00754114    8bce
    asm("call              ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ");     // 0x00754116    e805d6ffff
    asm("test              eax, eax");                                      // 0x0075411b    85c0
    asm("{disp8} jne       _jmp_addr_0x00754132");                          // 0x0075411d    7513
    asm("{disp8} mov       word ptr [esi + 0x58], 0x012c");                 // 0x0075411f    66c746582c01
    asm("mov               eax, 0x00000001");                               // 0x00754125    b801000000
    asm("pop               esi");                                           // 0x0075412a    5e
    asm("ret");                                                             // 0x0075412b    c3
    asm("_jmp_addr_0x0075412c:");
    asm("{disp8} mov       word ptr [esi + 0x58], 0x0001");                 // 0x0075412c    66c746580100
    asm("_jmp_addr_0x00754132:");
    asm("mov               eax, 0x00000001");                               // 0x00754132    b801000000
    asm("pop               esi");                                           // 0x00754137    5e
    asm("ret");                                                             // 0x00754138    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterDiscipleNothingToDo__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("push              esi");                                           // 0x00754140    56
    asm("mov.s             esi, ecx");                                      // 0x00754141    8bf1
    asm("mov               eax, dword ptr [esi]");                          // 0x00754143    8b06
    asm("call              dword ptr [eax + 0x48]");                        // 0x00754145    ff5048
    asm("test              eax, eax");                                      // 0x00754148    85c0
    asm("{disp8} je        _jmp_addr_0x00754174");                          // 0x0075414a    7428
    asm("mov               edx, dword ptr [esi]");                          // 0x0075414c    8b16
    asm("mov.s             ecx, esi");                                      // 0x0075414e    8bce
    asm("call              dword ptr [edx + 0x48]");                        // 0x00754150    ff5248
    asm("{disp32} mov      ecx, dword ptr [eax + 0x000009a4]");             // 0x00754153    8b88a4090000
    asm("test              ecx, ecx");                                      // 0x00754159    85c9
    asm("{disp8} je        _jmp_addr_0x00754174");                          // 0x0075415b    7417
    asm("mov               eax, dword ptr [esi]");                          // 0x0075415d    8b06
    asm("mov.s             ecx, esi");                                      // 0x0075415f    8bce
    asm("call              dword ptr [eax + 0x48]");                        // 0x00754161    ff5048
    asm("{disp32} mov      ecx, dword ptr [eax + 0x000009a4]");             // 0x00754164    8b88a4090000
    asm("push              0x2");                                           // 0x0075416a    6a02
    asm("push              ecx");                                           // 0x0075416c    51
    asm("mov.s             ecx, esi");                                      // 0x0075416d    8bce
    asm("call              ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075416f    e8ac83e9ff
    asm("_jmp_addr_0x00754174:");
    asm("mov               eax, 0x00000001");                               // 0x00754174    b801000000
    asm("pop               esi");                                           // 0x00754179    5e
    asm("ret               0x0008");                                        // 0x0075417a    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindDisciplePrayerPos__8VillagerFP9MapCoords(struct Villager* this, const void* edx, struct MapCoords* param_1)
{
    asm("sub               esp, 0x20");                                     // 0x00754180    83ec20
    asm("push              ebx");                                           // 0x00754183    53
    asm("mov.s             ebx, ecx");                                      // 0x00754184    8bd9
    asm("mov               eax, dword ptr [ebx]");                          // 0x00754186    8b03
    asm("push              esi");                                           // 0x00754188    56
    asm("call              dword ptr [eax + 0x48]");                        // 0x00754189    ff5048
    asm("test              eax, eax");                                      // 0x0075418c    85c0
    asm("{disp32} je       _jmp_addr_0x0075426a");                          // 0x0075418e    0f84d6000000
    asm("{disp32} mov      esi, dword ptr [eax + 0x000009a4]");             // 0x00754194    8bb0a4090000
    asm("test              esi, esi");                                      // 0x0075419a    85f6
    asm("{disp32} je       _jmp_addr_0x00754246");                          // 0x0075419c    0f84a4000000
    asm("push              edi");                                           // 0x007541a2    57
    asm("add               ebx, 0x14");                                     // 0x007541a3    83c314
    asm("{disp8} lea       edi, dword ptr [esi + 0x14]");                   // 0x007541a6    8d7e14
    asm("push              ebx");                                           // 0x007541a9    53
    asm("push              edi");                                           // 0x007541aa    57
    asm("call              ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x007541ab    e8c090ffff
    asm("{disp8} fstp      dword ptr [esp + 0x14]");                        // 0x007541b0    d95c2414
    asm("push              0x00000c5b");                                    // 0x007541b4    685b0c0000
    asm("push              0x00c235dc");                                    // 0x007541b9    68dc35c200
    asm("push              0x3fc90fdb");                                    // 0x007541be    68db0fc93f
    asm("call              ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007541c3    e868a3f8ff
    asm("{disp32} fsub     dword ptr [rdata_bytes + 0x1dc9c]");             // 0x007541c8    d8259c6c8c00
    asm("push              0x00000c5c");                                    // 0x007541ce    685c0c0000
    asm("push              0x00c235dc");                                    // 0x007541d3    68dc35c200
    asm("{disp8} fadd      dword ptr [esp + 0x28]");                        // 0x007541d8    d8442428
    asm("push              0x40800000");                                    // 0x007541dc    6800008040
    asm("{disp8} fstp      dword ptr [esp + 0x30]");                        // 0x007541e1    d95c2430
    asm("call              ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007541e5    e846a3f8ff
    asm("mov               edx, dword ptr [esi]");                          // 0x007541ea    8b16
    asm("{disp8} fstp      dword ptr [esp + 0x2c]");                        // 0x007541ec    d95c242c
    asm("add               esp, 0x20");                                     // 0x007541f0    83c420
    asm("mov.s             ecx, esi");                                      // 0x007541f3    8bce
    asm("call              dword ptr [edx + 0x64]");                        // 0x007541f5    ff5264
    asm("{disp8} fadd      dword ptr [esp + 0x0c]");                        // 0x007541f8    d844240c
    asm("{disp8} mov       ecx, dword ptr [esp + 0x10]");                   // 0x007541fc    8b4c2410
    asm("{disp8} lea       edx, dword ptr [esp + 0x14]");                   // 0x00754200    8d542414
    asm("{disp8} fstp      dword ptr [esp + 0x0c]");                        // 0x00754204    d95c240c
    asm("{disp8} mov       eax, dword ptr [esp + 0x0c]");                   // 0x00754208    8b44240c
    asm("push              eax");                                           // 0x0075420c    50
    asm("push              ecx");                                           // 0x0075420d    51
    asm("push              edx");                                           // 0x0075420e    52
    asm("call              ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0075420f    e86c93ffff
    asm("add               esp, 0x0c");                                     // 0x00754214    83c40c
    asm("push              eax");                                           // 0x00754217    50
    asm("{disp8} lea       eax, dword ptr [esp + 0x24]");                   // 0x00754218    8d442424
    asm("push              eax");                                           // 0x0075421c    50
    asm("mov.s             ecx, edi");                                      // 0x0075421d    8bcf
    asm("call              @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x0075421f    e8fc12ebff
    asm("mov               edx, dword ptr [eax]");                          // 0x00754224    8b10
    asm("{disp8} mov       ecx, dword ptr [esp + 0x30]");                   // 0x00754226    8b4c2430
    asm("mov               dword ptr [ecx], edx");                          // 0x0075422a    8911
    asm("{disp8} mov       edx, dword ptr [eax + 0x04]");                   // 0x0075422c    8b5004
    asm("{disp8} mov       dword ptr [ecx + 0x04], edx");                   // 0x0075422f    895104
    asm("{disp8} mov       eax, dword ptr [eax + 0x08]");                   // 0x00754232    8b4008
    asm("pop               edi");                                           // 0x00754235    5f
    asm("pop               esi");                                           // 0x00754236    5e
    asm("{disp8} mov       dword ptr [ecx + 0x08], eax");                   // 0x00754237    894108
    asm("mov               eax, 0x00000001");                               // 0x0075423a    b801000000
    asm("pop               ebx");                                           // 0x0075423f    5b
    asm("add               esp, 0x20");                                     // 0x00754240    83c420
    asm("ret               0x0004");                                        // 0x00754243    c20400
    asm("_jmp_addr_0x00754246:");
    asm("{disp8} mov       ecx, dword ptr [esp + 0x2c]");                   // 0x00754246    8b4c242c
    asm("add               eax, 0x14");                                     // 0x0075424a    83c014
    asm("mov               edx, dword ptr [eax]");                          // 0x0075424d    8b10
    asm("mov               dword ptr [ecx], edx");                          // 0x0075424f    8911
    asm("{disp8} mov       edx, dword ptr [eax + 0x04]");                   // 0x00754251    8b5004
    asm("{disp8} mov       dword ptr [ecx + 0x04], edx");                   // 0x00754254    895104
    asm("{disp8} mov       eax, dword ptr [eax + 0x08]");                   // 0x00754257    8b4008
    asm("pop               esi");                                           // 0x0075425a    5e
    asm("{disp8} mov       dword ptr [ecx + 0x08], eax");                   // 0x0075425b    894108
    asm("mov               eax, 0x00000001");                               // 0x0075425e    b801000000
    asm("pop               ebx");                                           // 0x00754263    5b
    asm("add               esp, 0x20");                                     // 0x00754264    83c420
    asm("ret               0x0004");                                        // 0x00754267    c20400
    asm("_jmp_addr_0x0075426a:");
    asm("pop               esi");                                           // 0x0075426a    5e
    asm("xor.s             eax, eax");                                      // 0x0075426b    33c0
    asm("pop               ebx");                                           // 0x0075426d    5b
    asm("add               esp, 0x20");                                     // 0x0075426e    83c420
    asm("ret               0x0004");                                        // 0x00754271    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Save__8VillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00754280    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x08]");                   // 0x00754281    8b742408
    asm("push              edi");                                           // 0x00754285    57
    asm("mov.s             edi, ecx");                                      // 0x00754286    8bf9
    asm("push              esi");                                           // 0x00754288    56
    asm("call              ?Save@Living@@UAEIAAVGameOSFile@@@Z");           // 0x00754289    e8a2a3e9ff
    asm("test              eax, eax");                                      // 0x0075428e    85c0
    asm("{disp32} je       _jmp_addr_0x0075456d");                          // 0x00754290    0f84d7020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754296    a190c9be00
    asm("push              ebx");                                           // 0x0075429b    53
    asm("push              ebp");                                           // 0x0075429c    55
    asm("xor.s             ebp, ebp");                                      // 0x0075429d    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075429f    3bc5
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x007542a1    0f840b020000
    asm("push              ebp");                                           // 0x007542a7    55
    asm("push              0x2");                                           // 0x007542a8    6a02
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000e0]");             // 0x007542aa    8d9fe0000000
    asm("push              ebx");                                           // 0x007542b0    53
    asm("mov.s             ecx, esi");                                      // 0x007542b1    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007542b3    e868860600
    asm("cmp               eax, 0x03");                                     // 0x007542b8    83f803
    asm("{disp8} jne       _jmp_addr_0x007542c3");                          // 0x007542bb    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007542bd    892d90c9be00
    asm("_jmp_addr_0x007542c3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007542c3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007542c9    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x007542cb    8a03
    asm("add               eax, 0x02");                                     // 0x007542cd    83c002
    asm("add.s             ecx, eax");                                      // 0x007542d0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007542d2    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007542d8    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x007542de    0f84ce010000
    asm("push              ebp");                                           // 0x007542e4    55
    asm("push              0x4");                                           // 0x007542e5    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000e8]");             // 0x007542e7    8d9fe8000000
    asm("push              ebx");                                           // 0x007542ed    53
    asm("mov.s             ecx, esi");                                      // 0x007542ee    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007542f0    e82b860600
    asm("cmp               eax, 0x03");                                     // 0x007542f5    83f803
    asm("{disp8} jne       _jmp_addr_0x00754300");                          // 0x007542f8    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007542fa    892d90c9be00
    asm("_jmp_addr_0x00754300:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x00754300    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754306    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x00754308    8a0b
    asm("add               ecx, 0x4");                                      // 0x0075430a    83c104
    asm("add.s             edx, ecx");                                      // 0x0075430d    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x0075430f    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00754315    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x0075431b    0f8491010000
    asm("push              ebp");                                           // 0x00754321    55
    asm("push              0x4");                                           // 0x00754322    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000ec]");             // 0x00754324    8d9fec000000
    asm("push              ebx");                                           // 0x0075432a    53
    asm("mov.s             ecx, esi");                                      // 0x0075432b    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075432d    e8ee850600
    asm("cmp               eax, 0x03");                                     // 0x00754332    83f803
    asm("{disp8} jne       _jmp_addr_0x0075433d");                          // 0x00754335    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00754337    892d90c9be00
    asm("_jmp_addr_0x0075433d:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075433d    8b8e14020000
    asm("xor.s             edx, edx");                                      // 0x00754343    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x00754345    8a13
    asm("add               edx, 0x04");                                     // 0x00754347    83c204
    asm("add.s             ecx, edx");                                      // 0x0075434a    03ca
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075434c    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00754352    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x00754358    0f8454010000
    asm("push              ebp");                                           // 0x0075435e    55
    asm("push              0x1");                                           // 0x0075435f    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f0]");             // 0x00754361    8d9ff0000000
    asm("push              ebx");                                           // 0x00754367    53
    asm("mov.s             ecx, esi");                                      // 0x00754368    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075436a    e8b1850600
    asm("cmp               eax, 0x03");                                     // 0x0075436f    83f803
    asm("{disp8} jne       _jmp_addr_0x0075437a");                          // 0x00754372    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00754374    892d90c9be00
    asm("_jmp_addr_0x0075437a:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075437a    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754380    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x00754382    8a03
    asm("inc               eax");                                           // 0x00754384    40
    asm("add.s             ecx, eax");                                      // 0x00754385    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754387    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x0075438d    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x00754393    0f8419010000
    asm("push              ebp");                                           // 0x00754399    55
    asm("push              0x1");                                           // 0x0075439a    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f1]");             // 0x0075439c    8d9ff1000000
    asm("push              ebx");                                           // 0x007543a2    53
    asm("mov.s             ecx, esi");                                      // 0x007543a3    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007543a5    e876850600
    asm("cmp               eax, 0x03");                                     // 0x007543aa    83f803
    asm("{disp8} jne       _jmp_addr_0x007543b5");                          // 0x007543ad    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007543af    892d90c9be00
    asm("_jmp_addr_0x007543b5:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x007543b5    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x007543bb    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x007543bd    8a0b
    asm("inc               ecx");                                           // 0x007543bf    41
    asm("add.s             edx, ecx");                                      // 0x007543c0    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x007543c2    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007543c8    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x007543ce    0f84de000000
    asm("push              ebp");                                           // 0x007543d4    55
    asm("push              0x1");                                           // 0x007543d5    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f2]");             // 0x007543d7    8d9ff2000000
    asm("push              ebx");                                           // 0x007543dd    53
    asm("mov.s             ecx, esi");                                      // 0x007543de    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007543e0    e83b850600
    asm("cmp               eax, 0x03");                                     // 0x007543e5    83f803
    asm("{disp8} jne       _jmp_addr_0x007543f0");                          // 0x007543e8    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007543ea    892d90c9be00
    asm("_jmp_addr_0x007543f0:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007543f0    8b8e14020000
    asm("xor.s             edx, edx");                                      // 0x007543f6    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x007543f8    8a13
    asm("inc               edx");                                           // 0x007543fa    42
    asm("add.s             ecx, edx");                                      // 0x007543fb    03ca
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007543fd    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00754403    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x007544b2");                          // 0x00754409    0f84a3000000
    asm("push              ebp");                                           // 0x0075440f    55
    asm("push              0x2");                                           // 0x00754410    6a02
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f4]");             // 0x00754412    8d9ff4000000
    asm("push              ebx");                                           // 0x00754418    53
    asm("mov.s             ecx, esi");                                      // 0x00754419    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075441b    e800850600
    asm("cmp               eax, 0x03");                                     // 0x00754420    83f803
    asm("{disp8} jne       _jmp_addr_0x0075442b");                          // 0x00754423    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00754425    892d90c9be00
    asm("_jmp_addr_0x0075442b:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075442b    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754431    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x00754433    8a03
    asm("add               eax, 0x02");                                     // 0x00754435    83c002
    asm("add.s             ecx, eax");                                      // 0x00754438    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075443a    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00754440    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x007544b2");                          // 0x00754446    746a
    asm("push              ebp");                                           // 0x00754448    55
    asm("push              0x2");                                           // 0x00754449    6a02
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f6]");             // 0x0075444b    8d9ff6000000
    asm("push              ebx");                                           // 0x00754451    53
    asm("mov.s             ecx, esi");                                      // 0x00754452    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754454    e8c7840600
    asm("cmp               eax, 0x03");                                     // 0x00754459    83f803
    asm("{disp8} jne       _jmp_addr_0x00754464");                          // 0x0075445c    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x0075445e    892d90c9be00
    asm("_jmp_addr_0x00754464:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x00754464    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x0075446a    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x0075446c    8a0b
    asm("add               ecx, 0x2");                                      // 0x0075446e    83c102
    asm("add.s             edx, ecx");                                      // 0x00754471    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x00754473    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00754479    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x007544b2");                          // 0x0075447f    7431
    asm("push              ebp");                                           // 0x00754481    55
    asm("push              0x2");                                           // 0x00754482    6a02
    asm("{disp32} lea      ebx, dword ptr [edi + 0x000000f8]");             // 0x00754484    8d9ff8000000
    asm("push              ebx");                                           // 0x0075448a    53
    asm("mov.s             ecx, esi");                                      // 0x0075448b    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075448d    e88e840600
    asm("cmp               eax, 0x03");                                     // 0x00754492    83f803
    asm("{disp8} jne       _jmp_addr_0x0075449d");                          // 0x00754495    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00754497    892d90c9be00
    asm("_jmp_addr_0x0075449d:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x0075449d    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x007544a3    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x007544a5    8a13
    asm("add               edx, 0x02");                                     // 0x007544a7    83c202
    asm("add.s             eax, edx");                                      // 0x007544aa    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007544ac    898614020000
    asm("_jmp_addr_0x007544b2:");
    asm("{disp32} mov      eax, dword ptr [edi + 0x00000128]");             // 0x007544b2    8b8728010000
    asm("push              eax");                                           // 0x007544b8    50
    asm("mov.s             ecx, esi");                                      // 0x007544b9    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007544bb    e850d9e0ff
    asm("{disp32} mov      ecx, dword ptr [edi + 0x0000012c]");             // 0x007544c0    8b8f2c010000
    asm("push              ecx");                                           // 0x007544c6    51
    asm("mov.s             ecx, esi");                                      // 0x007544c7    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007544c9    e842d9e0ff
    asm("{disp32} mov      edx, dword ptr [edi + 0x00000100]");             // 0x007544ce    8b9700010000
    asm("push              edx");                                           // 0x007544d4    52
    asm("mov.s             ecx, esi");                                      // 0x007544d5    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007544d7    e834d9e0ff
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007544dc    392d90c9be00
    asm("{disp8} mov       dword ptr [esp + 0x14], ebp");                   // 0x007544e2    896c2414
    asm("{disp8} je        _jmp_addr_0x00754559");                          // 0x007544e6    7471
    asm("push              ebp");                                           // 0x007544e8    55
    asm("push              0x4");                                           // 0x007544e9    6a04
    asm("{disp8} lea       eax, dword ptr [esp + 0x1c]");                   // 0x007544eb    8d44241c
    asm("push              eax");                                           // 0x007544ef    50
    asm("mov.s             ecx, esi");                                      // 0x007544f0    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007544f2    e829840600
    asm("cmp               eax, 0x03");                                     // 0x007544f7    83f803
    asm("{disp8} jne       _jmp_addr_0x00754502");                          // 0x007544fa    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007544fc    892d90c9be00
    asm("_jmp_addr_0x00754502:");
    asm("{disp8} mov       ecx, dword ptr [esp + 0x14]");                   // 0x00754502    8b4c2414
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x00754506    8b9614020000
    asm("and               ecx, 0x000000ff");                               // 0x0075450c    81e1ff000000
    asm("add               ecx, 0x4");                                      // 0x00754512    83c104
    asm("add.s             edx, ecx");                                      // 0x00754515    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x00754517    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x0075451d    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x00754559");                          // 0x00754523    7434
    asm("push              ebp");                                           // 0x00754525    55
    asm("push              0x4");                                           // 0x00754526    6a04
    asm("{disp8} lea       edx, dword ptr [esp + 0x1c]");                   // 0x00754528    8d54241c
    asm("push              edx");                                           // 0x0075452c    52
    asm("mov.s             ecx, esi");                                      // 0x0075452d    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075452f    e8ec830600
    asm("cmp               eax, 0x03");                                     // 0x00754534    83f803
    asm("{disp8} jne       _jmp_addr_0x0075453f");                          // 0x00754537    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00754539    892d90c9be00
    asm("_jmp_addr_0x0075453f:");
    asm("{disp8} mov       eax, dword ptr [esp + 0x14]");                   // 0x0075453f    8b442414
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754543    8b8e14020000
    asm("and               eax, 0x000000ff");                               // 0x00754549    25ff000000
    asm("add               eax, 0x04");                                     // 0x0075454e    83c004
    asm("add.s             ecx, eax");                                      // 0x00754551    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754553    898e14020000
    asm("_jmp_addr_0x00754559:");
    asm("push              esi");                                           // 0x00754559    56
    asm("mov.s             ecx, edi");                                      // 0x0075455a    8bcf
    asm("call              ?SaveStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z");                          // 0x0075455c    e81f040000
    asm("pop               ebp");                                           // 0x00754561    5d
    asm("pop               ebx");                                           // 0x00754562    5b
    asm("pop               edi");                                           // 0x00754563    5f
    asm("mov               eax, 0x00000001");                               // 0x00754564    b801000000
    asm("pop               esi");                                           // 0x00754569    5e
    asm("ret               0x0004");                                        // 0x0075456a    c20400
    asm("_jmp_addr_0x0075456d:");
    asm("pop               edi");                                           // 0x0075456d    5f
    asm("xor.s             eax, eax");                                      // 0x0075456e    33c0
    asm("pop               esi");                                           // 0x00754570    5e
    asm("ret               0x0004");                                        // 0x00754571    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Load__8VillagerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              ebx");                                           // 0x00754580    53
    asm("push              esi");                                           // 0x00754581    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754582    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00754586    8bd9
    asm("push              esi");                                           // 0x00754588    56
    asm("call              ?Load@Living@@UAEIAAVGameOSFile@@@Z");           // 0x00754589    e8d2a3e9ff
    asm("test              eax, eax");                                      // 0x0075458e    85c0
    asm("{disp32} je       _jmp_addr_0x00754861");                          // 0x00754590    0f84cb020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754596    a194c9be00
    asm("push              ebp");                                           // 0x0075459b    55
    asm("xor.s             ebp, ebp");                                      // 0x0075459c    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075459e    3bc5
    asm("push              edi");                                           // 0x007545a0    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000e0]");             // 0x007545a1    8dbbe0000000
    asm("{disp8} je        _jmp_addr_0x007545d4");                          // 0x007545a7    742b
    asm("push              ebp");                                           // 0x007545a9    55
    asm("push              0x2");                                           // 0x007545aa    6a02
    asm("push              edi");                                           // 0x007545ac    57
    asm("mov.s             ecx, esi");                                      // 0x007545ad    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007545af    e82c830600
    asm("cmp               eax, 0x03");                                     // 0x007545b4    83f803
    asm("{disp8} jne       _jmp_addr_0x007545bf");                          // 0x007545b7    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007545b9    892d94c9be00
    asm("_jmp_addr_0x007545bf:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007545bf    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007545c5    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x007545c7    8a07
    asm("add               eax, 0x02");                                     // 0x007545c9    83c002
    asm("add.s             ecx, eax");                                      // 0x007545cc    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007545ce    898e14020000
    asm("_jmp_addr_0x007545d4:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007545d4    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000e8]");             // 0x007545da    8dbbe8000000
    asm("{disp8} je        _jmp_addr_0x0075460d");                          // 0x007545e0    742b
    asm("push              ebp");                                           // 0x007545e2    55
    asm("push              0x4");                                           // 0x007545e3    6a04
    asm("push              edi");                                           // 0x007545e5    57
    asm("mov.s             ecx, esi");                                      // 0x007545e6    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007545e8    e8f3820600
    asm("cmp               eax, 0x03");                                     // 0x007545ed    83f803
    asm("{disp8} jne       _jmp_addr_0x007545f8");                          // 0x007545f0    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007545f2    892d94c9be00
    asm("_jmp_addr_0x007545f8:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007545f8    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007545fe    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754600    8a0f
    asm("add               ecx, 0x4");                                      // 0x00754602    83c104
    asm("add.s             eax, ecx");                                      // 0x00754605    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754607    898614020000
    asm("_jmp_addr_0x0075460d:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x0075460d    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000ec]");             // 0x00754613    8dbbec000000
    asm("{disp8} je        _jmp_addr_0x00754646");                          // 0x00754619    742b
    asm("push              ebp");                                           // 0x0075461b    55
    asm("push              0x4");                                           // 0x0075461c    6a04
    asm("push              edi");                                           // 0x0075461e    57
    asm("mov.s             ecx, esi");                                      // 0x0075461f    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754621    e8ba820600
    asm("cmp               eax, 0x03");                                     // 0x00754626    83f803
    asm("{disp8} jne       _jmp_addr_0x00754631");                          // 0x00754629    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075462b    892d94c9be00
    asm("_jmp_addr_0x00754631:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754631    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x00754637    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x00754639    8a17
    asm("add               edx, 0x04");                                     // 0x0075463b    83c204
    asm("add.s             eax, edx");                                      // 0x0075463e    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754640    898614020000
    asm("_jmp_addr_0x00754646:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x00754646    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f0]");             // 0x0075464c    8dbbf0000000
    asm("{disp8} je        _jmp_addr_0x0075467d");                          // 0x00754652    7429
    asm("push              ebp");                                           // 0x00754654    55
    asm("push              0x1");                                           // 0x00754655    6a01
    asm("push              edi");                                           // 0x00754657    57
    asm("mov.s             ecx, esi");                                      // 0x00754658    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075465a    e881820600
    asm("cmp               eax, 0x03");                                     // 0x0075465f    83f803
    asm("{disp8} jne       _jmp_addr_0x0075466a");                          // 0x00754662    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x00754664    892d94c9be00
    asm("_jmp_addr_0x0075466a:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075466a    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754670    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754672    8a07
    asm("inc               eax");                                           // 0x00754674    40
    asm("add.s             ecx, eax");                                      // 0x00754675    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754677    898e14020000
    asm("_jmp_addr_0x0075467d:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x0075467d    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f1]");             // 0x00754683    8dbbf1000000
    asm("{disp8} je        _jmp_addr_0x007546b4");                          // 0x00754689    7429
    asm("push              ebp");                                           // 0x0075468b    55
    asm("push              0x1");                                           // 0x0075468c    6a01
    asm("push              edi");                                           // 0x0075468e    57
    asm("mov.s             ecx, esi");                                      // 0x0075468f    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754691    e84a820600
    asm("cmp               eax, 0x03");                                     // 0x00754696    83f803
    asm("{disp8} jne       _jmp_addr_0x007546a1");                          // 0x00754699    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075469b    892d94c9be00
    asm("_jmp_addr_0x007546a1:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007546a1    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007546a7    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x007546a9    8a0f
    asm("inc               ecx");                                           // 0x007546ab    41
    asm("add.s             eax, ecx");                                      // 0x007546ac    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007546ae    898614020000
    asm("_jmp_addr_0x007546b4:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007546b4    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f2]");             // 0x007546ba    8dbbf2000000
    asm("{disp8} je        _jmp_addr_0x007546eb");                          // 0x007546c0    7429
    asm("push              ebp");                                           // 0x007546c2    55
    asm("push              0x1");                                           // 0x007546c3    6a01
    asm("push              edi");                                           // 0x007546c5    57
    asm("mov.s             ecx, esi");                                      // 0x007546c6    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007546c8    e813820600
    asm("cmp               eax, 0x03");                                     // 0x007546cd    83f803
    asm("{disp8} jne       _jmp_addr_0x007546d8");                          // 0x007546d0    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007546d2    892d94c9be00
    asm("_jmp_addr_0x007546d8:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007546d8    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x007546de    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x007546e0    8a17
    asm("inc               edx");                                           // 0x007546e2    42
    asm("add.s             eax, edx");                                      // 0x007546e3    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007546e5    898614020000
    asm("_jmp_addr_0x007546eb:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007546eb    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f4]");             // 0x007546f1    8dbbf4000000
    asm("{disp8} je        _jmp_addr_0x00754724");                          // 0x007546f7    742b
    asm("push              ebp");                                           // 0x007546f9    55
    asm("push              0x2");                                           // 0x007546fa    6a02
    asm("push              edi");                                           // 0x007546fc    57
    asm("mov.s             ecx, esi");                                      // 0x007546fd    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007546ff    e8dc810600
    asm("cmp               eax, 0x03");                                     // 0x00754704    83f803
    asm("{disp8} jne       _jmp_addr_0x0075470f");                          // 0x00754707    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x00754709    892d94c9be00
    asm("_jmp_addr_0x0075470f:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075470f    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754715    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754717    8a07
    asm("add               eax, 0x02");                                     // 0x00754719    83c002
    asm("add.s             ecx, eax");                                      // 0x0075471c    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075471e    898e14020000
    asm("_jmp_addr_0x00754724:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x00754724    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f6]");             // 0x0075472a    8dbbf6000000
    asm("{disp8} je        _jmp_addr_0x0075475d");                          // 0x00754730    742b
    asm("push              ebp");                                           // 0x00754732    55
    asm("push              0x2");                                           // 0x00754733    6a02
    asm("push              edi");                                           // 0x00754735    57
    asm("mov.s             ecx, esi");                                      // 0x00754736    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754738    e8a3810600
    asm("cmp               eax, 0x03");                                     // 0x0075473d    83f803
    asm("{disp8} jne       _jmp_addr_0x00754748");                          // 0x00754740    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x00754742    892d94c9be00
    asm("_jmp_addr_0x00754748:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754748    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x0075474e    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754750    8a0f
    asm("add               ecx, 0x2");                                      // 0x00754752    83c102
    asm("add.s             eax, ecx");                                      // 0x00754755    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754757    898614020000
    asm("_jmp_addr_0x0075475d:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x0075475d    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x000000f8]");             // 0x00754763    8dbbf8000000
    asm("{disp8} je        _jmp_addr_0x00754796");                          // 0x00754769    742b
    asm("push              ebp");                                           // 0x0075476b    55
    asm("push              0x2");                                           // 0x0075476c    6a02
    asm("push              edi");                                           // 0x0075476e    57
    asm("mov.s             ecx, esi");                                      // 0x0075476f    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754771    e86a810600
    asm("cmp               eax, 0x03");                                     // 0x00754776    83f803
    asm("{disp8} jne       _jmp_addr_0x00754781");                          // 0x00754779    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075477b    892d94c9be00
    asm("_jmp_addr_0x00754781:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754781    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x00754787    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x00754789    8a17
    asm("add               edx, 0x02");                                     // 0x0075478b    83c202
    asm("add.s             eax, edx");                                      // 0x0075478e    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754790    898614020000
    asm("_jmp_addr_0x00754796:");
    asm("{disp32} lea      eax, dword ptr [ebx + 0x00000128]");             // 0x00754796    8d8328010000
    asm("push              eax");                                           // 0x0075479c    50
    asm("mov.s             ecx, esi");                                      // 0x0075479d    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x0075479f    e8dcd9e0ff
    asm("{disp32} lea      ecx, dword ptr [ebx + 0x0000012c]");             // 0x007547a4    8d8b2c010000
    asm("push              ecx");                                           // 0x007547aa    51
    asm("mov.s             ecx, esi");                                      // 0x007547ab    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x007547ad    e8ced9e0ff
    asm("{disp32} lea      edx, dword ptr [ebx + 0x00000100]");             // 0x007547b2    8d9300010000
    asm("push              edx");                                           // 0x007547b8    52
    asm("mov.s             ecx, esi");                                      // 0x007547b9    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x007547bb    e8c0d9e0ff
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007547c0    392d94c9be00
    asm("{disp8} mov       dword ptr [esp + 0x14], ebp");                   // 0x007547c6    896c2414
    asm("{disp8} je        _jmp_addr_0x0075483d");                          // 0x007547ca    7471
    asm("push              ebp");                                           // 0x007547cc    55
    asm("push              0x4");                                           // 0x007547cd    6a04
    asm("{disp8} lea       eax, dword ptr [esp + 0x1c]");                   // 0x007547cf    8d44241c
    asm("push              eax");                                           // 0x007547d3    50
    asm("mov.s             ecx, esi");                                      // 0x007547d4    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007547d6    e805810600
    asm("cmp               eax, 0x03");                                     // 0x007547db    83f803
    asm("{disp8} jne       _jmp_addr_0x007547e6");                          // 0x007547de    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007547e0    892d94c9be00
    asm("_jmp_addr_0x007547e6:");
    asm("{disp8} mov       ecx, dword ptr [esp + 0x14]");                   // 0x007547e6    8b4c2414
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x007547ea    8b9614020000
    asm("and               ecx, 0x000000ff");                               // 0x007547f0    81e1ff000000
    asm("add               ecx, 0x4");                                      // 0x007547f6    83c104
    asm("add.s             edx, ecx");                                      // 0x007547f9    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x007547fb    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x00754801    392d94c9be00
    asm("{disp8} je        _jmp_addr_0x0075483d");                          // 0x00754807    7434
    asm("push              ebp");                                           // 0x00754809    55
    asm("push              0x4");                                           // 0x0075480a    6a04
    asm("{disp8} lea       edx, dword ptr [esp + 0x1c]");                   // 0x0075480c    8d54241c
    asm("push              edx");                                           // 0x00754810    52
    asm("mov.s             ecx, esi");                                      // 0x00754811    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754813    e8c8800600
    asm("cmp               eax, 0x03");                                     // 0x00754818    83f803
    asm("{disp8} jne       _jmp_addr_0x00754823");                          // 0x0075481b    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075481d    892d94c9be00
    asm("_jmp_addr_0x00754823:");
    asm("{disp8} mov       eax, dword ptr [esp + 0x14]");                   // 0x00754823    8b442414
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754827    8b8e14020000
    asm("and               eax, 0x000000ff");                               // 0x0075482d    25ff000000
    asm("add               eax, 0x04");                                     // 0x00754832    83c004
    asm("add.s             ecx, eax");                                      // 0x00754835    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754837    898e14020000
    asm("_jmp_addr_0x0075483d:");
    asm("push              esi");                                           // 0x0075483d    56
    asm("mov.s             ecx, ebx");                                      // 0x0075483e    8bcb
    asm("call              ?LoadStateFunction@Villager@@QAE_NAAVGameOSFile@@@Z");                          // 0x00754840    e86b010000
    asm("mov               edx, dword ptr [ebx]");                          // 0x00754845    8b13
    asm("mov.s             ecx, ebx");                                      // 0x00754847    8bcb
    asm("call              dword ptr [edx + 0x508]");                       // 0x00754849    ff9208050000
    asm("{disp32} fstp     dword ptr [ebx + 0x00000108]");                  // 0x0075484f    d99b08010000
    asm("pop               edi");                                           // 0x00754855    5f
    asm("pop               ebp");                                           // 0x00754856    5d
    asm("pop               esi");                                           // 0x00754857    5e
    asm("mov               eax, 0x00000001");                               // 0x00754858    b801000000
    asm("pop               ebx");                                           // 0x0075485d    5b
    asm("ret               0x0004");                                        // 0x0075485e    c20400
    asm("_jmp_addr_0x00754861:");
    asm("pop               esi");                                           // 0x00754861    5e
    asm("xor.s             eax, eax");                                      // 0x00754862    33c0
    asm("pop               ebx");                                           // 0x00754864    5b
    asm("ret               0x0004");                                        // 0x00754865    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall ResolveLoad__8VillagerFv(struct GameThing* this)
{
    asm("push              esi");                                           // 0x00754870    56
    asm("push              edi");                                           // 0x00754871    57
    asm("mov.s             esi, ecx");                                      // 0x00754872    8bf1
    asm("call              ?ResolveLoad@Living@@UAEXXZ");                   // 0x00754874    e8a7a4e9ff
    asm("{disp8} mov       ecx, dword ptr [esi + 0x40]");                   // 0x00754879    8b4e40
    asm("mov               edi, dword ptr [ecx]");                          // 0x0075487c    8b39
    asm("xor.s             eax, eax");                                      // 0x0075487e    33c0
    asm("{disp32} mov      al, byte ptr [esi + 0x000000f2]");               // 0x00754880    8a86f2000000
    asm("{disp32} lea      edx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x00754886    8d14c500000000
    asm("sub.s             edx, eax");                                      // 0x0075488d    2bd0
    asm("{disp32} mov      edx, dword ptr [edx * 0x4 + 0x0099a200]");       // 0x0075488f    8b149500a29900
    asm("call              dword ptr [edi + 0xcc]");                        // 0x00754896    ff97cc000000
    asm("pop               edi");                                           // 0x0075489c    5f
    asm("pop               esi");                                           // 0x0075489d    5e
    asm("ret");                                                             // 0x0075489e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CallSaveStateFunction__8VillagerFR10GameOSFile10STATE_TYPE(struct Villager* this, const void* edx, struct GameOSFile* param_1, enum STATE_TYPE param_2)
{
    asm("sub               esp, 0x10");                                     // 0x007548a0    83ec10
    asm("{disp8} mov       edx, dword ptr [esp + 0x18]");                   // 0x007548a3    8b542418
    asm("xor.s             eax, eax");                                      // 0x007548a7    33c0
    asm("{disp32} mov      al, byte ptr [edx + ecx * 0x1 + 0x0000008c]");   // 0x007548a9    8a840a8c000000
    asm("push              esi");                                           // 0x007548b0    56
    asm("push              edi");                                           // 0x007548b1    57
    asm("lea               eax, dword ptr [eax + eax * 0x8]");              // 0x007548b2    8d04c0
    asm("shl               eax, 4");                                        // 0x007548b5    c1e004
    asm("{disp32} lea      eax, dword ptr [eax + 0x00d091c8]");             // 0x007548b8    8d80c891d000
    asm("mov.s             esi, eax");                                      // 0x007548be    8bf0
    asm("mov               edx, dword ptr [esi]");                          // 0x007548c0    8b16
    asm("test              edx, edx");                                      // 0x007548c2    85d2
    asm("{disp8} mov       edi, dword ptr [esi + 0x04]");                   // 0x007548c4    8b7e04
    asm("{disp8} mov       dword ptr [esp + 0x0c], edi");                   // 0x007548c7    897c240c
    asm("{disp8} mov       edi, dword ptr [esi + 0x08]");                   // 0x007548cb    8b7e08
    asm("{disp8} mov       esi, dword ptr [esi + 0x0c]");                   // 0x007548ce    8b760c
    asm("{disp8} mov       dword ptr [esp + 0x10], edi");                   // 0x007548d1    897c2410
    asm("{disp8} mov       dword ptr [esp + 0x14], esi");                   // 0x007548d5    89742414
    asm("{disp8} je        _jmp_addr_0x007548ff");                          // 0x007548d9    7424
    asm("{disp8} mov       esi, dword ptr [eax + 0x04]");                   // 0x007548db    8b7004
    asm("{disp8} mov       edi, dword ptr [eax + 0x08]");                   // 0x007548de    8b7808
    asm("mov               edx, dword ptr [eax]");                          // 0x007548e1    8b10
    asm("{disp8} mov       eax, dword ptr [eax + 0x0c]");                   // 0x007548e3    8b400c
    asm("{disp8} mov       dword ptr [esp + 0x14], eax");                   // 0x007548e6    89442414
    asm("{disp8} mov       eax, dword ptr [esp + 0x1c]");                   // 0x007548ea    8b44241c
    asm("push              eax");                                           // 0x007548ee    50
    asm("add.s             ecx, esi");                                      // 0x007548ef    03ce
    asm("{disp8} mov       dword ptr [esp + 0x14], edi");                   // 0x007548f1    897c2414
    asm("call              edx");                                           // 0x007548f5    ffd2
    asm("pop               edi");                                           // 0x007548f7    5f
    asm("pop               esi");                                           // 0x007548f8    5e
    asm("add               esp, 0x10");                                     // 0x007548f9    83c410
    asm("ret               0x0008");                                        // 0x007548fc    c20800
    asm("_jmp_addr_0x007548ff:");
    asm("pop               edi");                                           // 0x007548ff    5f
    asm("xor.s             eax, eax");                                      // 0x00754900    33c0
    asm("pop               esi");                                           // 0x00754902    5e
    asm("add               esp, 0x10");                                     // 0x00754903    83c410
    asm("ret               0x0008");                                        // 0x00754906    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CallLoadStateFunction__8VillagerFR10GameOSFile10STATE_TYPE(struct Villager* this, const void* edx, struct GameOSFile* param_1, enum STATE_TYPE param_2)
{
    asm("sub               esp, 0x10");                                     // 0x00754910    83ec10
    asm("{disp8} mov       edx, dword ptr [esp + 0x18]");                   // 0x00754913    8b542418
    asm("xor.s             eax, eax");                                      // 0x00754917    33c0
    asm("{disp32} mov      al, byte ptr [edx + ecx * 0x1 + 0x0000008c]");   // 0x00754919    8a840a8c000000
    asm("push              esi");                                           // 0x00754920    56
    asm("push              edi");                                           // 0x00754921    57
    asm("lea               eax, dword ptr [eax + eax * 0x8]");              // 0x00754922    8d04c0
    asm("shl               eax, 4");                                        // 0x00754925    c1e004
    asm("{disp32} lea      eax, dword ptr [eax + 0x00d091d8]");             // 0x00754928    8d80d891d000
    asm("mov.s             esi, eax");                                      // 0x0075492e    8bf0
    asm("mov               edx, dword ptr [esi]");                          // 0x00754930    8b16
    asm("test              edx, edx");                                      // 0x00754932    85d2
    asm("{disp8} mov       edi, dword ptr [esi + 0x04]");                   // 0x00754934    8b7e04
    asm("{disp8} mov       dword ptr [esp + 0x0c], edi");                   // 0x00754937    897c240c
    asm("{disp8} mov       edi, dword ptr [esi + 0x08]");                   // 0x0075493b    8b7e08
    asm("{disp8} mov       esi, dword ptr [esi + 0x0c]");                   // 0x0075493e    8b760c
    asm("{disp8} mov       dword ptr [esp + 0x10], edi");                   // 0x00754941    897c2410
    asm("{disp8} mov       dword ptr [esp + 0x14], esi");                   // 0x00754945    89742414
    asm("{disp8} je        _jmp_addr_0x0075496f");                          // 0x00754949    7424
    asm("{disp8} mov       esi, dword ptr [eax + 0x04]");                   // 0x0075494b    8b7004
    asm("{disp8} mov       edi, dword ptr [eax + 0x08]");                   // 0x0075494e    8b7808
    asm("mov               edx, dword ptr [eax]");                          // 0x00754951    8b10
    asm("{disp8} mov       eax, dword ptr [eax + 0x0c]");                   // 0x00754953    8b400c
    asm("{disp8} mov       dword ptr [esp + 0x14], eax");                   // 0x00754956    89442414
    asm("{disp8} mov       eax, dword ptr [esp + 0x1c]");                   // 0x0075495a    8b44241c
    asm("push              eax");                                           // 0x0075495e    50
    asm("add.s             ecx, esi");                                      // 0x0075495f    03ce
    asm("{disp8} mov       dword ptr [esp + 0x14], edi");                   // 0x00754961    897c2414
    asm("call              edx");                                           // 0x00754965    ffd2
    asm("pop               edi");                                           // 0x00754967    5f
    asm("pop               esi");                                           // 0x00754968    5e
    asm("add               esp, 0x10");                                     // 0x00754969    83c410
    asm("ret               0x0008");                                        // 0x0075496c    c20800
    asm("_jmp_addr_0x0075496f:");
    asm("pop               edi");                                           // 0x0075496f    5f
    asm("xor.s             eax, eax");                                      // 0x00754970    33c0
    asm("pop               esi");                                           // 0x00754972    5e
    asm("add               esp, 0x10");                                     // 0x00754973    83c410
    asm("ret               0x0008");                                        // 0x00754976    c20800
    __builtin_unreachable();
}

bool32_t __fastcall SaveStateFunction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              ebx");                                           // 0x00754980    53
    asm("push              esi");                                           // 0x00754981    56
    asm("push              edi");                                           // 0x00754982    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x10]");                   // 0x00754983    8b7c2410
    asm("push              0x0");                                           // 0x00754987    6a00
    asm("mov.s             esi, ecx");                                      // 0x00754989    8bf1
    asm("push              edi");                                           // 0x0075498b    57
    asm("call              ?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");                          // 0x0075498c    e80fffffff
    asm("push              0x1");                                           // 0x00754991    6a01
    asm("push              edi");                                           // 0x00754993    57
    asm("mov.s             ecx, esi");                                      // 0x00754994    8bce
    asm("mov.s             ebx, eax");                                      // 0x00754996    8bd8
    asm("call              ?CallSaveStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");                          // 0x00754998    e803ffffff
    asm("or.s              eax, ebx");                                      // 0x0075499d    0bc3
    asm("neg               eax");                                           // 0x0075499f    f7d8
    asm("pop               edi");                                           // 0x007549a1    5f
    asm("sbb.s             eax, eax");                                      // 0x007549a2    1bc0
    asm("pop               esi");                                           // 0x007549a4    5e
    asm("neg               eax");                                           // 0x007549a5    f7d8
    asm("pop               ebx");                                           // 0x007549a7    5b
    asm("ret               0x0004");                                        // 0x007549a8    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadStateFunction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              ebx");                                           // 0x007549b0    53
    asm("push              esi");                                           // 0x007549b1    56
    asm("push              edi");                                           // 0x007549b2    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x10]");                   // 0x007549b3    8b7c2410
    asm("push              0x0");                                           // 0x007549b7    6a00
    asm("mov.s             esi, ecx");                                      // 0x007549b9    8bf1
    asm("push              edi");                                           // 0x007549bb    57
    asm("call              ?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");                          // 0x007549bc    e84fffffff
    asm("push              0x1");                                           // 0x007549c1    6a01
    asm("push              edi");                                           // 0x007549c3    57
    asm("mov.s             ecx, esi");                                      // 0x007549c4    8bce
    asm("mov.s             ebx, eax");                                      // 0x007549c6    8bd8
    asm("call              ?CallLoadStateFunction@Villager@@QAE_NAAVGameOSFile@@W4STATE_TYPE@@@Z");                          // 0x007549c8    e843ffffff
    asm("or.s              eax, ebx");                                      // 0x007549cd    0bc3
    asm("{disp8} jbe       _jmp_addr_0x007549dc");                          // 0x007549cf    760b
    asm("pop               edi");                                           // 0x007549d1    5f
    asm("pop               esi");                                           // 0x007549d2    5e
    asm("mov               eax, 0x00000001");                               // 0x007549d3    b801000000
    asm("pop               ebx");                                           // 0x007549d8    5b
    asm("ret               0x0004");                                        // 0x007549d9    c20400
    asm("_jmp_addr_0x007549dc:");
    asm("push              0x00000cdd");                                    // 0x007549dc    68dd0c0000
    asm("push              0x00c235dc");                                    // 0x007549e1    68dc35c200
    asm("push              0x14");                                          // 0x007549e6    6a14
    asm("call              ?GameRand@GRand@@SAHJ@Z");                       // 0x007549e8    e8239bf8ff
    asm("add               esp, 0x0c");                                     // 0x007549ed    83c40c
    asm("inc               eax");                                           // 0x007549f0    40
    asm("pop               edi");                                           // 0x007549f1    5f
    asm("{disp8} mov       word ptr [esi + 0x58], ax");                     // 0x007549f2    66894658
    asm("pop               esi");                                           // 0x007549f6    5e
    asm("xor.s             eax, eax");                                      // 0x007549f7    33c0
    asm("pop               ebx");                                           // 0x007549f9    5b
    asm("ret               0x0004");                                        // 0x007549fa    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00754a00    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x08]");                   // 0x00754a01    8b742408
    asm("push              edi");                                           // 0x00754a05    57
    asm("mov.s             edi, ecx");                                      // 0x00754a06    8bf9
    asm("{disp32} mov      eax, dword ptr [edi + 0x000000fc]");             // 0x00754a08    8b87fc000000
    asm("push              eax");                                           // 0x00754a0e    50
    asm("mov.s             ecx, esi");                                      // 0x00754a0f    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00754a11    e8fad3e0ff
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754a16    a190c9be00
    asm("test              eax, eax");                                      // 0x00754a1b    85c0
    asm("{disp8} je        _jmp_addr_0x00754a55");                          // 0x00754a1d    7436
    asm("push              0x0");                                           // 0x00754a1f    6a00
    asm("push              0x4");                                           // 0x00754a21    6a04
    asm("add               edi, 0x00000118");                               // 0x00754a23    81c718010000
    asm("push              edi");                                           // 0x00754a29    57
    asm("mov.s             ecx, esi");                                      // 0x00754a2a    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754a2c    e8ef7e0600
    asm("cmp               eax, 0x03");                                     // 0x00754a31    83f803
    asm("{disp8} jne       _jmp_addr_0x00754a40");                          // 0x00754a34    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754a36    c70590c9be0000000000
    asm("_jmp_addr_0x00754a40:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754a40    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754a46    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754a48    8a0f
    asm("add               ecx, 0x4");                                      // 0x00754a4a    83c104
    asm("add.s             eax, ecx");                                      // 0x00754a4d    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754a4f    898614020000
    asm("_jmp_addr_0x00754a55:");
    asm("pop               edi");                                           // 0x00754a55    5f
    asm("mov               eax, 0x00000001");                               // 0x00754a56    b801000000
    asm("pop               esi");                                           // 0x00754a5b    5e
    asm("ret               0x0004");                                        // 0x00754a5c    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00754a60    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x08]");                   // 0x00754a61    8b742408
    asm("push              edi");                                           // 0x00754a65    57
    asm("mov.s             edi, ecx");                                      // 0x00754a66    8bf9
    asm("{disp32} lea      eax, dword ptr [edi + 0x000000fc]");             // 0x00754a68    8d87fc000000
    asm("push              eax");                                           // 0x00754a6e    50
    asm("mov.s             ecx, esi");                                      // 0x00754a6f    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00754a71    e80ad7e0ff
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754a76    a194c9be00
    asm("add               edi, 0x00000118");                               // 0x00754a7b    81c718010000
    asm("test              eax, eax");                                      // 0x00754a81    85c0
    asm("{disp8} je        _jmp_addr_0x00754ab5");                          // 0x00754a83    7430
    asm("push              0x0");                                           // 0x00754a85    6a00
    asm("push              0x4");                                           // 0x00754a87    6a04
    asm("push              edi");                                           // 0x00754a89    57
    asm("mov.s             ecx, esi");                                      // 0x00754a8a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754a8c    e84f7e0600
    asm("cmp               eax, 0x03");                                     // 0x00754a91    83f803
    asm("{disp8} jne       _jmp_addr_0x00754aa0");                          // 0x00754a94    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754a96    c70594c9be0000000000
    asm("_jmp_addr_0x00754aa0:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754aa0    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754aa6    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754aa8    8a0f
    asm("add               ecx, 0x4");                                      // 0x00754aaa    83c104
    asm("add.s             eax, ecx");                                      // 0x00754aad    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754aaf    898614020000
    asm("_jmp_addr_0x00754ab5:");
    asm("pop               edi");                                           // 0x00754ab5    5f
    asm("mov               eax, 0x00000001");                               // 0x00754ab6    b801000000
    asm("pop               esi");                                           // 0x00754abb    5e
    asm("ret               0x0004");                                        // 0x00754abc    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveDance__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754ac0    a190c9be00
    asm("test              eax, eax");                                      // 0x00754ac5    85c0
    asm("push              ebx");                                           // 0x00754ac7    53
    asm("push              esi");                                           // 0x00754ac8    56
    asm("push              edi");                                           // 0x00754ac9    57
    asm("mov.s             ebx, ecx");                                      // 0x00754aca    8bd9
    asm("{disp8} je        _jmp_addr_0x00754b47");                          // 0x00754acc    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00754ace    8b742410
    asm("push              0x0");                                           // 0x00754ad2    6a00
    asm("push              0x4");                                           // 0x00754ad4    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00754ad6    8dbb18010000
    asm("push              edi");                                           // 0x00754adc    57
    asm("mov.s             ecx, esi");                                      // 0x00754add    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754adf    e83c7e0600
    asm("cmp               eax, 0x03");                                     // 0x00754ae4    83f803
    asm("{disp8} jne       _jmp_addr_0x00754af3");                          // 0x00754ae7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754ae9    c70590c9be0000000000
    asm("_jmp_addr_0x00754af3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754af3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754af9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754afb    8a07
    asm("add               eax, 0x04");                                     // 0x00754afd    83c004
    asm("add.s             ecx, eax");                                      // 0x00754b00    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754b02    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754b08    a190c9be00
    asm("test              eax, eax");                                      // 0x00754b0d    85c0
    asm("{disp8} je        _jmp_addr_0x00754b47");                          // 0x00754b0f    7436
    asm("push              0x0");                                           // 0x00754b11    6a00
    asm("push              0x4");                                           // 0x00754b13    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011c]");             // 0x00754b15    8dbb1c010000
    asm("push              edi");                                           // 0x00754b1b    57
    asm("mov.s             ecx, esi");                                      // 0x00754b1c    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754b1e    e8fd7d0600
    asm("cmp               eax, 0x03");                                     // 0x00754b23    83f803
    asm("{disp8} jne       _jmp_addr_0x00754b32");                          // 0x00754b26    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754b28    c70590c9be0000000000
    asm("_jmp_addr_0x00754b32:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754b32    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754b38    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754b3a    8a0f
    asm("add               ecx, 0x4");                                      // 0x00754b3c    83c104
    asm("add.s             eax, ecx");                                      // 0x00754b3f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754b41    898614020000
    asm("_jmp_addr_0x00754b47:");
    asm("pop               edi");                                           // 0x00754b47    5f
    asm("pop               esi");                                           // 0x00754b48    5e
    asm("mov               eax, 0x00000001");                               // 0x00754b49    b801000000
    asm("pop               ebx");                                           // 0x00754b4e    5b
    asm("ret               0x0004");                                        // 0x00754b4f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadDance__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754b60    a194c9be00
    asm("test              eax, eax");                                      // 0x00754b65    85c0
    asm("push              ebx");                                           // 0x00754b67    53
    asm("push              esi");                                           // 0x00754b68    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754b69    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00754b6d    8bd9
    asm("push              edi");                                           // 0x00754b6f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00754b70    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x00754ba8");                          // 0x00754b76    7430
    asm("push              0x0");                                           // 0x00754b78    6a00
    asm("push              0x4");                                           // 0x00754b7a    6a04
    asm("push              edi");                                           // 0x00754b7c    57
    asm("mov.s             ecx, esi");                                      // 0x00754b7d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754b7f    e85c7d0600
    asm("cmp               eax, 0x03");                                     // 0x00754b84    83f803
    asm("{disp8} jne       _jmp_addr_0x00754b93");                          // 0x00754b87    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754b89    c70594c9be0000000000
    asm("_jmp_addr_0x00754b93:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754b93    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754b99    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754b9b    8a07
    asm("add               eax, 0x04");                                     // 0x00754b9d    83c004
    asm("add.s             ecx, eax");                                      // 0x00754ba0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754ba2    898e14020000
    asm("_jmp_addr_0x00754ba8:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754ba8    a194c9be00
    asm("test              eax, eax");                                      // 0x00754bad    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011c]");             // 0x00754baf    8dbb1c010000
    asm("{disp8} je        _jmp_addr_0x00754be7");                          // 0x00754bb5    7430
    asm("push              0x0");                                           // 0x00754bb7    6a00
    asm("push              0x4");                                           // 0x00754bb9    6a04
    asm("push              edi");                                           // 0x00754bbb    57
    asm("mov.s             ecx, esi");                                      // 0x00754bbc    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754bbe    e81d7d0600
    asm("cmp               eax, 0x03");                                     // 0x00754bc3    83f803
    asm("{disp8} jne       _jmp_addr_0x00754bd2");                          // 0x00754bc6    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754bc8    c70594c9be0000000000
    asm("_jmp_addr_0x00754bd2:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00754bd2    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754bd8    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00754bda    8a0f
    asm("add               ecx, 0x4");                                      // 0x00754bdc    83c104
    asm("add.s             eax, ecx");                                      // 0x00754bdf    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00754be1    898614020000
    asm("_jmp_addr_0x00754be7:");
    asm("pop               edi");                                           // 0x00754be7    5f
    asm("pop               esi");                                           // 0x00754be8    5e
    asm("mov               eax, 0x00000001");                               // 0x00754be9    b801000000
    asm("pop               ebx");                                           // 0x00754bee    5b
    asm("ret               0x0004");                                        // 0x00754bef    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveWorship__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754c00    a190c9be00
    asm("test              eax, eax");                                      // 0x00754c05    85c0
    asm("{disp8} je        _jmp_addr_0x00754c4f");                          // 0x00754c07    7446
    asm("push              esi");                                           // 0x00754c09    56
    asm("push              edi");                                           // 0x00754c0a    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00754c0b    8b7c240c
    asm("push              0x0");                                           // 0x00754c0f    6a00
    asm("{disp32} lea      esi, dword ptr [ecx + 0x00000118]");             // 0x00754c11    8db118010000
    asm("push              0x4");                                           // 0x00754c17    6a04
    asm("push              esi");                                           // 0x00754c19    56
    asm("mov.s             ecx, edi");                                      // 0x00754c1a    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754c1c    e8ff7c0600
    asm("cmp               eax, 0x03");                                     // 0x00754c21    83f803
    asm("{disp8} jne       _jmp_addr_0x00754c30");                          // 0x00754c24    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754c26    c70590c9be0000000000
    asm("_jmp_addr_0x00754c30:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x00754c30    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x00754c36    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x00754c38    8a06
    asm("add               eax, 0x04");                                     // 0x00754c3a    83c004
    asm("add.s             ecx, eax");                                      // 0x00754c3d    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x00754c3f    898f14020000
    asm("pop               edi");                                           // 0x00754c45    5f
    asm("mov               eax, 0x00000001");                               // 0x00754c46    b801000000
    asm("pop               esi");                                           // 0x00754c4b    5e
    asm("ret               0x0004");                                        // 0x00754c4c    c20400
    asm("_jmp_addr_0x00754c4f:");
    asm("mov               eax, 0x00000001");                               // 0x00754c4f    b801000000
    asm("ret               0x0004");                                        // 0x00754c54    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadWorship__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754c60    a194c9be00
    asm("test              eax, eax");                                      // 0x00754c65    85c0
    asm("push              edi");                                           // 0x00754c67    57
    asm("{disp32} lea      edi, dword ptr [ecx + 0x00000118]");             // 0x00754c68    8db918010000
    asm("{disp8} je        _jmp_addr_0x00754caf");                          // 0x00754c6e    743f
    asm("push              esi");                                           // 0x00754c70    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754c71    8b74240c
    asm("push              0x0");                                           // 0x00754c75    6a00
    asm("push              0x4");                                           // 0x00754c77    6a04
    asm("push              edi");                                           // 0x00754c79    57
    asm("mov.s             ecx, esi");                                      // 0x00754c7a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754c7c    e85f7c0600
    asm("cmp               eax, 0x03");                                     // 0x00754c81    83f803
    asm("{disp8} jne       _jmp_addr_0x00754c90");                          // 0x00754c84    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754c86    c70594c9be0000000000
    asm("_jmp_addr_0x00754c90:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754c90    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754c96    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754c98    8a07
    asm("add               eax, 0x04");                                     // 0x00754c9a    83c004
    asm("add.s             ecx, eax");                                      // 0x00754c9d    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754c9f    898e14020000
    asm("pop               esi");                                           // 0x00754ca5    5e
    asm("mov               eax, 0x00000001");                               // 0x00754ca6    b801000000
    asm("pop               edi");                                           // 0x00754cab    5f
    asm("ret               0x0004");                                        // 0x00754cac    c20400
    asm("_jmp_addr_0x00754caf:");
    asm("mov               eax, 0x00000001");                               // 0x00754caf    b801000000
    asm("pop               edi");                                           // 0x00754cb4    5f
    asm("ret               0x0004");                                        // 0x00754cb5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveDead__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754cc0    a190c9be00
    asm("test              eax, eax");                                      // 0x00754cc5    85c0
    asm("{disp8} je        _jmp_addr_0x00754d0d");                          // 0x00754cc7    7444
    asm("push              esi");                                           // 0x00754cc9    56
    asm("push              edi");                                           // 0x00754cca    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00754ccb    8b7c240c
    asm("push              0x0");                                           // 0x00754ccf    6a00
    asm("{disp32} lea      esi, dword ptr [ecx + 0x00000118]");             // 0x00754cd1    8db118010000
    asm("push              0x1");                                           // 0x00754cd7    6a01
    asm("push              esi");                                           // 0x00754cd9    56
    asm("mov.s             ecx, edi");                                      // 0x00754cda    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754cdc    e83f7c0600
    asm("cmp               eax, 0x03");                                     // 0x00754ce1    83f803
    asm("{disp8} jne       _jmp_addr_0x00754cf0");                          // 0x00754ce4    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754ce6    c70590c9be0000000000
    asm("_jmp_addr_0x00754cf0:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x00754cf0    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x00754cf6    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x00754cf8    8a06
    asm("inc               eax");                                           // 0x00754cfa    40
    asm("add.s             ecx, eax");                                      // 0x00754cfb    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x00754cfd    898f14020000
    asm("pop               edi");                                           // 0x00754d03    5f
    asm("mov               eax, 0x00000001");                               // 0x00754d04    b801000000
    asm("pop               esi");                                           // 0x00754d09    5e
    asm("ret               0x0004");                                        // 0x00754d0a    c20400
    asm("_jmp_addr_0x00754d0d:");
    asm("mov               eax, 0x00000001");                               // 0x00754d0d    b801000000
    asm("ret               0x0004");                                        // 0x00754d12    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadDead__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754d20    a194c9be00
    asm("test              eax, eax");                                      // 0x00754d25    85c0
    asm("push              edi");                                           // 0x00754d27    57
    asm("{disp32} lea      edi, dword ptr [ecx + 0x00000118]");             // 0x00754d28    8db918010000
    asm("{disp8} je        _jmp_addr_0x00754d6d");                          // 0x00754d2e    743d
    asm("push              esi");                                           // 0x00754d30    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754d31    8b74240c
    asm("push              0x0");                                           // 0x00754d35    6a00
    asm("push              0x1");                                           // 0x00754d37    6a01
    asm("push              edi");                                           // 0x00754d39    57
    asm("mov.s             ecx, esi");                                      // 0x00754d3a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754d3c    e89f7b0600
    asm("cmp               eax, 0x03");                                     // 0x00754d41    83f803
    asm("{disp8} jne       _jmp_addr_0x00754d50");                          // 0x00754d44    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754d46    c70594c9be0000000000
    asm("_jmp_addr_0x00754d50:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754d50    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754d56    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754d58    8a07
    asm("inc               eax");                                           // 0x00754d5a    40
    asm("add.s             ecx, eax");                                      // 0x00754d5b    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754d5d    898e14020000
    asm("pop               esi");                                           // 0x00754d63    5e
    asm("mov               eax, 0x00000001");                               // 0x00754d64    b801000000
    asm("pop               edi");                                           // 0x00754d69    5f
    asm("ret               0x0004");                                        // 0x00754d6a    c20400
    asm("_jmp_addr_0x00754d6d:");
    asm("mov               eax, 0x00000001");                               // 0x00754d6d    b801000000
    asm("pop               edi");                                           // 0x00754d72    5f
    asm("ret               0x0004");                                        // 0x00754d73    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveInHand__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754d80    a190c9be00
    asm("test              eax, eax");                                      // 0x00754d85    85c0
    asm("{disp8} je        _jmp_addr_0x00754dcf");                          // 0x00754d87    7446
    asm("push              esi");                                           // 0x00754d89    56
    asm("push              edi");                                           // 0x00754d8a    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00754d8b    8b7c240c
    asm("push              0x0");                                           // 0x00754d8f    6a00
    asm("{disp32} lea      esi, dword ptr [ecx + 0x0000010c]");             // 0x00754d91    8db10c010000
    asm("push              0x4");                                           // 0x00754d97    6a04
    asm("push              esi");                                           // 0x00754d99    56
    asm("mov.s             ecx, edi");                                      // 0x00754d9a    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754d9c    e87f7b0600
    asm("cmp               eax, 0x03");                                     // 0x00754da1    83f803
    asm("{disp8} jne       _jmp_addr_0x00754db0");                          // 0x00754da4    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754da6    c70590c9be0000000000
    asm("_jmp_addr_0x00754db0:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x00754db0    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x00754db6    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x00754db8    8a06
    asm("add               eax, 0x04");                                     // 0x00754dba    83c004
    asm("add.s             ecx, eax");                                      // 0x00754dbd    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x00754dbf    898f14020000
    asm("pop               edi");                                           // 0x00754dc5    5f
    asm("mov               eax, 0x00000001");                               // 0x00754dc6    b801000000
    asm("pop               esi");                                           // 0x00754dcb    5e
    asm("ret               0x0004");                                        // 0x00754dcc    c20400
    asm("_jmp_addr_0x00754dcf:");
    asm("mov               eax, 0x00000001");                               // 0x00754dcf    b801000000
    asm("ret               0x0004");                                        // 0x00754dd4    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadInHand__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754de0    a194c9be00
    asm("test              eax, eax");                                      // 0x00754de5    85c0
    asm("push              edi");                                           // 0x00754de7    57
    asm("{disp32} lea      edi, dword ptr [ecx + 0x0000010c]");             // 0x00754de8    8db90c010000
    asm("{disp8} je        _jmp_addr_0x00754e2f");                          // 0x00754dee    743f
    asm("push              esi");                                           // 0x00754df0    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754df1    8b74240c
    asm("push              0x0");                                           // 0x00754df5    6a00
    asm("push              0x4");                                           // 0x00754df7    6a04
    asm("push              edi");                                           // 0x00754df9    57
    asm("mov.s             ecx, esi");                                      // 0x00754dfa    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754dfc    e8df7a0600
    asm("cmp               eax, 0x03");                                     // 0x00754e01    83f803
    asm("{disp8} jne       _jmp_addr_0x00754e10");                          // 0x00754e04    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754e06    c70594c9be0000000000
    asm("_jmp_addr_0x00754e10:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754e10    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754e16    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754e18    8a07
    asm("add               eax, 0x04");                                     // 0x00754e1a    83c004
    asm("add.s             ecx, eax");                                      // 0x00754e1d    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754e1f    898e14020000
    asm("pop               esi");                                           // 0x00754e25    5e
    asm("mov               eax, 0x00000001");                               // 0x00754e26    b801000000
    asm("pop               edi");                                           // 0x00754e2b    5f
    asm("ret               0x0004");                                        // 0x00754e2c    c20400
    asm("_jmp_addr_0x00754e2f:");
    asm("mov               eax, 0x00000001");                               // 0x00754e2f    b801000000
    asm("pop               edi");                                           // 0x00754e34    5f
    asm("ret               0x0004");                                        // 0x00754e35    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveFishing__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [ecx + 0x00000118]");             // 0x00754e40    8b8118010000
    asm("{disp8} mov       ecx, dword ptr [esp + 0x04]");                   // 0x00754e46    8b4c2404
    asm("push              eax");                                           // 0x00754e4a    50
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00754e4b    e8c0cfe0ff
    asm("mov               eax, 0x00000001");                               // 0x00754e50    b801000000
    asm("ret               0x0004");                                        // 0x00754e55    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LoadFishing__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("add               ecx, 0x00000118");                               // 0x00754e60    81c118010000
    asm("push              ecx");                                           // 0x00754e66    51
    asm("{disp8} mov       ecx, dword ptr [esp + 0x08]");                   // 0x00754e67    8b4c2408
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00754e6b    e810d3e0ff
    asm("mov               eax, 0x00000001");                               // 0x00754e70    b801000000
    asm("ret               0x0004");                                        // 0x00754e75    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveFarming__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754e80    a190c9be00
    asm("test              eax, eax");                                      // 0x00754e85    85c0
    asm("push              ebx");                                           // 0x00754e87    53
    asm("push              edi");                                           // 0x00754e88    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00754e89    8b7c240c
    asm("mov.s             ebx, ecx");                                      // 0x00754e8d    8bd9
    asm("{disp8} je        _jmp_addr_0x00754ec9");                          // 0x00754e8f    7438
    asm("push              esi");                                           // 0x00754e91    56
    asm("push              0x0");                                           // 0x00754e92    6a00
    asm("push              0xc");                                           // 0x00754e94    6a0c
    asm("{disp32} lea      esi, dword ptr [ebx + 0x0000011c]");             // 0x00754e96    8db31c010000
    asm("push              esi");                                           // 0x00754e9c    56
    asm("mov.s             ecx, edi");                                      // 0x00754e9d    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754e9f    e87c7a0600
    asm("cmp               eax, 0x03");                                     // 0x00754ea4    83f803
    asm("{disp8} jne       _jmp_addr_0x00754eb3");                          // 0x00754ea7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754ea9    c70590c9be0000000000
    asm("_jmp_addr_0x00754eb3:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x00754eb3    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x00754eb9    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x00754ebb    8a06
    asm("pop               esi");                                           // 0x00754ebd    5e
    asm("add               eax, 0x0c");                                     // 0x00754ebe    83c00c
    asm("add.s             ecx, eax");                                      // 0x00754ec1    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x00754ec3    898f14020000
    asm("_jmp_addr_0x00754ec9:");
    asm("{disp32} mov      ecx, dword ptr [ebx + 0x00000118]");             // 0x00754ec9    8b8b18010000
    asm("push              ecx");                                           // 0x00754ecf    51
    asm("mov.s             ecx, edi");                                      // 0x00754ed0    8bcf
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00754ed2    e839cfe0ff
    asm("pop               edi");                                           // 0x00754ed7    5f
    asm("mov               eax, 0x00000001");                               // 0x00754ed8    b801000000
    asm("pop               ebx");                                           // 0x00754edd    5b
    asm("ret               0x0004");                                        // 0x00754ede    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadFarming__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00754ef0    a194c9be00
    asm("test              eax, eax");                                      // 0x00754ef5    85c0
    asm("push              ebx");                                           // 0x00754ef7    53
    asm("push              esi");                                           // 0x00754ef8    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754ef9    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00754efd    8bd9
    asm("push              edi");                                           // 0x00754eff    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011c]");             // 0x00754f00    8dbb1c010000
    asm("{disp8} je        _jmp_addr_0x00754f38");                          // 0x00754f06    7430
    asm("push              0x0");                                           // 0x00754f08    6a00
    asm("push              0xc");                                           // 0x00754f0a    6a0c
    asm("push              edi");                                           // 0x00754f0c    57
    asm("mov.s             ecx, esi");                                      // 0x00754f0d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00754f0f    e8cc790600
    asm("cmp               eax, 0x03");                                     // 0x00754f14    83f803
    asm("{disp8} jne       _jmp_addr_0x00754f23");                          // 0x00754f17    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00754f19    c70594c9be0000000000
    asm("_jmp_addr_0x00754f23:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754f23    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754f29    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00754f2b    8a07
    asm("add               eax, 0x0c");                                     // 0x00754f2d    83c00c
    asm("add.s             ecx, eax");                                      // 0x00754f30    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754f32    898e14020000
    asm("_jmp_addr_0x00754f38:");
    asm("add               ebx, 0x00000118");                               // 0x00754f38    81c318010000
    asm("push              ebx");                                           // 0x00754f3e    53
    asm("mov.s             ecx, esi");                                      // 0x00754f3f    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00754f41    e83ad2e0ff
    asm("pop               edi");                                           // 0x00754f46    5f
    asm("pop               esi");                                           // 0x00754f47    5e
    asm("mov               eax, 0x00000001");                               // 0x00754f48    b801000000
    asm("pop               ebx");                                           // 0x00754f4d    5b
    asm("ret               0x0004");                                        // 0x00754f4e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveFootball__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754f60    a190c9be00
    asm("test              eax, eax");                                      // 0x00754f65    85c0
    asm("push              ebx");                                           // 0x00754f67    53
    asm("push              esi");                                           // 0x00754f68    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00754f69    8b74240c
    asm("push              edi");                                           // 0x00754f6d    57
    asm("mov.s             edi, ecx");                                      // 0x00754f6e    8bf9
    asm("{disp32} je       _jmp_addr_0x00755024");                          // 0x00754f70    0f84ae000000
    asm("push              0x0");                                           // 0x00754f76    6a00
    asm("push              0x1");                                           // 0x00754f78    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x00000118]");             // 0x00754f7a    8d9f18010000
    asm("push              ebx");                                           // 0x00754f80    53
    asm("mov.s             ecx, esi");                                      // 0x00754f81    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754f83    e898790600
    asm("cmp               eax, 0x03");                                     // 0x00754f88    83f803
    asm("{disp8} jne       _jmp_addr_0x00754f97");                          // 0x00754f8b    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754f8d    c70590c9be0000000000
    asm("_jmp_addr_0x00754f97:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00754f97    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00754f9d    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x00754f9f    8a03
    asm("inc               eax");                                           // 0x00754fa1    40
    asm("add.s             ecx, eax");                                      // 0x00754fa2    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00754fa4    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754faa    a190c9be00
    asm("test              eax, eax");                                      // 0x00754faf    85c0
    asm("{disp8} je        _jmp_addr_0x00755024");                          // 0x00754fb1    7471
    asm("push              0x0");                                           // 0x00754fb3    6a00
    asm("push              0x1");                                           // 0x00754fb5    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x00000119]");             // 0x00754fb7    8d9f19010000
    asm("push              ebx");                                           // 0x00754fbd    53
    asm("mov.s             ecx, esi");                                      // 0x00754fbe    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754fc0    e85b790600
    asm("cmp               eax, 0x03");                                     // 0x00754fc5    83f803
    asm("{disp8} jne       _jmp_addr_0x00754fd4");                          // 0x00754fc8    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00754fca    c70590c9be0000000000
    asm("_jmp_addr_0x00754fd4:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x00754fd4    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x00754fda    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x00754fdc    8a0b
    asm("inc               ecx");                                           // 0x00754fde    41
    asm("add.s             edx, ecx");                                      // 0x00754fdf    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x00754fe1    899614020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00754fe7    a190c9be00
    asm("test              eax, eax");                                      // 0x00754fec    85c0
    asm("{disp8} je        _jmp_addr_0x00755024");                          // 0x00754fee    7434
    asm("push              0x0");                                           // 0x00754ff0    6a00
    asm("push              0x1");                                           // 0x00754ff2    6a01
    asm("{disp32} lea      ebx, dword ptr [edi + 0x0000011a]");             // 0x00754ff4    8d9f1a010000
    asm("push              ebx");                                           // 0x00754ffa    53
    asm("mov.s             ecx, esi");                                      // 0x00754ffb    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00754ffd    e81e790600
    asm("cmp               eax, 0x03");                                     // 0x00755002    83f803
    asm("{disp8} jne       _jmp_addr_0x00755011");                          // 0x00755005    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755007    c70590c9be0000000000
    asm("_jmp_addr_0x00755011:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755011    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x00755017    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x00755019    8a13
    asm("inc               edx");                                           // 0x0075501b    42
    asm("add.s             eax, edx");                                      // 0x0075501c    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x0075501e    898614020000
    asm("_jmp_addr_0x00755024:");
    asm("{disp32} mov      eax, dword ptr [edi + 0x0000011c]");             // 0x00755024    8b871c010000
    asm("push              eax");                                           // 0x0075502a    50
    asm("mov.s             ecx, esi");                                      // 0x0075502b    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x0075502d    e8decde0ff
    asm("pop               edi");                                           // 0x00755032    5f
    asm("pop               esi");                                           // 0x00755033    5e
    asm("mov               eax, 0x00000001");                               // 0x00755034    b801000000
    asm("pop               ebx");                                           // 0x00755039    5b
    asm("ret               0x0004");                                        // 0x0075503a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadFootball__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755040    a194c9be00
    asm("test              eax, eax");                                      // 0x00755045    85c0
    asm("push              ebx");                                           // 0x00755047    53
    asm("push              esi");                                           // 0x00755048    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755049    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x0075504d    8bd9
    asm("push              edi");                                           // 0x0075504f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00755050    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x00755086");                          // 0x00755056    742e
    asm("push              0x0");                                           // 0x00755058    6a00
    asm("push              0x1");                                           // 0x0075505a    6a01
    asm("push              edi");                                           // 0x0075505c    57
    asm("mov.s             ecx, esi");                                      // 0x0075505d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075505f    e87c780600
    asm("cmp               eax, 0x03");                                     // 0x00755064    83f803
    asm("{disp8} jne       _jmp_addr_0x00755073");                          // 0x00755067    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755069    c70594c9be0000000000
    asm("_jmp_addr_0x00755073:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755073    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755079    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075507b    8a07
    asm("inc               eax");                                           // 0x0075507d    40
    asm("add.s             ecx, eax");                                      // 0x0075507e    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755080    898e14020000
    asm("_jmp_addr_0x00755086:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755086    a194c9be00
    asm("test              eax, eax");                                      // 0x0075508b    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000119]");             // 0x0075508d    8dbb19010000
    asm("{disp8} je        _jmp_addr_0x007550c3");                          // 0x00755093    742e
    asm("push              0x0");                                           // 0x00755095    6a00
    asm("push              0x1");                                           // 0x00755097    6a01
    asm("push              edi");                                           // 0x00755099    57
    asm("mov.s             ecx, esi");                                      // 0x0075509a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075509c    e83f780600
    asm("cmp               eax, 0x03");                                     // 0x007550a1    83f803
    asm("{disp8} jne       _jmp_addr_0x007550b0");                          // 0x007550a4    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x007550a6    c70594c9be0000000000
    asm("_jmp_addr_0x007550b0:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007550b0    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007550b6    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x007550b8    8a0f
    asm("inc               ecx");                                           // 0x007550ba    41
    asm("add.s             eax, ecx");                                      // 0x007550bb    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007550bd    898614020000
    asm("_jmp_addr_0x007550c3:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x007550c3    a194c9be00
    asm("test              eax, eax");                                      // 0x007550c8    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011a]");             // 0x007550ca    8dbb1a010000
    asm("{disp8} je        _jmp_addr_0x00755100");                          // 0x007550d0    742e
    asm("push              0x0");                                           // 0x007550d2    6a00
    asm("push              0x1");                                           // 0x007550d4    6a01
    asm("push              edi");                                           // 0x007550d6    57
    asm("mov.s             ecx, esi");                                      // 0x007550d7    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007550d9    e802780600
    asm("cmp               eax, 0x03");                                     // 0x007550de    83f803
    asm("{disp8} jne       _jmp_addr_0x007550ed");                          // 0x007550e1    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x007550e3    c70594c9be0000000000
    asm("_jmp_addr_0x007550ed:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007550ed    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x007550f3    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x007550f5    8a17
    asm("inc               edx");                                           // 0x007550f7    42
    asm("add.s             eax, edx");                                      // 0x007550f8    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007550fa    898614020000
    asm("_jmp_addr_0x00755100:");
    asm("add               ebx, 0x0000011c");                               // 0x00755100    81c31c010000
    asm("push              ebx");                                           // 0x00755106    53
    asm("mov.s             ecx, esi");                                      // 0x00755107    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755109    e872d0e0ff
    asm("pop               edi");                                           // 0x0075510e    5f
    asm("pop               esi");                                           // 0x0075510f    5e
    asm("mov               eax, 0x00000001");                               // 0x00755110    b801000000
    asm("pop               ebx");                                           // 0x00755115    5b
    asm("ret               0x0004");                                        // 0x00755116    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveShepherd__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755120    a190c9be00
    asm("test              eax, eax");                                      // 0x00755125    85c0
    asm("push              ebx");                                           // 0x00755127    53
    asm("push              esi");                                           // 0x00755128    56
    asm("push              edi");                                           // 0x00755129    57
    asm("mov.s             ebx, ecx");                                      // 0x0075512a    8bd9
    asm("{disp8} je        _jmp_addr_0x007551a7");                          // 0x0075512c    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x0075512e    8b742410
    asm("push              0x0");                                           // 0x00755132    6a00
    asm("push              0x2");                                           // 0x00755134    6a02
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00755136    8dbb18010000
    asm("push              edi");                                           // 0x0075513c    57
    asm("mov.s             ecx, esi");                                      // 0x0075513d    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075513f    e8dc770600
    asm("cmp               eax, 0x03");                                     // 0x00755144    83f803
    asm("{disp8} jne       _jmp_addr_0x00755153");                          // 0x00755147    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755149    c70590c9be0000000000
    asm("_jmp_addr_0x00755153:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755153    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755159    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075515b    8a07
    asm("add               eax, 0x02");                                     // 0x0075515d    83c002
    asm("add.s             ecx, eax");                                      // 0x00755160    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755162    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755168    a190c9be00
    asm("test              eax, eax");                                      // 0x0075516d    85c0
    asm("{disp8} je        _jmp_addr_0x007551a7");                          // 0x0075516f    7436
    asm("push              0x0");                                           // 0x00755171    6a00
    asm("push              0x2");                                           // 0x00755173    6a02
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011a]");             // 0x00755175    8dbb1a010000
    asm("push              edi");                                           // 0x0075517b    57
    asm("mov.s             ecx, esi");                                      // 0x0075517c    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075517e    e89d770600
    asm("cmp               eax, 0x03");                                     // 0x00755183    83f803
    asm("{disp8} jne       _jmp_addr_0x00755192");                          // 0x00755186    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755188    c70590c9be0000000000
    asm("_jmp_addr_0x00755192:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755192    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755198    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x0075519a    8a0f
    asm("add               ecx, 0x2");                                      // 0x0075519c    83c102
    asm("add.s             eax, ecx");                                      // 0x0075519f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007551a1    898614020000
    asm("_jmp_addr_0x007551a7:");
    asm("pop               edi");                                           // 0x007551a7    5f
    asm("pop               esi");                                           // 0x007551a8    5e
    asm("mov               eax, 0x00000001");                               // 0x007551a9    b801000000
    asm("pop               ebx");                                           // 0x007551ae    5b
    asm("ret               0x0004");                                        // 0x007551af    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadShepherd__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x007551c0    a194c9be00
    asm("test              eax, eax");                                      // 0x007551c5    85c0
    asm("push              ebx");                                           // 0x007551c7    53
    asm("push              esi");                                           // 0x007551c8    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x007551c9    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x007551cd    8bd9
    asm("push              edi");                                           // 0x007551cf    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x007551d0    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x00755208");                          // 0x007551d6    7430
    asm("push              0x0");                                           // 0x007551d8    6a00
    asm("push              0x2");                                           // 0x007551da    6a02
    asm("push              edi");                                           // 0x007551dc    57
    asm("mov.s             ecx, esi");                                      // 0x007551dd    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007551df    e8fc760600
    asm("cmp               eax, 0x03");                                     // 0x007551e4    83f803
    asm("{disp8} jne       _jmp_addr_0x007551f3");                          // 0x007551e7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x007551e9    c70594c9be0000000000
    asm("_jmp_addr_0x007551f3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007551f3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007551f9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x007551fb    8a07
    asm("add               eax, 0x02");                                     // 0x007551fd    83c002
    asm("add.s             ecx, eax");                                      // 0x00755200    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755202    898e14020000
    asm("_jmp_addr_0x00755208:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755208    a194c9be00
    asm("test              eax, eax");                                      // 0x0075520d    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011a]");             // 0x0075520f    8dbb1a010000
    asm("{disp8} je        _jmp_addr_0x00755247");                          // 0x00755215    7430
    asm("push              0x0");                                           // 0x00755217    6a00
    asm("push              0x2");                                           // 0x00755219    6a02
    asm("push              edi");                                           // 0x0075521b    57
    asm("mov.s             ecx, esi");                                      // 0x0075521c    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075521e    e8bd760600
    asm("cmp               eax, 0x03");                                     // 0x00755223    83f803
    asm("{disp8} jne       _jmp_addr_0x00755232");                          // 0x00755226    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755228    c70594c9be0000000000
    asm("_jmp_addr_0x00755232:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755232    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755238    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x0075523a    8a0f
    asm("add               ecx, 0x2");                                      // 0x0075523c    83c102
    asm("add.s             eax, ecx");                                      // 0x0075523f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755241    898614020000
    asm("_jmp_addr_0x00755247:");
    asm("pop               edi");                                           // 0x00755247    5f
    asm("pop               esi");                                           // 0x00755248    5e
    asm("mov               eax, 0x00000001");                               // 0x00755249    b801000000
    asm("pop               ebx");                                           // 0x0075524e    5b
    asm("ret               0x0004");                                        // 0x0075524f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveInScript__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755260    a190c9be00
    asm("push              ebx");                                           // 0x00755265    53
    asm("push              ebp");                                           // 0x00755266    55
    asm("push              esi");                                           // 0x00755267    56
    asm("xor.s             ebp, ebp");                                      // 0x00755268    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075526a    3bc5
    asm("push              edi");                                           // 0x0075526c    57
    asm("mov.s             edi, ecx");                                      // 0x0075526d    8bf9
    asm("{disp32} je       _jmp_addr_0x00755359");                          // 0x0075526f    0f84e4000000
    asm("{disp8} mov       esi, dword ptr [esp + 0x14]");                   // 0x00755275    8b742414
    asm("push              ebp");                                           // 0x00755279    55
    asm("push              0x8");                                           // 0x0075527a    6a08
    asm("{disp32} lea      ebx, dword ptr [edi + 0x0000010c]");             // 0x0075527c    8d9f0c010000
    asm("push              ebx");                                           // 0x00755282    53
    asm("mov.s             ecx, esi");                                      // 0x00755283    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755285    e896760600
    asm("cmp               eax, 0x03");                                     // 0x0075528a    83f803
    asm("{disp8} jne       _jmp_addr_0x00755295");                          // 0x0075528d    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x0075528f    892d90c9be00
    asm("_jmp_addr_0x00755295:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755295    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x0075529b    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x0075529d    8a03
    asm("add               eax, 0x08");                                     // 0x0075529f    83c008
    asm("add.s             ecx, eax");                                      // 0x007552a2    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007552a4    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007552aa    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x00755359");                          // 0x007552b0    0f84a3000000
    asm("push              ebp");                                           // 0x007552b6    55
    asm("push              0x4");                                           // 0x007552b7    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x00000118]");             // 0x007552b9    8d9f18010000
    asm("push              ebx");                                           // 0x007552bf    53
    asm("mov.s             ecx, esi");                                      // 0x007552c0    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007552c2    e859760600
    asm("cmp               eax, 0x03");                                     // 0x007552c7    83f803
    asm("{disp8} jne       _jmp_addr_0x007552d2");                          // 0x007552ca    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007552cc    892d90c9be00
    asm("_jmp_addr_0x007552d2:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x007552d2    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x007552d8    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x007552da    8a0b
    asm("add               ecx, 0x4");                                      // 0x007552dc    83c104
    asm("add.s             edx, ecx");                                      // 0x007552df    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x007552e1    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007552e7    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x00755359");                          // 0x007552ed    746a
    asm("push              ebp");                                           // 0x007552ef    55
    asm("push              0x4");                                           // 0x007552f0    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x0000011c]");             // 0x007552f2    8d9f1c010000
    asm("push              ebx");                                           // 0x007552f8    53
    asm("mov.s             ecx, esi");                                      // 0x007552f9    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007552fb    e820760600
    asm("cmp               eax, 0x03");                                     // 0x00755300    83f803
    asm("{disp8} jne       _jmp_addr_0x0075530b");                          // 0x00755303    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00755305    892d90c9be00
    asm("_jmp_addr_0x0075530b:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075530b    8b8e14020000
    asm("xor.s             edx, edx");                                      // 0x00755311    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x00755313    8a13
    asm("add               edx, 0x04");                                     // 0x00755315    83c204
    asm("add.s             ecx, edx");                                      // 0x00755318    03ca
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075531a    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00755320    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x00755359");                          // 0x00755326    7431
    asm("push              ebp");                                           // 0x00755328    55
    asm("push              0x4");                                           // 0x00755329    6a04
    asm("add               edi, 0x00000120");                               // 0x0075532b    81c720010000
    asm("push              edi");                                           // 0x00755331    57
    asm("mov.s             ecx, esi");                                      // 0x00755332    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755334    e8e7750600
    asm("cmp               eax, 0x03");                                     // 0x00755339    83f803
    asm("{disp8} jne       _jmp_addr_0x00755344");                          // 0x0075533c    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x0075533e    892d90c9be00
    asm("_jmp_addr_0x00755344:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755344    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x0075534a    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075534c    8a07
    asm("add               eax, 0x04");                                     // 0x0075534e    83c004
    asm("add.s             ecx, eax");                                      // 0x00755351    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755353    898e14020000
    asm("_jmp_addr_0x00755359:");
    asm("pop               edi");                                           // 0x00755359    5f
    asm("pop               esi");                                           // 0x0075535a    5e
    asm("pop               ebp");                                           // 0x0075535b    5d
    asm("mov               eax, 0x00000001");                               // 0x0075535c    b801000000
    asm("pop               ebx");                                           // 0x00755361    5b
    asm("ret               0x0004");                                        // 0x00755362    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadInScript__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755370    a194c9be00
    asm("push              ebx");                                           // 0x00755375    53
    asm("push              ebp");                                           // 0x00755376    55
    asm("push              esi");                                           // 0x00755377    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00755378    8b742410
    asm("xor.s             ebp, ebp");                                      // 0x0075537c    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075537e    3bc5
    asm("mov.s             ebx, ecx");                                      // 0x00755380    8bd9
    asm("push              edi");                                           // 0x00755382    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755383    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x007553b6");                          // 0x00755389    742b
    asm("push              ebp");                                           // 0x0075538b    55
    asm("push              0x8");                                           // 0x0075538c    6a08
    asm("push              edi");                                           // 0x0075538e    57
    asm("mov.s             ecx, esi");                                      // 0x0075538f    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755391    e84a750600
    asm("cmp               eax, 0x03");                                     // 0x00755396    83f803
    asm("{disp8} jne       _jmp_addr_0x007553a1");                          // 0x00755399    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075539b    892d94c9be00
    asm("_jmp_addr_0x007553a1:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007553a1    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007553a7    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x007553a9    8a07
    asm("add               eax, 0x08");                                     // 0x007553ab    83c008
    asm("add.s             ecx, eax");                                      // 0x007553ae    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007553b0    898e14020000
    asm("_jmp_addr_0x007553b6:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007553b6    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x007553bc    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x007553ef");                          // 0x007553c2    742b
    asm("push              ebp");                                           // 0x007553c4    55
    asm("push              0x4");                                           // 0x007553c5    6a04
    asm("push              edi");                                           // 0x007553c7    57
    asm("mov.s             ecx, esi");                                      // 0x007553c8    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007553ca    e811750600
    asm("cmp               eax, 0x03");                                     // 0x007553cf    83f803
    asm("{disp8} jne       _jmp_addr_0x007553da");                          // 0x007553d2    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007553d4    892d94c9be00
    asm("_jmp_addr_0x007553da:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007553da    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007553e0    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x007553e2    8a0f
    asm("add               ecx, 0x4");                                      // 0x007553e4    83c104
    asm("add.s             eax, ecx");                                      // 0x007553e7    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007553e9    898614020000
    asm("_jmp_addr_0x007553ef:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007553ef    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011c]");             // 0x007553f5    8dbb1c010000
    asm("{disp8} je        _jmp_addr_0x00755428");                          // 0x007553fb    742b
    asm("push              ebp");                                           // 0x007553fd    55
    asm("push              0x4");                                           // 0x007553fe    6a04
    asm("push              edi");                                           // 0x00755400    57
    asm("mov.s             ecx, esi");                                      // 0x00755401    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755403    e8d8740600
    asm("cmp               eax, 0x03");                                     // 0x00755408    83f803
    asm("{disp8} jne       _jmp_addr_0x00755413");                          // 0x0075540b    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075540d    892d94c9be00
    asm("_jmp_addr_0x00755413:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755413    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x00755419    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x0075541b    8a17
    asm("add               edx, 0x04");                                     // 0x0075541d    83c204
    asm("add.s             eax, edx");                                      // 0x00755420    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755422    898614020000
    asm("_jmp_addr_0x00755428:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x00755428    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000120]");             // 0x0075542e    8dbb20010000
    asm("{disp8} je        _jmp_addr_0x00755461");                          // 0x00755434    742b
    asm("push              ebp");                                           // 0x00755436    55
    asm("push              0x4");                                           // 0x00755437    6a04
    asm("push              edi");                                           // 0x00755439    57
    asm("mov.s             ecx, esi");                                      // 0x0075543a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075543c    e89f740600
    asm("cmp               eax, 0x03");                                     // 0x00755441    83f803
    asm("{disp8} jne       _jmp_addr_0x0075544c");                          // 0x00755444    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x00755446    892d94c9be00
    asm("_jmp_addr_0x0075544c:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075544c    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755452    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755454    8a07
    asm("add               eax, 0x04");                                     // 0x00755456    83c004
    asm("add.s             ecx, eax");                                      // 0x00755459    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075545b    898e14020000
    asm("_jmp_addr_0x00755461:");
    asm("pop               edi");                                           // 0x00755461    5f
    asm("pop               esi");                                           // 0x00755462    5e
    asm("pop               ebp");                                           // 0x00755463    5d
    asm("mov               eax, 0x00000001");                               // 0x00755464    b801000000
    asm("pop               ebx");                                           // 0x00755469    5b
    asm("ret               0x0004");                                        // 0x0075546a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveScriptPos__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755470    a190c9be00
    asm("push              ebx");                                           // 0x00755475    53
    asm("push              ebp");                                           // 0x00755476    55
    asm("push              esi");                                           // 0x00755477    56
    asm("xor.s             ebp, ebp");                                      // 0x00755478    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075547a    3bc5
    asm("push              edi");                                           // 0x0075547c    57
    asm("mov.s             edi, ecx");                                      // 0x0075547d    8bf9
    asm("{disp32} je       _jmp_addr_0x00755569");                          // 0x0075547f    0f84e4000000
    asm("{disp8} mov       esi, dword ptr [esp + 0x14]");                   // 0x00755485    8b742414
    asm("push              ebp");                                           // 0x00755489    55
    asm("push              0x8");                                           // 0x0075548a    6a08
    asm("{disp32} lea      ebx, dword ptr [edi + 0x0000010c]");             // 0x0075548c    8d9f0c010000
    asm("push              ebx");                                           // 0x00755492    53
    asm("mov.s             ecx, esi");                                      // 0x00755493    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755495    e886740600
    asm("cmp               eax, 0x03");                                     // 0x0075549a    83f803
    asm("{disp8} jne       _jmp_addr_0x007554a5");                          // 0x0075549d    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x0075549f    892d90c9be00
    asm("_jmp_addr_0x007554a5:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007554a5    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007554ab    33c0
    asm("mov               al, byte ptr [ebx]");                            // 0x007554ad    8a03
    asm("add               eax, 0x08");                                     // 0x007554af    83c008
    asm("add.s             ecx, eax");                                      // 0x007554b2    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007554b4    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007554ba    392d90c9be00
    asm("{disp32} je       _jmp_addr_0x00755569");                          // 0x007554c0    0f84a3000000
    asm("push              ebp");                                           // 0x007554c6    55
    asm("push              0x4");                                           // 0x007554c7    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x00000118]");             // 0x007554c9    8d9f18010000
    asm("push              ebx");                                           // 0x007554cf    53
    asm("mov.s             ecx, esi");                                      // 0x007554d0    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007554d2    e849740600
    asm("cmp               eax, 0x03");                                     // 0x007554d7    83f803
    asm("{disp8} jne       _jmp_addr_0x007554e2");                          // 0x007554da    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x007554dc    892d90c9be00
    asm("_jmp_addr_0x007554e2:");
    asm("{disp32} mov      edx, dword ptr [esi + 0x00000214]");             // 0x007554e2    8b9614020000
    asm("xor.s             ecx, ecx");                                      // 0x007554e8    33c9
    asm("mov               cl, byte ptr [ebx]");                            // 0x007554ea    8a0b
    asm("add               ecx, 0x4");                                      // 0x007554ec    83c104
    asm("add.s             edx, ecx");                                      // 0x007554ef    03d1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], edx");             // 0x007554f1    899614020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x007554f7    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x00755569");                          // 0x007554fd    746a
    asm("push              ebp");                                           // 0x007554ff    55
    asm("push              0x4");                                           // 0x00755500    6a04
    asm("{disp32} lea      ebx, dword ptr [edi + 0x0000011c]");             // 0x00755502    8d9f1c010000
    asm("push              ebx");                                           // 0x00755508    53
    asm("mov.s             ecx, esi");                                      // 0x00755509    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075550b    e810740600
    asm("cmp               eax, 0x03");                                     // 0x00755510    83f803
    asm("{disp8} jne       _jmp_addr_0x0075551b");                          // 0x00755513    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x00755515    892d90c9be00
    asm("_jmp_addr_0x0075551b:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075551b    8b8e14020000
    asm("xor.s             edx, edx");                                      // 0x00755521    33d2
    asm("mov               dl, byte ptr [ebx]");                            // 0x00755523    8a13
    asm("add               edx, 0x04");                                     // 0x00755525    83c204
    asm("add.s             ecx, edx");                                      // 0x00755528    03ca
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075552a    898e14020000
    asm("cmp               dword ptr [data_bytes + 0x226990], ebp");        // 0x00755530    392d90c9be00
    asm("{disp8} je        _jmp_addr_0x00755569");                          // 0x00755536    7431
    asm("push              ebp");                                           // 0x00755538    55
    asm("push              0x4");                                           // 0x00755539    6a04
    asm("add               edi, 0x00000120");                               // 0x0075553b    81c720010000
    asm("push              edi");                                           // 0x00755541    57
    asm("mov.s             ecx, esi");                                      // 0x00755542    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755544    e8d7730600
    asm("cmp               eax, 0x03");                                     // 0x00755549    83f803
    asm("{disp8} jne       _jmp_addr_0x00755554");                          // 0x0075554c    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], ebp");        // 0x0075554e    892d90c9be00
    asm("_jmp_addr_0x00755554:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755554    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x0075555a    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075555c    8a07
    asm("add               eax, 0x04");                                     // 0x0075555e    83c004
    asm("add.s             ecx, eax");                                      // 0x00755561    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755563    898e14020000
    asm("_jmp_addr_0x00755569:");
    asm("pop               edi");                                           // 0x00755569    5f
    asm("pop               esi");                                           // 0x0075556a    5e
    asm("pop               ebp");                                           // 0x0075556b    5d
    asm("mov               eax, 0x00000001");                               // 0x0075556c    b801000000
    asm("pop               ebx");                                           // 0x00755571    5b
    asm("ret               0x0004");                                        // 0x00755572    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadScriptPos__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755580    a194c9be00
    asm("push              ebx");                                           // 0x00755585    53
    asm("push              ebp");                                           // 0x00755586    55
    asm("push              esi");                                           // 0x00755587    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00755588    8b742410
    asm("xor.s             ebp, ebp");                                      // 0x0075558c    33ed
    asm("cmp.s             eax, ebp");                                      // 0x0075558e    3bc5
    asm("mov.s             ebx, ecx");                                      // 0x00755590    8bd9
    asm("push              edi");                                           // 0x00755592    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755593    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x007555c6");                          // 0x00755599    742b
    asm("push              ebp");                                           // 0x0075559b    55
    asm("push              0x8");                                           // 0x0075559c    6a08
    asm("push              edi");                                           // 0x0075559e    57
    asm("mov.s             ecx, esi");                                      // 0x0075559f    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007555a1    e83a730600
    asm("cmp               eax, 0x03");                                     // 0x007555a6    83f803
    asm("{disp8} jne       _jmp_addr_0x007555b1");                          // 0x007555a9    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007555ab    892d94c9be00
    asm("_jmp_addr_0x007555b1:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007555b1    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007555b7    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x007555b9    8a07
    asm("add               eax, 0x08");                                     // 0x007555bb    83c008
    asm("add.s             ecx, eax");                                      // 0x007555be    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007555c0    898e14020000
    asm("_jmp_addr_0x007555c6:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007555c6    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x007555cc    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x007555ff");                          // 0x007555d2    742b
    asm("push              ebp");                                           // 0x007555d4    55
    asm("push              0x4");                                           // 0x007555d5    6a04
    asm("push              edi");                                           // 0x007555d7    57
    asm("mov.s             ecx, esi");                                      // 0x007555d8    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007555da    e801730600
    asm("cmp               eax, 0x03");                                     // 0x007555df    83f803
    asm("{disp8} jne       _jmp_addr_0x007555ea");                          // 0x007555e2    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x007555e4    892d94c9be00
    asm("_jmp_addr_0x007555ea:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007555ea    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007555f0    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x007555f2    8a0f
    asm("add               ecx, 0x4");                                      // 0x007555f4    83c104
    asm("add.s             eax, ecx");                                      // 0x007555f7    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x007555f9    898614020000
    asm("_jmp_addr_0x007555ff:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x007555ff    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000011c]");             // 0x00755605    8dbb1c010000
    asm("{disp8} je        _jmp_addr_0x00755638");                          // 0x0075560b    742b
    asm("push              ebp");                                           // 0x0075560d    55
    asm("push              0x4");                                           // 0x0075560e    6a04
    asm("push              edi");                                           // 0x00755610    57
    asm("mov.s             ecx, esi");                                      // 0x00755611    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755613    e8c8720600
    asm("cmp               eax, 0x03");                                     // 0x00755618    83f803
    asm("{disp8} jne       _jmp_addr_0x00755623");                          // 0x0075561b    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x0075561d    892d94c9be00
    asm("_jmp_addr_0x00755623:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755623    8b8614020000
    asm("xor.s             edx, edx");                                      // 0x00755629    33d2
    asm("mov               dl, byte ptr [edi]");                            // 0x0075562b    8a17
    asm("add               edx, 0x04");                                     // 0x0075562d    83c204
    asm("add.s             eax, edx");                                      // 0x00755630    03c2
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755632    898614020000
    asm("_jmp_addr_0x00755638:");
    asm("cmp               dword ptr [data_bytes + 0x226994], ebp");        // 0x00755638    392d94c9be00
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000120]");             // 0x0075563e    8dbb20010000
    asm("{disp8} je        _jmp_addr_0x00755671");                          // 0x00755644    742b
    asm("push              ebp");                                           // 0x00755646    55
    asm("push              0x4");                                           // 0x00755647    6a04
    asm("push              edi");                                           // 0x00755649    57
    asm("mov.s             ecx, esi");                                      // 0x0075564a    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075564c    e88f720600
    asm("cmp               eax, 0x03");                                     // 0x00755651    83f803
    asm("{disp8} jne       _jmp_addr_0x0075565c");                          // 0x00755654    7506
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], ebp");        // 0x00755656    892d94c9be00
    asm("_jmp_addr_0x0075565c:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x0075565c    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755662    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755664    8a07
    asm("add               eax, 0x04");                                     // 0x00755666    83c004
    asm("add.s             ecx, eax");                                      // 0x00755669    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x0075566b    898e14020000
    asm("_jmp_addr_0x00755671:");
    asm("pop               edi");                                           // 0x00755671    5f
    asm("pop               esi");                                           // 0x00755672    5e
    asm("pop               ebp");                                           // 0x00755673    5d
    asm("mov               eax, 0x00000001");                               // 0x00755674    b801000000
    asm("pop               ebx");                                           // 0x00755679    5b
    asm("ret               0x0004");                                        // 0x0075567a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveFire__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755680    a190c9be00
    asm("test              eax, eax");                                      // 0x00755685    85c0
    asm("push              ebx");                                           // 0x00755687    53
    asm("push              edi");                                           // 0x00755688    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00755689    8b7c240c
    asm("mov.s             ebx, ecx");                                      // 0x0075568d    8bd9
    asm("{disp8} je        _jmp_addr_0x007556c9");                          // 0x0075568f    7438
    asm("push              esi");                                           // 0x00755691    56
    asm("push              0x0");                                           // 0x00755692    6a00
    asm("push              0x8");                                           // 0x00755694    6a08
    asm("{disp32} lea      esi, dword ptr [ebx + 0x0000010c]");             // 0x00755696    8db30c010000
    asm("push              esi");                                           // 0x0075569c    56
    asm("mov.s             ecx, edi");                                      // 0x0075569d    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075569f    e87c720600
    asm("cmp               eax, 0x03");                                     // 0x007556a4    83f803
    asm("{disp8} jne       _jmp_addr_0x007556b3");                          // 0x007556a7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x007556a9    c70590c9be0000000000
    asm("_jmp_addr_0x007556b3:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x007556b3    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x007556b9    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x007556bb    8a06
    asm("pop               esi");                                           // 0x007556bd    5e
    asm("add               eax, 0x08");                                     // 0x007556be    83c008
    asm("add.s             ecx, eax");                                      // 0x007556c1    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x007556c3    898f14020000
    asm("_jmp_addr_0x007556c9:");
    asm("{disp32} mov      ecx, dword ptr [ebx + 0x00000114]");             // 0x007556c9    8b8b14010000
    asm("push              ecx");                                           // 0x007556cf    51
    asm("mov.s             ecx, edi");                                      // 0x007556d0    8bcf
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007556d2    e839c7e0ff
    asm("pop               edi");                                           // 0x007556d7    5f
    asm("mov               eax, 0x00000001");                               // 0x007556d8    b801000000
    asm("pop               ebx");                                           // 0x007556dd    5b
    asm("ret               0x0004");                                        // 0x007556de    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadFire__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x007556f0    a194c9be00
    asm("test              eax, eax");                                      // 0x007556f5    85c0
    asm("push              ebx");                                           // 0x007556f7    53
    asm("push              esi");                                           // 0x007556f8    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x007556f9    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x007556fd    8bd9
    asm("push              edi");                                           // 0x007556ff    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755700    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x00755738");                          // 0x00755706    7430
    asm("push              0x0");                                           // 0x00755708    6a00
    asm("push              0x8");                                           // 0x0075570a    6a08
    asm("push              edi");                                           // 0x0075570c    57
    asm("mov.s             ecx, esi");                                      // 0x0075570d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075570f    e8cc710600
    asm("cmp               eax, 0x03");                                     // 0x00755714    83f803
    asm("{disp8} jne       _jmp_addr_0x00755723");                          // 0x00755717    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755719    c70594c9be0000000000
    asm("_jmp_addr_0x00755723:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755723    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755729    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075572b    8a07
    asm("add               eax, 0x08");                                     // 0x0075572d    83c008
    asm("add.s             ecx, eax");                                      // 0x00755730    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755732    898e14020000
    asm("_jmp_addr_0x00755738:");
    asm("add               ebx, 0x00000114");                               // 0x00755738    81c314010000
    asm("push              ebx");                                           // 0x0075573e    53
    asm("mov.s             ecx, esi");                                      // 0x0075573f    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755741    e83acae0ff
    asm("pop               edi");                                           // 0x00755746    5f
    asm("pop               esi");                                           // 0x00755747    5e
    asm("mov               eax, 0x00000001");                               // 0x00755748    b801000000
    asm("pop               ebx");                                           // 0x0075574d    5b
    asm("ret               0x0004");                                        // 0x0075574e    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveDiscipleNothingToDo__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("cmp               byte ptr [ecx + 0x000000f2], 0x09");             // 0x00755760    80b9f200000009
    asm("{disp8} jne       _jmp_addr_0x00755773");                          // 0x00755767    750a
    asm("{disp8} mov       eax, dword ptr [esp + 0x04]");                   // 0x00755769    8b442404
    asm("push              eax");                                           // 0x0075576d    50
    asm("call              ?SaveTrader@Villager@@QAE_NAAVGameOSFile@@@Z");  // 0x0075576e    e82d000000
    asm("_jmp_addr_0x00755773:");
    asm("mov               eax, 0x00000001");                               // 0x00755773    b801000000
    asm("ret               0x0004");                                        // 0x00755778    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LoadDiscipleNothingToDo__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("cmp               byte ptr [ecx + 0x000000f2], 0x09");             // 0x00755780    80b9f200000009
    asm("{disp8} jne       _jmp_addr_0x00755793");                          // 0x00755787    750a
    asm("{disp8} mov       eax, dword ptr [esp + 0x04]");                   // 0x00755789    8b442404
    asm("push              eax");                                           // 0x0075578d    50
    asm("call              ?LoadTrader@Villager@@QAE_NAAVGameOSFile@@@Z");  // 0x0075578e    e87d000000
    asm("_jmp_addr_0x00755793:");
    asm("mov               eax, 0x00000001");                               // 0x00755793    b801000000
    asm("ret               0x0004");                                        // 0x00755798    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveTrader__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x007557a0    a190c9be00
    asm("test              eax, eax");                                      // 0x007557a5    85c0
    asm("push              ebx");                                           // 0x007557a7    53
    asm("push              edi");                                           // 0x007557a8    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x007557a9    8b7c240c
    asm("mov.s             ebx, ecx");                                      // 0x007557ad    8bd9
    asm("{disp8} je        _jmp_addr_0x007557e9");                          // 0x007557af    7438
    asm("push              esi");                                           // 0x007557b1    56
    asm("push              0x0");                                           // 0x007557b2    6a00
    asm("push              0x4");                                           // 0x007557b4    6a04
    asm("{disp32} lea      esi, dword ptr [ebx + 0x00000118]");             // 0x007557b6    8db318010000
    asm("push              esi");                                           // 0x007557bc    56
    asm("mov.s             ecx, edi");                                      // 0x007557bd    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007557bf    e85c710600
    asm("cmp               eax, 0x03");                                     // 0x007557c4    83f803
    asm("{disp8} jne       _jmp_addr_0x007557d3");                          // 0x007557c7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x007557c9    c70590c9be0000000000
    asm("_jmp_addr_0x007557d3:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x007557d3    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x007557d9    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x007557db    8a06
    asm("pop               esi");                                           // 0x007557dd    5e
    asm("add               eax, 0x04");                                     // 0x007557de    83c004
    asm("add.s             ecx, eax");                                      // 0x007557e1    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x007557e3    898f14020000
    asm("_jmp_addr_0x007557e9:");
    asm("{disp32} mov      ecx, dword ptr [ebx + 0x0000011c]");             // 0x007557e9    8b8b1c010000
    asm("push              ecx");                                           // 0x007557ef    51
    asm("mov.s             ecx, edi");                                      // 0x007557f0    8bcf
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007557f2    e819c6e0ff
    asm("pop               edi");                                           // 0x007557f7    5f
    asm("mov               eax, 0x00000001");                               // 0x007557f8    b801000000
    asm("pop               ebx");                                           // 0x007557fd    5b
    asm("ret               0x0004");                                        // 0x007557fe    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadTrader__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755810    a194c9be00
    asm("test              eax, eax");                                      // 0x00755815    85c0
    asm("push              ebx");                                           // 0x00755817    53
    asm("push              esi");                                           // 0x00755818    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755819    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x0075581d    8bd9
    asm("push              edi");                                           // 0x0075581f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00755820    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x00755858");                          // 0x00755826    7430
    asm("push              0x0");                                           // 0x00755828    6a00
    asm("push              0x4");                                           // 0x0075582a    6a04
    asm("push              edi");                                           // 0x0075582c    57
    asm("mov.s             ecx, esi");                                      // 0x0075582d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075582f    e8ac700600
    asm("cmp               eax, 0x03");                                     // 0x00755834    83f803
    asm("{disp8} jne       _jmp_addr_0x00755843");                          // 0x00755837    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755839    c70594c9be0000000000
    asm("_jmp_addr_0x00755843:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755843    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755849    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075584b    8a07
    asm("add               eax, 0x04");                                     // 0x0075584d    83c004
    asm("add.s             ecx, eax");                                      // 0x00755850    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755852    898e14020000
    asm("_jmp_addr_0x00755858:");
    asm("add               ebx, 0x0000011c");                               // 0x00755858    81c31c010000
    asm("push              ebx");                                           // 0x0075585e    53
    asm("mov.s             ecx, esi");                                      // 0x0075585f    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755861    e81ac9e0ff
    asm("pop               edi");                                           // 0x00755866    5f
    asm("pop               esi");                                           // 0x00755867    5e
    asm("mov               eax, 0x00000001");                               // 0x00755868    b801000000
    asm("pop               ebx");                                           // 0x0075586d    5b
    asm("ret               0x0004");                                        // 0x0075586e    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveInspectObject__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [ecx + 0x00000118]");             // 0x00755880    8b8118010000
    asm("{disp8} mov       ecx, dword ptr [esp + 0x04]");                   // 0x00755886    8b4c2404
    asm("push              eax");                                           // 0x0075588a    50
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x0075588b    e880c5e0ff
    asm("mov               eax, 0x00000001");                               // 0x00755890    b801000000
    asm("ret               0x0004");                                        // 0x00755895    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LoadInspectObject__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("add               ecx, 0x00000118");                               // 0x007558a0    81c118010000
    asm("push              ecx");                                           // 0x007558a6    51
    asm("{disp8} mov       ecx, dword ptr [esp + 0x08]");                   // 0x007558a7    8b4c2408
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x007558ab    e8d0c8e0ff
    asm("mov               eax, 0x00000001");                               // 0x007558b0    b801000000
    asm("ret               0x0004");                                        // 0x007558b5    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    return 1;
}

bool32_t __fastcall LoadReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveClearArea__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x007558e0    a190c9be00
    asm("test              eax, eax");                                      // 0x007558e5    85c0
    asm("push              ebx");                                           // 0x007558e7    53
    asm("push              esi");                                           // 0x007558e8    56
    asm("push              edi");                                           // 0x007558e9    57
    asm("mov.s             ebx, ecx");                                      // 0x007558ea    8bd9
    asm("{disp8} je        _jmp_addr_0x00755967");                          // 0x007558ec    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x007558ee    8b742410
    asm("push              0x0");                                           // 0x007558f2    6a00
    asm("push              0x8");                                           // 0x007558f4    6a08
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x007558f6    8dbb18010000
    asm("push              edi");                                           // 0x007558fc    57
    asm("mov.s             ecx, esi");                                      // 0x007558fd    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x007558ff    e81c700600
    asm("cmp               eax, 0x03");                                     // 0x00755904    83f803
    asm("{disp8} jne       _jmp_addr_0x00755913");                          // 0x00755907    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755909    c70590c9be0000000000
    asm("_jmp_addr_0x00755913:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755913    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755919    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x0075591b    8a07
    asm("add               eax, 0x08");                                     // 0x0075591d    83c008
    asm("add.s             ecx, eax");                                      // 0x00755920    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755922    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755928    a190c9be00
    asm("test              eax, eax");                                      // 0x0075592d    85c0
    asm("{disp8} je        _jmp_addr_0x00755967");                          // 0x0075592f    7436
    asm("push              0x0");                                           // 0x00755931    6a00
    asm("push              0x4");                                           // 0x00755933    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000120]");             // 0x00755935    8dbb20010000
    asm("push              edi");                                           // 0x0075593b    57
    asm("mov.s             ecx, esi");                                      // 0x0075593c    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x0075593e    e8dd6f0600
    asm("cmp               eax, 0x03");                                     // 0x00755943    83f803
    asm("{disp8} jne       _jmp_addr_0x00755952");                          // 0x00755946    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755948    c70590c9be0000000000
    asm("_jmp_addr_0x00755952:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755952    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755958    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x0075595a    8a0f
    asm("add               ecx, 0x4");                                      // 0x0075595c    83c104
    asm("add.s             eax, ecx");                                      // 0x0075595f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755961    898614020000
    asm("_jmp_addr_0x00755967:");
    asm("pop               edi");                                           // 0x00755967    5f
    asm("pop               esi");                                           // 0x00755968    5e
    asm("mov               eax, 0x00000001");                               // 0x00755969    b801000000
    asm("pop               ebx");                                           // 0x0075596e    5b
    asm("ret               0x0004");                                        // 0x0075596f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadClearArea__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755980    a194c9be00
    asm("test              eax, eax");                                      // 0x00755985    85c0
    asm("push              ebx");                                           // 0x00755987    53
    asm("push              esi");                                           // 0x00755988    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755989    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x0075598d    8bd9
    asm("push              edi");                                           // 0x0075598f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000118]");             // 0x00755990    8dbb18010000
    asm("{disp8} je        _jmp_addr_0x007559c8");                          // 0x00755996    7430
    asm("push              0x0");                                           // 0x00755998    6a00
    asm("push              0x8");                                           // 0x0075599a    6a08
    asm("push              edi");                                           // 0x0075599c    57
    asm("mov.s             ecx, esi");                                      // 0x0075599d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x0075599f    e83c6f0600
    asm("cmp               eax, 0x03");                                     // 0x007559a4    83f803
    asm("{disp8} jne       _jmp_addr_0x007559b3");                          // 0x007559a7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x007559a9    c70594c9be0000000000
    asm("_jmp_addr_0x007559b3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x007559b3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x007559b9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x007559bb    8a07
    asm("add               eax, 0x08");                                     // 0x007559bd    83c008
    asm("add.s             ecx, eax");                                      // 0x007559c0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x007559c2    898e14020000
    asm("_jmp_addr_0x007559c8:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x007559c8    a194c9be00
    asm("test              eax, eax");                                      // 0x007559cd    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000120]");             // 0x007559cf    8dbb20010000
    asm("{disp8} je        _jmp_addr_0x00755a07");                          // 0x007559d5    7430
    asm("push              0x0");                                           // 0x007559d7    6a00
    asm("push              0x4");                                           // 0x007559d9    6a04
    asm("push              edi");                                           // 0x007559db    57
    asm("mov.s             ecx, esi");                                      // 0x007559dc    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x007559de    e8fd6e0600
    asm("cmp               eax, 0x03");                                     // 0x007559e3    83f803
    asm("{disp8} jne       _jmp_addr_0x007559f2");                          // 0x007559e6    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x007559e8    c70594c9be0000000000
    asm("_jmp_addr_0x007559f2:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x007559f2    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x007559f8    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x007559fa    8a0f
    asm("add               ecx, 0x4");                                      // 0x007559fc    83c104
    asm("add.s             eax, ecx");                                      // 0x007559ff    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755a01    898614020000
    asm("_jmp_addr_0x00755a07:");
    asm("pop               edi");                                           // 0x00755a07    5f
    asm("pop               esi");                                           // 0x00755a08    5e
    asm("mov               eax, 0x00000001");                               // 0x00755a09    b801000000
    asm("pop               ebx");                                           // 0x00755a0e    5b
    asm("ret               0x0004");                                        // 0x00755a0f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveBreeder__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00755a20    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x08]");                   // 0x00755a21    8b742408
    asm("push              edi");                                           // 0x00755a25    57
    asm("mov.s             edi, ecx");                                      // 0x00755a26    8bf9
    asm("{disp32} mov      eax, dword ptr [edi + 0x00000118]");             // 0x00755a28    8b8718010000
    asm("push              eax");                                           // 0x00755a2e    50
    asm("mov.s             ecx, esi");                                      // 0x00755a2f    8bce
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00755a31    e8dac3e0ff
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755a36    a190c9be00
    asm("test              eax, eax");                                      // 0x00755a3b    85c0
    asm("{disp8} je        _jmp_addr_0x00755a75");                          // 0x00755a3d    7436
    asm("push              0x0");                                           // 0x00755a3f    6a00
    asm("push              0x8");                                           // 0x00755a41    6a08
    asm("add               edi, 0x0000011c");                               // 0x00755a43    81c71c010000
    asm("push              edi");                                           // 0x00755a49    57
    asm("mov.s             ecx, esi");                                      // 0x00755a4a    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755a4c    e8cf6e0600
    asm("cmp               eax, 0x03");                                     // 0x00755a51    83f803
    asm("{disp8} jne       _jmp_addr_0x00755a60");                          // 0x00755a54    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755a56    c70590c9be0000000000
    asm("_jmp_addr_0x00755a60:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755a60    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755a66    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755a68    8a0f
    asm("add               ecx, 0x8");                                      // 0x00755a6a    83c108
    asm("add.s             eax, ecx");                                      // 0x00755a6d    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755a6f    898614020000
    asm("_jmp_addr_0x00755a75:");
    asm("pop               edi");                                           // 0x00755a75    5f
    asm("mov               eax, 0x00000001");                               // 0x00755a76    b801000000
    asm("pop               esi");                                           // 0x00755a7b    5e
    asm("ret               0x0004");                                        // 0x00755a7c    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadBreeder__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00755a80    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x08]");                   // 0x00755a81    8b742408
    asm("push              edi");                                           // 0x00755a85    57
    asm("mov.s             edi, ecx");                                      // 0x00755a86    8bf9
    asm("{disp32} lea      eax, dword ptr [edi + 0x00000118]");             // 0x00755a88    8d8718010000
    asm("push              eax");                                           // 0x00755a8e    50
    asm("mov.s             ecx, esi");                                      // 0x00755a8f    8bce
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755a91    e8eac6e0ff
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755a96    a194c9be00
    asm("add               edi, 0x0000011c");                               // 0x00755a9b    81c71c010000
    asm("test              eax, eax");                                      // 0x00755aa1    85c0
    asm("{disp8} je        _jmp_addr_0x00755ad5");                          // 0x00755aa3    7430
    asm("push              0x0");                                           // 0x00755aa5    6a00
    asm("push              0x8");                                           // 0x00755aa7    6a08
    asm("push              edi");                                           // 0x00755aa9    57
    asm("mov.s             ecx, esi");                                      // 0x00755aaa    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755aac    e82f6e0600
    asm("cmp               eax, 0x03");                                     // 0x00755ab1    83f803
    asm("{disp8} jne       _jmp_addr_0x00755ac0");                          // 0x00755ab4    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755ab6    c70594c9be0000000000
    asm("_jmp_addr_0x00755ac0:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755ac0    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755ac6    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755ac8    8a0f
    asm("add               ecx, 0x8");                                      // 0x00755aca    83c108
    asm("add.s             eax, ecx");                                      // 0x00755acd    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755acf    898614020000
    asm("_jmp_addr_0x00755ad5:");
    asm("pop               edi");                                           // 0x00755ad5    5f
    asm("mov               eax, 0x00000001");                               // 0x00755ad6    b801000000
    asm("pop               esi");                                           // 0x00755adb    5e
    asm("ret               0x0004");                                        // 0x00755adc    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveForesting__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [ecx + 0x00000118]");             // 0x00755ae0    8b8118010000
    asm("{disp8} mov       ecx, dword ptr [esp + 0x04]");                   // 0x00755ae6    8b4c2404
    asm("push              eax");                                           // 0x00755aea    50
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00755aeb    e820c3e0ff
    asm("mov               eax, 0x00000001");                               // 0x00755af0    b801000000
    asm("ret               0x0004");                                        // 0x00755af5    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LoadForesting__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("add               ecx, 0x00000118");                               // 0x00755b00    81c118010000
    asm("push              ecx");                                           // 0x00755b06    51
    asm("{disp8} mov       ecx, dword ptr [esp + 0x08]");                   // 0x00755b07    8b4c2408
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755b0b    e870c6e0ff
    asm("mov               eax, 0x00000001");                               // 0x00755b10    b801000000
    asm("ret               0x0004");                                        // 0x00755b15    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SaveFootPath__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00755b20    56
    asm("mov.s             esi, ecx");                                      // 0x00755b21    8bf1
    asm("{disp32} mov      eax, dword ptr [esi + 0x000000c8]");             // 0x00755b23    8b86c8000000
    asm("push              edi");                                           // 0x00755b29    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00755b2a    8b7c240c
    asm("push              eax");                                           // 0x00755b2e    50
    asm("mov.s             ecx, edi");                                      // 0x00755b2f    8bcf
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00755b31    e8dac2e0ff
    asm("{disp32} mov      ecx, dword ptr [esi + 0x000000cc]");             // 0x00755b36    8b8ecc000000
    asm("push              ecx");                                           // 0x00755b3c    51
    asm("mov.s             ecx, edi");                                      // 0x00755b3d    8bcf
    asm("call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00755b3f    e8ccc2e0ff
    asm("pop               edi");                                           // 0x00755b44    5f
    asm("mov               eax, 0x00000001");                               // 0x00755b45    b801000000
    asm("pop               esi");                                           // 0x00755b4a    5e
    asm("ret               0x0004");                                        // 0x00755b4b    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LoadFootPath__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push              esi");                                           // 0x00755b50    56
    asm("mov.s             esi, ecx");                                      // 0x00755b51    8bf1
    asm("push              edi");                                           // 0x00755b53    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00755b54    8b7c240c
    asm("{disp32} lea      eax, dword ptr [esi + 0x000000c8]");             // 0x00755b58    8d86c8000000
    asm("push              eax");                                           // 0x00755b5e    50
    asm("mov.s             ecx, edi");                                      // 0x00755b5f    8bcf
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755b61    e81ac6e0ff
    asm("add               esi, 0x000000cc");                               // 0x00755b66    81c6cc000000
    asm("push              esi");                                           // 0x00755b6c    56
    asm("mov.s             ecx, edi");                                      // 0x00755b6d    8bcf
    asm("call              @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00755b6f    e80cc6e0ff
    asm("pop               edi");                                           // 0x00755b74    5f
    asm("mov               eax, 0x00000001");                               // 0x00755b75    b801000000
    asm("pop               esi");                                           // 0x00755b7a    5e
    asm("ret               0x0004");                                        // 0x00755b7b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveInspectionReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755b80    a190c9be00
    asm("test              eax, eax");                                      // 0x00755b85    85c0
    asm("push              ebx");                                           // 0x00755b87    53
    asm("push              esi");                                           // 0x00755b88    56
    asm("push              edi");                                           // 0x00755b89    57
    asm("mov.s             ebx, ecx");                                      // 0x00755b8a    8bd9
    asm("{disp8} je        _jmp_addr_0x00755c07");                          // 0x00755b8c    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00755b8e    8b742410
    asm("push              0x0");                                           // 0x00755b92    6a00
    asm("push              0x4");                                           // 0x00755b94    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755b96    8dbb0c010000
    asm("push              edi");                                           // 0x00755b9c    57
    asm("mov.s             ecx, esi");                                      // 0x00755b9d    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755b9f    e87c6d0600
    asm("cmp               eax, 0x03");                                     // 0x00755ba4    83f803
    asm("{disp8} jne       _jmp_addr_0x00755bb3");                          // 0x00755ba7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755ba9    c70590c9be0000000000
    asm("_jmp_addr_0x00755bb3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755bb3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755bb9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755bbb    8a07
    asm("add               eax, 0x04");                                     // 0x00755bbd    83c004
    asm("add.s             ecx, eax");                                      // 0x00755bc0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755bc2    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755bc8    a190c9be00
    asm("test              eax, eax");                                      // 0x00755bcd    85c0
    asm("{disp8} je        _jmp_addr_0x00755c07");                          // 0x00755bcf    7436
    asm("push              0x0");                                           // 0x00755bd1    6a00
    asm("push              0x4");                                           // 0x00755bd3    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755bd5    8dbb10010000
    asm("push              edi");                                           // 0x00755bdb    57
    asm("mov.s             ecx, esi");                                      // 0x00755bdc    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755bde    e83d6d0600
    asm("cmp               eax, 0x03");                                     // 0x00755be3    83f803
    asm("{disp8} jne       _jmp_addr_0x00755bf2");                          // 0x00755be6    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755be8    c70590c9be0000000000
    asm("_jmp_addr_0x00755bf2:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755bf2    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755bf8    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755bfa    8a0f
    asm("add               ecx, 0x4");                                      // 0x00755bfc    83c104
    asm("add.s             eax, ecx");                                      // 0x00755bff    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755c01    898614020000
    asm("_jmp_addr_0x00755c07:");
    asm("pop               edi");                                           // 0x00755c07    5f
    asm("pop               esi");                                           // 0x00755c08    5e
    asm("mov               eax, 0x00000001");                               // 0x00755c09    b801000000
    asm("pop               ebx");                                           // 0x00755c0e    5b
    asm("ret               0x0004");                                        // 0x00755c0f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LoadInspectionReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755c20    a194c9be00
    asm("test              eax, eax");                                      // 0x00755c25    85c0
    asm("push              ebx");                                           // 0x00755c27    53
    asm("push              esi");                                           // 0x00755c28    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755c29    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00755c2d    8bd9
    asm("push              edi");                                           // 0x00755c2f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755c30    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x00755c68");                          // 0x00755c36    7430
    asm("push              0x0");                                           // 0x00755c38    6a00
    asm("push              0x4");                                           // 0x00755c3a    6a04
    asm("push              edi");                                           // 0x00755c3c    57
    asm("mov.s             ecx, esi");                                      // 0x00755c3d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755c3f    e89c6c0600
    asm("cmp               eax, 0x03");                                     // 0x00755c44    83f803
    asm("{disp8} jne       _jmp_addr_0x00755c53");                          // 0x00755c47    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755c49    c70594c9be0000000000
    asm("_jmp_addr_0x00755c53:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755c53    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755c59    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755c5b    8a07
    asm("add               eax, 0x04");                                     // 0x00755c5d    83c004
    asm("add.s             ecx, eax");                                      // 0x00755c60    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755c62    898e14020000
    asm("_jmp_addr_0x00755c68:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755c68    a194c9be00
    asm("test              eax, eax");                                      // 0x00755c6d    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755c6f    8dbb10010000
    asm("{disp8} je        _jmp_addr_0x00755ca7");                          // 0x00755c75    7430
    asm("push              0x0");                                           // 0x00755c77    6a00
    asm("push              0x4");                                           // 0x00755c79    6a04
    asm("push              edi");                                           // 0x00755c7b    57
    asm("mov.s             ecx, esi");                                      // 0x00755c7c    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755c7e    e85d6c0600
    asm("cmp               eax, 0x03");                                     // 0x00755c83    83f803
    asm("{disp8} jne       _jmp_addr_0x00755c92");                          // 0x00755c86    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755c88    c70594c9be0000000000
    asm("_jmp_addr_0x00755c92:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755c92    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755c98    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755c9a    8a0f
    asm("add               ecx, 0x4");                                      // 0x00755c9c    83c104
    asm("add.s             eax, ecx");                                      // 0x00755c9f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755ca1    898614020000
    asm("_jmp_addr_0x00755ca7:");
    asm("pop               edi");                                           // 0x00755ca7    5f
    asm("pop               esi");                                           // 0x00755ca8    5e
    asm("mov               eax, 0x00000001");                               // 0x00755ca9    b801000000
    asm("pop               ebx");                                           // 0x00755cae    5b
    asm("ret               0x0004");                                        // 0x00755caf    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SaveMagicTreeReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755cc0    a190c9be00
    asm("test              eax, eax");                                      // 0x00755cc5    85c0
    asm("push              ebx");                                           // 0x00755cc7    53
    asm("push              esi");                                           // 0x00755cc8    56
    asm("push              edi");                                           // 0x00755cc9    57
    asm("mov.s             ebx, ecx");                                      // 0x00755cca    8bd9
    asm("{disp8} je        _jmp_addr_0x00755d47");                          // 0x00755ccc    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00755cce    8b742410
    asm("push              0x0");                                           // 0x00755cd2    6a00
    asm("push              0x4");                                           // 0x00755cd4    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755cd6    8dbb0c010000
    asm("push              edi");                                           // 0x00755cdc    57
    asm("mov.s             ecx, esi");                                      // 0x00755cdd    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755cdf    e83c6c0600
    asm("cmp               eax, 0x03");                                     // 0x00755ce4    83f803
    asm("{disp8} jne       _jmp_addr_0x00755cf3");                          // 0x00755ce7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755ce9    c70590c9be0000000000
    asm("_jmp_addr_0x00755cf3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755cf3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755cf9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755cfb    8a07
    asm("add               eax, 0x04");                                     // 0x00755cfd    83c004
    asm("add.s             ecx, eax");                                      // 0x00755d00    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755d02    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755d08    a190c9be00
    asm("test              eax, eax");                                      // 0x00755d0d    85c0
    asm("{disp8} je        _jmp_addr_0x00755d47");                          // 0x00755d0f    7436
    asm("push              0x0");                                           // 0x00755d11    6a00
    asm("push              0x4");                                           // 0x00755d13    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755d15    8dbb10010000
    asm("push              edi");                                           // 0x00755d1b    57
    asm("mov.s             ecx, esi");                                      // 0x00755d1c    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755d1e    e8fd6b0600
    asm("cmp               eax, 0x03");                                     // 0x00755d23    83f803
    asm("{disp8} jne       _jmp_addr_0x00755d32");                          // 0x00755d26    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755d28    c70590c9be0000000000
    asm("_jmp_addr_0x00755d32:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755d32    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755d38    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755d3a    8a0f
    asm("add               ecx, 0x4");                                      // 0x00755d3c    83c104
    asm("add.s             eax, ecx");                                      // 0x00755d3f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755d41    898614020000
    asm("_jmp_addr_0x00755d47:");
    asm("pop               edi");                                           // 0x00755d47    5f
    asm("pop               esi");                                           // 0x00755d48    5e
    asm("mov               eax, 0x00000001");                               // 0x00755d49    b801000000
    asm("pop               ebx");                                           // 0x00755d4e    5b
    asm("ret               0x0004");                                        // 0x00755d4f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall LoadMagicTreeReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755d60    a194c9be00
    asm("test              eax, eax");                                      // 0x00755d65    85c0
    asm("push              ebx");                                           // 0x00755d67    53
    asm("push              esi");                                           // 0x00755d68    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755d69    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00755d6d    8bd9
    asm("push              edi");                                           // 0x00755d6f    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755d70    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x00755da8");                          // 0x00755d76    7430
    asm("push              0x0");                                           // 0x00755d78    6a00
    asm("push              0x4");                                           // 0x00755d7a    6a04
    asm("push              edi");                                           // 0x00755d7c    57
    asm("mov.s             ecx, esi");                                      // 0x00755d7d    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755d7f    e85c6b0600
    asm("cmp               eax, 0x03");                                     // 0x00755d84    83f803
    asm("{disp8} jne       _jmp_addr_0x00755d93");                          // 0x00755d87    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755d89    c70594c9be0000000000
    asm("_jmp_addr_0x00755d93:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755d93    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755d99    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755d9b    8a07
    asm("add               eax, 0x04");                                     // 0x00755d9d    83c004
    asm("add.s             ecx, eax");                                      // 0x00755da0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755da2    898e14020000
    asm("_jmp_addr_0x00755da8:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755da8    a194c9be00
    asm("test              eax, eax");                                      // 0x00755dad    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755daf    8dbb10010000
    asm("{disp8} je        _jmp_addr_0x00755de7");                          // 0x00755db5    7430
    asm("push              0x0");                                           // 0x00755db7    6a00
    asm("push              0x4");                                           // 0x00755db9    6a04
    asm("push              edi");                                           // 0x00755dbb    57
    asm("mov.s             ecx, esi");                                      // 0x00755dbc    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755dbe    e81d6b0600
    asm("cmp               eax, 0x03");                                     // 0x00755dc3    83f803
    asm("{disp8} jne       _jmp_addr_0x00755dd2");                          // 0x00755dc6    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755dc8    c70594c9be0000000000
    asm("_jmp_addr_0x00755dd2:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755dd2    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755dd8    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755dda    8a0f
    asm("add               ecx, 0x4");                                      // 0x00755ddc    83c104
    asm("add.s             eax, ecx");                                      // 0x00755ddf    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755de1    898614020000
    asm("_jmp_addr_0x00755de7:");
    asm("pop               edi");                                           // 0x00755de7    5f
    asm("pop               esi");                                           // 0x00755de8    5e
    asm("mov               eax, 0x00000001");                               // 0x00755de9    b801000000
    asm("pop               ebx");                                           // 0x00755dee    5b
    asm("ret               0x0004");                                        // 0x00755def    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SaveHideInBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755e00    a190c9be00
    asm("test              eax, eax");                                      // 0x00755e05    85c0
    asm("push              ebx");                                           // 0x00755e07    53
    asm("push              esi");                                           // 0x00755e08    56
    asm("push              edi");                                           // 0x00755e09    57
    asm("mov.s             ebx, ecx");                                      // 0x00755e0a    8bd9
    asm("{disp8} je        _jmp_addr_0x00755e87");                          // 0x00755e0c    7479
    asm("{disp8} mov       esi, dword ptr [esp + 0x10]");                   // 0x00755e0e    8b742410
    asm("push              0x0");                                           // 0x00755e12    6a00
    asm("push              0x4");                                           // 0x00755e14    6a04
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755e16    8dbb0c010000
    asm("push              edi");                                           // 0x00755e1c    57
    asm("mov.s             ecx, esi");                                      // 0x00755e1d    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755e1f    e8fc6a0600
    asm("cmp               eax, 0x03");                                     // 0x00755e24    83f803
    asm("{disp8} jne       _jmp_addr_0x00755e33");                          // 0x00755e27    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755e29    c70590c9be0000000000
    asm("_jmp_addr_0x00755e33:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755e33    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755e39    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755e3b    8a07
    asm("add               eax, 0x04");                                     // 0x00755e3d    83c004
    asm("add.s             ecx, eax");                                      // 0x00755e40    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755e42    898e14020000
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755e48    a190c9be00
    asm("test              eax, eax");                                      // 0x00755e4d    85c0
    asm("{disp8} je        _jmp_addr_0x00755e87");                          // 0x00755e4f    7436
    asm("push              0x0");                                           // 0x00755e51    6a00
    asm("push              0x8");                                           // 0x00755e53    6a08
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755e55    8dbb10010000
    asm("push              edi");                                           // 0x00755e5b    57
    asm("mov.s             ecx, esi");                                      // 0x00755e5c    8bce
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755e5e    e8bd6a0600
    asm("cmp               eax, 0x03");                                     // 0x00755e63    83f803
    asm("{disp8} jne       _jmp_addr_0x00755e72");                          // 0x00755e66    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755e68    c70590c9be0000000000
    asm("_jmp_addr_0x00755e72:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755e72    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755e78    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755e7a    8a0f
    asm("add               ecx, 0x8");                                      // 0x00755e7c    83c108
    asm("add.s             eax, ecx");                                      // 0x00755e7f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755e81    898614020000
    asm("_jmp_addr_0x00755e87:");
    asm("pop               edi");                                           // 0x00755e87    5f
    asm("pop               esi");                                           // 0x00755e88    5e
    asm("mov               eax, 0x00000001");                               // 0x00755e89    b801000000
    asm("pop               ebx");                                           // 0x00755e8e    5b
    asm("ret               0x0004");                                        // 0x00755e8f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall LoadHideInBuilding__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755ea0    a194c9be00
    asm("test              eax, eax");                                      // 0x00755ea5    85c0
    asm("push              ebx");                                           // 0x00755ea7    53
    asm("push              esi");                                           // 0x00755ea8    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755ea9    8b74240c
    asm("mov.s             ebx, ecx");                                      // 0x00755ead    8bd9
    asm("push              edi");                                           // 0x00755eaf    57
    asm("{disp32} lea      edi, dword ptr [ebx + 0x0000010c]");             // 0x00755eb0    8dbb0c010000
    asm("{disp8} je        _jmp_addr_0x00755ee8");                          // 0x00755eb6    7430
    asm("push              0x0");                                           // 0x00755eb8    6a00
    asm("push              0x4");                                           // 0x00755eba    6a04
    asm("push              edi");                                           // 0x00755ebc    57
    asm("mov.s             ecx, esi");                                      // 0x00755ebd    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755ebf    e81c6a0600
    asm("cmp               eax, 0x03");                                     // 0x00755ec4    83f803
    asm("{disp8} jne       _jmp_addr_0x00755ed3");                          // 0x00755ec7    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755ec9    c70594c9be0000000000
    asm("_jmp_addr_0x00755ed3:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755ed3    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755ed9    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755edb    8a07
    asm("add               eax, 0x04");                                     // 0x00755edd    83c004
    asm("add.s             ecx, eax");                                      // 0x00755ee0    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755ee2    898e14020000
    asm("_jmp_addr_0x00755ee8:");
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755ee8    a194c9be00
    asm("test              eax, eax");                                      // 0x00755eed    85c0
    asm("{disp32} lea      edi, dword ptr [ebx + 0x00000110]");             // 0x00755eef    8dbb10010000
    asm("{disp8} je        _jmp_addr_0x00755f27");                          // 0x00755ef5    7430
    asm("push              0x0");                                           // 0x00755ef7    6a00
    asm("push              0x8");                                           // 0x00755ef9    6a08
    asm("push              edi");                                           // 0x00755efb    57
    asm("mov.s             ecx, esi");                                      // 0x00755efc    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755efe    e8dd690600
    asm("cmp               eax, 0x03");                                     // 0x00755f03    83f803
    asm("{disp8} jne       _jmp_addr_0x00755f12");                          // 0x00755f06    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755f08    c70594c9be0000000000
    asm("_jmp_addr_0x00755f12:");
    asm("{disp32} mov      eax, dword ptr [esi + 0x00000214]");             // 0x00755f12    8b8614020000
    asm("xor.s             ecx, ecx");                                      // 0x00755f18    33c9
    asm("mov               cl, byte ptr [edi]");                            // 0x00755f1a    8a0f
    asm("add               ecx, 0x8");                                      // 0x00755f1c    83c108
    asm("add.s             eax, ecx");                                      // 0x00755f1f    03c1
    asm("{disp32} mov      dword ptr [esi + 0x00000214], eax");             // 0x00755f21    898614020000
    asm("_jmp_addr_0x00755f27:");
    asm("pop               edi");                                           // 0x00755f27    5f
    asm("pop               esi");                                           // 0x00755f28    5e
    asm("mov               eax, 0x00000001");                               // 0x00755f29    b801000000
    asm("pop               ebx");                                           // 0x00755f2e    5b
    asm("ret               0x0004");                                        // 0x00755f2f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SaveShieldReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226990]");        // 0x00755f40    a190c9be00
    asm("test              eax, eax");                                      // 0x00755f45    85c0
    asm("{disp8} je        _jmp_addr_0x00755f8f");                          // 0x00755f47    7446
    asm("push              esi");                                           // 0x00755f49    56
    asm("push              edi");                                           // 0x00755f4a    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x0c]");                   // 0x00755f4b    8b7c240c
    asm("push              0x0");                                           // 0x00755f4f    6a00
    asm("{disp32} lea      esi, dword ptr [ecx + 0x0000010c]");             // 0x00755f51    8db10c010000
    asm("push              0x8");                                           // 0x00755f57    6a08
    asm("push              esi");                                           // 0x00755f59    56
    asm("mov.s             ecx, edi");                                      // 0x00755f5a    8bcf
    asm("call              @Write__8LHOSFileFPvUlPUl@20");                  // 0x00755f5c    e8bf690600
    asm("cmp               eax, 0x03");                                     // 0x00755f61    83f803
    asm("{disp8} jne       _jmp_addr_0x00755f70");                          // 0x00755f64    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00755f66    c70590c9be0000000000
    asm("_jmp_addr_0x00755f70:");
    asm("{disp32} mov      ecx, dword ptr [edi + 0x00000214]");             // 0x00755f70    8b8f14020000
    asm("xor.s             eax, eax");                                      // 0x00755f76    33c0
    asm("mov               al, byte ptr [esi]");                            // 0x00755f78    8a06
    asm("add               eax, 0x08");                                     // 0x00755f7a    83c008
    asm("add.s             ecx, eax");                                      // 0x00755f7d    03c8
    asm("{disp32} mov      dword ptr [edi + 0x00000214], ecx");             // 0x00755f7f    898f14020000
    asm("pop               edi");                                           // 0x00755f85    5f
    asm("mov               eax, 0x00000001");                               // 0x00755f86    b801000000
    asm("pop               esi");                                           // 0x00755f8b    5e
    asm("ret               0x0004");                                        // 0x00755f8c    c20400
    asm("_jmp_addr_0x00755f8f:");
    asm("mov               eax, 0x00000001");                               // 0x00755f8f    b801000000
    asm("ret               0x0004");                                        // 0x00755f94    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall LoadShieldReaction__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    asm("{disp32} mov      eax, dword ptr [data_bytes + 0x226994]");        // 0x00755fa0    a194c9be00
    asm("test              eax, eax");                                      // 0x00755fa5    85c0
    asm("push              edi");                                           // 0x00755fa7    57
    asm("{disp32} lea      edi, dword ptr [ecx + 0x0000010c]");             // 0x00755fa8    8db90c010000
    asm("{disp8} je        _jmp_addr_0x00755fef");                          // 0x00755fae    743f
    asm("push              esi");                                           // 0x00755fb0    56
    asm("{disp8} mov       esi, dword ptr [esp + 0x0c]");                   // 0x00755fb1    8b74240c
    asm("push              0x0");                                           // 0x00755fb5    6a00
    asm("push              0x8");                                           // 0x00755fb7    6a08
    asm("push              edi");                                           // 0x00755fb9    57
    asm("mov.s             ecx, esi");                                      // 0x00755fba    8bce
    asm("call              @Read__8LHOSFileFPvUlPUl@20");                   // 0x00755fbc    e81f690600
    asm("cmp               eax, 0x03");                                     // 0x00755fc1    83f803
    asm("{disp8} jne       _jmp_addr_0x00755fd0");                          // 0x00755fc4    750a
    asm("{disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000"); // 0x00755fc6    c70594c9be0000000000
    asm("_jmp_addr_0x00755fd0:");
    asm("{disp32} mov      ecx, dword ptr [esi + 0x00000214]");             // 0x00755fd0    8b8e14020000
    asm("xor.s             eax, eax");                                      // 0x00755fd6    33c0
    asm("mov               al, byte ptr [edi]");                            // 0x00755fd8    8a07
    asm("add               eax, 0x08");                                     // 0x00755fda    83c008
    asm("add.s             ecx, eax");                                      // 0x00755fdd    03c8
    asm("{disp32} mov      dword ptr [esi + 0x00000214], ecx");             // 0x00755fdf    898e14020000
    asm("pop               esi");                                           // 0x00755fe5    5e
    asm("mov               eax, 0x00000001");                               // 0x00755fe6    b801000000
    asm("pop               edi");                                           // 0x00755feb    5f
    asm("ret               0x0004");                                        // 0x00755fec    c20400
    asm("_jmp_addr_0x00755fef:");
    asm("mov               eax, 0x00000001");                               // 0x00755fef    b801000000
    asm("pop               edi");                                           // 0x00755ff4    5f
    asm("ret               0x0004");                                        // 0x00755ff5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SetVillagerDisciple__8VillagerFP9GameThing17VILLAGER_DISCIPLEi(struct Villager* this, const void* edx, struct GameThing* param_1, enum VILLAGER_DISCIPLE param_2, int param_3)
{
    asm("push              ebx");                                           // 0x00756000    53
    asm("{disp8} mov       ebx, dword ptr [esp + 0x0c]");                   // 0x00756001    8b5c240c
    asm("test              ebx, ebx");                                      // 0x00756005    85db
    asm("push              esi");                                           // 0x00756007    56
    asm("mov.s             esi, ecx");                                      // 0x00756008    8bf1
    asm("{disp8} jl        _jmp_addr_0x00756011");                          // 0x0075600a    7c05
    asm("cmp               ebx, 0x0d");                                     // 0x0075600c    83fb0d
    asm("{disp8} jl        _jmp_addr_0x00756018");                          // 0x0075600f    7c07
    asm("_jmp_addr_0x00756011:");
    asm("pop               esi");                                           // 0x00756011    5e
    asm("xor.s             eax, eax");                                      // 0x00756012    33c0
    asm("pop               ebx");                                           // 0x00756014    5b
    asm("ret               0x000c");                                        // 0x00756015    c20c00
    asm("_jmp_addr_0x00756018:");
    asm("mov               eax, dword ptr [esi]");                          // 0x00756018    8b06
    asm("mov.s             ecx, esi");                                      // 0x0075601a    8bce
    asm("call              dword ptr [eax + 0x48]");                        // 0x0075601c    ff5048
    asm("test              eax, eax");                                      // 0x0075601f    85c0
    asm("{disp8} je        _jmp_addr_0x00756059");                          // 0x00756021    7436
    asm("xor.s             eax, eax");                                      // 0x00756023    33c0
    asm("{disp32} mov      al, byte ptr [esi + 0x000000f2]");               // 0x00756025    8a86f2000000
    asm("cmp.s             eax, ebx");                                      // 0x0075602b    3bc3
    asm("{disp8} je        _jmp_addr_0x00756059");                          // 0x0075602d    742a
    asm("mov               edx, dword ptr [esi]");                          // 0x0075602f    8b16
    asm("push              eax");                                           // 0x00756031    50
    asm("mov.s             ecx, esi");                                      // 0x00756032    8bce
    asm("call              dword ptr [edx + 0x48]");                        // 0x00756034    ff5248
    asm("mov.s             ecx, eax");                                      // 0x00756037    8bc8
    asm("add               ecx, 0x00000610");                               // 0x00756039    81c110060000
    asm("call              ?DecrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z");                          // 0x0075603f    e83c3cffff
    asm("mov               eax, dword ptr [esi]");                          // 0x00756044    8b06
    asm("push              ebx");                                           // 0x00756046    53
    asm("mov.s             ecx, esi");                                      // 0x00756047    8bce
    asm("call              dword ptr [eax + 0x48]");                        // 0x00756049    ff5048
    asm("mov.s             ecx, eax");                                      // 0x0075604c    8bc8
    asm("add               ecx, 0x00000610");                               // 0x0075604e    81c110060000
    asm("call              ?IncrementNumOfDisciples@TownStats@@QAEXW4VILLAGER_DISCIPLE@@@Z");                          // 0x00756054    e8073cffff
    asm("_jmp_addr_0x00756059:");
    asm("test              ebx, ebx");                                      // 0x00756059    85db
    asm("{disp8} je        _jmp_addr_0x007560ab");                          // 0x0075605b    744e
    asm("xor.s             ecx, ecx");                                      // 0x0075605d    33c9
    asm("{disp32} mov      cx, word ptr [esi + 0x000000e0]");               // 0x0075605f    668b8ee0000000
    asm("{disp32} lea      edx, dword ptr [ebx * 0x8 + 0x00000000]");       // 0x00756066    8d14dd00000000
    asm("sub.s             edx, ebx");                                      // 0x0075606d    2bd3
    asm("and               ecx, 0x0000fbff");                               // 0x0075606f    81e1fffb0000
    asm("or                ecx, 0x200");                                    // 0x00756075    81c900020000
    asm("{disp32} mov      word ptr [esi + 0x000000e0], cx");               // 0x0075607b    66898ee0000000
    asm("{disp8} mov       ecx, dword ptr [esi + 0x40]");                   // 0x00756082    8b4e40
    asm("mov               eax, dword ptr [ecx]");                          // 0x00756085    8b01
    asm("{disp32} mov      edx, dword ptr [edx * 0x4 + 0x0099a200]");       // 0x00756087    8b149500a29900
    asm("call              dword ptr [eax + 0xcc]");                        // 0x0075608e    ff90cc000000
    asm("mov               eax, dword ptr [esi]");                          // 0x00756094    8b06
    asm("mov.s             ecx, esi");                                      // 0x00756096    8bce
    asm("call              dword ptr [eax + 0x1c]");                        // 0x00756098    ff501c
    asm("{disp32} mov      byte ptr [esi + 0x000000f2], bl");               // 0x0075609b    889ef2000000
    asm("pop               esi");                                           // 0x007560a1    5e
    asm("mov               eax, 0x00000001");                               // 0x007560a2    b801000000
    asm("pop               ebx");                                           // 0x007560a7    5b
    asm("ret               0x000c");                                        // 0x007560a8    c20c00
    asm("_jmp_addr_0x007560ab:");
    asm("{disp8} mov       ecx, dword ptr [esi + 0x40]");                   // 0x007560ab    8b4e40
    asm("and               word ptr [esi + 0x000000e0], -0x0601");          // 0x007560ae    6681a6e0000000fff9
    asm("mov               eax, dword ptr [ecx]");                          // 0x007560b7    8b01
    asm("xor.s             edx, edx");                                      // 0x007560b9    33d2
    asm("call              dword ptr [eax + 0xcc]");                        // 0x007560bb    ff90cc000000
    asm("{disp32} mov      byte ptr [esi + 0x000000f2], bl");               // 0x007560c1    889ef2000000
    asm("pop               esi");                                           // 0x007560c7    5e
    asm("mov               eax, 0x00000001");                               // 0x007560c8    b801000000
    asm("pop               ebx");                                           // 0x007560cd    5b
    asm("ret               0x000c");                                        // 0x007560ce    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetDiscipleStateIfInteractedWith__8VillagerFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2)
{
    asm("push              ebx");                                           // 0x007560e0    53
    asm("push              esi");                                           // 0x007560e1    56
    asm("push              edi");                                           // 0x007560e2    57
    asm("{disp8} mov       edi, dword ptr [esp + 0x14]");                   // 0x007560e3    8b7c2414
    asm("mov.s             esi, ecx");                                      // 0x007560e7    8bf1
    asm("cmp.s             edi, esi");                                      // 0x007560e9    3bfe
    asm("{disp8} jne       _jmp_addr_0x007560fb");                          // 0x007560eb    750e
    asm("xor.s             eax, eax");                                      // 0x007560ed    33c0
    asm("{disp32} mov      al, byte ptr [esi + 0x000000f2]");               // 0x007560ef    8a86f2000000
    asm("pop               edi");                                           // 0x007560f5    5f
    asm("pop               esi");                                           // 0x007560f6    5e
    asm("pop               ebx");                                           // 0x007560f7    5b
    asm("ret               0x0008");                                        // 0x007560f8    c20800
    asm("_jmp_addr_0x007560fb:");
    asm("mov               eax, dword ptr [esi]");                          // 0x007560fb    8b06
    asm("mov.s             ecx, esi");                                      // 0x007560fd    8bce
    asm("call              dword ptr [eax + 0xd4]");                        // 0x007560ff    ff90d4000000
    asm("test              eax, eax");                                      // 0x00756105    85c0
    asm("{disp8} je        _jmp_addr_0x00756168");                          // 0x00756107    745f
    asm("{disp8} mov       ecx, dword ptr [esp + 0x10]");                   // 0x00756109    8b4c2410
    asm("mov               edx, dword ptr [ecx]");                          // 0x0075610d    8b11
    asm("call              dword ptr [edx + 0x1c]");                        // 0x0075610f    ff521c
    asm("mov.s             ebx, eax");                                      // 0x00756112    8bd8
    asm("mov               eax, dword ptr [esi]");                          // 0x00756114    8b06
    asm("mov.s             ecx, esi");                                      // 0x00756116    8bce
    asm("call              dword ptr [eax + 0x1c]");                        // 0x00756118    ff501c
    asm("cmp.s             ebx, eax");                                      // 0x0075611b    3bd8
    asm("{disp8} jne       _jmp_addr_0x00756168");                          // 0x0075611d    7549
    asm("mov               edx, dword ptr [edi]");                          // 0x0075611f    8b17
    asm("mov.s             ecx, edi");                                      // 0x00756121    8bcf
    asm("call              dword ptr [edx + 0x1c]");                        // 0x00756123    ff521c
    asm("mov.s             ebx, eax");                                      // 0x00756126    8bd8
    asm("mov               eax, dword ptr [esi]");                          // 0x00756128    8b06
    asm("mov.s             ecx, esi");                                      // 0x0075612a    8bce
    asm("call              dword ptr [eax + 0x1c]");                        // 0x0075612c    ff501c
    asm("cmp.s             ebx, eax");                                      // 0x0075612f    3bd8
    asm("{disp8} jne       _jmp_addr_0x00756168");                          // 0x00756131    7535
    asm("mov.s             ecx, esi");                                      // 0x00756133    8bce
    asm("call              _jmp_addr_0x00761090");                          // 0x00756135    e856af0000
    asm("test              eax, eax");                                      // 0x0075613a    85c0
    asm("{disp8} je        _jmp_addr_0x00756168");                          // 0x0075613c    742a
    asm("mov.s             ecx, edi");                                      // 0x0075613e    8bcf
    asm("call              _jmp_addr_0x00761090");                          // 0x00756140    e84baf0000
    asm("test              eax, eax");                                      // 0x00756145    85c0
    asm("{disp8} je        _jmp_addr_0x00756168");                          // 0x00756147    741f
    asm("{disp8} mov       edx, dword ptr [esi + 0x28]");                   // 0x00756149    8b5628
    asm("{disp8} mov       ecx, dword ptr [edi + 0x28]");                   // 0x0075614c    8b4f28
    asm("{disp32} mov      eax, dword ptr [edx + 0x000001f8]");             // 0x0075614f    8b82f8010000
    asm("cmp               eax, dword ptr [ecx + 0x000001f8]");             // 0x00756155    3b81f8010000
    asm("{disp8} je        _jmp_addr_0x00756168");                          // 0x0075615b    740b
    asm("pop               edi");                                           // 0x0075615d    5f
    asm("pop               esi");                                           // 0x0075615e    5e
    asm("mov               eax, 0x00000005");                               // 0x0075615f    b805000000
    asm("pop               ebx");                                           // 0x00756164    5b
    asm("ret               0x0008");                                        // 0x00756165    c20800
    asm("_jmp_addr_0x00756168:");
    asm("pop               edi");                                           // 0x00756168    5f
    asm("pop               esi");                                           // 0x00756169    5e
    asm("xor.s             eax, eax");                                      // 0x0075616a    33c0
    asm("pop               ebx");                                           // 0x0075616c    5b
    asm("ret               0x0008");                                        // 0x0075616d    c20800
    __builtin_unreachable();
}

uint32_t __fastcall ShowDiscipleIcon__8VillagerF17VILLAGER_DISCIPLE(struct Villager* this, const void* edx, enum VILLAGER_DISCIPLE param_1)
{
    asm("{disp8} mov       eax, dword ptr [ecx + 0x40]");                   // 0x00756170    8b4140
    asm("{disp8} mov       ecx, dword ptr [esp + 0x04]");                   // 0x00756173    8b4c2404
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e4], eax");        // 0x00756177    a3e499eb00
    asm("{disp8} lea       eax, dword ptr [ecx + -0x01]");                  // 0x0075617c    8d41ff
    asm("cmp               eax, 0x09");                                     // 0x0075617f    83f809
    asm("{disp8} ja        _jmp_addr_0x007561fd");                          // 0x00756182    7779
    asm("jmp               dword ptr [eax*4 + 0x756200]");                  // 0x00756184    ff248500627500
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000000"); // 0x0075618b    c705e899eb0000000000
    asm("ret               0x0004");                                        // 0x00756195    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000001"); // 0x00756198    c705e899eb0001000000
    asm("ret               0x0004");                                        // 0x007561a2    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000002"); // 0x007561a5    c705e899eb0002000000
    asm("ret               0x0004");                                        // 0x007561af    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000003"); // 0x007561b2    c705e899eb0003000000
    asm("ret               0x0004");                                        // 0x007561bc    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000004"); // 0x007561bf    c705e899eb0004000000
    asm("ret               0x0004");                                        // 0x007561c9    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000006"); // 0x007561cc    c705e899eb0006000000
    asm("ret               0x0004");                                        // 0x007561d6    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000007"); // 0x007561d9    c705e899eb0007000000
    asm("ret               0x0004");                                        // 0x007561e3    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000005"); // 0x007561e6    c705e899eb0005000000
    asm("ret               0x0004");                                        // 0x007561f0    c20400
    asm("{disp32} mov      dword ptr [data_bytes + 0x4f39e8], 0x00000008"); // 0x007561f3    c705e899eb0008000000
    asm("_jmp_addr_0x007561fd:");
    asm("ret               0x0004");                                        // 0x007561fd    c20400
    // Snippet: jmptbl, [0x00756200, 0x00756228)
    asm(".byte 0x98, 0x61, 0x75, 0x00");      // 0x00756200
    asm(".byte 0xb2, 0x61, 0x75, 0x00");      // 0x00756204
    asm(".byte 0xcc, 0x61, 0x75, 0x00");      // 0x00756208
    asm(".byte 0xbf, 0x61, 0x75, 0x00");      // 0x0075620c
    asm(".byte 0xa5, 0x61, 0x75, 0x00");      // 0x00756210
    asm(".byte 0xe6, 0x61, 0x75, 0x00");      // 0x00756214
    asm(".byte 0x8b, 0x61, 0x75, 0x00");      // 0x00756218
    asm(".byte 0xd9, 0x61, 0x75, 0x00");      // 0x0075621c
    asm(".byte 0xe6, 0x61, 0x75, 0x00");      // 0x00756220
    asm(".byte 0xf3, 0x61, 0x75, 0x00");      // 0x00756224
    __builtin_unreachable();
}

void __fastcall DebugValidateState__8VillagerFv(struct Villager* this)
{
    return;
}

void __fastcall ForceMoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode)
{
    asm("push               ebx");                                           // 0x00756240    53
    asm("push               ebp");                                           // 0x00756241    55
    asm("push               esi");                                           // 0x00756242    56
    asm("mov.s              esi, ecx");                                      // 0x00756243    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00756245    8b06
    asm("push               edi");                                           // 0x00756247    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00756248    ff5048
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x0075624b    8b7c2414
    asm("mov                edx, dword ptr [edi]");                          // 0x0075624f    8b17
    asm("mov.s              ecx, edi");                                      // 0x00756251    8bcf
    asm("mov.s              ebx, eax");                                      // 0x00756253    8bd8
    asm("call               dword ptr [edx + 0x48]");                        // 0x00756255    ff5248
    asm("mov.s              ebp, eax");                                      // 0x00756258    8be8
    asm("cmp.s              ebx, ebp");                                      // 0x0075625a    3bdd
    asm("{disp8} je         _jmp_addr_0x007562aa");                          // 0x0075625c    744c
    asm("test               ebx, ebx");                                      // 0x0075625e    85db
    asm("{disp8} je         _jmp_addr_0x0075626a");                          // 0x00756260    7408
    asm("push               esi");                                           // 0x00756262    56
    asm("mov.s              ecx, ebx");                                      // 0x00756263    8bcb
    asm("call               ?RemoveVillager@Town@@QAEXPAVVillager@@@Z");     // 0x00756265    e8a67ffeff
    asm("_jmp_addr_0x0075626a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075626a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075626c    8bce
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x0075626e    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00756274    85c0
    asm("{disp8} je         _jmp_addr_0x00756284");                          // 0x00756276    740c
    asm("mov                edx, dword ptr [edi]");                          // 0x00756278    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075627a    8bcf
    asm("call               dword ptr [edx + 0x8a0]");                       // 0x0075627c    ff92a0080000
    asm("{disp8} jmp        _jmp_addr_0x0075628e");                          // 0x00756282    eb0a
    asm("_jmp_addr_0x00756284:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00756284    8b07
    asm("mov.s              ecx, edi");                                      // 0x00756286    8bcf
    asm("call               dword ptr [eax + 0x89c]");                       // 0x00756288    ff909c080000
    asm("_jmp_addr_0x0075628e:");
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075628e    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00756294    dfe0
    asm("test               ah, 0x01");                                      // 0x00756296    f6c401
    asm("{disp8} jne        _jmp_addr_0x007562aa");                          // 0x00756299    750f
    asm("push               esi");                                           // 0x0075629b    56
    asm("mov.s              ecx, ebp");                                      // 0x0075629c    8bcd
    asm("call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z"); // 0x0075629e    e8ed3dfeff
    asm("pop                edi");                                           // 0x007562a3    5f
    asm("pop                esi");                                           // 0x007562a4    5e
    asm("pop                ebp");                                           // 0x007562a5    5d
    asm("pop                ebx");                                           // 0x007562a6    5b
    asm("ret                0x0004");                                        // 0x007562a7    c20400
    asm("_jmp_addr_0x007562aa:");
    asm("push               esi");                                           // 0x007562aa    56
    asm("mov.s              ecx, edi");                                      // 0x007562ab    8bcf
    asm("call               ?AddVillagerToAbode@Abode@@QAEXPAVVillager@@@Z");     // 0x007562ad    e8aeddcaff
    asm("pop                edi");                                           // 0x007562b2    5f
    asm("pop                esi");                                           // 0x007562b3    5e
    asm("pop                ebp");                                           // 0x007562b4    5d
    asm("pop                ebx");                                           // 0x007562b5    5b
    asm("ret                0x0004");                                        // 0x007562b6    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetSkeleton__8VillagerFi(struct Villager* this, const void* edx, bool32_t param_1)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x3e0bc4]");          // 0x007562c0    a0c46bda00
    asm("test               al, 0x01");                                      // 0x007562c5    a801
    asm("push               ebx");                                           // 0x007562c7    53
    asm("push               ebp");                                           // 0x007562c8    55
    asm("push               esi");                                           // 0x007562c9    56
    asm("push               edi");                                           // 0x007562ca    57
    asm("mov.s              esi, ecx");                                      // 0x007562cb    8bf1
    asm("{disp8} jne        _jmp_addr_0x007562f6");                          // 0x007562cd    7527
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x007562cf    8b0d34fee900
    asm("mov.s              bl, al");                                        // 0x007562d5    8ad8
    asm("or                 bl, 1");                                         // 0x007562d7    80cb01
    asm("{disp32} mov       byte ptr [data_bytes + 0x3e0bc4], bl");          // 0x007562da    881dc46bda00
    asm("mov                edx, dword ptr [ecx]");                          // 0x007562e0    8b11
    asm("mov                eax, 0x000001ff");                               // 0x007562e2    b8ff010000
    asm("cmp.s              edx, eax");                                      // 0x007562e7    3bd0
    asm("{disp8} jg         _jmp_addr_0x007562ed");                          // 0x007562e9    7f02
    asm("xor.s              eax, eax");                                      // 0x007562eb    33c0
    asm("_jmp_addr_0x007562ed:");
    asm("{disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x007562ed    8b448104
    asm("{disp32} mov       dword ptr [data_bytes + 0x3e0bc0], eax");        // 0x007562f1    a3c06bda00
    asm("_jmp_addr_0x007562f6:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007562f6    8b06
    asm("xor.s              ecx, ecx");                                      // 0x007562f8    33c9
    asm("{disp8} mov        cl, byte ptr [esp + 0x14]");                     // 0x007562fa    8a4c2414
    asm("xor.s              edx, edx");                                      // 0x007562fe    33d2
    asm("{disp32} mov       dx, word ptr [esi + 0x000000b4]");               // 0x00756300    668b96b4000000
    asm("and                ecx, 0x01");                                     // 0x00756307    83e101
    asm("shl                ecx, 6");                                        // 0x0075630a    c1e106
    asm("and                edx, 0x0000ffbf");                               // 0x0075630d    81e2bfff0000
    asm("or.s               ecx, edx");                                      // 0x00756313    0bca
    asm("{disp32} mov       word ptr [esi + 0x000000b4], cx");               // 0x00756315    66898eb4000000
    asm("mov.s              ecx, esi");                                      // 0x0075631c    8bce
    asm("call               dword ptr [eax + 0x4a0]");                       // 0x0075631e    ff90a0040000
    asm("test               eax, eax");                                      // 0x00756324    85c0
    asm("{disp8} je         _jmp_addr_0x00756348");                          // 0x00756326    7420
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00756328    8b4e40
    asm("test               ecx, ecx");                                      // 0x0075632b    85c9
    asm("{disp32} je        _jmp_addr_0x00756429");                          // 0x0075632d    0f84f6000000
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x3e0bc0]");        // 0x00756333    8b15c06bda00
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756339    8b01
    asm("push               edx");                                           // 0x0075633b    52
    asm("push               edx");                                           // 0x0075633c    52
    asm("call               dword ptr [eax + 0xf4]");                        // 0x0075633d    ff90f4000000
    asm("{disp32} jmp       _jmp_addr_0x00756429");                          // 0x00756343    e9e1000000
    asm("_jmp_addr_0x00756348:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00756348    8b4e28
    asm("{disp32} mov       edi, dword ptr [ecx + 0x00000138]");             // 0x0075634b    8bb938010000
    asm("mov                edx, dword ptr [esi]");                          // 0x00756351    8b16
    asm("mov.s              ecx, esi");                                      // 0x00756353    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00756355    ff92d0080000
    asm("cmp.s              eax, edi");                                      // 0x0075635b    3bc7
    asm("{disp8} jae        _jmp_addr_0x007563b5");                          // 0x0075635d    7356
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x0075635f    8b4e40
    asm("test               ecx, ecx");                                      // 0x00756362    85c9
    asm("{disp32} je        _jmp_addr_0x00756429");                          // 0x00756364    0f84bf000000
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x0075636a    8b5628
    asm("{disp32} mov       eax, dword ptr [edx + 0x0000020c]");             // 0x0075636d    8b820c020000
    asm("test               eax, eax");                                      // 0x00756373    85c0
    asm("{disp32} mov       edi, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00756375    8b3d34fee900
    asm("{disp8} jl         _jmp_addr_0x00756381");                          // 0x0075637b    7c04
    asm("cmp                eax, dword ptr [edi]");                          // 0x0075637d    3b07
    asm("{disp8} jl         _jmp_addr_0x00756383");                          // 0x0075637f    7c02
    asm("_jmp_addr_0x00756381:");
    asm("xor.s              eax, eax");                                      // 0x00756381    33c0
    asm("_jmp_addr_0x00756383:");
    asm("{disp8} mov        ebx, dword ptr [edi + eax * 0x4 + 0x04]");       // 0x00756383    8b5c8704
    asm("{disp32} mov       eax, dword ptr [edx + 0x00000208]");             // 0x00756387    8b8208020000
    asm("test               eax, eax");                                      // 0x0075638d    85c0
    asm("{disp8} jl         _jmp_addr_0x00756395");                          // 0x0075638f    7c04
    asm("cmp                eax, dword ptr [edi]");                          // 0x00756391    3b07
    asm("{disp8} jl         _jmp_addr_0x00756397");                          // 0x00756393    7c02
    asm("_jmp_addr_0x00756395:");
    asm("xor.s              eax, eax");                                      // 0x00756395    33c0
    asm("_jmp_addr_0x00756397:");
    asm("{disp32} mov       edx, dword ptr [edx + 0x00000204]");             // 0x00756397    8b9204020000
    asm("test               edx, edx");                                      // 0x0075639d    85d2
    asm("{disp8} mov        eax, dword ptr [edi + eax * 0x4 + 0x04]");       // 0x0075639f    8b448704
    asm("{disp8} jl         _jmp_addr_0x007563a9");                          // 0x007563a3    7c04
    asm("cmp                edx, dword ptr [edi]");                          // 0x007563a5    3b17
    asm("{disp8} jl         _jmp_addr_0x007563ab");                          // 0x007563a7    7c02
    asm("_jmp_addr_0x007563a9:");
    asm("xor.s              edx, edx");                                      // 0x007563a9    33d2
    asm("_jmp_addr_0x007563ab:");
    asm("mov                ebp, dword ptr [ecx]");                          // 0x007563ab    8b29
    asm("{disp8} mov        edx, dword ptr [edi + edx * 0x4 + 0x04]");       // 0x007563ad    8b549704
    asm("push               ebx");                                           // 0x007563b1    53
    asm("push               eax");                                           // 0x007563b2    50
    asm("{disp8} jmp        _jmp_addr_0x00756423");                          // 0x007563b3    eb6e
    asm("_jmp_addr_0x007563b5:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                   // 0x007563b5    8b4640
    asm("test               eax, eax");                                      // 0x007563b8    85c0
    asm("{disp8} je         _jmp_addr_0x00756429");                          // 0x007563ba    746d
    asm("mov                eax, dword ptr [esi]");                          // 0x007563bc    8b06
    asm("push               0x2");                                           // 0x007563be    6a02
    asm("mov.s              ecx, esi");                                      // 0x007563c0    8bce
    asm("call               dword ptr [eax + 0x60c]");                       // 0x007563c2    ff900c060000
    asm("test               eax, eax");                                      // 0x007563c8    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x007563ca    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x007563d6");                          // 0x007563d0    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x007563d2    3b01
    asm("{disp8} jl         _jmp_addr_0x007563d8");                          // 0x007563d4    7c02
    asm("_jmp_addr_0x007563d6:");
    asm("xor.s              eax, eax");                                      // 0x007563d6    33c0
    asm("_jmp_addr_0x007563d8:");
    asm("{disp8} mov        ebx, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x007563d8    8b5c8104
    asm("mov                edx, dword ptr [esi]");                          // 0x007563dc    8b16
    asm("push               0x1");                                           // 0x007563de    6a01
    asm("mov.s              ecx, esi");                                      // 0x007563e0    8bce
    asm("call               dword ptr [edx + 0x60c]");                       // 0x007563e2    ff920c060000
    asm("test               eax, eax");                                      // 0x007563e8    85c0
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x007563ea    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x007563f6");                          // 0x007563f0    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x007563f2    3b01
    asm("{disp8} jl         _jmp_addr_0x007563f8");                          // 0x007563f4    7c02
    asm("_jmp_addr_0x007563f6:");
    asm("xor.s              eax, eax");                                      // 0x007563f6    33c0
    asm("_jmp_addr_0x007563f8:");
    asm("{disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x007563f8    8b7c8104
    asm("mov                eax, dword ptr [esi]");                          // 0x007563fc    8b06
    asm("push               0x0");                                           // 0x007563fe    6a00
    asm("mov.s              ecx, esi");                                      // 0x00756400    8bce
    asm("call               dword ptr [eax + 0x60c]");                       // 0x00756402    ff900c060000
    asm("test               eax, eax");                                      // 0x00756408    85c0
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x0075640a    8b1534fee900
    asm("{disp8} jl         _jmp_addr_0x00756416");                          // 0x00756410    7c04
    asm("cmp                eax, dword ptr [edx]");                          // 0x00756412    3b02
    asm("{disp8} jl         _jmp_addr_0x00756418");                          // 0x00756414    7c02
    asm("_jmp_addr_0x00756416:");
    asm("xor.s              eax, eax");                                      // 0x00756416    33c0
    asm("_jmp_addr_0x00756418:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00756418    8b4e40
    asm("mov                ebp, dword ptr [ecx]");                          // 0x0075641b    8b29
    asm("{disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]");       // 0x0075641d    8b548204
    asm("push               ebx");                                           // 0x00756421    53
    asm("push               edi");                                           // 0x00756422    57
    asm("_jmp_addr_0x00756423:");
    asm("call               dword ptr [ebp + 0xf4]");                        // 0x00756423    ff95f4000000
    asm("_jmp_addr_0x00756429:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00756429    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075642b    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x0075642d    ff92d0080000
    asm("push               eax");                                           // 0x00756433    50
    asm("mov.s              ecx, esi");                                      // 0x00756434    8bce
    asm("call               ?SetScaleForAge@Villager@@QAEXK@Z");             // 0x00756436    e855c6ffff
    asm("pop                edi");                                           // 0x0075643b    5f
    asm("pop                esi");                                           // 0x0075643c    5e
    asm("pop                ebp");                                           // 0x0075643d    5d
    asm("pop                ebx");                                           // 0x0075643e    5b
    asm("ret                0x0004");                                        // 0x0075643f    c20400
    __builtin_unreachable();
}

void __fastcall InsertMapObject__8VillagerFv(struct Object* this)
{
    asm("{disp32} jmp       @InsertMapObject__6ObjectFv@4");                 // 0x00756450    e9eb02eeff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsReachable__8VillagerFv(struct Object* this)
{
    asm("push               esi");                                           // 0x00756460    56
    asm("mov.s              esi, ecx");                                      // 0x00756461    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00756463    8b06
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00756465    ff502c
    asm("test               eax, eax");                                      // 0x00756468    85c0
    asm("{disp8} jne        _jmp_addr_0x0075646e");                          // 0x0075646a    7502
    asm("pop                esi");                                           // 0x0075646c    5e
    asm("ret");                                                              // 0x0075646d    c3
    asm("_jmp_addr_0x0075646e:");
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000e0]");               // 0x0075646e    8a8ee0000000
    asm("and                cl, 0x04");                                      // 0x00756474    80e104
    asm("cmp                cl, 0x04");                                      // 0x00756477    80f904
    asm("{disp8} jne        _jmp_addr_0x00756480");                          // 0x0075647a    7504
    asm("xor.s              eax, eax");                                      // 0x0075647c    33c0
    asm("pop                esi");                                           // 0x0075647e    5e
    asm("ret");                                                              // 0x0075647f    c3
    asm("_jmp_addr_0x00756480:");
    asm("{disp8} mov        dl, byte ptr [esi + 0x24]");                     // 0x00756480    8a5624
    asm("and                dl, 0x04");                                      // 0x00756483    80e204
    asm("cmp                dl, 0x04");                                      // 0x00756486    80fa04
    asm("{disp8} jne        _jmp_addr_0x0075648f");                          // 0x00756489    7504
    asm("xor.s              eax, eax");                                      // 0x0075648b    33c0
    asm("pop                esi");                                           // 0x0075648d    5e
    asm("ret");                                                              // 0x0075648e    c3
    asm("_jmp_addr_0x0075648f:");
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008c]");               // 0x0075648f    8a8e8c000000
    asm("xor.s              eax, eax");                                      // 0x00756495    33c0
    asm("cmp                cl, -0x14");                                     // 0x00756497    80f9ec
    asm("setne              al");                                            // 0x0075649a    0f95c0
    asm("pop                esi");                                           // 0x0075649d    5e
    asm("ret");                                                              // 0x0075649e    c3
    __builtin_unreachable();
}

uint32_t __fastcall ValidForPlaceInHand__8VillagerFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x007564a0    8b01
    asm("call               dword ptr [eax + 0x530]");                       // 0x007564a2    ff9030050000
    asm("neg                eax");                                           // 0x007564a8    f7d8
    asm("sbb.s              eax, eax");                                      // 0x007564aa    1bc0
    asm("neg                eax");                                           // 0x007564ac    f7d8
    asm("ret                0x0004");                                        // 0x007564ae    c20400
    __builtin_unreachable();
}

bool __fastcall CanBecomeAPhysicsObject__8VillagerFv(struct Object* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x007564c0    8b01
    asm("jmp                dword ptr [eax + 0x530]");                       // 0x007564c2    ffa030050000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AddResource__8VillagerF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x007564d0    8b442404
    asm("test               eax, eax");                                      // 0x007564d4    85c0
    asm("push               esi");                                           // 0x007564d6    56
    asm("mov.s              esi, ecx");                                      // 0x007564d7    8bf1
    asm("{disp8} jne        _jmp_addr_0x007564ff");                          // 0x007564d9    7524
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x007564db    8b44240c
    asm("push               eax");                                           // 0x007564df    50
    asm("call               ?PickupFood@Villager@@QAEXF@Z");                 // 0x007564e0    e8abafffff
    asm("{disp8} mov        al, byte ptr [esp + 0x14]");                     // 0x007564e5    8a442414
    asm("test               al, al");                                        // 0x007564e9    84c0
    asm("{disp8} je         _jmp_addr_0x00756512");                          // 0x007564eb    7425
    asm("mov                edx, dword ptr [esi]");                          // 0x007564ed    8b16
    asm("push               0x1");                                           // 0x007564ef    6a01
    asm("mov.s              ecx, esi");                                      // 0x007564f1    8bce
    asm("call               dword ptr [edx + 0x69c]");                       // 0x007564f3    ff929c060000
    asm("xor.s              eax, eax");                                      // 0x007564f9    33c0
    asm("pop                esi");                                           // 0x007564fb    5e
    asm("ret                0x0018");                                        // 0x007564fc    c21800
    asm("_jmp_addr_0x007564ff:");
    asm("cmp                eax, 0x01");                                     // 0x007564ff    83f801
    asm("{disp8} jne        _jmp_addr_0x00756512");                          // 0x00756502    750e
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00756504    8b44240c
    asm("push               0x0");                                           // 0x00756508    6a00
    asm("push               eax");                                           // 0x0075650a    50
    asm("mov.s              ecx, esi");                                      // 0x0075650b    8bce
    asm("call               ?PickupWood@Villager@@QAEXFE@Z");                // 0x0075650d    e89eafffff
    asm("_jmp_addr_0x00756512:");
    asm("xor.s              eax, eax");                                      // 0x00756512    33c0
    asm("pop                esi");                                           // 0x00756514    5e
    asm("ret                0x0018");                                        // 0x00756515    c21800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum VILLAGER_STATES __fastcall LookAtPreviousStateReactToTownEmergency__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                      // 0x00756520    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008e]");               // 0x00756522    8a818e000000
    asm("ret");                                                              // 0x00756528    c3
    __builtin_unreachable();
}

void __fastcall SetTown__8VillagerFP4Town(struct Villager* this, const void* edx, struct Town* town)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00756530    8b442404
    asm("{disp32} mov       dword ptr [ecx + 0x0000012c], eax");             // 0x00756534    89812c010000
    asm("ret                0x0004");                                        // 0x0075653a    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ScriptInCrowd__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00756540    56
    asm("mov.s              esi, ecx");                                      // 0x00756541    8bf1
    asm("push               0x1");                                           // 0x00756543    6a01
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x00756545    e81664e9ff
    asm("test               eax, eax");                                      // 0x0075654a    85c0
    asm("{disp8} je         _jmp_addr_0x0075655e");                          // 0x0075654c    7410
    asm("mov.s              ecx, esi");                                      // 0x0075654e    8bce
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                  // 0x00756550    e8bb65e9ff
    asm("{disp32} mov       word ptr [esi + 0x00000090], 0x0000");           // 0x00756555    66c786900000000000
    asm("_jmp_addr_0x0075655e:");
    asm("mov                eax, 0x00000001");                               // 0x0075655e    b801000000
    asm("pop                esi");                                           // 0x00756563    5e
    asm("ret");                                                              // 0x00756564    c3
    __builtin_unreachable();
}

bool32_t __fastcall SaveLanded__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    return 1;
}

bool32_t __fastcall LoadLanded__8VillagerFR10GameOSFile(struct Villager* this, const void* edx, struct GameOSFile* param_1)
{
    return 1;
}

__attribute__((XOR32rr_REV))
int __fastcall CallIntoAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("sub                esp, 0x10");                                     // 0x00756590    83ec10
    asm("xor.s              eax, eax");                                      // 0x00756593    33c0
    asm("push               esi");                                           // 0x00756595    56
    asm("mov.s              esi, ecx");                                      // 0x00756596    8bf1
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x00756598    8a868c000000
    asm("push               edi");                                           // 0x0075659e    57
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x0075659f    8d04c0
    asm("shl                eax, 4");                                        // 0x007565a2    c1e004
    asm("{disp32} lea       eax, dword ptr [eax + 0x00d09208]");             // 0x007565a5    8d800892d000
    asm("mov.s              edx, eax");                                      // 0x007565ab    8bd0
    asm("mov                ecx, dword ptr [edx]");                          // 0x007565ad    8b0a
    asm("test               ecx, ecx");                                      // 0x007565af    85c9
    asm("{disp8} mov        edi, dword ptr [edx + 0x04]");                   // 0x007565b1    8b7a04
    asm("{disp8} mov        dword ptr [esp + 0x0c], edi");                   // 0x007565b4    897c240c
    asm("{disp8} mov        edi, dword ptr [edx + 0x08]");                   // 0x007565b8    8b7a08
    asm("{disp8} mov        edx, dword ptr [edx + 0x0c]");                   // 0x007565bb    8b520c
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                   // 0x007565be    897c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x007565c2    89542414
    asm("{disp8} je         _jmp_addr_0x0075660f");                          // 0x007565c6    7447
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x007565c8    8b4804
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                   // 0x007565cb    8b7808
    asm("mov                edx, dword ptr [eax]");                          // 0x007565ce    8b10
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                   // 0x007565d0    8b400c
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x007565d3    89442414
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x007565d7    8b44241c
    asm("push               eax");                                           // 0x007565db    50
    asm("push               0x1");                                           // 0x007565dc    6a01
    asm("add.s              ecx, esi");                                      // 0x007565de    03ce
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                   // 0x007565e0    897c2418
    asm("call               edx");                                           // 0x007565e4    ffd2
    asm("cmp                eax, -0x01");                                    // 0x007565e6    83f8ff
    asm("{disp8} je         _jmp_addr_0x00756612");                          // 0x007565e9    7427
    asm("xor.s              ecx, ecx");                                      // 0x007565eb    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000e0]");               // 0x007565ed    668b8ee0000000
    asm("pop                edi");                                           // 0x007565f4    5f
    asm("and                ecx, 0x0000efff");                               // 0x007565f5    81e1ffef0000
    asm("or                 ecx, 0x800");                                    // 0x007565fb    81c900080000
    asm("{disp32} mov       word ptr [esi + 0x000000e0], cx");               // 0x00756601    66898ee0000000
    asm("pop                esi");                                           // 0x00756608    5e
    asm("add                esp, 0x10");                                     // 0x00756609    83c410
    asm("ret                0x0004");                                        // 0x0075660c    c20400
    asm("_jmp_addr_0x0075660f:");
    asm("or                 eax, -0x1");                                     // 0x0075660f    83c8ff
    asm("_jmp_addr_0x00756612:");
    asm("pop                edi");                                           // 0x00756612    5f
    asm("pop                esi");                                           // 0x00756613    5e
    asm("add                esp, 0x10");                                     // 0x00756614    83c410
    asm("ret                0x0004");                                        // 0x00756617    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall CallOutofAnimationFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("sub                esp, 0x10");                                     // 0x00756620    83ec10
    asm("push               ebx");                                           // 0x00756623    53
    asm("push               esi");                                           // 0x00756624    56
    asm("push               edi");                                           // 0x00756625    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x00756626    8b7c2420
    asm("mov.s              esi, ecx");                                      // 0x0075662a    8bf1
    asm("mov.s              eax, edi");                                      // 0x0075662c    8bc7
    asm("and                eax, 0x000000ff");                               // 0x0075662e    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00756633    8d0c40
    asm("shl                ecx, 3");                                        // 0x00756636    c1e103
    asm("sub.s              ecx, eax");                                      // 0x00756639    2bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x0075663b    8d0449
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f68]");       // 0x0075663e    8b0c85689fdb00
    asm("test               ecx, ecx");                                      // 0x00756645    85c9
    asm("{disp8} jne        _jmp_addr_0x007566a9");                          // 0x00756647    7560
    asm("xor.s              eax, eax");                                      // 0x00756649    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x0075664b    8a868c000000
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");              // 0x00756651    8d0cc0
    asm("shl                ecx, 4");                                        // 0x00756654    c1e104
    asm("{disp32} lea       eax, dword ptr [ecx + 0x00d09208]");             // 0x00756657    8d810892d000
    asm("mov.s              edx, eax");                                      // 0x0075665d    8bd0
    asm("mov                ecx, dword ptr [edx]");                          // 0x0075665f    8b0a
    asm("test               ecx, ecx");                                      // 0x00756661    85c9
    asm("{disp8} mov        ebx, dword ptr [edx + 0x04]");                   // 0x00756663    8b5a04
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x00756666    895c2410
    asm("{disp8} mov        ebx, dword ptr [edx + 0x08]");                   // 0x0075666a    8b5a08
    asm("{disp8} mov        edx, dword ptr [edx + 0x0c]");                   // 0x0075666d    8b520c
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x00756670    895c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00756674    89542418
    asm("{disp8} je         _jmp_addr_0x007566a9");                          // 0x00756678    742f
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075667a    8b4804
    asm("{disp8} mov        ebx, dword ptr [eax + 0x08]");                   // 0x0075667d    8b5808
    asm("mov                edx, dword ptr [eax]");                          // 0x00756680    8b10
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                   // 0x00756682    8b400c
    asm("push               edi");                                           // 0x00756685    57
    asm("push               0x0");                                           // 0x00756686    6a00
    asm("add.s              ecx, esi");                                      // 0x00756688    03ce
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebx");                   // 0x0075668a    895c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075668e    89442420
    asm("call               edx");                                           // 0x00756692    ffd2
    asm("cmp                eax, -0x01");                                    // 0x00756694    83f8ff
    asm("{disp8} je         _jmp_addr_0x007566ac");                          // 0x00756697    7413
    asm("or                 byte ptr [esi + 0xe1], 0x18");                   // 0x00756699    808ee100000018
    asm("pop                edi");                                           // 0x007566a0    5f
    asm("pop                esi");                                           // 0x007566a1    5e
    asm("pop                ebx");                                           // 0x007566a2    5b
    asm("add                esp, 0x10");                                     // 0x007566a3    83c410
    asm("ret                0x0004");                                        // 0x007566a6    c20400
    asm("_jmp_addr_0x007566a9:");
    asm("or                 eax, -0x1");                                     // 0x007566a9    83c8ff
    asm("_jmp_addr_0x007566ac:");
    asm("pop                edi");                                           // 0x007566ac    5f
    asm("pop                esi");                                           // 0x007566ad    5e
    asm("pop                ebx");                                           // 0x007566ae    5b
    asm("add                esp, 0x10");                                     // 0x007566af    83c410
    asm("ret                0x0004");                                        // 0x007566b2    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct MissionaryControl* __fastcall __ct__17MissionaryControlFv(struct MissionaryControl* this)
{
    asm("push               esi");                                           // 0x007566c0    56
    asm("push               edi");                                           // 0x007566c1    57
    asm("mov.s              esi, ecx");                                      // 0x007566c2    8bf1
    asm("call               ??0GameThing@@QAE@XZ");                          // 0x007566c4    e84793e1ff
    asm("xor.s              edi, edi");                                      // 0x007566c9    33ff
    asm("{disp8} mov        dword ptr [esi + 0x14], edi");                   // 0x007566cb    897e14
    asm("{disp8} mov        dword ptr [esi + 0x18], edi");                   // 0x007566ce    897e18
    asm("{disp8} mov        dword ptr [esi + 0x1c], edi");                   // 0x007566d1    897e1c
    asm("{disp8} mov        dword ptr [esi + 0x20], edi");                   // 0x007566d4    897e20
    asm("mov.s              ecx, esi");                                      // 0x007566d7    8bce
    asm("mov                dword ptr [esi], 0x008c31a0");                   // 0x007566d9    c706a0318c00
    asm("call               ?SetToZero@GameThingWithPos@@QAEXXZ");           // 0x007566df    e8ec9ee1ff
    asm("{disp8} mov        dword ptr [esi + 0x30], edi");                   // 0x007566e4    897e30
    asm("pop                edi");                                           // 0x007566e7    5f
    asm("mov                dword ptr [esi], 0x0099a424");                   // 0x007566e8    c70624a49900
    asm("mov.s              eax, esi");                                      // 0x007566ee    8bc6
    asm("pop                esi");                                           // 0x007566f0    5e
    asm("ret");                                                              // 0x007566f1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayer__17MissionaryControlFv(struct GameThing* this)
{
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x2c]");                   // 0x00756700    8b492c
    asm("test               ecx, ecx");                                      // 0x00756703    85c9
    asm("{disp8} je         _jmp_addr_0x0075670c");                          // 0x00756705    7405
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756707    8b01
    asm("{disp8} jmp        dword ptr [eax + 0x1c]");                        // 0x00756709    ff601c
    asm("_jmp_addr_0x0075670c:");
    asm("xor.s              eax, eax");                                      // 0x0075670c    33c0
    asm("ret");                                                              // 0x0075670e    c3
    __builtin_unreachable();
}

const char* __fastcall GetText__17MissionaryControlFv(struct GameThingWithPos* this)
{
    return (const char*)0xc236b8;
}

uint32_t __fastcall GetSaveType__17MissionaryControlFv(struct GameThing* this)
{
    return 0x9e;
}

char* __fastcall GetDebugText__17MissionaryControlFv(struct GameThing* this)
{
    return (char*)0xc236cc;
}

void __fastcall __dt__17MissionaryControlFUi(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                           // 0x00756740    56
    asm("mov.s              esi, ecx");                                      // 0x00756741    8bf1
    asm("call               ??1MissionaryControl@@UAE@XZ");                  // 0x00756743    e868000000
    asm("test               byte ptr [esp + 0x08], 0x01");                   // 0x00756748    f644240801
    asm("{disp8} je         _jmp_addr_0x0075675a");                          // 0x0075674d    740b
    asm("push               0x34");                                          // 0x0075674f    6a34
    asm("push               esi");                                           // 0x00756751    56
    asm("call               ??3Base@@SAXPAXK@Z");                          // 0x00756752    e81902ceff
    asm("add                esp, 0x08");                                     // 0x00756757    83c408
    asm("_jmp_addr_0x0075675a:");
    asm("mov.s              eax, esi");                                      // 0x0075675a    8bc6
    asm("pop                esi");                                           // 0x0075675c    5e
    asm("ret                0x0004");                                        // 0x0075675d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct MissionaryControl* __fastcall __ct__17MissionaryControlFP8VillagerP7GPlayer(struct MissionaryControl* this, const void* edx, struct Villager* param_1, struct GPlayer* param_2)
{
    asm("push               esi");                                           // 0x00756760    56
    asm("push               edi");                                           // 0x00756761    57
    asm("mov.s              esi, ecx");                                      // 0x00756762    8bf1
    asm("call               ??0GameThing@@QAE@XZ");                          // 0x00756764    e8a792e1ff
    asm("xor.s              edi, edi");                                      // 0x00756769    33ff
    asm("{disp8} mov        dword ptr [esi + 0x14], edi");                   // 0x0075676b    897e14
    asm("{disp8} mov        dword ptr [esi + 0x18], edi");                   // 0x0075676e    897e18
    asm("{disp8} mov        dword ptr [esi + 0x1c], edi");                   // 0x00756771    897e1c
    asm("{disp8} mov        dword ptr [esi + 0x20], edi");                   // 0x00756774    897e20
    asm("mov.s              ecx, esi");                                      // 0x00756777    8bce
    asm("mov                dword ptr [esi], 0x008c31a0");                   // 0x00756779    c706a0318c00
    asm("call               ?SetToZero@GameThingWithPos@@QAEXXZ");           // 0x0075677f    e84c9ee1ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00756784    8b4c2410
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00756788    8b44240c
    asm("push               edi");                                           // 0x0075678c    57
    asm("push               ecx");                                           // 0x0075678d    51
    asm("{disp8} mov        dword ptr [esi + 0x30], edi");                   // 0x0075678e    897e30
    asm("push               0x27");                                          // 0x00756791    6a27
    asm("push               esi");                                           // 0x00756793    56
    asm("mov                dword ptr [esi], 0x0099a424");                   // 0x00756794    c70624a49900
    asm("{disp8} mov        dword ptr [esi + 0x28], eax");                   // 0x0075679a    894628
    asm("call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");              // 0x0075679d    e8ced5f8ff
    asm("add                esp, 0x10");                                     // 0x007567a2    83c410
    asm("{disp8} mov        dword ptr [esi + 0x2c], eax");                   // 0x007567a5    89462c
    asm("pop                edi");                                           // 0x007567a8    5f
    asm("mov.s              eax, esi");                                      // 0x007567a9    8bc6
    asm("pop                esi");                                           // 0x007567ab    5e
    asm("ret                0x0008");                                        // 0x007567ac    c20800
    __builtin_unreachable();
}

void __fastcall __dt__17MissionaryControlFv(struct MissionaryControl* this)
{
    asm("mov                dword ptr [ecx], 0x0099a424");                   // 0x007567b0    c70124a49900
    asm("{disp32} jmp       _jmp_addr_0x0056fa80");                          // 0x007567b6    e9c592e1ff
    __builtin_unreachable();
}

float __fastcall GetImpressiveValue__17MissionaryControlFv(struct MissionaryControl* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x007567c0    8b4128
    asm("test               eax, eax");                                      // 0x007567c3    85c0
    asm("{disp8} je         _jmp_addr_0x007567d7");                          // 0x007567c5    7410
    asm("{disp32} fld       dword ptr [data_bytes + 0x35428c]");             // 0x007567c7    d9058ca2d100
    asm("{disp8} mov        eax, dword ptr [eax + 0x28]");                   // 0x007567cd    8b4028
    asm("{disp32} fmul      dword ptr [eax + 0x000003a0]");                  // 0x007567d0    d888a0030000
    asm("ret");                                                              // 0x007567d6    c3
    asm("_jmp_addr_0x007567d7:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x007567d7    d90598a38a00
    asm("ret");                                                              // 0x007567dd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall Process__17MissionaryControlFv(struct MissionaryControl* this)
{
    asm("push               esi");                                           // 0x007567e0    56
    asm("mov.s              esi, ecx");                                      // 0x007567e1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007567e3    8b4e28
    asm("push               edi");                                           // 0x007567e6    57
    asm("xor.s              edi, edi");                                      // 0x007567e7    33ff
    asm("cmp.s              ecx, edi");                                      // 0x007567e9    3bcf
    asm("{disp8} je         _jmp_addr_0x007567f2");                          // 0x007567eb    7405
    asm("cmp                dword ptr [esi + 0x2c], edi");                   // 0x007567ed    397e2c
    asm("{disp8} jne        _jmp_addr_0x007567fd");                          // 0x007567f0    750b
    asm("_jmp_addr_0x007567f2:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007567f2    8b06
    asm("push               edi");                                           // 0x007567f4    57
    asm("mov.s              ecx, esi");                                      // 0x007567f5    8bce
    asm("call               dword ptr [eax + 0xc]");                         // 0x007567f7    ff500c
    asm("pop                edi");                                           // 0x007567fa    5f
    asm("pop                esi");                                           // 0x007567fb    5e
    asm("ret");                                                              // 0x007567fc    c3
    asm("_jmp_addr_0x007567fd:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x007567fd    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x007567ff    ff522c
    asm("cmp                eax, 0x01");                                     // 0x00756802    83f801
    asm("{disp8} jne        _jmp_addr_0x00756845");                          // 0x00756805    753e
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00756807    8b4628
    asm("cmp                byte ptr [eax + 0x000000f2], 0x07");             // 0x0075680a    80b8f200000007
    asm("{disp8} jne        _jmp_addr_0x00756845");                          // 0x00756811    7532
    asm("{disp8} mov        ecx, dword ptr [esi + 0x2c]");                   // 0x00756813    8b4e2c
    asm("mov                edx, dword ptr [ecx]");                          // 0x00756816    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00756818    ff522c
    asm("cmp                eax, 0x01");                                     // 0x0075681b    83f801
    asm("{disp8} je         _jmp_addr_0x00756831");                          // 0x0075681e    7411
    asm("mov                eax, dword ptr [esi]");                          // 0x00756820    8b06
    asm("push               edi");                                           // 0x00756822    57
    asm("mov.s              ecx, esi");                                      // 0x00756823    8bce
    asm("call               dword ptr [eax + 0xc]");                         // 0x00756825    ff500c
    asm("{disp8} mov        dword ptr [esi + 0x28], edi");                   // 0x00756828    897e28
    asm("{disp8} mov        dword ptr [esi + 0x2c], edi");                   // 0x0075682b    897e2c
    asm("pop                edi");                                           // 0x0075682e    5f
    asm("pop                esi");                                           // 0x0075682f    5e
    asm("ret");                                                              // 0x00756830    c3
    asm("_jmp_addr_0x00756831:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00756831    8b4628
    asm("mov                edx, dword ptr [esi]");                          // 0x00756834    8b16
    asm("add                eax, 0x14");                                     // 0x00756836    83c014
    asm("push               eax");                                           // 0x00756839    50
    asm("mov.s              ecx, esi");                                      // 0x0075683a    8bce
    asm("call               dword ptr [edx + 0xfc]");                        // 0x0075683c    ff92fc000000
    asm("pop                edi");                                           // 0x00756842    5f
    asm("pop                esi");                                           // 0x00756843    5e
    asm("ret");                                                              // 0x00756844    c3
    asm("_jmp_addr_0x00756845:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00756845    8b16
    asm("push               edi");                                           // 0x00756847    57
    asm("mov.s              ecx, esi");                                      // 0x00756848    8bce
    asm("call               dword ptr [edx + 0xc]");                         // 0x0075684a    ff520c
    asm("{disp8} mov        ecx, dword ptr [esi + 0x2c]");                   // 0x0075684d    8b4e2c
    asm("{disp8} mov        dword ptr [esi + 0x28], edi");                   // 0x00756850    897e28
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756853    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00756855    ff502c
    asm("test               eax, eax");                                      // 0x00756858    85c0
    asm("{disp8} je         _jmp_addr_0x00756865");                          // 0x0075685a    7409
    asm("{disp8} mov        ecx, dword ptr [esi + 0x2c]");                   // 0x0075685c    8b4e2c
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075685f    8b11
    asm("push               edi");                                           // 0x00756861    57
    asm("call               dword ptr [edx + 0xc]");                         // 0x00756862    ff520c
    asm("_jmp_addr_0x00756865:");
    asm("{disp8} mov        dword ptr [esi + 0x2c], edi");                   // 0x00756865    897e2c
    asm("pop                edi");                                           // 0x00756868    5f
    asm("pop                esi");                                           // 0x00756869    5e
    asm("ret");                                                              // 0x0075686a    c3
    __builtin_unreachable();
}

void __fastcall ToBeDeleted__17MissionaryControlFi(struct Base* this, const void* edx, int param_1)
{
    asm("push               esi");                                           // 0x00756870    56
    asm("mov.s              esi, ecx");                                      // 0x00756871    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00756873    8b4e28
    asm("test               ecx, ecx");                                      // 0x00756876    85c9
    asm("{disp8} je         _jmp_addr_0x0075688e");                          // 0x00756878    7414
    asm("cmp                byte ptr [ecx + 0x000000f2], 0x07");             // 0x0075687a    80b9f200000007
    asm("{disp8} jne        _jmp_addr_0x0075688e");                          // 0x00756881    750b
    asm("push               0x0");                                           // 0x00756883    6a00
    asm("push               0x0");                                           // 0x00756885    6a00
    asm("push               0x0");                                           // 0x00756887    6a00
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                          // 0x00756889    e872f7ffff
    asm("_jmp_addr_0x0075688e:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0075688e    8b442408
    asm("push               eax");                                           // 0x00756892    50
    asm("mov.s              ecx, esi");                                      // 0x00756893    8bce
    asm("call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z");        // 0x00756895    e86695e1ff
    asm("pop                esi");                                           // 0x0075689a    5e
    asm("ret                0x0004");                                        // 0x0075689b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Load__17MissionaryControlFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push               esi");                                           // 0x007568a0    56
    asm("push               edi");                                           // 0x007568a1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x007568a2    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x007568a6    8bf1
    asm("push               edi");                                           // 0x007568a8    57
    asm("call               ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z"); // 0x007568a9    e8f29be1ff
    asm("test               eax, eax");                                      // 0x007568ae    85c0
    asm("{disp8} je         _jmp_addr_0x007568d2");                          // 0x007568b0    7420
    asm("{disp8} lea        eax, dword ptr [esi + 0x28]");                   // 0x007568b2    8d4628
    asm("push               eax");                                           // 0x007568b5    50
    asm("mov.s              ecx, edi");                                      // 0x007568b6    8bcf
    asm("call               @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x007568b8    e8c3b8e0ff
    asm("add                esi, 0x2c");                                     // 0x007568bd    83c62c
    asm("push               esi");                                           // 0x007568c0    56
    asm("mov.s              ecx, edi");                                      // 0x007568c1    8bcf
    asm("call               @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x007568c3    e8b8b8e0ff
    asm("pop                edi");                                           // 0x007568c8    5f
    asm("mov                eax, 0x00000001");                               // 0x007568c9    b801000000
    asm("pop                esi");                                           // 0x007568ce    5e
    asm("ret                0x0004");                                        // 0x007568cf    c20400
    asm("_jmp_addr_0x007568d2:");
    asm("pop                edi");                                           // 0x007568d2    5f
    asm("xor.s              eax, eax");                                      // 0x007568d3    33c0
    asm("pop                esi");                                           // 0x007568d5    5e
    asm("ret                0x0004");                                        // 0x007568d6    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Save__17MissionaryControlFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1)
{
    asm("push               esi");                                           // 0x007568e0    56
    asm("push               edi");                                           // 0x007568e1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x007568e2    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x007568e6    8bf1
    asm("push               edi");                                           // 0x007568e8    57
    asm("call               ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z"); // 0x007568e9    e8029be1ff
    asm("test               eax, eax");                                      // 0x007568ee    85c0
    asm("{disp8} je         _jmp_addr_0x00756912");                          // 0x007568f0    7420
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x007568f2    8b4628
    asm("push               eax");                                           // 0x007568f5    50
    asm("mov.s              ecx, edi");                                      // 0x007568f6    8bcf
    asm("call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x007568f8    e813b5e0ff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x2c]");                   // 0x007568fd    8b4e2c
    asm("push               ecx");                                           // 0x00756900    51
    asm("mov.s              ecx, edi");                                      // 0x00756901    8bcf
    asm("call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");    // 0x00756903    e808b5e0ff
    asm("pop                edi");                                           // 0x00756908    5f
    asm("mov                eax, 0x00000001");                               // 0x00756909    b801000000
    asm("pop                esi");                                           // 0x0075690e    5e
    asm("ret                0x0004");                                        // 0x0075690f    c20400
    asm("_jmp_addr_0x00756912:");
    asm("pop                edi");                                           // 0x00756912    5f
    asm("xor.s              eax, eax");                                      // 0x00756913    33c0
    asm("pop                esi");                                           // 0x00756915    5e
    asm("ret                0x0004");                                        // 0x00756916    c20400
    __builtin_unreachable();
}

float __fastcall GetImpressiveValue__17MissionaryControlFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2)
{
    asm("push               ebx");                                           // 0x00756920    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x0c]");                   // 0x00756921    8b5c240c
    asm("push               esi");                                           // 0x00756925    56
    asm("push               edi");                                           // 0x00756926    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00756927    8b7c2410
    asm("mov.s              esi, ecx");                                      // 0x0075692b    8bf1
    asm("push               edi");                                           // 0x0075692d    57
    asm("mov.s              ecx, ebx");                                      // 0x0075692e    8bcb
    asm("call               _jmp_addr_0x006e48a0");                          // 0x00756930    e86bdff8ff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00756935    d95c2410
    asm("mov.s              ecx, esi");                                      // 0x00756939    8bce
    asm("call               ?GetImpressiveValue@MissionaryControl@@QAEMXZ"); // 0x0075693b    e880feffff
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00756940    d84c2410
    asm("add                esi, 0x14");                                     // 0x00756944    83c614
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x00756947    8d4714
    asm("push               esi");                                           // 0x0075694a    56
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0075694b    d95c2418
    asm("push               eax");                                           // 0x0075694f    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00756950    e81b64ffff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00756955    d95c2418
    asm("add                esp, 0x08");                                     // 0x00756959    83c408
    asm("mov.s              ecx, ebx");                                      // 0x0075695c    8bcb
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x0075695e    e89dddf8ff
    asm("{disp8} mov        ecx, dword ptr [eax + 0x2c]");                   // 0x00756963    8b482c
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00756966    8b542410
    asm("push               ecx");                                           // 0x0075696a    51
    asm("push               edx");                                           // 0x0075696b    52
    asm("call               _jmp_addr_0x00438770");                          // 0x0075696c    e8ff1dceff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00756971    d95c2418
    asm("add                esp, 0x08");                                     // 0x00756975    83c408
    asm("push               ebx");                                           // 0x00756978    53
    asm("mov.s              ecx, edi");                                      // 0x00756979    8bcf
    asm("call               _jmp_addr_0x0056fe70");                          // 0x0075697b    e8f094e1ff
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00756980    d84c2410
    asm("pop                edi");                                           // 0x00756984    5f
    asm("pop                esi");                                           // 0x00756985    5e
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00756986    d84c240c
    asm("pop                ebx");                                           // 0x0075698a    5b
    asm("ret                0x0008");                                        // 0x0075698b    c20800
    __builtin_unreachable();
}

void __fastcall FUN_00756990__8VillagerFv(struct MissionaryControl* this)
{
    return;
}

void __fastcall MoveToObjectValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007569a0    56
    asm("mov.s              esi, ecx");                                      // 0x007569a1    8bf1
    asm("call               ?FUN_00756990@Villager@@QAEXXZ");                // 0x007569a3    e8e8ffffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x60]");                   // 0x007569a8    8b4e60
    asm("test               ecx, ecx");                                      // 0x007569ab    85c9
    asm("{disp8} je         _jmp_addr_0x007569c0");                          // 0x007569ad    7411
    asm("mov                eax, dword ptr [ecx]");                          // 0x007569af    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x007569b1    ff502c
    asm("cmp                eax, 0x01");                                     // 0x007569b4    83f801
    asm("{disp8} je         _jmp_addr_0x007569c0");                          // 0x007569b7    7407
    asm("{disp8} mov        dword ptr [esi + 0x60], 0x00000000");            // 0x007569b9    c7466000000000
    asm("_jmp_addr_0x007569c0:");
    asm("pop                esi");                                           // 0x007569c0    5e
    asm("ret");                                                              // 0x007569c1    c3
    __builtin_unreachable();
}

void __fastcall MoveOnStructureValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007569d0    56
    asm("mov.s              esi, ecx");                                      // 0x007569d1    8bf1
    asm("call               ?FUN_00756990@Villager@@QAEXXZ");                // 0x007569d3    e8b8ffffff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000c0]");             // 0x007569d8    8b8ec0000000
    asm("test               ecx, ecx");                                      // 0x007569de    85c9
    asm("{disp8} je         _jmp_addr_0x007569f5");                          // 0x007569e0    7413
    asm("mov                eax, dword ptr [ecx]");                          // 0x007569e2    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x007569e4    ff502c
    asm("test               eax, eax");                                      // 0x007569e7    85c0
    asm("{disp8} je         _jmp_addr_0x007569f5");                          // 0x007569e9    740a
    asm("{disp32} mov       dword ptr [esi + 0x000000c0], 0x00000000");      // 0x007569eb    c786c000000000000000
    asm("_jmp_addr_0x007569f5:");
    asm("pop                esi");                                           // 0x007569f5    5e
    asm("ret");                                                              // 0x007569f6    c3
    __builtin_unreachable();
}

void __fastcall ReactionValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00756a00    56
    asm("mov.s              esi, ecx");                                      // 0x00756a01    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00756a03    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00756a09    85c9
    asm("{disp8} je         _jmp_addr_0x00756a3d");                          // 0x00756a0b    7430
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756a0d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00756a0f    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00756a12    83f801
    asm("{disp8} jne        _jmp_addr_0x00756a3d");                          // 0x00756a15    7526
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000094]");             // 0x00756a17    8b8e94000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x24]");                   // 0x00756a1d    8b4124
    asm("lea                eax, dword ptr [eax + eax * 0x4]");              // 0x00756a20    8d0480
    asm("lea                edx, dword ptr [eax + eax * 0x4]");              // 0x00756a23    8d1480
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x00d4f6d8]");       // 0x00756a26    8b0495d8f6d400
    asm("test               eax, eax");                                      // 0x00756a2d    85c0
    asm("{disp8} je         _jmp_addr_0x00756a44");                          // 0x00756a2f    7413
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00756a31    8b86bc000000
    asm("test               byte ptr [eax + 0x24], 0x04");                   // 0x00756a37    f6402404
    asm("{disp8} je         _jmp_addr_0x00756a44");                          // 0x00756a3b    7407
    asm("_jmp_addr_0x00756a3d:");
    asm("mov.s              ecx, esi");                                      // 0x00756a3d    8bce
    asm("call               ?PopFromPrevious@Villager@@QAEXXZ");             // 0x00756a3f    e80cb4ffff
    asm("_jmp_addr_0x00756a44:");
    asm("pop                esi");                                           // 0x00756a44    5e
    asm("ret");                                                              // 0x00756a45    c3
    __builtin_unreachable();
}

void __fastcall SexValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00756a50    56
    asm("mov.s              esi, ecx");                                      // 0x00756a51    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00756a53    8b8e18010000
    asm("test               ecx, ecx");                                      // 0x00756a59    85c9
    asm("{disp8} je         _jmp_addr_0x00756a71");                          // 0x00756a5b    7414
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756a5d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00756a5f    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00756a62    83f801
    asm("{disp8} je         _jmp_addr_0x00756a71");                          // 0x00756a65    740a
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x00756a67    c7861801000000000000
    asm("_jmp_addr_0x00756a71:");
    asm("pop                esi");                                           // 0x00756a71    5e
    asm("ret");                                                              // 0x00756a72    c3
    __builtin_unreachable();
}

void __fastcall WallhugAndReactionValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00756a80    56
    asm("mov.s              esi, ecx");                                      // 0x00756a81    8bf1
    asm("call               ?FUN_00756990@Villager@@QAEXXZ");                // 0x00756a83    e808ffffff
    asm("mov.s              ecx, esi");                                      // 0x00756a88    8bce
    asm("call               ?ReactionValidate@Villager@@QAEXXZ");            // 0x00756a8a    e871ffffff
    asm("pop                esi");                                           // 0x00756a8f    5e
    asm("ret");                                                              // 0x00756a90    c3
    __builtin_unreachable();
}

void __fastcall ClosestObjectValidate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00756aa0    56
    asm("mov.s              esi, ecx");                                      // 0x00756aa1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");             // 0x00756aa3    8b8e18010000
    asm("test               ecx, ecx");                                      // 0x00756aa9    85c9
    asm("{disp8} je         _jmp_addr_0x00756ac1");                          // 0x00756aab    7414
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756aad    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00756aaf    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00756ab2    83f801
    asm("{disp8} je         _jmp_addr_0x00756ac1");                          // 0x00756ab5    740a
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");      // 0x00756ab7    c7861801000000000000
    asm("_jmp_addr_0x00756ac1:");
    asm("pop                esi");                                           // 0x00756ac1    5e
    asm("ret");                                                              // 0x00756ac2    c3
    __builtin_unreachable();
}

struct MapCoords* __fastcall GetFinalDestPos__8VillagerFP9MapCoords(struct Living* this, const void* edx, struct MapCoords* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00756ad0    8b442404
    asm("push               eax");                                           // 0x00756ad4    50
    asm("call               @GetFinalDestPos__6LivingFP9MapCoords@12");      // 0x00756ad5    e80657e9ff
    asm("ret                0x0004");                                        // 0x00756ada    c20400
    __builtin_unreachable();
}

uint32_t __fastcall ThrowObjectFromHand__8VillagerFP16GInterfaceStatusi(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, int param_2)
{
    asm("push               ebx");                                           // 0x00756ae0    53
    asm("push               esi");                                           // 0x00756ae1    56
    asm("mov.s              esi, ecx");                                      // 0x00756ae2    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00756ae4    8b06
    asm("push               edi");                                           // 0x00756ae6    57
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00756ae7    ff501c
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x00756aea    8b7c2414
    asm("test               edi, edi");                                      // 0x00756aee    85ff
    asm("{disp8} mov        ebx, dword ptr [esp + 0x10]");                   // 0x00756af0    8b5c2410
    asm("{disp8} je         _jmp_addr_0x00756b21");                          // 0x00756af4    742b
    asm("mov                edx, dword ptr [esi]");                          // 0x00756af6    8b16
    asm("mov.s              ecx, esi");                                      // 0x00756af8    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00756afa    ff521c
    asm("test               eax, eax");                                      // 0x00756afd    85c0
    asm("{disp8} je         _jmp_addr_0x00756b14");                          // 0x00756aff    7413
    asm("mov                eax, dword ptr [esi]");                          // 0x00756b01    8b06
    asm("push               ebx");                                           // 0x00756b03    53
    asm("mov.s              ecx, esi");                                      // 0x00756b04    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00756b06    ff501c
    asm("mov.s              ecx, eax");                                      // 0x00756b09    8bc8
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                          // 0x00756b0b    e8406cefff
    asm("test               eax, eax");                                      // 0x00756b10    85c0
    asm("{disp8} je         _jmp_addr_0x00756b21");                          // 0x00756b12    740d
    asm("_jmp_addr_0x00756b14:");
    asm("push               0x0");                                           // 0x00756b14    6a00
    asm("push               0x0");                                           // 0x00756b16    6a00
    asm("push               0x0");                                           // 0x00756b18    6a00
    asm("mov.s              ecx, esi");                                      // 0x00756b1a    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                          // 0x00756b1c    e8dff4ffff
    asm("_jmp_addr_0x00756b21:");
    asm("push               edi");                                           // 0x00756b21    57
    asm("push               ebx");                                           // 0x00756b22    53
    asm("mov.s              ecx, esi");                                      // 0x00756b23    8bce
    asm("call               ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z");                          // 0x00756b25    e8b61aeeff
    asm("pop                edi");                                           // 0x00756b2a    5f
    asm("pop                esi");                                           // 0x00756b2b    5e
    asm("pop                ebx");                                           // 0x00756b2c    5b
    asm("ret                0x0008");                                        // 0x00756b2d    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsDrowning__8VillagerFv(struct GameThingWithPos* this)
{
    asm("{disp32} mov       dl, byte ptr [ecx + 0x0000008c]");               // 0x00756b30    8a918c000000
    asm("xor.s              eax, eax");                                      // 0x00756b36    33c0
    asm("cmp                dl, 0x10");                                      // 0x00756b38    80fa10
    asm("sete               al");                                            // 0x00756b3b    0f94c0
    asm("ret");                                                              // 0x00756b3e    c3
    __builtin_unreachable();
}

void __fastcall SetLife__8VillagerFf(struct Object* this, const void* edx, float param_1)
{
    asm("push               esi");                                           // 0x00756b40    56
    asm("mov.s              esi, ecx");                                      // 0x00756b41    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00756b43    8b06
    asm("call               dword ptr [eax + 0x11c]");                       // 0x00756b45    ff901c010000
    asm("{disp32} fcomp     dword ptr [__real@3f333333]");                   // 0x00756b4b    d81d38b28a00
    asm("fnstsw             ax");                                            // 0x00756b51    dfe0
    asm("test               ah, 0x41");                                      // 0x00756b53    f6c441
    asm("{disp8} jne        _jmp_addr_0x00756b80");                          // 0x00756b56    7528
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00756b58    d9442408
    asm("{disp32} fcomp     dword ptr [__real@3f333333]");                   // 0x00756b5c    d81d38b28a00
    asm("fnstsw             ax");                                            // 0x00756b62    dfe0
    asm("test               ah, 0x01");                                      // 0x00756b64    f6c401
    asm("{disp8} je         _jmp_addr_0x00756b80");                          // 0x00756b67    7417
    asm("mov.s              ecx, esi");                                      // 0x00756b69    8bce
    asm("call               ?FUN_00756bc0@Villager@@UAEXM@Z");               // 0x00756b6b    e850000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00756b70    8b442408
    asm("push               eax");                                           // 0x00756b74    50
    asm("mov.s              ecx, esi");                                      // 0x00756b75    8bce
    asm("call               @SetLife__6ObjectFf@12");                        // 0x00756b77    e8c435eeff
    asm("pop                esi");                                           // 0x00756b7c    5e
    asm("ret                0x0004");                                        // 0x00756b7d    c20400
    asm("_jmp_addr_0x00756b80:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00756b80    8b16
    asm("mov.s              ecx, esi");                                      // 0x00756b82    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x00756b84    ff921c010000
    asm("{disp32} fcomp     dword ptr [__real@3f333333]");                   // 0x00756b8a    d81d38b28a00
    asm("fnstsw             ax");                                            // 0x00756b90    dfe0
    asm("test               ah, 0x01");                                      // 0x00756b92    f6c401
    asm("{disp8} je         _jmp_addr_0x00756baf");                          // 0x00756b95    7418
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00756b97    d9442408
    asm("{disp32} fcomp     dword ptr [__real@3f333333]");                   // 0x00756b9b    d81d38b28a00
    asm("fnstsw             ax");                                            // 0x00756ba1    dfe0
    asm("test               ah, 0x41");                                      // 0x00756ba3    f6c441
    asm("{disp8} jne        _jmp_addr_0x00756baf");                          // 0x00756ba6    7507
    asm("mov.s              ecx, esi");                                      // 0x00756ba8    8bce
    asm("call               _jmp_addr_0x00756bd0");                          // 0x00756baa    e821000000
    asm("_jmp_addr_0x00756baf:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00756baf    8b442408
    asm("push               eax");                                           // 0x00756bb3    50
    asm("mov.s              ecx, esi");                                      // 0x00756bb4    8bce
    asm("call               @SetLife__6ObjectFf@12");                        // 0x00756bb6    e88535eeff
    asm("pop                esi");                                           // 0x00756bbb    5e
    asm("ret                0x0004");                                        // 0x00756bbc    c20400
    __builtin_unreachable();
}

void __fastcall FUN_00756bc0__8VillagerFf(struct Villager* this, const void* edx, float param_1)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756bc0    8b01
    asm("call               dword ptr [eax + 0x48]");                        // 0x00756bc2    ff5048
    asm("test               eax, eax");                                      // 0x00756bc5    85c0
    asm("{disp8} je         _jmp_addr_0x00756bcf");                          // 0x00756bc7    7406
    asm("{disp32} inc       dword ptr [eax + 0x00000714]");                  // 0x00756bc9    ff8014070000
    asm("_jmp_addr_0x00756bcf:");
    asm("ret");                                                              // 0x00756bcf    c3
    asm("_jmp_addr_0x00756bd0:");
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756bd0    8b01
    asm("call               dword ptr [eax + 0x48]");                        // 0x00756bd2    ff5048
    asm("test               eax, eax");                                      // 0x00756bd5    85c0
    asm("{disp8} je         _jmp_addr_0x00756bdf");                          // 0x00756bd7    7406
    asm("dec                dword ptr [eax + 0x00000714]");                  // 0x00756bd9    ff8814070000
    asm("_jmp_addr_0x00756bdf:");
    asm("ret");                                                              // 0x00756bdf    c3
    __builtin_unreachable();
}

void __fastcall FindChildrenAndOrphanThem__8VillagerFv(struct Villager* this)
{
    asm("push               ebp");                                           // 0x00756be0    55
    asm("push               esi");                                           // 0x00756be1    56
    asm("push               edi");                                           // 0x00756be2    57
    asm("mov.s              edi, ecx");                                      // 0x00756be3    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00756be5    8b07
    asm("call               dword ptr [eax + 0x48]");                        // 0x00756be7    ff5048
    asm("mov.s              ebp, eax");                                      // 0x00756bea    8be8
    asm("test               ebp, ebp");                                      // 0x00756bec    85ed
    asm("{disp8} je         _jmp_addr_0x00756c4e");                          // 0x00756bee    745e
    asm("push               ebx");                                           // 0x00756bf0    53
    asm("{disp32} mov       ebx, dword ptr [ebp + 0x00000754]");             // 0x00756bf1    8b9d54070000
    asm("test               ebx, ebx");                                      // 0x00756bf7    85db
    asm("{disp8} je         _jmp_addr_0x00756c29");                          // 0x00756bf9    742e
    asm("_jmp_addr_0x00756bfb:");
    asm("{disp32} mov       esi, dword ptr [ebx + 0x000000a0]");             // 0x00756bfb    8bb3a0000000
    asm("test               esi, esi");                                      // 0x00756c01    85f6
    asm("{disp8} je         _jmp_addr_0x00756c1f");                          // 0x00756c03    741a
    asm("_jmp_addr_0x00756c05:");
    asm("cmp                dword ptr [esi + 0x00000100], edi");             // 0x00756c05    39be00010000
    asm("{disp8} jne        _jmp_addr_0x00756c15");                          // 0x00756c0b    7508
    asm("push               edi");                                           // 0x00756c0d    57
    asm("mov.s              ecx, esi");                                      // 0x00756c0e    8bce
    asm("call               ?MakeChildOrphaned@Villager@@QAEIPAV1@@Z");      // 0x00756c10    e8bb140000
    asm("_jmp_addr_0x00756c15:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00756c15    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00756c1b    85f6
    asm("{disp8} jne        _jmp_addr_0x00756c05");                          // 0x00756c1d    75e6
    asm("_jmp_addr_0x00756c1f:");
    asm("{disp32} mov       ebx, dword ptr [ebx + 0x0000009c]");             // 0x00756c1f    8b9b9c000000
    asm("test               ebx, ebx");                                      // 0x00756c25    85db
    asm("{disp8} jne        _jmp_addr_0x00756bfb");                          // 0x00756c27    75d2
    asm("_jmp_addr_0x00756c29:");
    asm("{disp32} mov       esi, dword ptr [ebp + 0x00000768]");             // 0x00756c29    8bb568070000
    asm("test               esi, esi");                                      // 0x00756c2f    85f6
    asm("pop                ebx");                                           // 0x00756c31    5b
    asm("{disp8} je         _jmp_addr_0x00756c4e");                          // 0x00756c32    741a
    asm("_jmp_addr_0x00756c34:");
    asm("cmp                dword ptr [esi + 0x00000100], edi");             // 0x00756c34    39be00010000
    asm("{disp8} jne        _jmp_addr_0x00756c44");                          // 0x00756c3a    7508
    asm("push               edi");                                           // 0x00756c3c    57
    asm("mov.s              ecx, esi");                                      // 0x00756c3d    8bce
    asm("call               ?MakeChildOrphaned@Villager@@QAEIPAV1@@Z");      // 0x00756c3f    e88c140000
    asm("_jmp_addr_0x00756c44:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00756c44    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00756c4a    85f6
    asm("{disp8} jne        _jmp_addr_0x00756c34");                          // 0x00756c4c    75e6
    asm("_jmp_addr_0x00756c4e:");
    asm("pop                edi");                                           // 0x00756c4e    5f
    asm("pop                esi");                                           // 0x00756c4f    5e
    asm("pop                ebp");                                           // 0x00756c50    5d
    asm("ret");                                                              // 0x00756c51    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsMovingForAnimation__8VillagerFv(struct Living* this)
{
    asm("xor.s              eax, eax");                                      // 0x00756c60    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008c]");               // 0x00756c62    8a818c000000
    asm("mov.s              ecx, eax");                                      // 0x00756c68    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00756c6a    8d0449
    asm("shl                eax, 3");                                        // 0x00756c6d    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00756c70    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00756c72    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9e8c]");       // 0x00756c75    8b048d8c9edb00
    asm("ret");                                                              // 0x00756c7c    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00756c80(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00756c80    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00756c86    b001
    asm("test               al, cl");                                        // 0x00756c88    84c8
    asm("{disp8} jne        _jmp_addr_0x00756c94");                          // 0x00756c8a    7508
    asm("or.s               cl, al");                                        // 0x00756c8c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x00756c8e    880d34c9fa00
    asm("_jmp_addr_0x00756c94:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00756ca0");    // 0x00756c94    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00756ca0(void)
{
    asm("push               0x00407870");                                    // 0x00756ca0    6870784000
    asm("call               _atexit");                                       // 0x00756ca5    e8e7ea0600
    asm("pop                ecx");                                           // 0x00756caa    59
    asm("ret");                                                              // 0x00756cab    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00756cb0(void)
{
    asm("{disp32} jmp       _FUN_00756cc0__8VillagerFv");                    // 0x00756cb0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756cc0__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dc4], 0x3e000000"); // 0x00756cc0    c705c49ddb000000003e
    asm("ret");                                                              // 0x00756cca    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00756cd0(void)
{
    asm("{disp32} jmp       _FUN_00756ce0__8VillagerFv");                    // 0x00756cd0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756ce0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1928]");             // 0x00756ce0    d90528a99900
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00756ce6    d80db4a38a00
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3dc8]");             // 0x00756cec    d91dc89ddb00
    asm("ret");                                                              // 0x00756cf2    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00756d00(void)
{
    asm("{disp32} jmp       _FUN_00756d10__8VillagerFv");                    // 0x00756d00    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00756d10__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1930]");             // 0x00756d10    d90530a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf192c]");             // 0x00756d16    d80d2ca99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3dc0]");             // 0x00756d1c    d91dc09ddb00
    asm("ret");                                                              // 0x00756cf2    c3
    __builtin_unreachable();
}

void __fastcall InteractDecideWhatToDoForOtherVillager__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00756d30    83ec14
    asm("push               ebp");                                           // 0x00756d33    55
    asm("push               esi");                                           // 0x00756d34    56
    asm("push               edi");                                           // 0x00756d35    57
    asm("mov.s              edi, ecx");                                      // 0x00756d36    8bf9
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x00756d38    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x00756d3b    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00756d3d    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00756d40    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00756d43    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00756d47    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00756d4b    8944241c
    asm("mov                ebp, 0x00000009");                               // 0x00756d4f    bd09000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000001");            // 0x00756d54    c744241001000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000001");            // 0x00756d5c    c744240c01000000
    asm("_jmp_addr_0x00756d64:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00756d64    8d4c2414
    asm("call               ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ");         // 0x00756d68    e843c7eaff
    asm("mov.s              esi, eax");                                      // 0x00756d6d    8bf0
    asm("test               esi, esi");                                      // 0x00756d6f    85f6
    asm("{disp8} je         _jmp_addr_0x00756dc6");                          // 0x00756d71    7453
    asm("_jmp_addr_0x00756d73:");
    asm("cmp.s              esi, edi");                                      // 0x00756d73    3bf7
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d75    743d
    asm("mov                edx, dword ptr [esi]");                          // 0x00756d77    8b16
    asm("mov.s              ecx, esi");                                      // 0x00756d79    8bce
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00756d7b    ff522c
    asm("test               eax, eax");                                      // 0x00756d7e    85c0
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d80    7432
    asm("mov                eax, dword ptr [esi]");                          // 0x00756d82    8b06
    asm("mov.s              ecx, esi");                                      // 0x00756d84    8bce
    asm("call               dword ptr [eax + 0x208]");                       // 0x00756d86    ff9008020000
    asm("test               eax, eax");                                      // 0x00756d8c    85c0
    asm("{disp8} je         _jmp_addr_0x00756db4");                          // 0x00756d8e    7424
    asm("push               0x0");                                           // 0x00756d90    6a00
    asm("push               0x009c7fa0");                                    // 0x00756d92    68a07f9c00
    asm("push               0x009c7f50");                                    // 0x00756d97    68507f9c00
    asm("push               0x0");                                           // 0x00756d9c    6a00
    asm("push               esi");                                           // 0x00756d9e    56
    asm("call               ___RTDynamicCast");                              // 0x00756d9f    e875ec0600
    asm("add                esp, 0x14");                                     // 0x00756da4    83c414
    asm("push               eax");                                           // 0x00756da7    50
    asm("mov.s              ecx, edi");                                      // 0x00756da8    8bcf
    asm("call               ?CheckMoveHouse@Villager@@QAEIPAVObject@@@Z");   // 0x00756daa    e8d1030000
    asm("cmp                eax, 0x01");                                     // 0x00756daf    83f801
    asm("{disp8} je         _jmp_addr_0x00756dfc");                          // 0x00756db2    7448
    asm("_jmp_addr_0x00756db4:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00756db4    8d4c2414
    asm("push               ecx");                                           // 0x00756db8    51
    asm("mov.s              ecx, esi");                                      // 0x00756db9    8bce
    asm("call               @GetMapChild__6ObjectFRC9MapCoords@12");         // 0x00756dbb    e8a017eeff
    asm("mov.s              esi, eax");                                      // 0x00756dc0    8bf0
    asm("test               esi, esi");                                      // 0x00756dc2    85f6
    asm("{disp8} jne        _jmp_addr_0x00756d73");                          // 0x00756dc4    75ad
    asm("_jmp_addr_0x00756dc6:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x00756dc6    8d54240c
    asm("push               edx");                                           // 0x00756dca    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00756dcb    8d442414
    asm("push               eax");                                           // 0x00756dcf    50
    asm("dec                ebp");                                           // 0x00756dd0    4d
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00756dd1    e80a6affff
    asm("add                esp, 0x08");                                     // 0x00756dd6    83c408
    asm("push               eax");                                           // 0x00756dd9    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00756dda    8d4c2418
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x00756dde    e88de6eaff
    asm("test               ebp, ebp");                                      // 0x00756de3    85ed
    asm("{disp32} jne       _jmp_addr_0x00756d64");                          // 0x00756de5    0f8579ffffff
    asm("mov                edx, dword ptr [edi]");                          // 0x00756deb    8b17
    asm("mov.s              ecx, edi");                                      // 0x00756ded    8bcf
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x00756def    ff92c8080000
    asm("pop                edi");                                           // 0x00756df5    5f
    asm("pop                esi");                                           // 0x00756df6    5e
    asm("pop                ebp");                                           // 0x00756df7    5d
    asm("add                esp, 0x14");                                     // 0x00756df8    83c414
    asm("ret");                                                              // 0x00756dfb    c3
    asm("_jmp_addr_0x00756dfc:");
    asm("pop                edi");                                           // 0x00756dfc    5f
    asm("pop                esi");                                           // 0x00756dfd    5e
    asm("mov                eax, 0x00000001");                               // 0x00756dfe    b801000000
    asm("pop                ebp");                                           // 0x00756e03    5d
    asm("add                esp, 0x14");                                     // 0x00756e04    83c414
    asm("ret");                                                              // 0x00756e07    c3
    __builtin_unreachable();
}

void __fastcall InteractDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756e10    8b01
    asm("jmp                dword ptr [eax + 0x8c8]");                       // 0x00756e12    ffa0c8080000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetDiscipleInteractState__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                      // 0x00756e20    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000f2]");               // 0x00756e22    8a81f2000000
    asm("dec                eax");                                           // 0x00756e28    48
    asm("cmp                eax, 0x09");                                     // 0x00756e29    83f809
    asm("{disp8} ja         _jmp_addr_0x00756e53");                          // 0x00756e2c    7725
    asm("jmp                dword ptr [eax*4 + 0x756e58]");                  // 0x00756e2e    ff2485586e7500
    asm("mov                eax, 0x000000ad");                               // 0x00756e35    b8ad000000
    asm("ret");                                                              // 0x00756e3a    c3
    asm("mov                eax, 0x000000af");                               // 0x00756e3b    b8af000000
    asm("ret");                                                              // 0x00756e40    c3
    asm("mov                eax, 0x000000ae");                               // 0x00756e41    b8ae000000
    asm("ret");                                                              // 0x00756e46    c3
    asm("mov                eax, 0x000000b3");                               // 0x00756e47    b8b3000000
    asm("ret");                                                              // 0x00756e4c    c3
    asm("mov                eax, 0x000000ac");                               // 0x00756e4d    b8ac000000
    asm("ret");                                                              // 0x00756e52    c3
    asm("_jmp_addr_0x00756e53:");
    asm("xor.s              eax, eax");                                      // 0x00756e53    33c0
    asm("ret");                                                              // 0x00756e55    c3
    // Snippet: db, [0x00756e56, 0x00756e58)
    asm(".byte 0x8b, 0xff");                  // 0x00756e56
    // Snippet: jmptbl, [0x00756e58, 0x00756e80)
    asm(".byte 0x35, 0x6e, 0x75, 0x00");      // 0x00756e58
    asm(".byte 0x3b, 0x6e, 0x75, 0x00");      // 0x00756e5c
    asm(".byte 0x41, 0x6e, 0x75, 0x00");      // 0x00756e60
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e64
    asm(".byte 0x47, 0x6e, 0x75, 0x00");      // 0x00756e68
    asm(".byte 0x53, 0x6e, 0x75, 0x00");      // 0x00756e6c
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e70
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e74
    asm(".byte 0x53, 0x6e, 0x75, 0x00");      // 0x00756e78
    asm(".byte 0x4d, 0x6e, 0x75, 0x00");      // 0x00756e7c
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindCloseObjectsForInteract__8VillagerFP35LHOrderedLinkedList_12SortedObject_RC9MapCoords(struct Villager* this, const void* edx, struct LHOrderedLinkedList__SortedObject* param_1, const struct MapCoords* param_2)
{
    asm("sub                esp, 0x48");                                     // 0x00756e80    83ec48
    asm("{disp8} mov        eax, dword ptr [esp + 0x50]");                   // 0x00756e83    8b442450
    asm("push               ebx");                                           // 0x00756e87    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x50]");                   // 0x00756e88    8b5c2450
    asm("test               ebx, ebx");                                      // 0x00756e8c    85db
    asm("push               ebp");                                           // 0x00756e8e    55
    asm("mov.s              ebp, ecx");                                      // 0x00756e8f    8be9
    asm("mov                ecx, dword ptr [eax]");                          // 0x00756e91    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00756e93    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00756e96    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x2c], ebp");                   // 0x00756e99    896c242c
    asm("{disp8} mov        dword ptr [esp + 0x44], ecx");                   // 0x00756e9d    894c2444
    asm("{disp8} mov        dword ptr [esp + 0x48], edx");                   // 0x00756ea1    89542448
    asm("{disp8} mov        dword ptr [esp + 0x4c], eax");                   // 0x00756ea5    8944244c
    asm("{disp8} jne        _jmp_addr_0x00756eb5");                          // 0x00756ea9    750a
    asm("pop                ebp");                                           // 0x00756eab    5d
    asm("xor.s              eax, eax");                                      // 0x00756eac    33c0
    asm("pop                ebx");                                           // 0x00756eae    5b
    asm("add                esp, 0x48");                                     // 0x00756eaf    83c448
    asm("ret                0x0008");                                        // 0x00756eb2    c20800
    asm("_jmp_addr_0x00756eb5:");
    asm("push               esi");                                           // 0x00756eb5    56
    asm("mov                eax, 0x00000001");                               // 0x00756eb6    b801000000
    asm("push               edi");                                           // 0x00756ebb    57
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dcc], ebp");        // 0x00756ebc    892dcc9ddb00
    asm("xor.s              esi, esi");                                      // 0x00756ec2    33f6
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x00756ec4    8944243c
    asm("{disp8} mov        dword ptr [esp + 0x38], eax");                   // 0x00756ec8    89442438
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000009");            // 0x00756ecc    c744242009000000
    asm("_jmp_addr_0x00756ed4:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x4c]");                   // 0x00756ed4    8d4c244c
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                   // 0x00756ed8    e8e3d3eaff
    asm("test               eax, eax");                                      // 0x00756edd    85c0
    asm("{disp32} je        _jmp_addr_0x00757148");                          // 0x00756edf    0f8463020000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x40]");                   // 0x00756ee5    8d4c2440
    asm("push               ecx");                                           // 0x00756ee9    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x50]");                   // 0x00756eea    8d4c2450
    asm("call               @GetFirstIterator__9MapCoordsCFv@12");           // 0x00756eee    e8ddc5eaff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00756ef3    8b4c2440
    asm("test               ecx, ecx");                                      // 0x00756ef7    85c9
    asm("{disp32} je        _jmp_addr_0x00757148");                          // 0x00756ef9    0f8449020000
    asm("_jmp_addr_0x00756eff:");
    asm("cmp.s              ecx, ebp");                                      // 0x00756eff    3bcd
    asm("{disp32} je        _jmp_addr_0x0075710b");                          // 0x00756f01    0f8404020000
    asm("mov                edx, dword ptr [ecx]");                          // 0x00756f07    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00756f09    ff522c
    asm("test               eax, eax");                                      // 0x00756f0c    85c0
    asm("{disp32} je        _jmp_addr_0x00757107");                          // 0x00756f0e    0f84f3010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00756f14    8b4c2440
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00756f18    8b15cc9ddb00
    asm("mov                eax, dword ptr [ecx]");                          // 0x00756f1e    8b01
    asm("push               edx");                                           // 0x00756f20    52
    asm("mov.s              edi, ecx");                                      // 0x00756f21    8bf9
    asm("call               dword ptr [eax + 0x6c4]");                       // 0x00756f23    ff90c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00756f29    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00756f2f    dfe0
    asm("test               ah, 0x41");                                      // 0x00756f31    f6c441
    asm("{disp8} jne        _jmp_addr_0x00756f4d");                          // 0x00756f34    7517
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00756f36    8b0dcc9ddb00
    asm("mov                eax, dword ptr [edi]");                          // 0x00756f3c    8b07
    asm("push               ecx");                                           // 0x00756f3e    51
    asm("mov.s              ecx, edi");                                      // 0x00756f3f    8bcf
    asm("call               dword ptr [eax + 0x6c4]");                       // 0x00756f41    ff90c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00756f47    d95c2414
    asm("{disp8} jmp        _jmp_addr_0x00756f55");                          // 0x00756f4b    eb08
    asm("_jmp_addr_0x00756f4d:");
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00756f4d    c744241400000000
    asm("_jmp_addr_0x00756f55:");
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00756f55    8b5728
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00756f58    8b4c2414
    asm("{disp32} mov       eax, dword ptr [edx + 0x000000e0]");             // 0x00756f5c    8b82e0000000
    asm("push               0x40c00000");                                    // 0x00756f62    680000c040
    asm("push               ecx");                                           // 0x00756f67    51
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00756f68    8b0dcc9ddb00
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x00756f6e    8944242c
    asm("call               _jmp_addr_0x005eca20");                          // 0x00756f72    e8a95ae9ff
    asm("{disp8} fmul       dword ptr [esp + 0x24]");                        // 0x00756f77    d84c2424
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x00756f7b    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p001]");                 // 0x00756f7f    d81db0a38a00
    asm("fnstsw             ax");                                            // 0x00756f85    dfe0
    asm("test               ah, 0x41");                                      // 0x00756f87    f6c441
    asm("{disp32} jne       _jmp_addr_0x00757107");                          // 0x00756f8a    0f8577010000
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00756f90    8b542410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x60]");                   // 0x00756f94    8b4c2460
    asm("push               0x3f800000");                                    // 0x00756f98    680000803f
    asm("push               edx");                                           // 0x00756f9d    52
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x00756f9e    8d4714
    asm("push               eax");                                           // 0x00756fa1    50
    asm("push               ecx");                                           // 0x00756fa2    51
    asm("push               0xb");                                           // 0x00756fa3    6a0b
    asm("call               _jmp_addr_0x00648290");                          // 0x00756fa5    e8e612efff
    asm("push               0x8");                                           // 0x00756faa    6a08
    asm("call               ??2@YAPAXI@Z");                                  // 0x00756fac    e83df50600
    asm("xor.s              ebp, ebp");                                      // 0x00756fb1    33ed
    asm("add                esp, 0x18");                                     // 0x00756fb3    83c418
    asm("cmp.s              eax, ebp");                                      // 0x00756fb6    3bc5
    asm("{disp8} je         _jmp_addr_0x00756fc5");                          // 0x00756fb8    740b
    asm("mov                dword ptr [eax], edi");                          // 0x00756fba    8938
    asm("{disp8} mov        dword ptr [eax + 0x04], ebp");                   // 0x00756fbc    896804
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00756fbf    89442410
    asm("{disp8} jmp        _jmp_addr_0x00756fc9");                          // 0x00756fc3    eb04
    asm("_jmp_addr_0x00756fc5:");
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                   // 0x00756fc5    896c2410
    asm("_jmp_addr_0x00756fc9:");
    asm("mov                esi, dword ptr [ebx]");                          // 0x00756fc9    8b33
    asm("cmp.s              esi, ebp");                                      // 0x00756fcb    3bf5
    asm("{disp32} je        _jmp_addr_0x007570de");                          // 0x00756fcd    0f840b010000
    asm("_jmp_addr_0x00756fd3:");
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00756fd3    a1cc9ddb00
    asm("mov                edx, dword ptr [edi]");                          // 0x00756fd8    8b17
    asm("mov                ebx, dword ptr [esi]");                          // 0x00756fda    8b1e
    asm("push               eax");                                           // 0x00756fdc    50
    asm("mov.s              ecx, edi");                                      // 0x00756fdd    8bcf
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00756fdf    ff92c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00756fe5    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00756feb    dfe0
    asm("test               ah, 0x41");                                      // 0x00756fed    f6c441
    asm("{disp8} jne        _jmp_addr_0x00757008");                          // 0x00756ff0    7516
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00756ff2    a1cc9ddb00
    asm("mov                edx, dword ptr [edi]");                          // 0x00756ff7    8b17
    asm("push               eax");                                           // 0x00756ff9    50
    asm("mov.s              ecx, edi");                                      // 0x00756ffa    8bcf
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00756ffc    ff92c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00757002    d95c2418
    asm("{disp8} jmp        _jmp_addr_0x00757010");                          // 0x00757006    eb08
    asm("_jmp_addr_0x00757008:");
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x00757008    c744241800000000
    asm("_jmp_addr_0x00757010:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00757010    8b4f28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000000e0]");             // 0x00757013    8b91e0000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00757019    8b442418
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3dcc]");        // 0x0075701d    8b0dcc9ddb00
    asm("push               0x40c00000");                                    // 0x00757023    680000c040
    asm("push               eax");                                           // 0x00757028    50
    asm("{disp8} mov        dword ptr [esp + 0x34], edx");                   // 0x00757029    89542434
    asm("call               _jmp_addr_0x005eca20");                          // 0x0075702d    e8ee59e9ff
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00757032    d95c2428
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00757036    a1cc9ddb00
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075703b    8b13
    asm("push               eax");                                           // 0x0075703d    50
    asm("mov.s              ecx, ebx");                                      // 0x0075703e    8bcb
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x00757040    ff92c4060000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00757046    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075704c    dfe0
    asm("test               ah, 0x41");                                      // 0x0075704e    f6c441
    asm("{disp8} jne        _jmp_addr_0x00757069");                          // 0x00757051    7516
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00757053    a1cc9ddb00
    asm("mov                edx, dword ptr [ebx]");                          // 0x00757058    8b13
    asm("push               eax");                                           // 0x0075705a    50
    asm("mov.s              ecx, ebx");                                      // 0x0075705b    8bcb
    asm("call               dword ptr [edx + 0x6c4]");                       // 0x0075705d    ff92c4060000
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00757063    d95c241c
    asm("{disp8} jmp        _jmp_addr_0x00757071");                          // 0x00757067    eb08
    asm("_jmp_addr_0x00757069:");
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00757069    c744241c00000000
    asm("_jmp_addr_0x00757071:");
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00757071    d9442428
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x28]");                   // 0x00757075    8b4b28
    asm("{disp8} fmul       dword ptr [esp + 0x2c]");                        // 0x00757078    d84c242c
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000000e0]");             // 0x0075707c    8b91e0000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00757082    8b44241c
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3dcc]");        // 0x00757086    8b0dcc9ddb00
    asm("push               0x40c00000");                                    // 0x0075708c    680000c040
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00757091    d95c242c
    asm("push               eax");                                           // 0x00757095    50
    asm("{disp8} mov        dword ptr [esp + 0x38], edx");                   // 0x00757096    89542438
    asm("call               _jmp_addr_0x005eca20");                          // 0x0075709a    e88159e9ff
    asm("{disp8} fmul       dword ptr [esp + 0x30]");                        // 0x0075709f    d84c2430
    asm("{disp8} fcomp      dword ptr [esp + 0x28]");                        // 0x007570a3    d85c2428
    asm("fnstsw             ax");                                            // 0x007570a7    dfe0
    asm("test               ah, 0x01");                                      // 0x007570a9    f6c401
    asm("{disp8} jne        _jmp_addr_0x007570bc");                          // 0x007570ac    750e
    asm("mov.s              ebp, esi");                                      // 0x007570ae    8bee
    asm("{disp8} mov        esi, dword ptr [esi + 0x04]");                   // 0x007570b0    8b7604
    asm("test               esi, esi");                                      // 0x007570b3    85f6
    asm("{disp8} je         _jmp_addr_0x007570d6");                          // 0x007570b5    741f
    asm("{disp32} jmp       _jmp_addr_0x00756fd3");                          // 0x007570b7    e917ffffff
    asm("_jmp_addr_0x007570bc:");
    asm("test               ebp, ebp");                                      // 0x007570bc    85ed
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007570be    8b442410
    asm("{disp8} mov        dword ptr [eax + 0x04], esi");                   // 0x007570c2    897004
    asm("{disp8} jne        _jmp_addr_0x007570cf");                          // 0x007570c5    7508
    asm("{disp8} mov        ecx, dword ptr [esp + 0x5c]");                   // 0x007570c7    8b4c245c
    asm("mov                dword ptr [ecx], eax");                          // 0x007570cb    8901
    asm("{disp8} jmp        _jmp_addr_0x007570d2");                          // 0x007570cd    eb03
    asm("_jmp_addr_0x007570cf:");
    asm("{disp8} mov        dword ptr [ebp + 0x04], eax");                   // 0x007570cf    894504
    asm("_jmp_addr_0x007570d2:");
    asm("test               esi, esi");                                      // 0x007570d2    85f6
    asm("{disp8} jne        _jmp_addr_0x007570ed");                          // 0x007570d4    7517
    asm("_jmp_addr_0x007570d6:");
    asm("test               ebp, ebp");                                      // 0x007570d6    85ed
    asm("{disp8} jne        _jmp_addr_0x007570e6");                          // 0x007570d8    750c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x5c]");                   // 0x007570da    8b5c245c
    asm("_jmp_addr_0x007570de:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x007570de    8b542410
    asm("mov                dword ptr [ebx], edx");                          // 0x007570e2    8913
    asm("{disp8} jmp        _jmp_addr_0x007570f1");                          // 0x007570e4    eb0b
    asm("_jmp_addr_0x007570e6:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007570e6    8b442410
    asm("{disp8} mov        dword ptr [ebp + 0x04], eax");                   // 0x007570ea    894504
    asm("_jmp_addr_0x007570ed:");
    asm("{disp8} mov        ebx, dword ptr [esp + 0x5c]");                   // 0x007570ed    8b5c245c
    asm("_jmp_addr_0x007570f1:");
    asm("{disp8} mov        eax, dword ptr [ebx + 0x04]");                   // 0x007570f1    8b4304
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x007570f4    8b4c2440
    asm("{disp8} mov        ebp, dword ptr [esp + 0x34]");                   // 0x007570f8    8b6c2434
    asm("inc                eax");                                           // 0x007570fc    40
    asm("{disp8} mov        dword ptr [ebx + 0x04], eax");                   // 0x007570fd    894304
    asm("mov                esi, 0x00000001");                               // 0x00757100    be01000000
    asm("{disp8} jmp        _jmp_addr_0x0075710b");                          // 0x00757105    eb04
    asm("_jmp_addr_0x00757107:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00757107    8b4c2440
    asm("_jmp_addr_0x0075710b:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x48]");                   // 0x0075710b    8b442448
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075710f    8b11
    asm("push               eax");                                           // 0x00757111    50
    asm("call               dword ptr [edx + 0x53c]");                       // 0x00757112    ff923c050000
    asm("mov.s              ecx, eax");                                      // 0x00757118    8bc8
    asm("test               ecx, ecx");                                      // 0x0075711a    85c9
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                   // 0x0075711c    894c2440
    asm("{disp32} jne       _jmp_addr_0x00756eff");                          // 0x00757120    0f85d9fdffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                   // 0x00757126    8b442444
    asm("test               eax, eax");                                      // 0x0075712a    85c0
    asm("{disp8} je         _jmp_addr_0x00757148");                          // 0x0075712c    741a
    asm("{disp8} mov        ecx, dword ptr [esp + 0x48]");                   // 0x0075712e    8b4c2448
    asm("mov                ecx, dword ptr [ecx]");                          // 0x00757132    8b09
    asm("test               ecx, ecx");                                      // 0x00757134    85c9
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                   // 0x00757136    894c2440
    asm("{disp8} mov        dword ptr [esp + 0x44], 0x00000000");            // 0x0075713a    c744244400000000
    asm("{disp32} jne       _jmp_addr_0x00756eff");                          // 0x00757142    0f85b7fdffff
    asm("_jmp_addr_0x00757148:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x38]");                   // 0x00757148    8d542438
    asm("push               edx");                                           // 0x0075714c    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x0075714d    8d442440
    asm("push               eax");                                           // 0x00757151    50
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00757152    e88966ffff
    asm("add                esp, 0x08");                                     // 0x00757157    83c408
    asm("push               eax");                                           // 0x0075715a    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x50]");                   // 0x0075715b    8d4c2450
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x0075715f    e80ce3eaff
    asm("dec                dword ptr [esp + 0x20]");                        // 0x00757164    ff4c2420
    asm("{disp32} jne       _jmp_addr_0x00756ed4");                          // 0x00757168    0f8566fdffff
    asm("pop                edi");                                           // 0x0075716e    5f
    asm("mov.s              eax, esi");                                      // 0x0075716f    8bc6
    asm("pop                esi");                                           // 0x00757171    5e
    asm("pop                ebp");                                           // 0x00757172    5d
    asm("pop                ebx");                                           // 0x00757173    5b
    asm("add                esp, 0x48");                                     // 0x00757174    83c448
    asm("ret                0x0008");                                        // 0x00757177    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckMoveHouse__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* object)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00757180    8b442404
    asm("push               esi");                                           // 0x00757184    56
    asm("push               edi");                                           // 0x00757185    57
    asm("push               0x0");                                           // 0x00757186    6a00
    asm("push               0x009c7fa0");                                    // 0x00757188    68a07f9c00
    asm("push               0x009c7f50");                                    // 0x0075718d    68507f9c00
    asm("push               0x0");                                           // 0x00757192    6a00
    asm("push               eax");                                           // 0x00757194    50
    asm("mov.s              edi, ecx");                                      // 0x00757195    8bf9
    asm("call               ___RTDynamicCast");                              // 0x00757197    e87de80600
    asm("mov.s              esi, eax");                                      // 0x0075719c    8bf0
    asm("add                esp, 0x14");                                     // 0x0075719e    83c414
    asm("test               esi, esi");                                      // 0x007571a1    85f6
    asm("{disp8} je         _jmp_addr_0x00757200");                          // 0x007571a3    745b
    asm("mov                edx, dword ptr [edi]");                          // 0x007571a5    8b17
    asm("mov.s              ecx, edi");                                      // 0x007571a7    8bcf
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x007571a9    ff92f80a0000
    asm("test               eax, eax");                                      // 0x007571af    85c0
    asm("{disp8} je         _jmp_addr_0x007571bf");                          // 0x007571b1    740c
    asm("mov                eax, dword ptr [esi]");                          // 0x007571b3    8b06
    asm("mov.s              ecx, esi");                                      // 0x007571b5    8bce
    asm("call               dword ptr [eax + 0x8a0]");                       // 0x007571b7    ff90a0080000
    asm("{disp8} jmp        _jmp_addr_0x007571c9");                          // 0x007571bd    eb0a
    asm("_jmp_addr_0x007571bf:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007571bf    8b16
    asm("mov.s              ecx, esi");                                      // 0x007571c1    8bce
    asm("call               dword ptr [edx + 0x89c]");                       // 0x007571c3    ff929c080000
    asm("_jmp_addr_0x007571c9:");
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007571c9    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007571cf    dfe0
    asm("test               ah, 0x01");                                      // 0x007571d1    f6c401
    asm("{disp8} je         _jmp_addr_0x007571e8");                          // 0x007571d4    7412
    asm("push               esi");                                           // 0x007571d6    56
    asm("mov.s              ecx, edi");                                      // 0x007571d7    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007571d9    e862f0ffff
    asm("pop                edi");                                           // 0x007571de    5f
    asm("mov                eax, 0x00000001");                               // 0x007571df    b801000000
    asm("pop                esi");                                           // 0x007571e4    5e
    asm("ret                0x0004");                                        // 0x007571e5    c20400
    asm("_jmp_addr_0x007571e8:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007571e8    8b06
    asm("mov.s              ecx, esi");                                      // 0x007571ea    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007571ec    ff5048
    asm("test               eax, eax");                                      // 0x007571ef    85c0
    asm("{disp8} je         _jmp_addr_0x00757200");                          // 0x007571f1    740d
    asm("push               eax");                                           // 0x007571f3    50
    asm("mov.s              ecx, edi");                                      // 0x007571f4    8bcf
    asm("call               ?CheckMoveIntoTown@Villager@@QAEIAAVTown@@@Z");  // 0x007571f6    e815000000
    asm("pop                edi");                                           // 0x007571fb    5f
    asm("pop                esi");                                           // 0x007571fc    5e
    asm("ret                0x0004");                                        // 0x007571fd    c20400
    asm("_jmp_addr_0x00757200:");
    asm("pop                edi");                                           // 0x00757200    5f
    asm("xor.s              eax, eax");                                      // 0x00757201    33c0
    asm("pop                esi");                                           // 0x00757203    5e
    asm("ret                0x0004");                                        // 0x00757204    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckMoveIntoTown__8VillagerFR4Town(struct Villager* this, const void* edx, struct Town* param_1)
{
    asm("push               esi");                                           // 0x00757210    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00757211    8b742408
    asm("push               edi");                                           // 0x00757215    57
    asm("mov.s              edi, ecx");                                      // 0x00757216    8bf9
    asm("push               0x0");                                           // 0x00757218    6a00
    asm("push               edi");                                           // 0x0075721a    57
    asm("mov.s              ecx, esi");                                      // 0x0075721b    8bce
    asm("call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");                          // 0x0075721d    e84e41feff
    asm("test               eax, eax");                                      // 0x00757222    85c0
    asm("{disp8} jne        _jmp_addr_0x00757245");                          // 0x00757224    751f
    asm("mov.s              ecx, esi");                                      // 0x00757226    8bce
    asm("call               ?IsSpaceForNewVillager@Town@@QAE_NXZ");          // 0x00757228    e8a38dfeff
    asm("test               al, al");                                        // 0x0075722d    84c0
    asm("{disp8} je         _jmp_addr_0x00757257");                          // 0x0075722f    7426
    asm("{disp32} mov       eax, dword ptr [esi + 0x000009a4]");             // 0x00757231    8b86a4090000
    asm("test               eax, eax");                                      // 0x00757237    85c0
    asm("{disp8} jne        _jmp_addr_0x00757245");                          // 0x00757239    750a
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000754]");             // 0x0075723b    8b8654070000
    asm("test               eax, eax");                                      // 0x00757241    85c0
    asm("{disp8} je         _jmp_addr_0x00757257");                          // 0x00757243    7412
    asm("_jmp_addr_0x00757245:");
    asm("push               eax");                                           // 0x00757245    50
    asm("mov.s              ecx, edi");                                      // 0x00757246    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00757248    e8f3efffff
    asm("pop                edi");                                           // 0x0075724d    5f
    asm("mov                eax, 0x00000001");                               // 0x0075724e    b801000000
    asm("pop                esi");                                           // 0x00757253    5e
    asm("ret                0x0004");                                        // 0x00757254    c20400
    asm("_jmp_addr_0x00757257:");
    asm("pop                edi");                                           // 0x00757257    5f
    asm("xor.s              eax, eax");                                      // 0x00757258    33c0
    asm("pop                esi");                                           // 0x0075725a    5e
    asm("ret                0x0004");                                        // 0x0075725b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithAnimal__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithWorshipSite__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00757270    83ec08
    asm("push               ebx");                                           // 0x00757273    53
    asm("push               ebp");                                           // 0x00757274    55
    asm("push               esi");                                           // 0x00757275    56
    asm("push               edi");                                           // 0x00757276    57
    asm("push               0x0");                                           // 0x00757277    6a00
    asm("push               0x009c7f80");                                    // 0x00757279    68807f9c00
    asm("mov.s              esi, ecx");                                      // 0x0075727e    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x00757280    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757286    68507f9c00
    asm("push               0x0");                                           // 0x0075728b    6a00
    asm("push               eax");                                           // 0x0075728d    50
    asm("call               ___RTDynamicCast");                              // 0x0075728e    e886e70600
    asm("mov.s              edi, eax");                                      // 0x00757293    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x00757295    8b07
    asm("add                esp, 0x14");                                     // 0x00757297    83c414
    asm("mov.s              ecx, edi");                                      // 0x0075729a    8bcf
    asm("call               dword ptr [eax + 0x890]");                       // 0x0075729c    ff9090080000
    asm("test               eax, eax");                                      // 0x007572a2    85c0
    asm("{disp8} je         _jmp_addr_0x007572bd");                          // 0x007572a4    7417
    asm("mov                edx, dword ptr [edi]");                          // 0x007572a6    8b17
    asm("mov.s              ecx, edi");                                      // 0x007572a8    8bcf
    asm("call               dword ptr [edx + 0x8d8]");                       // 0x007572aa    ff92d8080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007572b0    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007572b6    dfe0
    asm("test               ah, 0x41");                                      // 0x007572b8    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572bb    7552
    asm("_jmp_addr_0x007572bd:");
    asm("mov                eax, dword ptr [edi]");                          // 0x007572bd    8b07
    asm("mov.s              ecx, edi");                                      // 0x007572bf    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007572c1    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x007572c4    8b16
    asm("mov.s              ecx, esi");                                      // 0x007572c6    8bce
    asm("mov.s              ebx, eax");                                      // 0x007572c8    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007572ca    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x007572cd    3bd8
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572cf    753e
    asm("push               edi");                                           // 0x007572d1    57
    asm("mov.s              ecx, esi");                                      // 0x007572d2    8bce
    asm("call               _jmp_addr_0x00758530");                          // 0x007572d4    e857120000
    asm("cmp                eax, 0x01");                                     // 0x007572d9    83f801
    asm("{disp8} jne        _jmp_addr_0x0075730f");                          // 0x007572dc    7531
    asm("mov                eax, dword ptr [esi]");                          // 0x007572de    8b06
    asm("mov.s              ecx, esi");                                      // 0x007572e0    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007572e2    ff501c
    asm("test               eax, eax");                                      // 0x007572e5    85c0
    asm("{disp8} je         _jmp_addr_0x00757302");                          // 0x007572e7    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007572e9    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007572eb    8d4e14
    asm("push               ecx");                                           // 0x007572ee    51
    asm("push               0x3f000000");                                    // 0x007572ef    680000003f
    asm("push               0x9");                                           // 0x007572f4    6a09
    asm("mov.s              ecx, esi");                                      // 0x007572f6    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007572f8    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007572fb    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007572fd    e8ee0dd7ff
    asm("_jmp_addr_0x00757302:");
    asm("pop                edi");                                           // 0x00757302    5f
    asm("pop                esi");                                           // 0x00757303    5e
    asm("pop                ebp");                                           // 0x00757304    5d
    asm("mov                eax, 0x00000001");                               // 0x00757305    b801000000
    asm("pop                ebx");                                           // 0x0075730a    5b
    asm("add                esp, 0x08");                                     // 0x0075730b    83c408
    asm("ret");                                                              // 0x0075730e    c3
    asm("_jmp_addr_0x0075730f:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075730f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757311    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00757313    ff5048
    asm("mov.s              ebp, eax");                                      // 0x00757316    8be8
    asm("test               ebp, ebp");                                      // 0x00757318    85ed
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x0075731a    0f84ef000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00757320    8b16
    asm("mov.s              ecx, esi");                                      // 0x00757322    8bce
    asm("call               dword ptr [edx + 0x30c]");                       // 0x00757324    ff920c030000
    asm("mov.s              edi, eax");                                      // 0x0075732a    8bf8
    asm("test               edi, edi");                                      // 0x0075732c    85ff
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x0075732e    0f84db000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00757334    8b07
    asm("{disp32} mov       ebx, dword ptr [esi + 0x00000118]");             // 0x00757336    8b9e18010000
    asm("mov.s              ecx, edi");                                      // 0x0075733c    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075733e    ff501c
    asm("mov.s              edx, eax");                                      // 0x00757341    8bd0
    asm("mov                eax, dword ptr [ebx]");                          // 0x00757343    8b03
    asm("mov.s              ecx, ebx");                                      // 0x00757345    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00757347    89542410
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075734b    ff501c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075734e    8b4c2410
    asm("cmp.s              eax, ecx");                                      // 0x00757352    3bc1
    asm("{disp32} jne       _jmp_addr_0x0075740f");                          // 0x00757354    0f85b5000000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075735a    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075735c    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075735e    ff92d4000000
    asm("test               eax, eax");                                      // 0x00757364    85c0
    asm("{disp32} je        _jmp_addr_0x0075740f");                          // 0x00757366    0f84a3000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075736c    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075736e    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757370    ff501c
    asm("test               eax, eax");                                      // 0x00757373    85c0
    asm("{disp8} je         _jmp_addr_0x00757390");                          // 0x00757375    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00757377    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757379    8d4e14
    asm("push               ecx");                                           // 0x0075737c    51
    asm("push               0x3f000000");                                    // 0x0075737d    680000003f
    asm("push               0x7");                                           // 0x00757382    6a07
    asm("mov.s              ecx, esi");                                      // 0x00757384    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757386    ff521c
    asm("mov.s              ecx, eax");                                      // 0x00757389    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x0075738b    e8600dd7ff
    asm("_jmp_addr_0x00757390:");
    asm("mov.s              ecx, esi");                                      // 0x00757390    8bce
    asm("call               _jmp_addr_0x0076ba60");                          // 0x00757392    e8c9460100
    asm("cmp                eax, 0x01");                                     // 0x00757397    83f801
    asm("{disp8} jne        _jmp_addr_0x007573a4");                          // 0x0075739a    7508
    asm("pop                edi");                                           // 0x0075739c    5f
    asm("pop                esi");                                           // 0x0075739d    5e
    asm("pop                ebp");                                           // 0x0075739e    5d
    asm("pop                ebx");                                           // 0x0075739f    5b
    asm("add                esp, 0x08");                                     // 0x007573a0    83c408
    asm("ret");                                                              // 0x007573a3    c3
    asm("_jmp_addr_0x007573a4:");
    asm("{disp32} mov       eax, dword ptr [ebp + 0x0000061c]");             // 0x007573a4    8b851c060000
    asm("add                eax, dword ptr [ebp + 0x00000618]");             // 0x007573aa    038518060000
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007573b0    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007573b4    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x007573bc    df6c2410
    asm("{disp32} fdivr     qword ptr [__real@8@3fff8000000000000000]");   // 0x007573c0    dc3d80b68a00
    asm("{disp32} fadd      dword ptr [ebp + 0x000005c0]");                  // 0x007573c6    d885c0050000
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x007573cc    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007573d0    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007573d6    dfe0
    asm("test               ah, 0x41");                                      // 0x007573d8    f6c441
    asm("{disp8} je         _jmp_addr_0x007573fb");                          // 0x007573db    741e
    asm("mov.s              ecx, ebp");                                      // 0x007573dd    8bcd
    asm("call               ?GetTotemStatue@Town@@QAEPAVTotemStatue@@XZ");   // 0x007573df    e8ec6dfeff
    asm("test               eax, eax");                                      // 0x007573e4    85c0
    asm("{disp8} je         _jmp_addr_0x007573fb");                          // 0x007573e6    7413
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007573e8    8b4c2410
    asm("push               ecx");                                           // 0x007573ec    51
    asm("mov.s              ecx, ebp");                                      // 0x007573ed    8bcd
    asm("call               ?GetTotemStatue@Town@@QAEPAVTotemStatue@@XZ");   // 0x007573ef    e8dc6dfeff
    asm("mov.s              ecx, eax");                                      // 0x007573f4    8bc8
    asm("call               @SetWorshipPercentage__11TotemStatueFf@12");     // 0x007573f6    e8750efeff
    asm("_jmp_addr_0x007573fb:");
    asm("mov.s              ecx, esi");                                      // 0x007573fb    8bce
    asm("call               _jmp_addr_0x0076ba60");                          // 0x007573fd    e85e460100
    asm("cmp                eax, 0x01");                                     // 0x00757402    83f801
    asm("{disp8} jne        _jmp_addr_0x0075740f");                          // 0x00757405    7508
    asm("pop                edi");                                           // 0x00757407    5f
    asm("pop                esi");                                           // 0x00757408    5e
    asm("pop                ebp");                                           // 0x00757409    5d
    asm("pop                ebx");                                           // 0x0075740a    5b
    asm("add                esp, 0x08");                                     // 0x0075740b    83c408
    asm("ret");                                                              // 0x0075740e    c3
    asm("_jmp_addr_0x0075740f:");
    asm("pop                edi");                                           // 0x0075740f    5f
    asm("pop                esi");                                           // 0x00757410    5e
    asm("pop                ebp");                                           // 0x00757411    5d
    asm("xor.s              eax, eax");                                      // 0x00757412    33c0
    asm("pop                ebx");                                           // 0x00757414    5b
    asm("add                esp, 0x08");                                     // 0x00757415    83c408
    asm("ret");                                                              // 0x00757418    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithAbode__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757420    53
    asm("push               esi");                                           // 0x00757421    56
    asm("push               edi");                                           // 0x00757422    57
    asm("push               0x0");                                           // 0x00757423    6a00
    asm("push               0x009c7f80");                                    // 0x00757425    68807f9c00
    asm("mov.s              esi, ecx");                                      // 0x0075742a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075742c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757432    68507f9c00
    asm("push               0x0");                                           // 0x00757437    6a00
    asm("push               eax");                                           // 0x00757439    50
    asm("call               ___RTDynamicCast");                              // 0x0075743a    e8dae50600
    asm("mov.s              edi, eax");                                      // 0x0075743f    8bf8
    asm("add                esp, 0x14");                                     // 0x00757441    83c414
    asm("test               edi, edi");                                      // 0x00757444    85ff
    asm("{disp32} je        _jmp_addr_0x0075757d");                          // 0x00757446    0f8431010000
    asm("mov                eax, dword ptr [edi]");                          // 0x0075744c    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075744e    8bcf
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757450    ff502c
    asm("test               eax, eax");                                      // 0x00757453    85c0
    asm("{disp32} je        _jmp_addr_0x0075757d");                          // 0x00757455    0f8422010000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075745b    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075745d    8bcf
    asm("call               dword ptr [edx + 0x890]");                       // 0x0075745f    ff9290080000
    asm("test               eax, eax");                                      // 0x00757465    85c0
    asm("{disp8} je         _jmp_addr_0x00757480");                          // 0x00757467    7417
    asm("mov                eax, dword ptr [edi]");                          // 0x00757469    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075746b    8bcf
    asm("call               dword ptr [eax + 0x8d8]");                       // 0x0075746d    ff90d8080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00757473    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00757479    dfe0
    asm("test               ah, 0x41");                                      // 0x0075747b    f6c441
    asm("{disp8} jne        _jmp_addr_0x007574fb");                          // 0x0075747e    757b
    asm("_jmp_addr_0x00757480:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757480    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757482    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757484    ff521c
    asm("mov.s              ebx, eax");                                      // 0x00757487    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00757489    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075748b    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0075748d    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x00757490    3bd8
    asm("{disp8} jne        _jmp_addr_0x007574fb");                          // 0x00757492    7567
    asm("mov                edx, dword ptr [edi]");                          // 0x00757494    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757496    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757498    ff5248
    asm("mov.s              ebx, eax");                                      // 0x0075749b    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x0075749d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075749f    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007574a1    ff5048
    asm("cmp.s              eax, ebx");                                      // 0x007574a4    3bc3
    asm("{disp8} je         _jmp_addr_0x007574be");                          // 0x007574a6    7416
    asm("mov                edx, dword ptr [edi]");                          // 0x007574a8    8b17
    asm("mov.s              ecx, edi");                                      // 0x007574aa    8bcf
    asm("call               dword ptr [edx + 0x1e0]");                       // 0x007574ac    ff92e0010000
    asm("test               eax, eax");                                      // 0x007574b2    85c0
    asm("{disp8} je         _jmp_addr_0x007574fb");                          // 0x007574b4    7445
    asm("push               edi");                                           // 0x007574b6    57
    asm("mov.s              ecx, esi");                                      // 0x007574b7    8bce
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007574b9    e882edffff
    asm("_jmp_addr_0x007574be:");
    asm("push               edi");                                           // 0x007574be    57
    asm("mov.s              ecx, esi");                                      // 0x007574bf    8bce
    asm("call               _jmp_addr_0x00758530");                          // 0x007574c1    e86a100000
    asm("cmp                eax, 0x01");                                     // 0x007574c6    83f801
    asm("{disp8} jne        _jmp_addr_0x007574ed");                          // 0x007574c9    7522
    asm("mov                edx, dword ptr [esi]");                          // 0x007574cb    8b16
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007574cd    8d4614
    asm("push               eax");                                           // 0x007574d0    50
    asm("push               0x3f000000");                                    // 0x007574d1    680000003f
    asm("push               0x5");                                           // 0x007574d6    6a05
    asm("mov.s              ecx, esi");                                      // 0x007574d8    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007574da    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007574dd    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007574df    e80c0cd7ff
    asm("pop                edi");                                           // 0x007574e4    5f
    asm("pop                esi");                                           // 0x007574e5    5e
    asm("mov                eax, 0x00000001");                               // 0x007574e6    b801000000
    asm("pop                ebx");                                           // 0x007574eb    5b
    asm("ret");                                                              // 0x007574ec    c3
    asm("_jmp_addr_0x007574ed:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007574ed    8b06
    asm("mov.s              ecx, esi");                                      // 0x007574ef    8bce
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x007574f1    ff90c8080000
    asm("pop                edi");                                           // 0x007574f7    5f
    asm("pop                esi");                                           // 0x007574f8    5e
    asm("pop                ebx");                                           // 0x007574f9    5b
    asm("ret");                                                              // 0x007574fa    c3
    asm("_jmp_addr_0x007574fb:");
    asm("push               edi");                                           // 0x007574fb    57
    asm("mov.s              ecx, esi");                                      // 0x007574fc    8bce
    asm("call               ?CheckMoveHouse@Villager@@QAEIPAVObject@@@Z");   // 0x007574fe    e87dfcffff
    asm("cmp                eax, 0x01");                                     // 0x00757503    83f801
    asm("{disp8} jne        _jmp_addr_0x0075750c");                          // 0x00757506    7504
    asm("pop                edi");                                           // 0x00757508    5f
    asm("pop                esi");                                           // 0x00757509    5e
    asm("pop                ebx");                                           // 0x0075750a    5b
    asm("ret");                                                              // 0x0075750b    c3
    asm("_jmp_addr_0x0075750c:");
    asm("mov                edx, dword ptr [edi]");                          // 0x0075750c    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075750e    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757510    ff521c
    asm("mov.s              ebx, eax");                                      // 0x00757513    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00757515    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757517    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757519    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x0075751c    3bd8
    asm("mov                edx, dword ptr [edi]");                          // 0x0075751e    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757520    8bcf
    asm("{disp8} je         _jmp_addr_0x00757545");                          // 0x00757522    7421
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757524    ff5248
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], eax");             // 0x00757527    89861c010000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075752d    8b06
    asm("push               0x000000a3");                                    // 0x0075752f    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00757534    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757536    ff90e8080000
    asm("pop                edi");                                           // 0x0075753c    5f
    asm("pop                esi");                                           // 0x0075753d    5e
    asm("mov                eax, 0x00000001");                               // 0x0075753e    b801000000
    asm("pop                ebx");                                           // 0x00757543    5b
    asm("ret");                                                              // 0x00757544    c3
    asm("_jmp_addr_0x00757545:");
    asm("call               dword ptr [edx + 0x310]");                       // 0x00757545    ff9210030000
    asm("test               eax, eax");                                      // 0x0075754b    85c0
    asm("{disp8} je         _jmp_addr_0x00757567");                          // 0x0075754d    7418
    asm("mov                eax, dword ptr [esi]");                          // 0x0075754f    8b06
    asm("push               0x000000a3");                                    // 0x00757551    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00757556    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757558    ff90e8080000
    asm("pop                edi");                                           // 0x0075755e    5f
    asm("pop                esi");                                           // 0x0075755f    5e
    asm("mov                eax, 0x00000001");                               // 0x00757560    b801000000
    asm("pop                ebx");                                           // 0x00757565    5b
    asm("ret");                                                              // 0x00757566    c3
    asm("_jmp_addr_0x00757567:");
    asm("mov.s              ecx, esi");                                      // 0x00757567    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757569    e8f2abffff
    asm("cmp.s              edi, eax");                                      // 0x0075756e    3bf8
    asm("{disp8} jne        _jmp_addr_0x0075757d");                          // 0x00757570    750b
    asm("mov.s              ecx, esi");                                      // 0x00757572    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757574    e8f78c0000
    asm("pop                edi");                                           // 0x00757579    5f
    asm("pop                esi");                                           // 0x0075757a    5e
    asm("pop                ebx");                                           // 0x0075757b    5b
    asm("ret");                                                              // 0x0075757c    c3
    asm("_jmp_addr_0x0075757d:");
    asm("pop                edi");                                           // 0x0075757d    5f
    asm("pop                esi");                                           // 0x0075757e    5e
    asm("xor.s              eax, eax");                                      // 0x0075757f    33c0
    asm("pop                ebx");                                           // 0x00757581    5b
    asm("ret");                                                              // 0x00757582    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithField__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757590    53
    asm("push               esi");                                           // 0x00757591    56
    asm("push               edi");                                           // 0x00757592    57
    asm("push               0x0");                                           // 0x00757593    6a00
    asm("push               0x00be9d68");                                    // 0x00757595    68689dbe00
    asm("mov.s              esi, ecx");                                      // 0x0075759a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075759c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x007575a2    68507f9c00
    asm("push               0x0");                                           // 0x007575a7    6a00
    asm("push               eax");                                           // 0x007575a9    50
    asm("call               ___RTDynamicCast");                              // 0x007575aa    e86ae40600
    asm("mov.s              edi, eax");                                      // 0x007575af    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x007575b1    8b07
    asm("add                esp, 0x14");                                     // 0x007575b3    83c414
    asm("mov.s              ecx, edi");                                      // 0x007575b6    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007575b8    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x007575bb    8b16
    asm("mov.s              ecx, esi");                                      // 0x007575bd    8bce
    asm("mov.s              ebx, eax");                                      // 0x007575bf    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007575c1    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x007575c4    3bd8
    asm("{disp8} jne        _jmp_addr_0x00757604");                          // 0x007575c6    753c
    asm("push               0x1");                                           // 0x007575c8    6a01
    asm("push               edi");                                           // 0x007575ca    57
    asm("mov.s              ecx, esi");                                      // 0x007575cb    8bce
    asm("call               ?SetFarmerGotoField@Villager@@QAEIPAVField@@H@Z");                          // 0x007575cd    e86e260000
    asm("cmp                eax, 0x01");                                     // 0x007575d2    83f801
    asm("{disp8} jne        _jmp_addr_0x00757604");                          // 0x007575d5    752d
    asm("mov                eax, dword ptr [esi]");                          // 0x007575d7    8b06
    asm("mov.s              ecx, esi");                                      // 0x007575d9    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007575db    ff501c
    asm("test               eax, eax");                                      // 0x007575de    85c0
    asm("{disp8} je         _jmp_addr_0x007575fb");                          // 0x007575e0    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007575e2    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007575e4    8d4e14
    asm("push               ecx");                                           // 0x007575e7    51
    asm("push               0x3f000000");                                    // 0x007575e8    680000003f
    asm("push               0x0");                                           // 0x007575ed    6a00
    asm("mov.s              ecx, esi");                                      // 0x007575ef    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007575f1    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007575f4    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007575f6    e8f50ad7ff
    asm("_jmp_addr_0x007575fb:");
    asm("pop                edi");                                           // 0x007575fb    5f
    asm("pop                esi");                                           // 0x007575fc    5e
    asm("mov                eax, 0x00000001");                               // 0x007575fd    b801000000
    asm("pop                ebx");                                           // 0x00757602    5b
    asm("ret");                                                              // 0x00757603    c3
    asm("_jmp_addr_0x00757604:");
    asm("pop                edi");                                           // 0x00757604    5f
    asm("pop                esi");                                           // 0x00757605    5e
    asm("xor.s              eax, eax");                                      // 0x00757606    33c0
    asm("pop                ebx");                                           // 0x00757608    5b
    asm("ret");                                                              // 0x00757609    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithFishFarm__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                           // 0x00757610    53
    asm("push               esi");                                           // 0x00757611    56
    asm("push               edi");                                           // 0x00757612    57
    asm("push               0x0");                                           // 0x00757613    6a00
    asm("push               0x009d97c8");                                    // 0x00757615    68c8979d00
    asm("mov.s              esi, ecx");                                      // 0x0075761a    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075761c    8b8618010000
    asm("push               0x009c7f50");                                    // 0x00757622    68507f9c00
    asm("push               0x0");                                           // 0x00757627    6a00
    asm("push               eax");                                           // 0x00757629    50
    asm("call               ___RTDynamicCast");                              // 0x0075762a    e8eae30600
    asm("mov.s              edi, eax");                                      // 0x0075762f    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x00757631    8b07
    asm("add                esp, 0x14");                                     // 0x00757633    83c414
    asm("mov.s              ecx, edi");                                      // 0x00757636    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757638    ff501c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075763b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075763d    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075763f    8bd8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00757641    ff521c
    asm("cmp.s              ebx, eax");                                      // 0x00757644    3bd8
    asm("{disp8} jne        _jmp_addr_0x00757682");                          // 0x00757646    753a
    asm("push               edi");                                           // 0x00757648    57
    asm("mov.s              ecx, esi");                                      // 0x00757649    8bce
    asm("call               _jmp_addr_0x0075b560");                          // 0x0075764b    e8103f0000
    asm("cmp                eax, 0x01");                                     // 0x00757650    83f801
    asm("{disp8} jne        _jmp_addr_0x00757682");                          // 0x00757653    752d
    asm("mov                eax, dword ptr [esi]");                          // 0x00757655    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757657    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00757659    ff501c
    asm("test               eax, eax");                                      // 0x0075765c    85c0
    asm("{disp8} je         _jmp_addr_0x00757679");                          // 0x0075765e    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00757660    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757662    8d4e14
    asm("push               ecx");                                           // 0x00757665    51
    asm("push               0x3f000000");                                    // 0x00757666    680000003f
    asm("push               0x0");                                           // 0x0075766b    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075766d    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075766f    ff521c
    asm("mov.s              ecx, eax");                                      // 0x00757672    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x00757674    e8770ad7ff
    asm("_jmp_addr_0x00757679:");
    asm("pop                edi");                                           // 0x00757679    5f
    asm("pop                esi");                                           // 0x0075767a    5e
    asm("mov                eax, 0x00000001");                               // 0x0075767b    b801000000
    asm("pop                ebx");                                           // 0x00757680    5b
    asm("ret");                                                              // 0x00757681    c3
    asm("_jmp_addr_0x00757682:");
    asm("pop                edi");                                           // 0x00757682    5f
    asm("pop                esi");                                           // 0x00757683    5e
    asm("xor.s              eax, eax");                                      // 0x00757684    33c0
    asm("pop                ebx");                                           // 0x00757686    5b
    asm("ret");                                                              // 0x00757687    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckInteractWithTree__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00757690    51
    asm("push               esi");                                           // 0x00757691    56
    asm("push               0x0");                                           // 0x00757692    6a00
    asm("push               0x009d96e0");                                    // 0x00757694    68e0969d00
    asm("mov.s              esi, ecx");                                      // 0x00757699    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x0075769b    8b8618010000
    asm("push               0x009c7f50");                                    // 0x007576a1    68507f9c00
    asm("push               0x0");                                           // 0x007576a6    6a00
    asm("push               eax");                                           // 0x007576a8    50
    asm("call               ___RTDynamicCast");                              // 0x007576a9    e86be30600
    asm("add                esp, 0x14");                                     // 0x007576ae    83c414
    asm("test               eax, eax");                                      // 0x007576b1    85c0
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007576b3    89442404
    asm("{disp8} je         _jmp_addr_0x00757703");                          // 0x007576b7    744a
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x007576b9    8d442404
    asm("push               eax");                                           // 0x007576bd    50
    asm("mov.s              ecx, esi");                                      // 0x007576be    8bce
    asm("call               _jmp_addr_0x0075fd00");                          // 0x007576c0    e83b860000
    asm("test               eax, eax");                                      // 0x007576c5    85c0
    asm("{disp8} je         _jmp_addr_0x00757703");                          // 0x007576c7    743a
    asm("mov                edx, dword ptr [esi]");                          // 0x007576c9    8b16
    asm("mov.s              ecx, esi");                                      // 0x007576cb    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007576cd    ff521c
    asm("test               eax, eax");                                      // 0x007576d0    85c0
    asm("{disp8} je         _jmp_addr_0x007576ed");                          // 0x007576d2    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x007576d4    8b16
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007576d6    8d4614
    asm("push               eax");                                           // 0x007576d9    50
    asm("push               0x3f000000");                                    // 0x007576da    680000003f
    asm("push               0x1");                                           // 0x007576df    6a01
    asm("mov.s              ecx, esi");                                      // 0x007576e1    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x007576e3    ff521c
    asm("mov.s              ecx, eax");                                      // 0x007576e6    8bc8
    asm("call               _jmp_addr_0x004c80f0");                          // 0x007576e8    e8030ad7ff
    asm("_jmp_addr_0x007576ed:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007576ed    8b06
    asm("push               0x31");                                          // 0x007576ef    6a31
    asm("mov.s              ecx, esi");                                      // 0x007576f1    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007576f3    ff90e8080000
    asm("mov.s              ecx, esi");                                      // 0x007576f9    8bce
    asm("call               _jmp_addr_0x0075f930");                          // 0x007576fb    e830820000
    asm("pop                esi");                                           // 0x00757700    5e
    asm("pop                ecx");                                           // 0x00757701    59
    asm("ret");                                                              // 0x00757702    c3
    asm("_jmp_addr_0x00757703:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00757703    8b16
    asm("push               0x000000a4");                                    // 0x00757705    68a4000000
    asm("mov.s              ecx, esi");                                      // 0x0075770a    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075770c    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00757712    b801000000
    asm("pop                esi");                                           // 0x00757717    5e
    asm("pop                ecx");                                           // 0x00757718    59
    asm("ret");                                                              // 0x00757719    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithBall__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool32_t __fastcall CheckInteractWithPot__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall CheckInteractWithRock__8VillagerFv(struct Villager* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithFootBall__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithVillager__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757760    56
    asm("push               edi");                                           // 0x00757761    57
    asm("push               0x0");                                           // 0x00757762    6a00
    asm("push               0x009cafc8");                                    // 0x00757764    68c8af9c00
    asm("mov.s              edi, ecx");                                      // 0x00757769    8bf9
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000118]");             // 0x0075776b    8b8718010000
    asm("push               0x009c7f50");                                    // 0x00757771    68507f9c00
    asm("push               0x0");                                           // 0x00757776    6a00
    asm("push               eax");                                           // 0x00757778    50
    asm("call               ___RTDynamicCast");                              // 0x00757779    e89be20600
    asm("mov.s              esi, eax");                                      // 0x0075777e    8bf0
    asm("add                esp, 0x14");                                     // 0x00757780    83c414
    asm("test               esi, esi");                                      // 0x00757783    85f6
    asm("{disp32} je        _jmp_addr_0x00757816");                          // 0x00757785    0f848b000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075778b    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075778d    8bce
    asm("call               dword ptr [eax + 0xd4]");                        // 0x0075778f    ff90d4000000
    asm("test               eax, eax");                                      // 0x00757795    85c0
    asm("{disp8} je         _jmp_addr_0x00757816");                          // 0x00757797    747d
    asm("mov                edx, dword ptr [esi]");                          // 0x00757799    8b16
    asm("push               ebx");                                           // 0x0075779b    53
    asm("mov.s              ecx, esi");                                      // 0x0075779c    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0075779e    ff521c
    asm("mov.s              ebx, eax");                                      // 0x007577a1    8bd8
    asm("mov                eax, dword ptr [edi]");                          // 0x007577a3    8b07
    asm("mov.s              ecx, edi");                                      // 0x007577a5    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007577a7    ff501c
    asm("cmp.s              ebx, eax");                                      // 0x007577aa    3bd8
    asm("pop                ebx");                                           // 0x007577ac    5b
    asm("{disp8} jne        _jmp_addr_0x007577fc");                          // 0x007577ad    754d
    asm("mov.s              ecx, edi");                                      // 0x007577af    8bcf
    asm("call               _jmp_addr_0x00761090");                          // 0x007577b1    e8da980000
    asm("test               eax, eax");                                      // 0x007577b6    85c0
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577b8    7442
    asm("mov.s              ecx, esi");                                      // 0x007577ba    8bce
    asm("call               _jmp_addr_0x00761090");                          // 0x007577bc    e8cf980000
    asm("test               eax, eax");                                      // 0x007577c1    85c0
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577c3    7437
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x007577c5    8b5728
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007577c8    8b4e28
    asm("{disp32} mov       eax, dword ptr [edx + 0x000001f8]");             // 0x007577cb    8b82f8010000
    asm("cmp                eax, dword ptr [ecx + 0x000001f8]");             // 0x007577d1    3b81f8010000
    asm("{disp8} je         _jmp_addr_0x007577fc");                          // 0x007577d7    7423
    asm("push               0x3f0fdf3b");                                    // 0x007577d9    683bdf0f3f
    asm("push               0x7a");                                          // 0x007577de    6a7a
    asm("push               esi");                                           // 0x007577e0    56
    asm("mov.s              ecx, edi");                                      // 0x007577e1    8bcf
    asm("call               ?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");                          // 0x007577e3    e8a8aeffff
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");             // 0x007577e8    89b718010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x007577ee    89be18010000
    asm("pop                edi");                                           // 0x007577f4    5f
    asm("mov                eax, 0x00000001");                               // 0x007577f5    b801000000
    asm("pop                esi");                                           // 0x007577fa    5e
    asm("ret");                                                              // 0x007577fb    c3
    asm("_jmp_addr_0x007577fc:");
    asm("push               0x40400000");                                    // 0x007577fc    6800004040
    asm("push               0x000000a9");                                    // 0x00757801    68a9000000
    asm("push               esi");                                           // 0x00757806    56
    asm("mov.s              ecx, edi");                                      // 0x00757807    8bcf
    asm("call               ?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");                          // 0x00757809    e882aeffff
    asm("pop                edi");                                           // 0x0075780e    5f
    asm("mov                eax, 0x00000001");                               // 0x0075780f    b801000000
    asm("pop                esi");                                           // 0x00757814    5e
    asm("ret");                                                              // 0x00757815    c3
    asm("_jmp_addr_0x00757816:");
    asm("pop                edi");                                           // 0x00757816    5f
    asm("xor.s              eax, eax");                                      // 0x00757817    33c0
    asm("pop                esi");                                           // 0x00757819    5e
    asm("ret");                                                              // 0x0075781a    c3
    __builtin_unreachable();
}

void __fastcall SetDiscipleFollower__8VillagerF17VILLAGER_DISCIPLE(struct Villager* this, const void* edx, enum VILLAGER_DISCIPLE param_1)
{
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                     // 0x00757820    8a442404
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757824    8b11
    asm("or                 byte ptr [ecx + 0xe1], 4");                      // 0x00757826    8089e100000004
    asm("push               0x000000a3");                                    // 0x0075782d    68a3000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000f2], al");               // 0x00757832    8881f2000000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00757838    ff92e8080000
    asm("ret                0x0004");                                        // 0x0075783e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckInteractWithMagicLiving__8VillagerFv(struct Villager* this)
{
    return 0;
}

void __cdecl globl_ct_0x00757860(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00757860    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00757866    b001
    asm("test               al, cl");                                        // 0x00757868    84c8
    asm("{disp8} jne        _jmp_addr_0x00757874");                          // 0x0075786a    7508
    asm("or.s               cl, al");                                        // 0x0075786c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0075786e    880d34c9fa00
    asm("_jmp_addr_0x00757874:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00757880");   // 0x00757874    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00757880(void)
{
    asm("push               0x00407870");                                    // 0x00757880    6870784000
    asm("call               _atexit");                                       // 0x00757885    e8e7ea0600
    asm("pop                ecx");                                           // 0x0075788a    59
    asm("ret");                                                              // 0x0075788b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00757890(void)
{
    asm("{disp32} jmp       _FUN_007578a0__8VillagerFv");                    // 0x00757890    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007578a0__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf193c]");             // 0x007578a0    d9053ca99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf1938]");             // 0x007578a6    d80d38a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3dd4]");             // 0x007578ac    d91dd49ddb00
    asm("ret");                                                              // 0x007578b2    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChildFollowsMother__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x20");                                     // 0x007578c0    83ec20
    asm("push               esi");                                           // 0x007578c3    56
    asm("mov.s              esi, ecx");                                      // 0x007578c4    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x007578c6    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x007578ce    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007578d6    c744241400000000
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x007578de    e89d050000
    asm("test               eax, eax");                                      // 0x007578e3    85c0
    asm("{disp32} jne       _jmp_addr_0x007579d9");                          // 0x007578e5    0f85ee000000
    asm("mov.s              ecx, esi");                                      // 0x007578eb    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x007578ed    e88e030000
    asm("cmp                eax, 0x01");                                     // 0x007578f2    83f801
    asm("{disp32} je        _jmp_addr_0x007579d9");                          // 0x007578f5    0f84de000000
    asm("mov.s              ecx, esi");                                      // 0x007578fb    8bce
    asm("call               ?ChildGotoCreche@Villager@@QAEIXZ");             // 0x007578fd    e8ee000000
    asm("test               eax, eax");                                      // 0x00757902    85c0
    asm("{disp32} jne       _jmp_addr_0x007579d9");                          // 0x00757904    0f85cf000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000100]");             // 0x0075790a    8b8e00010000
    asm("test               ecx, ecx");                                      // 0x00757910    85c9
    asm("{disp8} je         _jmp_addr_0x0075793c");                          // 0x00757912    7428
    asm("mov                eax, dword ptr [ecx]");                          // 0x00757914    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757916    ff502c
    asm("test               eax, eax");                                      // 0x00757919    85c0
    asm("{disp8} je         _jmp_addr_0x0075793c");                          // 0x0075791b    741f
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000100]");             // 0x0075791d    8b8e00010000
    asm("add                ecx, 0x14");                                     // 0x00757923    83c114
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757926    8b11
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00757928    8954240c
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x0075792c    8b4104
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075792f    89442410
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00757933    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00757936    894c2414
    asm("{disp8} jmp        _jmp_addr_0x00757969");                          // 0x0075793a    eb2d
    asm("_jmp_addr_0x0075793c:");
    asm("mov.s              ecx, esi");                                      // 0x0075793c    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075793e    e81da8ffff
    asm("test               eax, eax");                                      // 0x00757943    85c0
    asm("mov.s              ecx, esi");                                      // 0x00757945    8bce
    asm("{disp32} je        _jmp_addr_0x007579d4");                          // 0x00757947    0f8487000000
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075794d    e80ea8ffff
    asm("add                eax, 0x14");                                     // 0x00757952    83c014
    asm("mov                edx, dword ptr [eax]");                          // 0x00757955    8b10
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00757957    8954240c
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075795b    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075795e    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00757962    8b5008
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00757965    89542414
    asm("_jmp_addr_0x00757969:");
    asm("push               0x39");                                          // 0x00757969    6a39
    asm("push               0x00c236e0");                                    // 0x0075796b    68e036c200
    asm("push               0x40c90fdb");                                    // 0x00757970    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757975    e8b66bf8ff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075797a    d95c2414
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf1934]");             // 0x0075797e    d90534a99900
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00757984    8b4c2414
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00757988    d80db4a38a00
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x0075798e    8d542424
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00757992    d95c2410
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00757996    8b442410
    asm("push               eax");                                           // 0x0075799a    50
    asm("push               ecx");                                           // 0x0075799b    51
    asm("push               edx");                                           // 0x0075799c    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0075799d    e8de5bffff
    asm("add                esp, 0x18");                                     // 0x007579a2    83c418
    asm("push               eax");                                           // 0x007579a5    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x007579a6    8d4c2410
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x007579aa    e861daeaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007579af    8d4c240c
    asm("call               _jmp_addr_0x00603840");                          // 0x007579b3    e888beeaff
    asm("test               eax, eax");                                      // 0x007579b8    85c0
    asm("{disp8} je         _jmp_addr_0x007579d9");                          // 0x007579ba    741d
    asm("push               0x72");                                          // 0x007579bc    6a72
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007579be    8d442410
    asm("push               eax");                                           // 0x007579c2    50
    asm("mov.s              ecx, esi");                                      // 0x007579c3    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007579c5    e8c6aee9ff
    asm("mov                eax, 0x00000001");                               // 0x007579ca    b801000000
    asm("pop                esi");                                           // 0x007579cf    5e
    asm("add                esp, 0x20");                                     // 0x007579d0    83c420
    asm("ret");                                                              // 0x007579d3    c3
    asm("_jmp_addr_0x007579d4:");
    asm("call               ?CheckNeedNewAbode@Villager@@QAEIXZ");           // 0x007579d4    e8b7050000
    asm("_jmp_addr_0x007579d9:");
    asm("mov                eax, 0x00000001");                               // 0x007579d9    b801000000
    asm("pop                esi");                                           // 0x007579de    5e
    asm("add                esp, 0x20");                                     // 0x007579df    83c420
    asm("ret");                                                              // 0x007579e2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ChildGotoCreche__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007579f0    83ec0c
    asm("push               esi");                                           // 0x007579f3    56
    asm("push               edi");                                           // 0x007579f4    57
    asm("mov.s              edi, ecx");                                      // 0x007579f5    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x007579f7    8b07
    asm("call               dword ptr [eax + 0x48]");                        // 0x007579f9    ff5048
    asm("test               eax, eax");                                      // 0x007579fc    85c0
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x007579fe    7444
    asm("mov                edx, dword ptr [edi]");                          // 0x00757a00    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757a02    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757a04    ff5248
    asm("{disp32} mov       esi, dword ptr [eax + 0x00000744]");             // 0x00757a07    8bb044070000
    asm("test               esi, esi");                                      // 0x00757a0d    85f6
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x00757a0f    7433
    asm("mov                eax, dword ptr [esi]");                          // 0x00757a11    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757a13    8bce
    asm("call               dword ptr [eax + 0xd4]");                        // 0x00757a15    ff90d4000000
    asm("test               eax, eax");                                      // 0x00757a1b    85c0
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x00757a1d    7425
    asm("mov                edx, dword ptr [esi]");                          // 0x00757a1f    8b16
    asm("push               0x71");                                          // 0x00757a21    6a71
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00757a23    8d44240c
    asm("push               eax");                                           // 0x00757a27    50
    asm("mov.s              ecx, esi");                                      // 0x00757a28    8bce
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757a2a    ff9264080000
    asm("push               eax");                                           // 0x00757a30    50
    asm("push               esi");                                           // 0x00757a31    56
    asm("mov.s              ecx, edi");                                      // 0x00757a32    8bcf
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00757a34    e8e762e9ff
    asm("pop                edi");                                           // 0x00757a39    5f
    asm("mov                eax, 0x00000001");                               // 0x00757a3a    b801000000
    asm("pop                esi");                                           // 0x00757a3f    5e
    asm("add                esp, 0x0c");                                     // 0x00757a40    83c40c
    asm("ret");                                                              // 0x00757a43    c3
    asm("_jmp_addr_0x00757a44:");
    asm("pop                edi");                                           // 0x00757a44    5f
    asm("xor.s              eax, eax");                                      // 0x00757a45    33c0
    asm("pop                esi");                                           // 0x00757a47    5e
    asm("add                esp, 0x0c");                                     // 0x00757a48    83c40c
    asm("ret");                                                              // 0x00757a4b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl GetNextDstPromemade__FP6CrecheRlP9MapCoordsRC9MapCoords(struct Creche* param_1, long* param_2, struct MapCoords* param_3, const struct MapCoords* param_4)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00757a50    8b442408
    asm("mov                eax, dword ptr [eax]");                          // 0x00757a54    8b00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x00757a56    8b4c2404
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x40]");                   // 0x00757a5a    8b4940
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757a5d    8b11
    asm("sub                esp, 0x20");                                     // 0x00757a5f    83ec20
    asm("push               ebx");                                           // 0x00757a62    53
    asm("push               ebp");                                           // 0x00757a63    55
    asm("push               esi");                                           // 0x00757a64    56
    asm("mov.s              esi, eax");                                      // 0x00757a65    8bf0
    asm("sar                eax, 0x10");                                     // 0x00757a67    c1f810
    asm("push               edi");                                           // 0x00757a6a    57
    asm("and                esi, 0x0000ffff");                               // 0x00757a6b    81e6ffff0000
    asm("mov.s              ebx, eax");                                      // 0x00757a71    8bd8
    asm("xor.s              ebp, ebp");                                      // 0x00757a73    33ed
    asm("call               dword ptr [edx + 0xf8]");                        // 0x00757a75    ff92f8000000
    asm("mov.s              edi, eax");                                      // 0x00757a7b    8bf8
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                   // 0x00757a7d    8b4704
    asm("test               eax, 0x00100000");                               // 0x00757a80    a900001000
    asm("{disp8} je         _jmp_addr_0x00757b02");                          // 0x00757a85    747b
    asm("test               ah, -0x80");                                     // 0x00757a87    f6c480
    asm("{disp8} je         _jmp_addr_0x00757a98");                          // 0x00757a8a    740c
    asm("{disp8} mov        ecx, dword ptr [edi + 0x48]");                   // 0x00757a8c    8b4f48
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00757a8f    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00757a92    894c2414
    asm("{disp8} jmp        _jmp_addr_0x00757aa0");                          // 0x00757a96    eb08
    asm("_jmp_addr_0x00757a98:");
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00757a98    c744241400000000
    asm("_jmp_addr_0x00757aa0:");
    asm("test               eax, 0x00040000");                               // 0x00757aa0    a900000400
    asm("{disp8} je         _jmp_addr_0x00757abc");                          // 0x00757aa5    7415
    asm("mov.s              ecx, edi");                                      // 0x00757aa7    8bcf
    asm("call               ?GetSizeFootprintData_dup1@LH3DMesh@@QAEIXZ");   // 0x00757aa9    e8e2c0caff
    asm("{disp8} mov        ecx, dword ptr [edi + 0x48]");                   // 0x00757aae    8b4f48
    asm("mov                edx, dword ptr [eax + ecx * 0x1]");              // 0x00757ab1    8b1408
    asm("add.s              eax, ecx");                                      // 0x00757ab4    03c1
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00757ab6    89542410
    asm("{disp8} jmp        _jmp_addr_0x00757ac4");                          // 0x00757aba    eb08
    asm("_jmp_addr_0x00757abc:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00757abc    c744241000000000
    asm("_jmp_addr_0x00757ac4:");
    asm("test               dword ptr [edi + 0x04], 0x00080000");            // 0x00757ac4    f7470400000800
    asm("{disp8} je         _jmp_addr_0x00757ad8");                          // 0x00757acb    740b
    asm("mov.s              ecx, edi");                                      // 0x00757acd    8bcf
    asm("call               ?GetSizeNameData@LH3DMesh@@QAEIXZ");             // 0x00757acf    e89cbccaff
    asm("mov                eax, dword ptr [eax]");                          // 0x00757ad4    8b00
    asm("{disp8} jmp        _jmp_addr_0x00757ada");                          // 0x00757ad6    eb02
    asm("_jmp_addr_0x00757ad8:");
    asm("xor.s              eax, eax");                                      // 0x00757ad8    33c0
    asm("_jmp_addr_0x00757ada:");
    asm("{disp8} mov        edi, dword ptr [edi + 0x48]");                   // 0x00757ada    8b7f48
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00757add    8b4c2410
    asm("add.s              edi, eax");                                      // 0x00757ae1    03f8
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00757ae3    8b442414
    asm("add.s              edi, ecx");                                      // 0x00757ae7    03f9
    asm("add.s              edi, eax");                                      // 0x00757ae9    03f8
    asm("{disp8} je         _jmp_addr_0x00757b02");                          // 0x00757aeb    7415
    asm("{disp8} mov        edi, dword ptr [edi + 0x04]");                   // 0x00757aed    8b7f04
    asm("mov                eax, 0x66666667");                               // 0x00757af0    b867666666
    asm("imul               edi");                                           // 0x00757af5    f7ef
    asm("sar                edx, 1");                                        // 0x00757af7    d1fa
    asm("mov.s              eax, edx");                                      // 0x00757af9    8bc2
    asm("shr                eax, 0x1f");                                     // 0x00757afb    c1e81f
    asm("add.s              edx, eax");                                      // 0x00757afe    03d0
    asm("mov.s              ebp, edx");                                      // 0x00757b00    8bea
    asm("_jmp_addr_0x00757b02:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x34]");                   // 0x00757b02    8b7c2434
    asm("mov                edx, dword ptr [edi]");                          // 0x00757b06    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00757b08    8d442418
    asm("push               eax");                                           // 0x00757b0c    50
    asm("mov.s              ecx, edi");                                      // 0x00757b0d    8bcf
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757b0f    ff9264080000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00757b15    8b4c2440
    asm("push               eax");                                           // 0x00757b19    50
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x00757b1a    e841dbeaff
    asm("test               eax, eax");                                      // 0x00757b1f    85c0
    asm("{disp8} je         _jmp_addr_0x00757b43");                          // 0x00757b21    7420
    asm("push               0x6b");                                          // 0x00757b23    6a6b
    asm("push               0x00c236e0");                                    // 0x00757b25    68e036c200
    asm("push               ebp");                                           // 0x00757b2a    55
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00757b2b    e8e069f8ff
    asm("mov.s              esi, eax");                                      // 0x00757b30    8bf0
    asm("add                esp, 0x0c");                                     // 0x00757b32    83c40c
    asm("test               esi, esi");                                      // 0x00757b35    85f6
    asm("{disp8} jl         _jmp_addr_0x00757b3d");                          // 0x00757b37    7c04
    asm("cmp.s              esi, ebp");                                      // 0x00757b39    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b3f");                          // 0x00757b3b    7c02
    asm("_jmp_addr_0x00757b3d:");
    asm("xor.s              esi, esi");                                      // 0x00757b3d    33f6
    asm("_jmp_addr_0x00757b3f:");
    asm("xor.s              ebx, ebx");                                      // 0x00757b3f    33db
    asm("{disp8} jmp        _jmp_addr_0x00757b83");                          // 0x00757b41    eb40
    asm("_jmp_addr_0x00757b43:");
    asm("test               esi, esi");                                      // 0x00757b43    85f6
    asm("{disp8} jge        _jmp_addr_0x00757b4b");                          // 0x00757b45    7d04
    asm("xor.s              esi, esi");                                      // 0x00757b47    33f6
    asm("{disp8} jmp        _jmp_addr_0x00757b52");                          // 0x00757b49    eb07
    asm("_jmp_addr_0x00757b4b:");
    asm("cmp.s              esi, ebp");                                      // 0x00757b4b    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b52");                          // 0x00757b4d    7c03
    asm("{disp8} lea        esi, dword ptr [ebp + -0x01]");                  // 0x00757b4f    8d75ff
    asm("_jmp_addr_0x00757b52:");
    asm("inc                ebx");                                           // 0x00757b52    43
    asm("{disp8} jns        _jmp_addr_0x00757b59");                          // 0x00757b53    7904
    asm("xor.s              ebx, ebx");                                      // 0x00757b55    33db
    asm("{disp8} jmp        _jmp_addr_0x00757b83");                          // 0x00757b57    eb2a
    asm("_jmp_addr_0x00757b59:");
    asm("cmp                ebx, 0x09");                                     // 0x00757b59    83fb09
    asm("{disp32} jle       _jmp_addr_0x00757c2c");                          // 0x00757b5c    0f8eca000000
    asm("push               0x00000081");                                    // 0x00757b62    6881000000
    asm("push               0x00c236e0");                                    // 0x00757b67    68e036c200
    asm("push               ebp");                                           // 0x00757b6c    55
    asm("xor.s              ebx, ebx");                                      // 0x00757b6d    33db
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00757b6f    e89c69f8ff
    asm("mov.s              esi, eax");                                      // 0x00757b74    8bf0
    asm("add                esp, 0x0c");                                     // 0x00757b76    83c40c
    asm("test               esi, esi");                                      // 0x00757b79    85f6
    asm("{disp8} jl         _jmp_addr_0x00757b81");                          // 0x00757b7b    7c04
    asm("cmp.s              esi, ebp");                                      // 0x00757b7d    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b83");                          // 0x00757b7f    7c02
    asm("_jmp_addr_0x00757b81:");
    asm("xor.s              esi, esi");                                      // 0x00757b81    33f6
    asm("_jmp_addr_0x00757b83:");
    asm("mov.s              eax, ebx");                                      // 0x00757b83    8bc3
    asm("_jmp_addr_0x00757b85:");
    asm("test               ebp, ebp");                                      // 0x00757b85    85ed
    asm("{disp32} je        _jmp_addr_0x00757c41");                          // 0x00757b87    0f84b4000000
    asm("{disp8} mov        ecx, dword ptr [edi + 0x40]");                   // 0x00757b8d    8b4f40
    asm("mov                edi, dword ptr [ecx]");                          // 0x00757b90    8b39
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00757b92    8d542418
    asm("push               edx");                                           // 0x00757b96    52
    asm("lea                eax, dword ptr [eax + esi * 0x4]");              // 0x00757b97    8d04b0
    asm("mov.s              edx, esi");                                      // 0x00757b9a    8bd6
    asm("add.s              edx, eax");                                      // 0x00757b9c    03d0
    asm("call               dword ptr [edi + 0x1cc]");                       // 0x00757b9e    ff97cc010000
    asm("push               0x00000090");                                    // 0x00757ba4    6890000000
    asm("push               0x00c236e0");                                    // 0x00757ba9    68e036c200
    asm("push               0x3f800000");                                    // 0x00757bae    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757bb3    e87869f8ff
    asm("{disp32} fsub      dword ptr [_rdata_float0p5]");                   // 0x00757bb8    d825b4a38a00
    asm("push               0x00000090");                                    // 0x00757bbe    6890000000
    asm("push               0x00c236e0");                                    // 0x00757bc3    68e036c200
    asm("push               0x3f800000");                                    // 0x00757bc8    680000803f
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x00757bcd    d95c244c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757bd1    e85a69f8ff
    asm("{disp32} fsub      dword ptr [_rdata_float0p5]");                   // 0x00757bd6    d825b4a38a00
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x00757bdc    d9442430
    asm("add                esp, 0x18");                                     // 0x00757be0    83c418
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00757be3    8d4c2418
    asm("fadd               st, st(1)");                                     // 0x00757be7    d8c1
    asm("push               ecx");                                           // 0x00757be9    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x00757bea    8d4c2428
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00757bee    d95c241c
    asm("fstp               st(0)");                                         // 0x00757bf2    ddd8
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00757bf4    d9442424
    asm("{disp8} fadd       dword ptr [esp + 0x38]");                        // 0x00757bf8    d8442438
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00757bfc    d95c2424
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00757c00    e85bb5eaff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00757c05    8b08
    asm("{disp8} mov        edx, dword ptr [esp + 0x3c]");                   // 0x00757c07    8b54243c
    asm("mov                dword ptr [edx], ecx");                          // 0x00757c0b    890a
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00757c0d    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x00757c10    894a04
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00757c13    8b4008
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                   // 0x00757c16    8b4c2438
    asm("shl                ebx, 0x10");                                     // 0x00757c1a    c1e310
    asm("pop                edi");                                           // 0x00757c1d    5f
    asm("or.s               ebx, esi");                                      // 0x00757c1e    0bde
    asm("pop                esi");                                           // 0x00757c20    5e
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x00757c21    894208
    asm("pop                ebp");                                           // 0x00757c24    5d
    asm("mov                dword ptr [ecx], ebx");                          // 0x00757c25    8919
    asm("pop                ebx");                                           // 0x00757c27    5b
    asm("add                esp, 0x20");                                     // 0x00757c28    83c420
    asm("ret");                                                              // 0x00757c2b    c3
    asm("_jmp_addr_0x00757c2c:");
    asm("cmp                ebx, 0x04");                                     // 0x00757c2c    83fb04
    asm("{disp32} jle       _jmp_addr_0x00757b83");                          // 0x00757c2f    0f8e4effffff
    asm("mov                eax, 0x00000009");                               // 0x00757c35    b809000000
    asm("sub.s              eax, ebx");                                      // 0x00757c3a    2bc3
    asm("{disp32} jmp       _jmp_addr_0x00757b85");                          // 0x00757c3c    e944ffffff
    asm("_jmp_addr_0x00757c41:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757c41    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00757c43    8d442424
    asm("push               eax");                                           // 0x00757c47    50
    asm("mov.s              ecx, edi");                                      // 0x00757c48    8bcf
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757c4a    ff9264080000
    asm("mov                edx, dword ptr [eax]");                          // 0x00757c50    8b10
    asm("{disp8} mov        ecx, dword ptr [esp + 0x3c]");                   // 0x00757c52    8b4c243c
    asm("mov                dword ptr [ecx], edx");                          // 0x00757c56    8911
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00757c58    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x00757c5b    895104
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00757c5e    8b4008
    asm("shl                ebx, 0x10");                                     // 0x00757c61    c1e310
    asm("pop                edi");                                           // 0x00757c64    5f
    asm("or.s               ebx, esi");                                      // 0x00757c65    0bde
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax");                   // 0x00757c67    894108
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x00757c6a    8b4c2434
    asm("pop                esi");                                           // 0x00757c6e    5e
    asm("pop                ebp");                                           // 0x00757c6f    5d
    asm("mov                dword ptr [ecx], ebx");                          // 0x00757c70    8919
    asm("pop                ebx");                                           // 0x00757c72    5b
    asm("add                esp, 0x20");                                     // 0x00757c73    83c420
    asm("ret");                                                              // 0x00757c76    c3
    asm("nop");                                                              // 0x00757c77    90
    asm("nop");                                                              // 0x00757c78    90
    asm("nop");                                                              // 0x00757c79    90
    asm("nop");                                                              // 0x00757c7a    90
    asm("nop");                                                              // 0x00757c7b    90
    asm("nop");                                                              // 0x00757c7c    90
    asm("nop");                                                              // 0x00757c7d    90
    asm("nop");                                                              // 0x00757c7e    90
    asm("nop");                                                              // 0x00757c7f    90
    asm("_jmp_addr_0x00757c80:");
    asm("{disp32} jmp       ?CheckNeededForTownDesire@Villager@@QAEIXZ");    // 0x00757c80    e91b050000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ChildAtCreche__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x38");                                     // 0x00757c90    83ec38
    asm("push               ebx");                                           // 0x00757c93    53
    asm("push               esi");                                           // 0x00757c94    56
    asm("xor.s              ebx, ebx");                                      // 0x00757c95    33db
    asm("push               edi");                                           // 0x00757c97    57
    asm("mov.s              esi, ecx");                                      // 0x00757c98    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x0c], ebx");                   // 0x00757c9a    895c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x00757c9e    895c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x00757ca2    895c2414
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x00757ca6    e8d5010000
    asm("cmp                eax, 0x01");                                     // 0x00757cab    83f801
    asm("{disp8} jne        _jmp_addr_0x00757cb7");                          // 0x00757cae    7507
    asm("pop                edi");                                           // 0x00757cb0    5f
    asm("pop                esi");                                           // 0x00757cb1    5e
    asm("pop                ebx");                                           // 0x00757cb2    5b
    asm("add                esp, 0x38");                                     // 0x00757cb3    83c438
    asm("ret");                                                              // 0x00757cb6    c3
    asm("_jmp_addr_0x00757cb7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00757cb7    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757cb9    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00757cbb    ff5048
    asm("mov.s              edi, eax");                                      // 0x00757cbe    8bf8
    asm("cmp.s              edi, ebx");                                      // 0x00757cc0    3bfb
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757cc2    0f84a5010000
    asm("mov.s              ecx, esi");                                      // 0x00757cc8    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x00757cca    e8b1ffffff
    asm("cmp                eax, 0x01");                                     // 0x00757ccf    83f801
    asm("{disp8} jne        _jmp_addr_0x00757cdb");                          // 0x00757cd2    7507
    asm("pop                edi");                                           // 0x00757cd4    5f
    asm("pop                esi");                                           // 0x00757cd5    5e
    asm("pop                ebx");                                           // 0x00757cd6    5b
    asm("add                esp, 0x38");                                     // 0x00757cd7    83c438
    asm("ret");                                                              // 0x00757cda    c3
    asm("_jmp_addr_0x00757cdb:");
    asm("{disp32} mov       edi, dword ptr [edi + 0x00000744]");             // 0x00757cdb    8bbf44070000
    asm("mov                ecx, OFFSET _GGameInfo_00d019f8");               // 0x00757ce1    b9f819d000
    asm("call               ?GetVisualTime@GGameInfo@@QAEMXZ");              // 0x00757ce6    e8b5f8dfff
    asm("push               ecx");                                           // 0x00757ceb    51
    asm("fstp               dword ptr [esp]");                               // 0x00757cec    d91c24
    asm("call               ?Time2SkyType@LH3DSky@@QAEMM@Z");                // 0x00757cef    e8bc241100
    asm("add                esp, 0x04");                                     // 0x00757cf4    83c404
    asm("cmp.s              edi, ebx");                                      // 0x00757cf7    3bfb
    asm("{disp32} je        _jmp_addr_0x00757e6b");                          // 0x00757cf9    0f846c010000
    asm("{disp32} fcomp     qword ptr [rdata_bytes + 0x2f758]");             // 0x00757cff    dc1d58878d00
    asm("fnstsw             ax");                                            // 0x00757d05    dfe0
    asm("test               ah, 0x41");                                      // 0x00757d07    f6c441
    asm("{disp8} je         _jmp_addr_0x00757d1a");                          // 0x00757d0a    740e
    asm("mov                edx, dword ptr [edi]");                          // 0x00757d0c    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757d0e    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00757d10    ff92d4000000
    asm("test               eax, eax");                                      // 0x00757d16    85c0
    asm("{disp8} jne        _jmp_addr_0x00757d98");                          // 0x00757d18    757e
    asm("_jmp_addr_0x00757d1a:");
    asm("mov.s              ecx, esi");                                      // 0x00757d1a    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757d1c    e83fa4ffff
    asm("cmp.s              eax, ebx");                                      // 0x00757d21    3bc3
    asm("{disp8} je         _jmp_addr_0x00757d50");                          // 0x00757d23    742b
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000a0]");             // 0x00757d25    8b80a0000000
    asm("cmp.s              eax, ebx");                                      // 0x00757d2b    3bc3
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d2d    0f843a010000
    asm("test               byte ptr [eax + 0x000000e0], 0x04");             // 0x00757d33    f680e000000004
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d3a    0f842d010000
    asm("mov.s              ecx, esi");                                      // 0x00757d40    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757d42    e829850000
    asm("pop                edi");                                           // 0x00757d47    5f
    asm("pop                esi");                                           // 0x00757d48    5e
    asm("xor.s              eax, eax");                                      // 0x00757d49    33c0
    asm("pop                ebx");                                           // 0x00757d4b    5b
    asm("add                esp, 0x38");                                     // 0x00757d4c    83c438
    asm("ret");                                                              // 0x00757d4f    c3
    asm("_jmp_addr_0x00757d50:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00757d50    8b07
    asm("push               0x3a83126f");                                    // 0x00757d52    686f12833a
    asm("push               esi");                                           // 0x00757d57    56
    asm("mov.s              ecx, edi");                                      // 0x00757d58    8bcf
    asm("call               dword ptr [eax + 0x6b8]");                       // 0x00757d5a    ff90b8060000
    asm("test               eax, eax");                                      // 0x00757d60    85c0
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d62    0f8405010000
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757d68    8d4e14
    asm("push               ecx");                                           // 0x00757d6b    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00757d6c    8d542410
    asm("push               edx");                                           // 0x00757d70    52
    asm("{disp32} lea       eax, dword ptr [esi + 0x000000c4]");             // 0x00757d71    8d86c4000000
    asm("push               eax");                                           // 0x00757d77    50
    asm("push               edi");                                           // 0x00757d78    57
    asm("call               ?GetNextDstPromemade@@YAXPAVCreche@@AAJPAUMapCoords@@ABU2@@Z");                          // 0x00757d79    e8d2fcffff
    asm("add                esp, 0x10");                                     // 0x00757d7e    83c410
    asm("push               0x71");                                          // 0x00757d81    6a71
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00757d83    8d4c2410
    asm("push               ecx");                                           // 0x00757d87    51
    asm("mov.s              ecx, esi");                                      // 0x00757d88    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00757d8a    e871ba0000
    asm("pop                edi");                                           // 0x00757d8f    5f
    asm("pop                esi");                                           // 0x00757d90    5e
    asm("xor.s              eax, eax");                                      // 0x00757d91    33c0
    asm("pop                ebx");                                           // 0x00757d93    5b
    asm("add                esp, 0x38");                                     // 0x00757d94    83c438
    asm("ret");                                                              // 0x00757d97    c3
    asm("_jmp_addr_0x00757d98:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757d98    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00757d9a    8d442424
    asm("push               eax");                                           // 0x00757d9e    50
    asm("mov.s              ecx, edi");                                      // 0x00757d9f    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x34], ebx");                   // 0x00757da1    895c2434
    asm("{disp8} mov        dword ptr [esp + 0x38], ebx");                   // 0x00757da5    895c2438
    asm("{disp8} mov        dword ptr [esp + 0x3c], 0x00000013");            // 0x00757da9    c744243c13000000
    asm("{disp8} mov        dword ptr [esp + 0x40], ebx");                   // 0x00757db1    895c2440
    asm("{disp8} mov        dword ptr [esp + 0x44], 0x00000052");            // 0x00757db5    c744244452000000
    asm("call               dword ptr [edx + 0x10]");                        // 0x00757dbd    ff5210
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00757dc0    8b0d5c19d000
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");           // 0x00757dc6    e8b543dfff
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00757dcb    d9442424
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]");        // 0x00757dcf    8b0db81dea00
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]");        // 0x00757dd5    8b15bc1dea00
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]");        // 0x00757ddb    a1c01dea00
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00757de0    894c2418
    asm("{disp8} fsub       dword ptr [esp + 0x18]");                        // 0x00757de4    d8642418
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00757de8    d9442428
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x00757dec    8954241c
    asm("{disp8} fsub       dword ptr [esp + 0x1c]");                        // 0x00757df0    d864241c
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00757df4    89442420
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00757df8    d944242c
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x00757dfc    8b0d203bcd00
    asm("{disp8} fsub       dword ptr [esp + 0x20]");                        // 0x00757e02    d8642420
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000003b0]");             // 0x00757e06    8b91b0030000
    asm("fld                st(0)");                                         // 0x00757e0c    d9c0
    asm("push               ebx");                                           // 0x00757e0e    53
    asm("fmul               st, st(1)");                                     // 0x00757e0f    d8c9
    asm("push               ebx");                                           // 0x00757e11    53
    asm("fld                st(2)");                                         // 0x00757e12    d9c2
    asm("push               ebx");                                           // 0x00757e14    53
    asm("fmul               st, st(3)");                                     // 0x00757e15    d8cb
    asm("push               edx");                                           // 0x00757e17    52
    asm("push               ebx");                                           // 0x00757e18    53
    asm("faddp              st(1), st");                                     // 0x00757e19    dec1
    asm("fld                st(3)");                                         // 0x00757e1b    d9c3
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x00757e1d    8d442444
    asm("fmul               st, st(4)");                                     // 0x00757e21    d8cc
    asm("push               eax");                                           // 0x00757e23    50
    asm("push               ecx");                                           // 0x00757e24    51
    asm("faddp              st(1), st");                                     // 0x00757e25    dec1
    asm("fsqrt");                                                            // 0x00757e27    d9fa
    asm("fstp               st(3)");                                         // 0x00757e29    dddb
    asm("fstp               st(0)");                                         // 0x00757e2b    ddd8
    asm("fstp               st(0)");                                         // 0x00757e2d    ddd8
    asm("fstp               dword ptr [esp]");                               // 0x00757e2f    d91c24
    asm("push               edi");                                           // 0x00757e32    57
    asm("call               _jmp_addr_0x0042a4b0");                          // 0x00757e33    e87826cdff
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757e38    8d4e14
    asm("push               ecx");                                           // 0x00757e3b    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00757e3c    8d542410
    asm("push               edx");                                           // 0x00757e40    52
    asm("{disp32} lea       eax, dword ptr [esi + 0x000000c4]");             // 0x00757e41    8d86c4000000
    asm("push               eax");                                           // 0x00757e47    50
    asm("push               edi");                                           // 0x00757e48    57
    asm("call               ?GetNextDstPromemade@@YAXPAVCreche@@AAJPAUMapCoords@@ABU2@@Z");                          // 0x00757e49    e802fcffff
    asm("add                esp, 0x10");                                     // 0x00757e4e    83c410
    asm("push               0x71");                                          // 0x00757e51    6a71
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00757e53    8d4c2410
    asm("push               ecx");                                           // 0x00757e57    51
    asm("mov.s              ecx, esi");                                      // 0x00757e58    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00757e5a    e8a1b90000
    asm("pop                edi");                                           // 0x00757e5f    5f
    asm("pop                esi");                                           // 0x00757e60    5e
    asm("mov                eax, 0x00000001");                               // 0x00757e61    b801000000
    asm("pop                ebx");                                           // 0x00757e66    5b
    asm("add                esp, 0x38");                                     // 0x00757e67    83c438
    asm("ret");                                                              // 0x00757e6a    c3
    asm("_jmp_addr_0x00757e6b:");
    asm("fstp               st(0)");                                         // 0x00757e6b    ddd8
    asm("_jmp_addr_0x00757e6d:");
    asm("pop                edi");                                           // 0x00757e6d    5f
    asm("pop                esi");                                           // 0x00757e6e    5e
    asm("xor.s              eax, eax");                                      // 0x00757e6f    33c0
    asm("pop                ebx");                                           // 0x00757e71    5b
    asm("add                esp, 0x38");                                     // 0x00757e72    83c438
    asm("ret");                                                              // 0x00757e75    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CheckChild__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757e80    56
    asm("mov.s              esi, ecx");                                      // 0x00757e81    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00757e83    8b06
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00757e85    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00757e8b    85c0
    asm("mov.s              ecx, esi");                                      // 0x00757e8d    8bce
    asm("{disp8} jne        _jmp_addr_0x00757e98");                          // 0x00757e8f    7507
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757e91    e8da830000
    asm("pop                esi");                                           // 0x00757e96    5e
    asm("ret");                                                              // 0x00757e97    c3
    asm("_jmp_addr_0x00757e98:");
    asm("call               ?IsMotherAlive@Villager@@QAE_NXZ");              // 0x00757e98    e8a3000000
    asm("test               eax, eax");                                      // 0x00757e9d    85c0
    asm("{disp8} jne        _jmp_addr_0x00757ea7");                          // 0x00757e9f    7506
    asm("{disp32} mov       dword ptr [esi + 0x00000100], eax");             // 0x00757ea1    898600010000
    asm("_jmp_addr_0x00757ea7:");
    asm("mov.s              ecx, esi");                                      // 0x00757ea7    8bce
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x00757ea9    e852a7ffff
    asm("test               eax, eax");                                      // 0x00757eae    85c0
    asm("{disp8} je         _jmp_addr_0x00757ebb");                          // 0x00757eb0    7409
    asm("mov.s              ecx, esi");                                      // 0x00757eb2    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757eb4    e8b7830000
    asm("pop                esi");                                           // 0x00757eb9    5e
    asm("ret");                                                              // 0x00757eba    c3
    asm("_jmp_addr_0x00757ebb:");
    asm("xor.s              eax, eax");                                      // 0x00757ebb    33c0
    asm("pop                esi");                                           // 0x00757ebd    5e
    asm("ret");                                                              // 0x00757ebe    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChildDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757ec0    56
    asm("mov.s              esi, ecx");                                      // 0x00757ec1    8bf1
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x00757ec3    e8b8ffffff
    asm("cmp                eax, 0x01");                                     // 0x00757ec8    83f801
    asm("{disp8} je         _jmp_addr_0x00757ef0");                          // 0x00757ecb    7423
    asm("mov.s              ecx, esi");                                      // 0x00757ecd    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x00757ecf    e8acfdffff
    asm("cmp                eax, 0x01");                                     // 0x00757ed4    83f801
    asm("{disp8} je         _jmp_addr_0x00757ef0");                          // 0x00757ed7    7417
    asm("mov.s              ecx, esi");                                      // 0x00757ed9    8bce
    asm("call               ?ChildGotoCreche@Villager@@QAEIXZ");             // 0x00757edb    e810fbffff
    asm("test               eax, eax");                                      // 0x00757ee0    85c0
    asm("{disp8} jne        _jmp_addr_0x00757ef0");                          // 0x00757ee2    750c
    asm("mov                eax, dword ptr [esi]");                          // 0x00757ee4    8b06
    asm("push               0x72");                                          // 0x00757ee6    6a72
    asm("mov.s              ecx, esi");                                      // 0x00757ee8    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757eea    ff90e8080000
    asm("_jmp_addr_0x00757ef0:");
    asm("mov                eax, 0x00000001");                               // 0x00757ef0    b801000000
    asm("pop                esi");                                           // 0x00757ef5    5e
    asm("ret");                                                              // 0x00757ef6    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckChildActivity__8VillagerFv(struct Villager* this)
{
    asm("call               ?ChildDecideWhatToDo@Villager@@QAE_NXZ");        // 0x00757f00    e8bbffffff
    asm("mov                eax, 0x00000001");                               // 0x00757f05    b801000000
    asm("ret");                                                              // 0x00757f0a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChildBecomesAdult__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757f10    56
    asm("mov.s              esi, ecx");                                      // 0x00757f11    8bf1
    asm("{disp32} mov       dword ptr [esi + 0x00000100], 0x00000000");      // 0x00757f13    c7860001000000000000
    asm("call               ?CheckNeedNewAbode@Villager@@QAEIXZ");           // 0x00757f1d    e86e000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f22    8b06
    asm("push               0x000000ea");                                    // 0x00757f24    68ea000000
    asm("mov.s              ecx, esi");                                      // 0x00757f29    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757f2b    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00757f31    b801000000
    asm("pop                esi");                                           // 0x00757f36    5e
    asm("ret");                                                              // 0x00757f37    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMotherAlive__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757f40    56
    asm("push               edi");                                           // 0x00757f41    57
    asm("mov.s              edi, ecx");                                      // 0x00757f42    8bf9
    asm("{disp32} mov       esi, dword ptr [edi + 0x00000100]");             // 0x00757f44    8bb700010000
    asm("test               esi, esi");                                      // 0x00757f4a    85f6
    asm("{disp8} je         _jmp_addr_0x00757f89");                          // 0x00757f4c    743b
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f4e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757f50    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757f52    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00757f55    83f801
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f58    752f
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00757f5a    8b4e28
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00757f5d    8b5728
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000001f4]");             // 0x00757f60    8b81f4010000
    asm("cmp                eax, dword ptr [edx + 0x000001f4]");             // 0x00757f66    3b82f4010000
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f6c    751b
    asm("mov.s              ecx, esi");                                      // 0x00757f6e    8bce
    asm("call               ?IsAMother@Villager@@QAE_NXZ");                  // 0x00757f70    e89b91ffff
    asm("cmp                eax, 0x01");                                     // 0x00757f75    83f801
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f78    750f
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b4]");               // 0x00757f7a    8a8eb4000000
    asm("and.s              cl, al");                                        // 0x00757f80    22c8
    asm("cmp.s              cl, al");                                        // 0x00757f82    3ac8
    asm("{disp8} je         _jmp_addr_0x00757f89");                          // 0x00757f84    7403
    asm("pop                edi");                                           // 0x00757f86    5f
    asm("pop                esi");                                           // 0x00757f87    5e
    asm("ret");                                                              // 0x00757f88    c3
    asm("_jmp_addr_0x00757f89:");
    asm("pop                edi");                                           // 0x00757f89    5f
    asm("xor.s              eax, eax");                                      // 0x00757f8a    33c0
    asm("pop                esi");                                           // 0x00757f8c    5e
    asm("ret");                                                              // 0x00757f8d    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeedNewAbode__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00757f90    51
    asm("push               esi");                                           // 0x00757f91    56
    asm("mov.s              esi, ecx");                                      // 0x00757f92    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f94    8b06
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00757f96    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00757f9c    85c0
    asm("{disp32} jne       _jmp_addr_0x0075806f");                          // 0x00757f9e    0f85cb000000
    asm("mov.s              ecx, esi");                                      // 0x00757fa4    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fa6    e8b5a1ffff
    asm("test               eax, eax");                                      // 0x00757fab    85c0
    asm("{disp8} je         _jmp_addr_0x00757fc5");                          // 0x00757fad    7416
    asm("mov.s              ecx, esi");                                      // 0x00757faf    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fb1    e8aaa1ffff
    asm("mov.s              ecx, eax");                                      // 0x00757fb6    8bc8
    asm("call               ?IsTooCrowded@Abode@@QAE_NXZ");                  // 0x00757fb8    e803c7caff
    asm("test               eax, eax");                                      // 0x00757fbd    85c0
    asm("{disp32} je        _jmp_addr_0x0075806f");                          // 0x00757fbf    0f84aa000000
    asm("_jmp_addr_0x00757fc5:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00757fc5    8b16
    asm("mov.s              ecx, esi");                                      // 0x00757fc7    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757fc9    ff5248
    asm("test               eax, eax");                                      // 0x00757fcc    85c0
    asm("{disp32} je        _jmp_addr_0x00758060");                          // 0x00757fce    0f848c000000
    asm("mov.s              ecx, esi");                                      // 0x00757fd4    8bce
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x00757fd6    c744240400000000
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fde    e87da1ffff
    asm("test               eax, eax");                                      // 0x00757fe3    85c0
    asm("{disp8} je         _jmp_addr_0x00757ffa");                          // 0x00757fe5    7413
    asm("push               esi");                                           // 0x00757fe7    56
    asm("mov.s              ecx, esi");                                      // 0x00757fe8    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fea    e871a1ffff
    asm("mov.s              ecx, eax");                                      // 0x00757fef    8bc8
    asm("call               ?CalculateScoreForAddingVillagerToAbode@Abode@@QAEMPAVVillager@@@Z");  // 0x00757ff1    e84acbcaff
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x00757ff6    d95c2404
    asm("_jmp_addr_0x00757ffa:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00757ffa    8b442404
    asm("mov                edx, dword ptr [esi]");                          // 0x00757ffe    8b16
    asm("push               eax");                                           // 0x00758000    50
    asm("push               esi");                                           // 0x00758001    56
    asm("mov.s              ecx, esi");                                      // 0x00758002    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758004    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758007    8bc8
    asm("call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");                          // 0x00758009    e86233feff
    asm("test               eax, eax");                                      // 0x0075800e    85c0
    asm("{disp8} je         _jmp_addr_0x0075803e");                          // 0x00758010    742c
    asm("push               eax");                                           // 0x00758012    50
    asm("mov.s              ecx, esi");                                      // 0x00758013    8bce
    asm("call               ?MoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00758015    e866000000
    asm("cmp                eax, 0x01");                                     // 0x0075801a    83f801
    asm("{disp8} jne        _jmp_addr_0x0075803e");                          // 0x0075801d    751f
    asm("mov.s              ecx, esi");                                      // 0x0075801f    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x00758021    e86aa2ffff
    asm("test               eax, eax");                                      // 0x00758026    85c0
    asm("{disp8} je         _jmp_addr_0x00758036");                          // 0x00758028    740c
    asm("mov                eax, dword ptr [esi]");                          // 0x0075802a    8b06
    asm("push               0x24");                                          // 0x0075802c    6a24
    asm("mov.s              ecx, esi");                                      // 0x0075802e    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00758030    ff90e8080000
    asm("_jmp_addr_0x00758036:");
    asm("mov                eax, 0x00000001");                               // 0x00758036    b801000000
    asm("pop                esi");                                           // 0x0075803b    5e
    asm("pop                ecx");                                           // 0x0075803c    59
    asm("ret");                                                              // 0x0075803d    c3
    asm("_jmp_addr_0x0075803e:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075803e    8b16
    asm("push               esi");                                           // 0x00758040    56
    asm("mov.s              ecx, esi");                                      // 0x00758041    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758043    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758046    8bc8
    asm("call               ?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z");                          // 0x00758048    e83335feff
    asm("test               eax, eax");                                      // 0x0075804d    85c0
    asm("{disp8} jne        _jmp_addr_0x00758058");                          // 0x0075804f    7507
    asm("mov.s              ecx, esi");                                      // 0x00758051    8bce
    asm("call               ?MakeHomeless@Villager@@QAE_NXZ");               // 0x00758053    e8c8910000
    asm("_jmp_addr_0x00758058:");
    asm("mov                eax, 0x00000001");                               // 0x00758058    b801000000
    asm("pop                esi");                                           // 0x0075805d    5e
    asm("pop                ecx");                                           // 0x0075805e    59
    asm("ret");                                                              // 0x0075805f    c3
    asm("_jmp_addr_0x00758060:");
    asm("mov.s              ecx, esi");                                      // 0x00758060    8bce
    asm("call               _jmp_addr_0x0076a8d0");                          // 0x00758062    e869280100
    asm("mov                eax, 0x00000001");                               // 0x00758067    b801000000
    asm("pop                esi");                                           // 0x0075806c    5e
    asm("pop                ecx");                                           // 0x0075806d    59
    asm("ret");                                                              // 0x0075806e    c3
    asm("_jmp_addr_0x0075806f:");
    asm("xor.s              eax, eax");                                      // 0x0075806f    33c0
    asm("pop                esi");                                           // 0x00758071    5e
    asm("pop                ecx");                                           // 0x00758072    59
    asm("ret");                                                              // 0x00758073    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall MoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode)
{
    asm("push               esi");                                           // 0x00758080    56
    asm("push               edi");                                           // 0x00758081    57
    asm("mov.s              edi, ecx");                                      // 0x00758082    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00758084    8b07
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00758086    ff90f80a0000
    asm("test               eax, eax");                                      // 0x0075808c    85c0
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                   // 0x0075808e    8b74240c
    asm("mov.s              ecx, esi");                                      // 0x00758092    8bce
    asm("{disp8} je         _jmp_addr_0x007580a6");                          // 0x00758094    7410
    asm("call               ?GetRoomLeftForChildren@Abode@@QAEHXZ");         // 0x00758096    e8e5c5caff
    asm("test               eax, eax");                                      // 0x0075809b    85c0
    asm("{disp8} jg         _jmp_addr_0x007580b6");                          // 0x0075809d    7f17
    asm("pop                edi");                                           // 0x0075809f    5f
    asm("xor.s              eax, eax");                                      // 0x007580a0    33c0
    asm("pop                esi");                                           // 0x007580a2    5e
    asm("ret                0x0004");                                        // 0x007580a3    c20400
    asm("_jmp_addr_0x007580a6:");
    asm("call               ?GetRoomLeftForAdults@Abode@@QAEHXZ");           // 0x007580a6    e8b5c5caff
    asm("test               eax, eax");                                      // 0x007580ab    85c0
    asm("{disp8} jg         _jmp_addr_0x007580b6");                          // 0x007580ad    7f07
    asm("pop                edi");                                           // 0x007580af    5f
    asm("xor.s              eax, eax");                                      // 0x007580b0    33c0
    asm("pop                esi");                                           // 0x007580b2    5e
    asm("ret                0x0004");                                        // 0x007580b3    c20400
    asm("_jmp_addr_0x007580b6:");
    asm("push               esi");                                           // 0x007580b6    56
    asm("mov.s              ecx, edi");                                      // 0x007580b7    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007580b9    e882e1ffff
    asm("pop                edi");                                           // 0x007580be    5f
    asm("mov                eax, 0x00000001");                               // 0x007580bf    b801000000
    asm("pop                esi");                                           // 0x007580c4    5e
    asm("ret                0x0004");                                        // 0x007580c5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall MakeChildOrphaned__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1)
{
    asm("push               esi");                                           // 0x007580d0    56
    asm("mov.s              esi, ecx");                                      // 0x007580d1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000100]");             // 0x007580d3    8b8600010000
    asm("cmp                eax, dword ptr [esp + 0x08]");                   // 0x007580d9    3b442408
    asm("{disp8} jne        _jmp_addr_0x0075810c");                          // 0x007580dd    752d
    asm("mov.s              ecx, esi");                                      // 0x007580df    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x007580e1    e8aaa1ffff
    asm("test               eax, eax");                                      // 0x007580e6    85c0
    asm("{disp8} je         _jmp_addr_0x007580f9");                          // 0x007580e8    740f
    asm("mov                edx, dword ptr [esi]");                          // 0x007580ea    8b16
    asm("push               0x00000083");                                    // 0x007580ec    6883000000
    asm("mov.s              ecx, esi");                                      // 0x007580f1    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007580f3    ff92e8080000
    asm("_jmp_addr_0x007580f9:");
    asm("{disp32} mov       dword ptr [esi + 0x00000100], 0x00000000");      // 0x007580f9    c7860001000000000000
    asm("mov                eax, 0x00000001");                               // 0x00758103    b801000000
    asm("pop                esi");                                           // 0x00758108    5e
    asm("ret                0x0004");                                        // 0x00758109    c20400
    asm("_jmp_addr_0x0075810c:");
    asm("xor.s              eax, eax");                                      // 0x0075810c    33c0
    asm("pop                esi");                                           // 0x0075810e    5e
    asm("ret                0x0004");                                        // 0x0075810f    c20400
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00758120(void)
{
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]");          // 0x00758120    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00758126    b001
    asm("test               al, cl");                                        // 0x00758128    84c8
    asm("{disp8} jne        _jmp_addr_0x00758134");                          // 0x0075812a    7508
    asm("or.s               cl, al");                                        // 0x0075812c    0ac8
    asm("{disp32} mov       byte ptr [data_bytes + 0x5e6934], cl");          // 0x0075812e    880d34c9fa00
    asm("_jmp_addr_0x00758134:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00758140");   // 0x00758134    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00758140(void)
{
    asm("push               0x00407870");                                    // 0x00758140    6870784000
    asm("call               _atexit");                                       // 0x00758145    e847d60600
    asm("pop                ecx");                                           // 0x0075814a    59
    asm("ret");                                                              // 0x0075814b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00758150(void)
{
    asm("{disp32} jmp       _FUN_00758160__8VillagerFv");                    // 0x00758150    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00758160__8VillagerFv(void)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0xf194c]");             // 0x00758160    d9054ca99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0xf1948]");             // 0x00758166    d80d48a99900
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3df0]");             // 0x0075816c    d91df09ddb00
    asm("ret");                                                              // 0x00758172    c3
    __builtin_unreachable();
}
