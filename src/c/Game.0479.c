#include "Game.h"

__attribute__((XOR32rr_REV))
struct GGame* __fastcall __ct__5GGameFv(struct GGame* this)
{
    asm("push               ebx");                                           // 0x0054b240    53
    asm("push               ebp");                                           // 0x0054b241    55
    asm("push               esi");                                           // 0x0054b242    56
    asm("push               edi");                                           // 0x0054b243    57
    asm("mov.s              esi, ecx");                                      // 0x0054b244    8bf1
    asm("call               ??0GameThing@@QAE@XZ ");                         // 0x0054b246    e8c5470200
    asm("{disp8} lea        edi, dword ptr [esi + 0x18]");                   // 0x0054b24b    8d7e18
    asm("mov                ebx, 0x00000008");                               // 0x0054b24e    bb08000000
    asm("_jmp_addr_0x0054b253:");
    asm("mov.s              ecx, edi");                                      // 0x0054b253    8bcf
    asm("call               _jmp_addr_0x00648da0");                          // 0x0054b255    e846db0f00
    asm("add                edi, 0x00000a60");                               // 0x0054b25a    81c7600a0000
    asm("dec                ebx");                                           // 0x0054b260    4b
    asm("{disp8} jne        _jmp_addr_0x0054b253");                          // 0x0054b261    75f0
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000597c]");             // 0x0054b263    8d8e7c590000
    asm("call               ??0StatsDatabase@@QAE@XZ  ");                    // 0x0054b269    e862860e00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000598c]");             // 0x0054b26e    8d8e8c590000
    asm("call               ??0CreatureDatabase@@QAE@XZ  ");                 // 0x0054b274    e837840e00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x000059b8]");             // 0x0054b279    8d8eb8590000
    asm("call               ??0GMap@@QAE@XZ     ");                          // 0x0054b27f    e8fc5d0b00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205a30]");             // 0x0054b284    8d8e305a2000
    asm("call               ??0GData@@QAE@XZ ");                             // 0x0054b28a    e87152fcff
    asm("{disp32} lea       edi, dword ptr [esi + 0x00205a70]");             // 0x0054b28f    8dbe705a2000
    asm("xor.s              ebx, ebx");                                      // 0x0054b295    33db
    asm("mov.s              ecx, edi");                                      // 0x0054b297    8bcf
    asm("mov                byte ptr [edi], bl");                            // 0x0054b299    881f
    asm("{disp8} mov        dword ptr [edi + 0x04], ebx");                   // 0x0054b29b    895f04
    asm("call               ??0MapCoords@@QAE@XZ ");                         // 0x0054b29e    e8bd68efff
    asm("mov.s              ecx, edi");                                      // 0x0054b2a3    8bcf
    asm("call               ??0MapCoords@@QAE@XZ ");                         // 0x0054b2a5    e8b668efff
    asm("mov.s              ecx, edi");                                      // 0x0054b2aa    8bcf
    asm("call               _jmp_addr_0x0054b910");                          // 0x0054b2ac    e85f060000
    asm("{disp32} lea       edi, dword ptr [esi + 0x00205a68]");             // 0x0054b2b1    8dbe685a2000
    asm("mov.s              ecx, edi");                                      // 0x0054b2b7    8bcf
    asm("call               _jmp_addr_0x0054b8f0");                          // 0x0054b2b9    e832060000
    asm("mov.s              ecx, edi");                                      // 0x0054b2be    8bcf
    asm("call               ??0MapCoords@@QAE@XZ ");                         // 0x0054b2c0    e89b68efff
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205a74]");             // 0x0054b2c5    8d8e745a2000
    asm("call               ??0MapCoords@@QAE@XZ ");                         // 0x0054b2cb    e89068efff
    asm("{disp32} mov       dword ptr [esi + 0x00205b7c], ebx");             // 0x0054b2d0    899e7c5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b78], ebx");             // 0x0054b2d6    899e785b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b80], ebx");             // 0x0054b2dc    899e805b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b84], ebx");             // 0x0054b2e2    899e845b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b88], ebx");             // 0x0054b2e8    899e885b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b8c], ebx");             // 0x0054b2ee    899e8c5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b70], 0x00000032");      // 0x0054b2f4    c786705b200032000000
    asm("{disp32} mov       byte ptr [esi + 0x00205b90], bl");               // 0x0054b2fe    889e905b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b94], 0x00000064");      // 0x0054b304    c786945b200064000000
    asm("{disp32} mov       dword ptr [esi + 0x00205b98], ebx");             // 0x0054b30e    899e985b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205b9c], ebx");             // 0x0054b314    899e9c5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ba4], 0x008a9a44");      // 0x0054b31a    c786a45b2000449a8a00
    asm("{disp32} mov       dword ptr [esi + 0x00205ba8], ebx");             // 0x0054b324    899ea85b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bac], ebx");             // 0x0054b32a    899eac5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bb0], ebx");             // 0x0054b330    899eb05b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bb4], ebx");             // 0x0054b336    899eb45b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bb8], ebx");             // 0x0054b33c    899eb85b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bbc], ebx");             // 0x0054b342    899ebc5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bc0], ebx");             // 0x0054b348    899ec05b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bc4], ebx");             // 0x0054b34e    899ec45b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bc8], ebx");             // 0x0054b354    899ec85b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bcc], ebx");             // 0x0054b35a    899ecc5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bd0], ebx");             // 0x0054b360    899ed05b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bd4], ebx");             // 0x0054b366    899ed45b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bd8], ebx");             // 0x0054b36c    899ed85b2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205be4]");             // 0x0054b372    8d8ee45b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bdc], ebx");             // 0x0054b378    899edc5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205be0], ebx");             // 0x0054b37e    899ee05b2000
    asm("call               _jmp_addr_0x00555bd0");                          // 0x0054b384    e847a80000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205bec]");             // 0x0054b389    8d8eec5b2000
    asm("call               _jmp_addr_0x00555be0");                          // 0x0054b38f    e84ca80000
    asm("{disp32} mov       dword ptr [esi + 0x00205bf4], ebx");             // 0x0054b394    899ef45b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bf8], ebx");             // 0x0054b39a    899ef85b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205bfc], ebx");             // 0x0054b3a0    899efc5b2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c00], ebx");             // 0x0054b3a6    899e005c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c04], ebx");             // 0x0054b3ac    899e045c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c08], ebx");             // 0x0054b3b2    899e085c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c0c], ebx");             // 0x0054b3b8    899e0c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c10], ebx");             // 0x0054b3be    899e105c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c14], ebx");             // 0x0054b3c4    899e145c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c18], ebx");             // 0x0054b3ca    899e185c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c1c], ebx");             // 0x0054b3d0    899e1c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c20], ebx");             // 0x0054b3d6    899e205c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c24], ebx");             // 0x0054b3dc    899e245c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c28], ebx");             // 0x0054b3e2    899e285c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c2c], ebx");             // 0x0054b3e8    899e2c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c30], ebx");             // 0x0054b3ee    899e305c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c34], ebx");             // 0x0054b3f4    899e345c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c38], ebx");             // 0x0054b3fa    899e385c2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205c44]");             // 0x0054b400    8d8e445c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c3c], ebx");             // 0x0054b406    899e3c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c40], ebx");             // 0x0054b40c    899e405c2000
    asm("call               _jmp_addr_0x00555bf0");                          // 0x0054b412    e8d9a70000
    asm("{disp32} mov       dword ptr [esi + 0x00205c4c], ebx");             // 0x0054b417    899e4c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c50], ebx");             // 0x0054b41d    899e505c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c54], ebx");             // 0x0054b423    899e545c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c58], ebx");             // 0x0054b429    899e585c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c5c], ebx");             // 0x0054b42f    899e5c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c60], ebx");             // 0x0054b435    899e605c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c64], ebx");             // 0x0054b43b    899e645c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c68], ebx");             // 0x0054b441    899e685c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c6c], ebx");             // 0x0054b447    899e6c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c70], ebx");             // 0x0054b44d    899e705c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c74], ebx");             // 0x0054b453    899e745c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c78], ebx");             // 0x0054b459    899e785c2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205c84]");             // 0x0054b45f    8d8e845c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c7c], ebx");             // 0x0054b465    899e7c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c80], ebx");             // 0x0054b46b    899e805c2000
    asm("call               _jmp_addr_0x00555c00");                          // 0x0054b471    e88aa70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205c8c]");             // 0x0054b476    8d8e8c5c2000
    asm("call               _jmp_addr_0x00555c10");                          // 0x0054b47c    e88fa70000
    asm("{disp32} mov       dword ptr [esi + 0x00205c94], ebx");             // 0x0054b481    899e945c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c98], ebx");             // 0x0054b487    899e985c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205c9c], ebx");             // 0x0054b48d    899e9c5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ca0], ebx");             // 0x0054b493    899ea05c2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cac]");             // 0x0054b499    8d8eac5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ca4], ebx");             // 0x0054b49f    899ea45c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ca8], ebx");             // 0x0054b4a5    899ea85c2000
    asm("call               _jmp_addr_0x00555c20");                          // 0x0054b4ab    e870a70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cb4]");             // 0x0054b4b0    8d8eb45c2000
    asm("call               _jmp_addr_0x00555c30");                          // 0x0054b4b6    e875a70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cbc]");             // 0x0054b4bb    8d8ebc5c2000
    asm("call               _jmp_addr_0x00555c40");                          // 0x0054b4c1    e87aa70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205ccc]");             // 0x0054b4c6    8d8ecc5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205cc4], ebx");             // 0x0054b4cc    899ec45c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205cc8], ebx");             // 0x0054b4d2    899ec85c2000
    asm("call               _jmp_addr_0x00555c50");                          // 0x0054b4d8    e873a70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cd4]");             // 0x0054b4dd    8d8ed45c2000
    asm("call               _jmp_addr_0x00555c60");                          // 0x0054b4e3    e878a70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cdc]");             // 0x0054b4e8    8d8edc5c2000
    asm("call               _jmp_addr_0x00555c70");                          // 0x0054b4ee    e87da70000
    asm("{disp32} mov       dword ptr [esi + 0x00205ce4], ebx");             // 0x0054b4f3    899ee45c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ce8], ebx");             // 0x0054b4f9    899ee85c2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cf4]");             // 0x0054b4ff    8d8ef45c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205cec], ebx");             // 0x0054b505    899eec5c2000
    asm("{disp32} mov       dword ptr [esi + 0x00205cf0], ebx");             // 0x0054b50b    899ef05c2000
    asm("call               _jmp_addr_0x00555c80");                          // 0x0054b511    e86aa70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205cfc]");             // 0x0054b516    8d8efc5c2000
    asm("call               _jmp_addr_0x00555c90");                          // 0x0054b51c    e86fa70000
    asm("{disp32} mov       dword ptr [esi + 0x00205d04], ebx");             // 0x0054b521    899e045d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d08], ebx");             // 0x0054b527    899e085d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d0c], ebx");             // 0x0054b52d    899e0c5d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d10], ebx");             // 0x0054b533    899e105d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d14], ebx");             // 0x0054b539    899e145d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d18], ebx");             // 0x0054b53f    899e185d2000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205d24]");             // 0x0054b545    8d8e245d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d1c], ebx");             // 0x0054b54b    899e1c5d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205d20], ebx");             // 0x0054b551    899e205d2000
    asm("call               _jmp_addr_0x00555ca0");                          // 0x0054b557    e844a70000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205d2c]");             // 0x0054b55c    8d8e2c5d2000
    asm("call               _jmp_addr_0x00555cb0");                          // 0x0054b562    e849a70000
    asm("{disp32} lea       edi, dword ptr [esi + 0x00205d68]");             // 0x0054b567    8dbe685d2000
    asm("{disp32} mov       dword ptr [esi + 0x00205ba4], 0x008df760");      // 0x0054b56d    c786a45b200060f78d00
    asm("push               ebx");                                           // 0x0054b577    53
    asm("mov.s              ecx, edi");                                      // 0x0054b578    8bcf
    asm("{disp32} mov       dword ptr [edi + 0x00000108], 0x3f800000");      // 0x0054b57a    c787080100000000803f
    asm("{disp32} mov       dword ptr [edi + 0x0000010c], ebx");             // 0x0054b584    899f0c010000
    asm("call               @Reset__7LHTimerFUl@12");                        // 0x0054b58a    e8c1020000
    asm("mov.s              ecx, edi");                                      // 0x0054b58f    8bcf
    asm("call               ?Stop@LHTimer@@QAEXXZ");                           // 0x0054b591    e82a34efff
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205e8c]");             // 0x0054b596    8d8e8c5e2000
    asm("call               ??0TerrainMapInfo@@QAE@XZ");                          // 0x0054b59c    e82f070000
    asm("{disp32} lea       edi, dword ptr [esi + 0x0024ffbc]");             // 0x0054b5a1    8dbebcff2400
    asm("mov.s              ecx, edi");                                      // 0x0054b5a7    8bcf
    asm("call               ??0GBaseInfo@@QAE@XZ");                          // 0x0054b5a9    e83230eeff
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0025004c]");             // 0x0054b5ae    8d8e4c002500
    asm("mov                dword ptr [edi], 0x008df730");                   // 0x0054b5b4    c70730f78d00
    asm("call               ??0GLanguage@@QAE@XZ ");                         // 0x0054b5ba    e891b10900
    asm("{disp32} lea       ebp, dword ptr [esi + 0x0025009c]");             // 0x0054b5bf    8dae9c002500
    asm("mov.s              ecx, ebp");                                      // 0x0054b5c5    8bcd
    asm("{disp32} mov       dword ptr [esi + 0x0025008c], ebx");             // 0x0054b5c7    899e8c002500
    asm("{disp32} mov       dword ptr [esi + 0x00250088], ebx");             // 0x0054b5cd    899e88002500
    asm("{disp32} mov       dword ptr [esi + 0x00250084], ebx");             // 0x0054b5d3    899e84002500
    asm("call               ??0MapCoords@@QAE@XZ ");                         // 0x0054b5d9    e88265efff
    asm("{disp32} lea       ecx, dword ptr [esi + 0x002502a8]");             // 0x0054b5de    8d8ea8022500
    asm("call               ??0GKeyBuffer@@QAE@XZ");                         // 0x0054b5e4    e847030000
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00250310]");             // 0x0054b5e9    8d8e10032500
    asm("call               ??0PathCreator@@QAE@XZ");                          // 0x0054b5ef    e8cc322400
    asm("{disp32} mov       edi, dword ptr [rdata_bytes + 0x17c]");          // 0x0054b5f4    8b3d7c918a00
    asm("mov                dword ptr [esi], 0x008df630");                   // 0x0054b5fa    c70630f68d00
    asm("{disp32} mov       dword ptr [esi + 0x00250178], ebx");             // 0x0054b600    899e78012500
    asm("{disp32} mov       dword ptr [esi + 0x000059b4], ebx");             // 0x0054b606    899eb4590000
    asm("{disp32} mov       byte ptr [data_bytes + 0x33b834], bl");          // 0x0054b60c    881d3418d000
    asm("push               0x00cd3af8");                                    // 0x0054b612    68f83acd00
    asm("{disp32} mov       dword ptr [esi + 0x0025017c], ebx");             // 0x0054b617    899e7c012500
    asm("{disp32} mov       dword ptr [esi + 0x00250180], ebx");             // 0x0054b61d    899e80012500
    asm("call               edi");                                           // 0x0054b623    ffd7
    asm("push               0x00ef74f8");                                    // 0x0054b625    68f874ef00
    asm("call               edi");                                           // 0x0054b62a    ffd7
    asm("push               ebx");                                           // 0x0054b62c    53
    asm("push               0x00844e30");                                    // 0x0054b62d    68304e8400
    asm("push               0x1");                                           // 0x0054b632    6a01
    asm("push               0x00008000");                                    // 0x0054b634    6800800000
    asm("call               ?RegisterFinishFrameCallback@LH3DRender@@QAEXK_NP6AXPAX@Z1@Z");                          // 0x0054b639    e8823c2e00
    asm("add                esp, 0x10");                                     // 0x0054b63e    83c410
    asm("call               _Init__12CPControllerFv@0");                     // 0x0054b641    e84ae3f1ff
    asm("mov.s              ecx, esi");                                      // 0x0054b646    8bce
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf36c], 0x0054ff80"); // 0x0054b648    c7056c53e80080ff5400
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf370], ebx");        // 0x0054b652    891d7053e800
    asm("{disp32} mov       byte ptr [data_bytes + 0x2261f4], bl");          // 0x0054b658    881df4c1be00
    asm("call               ?ClearVariables@GGame@@QAEXXZ");                          // 0x0054b65e    e8bd080000
    asm("call               _jmp_addr_0x0054ba40");                          // 0x0054b663    e8d8030000
    asm("push               0x000003fe");                                    // 0x0054b668    68fe030000
    asm("push               0x00bec32c");                                    // 0x0054b66d    682cc3be00
    asm("push               0x00000110");                                    // 0x0054b672    6810010000
    asm("{disp32} mov       dword ptr [esi + 0x002502e8], ebx");             // 0x0054b677    899ee8022500
    asm("{disp32} mov       dword ptr [esi + 0x002502ec], ebx");             // 0x0054b67d    899eec022500
    asm("{disp32} mov       dword ptr [esi + 0x00205d3c], ebx");             // 0x0054b683    899e3c5d2000
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0054b689    e862b0eeff
    asm("add                esp, 0x0c");                                     // 0x0054b68e    83c40c
    asm("cmp.s              eax, ebx");                                      // 0x0054b691    3bc3
    asm("{disp8} je         _jmp_addr_0x0054b69e");                          // 0x0054b693    7409
    asm("mov.s              ecx, eax");                                      // 0x0054b695    8bc8
    asm("call               ??0GSoundMap@@QAE@XZ ");                         // 0x0054b697    e834030000
    asm("{disp8} jmp        _jmp_addr_0x0054b6a0");                          // 0x0054b69c    eb02
    asm("_jmp_addr_0x0054b69e:");
    asm("xor.s              eax, eax");                                      // 0x0054b69e    33c0
    asm("_jmp_addr_0x0054b6a0:");
    asm("{disp32} mov       dword ptr [esi + 0x00250058], eax");             // 0x0054b6a0    898658002500
    asm("{disp32} mov       dword ptr [esi + 0x0025005c], ebx");             // 0x0054b6a6    899e5c002500
    asm("{disp32} mov       dword ptr [esi + 0x00250060], ebx");             // 0x0054b6ac    899e60002500
    asm("call               ?Create@GScript@@QAEPAV1@XZ");                          // 0x0054b6b2    e849fa1900
    asm("push               0x00000404");                                    // 0x0054b6b7    6804040000
    asm("push               0x00bec32c");                                    // 0x0054b6bc    682cc3be00
    asm("push               0x10");                                          // 0x0054b6c1    6a10
    asm("{disp32} mov       dword ptr [esi + 0x00250090], eax");             // 0x0054b6c3    898690002500
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0054b6c9    e822b0eeff
    asm("add                esp, 0x0c");                                     // 0x0054b6ce    83c40c
    asm("cmp.s              eax, ebx");                                      // 0x0054b6d1    3bc3
    asm("{disp8} je         _jmp_addr_0x0054b6de");                          // 0x0054b6d3    7409
    asm("mov.s              ecx, eax");                                      // 0x0054b6d5    8bc8
    asm("call               ??0GestureSystemDataList@@QAE@XZ");                          // 0x0054b6d7    e8c4030000
    asm("{disp8} jmp        _jmp_addr_0x0054b6e0");                          // 0x0054b6dc    eb02
    asm("_jmp_addr_0x0054b6de:");
    asm("xor.s              eax, eax");                                      // 0x0054b6de    33c0
    asm("_jmp_addr_0x0054b6e0:");
    asm("push               0x00000405");                                    // 0x0054b6e0    6805040000
    asm("push               0x00bec32c");                                    // 0x0054b6e5    682cc3be00
    asm("push               0x0000065c");                                    // 0x0054b6ea    685c060000
    asm("{disp32} mov       dword ptr [esi + 0x00250064], eax");             // 0x0054b6ef    898664002500
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0054b6f5    e8f6afeeff
    asm("add                esp, 0x0c");                                     // 0x0054b6fa    83c40c
    asm("cmp.s              eax, ebx");                                      // 0x0054b6fd    3bc3
    asm("{disp8} je         _jmp_addr_0x0054b70a");                          // 0x0054b6ff    7409
    asm("mov.s              ecx, eax");                                      // 0x0054b701    8bc8
    asm("call               ??0GestureSystemData@@QAE@XZ");                          // 0x0054b703    e8e8030000
    asm("{disp8} jmp        _jmp_addr_0x0054b70c");                          // 0x0054b708    eb02
    asm("_jmp_addr_0x0054b70a:");
    asm("xor.s              eax, eax");                                      // 0x0054b70a    33c0
    asm("_jmp_addr_0x0054b70c:");
    asm("push               0x00000406");                                    // 0x0054b70c    6806040000
    asm("push               0x00bec32c");                                    // 0x0054b711    682cc3be00
    asm("push               0x00000c98");                                    // 0x0054b716    68980c0000
    asm("{disp32} mov       dword ptr [esi + 0x00250068], eax");             // 0x0054b71b    898668002500
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0054b721    e8caafeeff
    asm("add                esp, 0x0c");                                     // 0x0054b726    83c40c
    asm("cmp.s              eax, ebx");                                      // 0x0054b729    3bc3
    asm("{disp8} je         _jmp_addr_0x0054b736");                          // 0x0054b72b    7409
    asm("mov.s              ecx, eax");                                      // 0x0054b72d    8bc8
    asm("call               ??0GestureSystem@@QAE@XZ");                      // 0x0054b72f    e80c040000
    asm("{disp8} jmp        _jmp_addr_0x0054b738");                          // 0x0054b734    eb02
    asm("_jmp_addr_0x0054b736:");
    asm("xor.s              eax, eax");                                      // 0x0054b736    33c0
    asm("_jmp_addr_0x0054b738:");
    asm("push               0x00000407");                                    // 0x0054b738    6807040000
    asm("push               0x00bec32c");                                    // 0x0054b73d    682cc3be00
    asm("push               0xc");                                           // 0x0054b742    6a0c
    asm("{disp32} mov       dword ptr [esi + 0x0025006c], eax");             // 0x0054b744    89866c002500
    asm("call               ___nw__FUl");                                    // 0x0054b74a    e841002900
    asm("mov.s              edi, eax");                                      // 0x0054b74f    8bf8
    asm("add                esp, 0x0c");                                     // 0x0054b751    83c40c
    asm("cmp.s              edi, ebx");                                      // 0x0054b754    3bfb
    asm("{disp8} je         _jmp_addr_0x0054b761");                          // 0x0054b756    7409
    asm("mov.s              ecx, edi");                                      // 0x0054b758    8bcf
    asm("call               ??0GestureSystemResult@@QAE@XZ");                          // 0x0054b75a    e831040000
    asm("{disp8} jmp        _jmp_addr_0x0054b763");                          // 0x0054b75f    eb02
    asm("_jmp_addr_0x0054b761:");
    asm("xor.s              edi, edi");                                      // 0x0054b761    33ff
    asm("_jmp_addr_0x0054b763:");
    asm("push               0x00000408");                                    // 0x0054b763    6808040000
    asm("push               0x00bec32c");                                    // 0x0054b768    682cc3be00
    asm("push               0x00000104");                                    // 0x0054b76d    6804010000
    asm("{disp32} mov       dword ptr [esi + 0x00250070], edi");             // 0x0054b772    89be70002500
    asm("call               ___nw__FUl");                                    // 0x0054b778    e813002900
    asm("mov.s              edi, eax");                                      // 0x0054b77d    8bf8
    asm("add                esp, 0x0c");                                     // 0x0054b77f    83c40c
    asm("cmp.s              edi, ebx");                                      // 0x0054b782    3bfb
    asm("{disp8} je         _jmp_addr_0x0054b78f");                          // 0x0054b784    7409
    asm("mov.s              ecx, edi");                                      // 0x0054b786    8bcf
    asm("call               ?InitialiseToDefaults@Settings@@QAEXXZ");          // 0x0054b788    e893941c00
    asm("{disp8} jmp        _jmp_addr_0x0054b791");                          // 0x0054b78d    eb02
    asm("_jmp_addr_0x0054b78f:");
    asm("xor.s              edi, edi");                                      // 0x0054b78f    33ff
    asm("_jmp_addr_0x0054b791:");
    asm("mov.s              ecx, ebp");                                      // 0x0054b791    8bcd
    asm("{disp32} mov       dword ptr [esi + 0x00250074], edi");             // 0x0054b793    89be74002500
    asm("call               ?SetZero@LH3DMapCoords@@QAEXXZ");                          // 0x0054b799    e882000000
    asm("mov                eax, 0x3f800000");                               // 0x0054b79e    b80000803f
    asm("{disp32} mov       byte ptr [esi + 0x002500a8], bl");               // 0x0054b7a3    889ea8002500
    asm("{disp32} mov       dword ptr [esi + 0x00250170], ebx");             // 0x0054b7a9    899e70012500
    asm("{disp32} mov       dword ptr [esi + 0x0025007c], eax");             // 0x0054b7af    89867c002500
    asm("{disp32} mov       dword ptr [esi + 0x00250078], eax");             // 0x0054b7b5    898678002500
    asm("call               ?InitialiseBitmaps@DanceLight@@QAEXXZ");                          // 0x0054b7bb    e8f03ffcff
    asm("push               0x0054af60");                                    // 0x0054b7c0    6860af5400
    asm("push               0x0054afb0");                                    // 0x0054b7c5    68b0af5400
    asm("call               ?InitialiseSystem@RPHolder@@QAEXP6AXHHPAV1@@ZP6AX0@Z@Z");                          // 0x0054b7ca    e831fb2e00
    asm("{disp8} mov        eax, dword ptr [esi + 0x14]");                   // 0x0054b7cf    8b4614
    asm("add                esp, 0x08");                                     // 0x0054b7d2    83c408
    asm("or                 eax, 0x10000");                                  // 0x0054b7d5    0d00000100
    asm("pop                edi");                                           // 0x0054b7da    5f
    asm("{disp8} mov        dword ptr [esi + 0x14], eax");                   // 0x0054b7db    894614
    asm("{disp32} mov       dword ptr [esi + 0x002502a4], ebx");             // 0x0054b7de    899ea4022500
    asm("{disp32} mov       dword ptr [esi + 0x00205a08], ebx");             // 0x0054b7e4    899e085a2000
    asm("{disp32} mov       dword ptr [esi + 0x0025053c], ebx");             // 0x0054b7ea    899e3c052500
    asm("{disp32} mov       dword ptr [esi + 0x00250540], ebx");             // 0x0054b7f0    899e40052500
    asm("{disp32} mov       dword ptr [esi + 0x00250534], ebx");             // 0x0054b7f6    899e34052500
    asm("{disp32} mov       dword ptr [esi + 0x000059a4], 0x00000001");      // 0x0054b7fc    c786a459000001000000
    asm("{disp32} mov       dword ptr [esi + 0x00205d34], 0x00000032");      // 0x0054b806    c786345d200032000000
    asm("mov.s              eax, esi");                                      // 0x0054b810    8bc6
    asm("pop                esi");                                           // 0x0054b812    5e
    asm("pop                ebp");                                           // 0x0054b813    5d
    asm("pop                ebx");                                           // 0x0054b814    5b
    asm("ret");                                                              // 0x0054b815    c3
    __builtin_unreachable();
}
