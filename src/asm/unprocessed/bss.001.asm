.intel_syntax noprefix
.section .bss

.globl _VillagerStateTable
.globl _AnimalStateTable

_VillagerStateTable:                       .space 0x8f70                                                           // [0x343198] 0x009c6000 + 0x343198 = 0x00d09198
_AnimalStateTable:                         .space 0x1dd0                                                           // [0x34c108] 0x009c6000 + 0x34c108 = 0x00d12108
