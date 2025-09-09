.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00417b80
.extern _jmp_addr_0x0041d0b0
.extern _jmp_addr_0x0041fd30
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x006db020
.extern _jmp_addr_0x006db520
.extern _jmp_addr_0x006dc9e0
.extern _jmp_addr_0x006dcfd0
.extern ___nw__FUl

.globl _jmp_addr_0x006dd460
.globl _jmp_addr_0x006dd4c0
.globl _jmp_addr_0x006dd4f0
.globl _jmp_addr_0x006dd7d0
.globl ?CanBeFrighteningToCreature@PuzzleCow@@UAEIPAVCreature@@@Z
.globl ?GetDebugText@PuzzleHorse@@UAEPADXZ
.globl ?CanBecomeAPhysicsObject@PuzzleHorse@@UAE_NXZ
.globl ??_GPuzzleHorse@@UAEPAXI@Z
.globl ?GetSaveType@PuzzleTortoise@@UAEIXZ
.globl ?GetDebugText@PuzzleTortoise@@UAEPADXZ
.globl ?CanBecomeAPhysicsObject@PuzzleTortoise@@UAE_NXZ
.globl ??_GPuzzleTortoise@@UAEPAXI@Z
.globl ?GetSaveType@PuzzleCow@@UAEIXZ
.globl ?GetDebugText@PuzzleCow@@UAEPADXZ
.globl ?CanBecomeAPhysicsObject@PuzzleCow@@UAE_NXZ
.globl ??_GPuzzleCow@@UAEPAXI@Z
.globl ?GetSaveType@PuzzlePig@@UAEIXZ
.globl ?GetDebugText@PuzzlePig@@UAEPADXZ
.globl ?CanBecomeAPhysicsObject@PuzzlePig@@UAE_NXZ
.globl ??_GPuzzlePig@@UAEPAXI@Z

start_0x006dd460_0x006dd940:
// Snippet: asm, [0x006dd460, 0x006dd914)
_jmp_addr_0x006dd460:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x006dd460    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x006dd464    8b542404
                         push             esi                                    // 0x006dd468    56
                         mov.s            esi, ecx                               // 0x006dd469    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]            // 0x006dd46b    8b4c240c
                         push             eax                                    // 0x006dd46f    50
                         push             ecx                                    // 0x006dd470    51
                         push             edx                                    // 0x006dd471    52
                         mov.s            ecx, esi                               // 0x006dd472    8bce
                         call             _jmp_addr_0x0041fd30                   // 0x006dd474    e8b728d4ff
                         mov              dword ptr [esi], 0x008c0160            // 0x006dd479    c70660018c00
                         mov.s            eax, esi                               // 0x006dd47f    8bc6
                         pop              esi                                    // 0x006dd481    5e
                         ret              0x000c                                 // 0x006dd482    c20c00
                         nop                                                     // 0x006dd485    90
                         nop                                                     // 0x006dd486    90
                         nop                                                     // 0x006dd487    90
                         nop                                                     // 0x006dd488    90
                         nop                                                     // 0x006dd489    90
                         nop                                                     // 0x006dd48a    90
                         nop                                                     // 0x006dd48b    90
                         nop                                                     // 0x006dd48c    90
                         nop                                                     // 0x006dd48d    90
                         nop                                                     // 0x006dd48e    90
                         nop                                                     // 0x006dd48f    90
                         xor.s            eax, eax                               // 0x006dd490    33c0
                         ret                                                     // 0x006dd492    c3
                         nop                                                     // 0x006dd493    90
                         nop                                                     // 0x006dd494    90
                         nop                                                     // 0x006dd495    90
                         nop                                                     // 0x006dd496    90
                         nop                                                     // 0x006dd497    90
                         nop                                                     // 0x006dd498    90
                         nop                                                     // 0x006dd499    90
                         nop                                                     // 0x006dd49a    90
                         nop                                                     // 0x006dd49b    90
                         nop                                                     // 0x006dd49c    90
                         nop                                                     // 0x006dd49d    90
                         nop                                                     // 0x006dd49e    90
                         nop                                                     // 0x006dd49f    90
                         xor.s            eax, eax                               // 0x006dd4a0    33c0
                         ret                                                     // 0x006dd4a2    c3
                         nop                                                     // 0x006dd4a3    90
                         nop                                                     // 0x006dd4a4    90
                         nop                                                     // 0x006dd4a5    90
                         nop                                                     // 0x006dd4a6    90
                         nop                                                     // 0x006dd4a7    90
                         nop                                                     // 0x006dd4a8    90
                         nop                                                     // 0x006dd4a9    90
                         nop                                                     // 0x006dd4aa    90
                         nop                                                     // 0x006dd4ab    90
                         nop                                                     // 0x006dd4ac    90
                         nop                                                     // 0x006dd4ad    90
                         nop                                                     // 0x006dd4ae    90
                         nop                                                     // 0x006dd4af    90
?CanBeFrighteningToCreature@PuzzleCow@@UAEIPAVCreature@@@Z:
                         xor.s            eax, eax                               // 0x006dd4b0    33c0
                         ret              0x0004                                 // 0x006dd4b2    c20400
                         nop                                                     // 0x006dd4b5    90
                         nop                                                     // 0x006dd4b6    90
                         nop                                                     // 0x006dd4b7    90
                         nop                                                     // 0x006dd4b8    90
                         nop                                                     // 0x006dd4b9    90
                         nop                                                     // 0x006dd4ba    90
                         nop                                                     // 0x006dd4bb    90
                         nop                                                     // 0x006dd4bc    90
                         nop                                                     // 0x006dd4bd    90
                         nop                                                     // 0x006dd4be    90
                         nop                                                     // 0x006dd4bf    90
_jmp_addr_0x006dd4c0:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x006dd4c0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x006dd4c4    8b542404
                         push             esi                                    // 0x006dd4c8    56
                         mov.s            esi, ecx                               // 0x006dd4c9    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]            // 0x006dd4cb    8b4c240c
                         push             eax                                    // 0x006dd4cf    50
                         push             ecx                                    // 0x006dd4d0    51
                         push             edx                                    // 0x006dd4d1    52
                         mov.s            ecx, esi                               // 0x006dd4d2    8bce
                         call             _jmp_addr_0x0041d0b0                   // 0x006dd4d4    e8d7fbd3ff
                         mov              dword ptr [esi], 0x008adc88            // 0x006dd4d9    c70688dc8a00
                         mov.s            eax, esi                               // 0x006dd4df    8bc6
                         pop              esi                                    // 0x006dd4e1    5e
                         ret              0x000c                                 // 0x006dd4e2    c20c00
                         nop                                                     // 0x006dd4e5    90
                         nop                                                     // 0x006dd4e6    90
                         nop                                                     // 0x006dd4e7    90
                         nop                                                     // 0x006dd4e8    90
                         nop                                                     // 0x006dd4e9    90
                         nop                                                     // 0x006dd4ea    90
                         nop                                                     // 0x006dd4eb    90
                         nop                                                     // 0x006dd4ec    90
                         nop                                                     // 0x006dd4ed    90
                         nop                                                     // 0x006dd4ee    90
                         nop                                                     // 0x006dd4ef    90
_jmp_addr_0x006dd4f0:    {disp8} mov      eax, dword ptr [esp + 0x0c]            // 0x006dd4f0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]            // 0x006dd4f4    8b542404
                         push             esi                                    // 0x006dd4f8    56
                         mov.s            esi, ecx                               // 0x006dd4f9    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]            // 0x006dd4fb    8b4c240c
                         push             eax                                    // 0x006dd4ff    50
                         push             ecx                                    // 0x006dd500    51
                         push             edx                                    // 0x006dd501    52
                         mov.s            ecx, esi                               // 0x006dd502    8bce
                         call             _jmp_addr_0x0041d0b0                   // 0x006dd504    e8a7fbd3ff
                         mov              dword ptr [esi], 0x008b010c            // 0x006dd509    c7060c018b00
                         mov.s            eax, esi                               // 0x006dd50f    8bc6
                         pop              esi                                    // 0x006dd511    5e
                         ret              0x000c                                 // 0x006dd512    c20c00
                         nop                                                     // 0x006dd515    90
                         nop                                                     // 0x006dd516    90
                         nop                                                     // 0x006dd517    90
                         nop                                                     // 0x006dd518    90
                         nop                                                     // 0x006dd519    90
                         nop                                                     // 0x006dd51a    90
                         nop                                                     // 0x006dd51b    90
                         nop                                                     // 0x006dd51c    90
                         nop                                                     // 0x006dd51d    90
                         nop                                                     // 0x006dd51e    90
                         nop                                                     // 0x006dd51f    90
?GetDebugText@PuzzleHorse@@UAEPADXZ:
                         mov              eax, 0x00bee214                        // 0x006dd520    b814e2be00
                         ret                                                     // 0x006dd525    c3
                         nop                                                     // 0x006dd526    90
                         nop                                                     // 0x006dd527    90
                         nop                                                     // 0x006dd528    90
                         nop                                                     // 0x006dd529    90
                         nop                                                     // 0x006dd52a    90
                         nop                                                     // 0x006dd52b    90
                         nop                                                     // 0x006dd52c    90
                         nop                                                     // 0x006dd52d    90
                         nop                                                     // 0x006dd52e    90
                         nop                                                     // 0x006dd52f    90
?CanBecomeAPhysicsObject@PuzzleHorse@@UAE_NXZ:
                         xor.s            eax, eax                               // 0x006dd530    33c0
                         ret                                                     // 0x006dd532    c3
                         nop                                                     // 0x006dd533    90
                         nop                                                     // 0x006dd534    90
                         nop                                                     // 0x006dd535    90
                         nop                                                     // 0x006dd536    90
                         nop                                                     // 0x006dd537    90
                         nop                                                     // 0x006dd538    90
                         nop                                                     // 0x006dd539    90
                         nop                                                     // 0x006dd53a    90
                         nop                                                     // 0x006dd53b    90
                         nop                                                     // 0x006dd53c    90
                         nop                                                     // 0x006dd53d    90
                         nop                                                     // 0x006dd53e    90
                         nop                                                     // 0x006dd53f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]      // 0x006dd540    8b8148010000
                         ret                                                     // 0x006dd546    c3
                         nop                                                     // 0x006dd547    90
                         nop                                                     // 0x006dd548    90
                         nop                                                     // 0x006dd549    90
                         nop                                                     // 0x006dd54a    90
                         nop                                                     // 0x006dd54b    90
                         nop                                                     // 0x006dd54c    90
                         nop                                                     // 0x006dd54d    90
                         nop                                                     // 0x006dd54e    90
                         nop                                                     // 0x006dd54f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]      // 0x006dd550    8b814c010000
                         ret                                                     // 0x006dd556    c3
                         nop                                                     // 0x006dd557    90
                         nop                                                     // 0x006dd558    90
                         nop                                                     // 0x006dd559    90
                         nop                                                     // 0x006dd55a    90
                         nop                                                     // 0x006dd55b    90
                         nop                                                     // 0x006dd55c    90
                         nop                                                     // 0x006dd55d    90
                         nop                                                     // 0x006dd55e    90
                         nop                                                     // 0x006dd55f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd560    8b442404
                         {disp32} mov     dword ptr [ecx + 0x00000148], eax      // 0x006dd564    898148010000
                         ret              0x0004                                 // 0x006dd56a    c20400
                         nop                                                     // 0x006dd56d    90
                         nop                                                     // 0x006dd56e    90
                         nop                                                     // 0x006dd56f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd570    8b442404
                         {disp32} mov     dword ptr [ecx + 0x0000014c], eax      // 0x006dd574    89814c010000
                         ret              0x0004                                 // 0x006dd57a    c20400
                         nop                                                     // 0x006dd57d    90
                         nop                                                     // 0x006dd57e    90
                         nop                                                     // 0x006dd57f    90
                         {disp32} mov     al, byte ptr [ecx + 0x00000150]        // 0x006dd580    8a8150010000
                         ret                                                     // 0x006dd586    c3
                         nop                                                     // 0x006dd587    90
                         nop                                                     // 0x006dd588    90
                         nop                                                     // 0x006dd589    90
                         nop                                                     // 0x006dd58a    90
                         nop                                                     // 0x006dd58b    90
                         nop                                                     // 0x006dd58c    90
                         nop                                                     // 0x006dd58d    90
                         nop                                                     // 0x006dd58e    90
                         nop                                                     // 0x006dd58f    90
??_GPuzzleHorse@@UAEPAXI@Z:
                         push             esi                                    // 0x006dd590    56
                         mov.s            esi, ecx                               // 0x006dd591    8bf1
                         call             _jmp_addr_0x00417b80                   // 0x006dd593    e8e8a5d3ff
                         test             byte ptr [esp + 0x08], 0x01            // 0x006dd598    f644240801
                         {disp8} je       _jmp_addr_0x006dd5ad                   // 0x006dd59d    740e
                         push             0x00000154                             // 0x006dd59f    6854010000
                         push             esi                                    // 0x006dd5a4    56
                         call             ??3Base@@SAXPAXK@Z                   // 0x006dd5a5    e8c693d5ff
                         add              esp, 0x08                              // 0x006dd5aa    83c408
_jmp_addr_0x006dd5ad:    mov.s            eax, esi                               // 0x006dd5ad    8bc6
                         pop              esi                                    // 0x006dd5af    5e
                         ret              0x0004                                 // 0x006dd5b0    c20400
                         nop                                                     // 0x006dd5b3    90
                         nop                                                     // 0x006dd5b4    90
                         nop                                                     // 0x006dd5b5    90
                         nop                                                     // 0x006dd5b6    90
                         nop                                                     // 0x006dd5b7    90
                         nop                                                     // 0x006dd5b8    90
                         nop                                                     // 0x006dd5b9    90
                         nop                                                     // 0x006dd5ba    90
                         nop                                                     // 0x006dd5bb    90
                         nop                                                     // 0x006dd5bc    90
                         nop                                                     // 0x006dd5bd    90
                         nop                                                     // 0x006dd5be    90
                         nop                                                     // 0x006dd5bf    90
?GetSaveType@PuzzleTortoise@@UAEIXZ:
                         mov              eax, 0x0000002d                        // 0x006dd5c0    b82d000000
                         ret                                                     // 0x006dd5c5    c3
                         nop                                                     // 0x006dd5c6    90
                         nop                                                     // 0x006dd5c7    90
                         nop                                                     // 0x006dd5c8    90
                         nop                                                     // 0x006dd5c9    90
                         nop                                                     // 0x006dd5ca    90
                         nop                                                     // 0x006dd5cb    90
                         nop                                                     // 0x006dd5cc    90
                         nop                                                     // 0x006dd5cd    90
                         nop                                                     // 0x006dd5ce    90
                         nop                                                     // 0x006dd5cf    90
?GetDebugText@PuzzleTortoise@@UAEPADXZ:
                         mov              eax, 0x00bee238                        // 0x006dd5d0    b838e2be00
                         ret                                                     // 0x006dd5d5    c3
                         nop                                                     // 0x006dd5d6    90
                         nop                                                     // 0x006dd5d7    90
                         nop                                                     // 0x006dd5d8    90
                         nop                                                     // 0x006dd5d9    90
                         nop                                                     // 0x006dd5da    90
                         nop                                                     // 0x006dd5db    90
                         nop                                                     // 0x006dd5dc    90
                         nop                                                     // 0x006dd5dd    90
                         nop                                                     // 0x006dd5de    90
                         nop                                                     // 0x006dd5df    90
?CanBecomeAPhysicsObject@PuzzleTortoise@@UAE_NXZ:
                         xor.s            eax, eax                               // 0x006dd5e0    33c0
                         ret                                                     // 0x006dd5e2    c3
                         nop                                                     // 0x006dd5e3    90
                         nop                                                     // 0x006dd5e4    90
                         nop                                                     // 0x006dd5e5    90
                         nop                                                     // 0x006dd5e6    90
                         nop                                                     // 0x006dd5e7    90
                         nop                                                     // 0x006dd5e8    90
                         nop                                                     // 0x006dd5e9    90
                         nop                                                     // 0x006dd5ea    90
                         nop                                                     // 0x006dd5eb    90
                         nop                                                     // 0x006dd5ec    90
                         nop                                                     // 0x006dd5ed    90
                         nop                                                     // 0x006dd5ee    90
                         nop                                                     // 0x006dd5ef    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]      // 0x006dd5f0    8b8148010000
                         ret                                                     // 0x006dd5f6    c3
                         nop                                                     // 0x006dd5f7    90
                         nop                                                     // 0x006dd5f8    90
                         nop                                                     // 0x006dd5f9    90
                         nop                                                     // 0x006dd5fa    90
                         nop                                                     // 0x006dd5fb    90
                         nop                                                     // 0x006dd5fc    90
                         nop                                                     // 0x006dd5fd    90
                         nop                                                     // 0x006dd5fe    90
                         nop                                                     // 0x006dd5ff    90
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]      // 0x006dd600    8b814c010000
                         ret                                                     // 0x006dd606    c3
                         nop                                                     // 0x006dd607    90
                         nop                                                     // 0x006dd608    90
                         nop                                                     // 0x006dd609    90
                         nop                                                     // 0x006dd60a    90
                         nop                                                     // 0x006dd60b    90
                         nop                                                     // 0x006dd60c    90
                         nop                                                     // 0x006dd60d    90
                         nop                                                     // 0x006dd60e    90
                         nop                                                     // 0x006dd60f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd610    8b442404
                         {disp32} mov     dword ptr [ecx + 0x00000148], eax      // 0x006dd614    898148010000
                         ret              0x0004                                 // 0x006dd61a    c20400
                         nop                                                     // 0x006dd61d    90
                         nop                                                     // 0x006dd61e    90
                         nop                                                     // 0x006dd61f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd620    8b442404
                         {disp32} mov     dword ptr [ecx + 0x0000014c], eax      // 0x006dd624    89814c010000
                         ret              0x0004                                 // 0x006dd62a    c20400
                         nop                                                     // 0x006dd62d    90
                         nop                                                     // 0x006dd62e    90
                         nop                                                     // 0x006dd62f    90
                         {disp32} mov     al, byte ptr [ecx + 0x00000150]        // 0x006dd630    8a8150010000
                         ret                                                     // 0x006dd636    c3
                         nop                                                     // 0x006dd637    90
                         nop                                                     // 0x006dd638    90
                         nop                                                     // 0x006dd639    90
                         nop                                                     // 0x006dd63a    90
                         nop                                                     // 0x006dd63b    90
                         nop                                                     // 0x006dd63c    90
                         nop                                                     // 0x006dd63d    90
                         nop                                                     // 0x006dd63e    90
                         nop                                                     // 0x006dd63f    90
??_GPuzzleTortoise@@UAEPAXI@Z:
                         push             esi                                    // 0x006dd640    56
                         mov.s            esi, ecx                               // 0x006dd641    8bf1
                         call             _jmp_addr_0x00417b80                   // 0x006dd643    e838a5d3ff
                         test             byte ptr [esp + 0x08], 0x01            // 0x006dd648    f644240801
                         {disp8} je       _jmp_addr_0x006dd65d                   // 0x006dd64d    740e
                         push             0x00000154                             // 0x006dd64f    6854010000
                         push             esi                                    // 0x006dd654    56
                         call             ??3Base@@SAXPAXK@Z                   // 0x006dd655    e81693d5ff
                         add              esp, 0x08                              // 0x006dd65a    83c408
_jmp_addr_0x006dd65d:    mov.s            eax, esi                               // 0x006dd65d    8bc6
                         pop              esi                                    // 0x006dd65f    5e
                         ret              0x0004                                 // 0x006dd660    c20400
                         nop                                                     // 0x006dd663    90
                         nop                                                     // 0x006dd664    90
                         nop                                                     // 0x006dd665    90
                         nop                                                     // 0x006dd666    90
                         nop                                                     // 0x006dd667    90
                         nop                                                     // 0x006dd668    90
                         nop                                                     // 0x006dd669    90
                         nop                                                     // 0x006dd66a    90
                         nop                                                     // 0x006dd66b    90
                         nop                                                     // 0x006dd66c    90
                         nop                                                     // 0x006dd66d    90
                         nop                                                     // 0x006dd66e    90
                         nop                                                     // 0x006dd66f    90
?GetSaveType@PuzzleCow@@UAEIXZ:
                         mov              eax, 0x0000002d                        // 0x006dd670    b82d000000
                         ret                                                     // 0x006dd675    c3
                         nop                                                     // 0x006dd676    90
                         nop                                                     // 0x006dd677    90
                         nop                                                     // 0x006dd678    90
                         nop                                                     // 0x006dd679    90
                         nop                                                     // 0x006dd67a    90
                         nop                                                     // 0x006dd67b    90
                         nop                                                     // 0x006dd67c    90
                         nop                                                     // 0x006dd67d    90
                         nop                                                     // 0x006dd67e    90
                         nop                                                     // 0x006dd67f    90
?GetDebugText@PuzzleCow@@UAEPADXZ:
                         mov              eax, 0x00bee238                        // 0x006dd680    b838e2be00
                         ret                                                     // 0x006dd685    c3
                         nop                                                     // 0x006dd686    90
                         nop                                                     // 0x006dd687    90
                         nop                                                     // 0x006dd688    90
                         nop                                                     // 0x006dd689    90
                         nop                                                     // 0x006dd68a    90
                         nop                                                     // 0x006dd68b    90
                         nop                                                     // 0x006dd68c    90
                         nop                                                     // 0x006dd68d    90
                         nop                                                     // 0x006dd68e    90
                         nop                                                     // 0x006dd68f    90
?CanBecomeAPhysicsObject@PuzzleCow@@UAE_NXZ:
                         xor.s            eax, eax                               // 0x006dd690    33c0
                         ret                                                     // 0x006dd692    c3
                         nop                                                     // 0x006dd693    90
                         nop                                                     // 0x006dd694    90
                         nop                                                     // 0x006dd695    90
                         nop                                                     // 0x006dd696    90
                         nop                                                     // 0x006dd697    90
                         nop                                                     // 0x006dd698    90
                         nop                                                     // 0x006dd699    90
                         nop                                                     // 0x006dd69a    90
                         nop                                                     // 0x006dd69b    90
                         nop                                                     // 0x006dd69c    90
                         nop                                                     // 0x006dd69d    90
                         nop                                                     // 0x006dd69e    90
                         nop                                                     // 0x006dd69f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]      // 0x006dd6a0    8b8148010000
                         ret                                                     // 0x006dd6a6    c3
                         nop                                                     // 0x006dd6a7    90
                         nop                                                     // 0x006dd6a8    90
                         nop                                                     // 0x006dd6a9    90
                         nop                                                     // 0x006dd6aa    90
                         nop                                                     // 0x006dd6ab    90
                         nop                                                     // 0x006dd6ac    90
                         nop                                                     // 0x006dd6ad    90
                         nop                                                     // 0x006dd6ae    90
                         nop                                                     // 0x006dd6af    90
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]      // 0x006dd6b0    8b814c010000
                         ret                                                     // 0x006dd6b6    c3
                         nop                                                     // 0x006dd6b7    90
                         nop                                                     // 0x006dd6b8    90
                         nop                                                     // 0x006dd6b9    90
                         nop                                                     // 0x006dd6ba    90
                         nop                                                     // 0x006dd6bb    90
                         nop                                                     // 0x006dd6bc    90
                         nop                                                     // 0x006dd6bd    90
                         nop                                                     // 0x006dd6be    90
                         nop                                                     // 0x006dd6bf    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd6c0    8b442404
                         {disp32} mov     dword ptr [ecx + 0x00000148], eax      // 0x006dd6c4    898148010000
                         ret              0x0004                                 // 0x006dd6ca    c20400
                         nop                                                     // 0x006dd6cd    90
                         nop                                                     // 0x006dd6ce    90
                         nop                                                     // 0x006dd6cf    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd6d0    8b442404
                         {disp32} mov     dword ptr [ecx + 0x0000014c], eax      // 0x006dd6d4    89814c010000
                         ret              0x0004                                 // 0x006dd6da    c20400
                         nop                                                     // 0x006dd6dd    90
                         nop                                                     // 0x006dd6de    90
                         nop                                                     // 0x006dd6df    90
                         {disp32} mov     al, byte ptr [ecx + 0x00000150]        // 0x006dd6e0    8a8150010000
                         ret                                                     // 0x006dd6e6    c3
                         nop                                                     // 0x006dd6e7    90
                         nop                                                     // 0x006dd6e8    90
                         nop                                                     // 0x006dd6e9    90
                         nop                                                     // 0x006dd6ea    90
                         nop                                                     // 0x006dd6eb    90
                         nop                                                     // 0x006dd6ec    90
                         nop                                                     // 0x006dd6ed    90
                         nop                                                     // 0x006dd6ee    90
                         nop                                                     // 0x006dd6ef    90
??_GPuzzleCow@@UAEPAXI@Z:
                         push             esi                                    // 0x006dd6f0    56
                         mov.s            esi, ecx                               // 0x006dd6f1    8bf1
                         call             _jmp_addr_0x00417b80                   // 0x006dd6f3    e888a4d3ff
                         test             byte ptr [esp + 0x08], 0x01            // 0x006dd6f8    f644240801
                         {disp8} je       _jmp_addr_0x006dd70d                   // 0x006dd6fd    740e
                         push             0x00000154                             // 0x006dd6ff    6854010000
                         push             esi                                    // 0x006dd704    56
                         call             ??3Base@@SAXPAXK@Z                   // 0x006dd705    e86692d5ff
                         add              esp, 0x08                              // 0x006dd70a    83c408
_jmp_addr_0x006dd70d:    mov.s            eax, esi                               // 0x006dd70d    8bc6
                         pop              esi                                    // 0x006dd70f    5e
                         ret              0x0004                                 // 0x006dd710    c20400
                         nop                                                     // 0x006dd713    90
                         nop                                                     // 0x006dd714    90
                         nop                                                     // 0x006dd715    90
                         nop                                                     // 0x006dd716    90
                         nop                                                     // 0x006dd717    90
                         nop                                                     // 0x006dd718    90
                         nop                                                     // 0x006dd719    90
                         nop                                                     // 0x006dd71a    90
                         nop                                                     // 0x006dd71b    90
                         nop                                                     // 0x006dd71c    90
                         nop                                                     // 0x006dd71d    90
                         nop                                                     // 0x006dd71e    90
                         nop                                                     // 0x006dd71f    90
?GetSaveType@PuzzlePig@@UAEIXZ:
                         mov              eax, 0x0000002d                        // 0x006dd720    b82d000000
                         ret                                                     // 0x006dd725    c3
                         nop                                                     // 0x006dd726    90
                         nop                                                     // 0x006dd727    90
                         nop                                                     // 0x006dd728    90
                         nop                                                     // 0x006dd729    90
                         nop                                                     // 0x006dd72a    90
                         nop                                                     // 0x006dd72b    90
                         nop                                                     // 0x006dd72c    90
                         nop                                                     // 0x006dd72d    90
                         nop                                                     // 0x006dd72e    90
                         nop                                                     // 0x006dd72f    90
?GetDebugText@PuzzlePig@@UAEPADXZ:
                         mov              eax, 0x00bee238                        // 0x006dd730    b838e2be00
                         ret                                                     // 0x006dd735    c3
                         nop                                                     // 0x006dd736    90
                         nop                                                     // 0x006dd737    90
                         nop                                                     // 0x006dd738    90
                         nop                                                     // 0x006dd739    90
                         nop                                                     // 0x006dd73a    90
                         nop                                                     // 0x006dd73b    90
                         nop                                                     // 0x006dd73c    90
                         nop                                                     // 0x006dd73d    90
                         nop                                                     // 0x006dd73e    90
                         nop                                                     // 0x006dd73f    90
?CanBecomeAPhysicsObject@PuzzlePig@@UAE_NXZ:
                         xor.s            eax, eax                               // 0x006dd740    33c0
                         ret                                                     // 0x006dd742    c3
                         nop                                                     // 0x006dd743    90
                         nop                                                     // 0x006dd744    90
                         nop                                                     // 0x006dd745    90
                         nop                                                     // 0x006dd746    90
                         nop                                                     // 0x006dd747    90
                         nop                                                     // 0x006dd748    90
                         nop                                                     // 0x006dd749    90
                         nop                                                     // 0x006dd74a    90
                         nop                                                     // 0x006dd74b    90
                         nop                                                     // 0x006dd74c    90
                         nop                                                     // 0x006dd74d    90
                         nop                                                     // 0x006dd74e    90
                         nop                                                     // 0x006dd74f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]      // 0x006dd750    8b8148010000
                         ret                                                     // 0x006dd756    c3
                         nop                                                     // 0x006dd757    90
                         nop                                                     // 0x006dd758    90
                         nop                                                     // 0x006dd759    90
                         nop                                                     // 0x006dd75a    90
                         nop                                                     // 0x006dd75b    90
                         nop                                                     // 0x006dd75c    90
                         nop                                                     // 0x006dd75d    90
                         nop                                                     // 0x006dd75e    90
                         nop                                                     // 0x006dd75f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]      // 0x006dd760    8b814c010000
                         ret                                                     // 0x006dd766    c3
                         nop                                                     // 0x006dd767    90
                         nop                                                     // 0x006dd768    90
                         nop                                                     // 0x006dd769    90
                         nop                                                     // 0x006dd76a    90
                         nop                                                     // 0x006dd76b    90
                         nop                                                     // 0x006dd76c    90
                         nop                                                     // 0x006dd76d    90
                         nop                                                     // 0x006dd76e    90
                         nop                                                     // 0x006dd76f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd770    8b442404
                         {disp32} mov     dword ptr [ecx + 0x00000148], eax      // 0x006dd774    898148010000
                         ret              0x0004                                 // 0x006dd77a    c20400
                         nop                                                     // 0x006dd77d    90
                         nop                                                     // 0x006dd77e    90
                         nop                                                     // 0x006dd77f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x006dd780    8b442404
                         {disp32} mov     dword ptr [ecx + 0x0000014c], eax      // 0x006dd784    89814c010000
                         ret              0x0004                                 // 0x006dd78a    c20400
                         nop                                                     // 0x006dd78d    90
                         nop                                                     // 0x006dd78e    90
                         nop                                                     // 0x006dd78f    90
                         {disp32} mov     al, byte ptr [ecx + 0x00000150]        // 0x006dd790    8a8150010000
                         ret                                                     // 0x006dd796    c3
                         nop                                                     // 0x006dd797    90
                         nop                                                     // 0x006dd798    90
                         nop                                                     // 0x006dd799    90
                         nop                                                     // 0x006dd79a    90
                         nop                                                     // 0x006dd79b    90
                         nop                                                     // 0x006dd79c    90
                         nop                                                     // 0x006dd79d    90
                         nop                                                     // 0x006dd79e    90
                         nop                                                     // 0x006dd79f    90
??_GPuzzlePig@@UAEPAXI@Z:
                         push             esi                                    // 0x006dd7a0    56
                         mov.s            esi, ecx                               // 0x006dd7a1    8bf1
                         call             _jmp_addr_0x00417b80                   // 0x006dd7a3    e8d8a3d3ff
                         test             byte ptr [esp + 0x08], 0x01            // 0x006dd7a8    f644240801
                         {disp8} je       _jmp_addr_0x006dd7bd                   // 0x006dd7ad    740e
                         push             0x00000154                             // 0x006dd7af    6854010000
                         push             esi                                    // 0x006dd7b4    56
                         call             ??3Base@@SAXPAXK@Z                   // 0x006dd7b5    e8b691d5ff
                         add              esp, 0x08                              // 0x006dd7ba    83c408
_jmp_addr_0x006dd7bd:    mov.s            eax, esi                               // 0x006dd7bd    8bc6
                         pop              esi                                    // 0x006dd7bf    5e
                         ret              0x0004                                 // 0x006dd7c0    c20400
                         nop                                                     // 0x006dd7c3    90
                         nop                                                     // 0x006dd7c4    90
                         nop                                                     // 0x006dd7c5    90
                         nop                                                     // 0x006dd7c6    90
                         nop                                                     // 0x006dd7c7    90
                         nop                                                     // 0x006dd7c8    90
                         nop                                                     // 0x006dd7c9    90
                         nop                                                     // 0x006dd7ca    90
                         nop                                                     // 0x006dd7cb    90
                         nop                                                     // 0x006dd7cc    90
                         nop                                                     // 0x006dd7cd    90
                         nop                                                     // 0x006dd7ce    90
                         nop                                                     // 0x006dd7cf    90
_jmp_addr_0x006dd7d0:    push             ecx                                    // 0x006dd7d0    51
                         push             ebx                                    // 0x006dd7d1    53
                         push             ebp                                    // 0x006dd7d2    55
                         push             esi                                    // 0x006dd7d3    56
                         push             edi                                    // 0x006dd7d4    57
                         push             0x00000ece                             // 0x006dd7d5    68ce0e0000
                         push             0x00c09908                             // 0x006dd7da    680899c000
                         mov              ebx, 0x00000001                        // 0x006dd7df    bb01000000
                         push             ebx                                    // 0x006dd7e4    53
                         mov.s            esi, ecx                               // 0x006dd7e5    8bf1
                         call             ___nw__FUl                             // 0x006dd7e7    e8a4df0f00
                         add              esp, 0x0c                              // 0x006dd7ec    83c40c
                         test             eax, eax                               // 0x006dd7ef    85c0
                         {disp8} je       _jmp_addr_0x006dd7fc                   // 0x006dd7f1    7409
                         mov.s            ecx, eax                               // 0x006dd7f3    8bc8
                         call             _jmp_addr_0x006dc9e0                   // 0x006dd7f5    e8e6f1ffff
                         {disp8} jmp      _jmp_addr_0x006dd7fe                   // 0x006dd7fa    eb02
_jmp_addr_0x006dd7fc:    xor.s            eax, eax                               // 0x006dd7fc    33c0
_jmp_addr_0x006dd7fe:    {disp8} mov      dword ptr [esi + 0x28], eax            // 0x006dd7fe    894628
                         {disp32} mov     dword ptr [data_bytes + 0x388f08], esi // 0x006dd801    893508efd400
                         {disp32} mov     dword ptr [data_bytes + 0x388f10], ebx // 0x006dd807    891d10efd400
                         {disp32} mov     ecx, dword ptr [esi + 0x00000394]      // 0x006dd80d    8b8e94030000
                         mov              eax, 0x66666667                        // 0x006dd813    b867666666
                         imul             ecx                                    // 0x006dd818    f7e9
                         {disp32} mov     ecx, dword ptr [esi + 0x00000390]      // 0x006dd81a    8b8e90030000
                         sar              edx, 1                                 // 0x006dd820    d1fa
                         mov.s            eax, edx                               // 0x006dd822    8bc2
                         shr              eax, 0x1f                              // 0x006dd824    c1e81f
                         add.s            edx, eax                               // 0x006dd827    03d0
                         {disp32} mov     dword ptr [esi + 0x00000394], edx      // 0x006dd829    899694030000
                         mov              eax, 0x66666667                        // 0x006dd82f    b867666666
                         imul             ecx                                    // 0x006dd834    f7e9
                         sar              edx, 1                                 // 0x006dd836    d1fa
                         mov.s            ecx, edx                               // 0x006dd838    8bca
                         shr              ecx, 0x1f                              // 0x006dd83a    c1e91f
                         add.s            edx, ecx                               // 0x006dd83d    03d1
                         {disp32} mov     dword ptr [esi + 0x00000390], edx      // 0x006dd83f    899690030000
                         xor.s            ebp, ebp                               // 0x006dd845    33ed
_jmp_addr_0x006dd847:    xor.s            edi, edi                               // 0x006dd847    33ff
_jmp_addr_0x006dd849:    mov.s            ecx, esi                               // 0x006dd849    8bce
                         call             _jmp_addr_0x006db520                   // 0x006dd84b    e8d0dcffff
                         cmp.s            edi, eax                               // 0x006dd850    3bf8
                         {disp8} je       _jmp_addr_0x006dd869                   // 0x006dd852    7415
                         push             ebx                                    // 0x006dd854    53
                         push             edi                                    // 0x006dd855    57
                         push             ebp                                    // 0x006dd856    55
                         mov.s            ecx, esi                               // 0x006dd857    8bce
                         call             _jmp_addr_0x006db020                   // 0x006dd859    e8c2d7ffff
                         {disp8} lea      ecx, dword ptr [ebp + 0x07]            // 0x006dd85e    8d4d07
                         lea              edx, dword ptr [edi + ecx * 0x8]       // 0x006dd861    8d14cf
                         add.s            ecx, edx                               // 0x006dd864    03ca
                         mov              dword ptr [esi + ecx * 0x4], eax       // 0x006dd866    89048e
_jmp_addr_0x006dd869:    mov.s            ecx, esi                               // 0x006dd869    8bce
                         call             _jmp_addr_0x006db520                   // 0x006dd86b    e8b0dcffff
                         cmp.s            ebp, eax                               // 0x006dd870    3be8
                         {disp8} je       _jmp_addr_0x006dd88a                   // 0x006dd872    7416
                         push             0x0                                    // 0x006dd874    6a00
                         push             edi                                    // 0x006dd876    57
                         push             ebp                                    // 0x006dd877    55
                         mov.s            ecx, esi                               // 0x006dd878    8bce
                         call             _jmp_addr_0x006db020                   // 0x006dd87a    e8a1d7ffff
                         {disp8} lea      ecx, dword ptr [ebp + 0x10]            // 0x006dd87f    8d4d10
                         lea              edx, dword ptr [edi + ecx * 0x8]       // 0x006dd882    8d14cf
                         add.s            ecx, edx                               // 0x006dd885    03ca
                         mov              dword ptr [esi + ecx * 0x4], eax       // 0x006dd887    89048e
_jmp_addr_0x006dd88a:    cmp.s            edi, ebx                               // 0x006dd88a    3bfb
                         {disp8} jne      _jmp_addr_0x006dd896                   // 0x006dd88c    7508
                         push             0x0                                    // 0x006dd88e    6a00
                         push             ebx                                    // 0x006dd890    53
                         push             ebp                                    // 0x006dd891    55
                         push             0x0                                    // 0x006dd892    6a00
                         {disp8} jmp      _jmp_addr_0x006dd8f3                   // 0x006dd894    eb5d
_jmp_addr_0x006dd896:    cmp              edi, 0x06                              // 0x006dd896    83ff06
                         {disp8} jne      _jmp_addr_0x006dd8a2                   // 0x006dd899    7507
                         push             0x0                                    // 0x006dd89b    6a00
                         push             edi                                    // 0x006dd89d    57
                         push             ebp                                    // 0x006dd89e    55
                         push             ebx                                    // 0x006dd89f    53
                         {disp8} jmp      _jmp_addr_0x006dd8f3                   // 0x006dd8a0    eb51
_jmp_addr_0x006dd8a2:    test             edi, edi                               // 0x006dd8a2    85ff
                         {disp8} je       _jmp_addr_0x006dd8c5                   // 0x006dd8a4    741f
                         cmp              edi, 0x07                              // 0x006dd8a6    83ff07
                         {disp8} jne      _jmp_addr_0x006dd8fa                   // 0x006dd8a9    754f
                         {disp8} mov      byte ptr [esp + 0x10], bl              // 0x006dd8ab    885c2410
_jmp_addr_0x006dd8af:    cmp              ebp, 0x07                              // 0x006dd8af    83fd07
                         {disp8} ja       _jmp_addr_0x006dd8fa                   // 0x006dd8b2    7746
                         jmp              dword ptr [ebp*4 + 0x6dd914]           // 0x006dd8b4    ff24ad14d96d00
                         {disp8} mov      eax, dword ptr [esp + 0x10]            // 0x006dd8bb    8b442410
                         push             ebx                                    // 0x006dd8bf    53
                         push             edi                                    // 0x006dd8c0    57
                         push             ebp                                    // 0x006dd8c1    55
                         push             eax                                    // 0x006dd8c2    50
                         {disp8} jmp      _jmp_addr_0x006dd8f3                   // 0x006dd8c3    eb2e
_jmp_addr_0x006dd8c5:    {disp8} mov      byte ptr [esp + 0x10], 0x00            // 0x006dd8c5    c644241000
                         {disp8} jmp      _jmp_addr_0x006dd8af                   // 0x006dd8ca    ebe3
                         push             0x2                                    // 0x006dd8cc    6a02
                         push             edi                                    // 0x006dd8ce    57
                         push             ebp                                    // 0x006dd8cf    55
                         {disp8} jmp      _jmp_addr_0x006dd8ee                   // 0x006dd8d0    eb1c
                         {disp8} mov      edx, dword ptr [esp + 0x10]            // 0x006dd8d2    8b542410
                         push             0x3                                    // 0x006dd8d6    6a03
                         push             edi                                    // 0x006dd8d8    57
                         push             ebp                                    // 0x006dd8d9    55
                         push             edx                                    // 0x006dd8da    52
                         {disp8} jmp      _jmp_addr_0x006dd8f3                   // 0x006dd8db    eb16
                         {disp8} mov      eax, dword ptr [esp + 0x10]            // 0x006dd8dd    8b442410
                         push             0x4                                    // 0x006dd8e1    6a04
                         push             edi                                    // 0x006dd8e3    57
                         push             0x3                                    // 0x006dd8e4    6a03
                         push             eax                                    // 0x006dd8e6    50
                         {disp8} jmp      _jmp_addr_0x006dd8f3                   // 0x006dd8e7    eb0a
                         push             0x5                                    // 0x006dd8e9    6a05
                         push             edi                                    // 0x006dd8eb    57
                         push             0x4                                    // 0x006dd8ec    6a04
_jmp_addr_0x006dd8ee:    {disp8} mov      ecx, dword ptr [esp + 0x1c]            // 0x006dd8ee    8b4c241c
                         push             ecx                                    // 0x006dd8f2    51
_jmp_addr_0x006dd8f3:    mov.s            ecx, esi                               // 0x006dd8f3    8bce
                         call             _jmp_addr_0x006dcfd0                   // 0x006dd8f5    e8d6f6ffff
_jmp_addr_0x006dd8fa:    inc              edi                                    // 0x006dd8fa    47
                         cmp              edi, 0x08                              // 0x006dd8fb    83ff08
                         {disp32} jl      _jmp_addr_0x006dd849                   // 0x006dd8fe    0f8c45ffffff
                         inc              ebp                                    // 0x006dd904    45
                         cmp              ebp, 0x08                              // 0x006dd905    83fd08
                         {disp32} jl      _jmp_addr_0x006dd847                   // 0x006dd908    0f8c39ffffff
                         pop              edi                                    // 0x006dd90e    5f
                         pop              esi                                    // 0x006dd90f    5e
                         pop              ebp                                    // 0x006dd910    5d
                         pop              ebx                                    // 0x006dd911    5b
                         pop              ecx                                    // 0x006dd912    59
                         ret                                                     // 0x006dd913    c3

// Snippet: jmptbl, [0x006dd914, 0x006dd934)
.byte 0xbb, 0xd8, 0x6d, 0x00      // 0x006dd914
.byte 0xcc, 0xd8, 0x6d, 0x00      // 0x006dd918
.byte 0xd2, 0xd8, 0x6d, 0x00      // 0x006dd91c
.byte 0xdd, 0xd8, 0x6d, 0x00      // 0x006dd920
.byte 0xe9, 0xd8, 0x6d, 0x00      // 0x006dd924
.byte 0xd2, 0xd8, 0x6d, 0x00      // 0x006dd928
.byte 0xcc, 0xd8, 0x6d, 0x00      // 0x006dd92c
.byte 0xbb, 0xd8, 0x6d, 0x00      // 0x006dd930

// Snippet: db, [0x006dd934, 0x006dd940)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd934
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd938
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dd93c

