.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x00436970
.extern _jmp_addr_0x007c5791

.globl _jmp_addr_0x004012a4
.globl _jmp_addr_0x004012b4
.globl _jmp_addr_0x004012d0

start_0x004011d0_0x004012e0:
// Snippet: asm, [0x004011d0, 0x004012dc)
                         mov              eax, dword ptr [ecx]              // 0x004011d0    8b01
                         call             dword ptr [eax + 8]               // 0x004011d2    ff5008
                         ret              0x0004                            // 0x004011d5    c20400
                         nop                                                // 0x004011d8    90
                         nop                                                // 0x004011d9    90
                         nop                                                // 0x004011da    90
                         nop                                                // 0x004011db    90
                         nop                                                // 0x004011dc    90
                         nop                                                // 0x004011dd    90
                         nop                                                // 0x004011de    90
                         nop                                                // 0x004011df    90
                         xor.s            eax, eax                          // 0x004011e0    33c0
                         ret              0x0004                            // 0x004011e2    c20400
                         nop                                                // 0x004011e5    90
                         nop                                                // 0x004011e6    90
                         nop                                                // 0x004011e7    90
                         nop                                                // 0x004011e8    90
                         nop                                                // 0x004011e9    90
                         nop                                                // 0x004011ea    90
                         nop                                                // 0x004011eb    90
                         nop                                                // 0x004011ec    90
                         nop                                                // 0x004011ed    90
                         nop                                                // 0x004011ee    90
                         nop                                                // 0x004011ef    90
                         ret                                                // 0x004011f0    c3
                         nop                                                // 0x004011f1    90
                         nop                                                // 0x004011f2    90
                         nop                                                // 0x004011f3    90
                         nop                                                // 0x004011f4    90
                         nop                                                // 0x004011f5    90
                         nop                                                // 0x004011f6    90
                         nop                                                // 0x004011f7    90
                         nop                                                // 0x004011f8    90
                         nop                                                // 0x004011f9    90
                         nop                                                // 0x004011fa    90
                         nop                                                // 0x004011fb    90
                         nop                                                // 0x004011fc    90
                         nop                                                // 0x004011fd    90
                         nop                                                // 0x004011fe    90
                         nop                                                // 0x004011ff    90
                         ret                                                // 0x00401200    c3
                         nop                                                // 0x00401201    90
                         nop                                                // 0x00401202    90
                         nop                                                // 0x00401203    90
                         nop                                                // 0x00401204    90
                         nop                                                // 0x00401205    90
                         nop                                                // 0x00401206    90
                         nop                                                // 0x00401207    90
                         nop                                                // 0x00401208    90
                         nop                                                // 0x00401209    90
                         nop                                                // 0x0040120a    90
                         nop                                                // 0x0040120b    90
                         nop                                                // 0x0040120c    90
                         nop                                                // 0x0040120d    90
                         nop                                                // 0x0040120e    90
                         nop                                                // 0x0040120f    90
                         push             esi                               // 0x00401210    56
                         mov.s            esi, ecx                          // 0x00401211    8bf1
                         call             _jmp_addr_0x00436960              // 0x00401213    e848570300
                         test             byte ptr [esp + 0x08], 0x01       // 0x00401218    f644240801
                         {disp8} je       _jmp_addr_0x0040122a              // 0x0040121d    740b
                         push             0x8                               // 0x0040121f    6a08
                         push             esi                               // 0x00401221    56
                         call             _jmp_addr_0x00436970              // 0x00401222    e849570300
                         add              esp, 0x08                         // 0x00401227    83c408
_jmp_addr_0x0040122a:    mov.s            eax, esi                          // 0x0040122a    8bc6
                         pop              esi                               // 0x0040122c    5e
                         ret              0x0004                            // 0x0040122d    c20400
                         ret              0x000c                            // 0x00401230    c20c00
                         nop                                                // 0x00401233    90
                         nop                                                // 0x00401234    90
                         nop                                                // 0x00401235    90
                         nop                                                // 0x00401236    90
                         nop                                                // 0x00401237    90
                         nop                                                // 0x00401238    90
                         nop                                                // 0x00401239    90
                         nop                                                // 0x0040123a    90
                         nop                                                // 0x0040123b    90
                         nop                                                // 0x0040123c    90
                         nop                                                // 0x0040123d    90
                         nop                                                // 0x0040123e    90
                         nop                                                // 0x0040123f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x0000015c] // 0x00401240    8b815c010000
                         ret                                                // 0x00401246    c3
                         nop                                                // 0x00401247    90
                         nop                                                // 0x00401248    90
                         nop                                                // 0x00401249    90
                         nop                                                // 0x0040124a    90
                         nop                                                // 0x0040124b    90
                         nop                                                // 0x0040124c    90
                         nop                                                // 0x0040124d    90
                         nop                                                // 0x0040124e    90
                         nop                                                // 0x0040124f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000120] // 0x00401250    8b8120010000
                         ret                                                // 0x00401256    c3
                         nop                                                // 0x00401257    90
                         nop                                                // 0x00401258    90
                         nop                                                // 0x00401259    90
                         nop                                                // 0x0040125a    90
                         nop                                                // 0x0040125b    90
                         nop                                                // 0x0040125c    90
                         nop                                                // 0x0040125d    90
                         nop                                                // 0x0040125e    90
                         nop                                                // 0x0040125f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000124] // 0x00401260    8b8124010000
                         ret                                                // 0x00401266    c3
                         nop                                                // 0x00401267    90
                         nop                                                // 0x00401268    90
                         nop                                                // 0x00401269    90
                         nop                                                // 0x0040126a    90
                         nop                                                // 0x0040126b    90
                         nop                                                // 0x0040126c    90
                         nop                                                // 0x0040126d    90
                         nop                                                // 0x0040126e    90
                         nop                                                // 0x0040126f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]       // 0x00401270    8b442404
                         mov              dword ptr [eax], 0x00000093       // 0x00401274    c70093000000
                         mov              eax, 0x00c3c690                   // 0x0040127a    b890c6c300
                         ret              0x0004                            // 0x0040127f    c20400
                         nop                                                // 0x00401282    90
                         nop                                                // 0x00401283    90
                         nop                                                // 0x00401284    90
                         nop                                                // 0x00401285    90
                         nop                                                // 0x00401286    90
                         nop                                                // 0x00401287    90
                         nop                                                // 0x00401288    90
                         nop                                                // 0x00401289    90
                         nop                                                // 0x0040128a    90
                         nop                                                // 0x0040128b    90
                         nop                                                // 0x0040128c    90
                         nop                                                // 0x0040128d    90
                         nop                                                // 0x0040128e    90
                         nop                                                // 0x0040128f    90
                         xor.s            eax, eax                          // 0x00401290    33c0
                         ret              0x0004                            // 0x00401292    c20400
                         nop                                                // 0x00401295    90
                         nop                                                // 0x00401296    90
                         nop                                                // 0x00401297    90
                         nop                                                // 0x00401298    90
                         nop                                                // 0x00401299    90
                         nop                                                // 0x0040129a    90
                         nop                                                // 0x0040129b    90
                         nop                                                // 0x0040129c    90
                         nop                                                // 0x0040129d    90
                         nop                                                // 0x0040129e    90
                         nop                                                // 0x0040129f    90
                         {disp8} mov      eax, dword ptr [ecx + 0x14]       // 0x004012a0    8b4114
                         ret                                                // 0x004012a3    c3
_jmp_addr_0x004012a4:    mov              eax, 0xfffff9cc                   // 0x004012a4    b8ccf9ffff
                         pop              ecx                               // 0x004012a9    59
                         add.s            eax, ecx                          // 0x004012aa    03c1
                         mov              eax, dword ptr [eax]              // 0x004012ac    8b00
                         jmp              eax                               // 0x004012ae    ffe0
                         {disp8} mov      eax, dword ptr [ecx + 0x70]       // 0x004012b0    8b4170
                         ret                                                // 0x004012b3    c3
_jmp_addr_0x004012b4:    mov              eax, 0xfffffa5c                   // 0x004012b4    b85cfaffff
                         pop              ecx                               // 0x004012b9    59
                         add.s            eax, ecx                          // 0x004012ba    03c1
                         mov              eax, dword ptr [eax]              // 0x004012bc    8b00
                         jmp              eax                               // 0x004012be    ffe0
                         {disp8} lea      eax, dword ptr [ecx + 0x18]       // 0x004012c0    8d4118
                         ret                                                // 0x004012c3    c3
                         nop                                                // 0x004012c4    90
                         nop                                                // 0x004012c5    90
                         nop                                                // 0x004012c6    90
                         nop                                                // 0x004012c7    90
                         nop                                                // 0x004012c8    90
                         nop                                                // 0x004012c9    90
                         nop                                                // 0x004012ca    90
                         nop                                                // 0x004012cb    90
                         nop                                                // 0x004012cc    90
                         nop                                                // 0x004012cd    90
                         nop                                                // 0x004012ce    90
                         nop                                                // 0x004012cf    90
_jmp_addr_0x004012d0:    push             0x004012e0                        // 0x004012d0    68e0124000
                         call             _jmp_addr_0x007c5791              // 0x004012d5    e8b7443c00
                         pop              ecx                               // 0x004012da    59
                         ret                                                // 0x004012db    c3

// Snippet: db, [0x004012dc, 0x004012e0)
.byte 0x90, 0x25, 0xa2, 0x03      // 0x004012dc

