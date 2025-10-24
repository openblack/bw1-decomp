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
