#ifndef BW1_DECOMP_P_SYS_GEOM_INCLUDED_H
#define BW1_DECOMP_P_SYS_GEOM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "FuncT.h" /* For struct FuncT */

struct TestFunnel
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnel) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c025a8 mac inlined TestFunnel::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10TestFunnel asm("??_R0?AVTestFunnel@@@8");
// win1.41 009b3e40 mac inlined TestFunnel::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10TestFunnel asm("??_R1A@?0A@A@TestFunnel@@8");
// win1.41 009b3e58 mac inlined TestFunnel::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10TestFunnel asm("??_R2TestFunnel@@8");
// win1.41 009b3e68 mac inlined TestFunnel::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10TestFunnel asm("??_R3TestFunnel@@8");

// Override methods

// win1.41 006868e0 mac 10402ae0 TestFunnel::Eval( const(float, float *, float *))
void __fastcall Eval__10TestFunnelCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnel@@UBEXMPAM0@Z");

struct TestFunnelParab
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnelParab) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02588 mac inlined TestFunnelParab::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15TestFunnelParab asm("??_R0?AVTestFunnelParab@@@8");
// win1.41 009b3df0 mac inlined TestFunnelParab::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15TestFunnelParab asm("??_R1A@?0A@A@TestFunnelParab@@8");
// win1.41 009b3e08 mac inlined TestFunnelParab::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15TestFunnelParab asm("??_R2TestFunnelParab@@8");
// win1.41 009b3e18 mac inlined TestFunnelParab::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15TestFunnelParab asm("??_R3TestFunnelParab@@8");

// Override methods

// win1.41 00686910 mac 104029c0 TestFunnelParab::Eval( const(float, float *, float *))
void __fastcall Eval__15TestFunnelParabCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnelParab@@UBEXMPAM0@Z");

struct TestFunnelSpout
{
  struct FuncT super;  /* 0x0 */
};
static_assert(sizeof(struct TestFunnelSpout) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02568 mac inlined TestFunnelSpout::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15TestFunnelSpout asm("??_R0?AVTestFunnelSpout@@@8");
// win1.41 009b3da0 mac inlined TestFunnelSpout::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15TestFunnelSpout asm("??_R1A@?0A@A@TestFunnelSpout@@8");
// win1.41 009b3db8 mac inlined TestFunnelSpout::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15TestFunnelSpout asm("??_R2TestFunnelSpout@@8");
// win1.41 009b3dc8 mac inlined TestFunnelSpout::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15TestFunnelSpout asm("??_R3TestFunnelSpout@@8");

// Override methods

// win1.41 00686940 mac 10402a20 TestFunnelSpout::Eval( const(float, float *, float *))
void __fastcall Eval__15TestFunnelSpoutCFfPfPf(const struct FuncT* this, const void* edx, float param_1, float* param_2, float* param_3) asm("?Eval@TestFunnelSpout@@UBEXMPAM0@Z");

#endif /* BW1_DECOMP_P_SYS_GEOM_INCLUDED_H */
