#include "Object.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__6Object = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVObject@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Object = {
    .pTypeDescriptor = &__RTTITypeDescriptor__6Object,
    .numContainedBases = 0x00000003,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

float __fastcall GetXAngle__6ObjectFv(struct Object* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x004024f0    d90598a38a00
    asm("ret");                                                         // 0x004024f6    c3
    __builtin_unreachable();
}

float __fastcall GetYAngle__6ObjectFv(struct Object* this)
{
    asm("{disp8} fld        dword ptr [ecx + 0x4c]");                   // 0x00402500    d9414c
    asm("ret");                                                         // 0x00402503    c3
    __builtin_unreachable();
}

float __fastcall GetZAngle__6ObjectFv(struct Object* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402510    d90598a38a00
    asm("ret");                                                         // 0x00402516    c3
    __builtin_unreachable();
}

float __fastcall GetScale__6ObjectFv(struct GameThingWithPos* this)
{
    asm("{disp8} fld        dword ptr [ecx + 0x50]");                   // 0x00402520    d94150
    asm("ret");                                                         // 0x00402523    c3
    __builtin_unreachable();
}

void __fastcall SetJustScale__6ObjectFf(struct Object* this, const void* edx, float scale)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");              // 0x00402530    8b442404
    asm("{disp8} mov        dword ptr [ecx + 0x50], eax");              // 0x00402534    894150
    asm("ret                0x0004");                                   // 0x00402537    c20400
    asm("call               dword ptr [__imp__DirectDrawCreate@4]");    // 0x0040253a    ff152c908a00
    __builtin_unreachable();
}

void __fastcall UpdateFrom3DPosition__6ObjectFv(struct Object* this)
{
    return;
}

uint32_t __fastcall MoveAlongPath__6ObjectFv(struct Object* this)
{
    return 1;
}

bool __fastcall IsReachable__6ObjectFv(struct Object* this)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x00402560    8b01
    asm("{disp8} jmp        dword ptr [eax + 0x2c]");                   // 0x00402562    ff602c
    __builtin_unreachable();
}

struct Object* __fastcall GetPtr__6ObjectFv(struct Object* this)
{
    asm("mov.s              eax, ecx");                                 // 0x00402570    8bc1
    asm("ret");                                                         // 0x00402572    c3
    __builtin_unreachable();
}

struct Game3DObject* __fastcall Get3DObjectForPSys__6ObjectFv(struct Object* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x40]");              // 0x00402580    8b4140
    asm("ret");                                                         // 0x00402583    c3
    __builtin_unreachable();
}

float __fastcall GetSpotEffectPower__6ObjectFv(const struct Object* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402590    d90598a38a00
    asm("ret");                                                         // 0x00402596    c3
    __builtin_unreachable();
}

float __fastcall GetHoldYRotate__6ObjectFv(struct Object* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x004025a0    d90598a38a00
    asm("ret");                                                         // 0x004025a6    c3
    __builtin_unreachable();
}

bool32_t __fastcall HandShouldFeelWithMeshIntersect__6ObjectFv(struct Object* this)
{
    return 1;
}

void __fastcall SetSpecularColor__6ObjectFUl(struct Object* this, const void* edx, struct LH3DColor color)
{
    return;
}

__attribute__((XOR32rr_REV))
struct LH3DColor __fastcall GetSpecularColor__6ObjectFv(struct Object* this)
{
    struct LH3DColor result = {};
    return result;
}

void __fastcall SetBeliefSprite__6ObjectFP12BeliefSprite(struct Object* this, const void* edx, struct LH3DSprite* sprite)
{
    return;
}

__attribute__((XOR32rr_REV))
struct LH3DSprite* __fastcall GetBeliefSprite__6ObjectFv(struct Object* this)
{
    return 0;
}

float __fastcall GetLife__6ObjectFv(struct GameThingWithPos* this)
{
    asm("{disp8} fld        dword ptr [ecx + 0x48]");                   // 0x00402600    d94148
    asm("ret");                                                         // 0x00402603    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAlive__6ObjectFv(struct Object* this)
{
    asm("push               esi");                                      // 0x00402610    56
    asm("mov.s              esi, ecx");                                 // 0x00402611    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00402613    8b06
    asm("call               dword ptr [eax + 0x11c]");                  // 0x00402615    ff901c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");              // 0x0040261b    d81d98a38a00
    asm("fnstsw             ax");                                       // 0x00402621    dfe0
    asm("test               ah, 0x41");                                 // 0x00402623    f6c441
    asm("{disp8} jne        _jmp_addr_0x0040263a");                     // 0x00402626    7512
    asm("mov                edx, dword ptr [esi]");                     // 0x00402628    8b16
    asm("mov.s              ecx, esi");                                 // 0x0040262a    8bce
    asm("call               dword ptr [edx + 0x2c]");                   // 0x0040262c    ff522c
    asm("test               eax, eax");                                 // 0x0040262f    85c0
    asm("{disp8} je         _jmp_addr_0x0040263a");                     // 0x00402631    7407
    asm("mov                eax, 0x00000001");                          // 0x00402633    b801000000
    asm("pop                esi");                                      // 0x00402638    5e
    asm("ret");                                                         // 0x00402639    c3
    asm("_jmp_addr_0x0040263a:");
    asm("xor.s              eax, eax");                                 // 0x0040263a    33c0
    asm("pop                esi");                                      // 0x0040263c    5e
    asm("ret");                                                         // 0x0040263d    c3
    __builtin_unreachable();
}

void __fastcall ScaffoldMoved__6ObjectFP8Scaffold(struct Object* this, const void* edx, struct Scaffold* scaffold)
{
    return;
}

uint32_t __fastcall ProcessBySpell__6ObjectFP5Spell(struct Object* this, const void* edx, struct Spell* spell)
{
    return 1;
}

int __fastcall GetDetailMesh__6ObjectCF12DETAIL_LEVEL(struct Object* this, const void* edx, int detail)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x00402660    8b01
    asm("call               dword ptr [eax + 0x608]");                  // 0x00402662    ff9008060000
    asm("ret                0x0004");                                   // 0x00402668    c20400
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                     // 0x0040266b    e809f2ffff
    __builtin_unreachable();
}

bool __fastcall IsG3DObjectDrawnInHand__6ObjectFv(struct Object* this)
{
    asm("mov                al, 0x01");                                 // 0x00402670    b001
    asm("ret");                                                         // 0x00402672    c3
    __builtin_unreachable();
}

void __fastcall GetDrawRegion__6ObjectFP8LHRegion(struct Object* this, const void* edx, struct LHRegion* param_1)
{
    return;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ProcessState__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall CanBePickedUp__6ObjectFv(struct Object* this)
{
    return 0;
}

float __fastcall GetVillagerHugRadius__6ObjectFv(struct Object* this)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x004026b0    8b01
    asm("call               dword ptr [eax + 0x64]");                   // 0x004026b2    ff5064
    asm("{disp32} fmul      dword ptr [_rdata_float1p05]");             // 0x004026b5    d80da0a38a00
    asm("{disp32} fadd      dword ptr [_rdata_float0p0005]");           // 0x004026bb    d8059ca38a00
    asm("ret");                                                         // 0x004026c1    c3
    __builtin_unreachable();
}

float __fastcall GetFoodValue__6ObjectF9FOOD_TYPE(struct Object* this, const void* edx, enum FOOD_TYPE type)
{
    asm("push               esi");                                      // 0x004026d0    56
    asm("mov.s              esi, ecx");                                 // 0x004026d1    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x004026d3    8b06
    asm("call               dword ptr [eax + 0x668]");                  // 0x004026d5    ff9068060000
    asm("test               dword ptr [esp + 0x08], eax");              // 0x004026db    85442408
    asm("{disp8} je         _jmp_addr_0x004026eb");                     // 0x004026df    740a
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");              // 0x004026e1    8b4e28
    asm("{disp8} fld        dword ptr [ecx + 0x68]");                   // 0x004026e4    d94168
    asm("pop                esi");                                      // 0x004026e7    5e
    asm("ret                0x0004");                                   // 0x004026e8    c20400
    asm("_jmp_addr_0x004026eb:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x004026eb    d90598a38a00
    asm("pop                esi");                                      // 0x004026f1    5e
    asm("ret                0x0004");                                   // 0x004026f2    c20400
    __builtin_unreachable();
}

enum FOOD_TYPE __fastcall GetFoodType__6ObjectFv(struct Object* this)
{
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x28]");              // 0x00402700    8b4928
    asm("mov                eax, dword ptr [ecx]");                     // 0x00402703    8b01
    asm("{disp8} jmp        dword ptr [eax + 0x38]");                   // 0x00402705    ff6038
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsMoving__6ObjectCFv(const struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x14]");              // 0x00402710    8b4114
    asm("cmp                eax, dword ptr [ecx + 0x2c]");              // 0x00402713    3b412c
    asm("{disp8} jne        _jmp_addr_0x00402723");                     // 0x00402716    750b
    asm("{disp8} mov        edx, dword ptr [ecx + 0x18]");              // 0x00402718    8b5118
    asm("cmp                edx, dword ptr [ecx + 0x30]");              // 0x0040271b    3b5130
    asm("{disp8} jne        _jmp_addr_0x00402723");                     // 0x0040271e    7503
    asm("xor.s              eax, eax");                                 // 0x00402720    33c0
    asm("ret");                                                         // 0x00402722    c3
    asm("_jmp_addr_0x00402723:");
    asm("mov                eax, 0x00000001");                          // 0x00402723    b801000000
    asm("ret");                                                         // 0x00402728    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsSpellSeedReturnPoint__6ObjectCFv(const struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsABeliever__6ObjectFv(struct Object* this)
{
    return 0;
}

enum RESOURCE_TYPE __fastcall GetResourceType__6ObjectFv(struct Object* this)
{
    // return RESOURCE_TYPE_NONE; 
    asm("or                 eax, -0x1");                                // 0x00402750    83c8ff
    asm("ret");                                                         // 0x00402753    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall GetDefaultResource__6ObjectFv(struct Object* this)
{
    return 0;
}

void __fastcall SetPoisonedResource__6ObjectF13RESOURCE_TYPEi(struct Object* this, const void* edx, enum RESOURCE_TYPE type, int param_2)
{
    return;
}

void __fastcall SetPoisoned__6ObjectFi(struct Object* this, const void* edx, int param_1)
{
    return;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsLockedInInteract__6ObjectFv(struct Object* this)
{
    return 0;
}

bool __fastcall SetDying__6ObjectFv(struct Object* this)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x004027a0    8b01
    asm("push               0x0");                                      // 0x004027a2    6a00
    asm("call               dword ptr [eax + 0xc]");                    // 0x004027a4    ff500c
    asm("mov                eax, 0x00000001");                          // 0x004027a7    b801000000
    asm("ret");                                                         // 0x004027ac    c3
    __builtin_unreachable();
}

void __fastcall EndOnFire__6ObjectFv(struct Object* this)
{
    return;
}

float __fastcall GetDistanceFromObject__6ObjectFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* target)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");              // 0x004027c0    8b442404
    asm("push               eax");                                      // 0x004027c4    50
    asm("call               ?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z");                     // 0x004027c5    e8e6da1600
    asm("ret                0x0004");                                   // 0x004027ca    c20400
    __builtin_unreachable();
}

bool32_t __fastcall NetworkUnfriendlyStartLockedSelect__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall IsReadyForNetworkUnfriendlyLockedSelect__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall NetworkUnfriendlyLockedSelect__6ObjectFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1)
{
    return 1;
}

bool32_t __fastcall GetReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall IsReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall NetworkUnfriendlyEndLockedSelect__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall NetworkFriendlyEndLockedSelect__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 1;
}

bool32_t __fastcall ValidAsInterfaceTarget__6ObjectFv(struct Object* this)
{
    return 1;
}

bool32_t __fastcall ValidAsInterfaceLeashTarget__6ObjectFv(struct Object* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SelectOnlyAfterRecSystem__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ValidForPlaceInHand__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ValidToRemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0;
}

uint32_t __fastcall RemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0x17;
}

bool32_t __fastcall InterfaceMustBeInInfluenceForInteraction__6ObjectFv(struct Object* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToApplyThisToObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ApplyThisToObject__6ObjectFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2, struct GestureSystemPacketData* param_3)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidForLockedApplyProcess__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 0;
}

uint32_t __fastcall ApplyUnlockProcess__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall IsInterfacePowerUpWhenInHand__6ObjectCFv(const struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ApplyOnlyAfterRecSystem__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ApplyOnlyAfterReleased__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall InterfaceValidToGiveObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2)
{
    return 0;
}

uint32_t __fastcall InterfaceGiveObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2)
{
    return 0x16;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall InterfaceValidToInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 0;
}

uint32_t __fastcall InterfaceInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToSelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0;
}

uint32_t __fastcall SelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 1;
}

uint32_t __fastcall ApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ValidToFightThisToObject__6ObjectFP16GInterfaceStatusRC9MapCoords(struct Object* this, const void* edx, struct GInterfaceStatus* status, const struct MapCoords* param_2)
{
    return 0;
}

uint32_t __fastcall FightThisToObject__6ObjectFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Object* param_2)
{
    return 1;
}

bool32_t __fastcall IsEffectReceiver__6ObjectFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1)
{
    return 1;
}

bool32_t __fastcall IsObject__6ObjectCFv(struct GameThingWithPos* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall PhysicallyDestroysAbodes__6ObjectFv(struct Object* this)
{
    asm("xor.s              al, al");                                   // 0x00402a00    32c0
    asm("ret");                                                         // 0x00402a02    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall GetAlwaysRemainsInPhysicsInternalSystem__6ObjectFv(struct Object* this)
{
    asm("xor.s              al, al");                                   // 0x00402a10    32c0
    asm("ret");                                                         // 0x00402a12    c3
    __builtin_unreachable();
}

bool32_t __fastcall IsSuitableForCreatureAction__6ObjectFv(struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");              // 0x00402a20    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000c0]");        // 0x00402a23    8b80c0000000
    asm("ret");                                                         // 0x00402a29    c3
    asm("call               dword ptr [__imp__DirectInputCreateA@4]");  // 0x00402a2a    ff1534908a00
    __builtin_unreachable();
}

bool32_t __fastcall CanBePoodOn__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeAttackedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");              // 0x00402a40    8b4128
    asm("{disp32} mov       edx, dword ptr [eax + 0x000000c4]");        // 0x00402a43    8b90c4000000
    asm("test               edx, edx");                                 // 0x00402a49    85d2
    asm("{disp8} je         _jmp_addr_0x00402a5b");                     // 0x00402a4b    740e
    asm("cmp                dword ptr [esp + 0x04], ecx");              // 0x00402a4d    394c2404
    asm("{disp8} je         _jmp_addr_0x00402a5b");                     // 0x00402a51    7408
    asm("mov                eax, 0x00000001");                          // 0x00402a53    b801000000
    asm("ret                0x0004");                                   // 0x00402a58    c20400
    asm("_jmp_addr_0x00402a5b:");
    asm("xor.s              eax, eax");                                 // 0x00402a5b    33c0
    asm("ret                0x0004");                                   // 0x00402a5d    c20400
    __builtin_unreachable();
}

bool32_t __fastcall CanBePlayedWithByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");              // 0x00402a60    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000c8]");        // 0x00402a63    8b80c8000000
    asm("ret                0x0004");                                   // 0x00402a69    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeImpressedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

bool32_t __fastcall CanBeHelpedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 1;
}

bool32_t __fastcall CanBeExaminedByCreature__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 1;
}

bool32_t __fastcall IsOnFire__6ObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("call               _jmp_addr_0x00637cc0");                     // 0x00402aa0    e81b522300
    asm("ret                0x0004");                                   // 0x00402aa5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetTastiness__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsScary__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetObjectCollide__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsPushable__6ObjectFv(struct Object* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetCarriedTreeType__6ObjectFv(struct Object* this)
{
    return 0;
}

float __fastcall GetFacingPitch__6ObjectFv(struct Object* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402b00    d90598a38a00
    asm("ret");                                                         // 0x00402b06    c3
    __builtin_unreachable();
}

void __fastcall SetHeadPos__6ObjectFP9MapCoords(struct Object* this, const void* edx, struct MapCoords* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");              // 0x00402b10    8b442404
    asm("add                ecx, 0x14");                                // 0x00402b14    83c114
    asm("mov                edx, dword ptr [ecx]");                     // 0x00402b17    8b11
    asm("mov                dword ptr [eax], edx");                     // 0x00402b19    8910
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");              // 0x00402b1b    8b5104
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");              // 0x00402b1e    895004
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");              // 0x00402b21    8b4908
    asm("{disp8} mov        dword ptr [eax + 0x08], ecx");              // 0x00402b24    894808
    asm("ret                0x0004");                                   // 0x00402b27    c20400
    asm("call               dword ptr [__imp___ChangeParameters_CImmPeriodic__QAEHKKKJJJKPAUFEELIT_ENVELOPE___Z@4]");           // 0x00402b2a    ff15d8908a00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAPotFromABuildingSite__6ObjectFv(struct Object* this)
{
    return 0;
}

const char* __fastcall GetText__6ObjectFv(struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");              // 0x00402b40    8b4128
    asm("add                eax, 0x18");                                // 0x00402b43    83c018
    asm("ret");                                                         // 0x00402b46    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall StandAnimation__6ObjectFv(struct Object* this)
{
    // return 0xFFFFFFFF;
    asm("or                 eax, -0x1");                                // 0x00402b50    83c8ff
    asm("ret");                                                         // 0x00402b53    c3
    __builtin_unreachable();
}
