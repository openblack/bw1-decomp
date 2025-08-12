.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _malloc
.extern _free
.extern __strcmpi
.extern _strncpy
.extern _tolower
.extern _realloc
.extern __strdup
.extern _jmp_addr_0x00887d90
.extern _jmp_addr_0x00887de0
.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00887e70
.extern _jmp_addr_0x00887fb0
.extern _jmp_addr_0x00888000
.extern _jmp_addr_0x00888080
.extern _jmp_addr_0x0088a8d0
.extern _jmp_addr_0x0088fa30
.extern _jmp_addr_0x0088fad0
.extern _jmp_addr_0x0088fb40
.extern _jmp_addr_0x0088fba0
.extern _jmp_addr_0x0088fbf0
.extern _jmp_addr_0x0088fc40
.extern _jmp_addr_0x0088fc80
.extern _jmp_addr_0x00890d60
.extern _jmp_addr_0x00891120
.extern _jmp_addr_0x00891ca0

.globl _jmp_addr_0x00891f40
.globl _jmp_addr_0x00892020
.globl _jmp_addr_0x00892090
.globl _jmp_addr_0x008921a0
.globl _jmp_addr_0x008921d0
.globl _jmp_addr_0x00892250
.globl _jmp_addr_0x008922b0
.globl _jmp_addr_0x00892410
.globl _jmp_addr_0x008924a0
.globl _jmp_addr_0x00892520
.globl _jmp_addr_0x00892650
.globl _jmp_addr_0x00892670
.globl _jmp_addr_0x008926b0
.globl _jmp_addr_0x008926f0
.globl _jmp_addr_0x00892770
.globl _jmp_addr_0x00892790
.globl _jmp_addr_0x008927c0
.globl _jmp_addr_0x008927e0
.globl _jmp_addr_0x00892820
.globl _jmp_addr_0x00892840
.globl _jmp_addr_0x00892940
.globl _jmp_addr_0x008929b0
.globl _jmp_addr_0x00892a70
.globl _jmp_addr_0x00892b90
.globl _jmp_addr_0x00892d60
.globl _jmp_addr_0x00892e10
.globl _jmp_addr_0x00892e90
.globl _jmp_addr_0x00892f80
.globl _jmp_addr_0x00893070
.globl _jmp_addr_0x00893110
.globl _jmp_addr_0x00893410
.globl _jmp_addr_0x008937e0
.globl _jmp_addr_0x00893810
.globl _jmp_addr_0x00893840
.globl _jmp_addr_0x00893870
.globl _jmp_addr_0x00893990
.globl _jmp_addr_0x00893a20
.globl _jmp_addr_0x00893a50
.globl _jmp_addr_0x00893aa0
.globl _jmp_addr_0x00893b00
.globl _jmp_addr_0x00893b30
.globl _jmp_addr_0x00893b60
.globl _jmp_addr_0x00893b90
.globl _jmp_addr_0x00893bc0
.globl _jmp_addr_0x00893c20
.globl _jmp_addr_0x00893c60
.globl _jmp_addr_0x00893c90
.globl _jmp_addr_0x00893d00

start_0x00891f40_0x00893f30:
// Snippet: asm, [0x00891f40, 0x00893e6d)
_jmp_addr_0x00891f40:    sub              esp, 0x1c                                // 0x00891f40    83ec1c
                         push             ebx                                      // 0x00891f43    53
                         {disp8} mov      ebx, dword ptr [esp + 0x24]              // 0x00891f44    8b5c2424
                         push             ebp                                      // 0x00891f48    55
                         push             esi                                      // 0x00891f49    56
                         {disp32} mov     eax, dword ptr [ebx + 0x00000390]        // 0x00891f4a    8b8390030000
                         push             edi                                      // 0x00891f50    57
                         push             eax                                      // 0x00891f51    50
                         call             _jmp_addr_0x00887e40                     // 0x00891f52    e8e95effff
                         mov.s            edi, eax                                 // 0x00891f57    8bf8
                         xor.s            ebp, ebp                                 // 0x00891f59    33ed
                         add              esp, 0x04                                // 0x00891f5b    83c404
                         cmp.s            edi, ebp                                 // 0x00891f5e    3bfd
                         {disp8} mov      dword ptr [esp + 0x10], edi              // 0x00891f60    897c2410
                         {disp8} mov      dword ptr [esp + 0x30], ebp              // 0x00891f64    896c2430
                         {disp32} jle     _jmp_addr_0x00892015                     // 0x00891f68    0f8ea7000000
_jmp_addr_0x00891f6e:    {disp32} mov     ecx, dword ptr [ebx + 0x00000390]        // 0x00891f6e    8b8b90030000
                         push             ebp                                      // 0x00891f74    55
                         push             ecx                                      // 0x00891f75    51
                         call             _jmp_addr_0x00887e50                     // 0x00891f76    e8d55effff
                         mov.s            esi, eax                                 // 0x00891f7b    8bf0
                         add              esp, 0x08                                // 0x00891f7d    83c408
                         {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x00891f80    8b4614
                         test             eax, eax                                 // 0x00891f83    85c0
                         {disp8} je       _jmp_addr_0x00891fad                     // 0x00891f85    7426
                         push             eax                                      // 0x00891f87    50
                         push             ebx                                      // 0x00891f88    53
                         call             _jmp_addr_0x00892650                     // 0x00891f89    e8c2060000
                         add              esp, 0x08                                // 0x00891f8e    83c408
                         test             eax, eax                                 // 0x00891f91    85c0
                         {disp8} jne      _jmp_addr_0x00891fad                     // 0x00891f93    7518
                         push             esi                                      // 0x00891f95    56
                         call             _jmp_addr_0x00890d60                     // 0x00891f96    e8c5edffff
                         {disp32} mov     edx, dword ptr [ebx + 0x00000390]        // 0x00891f9b    8b9390030000
                         push             ebp                                      // 0x00891fa1    55
                         push             edx                                      // 0x00891fa2    52
                         call             _jmp_addr_0x00888000                     // 0x00891fa3    e85860ffff
                         add              esp, 0x0c                                // 0x00891fa8    83c40c
                         {disp8} jmp      _jmp_addr_0x00892004                     // 0x00891fab    eb57
_jmp_addr_0x00891fad:    {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x00891fad    8b4614
                         test             eax, eax                                 // 0x00891fb0    85c0
                         {disp8} je       _jmp_addr_0x00891fc2                     // 0x00891fb2    740e
                         push             eax                                      // 0x00891fb4    50
                         push             ebx                                      // 0x00891fb5    53
                         call             _jmp_addr_0x008927c0                     // 0x00891fb6    e805080000
                         add              esp, 0x08                                // 0x00891fbb    83c408
                         test             eax, eax                                 // 0x00891fbe    85c0
                         {disp8} je       _jmp_addr_0x00891fcf                     // 0x00891fc0    740d
_jmp_addr_0x00891fc2:    {disp8} mov      eax, dword ptr [esp + 0x34]              // 0x00891fc2    8b442434
                         test             eax, eax                                 // 0x00891fc6    85c0
                         {disp8} je       _jmp_addr_0x00891fd2                     // 0x00891fc8    7408
                         cmp              dword ptr [esi + 0x10], eax              // 0x00891fca    394610
                         {disp8} je       _jmp_addr_0x00891fd2                     // 0x00891fcd    7403
_jmp_addr_0x00891fcf:    inc              ebp                                      // 0x00891fcf    45
                         {disp8} jmp      _jmp_addr_0x00892004                     // 0x00891fd0    eb32
_jmp_addr_0x00891fd2:    {disp32} mov     eax, dword ptr [ebx + 0x00000390]        // 0x00891fd2    8b8390030000
                         mov              ecx, 0x00000006                          // 0x00891fd8    b906000000
                         {disp8} lea      edi, dword ptr [esp + 0x14]              // 0x00891fdd    8d7c2414
                         push             ebp                                      // 0x00891fe1    55
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00891fe2    f3a5
                         push             eax                                      // 0x00891fe4    50
                         call             _jmp_addr_0x00888000                     // 0x00891fe5    e81660ffff
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]              // 0x00891fea    8d4c241c
                         push             ecx                                      // 0x00891fee    51
                         push             ebx                                      // 0x00891fef    53
                         call             _jmp_addr_0x00891ca0                     // 0x00891ff0    e8abfcffff
                         {disp8} mov      eax, dword ptr [esp + 0x44]              // 0x00891ff5    8b442444
                         add              esp, 0x10                                // 0x00891ff9    83c410
                         test             eax, eax                                 // 0x00891ffc    85c0
                         {disp8} jne      _jmp_addr_0x00892015                     // 0x00891ffe    7515
                         {disp8} mov      edi, dword ptr [esp + 0x10]              // 0x00892000    8b7c2410
_jmp_addr_0x00892004:    {disp8} mov      eax, dword ptr [esp + 0x30]              // 0x00892004    8b442430
                         inc              eax                                      // 0x00892008    40
                         cmp.s            eax, edi                                 // 0x00892009    3bc7
                         {disp8} mov      dword ptr [esp + 0x30], eax              // 0x0089200b    89442430
                         {disp32} jl      _jmp_addr_0x00891f6e                     // 0x0089200f    0f8c59ffffff
_jmp_addr_0x00892015:    pop              edi                                      // 0x00892015    5f
                         pop              esi                                      // 0x00892016    5e
                         pop              ebp                                      // 0x00892017    5d
                         pop              ebx                                      // 0x00892018    5b
                         add              esp, 0x1c                                // 0x00892019    83c41c
                         ret                                                       // 0x0089201c    c3
                         nop                                                       // 0x0089201d    90
                         nop                                                       // 0x0089201e    90
                         nop                                                       // 0x0089201f    90
_jmp_addr_0x00892020:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892020    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892024    8b4c2404
                         push             eax                                      // 0x00892028    50
                         push             ecx                                      // 0x00892029    51
                         call             _jmp_addr_0x00892040                     // 0x0089202a    e811000000
                         add              esp, 0x08                                // 0x0089202f    83c408
                         xor.s            edx, edx                                 // 0x00892032    33d2
                         cmp              eax, -0x01                               // 0x00892034    83f8ff
                         setne            dl                                       // 0x00892037    0f95c2
                         mov.s            eax, edx                                 // 0x0089203a    8bc2
                         ret                                                       // 0x0089203c    c3
                         nop                                                       // 0x0089203d    90
                         nop                                                       // 0x0089203e    90
                         nop                                                       // 0x0089203f    90
_jmp_addr_0x00892040:    push             ebx                                      // 0x00892040    53
                         push             ebp                                      // 0x00892041    55
                         push             esi                                      // 0x00892042    56
                         push             edi                                      // 0x00892043    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]              // 0x00892044    8b7c2414
                         {disp32} mov     eax, dword ptr [edi + 0x00000390]        // 0x00892048    8b8790030000
                         push             eax                                      // 0x0089204e    50
                         call             _jmp_addr_0x00887e40                     // 0x0089204f    e8ec5dffff
                         mov.s            ebx, eax                                 // 0x00892054    8bd8
                         add              esp, 0x04                                // 0x00892056    83c404
                         xor.s            esi, esi                                 // 0x00892059    33f6
                         test             ebx, ebx                                 // 0x0089205b    85db
                         {disp8} jle      _jmp_addr_0x0089207f                     // 0x0089205d    7e20
                         {disp8} mov      ebp, dword ptr [esp + 0x18]              // 0x0089205f    8b6c2418
_jmp_addr_0x00892063:    {disp32} mov     ecx, dword ptr [edi + 0x00000390]        // 0x00892063    8b8f90030000
                         push             esi                                      // 0x00892069    56
                         push             ecx                                      // 0x0089206a    51
                         call             _jmp_addr_0x00887e50                     // 0x0089206b    e8e05dffff
                         {disp8} mov      ecx, dword ptr [eax + 0x10]              // 0x00892070    8b4810
                         add              esp, 0x08                                // 0x00892073    83c408
                         cmp.s            ecx, ebp                                 // 0x00892076    3bcd
                         {disp8} je       _jmp_addr_0x00892087                     // 0x00892078    740d
                         inc              esi                                      // 0x0089207a    46
                         cmp.s            esi, ebx                                 // 0x0089207b    3bf3
                         {disp8} jl       _jmp_addr_0x00892063                     // 0x0089207d    7ce4
_jmp_addr_0x0089207f:    pop              edi                                      // 0x0089207f    5f
                         pop              esi                                      // 0x00892080    5e
                         pop              ebp                                      // 0x00892081    5d
                         or               eax, -0x1                                // 0x00892082    83c8ff
                         pop              ebx                                      // 0x00892085    5b
                         ret                                                       // 0x00892086    c3
_jmp_addr_0x00892087:    mov.s            eax, esi                                 // 0x00892087    8bc6
                         pop              edi                                      // 0x00892089    5f
                         pop              esi                                      // 0x0089208a    5e
                         pop              ebp                                      // 0x0089208b    5d
                         pop              ebx                                      // 0x0089208c    5b
                         ret                                                       // 0x0089208d    c3
                         nop                                                       // 0x0089208e    90
                         nop                                                       // 0x0089208f    90
_jmp_addr_0x00892090:    push             esi                                      // 0x00892090    56
                         push             0x00892170                               // 0x00892091    6870218900
                         push             0x00892150                               // 0x00892096    6850218900
                         push             0x00892100                               // 0x0089209b    6800218900
                         push             0x7f                                     // 0x008920a0    6a7f
                         push             0x00000158                               // 0x008920a2    6858010000
                         call             _jmp_addr_0x0088fa30                     // 0x008920a7    e884d9ffff
                         {disp8} mov      esi, dword ptr [esp + 0x1c]              // 0x008920ac    8b74241c
                         add              esp, 0x14                                // 0x008920b0    83c414
                         test             eax, eax                                 // 0x008920b3    85c0
                         {disp32} mov     dword ptr [esi + 0x0000037c], eax        // 0x008920b5    89867c030000
                         {disp8} jne      _jmp_addr_0x008920bf                     // 0x008920bb    7502
                         pop              esi                                      // 0x008920bd    5e
                         ret                                                       // 0x008920be    c3
_jmp_addr_0x008920bf:    push             0x0                                      // 0x008920bf    6a00
                         push             0x0                                      // 0x008920c1    6a00
                         push             0x00000158                               // 0x008920c3    6858010000
                         call             _jmp_addr_0x00887d90                     // 0x008920c8    e8c35cffff
                         add              esp, 0x0c                                // 0x008920cd    83c40c
                         {disp32} mov     dword ptr [esi + 0x00000380], eax        // 0x008920d0    898680030000
                         test             eax, eax                                 // 0x008920d6    85c0
                         {disp8} jne      _jmp_addr_0x008920ed                     // 0x008920d8    7513
                         {disp32} mov     eax, dword ptr [esi + 0x0000037c]        // 0x008920da    8b867c030000
                         push             eax                                      // 0x008920e0    50
                         call             _jmp_addr_0x0088fad0                     // 0x008920e1    e8ead9ffff
                         add              esp, 0x04                                // 0x008920e6    83c404
                         xor.s            eax, eax                                 // 0x008920e9    33c0
                         pop              esi                                      // 0x008920eb    5e
                         ret                                                       // 0x008920ec    c3
_jmp_addr_0x008920ed:    mov              eax, 0x00000001                          // 0x008920ed    b801000000
                         pop              esi                                      // 0x008920f2    5e
                         ret                                                       // 0x008920f3    c3
                         nop                                                       // 0x008920f4    90
                         nop                                                       // 0x008920f5    90
                         nop                                                       // 0x008920f6    90
                         nop                                                       // 0x008920f7    90
                         nop                                                       // 0x008920f8    90
                         nop                                                       // 0x008920f9    90
                         nop                                                       // 0x008920fa    90
                         nop                                                       // 0x008920fb    90
                         nop                                                       // 0x008920fc    90
                         nop                                                       // 0x008920fd    90
                         nop                                                       // 0x008920fe    90
                         nop                                                       // 0x008920ff    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x00892100    8b442404
                         push             eax                                      // 0x00892104    50
                         call             _jmp_addr_0x00892110                     // 0x00892105    e806000000
                         add              esp, 0x04                                // 0x0089210a    83c404
                         ret                                                       // 0x0089210d    c3
                         nop                                                       // 0x0089210e    90
                         nop                                                       // 0x0089210f    90
_jmp_addr_0x00892110:    push             esi                                      // 0x00892110    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x00892111    8b742408
                         push             edi                                      // 0x00892115    57
                         xor.s            edi, edi                                 // 0x00892116    33ff
                         movsx            eax, byte ptr [esi]                      // 0x00892118    0fbe06
                         inc              esi                                      // 0x0089211b    46
                         test             eax, eax                                 // 0x0089211c    85c0
                         {disp8} je       _jmp_addr_0x00892133                     // 0x0089211e    7413
_jmp_addr_0x00892120:    push             eax                                      // 0x00892120    50
                         call             _tolower                                 // 0x00892121    e8c274f3ff
                         add.s            edi, eax                                 // 0x00892126    03f8
                         add              esp, 0x04                                // 0x00892128    83c404
                         movsx            eax, byte ptr [esi]                      // 0x0089212b    0fbe06
                         inc              esi                                      // 0x0089212e    46
                         test             eax, eax                                 // 0x0089212f    85c0
                         {disp8} jne      _jmp_addr_0x00892120                     // 0x00892131    75ed
_jmp_addr_0x00892133:    mov.s            eax, edi                                 // 0x00892133    8bc7
                         mov              ecx, 0x0000007f                          // 0x00892135    b97f000000
                         cdq                                                       // 0x0089213a    99
                         idiv             ecx                                      // 0x0089213b    f7f9
                         pop              edi                                      // 0x0089213d    5f
                         pop              esi                                      // 0x0089213e    5e
                         mov.s            eax, edx                                 // 0x0089213f    8bc2
                         ret                                                       // 0x00892141    c3
                         nop                                                       // 0x00892142    90
                         nop                                                       // 0x00892143    90
                         nop                                                       // 0x00892144    90
                         nop                                                       // 0x00892145    90
                         nop                                                       // 0x00892146    90
                         nop                                                       // 0x00892147    90
                         nop                                                       // 0x00892148    90
                         nop                                                       // 0x00892149    90
                         nop                                                       // 0x0089214a    90
                         nop                                                       // 0x0089214b    90
                         nop                                                       // 0x0089214c    90
                         nop                                                       // 0x0089214d    90
                         nop                                                       // 0x0089214e    90
                         nop                                                       // 0x0089214f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892150    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892154    8b4c2404
                         push             eax                                      // 0x00892158    50
                         push             ecx                                      // 0x00892159    51
                         call             __strcmpi                                // 0x0089215a    e8814bf3ff
                         add              esp, 0x08                                // 0x0089215f    83c408
                         ret                                                       // 0x00892162    c3
                         nop                                                       // 0x00892163    90
                         nop                                                       // 0x00892164    90
                         nop                                                       // 0x00892165    90
                         nop                                                       // 0x00892166    90
                         nop                                                       // 0x00892167    90
                         nop                                                       // 0x00892168    90
                         nop                                                       // 0x00892169    90
                         nop                                                       // 0x0089216a    90
                         nop                                                       // 0x0089216b    90
                         nop                                                       // 0x0089216c    90
                         nop                                                       // 0x0089216d    90
                         nop                                                       // 0x0089216e    90
                         nop                                                       // 0x0089216f    90
                         push             esi                                      // 0x00892170    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x00892171    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x000000d0]        // 0x00892175    8b86d0000000
                         push             eax                                      // 0x0089217b    50
                         call             _free                                    // 0x0089217c    e80546f3ff
                         {disp32} mov     eax, dword ptr [esi + 0x000000ac]        // 0x00892181    8b86ac000000
                         add              esp, 0x04                                // 0x00892187    83c404
                         test             eax, eax                                 // 0x0089218a    85c0
                         pop              esi                                      // 0x0089218c    5e
                         {disp8} je       _jmp_addr_0x00892196                     // 0x0089218d    7407
                         push             eax                                      // 0x0089218f    50
                         call             _jmp_addr_0x0088fad0                     // 0x00892190    e83bd9ffff
                         pop              ecx                                      // 0x00892195    59
_jmp_addr_0x00892196:    ret                                                       // 0x00892196    c3
                         nop                                                       // 0x00892197    90
                         nop                                                       // 0x00892198    90
                         nop                                                       // 0x00892199    90
                         nop                                                       // 0x0089219a    90
                         nop                                                       // 0x0089219b    90
                         nop                                                       // 0x0089219c    90
                         nop                                                       // 0x0089219d    90
                         nop                                                       // 0x0089219e    90
                         nop                                                       // 0x0089219f    90
_jmp_addr_0x008921a0:    push             esi                                      // 0x008921a0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x008921a1    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x0000037c]        // 0x008921a5    8b867c030000
                         test             eax, eax                                 // 0x008921ab    85c0
                         {disp8} je       _jmp_addr_0x008921b8                     // 0x008921ad    7409
                         push             eax                                      // 0x008921af    50
                         call             _jmp_addr_0x0088fad0                     // 0x008921b0    e81bd9ffff
                         add              esp, 0x04                                // 0x008921b5    83c404
_jmp_addr_0x008921b8:    {disp32} mov     eax, dword ptr [esi + 0x00000380]        // 0x008921b8    8b8680030000
                         pop              esi                                      // 0x008921be    5e
                         test             eax, eax                                 // 0x008921bf    85c0
                         {disp8} je       _jmp_addr_0x008921ca                     // 0x008921c1    7407
                         push             eax                                      // 0x008921c3    50
                         call             _jmp_addr_0x00887de0                     // 0x008921c4    e8175cffff
                         pop              ecx                                      // 0x008921c9    59
_jmp_addr_0x008921ca:    ret                                                       // 0x008921ca    c3
                         nop                                                       // 0x008921cb    90
                         nop                                                       // 0x008921cc    90
                         nop                                                       // 0x008921cd    90
                         nop                                                       // 0x008921ce    90
                         nop                                                       // 0x008921cf    90
_jmp_addr_0x008921d0:    sub              esp, 0x00000158                          // 0x008921d0    81ec58010000
                         mov              ecx, 0x00000056                          // 0x008921d6    b956000000
                         xor.s            eax, eax                                 // 0x008921db    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x00]              // 0x008921dd    8d542400
                         push             esi                                      // 0x008921e1    56
                         push             edi                                      // 0x008921e2    57
                         {disp8} lea      edi, dword ptr [esp + 0x08]              // 0x008921e3    8d7c2408
                         rep stosd                                                 // 0x008921e7    f3ab
                         {disp32} mov     edi, dword ptr [esp + 0x00000168]        // 0x008921e9    8bbc2468010000
                         or               ecx, 0xffffffff                          // 0x008921f0    83c9ff
                         repne scasb                                               // 0x008921f3    f2ae
                         not              ecx                                      // 0x008921f5    f7d1
                         sub.s            edi, ecx                                 // 0x008921f7    2bf9
                         mov.s            eax, ecx                                 // 0x008921f9    8bc1
                         mov.s            esi, edi                                 // 0x008921fb    8bf7
                         mov.s            edi, edx                                 // 0x008921fd    8bfa
                         {disp32} mov     edx, dword ptr [esp + 0x00000164]        // 0x008921ff    8b942464010000
                         shr              ecx, 2                                   // 0x00892206    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892209    f3a5
                         mov.s            ecx, eax                                 // 0x0089220b    8bc8
                         {disp32} mov     eax, dword ptr [edx + 0x00000380]        // 0x0089220d    8b8280030000
                         and              ecx, 0x03                                // 0x00892213    83e103
                         rep movsb                                                 // 0x00892216    f3a4
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x00892218    8d4c2408
                         push             ecx                                      // 0x0089221c    51
                         push             eax                                      // 0x0089221d    50
                         call             _jmp_addr_0x00887e70                     // 0x0089221e    e84d5cffff
                         add              esp, 0x08                                // 0x00892223    83c408
                         pop              edi                                      // 0x00892226    5f
                         pop              esi                                      // 0x00892227    5e
                         add              esp, 0x00000158                          // 0x00892228    81c458010000
                         ret                                                       // 0x0089222e    c3
                         nop                                                       // 0x0089222f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892230    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892234    8b4c2404
                         push             eax                                      // 0x00892238    50
                         push             ecx                                      // 0x00892239    51
                         call             __strcmpi                                // 0x0089223a    e8a14af3ff
                         add              esp, 0x08                                // 0x0089223f    83c408
                         ret                                                       // 0x00892242    c3
                         nop                                                       // 0x00892243    90
                         nop                                                       // 0x00892244    90
                         nop                                                       // 0x00892245    90
                         nop                                                       // 0x00892246    90
                         nop                                                       // 0x00892247    90
                         nop                                                       // 0x00892248    90
                         nop                                                       // 0x00892249    90
                         nop                                                       // 0x0089224a    90
                         nop                                                       // 0x0089224b    90
                         nop                                                       // 0x0089224c    90
                         nop                                                       // 0x0089224d    90
                         nop                                                       // 0x0089224e    90
                         nop                                                       // 0x0089224f    90
_jmp_addr_0x00892250:    push             ebx                                      // 0x00892250    53
                         push             ebp                                      // 0x00892251    55
                         push             esi                                      // 0x00892252    56
                         push             edi                                      // 0x00892253    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]              // 0x00892254    8b7c2414
                         {disp32} mov     eax, dword ptr [edi + 0x00000380]        // 0x00892258    8b8780030000
                         push             eax                                      // 0x0089225e    50
                         call             _jmp_addr_0x00887e40                     // 0x0089225f    e8dc5bffff
                         mov.s            ebx, eax                                 // 0x00892264    8bd8
                         add              esp, 0x04                                // 0x00892266    83c404
                         xor.s            esi, esi                                 // 0x00892269    33f6
                         test             ebx, ebx                                 // 0x0089226b    85db
                         {disp8} jle      _jmp_addr_0x00892293                     // 0x0089226d    7e24
                         {disp8} mov      ebp, dword ptr [esp + 0x18]              // 0x0089226f    8b6c2418
_jmp_addr_0x00892273:    {disp32} mov     ecx, dword ptr [edi + 0x00000380]        // 0x00892273    8b8f80030000
                         push             esi                                      // 0x00892279    56
                         push             ecx                                      // 0x0089227a    51
                         call             _jmp_addr_0x00887e50                     // 0x0089227b    e8d05bffff
                         push             ebp                                      // 0x00892280    55
                         push             eax                                      // 0x00892281    50
                         call             __strcmpi                                // 0x00892282    e8594af3ff
                         add              esp, 0x10                                // 0x00892287    83c410
                         test             eax, eax                                 // 0x0089228a    85c0
                         {disp8} je       _jmp_addr_0x0089229a                     // 0x0089228c    740c
                         inc              esi                                      // 0x0089228e    46
                         cmp.s            esi, ebx                                 // 0x0089228f    3bf3
                         {disp8} jl       _jmp_addr_0x00892273                     // 0x00892291    7ce0
_jmp_addr_0x00892293:    pop              edi                                      // 0x00892293    5f
                         pop              esi                                      // 0x00892294    5e
                         pop              ebp                                      // 0x00892295    5d
                         xor.s            eax, eax                                 // 0x00892296    33c0
                         pop              ebx                                      // 0x00892298    5b
                         ret                                                       // 0x00892299    c3
_jmp_addr_0x0089229a:    pop              edi                                      // 0x0089229a    5f
                         pop              esi                                      // 0x0089229b    5e
                         pop              ebp                                      // 0x0089229c    5d
                         mov              eax, 0x00000001                          // 0x0089229d    b801000000
                         pop              ebx                                      // 0x008922a2    5b
                         ret                                                       // 0x008922a3    c3
                         nop                                                       // 0x008922a4    90
                         nop                                                       // 0x008922a5    90
                         nop                                                       // 0x008922a6    90
                         nop                                                       // 0x008922a7    90
                         nop                                                       // 0x008922a8    90
                         nop                                                       // 0x008922a9    90
                         nop                                                       // 0x008922aa    90
                         nop                                                       // 0x008922ab    90
                         nop                                                       // 0x008922ac    90
                         nop                                                       // 0x008922ad    90
                         nop                                                       // 0x008922ae    90
                         nop                                                       // 0x008922af    90
_jmp_addr_0x008922b0:    sub              esp, 0x00000158                          // 0x008922b0    81ec58010000
                         push             ebp                                      // 0x008922b6    55
                         push             esi                                      // 0x008922b7    56
                         push             0x2                                      // 0x008922b8    6a02
                         call             _malloc                                  // 0x008922ba    e88d43f3ff
                         mov.s            ebp, eax                                 // 0x008922bf    8be8
                         add              esp, 0x04                                // 0x008922c1    83c404
                         test             ebp, ebp                                 // 0x008922c4    85ed
                         {disp32} je      _jmp_addr_0x008923b9                     // 0x008922c6    0f84ed000000
                         {disp32} mov     al, byte ptr [data_bytes + 0x292370]     // 0x008922cc    a07083c500
                         {disp32} mov     esi, dword ptr [esp + 0x0000016c]        // 0x008922d1    8bb4246c010000
                         push             edi                                      // 0x008922d8    57
                         {disp8} mov      byte ptr [ebp + 0x00], al                // 0x008922d9    884500
                         mov              ecx, 0x00000056                          // 0x008922dc    b956000000
                         xor.s            eax, eax                                 // 0x008922e1    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x0c]              // 0x008922e3    8d7c240c
                         {disp8} lea      edx, dword ptr [esp + 0x0c]              // 0x008922e7    8d54240c
                         rep stosd                                                 // 0x008922eb    f3ab
                         mov              ecx, 0x0000000b                          // 0x008922ed    b90b000000
                         {disp32} lea     edi, dword ptr [esp + 0x0000008c]        // 0x008922f2    8dbc248c000000
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008922f9    f3a5
                         {disp32} mov     edi, dword ptr [esp + 0x0000016c]        // 0x008922fb    8bbc246c010000
                         or               ecx, 0xffffffff                          // 0x00892302    83c9ff
                         repne scasb                                               // 0x00892305    f2ae
                         not              ecx                                      // 0x00892307    f7d1
                         sub.s            edi, ecx                                 // 0x00892309    2bf9
                         push             0x00892400                               // 0x0089230b    6800248900
                         mov.s            eax, ecx                                 // 0x00892310    8bc1
                         mov.s            esi, edi                                 // 0x00892312    8bf7
                         mov.s            edi, edx                                 // 0x00892314    8bfa
                         push             0x008923e0                               // 0x00892316    68e0238900
                         shr              ecx, 2                                   // 0x0089231b    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x0089231e    f3a5
                         mov.s            ecx, eax                                 // 0x00892320    8bc8
                         push             0x008923d0                               // 0x00892322    68d0238900
                         and              ecx, 0x03                                // 0x00892327    83e103
                         push             0x7f                                     // 0x0089232a    6a7f
                         rep movsb                                                 // 0x0089232c    f3a4
                         push             0x000000bc                               // 0x0089232e    68bc000000
                         call             _jmp_addr_0x0088fa30                     // 0x00892333    e8f8d6ffff
                         add              esp, 0x14                                // 0x00892338    83c414
                         {disp32} mov     dword ptr [esp + 0x000000b8], eax        // 0x0089233b    898424b8000000
                         test             eax, eax                                 // 0x00892342    85c0
                         pop              edi                                      // 0x00892344    5f
                         {disp8} je       _jmp_addr_0x008923b9                     // 0x00892345    7472
                         {disp32} mov     esi, dword ptr [esp + 0x00000164]        // 0x00892347    8bb42464010000
                         push             0x0                                      // 0x0089234e    6a00
                         push             0x0                                      // 0x00892350    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x10]              // 0x00892352    8d4c2410
                         {disp32} mov     edx, dword ptr [esi + 0x00000380]        // 0x00892356    8b9680030000
                         push             0x00892230                               // 0x0089235c    6830228900
                         push             ecx                                      // 0x00892361    51
                         push             edx                                      // 0x00892362    52
                         {disp32} mov     dword ptr [esp + 0x000000e8], 0x00000000 // 0x00892363    c78424e800000000000000
                         {disp32} mov     dword ptr [esp + 0x000000ec], ebp        // 0x0089236e    89ac24ec000000
                         {disp32} mov     dword ptr [esp + 0x000000f0], 0x00000000 // 0x00892375    c78424f000000000000000
                         {disp32} mov     byte ptr [esp + 0x000000f4], 0x00        // 0x00892380    c68424f400000000
                         call             _jmp_addr_0x00888080                     // 0x00892388    e8f35cffff
                         add              esp, 0x14                                // 0x0089238d    83c414
                         cmp              eax, -0x01                               // 0x00892390    83f8ff
                         {disp8} je       _jmp_addr_0x008923a5                     // 0x00892393    7410
                         push             eax                                      // 0x00892395    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000380]        // 0x00892396    8b8680030000
                         push             eax                                      // 0x0089239c    50
                         call             _jmp_addr_0x00887fb0                     // 0x0089239d    e80e5cffff
                         add              esp, 0x08                                // 0x008923a2    83c408
_jmp_addr_0x008923a5:    {disp32} mov     edx, dword ptr [esi + 0x0000037c]        // 0x008923a5    8b967c030000
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x008923ab    8d4c2408
                         push             ecx                                      // 0x008923af    51
                         push             edx                                      // 0x008923b0    52
                         call             _jmp_addr_0x0088fb40                     // 0x008923b1    e88ad7ffff
                         add              esp, 0x08                                // 0x008923b6    83c408
_jmp_addr_0x008923b9:    pop              esi                                      // 0x008923b9    5e
                         pop              ebp                                      // 0x008923ba    5d
                         add              esp, 0x00000158                          // 0x008923bb    81c458010000
                         ret                                                       // 0x008923c1    c3
                         nop                                                       // 0x008923c2    90
                         nop                                                       // 0x008923c3    90
                         nop                                                       // 0x008923c4    90
                         nop                                                       // 0x008923c5    90
                         nop                                                       // 0x008923c6    90
                         nop                                                       // 0x008923c7    90
                         nop                                                       // 0x008923c8    90
                         nop                                                       // 0x008923c9    90
                         nop                                                       // 0x008923ca    90
                         nop                                                       // 0x008923cb    90
                         nop                                                       // 0x008923cc    90
                         nop                                                       // 0x008923cd    90
                         nop                                                       // 0x008923ce    90
                         nop                                                       // 0x008923cf    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x008923d0    8b442404
                         push             eax                                      // 0x008923d4    50
                         call             _jmp_addr_0x00892110                     // 0x008923d5    e836fdffff
                         add              esp, 0x04                                // 0x008923da    83c404
                         ret                                                       // 0x008923dd    c3
                         nop                                                       // 0x008923de    90
                         nop                                                       // 0x008923df    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008923e0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008923e4    8b4c2404
                         push             eax                                      // 0x008923e8    50
                         push             ecx                                      // 0x008923e9    51
                         call             __strcmpi                                // 0x008923ea    e8f148f3ff
                         add              esp, 0x08                                // 0x008923ef    83c408
                         ret                                                       // 0x008923f2    c3
                         nop                                                       // 0x008923f3    90
                         nop                                                       // 0x008923f4    90
                         nop                                                       // 0x008923f5    90
                         nop                                                       // 0x008923f6    90
                         nop                                                       // 0x008923f7    90
                         nop                                                       // 0x008923f8    90
                         nop                                                       // 0x008923f9    90
                         nop                                                       // 0x008923fa    90
                         nop                                                       // 0x008923fb    90
                         nop                                                       // 0x008923fc    90
                         nop                                                       // 0x008923fd    90
                         nop                                                       // 0x008923fe    90
                         nop                                                       // 0x008923ff    90
                         ret                                                       // 0x00892400    c3
                         nop                                                       // 0x00892401    90
                         nop                                                       // 0x00892402    90
                         nop                                                       // 0x00892403    90
                         nop                                                       // 0x00892404    90
                         nop                                                       // 0x00892405    90
                         nop                                                       // 0x00892406    90
                         nop                                                       // 0x00892407    90
                         nop                                                       // 0x00892408    90
                         nop                                                       // 0x00892409    90
                         nop                                                       // 0x0089240a    90
                         nop                                                       // 0x0089240b    90
                         nop                                                       // 0x0089240c    90
                         nop                                                       // 0x0089240d    90
                         nop                                                       // 0x0089240e    90
                         nop                                                       // 0x0089240f    90
_jmp_addr_0x00892410:    sub              esp, 0x00000158                          // 0x00892410    81ec58010000
                         or               ecx, 0xffffffff                          // 0x00892416    83c9ff
                         xor.s            eax, eax                                 // 0x00892419    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x00]              // 0x0089241b    8d542400
                         push             esi                                      // 0x0089241f    56
                         push             edi                                      // 0x00892420    57
                         {disp32} mov     edi, dword ptr [esp + 0x00000168]        // 0x00892421    8bbc2468010000
                         push             0x0                                      // 0x00892428    6a00
                         repne scasb                                               // 0x0089242a    f2ae
                         not              ecx                                      // 0x0089242c    f7d1
                         sub.s            edi, ecx                                 // 0x0089242e    2bf9
                         push             0x0                                      // 0x00892430    6a00
                         mov.s            eax, ecx                                 // 0x00892432    8bc1
                         mov.s            esi, edi                                 // 0x00892434    8bf7
                         mov.s            edi, edx                                 // 0x00892436    8bfa
                         push             0x00892230                               // 0x00892438    6830228900
                         shr              ecx, 2                                   // 0x0089243d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892440    f3a5
                         mov.s            ecx, eax                                 // 0x00892442    8bc8
                         and              ecx, 0x03                                // 0x00892444    83e103
                         rep movsb                                                 // 0x00892447    f3a4
                         {disp32} mov     esi, dword ptr [esp + 0x00000170]        // 0x00892449    8bb42470010000
                         {disp8} lea      ecx, dword ptr [esp + 0x14]              // 0x00892450    8d4c2414
                         push             ecx                                      // 0x00892454    51
                         {disp32} mov     edx, dword ptr [esi + 0x00000380]        // 0x00892455    8b9680030000
                         push             edx                                      // 0x0089245b    52
                         call             _jmp_addr_0x00888080                     // 0x0089245c    e81f5cffff
                         add              esp, 0x14                                // 0x00892461    83c414
                         cmp              eax, -0x01                               // 0x00892464    83f8ff
                         {disp8} je       _jmp_addr_0x00892482                     // 0x00892467    7419
                         push             eax                                      // 0x00892469    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000380]        // 0x0089246a    8b8680030000
                         push             eax                                      // 0x00892470    50
                         call             _jmp_addr_0x00887fb0                     // 0x00892471    e83a5bffff
                         add              esp, 0x08                                // 0x00892476    83c408
                         pop              edi                                      // 0x00892479    5f
                         pop              esi                                      // 0x0089247a    5e
                         add              esp, 0x00000158                          // 0x0089247b    81c458010000
                         ret                                                       // 0x00892481    c3
_jmp_addr_0x00892482:    {disp32} mov     edx, dword ptr [esi + 0x0000037c]        // 0x00892482    8b967c030000
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x00892488    8d4c2408
                         push             ecx                                      // 0x0089248c    51
                         push             edx                                      // 0x0089248d    52
                         call             _jmp_addr_0x0088fba0                     // 0x0089248e    e80dd7ffff
                         add              esp, 0x08                                // 0x00892493    83c408
                         pop              edi                                      // 0x00892496    5f
                         pop              esi                                      // 0x00892497    5e
                         add              esp, 0x00000158                          // 0x00892498    81c458010000
                         ret                                                       // 0x0089249e    c3
                         nop                                                       // 0x0089249f    90
_jmp_addr_0x008924a0:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008924a0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008924a4    8b4c2404
                         push             eax                                      // 0x008924a8    50
                         push             ecx                                      // 0x008924a9    51
                         call             _jmp_addr_0x008924c0                     // 0x008924aa    e811000000
                         add              esp, 0x08                                // 0x008924af    83c408
                         test             eax, eax                                 // 0x008924b2    85c0
                         {disp8} jne      _jmp_addr_0x008924b7                     // 0x008924b4    7501
                         ret                                                       // 0x008924b6    c3
_jmp_addr_0x008924b7:    add              eax, 0x00000080                          // 0x008924b7    0580000000
                         ret                                                       // 0x008924bc    c3
                         nop                                                       // 0x008924bd    90
                         nop                                                       // 0x008924be    90
                         nop                                                       // 0x008924bf    90
_jmp_addr_0x008924c0:    sub              esp, 0x00000158                          // 0x008924c0    81ec58010000
                         or               ecx, 0xffffffff                          // 0x008924c6    83c9ff
                         xor.s            eax, eax                                 // 0x008924c9    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x00]              // 0x008924cb    8d542400
                         push             esi                                      // 0x008924cf    56
                         push             edi                                      // 0x008924d0    57
                         {disp32} mov     edi, dword ptr [esp + 0x00000168]        // 0x008924d1    8bbc2468010000
                         repne scasb                                               // 0x008924d8    f2ae
                         not              ecx                                      // 0x008924da    f7d1
                         sub.s            edi, ecx                                 // 0x008924dc    2bf9
                         mov.s            eax, ecx                                 // 0x008924de    8bc1
                         mov.s            esi, edi                                 // 0x008924e0    8bf7
                         mov.s            edi, edx                                 // 0x008924e2    8bfa
                         {disp32} mov     edx, dword ptr [esp + 0x00000164]        // 0x008924e4    8b942464010000
                         shr              ecx, 2                                   // 0x008924eb    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008924ee    f3a5
                         mov.s            ecx, eax                                 // 0x008924f0    8bc8
                         {disp32} mov     eax, dword ptr [edx + 0x0000037c]        // 0x008924f2    8b827c030000
                         and              ecx, 0x03                                // 0x008924f8    83e103
                         rep movsb                                                 // 0x008924fb    f3a4
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x008924fd    8d4c2408
                         push             ecx                                      // 0x00892501    51
                         push             eax                                      // 0x00892502    50
                         call             _jmp_addr_0x0088fbf0                     // 0x00892503    e8e8d6ffff
                         add              esp, 0x08                                // 0x00892508    83c408
                         pop              edi                                      // 0x0089250b    5f
                         pop              esi                                      // 0x0089250c    5e
                         add              esp, 0x00000158                          // 0x0089250d    81c458010000
                         ret                                                       // 0x00892513    c3
                         nop                                                       // 0x00892514    90
                         nop                                                       // 0x00892515    90
                         nop                                                       // 0x00892516    90
                         nop                                                       // 0x00892517    90
                         nop                                                       // 0x00892518    90
                         nop                                                       // 0x00892519    90
                         nop                                                       // 0x0089251a    90
                         nop                                                       // 0x0089251b    90
                         nop                                                       // 0x0089251c    90
                         nop                                                       // 0x0089251d    90
                         nop                                                       // 0x0089251e    90
                         nop                                                       // 0x0089251f    90
_jmp_addr_0x00892520:    sub              esp, 0x10                                // 0x00892520    83ec10
                         push             esi                                      // 0x00892523    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]              // 0x00892524    8b742418
                         push             edi                                      // 0x00892528    57
                         {disp8} mov      edi, dword ptr [esp + 0x20]              // 0x00892529    8b7c2420
                         push             edi                                      // 0x0089252d    57
                         push             esi                                      // 0x0089252e    56
                         call             _jmp_addr_0x008924c0                     // 0x0089252f    e88cffffff
                         xor.s            ecx, ecx                                 // 0x00892534    33c9
                         add              esp, 0x08                                // 0x00892536    83c408
                         cmp.s            eax, ecx                                 // 0x00892539    3bc1
                         {disp8} je       _jmp_addr_0x00892594                     // 0x0089253b    7457
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x0089253d    894c240c
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x00892541    894c2410
                         {disp8} mov      dword ptr [esp + 0x14], ecx              // 0x00892545    894c2414
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x00892549    8d4c2408
                         {disp8} mov      dword ptr [esp + 0x08], esi              // 0x0089254d    89742408
                         {disp32} mov     edx, dword ptr [eax + 0x000000ac]        // 0x00892551    8b90ac000000
                         push             ecx                                      // 0x00892557    51
                         push             0x008925a0                               // 0x00892558    68a0258900
                         push             edx                                      // 0x0089255d    52
                         call             _jmp_addr_0x0088fc40                     // 0x0089255e    e8ddd6ffff
                         {disp8} mov      eax, dword ptr [esp + 0x34]              // 0x00892563    8b442434
                         {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x00892567    8b4c2420
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x0089256b    8b54241c
                         push             eax                                      // 0x0089256f    50
                         {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x00892570    8b44241c
                         push             ecx                                      // 0x00892574    51
                         push             edx                                      // 0x00892575    52
                         push             eax                                      // 0x00892576    50
                         push             edi                                      // 0x00892577    57
                         push             esi                                      // 0x00892578    56
                         call             dword ptr [esp + 0x48]                   // 0x00892579    ff542448
                         {disp8} mov      ecx, dword ptr [esp + 0x34]              // 0x0089257d    8b4c2434
                         push             ecx                                      // 0x00892581    51
                         call             _free                                    // 0x00892582    e8ff41f3ff
                         {disp8} mov      edx, dword ptr [esp + 0x3c]              // 0x00892587    8b54243c
                         push             edx                                      // 0x0089258b    52
                         call             _free                                    // 0x0089258c    e8f541f3ff
                         add              esp, 0x2c                                // 0x00892591    83c42c
_jmp_addr_0x00892594:    pop              edi                                      // 0x00892594    5f
                         pop              esi                                      // 0x00892595    5e
                         add              esp, 0x10                                // 0x00892596    83c410
                         ret                                                       // 0x00892599    c3
                         nop                                                       // 0x0089259a    90
                         nop                                                       // 0x0089259b    90
                         nop                                                       // 0x0089259c    90
                         nop                                                       // 0x0089259d    90
                         nop                                                       // 0x0089259e    90
                         nop                                                       // 0x0089259f    90
                         push             esi                                      // 0x008925a0    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]              // 0x008925a1    8b74240c
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x008925a5    8b4604
                         {disp8} mov      edx, dword ptr [esi + 0x08]              // 0x008925a8    8b5608
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]  // 0x008925ab    8d0c8504000000
                         push             ecx                                      // 0x008925b2    51
                         push             edx                                      // 0x008925b3    52
                         call             _realloc                                 // 0x008925b4    e8e672f3ff
                         add              esp, 0x08                                // 0x008925b9    83c408
                         test             eax, eax                                 // 0x008925bc    85c0
                         {disp32} je      _jmp_addr_0x00892646                     // 0x008925be    0f8482000000
                         {disp8} mov      edx, dword ptr [esi + 0x0c]              // 0x008925c4    8b560c
                         {disp8} mov      dword ptr [esi + 0x08], eax              // 0x008925c7    894608
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x008925ca    8b4604
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000004]  // 0x008925cd    8d0c8504000000
                         push             ecx                                      // 0x008925d4    51
                         push             edx                                      // 0x008925d5    52
                         call             _realloc                                 // 0x008925d6    e8c472f3ff
                         add              esp, 0x08                                // 0x008925db    83c408
                         test             eax, eax                                 // 0x008925de    85c0
                         {disp8} je       _jmp_addr_0x00892646                     // 0x008925e0    7464
                         {disp8} mov      ecx, dword ptr [esi + 0x04]              // 0x008925e2    8b4e04
                         {disp8} mov      edx, dword ptr [esi + 0x08]              // 0x008925e5    8b5608
                         {disp8} mov      dword ptr [esi + 0x0c], eax              // 0x008925e8    89460c
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008925eb    8b442408
                         mov              dword ptr [edx + ecx * 0x4], eax         // 0x008925ef    89048a
                         {disp32} mov     ecx, dword ptr [eax + 0x000000b8]        // 0x008925f2    8b88b8000000
                         test             ecx, ecx                                 // 0x008925f8    85c9
                         {disp8} je       _jmp_addr_0x00892612                     // 0x008925fa    7416
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x008925fc    8b4604
                         {disp8} mov      ecx, dword ptr [esi + 0x0c]              // 0x008925ff    8b4e0c
                         mov              dword ptr [ecx + eax * 0x4], 0x00000002  // 0x00892602    c7048102000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x00892609    8b4604
                         inc              eax                                      // 0x0089260c    40
                         {disp8} mov      dword ptr [esi + 0x04], eax              // 0x0089260d    894604
                         pop              esi                                      // 0x00892610    5e
                         ret                                                       // 0x00892611    c3
_jmp_addr_0x00892612:    {disp32} mov     ecx, dword ptr [eax + 0x000000b4]        // 0x00892612    8b88b4000000
                         test             ecx, ecx                                 // 0x00892618    85c9
                         {disp8} je       _jmp_addr_0x00892632                     // 0x0089261a    7416
                         {disp8} mov      edx, dword ptr [esi + 0x04]              // 0x0089261c    8b5604
                         {disp8} mov      eax, dword ptr [esi + 0x0c]              // 0x0089261f    8b460c
                         mov              dword ptr [eax + edx * 0x4], 0x00000001  // 0x00892622    c7049001000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x00892629    8b4604
                         inc              eax                                      // 0x0089262c    40
                         {disp8} mov      dword ptr [esi + 0x04], eax              // 0x0089262d    894604
                         pop              esi                                      // 0x00892630    5e
                         ret                                                       // 0x00892631    c3
_jmp_addr_0x00892632:    {disp8} mov      ecx, dword ptr [esi + 0x04]              // 0x00892632    8b4e04
                         {disp8} mov      edx, dword ptr [esi + 0x0c]              // 0x00892635    8b560c
                         mov              dword ptr [edx + ecx * 0x4], 0x00000000  // 0x00892638    c7048a00000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x0089263f    8b4604
                         inc              eax                                      // 0x00892642    40
                         {disp8} mov      dword ptr [esi + 0x04], eax              // 0x00892643    894604
_jmp_addr_0x00892646:    pop              esi                                      // 0x00892646    5e
                         ret                                                       // 0x00892647    c3
                         nop                                                       // 0x00892648    90
                         nop                                                       // 0x00892649    90
                         nop                                                       // 0x0089264a    90
                         nop                                                       // 0x0089264b    90
                         nop                                                       // 0x0089264c    90
                         nop                                                       // 0x0089264d    90
                         nop                                                       // 0x0089264e    90
                         nop                                                       // 0x0089264f    90
_jmp_addr_0x00892650:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892650    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892654    8b4c2404
                         push             eax                                      // 0x00892658    50
                         push             ecx                                      // 0x00892659    51
                         call             _jmp_addr_0x008924c0                     // 0x0089265a    e861feffff
                         add              esp, 0x08                                // 0x0089265f    83c408
                         neg              eax                                      // 0x00892662    f7d8
                         sbb.s            eax, eax                                 // 0x00892664    1bc0
                         neg              eax                                      // 0x00892666    f7d8
                         ret                                                       // 0x00892668    c3
                         nop                                                       // 0x00892669    90
                         nop                                                       // 0x0089266a    90
                         nop                                                       // 0x0089266b    90
                         nop                                                       // 0x0089266c    90
                         nop                                                       // 0x0089266d    90
                         nop                                                       // 0x0089266e    90
                         nop                                                       // 0x0089266f    90
_jmp_addr_0x00892670:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892670    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892674    8b4c2404
                         push             eax                                      // 0x00892678    50
                         push             ecx                                      // 0x00892679    51
                         call             _jmp_addr_0x008924c0                     // 0x0089267a    e841feffff
                         add              esp, 0x08                                // 0x0089267f    83c408
                         test             eax, eax                                 // 0x00892682    85c0
                         {disp8} jne      _jmp_addr_0x00892687                     // 0x00892684    7501
                         ret                                                       // 0x00892686    c3
_jmp_addr_0x00892687:    {disp32} mov     ecx, dword ptr [eax + 0x000000cc]        // 0x00892687    8b88cc000000
                         test             ecx, ecx                                 // 0x0089268d    85c9
                         {disp8} jne      _jmp_addr_0x00892694                     // 0x0089268f    7503
                         xor.s            eax, eax                                 // 0x00892691    33c0
                         ret                                                       // 0x00892693    c3
_jmp_addr_0x00892694:    push             esi                                      // 0x00892694    56
                         push             edi                                      // 0x00892695    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]              // 0x00892696    8b7c2414
                         {disp32} lea     esi, dword ptr [eax + 0x000000b0]        // 0x0089269a    8db0b0000000
                         mov              ecx, 0x00000007                          // 0x008926a0    b907000000
                         mov              eax, 0x00000001                          // 0x008926a5    b801000000
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008926aa    f3a5
                         pop              edi                                      // 0x008926ac    5f
                         pop              esi                                      // 0x008926ad    5e
                         ret                                                       // 0x008926ae    c3
                         nop                                                       // 0x008926af    90
_jmp_addr_0x008926b0:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008926b0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008926b4    8b4c2404
                         push             eax                                      // 0x008926b8    50
                         push             ecx                                      // 0x008926b9    51
                         call             _jmp_addr_0x008924c0                     // 0x008926ba    e801feffff
                         add              esp, 0x08                                // 0x008926bf    83c408
                         test             eax, eax                                 // 0x008926c2    85c0
                         {disp8} je       _jmp_addr_0x008926e5                     // 0x008926c4    741f
                         push             esi                                      // 0x008926c6    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]              // 0x008926c7    8b742410
                         push             edi                                      // 0x008926cb    57
                         {disp32} lea     edi, dword ptr [eax + 0x000000b0]        // 0x008926cc    8db8b0000000
                         mov              ecx, 0x00000007                          // 0x008926d2    b907000000
                         {disp32} mov     dword ptr [eax + 0x000000cc], 0x00000001 // 0x008926d7    c780cc00000001000000
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008926e1    f3a5
                         pop              edi                                      // 0x008926e3    5f
                         pop              esi                                      // 0x008926e4    5e
_jmp_addr_0x008926e5:    ret                                                       // 0x008926e5    c3
                         nop                                                       // 0x008926e6    90
                         nop                                                       // 0x008926e7    90
                         nop                                                       // 0x008926e8    90
                         nop                                                       // 0x008926e9    90
                         nop                                                       // 0x008926ea    90
                         nop                                                       // 0x008926eb    90
                         nop                                                       // 0x008926ec    90
                         nop                                                       // 0x008926ed    90
                         nop                                                       // 0x008926ee    90
                         nop                                                       // 0x008926ef    90
_jmp_addr_0x008926f0:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008926f0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008926f4    8b4c2404
                         push             ebx                                      // 0x008926f8    53
                         push             ebp                                      // 0x008926f9    55
                         push             esi                                      // 0x008926fa    56
                         push             edi                                      // 0x008926fb    57
                         push             eax                                      // 0x008926fc    50
                         push             ecx                                      // 0x008926fd    51
                         call             _jmp_addr_0x008924c0                     // 0x008926fe    e8bdfdffff
                         mov.s            ebp, eax                                 // 0x00892703    8be8
                         add              esp, 0x08                                // 0x00892705    83c408
                         test             ebp, ebp                                 // 0x00892708    85ed
                         {disp8} je       _jmp_addr_0x0089275c                     // 0x0089270a    7450
                         {disp32} mov     edx, dword ptr [ebp + 0x000000d0]        // 0x0089270c    8b95d0000000
                         push             edx                                      // 0x00892712    52
                         call             _free                                    // 0x00892713    e86e40f3ff
                         {disp8} mov      esi, dword ptr [esp + 0x20]              // 0x00892718    8b742420
                         add              esp, 0x04                                // 0x0089271c    83c404
                         test             esi, esi                                 // 0x0089271f    85f6
                         {disp8} jne      _jmp_addr_0x00892728                     // 0x00892721    7505
                         mov              esi, 0x00c58370                          // 0x00892723    be7083c500
_jmp_addr_0x00892728:    mov.s            edi, esi                                 // 0x00892728    8bfe
                         or               ecx, 0xffffffff                          // 0x0089272a    83c9ff
                         xor.s            eax, eax                                 // 0x0089272d    33c0
                         repne scasb                                               // 0x0089272f    f2ae
                         not              ecx                                      // 0x00892731    f7d1
                         dec              ecx                                      // 0x00892733    49
                         mov.s            ebx, ecx                                 // 0x00892734    8bd9
                         inc              ebx                                      // 0x00892736    43
                         push             ebx                                      // 0x00892737    53
                         call             _malloc                                  // 0x00892738    e80f3ff3ff
                         add              esp, 0x04                                // 0x0089273d    83c404
                         {disp32} mov     dword ptr [ebp + 0x000000d0], eax        // 0x00892740    8985d0000000
                         test             eax, eax                                 // 0x00892746    85c0
                         {disp8} je       _jmp_addr_0x0089275c                     // 0x00892748    7412
                         mov.s            ecx, ebx                                 // 0x0089274a    8bcb
                         mov.s            edi, eax                                 // 0x0089274c    8bf8
                         mov.s            eax, ecx                                 // 0x0089274e    8bc1
                         shr              ecx, 2                                   // 0x00892750    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892753    f3a5
                         mov.s            ecx, eax                                 // 0x00892755    8bc8
                         and              ecx, 0x03                                // 0x00892757    83e103
                         rep movsb                                                 // 0x0089275a    f3a4
_jmp_addr_0x0089275c:    pop              edi                                      // 0x0089275c    5f
                         pop              esi                                      // 0x0089275d    5e
                         pop              ebp                                      // 0x0089275e    5d
                         pop              ebx                                      // 0x0089275f    5b
                         ret                                                       // 0x00892760    c3
                         nop                                                       // 0x00892761    90
                         nop                                                       // 0x00892762    90
                         nop                                                       // 0x00892763    90
                         nop                                                       // 0x00892764    90
                         nop                                                       // 0x00892765    90
                         nop                                                       // 0x00892766    90
                         nop                                                       // 0x00892767    90
                         nop                                                       // 0x00892768    90
                         nop                                                       // 0x00892769    90
                         nop                                                       // 0x0089276a    90
                         nop                                                       // 0x0089276b    90
                         nop                                                       // 0x0089276c    90
                         nop                                                       // 0x0089276d    90
                         nop                                                       // 0x0089276e    90
                         nop                                                       // 0x0089276f    90
_jmp_addr_0x00892770:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892770    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892774    8b4c2404
                         push             eax                                      // 0x00892778    50
                         push             ecx                                      // 0x00892779    51
                         call             _jmp_addr_0x008924c0                     // 0x0089277a    e841fdffff
                         add              esp, 0x08                                // 0x0089277f    83c408
                         test             eax, eax                                 // 0x00892782    85c0
                         {disp8} jne      _jmp_addr_0x00892787                     // 0x00892784    7501
                         ret                                                       // 0x00892786    c3
_jmp_addr_0x00892787:    {disp32} mov     eax, dword ptr [eax + 0x000000d0]        // 0x00892787    8b80d0000000
                         ret                                                       // 0x0089278d    c3
                         nop                                                       // 0x0089278e    90
                         nop                                                       // 0x0089278f    90
_jmp_addr_0x00892790:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892790    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892794    8b4c2404
                         push             eax                                      // 0x00892798    50
                         push             ecx                                      // 0x00892799    51
                         call             _jmp_addr_0x008924c0                     // 0x0089279a    e821fdffff
                         add              esp, 0x08                                // 0x0089279f    83c408
                         test             eax, eax                                 // 0x008927a2    85c0
                         {disp8} je       _jmp_addr_0x008927b0                     // 0x008927a4    740a
                         {disp32} mov     dword ptr [eax + 0x000000d4], 0x00000001 // 0x008927a6    c780d400000001000000
_jmp_addr_0x008927b0:    ret                                                       // 0x008927b0    c3
                         nop                                                       // 0x008927b1    90
                         nop                                                       // 0x008927b2    90
                         nop                                                       // 0x008927b3    90
                         nop                                                       // 0x008927b4    90
                         nop                                                       // 0x008927b5    90
                         nop                                                       // 0x008927b6    90
                         nop                                                       // 0x008927b7    90
                         nop                                                       // 0x008927b8    90
                         nop                                                       // 0x008927b9    90
                         nop                                                       // 0x008927ba    90
                         nop                                                       // 0x008927bb    90
                         nop                                                       // 0x008927bc    90
                         nop                                                       // 0x008927bd    90
                         nop                                                       // 0x008927be    90
                         nop                                                       // 0x008927bf    90
_jmp_addr_0x008927c0:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008927c0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008927c4    8b4c2404
                         push             eax                                      // 0x008927c8    50
                         push             ecx                                      // 0x008927c9    51
                         call             _jmp_addr_0x008924c0                     // 0x008927ca    e8f1fcffff
                         add              esp, 0x08                                // 0x008927cf    83c408
                         test             eax, eax                                 // 0x008927d2    85c0
                         {disp8} jne      _jmp_addr_0x008927d7                     // 0x008927d4    7501
                         ret                                                       // 0x008927d6    c3
_jmp_addr_0x008927d7:    {disp32} mov     eax, dword ptr [eax + 0x000000d4]        // 0x008927d7    8b80d4000000
                         ret                                                       // 0x008927dd    c3
                         nop                                                       // 0x008927de    90
                         nop                                                       // 0x008927df    90
_jmp_addr_0x008927e0:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x008927e0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008927e4    8b4c2404
                         push             esi                                      // 0x008927e8    56
                         push             eax                                      // 0x008927e9    50
                         push             ecx                                      // 0x008927ea    51
                         call             _jmp_addr_0x008924c0                     // 0x008927eb    e8d0fcffff
                         mov.s            esi, eax                                 // 0x008927f0    8bf0
                         add              esp, 0x08                                // 0x008927f2    83c408
                         test             esi, esi                                 // 0x008927f5    85f6
                         {disp8} je       _jmp_addr_0x00892819                     // 0x008927f7    7420
                         {disp8} mov      edx, dword ptr [esp + 0x10]              // 0x008927f9    8b542410
                         push             0x00000080                               // 0x008927fd    6880000000
                         {disp32} lea     eax, dword ptr [esi + 0x000000d8]        // 0x00892802    8d86d8000000
                         push             edx                                      // 0x00892808    52
                         push             eax                                      // 0x00892809    50
                         call             _strncpy                                 // 0x0089280a    e89168f3ff
                         add              esp, 0x0c                                // 0x0089280f    83c40c
                         {disp32} mov     byte ptr [esi + 0x00000157], 0x00        // 0x00892812    c6865701000000
_jmp_addr_0x00892819:    pop              esi                                      // 0x00892819    5e
                         ret                                                       // 0x0089281a    c3
                         nop                                                       // 0x0089281b    90
                         nop                                                       // 0x0089281c    90
                         nop                                                       // 0x0089281d    90
                         nop                                                       // 0x0089281e    90
                         nop                                                       // 0x0089281f    90
_jmp_addr_0x00892820:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892820    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892824    8b4c2404
                         push             eax                                      // 0x00892828    50
                         push             ecx                                      // 0x00892829    51
                         call             _jmp_addr_0x008924c0                     // 0x0089282a    e891fcffff
                         add              esp, 0x08                                // 0x0089282f    83c408
                         test             eax, eax                                 // 0x00892832    85c0
                         {disp8} jne      _jmp_addr_0x00892837                     // 0x00892834    7501
                         ret                                                       // 0x00892836    c3
_jmp_addr_0x00892837:    add              eax, 0x000000d8                          // 0x00892837    05d8000000
                         ret                                                       // 0x0089283c    c3
                         nop                                                       // 0x0089283d    90
                         nop                                                       // 0x0089283e    90
                         nop                                                       // 0x0089283f    90
_jmp_addr_0x00892840:    {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00892840    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892844    8b4c2404
                         sub              esp, 0x000000bc                          // 0x00892848    81ecbc000000
                         push             ebx                                      // 0x0089284e    53
                         push             ebp                                      // 0x0089284f    55
                         push             eax                                      // 0x00892850    50
                         push             ecx                                      // 0x00892851    51
                         call             _jmp_addr_0x008924c0                     // 0x00892852    e869fcffff
                         mov.s            ebp, eax                                 // 0x00892857    8be8
                         xor.s            ebx, ebx                                 // 0x00892859    33db
                         add              esp, 0x08                                // 0x0089285b    83c408
                         cmp.s            ebp, ebx                                 // 0x0089285e    3beb
                         {disp32} je      _jmp_addr_0x0089292c                     // 0x00892860    0f84c6000000
                         {disp32} mov     edx, dword ptr [esp + 0x000000cc]        // 0x00892866    8b9424cc000000
                         push             esi                                      // 0x0089286d    56
                         push             edi                                      // 0x0089286e    57
                         mov              ecx, 0x0000002f                          // 0x0089286f    b92f000000
                         xor.s            eax, eax                                 // 0x00892874    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x10]              // 0x00892876    8d7c2410
                         rep stosd                                                 // 0x0089287a    f3ab
                         push             0x00000080                               // 0x0089287c    6880000000
                         {disp8} lea      eax, dword ptr [esp + 0x14]              // 0x00892881    8d442414
                         push             edx                                      // 0x00892885    52
                         push             eax                                      // 0x00892886    50
                         call             _strncpy                                 // 0x00892887    e81468f3ff
                         {disp32} mov     eax, dword ptr [esp + 0x000000ec]        // 0x0089288c    8b8424ec000000
                         add              esp, 0x0c                                // 0x00892893    83c40c
                         cmp.s            eax, ebx                                 // 0x00892896    3bc3
                         {disp32} mov     byte ptr [esp + 0x0000008f], bl          // 0x00892898    889c248f000000
                         {disp8} je       _jmp_addr_0x008928ea                     // 0x0089289f    7449
                         {disp32} mov     esi, dword ptr [esp + 0x000000e4]        // 0x008928a1    8bb424e4000000
                         cmp.s            esi, ebx                                 // 0x008928a8    3bf3
                         {disp8} je       _jmp_addr_0x008928ea                     // 0x008928aa    743e
                         push             0x18                                     // 0x008928ac    6a18
                         {disp32} lea     ecx, dword ptr [esp + 0x00000094]        // 0x008928ae    8d8c2494000000
                         push             eax                                      // 0x008928b5    50
                         push             ecx                                      // 0x008928b6    51
                         call             _strncpy                                 // 0x008928b7    e8e467f3ff
                         push             0x18                                     // 0x008928bc    6a18
                         {disp32} lea     edx, dword ptr [esp + 0x000000b8]        // 0x008928be    8d9424b8000000
                         push             esi                                      // 0x008928c5    56
                         push             edx                                      // 0x008928c6    52
                         {disp32} mov     byte ptr [esp + 0x000000bf], bl          // 0x008928c7    889c24bf000000
                         call             _strncpy                                 // 0x008928ce    e8cd67f3ff
                         add              esp, 0x18                                // 0x008928d3    83c418
                         {disp32} mov     byte ptr [esp + 0x000000bf], bl          // 0x008928d6    889c24bf000000
                         {disp32} mov     dword ptr [esp + 0x000000c0], 0x00000001 // 0x008928dd    c78424c000000001000000
                         {disp8} jmp      _jmp_addr_0x008928f1                     // 0x008928e8    eb07
_jmp_addr_0x008928ea:    {disp32} mov     dword ptr [esp + 0x000000c0], ebx        // 0x008928ea    899c24c0000000
_jmp_addr_0x008928f1:    {disp32} mov     eax, dword ptr [esp + 0x000000dc]        // 0x008928f1    8b8424dc000000
                         xor.s            ecx, ecx                                 // 0x008928f8    33c9
                         cmp              eax, 0x02                                // 0x008928fa    83f802
                         sete             cl                                       // 0x008928fd    0f94c1
                         xor.s            edx, edx                                 // 0x00892900    33d2
                         cmp              eax, 0x01                                // 0x00892902    83f801
                         sete             dl                                       // 0x00892905    0f94c2
                         {disp32} mov     dword ptr [esp + 0x000000c8], ecx        // 0x00892908    898c24c8000000
                         {disp32} mov     dword ptr [esp + 0x000000c4], edx        // 0x0089290f    899424c4000000
                         {disp32} mov     ecx, dword ptr [ebp + 0x000000ac]        // 0x00892916    8b8dac000000
                         {disp8} lea      eax, dword ptr [esp + 0x10]              // 0x0089291c    8d442410
                         push             eax                                      // 0x00892920    50
                         push             ecx                                      // 0x00892921    51
                         call             _jmp_addr_0x0088fb40                     // 0x00892922    e819d2ffff
                         add              esp, 0x08                                // 0x00892927    83c408
                         pop              edi                                      // 0x0089292a    5f
                         pop              esi                                      // 0x0089292b    5e
_jmp_addr_0x0089292c:    pop              ebp                                      // 0x0089292c    5d
                         pop              ebx                                      // 0x0089292d    5b
                         add              esp, 0x000000bc                          // 0x0089292e    81c4bc000000
                         ret                                                       // 0x00892934    c3
                         nop                                                       // 0x00892935    90
                         nop                                                       // 0x00892936    90
                         nop                                                       // 0x00892937    90
                         nop                                                       // 0x00892938    90
                         nop                                                       // 0x00892939    90
                         nop                                                       // 0x0089293a    90
                         nop                                                       // 0x0089293b    90
                         nop                                                       // 0x0089293c    90
                         nop                                                       // 0x0089293d    90
                         nop                                                       // 0x0089293e    90
                         nop                                                       // 0x0089293f    90
_jmp_addr_0x00892940:    {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00892940    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892944    8b4c2404
                         sub              esp, 0x000000bc                          // 0x00892948    81ecbc000000
                         push             eax                                      // 0x0089294e    50
                         push             ecx                                      // 0x0089294f    51
                         call             _jmp_addr_0x008924c0                     // 0x00892950    e86bfbffff
                         mov.s            edx, eax                                 // 0x00892955    8bd0
                         add              esp, 0x08                                // 0x00892957    83c408
                         test             edx, edx                                 // 0x0089295a    85d2
                         {disp8} je       _jmp_addr_0x008929a0                     // 0x0089295c    7442
                         push             ebx                                      // 0x0089295e    53
                         push             esi                                      // 0x0089295f    56
                         push             edi                                      // 0x00892960    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000d0]        // 0x00892961    8bbc24d0000000
                         or               ecx, 0xffffffff                          // 0x00892968    83c9ff
                         xor.s            eax, eax                                 // 0x0089296b    33c0
                         repne scasb                                               // 0x0089296d    f2ae
                         not              ecx                                      // 0x0089296f    f7d1
                         sub.s            edi, ecx                                 // 0x00892971    2bf9
                         {disp8} lea      ebx, dword ptr [esp + 0x0c]              // 0x00892973    8d5c240c
                         mov.s            eax, ecx                                 // 0x00892977    8bc1
                         mov.s            esi, edi                                 // 0x00892979    8bf7
                         mov.s            edi, ebx                                 // 0x0089297b    8bfb
                         shr              ecx, 2                                   // 0x0089297d    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892980    f3a5
                         mov.s            ecx, eax                                 // 0x00892982    8bc8
                         and              ecx, 0x03                                // 0x00892984    83e103
                         rep movsb                                                 // 0x00892987    f3a4
                         {disp32} mov     edx, dword ptr [edx + 0x000000ac]        // 0x00892989    8b92ac000000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]              // 0x0089298f    8d4c240c
                         push             ecx                                      // 0x00892993    51
                         push             edx                                      // 0x00892994    52
                         call             _jmp_addr_0x0088fba0                     // 0x00892995    e806d2ffff
                         add              esp, 0x08                                // 0x0089299a    83c408
                         pop              edi                                      // 0x0089299d    5f
                         pop              esi                                      // 0x0089299e    5e
                         pop              ebx                                      // 0x0089299f    5b
_jmp_addr_0x008929a0:    add              esp, 0x000000bc                          // 0x008929a0    81c4bc000000
                         ret                                                       // 0x008929a6    c3
                         nop                                                       // 0x008929a7    90
                         nop                                                       // 0x008929a8    90
                         nop                                                       // 0x008929a9    90
                         nop                                                       // 0x008929aa    90
                         nop                                                       // 0x008929ab    90
                         nop                                                       // 0x008929ac    90
                         nop                                                       // 0x008929ad    90
                         nop                                                       // 0x008929ae    90
                         nop                                                       // 0x008929af    90
_jmp_addr_0x008929b0:    sub              esp, 0x000000cc                          // 0x008929b0    81eccc000000
                         push             esi                                      // 0x008929b6    56
                         push             edi                                      // 0x008929b7    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000dc]        // 0x008929b8    8bbc24dc000000
                         or               ecx, 0xffffffff                          // 0x008929bf    83c9ff
                         xor.s            eax, eax                                 // 0x008929c2    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x18]              // 0x008929c4    8d542418
                         repne scasb                                               // 0x008929c8    f2ae
                         not              ecx                                      // 0x008929ca    f7d1
                         sub.s            edi, ecx                                 // 0x008929cc    2bf9
                         mov.s            eax, ecx                                 // 0x008929ce    8bc1
                         mov.s            esi, edi                                 // 0x008929d0    8bf7
                         mov.s            edi, edx                                 // 0x008929d2    8bfa
                         {disp32} mov     edx, dword ptr [esp + 0x000000e0]        // 0x008929d4    8b9424e0000000
                         shr              ecx, 2                                   // 0x008929db    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008929de    f3a5
                         mov.s            ecx, eax                                 // 0x008929e0    8bc8
                         {disp32} mov     eax, dword ptr [esp + 0x000000d8]        // 0x008929e2    8b8424d8000000
                         and              ecx, 0x03                                // 0x008929e9    83e103
                         {disp8} mov      dword ptr [esp + 0x10], edx              // 0x008929ec    89542410
                         rep movsb                                                 // 0x008929f0    f3a4
                         {disp8} lea      ecx, dword ptr [esp + 0x18]              // 0x008929f2    8d4c2418
                         {disp8} lea      edx, dword ptr [esp + 0x08]              // 0x008929f6    8d542408
                         {disp8} mov      dword ptr [esp + 0x08], eax              // 0x008929fa    89442408
                         {disp32} mov     eax, dword ptr [eax + 0x0000037c]        // 0x008929fe    8b807c030000
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x00892a04    894c240c
                         {disp32} mov     ecx, dword ptr [esp + 0x000000e4]        // 0x00892a08    8b8c24e4000000
                         push             edx                                      // 0x00892a0f    52
                         push             0x00892a30                               // 0x00892a10    68302a8900
                         push             eax                                      // 0x00892a15    50
                         {disp8} mov      dword ptr [esp + 0x20], ecx              // 0x00892a16    894c2420
                         call             _jmp_addr_0x0088fc40                     // 0x00892a1a    e821d2ffff
                         add              esp, 0x0c                                // 0x00892a1f    83c40c
                         pop              edi                                      // 0x00892a22    5f
                         pop              esi                                      // 0x00892a23    5e
                         add              esp, 0x000000cc                          // 0x00892a24    81c4cc000000
                         ret                                                       // 0x00892a2a    c3
                         nop                                                       // 0x00892a2b    90
                         nop                                                       // 0x00892a2c    90
                         nop                                                       // 0x00892a2d    90
                         nop                                                       // 0x00892a2e    90
                         nop                                                       // 0x00892a2f    90
                         push             esi                                      // 0x00892a30    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]              // 0x00892a31    8b74240c
                         push             edi                                      // 0x00892a35    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]              // 0x00892a36    8b7c240c
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x00892a3a    8b4604
                         {disp32} mov     ecx, dword ptr [edi + 0x000000ac]        // 0x00892a3d    8b8fac000000
                         push             eax                                      // 0x00892a43    50
                         push             ecx                                      // 0x00892a44    51
                         call             _jmp_addr_0x0088fbf0                     // 0x00892a45    e8a6d1ffff
                         add              esp, 0x08                                // 0x00892a4a    83c408
                         test             eax, eax                                 // 0x00892a4d    85c0
                         {disp8} je       _jmp_addr_0x00892a63                     // 0x00892a4f    7412
                         {disp8} mov      edx, dword ptr [esi + 0x0c]              // 0x00892a51    8b560c
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x00892a54    8b4604
                         mov              ecx, dword ptr [esi]                     // 0x00892a57    8b0e
                         push             edx                                      // 0x00892a59    52
                         push             edi                                      // 0x00892a5a    57
                         push             eax                                      // 0x00892a5b    50
                         push             ecx                                      // 0x00892a5c    51
                         call             dword ptr [esi + 8]                      // 0x00892a5d    ff5608
                         add              esp, 0x10                                // 0x00892a60    83c410
_jmp_addr_0x00892a63:    pop              edi                                      // 0x00892a63    5f
                         pop              esi                                      // 0x00892a64    5e
                         ret                                                       // 0x00892a65    c3
                         nop                                                       // 0x00892a66    90
                         nop                                                       // 0x00892a67    90
                         nop                                                       // 0x00892a68    90
                         nop                                                       // 0x00892a69    90
                         nop                                                       // 0x00892a6a    90
                         nop                                                       // 0x00892a6b    90
                         nop                                                       // 0x00892a6c    90
                         nop                                                       // 0x00892a6d    90
                         nop                                                       // 0x00892a6e    90
                         nop                                                       // 0x00892a6f    90
_jmp_addr_0x00892a70:    sub              esp, 0x0c                                // 0x00892a70    83ec0c
                         {disp8} mov      ecx, dword ptr [esp + 0x14]              // 0x00892a73    8b4c2414
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00892a77    8b442410
                         {disp8} mov      edx, dword ptr [esp + 0x18]              // 0x00892a7b    8b542418
                         {disp8} mov      dword ptr [esp + 0x04], ecx              // 0x00892a7f    894c2404
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x00892a83    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x08], edx              // 0x00892a87    89542408
                         {disp32} mov     edx, dword ptr [eax + 0x0000037c]        // 0x00892a8b    8b907c030000
                         push             ecx                                      // 0x00892a91    51
                         push             0x00892ab0                               // 0x00892a92    68b02a8900
                         push             edx                                      // 0x00892a97    52
                         {disp8} mov      dword ptr [esp + 0x0c], eax              // 0x00892a98    8944240c
                         call             _jmp_addr_0x0088fc40                     // 0x00892a9c    e89fd1ffff
                         add              esp, 0x18                                // 0x00892aa1    83c418
                         ret                                                       // 0x00892aa4    c3
                         nop                                                       // 0x00892aa5    90
                         nop                                                       // 0x00892aa6    90
                         nop                                                       // 0x00892aa7    90
                         nop                                                       // 0x00892aa8    90
                         nop                                                       // 0x00892aa9    90
                         nop                                                       // 0x00892aaa    90
                         nop                                                       // 0x00892aab    90
                         nop                                                       // 0x00892aac    90
                         nop                                                       // 0x00892aad    90
                         nop                                                       // 0x00892aae    90
                         nop                                                       // 0x00892aaf    90
                         sub              esp, 0x000000c8                          // 0x00892ab0    81ecc8000000
                         push             ebx                                      // 0x00892ab6    53
                         {disp32} mov     ebx, dword ptr [esp + 0x000000d0]        // 0x00892ab7    8b9c24d0000000
                         push             ebp                                      // 0x00892abe    55
                         {disp32} mov     ebp, dword ptr [esp + 0x000000d8]        // 0x00892abf    8bac24d8000000
                         {disp32} mov     ecx, dword ptr [ebx + 0x000000ac]        // 0x00892ac6    8b8bac000000
                         {disp8} mov      eax, dword ptr [ebp + 0x04]              // 0x00892acc    8b4504
                         push             eax                                      // 0x00892acf    50
                         push             ecx                                      // 0x00892ad0    51
                         call             _jmp_addr_0x0088fbf0                     // 0x00892ad1    e81ad1ffff
                         add              esp, 0x08                                // 0x00892ad6    83c408
                         test             eax, eax                                 // 0x00892ad9    85c0
                         {disp32} je      _jmp_addr_0x00892b81                     // 0x00892adb    0f84a0000000
                         {disp32} mov     edx, dword ptr [ebx + 0x000000ac]        // 0x00892ae1    8b93ac000000
                         push             esi                                      // 0x00892ae7    56
                         push             edi                                      // 0x00892ae8    57
                         mov              ecx, 0x0000002f                          // 0x00892ae9    b92f000000
                         mov.s            esi, eax                                 // 0x00892aee    8bf0
                         {disp8} lea      edi, dword ptr [esp + 0x1c]              // 0x00892af0    8d7c241c
                         push             eax                                      // 0x00892af4    50
                         push             edx                                      // 0x00892af5    52
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892af6    f3a5
                         call             _jmp_addr_0x0088fba0                     // 0x00892af8    e8a3d0ffff
                         {disp8} mov      edi, dword ptr [ebp + 0x08]              // 0x00892afd    8b7d08
                         or               ecx, 0xffffffff                          // 0x00892b00    83c9ff
                         xor.s            eax, eax                                 // 0x00892b03    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x24]              // 0x00892b05    8d542424
                         repne scasb                                               // 0x00892b09    f2ae
                         not              ecx                                      // 0x00892b0b    f7d1
                         sub.s            edi, ecx                                 // 0x00892b0d    2bf9
                         mov.s            eax, ecx                                 // 0x00892b0f    8bc1
                         mov.s            esi, edi                                 // 0x00892b11    8bf7
                         mov.s            edi, edx                                 // 0x00892b13    8bfa
                         {disp32} mov     edx, dword ptr [ebx + 0x000000ac]        // 0x00892b15    8b93ac000000
                         shr              ecx, 2                                   // 0x00892b1b    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892b1e    f3a5
                         mov.s            ecx, eax                                 // 0x00892b20    8bc8
                         and              ecx, 0x03                                // 0x00892b22    83e103
                         rep movsb                                                 // 0x00892b25    f3a4
                         {disp8} lea      ecx, dword ptr [esp + 0x24]              // 0x00892b27    8d4c2424
                         push             ecx                                      // 0x00892b2b    51
                         push             edx                                      // 0x00892b2c    52
                         call             _jmp_addr_0x0088fb40                     // 0x00892b2d    e80ed0ffff
                         {disp8} mov      eax, dword ptr [ebp + 0x00]              // 0x00892b32    8b4500
                         push             ebx                                      // 0x00892b35    53
                         push             eax                                      // 0x00892b36    50
                         call             _jmp_addr_0x008927c0                     // 0x00892b37    e884fcffff
                         add              esp, 0x18                                // 0x00892b3c    83c418
                         test             eax, eax                                 // 0x00892b3f    85c0
                         pop              edi                                      // 0x00892b41    5f
                         pop              esi                                      // 0x00892b42    5e
                         {disp8} je       _jmp_addr_0x00892b81                     // 0x00892b43    743c
                         {disp32} mov     eax, dword ptr [ebx + 0x00000090]        // 0x00892b45    8b8390000000
                         test             eax, eax                                 // 0x00892b4b    85c0
                         {disp8} je       _jmp_addr_0x00892b81                     // 0x00892b4d    7432
                         {disp8} mov      ecx, dword ptr [ebp + 0x04]              // 0x00892b4f    8b4d04
                         {disp8} mov      edx, dword ptr [ebp + 0x08]              // 0x00892b52    8b5508
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x00892b55    894c240c
                         {disp32} mov     ecx, dword ptr [ebx + 0x000000a8]        // 0x00892b59    8b8ba8000000
                         push             0xc                                      // 0x00892b5f    6a0c
                         {disp8} mov      dword ptr [esp + 0x14], edx              // 0x00892b61    89542414
                         push             ebx                                      // 0x00892b65    53
                         push             0x0                                      // 0x00892b66    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x14]              // 0x00892b68    8d542414
                         push             ecx                                      // 0x00892b6c    51
                         push             edx                                      // 0x00892b6d    52
                         push             eax                                      // 0x00892b6e    50
                         {disp8} mov      eax, dword ptr [ebp + 0x00]              // 0x00892b6f    8b4500
                         push             0x8                                      // 0x00892b72    6a08
                         push             eax                                      // 0x00892b74    50
                         {disp8} mov      dword ptr [esp + 0x28], ebx              // 0x00892b75    895c2428
                         call             _jmp_addr_0x00891120                     // 0x00892b79    e8a2e5ffff
                         add              esp, 0x20                                // 0x00892b7e    83c420
_jmp_addr_0x00892b81:    pop              ebp                                      // 0x00892b81    5d
                         pop              ebx                                      // 0x00892b82    5b
                         add              esp, 0x000000c8                          // 0x00892b83    81c4c8000000
                         ret                                                       // 0x00892b89    c3
                         nop                                                       // 0x00892b8a    90
                         nop                                                       // 0x00892b8b    90
                         nop                                                       // 0x00892b8c    90
                         nop                                                       // 0x00892b8d    90
                         nop                                                       // 0x00892b8e    90
                         nop                                                       // 0x00892b8f    90
_jmp_addr_0x00892b90:    sub              esp, 0x00000220                          // 0x00892b90    81ec20020000
                         or               ecx, 0xffffffff                          // 0x00892b96    83c9ff
                         xor.s            eax, eax                                 // 0x00892b99    33c0
                         {disp32} lea     edx, dword ptr [esp + 0x000000c8]        // 0x00892b9b    8d9424c8000000
                         push             ebx                                      // 0x00892ba2    53
                         push             ebp                                      // 0x00892ba3    55
                         push             esi                                      // 0x00892ba4    56
                         push             edi                                      // 0x00892ba5    57
                         {disp32} mov     edi, dword ptr [esp + 0x0000023c]        // 0x00892ba6    8bbc243c020000
                         repne scasb                                               // 0x00892bad    f2ae
                         not              ecx                                      // 0x00892baf    f7d1
                         sub.s            edi, ecx                                 // 0x00892bb1    2bf9
                         mov.s            eax, ecx                                 // 0x00892bb3    8bc1
                         mov.s            esi, edi                                 // 0x00892bb5    8bf7
                         mov.s            edi, edx                                 // 0x00892bb7    8bfa
                         {disp32} mov     edx, dword ptr [esp + 0x00000234]        // 0x00892bb9    8b942434020000
                         shr              ecx, 2                                   // 0x00892bc0    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892bc3    f3a5
                         mov.s            ecx, eax                                 // 0x00892bc5    8bc8
                         {disp32} mov     eax, dword ptr [edx + 0x0000037c]        // 0x00892bc7    8b827c030000
                         and              ecx, 0x03                                // 0x00892bcd    83e103
                         rep movsb                                                 // 0x00892bd0    f3a4
                         {disp32} lea     ecx, dword ptr [esp + 0x000000d8]        // 0x00892bd2    8d8c24d8000000
                         push             ecx                                      // 0x00892bd9    51
                         push             eax                                      // 0x00892bda    50
                         call             _jmp_addr_0x0088fbf0                     // 0x00892bdb    e810d0ffff
                         mov.s            ebx, eax                                 // 0x00892be0    8bd8
                         add              esp, 0x08                                // 0x00892be2    83c408
                         test             ebx, ebx                                 // 0x00892be5    85db
                         {disp32} je      _jmp_addr_0x00892cc8                     // 0x00892be7    0f84db000000
                         {disp32} mov     ebp, dword ptr [esp + 0x00000238]        // 0x00892bed    8bac2438020000
                         or               ecx, 0xffffffff                          // 0x00892bf4    83c9ff
                         mov.s            edi, ebp                                 // 0x00892bf7    8bfd
                         xor.s            eax, eax                                 // 0x00892bf9    33c0
                         repne scasb                                               // 0x00892bfb    f2ae
                         not              ecx                                      // 0x00892bfd    f7d1
                         sub.s            edi, ecx                                 // 0x00892bff    2bf9
                         {disp8} lea      edx, dword ptr [esp + 0x1c]              // 0x00892c01    8d54241c
                         mov.s            eax, ecx                                 // 0x00892c05    8bc1
                         mov.s            esi, edi                                 // 0x00892c07    8bf7
                         mov.s            edi, edx                                 // 0x00892c09    8bfa
                         shr              ecx, 2                                   // 0x00892c0b    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892c0e    f3a5
                         mov.s            ecx, eax                                 // 0x00892c10    8bc8
                         and              ecx, 0x03                                // 0x00892c12    83e103
                         rep movsb                                                 // 0x00892c15    f3a4
                         {disp32} mov     edx, dword ptr [ebx + 0x000000ac]        // 0x00892c17    8b93ac000000
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]              // 0x00892c1d    8d4c241c
                         push             ecx                                      // 0x00892c21    51
                         push             edx                                      // 0x00892c22    52
                         call             _jmp_addr_0x0088fbf0                     // 0x00892c23    e8c8cfffff
                         add              esp, 0x08                                // 0x00892c28    83c408
                         test             eax, eax                                 // 0x00892c2b    85c0
                         {disp32} je      _jmp_addr_0x00892cc8                     // 0x00892c2d    0f8495000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000240]        // 0x00892c33    8b8c2440020000
                         cmp              ecx, 0x02                                // 0x00892c3a    83f902
                         {disp8} jne      _jmp_addr_0x00892c4e                     // 0x00892c3d    750f
                         {disp32} mov     ecx, dword ptr [esp + 0x00000244]        // 0x00892c3f    8b8c2444020000
                         {disp32} mov     dword ptr [eax + 0x000000b8], ecx        // 0x00892c46    8988b8000000
                         {disp8} jmp      _jmp_addr_0x00892c60                     // 0x00892c4c    eb12
_jmp_addr_0x00892c4e:    cmp              ecx, 0x01                                // 0x00892c4e    83f901
                         {disp8} jne      _jmp_addr_0x00892c60                     // 0x00892c51    750d
                         {disp32} mov     edx, dword ptr [esp + 0x00000244]        // 0x00892c53    8b942444020000
                         {disp32} mov     dword ptr [eax + 0x000000b4], edx        // 0x00892c5a    8990b4000000
_jmp_addr_0x00892c60:    {disp32} mov     ecx, dword ptr [ebx + 0x0000009c]        // 0x00892c60    8b8b9c000000
                         test             ecx, ecx                                 // 0x00892c66    85c9
                         {disp8} je       _jmp_addr_0x00892cc8                     // 0x00892c68    745e
                         {disp32} mov     esi, dword ptr [esp + 0x0000023c]        // 0x00892c6a    8bb4243c020000
                         {disp8} mov      dword ptr [esp + 0x14], ebp              // 0x00892c71    896c2414
                         {disp8} mov      dword ptr [esp + 0x10], esi              // 0x00892c75    89742410
                         {disp32} mov     ecx, dword ptr [eax + 0x000000b8]        // 0x00892c79    8b88b8000000
                         test             ecx, ecx                                 // 0x00892c7f    85c9
                         {disp8} je       _jmp_addr_0x00892c8d                     // 0x00892c81    740a
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000002       // 0x00892c83    c744241802000000
                         {disp8} jmp      _jmp_addr_0x00892c9e                     // 0x00892c8b    eb11
_jmp_addr_0x00892c8d:    {disp32} mov     edx, dword ptr [eax + 0x000000b4]        // 0x00892c8d    8b90b4000000
                         xor.s            ecx, ecx                                 // 0x00892c93    33c9
                         test             edx, edx                                 // 0x00892c95    85d2
                         setne            cl                                       // 0x00892c97    0f95c1
                         {disp8} mov      dword ptr [esp + 0x18], ecx              // 0x00892c9a    894c2418
_jmp_addr_0x00892c9e:    {disp32} mov     edx, dword ptr [ebx + 0x000000a8]        // 0x00892c9e    8b93a8000000
                         {disp32} mov     ecx, dword ptr [ebx + 0x0000009c]        // 0x00892ca4    8b8b9c000000
                         push             0xc                                      // 0x00892caa    6a0c
                         push             esi                                      // 0x00892cac    56
                         push             0x0                                      // 0x00892cad    6a00
                         {disp8} lea      eax, dword ptr [esp + 0x1c]              // 0x00892caf    8d44241c
                         push             edx                                      // 0x00892cb3    52
                         {disp32} mov     edx, dword ptr [esp + 0x00000244]        // 0x00892cb4    8b942444020000
                         push             eax                                      // 0x00892cbb    50
                         push             ecx                                      // 0x00892cbc    51
                         push             0xb                                      // 0x00892cbd    6a0b
                         push             edx                                      // 0x00892cbf    52
                         call             _jmp_addr_0x00891120                     // 0x00892cc0    e85be4ffff
                         add              esp, 0x20                                // 0x00892cc5    83c420
_jmp_addr_0x00892cc8:    pop              edi                                      // 0x00892cc8    5f
                         pop              esi                                      // 0x00892cc9    5e
                         pop              ebp                                      // 0x00892cca    5d
                         pop              ebx                                      // 0x00892ccb    5b
                         add              esp, 0x00000220                          // 0x00892ccc    81c420020000
                         ret                                                       // 0x00892cd2    c3
                         nop                                                       // 0x00892cd3    90
                         nop                                                       // 0x00892cd4    90
                         nop                                                       // 0x00892cd5    90
                         nop                                                       // 0x00892cd6    90
                         nop                                                       // 0x00892cd7    90
                         nop                                                       // 0x00892cd8    90
                         nop                                                       // 0x00892cd9    90
                         nop                                                       // 0x00892cda    90
                         nop                                                       // 0x00892cdb    90
                         nop                                                       // 0x00892cdc    90
                         nop                                                       // 0x00892cdd    90
                         nop                                                       // 0x00892cde    90
                         nop                                                       // 0x00892cdf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892ce0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892ce4    8b4c2404
                         sub              esp, 0x000000bc                          // 0x00892ce8    81ecbc000000
                         push             eax                                      // 0x00892cee    50
                         push             ecx                                      // 0x00892cef    51
                         call             _jmp_addr_0x008924c0                     // 0x00892cf0    e8cbf7ffff
                         mov.s            edx, eax                                 // 0x00892cf5    8bd0
                         add              esp, 0x08                                // 0x00892cf7    83c408
                         test             edx, edx                                 // 0x00892cfa    85d2
                         {disp8} jne      _jmp_addr_0x00892d05                     // 0x00892cfc    7507
                         add              esp, 0x000000bc                          // 0x00892cfe    81c4bc000000
                         ret                                                       // 0x00892d04    c3
_jmp_addr_0x00892d05:    push             ebx                                      // 0x00892d05    53
                         push             esi                                      // 0x00892d06    56
                         push             edi                                      // 0x00892d07    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000d4]        // 0x00892d08    8bbc24d4000000
                         or               ecx, 0xffffffff                          // 0x00892d0f    83c9ff
                         xor.s            eax, eax                                 // 0x00892d12    33c0
                         repne scasb                                               // 0x00892d14    f2ae
                         not              ecx                                      // 0x00892d16    f7d1
                         sub.s            edi, ecx                                 // 0x00892d18    2bf9
                         {disp8} lea      ebx, dword ptr [esp + 0x0c]              // 0x00892d1a    8d5c240c
                         mov.s            eax, ecx                                 // 0x00892d1e    8bc1
                         mov.s            esi, edi                                 // 0x00892d20    8bf7
                         mov.s            edi, ebx                                 // 0x00892d22    8bfb
                         shr              ecx, 2                                   // 0x00892d24    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892d27    f3a5
                         mov.s            ecx, eax                                 // 0x00892d29    8bc8
                         and              ecx, 0x03                                // 0x00892d2b    83e103
                         rep movsb                                                 // 0x00892d2e    f3a4
                         {disp32} mov     edx, dword ptr [edx + 0x000000ac]        // 0x00892d30    8b92ac000000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]              // 0x00892d36    8d4c240c
                         push             ecx                                      // 0x00892d3a    51
                         push             edx                                      // 0x00892d3b    52
                         call             _jmp_addr_0x0088fbf0                     // 0x00892d3c    e8afceffff
                         add              esp, 0x08                                // 0x00892d41    83c408
                         neg              eax                                      // 0x00892d44    f7d8
                         sbb.s            eax, eax                                 // 0x00892d46    1bc0
                         pop              edi                                      // 0x00892d48    5f
                         pop              esi                                      // 0x00892d49    5e
                         pop              ebx                                      // 0x00892d4a    5b
                         neg              eax                                      // 0x00892d4b    f7d8
                         add              esp, 0x000000bc                          // 0x00892d4d    81c4bc000000
                         ret                                                       // 0x00892d53    c3
                         nop                                                       // 0x00892d54    90
                         nop                                                       // 0x00892d55    90
                         nop                                                       // 0x00892d56    90
                         nop                                                       // 0x00892d57    90
                         nop                                                       // 0x00892d58    90
                         nop                                                       // 0x00892d59    90
                         nop                                                       // 0x00892d5a    90
                         nop                                                       // 0x00892d5b    90
                         nop                                                       // 0x00892d5c    90
                         nop                                                       // 0x00892d5d    90
                         nop                                                       // 0x00892d5e    90
                         nop                                                       // 0x00892d5f    90
_jmp_addr_0x00892d60:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892d60    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892d64    8b4c2404
                         sub              esp, 0x000000bc                          // 0x00892d68    81ecbc000000
                         push             eax                                      // 0x00892d6e    50
                         push             ecx                                      // 0x00892d6f    51
                         call             _jmp_addr_0x008924c0                     // 0x00892d70    e84bf7ffff
                         mov.s            edx, eax                                 // 0x00892d75    8bd0
                         add              esp, 0x08                                // 0x00892d77    83c408
                         test             edx, edx                                 // 0x00892d7a    85d2
                         {disp8} jne      _jmp_addr_0x00892d88                     // 0x00892d7c    750a
                         or               eax, -0x1                                // 0x00892d7e    83c8ff
                         add              esp, 0x000000bc                          // 0x00892d81    81c4bc000000
                         ret                                                       // 0x00892d87    c3
_jmp_addr_0x00892d88:    push             ebx                                      // 0x00892d88    53
                         push             esi                                      // 0x00892d89    56
                         push             edi                                      // 0x00892d8a    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000d4]        // 0x00892d8b    8bbc24d4000000
                         or               ecx, 0xffffffff                          // 0x00892d92    83c9ff
                         xor.s            eax, eax                                 // 0x00892d95    33c0
                         repne scasb                                               // 0x00892d97    f2ae
                         not              ecx                                      // 0x00892d99    f7d1
                         sub.s            edi, ecx                                 // 0x00892d9b    2bf9
                         {disp8} lea      ebx, dword ptr [esp + 0x0c]              // 0x00892d9d    8d5c240c
                         mov.s            eax, ecx                                 // 0x00892da1    8bc1
                         mov.s            esi, edi                                 // 0x00892da3    8bf7
                         mov.s            edi, ebx                                 // 0x00892da5    8bfb
                         shr              ecx, 2                                   // 0x00892da7    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892daa    f3a5
                         mov.s            ecx, eax                                 // 0x00892dac    8bc8
                         and              ecx, 0x03                                // 0x00892dae    83e103
                         rep movsb                                                 // 0x00892db1    f3a4
                         {disp32} mov     edx, dword ptr [edx + 0x000000ac]        // 0x00892db3    8b92ac000000
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]              // 0x00892db9    8d4c240c
                         push             ecx                                      // 0x00892dbd    51
                         push             edx                                      // 0x00892dbe    52
                         call             _jmp_addr_0x0088fbf0                     // 0x00892dbf    e82cceffff
                         add              esp, 0x08                                // 0x00892dc4    83c408
                         test             eax, eax                                 // 0x00892dc7    85c0
                         pop              edi                                      // 0x00892dc9    5f
                         pop              esi                                      // 0x00892dca    5e
                         pop              ebx                                      // 0x00892dcb    5b
                         {disp8} jne      _jmp_addr_0x00892dd8                     // 0x00892dcc    750a
                         or               eax, -0x1                                // 0x00892dce    83c8ff
                         add              esp, 0x000000bc                          // 0x00892dd1    81c4bc000000
                         ret                                                       // 0x00892dd7    c3
_jmp_addr_0x00892dd8:    {disp32} mov     ecx, dword ptr [eax + 0x000000b8]        // 0x00892dd8    8b88b8000000
                         test             ecx, ecx                                 // 0x00892dde    85c9
                         {disp8} je       _jmp_addr_0x00892dee                     // 0x00892de0    740c
                         mov              eax, 0x00000002                          // 0x00892de2    b802000000
                         add              esp, 0x000000bc                          // 0x00892de7    81c4bc000000
                         ret                                                       // 0x00892ded    c3
_jmp_addr_0x00892dee:    {disp32} mov     edx, dword ptr [eax + 0x000000b4]        // 0x00892dee    8b90b4000000
                         xor.s            ecx, ecx                                 // 0x00892df4    33c9
                         test             edx, edx                                 // 0x00892df6    85d2
                         setne            cl                                       // 0x00892df8    0f95c1
                         mov.s            eax, ecx                                 // 0x00892dfb    8bc1
                         add              esp, 0x000000bc                          // 0x00892dfd    81c4bc000000
                         ret                                                       // 0x00892e03    c3
                         nop                                                       // 0x00892e04    90
                         nop                                                       // 0x00892e05    90
                         nop                                                       // 0x00892e06    90
                         nop                                                       // 0x00892e07    90
                         nop                                                       // 0x00892e08    90
                         nop                                                       // 0x00892e09    90
                         nop                                                       // 0x00892e0a    90
                         nop                                                       // 0x00892e0b    90
                         nop                                                       // 0x00892e0c    90
                         nop                                                       // 0x00892e0d    90
                         nop                                                       // 0x00892e0e    90
                         nop                                                       // 0x00892e0f    90
_jmp_addr_0x00892e10:    {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x00892e10    8b442404
                         sub              esp, 0x10                                // 0x00892e14    83ec10
                         cmp              dword ptr [eax], 0x00                    // 0x00892e17    833800
                         {disp8} je       _jmp_addr_0x00892e51                     // 0x00892e1a    7435
                         {disp8} mov      ecx, dword ptr [esp + 0x18]              // 0x00892e1c    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x00892e20    8b54241c
                         {disp8} mov      dword ptr [esp + 0x04], ecx              // 0x00892e24    894c2404
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x00892e28    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x08], edx              // 0x00892e2c    89542408
                         {disp32} mov     edx, dword ptr [eax + 0x0000037c]        // 0x00892e30    8b907c030000
                         push             ecx                                      // 0x00892e36    51
                         push             0x00892e60                               // 0x00892e37    68602e8900
                         push             edx                                      // 0x00892e3c    52
                         {disp8} mov      dword ptr [esp + 0x18], 0x00000000       // 0x00892e3d    c744241800000000
                         {disp8} mov      dword ptr [esp + 0x0c], eax              // 0x00892e45    8944240c
                         call             _jmp_addr_0x0088fc40                     // 0x00892e49    e8f2cdffff
                         add              esp, 0x0c                                // 0x00892e4e    83c40c
_jmp_addr_0x00892e51:    add              esp, 0x10                                // 0x00892e51    83c410
                         ret                                                       // 0x00892e54    c3
                         nop                                                       // 0x00892e55    90
                         nop                                                       // 0x00892e56    90
                         nop                                                       // 0x00892e57    90
                         nop                                                       // 0x00892e58    90
                         nop                                                       // 0x00892e59    90
                         nop                                                       // 0x00892e5a    90
                         nop                                                       // 0x00892e5b    90
                         nop                                                       // 0x00892e5c    90
                         nop                                                       // 0x00892e5d    90
                         nop                                                       // 0x00892e5e    90
                         nop                                                       // 0x00892e5f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892e60    8b442408
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]              // 0x00892e64    8b480c
                         {disp8} lea      edx, dword ptr [ecx + 0x01]              // 0x00892e67    8d5101
                         {disp8} mov      dword ptr [eax + 0x0c], edx              // 0x00892e6a    89500c
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x00892e6d    8b5008
                         push             edx                                      // 0x00892e70    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x00892e71    8b542408
                         push             edx                                      // 0x00892e75    52
                         push             ecx                                      // 0x00892e76    51
                         mov              ecx, dword ptr [eax]                     // 0x00892e77    8b08
                         push             ecx                                      // 0x00892e79    51
                         call             dword ptr [eax + 4]                      // 0x00892e7a    ff5004
                         add              esp, 0x10                                // 0x00892e7d    83c410
                         ret                                                       // 0x00892e80    c3
                         nop                                                       // 0x00892e81    90
                         nop                                                       // 0x00892e82    90
                         nop                                                       // 0x00892e83    90
                         nop                                                       // 0x00892e84    90
                         nop                                                       // 0x00892e85    90
                         nop                                                       // 0x00892e86    90
                         nop                                                       // 0x00892e87    90
                         nop                                                       // 0x00892e88    90
                         nop                                                       // 0x00892e89    90
                         nop                                                       // 0x00892e8a    90
                         nop                                                       // 0x00892e8b    90
                         nop                                                       // 0x00892e8c    90
                         nop                                                       // 0x00892e8d    90
                         nop                                                       // 0x00892e8e    90
                         nop                                                       // 0x00892e8f    90
_jmp_addr_0x00892e90:    sub              esp, 0x000000c8                          // 0x00892e90    81ecc8000000
                         push             esi                                      // 0x00892e96    56
                         push             edi                                      // 0x00892e97    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000d8]        // 0x00892e98    8bbc24d8000000
                         or               ecx, 0xffffffff                          // 0x00892e9f    83c9ff
                         xor.s            eax, eax                                 // 0x00892ea2    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x14]              // 0x00892ea4    8d542414
                         repne scasb                                               // 0x00892ea8    f2ae
                         not              ecx                                      // 0x00892eaa    f7d1
                         sub.s            edi, ecx                                 // 0x00892eac    2bf9
                         mov.s            eax, ecx                                 // 0x00892eae    8bc1
                         mov.s            esi, edi                                 // 0x00892eb0    8bf7
                         mov.s            edi, edx                                 // 0x00892eb2    8bfa
                         {disp32} mov     edx, dword ptr [esp + 0x000000dc]        // 0x00892eb4    8b9424dc000000
                         shr              ecx, 2                                   // 0x00892ebb    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892ebe    f3a5
                         mov.s            ecx, eax                                 // 0x00892ec0    8bc8
                         {disp32} mov     eax, dword ptr [esp + 0x000000e0]        // 0x00892ec2    8b8424e0000000
                         and              ecx, 0x03                                // 0x00892ec9    83e103
                         {disp8} mov      dword ptr [esp + 0x0c], edx              // 0x00892ecc    8954240c
                         {disp32} mov     edx, dword ptr [esp + 0x000000d4]        // 0x00892ed0    8b9424d4000000
                         {disp8} mov      dword ptr [esp + 0x10], eax              // 0x00892ed7    89442410
                         rep movsb                                                 // 0x00892edb    f3a4
                         {disp32} mov     eax, dword ptr [edx + 0x0000037c]        // 0x00892edd    8b827c030000
                         {disp8} lea      ecx, dword ptr [esp + 0x14]              // 0x00892ee3    8d4c2414
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x00892ee7    894c2408
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x00892eeb    8d4c2408
                         push             ecx                                      // 0x00892eef    51
                         push             0x00892f10                               // 0x00892ef0    68102f8900
                         push             eax                                      // 0x00892ef5    50
                         call             _jmp_addr_0x0088fc40                     // 0x00892ef6    e845cdffff
                         add              esp, 0x0c                                // 0x00892efb    83c40c
                         pop              edi                                      // 0x00892efe    5f
                         pop              esi                                      // 0x00892eff    5e
                         add              esp, 0x000000c8                          // 0x00892f00    81c4c8000000
                         ret                                                       // 0x00892f06    c3
                         nop                                                       // 0x00892f07    90
                         nop                                                       // 0x00892f08    90
                         nop                                                       // 0x00892f09    90
                         nop                                                       // 0x00892f0a    90
                         nop                                                       // 0x00892f0b    90
                         nop                                                       // 0x00892f0c    90
                         nop                                                       // 0x00892f0d    90
                         nop                                                       // 0x00892f0e    90
                         nop                                                       // 0x00892f0f    90
                         {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x00892f10    8b4c2404
                         push             esi                                      // 0x00892f14    56
                         push             edi                                      // 0x00892f15    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]              // 0x00892f16    8b7c2410
                         {disp32} mov     edx, dword ptr [ecx + 0x000000ac]        // 0x00892f1a    8b91ac000000
                         mov              eax, dword ptr [edi]                     // 0x00892f20    8b07
                         push             eax                                      // 0x00892f22    50
                         push             edx                                      // 0x00892f23    52
                         call             _jmp_addr_0x0088fbf0                     // 0x00892f24    e8c7ccffff
                         mov.s            esi, eax                                 // 0x00892f29    8bf0
                         add              esp, 0x08                                // 0x00892f2b    83c408
                         test             esi, esi                                 // 0x00892f2e    85f6
                         {disp8} je       _jmp_addr_0x00892f71                     // 0x00892f30    743f
                         {disp8} mov      eax, dword ptr [edi + 0x04]              // 0x00892f32    8b4704
                         push             0x18                                     // 0x00892f35    6a18
                         {disp32} lea     ecx, dword ptr [esi + 0x00000080]        // 0x00892f37    8d8e80000000
                         push             eax                                      // 0x00892f3d    50
                         push             ecx                                      // 0x00892f3e    51
                         call             _strncpy                                 // 0x00892f3f    e85c61f3ff
                         {disp32} mov     byte ptr [esi + 0x00000097], 0x00        // 0x00892f44    c6869700000000
                         {disp8} mov      edx, dword ptr [edi + 0x08]              // 0x00892f4b    8b5708
                         push             0x18                                     // 0x00892f4e    6a18
                         {disp32} lea     eax, dword ptr [esi + 0x00000098]        // 0x00892f50    8d8698000000
                         push             edx                                      // 0x00892f56    52
                         push             eax                                      // 0x00892f57    50
                         call             _strncpy                                 // 0x00892f58    e84361f3ff
                         add              esp, 0x18                                // 0x00892f5d    83c418
                         {disp32} mov     byte ptr [esi + 0x000000af], 0x00        // 0x00892f60    c686af00000000
                         {disp32} mov     dword ptr [esi + 0x000000b0], 0x00000001 // 0x00892f67    c786b000000001000000
_jmp_addr_0x00892f71:    pop              edi                                      // 0x00892f71    5f
                         pop              esi                                      // 0x00892f72    5e
                         ret                                                       // 0x00892f73    c3
                         nop                                                       // 0x00892f74    90
                         nop                                                       // 0x00892f75    90
                         nop                                                       // 0x00892f76    90
                         nop                                                       // 0x00892f77    90
                         nop                                                       // 0x00892f78    90
                         nop                                                       // 0x00892f79    90
                         nop                                                       // 0x00892f7a    90
                         nop                                                       // 0x00892f7b    90
                         nop                                                       // 0x00892f7c    90
                         nop                                                       // 0x00892f7d    90
                         nop                                                       // 0x00892f7e    90
                         nop                                                       // 0x00892f7f    90
_jmp_addr_0x00892f80:    sub              esp, 0x000000cc                          // 0x00892f80    81eccc000000
                         push             esi                                      // 0x00892f86    56
                         push             edi                                      // 0x00892f87    57
                         {disp32} mov     edi, dword ptr [esp + 0x000000dc]        // 0x00892f88    8bbc24dc000000
                         or               ecx, 0xffffffff                          // 0x00892f8f    83c9ff
                         xor.s            eax, eax                                 // 0x00892f92    33c0
                         {disp8} lea      edx, dword ptr [esp + 0x18]              // 0x00892f94    8d542418
                         repne scasb                                               // 0x00892f98    f2ae
                         not              ecx                                      // 0x00892f9a    f7d1
                         sub.s            edi, ecx                                 // 0x00892f9c    2bf9
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000       // 0x00892f9e    c744240800000000
                         mov.s            eax, ecx                                 // 0x00892fa6    8bc1
                         mov.s            esi, edi                                 // 0x00892fa8    8bf7
                         mov.s            edi, edx                                 // 0x00892faa    8bfa
                         {disp8} lea      edx, dword ptr [esp + 0x08]              // 0x00892fac    8d542408
                         shr              ecx, 2                                   // 0x00892fb0    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x00892fb3    f3a5
                         mov.s            ecx, eax                                 // 0x00892fb5    8bc8
                         {disp32} mov     eax, dword ptr [esp + 0x000000d8]        // 0x00892fb7    8b8424d8000000
                         and              ecx, 0x03                                // 0x00892fbe    83e103
                         push             edx                                      // 0x00892fc1    52
                         rep movsb                                                 // 0x00892fc2    f3a4
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]              // 0x00892fc4    8d4c241c
                         push             0x00893020                               // 0x00892fc8    6820308900
                         {disp8} mov      dword ptr [esp + 0x14], ecx              // 0x00892fcd    894c2414
                         {disp32} mov     ecx, dword ptr [eax + 0x0000037c]        // 0x00892fd1    8b887c030000
                         push             ecx                                      // 0x00892fd7    51
                         call             _jmp_addr_0x0088fc40                     // 0x00892fd8    e863ccffff
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00892fdd    8b442414
                         add              esp, 0x0c                                // 0x00892fe1    83c40c
                         test             eax, eax                                 // 0x00892fe4    85c0
                         pop              edi                                      // 0x00892fe6    5f
                         pop              esi                                      // 0x00892fe7    5e
                         {disp8} jne      _jmp_addr_0x00892ff3                     // 0x00892fe8    7509
                         xor.s            eax, eax                                 // 0x00892fea    33c0
                         add              esp, 0x000000cc                          // 0x00892fec    81c4cc000000
                         ret                                                       // 0x00892ff2    c3
_jmp_addr_0x00892ff3:    {disp32} mov     edx, dword ptr [esp + 0x000000d8]        // 0x00892ff3    8b9424d8000000
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00892ffa    8b442408
                         {disp32} mov     ecx, dword ptr [esp + 0x000000dc]        // 0x00892ffe    8b8c24dc000000
                         mov              dword ptr [edx], eax                     // 0x00893005    8902
                         {disp8} mov      edx, dword ptr [esp + 0x0c]              // 0x00893007    8b54240c
                         mov              dword ptr [ecx], edx                     // 0x0089300b    8911
                         mov              eax, 0x00000001                          // 0x0089300d    b801000000
                         add              esp, 0x000000cc                          // 0x00893012    81c4cc000000
                         ret                                                       // 0x00893018    c3
                         nop                                                       // 0x00893019    90
                         nop                                                       // 0x0089301a    90
                         nop                                                       // 0x0089301b    90
                         nop                                                       // 0x0089301c    90
                         nop                                                       // 0x0089301d    90
                         nop                                                       // 0x0089301e    90
                         nop                                                       // 0x0089301f    90
                         push             esi                                      // 0x00893020    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]              // 0x00893021    8b74240c
                         cmp              dword ptr [esi], 0x00                    // 0x00893025    833e00
                         {disp8} jne      _jmp_addr_0x00893066                     // 0x00893028    753c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x0089302a    8b4c2408
                         {disp8} mov      eax, dword ptr [esi + 0x04]              // 0x0089302e    8b4604
                         push             eax                                      // 0x00893031    50
                         {disp32} mov     edx, dword ptr [ecx + 0x000000ac]        // 0x00893032    8b91ac000000
                         push             edx                                      // 0x00893038    52
                         call             _jmp_addr_0x0088fbf0                     // 0x00893039    e8b2cbffff
                         add              esp, 0x08                                // 0x0089303e    83c408
                         test             eax, eax                                 // 0x00893041    85c0
                         {disp8} je       _jmp_addr_0x00893066                     // 0x00893043    7421
                         {disp32} mov     ecx, dword ptr [eax + 0x000000b0]        // 0x00893045    8b88b0000000
                         test             ecx, ecx                                 // 0x0089304b    85c9
                         {disp8} je       _jmp_addr_0x00893066                     // 0x0089304d    7417
                         {disp32} lea     ecx, dword ptr [eax + 0x00000080]        // 0x0089304f    8d8880000000
                         add              eax, 0x00000098                          // 0x00893055    0598000000
                         mov              dword ptr [esi], 0x00000001              // 0x0089305a    c70601000000
                         {disp8} mov      dword ptr [esi + 0x08], ecx              // 0x00893060    894e08
                         {disp8} mov      dword ptr [esi + 0x0c], eax              // 0x00893063    89460c
_jmp_addr_0x00893066:    pop              esi                                      // 0x00893066    5e
                         ret                                                       // 0x00893067    c3
                         nop                                                       // 0x00893068    90
                         nop                                                       // 0x00893069    90
                         nop                                                       // 0x0089306a    90
                         nop                                                       // 0x0089306b    90
                         nop                                                       // 0x0089306c    90
                         nop                                                       // 0x0089306d    90
                         nop                                                       // 0x0089306e    90
                         nop                                                       // 0x0089306f    90
_jmp_addr_0x00893070:    {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x00893070    8b442404
                         push             eax                                      // 0x00893074    50
                         push             0x00893090                               // 0x00893075    6890308900
                         {disp32} mov     eax, dword ptr [eax + 0x0000037c]        // 0x0089307a    8b807c030000
                         push             eax                                      // 0x00893080    50
                         call             _jmp_addr_0x0088fc40                     // 0x00893081    e8bacbffff
                         add              esp, 0x0c                                // 0x00893086    83c40c
                         ret                                                       // 0x00893089    c3
                         nop                                                       // 0x0089308a    90
                         nop                                                       // 0x0089308b    90
                         nop                                                       // 0x0089308c    90
                         nop                                                       // 0x0089308d    90
                         nop                                                       // 0x0089308e    90
                         nop                                                       // 0x0089308f    90
                         sub              esp, 0x08                                // 0x00893090    83ec08
                         push             esi                                      // 0x00893093    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]              // 0x00893094    8b742410
                         {disp8} lea      eax, dword ptr [esp + 0x04]              // 0x00893098    8d442404
                         push             edi                                      // 0x0089309c    57
                         {disp32} mov     ecx, dword ptr [esi + 0x000000ac]        // 0x0089309d    8b8eac000000
                         {disp8} mov      edi, dword ptr [esp + 0x18]              // 0x008930a3    8b7c2418
                         push             eax                                      // 0x008930a7    50
                         push             0x008930f0                               // 0x008930a8    68f0308900
                         push             ecx                                      // 0x008930ad    51
                         {disp8} mov      dword ptr [esp + 0x14], edi              // 0x008930ae    897c2414
                         {disp8} mov      dword ptr [esp + 0x18], esi              // 0x008930b2    89742418
                         call             _jmp_addr_0x0088fc80                     // 0x008930b6    e8c5cbffff
                         {disp32} mov     eax, dword ptr [esi + 0x000000a0]        // 0x008930bb    8b86a0000000
                         add              esp, 0x0c                                // 0x008930c1    83c40c
                         test             eax, eax                                 // 0x008930c4    85c0
                         {disp8} je       _jmp_addr_0x008930e9                     // 0x008930c6    7421
                         {disp32} mov     edx, dword ptr [esi + 0x000000a8]        // 0x008930c8    8b96a8000000
                         push             0x4                                      // 0x008930ce    6a04
                         push             esi                                      // 0x008930d0    56
                         push             0x0                                      // 0x008930d1    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x24]              // 0x008930d3    8d4c2424
                         push             edx                                      // 0x008930d7    52
                         push             ecx                                      // 0x008930d8    51
                         push             eax                                      // 0x008930d9    50
                         push             0xc                                      // 0x008930da    6a0c
                         push             edi                                      // 0x008930dc    57
                         {disp8} mov      dword ptr [esp + 0x38], esi              // 0x008930dd    89742438
                         call             _jmp_addr_0x00891120                     // 0x008930e1    e83ae0ffff
                         add              esp, 0x20                                // 0x008930e6    83c420
_jmp_addr_0x008930e9:    pop              edi                                      // 0x008930e9    5f
                         pop              esi                                      // 0x008930ea    5e
                         add              esp, 0x08                                // 0x008930eb    83c408
                         ret                                                       // 0x008930ee    c3
                         nop                                                       // 0x008930ef    90
                         {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x008930f0    8b4c2408
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x008930f4    8b442404
                         push             eax                                      // 0x008930f8    50
                         {disp8} mov      edx, dword ptr [ecx + 0x04]              // 0x008930f9    8b5104
                         {disp32} mov     eax, dword ptr [edx + 0x000000ac]        // 0x008930fc    8b82ac000000
                         push             eax                                      // 0x00893102    50
                         call             _jmp_addr_0x0088fba0                     // 0x00893103    e898caffff
                         add              esp, 0x08                                // 0x00893108    83c408
                         ret                                                       // 0x0089310b    c3
                         nop                                                       // 0x0089310c    90
                         nop                                                       // 0x0089310d    90
                         nop                                                       // 0x0089310e    90
                         nop                                                       // 0x0089310f    90
_jmp_addr_0x00893110:    push             ebx                                      // 0x00893110    53
                         push             edi                                      // 0x00893111    57
                         call             _jmp_addr_0x0088a8d0                     // 0x00893112    e8b977ffff
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]              // 0x00893117    8b5c240c
                         mov.s            edi, eax                                 // 0x0089311b    8bf8
                         {disp32} mov     eax, dword ptr [ebx + 0x00000384]        // 0x0089311d    8b8384030000
                         test             eax, eax                                 // 0x00893123    85c0
                         {disp8} je       _jmp_addr_0x00893143                     // 0x00893125    741c
                         push             esi                                      // 0x00893127    56
_jmp_addr_0x00893128:    {disp8} mov      ecx, dword ptr [eax + 0x04]              // 0x00893128    8b4804
                         {disp8} mov      esi, dword ptr [eax + 0x24]              // 0x0089312b    8b7024
                         cmp.s            edi, ecx                                 // 0x0089312e    3bf9
                         {disp8} jbe      _jmp_addr_0x0089313c                     // 0x00893130    760a
                         push             eax                                      // 0x00893132    50
                         push             ebx                                      // 0x00893133    53
                         call             _jmp_addr_0x00893150                     // 0x00893134    e817000000
                         add              esp, 0x08                                // 0x00893139    83c408
_jmp_addr_0x0089313c:    test             esi, esi                                 // 0x0089313c    85f6
                         mov.s            eax, esi                                 // 0x0089313e    8bc6
                         {disp8} jne      _jmp_addr_0x00893128                     // 0x00893140    75e6
                         pop              esi                                      // 0x00893142    5e
_jmp_addr_0x00893143:    pop              edi                                      // 0x00893143    5f
                         pop              ebx                                      // 0x00893144    5b
                         ret                                                       // 0x00893145    c3
                         nop                                                       // 0x00893146    90
                         nop                                                       // 0x00893147    90
                         nop                                                       // 0x00893148    90
                         nop                                                       // 0x00893149    90
                         nop                                                       // 0x0089314a    90
                         nop                                                       // 0x0089314b    90
                         nop                                                       // 0x0089314c    90
                         nop                                                       // 0x0089314d    90
                         nop                                                       // 0x0089314e    90
                         nop                                                       // 0x0089314f    90
_jmp_addr_0x00893150:    {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x00893150    8b442408
                         xor.s            ecx, ecx                                 // 0x00893154    33c9
                         sub              esp, 0x1c                                // 0x00893156    83ec1c
                         mov              edx, dword ptr [eax]                     // 0x00893159    8b10
                         cmp.s            edx, ecx                                 // 0x0089315b    3bd1
                         {disp8} jne      _jmp_addr_0x0089318a                     // 0x0089315d    752b
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x0089315f    8b542420
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x00893163    894c2400
                         {disp8} mov      dword ptr [esp + 0x04], ecx              // 0x00893167    894c2404
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x0089316b    894c2408
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x0089316f    894c240c
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x00893173    894c2410
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x00893177    8d4c2400
                         push             ecx                                      // 0x0089317b    51
                         push             eax                                      // 0x0089317c    50
                         push             edx                                      // 0x0089317d    52
                         call             _jmp_addr_0x00893410                     // 0x0089317e    e88d020000
                         add              esp, 0x0c                                // 0x00893183    83c40c
                         add              esp, 0x1c                                // 0x00893186    83c41c
                         ret                                                       // 0x00893189    c3
_jmp_addr_0x0089318a:    cmp              edx, 0x01                                // 0x0089318a    83fa01
                         {disp8} jne      _jmp_addr_0x008931b1                     // 0x0089318d    7522
                         {disp8} lea      edx, dword ptr [esp + 0x00]              // 0x0089318f    8d542400
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x00893193    894c2400
                         {disp8} mov      ecx, dword ptr [eax + 0x08]              // 0x00893197    8b4808
                         push             edx                                      // 0x0089319a    52
                         push             eax                                      // 0x0089319b    50
                         {disp8} mov      eax, dword ptr [esp + 0x28]              // 0x0089319c    8b442428
                         push             eax                                      // 0x008931a0    50
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x008931a1    894c2410
                         call             _jmp_addr_0x00893410                     // 0x008931a5    e866020000
                         add              esp, 0x0c                                // 0x008931aa    83c40c
                         add              esp, 0x1c                                // 0x008931ad    83c41c
                         ret                                                       // 0x008931b0    c3
_jmp_addr_0x008931b1:    cmp              edx, 0x02                                // 0x008931b1    83fa02
                         {disp8} jne      _jmp_addr_0x008931dc                     // 0x008931b4    7526
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x008931b6    8b5008
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x008931b9    894c2400
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x008931bd    894c2408
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x008931c1    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x008931c5    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008931c9    8b542420
                         push             ecx                                      // 0x008931cd    51
                         push             eax                                      // 0x008931ce    50
                         push             edx                                      // 0x008931cf    52
                         call             _jmp_addr_0x00893410                     // 0x008931d0    e83b020000
                         add              esp, 0x0c                                // 0x008931d5    83c40c
                         add              esp, 0x1c                                // 0x008931d8    83c41c
                         ret                                                       // 0x008931db    c3
_jmp_addr_0x008931dc:    cmp              edx, 0x03                                // 0x008931dc    83fa03
                         {disp8} jne      _jmp_addr_0x0089320f                     // 0x008931df    752e
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x008931e1    8b5008
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x008931e4    894c2400
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x008931e8    894c2408
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x008931ec    894c240c
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x008931f0    894c2410
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x008931f4    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x008931f8    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008931fc    8b542420
                         push             ecx                                      // 0x00893200    51
                         push             eax                                      // 0x00893201    50
                         push             edx                                      // 0x00893202    52
                         call             _jmp_addr_0x00893410                     // 0x00893203    e808020000
                         add              esp, 0x0c                                // 0x00893208    83c40c
                         add              esp, 0x1c                                // 0x0089320b    83c41c
                         ret                                                       // 0x0089320e    c3
_jmp_addr_0x0089320f:    cmp              edx, 0x04                                // 0x0089320f    83fa04
                         {disp8} jne      _jmp_addr_0x0089324a                     // 0x00893212    7536
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x00893214    8b5008
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x00893217    894c2400
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x0089321b    894c2408
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x0089321f    894c240c
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x00893223    894c2410
                         {disp8} mov      dword ptr [esp + 0x14], ecx              // 0x00893227    894c2414
                         {disp8} mov      dword ptr [esp + 0x18], ecx              // 0x0089322b    894c2418
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x0089322f    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x00893233    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x00893237    8b542420
                         push             ecx                                      // 0x0089323b    51
                         push             eax                                      // 0x0089323c    50
                         push             edx                                      // 0x0089323d    52
                         call             _jmp_addr_0x00893410                     // 0x0089323e    e8cd010000
                         add              esp, 0x0c                                // 0x00893243    83c40c
                         add              esp, 0x1c                                // 0x00893246    83c41c
                         ret                                                       // 0x00893249    c3
_jmp_addr_0x0089324a:    cmp              edx, 0x0a                                // 0x0089324a    83fa0a
                         {disp8} jne      _jmp_addr_0x00893279                     // 0x0089324d    752a
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x0089324f    8b5008
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x00893252    894c2400
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x00893256    894c2408
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x0089325a    894c240c
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x0089325e    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x00893262    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x00893266    8b542420
                         push             ecx                                      // 0x0089326a    51
                         push             eax                                      // 0x0089326b    50
                         push             edx                                      // 0x0089326c    52
                         call             _jmp_addr_0x00893410                     // 0x0089326d    e89e010000
                         add              esp, 0x0c                                // 0x00893272    83c40c
                         add              esp, 0x1c                                // 0x00893275    83c41c
                         ret                                                       // 0x00893278    c3
_jmp_addr_0x00893279:    cmp              edx, 0x0b                                // 0x00893279    83fa0b
                         {disp8} jne      _jmp_addr_0x00893295                     // 0x0089327c    7517
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x0089327e    8b542420
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x00893282    8d4c2400
                         push             ecx                                      // 0x00893286    51
                         push             eax                                      // 0x00893287    50
                         push             edx                                      // 0x00893288    52
                         call             _jmp_addr_0x00893410                     // 0x00893289    e882010000
                         add              esp, 0x0c                                // 0x0089328e    83c40c
                         add              esp, 0x1c                                // 0x00893291    83c41c
                         ret                                                       // 0x00893294    c3
_jmp_addr_0x00893295:    cmp              edx, 0x05                                // 0x00893295    83fa05
                         {disp8} jne      _jmp_addr_0x008932c0                     // 0x00893298    7526
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x0089329a    8b5008
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x0089329d    894c2400
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x008932a1    894c2408
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x008932a5    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x008932a9    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008932ad    8b542420
                         push             ecx                                      // 0x008932b1    51
                         push             eax                                      // 0x008932b2    50
                         push             edx                                      // 0x008932b3    52
                         call             _jmp_addr_0x00893410                     // 0x008932b4    e857010000
                         add              esp, 0x0c                                // 0x008932b9    83c40c
                         add              esp, 0x1c                                // 0x008932bc    83c41c
                         ret                                                       // 0x008932bf    c3
_jmp_addr_0x008932c0:    cmp              edx, 0x06                                // 0x008932c0    83fa06
                         {disp8} jne      _jmp_addr_0x008932f2                     // 0x008932c3    752d
                         {disp8} mov      edx, dword ptr [eax + 0x0c]              // 0x008932c5    8b500c
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x008932c8    894c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x008932cc    89542404
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x008932d0    8b5008
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x008932d3    894c240c
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x008932d7    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x08], edx              // 0x008932db    89542408
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008932df    8b542420
                         push             ecx                                      // 0x008932e3    51
                         push             eax                                      // 0x008932e4    50
                         push             edx                                      // 0x008932e5    52
                         call             _jmp_addr_0x00893410                     // 0x008932e6    e825010000
                         add              esp, 0x0c                                // 0x008932eb    83c40c
                         add              esp, 0x1c                                // 0x008932ee    83c41c
                         ret                                                       // 0x008932f1    c3
_jmp_addr_0x008932f2:    cmp              edx, 0x07                                // 0x008932f2    83fa07
                         {disp8} jne      _jmp_addr_0x0089330a                     // 0x008932f5    7513
                         push             ecx                                      // 0x008932f7    51
                         push             eax                                      // 0x008932f8    50
                         {disp8} mov      eax, dword ptr [esp + 0x28]              // 0x008932f9    8b442428
                         push             eax                                      // 0x008932fd    50
                         call             _jmp_addr_0x00893410                     // 0x008932fe    e80d010000
                         add              esp, 0x0c                                // 0x00893303    83c40c
                         add              esp, 0x1c                                // 0x00893306    83c41c
                         ret                                                       // 0x00893309    c3
_jmp_addr_0x0089330a:    cmp              edx, 0x08                                // 0x0089330a    83fa08
                         {disp8} jne      _jmp_addr_0x00893335                     // 0x0089330d    7526
                         {disp8} mov      edx, dword ptr [eax + 0x08]              // 0x0089330f    8b5008
                         {disp8} mov      dword ptr [esp + 0x08], ecx              // 0x00893312    894c2408
                         {disp8} mov      dword ptr [esp + 0x0c], ecx              // 0x00893316    894c240c
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x0089331a    8d4c2400
                         {disp8} mov      dword ptr [esp + 0x04], edx              // 0x0089331e    89542404
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x00893322    8b542420
                         push             ecx                                      // 0x00893326    51
                         push             eax                                      // 0x00893327    50
                         push             edx                                      // 0x00893328    52
                         call             _jmp_addr_0x00893410                     // 0x00893329    e8e2000000
                         add              esp, 0x0c                                // 0x0089332e    83c40c
                         add              esp, 0x1c                                // 0x00893331    83c41c
                         ret                                                       // 0x00893334    c3
_jmp_addr_0x00893335:    cmp              edx, 0x09                                // 0x00893335    83fa09
                         {disp8} jne      _jmp_addr_0x00893363                     // 0x00893338    7529
                         {disp8} mov      edx, dword ptr [eax + 0x0c]              // 0x0089333a    8b500c
                         {disp8} mov      dword ptr [esp + 0x00], ecx              // 0x0089333d    894c2400
                         {disp8} mov      ecx, dword ptr [eax + 0x08]              // 0x00893341    8b4808
                         {disp8} mov      dword ptr [esp + 0x08], edx              // 0x00893344    89542408
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x00893348    8b542420
                         {disp8} mov      dword ptr [esp + 0x04], ecx              // 0x0089334c    894c2404
                         {disp8} lea      ecx, dword ptr [esp + 0x00]              // 0x00893350    8d4c2400
                         push             ecx                                      // 0x00893354    51
                         push             eax                                      // 0x00893355    50
                         push             edx                                      // 0x00893356    52
                         call             _jmp_addr_0x00893410                     // 0x00893357    e8b4000000
                         add              esp, 0x0c                                // 0x0089335c    83c40c
                         add              esp, 0x1c                                // 0x0089335f    83c41c
                         ret                                                       // 0x00893362    c3
_jmp_addr_0x00893363:    cmp              edx, 0x0c                                // 0x00893363    83fa0c
                         {disp8} jne      _jmp_addr_0x00893376                     // 0x00893366    750e
                         push             eax                                      // 0x00893368    50
                         {disp8} mov      eax, dword ptr [esp + 0x24]              // 0x00893369    8b442424
                         push             eax                                      // 0x0089336d    50
                         call             _jmp_addr_0x00893380                     // 0x0089336e    e80d000000
                         add              esp, 0x08                                // 0x00893373    83c408
_jmp_addr_0x00893376:    add              esp, 0x1c                                // 0x00893376    83c41c
                         ret                                                       // 0x00893379    c3
                         nop                                                       // 0x0089337a    90
                         nop                                                       // 0x0089337b    90
                         nop                                                       // 0x0089337c    90
                         nop                                                       // 0x0089337d    90
                         nop                                                       // 0x0089337e    90
                         nop                                                       // 0x0089337f    90
_jmp_addr_0x00893380:    push             esi                                      // 0x00893380    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x00893381    8b742408
                         xor.s            ecx, ecx                                 // 0x00893385    33c9
                         push             edi                                      // 0x00893387    57
                         {disp32} mov     edx, dword ptr [esi + 0x00000384]        // 0x00893388    8b9684030000
                         mov.s            eax, edx                                 // 0x0089338e    8bc2
                         test             eax, eax                                 // 0x00893390    85c0
                         {disp8} je       _jmp_addr_0x008933d6                     // 0x00893392    7442
                         {disp8} mov      edi, dword ptr [esp + 0x10]              // 0x00893394    8b7c2410
_jmp_addr_0x00893398:    cmp.s            eax, edi                                 // 0x00893398    3bc7
                         {disp8} je       _jmp_addr_0x008933a8                     // 0x0089339a    740c
                         mov.s            ecx, eax                                 // 0x0089339c    8bc8
                         {disp8} mov      eax, dword ptr [eax + 0x24]              // 0x0089339e    8b4024
                         test             eax, eax                                 // 0x008933a1    85c0
                         {disp8} jne      _jmp_addr_0x00893398                     // 0x008933a3    75f3
                         pop              edi                                      // 0x008933a5    5f
                         pop              esi                                      // 0x008933a6    5e
                         ret                                                       // 0x008933a7    c3
_jmp_addr_0x008933a8:    cmp.s            edx, eax                                 // 0x008933a8    3bd0
                         {disp8} jne      _jmp_addr_0x008933b5                     // 0x008933aa    7509
                         {disp8} mov      edx, dword ptr [eax + 0x24]              // 0x008933ac    8b5024
                         {disp32} mov     dword ptr [esi + 0x00000384], edx        // 0x008933af    899684030000
_jmp_addr_0x008933b5:    cmp              dword ptr [esi + 0x00000388], eax        // 0x008933b5    398688030000
                         {disp8} jne      _jmp_addr_0x008933c3                     // 0x008933bb    7506
                         {disp32} mov     dword ptr [esi + 0x00000388], ecx        // 0x008933bd    898e88030000
_jmp_addr_0x008933c3:    test             ecx, ecx                                 // 0x008933c3    85c9
                         {disp8} je       _jmp_addr_0x008933cd                     // 0x008933c5    7406
                         {disp8} mov      edx, dword ptr [eax + 0x24]              // 0x008933c7    8b5024
                         {disp8} mov      dword ptr [ecx + 0x24], edx              // 0x008933ca    895124
_jmp_addr_0x008933cd:    push             eax                                      // 0x008933cd    50
                         call             _jmp_addr_0x008933e0                     // 0x008933ce    e80d000000
                         add              esp, 0x04                                // 0x008933d3    83c404
_jmp_addr_0x008933d6:    pop              edi                                      // 0x008933d6    5f
                         pop              esi                                      // 0x008933d7    5e
                         ret                                                       // 0x008933d8    c3
                         nop                                                       // 0x008933d9    90
                         nop                                                       // 0x008933da    90
                         nop                                                       // 0x008933db    90
                         nop                                                       // 0x008933dc    90
                         nop                                                       // 0x008933dd    90
                         nop                                                       // 0x008933de    90
                         nop                                                       // 0x008933df    90
_jmp_addr_0x008933e0:    push             esi                                      // 0x008933e0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x008933e1    8b742408
                         {disp8} mov      eax, dword ptr [esi + 0x1c]              // 0x008933e5    8b461c
                         push             eax                                      // 0x008933e8    50
                         call             _free                                    // 0x008933e9    e89833f3ff
                         {disp8} mov      ecx, dword ptr [esi + 0x08]              // 0x008933ee    8b4e08
                         push             ecx                                      // 0x008933f1    51
                         call             _free                                    // 0x008933f2    e88f33f3ff
                         {disp8} mov      edx, dword ptr [esi + 0x0c]              // 0x008933f7    8b560c
                         push             edx                                      // 0x008933fa    52
                         call             _free                                    // 0x008933fb    e88633f3ff
                         push             esi                                      // 0x00893400    56
                         call             _free                                    // 0x00893401    e88033f3ff
                         add              esp, 0x10                                // 0x00893406    83c410
                         pop              esi                                      // 0x00893409    5e
                         ret                                                       // 0x0089340a    c3
                         nop                                                       // 0x0089340b    90
                         nop                                                       // 0x0089340c    90
                         nop                                                       // 0x0089340d    90
                         nop                                                       // 0x0089340e    90
                         nop                                                       // 0x0089340f    90
_jmp_addr_0x00893410:    push             ebx                                      // 0x00893410    53
                         push             ebp                                      // 0x00893411    55
                         {disp8} mov      ebp, dword ptr [esp + 0x0c]              // 0x00893412    8b6c240c
                         push             esi                                      // 0x00893416    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]              // 0x00893417    8b742414
                         push             edi                                      // 0x0089341b    57
                         mov              eax, dword ptr [esi]                     // 0x0089341c    8b06
                         test             eax, eax                                 // 0x0089341e    85c0
                         {disp32} jne     _jmp_addr_0x008934a6                     // 0x00893420    0f8580000000
                         {disp8} mov      eax, dword ptr [esi + 0x14]              // 0x00893426    8b4614
                         {disp8} mov      edi, dword ptr [esi + 0x1c]              // 0x00893429    8b7e1c
                         test             eax, eax                                 // 0x0089342c    85c0
                         {disp8} je       _jmp_addr_0x0089344d                     // 0x0089342e    741d
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x00893430    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x00893433    8b5618
                         push             0x14                                     // 0x00893436    6a14
                         push             0x0                                      // 0x00893438    6a00
                         push             ecx                                      // 0x0089343a    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x0089343b    8b4c2428
                         push             edx                                      // 0x0089343f    52
                         push             ecx                                      // 0x00893440    51
                         push             eax                                      // 0x00893441    50
                         push             0xf                                      // 0x00893442    6a0f
                         push             ebp                                      // 0x00893444    55
                         call             _jmp_addr_0x00891120                     // 0x00893445    e8d6dcffff
                         add              esp, 0x20                                // 0x0089344a    83c420
_jmp_addr_0x0089344d:    {disp8} mov      eax, dword ptr [edi + 0x04]              // 0x0089344d    8b4704
                         xor.s            ebx, ebx                                 // 0x00893450    33db
                         test             eax, eax                                 // 0x00893452    85c0
                         {disp8} jle      _jmp_addr_0x00893479                     // 0x00893454    7e23
_jmp_addr_0x00893456:    {disp8} mov      edx, dword ptr [edi + 0x08]              // 0x00893456    8b5708
                         mov              eax, dword ptr [edx + ebx * 0x4]         // 0x00893459    8b049a
                         push             eax                                      // 0x0089345c    50
                         call             _free                                    // 0x0089345d    e82433f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x10]              // 0x00893462    8b4f10
                         mov              edx, dword ptr [ecx + ebx * 0x4]         // 0x00893465    8b1499
                         push             edx                                      // 0x00893468    52
                         call             _free                                    // 0x00893469    e81833f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x04]              // 0x0089346e    8b4704
                         add              esp, 0x08                                // 0x00893471    83c408
                         inc              ebx                                      // 0x00893474    43
                         cmp.s            ebx, eax                                 // 0x00893475    3bd8
                         {disp8} jl       _jmp_addr_0x00893456                     // 0x00893477    7cdd
_jmp_addr_0x00893479:    {disp8} mov      eax, dword ptr [edi + 0x08]              // 0x00893479    8b4708
                         push             eax                                      // 0x0089347c    50
                         call             _free                                    // 0x0089347d    e80433f3ff
                         {disp8} mov      ecx, dword ptr [edi + 0x10]              // 0x00893482    8b4f10
                         push             ecx                                      // 0x00893485    51
                         call             _free                                    // 0x00893486    e8fb32f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x0c]              // 0x0089348b    8b570c
                         push             edx                                      // 0x0089348e    52
                         call             _free                                    // 0x0089348f    e8f232f3ff
                         add              esp, 0x0c                                // 0x00893494    83c40c
                         push             esi                                      // 0x00893497    56
                         push             ebp                                      // 0x00893498    55
                         call             _jmp_addr_0x00893380                     // 0x00893499    e8e2feffff
                         add              esp, 0x08                                // 0x0089349e    83c408
                         pop              edi                                      // 0x008934a1    5f
                         pop              esi                                      // 0x008934a2    5e
                         pop              ebp                                      // 0x008934a3    5d
                         pop              ebx                                      // 0x008934a4    5b
                         ret                                                       // 0x008934a5    c3
_jmp_addr_0x008934a6:    cmp              eax, 0x01                                // 0x008934a6    83f801
                         {disp8} jne      _jmp_addr_0x008934e2                     // 0x008934a9    7537
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x008934ab    8b4610
                         test             eax, eax                                 // 0x008934ae    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x008934b0    0f8419030000
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x008934b6    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x008934b9    8b5618
                         push             0x8                                      // 0x008934bc    6a08
                         push             0x0                                      // 0x008934be    6a00
                         push             ecx                                      // 0x008934c0    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x008934c1    8b4c2428
                         push             edx                                      // 0x008934c5    52
                         push             ecx                                      // 0x008934c6    51
                         push             eax                                      // 0x008934c7    50
                         push             0x10                                     // 0x008934c8    6a10
                         push             ebp                                      // 0x008934ca    55
                         call             _jmp_addr_0x00891120                     // 0x008934cb    e850dcffff
                         add              esp, 0x20                                // 0x008934d0    83c420
                         push             esi                                      // 0x008934d3    56
                         push             ebp                                      // 0x008934d4    55
                         call             _jmp_addr_0x00893380                     // 0x008934d5    e8a6feffff
                         add              esp, 0x08                                // 0x008934da    83c408
                         pop              edi                                      // 0x008934dd    5f
                         pop              esi                                      // 0x008934de    5e
                         pop              ebp                                      // 0x008934df    5d
                         pop              ebx                                      // 0x008934e0    5b
                         ret                                                       // 0x008934e1    c3
_jmp_addr_0x008934e2:    cmp              eax, 0x02                                // 0x008934e2    83f802
                         {disp8} jne      _jmp_addr_0x00893520                     // 0x008934e5    7539
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x008934e7    8b4610
                         test             eax, eax                                 // 0x008934ea    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x008934ec    0f84dd020000
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]              // 0x008934f2    8b4c241c
                         push             0xc                                      // 0x008934f6    6a0c
                         {disp8} mov      edx, dword ptr [ecx + 0x04]              // 0x008934f8    8b5104
                         push             edx                                      // 0x008934fb    52
                         {disp8} mov      edx, dword ptr [esi + 0x20]              // 0x008934fc    8b5620
                         push             edx                                      // 0x008934ff    52
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x00893500    8b5618
                         push             edx                                      // 0x00893503    52
                         push             ecx                                      // 0x00893504    51
                         push             eax                                      // 0x00893505    50
                         push             0x11                                     // 0x00893506    6a11
                         push             ebp                                      // 0x00893508    55
                         call             _jmp_addr_0x00891120                     // 0x00893509    e812dcffff
                         add              esp, 0x20                                // 0x0089350e    83c420
                         push             esi                                      // 0x00893511    56
                         push             ebp                                      // 0x00893512    55
                         call             _jmp_addr_0x00893380                     // 0x00893513    e868feffff
                         add              esp, 0x08                                // 0x00893518    83c408
                         pop              edi                                      // 0x0089351b    5f
                         pop              esi                                      // 0x0089351c    5e
                         pop              ebp                                      // 0x0089351d    5d
                         pop              ebx                                      // 0x0089351e    5b
                         ret                                                       // 0x0089351f    c3
_jmp_addr_0x00893520:    cmp              eax, 0x03                                // 0x00893520    83f803
                         {disp8} jne      _jmp_addr_0x00893575                     // 0x00893523    7550
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x00893525    8b4610
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]              // 0x00893528    8b5e1c
                         test             eax, eax                                 // 0x0089352b    85c0
                         {disp8} je       _jmp_addr_0x0089354c                     // 0x0089352d    741d
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x0089352f    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x00893532    8b5618
                         push             0x14                                     // 0x00893535    6a14
                         push             0x0                                      // 0x00893537    6a00
                         push             ecx                                      // 0x00893539    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x0089353a    8b4c2428
                         push             edx                                      // 0x0089353e    52
                         push             ecx                                      // 0x0089353f    51
                         push             eax                                      // 0x00893540    50
                         push             0x14                                     // 0x00893541    6a14
                         push             ebp                                      // 0x00893543    55
                         call             _jmp_addr_0x00891120                     // 0x00893544    e8d7dbffff
                         add              esp, 0x20                                // 0x00893549    83c420
_jmp_addr_0x0089354c:    {disp8} mov      eax, dword ptr [ebx + 0x04]              // 0x0089354c    8b4304
                         xor.s            edi, edi                                 // 0x0089354f    33ff
                         test             eax, eax                                 // 0x00893551    85c0
                         {disp32} jle     _jmp_addr_0x008937ba                     // 0x00893553    0f8e61020000
_jmp_addr_0x00893559:    {disp8} mov      edx, dword ptr [ebx + 0x08]              // 0x00893559    8b5308
                         mov              eax, dword ptr [edx + edi * 0x4]         // 0x0089355c    8b04ba
                         push             eax                                      // 0x0089355f    50
                         call             _free                                    // 0x00893560    e82132f3ff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]              // 0x00893565    8b4304
                         add              esp, 0x04                                // 0x00893568    83c404
                         inc              edi                                      // 0x0089356b    47
                         cmp.s            edi, eax                                 // 0x0089356c    3bf8
                         {disp8} jl       _jmp_addr_0x00893559                     // 0x0089356e    7ce9
                         {disp32} jmp     _jmp_addr_0x008937ba                     // 0x00893570    e945020000
_jmp_addr_0x00893575:    cmp              eax, 0x04                                // 0x00893575    83f804
                         {disp8} jne      _jmp_addr_0x008935f6                     // 0x00893578    757c
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x0089357a    8b4610
                         {disp8} mov      edi, dword ptr [esi + 0x1c]              // 0x0089357d    8b7e1c
                         test             eax, eax                                 // 0x00893580    85c0
                         {disp8} je       _jmp_addr_0x008935a1                     // 0x00893582    741d
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x00893584    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x00893587    8b5618
                         push             0x1c                                     // 0x0089358a    6a1c
                         push             0x0                                      // 0x0089358c    6a00
                         push             ecx                                      // 0x0089358e    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x0089358f    8b4c2428
                         push             edx                                      // 0x00893593    52
                         push             ecx                                      // 0x00893594    51
                         push             eax                                      // 0x00893595    50
                         push             0x15                                     // 0x00893596    6a15
                         push             ebp                                      // 0x00893598    55
                         call             _jmp_addr_0x00891120                     // 0x00893599    e882dbffff
                         add              esp, 0x20                                // 0x0089359e    83c420
_jmp_addr_0x008935a1:    {disp8} mov      eax, dword ptr [edi + 0x0c]              // 0x008935a1    8b470c
                         xor.s            ebx, ebx                                 // 0x008935a4    33db
                         test             eax, eax                                 // 0x008935a6    85c0
                         {disp8} jle      _jmp_addr_0x008935c1                     // 0x008935a8    7e17
_jmp_addr_0x008935aa:    {disp8} mov      edx, dword ptr [edi + 0x10]              // 0x008935aa    8b5710
                         mov              eax, dword ptr [edx + ebx * 0x4]         // 0x008935ad    8b049a
                         push             eax                                      // 0x008935b0    50
                         call             _free                                    // 0x008935b1    e8d031f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x0c]              // 0x008935b6    8b470c
                         add              esp, 0x04                                // 0x008935b9    83c404
                         inc              ebx                                      // 0x008935bc    43
                         cmp.s            ebx, eax                                 // 0x008935bd    3bd8
                         {disp8} jl       _jmp_addr_0x008935aa                     // 0x008935bf    7ce9
_jmp_addr_0x008935c1:    {disp8} mov      ecx, dword ptr [edi + 0x10]              // 0x008935c1    8b4f10
                         push             ecx                                      // 0x008935c4    51
                         call             _free                                    // 0x008935c5    e8bc31f3ff
                         {disp8} mov      edx, dword ptr [edi + 0x04]              // 0x008935ca    8b5704
                         push             edx                                      // 0x008935cd    52
                         call             _free                                    // 0x008935ce    e8b331f3ff
                         {disp8} mov      eax, dword ptr [edi + 0x08]              // 0x008935d3    8b4708
                         push             eax                                      // 0x008935d6    50
                         call             _free                                    // 0x008935d7    e8aa31f3ff
                         mov              ecx, dword ptr [edi]                     // 0x008935dc    8b0f
                         push             ecx                                      // 0x008935de    51
                         call             _free                                    // 0x008935df    e8a231f3ff
                         add              esp, 0x10                                // 0x008935e4    83c410
                         push             esi                                      // 0x008935e7    56
                         push             ebp                                      // 0x008935e8    55
                         call             _jmp_addr_0x00893380                     // 0x008935e9    e892fdffff
                         add              esp, 0x08                                // 0x008935ee    83c408
                         pop              edi                                      // 0x008935f1    5f
                         pop              esi                                      // 0x008935f2    5e
                         pop              ebp                                      // 0x008935f3    5d
                         pop              ebx                                      // 0x008935f4    5b
                         ret                                                       // 0x008935f5    c3
_jmp_addr_0x008935f6:    cmp              eax, 0x0a                                // 0x008935f6    83f80a
                         {disp8} jne      _jmp_addr_0x00893632                     // 0x008935f9    7537
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x008935fb    8b4610
                         test             eax, eax                                 // 0x008935fe    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x00893600    0f84c9010000
                         {disp8} mov      edx, dword ptr [esi + 0x20]              // 0x00893606    8b5620
                         {disp8} mov      ecx, dword ptr [esi + 0x18]              // 0x00893609    8b4e18
                         push             0x10                                     // 0x0089360c    6a10
                         push             0x0                                      // 0x0089360e    6a00
                         push             edx                                      // 0x00893610    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x00893611    8b542428
                         push             ecx                                      // 0x00893615    51
                         push             edx                                      // 0x00893616    52
                         push             eax                                      // 0x00893617    50
                         push             0x16                                     // 0x00893618    6a16
                         push             ebp                                      // 0x0089361a    55
                         call             _jmp_addr_0x00891120                     // 0x0089361b    e800dbffff
                         add              esp, 0x20                                // 0x00893620    83c420
                         push             esi                                      // 0x00893623    56
                         push             ebp                                      // 0x00893624    55
                         call             _jmp_addr_0x00893380                     // 0x00893625    e856fdffff
                         add              esp, 0x08                                // 0x0089362a    83c408
                         pop              edi                                      // 0x0089362d    5f
                         pop              esi                                      // 0x0089362e    5e
                         pop              ebp                                      // 0x0089362f    5d
                         pop              ebx                                      // 0x00893630    5b
                         ret                                                       // 0x00893631    c3
_jmp_addr_0x00893632:    cmp              eax, 0x0b                                // 0x00893632    83f80b
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x00893635    0f8494010000
                         cmp              eax, 0x05                                // 0x0089363b    83f805
                         {disp8} jne      _jmp_addr_0x00893677                     // 0x0089363e    7537
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x00893640    8b4610
                         test             eax, eax                                 // 0x00893643    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x00893645    0f8484010000
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x0089364b    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x0089364e    8b5618
                         push             0xc                                      // 0x00893651    6a0c
                         push             0x0                                      // 0x00893653    6a00
                         push             ecx                                      // 0x00893655    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x00893656    8b4c2428
                         push             edx                                      // 0x0089365a    52
                         push             ecx                                      // 0x0089365b    51
                         push             eax                                      // 0x0089365c    50
                         push             0x12                                     // 0x0089365d    6a12
                         push             ebp                                      // 0x0089365f    55
                         call             _jmp_addr_0x00891120                     // 0x00893660    e8bbdaffff
                         add              esp, 0x20                                // 0x00893665    83c420
                         push             esi                                      // 0x00893668    56
                         push             ebp                                      // 0x00893669    55
                         call             _jmp_addr_0x00893380                     // 0x0089366a    e811fdffff
                         add              esp, 0x08                                // 0x0089366f    83c408
                         pop              edi                                      // 0x00893672    5f
                         pop              esi                                      // 0x00893673    5e
                         pop              ebp                                      // 0x00893674    5d
                         pop              ebx                                      // 0x00893675    5b
                         ret                                                       // 0x00893676    c3
_jmp_addr_0x00893677:    cmp              eax, 0x06                                // 0x00893677    83f806
                         {disp8} jne      _jmp_addr_0x008936b3                     // 0x0089367a    7537
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x0089367c    8b4610
                         test             eax, eax                                 // 0x0089367f    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x00893681    0f8448010000
                         {disp8} mov      edx, dword ptr [esi + 0x20]              // 0x00893687    8b5620
                         {disp8} mov      ecx, dword ptr [esi + 0x18]              // 0x0089368a    8b4e18
                         push             0x10                                     // 0x0089368d    6a10
                         push             0x0                                      // 0x0089368f    6a00
                         push             edx                                      // 0x00893691    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x00893692    8b542428
                         push             ecx                                      // 0x00893696    51
                         push             edx                                      // 0x00893697    52
                         push             eax                                      // 0x00893698    50
                         push             0x17                                     // 0x00893699    6a17
                         push             ebp                                      // 0x0089369b    55
                         call             _jmp_addr_0x00891120                     // 0x0089369c    e87fdaffff
                         add              esp, 0x20                                // 0x008936a1    83c420
                         push             esi                                      // 0x008936a4    56
                         push             ebp                                      // 0x008936a5    55
                         call             _jmp_addr_0x00893380                     // 0x008936a6    e8d5fcffff
                         add              esp, 0x08                                // 0x008936ab    83c408
                         pop              edi                                      // 0x008936ae    5f
                         pop              esi                                      // 0x008936af    5e
                         pop              ebp                                      // 0x008936b0    5d
                         pop              ebx                                      // 0x008936b1    5b
                         ret                                                       // 0x008936b2    c3
_jmp_addr_0x008936b3:    cmp              eax, 0x07                                // 0x008936b3    83f807
                         {disp8} jne      _jmp_addr_0x008936d5                     // 0x008936b6    751d
                         {disp8} mov      eax, dword ptr [esi + 0x1c]              // 0x008936b8    8b461c
                         mov              ecx, dword ptr [eax]                     // 0x008936bb    8b08
                         push             ecx                                      // 0x008936bd    51
                         call             _free                                    // 0x008936be    e8c330f3ff
                         add              esp, 0x04                                // 0x008936c3    83c404
                         push             esi                                      // 0x008936c6    56
                         push             ebp                                      // 0x008936c7    55
                         call             _jmp_addr_0x00893380                     // 0x008936c8    e8b3fcffff
                         add              esp, 0x08                                // 0x008936cd    83c408
                         pop              edi                                      // 0x008936d0    5f
                         pop              esi                                      // 0x008936d1    5e
                         pop              ebp                                      // 0x008936d2    5d
                         pop              ebx                                      // 0x008936d3    5b
                         ret                                                       // 0x008936d4    c3
_jmp_addr_0x008936d5:    cmp              eax, 0x08                                // 0x008936d5    83f808
                         {disp8} jne      _jmp_addr_0x00893732                     // 0x008936d8    7558
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x008936da    8b4610
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]              // 0x008936dd    8b5e1c
                         test             eax, eax                                 // 0x008936e0    85c0
                         {disp8} je       _jmp_addr_0x00893701                     // 0x008936e2    741d
                         {disp8} mov      edx, dword ptr [esi + 0x20]              // 0x008936e4    8b5620
                         {disp8} mov      ecx, dword ptr [esi + 0x18]              // 0x008936e7    8b4e18
                         push             0x10                                     // 0x008936ea    6a10
                         push             0x0                                      // 0x008936ec    6a00
                         push             edx                                      // 0x008936ee    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x008936ef    8b542428
                         push             ecx                                      // 0x008936f3    51
                         push             edx                                      // 0x008936f4    52
                         push             eax                                      // 0x008936f5    50
                         push             0x18                                     // 0x008936f6    6a18
                         push             ebp                                      // 0x008936f8    55
                         call             _jmp_addr_0x00891120                     // 0x008936f9    e822daffff
                         add              esp, 0x20                                // 0x008936fe    83c420
_jmp_addr_0x00893701:    mov              eax, dword ptr [ebx]                     // 0x00893701    8b03
                         xor.s            edi, edi                                 // 0x00893703    33ff
                         test             eax, eax                                 // 0x00893705    85c0
                         {disp32} jle     _jmp_addr_0x008937cf                     // 0x00893707    0f8ec2000000
_jmp_addr_0x0089370d:    {disp8} mov      eax, dword ptr [ebx + 0x04]              // 0x0089370d    8b4304
                         mov              ecx, dword ptr [eax + edi * 0x4]         // 0x00893710    8b0cb8
                         push             ecx                                      // 0x00893713    51
                         call             _free                                    // 0x00893714    e86d30f3ff
                         mov              eax, dword ptr [ebx]                     // 0x00893719    8b03
                         add              esp, 0x04                                // 0x0089371b    83c404
                         inc              edi                                      // 0x0089371e    47
                         cmp.s            edi, eax                                 // 0x0089371f    3bf8
                         {disp8} jl       _jmp_addr_0x0089370d                     // 0x00893721    7cea
                         push             esi                                      // 0x00893723    56
                         push             ebp                                      // 0x00893724    55
                         call             _jmp_addr_0x00893380                     // 0x00893725    e856fcffff
                         add              esp, 0x08                                // 0x0089372a    83c408
                         pop              edi                                      // 0x0089372d    5f
                         pop              esi                                      // 0x0089372e    5e
                         pop              ebp                                      // 0x0089372f    5d
                         pop              ebx                                      // 0x00893730    5b
                         ret                                                       // 0x00893731    c3
_jmp_addr_0x00893732:    cmp              eax, 0x09                                // 0x00893732    83f809
                         {disp8} jne      _jmp_addr_0x0089376e                     // 0x00893735    7537
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x00893737    8b4610
                         test             eax, eax                                 // 0x0089373a    85c0
                         {disp32} je      _jmp_addr_0x008937cf                     // 0x0089373c    0f848d000000
                         {disp8} mov      edx, dword ptr [esi + 0x20]              // 0x00893742    8b5620
                         {disp8} mov      ecx, dword ptr [esi + 0x18]              // 0x00893745    8b4e18
                         push             0xc                                      // 0x00893748    6a0c
                         push             0x0                                      // 0x0089374a    6a00
                         push             edx                                      // 0x0089374c    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x0089374d    8b542428
                         push             ecx                                      // 0x00893751    51
                         push             edx                                      // 0x00893752    52
                         push             eax                                      // 0x00893753    50
                         push             0x1a                                     // 0x00893754    6a1a
                         push             ebp                                      // 0x00893756    55
                         call             _jmp_addr_0x00891120                     // 0x00893757    e8c4d9ffff
                         add              esp, 0x20                                // 0x0089375c    83c420
                         push             esi                                      // 0x0089375f    56
                         push             ebp                                      // 0x00893760    55
                         call             _jmp_addr_0x00893380                     // 0x00893761    e81afcffff
                         add              esp, 0x08                                // 0x00893766    83c408
                         pop              edi                                      // 0x00893769    5f
                         pop              esi                                      // 0x0089376a    5e
                         pop              ebp                                      // 0x0089376b    5d
                         pop              ebx                                      // 0x0089376c    5b
                         ret                                                       // 0x0089376d    c3
_jmp_addr_0x0089376e:    cmp              eax, 0x0c                                // 0x0089376e    83f80c
                         {disp8} jne      _jmp_addr_0x008937cf                     // 0x00893771    755c
                         {disp8} mov      eax, dword ptr [esi + 0x10]              // 0x00893773    8b4610
                         {disp8} mov      ebx, dword ptr [esi + 0x1c]              // 0x00893776    8b5e1c
                         test             eax, eax                                 // 0x00893779    85c0
                         {disp8} je       _jmp_addr_0x0089379a                     // 0x0089377b    741d
                         {disp8} mov      ecx, dword ptr [esi + 0x20]              // 0x0089377d    8b4e20
                         {disp8} mov      edx, dword ptr [esi + 0x18]              // 0x00893780    8b5618
                         push             0x10                                     // 0x00893783    6a10
                         push             0x0                                      // 0x00893785    6a00
                         push             ecx                                      // 0x00893787    51
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x00893788    8b4c2428
                         push             edx                                      // 0x0089378c    52
                         push             ecx                                      // 0x0089378d    51
                         push             eax                                      // 0x0089378e    50
                         push             0x1b                                     // 0x0089378f    6a1b
                         push             ebp                                      // 0x00893791    55
                         call             _jmp_addr_0x00891120                     // 0x00893792    e889d9ffff
                         add              esp, 0x20                                // 0x00893797    83c420
_jmp_addr_0x0089379a:    {disp8} mov      eax, dword ptr [ebx + 0x04]              // 0x0089379a    8b4304
                         xor.s            edi, edi                                 // 0x0089379d    33ff
                         test             eax, eax                                 // 0x0089379f    85c0
                         {disp8} jle      _jmp_addr_0x008937ba                     // 0x008937a1    7e17
_jmp_addr_0x008937a3:    {disp8} mov      edx, dword ptr [ebx + 0x08]              // 0x008937a3    8b5308
                         mov              eax, dword ptr [edx + edi * 0x4]         // 0x008937a6    8b04ba
                         push             eax                                      // 0x008937a9    50
                         call             _free                                    // 0x008937aa    e8d72ff3ff
                         {disp8} mov      eax, dword ptr [ebx + 0x04]              // 0x008937af    8b4304
                         add              esp, 0x04                                // 0x008937b2    83c404
                         inc              edi                                      // 0x008937b5    47
                         cmp.s            edi, eax                                 // 0x008937b6    3bf8
                         {disp8} jl       _jmp_addr_0x008937a3                     // 0x008937b8    7ce9
_jmp_addr_0x008937ba:    {disp8} mov      ecx, dword ptr [ebx + 0x08]              // 0x008937ba    8b4b08
                         push             ecx                                      // 0x008937bd    51
                         call             _free                                    // 0x008937be    e8c32ff3ff
                         {disp8} mov      edx, dword ptr [ebx + 0x0c]              // 0x008937c3    8b530c
                         push             edx                                      // 0x008937c6    52
                         call             _free                                    // 0x008937c7    e8ba2ff3ff
                         add              esp, 0x08                                // 0x008937cc    83c408
_jmp_addr_0x008937cf:    push             esi                                      // 0x008937cf    56
                         push             ebp                                      // 0x008937d0    55
                         call             _jmp_addr_0x00893380                     // 0x008937d1    e8aafbffff
                         add              esp, 0x08                                // 0x008937d6    83c408
                         pop              edi                                      // 0x008937d9    5f
                         pop              esi                                      // 0x008937da    5e
                         pop              ebp                                      // 0x008937db    5d
                         pop              ebx                                      // 0x008937dc    5b
                         ret                                                       // 0x008937dd    c3
                         nop                                                       // 0x008937de    90
                         nop                                                       // 0x008937df    90
_jmp_addr_0x008937e0:    {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008937e0    8b4c2404
                         {disp32} mov     eax, dword ptr [ecx + 0x0000038c]        // 0x008937e4    8b818c030000
                         cmp              eax, 0x7fffffff                          // 0x008937ea    3dffffff7f
                         {disp8} jne      _jmp_addr_0x008937fc                     // 0x008937ef    750b
                         {disp32} mov     dword ptr [ecx + 0x0000038c], 0x00000001 // 0x008937f1    c7818c03000001000000
                         ret                                                       // 0x008937fb    c3
_jmp_addr_0x008937fc:    {disp8} lea      edx, dword ptr [eax + 0x01]              // 0x008937fc    8d5001
                         {disp32} mov     dword ptr [ecx + 0x0000038c], edx        // 0x008937ff    89918c030000
                         ret                                                       // 0x00893805    c3
                         nop                                                       // 0x00893806    90
                         nop                                                       // 0x00893807    90
                         nop                                                       // 0x00893808    90
                         nop                                                       // 0x00893809    90
                         nop                                                       // 0x0089380a    90
                         nop                                                       // 0x0089380b    90
                         nop                                                       // 0x0089380c    90
                         nop                                                       // 0x0089380d    90
                         nop                                                       // 0x0089380e    90
                         nop                                                       // 0x0089380f    90
_jmp_addr_0x00893810:    {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x00893810    8b442404
                         {disp32} mov     eax, dword ptr [eax + 0x00000384]        // 0x00893814    8b8084030000
                         test             eax, eax                                 // 0x0089381a    85c0
                         {disp8} je       _jmp_addr_0x0089382e                     // 0x0089381c    7410
                         {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x0089381e    8b4c2408
_jmp_addr_0x00893822:    cmp              dword ptr [eax + 0x20], ecx              // 0x00893822    394820
                         {disp8} je       _jmp_addr_0x00893831                     // 0x00893825    740a
                         {disp8} mov      eax, dword ptr [eax + 0x24]              // 0x00893827    8b4024
                         test             eax, eax                                 // 0x0089382a    85c0
                         {disp8} jne      _jmp_addr_0x00893822                     // 0x0089382c    75f4
_jmp_addr_0x0089382e:    xor.s            eax, eax                                 // 0x0089382e    33c0
                         ret                                                       // 0x00893830    c3
_jmp_addr_0x00893831:    mov              eax, 0x00000001                          // 0x00893831    b801000000
                         ret                                                       // 0x00893836    c3
                         nop                                                       // 0x00893837    90
                         nop                                                       // 0x00893838    90
                         nop                                                       // 0x00893839    90
                         nop                                                       // 0x0089383a    90
                         nop                                                       // 0x0089383b    90
                         nop                                                       // 0x0089383c    90
                         nop                                                       // 0x0089383d    90
                         nop                                                       // 0x0089383e    90
                         nop                                                       // 0x0089383f    90
_jmp_addr_0x00893840:    push             esi                                      // 0x00893840    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]              // 0x00893841    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x00000384]        // 0x00893845    8b8684030000
                         test             eax, eax                                 // 0x0089384b    85c0
                         {disp8} je       _jmp_addr_0x00893863                     // 0x0089384d    7414
_jmp_addr_0x0089384f:    push             eax                                      // 0x0089384f    50
                         push             esi                                      // 0x00893850    56
                         call             _jmp_addr_0x00893380                     // 0x00893851    e82afbffff
                         {disp32} mov     eax, dword ptr [esi + 0x00000384]        // 0x00893856    8b8684030000
                         add              esp, 0x08                                // 0x0089385c    83c408
                         test             eax, eax                                 // 0x0089385f    85c0
                         {disp8} jne      _jmp_addr_0x0089384f                     // 0x00893861    75ec
_jmp_addr_0x00893863:    pop              esi                                      // 0x00893863    5e
                         ret                                                       // 0x00893864    c3
                         nop                                                       // 0x00893865    90
                         nop                                                       // 0x00893866    90
                         nop                                                       // 0x00893867    90
                         nop                                                       // 0x00893868    90
                         nop                                                       // 0x00893869    90
                         nop                                                       // 0x0089386a    90
                         nop                                                       // 0x0089386b    90
                         nop                                                       // 0x0089386c    90
                         nop                                                       // 0x0089386d    90
                         nop                                                       // 0x0089386e    90
                         nop                                                       // 0x0089386f    90
_jmp_addr_0x00893870:    push             0x14                                     // 0x00893870    6a14
                         call             _malloc                                  // 0x00893872    e8d52df3ff
                         add              esp, 0x04                                // 0x00893877    83c404
                         test             eax, eax                                 // 0x0089387a    85c0
                         {disp8} jne      _jmp_addr_0x0089387f                     // 0x0089387c    7501
                         ret                                                       // 0x0089387e    c3
_jmp_addr_0x0089387f:    mov.s            edx, eax                                 // 0x0089387f    8bd0
                         xor.s            ecx, ecx                                 // 0x00893881    33c9
                         push             eax                                      // 0x00893883    50
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893884    8b442414
                         mov              dword ptr [edx], ecx                     // 0x00893888    890a
                         push             eax                                      // 0x0089388a    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x0089388b    8b44240c
                         {disp8} mov      dword ptr [edx + 0x04], ecx              // 0x0089388f    894a04
                         {disp8} mov      dword ptr [edx + 0x08], ecx              // 0x00893892    894a08
                         {disp8} mov      dword ptr [edx + 0x0c], ecx              // 0x00893895    894a0c
                         {disp8} mov      dword ptr [edx + 0x10], ecx              // 0x00893898    894a10
                         {disp8} mov      ecx, dword ptr [esp + 0x14]              // 0x0089389b    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x10]              // 0x0089389f    8b542410
                         push             ecx                                      // 0x008938a3    51
                         push             edx                                      // 0x008938a4    52
                         push             0x0                                      // 0x008938a5    6a00
                         push             0x0                                      // 0x008938a7    6a00
                         push             0x0                                      // 0x008938a9    6a00
                         push             eax                                      // 0x008938ab    50
                         call             _jmp_addr_0x008938c0                     // 0x008938ac    e80f000000
                         add              esp, 0x20                                // 0x008938b1    83c420
                         ret                                                       // 0x008938b4    c3
                         nop                                                       // 0x008938b5    90
                         nop                                                       // 0x008938b6    90
                         nop                                                       // 0x008938b7    90
                         nop                                                       // 0x008938b8    90
                         nop                                                       // 0x008938b9    90
                         nop                                                       // 0x008938ba    90
                         nop                                                       // 0x008938bb    90
                         nop                                                       // 0x008938bc    90
                         nop                                                       // 0x008938bd    90
                         nop                                                       // 0x008938be    90
                         nop                                                       // 0x008938bf    90
_jmp_addr_0x008938c0:    push             esi                                      // 0x008938c0    56
                         push             0x28                                     // 0x008938c1    6a28
                         call             _malloc                                  // 0x008938c3    e8842df3ff
                         mov.s            esi, eax                                 // 0x008938c8    8bf0
                         add              esp, 0x04                                // 0x008938ca    83c404
                         test             esi, esi                                 // 0x008938cd    85f6
                         {disp8} jne      _jmp_addr_0x008938d3                     // 0x008938cf    7502
                         pop              esi                                      // 0x008938d1    5e
                         ret                                                       // 0x008938d2    c3
_jmp_addr_0x008938d3:    push             edi                                      // 0x008938d3    57
                         mov              ecx, 0x0000000a                          // 0x008938d4    b90a000000
                         xor.s            eax, eax                                 // 0x008938d9    33c0
                         mov.s            edi, esi                                 // 0x008938db    8bfe
                         rep stosd                                                 // 0x008938dd    f3ab
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x008938df    8b442410
                         mov              dword ptr [esi], eax                     // 0x008938e3    8906
                         call             _jmp_addr_0x0088a8d0                     // 0x008938e5    e8e66fffff
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]              // 0x008938ea    8b4c241c
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008938ee    8b542420
                         add              eax, 0x00007530                          // 0x008938f2    0530750000
                         {disp8} mov      dword ptr [esi + 0x10], ecx              // 0x008938f7    894e10
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x008938fa    8b4c2428
                         {disp8} mov      dword ptr [esi + 0x04], eax              // 0x008938fe    894604
                         {disp8} mov      eax, dword ptr [esp + 0x24]              // 0x00893901    8b442424
                         {disp8} mov      dword ptr [esi + 0x14], edx              // 0x00893905    895614
                         {disp8} mov      dword ptr [esi + 0x18], eax              // 0x00893908    894618
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x0089390b    8b442414
                         test             eax, eax                                 // 0x0089390f    85c0
                         {disp8} mov      dword ptr [esi + 0x1c], ecx              // 0x00893911    894e1c
                         {disp8} je       _jmp_addr_0x00893924                     // 0x00893914    740e
                         push             eax                                      // 0x00893916    50
                         call             __strdup                                 // 0x00893917    e8c073f4ff
                         add              esp, 0x04                                // 0x0089391c    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax              // 0x0089391f    894608
                         {disp8} jmp      _jmp_addr_0x0089392b                     // 0x00893922    eb07
_jmp_addr_0x00893924:    {disp8} mov      dword ptr [esi + 0x08], 0x00000000       // 0x00893924    c7460800000000
_jmp_addr_0x0089392b:    {disp8} mov      eax, dword ptr [esp + 0x18]              // 0x0089392b    8b442418
                         test             eax, eax                                 // 0x0089392f    85c0
                         {disp8} je       _jmp_addr_0x00893941                     // 0x00893931    740e
                         push             eax                                      // 0x00893933    50
                         call             __strdup                                 // 0x00893934    e8a373f4ff
                         add              esp, 0x04                                // 0x00893939    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], eax              // 0x0089393c    89460c
                         {disp8} jmp      _jmp_addr_0x00893948                     // 0x0089393f    eb07
_jmp_addr_0x00893941:    {disp8} mov      dword ptr [esi + 0x0c], 0x00000000       // 0x00893941    c7460c00000000
_jmp_addr_0x00893948:    {disp8} mov      edi, dword ptr [esp + 0x0c]              // 0x00893948    8b7c240c
                         push             edi                                      // 0x0089394c    57
                         call             _jmp_addr_0x008937e0                     // 0x0089394d    e88efeffff
                         {disp8} mov      dword ptr [esi + 0x20], eax              // 0x00893952    894620
                         {disp32} mov     eax, dword ptr [edi + 0x00000384]        // 0x00893955    8b8784030000
                         add              esp, 0x04                                // 0x0089395b    83c404
                         test             eax, eax                                 // 0x0089395e    85c0
                         {disp8} jne      _jmp_addr_0x00893974                     // 0x00893960    7512
                         {disp32} mov     dword ptr [edi + 0x00000384], esi        // 0x00893962    89b784030000
                         {disp32} mov     dword ptr [edi + 0x00000388], esi        // 0x00893968    89b788030000
                         {disp8} mov      eax, dword ptr [esi + 0x20]              // 0x0089396e    8b4620
                         pop              edi                                      // 0x00893971    5f
                         pop              esi                                      // 0x00893972    5e
                         ret                                                       // 0x00893973    c3
_jmp_addr_0x00893974:    {disp32} mov     edx, dword ptr [edi + 0x00000388]        // 0x00893974    8b9788030000
                         {disp8} mov      dword ptr [edx + 0x24], esi              // 0x0089397a    897224
                         {disp32} mov     dword ptr [edi + 0x00000388], esi        // 0x0089397d    89b788030000
                         {disp8} mov      eax, dword ptr [esi + 0x20]              // 0x00893983    8b4620
                         pop              edi                                      // 0x00893986    5f
                         pop              esi                                      // 0x00893987    5e
                         ret                                                       // 0x00893988    c3
                         nop                                                       // 0x00893989    90
                         nop                                                       // 0x0089398a    90
                         nop                                                       // 0x0089398b    90
                         nop                                                       // 0x0089398c    90
                         nop                                                       // 0x0089398d    90
                         nop                                                       // 0x0089398e    90
                         nop                                                       // 0x0089398f    90
_jmp_addr_0x00893990:    push             ebx                                      // 0x00893990    53
                         push             0x00000130                               // 0x00893991    6830010000
                         call             _malloc                                  // 0x00893996    e8b12cf3ff
                         mov.s            ebx, eax                                 // 0x0089399b    8bd8
                         add              esp, 0x04                                // 0x0089399d    83c404
                         test             ebx, ebx                                 // 0x008939a0    85db
                         {disp8} jne      _jmp_addr_0x008939a6                     // 0x008939a2    7502
                         pop              ebx                                      // 0x008939a4    5b
                         ret                                                       // 0x008939a5    c3
_jmp_addr_0x008939a6:    push             esi                                      // 0x008939a6    56
                         {disp8} mov      esi, dword ptr [esp + 0x1c]              // 0x008939a7    8b74241c
                         push             edi                                      // 0x008939ab    57
                         mov              ecx, 0x0000004c                          // 0x008939ac    b94c000000
                         xor.s            eax, eax                                 // 0x008939b1    33c0
                         mov.s            edi, ebx                                 // 0x008939b3    8bfb
                         rep stosd                                                 // 0x008939b5    f3ab
                         mov              ecx, 0x0000000b                          // 0x008939b7    b90b000000
                         mov.s            edi, ebx                                 // 0x008939bc    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008939be    f3a5
                         {disp8} mov      edi, dword ptr [esp + 0x24]              // 0x008939c0    8b7c2424
                         or               ecx, 0xffffffff                          // 0x008939c4    83c9ff
                         repne scasb                                               // 0x008939c7    f2ae
                         not              ecx                                      // 0x008939c9    f7d1
                         sub.s            edi, ecx                                 // 0x008939cb    2bf9
                         {disp8} lea      edx, dword ptr [ebx + 0x30]              // 0x008939cd    8d5330
                         mov.s            eax, ecx                                 // 0x008939d0    8bc1
                         mov.s            esi, edi                                 // 0x008939d2    8bf7
                         mov.s            edi, edx                                 // 0x008939d4    8bfa
                         {disp8} mov      edx, dword ptr [esp + 0x18]              // 0x008939d6    8b542418
                         shr              ecx, 2                                   // 0x008939da    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]             // 0x008939dd    f3a5
                         mov.s            ecx, eax                                 // 0x008939df    8bc8
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x008939e1    8b442414
                         and              ecx, 0x03                                // 0x008939e5    83e103
                         push             ebx                                      // 0x008939e8    53
                         rep movsb                                                 // 0x008939e9    f3a4
                         {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x008939eb    8b4c2420
                         push             ecx                                      // 0x008939ef    51
                         {disp8} mov      ecx, dword ptr [esp + 0x18]              // 0x008939f0    8b4c2418
                         push             0x0                                      // 0x008939f4    6a00
                         push             edx                                      // 0x008939f6    52
                         push             0x0                                      // 0x008939f7    6a00
                         push             eax                                      // 0x008939f9    50
                         push             0x1                                      // 0x008939fa    6a01
                         push             ecx                                      // 0x008939fc    51
                         call             _jmp_addr_0x008938c0                     // 0x008939fd    e8befeffff
                         mov.s            esi, eax                                 // 0x00893a02    8bf0
                         add              esp, 0x20                                // 0x00893a04    83c420
                         test             esi, esi                                 // 0x00893a07    85f6
                         {disp8} jne      _jmp_addr_0x00893a14                     // 0x00893a09    7509
                         push             ebx                                      // 0x00893a0b    53
                         call             _free                                    // 0x00893a0c    e8752df3ff
                         add              esp, 0x04                                // 0x00893a11    83c404
_jmp_addr_0x00893a14:    mov.s            eax, esi                                 // 0x00893a14    8bc6
                         pop              edi                                      // 0x00893a16    5f
                         pop              esi                                      // 0x00893a17    5e
                         pop              ebx                                      // 0x00893a18    5b
                         ret                                                       // 0x00893a19    c3
                         nop                                                       // 0x00893a1a    90
                         nop                                                       // 0x00893a1b    90
                         nop                                                       // 0x00893a1c    90
                         nop                                                       // 0x00893a1d    90
                         nop                                                       // 0x00893a1e    90
                         nop                                                       // 0x00893a1f    90
_jmp_addr_0x00893a20:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893a20    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]              // 0x00893a24    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x00893a28    8b542408
                         push             0x0                                      // 0x00893a2c    6a00
                         push             eax                                      // 0x00893a2e    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893a2f    8b44240c
                         push             0x0                                      // 0x00893a33    6a00
                         push             ecx                                      // 0x00893a35    51
                         push             0x0                                      // 0x00893a36    6a00
                         push             edx                                      // 0x00893a38    52
                         push             0x2                                      // 0x00893a39    6a02
                         push             eax                                      // 0x00893a3b    50
                         call             _jmp_addr_0x008938c0                     // 0x00893a3c    e87ffeffff
                         add              esp, 0x20                                // 0x00893a41    83c420
                         ret                                                       // 0x00893a44    c3
                         nop                                                       // 0x00893a45    90
                         nop                                                       // 0x00893a46    90
                         nop                                                       // 0x00893a47    90
                         nop                                                       // 0x00893a48    90
                         nop                                                       // 0x00893a49    90
                         nop                                                       // 0x00893a4a    90
                         nop                                                       // 0x00893a4b    90
                         nop                                                       // 0x00893a4c    90
                         nop                                                       // 0x00893a4d    90
                         nop                                                       // 0x00893a4e    90
                         nop                                                       // 0x00893a4f    90
_jmp_addr_0x00893a50:    push             0x10                                     // 0x00893a50    6a10
                         call             _malloc                                  // 0x00893a52    e8f52bf3ff
                         add              esp, 0x04                                // 0x00893a57    83c404
                         test             eax, eax                                 // 0x00893a5a    85c0
                         {disp8} jne      _jmp_addr_0x00893a5f                     // 0x00893a5c    7501
                         ret                                                       // 0x00893a5e    c3
_jmp_addr_0x00893a5f:    mov.s            edx, eax                                 // 0x00893a5f    8bd0
                         xor.s            ecx, ecx                                 // 0x00893a61    33c9
                         push             eax                                      // 0x00893a63    50
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893a64    8b442414
                         mov              dword ptr [edx], ecx                     // 0x00893a68    890a
                         push             eax                                      // 0x00893a6a    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893a6b    8b44240c
                         {disp8} mov      dword ptr [edx + 0x04], ecx              // 0x00893a6f    894a04
                         {disp8} mov      dword ptr [edx + 0x08], ecx              // 0x00893a72    894a08
                         push             ecx                                      // 0x00893a75    51
                         {disp8} mov      dword ptr [edx + 0x0c], ecx              // 0x00893a76    894a0c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]              // 0x00893a79    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x00893a7d    8b542414
                         push             ecx                                      // 0x00893a81    51
                         push             0x0                                      // 0x00893a82    6a00
                         push             edx                                      // 0x00893a84    52
                         push             0x3                                      // 0x00893a85    6a03
                         push             eax                                      // 0x00893a87    50
                         call             _jmp_addr_0x008938c0                     // 0x00893a88    e833feffff
                         add              esp, 0x20                                // 0x00893a8d    83c420
                         ret                                                       // 0x00893a90    c3
                         nop                                                       // 0x00893a91    90
                         nop                                                       // 0x00893a92    90
                         nop                                                       // 0x00893a93    90
                         nop                                                       // 0x00893a94    90
                         nop                                                       // 0x00893a95    90
                         nop                                                       // 0x00893a96    90
                         nop                                                       // 0x00893a97    90
                         nop                                                       // 0x00893a98    90
                         nop                                                       // 0x00893a99    90
                         nop                                                       // 0x00893a9a    90
                         nop                                                       // 0x00893a9b    90
                         nop                                                       // 0x00893a9c    90
                         nop                                                       // 0x00893a9d    90
                         nop                                                       // 0x00893a9e    90
                         nop                                                       // 0x00893a9f    90
_jmp_addr_0x00893aa0:    push             esi                                      // 0x00893aa0    56
                         push             0x14                                     // 0x00893aa1    6a14
                         call             _malloc                                  // 0x00893aa3    e8a42bf3ff
                         mov.s            esi, eax                                 // 0x00893aa8    8bf0
                         add              esp, 0x04                                // 0x00893aaa    83c404
                         test             esi, esi                                 // 0x00893aad    85f6
                         {disp8} jne      _jmp_addr_0x00893ab3                     // 0x00893aaf    7502
                         pop              esi                                      // 0x00893ab1    5e
                         ret                                                       // 0x00893ab2    c3
_jmp_addr_0x00893ab3:    mov.s            ecx, esi                                 // 0x00893ab3    8bce
                         xor.s            eax, eax                                 // 0x00893ab5    33c0
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x00893ab7    8b542414
                         push             edi                                      // 0x00893abb    57
                         mov              dword ptr [ecx], eax                     // 0x00893abc    8901
                         push             esi                                      // 0x00893abe    56
                         push             edx                                      // 0x00893abf    52
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x00893ac0    8b542414
                         {disp8} mov      dword ptr [ecx + 0x04], eax              // 0x00893ac4    894104
                         {disp8} mov      dword ptr [ecx + 0x08], eax              // 0x00893ac7    894108
                         {disp8} mov      dword ptr [ecx + 0x0c], eax              // 0x00893aca    89410c
                         push             eax                                      // 0x00893acd    50
                         {disp8} mov      dword ptr [ecx + 0x10], eax              // 0x00893ace    894110
                         {disp8} mov      eax, dword ptr [esp + 0x20]              // 0x00893ad1    8b442420
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]              // 0x00893ad5    8b4c241c
                         push             eax                                      // 0x00893ad9    50
                         push             0x0                                      // 0x00893ada    6a00
                         push             ecx                                      // 0x00893adc    51
                         push             0x4                                      // 0x00893add    6a04
                         push             edx                                      // 0x00893adf    52
                         call             _jmp_addr_0x008938c0                     // 0x00893ae0    e8dbfdffff
                         mov.s            edi, eax                                 // 0x00893ae5    8bf8
                         add              esp, 0x20                                // 0x00893ae7    83c420
                         test             edi, edi                                 // 0x00893aea    85ff
                         {disp8} jne      _jmp_addr_0x00893af7                     // 0x00893aec    7509
                         push             esi                                      // 0x00893aee    56
                         call             _free                                    // 0x00893aef    e8922cf3ff
                         add              esp, 0x04                                // 0x00893af4    83c404
_jmp_addr_0x00893af7:    mov.s            eax, edi                                 // 0x00893af7    8bc7
                         pop              edi                                      // 0x00893af9    5f
                         pop              esi                                      // 0x00893afa    5e
                         ret                                                       // 0x00893afb    c3
                         nop                                                       // 0x00893afc    90
                         nop                                                       // 0x00893afd    90
                         nop                                                       // 0x00893afe    90
                         nop                                                       // 0x00893aff    90
_jmp_addr_0x00893b00:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893b00    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]              // 0x00893b04    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x00893b08    8b542408
                         push             0x0                                      // 0x00893b0c    6a00
                         push             eax                                      // 0x00893b0e    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893b0f    8b44240c
                         push             0x0                                      // 0x00893b13    6a00
                         push             ecx                                      // 0x00893b15    51
                         push             0x0                                      // 0x00893b16    6a00
                         push             edx                                      // 0x00893b18    52
                         push             0xa                                      // 0x00893b19    6a0a
                         push             eax                                      // 0x00893b1b    50
                         call             _jmp_addr_0x008938c0                     // 0x00893b1c    e89ffdffff
                         add              esp, 0x20                                // 0x00893b21    83c420
                         ret                                                       // 0x00893b24    c3
                         nop                                                       // 0x00893b25    90
                         nop                                                       // 0x00893b26    90
                         nop                                                       // 0x00893b27    90
                         nop                                                       // 0x00893b28    90
                         nop                                                       // 0x00893b29    90
                         nop                                                       // 0x00893b2a    90
                         nop                                                       // 0x00893b2b    90
                         nop                                                       // 0x00893b2c    90
                         nop                                                       // 0x00893b2d    90
                         nop                                                       // 0x00893b2e    90
                         nop                                                       // 0x00893b2f    90
_jmp_addr_0x00893b30:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893b30    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]              // 0x00893b34    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x00893b38    8b542408
                         push             0x0                                      // 0x00893b3c    6a00
                         push             eax                                      // 0x00893b3e    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893b3f    8b44240c
                         push             0x0                                      // 0x00893b43    6a00
                         push             ecx                                      // 0x00893b45    51
                         push             0x0                                      // 0x00893b46    6a00
                         push             edx                                      // 0x00893b48    52
                         push             0xb                                      // 0x00893b49    6a0b
                         push             eax                                      // 0x00893b4b    50
                         call             _jmp_addr_0x008938c0                     // 0x00893b4c    e86ffdffff
                         add              esp, 0x20                                // 0x00893b51    83c420
                         ret                                                       // 0x00893b54    c3
                         nop                                                       // 0x00893b55    90
                         nop                                                       // 0x00893b56    90
                         nop                                                       // 0x00893b57    90
                         nop                                                       // 0x00893b58    90
                         nop                                                       // 0x00893b59    90
                         nop                                                       // 0x00893b5a    90
                         nop                                                       // 0x00893b5b    90
                         nop                                                       // 0x00893b5c    90
                         nop                                                       // 0x00893b5d    90
                         nop                                                       // 0x00893b5e    90
                         nop                                                       // 0x00893b5f    90
_jmp_addr_0x00893b60:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893b60    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]              // 0x00893b64    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x00893b68    8b542408
                         push             0x0                                      // 0x00893b6c    6a00
                         push             eax                                      // 0x00893b6e    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893b6f    8b44240c
                         push             0x0                                      // 0x00893b73    6a00
                         push             ecx                                      // 0x00893b75    51
                         push             0x0                                      // 0x00893b76    6a00
                         push             edx                                      // 0x00893b78    52
                         push             0x5                                      // 0x00893b79    6a05
                         push             eax                                      // 0x00893b7b    50
                         call             _jmp_addr_0x008938c0                     // 0x00893b7c    e83ffdffff
                         add              esp, 0x20                                // 0x00893b81    83c420
                         ret                                                       // 0x00893b84    c3
                         nop                                                       // 0x00893b85    90
                         nop                                                       // 0x00893b86    90
                         nop                                                       // 0x00893b87    90
                         nop                                                       // 0x00893b88    90
                         nop                                                       // 0x00893b89    90
                         nop                                                       // 0x00893b8a    90
                         nop                                                       // 0x00893b8b    90
                         nop                                                       // 0x00893b8c    90
                         nop                                                       // 0x00893b8d    90
                         nop                                                       // 0x00893b8e    90
                         nop                                                       // 0x00893b8f    90
_jmp_addr_0x00893b90:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893b90    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x00893b94    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]              // 0x00893b98    8b54240c
                         push             0x0                                      // 0x00893b9c    6a00
                         push             eax                                      // 0x00893b9e    50
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893b9f    8b442410
                         push             0x0                                      // 0x00893ba3    6a00
                         push             ecx                                      // 0x00893ba5    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]              // 0x00893ba6    8b4c2414
                         push             edx                                      // 0x00893baa    52
                         push             eax                                      // 0x00893bab    50
                         push             0x6                                      // 0x00893bac    6a06
                         push             ecx                                      // 0x00893bae    51
                         call             _jmp_addr_0x008938c0                     // 0x00893baf    e80cfdffff
                         add              esp, 0x20                                // 0x00893bb4    83c420
                         ret                                                       // 0x00893bb7    c3
                         nop                                                       // 0x00893bb8    90
                         nop                                                       // 0x00893bb9    90
                         nop                                                       // 0x00893bba    90
                         nop                                                       // 0x00893bbb    90
                         nop                                                       // 0x00893bbc    90
                         nop                                                       // 0x00893bbd    90
                         nop                                                       // 0x00893bbe    90
                         nop                                                       // 0x00893bbf    90
_jmp_addr_0x00893bc0:    push             esi                                      // 0x00893bc0    56
                         push             0x4                                      // 0x00893bc1    6a04
                         call             _malloc                                  // 0x00893bc3    e8842af3ff
                         mov.s            esi, eax                                 // 0x00893bc8    8bf0
                         add              esp, 0x04                                // 0x00893bca    83c404
                         test             esi, esi                                 // 0x00893bcd    85f6
                         {disp8} jne      _jmp_addr_0x00893bd3                     // 0x00893bcf    7502
                         pop              esi                                      // 0x00893bd1    5e
                         ret                                                       // 0x00893bd2    c3
_jmp_addr_0x00893bd3:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893bd3    8b442410
                         mov              dword ptr [esi], 0x00000000              // 0x00893bd7    c70600000000
                         push             eax                                      // 0x00893bdd    50
                         call             __strdup                                 // 0x00893bde    e8f970f4ff
                         add              esp, 0x04                                // 0x00893be3    83c404
                         mov              dword ptr [esi], eax                     // 0x00893be6    8906
                         test             eax, eax                                 // 0x00893be8    85c0
                         push             esi                                      // 0x00893bea    56
                         {disp8} jne      _jmp_addr_0x00893bf9                     // 0x00893beb    750c
                         call             _free                                    // 0x00893bed    e8942bf3ff
                         add              esp, 0x04                                // 0x00893bf2    83c404
                         xor.s            eax, eax                                 // 0x00893bf5    33c0
                         pop              esi                                      // 0x00893bf7    5e
                         ret                                                       // 0x00893bf8    c3
_jmp_addr_0x00893bf9:    {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x00893bf9    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]              // 0x00893bfd    8b54240c
                         push             0x0                                      // 0x00893c01    6a00
                         push             0x0                                      // 0x00893c03    6a00
                         push             0x0                                      // 0x00893c05    6a00
                         push             0x0                                      // 0x00893c07    6a00
                         push             ecx                                      // 0x00893c09    51
                         push             0x7                                      // 0x00893c0a    6a07
                         push             edx                                      // 0x00893c0c    52
                         call             _jmp_addr_0x008938c0                     // 0x00893c0d    e8aefcffff
                         add              esp, 0x20                                // 0x00893c12    83c420
                         pop              esi                                      // 0x00893c15    5e
                         ret                                                       // 0x00893c16    c3
                         nop                                                       // 0x00893c17    90
                         nop                                                       // 0x00893c18    90
                         nop                                                       // 0x00893c19    90
                         nop                                                       // 0x00893c1a    90
                         nop                                                       // 0x00893c1b    90
                         nop                                                       // 0x00893c1c    90
                         nop                                                       // 0x00893c1d    90
                         nop                                                       // 0x00893c1e    90
                         nop                                                       // 0x00893c1f    90
_jmp_addr_0x00893c20:    push             0x8                                      // 0x00893c20    6a08
                         call             _malloc                                  // 0x00893c22    e8252af3ff
                         add              esp, 0x04                                // 0x00893c27    83c404
                         test             eax, eax                                 // 0x00893c2a    85c0
                         {disp8} jne      _jmp_addr_0x00893c2f                     // 0x00893c2c    7501
                         ret                                                       // 0x00893c2e    c3
_jmp_addr_0x00893c2f:    mov.s            edx, eax                                 // 0x00893c2f    8bd0
                         xor.s            ecx, ecx                                 // 0x00893c31    33c9
                         push             eax                                      // 0x00893c33    50
                         {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893c34    8b442414
                         mov              dword ptr [edx], ecx                     // 0x00893c38    890a
                         push             eax                                      // 0x00893c3a    50
                         {disp8} mov      eax, dword ptr [esp + 0x0c]              // 0x00893c3b    8b44240c
                         push             ecx                                      // 0x00893c3f    51
                         {disp8} mov      dword ptr [edx + 0x04], ecx              // 0x00893c40    894a04
                         {disp8} mov      ecx, dword ptr [esp + 0x18]              // 0x00893c43    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x00893c47    8b542414
                         push             ecx                                      // 0x00893c4b    51
                         push             0x0                                      // 0x00893c4c    6a00
                         push             edx                                      // 0x00893c4e    52
                         push             0x8                                      // 0x00893c4f    6a08
                         push             eax                                      // 0x00893c51    50
                         call             _jmp_addr_0x008938c0                     // 0x00893c52    e869fcffff
                         add              esp, 0x20                                // 0x00893c57    83c420
                         ret                                                       // 0x00893c5a    c3
                         nop                                                       // 0x00893c5b    90
                         nop                                                       // 0x00893c5c    90
                         nop                                                       // 0x00893c5d    90
                         nop                                                       // 0x00893c5e    90
                         nop                                                       // 0x00893c5f    90
_jmp_addr_0x00893c60:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893c60    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x00893c64    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]              // 0x00893c68    8b54240c
                         push             0x0                                      // 0x00893c6c    6a00
                         push             eax                                      // 0x00893c6e    50
                         {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x00893c6f    8b442410
                         push             0x0                                      // 0x00893c73    6a00
                         push             ecx                                      // 0x00893c75    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]              // 0x00893c76    8b4c2414
                         push             edx                                      // 0x00893c7a    52
                         push             eax                                      // 0x00893c7b    50
                         push             0x9                                      // 0x00893c7c    6a09
                         push             ecx                                      // 0x00893c7e    51
                         call             _jmp_addr_0x008938c0                     // 0x00893c7f    e83cfcffff
                         add              esp, 0x20                                // 0x00893c84    83c420
                         ret                                                       // 0x00893c87    c3
                         nop                                                       // 0x00893c88    90
                         nop                                                       // 0x00893c89    90
                         nop                                                       // 0x00893c8a    90
                         nop                                                       // 0x00893c8b    90
                         nop                                                       // 0x00893c8c    90
                         nop                                                       // 0x00893c8d    90
                         nop                                                       // 0x00893c8e    90
                         nop                                                       // 0x00893c8f    90
_jmp_addr_0x00893c90:    push             ebx                                      // 0x00893c90    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]              // 0x00893c91    8b5c2408
                         push             esi                                      // 0x00893c95    56
                         push             edi                                      // 0x00893c96    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]              // 0x00893c97    8b7c2414
                         push             edi                                      // 0x00893c9b    57
                         push             ebx                                      // 0x00893c9c    53
                         call             _jmp_addr_0x008924a0                     // 0x00893c9d    e8fee7ffff
                         mov.s            esi, eax                                 // 0x00893ca2    8bf0
                         add              esp, 0x08                                // 0x00893ca4    83c408
                         test             esi, esi                                 // 0x00893ca7    85f6
                         {disp8} je       _jmp_addr_0x00893ceb                     // 0x00893ca9    7440
                         {disp8} mov      eax, dword ptr [esi + 0x24]              // 0x00893cab    8b4624
                         test             eax, eax                                 // 0x00893cae    85c0
                         {disp8} je       _jmp_addr_0x00893ceb                     // 0x00893cb0    7439
                         push             0x10                                     // 0x00893cb2    6a10
                         call             _malloc                                  // 0x00893cb4    e89329f3ff
                         add              esp, 0x04                                // 0x00893cb9    83c404
                         test             eax, eax                                 // 0x00893cbc    85c0
                         {disp8} je       _jmp_addr_0x00893ceb                     // 0x00893cbe    742b
                         mov.s            edx, eax                                 // 0x00893cc0    8bd0
                         xor.s            ecx, ecx                                 // 0x00893cc2    33c9
                         push             eax                                      // 0x00893cc4    50
                         mov              dword ptr [edx], ecx                     // 0x00893cc5    890a
                         {disp8} mov      dword ptr [edx + 0x04], ecx              // 0x00893cc7    894a04
                         {disp8} mov      dword ptr [edx + 0x08], ecx              // 0x00893cca    894a08
                         {disp8} mov      dword ptr [edx + 0x0c], ecx              // 0x00893ccd    894a0c
                         {disp8} mov      eax, dword ptr [esi + 0x28]              // 0x00893cd0    8b4628
                         push             eax                                      // 0x00893cd3    50
                         push             ecx                                      // 0x00893cd4    51
                         {disp8} mov      ecx, dword ptr [esi + 0x24]              // 0x00893cd5    8b4e24
                         push             ecx                                      // 0x00893cd8    51
                         push             0x0                                      // 0x00893cd9    6a00
                         push             edi                                      // 0x00893cdb    57
                         push             0xc                                      // 0x00893cdc    6a0c
                         push             ebx                                      // 0x00893cde    53
                         call             _jmp_addr_0x008938c0                     // 0x00893cdf    e8dcfbffff
                         add              esp, 0x20                                // 0x00893ce4    83c420
                         pop              edi                                      // 0x00893ce7    5f
                         pop              esi                                      // 0x00893ce8    5e
                         pop              ebx                                      // 0x00893ce9    5b
                         ret                                                       // 0x00893cea    c3
_jmp_addr_0x00893ceb:    pop              edi                                      // 0x00893ceb    5f
                         pop              esi                                      // 0x00893cec    5e
                         xor.s            eax, eax                                 // 0x00893ced    33c0
                         pop              ebx                                      // 0x00893cef    5b
                         ret                                                       // 0x00893cf0    c3
                         nop                                                       // 0x00893cf1    90
                         nop                                                       // 0x00893cf2    90
                         nop                                                       // 0x00893cf3    90
                         nop                                                       // 0x00893cf4    90
                         nop                                                       // 0x00893cf5    90
                         nop                                                       // 0x00893cf6    90
                         nop                                                       // 0x00893cf7    90
                         nop                                                       // 0x00893cf8    90
                         nop                                                       // 0x00893cf9    90
                         nop                                                       // 0x00893cfa    90
                         nop                                                       // 0x00893cfb    90
                         nop                                                       // 0x00893cfc    90
                         nop                                                       // 0x00893cfd    90
                         nop                                                       // 0x00893cfe    90
                         nop                                                       // 0x00893cff    90
_jmp_addr_0x00893d00:    sub              esp, 0x0c                                // 0x00893d00    83ec0c
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x00893d03    8b4c2410
                         push             ebx                                      // 0x00893d07    53
                         push             ebp                                      // 0x00893d08    55
                         push             esi                                      // 0x00893d09    56
                         mov              al, byte ptr [ecx]                       // 0x00893d0a    8a01
                         push             edi                                      // 0x00893d0c    57
                         xor.s            edi, edi                                 // 0x00893d0d    33ff
                         cmp              al, 0x2b                                 // 0x00893d0f    3c2b
                         {disp8} mov      dword ptr [esp + 0x14], edi              // 0x00893d11    897c2414
                         {disp8} jne      _jmp_addr_0x00893d21                     // 0x00893d15    750a
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001       // 0x00893d17    c744241001000000
                         {disp8} jmp      _jmp_addr_0x00893d2d                     // 0x00893d1f    eb0c
_jmp_addr_0x00893d21:    cmp              al, 0x2d                                 // 0x00893d21    3c2d
                         {disp32} jne     _jmp_addr_0x00893e57                     // 0x00893d23    0f852e010000
                         {disp8} mov      dword ptr [esp + 0x10], edi              // 0x00893d29    897c2410
_jmp_addr_0x00893d2d:    inc              ecx                                      // 0x00893d2d    41
                         xor.s            ebp, ebp                                 // 0x00893d2e    33ed
_jmp_addr_0x00893d30:    movsx            eax, byte ptr [ecx]                      // 0x00893d30    0fbe01
                         inc              ecx                                      // 0x00893d33    41
                         cmp              eax, 0x77                                // 0x00893d34    83f877
                         {disp8} mov      dword ptr [esp + 0x18], eax              // 0x00893d37    89442418
                         {disp8} mov      dword ptr [esp + 0x20], ecx              // 0x00893d3b    894c2420
                         {disp32} ja      _jmp_addr_0x00893e37                     // 0x00893d3f    0f87f2000000
                         xor.s            edx, edx                                 // 0x00893d45    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x00893eb4]          // 0x00893d47    8a90b43e8900
                         jmp              dword ptr [edx*4 + 0x893e70]             // 0x00893d4d    ff2495703e8900
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000001       // 0x00893d54    c744241001000000
                         {disp8} jmp      _jmp_addr_0x00893d30                     // 0x00893d5c    ebd2
                         {disp8} mov      dword ptr [esp + 0x10], edi              // 0x00893d5e    897c2410
                         {disp8} jmp      _jmp_addr_0x00893d30                     // 0x00893d62    ebcc
                         xor.s            esi, esi                                 // 0x00893d64    33f6
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d66    eb6f
                         mov              esi, 0x00000002                          // 0x00893d68    be02000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d6d    eb68
                         mov              esi, 0x00000003                          // 0x00893d6f    be03000000
                         mov              edi, 0x00000001                          // 0x00893d74    bf01000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d79    eb5c
                         mov              esi, 0x00000004                          // 0x00893d7b    be04000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d80    eb55
                         mov              esi, 0x00000005                          // 0x00893d82    be05000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d87    eb4e
                         mov              esi, 0x00000006                          // 0x00893d89    be06000000
                         mov              edi, 0x00000001                          // 0x00893d8e    bf01000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d93    eb42
                         mov              esi, 0x00000007                          // 0x00893d95    be07000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893d9a    eb3b
                         mov              esi, 0x00000008                          // 0x00893d9c    be08000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893da1    eb34
                         mov              esi, 0x00000009                          // 0x00893da3    be09000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893da8    eb2d
                         mov              esi, 0x0000000a                          // 0x00893daa    be0a000000
                         mov              edi, 0x00000001                          // 0x00893daf    bf01000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893db4    eb21
                         mov              esi, 0x0000000b                          // 0x00893db6    be0b000000
                         mov              edi, 0x00000001                          // 0x00893dbb    bf01000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893dc0    eb15
                         mov              esi, 0x00000001                          // 0x00893dc2    be01000000
                         mov.s            edi, esi                                 // 0x00893dc7    8bfe
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893dc9    eb0c
                         mov              esi, 0x0000000c                          // 0x00893dcb    be0c000000
                         {disp8} jmp      _jmp_addr_0x00893dd7                     // 0x00893dd0    eb05
                         mov              esi, 0x0000000d                          // 0x00893dd2    be0d000000
_jmp_addr_0x00893dd7:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893dd7    8b442414
                         {disp8} lea      ebx, dword ptr [ebp + 0x0c]              // 0x00893ddb    8d5d0c
                         push             ebx                                      // 0x00893dde    53
                         push             eax                                      // 0x00893ddf    50
                         call             _realloc                                 // 0x00893de0    e8ba5af3ff
                         add              esp, 0x08                                // 0x00893de5    83c408
                         test             eax, eax                                 // 0x00893de8    85c0
                         {disp8} je       _jmp_addr_0x00893e4a                     // 0x00893dea    745e
                         {disp8} mov      dword ptr [esp + 0x14], eax              // 0x00893dec    89442414
                         add.s            eax, ebp                                 // 0x00893df0    03c5
                         mov.s            edx, eax                                 // 0x00893df2    8bd0
                         xor.s            ecx, ecx                                 // 0x00893df4    33c9
                         test             edi, edi                                 // 0x00893df6    85ff
                         mov              dword ptr [edx], ecx                     // 0x00893df8    890a
                         mov.s            ebp, ebx                                 // 0x00893dfa    8beb
                         {disp8} mov      dword ptr [edx + 0x04], ecx              // 0x00893dfc    894a04
                         {disp8} mov      dword ptr [edx + 0x08], ecx              // 0x00893dff    894a08
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x00893e02    8b4c2410
                         {disp8} mov      dword ptr [eax + 0x04], ecx              // 0x00893e06    894804
                         mov              dword ptr [eax], esi                     // 0x00893e09    8930
                         {disp8} je       _jmp_addr_0x00893e37                     // 0x00893e0b    742a
                         {disp8} mov      ecx, dword ptr [esp + 0x28]              // 0x00893e0d    8b4c2428
                         test             ecx, ecx                                 // 0x00893e11    85c9
                         {disp8} jle      _jmp_addr_0x00893e30                     // 0x00893e13    7e1b
                         {disp8} mov      ecx, dword ptr [esp + 0x24]              // 0x00893e15    8b4c2424
                         mov              edx, dword ptr [ecx]                     // 0x00893e19    8b11
                         add              ecx, 0x4                                 // 0x00893e1b    83c104
                         {disp8} mov      dword ptr [eax + 0x08], edx              // 0x00893e1e    895008
                         {disp8} mov      eax, dword ptr [esp + 0x28]              // 0x00893e21    8b442428
                         dec              eax                                      // 0x00893e25    48
                         {disp8} mov      dword ptr [esp + 0x24], ecx              // 0x00893e26    894c2424
                         {disp8} mov      dword ptr [esp + 0x28], eax              // 0x00893e2a    89442428
                         {disp8} jmp      _jmp_addr_0x00893e37                     // 0x00893e2e    eb07
_jmp_addr_0x00893e30:    {disp8} mov      dword ptr [eax + 0x08], 0x00000000       // 0x00893e30    c7400800000000
_jmp_addr_0x00893e37:    {disp8} mov      eax, dword ptr [esp + 0x18]              // 0x00893e37    8b442418
                         xor.s            edi, edi                                 // 0x00893e3b    33ff
                         cmp.s            eax, edi                                 // 0x00893e3d    3bc7
                         {disp8} je       _jmp_addr_0x00893e61                     // 0x00893e3f    7420
                         {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x00893e41    8b4c2420
                         {disp32} jmp     _jmp_addr_0x00893d30                     // 0x00893e45    e9e6feffff
_jmp_addr_0x00893e4a:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893e4a    8b442414
                         push             eax                                      // 0x00893e4e    50
                         call             _free                                    // 0x00893e4f    e83229f3ff
                         add              esp, 0x04                                // 0x00893e54    83c404
_jmp_addr_0x00893e57:    pop              edi                                      // 0x00893e57    5f
                         pop              esi                                      // 0x00893e58    5e
                         pop              ebp                                      // 0x00893e59    5d
                         xor.s            eax, eax                                 // 0x00893e5a    33c0
                         pop              ebx                                      // 0x00893e5c    5b
                         add              esp, 0x0c                                // 0x00893e5d    83c40c
                         ret                                                       // 0x00893e60    c3
_jmp_addr_0x00893e61:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00893e61    8b442414
                         pop              edi                                      // 0x00893e65    5f
                         pop              esi                                      // 0x00893e66    5e
                         pop              ebp                                      // 0x00893e67    5d
                         pop              ebx                                      // 0x00893e68    5b
                         add              esp, 0x0c                                // 0x00893e69    83c40c
                         ret                                                       // 0x00893e6c    c3

// Snippet: db, [0x00893e6d, 0x00893e70)
.byte 0x8d, 0x49, 0x00            // 0x00893e6d

// Snippet: jmptbl, [0x00893e70, 0x00893eb4)
.byte 0x64, 0x3d, 0x89, 0x00      // 0x00893e70
.byte 0x54, 0x3d, 0x89, 0x00      // 0x00893e74
.byte 0x5e, 0x3d, 0x89, 0x00      // 0x00893e78
.byte 0xc2, 0x3d, 0x89, 0x00      // 0x00893e7c
.byte 0x68, 0x3d, 0x89, 0x00      // 0x00893e80
.byte 0x89, 0x3d, 0x89, 0x00      // 0x00893e84
.byte 0x6f, 0x3d, 0x89, 0x00      // 0x00893e88
.byte 0x95, 0x3d, 0x89, 0x00      // 0x00893e8c
.byte 0x9c, 0x3d, 0x89, 0x00      // 0x00893e90
.byte 0xaa, 0x3d, 0x89, 0x00      // 0x00893e94
.byte 0x7b, 0x3d, 0x89, 0x00      // 0x00893e98
.byte 0x82, 0x3d, 0x89, 0x00      // 0x00893e9c
.byte 0xa3, 0x3d, 0x89, 0x00      // 0x00893ea0
.byte 0xcb, 0x3d, 0x89, 0x00      // 0x00893ea4
.byte 0xb6, 0x3d, 0x89, 0x00      // 0x00893ea8
.byte 0xd2, 0x3d, 0x89, 0x00      // 0x00893eac
.byte 0x37, 0x3e, 0x89, 0x00      // 0x00893eb0

// Snippet: ijmptbl, [0x00893eb4, 0x00893f2c)
.byte 0x00, 0x10, 0x10, 0x10      // 0x00893eb4
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893eb8
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ebc
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ec0
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ec4
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ec8
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ecc
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ed0
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ed4
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ed8
.byte 0x10, 0x10, 0x10, 0x01      // 0x00893edc
.byte 0x10, 0x02, 0x10, 0x10      // 0x00893ee0
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ee4
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ee8
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893eec
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ef0
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ef4
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893ef8
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893efc
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f00
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f04
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f08
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f0c
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f10
.byte 0x10, 0x10, 0x03, 0x10      // 0x00893f14
.byte 0x10, 0x10, 0x10, 0x10      // 0x00893f18
.byte 0x10, 0x04, 0x10, 0x05      // 0x00893f1c
.byte 0x06, 0x07, 0x08, 0x09      // 0x00893f20
.byte 0x0a, 0x10, 0x10, 0x0b      // 0x00893f24
.byte 0x0c, 0x0d, 0x0e, 0x0f      // 0x00893f28

// Snippet: db, [0x00893f2c, 0x00893f30)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00893f2c

