#include "Abode.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__5Abode = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVAbode@@",
};

char abode_column[] = "Abode:\0";
char abode_file[] = "C:\\dev\\MP\\Black\\Abode.cpp\0";

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Abode = {
    .pTypeDescriptor = &__RTTITypeDescriptor__5Abode,
    .numContainedBases = 0x00000006,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__5Abode = {
    .arrayOfBaseClassDescriptors = {
        &__RTTIBaseClassDescriptor__5Abode,
        &__RTTIBaseClassDescriptor__13MultiMapFixed,
        &__RTTIBaseClassDescriptor__11FixedObject,
        &__RTTIBaseClassDescriptor__6Object,
        &__RTTIBaseClassDescriptor__16GameThingWithPos,
        &__RTTIBaseClassDescriptor__9GameThing,
        &__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Abode = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000007,
  .pBaseClassArray = &__RTTIBaseClassArray__5Abode,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5Abode = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__5Abode,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__5Abode,
};

void __fastcall __dt__5AbodeFv(struct Abode* this)
{
    asm("push               esi");                                      // 0x00402b60    56
    asm("mov.s              esi, ecx");                                 // 0x00402b61    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x0000008c]");        // 0x00402b63    8b8e8c000000
    asm("test               ecx, ecx");                                 // 0x00402b69    85c9
    asm("push               edi");                                      // 0x00402b6b    57
    asm("mov                dword ptr [esi], 0x008a9a64");              // 0x00402b6c    c706649a8a00
    asm("{disp8} je         _jmp_addr_0x00402b83");                     // 0x00402b72    740f
    asm("call               ?Release@LH3DSmoke@@QAEXXZ");               // 0x00402b74    e897613f00
    asm("{disp32} mov       dword ptr [esi + 0x0000008c], 0x00000000"); // 0x00402b79    c7868c00000000000000
    asm("_jmp_addr_0x00402b83:");
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000090]");        // 0x00402b83    8bbe90000000
    asm("test               edi, edi");                                 // 0x00402b89    85ff
    asm("{disp8} je         _jmp_addr_0x00402ba7");                     // 0x00402b8b    741a
    asm("mov.s              ecx, edi");                                 // 0x00402b8d    8bcf
    asm("call               ??1FragMesh@@QAE@XZ");                      // 0x00402b8f    e84c453f00
    asm("push               edi");                                      // 0x00402b94    57
    asm("call                ??3@YAXPAX@Z");                              // 0x00402b95    e8fec23a00
    asm("add                esp, 0x04");                                // 0x00402b9a    83c404
    asm("{disp32} mov       dword ptr [esi + 0x00000090], 0x00000000"); // 0x00402b9d    c7869000000000000000
    asm("_jmp_addr_0x00402ba7:");
    asm("mov.s              ecx, esi");                                 // 0x00402ba7    8bce
    asm("call               _jmp_addr_0x0052e280");                     // 0x00402ba9    e8d2b61200
    asm("pop                edi");                                      // 0x00402bae    5f
    asm("pop                esi");                                      // 0x00402baf    5e
    asm("ret");                                                         // 0x00402bb0    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetZero__5AbodeFv(struct Abode* this)
{
    asm("xor.s              eax, eax");                                 // 0x00402bc0    33c0
    asm("{disp32} mov       byte ptr [ecx + 0x000000b6], al");          // 0x00402bc2    8881b6000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000b4], al");          // 0x00402bc8    8881b4000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000b7], al");          // 0x00402bce    8881b7000000
    asm("{disp32} mov       dword ptr [ecx + 0x00000094], eax");        // 0x00402bd4    898194000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000bc], eax");        // 0x00402bda    8981bc000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000c0], eax");        // 0x00402be0    8981c0000000
    asm("{disp32} mov       dword ptr [ecx + 0x0000008c], eax");        // 0x00402be6    89818c000000
    asm("{disp32} mov       dword ptr [ecx + 0x00000090], eax");        // 0x00402bec    898190000000
    asm("{disp8} mov        byte ptr [ecx + 0x7c], al");                // 0x00402bf2    88417c
    asm("{disp32} mov       dword ptr [ecx + 0x000000b0], eax");        // 0x00402bf5    8981b0000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000b5], al");          // 0x00402bfb    8881b5000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000b9], al");          // 0x00402c01    8881b9000000
    asm("ret");                                                         // 0x00402c07    c3
    __builtin_unreachable();
}

void __fastcall Delete__5AbodeFv(struct Base* this)
{
    asm("push               esi");                                      // 0x00402c10    56
    asm("mov.s              esi, ecx");                                 // 0x00402c11    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00402c13    8b06
    asm("call               dword ptr [eax + 0x910]");                  // 0x00402c15    ff9010090000
    asm("mov                edx, dword ptr [esi]");                     // 0x00402c1b    8b16
    asm("mov.s              ecx, esi");                                 // 0x00402c1d    8bce
    asm("call               dword ptr [edx + 0x48]");                   // 0x00402c1f    ff5248
    asm("test               eax, eax");                                 // 0x00402c22    85c0
    asm("{disp8} je         _jmp_addr_0x00402c4c");                     // 0x00402c24    7426
    asm("{disp32} mov       eax, dword ptr [_game]");                   // 0x00402c26    a15c19d000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");              // 0x00402c2b    8b4814
    asm("test               ch, -0x80");                                // 0x00402c2e    f6c580
    asm("{disp8} jne        _jmp_addr_0x00402c3d");                     // 0x00402c31    750a
    asm("mov                edx, dword ptr [esi]");                     // 0x00402c33    8b16
    asm("mov.s              ecx, esi");                                 // 0x00402c35    8bce
    asm("call               dword ptr [edx + 0x90c]");                  // 0x00402c37    ff920c090000
    asm("_jmp_addr_0x00402c3d:");
    asm("mov                eax, dword ptr [esi]");                     // 0x00402c3d    8b06
    asm("push               esi");                                      // 0x00402c3f    56
    asm("mov.s              ecx, esi");                                 // 0x00402c40    8bce
    asm("call               dword ptr [eax + 0x48]");                   // 0x00402c42    ff5048
    asm("mov.s              ecx, eax");                                 // 0x00402c45    8bc8
    asm("call               _jmp_addr_0x00739a60");                     // 0x00402c47    e8146e3300
    asm("_jmp_addr_0x00402c4c:");
    asm("mov.s              ecx, esi");                                 // 0x00402c4c    8bce
    asm("call               ?Delete@Object@@UAEXH@Z");                  // 0x00402c4e    e84d3a2300
    asm("pop                esi");                                      // 0x00402c53    5e
    asm("ret");                                                         // 0x00402c54    c3
    __builtin_unreachable();
}

void __fastcall ToBeDeleted__5AbodeFi(struct Base* this, const void* edx, int param_1)
{
    asm("push               esi");                                      // 0x00402c60    56
    asm("mov.s              esi, ecx");                                 // 0x00402c61    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00402c63    8b06
    asm("push               edi");                                      // 0x00402c65    57
    asm("call               dword ptr [eax + 0x48]");                   // 0x00402c66    ff5048
    asm("mov                edx, dword ptr [esi]");                     // 0x00402c69    8b16
    asm("mov.s              ecx, esi");                                 // 0x00402c6b    8bce
    asm("mov.s              edi, eax");                                 // 0x00402c6d    8bf8
    asm("call               dword ptr [edx + 0x910]");                  // 0x00402c6f    ff9210090000
    asm("test               edi, edi");                                 // 0x00402c75    85ff
    asm("{disp8} je         _jmp_addr_0x00402c98");                     // 0x00402c77    741f
    asm("{disp32} mov       eax, dword ptr [_game]");                   // 0x00402c79    a15c19d000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");              // 0x00402c7e    8b4814
    asm("test               ch, -0x80");                                // 0x00402c81    f6c580
    asm("{disp8} jne        _jmp_addr_0x00402c98");                     // 0x00402c84    7512
    asm("mov                edx, dword ptr [esi]");                     // 0x00402c86    8b16
    asm("mov.s              ecx, esi");                                 // 0x00402c88    8bce
    asm("call               dword ptr [edx + 0x90c]");                  // 0x00402c8a    ff920c090000
    asm("push               esi");                                      // 0x00402c90    56
    asm("mov.s              ecx, edi");                                 // 0x00402c91    8bcf
    asm("call               _jmp_addr_0x00739a60");                     // 0x00402c93    e8c86d3300
    asm("_jmp_addr_0x00402c98:");
    asm("mov.s              ecx, esi");                                 // 0x00402c98    8bce
    asm("call               ?DeleteAbodeSurroundingObjects@Abode@@QAEXXZ");                     // 0x00402c9a    e881100000
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");              // 0x00402c9f    8b44240c
    asm("push               eax");                                      // 0x00402ca3    50
    asm("mov.s              ecx, esi");                                 // 0x00402ca4    8bce
    asm("call               ?ToBeDeleted@MultiMapFixed@@UAEXH@Z");      // 0x00402ca6    e805b61200
    asm("pop                edi");                                      // 0x00402cab    5f
    asm("pop                esi");                                      // 0x00402cac    5e
    asm("ret                0x0004");                                   // 0x00402cad    c20400
    __builtin_unreachable();
}

void __fastcall DestroyedByBeam__5AbodeFv(struct Object* this)
{
    asm("push               esi");                                      // 0x00402cb0    56
    asm("push               edi");                                      // 0x00402cb1    57
    asm("mov.s              esi, ecx");                                 // 0x00402cb2    8bf1
    asm("mov                edi, dword ptr [esi]");                     // 0x00402cb4    8b3e
    asm("push               0x0");                                      // 0x00402cb6    6a00
    asm("call               dword ptr [edi + 0x11c]");                  // 0x00402cb8    ff971c010000
    asm("push               ecx");                                      // 0x00402cbe    51
    asm("mov.s              ecx, esi");                                 // 0x00402cbf    8bce
    asm("fstp               dword ptr [esp]");                          // 0x00402cc1    d91c24
    asm("call               dword ptr [edi + 0x5b8]");                  // 0x00402cc4    ff97b8050000
    asm("fstp               st(0)");                                    // 0x00402cca    ddd8
    asm("pop                edi");                                      // 0x00402ccc    5f
    asm("pop                esi");                                      // 0x00402ccd    5e
    asm("ret");                                                         // 0x00402cce    c3
    __builtin_unreachable();
}

bool __fastcall GetInspectObjectPos__5AbodeFP8VillagerP9MapCoords(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* pos)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");              // 0x00402cd0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");              // 0x00402cd4    8b542404
    asm("push               eax");                                      // 0x00402cd8    50
    asm("push               edx");                                      // 0x00402cd9    52
    asm("call               ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z");                     // 0x00402cda    e8d15f2300
    asm("ret                0x0008");                                   // 0x00402cdf    c20800
    __builtin_unreachable();
}

bool __fastcall GetPSysFireLocalRndFlamePos__5AbodeFP7LHPointPl(struct Object* this, const void* edx, struct LHPoint* point, int32_t* param_2)
{
    asm("sub                esp, 0x30");                                // 0x00402cf0    83ec30
    asm("push               esi");                                      // 0x00402cf3    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x38]");              // 0x00402cf4    8b742438
    asm("push               edi");                                      // 0x00402cf8    57
    asm("mov.s              edi, ecx");                                 // 0x00402cf9    8bf9
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000090]");        // 0x00402cfb    8b8f90000000
    asm("test               ecx, ecx");                                 // 0x00402d01    85c9
    asm("{disp32} je        _jmp_addr_0x00402da3");                     // 0x00402d03    0f849a000000
    asm("push               0x006de590");                               // 0x00402d09    6890e56d00
    asm("push               esi");                                      // 0x00402d0e    56
    asm("call               _jmp_addr_0x0076d4c0");                     // 0x00402d0f    e8aca73600
    asm("test               al, al");                                   // 0x00402d14    84c0
    asm("{disp32} je        _jmp_addr_0x00402da3");                     // 0x00402d16    0f8487000000
    asm("{disp8} mov        edx, dword ptr [edi + 0x40]");              // 0x00402d1c    8b5740
    asm("add                edx, 0x14");                                // 0x00402d1f    83c214
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");              // 0x00402d22    8d4c2408
    asm("call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z");        // 0x00402d26    e865853f00
    asm("fld                dword ptr [esi]");                          // 0x00402d2b    d906
    asm("{disp8} fld        dword ptr [esi + 0x04]");                   // 0x00402d2d    d94604
    asm("{disp8} mov        eax, dword ptr [esp + 0x40]");              // 0x00402d30    8b442440
    asm("{disp8} fld        dword ptr [esi + 0x08]");                   // 0x00402d34    d94608
    asm("pop                edi");                                      // 0x00402d37    5f
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                   // 0x00402d38    d944241c
    asm("fmul               st, st(1)");                                // 0x00402d3c    d8c9
    asm("{disp8} fld        dword ptr [esp + 0x10]");                   // 0x00402d3e    d9442410
    asm("fmul               st, st(3)");                                // 0x00402d42    d8cb
    asm("faddp              st(1), st");                                // 0x00402d44    dec1
    asm("{disp8} fld        dword ptr [esp + 0x04]");                   // 0x00402d46    d9442404
    asm("fmul               st, st(4)");                                // 0x00402d4a    d8cc
    asm("faddp              st(1), st");                                // 0x00402d4c    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x28]");                   // 0x00402d4e    d8442428
    asm("fstp               dword ptr [esi]");                          // 0x00402d52    d91e
    asm("{disp8} fld        dword ptr [esp + 0x20]");                   // 0x00402d54    d9442420
    asm("fmul               st, st(1)");                                // 0x00402d58    d8c9
    asm("{disp8} fld        dword ptr [esp + 0x14]");                   // 0x00402d5a    d9442414
    asm("fmul               st, st(3)");                                // 0x00402d5e    d8cb
    asm("faddp              st(1), st");                                // 0x00402d60    dec1
    asm("{disp8} fld        dword ptr [esp + 0x08]");                   // 0x00402d62    d9442408
    asm("fmul               st, st(4)");                                // 0x00402d66    d8cc
    asm("faddp              st(1), st");                                // 0x00402d68    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x2c]");                   // 0x00402d6a    d844242c
    asm("{disp8} fstp       dword ptr [esi + 0x04]");                   // 0x00402d6e    d95e04
    asm("{disp8} fld        dword ptr [esp + 0x24]");                   // 0x00402d71    d9442424
    asm("fmul               st, st(1)");                                // 0x00402d75    d8c9
    asm("{disp8} fld        dword ptr [esp + 0x18]");                   // 0x00402d77    d9442418
    asm("fmul               st, st(3)");                                // 0x00402d7b    d8cb
    asm("faddp              st(1), st");                                // 0x00402d7d    dec1
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                   // 0x00402d7f    d944240c
    asm("fmul               st, st(4)");                                // 0x00402d83    d8cc
    asm("faddp              st(1), st");                                // 0x00402d85    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x30]");                   // 0x00402d87    d8442430
    asm("{disp8} fstp       dword ptr [esi + 0x08]");                   // 0x00402d8b    d95e08
    asm("mov                dword ptr [eax], 0x00000000");              // 0x00402d8e    c70000000000
    asm("mov                al, 0x01");                                 // 0x00402d94    b001
    asm("fstp               st(0)");                                    // 0x00402d96    ddd8
    asm("pop                esi");                                      // 0x00402d98    5e
    asm("fstp               st(0)");                                    // 0x00402d99    ddd8
    asm("fstp               st(0)");                                    // 0x00402d9b    ddd8
    asm("add                esp, 0x30");                                // 0x00402d9d    83c430
    asm("ret                0x0008");                                   // 0x00402da0    c20800
    asm("_jmp_addr_0x00402da3:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");              // 0x00402da3    8b4c2440
    asm("push               ecx");                                      // 0x00402da7    51
    asm("push               esi");                                      // 0x00402da8    56
    asm("mov.s              ecx, edi");                                 // 0x00402da9    8bcf
    asm("call               ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z");  // 0x00402dab    e8c0f93200
    asm("pop                edi");                                      // 0x00402db0    5f
    asm("pop                esi");                                      // 0x00402db1    5e
    asm("add                esp, 0x30");                                // 0x00402db2    83c430
    asm("ret                0x0008");                                   // 0x00402db5    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetPhysicsConstantsType__5AbodeFv(struct Object* this)
{
    return 0;
}

void __fastcall SetUpPhysOb__5AbodeFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000090]");        // 0x00402dd0    8b8190000000
    asm("test               eax, eax");                                 // 0x00402dd6    85c0
    asm("{disp8} je         _jmp_addr_0x00402de0");                     // 0x00402dd8    7406
    asm("mov                dword ptr [eax], 0x00000000");              // 0x00402dda    c70000000000
    asm("_jmp_addr_0x00402de0:");
    asm("mov                eax, dword ptr [ecx]");                     // 0x00402de0    8b01
    asm("push               esi");                                      // 0x00402de2    56
    asm("push               0x0");                                      // 0x00402de3    6a00
    asm("call               dword ptr [eax + 0x788]");                  // 0x00402de5    ff9088070000
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");              // 0x00402deb    8b74240c
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");         // 0x00402def    8d0c40
    asm("{disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00cc63e0]");  // 0x00402df2    8d14cde063cc00
    asm("push               edx");                                      // 0x00402df9    52
    asm("push               0x44fa0000");                               // 0x00402dfa    680000fa44
    asm("mov.s              ecx, esi");                                 // 0x00402dff    8bce
    asm("call               _jmp_addr_0x007fb810");                     // 0x00402e01    e80a8a3f00
    asm("mov.s              ecx, esi");                                 // 0x00402e06    8bce
    asm("call               _jmp_addr_0x007fbac0");                     // 0x00402e08    e8b38c3f00
    asm("pop                esi");                                      // 0x00402e0d    5e
    asm("ret                0x0004");                                   // 0x00402e0e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Abode* __cdecl Create__5AbodeFRC9MapCoordsPC10GAbodeInfoP4TownffUlUlfii(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");              // 0x00402e20    8b442408
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000120]");        // 0x00402e24    8b8820010000
    asm("cmp                ecx, 0x00000100");                          // 0x00402e2a    81f900010000
    asm("push               esi");                                      // 0x00402e30    56
    asm("{disp32} jg        _jmp_addr_0x00402f4e");                     // 0x00402e31    0f8f17010000
    asm("{disp32} je        _jmp_addr_0x00402f25");                     // 0x00402e37    0f84e8000000
    asm("add                ecx, -0xa");                                // 0x00402e3d    83c1f6
    asm("cmp                ecx, 0x7a");                                // 0x00402e40    83f97a
    asm("{disp32} ja        _jmp_addr_0x00402ffb");                     // 0x00402e43    0f87b2010000
    asm("xor.s              edx, edx");                                 // 0x00402e49    33d2
    asm("{disp32} mov       dl, byte ptr [ecx + 0x004030b0]");          // 0x00402e4b    8a91b0304000
    asm("jmp                dword ptr [edx*4 + 0x403098]");             // 0x00402e51    ff249598304000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402e58    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402e5c    8b542424
    asm("push               ecx");                                      // 0x00402e60    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402e61    8b4c241c
    asm("push               edx");                                      // 0x00402e65    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402e66    8b54241c
    asm("push               ecx");                                      // 0x00402e6a    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402e6b    8b4c241c
    asm("push               edx");                                      // 0x00402e6f    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402e70    8b542418
    asm("push               ecx");                                      // 0x00402e74    51
    asm("push               eax");                                      // 0x00402e75    50
    asm("push               edx");                                      // 0x00402e76    52
    asm("call               _jmp_addr_0x007374c0");                     // 0x00402e77    e844463300
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402e7c    e9ec010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402e81    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402e85    8b542424
    asm("push               ecx");                                      // 0x00402e89    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402e8a    8b4c241c
    asm("push               edx");                                      // 0x00402e8e    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402e8f    8b54241c
    asm("push               ecx");                                      // 0x00402e93    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402e94    8b4c241c
    asm("push               edx");                                      // 0x00402e98    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402e99    8b542418
    asm("push               ecx");                                      // 0x00402e9d    51
    asm("push               eax");                                      // 0x00402e9e    50
    asm("push               edx");                                      // 0x00402e9f    52
    asm("call               _jmp_addr_0x00732d60");                     // 0x00402ea0    e8bbfe3200
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402ea5    e9c3010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402eaa    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402eae    8b542424
    asm("push               ecx");                                      // 0x00402eb2    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402eb3    8b4c241c
    asm("push               edx");                                      // 0x00402eb7    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402eb8    8b54241c
    asm("push               ecx");                                      // 0x00402ebc    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402ebd    8b4c241c
    asm("push               edx");                                      // 0x00402ec1    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402ec2    8b542418
    asm("push               ecx");                                      // 0x00402ec6    51
    asm("push               eax");                                      // 0x00402ec7    50
    asm("push               edx");                                      // 0x00402ec8    52
    asm("call               ?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");  // 0x00402ec9    e8c2290000
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402ece    e99a010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402ed3    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402ed7    8b542424
    asm("push               ecx");                                      // 0x00402edb    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402edc    8b4c241c
    asm("push               edx");                                      // 0x00402ee0    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402ee1    8b54241c
    asm("push               ecx");                                      // 0x00402ee5    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402ee6    8b4c241c
    asm("push               edx");                                      // 0x00402eea    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402eeb    8b542418
    asm("push               ecx");                                      // 0x00402eef    51
    asm("push               eax");                                      // 0x00402ef0    50
    asm("push               edx");                                      // 0x00402ef1    52
    asm("call               _jmp_addr_0x0050aad0");                     // 0x00402ef2    e8d97b1000
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402ef7    e971010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402efc    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402f00    8b542424
    asm("push               ecx");                                      // 0x00402f04    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f05    8b4c241c
    asm("push               edx");                                      // 0x00402f09    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402f0a    8b54241c
    asm("push               ecx");                                      // 0x00402f0e    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f0f    8b4c241c
    asm("push               edx");                                      // 0x00402f13    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402f14    8b542418
    asm("push               ecx");                                      // 0x00402f18    51
    asm("push               eax");                                      // 0x00402f19    50
    asm("push               edx");                                      // 0x00402f1a    52
    asm("call               _jmp_addr_0x00779590");                     // 0x00402f1b    e870663700
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402f20    e948010000
    asm("_jmp_addr_0x00402f25:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402f25    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402f29    8b542424
    asm("push               ecx");                                      // 0x00402f2d    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f2e    8b4c241c
    asm("push               edx");                                      // 0x00402f32    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402f33    8b54241c
    asm("push               ecx");                                      // 0x00402f37    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f38    8b4c241c
    asm("push               edx");                                      // 0x00402f3c    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402f3d    8b542418
    asm("push               ecx");                                      // 0x00402f41    51
    asm("push               eax");                                      // 0x00402f42    50
    asm("push               edx");                                      // 0x00402f43    52
    asm("call               ?Create@Wonder@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");  // 0x00402f44    e8375f3700
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402f49    e91f010000
    asm("_jmp_addr_0x00402f4e:");
    asm("cmp                ecx, 0x00001004");                          // 0x00402f4e    81f904100000
    asm("{disp32} jg        _jmp_addr_0x00402feb");                     // 0x00402f54    0f8f91000000
    asm("{disp8} je         _jmp_addr_0x00402fc2");                     // 0x00402f5a    7466
    asm("cmp                ecx, 0x00000204");                          // 0x00402f5c    81f904020000
    asm("{disp8} je         _jmp_addr_0x00402f99");                     // 0x00402f62    7435
    asm("cmp                ecx, 0x00000404");                          // 0x00402f64    81f904040000
    asm("{disp32} jne       _jmp_addr_0x00402ffb");                     // 0x00402f6a    0f858b000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402f70    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402f74    8b542424
    asm("push               ecx");                                      // 0x00402f78    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f79    8b4c241c
    asm("push               edx");                                      // 0x00402f7d    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402f7e    8b54241c
    asm("push               ecx");                                      // 0x00402f82    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402f83    8b4c241c
    asm("push               edx");                                      // 0x00402f87    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402f88    8b542418
    asm("push               ecx");                                      // 0x00402f8c    51
    asm("push               eax");                                      // 0x00402f8d    50
    asm("push               edx");                                      // 0x00402f8e    52
    asm("call               ?Create@TownCentre@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");                     // 0x00402f8f    e8fc0c3400
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402f94    e9d4000000
    asm("_jmp_addr_0x00402f99:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402f99    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402f9d    8b542424
    asm("push               ecx");                                      // 0x00402fa1    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402fa2    8b4c241c
    asm("push               edx");                                      // 0x00402fa6    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402fa7    8b54241c
    asm("push               ecx");                                      // 0x00402fab    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402fac    8b4c241c
    asm("push               edx");                                      // 0x00402fb0    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402fb1    8b542418
    asm("push               ecx");                                      // 0x00402fb5    51
    asm("push               eax");                                      // 0x00402fb6    50
    asm("push               edx");                                      // 0x00402fb7    52
    asm("call               _jmp_addr_0x00595d70");                     // 0x00402fb8    e8b32d1900
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402fbd    e9ab000000
    asm("_jmp_addr_0x00402fc2:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402fc2    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402fc6    8b542424
    asm("push               ecx");                                      // 0x00402fca    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402fcb    8b4c241c
    asm("push               edx");                                      // 0x00402fcf    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00402fd0    8b54241c
    asm("push               ecx");                                      // 0x00402fd4    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00402fd5    8b4c241c
    asm("push               edx");                                      // 0x00402fd9    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00402fda    8b542418
    asm("push               ecx");                                      // 0x00402fde    51
    asm("push               eax");                                      // 0x00402fdf    50
    asm("push               edx");                                      // 0x00402fe0    52
    asm("call               _jmp_addr_0x005315a0");                     // 0x00402fe1    e8bae51200
    asm("{disp32} jmp       _jmp_addr_0x0040306d");                     // 0x00402fe6    e982000000
    asm("_jmp_addr_0x00402feb:");
    asm("cmp                ecx, 0x00002004");                          // 0x00402feb    81f904200000
    asm("{disp8} je         _jmp_addr_0x00403049");                     // 0x00402ff1    7456
    asm("cmp                ecx, 0x00004004");                          // 0x00402ff3    81f904400000
    asm("{disp8} je         _jmp_addr_0x00403021");                     // 0x00402ff9    7426
    asm("_jmp_addr_0x00402ffb:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");              // 0x00402ffb    8b4c2428
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");              // 0x00402fff    8b542424
    asm("push               ecx");                                      // 0x00403003    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00403004    8b4c241c
    asm("push               edx");                                      // 0x00403008    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00403009    8b54241c
    asm("push               ecx");                                      // 0x0040300d    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x0040300e    8b4c241c
    asm("push               edx");                                      // 0x00403012    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");              // 0x00403013    8b542418
    asm("push               ecx");                                      // 0x00403017    51
    asm("push               eax");                                      // 0x00403018    50
    asm("push               edx");                                      // 0x00403019    52
    asm("call               ?CreateWithoutSpecial@Abode@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");                     // 0x0040301a    e871010000
    asm("{disp8} jmp        _jmp_addr_0x0040306d");                     // 0x0040301f    eb4c
    asm("_jmp_addr_0x00403021:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");              // 0x00403021    8b442428
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");              // 0x00403025    8b4c2424
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");              // 0x00403029    8b542414
    asm("push               eax");                                      // 0x0040302d    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");              // 0x0040302e    8b442414
    asm("push               ecx");                                      // 0x00403032    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");              // 0x00403033    8b4c2410
    asm("push               edx");                                      // 0x00403037    52
    asm("push               eax");                                      // 0x00403038    50
    asm("push               0x00ccf1c4");                               // 0x00403039    68c4f1cc00
    asm("push               ecx");                                      // 0x0040303e    51
    asm("call               ?Create@Field@@SAPAV1@ABUMapCoords@@PBVGFieldTypeInfo@@PAVTown@@MMH@Z");                     // 0x0040303f    e83c521200
    asm("add                esp, 0x18");                                // 0x00403044    83c418
    asm("pop                esi");                                      // 0x00403047    5e
    asm("ret");                                                         // 0x00403048    c3
    asm("_jmp_addr_0x00403049:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x28]");              // 0x00403049    8b542428
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");              // 0x0040304d    8b4c2424
    asm("push               edx");                                      // 0x00403051    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x00403052    8b54241c
    asm("push               ecx");                                      // 0x00403056    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");              // 0x00403057    8b4c241c
    asm("push               edx");                                      // 0x0040305b    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x0040305c    8b54241c
    asm("push               ecx");                                      // 0x00403060    51
    asm("push               edx");                                      // 0x00403061    52
    asm("push               eax");                                      // 0x00403062    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");              // 0x00403063    8b442420
    asm("push               eax");                                      // 0x00403067    50
    asm("call               _jmp_addr_0x007228d0");                     // 0x00403068    e863f83100
    asm("_jmp_addr_0x0040306d:");
    asm("mov.s              esi, eax");                                 // 0x0040306d    8bf0
    asm("add                esp, 0x1c");                                // 0x0040306f    83c41c
    asm("test               esi, esi");                                 // 0x00403072    85f6
    asm("{disp8} je         _jmp_addr_0x00403093");                     // 0x00403074    741d
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");              // 0x00403076    8b4c2420
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");              // 0x0040307a    8b54241c
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");              // 0x0040307e    8b44242c
    asm("push               ecx");                                      // 0x00403082    51
    asm("push               edx");                                      // 0x00403083    52
    asm("push               eax");                                      // 0x00403084    50
    asm("mov.s              ecx, esi");                                 // 0x00403085    8bce
    asm("call               ?Init@Abode@@QAEXHII@Z");                   // 0x00403087    e8a4000000
    asm("mov.s              ecx, esi");                                 // 0x0040308c    8bce
    asm("call               ?CreateAbodeSurroundingObjects@Abode@@QAEXXZ");  // 0x0040308e    e86d0d0000
    asm("_jmp_addr_0x00403093:");
    asm("mov.s              eax, esi");                                 // 0x00403093    8bc6
    asm("pop                esi");                                      // 0x00403095    5e
    asm("ret");                                                         // 0x00403096    c3
    // Snippet: db, [0x00403097, 0x00403098)
    asm(".byte 0x90");                        // 0x00403097
    // Snippet: jmptbl, [0x00403098, 0x004030b0)
    asm(".byte 0xaa, 0x2e, 0x40, 0x00");      // 0x00403098
    asm(".byte 0x58, 0x2e, 0x40, 0x00");      // 0x0040309c
    asm(".byte 0x81, 0x2e, 0x40, 0x00");      // 0x004030a0
    asm(".byte 0xd3, 0x2e, 0x40, 0x00");      // 0x004030a4
    asm(".byte 0xfc, 0x2e, 0x40, 0x00");      // 0x004030a8
    asm(".byte 0xfb, 0x2f, 0x40, 0x00");      // 0x004030ac
    // Snippet: ijmptbl, [0x004030b0, 0x00403130)
    asm(".byte 0x00, 0x05, 0x05, 0x05");      // 0x004030b0
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030b4
    asm(".byte 0x05, 0x05, 0x01, 0x05");      // 0x004030b8
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030bc
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030c0
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030c4
    asm(".byte 0x05, 0x05, 0x02, 0x05");      // 0x004030c8
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030cc
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030d0
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030d4
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030d8
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030dc
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030e0
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030e4
    asm(".byte 0x05, 0x05, 0x03, 0x05");      // 0x004030e8
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030ec
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030f0
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030f4
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030f8
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x004030fc
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403100
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403104
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403108
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x0040310c
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403110
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403114
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403118
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x0040311c
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403120
    asm(".byte 0x05, 0x05, 0x05, 0x05");      // 0x00403124
    asm(".byte 0x05, 0x05, 0x04, 0x90");      // 0x00403128
    asm(".byte 0x90, 0x90, 0x90, 0x90");      // 0x0040312c
    __builtin_unreachable();
}

void __fastcall Init__5AbodeFiUlUl(struct Abode* this, const void* edx, int param_1, uint32_t food_amount, uint32_t wood_amount)
{
    asm("push               esi");                                           // 0x00403130    56
    asm("push               0x0");                                           // 0x00403131    6a00
    asm("push               0x0");                                           // 0x00403133    6a00
    asm("push               0x0");                                           // 0x00403135    6a00
    asm("mov.s              esi, ecx");                                      // 0x00403137    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00403139    8b4c2418
    asm("mov                eax, dword ptr [esi]");                          // 0x0040313d    8b06
    asm("push               0x0");                                           // 0x0040313f    6a00
    asm("push               ecx");                                           // 0x00403141    51
    asm("push               0x0");                                           // 0x00403142    6a00
    asm("mov.s              ecx, esi");                                      // 0x00403144    8bce
    asm("call               dword ptr [eax + 0x9c]");                        // 0x00403146    ff909c000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x0040314c    8b442410
    asm("mov                edx, dword ptr [esi]");                          // 0x00403150    8b16
    asm("push               0x0");                                           // 0x00403152    6a00
    asm("push               0x0");                                           // 0x00403154    6a00
    asm("push               0x0");                                           // 0x00403156    6a00
    asm("push               0x0");                                           // 0x00403158    6a00
    asm("push               eax");                                           // 0x0040315a    50
    asm("push               0x1");                                           // 0x0040315b    6a01
    asm("mov.s              ecx, esi");                                      // 0x0040315d    8bce
    asm("call               dword ptr [edx + 0x9c]");                        // 0x0040315f    ff929c000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00403165    8b16
    asm("mov.s              ecx, esi");                                      // 0x00403167    8bce
    asm("call               dword ptr [edx + 0x890]");                       // 0x00403169    ff9290080000
    asm("test               eax, eax");                                      // 0x0040316f    85c0
    asm("{disp8} je         _jmp_addr_0x0040317d");                          // 0x00403171    740a
    asm("mov                eax, dword ptr [esi]");                          // 0x00403173    8b06
    asm("mov.s              ecx, esi");                                      // 0x00403175    8bce
    asm("call               dword ptr [eax + 0x914]");                       // 0x00403177    ff9014090000
    asm("_jmp_addr_0x0040317d:");
    asm("pop                esi");                                           // 0x0040317d    5e
    asm("ret                0x000c");                                        // 0x0040317e    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Abode* __cdecl CreateWithoutSpecial__5AbodeFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood)
{
    asm("push               esi");                                           // 0x00403190    56
    asm("push               edi");                                           // 0x00403191    57
    asm("push               0x0000013c");                                    // 0x00403192    683c010000
    asm("push               0x009c7fbc");                                    // 0x00403197    68bc7f9c00
    asm("push               0x000000c4");                                    // 0x0040319c    68c4000000
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x004031a1    e84a350300
    asm("add                esp, 0x0c");                                     // 0x004031a6    83c40c
    asm("test               eax, eax");                                      // 0x004031a9    85c0
    asm("{disp8} je         _jmp_addr_0x004031ed");                          // 0x004031ab    7440
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x004031ad    8b4c2424
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x004031b1    8b542420
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x004031b5    8b7c240c
    asm("push               ecx");                                           // 0x004031b9    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x004031ba    8b4c2420
    asm("push               edx");                                           // 0x004031be    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x004031bf    8b542420
    asm("push               ecx");                                           // 0x004031c3    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x004031c4    8b4c2420
    asm("push               edx");                                           // 0x004031c8    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x004031c9    8b542420
    asm("push               ecx");                                           // 0x004031cd    51
    asm("push               edx");                                           // 0x004031ce    52
    asm("push               edi");                                           // 0x004031cf    57
    asm("mov.s              ecx, eax");                                      // 0x004031d0    8bc8
    asm("call               ??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");                          // 0x004031d2    e879e1ffff
    asm("mov.s              esi, eax");                                      // 0x004031d7    8bf0
    asm("test               esi, esi");                                      // 0x004031d9    85f6
    asm("{disp8} je         _jmp_addr_0x004031e8");                          // 0x004031db    740b
    asm("mov                eax, dword ptr [esi]");                          // 0x004031dd    8b06
    asm("push               edi");                                           // 0x004031df    57
    asm("mov.s              ecx, esi");                                      // 0x004031e0    8bce
    asm("call               dword ptr [eax + 0x658]");                       // 0x004031e2    ff9058060000
    asm("_jmp_addr_0x004031e8:");
    asm("pop                edi");                                           // 0x004031e8    5f
    asm("mov.s              eax, esi");                                      // 0x004031e9    8bc6
    asm("pop                esi");                                           // 0x004031eb    5e
    asm("ret");                                                              // 0x004031ec    c3
    asm("_jmp_addr_0x004031ed:");
    asm("pop                edi");                                           // 0x004031ed    5f
    asm("xor.s              eax, eax");                                      // 0x004031ee    33c0
    asm("pop                esi");                                           // 0x004031f0    5e
    asm("ret");                                                              // 0x004031f1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall CallVirtualFunctionsForCreation__5AbodeFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00403200    8b442404
    asm("sub                esp, 0x20");                                     // 0x00403204    83ec20
    asm("push               esi");                                           // 0x00403207    56
    asm("push               edi");                                           // 0x00403208    57
    asm("mov.s              esi, ecx");                                      // 0x00403209    8bf1
    asm("push               eax");                                           // 0x0040320b    50
    asm("call               ?CallVirtualFunctionsForCreation@MultiMapFixed@@UAEXABUMapCoords@@@Z");  // 0x0040320c    e87fb61200
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00403211    8b4e40
    asm("mov                eax, dword ptr [ecx]");                          // 0x00403214    8b01
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x00403216    8d54241c
    asm("call               dword ptr [eax + 0x1c0]");                       // 0x0040321a    ff90c0010000
    asm("xor.s              edi, edi");                                      // 0x00403220    33ff
    asm("test               eax, eax");                                      // 0x00403222    85c0
    asm("{disp8} je         _jmp_addr_0x0040326b");                          // 0x00403224    7445
    asm("push               edi");                                           // 0x00403226    57
    asm("call               ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z");                // 0x00403227    e834593f00
    asm("add                esp, 0x04");                                     // 0x0040322c    83c404
    asm("cmp.s              eax, edi");                                      // 0x0040322f    3bc7
    asm("{disp32} mov       dword ptr [esi + 0x0000008c], eax");             // 0x00403231    89868c000000
    asm("{disp8} je         _jmp_addr_0x0040326b");                          // 0x00403237    7432
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00403239    8b4c241c
    asm("mov                dword ptr [eax], ecx");                          // 0x0040323d    8908
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x0040323f    8b542420
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                   // 0x00403243    895004
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x00403246    8b4c2424
    asm("{disp8} mov        dword ptr [eax + 0x08], ecx");                   // 0x0040324a    894808
    asm("mov                edx, dword ptr [esi]");                          // 0x0040324d    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040324f    8bce
    asm("call               dword ptr [edx + 0x310]");                       // 0x00403251    ff9210030000
    asm("test               eax, eax");                                      // 0x00403257    85c0
    asm("{disp8} je         _jmp_addr_0x0040326b");                          // 0x00403259    7410
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000008c]");             // 0x0040325b    8b868c000000
    asm("{disp32} mov       dword ptr [eax + 0x0000010c], 0x00808080");      // 0x00403261    c7800c01000080808000
    asm("_jmp_addr_0x0040326b:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x0040326b    8b4e40
    asm("mov                edx, dword ptr [ecx]");                          // 0x0040326e    8b11
    asm("call               dword ptr [edx + 0x1f4]");                       // 0x00403270    ff92f4010000
    asm("test               eax, eax");                                      // 0x00403276    85c0
    asm("{disp8} jne        _jmp_addr_0x004032d7");                          // 0x00403278    755d
    asm("mov                eax, dword ptr [esi]");                          // 0x0040327a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040327c    8bce
    asm("call               dword ptr [eax + 0x64]");                        // 0x0040327e    ff5064
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                   // 0x00403281    d80daca38a00
    asm("fchs");                                                             // 0x00403287    d9e0
    asm("{disp32} fcomp     dword ptr [_rdata_floatn0p8]");                  // 0x00403289    d81da8a38a00
    asm("fnstsw             ax");                                            // 0x0040328f    dfe0
    asm("test               ah, 0x01");                                      // 0x00403291    f6c401
    asm("{disp8} je         _jmp_addr_0x004032ab");                          // 0x00403294    7415
    asm("mov                edx, dword ptr [esi]");                          // 0x00403296    8b16
    asm("mov.s              ecx, esi");                                      // 0x00403298    8bce
    asm("call               dword ptr [edx + 0x64]");                        // 0x0040329a    ff5264
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                   // 0x0040329d    d80daca38a00
    asm("fchs");                                                             // 0x004032a3    d9e0
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x004032a5    d95c242c
    asm("{disp8} jmp        _jmp_addr_0x004032b3");                          // 0x004032a9    eb08
    asm("_jmp_addr_0x004032ab:");
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0xbf4ccccd");            // 0x004032ab    c744242ccdcc4cbf
    asm("_jmp_addr_0x004032b3:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x004032b3    8b4e40
    asm("call               ?GetAltitudeFondation@Game3DObject@@QBEMXZ");    // 0x004032b6    e805792300
    asm("{disp8} fcomp      dword ptr [esp + 0x2c]");                        // 0x004032bb    d85c242c
    asm("fnstsw             ax");                                            // 0x004032bf    dfe0
    asm("test               ah, 0x41");                                      // 0x004032c1    f6c441
    asm("{disp8} jne        _jmp_addr_0x004032d0");                          // 0x004032c4    750a
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x004032c6    8b4e40
    asm("call               ?GetAltitudeFondation@Game3DObject@@QBEMXZ");    // 0x004032c9    e8f2782300
    asm("{disp8} jmp        _jmp_addr_0x004032d4");                          // 0x004032ce    eb04
    asm("_jmp_addr_0x004032d0:");
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x004032d0    d944242c
    asm("_jmp_addr_0x004032d4:");
    asm("{disp8} fstp       dword ptr [esi + 0x1c]");                        // 0x004032d4    d95e1c
    asm("_jmp_addr_0x004032d7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004032d7    8b06
    asm("push               ebx");                                           // 0x004032d9    53
    asm("mov.s              ecx, esi");                                      // 0x004032da    8bce
    asm("call               dword ptr [eax + 0x120]");                       // 0x004032dc    ff9020010000
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                        // 0x004032e2    d95c2430
    asm("mov                edx, dword ptr [esi]");                          // 0x004032e6    8b16
    asm("mov.s              ecx, esi");                                      // 0x004032e8    8bce
    asm("call               dword ptr [edx + 0x508]");                       // 0x004032ea    ff9208050000
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x004032f0    d95c240c
    asm("{disp8} mov        eax, dword ptr [esi + 0x1c]");                   // 0x004032f4    8b461c
    asm("{disp8} lea        ebx, dword ptr [esi + 0x14]");                   // 0x004032f7    8d5e14
    asm("{disp8} mov        esi, dword ptr [esi + 0x40]");                   // 0x004032fa    8b7640
    asm("mov.s              ecx, ebx");                                      // 0x004032fd    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x004032ff    89442410
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00403303    e888fd3f00
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x00403308    d8442410
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0040330c    d95c2418
    asm("fild               dword ptr [ebx]");                               // 0x00403310    db03
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00403312    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00403318    d95c2414
    asm("{disp8} fild       dword ptr [ebx + 0x04]");                        // 0x0040331c    db4304
    asm("pop                ebx");                                           // 0x0040331f    5b
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00403320    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00403326    d95c2418
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0040332a    d9442408
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0040332e    d81d98a38a00
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00403334    d944242c
    asm("fnstsw             ax");                                            // 0x00403338    dfe0
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0040333a    d81d90a38a00
    asm("test               ah, 0x40");                                      // 0x00403340    f6c440
    asm("fnstsw             ax");                                            // 0x00403343    dfe0
    asm("{disp32} jne       _jmp_addr_0x0040349b");                          // 0x00403345    0f8550010000
    asm("test               ah, 0x40");                                      // 0x0040334b    f6c440
    asm("{disp32} jne       _jmp_addr_0x0040340f");                          // 0x0040334e    0f85bb000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]");                   // 0x00403354    8b4c242c
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00403358    d9442410
    asm("{disp8} mov        dword ptr [esi + 0x40], edi");                   // 0x0040335c    897e40
    asm("{disp8} mov        dword ptr [esi + 0x3c], edi");                   // 0x0040335f    897e3c
    asm("{disp8} mov        dword ptr [esi + 0x38], edi");                   // 0x00403362    897e38
    asm("{disp8} mov        dword ptr [esi + 0x30], edi");                   // 0x00403365    897e30
    asm("{disp8} mov        dword ptr [esi + 0x2c], edi");                   // 0x00403368    897e2c
    asm("{disp8} mov        dword ptr [esi + 0x28], edi");                   // 0x0040336b    897e28
    asm("{disp8} mov        dword ptr [esi + 0x20], edi");                   // 0x0040336e    897e20
    asm("{disp8} mov        dword ptr [esi + 0x1c], edi");                   // 0x00403371    897e1c
    asm("{disp8} mov        dword ptr [esi + 0x18], edi");                   // 0x00403374    897e18
    asm("{disp8} mov        dword ptr [esi + 0x34], ecx");                   // 0x00403377    894e34
    asm("mov.s              edx, ecx");                                      // 0x0040337a    8bd1
    asm("{disp8} mov        dword ptr [esi + 0x24], edx");                   // 0x0040337c    895624
    asm("mov.s              eax, ecx");                                      // 0x0040337f    8bc1
    asm("{disp8} mov        dword ptr [esi + 0x14], eax");                   // 0x00403381    894614
    asm("{disp8} fadd       dword ptr [esi + 0x38]");                        // 0x00403384    d84638
    asm("{disp8} fstp       dword ptr [esi + 0x38]");                        // 0x00403387    d95e38
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x0040338a    d9442414
    asm("{disp8} fadd       dword ptr [esi + 0x3c]");                        // 0x0040338e    d8463c
    asm("{disp8} fstp       dword ptr [esi + 0x3c]");                        // 0x00403391    d95e3c
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00403394    d9442418
    asm("{disp8} fadd       dword ptr [esi + 0x40]");                        // 0x00403398    d84640
    asm("{disp8} fstp       dword ptr [esi + 0x40]");                        // 0x0040339b    d95e40
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0040339e    d9442408
    asm("fcos");                                                             // 0x004033a2    d9ff
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x004033a4    d9442408
    asm("fsin");                                                             // 0x004033a8    d9fe
    asm("fld                st(0)");                                         // 0x004033aa    d9c0
    asm("{disp8} fmul       dword ptr [esi + 0x14]");                        // 0x004033ac    d84e14
    asm("fld                st(1)");                                         // 0x004033af    d9c1
    asm("{disp8} fmul       dword ptr [esi + 0x2c]");                        // 0x004033b1    d84e2c
    asm("fld                st(3)");                                         // 0x004033b4    d9c3
    asm("{disp8} fmul       dword ptr [esi + 0x14]");                        // 0x004033b6    d84e14
    asm("faddp              st(1), st");                                     // 0x004033b9    dec1
    asm("{disp8} fstp       dword ptr [esi + 0x14]");                        // 0x004033bb    d95e14
    asm("fld                st(2)");                                         // 0x004033be    d9c2
    asm("{disp8} fmul       dword ptr [esi + 0x2c]");                        // 0x004033c0    d84e2c
    asm("fsub               st, st(1)");                                     // 0x004033c3    d8e1
    asm("{disp8} fstp       dword ptr [esi + 0x2c]");                        // 0x004033c5    d95e2c
    asm("fstp               st(0)");                                         // 0x004033c8    ddd8
    asm("fld                st(0)");                                         // 0x004033ca    d9c0
    asm("{disp8} fmul       dword ptr [esi + 0x18]");                        // 0x004033cc    d84e18
    asm("fld                st(1)");                                         // 0x004033cf    d9c1
    asm("{disp8} fmul       dword ptr [esi + 0x30]");                        // 0x004033d1    d84e30
    asm("fld                st(3)");                                         // 0x004033d4    d9c3
    asm("{disp8} fmul       dword ptr [esi + 0x18]");                        // 0x004033d6    d84e18
    asm("faddp              st(1), st");                                     // 0x004033d9    dec1
    asm("{disp8} fstp       dword ptr [esi + 0x18]");                        // 0x004033db    d95e18
    asm("fld                st(2)");                                         // 0x004033de    d9c2
    asm("{disp8} fmul       dword ptr [esi + 0x30]");                        // 0x004033e0    d84e30
    asm("fsub               st, st(1)");                                     // 0x004033e3    d8e1
    asm("{disp8} fstp       dword ptr [esi + 0x30]");                        // 0x004033e5    d95e30
    asm("fstp               st(0)");                                         // 0x004033e8    ddd8
    asm("fld                st(0)");                                         // 0x004033ea    d9c0
    asm("{disp8} fmul       dword ptr [esi + 0x1c]");                        // 0x004033ec    d84e1c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x004033ef    d95c240c
    asm("{disp8} fmul       dword ptr [esi + 0x34]");                        // 0x004033f3    d84e34
    asm("fld                st(1)");                                         // 0x004033f6    d9c1
    asm("{disp8} fmul       dword ptr [esi + 0x1c]");                        // 0x004033f8    d84e1c
    asm("faddp              st(1), st");                                     // 0x004033fb    dec1
    asm("{disp8} fstp       dword ptr [esi + 0x1c]");                        // 0x004033fd    d95e1c
    asm("{disp8} fmul       dword ptr [esi + 0x34]");                        // 0x00403400    d84e34
    asm("{disp8} fsub       dword ptr [esp + 0x0c]");                        // 0x00403403    d864240c
    asm("{disp8} fstp       dword ptr [esi + 0x34]");                        // 0x00403407    d95e34
    asm("{disp32} jmp       _jmp_addr_0x004034e3");                          // 0x0040340a    e9d4000000
    asm("_jmp_addr_0x0040340f:");
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x0040340f    8d7e14
    asm("mov.s              ecx, edi");                                      // 0x00403412    8bcf
    asm("call               ?SetIdentity@LHMatrix@@QAEXXZ");                 // 0x00403414    e8e7000000
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00403419    d9442408
    asm("fcos");                                                             // 0x0040341d    d9ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0040341f    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x00403423    8b542414
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00403427    8b442418
    asm("{disp8} mov        dword ptr [edi + 0x24], ecx");                   // 0x0040342b    894f24
    asm("{disp8} mov        dword ptr [edi + 0x28], edx");                   // 0x0040342e    895728
    asm("{disp8} mov        dword ptr [edi + 0x2c], eax");                   // 0x00403431    89472c
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00403434    d9442408
    asm("fsin");                                                             // 0x00403438    d9fe
    asm("fld                st(0)");                                         // 0x0040343a    d9c0
    asm("fmul               dword ptr [edi]");                               // 0x0040343c    d80f
    asm("fld                st(1)");                                         // 0x0040343e    d9c1
    asm("{disp8} fmul       dword ptr [edi + 0x18]");                        // 0x00403440    d84f18
    asm("fld                st(3)");                                         // 0x00403443    d9c3
    asm("fmul               dword ptr [edi]");                               // 0x00403445    d80f
    asm("faddp              st(1), st");                                     // 0x00403447    dec1
    asm("fstp               dword ptr [edi]");                               // 0x00403449    d91f
    asm("fld                st(2)");                                         // 0x0040344b    d9c2
    asm("{disp8} fmul       dword ptr [edi + 0x18]");                        // 0x0040344d    d84f18
    asm("fsub               st, st(1)");                                     // 0x00403450    d8e1
    asm("{disp8} fstp       dword ptr [edi + 0x18]");                        // 0x00403452    d95f18
    asm("fstp               st(0)");                                         // 0x00403455    ddd8
    asm("fld                st(0)");                                         // 0x00403457    d9c0
    asm("{disp8} fmul       dword ptr [edi + 0x04]");                        // 0x00403459    d84f04
    asm("fld                st(2)");                                         // 0x0040345c    d9c2
    asm("{disp8} fmul       dword ptr [edi + 0x04]");                        // 0x0040345e    d84f04
    asm("fld                st(2)");                                         // 0x00403461    d9c2
    asm("{disp8} fmul       dword ptr [edi + 0x1c]");                        // 0x00403463    d84f1c
    asm("faddp              st(1), st");                                     // 0x00403466    dec1
    asm("{disp8} fstp       dword ptr [edi + 0x04]");                        // 0x00403468    d95f04
    asm("fld                st(2)");                                         // 0x0040346b    d9c2
    asm("{disp8} fmul       dword ptr [edi + 0x1c]");                        // 0x0040346d    d84f1c
    asm("fsub               st, st(1)");                                     // 0x00403470    d8e1
    asm("{disp8} fstp       dword ptr [edi + 0x1c]");                        // 0x00403472    d95f1c
    asm("fstp               st(0)");                                         // 0x00403475    ddd8
    asm("fld                st(0)");                                         // 0x00403477    d9c0
    asm("{disp8} fmul       dword ptr [edi + 0x08]");                        // 0x00403479    d84f08
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0040347c    d95c240c
    asm("fld                st(1)");                                         // 0x00403480    d9c1
    asm("{disp8} fmul       dword ptr [edi + 0x08]");                        // 0x00403482    d84f08
    asm("fxch               st(1)");                                         // 0x00403485    d9c9
    asm("{disp8} fmul       dword ptr [edi + 0x20]");                        // 0x00403487    d84f20
    asm("faddp              st(1), st");                                     // 0x0040348a    dec1
    asm("{disp8} fstp       dword ptr [edi + 0x08]");                        // 0x0040348c    d95f08
    asm("{disp8} fmul       dword ptr [edi + 0x20]");                        // 0x0040348f    d84f20
    asm("{disp8} fsub       dword ptr [esp + 0x0c]");                        // 0x00403492    d864240c
    asm("{disp8} fstp       dword ptr [edi + 0x20]");                        // 0x00403496    d95f20
    asm("{disp8} jmp        _jmp_addr_0x004034e3");                          // 0x00403499    eb48
    asm("_jmp_addr_0x0040349b:");
    asm("test               ah, 0x40");                                      // 0x0040349b    f6c440
    asm("{disp8} jne        _jmp_addr_0x004034d7");                          // 0x0040349e    7537
    asm("{disp8} mov        edx, dword ptr [esp + 0x2c]");                   // 0x004034a0    8b54242c
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x004034a4    8d4e14
    asm("mov.s              eax, edx");                                      // 0x004034a7    8bc2
    asm("{disp8} mov        dword ptr [ecx + 0x20], edx");                   // 0x004034a9    895120
    asm("mov                dword ptr [ecx], edx");                          // 0x004034ac    8911
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x004034ae    8d542410
    asm("{disp8} mov        dword ptr [ecx + 0x2c], edi");                   // 0x004034b2    89792c
    asm("{disp8} mov        dword ptr [ecx + 0x28], edi");                   // 0x004034b5    897928
    asm("{disp8} mov        dword ptr [ecx + 0x24], edi");                   // 0x004034b8    897924
    asm("{disp8} mov        dword ptr [ecx + 0x1c], edi");                   // 0x004034bb    89791c
    asm("{disp8} mov        dword ptr [ecx + 0x18], edi");                   // 0x004034be    897918
    asm("{disp8} mov        dword ptr [ecx + 0x14], edi");                   // 0x004034c1    897914
    asm("{disp8} mov        dword ptr [ecx + 0x0c], edi");                   // 0x004034c4    89790c
    asm("{disp8} mov        dword ptr [ecx + 0x08], edi");                   // 0x004034c7    897908
    asm("{disp8} mov        dword ptr [ecx + 0x04], edi");                   // 0x004034ca    897904
    asm("{disp8} mov        dword ptr [ecx + 0x10], eax");                   // 0x004034cd    894110
    asm("call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z");      // 0x004034d0    e89b000000
    asm("{disp8} jmp        _jmp_addr_0x004034e3");                          // 0x004034d5    eb0c
    asm("_jmp_addr_0x004034d7:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x004034d7    8d542410
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x004034db    8d4e14
    asm("call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z");     // 0x004034de    e84d000000
    asm("_jmp_addr_0x004034e3:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x004034e3    8b44242c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x004034e7    8b4c2408
    asm("pop                edi");                                           // 0x004034eb    5f
    asm("{disp8} mov        dword ptr [esi + 0x44], eax");                   // 0x004034ec    894644
    asm("{disp8} mov        dword ptr [esi + 0x48], ecx");                   // 0x004034ef    894e48
    asm("pop                esi");                                           // 0x004034f2    5e
    asm("add                esp, 0x20");                                     // 0x004034f3    83c420
    asm("ret                0x0004");                                        // 0x004034f6    c20400
    __builtin_unreachable();
}
