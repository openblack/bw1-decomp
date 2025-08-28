#include "Abode.h"

extern const char debug_text_Abode[7];

__attribute__((MOV32rr_REV))
struct Abode* __fastcall CastAbode__5AbodeFv(struct GameThing* this)
{
    return ((struct Abode*)this);
}

bool __fastcall GetShouldNotBeAddedToPlanned__5AbodeFv(struct MultiMapFixed* this)
{
    asm(
        "xor.s              eax, eax                 \n" // 0x00401650    33c0
        "{disp8} mov        al, byte ptr [ecx + 0x7c]\n" // 0x00401652    8a417c
        "shr                eax, 2                   \n" // 0x00401655    c1e802
        "and                eax, 0x01                \n" // 0x00401658    83e001
        "ret                                         \n" // 0x0040165b    c3
    );
    __builtin_unreachable();
}

void __fastcall SetShouldNotBeAddedToPlanned__5AbodeFi(struct MultiMapFixed* this, const void* edx, bool value)
{
    asm(
        "{disp8} mov        al, byte ptr [esp + 0x04]\n" // 0x00401660    8a442404
        "{disp8} mov        dl, byte ptr [ecx + 0x7c]\n" // 0x00401664    8a517c
        "and                al, 0x01                 \n" // 0x00401667    2401
        "shl                al, 2                    \n" // 0x00401669    c0e002
        "and                dl, -0x05                \n" // 0x0040166c    80e2fb
        "or.s               al, dl                   \n" // 0x0040166f    0ac2
        "{disp8} mov        byte ptr [ecx + 0x7c], al\n" // 0x00401671    88417c
    );
}

void __fastcall RestartBeingFunctional__5AbodeFv(struct Abode* this)
{
}

void __fastcall SetTown__5AbodeFP4Town(struct MultiMapFixed* this, const void* edx, struct Town* town)
{
    ((struct Abode*)this)->town = town;
}

bool __fastcall IsRepaired__5AbodeFv(struct MultiMapFixed* this)
{
    asm("mov                eax, dword ptr [ecx]       ");  // 0x004016a0    8b01
    asm("call               dword ptr [eax + 0x884]    ");  // 0x004016a2    ff9084080000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");  // 0x004016a8    d81d90a38a00
    asm("fnstsw             ax                         ");  // 0x004016ae    dfe0
    asm("test               ah, 0x01                   ");  // 0x004016b0    f6c401
    asm("{disp8} jne        _jmp_addr_0x004016bb       ");  // 0x004016b3    7506
    asm("mov                eax, 0x00000001            ");  // 0x004016b5    b801000000
    asm("ret                                           ");  // 0x004016ba    c3
    asm("_jmp_addr_0x004016bb:                         ");
    asm("xor.s              eax, eax                   ");  // 0x004016bb    33c0
    asm("ret                                           ");  // 0x004016bd    c3

    __builtin_unreachable();
}

bool __fastcall IsBuilt__5AbodeFv(struct MultiMapFixed* this)
{
    asm("{disp8} mov        al, byte ptr [ecx + 0x58]  ");  // 0x004016c0    8a4158
    asm("and                al, 0x02                   ");  // 0x004016c3    2402
    asm("cmp                al, 0x02                   ");  // 0x004016c5    3c02
    asm("{disp8} je         _jmp_addr_0x004016e4       ");  // 0x004016c7    741b
    asm("mov                edx, dword ptr [ecx]       ");  // 0x004016c9    8b11
    asm("call               dword ptr [edx + 0x880]    ");  // 0x004016cb    ff9280080000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");  // 0x004016d1    d81d90a38a00
    asm("fnstsw             ax                         ");  // 0x004016d7    dfe0
    asm("test               ah, 0x01                   ");  // 0x004016d9    f6c401
    asm("{disp8} jne        _jmp_addr_0x004016e4       ");  // 0x004016dc    7506
    asm("mov                eax, 0x00000001            ");  // 0x004016de    b801000000
    asm("ret                                           ");  // 0x004016e3    c3
    asm("_jmp_addr_0x004016e4:                         ");
    asm("xor.s              eax, eax                   ");  // 0x004016e4    33c0
    asm("ret                                           ");  // 0x004016e6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall CausesTownEmergencyIfDamaged__5AbodeFv(struct Abode* this)
{
    return false;
}

struct LH3DMesh* __fastcall GetDestructionMesh__5AbodeFv(struct MultiMapFixed* this)
{
    return ((struct Abode*)this)->destruction_mesh;
}

bool32_t __fastcall IsAbode__5AbodeFv(struct GameThingWithPos* this)
{
    return true;
}

bool32_t __fastcall IsCastShadowAtNight__5AbodeFv(struct GameThingWithPos* this)
{
    return true;
}

struct Town * __fastcall GetTown__5AbodeFv(struct GameThing* this)
{
    return ((struct Abode*)this)->town;
}

uint32_t __fastcall GetCreatureBeliefType__5AbodeFv(struct GameThingWithPos* this)
{
    return 3;
}

uint32_t __fastcall GetCreatureMimicType__5AbodeFv(struct GameThingWithPos* this)
{
    return 5;
}

uint32_t __fastcall GetOrigin__5AbodeFv(struct GameThingWithPos* this)
{
    return 1;
}

struct MapCoords* __fastcall GetArrivePos__5AbodeFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* coords)
{
    asm("mov                eax, dword ptr [ecx]       ");  // 0x00401770    8b01
    asm("push               esi                        ");  // 0x00401772    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");  // 0x00401773    8b742408
    asm("push               esi                        ");  // 0x00401777    56
    asm("call               dword ptr [eax + 0x864]    ");  // 0x00401778    ff9064080000
    asm("mov.s              eax, esi                   ");  // 0x0040177e    8bc6
    asm("pop                esi                        ");  // 0x00401780    5e
    asm("ret                0x0004                     ");  // 0x00401781    c20400
    __builtin_unreachable();
}

bool32_t __fastcall IsHouse__5AbodeFv(struct GameThingWithPos* this)
{
    return true;
}

uint32_t __fastcall GetSaveType__5AbodeFv(struct GameThing* this)
{
    return 7;
}

char* __fastcall GetDebugText__5AbodeFv(struct GameThing* this)
{
    // return (char*)debug_text_Abode;
    asm("mov  eax, 0x009c7fb4");  // 0x004017b0    b8b47f9c00
    asm("ret");                   // 0x004017b5    c3
    __builtin_unreachable();
}

void __fastcall __dt__5AbodeFUi(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push       esi                        ");  // 0x004017c0    56
    asm("mov.s      esi, ecx                   ");  // 0x004017c1    8bf1
    asm("call       ??1Abode@@UAE@XZ           ");  // 0x004017c3    e898130000
    asm("test       byte ptr [esp + 0x08], 0x01");  // 0x004017c8    f644240801
    asm("{disp8} je _jmp_addr_0x004017dd       ");  // 0x004017cd    740e
    asm("push       0x000000c4                 ");  // 0x004017cf    68c4000000
    asm("push       esi                        ");  // 0x004017d4    56
    asm("call       ??3Base@@SAXPAXK@Z         ");  // 0x004017d5    e896510300
    asm("add        esp, 0x08                  ");  // 0x004017da    83c408
    asm("_jmp_addr_0x004017dd:                 ");
    asm("mov.s     eax, esi                    ");  // 0x004017dd    8bc6
    asm("pop       esi                         ");  // 0x004017df    5e
    asm("ret       0x0004                      ");  // 0x004017e0    c20400
    __builtin_unreachable();
}
