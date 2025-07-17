#include "GameThing.h"

float __fastcall GetDrawImportance__9GameThingFv(struct GameThing* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405130    d90598a38a00
    asm("ret");                                                              // 0x00405136    c3
    __builtin_unreachable();
}

float __fastcall GetRadius__9GameThingFv(struct GameThing* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405140    d90598a38a00
    asm("ret");                                                              // 0x00405146    c3
    __builtin_unreachable();
}

float __fastcall Get2DRadius__9GameThingFv(struct GameThing* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405150    d90598a38a00
    asm("ret");                                                              // 0x00405156    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFootpathLink__9GameThingFv(struct GameThing* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct GFootpathLink* __fastcall GetFootpathLink__9GameThingFv(struct GameThing* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetNearestPathTo__9GameThingFRC9MapCoordsfi(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AddFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall RemoveFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetResource__9GameThingF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AddResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall RemoveResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct Abode* __fastcall CastAbode__9GameThingFv(struct GameThing* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct MultiMapFixed* __fastcall CastMultiMapFixed__9GameThingFv(struct GameThing* this)
{
    return 0;
}

uint16_t __fastcall GetNumberOfInstanceForGlobalList__9GameThingFv(struct GameThing* this)
{
    return 1;
}

float __fastcall GetTownArtifactValue__9GameThingFv(struct GameThing* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405210    d90598a38a00
    asm("ret");                                                              // 0x00405216    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall CanBecomeArtifact__9GameThingFv(struct GameThing* this)
{
    asm("xor.s              al, al");                                        // 0x00405220    32c0
    asm("ret");                                                              // 0x00405222    c3
    __builtin_unreachable();
}

void __fastcall DrawInHand__9GameThingFP16GInterfaceStatus(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1)
{
    return;
}

bool __fastcall IsFunctional__9GameThingFv(struct GameThing* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00405240    8b01
    asm("{disp8} jmp        dword ptr [eax + 0x2c]");                        // 0x00405242    ff602c
    __builtin_unreachable();
}

void __fastcall ResolveLoad__9GameThingFv(struct GameThing* this)
{
    return;
}
