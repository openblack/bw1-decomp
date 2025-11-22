.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x0043bbb0
.extern _jmp_addr_0x0043bbd0
.extern _jmp_addr_0x0043bc00
.extern ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ
.extern _jmp_addr_0x0043bd70
.extern ?GetDesireToBeRepaired@BuildingSite@@QAEMXZ
.extern _jmp_addr_0x0043c120
.extern ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ
.extern _jmp_addr_0x0043d100
.extern _jmp_addr_0x0052d240
.extern ?GetForestCentreTree@Forest@@QAEPAVTree@@XZ
.extern ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x005dc8d0
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @__pl__9MapCoordsCFRC9MapCoords@16
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern _jmp_addr_0x0064a9f0
.extern ?IsNeutral@GPlayer@@QAE_NXZ
.extern @IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE@12
.extern _jmp_addr_0x0064d5d0
.extern _jmp_addr_0x00650280
.extern _jmp_addr_0x00650d70
.extern _jmp_addr_0x00650df0
.extern _jmp_addr_0x006510f0
.extern _jmp_addr_0x00651120
.extern _jmp_addr_0x006511b0
.extern _jmp_addr_0x00651210
.extern _jmp_addr_0x00655cb0
.extern _jmp_addr_0x00655cc0
.extern _jmp_addr_0x00655cf0
.extern _jmp_addr_0x00657f30
.extern _jmp_addr_0x00657f50
.extern _jmp_addr_0x00657fd0
.extern _jmp_addr_0x00657fe0
.extern _jmp_addr_0x00658230
.extern _jmp_addr_0x00658630
.extern _jmp_addr_0x00658700
.extern _jmp_addr_0x006588f0
.extern _jmp_addr_0x00658aa0
.extern _jmp_addr_0x00658bc0
.extern _jmp_addr_0x0065bcb0
.extern _jmp_addr_0x0065d1c0
.extern _jmp_addr_0x00664a50
.extern _jmp_addr_0x00665d40
.extern _jmp_addr_0x00665dd0
.extern _jmp_addr_0x00665fc0
.extern _jmp_addr_0x00666410
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern _jmp_addr_0x006e8b10
.extern _jmp_addr_0x006e9d10
.extern _jmp_addr_0x00726380
.extern _jmp_addr_0x00730380
.extern _jmp_addr_0x007337d0
.extern _jmp_addr_0x0073ae10
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern ?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z
.extern ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z
.extern _jmp_addr_0x00740ed0
.extern _jmp_addr_0x00741980
.extern _jmp_addr_0x00741ee0
.extern _jmp_addr_0x00747a90
.extern _jmp_addr_0x00747af0
.extern ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z
.extern ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z
.extern ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z
.extern _GetDistanceModifier__6GUtilsFff@8
.extern ?IsVillagerAvailable@Villager@@QAE_NXZ
.extern ?IsSexuallyActive@Villager@@QAEIXZ
.extern _jmp_addr_0x0077b920
.extern _jmp_addr_0x0077ce60
.extern _jmp_addr_0x00780480
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast

.globl _jmp_addr_0x00666820
.globl _jmp_addr_0x00666850
.globl _jmp_addr_0x006668f0
.globl _jmp_addr_0x006669d0
.globl _jmp_addr_0x00668650
.globl _jmp_addr_0x00668790

.globl _globl_ct_0x00666a80
.globl _globl_ct_0x00666ab0

start_0x00666820_0x00669790:
// Snippet: asm, [0x00666820, 0x0066976f)
_jmp_addr_0x00666820:    {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x00666820    8b54240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]              // 0x00666824    8d44240c
                         push               eax                                      // 0x00666828    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00666829    8b44240c
                         push               edx                                      // 0x0066682d    52
                         push               eax                                      // 0x0066682e    50
                         call               _jmp_addr_0x006668f0                     // 0x0066682f    e8bc000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00666834    8b44240c
                         test               eax, eax                                 // 0x00666838    85c0
                         {disp8} je         _jmp_addr_0x00666846                     // 0x0066683a    740a
                         {disp8} mov        ecx, dword ptr [esp + 0x04]              // 0x0066683c    8b4c2404
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x00666840    898194000000
_jmp_addr_0x00666846:    ret                0x000c                                   // 0x00666846    c20c00
                         nop                                                         // 0x00666849    90
                         nop                                                         // 0x0066684a    90
                         nop                                                         // 0x0066684b    90
                         nop                                                         // 0x0066684c    90
                         nop                                                         // 0x0066684d    90
                         nop                                                         // 0x0066684e    90
                         nop                                                         // 0x0066684f    90
_jmp_addr_0x00666850:    sub                esp, 0x0c                                // 0x00666850    83ec0c
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00666853    8b442414
                         push               ebx                                      // 0x00666857    53
                         push               ebp                                      // 0x00666858    55
                         push               esi                                      // 0x00666859    56
                         mov.s              ebx, ecx                                 // 0x0066685a    8bd9
                         push               edi                                      // 0x0066685c    57
                         {disp8} mov        edi, dword ptr [esp + 0x30]              // 0x0066685d    8b7c2430
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x00666861    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00666869    c744241000000000
                         mov                esi, 0x00000001                          // 0x00666871    be01000000
                         lea                ebp, dword ptr [eax + ebx * 0x1]         // 0x00666876    8d2c18
_jmp_addr_0x00666879:    push               edi                                      // 0x00666879    57
                         push               esi                                      // 0x0066687a    56
                         mov.s              ecx, ebp                                 // 0x0066687b    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000       // 0x0066687d    c744241c00000000
                         call               dword ptr [esp + 0x28]                   // 0x00666885    ff542428
                         {disp8} fst        dword ptr [esp + 0x30]                   // 0x00666889    d9542430
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x0066688d    d81d98a38a00
                         fnstsw             ax                                       // 0x00666893    dfe0
                         test               ah, 0x40                                 // 0x00666895    f6c440
                         {disp8} jne        _jmp_addr_0x006668c7                     // 0x00666898    752d
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x0066689a    8d4c2414
                         push               ecx                                      // 0x0066689e    51
                         push               edi                                      // 0x0066689f    57
                         push               esi                                      // 0x006668a0    56
                         mov.s              ecx, ebx                                 // 0x006668a1    8bcb
                         call               _jmp_addr_0x006668f0                     // 0x006668a3    e848000000
                         {disp8} fmul       dword ptr [esp + 0x30]                   // 0x006668a8    d84c2430
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x006668ac    d8542410
                         fnstsw             ax                                       // 0x006668b0    dfe0
                         test               ah, 0x41                                 // 0x006668b2    f6c441
                         {disp8} jne        _jmp_addr_0x006668c5                     // 0x006668b5    750e
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x006668b7    8b542414
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x006668bb    d95c2410
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x006668bf    89542418
                         {disp8} jmp        _jmp_addr_0x006668c7                     // 0x006668c3    eb02
_jmp_addr_0x006668c5:    fstp               st(0)                                    // 0x006668c5    ddd8
_jmp_addr_0x006668c7:    inc                esi                                      // 0x006668c7    46
                         cmp                esi, 0x2a                                // 0x006668c8    83fe2a
                         {disp8} jl         _jmp_addr_0x00666879                     // 0x006668cb    7cac
                         {disp8} mov        eax, dword ptr [esp + 0x34]              // 0x006668cd    8b442434
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x006668d1    d9442410
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x006668d5    8b4c2418
                         pop                edi                                      // 0x006668d9    5f
                         pop                esi                                      // 0x006668da    5e
                         pop                ebp                                      // 0x006668db    5d
                         mov                dword ptr [eax], ecx                     // 0x006668dc    8908
                         pop                ebx                                      // 0x006668de    5b
                         add                esp, 0x0c                                // 0x006668df    83c40c
                         ret                0x0018                                   // 0x006668e2    c21800
                         nop                                                         // 0x006668e5    90
                         nop                                                         // 0x006668e6    90
                         nop                                                         // 0x006668e7    90
                         nop                                                         // 0x006668e8    90
                         nop                                                         // 0x006668e9    90
                         nop                                                         // 0x006668ea    90
                         nop                                                         // 0x006668eb    90
                         nop                                                         // 0x006668ec    90
                         nop                                                         // 0x006668ed    90
                         nop                                                         // 0x006668ee    90
                         nop                                                         // 0x006668ef    90
_jmp_addr_0x006668f0:    sub                esp, 0x08                                // 0x006668f0    83ec08
                         push               esi                                      // 0x006668f3    56
                         push               edi                                      // 0x006668f4    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x006668f5    8b7c2414
                         mov.s              esi, ecx                                 // 0x006668f9    8bf1
                         mov                eax, dword ptr [esi]                     // 0x006668fb    8b06
                         push               edi                                      // 0x006668fd    57
                         call               dword ptr [eax + 0x1c]                   // 0x006668fe    ff501c
                         mov.s              ecx, eax                                 // 0x00666901    8bc8
                         call               @IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE@12                     // 0x00666903    e81859feff
                         test               eax, eax                                 // 0x00666908    85c0
                         {disp32} je        _jmp_addr_0x006669c1                     // 0x0066690a    0f84b1000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x00666910    8d4c2414
                         push               ecx                                      // 0x00666914    51
                         push               edi                                      // 0x00666915    57
                         mov.s              ecx, esi                                 // 0x00666916    8bce
                         call               _jmp_addr_0x00664a50                     // 0x00666918    e833e1ffff
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x0066691d    d81d90a38a00
                         fnstsw             ax                                       // 0x00666923    dfe0
                         test               ah, 0x01                                 // 0x00666925    f6c401
                         {disp8} je         _jmp_addr_0x0066693d                     // 0x00666928    7413
                         {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x0066692a    8d542414
                         push               edx                                      // 0x0066692e    52
                         push               edi                                      // 0x0066692f    57
                         mov.s              ecx, esi                                 // 0x00666930    8bce
                         call               _jmp_addr_0x00664a50                     // 0x00666932    e819e1ffff
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00666937    d95c2408
                         {disp8} jmp        _jmp_addr_0x00666945                     // 0x0066693b    eb08
_jmp_addr_0x0066693d:    {disp8} mov        dword ptr [esp + 0x08], 0x3f800000       // 0x0066693d    c74424080000803f
_jmp_addr_0x00666945:    {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x00666945    8b4c2414
                         test               ecx, ecx                                 // 0x00666949    85c9
                         {disp8} je         _jmp_addr_0x006669c1                     // 0x0066694b    7474
                         call               _jmp_addr_0x00780480                     // 0x0066694d    e82e9b1100
                         {disp8} fst        dword ptr [esp + 0x0c]                   // 0x00666952    d954240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00666956    d81d98a38a00
                         fnstsw             ax                                       // 0x0066695c    dfe0
                         test               ah, 0x01                                 // 0x0066695e    f6c401
                         {disp8} jne        _jmp_addr_0x006669c1                     // 0x00666961    755e
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00666963    8b44240c
                         push               0x44fa0000                               // 0x00666967    680000fa44
                         push               eax                                      // 0x0066696c    50
                         call               _GetDistanceModifier__6GUtilsFff@8       // 0x0066696d    e81e890e00
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00666972    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x00666976    8b442420
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0066697a    d90590a38a00
                         add                esp, 0x08                                // 0x00666980    83c408
                         test               eax, eax                                 // 0x00666983    85c0
                         {disp8} je         _jmp_addr_0x00666992                     // 0x00666985    740b
                         push               edi                                      // 0x00666987    57
                         fstp               st(0)                                    // 0x00666988    ddd8
                         push               eax                                      // 0x0066698a    50
                         mov.s              ecx, esi                                 // 0x0066698b    8bce
                         call               _jmp_addr_0x00658700                     // 0x0066698d    e86e1dffff
_jmp_addr_0x00666992:    {disp8} fmul       dword ptr [esp + 0x0c]                   // 0x00666992    d84c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00666996    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x0066699a    8b542414
                         mov                dword ptr [ecx], edx                     // 0x0066699e    8911
                         {disp8} fmul       dword ptr [esp + 0x08]                   // 0x006669a0    d84c2408
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x006669a4    d81590a38a00
                         fnstsw             ax                                       // 0x006669aa    dfe0
                         test               ah, 0x01                                 // 0x006669ac    f6c401
                         {disp8} jne        _jmp_addr_0x006669c7                     // 0x006669af    7516
                         pop                edi                                      // 0x006669b1    5f
                         fstp               st(0)                                    // 0x006669b2    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x006669b4    d90590a38a00
                         pop                esi                                      // 0x006669ba    5e
                         add                esp, 0x08                                // 0x006669bb    83c408
                         ret                0x000c                                   // 0x006669be    c20c00
_jmp_addr_0x006669c1:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006669c1    d90598a38a00
_jmp_addr_0x006669c7:    pop                edi                                      // 0x006669c7    5f
                         pop                esi                                      // 0x006669c8    5e
                         add                esp, 0x08                                // 0x006669c9    83c408
                         ret                0x000c                                   // 0x006669cc    c20c00
                         nop                                                         // 0x006669cf    90
_jmp_addr_0x006669d0:    sub                esp, 0x0c                                // 0x006669d0    83ec0c
                         push               ebx                                      // 0x006669d3    53
                         push               esi                                      // 0x006669d4    56
                         push               edi                                      // 0x006669d5    57
                         mov.s              esi, ecx                                 // 0x006669d6    8bf1
                         call               _jmp_addr_0x0065bcb0                     // 0x006669d8    e8d352ffff
                         mov.s              ebx, eax                                 // 0x006669dd    8bd8
                         test               ebx, ebx                                 // 0x006669df    85db
                         {disp32} je        _jmp_addr_0x00666a70                     // 0x006669e1    0f8489000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x006669e7    8b44241c
                         push               eax                                      // 0x006669eb    50
                         mov.s              ecx, esi                                 // 0x006669ec    8bce
                         call               _jmp_addr_0x006588f0                     // 0x006669ee    e8fd1effff
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x006669f3    d95c241c
                         mov.s              ecx, esi                                 // 0x006669f7    8bce
                         call               _jmp_addr_0x00658bc0                     // 0x006669f9    e8c221ffff
                         {disp8} fcomp      dword ptr [esp + 0x1c]                   // 0x006669fe    d85c241c
                         fnstsw             ax                                       // 0x00666a02    dfe0
                         test               ah, 0x01                                 // 0x00666a04    f6c401
                         {disp8} je         _jmp_addr_0x00666a70                     // 0x00666a07    7467
                         mov.s              ecx, esi                                 // 0x00666a09    8bce
                         call               _jmp_addr_0x0065bcb0                     // 0x00666a0b    e8a052ffff
                         mov                edx, dword ptr [eax]                     // 0x00666a10    8b10
                         mov.s              ecx, eax                                 // 0x00666a12    8bc8
                         call               dword ptr [edx + 0x1c]                   // 0x00666a14    ff521c
                         mov.s              ecx, eax                                 // 0x00666a17    8bc8
                         call               _jmp_addr_0x0064a9f0                     // 0x00666a19    e8d23ffeff
                         {disp32} mov       edi, dword ptr [eax + 0x0000012c]        // 0x00666a1e    8bb82c010000
                         test               edi, edi                                 // 0x00666a24    85ff
                         {disp8} je         _jmp_addr_0x00666a70                     // 0x00666a26    7448
                         add                ebx, 0x14                                // 0x00666a28    83c314
                         push               ebx                                      // 0x00666a2b    53
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x00666a2c    8d442410
                         push               eax                                      // 0x00666a30    50
                         mov.s              ecx, esi                                 // 0x00666a31    8bce
                         call               _jmp_addr_0x00657fe0                     // 0x00666a33    e8a815ffff
                         mov.s              ecx, eax                                 // 0x00666a38    8bc8
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x00666a3a    e891f2f9ff
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00666a3f    d95c241c
                         mov.s              ecx, esi                                 // 0x00666a43    8bce
                         call               _jmp_addr_0x0065bcb0                     // 0x00666a45    e86652ffff
                         push               eax                                      // 0x00666a4a    50
                         mov.s              ecx, esi                                 // 0x00666a4b    8bce
                         call               _jmp_addr_0x0065d1c0                     // 0x00666a4d    e86e67ffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]         // 0x00666a52    d80d14b48a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1eb34]        // 0x00666a58    d805347b8c00
                         {disp8} fcomp      dword ptr [esp + 0x1c]                   // 0x00666a5e    d85c241c
                         fnstsw             ax                                       // 0x00666a62    dfe0
                         test               ah, 0x41                                 // 0x00666a64    f6c441
                         {disp8} jne        _jmp_addr_0x00666a70                     // 0x00666a67    7507
                         {disp8} mov        dword ptr [edi + 0x24], 0x00000000       // 0x00666a69    c7472400000000
_jmp_addr_0x00666a70:    pop                edi                                      // 0x00666a70    5f
                         pop                esi                                      // 0x00666a71    5e
                         pop                ebx                                      // 0x00666a72    5b
                         add                esp, 0x0c                                // 0x00666a73    83c40c
                         ret                0x0004                                   // 0x00666a76    c20400
                         nop                                                         // 0x00666a79    90
                         nop                                                         // 0x00666a7a    90
                         nop                                                         // 0x00666a7b    90
                         nop                                                         // 0x00666a7c    90
                         nop                                                         // 0x00666a7d    90
                         nop                                                         // 0x00666a7e    90
                         nop                                                         // 0x00666a7f    90
_globl_ct_0x00666a80:    {disp32} mov       cl, byte ptr [_DAT_00fac934]             // 0x00666a80    8a0d34c9fa00
                         mov                al, 0x01                                 // 0x00666a86    b001
                         test               al, cl                                   // 0x00666a88    84c8
                         {disp8} jne        _jmp_addr_0x00666a94                     // 0x00666a8a    7508
                         or.s               cl, al                                   // 0x00666a8c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl             // 0x00666a8e    880d34c9fa00
_jmp_addr_0x00666a94:    {disp32} jmp       _jmp_addr_0x00666aa0                     // 0x00666a94    e907000000
                         nop                                                         // 0x00666a99    90
                         nop                                                         // 0x00666a9a    90
                         nop                                                         // 0x00666a9b    90
                         nop                                                         // 0x00666a9c    90
                         nop                                                         // 0x00666a9d    90
                         nop                                                         // 0x00666a9e    90
                         nop                                                         // 0x00666a9f    90
_jmp_addr_0x00666aa0:    push               0x00407870                               // 0x00666aa0    6870784000
                         call               _atexit                                  // 0x00666aa5    e8e7ec1500
                         pop                ecx                                      // 0x00666aaa    59
                         ret                                                         // 0x00666aab    c3
                         nop                                                         // 0x00666aac    90
                         nop                                                         // 0x00666aad    90
                         nop                                                         // 0x00666aae    90
                         nop                                                         // 0x00666aaf    90
_globl_ct_0x00666ab0:    {disp32} jmp       _jmp_addr_0x00666ac0                     // 0x00666ab0    e90b000000
                         nop                                                         // 0x00666ab5    90
                         nop                                                         // 0x00666ab6    90
                         nop                                                         // 0x00666ab7    90
                         nop                                                         // 0x00666ab8    90
                         nop                                                         // 0x00666ab9    90
                         nop                                                         // 0x00666aba    90
                         nop                                                         // 0x00666abb    90
                         nop                                                         // 0x00666abc    90
                         nop                                                         // 0x00666abd    90
                         nop                                                         // 0x00666abe    90
                         nop                                                         // 0x00666abf    90
_jmp_addr_0x00666ac0:    {disp32} fld       dword ptr [rdata_bytes + 0x89d80]        // 0x00666ac0    d905802d9300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x89d7c]        // 0x00666ac6    d80d7c2d9300
                         {disp32} fstp      dword ptr [data_bytes + 0x385d2c]        // 0x00666acc    d91d2cbdd400
                         ret                                                         // 0x00666ad2    c3
                         nop                                                         // 0x00666ad3    90
                         nop                                                         // 0x00666ad4    90
                         nop                                                         // 0x00666ad5    90
                         nop                                                         // 0x00666ad6    90
                         nop                                                         // 0x00666ad7    90
                         nop                                                         // 0x00666ad8    90
                         nop                                                         // 0x00666ad9    90
                         nop                                                         // 0x00666ada    90
                         nop                                                         // 0x00666adb    90
                         nop                                                         // 0x00666adc    90
                         nop                                                         // 0x00666add    90
                         nop                                                         // 0x00666ade    90
                         nop                                                         // 0x00666adf    90
_jmp_addr_0x00666ae0:    sub                esp, 0x18                                // 0x00666ae0    83ec18
                         mov                eax, dword ptr [ecx]                     // 0x00666ae3    8b01
                         push               ebp                                      // 0x00666ae5    55
                         push               edi                                      // 0x00666ae6    57
                         {disp8} mov        dword ptr [esp + 0x0c], ecx              // 0x00666ae7    894c240c
                         call               dword ptr [eax + 0x1c]                   // 0x00666aeb    ff501c
                         {disp8} mov        ebp, dword ptr [esp + 0x28]              // 0x00666aee    8b6c2428
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000000       // 0x00666af2    c7450000000000
                         {disp32} mov       edi, dword ptr [eax + 0x00000a50]        // 0x00666af9    8bb8500a0000
                         test               edi, edi                                 // 0x00666aff    85ff
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00666b01    c744240800000000
                         {disp32} je        _jmp_addr_0x00666c38                     // 0x00666b09    0f8429010000
                         push               ebx                                      // 0x00666b0f    53
                         push               esi                                      // 0x00666b10    56
_jmp_addr_0x00666b11:    xor.s              esi, esi                                 // 0x00666b11    33f6
                         {disp32} lea       ebx, dword ptr [edi + 0x000009fc]        // 0x00666b13    8d9ffc090000
_jmp_addr_0x00666b19:    {disp32} mov       ecx, dword ptr [_game]                   // 0x00666b19    8b0d5c19d000
                         push               esi                                      // 0x00666b1f    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z     // 0x00666b20    e88b9eeeff
                         {disp32} mov       eax, dword ptr [eax + 0x000008e0]        // 0x00666b25    8b80e0080000
                         cmp                eax, 0x01                                // 0x00666b2b    83f801
                         {disp8} je         _jmp_addr_0x00666b39                     // 0x00666b2e    7409
                         cmp                eax, 0x02                                // 0x00666b30    83f802
                         {disp32} jne       _jmp_addr_0x00666c0c                     // 0x00666b33    0f85d3000000
_jmp_addr_0x00666b39:    {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x00666b39    8b4c2414
                         mov                edx, dword ptr [ecx]                     // 0x00666b3d    8b11
                         call               dword ptr [edx + 0x1c]                   // 0x00666b3f    ff521c
                         xor.s              ecx, ecx                                 // 0x00666b42    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x000000b5]          // 0x00666b44    8a88b5000000
                         cmp.s              esi, ecx                                 // 0x00666b4a    3bf1
                         {disp32} je        _jmp_addr_0x00666c0c                     // 0x00666b4c    0f84ba000000
                         {disp8} fld        dword ptr [ebx + -0x04]                  // 0x00666b52    d943fc
                         {disp32} fcom      dword ptr [_rdata_float0p0]              // 0x00666b55    d81598a38a00
                         fnstsw             ax                                       // 0x00666b5b    dfe0
                         test               ah, 0x41                                 // 0x00666b5d    f6c441
                         {disp32} jne       _jmp_addr_0x00666c0a                     // 0x00666b60    0f85a4000000
                         mov                edx, dword ptr [ebx]                     // 0x00666b66    8b13
                         xor.s              ecx, ecx                                 // 0x00666b68    33c9
                         {disp8} mov        dword ptr [esp + 0x18], edx              // 0x00666b6a    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx              // 0x00666b6e    894c241c
                         {disp8} fild       qword ptr [esp + 0x18]                   // 0x00666b72    df6c2418
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x00666b76    d95c2430
                         fadd.s             st(0), st(0)                             // 0x00666b7a    dcc0
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x00666b7c    d81590a38a00
                         fnstsw             ax                                       // 0x00666b82    dfe0
                         test               ah, 0x01                                 // 0x00666b84    f6c401
                         {disp8} jne        _jmp_addr_0x00666b91                     // 0x00666b87    7508
                         fstp               st(0)                                    // 0x00666b89    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00666b8b    d90590a38a00
_jmp_addr_0x00666b91:    {disp32} mov       eax, dword ptr [_game]                   // 0x00666b91    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]        // 0x00666b96    8b90405a2000
                         {disp8} mov        dword ptr [esp + 0x20], edx              // 0x00666b9c    89542420
                         {disp8} mov        dword ptr [esp + 0x24], ecx              // 0x00666ba0    894c2424
                         {disp8} fild       qword ptr [esp + 0x20]                   // 0x00666ba4    df6c2420
                         {disp8} fsub       dword ptr [esp + 0x30]                   // 0x00666ba8    d8642430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26174]        // 0x00666bac    d80d74f18c00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x00666bb2    d81590a38a00
                         fnstsw             ax                                       // 0x00666bb8    dfe0
                         test               ah, 0x01                                 // 0x00666bba    f6c401
                         {disp8} jne        _jmp_addr_0x00666bc7                     // 0x00666bbd    7508
                         fstp               st(0)                                    // 0x00666bbf    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00666bc1    d90590a38a00
_jmp_addr_0x00666bc7:    {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x00666bc7    d82d90a38a00
                         mov                eax, 0x00000002                          // 0x00666bcd    b802000000
                         {disp8} fst        dword ptr [esp + 0x30]                   // 0x00666bd2    d9542430
_jmp_addr_0x00666bd6:    dec                eax                                      // 0x00666bd6    48
                         {disp8} fmul       dword ptr [esp + 0x30]                   // 0x00666bd7    d84c2430
                         {disp8} jne        _jmp_addr_0x00666bd6                     // 0x00666bdb    75f9
                         fmulp              st(1), st                                // 0x00666bdd    dec9
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x00666bdf    d8542410
                         fnstsw             ax                                       // 0x00666be3    dfe0
                         test               ah, 0x41                                 // 0x00666be5    f6c441
                         {disp8} je         _jmp_addr_0x00666bef                     // 0x00666be8    7405
                         cmp                dword ptr [ebp + 0x00], ecx              // 0x00666bea    394d00
                         {disp8} jne        _jmp_addr_0x00666c0a                     // 0x00666bed    751b
_jmp_addr_0x00666bef:    {disp8} mov        dword ptr [ebp + 0x00], edi              // 0x00666bef    897d00
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00666bf2    d95c2410
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00666bf6    8b0d5c19d000
                         push               esi                                      // 0x00666bfc    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z     // 0x00666bfd    e8ae9deeff
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]              // 0x00666c02    8b4c242c
                         mov                dword ptr [ecx], eax                     // 0x00666c06    8901
                         {disp8} jmp        _jmp_addr_0x00666c0c                     // 0x00666c08    eb02
_jmp_addr_0x00666c0a:    fstp               st(0)                                    // 0x00666c0a    ddd8
_jmp_addr_0x00666c0c:    inc                esi                                      // 0x00666c0c    46
                         add                ebx, 0x00000080                          // 0x00666c0d    81c380000000
                         cmp                esi, 0x08                                // 0x00666c13    83fe08
                         {disp32} jb        _jmp_addr_0x00666b19                     // 0x00666c16    0f82fdfeffff
                         {disp32} mov       edi, dword ptr [edi + 0x0000075c]        // 0x00666c1c    8bbf5c070000
                         test               edi, edi                                 // 0x00666c22    85ff
                         {disp32} jne       _jmp_addr_0x00666b11                     // 0x00666c24    0f85e7feffff
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00666c2a    d9442410
                         pop                esi                                      // 0x00666c2e    5e
                         pop                ebx                                      // 0x00666c2f    5b
                         pop                edi                                      // 0x00666c30    5f
                         pop                ebp                                      // 0x00666c31    5d
                         add                esp, 0x18                                // 0x00666c32    83c418
                         ret                0x0008                                   // 0x00666c35    c20800
_jmp_addr_0x00666c38:    {disp8} fld        dword ptr [esp + 0x08]                   // 0x00666c38    d9442408
                         pop                edi                                      // 0x00666c3c    5f
                         pop                ebp                                      // 0x00666c3d    5d
                         add                esp, 0x18                                // 0x00666c3e    83c418
                         ret                0x0008                                   // 0x00666c41    c20800
                         nop                                                         // 0x00666c44    90
                         nop                                                         // 0x00666c45    90
                         nop                                                         // 0x00666c46    90
                         nop                                                         // 0x00666c47    90
                         nop                                                         // 0x00666c48    90
                         nop                                                         // 0x00666c49    90
                         nop                                                         // 0x00666c4a    90
                         nop                                                         // 0x00666c4b    90
                         nop                                                         // 0x00666c4c    90
                         nop                                                         // 0x00666c4d    90
                         nop                                                         // 0x00666c4e    90
                         nop                                                         // 0x00666c4f    90
                         sub                esp, 0x0c                                // 0x00666c50    83ec0c
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00666c53    8b4128
                         push               esi                                      // 0x00666c56    56
                         {disp32} mov       esi, dword ptr [eax + 0x00000a50]        // 0x00666c57    8bb0500a0000
                         push               edi                                      // 0x00666c5d    57
                         xor.s              edi, edi                                 // 0x00666c5e    33ff
                         test               esi, esi                                 // 0x00666c60    85f6
                         {disp8} mov        dword ptr [esp + 0x08], edi              // 0x00666c62    897c2408
                         {disp8} je         _jmp_addr_0x00666cd8                     // 0x00666c66    7470
_jmp_addr_0x00666c68:    push               0x0                                      // 0x00666c68    6a00
                         mov.s              ecx, esi                                 // 0x00666c6a    8bce
                         call               ?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x00666c6c    e88f770d00
                         {disp8} fcom       dword ptr [esp + 0x08]                   // 0x00666c71    d8542408
                         fnstsw             ax                                       // 0x00666c75    dfe0
                         test               ah, 0x41                                 // 0x00666c77    f6c441
                         {disp8} jne        _jmp_addr_0x00666c84                     // 0x00666c7a    7508
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00666c7c    d95c2408
                         mov.s              edi, esi                                 // 0x00666c80    8bfe
                         {disp8} jmp        _jmp_addr_0x00666c86                     // 0x00666c82    eb02
_jmp_addr_0x00666c84:    fstp               st(0)                                    // 0x00666c84    ddd8
_jmp_addr_0x00666c86:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]        // 0x00666c86    8bb65c070000
                         test               esi, esi                                 // 0x00666c8c    85f6
                         {disp8} jne        _jmp_addr_0x00666c68                     // 0x00666c8e    75d8
                         test               edi, edi                                 // 0x00666c90    85ff
                         {disp8} je         _jmp_addr_0x00666cd8                     // 0x00666c92    7444
                         {disp8} mov        esi, dword ptr [esp + 0x18]              // 0x00666c94    8b742418
                         mov.s              ecx, edi                                 // 0x00666c98    8bcf
                         {disp32} mov       dword ptr [esi + 0x00000094], edi        // 0x00666c9a    89be94000000
                         call               _jmp_addr_0x00747af0                     // 0x00666ca0    e84b0e0e00
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00666ca5    d95c2418
                         mov.s              ecx, edi                                 // 0x00666ca9    8bcf
                         call               _jmp_addr_0x00747a90                     // 0x00666cab    e8e00d0e00
                         {disp8} mov        dword ptr [esp + 0x0c], eax              // 0x00666cb0    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00666cb4    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                   // 0x00666cbc    df6c240c
                         {disp8} fsubr      dword ptr [esp + 0x18]                   // 0x00666cc0    d86c2418
                         call               _jmp_addr_0x007a1400                     // 0x00666cc4    e837a71300
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00666cc9    d9442408
                         pop                edi                                      // 0x00666ccd    5f
                         {disp8} mov        dword ptr [esi + 0x78], eax              // 0x00666cce    894678
                         pop                esi                                      // 0x00666cd1    5e
                         add                esp, 0x0c                                // 0x00666cd2    83c40c
                         ret                0x0004                                   // 0x00666cd5    c20400
_jmp_addr_0x00666cd8:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00666cd8    d90598a38a00
                         pop                edi                                      // 0x00666cde    5f
                         pop                esi                                      // 0x00666cdf    5e
                         add                esp, 0x0c                                // 0x00666ce0    83c40c
                         ret                0x0004                                   // 0x00666ce3    c20400
                         nop                                                         // 0x00666ce6    90
                         nop                                                         // 0x00666ce7    90
                         nop                                                         // 0x00666ce8    90
                         nop                                                         // 0x00666ce9    90
                         nop                                                         // 0x00666cea    90
                         nop                                                         // 0x00666ceb    90
                         nop                                                         // 0x00666cec    90
                         nop                                                         // 0x00666ced    90
                         nop                                                         // 0x00666cee    90
                         nop                                                         // 0x00666cef    90
                         sub                esp, 0x2c                                // 0x00666cf0    83ec2c
                         push               ebx                                      // 0x00666cf3    53
                         push               ebp                                      // 0x00666cf4    55
                         push               edi                                      // 0x00666cf5    57
                         mov.s              edi, ecx                                 // 0x00666cf6    8bf9
                         mov                edx, dword ptr [edi]                     // 0x00666cf8    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x2c]              // 0x00666cfa    8d44242c
                         push               eax                                      // 0x00666cfe    50
                         call               dword ptr [edx + 0x1c]                   // 0x00666cff    ff521c
                         mov.s              ecx, eax                                 // 0x00666d02    8bc8
                         call               _jmp_addr_0x0064a9f0                     // 0x00666d04    e8e73cfeff
                         mov.s              ecx, eax                                 // 0x00666d09    8bc8
                         call               _jmp_addr_0x005dc8d0                     // 0x00666d0b    e8c05bf7ff
                         {disp8} mov        ebp, dword ptr [edi + 0x40]              // 0x00666d10    8b6f40
                         xor.s              ebx, ebx                                 // 0x00666d13    33db
                         cmp.s              ebp, ebx                                 // 0x00666d15    3beb
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00666d17    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], ebx              // 0x00666d1f    895c2414
                         {disp32} je        _jmp_addr_0x00666e94                     // 0x00666d23    0f846b010000
                         push               esi                                      // 0x00666d29    56
_jmp_addr_0x00666d2a:    {disp8} mov        eax, dword ptr [ebp + 0x04]              // 0x00666d2a    8b4504
                         {disp8} mov        esi, dword ptr [eax + 0x14]              // 0x00666d2d    8b7014
                         push               ebx                                      // 0x00666d30    53
                         push               0x00bdea58                               // 0x00666d31    6858eabd00
                         push               0x009c7f18                               // 0x00666d36    68187f9c00
                         push               ebx                                      // 0x00666d3b    53
                         push               esi                                      // 0x00666d3c    56
                         call               ___RTDynamicCast                         // 0x00666d3d    e8d7ec1500
                         mov.s              ecx, eax                                 // 0x00666d42    8bc8
                         add                esp, 0x14                                // 0x00666d44    83c414
                         cmp.s              ecx, ebx                                 // 0x00666d47    3bcb
                         {disp32} je        _jmp_addr_0x00666dec                     // 0x00666d49    0f849d000000
                         {disp8} mov        edx, dword ptr [ecx + 0x4c]              // 0x00666d4f    8b514c
                         {disp8} mov        dword ptr [esp + 0x20], edx              // 0x00666d52    89542420
                         {disp8} mov        dword ptr [esp + 0x24], ebx              // 0x00666d56    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                   // 0x00666d5a    df6c2420
                         {disp8} fst        dword ptr [esp + 0x10]                   // 0x00666d5e    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00666d62    d81d98a38a00
                         fnstsw             ax                                       // 0x00666d68    dfe0
                         test               ah, 0x40                                 // 0x00666d6a    f6c440
                         {disp32} jne       _jmp_addr_0x00666e63                     // 0x00666d6d    0f85f0000000
                         call               ?GetForestCentreTree@Forest@@QAEPAVTree@@XZ        // 0x00666d73    e8783eedff
                         mov.s              esi, eax                                 // 0x00666d78    8bf0
                         cmp.s              esi, ebx                                 // 0x00666d7a    3bf3
                         {disp32} je        _jmp_addr_0x00666e63                     // 0x00666d7c    0f84e1000000
                         test               byte ptr [esi + 0x25], 0x04              // 0x00666d82    f6462504
                         {disp32} jne       _jmp_addr_0x00666e63                     // 0x00666d86    0f85d7000000
                         {disp8} lea        ebx, dword ptr [esi + 0x14]              // 0x00666d8c    8d5e14
                         push               ebx                                      // 0x00666d8f    53
                         mov.s              ecx, edi                                 // 0x00666d90    8bcf
                         call               _jmp_addr_0x00658630                     // 0x00666d92    e89918ffff
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00666d97    d95c241c
                         mov                eax, dword ptr [esi]                     // 0x00666d9b    8b06
                         mov.s              ecx, esi                                 // 0x00666d9d    8bce
                         call               dword ptr [eax + 0x664]                  // 0x00666d9f    ff9064060000
                         {disp8} fmul       dword ptr [esp + 0x1c]                   // 0x00666da5    d84c241c
                         mov.s              ecx, edi                                 // 0x00666da9    8bcf
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00666dab    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00666daf    d95c2410
                         call               _jmp_addr_0x00657fd0                     // 0x00666db3    e81812ffff
                         mov                edx, dword ptr [esi]                     // 0x00666db8    8b16
                         push               ecx                                      // 0x00666dba    51
                         {disp8} lea        eax, dword ptr [esp + 0x34]              // 0x00666dbb    8d442434
                         fstp               dword ptr [esp]                          // 0x00666dbf    d91c24
                         push               eax                                      // 0x00666dc2    50
                         mov.s              ecx, esi                                 // 0x00666dc3    8bce
                         call               dword ptr [edx + 0x13c]                  // 0x00666dc5    ff923c010000
                         push               ecx                                      // 0x00666dcb    51
                         mov.s              ecx, edi                                 // 0x00666dcc    8bcf
                         fstp               dword ptr [esp]                          // 0x00666dce    d91c24
                         call               _jmp_addr_0x00657f30                     // 0x00666dd1    e85a11ffff
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00666dd6    d84c2410
                         push               ebx                                      // 0x00666dda    53
                         mov.s              ecx, edi                                 // 0x00666ddb    8bcf
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00666ddd    d95c2414
                         call               _jmp_addr_0x00658630                     // 0x00666de1    e84a18ffff
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00666de6    d84c2410
                         {disp8} jmp        _jmp_addr_0x00666e4c                     // 0x00666dea    eb60
_jmp_addr_0x00666dec:    push               ebx                                      // 0x00666dec    53
                         push               0x009d96e0                               // 0x00666ded    68e0969d00
                         push               0x009c7f18                               // 0x00666df2    68187f9c00
                         push               ebx                                      // 0x00666df7    53
                         push               esi                                      // 0x00666df8    56
                         call               ___RTDynamicCast                         // 0x00666df9    e81bec1500
                         mov.s              esi, eax                                 // 0x00666dfe    8bf0
                         add                esp, 0x14                                // 0x00666e00    83c414
                         cmp.s              esi, ebx                                 // 0x00666e03    3bf3
                         {disp8} je         _jmp_addr_0x00666e63                     // 0x00666e05    745c
                         test               byte ptr [esi + 0x25], 0x04              // 0x00666e07    f6462504
                         {disp8} jne        _jmp_addr_0x00666e63                     // 0x00666e0b    7556
                         {disp8} mov        ecx, dword ptr [esi + 0x28]              // 0x00666e0d    8b4e28
                         {disp8} mov        edx, dword ptr [ecx + 0x6c]              // 0x00666e10    8b516c
                         {disp8} mov        dword ptr [esp + 0x28], edx              // 0x00666e13    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx              // 0x00666e17    895c242c
                         {disp8} fild       qword ptr [esp + 0x28]                   // 0x00666e1b    df6c2428
                         mov.s              ecx, edi                                 // 0x00666e1f    8bcf
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00666e21    d95c241c
                         call               _jmp_addr_0x00657fd0                     // 0x00666e25    e8a611ffff
                         mov                eax, dword ptr [esi]                     // 0x00666e2a    8b06
                         push               ecx                                      // 0x00666e2c    51
                         {disp8} lea        ecx, dword ptr [esp + 0x34]              // 0x00666e2d    8d4c2434
                         fstp               dword ptr [esp]                          // 0x00666e31    d91c24
                         push               ecx                                      // 0x00666e34    51
                         mov.s              ecx, esi                                 // 0x00666e35    8bce
                         call               dword ptr [eax + 0x13c]                  // 0x00666e37    ff903c010000
                         push               ecx                                      // 0x00666e3d    51
                         mov.s              ecx, edi                                 // 0x00666e3e    8bcf
                         fstp               dword ptr [esp]                          // 0x00666e40    d91c24
                         call               _jmp_addr_0x00657f30                     // 0x00666e43    e8e810ffff
                         {disp8} fmul       dword ptr [esp + 0x1c]                   // 0x00666e48    d84c241c
_jmp_addr_0x00666e4c:    {disp8} fcom       dword ptr [esp + 0x14]                   // 0x00666e4c    d8542414
                         fnstsw             ax                                       // 0x00666e50    dfe0
                         test               ah, 0x41                                 // 0x00666e52    f6c441
                         {disp8} jne        _jmp_addr_0x00666e61                     // 0x00666e55    750a
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00666e57    d95c2414
                         {disp8} mov        dword ptr [esp + 0x18], esi              // 0x00666e5b    89742418
                         {disp8} jmp        _jmp_addr_0x00666e63                     // 0x00666e5f    eb02
_jmp_addr_0x00666e61:    fstp               st(0)                                    // 0x00666e61    ddd8
_jmp_addr_0x00666e63:    {disp8} mov        ebp, dword ptr [ebp + 0x00]              // 0x00666e63    8b6d00
                         xor.s              ebx, ebx                                 // 0x00666e66    33db
                         cmp.s              ebp, ebx                                 // 0x00666e68    3beb
                         {disp32} jne       _jmp_addr_0x00666d2a                     // 0x00666e6a    0f85bafeffff
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x00666e70    8b442418
                         cmp.s              eax, ebx                                 // 0x00666e74    3bc3
                         pop                esi                                      // 0x00666e76    5e
                         {disp8} je         _jmp_addr_0x00666e94                     // 0x00666e77    741b
                         {disp8} mov        edx, dword ptr [esp + 0x3c]              // 0x00666e79    8b54243c
                         push               eax                                      // 0x00666e7d    50
                         mov.s              ecx, edi                                 // 0x00666e7e    8bcf
                         {disp32} mov       dword ptr [edx + 0x00000094], eax        // 0x00666e80    898294000000
                         call               _jmp_addr_0x00657f50                     // 0x00666e86    e8c510ffff
                         pop                edi                                      // 0x00666e8b    5f
                         pop                ebp                                      // 0x00666e8c    5d
                         pop                ebx                                      // 0x00666e8d    5b
                         add                esp, 0x2c                                // 0x00666e8e    83c42c
                         ret                0x0004                                   // 0x00666e91    c20400
_jmp_addr_0x00666e94:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00666e94    d90598a38a00
                         pop                edi                                      // 0x00666e9a    5f
                         pop                ebp                                      // 0x00666e9b    5d
                         pop                ebx                                      // 0x00666e9c    5b
                         add                esp, 0x2c                                // 0x00666e9d    83c42c
                         ret                0x0004                                   // 0x00666ea0    c20400
                         nop                                                         // 0x00666ea3    90
                         nop                                                         // 0x00666ea4    90
                         nop                                                         // 0x00666ea5    90
                         nop                                                         // 0x00666ea6    90
                         nop                                                         // 0x00666ea7    90
                         nop                                                         // 0x00666ea8    90
                         nop                                                         // 0x00666ea9    90
                         nop                                                         // 0x00666eaa    90
                         nop                                                         // 0x00666eab    90
                         nop                                                         // 0x00666eac    90
                         nop                                                         // 0x00666ead    90
                         nop                                                         // 0x00666eae    90
                         nop                                                         // 0x00666eaf    90
                         push               ecx                                      // 0x00666eb0    51
                         {disp8} mov        eax, dword ptr [ecx + 0x28]              // 0x00666eb1    8b4128
                         push               esi                                      // 0x00666eb4    56
                         {disp32} mov       esi, dword ptr [eax + 0x00000a50]        // 0x00666eb5    8bb0500a0000
                         push               edi                                      // 0x00666ebb    57
                         xor.s              edi, edi                                 // 0x00666ebc    33ff
                         test               esi, esi                                 // 0x00666ebe    85f6
                         {disp8} mov        dword ptr [esp + 0x08], edi              // 0x00666ec0    897c2408
                         {disp8} je         _jmp_addr_0x00666f11                     // 0x00666ec4    744b
_jmp_addr_0x00666ec6:    mov.s              ecx, esi                                 // 0x00666ec6    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ// 0x00666ec8    e8e3460d00
                         test               eax, eax                                 // 0x00666ecd    85c0
                         {disp8} je         _jmp_addr_0x00666eef                     // 0x00666ecf    741e
                         push               0x1                                      // 0x00666ed1    6a01
                         mov.s              ecx, esi                                 // 0x00666ed3    8bce
                         call               ?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x00666ed5    e826750d00
                         {disp8} fcom       dword ptr [esp + 0x08]                   // 0x00666eda    d8542408
                         fnstsw             ax                                       // 0x00666ede    dfe0
                         test               ah, 0x41                                 // 0x00666ee0    f6c441
                         {disp8} jne        _jmp_addr_0x00666eed                     // 0x00666ee3    7508
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x00666ee5    d95c2408
                         mov.s              edi, esi                                 // 0x00666ee9    8bfe
                         {disp8} jmp        _jmp_addr_0x00666eef                     // 0x00666eeb    eb02
_jmp_addr_0x00666eed:    fstp               st(0)                                    // 0x00666eed    ddd8
_jmp_addr_0x00666eef:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]        // 0x00666eef    8bb65c070000
                         test               esi, esi                                 // 0x00666ef5    85f6
                         {disp8} jne        _jmp_addr_0x00666ec6                     // 0x00666ef7    75cd
                         test               edi, edi                                 // 0x00666ef9    85ff
                         {disp8} je         _jmp_addr_0x00666f11                     // 0x00666efb    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00666efd    8b4c2410
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00666f01    d9442408
                         {disp32} mov       dword ptr [ecx + 0x00000094], edi        // 0x00666f05    89b994000000
                         pop                edi                                      // 0x00666f0b    5f
                         pop                esi                                      // 0x00666f0c    5e
                         pop                ecx                                      // 0x00666f0d    59
                         ret                0x0004                                   // 0x00666f0e    c20400
_jmp_addr_0x00666f11:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00666f11    d90598a38a00
                         pop                edi                                      // 0x00666f17    5f
                         pop                esi                                      // 0x00666f18    5e
                         pop                ecx                                      // 0x00666f19    59
                         ret                0x0004                                   // 0x00666f1a    c20400
                         nop                                                         // 0x00666f1d    90
                         nop                                                         // 0x00666f1e    90
                         nop                                                         // 0x00666f1f    90
                         sub                esp, 0x1c                                // 0x00666f20    83ec1c
                         push               ebp                                      // 0x00666f23    55
                         mov.s              ebp, ecx                                 // 0x00666f24    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x28]              // 0x00666f26    8b4528
                         {disp32} mov       eax, dword ptr [eax + 0x00000a50]        // 0x00666f29    8b80500a0000
                         test               eax, eax                                 // 0x00666f2f    85c0
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00666f31    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3dcccccd       // 0x00666f39    c744240ccdcccc3d
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x00666f41    89442408
                         {disp32} je        _jmp_addr_0x00667018                     // 0x00666f45    0f84cd000000
                         push               ebx                                      // 0x00666f4b    53
                         push               esi                                      // 0x00666f4c    56
                         push               edi                                      // 0x00666f4d    57
                         {disp8} jmp        _jmp_addr_0x00666f54                     // 0x00666f4e    eb04
_jmp_addr_0x00666f50:    {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00666f50    8b442414
_jmp_addr_0x00666f54:    {disp32} mov       ebx, dword ptr [eax + 0x00000780]        // 0x00666f54    8b9880070000
                         test               ebx, ebx                                 // 0x00666f5a    85db
                         {disp32} je        _jmp_addr_0x00666fe6                     // 0x00666f5c    0f8484000000
_jmp_addr_0x00666f62:    {disp8} mov        esi, dword ptr [ebx + 0x04]              // 0x00666f62    8b7304
                         {disp32} fld       dword ptr [esi + 0x000000dc]             // 0x00666f65    d986dc000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000120]        // 0x00666f6b    8b8e20010000
                         {disp32} fadd      dword ptr [_rdata_float0p001]            // 0x00666f71    d805b0a38a00
                         push               0x437a0000                               // 0x00666f77    6800007a43
                         {disp32} fld       dword ptr [ecx + 0x00000130]             // 0x00666f7c    d98130010000
                         {disp8} lea        edi, dword ptr [esi + 0x14]              // 0x00666f82    8d7e14
                         {disp32} fadd      dword ptr [_rdata_float0p001]            // 0x00666f85    d805b0a38a00
                         push               edi                                      // 0x00666f8b    57
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x00666f8c    8d542428
                         fdivp              st(1), st                                // 0x00666f90    def9
                         push               edx                                      // 0x00666f92    52
                         mov.s              ecx, ebp                                 // 0x00666f93    8bcd
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00666f95    d95c241c
                         call               _jmp_addr_0x00657fe0                     // 0x00666f99    e84210ffff
                         mov.s              ecx, eax                                 // 0x00666f9e    8bc8
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x00666fa0    e82bedf9ff
                         push               ecx                                      // 0x00666fa5    51
                         fstp               dword ptr [esp]                          // 0x00666fa6    d91c24
                         call               _GetDistanceModifier__6GUtilsFff@8       // 0x00666fa9    e8e2820e00
                         {disp8} fmul       dword ptr [esp + 0x18]                   // 0x00666fae    d84c2418
                         add                esp, 0x08                                // 0x00666fb2    83c408
                         push               edi                                      // 0x00666fb5    57
                         mov.s              ecx, ebp                                 // 0x00666fb6    8bcd
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00666fb8    d95c2414
                         call               _jmp_addr_0x00658630                     // 0x00666fbc    e86f16ffff
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00666fc1    d84c2410
                         {disp8} fcom       dword ptr [esp + 0x18]                   // 0x00666fc5    d8542418
                         fnstsw             ax                                       // 0x00666fc9    dfe0
                         test               ah, 0x41                                 // 0x00666fcb    f6c441
                         {disp8} jne        _jmp_addr_0x00666fda                     // 0x00666fce    750a
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00666fd0    d95c2418
                         {disp8} mov        dword ptr [esp + 0x1c], esi              // 0x00666fd4    8974241c
                         {disp8} jmp        _jmp_addr_0x00666fdc                     // 0x00666fd8    eb02
_jmp_addr_0x00666fda:    fstp               st(0)                                    // 0x00666fda    ddd8
_jmp_addr_0x00666fdc:    mov                ebx, dword ptr [ebx]                     // 0x00666fdc    8b1b
                         test               ebx, ebx                                 // 0x00666fde    85db
                         {disp8} jne        _jmp_addr_0x00666f62                     // 0x00666fe0    7580
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00666fe2    8b442414
_jmp_addr_0x00666fe6:    {disp32} mov       eax, dword ptr [eax + 0x0000075c]        // 0x00666fe6    8b805c070000
                         test               eax, eax                                 // 0x00666fec    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x00666fee    89442414
                         {disp32} jne       _jmp_addr_0x00666f50                     // 0x00666ff2    0f8558ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x00666ff8    8b44241c
                         test               eax, eax                                 // 0x00666ffc    85c0
                         pop                edi                                      // 0x00666ffe    5f
                         pop                esi                                      // 0x00666fff    5e
                         pop                ebx                                      // 0x00667000    5b
                         {disp8} je         _jmp_addr_0x00667018                     // 0x00667001    7415
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x00667003    8b4c2424
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00667007    d944240c
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x0066700b    898194000000
                         pop                ebp                                      // 0x00667011    5d
                         add                esp, 0x1c                                // 0x00667012    83c41c
                         ret                0x0004                                   // 0x00667015    c20400
_jmp_addr_0x00667018:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00667018    d90598a38a00
                         pop                ebp                                      // 0x0066701e    5d
                         add                esp, 0x1c                                // 0x0066701f    83c41c
                         ret                0x0004                                   // 0x00667022    c20400
                         nop                                                         // 0x00667025    90
                         nop                                                         // 0x00667026    90
                         nop                                                         // 0x00667027    90
                         nop                                                         // 0x00667028    90
                         nop                                                         // 0x00667029    90
                         nop                                                         // 0x0066702a    90
                         nop                                                         // 0x0066702b    90
                         nop                                                         // 0x0066702c    90
                         nop                                                         // 0x0066702d    90
                         nop                                                         // 0x0066702e    90
                         nop                                                         // 0x0066702f    90
                         sub                esp, 0x1c                                // 0x00667030    83ec1c
                         push               ebp                                      // 0x00667033    55
                         mov.s              ebp, ecx                                 // 0x00667034    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x28]              // 0x00667036    8b4528
                         {disp32} mov       eax, dword ptr [eax + 0x00000a50]        // 0x00667039    8b80500a0000
                         test               eax, eax                                 // 0x0066703f    85c0
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00667041    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00667049    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x00667051    89442408
                         {disp32} je        _jmp_addr_0x0066710b                     // 0x00667055    0f84b0000000
                         push               ebx                                      // 0x0066705b    53
                         push               esi                                      // 0x0066705c    56
                         push               edi                                      // 0x0066705d    57
                         {disp8} jmp        _jmp_addr_0x00667064                     // 0x0066705e    eb04
_jmp_addr_0x00667060:    {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00667060    8b442414
_jmp_addr_0x00667064:    {disp32} mov       ebx, dword ptr [eax + 0x00000788]        // 0x00667064    8b9888070000
                         test               ebx, ebx                                 // 0x0066706a    85db
                         {disp8} je         _jmp_addr_0x006670d9                     // 0x0066706c    746b
_jmp_addr_0x0066706e:    {disp8} mov        esi, dword ptr [ebx + 0x04]              // 0x0066706e    8b7304
                         mov.s              ecx, esi                                 // 0x00667071    8bce
                         call               _jmp_addr_0x0052d240                     // 0x00667073    e8c861ecff
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00667078    d95c2410
                         push               0x437a0000                               // 0x0066707c    6800007a43
                         {disp8} lea        edi, dword ptr [esi + 0x14]              // 0x00667081    8d7e14
                         push               edi                                      // 0x00667084    57
                         {disp8} lea        ecx, dword ptr [esp + 0x28]              // 0x00667085    8d4c2428
                         push               ecx                                      // 0x00667089    51
                         mov.s              ecx, ebp                                 // 0x0066708a    8bcd
                         call               _jmp_addr_0x00657fe0                     // 0x0066708c    e84f0fffff
                         mov.s              ecx, eax                                 // 0x00667091    8bc8
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x00667093    e838ecf9ff
                         push               ecx                                      // 0x00667098    51
                         fstp               dword ptr [esp]                          // 0x00667099    d91c24
                         call               _GetDistanceModifier__6GUtilsFff@8       // 0x0066709c    e8ef810e00
                         {disp8} fmul       dword ptr [esp + 0x18]                   // 0x006670a1    d84c2418
                         add                esp, 0x08                                // 0x006670a5    83c408
                         push               edi                                      // 0x006670a8    57
                         mov.s              ecx, ebp                                 // 0x006670a9    8bcd
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x006670ab    d95c2414
                         call               _jmp_addr_0x00658630                     // 0x006670af    e87c15ffff
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x006670b4    d84c2410
                         {disp8} fcom       dword ptr [esp + 0x18]                   // 0x006670b8    d8542418
                         fnstsw             ax                                       // 0x006670bc    dfe0
                         test               ah, 0x41                                 // 0x006670be    f6c441
                         {disp8} jne        _jmp_addr_0x006670cd                     // 0x006670c1    750a
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x006670c3    d95c2418
                         {disp8} mov        dword ptr [esp + 0x1c], esi              // 0x006670c7    8974241c
                         {disp8} jmp        _jmp_addr_0x006670cf                     // 0x006670cb    eb02
_jmp_addr_0x006670cd:    fstp               st(0)                                    // 0x006670cd    ddd8
_jmp_addr_0x006670cf:    mov                ebx, dword ptr [ebx]                     // 0x006670cf    8b1b
                         test               ebx, ebx                                 // 0x006670d1    85db
                         {disp8} jne        _jmp_addr_0x0066706e                     // 0x006670d3    7599
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x006670d5    8b442414
_jmp_addr_0x006670d9:    {disp32} mov       eax, dword ptr [eax + 0x0000075c]        // 0x006670d9    8b805c070000
                         test               eax, eax                                 // 0x006670df    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x006670e1    89442414
                         {disp32} jne       _jmp_addr_0x00667060                     // 0x006670e5    0f8575ffffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x006670eb    8b44241c
                         test               eax, eax                                 // 0x006670ef    85c0
                         pop                edi                                      // 0x006670f1    5f
                         pop                esi                                      // 0x006670f2    5e
                         pop                ebx                                      // 0x006670f3    5b
                         {disp8} je         _jmp_addr_0x0066710b                     // 0x006670f4    7415
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x006670f6    8b542424
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x006670fa    d944240c
                         {disp32} mov       dword ptr [edx + 0x00000094], eax        // 0x006670fe    898294000000
                         pop                ebp                                      // 0x00667104    5d
                         add                esp, 0x1c                                // 0x00667105    83c41c
                         ret                0x0004                                   // 0x00667108    c20400
_jmp_addr_0x0066710b:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0066710b    d90598a38a00
                         pop                ebp                                      // 0x00667111    5d
                         add                esp, 0x1c                                // 0x00667112    83c41c
                         ret                0x0004                                   // 0x00667115    c20400
                         nop                                                         // 0x00667118    90
                         nop                                                         // 0x00667119    90
                         nop                                                         // 0x0066711a    90
                         nop                                                         // 0x0066711b    90
                         nop                                                         // 0x0066711c    90
                         nop                                                         // 0x0066711d    90
                         nop                                                         // 0x0066711e    90
                         nop                                                         // 0x0066711f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00667120    8b442404
                         push               0x0                                      // 0x00667124    6a00
                         push               eax                                      // 0x00667126    50
                         call               _jmp_addr_0x00667140                     // 0x00667127    e814000000
                         ret                0x0004                                   // 0x0066712c    c20400
                         nop                                                         // 0x0066712f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00667130    8b442404
                         push               0x1                                      // 0x00667134    6a01
                         push               eax                                      // 0x00667136    50
                         call               _jmp_addr_0x00667140                     // 0x00667137    e804000000
                         ret                0x0004                                   // 0x0066713c    c20400
                         nop                                                         // 0x0066713f    90
_jmp_addr_0x00667140:    sub                esp, 0x18                                // 0x00667140    83ec18
                         push               ebx                                      // 0x00667143    53
                         push               esi                                      // 0x00667144    56
                         push               edi                                      // 0x00667145    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]              // 0x00667146    8b7c2428
                         mov.s              esi, ecx                                 // 0x0066714a    8bf1
                         mov.s              ecx, edi                                 // 0x0066714c    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], esi              // 0x0066714e    89742420
                         call               _jmp_addr_0x00655cc0                     // 0x00667152    e869ebfeff
                         mov.s              ecx, eax                                 // 0x00667157    8bc8
                         test               ecx, ecx                                 // 0x00667159    85c9
                         {disp8} mov        dword ptr [esp + 0x1c], ecx              // 0x0066715b    894c241c
                         {disp32} je        _jmp_addr_0x006672a3                     // 0x0066715f    0f843e010000
                         {disp8} mov        eax, dword ptr [edi + 0x0c]              // 0x00667165    8b470c
                         {disp32} mov       edx, dword ptr [eax + 0x000000a4]        // 0x00667168    8b90a4000000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]              // 0x0066716e    8b44242c
                         {disp8} mov        dword ptr [esp + 0x14], edx              // 0x00667172    89542414
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00667176    d9442414
                         xor.s              ebx, ebx                                 // 0x0066717a    33db
                         {disp32} fmul      dword ptr [__real@447a0000]              // 0x0066717c    d80d28b28a00
                         xor.s              edi, edi                                 // 0x00667182    33ff
                         test               eax, eax                                 // 0x00667184    85c0
                         setne              bl                                       // 0x00667186    0f95c3
                         {disp8} fst        dword ptr [esp + 0x18]                   // 0x00667189    d9542418
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x0066718d    c744240c00000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1dca4]        // 0x00667195    d81da46c8c00
                         fnstsw             ax                                       // 0x0066719b    dfe0
                         test               ah, 0x41                                 // 0x0066719d    f6c441
                         {disp32} jne       _jmp_addr_0x006672a3                     // 0x006671a0    0f85fd000000
                         {disp8} mov        eax, dword ptr [esi + 0x28]              // 0x006671a6    8b4628
                         {disp32} mov       esi, dword ptr [eax + 0x00000a50]        // 0x006671a9    8bb0500a0000
                         test               esi, esi                                 // 0x006671af    85f6
                         {disp32} je        _jmp_addr_0x006672a3                     // 0x006671b1    0f84ec000000
                         push               ebp                                      // 0x006671b7    55
                         {disp8} jmp        _jmp_addr_0x006671be                     // 0x006671b8    eb04
_jmp_addr_0x006671ba:    {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x006671ba    8b4c2420
_jmp_addr_0x006671be:    cmp.s              esi, ecx                                 // 0x006671be    3bf1
                         {disp32} je        _jmp_addr_0x00667263                     // 0x006671c0    0f849d000000
                         mov.s              ecx, esi                                 // 0x006671c6    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ// 0x006671c8    e8e3430d00
                         test               eax, eax                                 // 0x006671cd    85c0
                         {disp32} je        _jmp_addr_0x00667263                     // 0x006671cf    0f848e000000
                         mov.s              ecx, esi                                 // 0x006671d5    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ// 0x006671d7    e8d4430d00
                         mov                edx, dword ptr [eax]                     // 0x006671dc    8b10
                         push               ebx                                      // 0x006671de    53
                         mov.s              ecx, eax                                 // 0x006671df    8bc8
                         call               dword ptr [edx + 0x98]                   // 0x006671e1    ff9298000000
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x006671e7    d944241c
                         mov.s              ebp, eax                                 // 0x006671eb    8be8
                         call               _jmp_addr_0x007a1400                     // 0x006671ed    e80ea21300
                         cmp.s              ebp, eax                                 // 0x006671f2    3be8
                         {disp8} jbe        _jmp_addr_0x00667263                     // 0x006671f4    766d
                         {disp8} mov        ebp, dword ptr [esp + 0x30]              // 0x006671f6    8b6c2430
                         push               ebp                                      // 0x006671fa    55
                         mov.s              ecx, esi                                 // 0x006671fb    8bce
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x006671fd    e81e720d00
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00667202    d81d90a38a00
                         fnstsw             ax                                       // 0x00667208    dfe0
                         test               ah, 0x01                                 // 0x0066720a    f6c401
                         {disp8} je         _jmp_addr_0x0066721d                     // 0x0066720d    740e
                         push               ebp                                      // 0x0066720f    55
                         mov.s              ecx, esi                                 // 0x00667210    8bce
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x00667212    e809720d00
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00667217    d95c2414
                         {disp8} jmp        _jmp_addr_0x00667225                     // 0x0066721b    eb08
_jmp_addr_0x0066721d:    {disp8} mov        dword ptr [esp + 0x14], 0x3f800000       // 0x0066721d    c74424140000803f
_jmp_addr_0x00667225:    mov.s              ecx, esi                                 // 0x00667225    8bce
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ// 0x00667227    e884430d00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x0066722c    8b4c2424
                         add                eax, 0x14                                // 0x00667230    83c014
                         push               eax                                      // 0x00667233    50
                         call               _jmp_addr_0x00658630                     // 0x00667234    e8f713ffff
                         {disp8} fmul       dword ptr [esp + 0x14]                   // 0x00667239    d84c2414
                         {disp8} fcom       dword ptr [esp + 0x18]                   // 0x0066723d    d8542418
                         fnstsw             ax                                       // 0x00667241    dfe0
                         test               ah, 0x01                                 // 0x00667243    f6c401
                         {disp8} je         _jmp_addr_0x00667261                     // 0x00667246    7419
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x00667248    d82d90a38a00
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x0066724e    d8542410
                         fnstsw             ax                                       // 0x00667252    dfe0
                         test               ah, 0x41                                 // 0x00667254    f6c441
                         {disp8} jne        _jmp_addr_0x00667261                     // 0x00667257    7508
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00667259    d95c2410
                         mov.s              edi, esi                                 // 0x0066725d    8bfe
                         {disp8} jmp        _jmp_addr_0x00667263                     // 0x0066725f    eb02
_jmp_addr_0x00667261:    fstp               st(0)                                    // 0x00667261    ddd8
_jmp_addr_0x00667263:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]        // 0x00667263    8bb65c070000
                         test               esi, esi                                 // 0x00667269    85f6
                         {disp32} jne       _jmp_addr_0x006671ba                     // 0x0066726b    0f8549ffffff
                         test               edi, edi                                 // 0x00667271    85ff
                         pop                ebp                                      // 0x00667273    5d
                         {disp8} je         _jmp_addr_0x006672a3                     // 0x00667274    742d
                         mov.s              ecx, edi                                 // 0x00667276    8bcf
                         call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ// 0x00667278    e833430d00
                         mov.s              esi, ebx                                 // 0x0066727d    8bf3
                         neg                esi                                      // 0x0066727f    f7de
                         sbb.s              esi, esi                                 // 0x00667281    1bf6
                         and                esi, 0x04                                // 0x00667283    83e604
                         inc                esi                                      // 0x00667286    46
                         dec                esi                                      // 0x00667287    4e
                         mov.s              edi, eax                                 // 0x00667288    8bf8
                         {disp8} js         _jmp_addr_0x006672a3                     // 0x0066728a    7817
_jmp_addr_0x0066728c:    push               esi                                      // 0x0066728c    56
                         push               ebx                                      // 0x0066728d    53
                         mov.s              ecx, edi                                 // 0x0066728e    8bcf
                         call               _jmp_addr_0x007337d0                     // 0x00667290    e83bc50c00
                         test               eax, eax                                 // 0x00667295    85c0
                         {disp8} je         _jmp_addr_0x006672a0                     // 0x00667297    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x70]              // 0x00667299    8b4870
                         test               ecx, ecx                                 // 0x0066729c    85c9
                         {disp8} jne        _jmp_addr_0x006672b2                     // 0x0066729e    7512
_jmp_addr_0x006672a0:    dec                esi                                      // 0x006672a0    4e
                         {disp8} jns        _jmp_addr_0x0066728c                     // 0x006672a1    79e9
_jmp_addr_0x006672a3:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006672a3    d90598a38a00
                         pop                edi                                      // 0x006672a9    5f
                         pop                esi                                      // 0x006672aa    5e
                         pop                ebx                                      // 0x006672ab    5b
                         add                esp, 0x18                                // 0x006672ac    83c418
                         ret                0x0008                                   // 0x006672af    c20800
_jmp_addr_0x006672b2:    {disp8} mov        ecx, dword ptr [esp + 0x28]              // 0x006672b2    8b4c2428
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x006672b6    d944240c
                         {disp8} mov        edx, dword ptr [esp + 0x18]              // 0x006672ba    8b542418
                         pop                edi                                      // 0x006672be    5f
                         pop                esi                                      // 0x006672bf    5e
                         {disp32} mov       dword ptr [ecx + 0x00000080], edx        // 0x006672c0    899180000000
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x006672c6    898194000000
                         pop                ebx                                      // 0x006672cc    5b
                         add                esp, 0x18                                // 0x006672cd    83c418
                         ret                0x0008                                   // 0x006672d0    c20800
                         nop                                                         // 0x006672d3    90
                         nop                                                         // 0x006672d4    90
                         nop                                                         // 0x006672d5    90
                         nop                                                         // 0x006672d6    90
                         nop                                                         // 0x006672d7    90
                         nop                                                         // 0x006672d8    90
                         nop                                                         // 0x006672d9    90
                         nop                                                         // 0x006672da    90
                         nop                                                         // 0x006672db    90
                         nop                                                         // 0x006672dc    90
                         nop                                                         // 0x006672dd    90
                         nop                                                         // 0x006672de    90
                         nop                                                         // 0x006672df    90
                         push               ebx                                      // 0x006672e0    53
                         push               esi                                      // 0x006672e1    56
                         push               edi                                      // 0x006672e2    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]              // 0x006672e3    8b7c2410
                         xor.s              esi, esi                                 // 0x006672e7    33f6
                         push               esi                                      // 0x006672e9    56
                         push               0x009cfa40                               // 0x006672ea    6840fa9c00
                         push               0x009c7f18                               // 0x006672ef    68187f9c00
                         mov.s              ebx, ecx                                 // 0x006672f4    8bd9
                         push               esi                                      // 0x006672f6    56
                         mov.s              ecx, edi                                 // 0x006672f7    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x006672f9    e8c2e9feff
                         push               eax                                      // 0x006672fe    50
                         call               ___RTDynamicCast                         // 0x006672ff    e815e71500
                         add                esp, 0x14                                // 0x00667304    83c414
                         test               eax, eax                                 // 0x00667307    85c0
                         push               esi                                      // 0x00667309    56
                         {disp8} je         _jmp_addr_0x0066732b                     // 0x0066730a    741f
                         mov.s              ecx, eax                                 // 0x0066730c    8bc8
                         call               _jmp_addr_0x00741ee0                     // 0x0066730e    e8cdab0d00
                         test               eax, eax                                 // 0x00667313    85c0
                         {disp8} je         _jmp_addr_0x0066734e                     // 0x00667315    7437
                         {disp8} lea        esi, dword ptr [eax + 0x14]              // 0x00667317    8d7014
                         push               esi                                      // 0x0066731a    56
                         push               0xe                                      // 0x0066731b    6a0e
                         push               edi                                      // 0x0066731d    57
                         mov.s              ecx, ebx                                 // 0x0066731e    8bcb
                         call               _jmp_addr_0x00666820                     // 0x00667320    e8fbf4ffff
                         pop                edi                                      // 0x00667325    5f
                         pop                esi                                      // 0x00667326    5e
                         pop                ebx                                      // 0x00667327    5b
                         ret                0x0004                                   // 0x00667328    c20400
_jmp_addr_0x0066732b:    push               0x009c7f30                               // 0x0066732b    68307f9c00
                         push               0x009c7f18                               // 0x00667330    68187f9c00
                         push               0x0                                      // 0x00667335    6a00
                         mov.s              ecx, edi                                 // 0x00667337    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x00667339    e882e9feff
                         push               eax                                      // 0x0066733e    50
                         call               ___RTDynamicCast                         // 0x0066733f    e8d5e61500
                         add                esp, 0x14                                // 0x00667344    83c414
                         test               eax, eax                                 // 0x00667347    85c0
                         {disp8} je         _jmp_addr_0x0066734e                     // 0x00667349    7403
                         {disp8} lea        esi, dword ptr [eax + 0x14]              // 0x0066734b    8d7014
_jmp_addr_0x0066734e:    push               esi                                      // 0x0066734e    56
                         push               0xe                                      // 0x0066734f    6a0e
                         push               edi                                      // 0x00667351    57
                         mov.s              ecx, ebx                                 // 0x00667352    8bcb
                         call               _jmp_addr_0x00666820                     // 0x00667354    e8c7f4ffff
                         pop                edi                                      // 0x00667359    5f
                         pop                esi                                      // 0x0066735a    5e
                         pop                ebx                                      // 0x0066735b    5b
                         ret                0x0004                                   // 0x0066735c    c20400
                         nop                                                         // 0x0066735f    90
                         push               ebx                                      // 0x00667360    53
                         push               ebp                                      // 0x00667361    55
                         push               esi                                      // 0x00667362    56
                         push               edi                                      // 0x00667363    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x00667364    8b7c2414
                         xor.s              esi, esi                                 // 0x00667368    33f6
                         push               esi                                      // 0x0066736a    56
                         push               0x009cfa40                               // 0x0066736b    6840fa9c00
                         push               0x009c7f18                               // 0x00667370    68187f9c00
                         mov.s              ebp, ecx                                 // 0x00667375    8be9
                         push               esi                                      // 0x00667377    56
                         mov.s              ecx, edi                                 // 0x00667378    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x0066737a    e841e9feff
                         push               eax                                      // 0x0066737f    50
                         call               ___RTDynamicCast                         // 0x00667380    e894e61500
                         add                esp, 0x14                                // 0x00667385    83c414
                         test               eax, eax                                 // 0x00667388    85c0
                         {disp8} je         _jmp_addr_0x006673b2                     // 0x0066738a    7426
                         push               0x1                                      // 0x0066738c    6a01
                         mov.s              ecx, eax                                 // 0x0066738e    8bc8
                         call               _jmp_addr_0x00741ee0                     // 0x00667390    e84bab0d00
                         test               eax, eax                                 // 0x00667395    85c0
                         {disp32} je        _jmp_addr_0x00667424                     // 0x00667397    0f8487000000
                         {disp8} lea        esi, dword ptr [eax + 0x14]              // 0x0066739d    8d7014
                         push               esi                                      // 0x006673a0    56
                         push               0x15                                     // 0x006673a1    6a15
                         push               edi                                      // 0x006673a3    57
                         mov.s              ecx, ebp                                 // 0x006673a4    8bcd
                         call               _jmp_addr_0x00666820                     // 0x006673a6    e875f4ffff
                         pop                edi                                      // 0x006673ab    5f
                         pop                esi                                      // 0x006673ac    5e
                         pop                ebp                                      // 0x006673ad    5d
                         pop                ebx                                      // 0x006673ae    5b
                         ret                0x0004                                   // 0x006673af    c20400
_jmp_addr_0x006673b2:    push               0x0                                      // 0x006673b2    6a00
                         push               0x009c7f30                               // 0x006673b4    68307f9c00
                         push               0x009c7f18                               // 0x006673b9    68187f9c00
                         push               0x0                                      // 0x006673be    6a00
                         mov.s              ecx, edi                                 // 0x006673c0    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x006673c2    e8f9e8feff
                         push               eax                                      // 0x006673c7    50
                         call               ___RTDynamicCast                         // 0x006673c8    e84ce61500
                         add                esp, 0x14                                // 0x006673cd    83c414
                         test               eax, eax                                 // 0x006673d0    85c0
                         {disp8} je         _jmp_addr_0x006673e9                     // 0x006673d2    7415
                         {disp8} lea        esi, dword ptr [eax + 0x14]              // 0x006673d4    8d7014
                         push               esi                                      // 0x006673d7    56
                         push               0x15                                     // 0x006673d8    6a15
                         push               edi                                      // 0x006673da    57
                         mov.s              ecx, ebp                                 // 0x006673db    8bcd
                         call               _jmp_addr_0x00666820                     // 0x006673dd    e83ef4ffff
                         pop                edi                                      // 0x006673e2    5f
                         pop                esi                                      // 0x006673e3    5e
                         pop                ebp                                      // 0x006673e4    5d
                         pop                ebx                                      // 0x006673e5    5b
                         ret                0x0004                                   // 0x006673e6    c20400
_jmp_addr_0x006673e9:    push               0x0                                      // 0x006673e9    6a00
                         push               0x009cd3f0                               // 0x006673eb    68f0d39c00
                         push               0x009c7f18                               // 0x006673f0    68187f9c00
                         push               0x0                                      // 0x006673f5    6a00
                         mov.s              ecx, edi                                 // 0x006673f7    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x006673f9    e8c2e8feff
                         push               eax                                      // 0x006673fe    50
                         call               ___RTDynamicCast                         // 0x006673ff    e815e61500
                         mov.s              ebx, eax                                 // 0x00667404    8bd8
                         add                esp, 0x14                                // 0x00667406    83c414
                         test               ebx, ebx                                 // 0x00667409    85db
                         {disp8} je         _jmp_addr_0x00667424                     // 0x0066740b    7417
                         mov.s              ecx, ebx                                 // 0x0066740d    8bcb
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x0066740f    e85c48ddff
                         test               eax, eax                                 // 0x00667414    85c0
                         {disp8} je         _jmp_addr_0x00667424                     // 0x00667416    740c
                         mov.s              ecx, ebx                                 // 0x00667418    8bcb
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x0066741a    e85148ddff
                         mov.s              esi, eax                                 // 0x0066741f    8bf0
                         add                esi, 0x14                                // 0x00667421    83c614
_jmp_addr_0x00667424:    push               esi                                      // 0x00667424    56
                         push               0x15                                     // 0x00667425    6a15
                         push               edi                                      // 0x00667427    57
                         mov.s              ecx, ebp                                 // 0x00667428    8bcd
                         call               _jmp_addr_0x00666820                     // 0x0066742a    e8f1f3ffff
                         pop                edi                                      // 0x0066742f    5f
                         pop                esi                                      // 0x00667430    5e
                         pop                ebp                                      // 0x00667431    5d
                         pop                ebx                                      // 0x00667432    5b
                         ret                0x0004                                   // 0x00667433    c20400
                         nop                                                         // 0x00667436    90
                         nop                                                         // 0x00667437    90
                         nop                                                         // 0x00667438    90
                         nop                                                         // 0x00667439    90
                         nop                                                         // 0x0066743a    90
                         nop                                                         // 0x0066743b    90
                         nop                                                         // 0x0066743c    90
                         nop                                                         // 0x0066743d    90
                         nop                                                         // 0x0066743e    90
                         nop                                                         // 0x0066743f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00667440    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]              // 0x00667444    8b542404
                         push               0x0                                      // 0x00667448    6a00
                         push               eax                                      // 0x0066744a    50
                         push               edx                                      // 0x0066744b    52
                         call               _jmp_addr_0x00666820                     // 0x0066744c    e8cff3ffff
                         ret                0x0008                                   // 0x00667451    c20800
                         nop                                                         // 0x00667454    90
                         nop                                                         // 0x00667455    90
                         nop                                                         // 0x00667456    90
                         nop                                                         // 0x00667457    90
                         nop                                                         // 0x00667458    90
                         nop                                                         // 0x00667459    90
                         nop                                                         // 0x0066745a    90
                         nop                                                         // 0x0066745b    90
                         nop                                                         // 0x0066745c    90
                         nop                                                         // 0x0066745d    90
                         nop                                                         // 0x0066745e    90
                         nop                                                         // 0x0066745f    90
                         push               ebx                                      // 0x00667460    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00667461    8b5c2408
                         push               esi                                      // 0x00667465    56
                         push               edi                                      // 0x00667466    57
                         push               0x0                                      // 0x00667467    6a00
                         push               0x009c7f50                               // 0x00667469    68507f9c00
                         push               0x009c7f18                               // 0x0066746e    68187f9c00
                         mov.s              edi, ecx                                 // 0x00667473    8bf9
                         push               0x0                                      // 0x00667475    6a00
                         mov.s              ecx, ebx                                 // 0x00667477    8bcb
                         call               _jmp_addr_0x00655cf0                     // 0x00667479    e872e8feff
                         push               eax                                      // 0x0066747e    50
                         call               ___RTDynamicCast                         // 0x0066747f    e895e51500
                         add                esp, 0x14                                // 0x00667484    83c414
                         push               0x0                                      // 0x00667487    6a00
                         push               0x009cfa40                               // 0x00667489    6840fa9c00
                         push               0x009c7f18                               // 0x0066748e    68187f9c00
                         push               0x0                                      // 0x00667493    6a00
                         mov.s              ecx, ebx                                 // 0x00667495    8bcb
                         mov.s              esi, eax                                 // 0x00667497    8bf0
                         call               _jmp_addr_0x00655cb0                     // 0x00667499    e812e8feff
                         push               eax                                      // 0x0066749e    50
                         call               ___RTDynamicCast                         // 0x0066749f    e875e51500
                         add                esp, 0x14                                // 0x006674a4    83c414
                         mov.s              ebx, eax                                 // 0x006674a7    8bd8
                         xor.s              eax, eax                                 // 0x006674a9    33c0
                         test               esi, esi                                 // 0x006674ab    85f6
                         setne              al                                       // 0x006674ad    0f95c0
                         push               0x00c01d44                               // 0x006674b0    68441dc000
                         mov.s              ecx, edi                                 // 0x006674b5    8bcf
                         push               eax                                      // 0x006674b7    50
                         call               _jmp_addr_0x00658230                     // 0x006674b8    e8730dffff
                         test               eax, eax                                 // 0x006674bd    85c0
                         {disp32} je        _jmp_addr_0x00667558                     // 0x006674bf    0f8493000000
                         xor.s              ecx, ecx                                 // 0x006674c5    33c9
                         test               ebx, ebx                                 // 0x006674c7    85db
                         setne              cl                                       // 0x006674c9    0f95c1
                         push               0x00c01d44                               // 0x006674cc    68441dc000
                         push               ecx                                      // 0x006674d1    51
                         mov.s              ecx, edi                                 // 0x006674d2    8bcf
                         call               _jmp_addr_0x00658230                     // 0x006674d4    e8570dffff
                         test               eax, eax                                 // 0x006674d9    85c0
                         {disp8} je         _jmp_addr_0x00667558                     // 0x006674db    747b
                         mov                edx, dword ptr [esi]                     // 0x006674dd    8b16
                         mov.s              ecx, esi                                 // 0x006674df    8bce
                         call               dword ptr [edx + 0x690]                  // 0x006674e1    ff9290060000
                         push               eax                                      // 0x006674e7    50
                         mov.s              ecx, ebx                                 // 0x006674e8    8bcb
                         call               _jmp_addr_0x00741ee0                     // 0x006674ea    e8f1a90d00
                         mov.s              ebx, eax                                 // 0x006674ef    8bd8
                         xor.s              eax, eax                                 // 0x006674f1    33c0
                         test               ebx, ebx                                 // 0x006674f3    85db
                         setne              al                                       // 0x006674f5    0f95c0
                         push               0x00c01d2c                               // 0x006674f8    682c1dc000
                         mov.s              ecx, edi                                 // 0x006674fd    8bcf
                         push               eax                                      // 0x006674ff    50
                         call               _jmp_addr_0x00658230                     // 0x00667500    e82b0dffff
                         test               eax, eax                                 // 0x00667505    85c0
                         {disp8} je         _jmp_addr_0x00667558                     // 0x00667507    744f
                         push               esi                                      // 0x00667509    56
                         mov.s              ecx, edi                                 // 0x0066750a    8bcf
                         call               _jmp_addr_0x00658aa0                     // 0x0066750c    e88f15ffff
                         test               al, al                                   // 0x00667511    84c0
                         {disp8} je         _jmp_addr_0x00667558                     // 0x00667513    7443
                         push               0x0000017a                               // 0x00667515    687a010000
                         push               0x00c01d04                               // 0x0066751a    68041dc000
                         push               0x74                                     // 0x0066751f    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667521    e8caf1dcff
                         add                esp, 0x0c                                // 0x00667526    83c40c
                         test               eax, eax                                 // 0x00667529    85c0
                         {disp8} je         _jmp_addr_0x00667537                     // 0x0066752b    740a
                         push               ebx                                      // 0x0066752d    53
                         mov.s              ecx, eax                                 // 0x0066752e    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667530    e8bb9bfeff
                         {disp8} jmp        _jmp_addr_0x00667539                     // 0x00667535    eb02
_jmp_addr_0x00667537:    xor.s              eax, eax                                 // 0x00667537    33c0
_jmp_addr_0x00667539:    push               eax                                      // 0x00667539    50
                         call               _jmp_addr_0x00650d70                     // 0x0066753a    e83198feff
                         {disp8} mov        ecx, dword ptr [edi + 0x34]              // 0x0066753f    8b4f34
                         add                esp, 0x04                                // 0x00667542    83c404
                         push               eax                                      // 0x00667545    50
                         push               0x18                                     // 0x00667546    6a18
                         call               _jmp_addr_0x00650280                     // 0x00667548    e8338dfeff
                         pop                edi                                      // 0x0066754d    5f
                         pop                esi                                      // 0x0066754e    5e
                         mov                eax, 0x00000001                          // 0x0066754f    b801000000
                         pop                ebx                                      // 0x00667554    5b
                         ret                0x0004                                   // 0x00667555    c20400
_jmp_addr_0x00667558:    pop                edi                                      // 0x00667558    5f
                         pop                esi                                      // 0x00667559    5e
                         xor.s              eax, eax                                 // 0x0066755a    33c0
                         pop                ebx                                      // 0x0066755c    5b
                         ret                0x0004                                   // 0x0066755d    c20400
                         sub                esp, 0x0c                                // 0x00667560    83ec0c
                         push               ebx                                      // 0x00667563    53
                         push               ebp                                      // 0x00667564    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]              // 0x00667565    8b6c2418
                         push               esi                                      // 0x00667569    56
                         push               edi                                      // 0x0066756a    57
                         push               0x0                                      // 0x0066756b    6a00
                         push               0x009c7f50                               // 0x0066756d    68507f9c00
                         push               0x009c7f18                               // 0x00667572    68187f9c00
                         mov.s              esi, ecx                                 // 0x00667577    8bf1
                         push               0x0                                      // 0x00667579    6a00
                         mov.s              ecx, ebp                                 // 0x0066757b    8bcd
                         call               _jmp_addr_0x00655cb0                     // 0x0066757d    e82ee7feff
                         push               eax                                      // 0x00667582    50
                         call               ___RTDynamicCast                         // 0x00667583    e891e41500
                         add                esp, 0x14                                // 0x00667588    83c414
                         push               0x0                                      // 0x0066758b    6a00
                         push               0x009cfa40                               // 0x0066758d    6840fa9c00
                         push               0x009c7f18                               // 0x00667592    68187f9c00
                         push               0x0                                      // 0x00667597    6a00
                         mov.s              ecx, ebp                                 // 0x00667599    8bcd
                         mov.s              edi, eax                                 // 0x0066759b    8bf8
                         call               _jmp_addr_0x00655cc0                     // 0x0066759d    e81ee7feff
                         push               eax                                      // 0x006675a2    50
                         call               ___RTDynamicCast                         // 0x006675a3    e871e41500
                         add                esp, 0x14                                // 0x006675a8    83c414
                         mov.s              ebx, eax                                 // 0x006675ab    8bd8
                         xor.s              eax, eax                                 // 0x006675ad    33c0
                         test               edi, edi                                 // 0x006675af    85ff
                         setne              al                                       // 0x006675b1    0f95c0
                         push               0x00c01d44                               // 0x006675b4    68441dc000
                         mov.s              ecx, esi                                 // 0x006675b9    8bce
                         push               eax                                      // 0x006675bb    50
                         call               _jmp_addr_0x00658230                     // 0x006675bc    e86f0cffff
                         test               eax, eax                                 // 0x006675c1    85c0
                         {disp32} je        _jmp_addr_0x00667715                     // 0x006675c3    0f844c010000
                         xor.s              ecx, ecx                                 // 0x006675c9    33c9
                         test               ebx, ebx                                 // 0x006675cb    85db
                         setne              cl                                       // 0x006675cd    0f95c1
                         push               0x00c01d44                               // 0x006675d0    68441dc000
                         push               ecx                                      // 0x006675d5    51
                         mov.s              ecx, esi                                 // 0x006675d6    8bce
                         call               _jmp_addr_0x00658230                     // 0x006675d8    e8530cffff
                         test               eax, eax                                 // 0x006675dd    85c0
                         {disp32} je        _jmp_addr_0x00667715                     // 0x006675df    0f8430010000
                         mov                edx, dword ptr [edi]                     // 0x006675e5    8b17
                         mov.s              ecx, edi                                 // 0x006675e7    8bcf
                         call               dword ptr [edx + 0x690]                  // 0x006675e9    ff9290060000
                         push               eax                                      // 0x006675ef    50
                         mov.s              ecx, ebx                                 // 0x006675f0    8bcb
                         call               _jmp_addr_0x00741ee0                     // 0x006675f2    e8e9a80d00
                         xor.s              ecx, ecx                                 // 0x006675f7    33c9
                         test               eax, eax                                 // 0x006675f9    85c0
                         setne              cl                                       // 0x006675fb    0f95c1
                         push               0x00c01d2c                               // 0x006675fe    682c1dc000
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00667603    89442424
                         push               ecx                                      // 0x00667607    51
                         mov.s              ecx, esi                                 // 0x00667608    8bce
                         call               _jmp_addr_0x00658230                     // 0x0066760a    e8210cffff
                         test               eax, eax                                 // 0x0066760f    85c0
                         {disp32} je        _jmp_addr_0x00667715                     // 0x00667611    0f84fe000000
                         {disp32} fld       dword ptr [ebp + 0x00000080]             // 0x00667617    d98580000000
                         call               _jmp_addr_0x007a1400                     // 0x0066761d    e8de9d1300
                         push               0x00000193                               // 0x00667622    6893010000
                         push               0x00c01d04                               // 0x00667627    68041dc000
                         push               0x74                                     // 0x0066762c    6a74
                         mov.s              ebx, eax                                 // 0x0066762e    8bd8
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667630    e8bbf0dcff
                         mov.s              ebp, eax                                 // 0x00667635    8be8
                         add                esp, 0x0c                                // 0x00667637    83c40c
                         test               ebp, ebp                                 // 0x0066763a    85ed
                         {disp8} je         _jmp_addr_0x00667655                     // 0x0066763c    7417
                         {disp8} lea        edx, dword ptr [esp + 0x10]              // 0x0066763e    8d542410
                         push               edx                                      // 0x00667642    52
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x00667643    8d4f14
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x00667646    e8f5e5f9ff
                         push               eax                                      // 0x0066764b    50
                         mov.s              ecx, ebp                                 // 0x0066764c    8bcd
                         call               _jmp_addr_0x00651120                     // 0x0066764e    e8cd9afeff
                         {disp8} jmp        _jmp_addr_0x00667657                     // 0x00667653    eb02
_jmp_addr_0x00667655:    xor.s              eax, eax                                 // 0x00667655    33c0
_jmp_addr_0x00667657:    push               eax                                      // 0x00667657    50
                         call               _jmp_addr_0x00650d70                     // 0x00667658    e81397feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x0066765d    8b4e34
                         add                esp, 0x04                                // 0x00667660    83c404
                         push               eax                                      // 0x00667663    50
                         push               0x1                                      // 0x00667664    6a01
                         call               _jmp_addr_0x00650280                     // 0x00667666    e8158cfeff
                         push               0x00000196                               // 0x0066766b    6896010000
                         push               0x00c01d04                               // 0x00667670    68041dc000
                         push               0x74                                     // 0x00667675    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667677    e874f0dcff
                         add                esp, 0x0c                                // 0x0066767c    83c40c
                         test               eax, eax                                 // 0x0066767f    85c0
                         {disp8} je         _jmp_addr_0x0066768f                     // 0x00667681    740c
                         push               ebx                                      // 0x00667683    53
                         mov.s              ecx, eax                                 // 0x00667684    8bc8
                         call               _jmp_addr_0x006511b0                     // 0x00667686    e8259bfeff
                         mov.s              ebp, eax                                 // 0x0066768b    8be8
                         {disp8} jmp        _jmp_addr_0x00667691                     // 0x0066768d    eb02
_jmp_addr_0x0066768f:    xor.s              ebp, ebp                                 // 0x0066768f    33ed
_jmp_addr_0x00667691:    push               0x00000195                               // 0x00667691    6895010000
                         push               0x00c01d04                               // 0x00667696    68041dc000
                         push               0x74                                     // 0x0066769b    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x0066769d    e84ef0dcff
                         add                esp, 0x0c                                // 0x006676a2    83c40c
                         test               eax, eax                                 // 0x006676a5    85c0
                         {disp8} je         _jmp_addr_0x006676b3                     // 0x006676a7    740a
                         push               edi                                      // 0x006676a9    57
                         mov.s              ecx, eax                                 // 0x006676aa    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x006676ac    e83f9afeff
                         {disp8} jmp        _jmp_addr_0x006676b5                     // 0x006676b1    eb02
_jmp_addr_0x006676b3:    xor.s              eax, eax                                 // 0x006676b3    33c0
_jmp_addr_0x006676b5:    push               ebp                                      // 0x006676b5    55
                         push               eax                                      // 0x006676b6    50
                         call               _jmp_addr_0x00650df0                     // 0x006676b7    e83497feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x006676bc    8b4e34
                         add                esp, 0x08                                // 0x006676bf    83c408
                         push               eax                                      // 0x006676c2    50
                         push               0x1d                                     // 0x006676c3    6a1d
                         call               _jmp_addr_0x00650280                     // 0x006676c5    e8b68bfeff
                         push               0x00000197                               // 0x006676ca    6897010000
                         push               0x00c01d04                               // 0x006676cf    68041dc000
                         push               0x74                                     // 0x006676d4    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x006676d6    e815f0dcff
                         add                esp, 0x0c                                // 0x006676db    83c40c
                         test               eax, eax                                 // 0x006676de    85c0
                         {disp8} je         _jmp_addr_0x006676f0                     // 0x006676e0    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x006676e2    8b4c2420
                         push               ecx                                      // 0x006676e6    51
                         mov.s              ecx, eax                                 // 0x006676e7    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x006676e9    e8029afeff
                         {disp8} jmp        _jmp_addr_0x006676f2                     // 0x006676ee    eb02
_jmp_addr_0x006676f0:    xor.s              eax, eax                                 // 0x006676f0    33c0
_jmp_addr_0x006676f2:    push               eax                                      // 0x006676f2    50
                         call               _jmp_addr_0x00650d70                     // 0x006676f3    e87896feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x006676f8    8b4e34
                         add                esp, 0x04                                // 0x006676fb    83c404
                         push               eax                                      // 0x006676fe    50
                         push               0x18                                     // 0x006676ff    6a18
                         call               _jmp_addr_0x00650280                     // 0x00667701    e87a8bfeff
                         pop                edi                                      // 0x00667706    5f
                         pop                esi                                      // 0x00667707    5e
                         pop                ebp                                      // 0x00667708    5d
                         mov                eax, 0x00000001                          // 0x00667709    b801000000
                         pop                ebx                                      // 0x0066770e    5b
                         add                esp, 0x0c                                // 0x0066770f    83c40c
                         ret                0x0004                                   // 0x00667712    c20400
_jmp_addr_0x00667715:    pop                edi                                      // 0x00667715    5f
                         pop                esi                                      // 0x00667716    5e
                         pop                ebp                                      // 0x00667717    5d
                         xor.s              eax, eax                                 // 0x00667718    33c0
                         pop                ebx                                      // 0x0066771a    5b
                         add                esp, 0x0c                                // 0x0066771b    83c40c
                         ret                0x0004                                   // 0x0066771e    c20400
                         nop                                                         // 0x00667721    90
                         nop                                                         // 0x00667722    90
                         nop                                                         // 0x00667723    90
                         nop                                                         // 0x00667724    90
                         nop                                                         // 0x00667725    90
                         nop                                                         // 0x00667726    90
                         nop                                                         // 0x00667727    90
                         nop                                                         // 0x00667728    90
                         nop                                                         // 0x00667729    90
                         nop                                                         // 0x0066772a    90
                         nop                                                         // 0x0066772b    90
                         nop                                                         // 0x0066772c    90
                         nop                                                         // 0x0066772d    90
                         nop                                                         // 0x0066772e    90
                         nop                                                         // 0x0066772f    90
                         sub                esp, 0x0c                                // 0x00667730    83ec0c
                         push               ebx                                      // 0x00667733    53
                         push               ebp                                      // 0x00667734    55
                         push               esi                                      // 0x00667735    56
                         push               edi                                      // 0x00667736    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]              // 0x00667737    8b7c2420
                         push               0x0                                      // 0x0066773b    6a00
                         push               0x009c7f50                               // 0x0066773d    68507f9c00
                         push               0x009c7f18                               // 0x00667742    68187f9c00
                         mov.s              esi, ecx                                 // 0x00667747    8bf1
                         push               0x0                                      // 0x00667749    6a00
                         mov.s              ecx, edi                                 // 0x0066774b    8bcf
                         call               _jmp_addr_0x00655cb0                     // 0x0066774d    e85ee5feff
                         push               eax                                      // 0x00667752    50
                         call               ___RTDynamicCast                         // 0x00667753    e8c1e21500
                         add                esp, 0x14                                // 0x00667758    83c414
                         push               0x0                                      // 0x0066775b    6a00
                         push               0x009c7f50                               // 0x0066775d    68507f9c00
                         push               0x009c7f18                               // 0x00667762    68187f9c00
                         push               0x0                                      // 0x00667767    6a00
                         mov.s              ecx, edi                                 // 0x00667769    8bcf
                         mov.s              ebx, eax                                 // 0x0066776b    8bd8
                         call               _jmp_addr_0x00655cc0                     // 0x0066776d    e84ee5feff
                         push               eax                                      // 0x00667772    50
                         call               ___RTDynamicCast                         // 0x00667773    e8a1e21500
                         mov.s              ebp, eax                                 // 0x00667778    8be8
                         add                esp, 0x14                                // 0x0066777a    83c414
                         xor.s              eax, eax                                 // 0x0066777d    33c0
                         test               ebx, ebx                                 // 0x0066777f    85db
                         setne              al                                       // 0x00667781    0f95c0
                         push               0x00c01d44                               // 0x00667784    68441dc000
                         mov.s              ecx, esi                                 // 0x00667789    8bce
                         {disp8} mov        dword ptr [esp + 0x24], ebp              // 0x0066778b    896c2424
                         push               eax                                      // 0x0066778f    50
                         call               _jmp_addr_0x00658230                     // 0x00667790    e89b0affff
                         test               eax, eax                                 // 0x00667795    85c0
                         {disp32} je        _jmp_addr_0x006678b0                     // 0x00667797    0f8413010000
                         xor.s              ecx, ecx                                 // 0x0066779d    33c9
                         test               ebp, ebp                                 // 0x0066779f    85ed
                         setne              cl                                       // 0x006677a1    0f95c1
                         push               0x00c01d44                               // 0x006677a4    68441dc000
                         push               ecx                                      // 0x006677a9    51
                         mov.s              ecx, esi                                 // 0x006677aa    8bce
                         call               _jmp_addr_0x00658230                     // 0x006677ac    e87f0affff
                         test               eax, eax                                 // 0x006677b1    85c0
                         {disp32} je        _jmp_addr_0x006678b0                     // 0x006677b3    0f84f7000000
                         {disp8} mov        edx, dword ptr [edi + 0x0c]              // 0x006677b9    8b570c
                         {disp8} mov        ebp, dword ptr [edx + 0x78]              // 0x006677bc    8b6a78
                         push               0x000001ad                               // 0x006677bf    68ad010000
                         push               0x00c01d04                               // 0x006677c4    68041dc000
                         push               0x74                                     // 0x006677c9    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x006677cb    e820efdcff
                         mov.s              edi, eax                                 // 0x006677d0    8bf8
                         add                esp, 0x0c                                // 0x006677d2    83c40c
                         test               edi, edi                                 // 0x006677d5    85ff
                         {disp8} je         _jmp_addr_0x006677f0                     // 0x006677d7    7417
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x006677d9    8d442410
                         push               eax                                      // 0x006677dd    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]              // 0x006677de    8d4b14
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x006677e1    e85ae4f9ff
                         push               eax                                      // 0x006677e6    50
                         mov.s              ecx, edi                                 // 0x006677e7    8bcf
                         call               _jmp_addr_0x00651120                     // 0x006677e9    e83299feff
                         {disp8} jmp        _jmp_addr_0x006677f2                     // 0x006677ee    eb02
_jmp_addr_0x006677f0:    xor.s              eax, eax                                 // 0x006677f0    33c0
_jmp_addr_0x006677f2:    push               eax                                      // 0x006677f2    50
                         call               _jmp_addr_0x00650d70                     // 0x006677f3    e87895feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x006677f8    8b4e34
                         add                esp, 0x04                                // 0x006677fb    83c404
                         push               eax                                      // 0x006677fe    50
                         push               0x1                                      // 0x006677ff    6a01
                         call               _jmp_addr_0x00650280                     // 0x00667801    e87a8afeff
                         push               0x000001b0                               // 0x00667806    68b0010000
                         push               0x00c01d04                               // 0x0066780b    68041dc000
                         push               0x74                                     // 0x00667810    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667812    e8d9eedcff
                         add                esp, 0x0c                                // 0x00667817    83c40c
                         test               eax, eax                                 // 0x0066781a    85c0
                         {disp8} je         _jmp_addr_0x0066782a                     // 0x0066781c    740c
                         push               ebp                                      // 0x0066781e    55
                         mov.s              ecx, eax                                 // 0x0066781f    8bc8
                         call               _jmp_addr_0x006511b0                     // 0x00667821    e88a99feff
                         mov.s              edi, eax                                 // 0x00667826    8bf8
                         {disp8} jmp        _jmp_addr_0x0066782c                     // 0x00667828    eb02
_jmp_addr_0x0066782a:    xor.s              edi, edi                                 // 0x0066782a    33ff
_jmp_addr_0x0066782c:    push               0x000001af                               // 0x0066782c    68af010000
                         push               0x00c01d04                               // 0x00667831    68041dc000
                         push               0x74                                     // 0x00667836    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667838    e8b3eedcff
                         add                esp, 0x0c                                // 0x0066783d    83c40c
                         test               eax, eax                                 // 0x00667840    85c0
                         {disp8} je         _jmp_addr_0x0066784e                     // 0x00667842    740a
                         push               ebx                                      // 0x00667844    53
                         mov.s              ecx, eax                                 // 0x00667845    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667847    e8a498feff
                         {disp8} jmp        _jmp_addr_0x00667850                     // 0x0066784c    eb02
_jmp_addr_0x0066784e:    xor.s              eax, eax                                 // 0x0066784e    33c0
_jmp_addr_0x00667850:    push               edi                                      // 0x00667850    57
                         push               eax                                      // 0x00667851    50
                         call               _jmp_addr_0x00650df0                     // 0x00667852    e89995feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x00667857    8b4e34
                         add                esp, 0x08                                // 0x0066785a    83c408
                         push               eax                                      // 0x0066785d    50
                         push               0x1d                                     // 0x0066785e    6a1d
                         call               _jmp_addr_0x00650280                     // 0x00667860    e81b8afeff
                         push               0x000001b1                               // 0x00667865    68b1010000
                         push               0x00c01d04                               // 0x0066786a    68041dc000
                         push               0x74                                     // 0x0066786f    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667871    e87aeedcff
                         add                esp, 0x0c                                // 0x00667876    83c40c
                         test               eax, eax                                 // 0x00667879    85c0
                         {disp8} je         _jmp_addr_0x0066788b                     // 0x0066787b    740e
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x0066787d    8b4c2420
                         push               ecx                                      // 0x00667881    51
                         mov.s              ecx, eax                                 // 0x00667882    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667884    e86798feff
                         {disp8} jmp        _jmp_addr_0x0066788d                     // 0x00667889    eb02
_jmp_addr_0x0066788b:    xor.s              eax, eax                                 // 0x0066788b    33c0
_jmp_addr_0x0066788d:    push               eax                                      // 0x0066788d    50
                         call               _jmp_addr_0x00650d70                     // 0x0066788e    e8dd94feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x00667893    8b4e34
                         add                esp, 0x04                                // 0x00667896    83c404
                         push               eax                                      // 0x00667899    50
                         push               0x18                                     // 0x0066789a    6a18
                         call               _jmp_addr_0x00650280                     // 0x0066789c    e8df89feff
                         pop                edi                                      // 0x006678a1    5f
                         pop                esi                                      // 0x006678a2    5e
                         pop                ebp                                      // 0x006678a3    5d
                         mov                eax, 0x00000001                          // 0x006678a4    b801000000
                         pop                ebx                                      // 0x006678a9    5b
                         add                esp, 0x0c                                // 0x006678aa    83c40c
                         ret                0x0004                                   // 0x006678ad    c20400
_jmp_addr_0x006678b0:    pop                edi                                      // 0x006678b0    5f
                         pop                esi                                      // 0x006678b1    5e
                         pop                ebp                                      // 0x006678b2    5d
                         xor.s              eax, eax                                 // 0x006678b3    33c0
                         pop                ebx                                      // 0x006678b5    5b
                         add                esp, 0x0c                                // 0x006678b6    83c40c
                         ret                0x0004                                   // 0x006678b9    c20400
                         nop                                                         // 0x006678bc    90
                         nop                                                         // 0x006678bd    90
                         nop                                                         // 0x006678be    90
                         nop                                                         // 0x006678bf    90
                         push               ebx                                      // 0x006678c0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x006678c1    8b5c2408
                         push               ebp                                      // 0x006678c5    55
                         push               esi                                      // 0x006678c6    56
                         push               edi                                      // 0x006678c7    57
                         push               0x0                                      // 0x006678c8    6a00
                         push               0x00bf4178                               // 0x006678ca    687841bf00
                         push               0x009c7f18                               // 0x006678cf    68187f9c00
                         mov.s              esi, ecx                                 // 0x006678d4    8bf1
                         push               0x0                                      // 0x006678d6    6a00
                         mov.s              ecx, ebx                                 // 0x006678d8    8bcb
                         call               _jmp_addr_0x00655cb0                     // 0x006678da    e8d1e3feff
                         push               eax                                      // 0x006678df    50
                         call               ___RTDynamicCast                         // 0x006678e0    e834e11500
                         add                esp, 0x14                                // 0x006678e5    83c414
                         push               0x0                                      // 0x006678e8    6a00
                         push               0x009cfa40                               // 0x006678ea    6840fa9c00
                         push               0x009c7f18                               // 0x006678ef    68187f9c00
                         push               0x0                                      // 0x006678f4    6a00
                         mov.s              ecx, ebx                                 // 0x006678f6    8bcb
                         mov.s              edi, eax                                 // 0x006678f8    8bf8
                         call               _jmp_addr_0x00655cc0                     // 0x006678fa    e8c1e3feff
                         push               eax                                      // 0x006678ff    50
                         call               ___RTDynamicCast                         // 0x00667900    e814e11500
                         add                esp, 0x14                                // 0x00667905    83c414
                         mov.s              ebx, eax                                 // 0x00667908    8bd8
                         xor.s              eax, eax                                 // 0x0066790a    33c0
                         test               edi, edi                                 // 0x0066790c    85ff
                         setne              al                                       // 0x0066790e    0f95c0
                         push               0x00c00bf8                               // 0x00667911    68f80bc000
                         mov.s              ecx, esi                                 // 0x00667916    8bce
                         push               eax                                      // 0x00667918    50
                         call               _jmp_addr_0x00658230                     // 0x00667919    e81209ffff
                         test               edi, edi                                 // 0x0066791e    85ff
                         {disp8} je         _jmp_addr_0x0066798c                     // 0x00667920    746a
                         mov.s              ecx, edi                                 // 0x00667922    8bcf
                         call               _jmp_addr_0x00726380                     // 0x00667924    e857ea0b00
                         xor.s              ecx, ecx                                 // 0x00667929    33c9
                         test               ebx, ebx                                 // 0x0066792b    85db
                         setne              cl                                       // 0x0066792d    0f95c1
                         push               0x00c01d64                               // 0x00667930    68641dc000
                         mov.s              ebp, eax                                 // 0x00667935    8be8
                         push               ecx                                      // 0x00667937    51
                         mov.s              ecx, esi                                 // 0x00667938    8bce
                         call               _jmp_addr_0x00658230                     // 0x0066793a    e8f108ffff
                         test               eax, eax                                 // 0x0066793f    85c0
                         {disp8} je         _jmp_addr_0x0066798c                     // 0x00667941    7449
                         xor.s              edx, edx                                 // 0x00667943    33d2
                         cmp                ebp, 0x15                                // 0x00667945    83fd15
                         sete               dl                                       // 0x00667948    0f94c2
                         mov.s              ecx, ebx                                 // 0x0066794b    8bcb
                         push               edx                                      // 0x0066794d    52
                         call               _jmp_addr_0x00741ee0                     // 0x0066794e    e88da50d00
                         mov.s              ebx, eax                                 // 0x00667953    8bd8
                         xor.s              eax, eax                                 // 0x00667955    33c0
                         test               ebx, ebx                                 // 0x00667957    85db
                         setne              al                                       // 0x00667959    0f95c0
                         push               0x00c01d50                               // 0x0066795c    68501dc000
                         mov.s              ecx, esi                                 // 0x00667961    8bce
                         push               eax                                      // 0x00667963    50
                         call               _jmp_addr_0x00658230                     // 0x00667964    e8c708ffff
                         test               eax, eax                                 // 0x00667969    85c0
                         {disp8} je         _jmp_addr_0x0066798c                     // 0x0066796b    741f
                         push               edi                                      // 0x0066796d    57
                         mov.s              ecx, esi                                 // 0x0066796e    8bce
                         call               _jmp_addr_0x00665dd0                     // 0x00667970    e85be4ffff
                         push               0x0                                      // 0x00667975    6a00
                         push               edi                                      // 0x00667977    57
                         push               ebx                                      // 0x00667978    53
                         mov.s              ecx, esi                                 // 0x00667979    8bce
                         call               _jmp_addr_0x00665fc0                     // 0x0066797b    e840e6ffff
                         pop                edi                                      // 0x00667980    5f
                         pop                esi                                      // 0x00667981    5e
                         pop                ebp                                      // 0x00667982    5d
                         pop                ebx                                      // 0x00667983    5b
                         and                eax, 0x000000ff                          // 0x00667984    25ff000000
                         ret                0x0004                                   // 0x00667989    c20400
_jmp_addr_0x0066798c:    pop                edi                                      // 0x0066798c    5f
                         pop                esi                                      // 0x0066798d    5e
                         pop                ebp                                      // 0x0066798e    5d
                         xor.s              eax, eax                                 // 0x0066798f    33c0
                         pop                ebx                                      // 0x00667991    5b
                         ret                0x0004                                   // 0x00667992    c20400
                         nop                                                         // 0x00667995    90
                         nop                                                         // 0x00667996    90
                         nop                                                         // 0x00667997    90
                         nop                                                         // 0x00667998    90
                         nop                                                         // 0x00667999    90
                         nop                                                         // 0x0066799a    90
                         nop                                                         // 0x0066799b    90
                         nop                                                         // 0x0066799c    90
                         nop                                                         // 0x0066799d    90
                         nop                                                         // 0x0066799e    90
                         nop                                                         // 0x0066799f    90
                         push               ecx                                      // 0x006679a0    51
                         push               ebx                                      // 0x006679a1    53
                         push               esi                                      // 0x006679a2    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x006679a3    8b742410
                         push               edi                                      // 0x006679a7    57
                         push               0x0                                      // 0x006679a8    6a00
                         push               0x009cfa40                               // 0x006679aa    6840fa9c00
                         push               0x009c7f18                               // 0x006679af    68187f9c00
                         mov.s              edi, ecx                                 // 0x006679b4    8bf9
                         push               0x0                                      // 0x006679b6    6a00
                         mov.s              ecx, esi                                 // 0x006679b8    8bce
                         call               _jmp_addr_0x00655cb0                     // 0x006679ba    e8f1e2feff
                         push               eax                                      // 0x006679bf    50
                         call               ___RTDynamicCast                         // 0x006679c0    e854e01500
                         add                esp, 0x14                                // 0x006679c5    83c414
                         test               eax, eax                                 // 0x006679c8    85c0
                         {disp32} je        _jmp_addr_0x00667b09                     // 0x006679ca    0f8439010000
                         {disp32} mov       eax, dword ptr [eax + 0x000009a4]        // 0x006679d0    8b80a4090000
                         test               eax, eax                                 // 0x006679d6    85c0
                         {disp32} je        _jmp_addr_0x00667b09                     // 0x006679d8    0f842b010000
                         {disp32} mov       ebx, dword ptr [eax + 0x000000cc]        // 0x006679de    8b98cc000000
                         test               ebx, ebx                                 // 0x006679e4    85db
                         {disp32} je        _jmp_addr_0x00667b09                     // 0x006679e6    0f841d010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000080]        // 0x006679ec    8b8680000000
                         push               0x000001de                               // 0x006679f2    68de010000
                         push               0x00c01d04                               // 0x006679f7    68041dc000
                         push               0x74                                     // 0x006679fc    6a74
                         {disp8} mov        dword ptr [esp + 0x18], eax              // 0x006679fe    89442418
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667a02    e8e9ecdcff
                         add                esp, 0x0c                                // 0x00667a07    83c40c
                         test               eax, eax                                 // 0x00667a0a    85c0
                         {disp8} je         _jmp_addr_0x00667a23                     // 0x00667a0c    7415
                         {disp8} mov        ecx, dword ptr [edi + 0x58]              // 0x00667a0e    8b4f58
                         mov.s              edx, ecx                                 // 0x00667a11    8bd1
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x00667a13    894c2414
                         push               edx                                      // 0x00667a17    52
                         mov.s              ecx, eax                                 // 0x00667a18    8bc8
                         call               _jmp_addr_0x00651210                     // 0x00667a1a    e8f197feff
                         mov.s              esi, eax                                 // 0x00667a1f    8bf0
                         {disp8} jmp        _jmp_addr_0x00667a25                     // 0x00667a21    eb02
_jmp_addr_0x00667a23:    xor.s              esi, esi                                 // 0x00667a23    33f6
_jmp_addr_0x00667a25:    push               0x000001de                               // 0x00667a25    68de010000
                         push               0x00c01d04                               // 0x00667a2a    68041dc000
                         push               0x74                                     // 0x00667a2f    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667a31    e8baecdcff
                         add                esp, 0x0c                                // 0x00667a36    83c40c
                         test               eax, eax                                 // 0x00667a39    85c0
                         {disp8} je         _jmp_addr_0x00667a47                     // 0x00667a3b    740a
                         push               ebx                                      // 0x00667a3d    53
                         mov.s              ecx, eax                                 // 0x00667a3e    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667a40    e8ab96feff
                         {disp8} jmp        _jmp_addr_0x00667a49                     // 0x00667a45    eb02
_jmp_addr_0x00667a47:    xor.s              eax, eax                                 // 0x00667a47    33c0
_jmp_addr_0x00667a49:    push               esi                                      // 0x00667a49    56
                         push               eax                                      // 0x00667a4a    50
                         call               _jmp_addr_0x00650df0                     // 0x00667a4b    e8a093feff
                         {disp8} mov        ecx, dword ptr [edi + 0x34]              // 0x00667a50    8b4f34
                         add                esp, 0x08                                // 0x00667a53    83c408
                         push               eax                                      // 0x00667a56    50
                         push               0x2                                      // 0x00667a57    6a02
                         call               _jmp_addr_0x00650280                     // 0x00667a59    e82288feff
                         push               0x000001e1                               // 0x00667a5e    68e1010000
                         push               0x00c01d04                               // 0x00667a63    68041dc000
                         push               0x74                                     // 0x00667a68    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667a6a    e881ecdcff
                         add                esp, 0x0c                                // 0x00667a6f    83c40c
                         test               eax, eax                                 // 0x00667a72    85c0
                         {disp8} je         _jmp_addr_0x00667a86                     // 0x00667a74    7410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]              // 0x00667a76    8b4c240c
                         push               ecx                                      // 0x00667a7a    51
                         mov.s              ecx, eax                                 // 0x00667a7b    8bc8
                         call               _jmp_addr_0x00651210                     // 0x00667a7d    e88e97feff
                         mov.s              esi, eax                                 // 0x00667a82    8bf0
                         {disp8} jmp        _jmp_addr_0x00667a88                     // 0x00667a84    eb02
_jmp_addr_0x00667a86:    xor.s              esi, esi                                 // 0x00667a86    33f6
_jmp_addr_0x00667a88:    push               0x000001e0                               // 0x00667a88    68e0010000
                         push               0x00c01d04                               // 0x00667a8d    68041dc000
                         push               0x74                                     // 0x00667a92    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667a94    e857ecdcff
                         add                esp, 0x0c                                // 0x00667a99    83c40c
                         test               eax, eax                                 // 0x00667a9c    85c0
                         {disp8} je         _jmp_addr_0x00667aaa                     // 0x00667a9e    740a
                         push               ebx                                      // 0x00667aa0    53
                         mov.s              ecx, eax                                 // 0x00667aa1    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667aa3    e84896feff
                         {disp8} jmp        _jmp_addr_0x00667aac                     // 0x00667aa8    eb02
_jmp_addr_0x00667aaa:    xor.s              eax, eax                                 // 0x00667aaa    33c0
_jmp_addr_0x00667aac:    push               esi                                      // 0x00667aac    56
                         push               eax                                      // 0x00667aad    50
                         call               _jmp_addr_0x00650df0                     // 0x00667aae    e83d93feff
                         {disp8} mov        ecx, dword ptr [edi + 0x34]              // 0x00667ab3    8b4f34
                         add                esp, 0x08                                // 0x00667ab6    83c408
                         push               eax                                      // 0x00667ab9    50
                         push               0x14                                     // 0x00667aba    6a14
                         call               _jmp_addr_0x00650280                     // 0x00667abc    e8bf87feff
                         push               0x000001e2                               // 0x00667ac1    68e2010000
                         push               0x00c01d04                               // 0x00667ac6    68041dc000
                         push               0x74                                     // 0x00667acb    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667acd    e81eecdcff
                         add                esp, 0x0c                                // 0x00667ad2    83c40c
                         test               eax, eax                                 // 0x00667ad5    85c0
                         {disp8} je         _jmp_addr_0x00667ae7                     // 0x00667ad7    740e
                         push               0x40400000                               // 0x00667ad9    6800004040
                         mov.s              ecx, eax                                 // 0x00667ade    8bc8
                         call               _jmp_addr_0x00651210                     // 0x00667ae0    e82b97feff
                         {disp8} jmp        _jmp_addr_0x00667ae9                     // 0x00667ae5    eb02
_jmp_addr_0x00667ae7:    xor.s              eax, eax                                 // 0x00667ae7    33c0
_jmp_addr_0x00667ae9:    push               eax                                      // 0x00667ae9    50
                         call               _jmp_addr_0x00650d70                     // 0x00667aea    e88192feff
                         {disp8} mov        ecx, dword ptr [edi + 0x34]              // 0x00667aef    8b4f34
                         add                esp, 0x04                                // 0x00667af2    83c404
                         push               eax                                      // 0x00667af5    50
                         push               0x17                                     // 0x00667af6    6a17
                         call               _jmp_addr_0x00650280                     // 0x00667af8    e88387feff
                         pop                edi                                      // 0x00667afd    5f
                         pop                esi                                      // 0x00667afe    5e
                         mov                eax, 0x00000001                          // 0x00667aff    b801000000
                         pop                ebx                                      // 0x00667b04    5b
                         pop                ecx                                      // 0x00667b05    59
                         ret                0x0004                                   // 0x00667b06    c20400
_jmp_addr_0x00667b09:    pop                edi                                      // 0x00667b09    5f
                         pop                esi                                      // 0x00667b0a    5e
                         xor.s              eax, eax                                 // 0x00667b0b    33c0
                         pop                ebx                                      // 0x00667b0d    5b
                         pop                ecx                                      // 0x00667b0e    59
                         ret                0x0004                                   // 0x00667b0f    c20400
                         nop                                                         // 0x00667b12    90
                         nop                                                         // 0x00667b13    90
                         nop                                                         // 0x00667b14    90
                         nop                                                         // 0x00667b15    90
                         nop                                                         // 0x00667b16    90
                         nop                                                         // 0x00667b17    90
                         nop                                                         // 0x00667b18    90
                         nop                                                         // 0x00667b19    90
                         nop                                                         // 0x00667b1a    90
                         nop                                                         // 0x00667b1b    90
                         nop                                                         // 0x00667b1c    90
                         nop                                                         // 0x00667b1d    90
                         nop                                                         // 0x00667b1e    90
                         nop                                                         // 0x00667b1f    90
                         push               ecx                                      // 0x00667b20    51
                         mov                eax, dword ptr [ecx]                     // 0x00667b21    8b01
                         push               ebx                                      // 0x00667b23    53
                         push               esi                                      // 0x00667b24    56
                         call               dword ptr [eax + 0x1c]                   // 0x00667b25    ff501c
                         {disp32} mov       eax, dword ptr [eax + 0x00000a48]        // 0x00667b28    8b80480a0000
                         test               eax, eax                                 // 0x00667b2e    85c0
                         {disp8} je         _jmp_addr_0x00667b95                     // 0x00667b30    7463
                         push               ebp                                      // 0x00667b32    55
                         push               edi                                      // 0x00667b33    57
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00667b34    c744241000000000
                         xor.s              ebx, ebx                                 // 0x00667b3c    33db
                         {disp8} lea        edi, dword ptr [eax + 0x34]              // 0x00667b3e    8d7834
                         mov                ebp, 0x00000006                          // 0x00667b41    bd06000000
_jmp_addr_0x00667b46:    mov                esi, dword ptr [edi]                     // 0x00667b46    8b37
                         test               esi, esi                                 // 0x00667b48    85f6
                         {disp8} je         _jmp_addr_0x00667b6b                     // 0x00667b4a    741f
                         mov                edx, dword ptr [esi]                     // 0x00667b4c    8b16
                         mov.s              ecx, esi                                 // 0x00667b4e    8bce
                         call               dword ptr [edx + 0x420]                  // 0x00667b50    ff9220040000
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x00667b56    d8542410
                         fnstsw             ax                                       // 0x00667b5a    dfe0
                         test               ah, 0x41                                 // 0x00667b5c    f6c441
                         {disp8} jne        _jmp_addr_0x00667b69                     // 0x00667b5f    7508
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00667b61    d95c2410
                         mov.s              ebx, esi                                 // 0x00667b65    8bde
                         {disp8} jmp        _jmp_addr_0x00667b6b                     // 0x00667b67    eb02
_jmp_addr_0x00667b69:    fstp               st(0)                                    // 0x00667b69    ddd8
_jmp_addr_0x00667b6b:    add                edi, 0x04                                // 0x00667b6b    83c704
                         dec                ebp                                      // 0x00667b6e    4d
                         {disp8} jne        _jmp_addr_0x00667b46                     // 0x00667b6f    75d5
                         test               ebx, ebx                                 // 0x00667b71    85db
                         pop                edi                                      // 0x00667b73    5f
                         pop                ebp                                      // 0x00667b74    5d
                         {disp8} je         _jmp_addr_0x00667b95                     // 0x00667b75    741e
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x00667b77    8b742410
                         mov.s              ecx, ebx                                 // 0x00667b7b    8bcb
                         {disp32} mov       dword ptr [esi + 0x00000094], ebx        // 0x00667b7d    899e94000000
                         call               _jmp_addr_0x0077b920                     // 0x00667b83    e8983d1100
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x00667b88    d9442408
                         {disp8} mov        dword ptr [esi + 0x78], eax              // 0x00667b8c    894678
                         pop                esi                                      // 0x00667b8f    5e
                         pop                ebx                                      // 0x00667b90    5b
                         pop                ecx                                      // 0x00667b91    59
                         ret                0x0004                                   // 0x00667b92    c20400
_jmp_addr_0x00667b95:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00667b95    d90598a38a00
                         pop                esi                                      // 0x00667b9b    5e
                         pop                ebx                                      // 0x00667b9c    5b
                         pop                ecx                                      // 0x00667b9d    59
                         ret                0x0004                                   // 0x00667b9e    c20400
                         nop                                                         // 0x00667ba1    90
                         nop                                                         // 0x00667ba2    90
                         nop                                                         // 0x00667ba3    90
                         nop                                                         // 0x00667ba4    90
                         nop                                                         // 0x00667ba5    90
                         nop                                                         // 0x00667ba6    90
                         nop                                                         // 0x00667ba7    90
                         nop                                                         // 0x00667ba8    90
                         nop                                                         // 0x00667ba9    90
                         nop                                                         // 0x00667baa    90
                         nop                                                         // 0x00667bab    90
                         nop                                                         // 0x00667bac    90
                         nop                                                         // 0x00667bad    90
                         nop                                                         // 0x00667bae    90
                         nop                                                         // 0x00667baf    90
                         sub                esp, 0x0c                                // 0x00667bb0    83ec0c
                         push               ebx                                      // 0x00667bb3    53
                         push               esi                                      // 0x00667bb4    56
                         push               edi                                      // 0x00667bb5    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]              // 0x00667bb6    8b7c241c
                         push               0x0                                      // 0x00667bba    6a00
                         push               0x009c7f30                               // 0x00667bbc    68307f9c00
                         push               0x009c7f18                               // 0x00667bc1    68187f9c00
                         mov.s              ebx, ecx                                 // 0x00667bc6    8bd9
                         push               0x0                                      // 0x00667bc8    6a00
                         mov.s              ecx, edi                                 // 0x00667bca    8bcf
                         call               _jmp_addr_0x00655cf0                     // 0x00667bcc    e81fe1feff
                         push               eax                                      // 0x00667bd1    50
                         call               ___RTDynamicCast                         // 0x00667bd2    e842de1500
                         add                esp, 0x14                                // 0x00667bd7    83c414
                         push               0x0                                      // 0x00667bda    6a00
                         push               0x009d96c0                               // 0x00667bdc    68c0969d00
                         push               0x009c7f18                               // 0x00667be1    68187f9c00
                         push               0x0                                      // 0x00667be6    6a00
                         mov.s              ecx, edi                                 // 0x00667be8    8bcf
                         mov.s              esi, eax                                 // 0x00667bea    8bf0
                         call               _jmp_addr_0x00655cb0                     // 0x00667bec    e8bfe0feff
                         push               eax                                      // 0x00667bf1    50
                         call               ___RTDynamicCast                         // 0x00667bf2    e822de1500
                         add                esp, 0x14                                // 0x00667bf7    83c414
                         test               esi, esi                                 // 0x00667bfa    85f6
                         mov.s              edi, eax                                 // 0x00667bfc    8bf8
                         {disp8} je         _jmp_addr_0x00667c7a                     // 0x00667bfe    747a
                         test               edi, edi                                 // 0x00667c00    85ff
                         {disp8} je         _jmp_addr_0x00667c7a                     // 0x00667c02    7476
                         {disp8} lea        eax, dword ptr [esp + 0x0c]              // 0x00667c04    8d44240c
                         push               eax                                      // 0x00667c08    50
                         mov.s              ecx, edi                                 // 0x00667c09    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00667c0b    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x00667c13    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x00667c1b    c744241800000000
                         call               _jmp_addr_0x0077ce60                     // 0x00667c23    e838521100
                         push               esi                                      // 0x00667c28    56
                         mov.s              ecx, ebx                                 // 0x00667c29    8bcb
                         call               _jmp_addr_0x00658aa0                     // 0x00667c2b    e8700effff
                         test               al, al                                   // 0x00667c30    84c0
                         {disp8} je         _jmp_addr_0x00667c7a                     // 0x00667c32    7446
                         push               0x00000215                               // 0x00667c34    6815020000
                         push               0x00c01d04                               // 0x00667c39    68041dc000
                         push               0x74                                     // 0x00667c3e    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00667c40    e8abeadcff
                         add                esp, 0x0c                                // 0x00667c45    83c40c
                         test               eax, eax                                 // 0x00667c48    85c0
                         {disp8} je         _jmp_addr_0x00667c56                     // 0x00667c4a    740a
                         push               edi                                      // 0x00667c4c    57
                         mov.s              ecx, eax                                 // 0x00667c4d    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00667c4f    e89c94feff
                         {disp8} jmp        _jmp_addr_0x00667c58                     // 0x00667c54    eb02
_jmp_addr_0x00667c56:    xor.s              eax, eax                                 // 0x00667c56    33c0
_jmp_addr_0x00667c58:    push               eax                                      // 0x00667c58    50
                         call               _jmp_addr_0x00650d70                     // 0x00667c59    e81291feff
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]              // 0x00667c5e    8b4b34
                         add                esp, 0x04                                // 0x00667c61    83c404
                         push               eax                                      // 0x00667c64    50
                         push               0x18                                     // 0x00667c65    6a18
                         call               _jmp_addr_0x00650280                     // 0x00667c67    e81486feff
                         pop                edi                                      // 0x00667c6c    5f
                         pop                esi                                      // 0x00667c6d    5e
                         mov                eax, 0x00000001                          // 0x00667c6e    b801000000
                         pop                ebx                                      // 0x00667c73    5b
                         add                esp, 0x0c                                // 0x00667c74    83c40c
                         ret                0x0004                                   // 0x00667c77    c20400
_jmp_addr_0x00667c7a:    pop                edi                                      // 0x00667c7a    5f
                         pop                esi                                      // 0x00667c7b    5e
                         xor.s              eax, eax                                 // 0x00667c7c    33c0
                         pop                ebx                                      // 0x00667c7e    5b
                         add                esp, 0x0c                                // 0x00667c7f    83c40c
                         ret                0x0004                                   // 0x00667c82    c20400
                         nop                                                         // 0x00667c85    90
                         nop                                                         // 0x00667c86    90
                         nop                                                         // 0x00667c87    90
                         nop                                                         // 0x00667c88    90
                         nop                                                         // 0x00667c89    90
                         nop                                                         // 0x00667c8a    90
                         nop                                                         // 0x00667c8b    90
                         nop                                                         // 0x00667c8c    90
                         nop                                                         // 0x00667c8d    90
                         nop                                                         // 0x00667c8e    90
                         nop                                                         // 0x00667c8f    90
                         sub                esp, 0x20                                // 0x00667c90    83ec20
                         mov                eax, dword ptr [ecx]                     // 0x00667c93    8b01
                         push               ebx                                      // 0x00667c95    53
                         push               ebp                                      // 0x00667c96    55
                         push               esi                                      // 0x00667c97    56
                         xor.s              ebx, ebx                                 // 0x00667c98    33db
                         push               edi                                      // 0x00667c9a    57
                         {disp8} mov        dword ptr [esp + 0x1c], ecx              // 0x00667c9b    894c241c
                         {disp8} mov        dword ptr [esp + 0x10], ebx              // 0x00667c9f    895c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx              // 0x00667ca3    895c2414
                         call               dword ptr [eax + 0x1c]                   // 0x00667ca7    ff501c
                         {disp32} mov       ebp, dword ptr [eax + 0x00000a50]        // 0x00667caa    8ba8500a0000
                         add                eax, 0x00000a50                          // 0x00667cb0    05500a0000
                         cmp.s              ebp, ebx                                 // 0x00667cb5    3beb
                         {disp32} je        _jmp_addr_0x00667df1                     // 0x00667cb7    0f8434010000
_jmp_addr_0x00667cbd:    {disp32} mov       edi, dword ptr [ebp + 0x00000790]        // 0x00667cbd    8bbd90070000
                         cmp.s              edi, ebx                                 // 0x00667cc3    3bfb
                         {disp32} je        _jmp_addr_0x00667de3                     // 0x00667cc5    0f8418010000
_jmp_addr_0x00667ccb:    {disp8} mov        esi, dword ptr [edi + 0x04]              // 0x00667ccb    8b7704
                         mov                edx, dword ptr [esi]                     // 0x00667cce    8b16
                         mov.s              ecx, esi                                 // 0x00667cd0    8bce
                         call               dword ptr [edx + 0x2c]                   // 0x00667cd2    ff522c
                         test               eax, eax                                 // 0x00667cd5    85c0
                         {disp32} je        _jmp_addr_0x00667dd3                     // 0x00667cd7    0f84f6000000
                         mov.s              ecx, esi                                 // 0x00667cdd    8bce
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x00667cdf    e88c3fddff
                         test               eax, eax                                 // 0x00667ce4    85c0
                         {disp32} je        _jmp_addr_0x00667dd3                     // 0x00667ce6    0f84e7000000
                         mov.s              ecx, esi                                 // 0x00667cec    8bce
                         call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ                     // 0x00667cee    e8fd48ddff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00667cf3    d81d98a38a00
                         fnstsw             ax                                       // 0x00667cf9    dfe0
                         test               ah, 0x41                                 // 0x00667cfb    f6c441
                         {disp32} jne       _jmp_addr_0x00667dd3                     // 0x00667cfe    0f85cf000000
                         mov.s              ecx, esi                                 // 0x00667d04    8bce
                         call               _jmp_addr_0x0043bbb0                     // 0x00667d06    e8a53eddff
                         test               eax, eax                                 // 0x00667d0b    85c0
                         {disp8} je         _jmp_addr_0x00667d27                     // 0x00667d0d    7418
                         mov.s              ecx, esi                                 // 0x00667d0f    8bce
                         call               ?GetDesireToBeRepaired@BuildingSite@@QAEMXZ                     // 0x00667d11    e8ea40ddff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00667d16    d81d98a38a00
                         fnstsw             ax                                       // 0x00667d1c    dfe0
                         test               ah, 0x41                                 // 0x00667d1e    f6c441
                         {disp32} jne       _jmp_addr_0x00667dd3                     // 0x00667d21    0f85ac000000
_jmp_addr_0x00667d27:    mov                eax, dword ptr [esi]                     // 0x00667d27    8b06
                         push               0x1                                      // 0x00667d29    6a01
                         mov.s              ecx, esi                                 // 0x00667d2b    8bce
                         call               dword ptr [eax + 0x98]                   // 0x00667d2d    ff9098000000
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00667d33    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ebx              // 0x00667d37    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                   // 0x00667d3b    df6c2420
                         mov.s              ecx, esi                                 // 0x00667d3f    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00667d41    d95c2418
                         call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ                     // 0x00667d45    e8a648ddff
                         {disp8} fdivr      dword ptr [esp + 0x18]                   // 0x00667d4a    d87c2418
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00667d4e    d81d90a38a00
                         fnstsw             ax                                       // 0x00667d54    dfe0
                         test               ah, 0x01                                 // 0x00667d56    f6c401
                         {disp8} je         _jmp_addr_0x00667d84                     // 0x00667d59    7429
                         mov                edx, dword ptr [esi]                     // 0x00667d5b    8b16
                         push               0x1                                      // 0x00667d5d    6a01
                         mov.s              ecx, esi                                 // 0x00667d5f    8bce
                         call               dword ptr [edx + 0x98]                   // 0x00667d61    ff9298000000
                         {disp8} mov        dword ptr [esp + 0x28], eax              // 0x00667d67    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx              // 0x00667d6b    895c242c
                         {disp8} fild       qword ptr [esp + 0x28]                   // 0x00667d6f    df6c2428
                         mov.s              ecx, esi                                 // 0x00667d73    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00667d75    d95c2418
                         call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ                     // 0x00667d79    e87248ddff
                         {disp8} fdivr      dword ptr [esp + 0x18]                   // 0x00667d7e    d87c2418
                         {disp8} jmp        _jmp_addr_0x00667d8a                     // 0x00667d82    eb06
_jmp_addr_0x00667d84:    {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00667d84    d90590a38a00
_jmp_addr_0x00667d8a:    fld                st(0)                                    // 0x00667d8a    d9c0
                         mov                eax, 0x00000002                          // 0x00667d8c    b802000000
_jmp_addr_0x00667d91:    dec                eax                                      // 0x00667d91    48
                         fmul               st, st(1)                                // 0x00667d92    d8c9
                         {disp8} jne        _jmp_addr_0x00667d91                     // 0x00667d94    75fb
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00667d96    d95c2418
                         mov.s              ecx, esi                                 // 0x00667d9a    8bce
                         fstp               st(0)                                    // 0x00667d9c    ddd8
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x00667d9e    e8cd3eddff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x00667da3    8b4c241c
                         add                eax, 0x14                                // 0x00667da7    83c014
                         push               eax                                      // 0x00667daa    50
                         call               _jmp_addr_0x00658630                     // 0x00667dab    e88008ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00667db0    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x18]                   // 0x00667db6    d8642418
                         fmulp              st(1), st                                // 0x00667dba    dec9
                         {disp8} fcom       dword ptr [esp + 0x14]                   // 0x00667dbc    d8542414
                         fnstsw             ax                                       // 0x00667dc0    dfe0
                         test               ah, 0x41                                 // 0x00667dc2    f6c441
                         {disp8} jne        _jmp_addr_0x00667dd1                     // 0x00667dc5    750a
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00667dc7    d95c2414
                         {disp8} mov        dword ptr [esp + 0x10], esi              // 0x00667dcb    89742410
                         {disp8} jmp        _jmp_addr_0x00667dd3                     // 0x00667dcf    eb02
_jmp_addr_0x00667dd1:    fstp               st(0)                                    // 0x00667dd1    ddd8
_jmp_addr_0x00667dd3:    mov                edi, dword ptr [edi]                     // 0x00667dd3    8b3f
                         cmp.s              edi, ebx                                 // 0x00667dd5    3bfb
                         {disp32} jne       _jmp_addr_0x00667ccb                     // 0x00667dd7    0f85eefeffff
                         cmp                dword ptr [esp + 0x10], ebx              // 0x00667ddd    395c2410
                         {disp8} jne        _jmp_addr_0x00667e01                     // 0x00667de1    751e
_jmp_addr_0x00667de3:    {disp32} mov       ebp, dword ptr [ebp + 0x0000075c]        // 0x00667de3    8bad5c070000
                         cmp.s              ebp, ebx                                 // 0x00667de9    3beb
                         {disp32} jne       _jmp_addr_0x00667cbd                     // 0x00667deb    0f85ccfeffff
_jmp_addr_0x00667df1:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00667df1    d90598a38a00
                         pop                edi                                      // 0x00667df7    5f
                         pop                esi                                      // 0x00667df8    5e
                         pop                ebp                                      // 0x00667df9    5d
                         pop                ebx                                      // 0x00667dfa    5b
                         add                esp, 0x20                                // 0x00667dfb    83c420
                         ret                0x0004                                   // 0x00667dfe    c20400
_jmp_addr_0x00667e01:    {disp8} mov        eax, dword ptr [esp + 0x34]              // 0x00667e01    8b442434
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00667e05    d9442414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00667e09    8b4c2410
                         pop                edi                                      // 0x00667e0d    5f
                         pop                esi                                      // 0x00667e0e    5e
                         pop                ebp                                      // 0x00667e0f    5d
                         {disp32} mov       dword ptr [eax + 0x00000094], ecx        // 0x00667e10    898894000000
                         pop                ebx                                      // 0x00667e16    5b
                         add                esp, 0x20                                // 0x00667e17    83c420
                         ret                0x0004                                   // 0x00667e1a    c20400
                         nop                                                         // 0x00667e1d    90
                         nop                                                         // 0x00667e1e    90
                         nop                                                         // 0x00667e1f    90
                         sub                esp, 0x18                                // 0x00667e20    83ec18
                         push               ebx                                      // 0x00667e23    53
                         push               ebp                                      // 0x00667e24    55
                         push               esi                                      // 0x00667e25    56
                         mov.s              ebp, ecx                                 // 0x00667e26    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x00]              // 0x00667e28    8b4500
                         push               edi                                      // 0x00667e2b    57
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00667e2c    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x00667e34    c744241400000000
                         call               dword ptr [eax + 0x1c]                   // 0x00667e3c    ff501c
                         {disp32} mov       ebx, dword ptr [eax + 0x00000a50]        // 0x00667e3f    8b98500a0000
                         add                eax, 0x00000a50                          // 0x00667e45    05500a0000
                         test               ebx, ebx                                 // 0x00667e4a    85db
                         {disp32} je        _jmp_addr_0x00667f8f                     // 0x00667e4c    0f843d010000
_jmp_addr_0x00667e52:    {disp32} mov       edi, dword ptr [ebx + 0x00000790]        // 0x00667e52    8bbb90070000
                         test               edi, edi                                 // 0x00667e58    85ff
                         {disp32} je        _jmp_addr_0x00667f81                     // 0x00667e5a    0f8421010000
_jmp_addr_0x00667e60:    {disp8} mov        esi, dword ptr [edi + 0x04]              // 0x00667e60    8b7704
                         mov                edx, dword ptr [esi]                     // 0x00667e63    8b16
                         mov.s              ecx, esi                                 // 0x00667e65    8bce
                         call               dword ptr [edx + 0x2c]                   // 0x00667e67    ff522c
                         test               eax, eax                                 // 0x00667e6a    85c0
                         {disp32} je        _jmp_addr_0x00667f6f                     // 0x00667e6c    0f84fd000000
                         mov.s              ecx, esi                                 // 0x00667e72    8bce
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x00667e74    e8f73dddff
                         test               eax, eax                                 // 0x00667e79    85c0
                         {disp32} je        _jmp_addr_0x00667f6f                     // 0x00667e7b    0f84ee000000
                         mov.s              ecx, esi                                 // 0x00667e81    8bce
                         call               _jmp_addr_0x0043bbd0                     // 0x00667e83    e8483dddff
                         test               eax, eax                                 // 0x00667e88    85c0
                         {disp32} jle       _jmp_addr_0x00667f6f                     // 0x00667e8a    0f8edf000000
                         mov.s              ecx, esi                                 // 0x00667e90    8bce
                         call               _jmp_addr_0x0043bc00                     // 0x00667e92    e8693dddff
                         test               eax, eax                                 // 0x00667e97    85c0
                         {disp32} jle       _jmp_addr_0x00667f6f                     // 0x00667e99    0f8ed0000000
                         mov.s              ecx, esi                                 // 0x00667e9f    8bce
                         call               _jmp_addr_0x0043bbb0                     // 0x00667ea1    e80a3dddff
                         test               eax, eax                                 // 0x00667ea6    85c0
                         {disp8} je         _jmp_addr_0x00667ec2                     // 0x00667ea8    7418
                         mov.s              ecx, esi                                 // 0x00667eaa    8bce
                         call               ?GetDesireToBeRepaired@BuildingSite@@QAEMXZ                     // 0x00667eac    e84f3fddff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00667eb1    d81d98a38a00
                         fnstsw             ax                                       // 0x00667eb7    dfe0
                         test               ah, 0x41                                 // 0x00667eb9    f6c441
                         {disp32} jne       _jmp_addr_0x00667f6f                     // 0x00667ebc    0f85ad000000
_jmp_addr_0x00667ec2:    mov.s              ecx, esi                                 // 0x00667ec2    8bce
                         call               _jmp_addr_0x0043bd70                     // 0x00667ec4    e8a73eddff
                         {disp8} fstp       dword ptr [esp + 0x24]                   // 0x00667ec9    d95c2424
                         xor.s              eax, eax                                 // 0x00667ecd    33c0
                         {disp32} mov       al, byte ptr [ebx + 0x000006dc]          // 0x00667ecf    8a83dc060000
                         mov.s              ecx, esi                                 // 0x00667ed5    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x00667ed7    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                   // 0x00667edb    db44241c
                         {disp8} fstp       dword ptr [esp + 0x20]                   // 0x00667edf    d95c2420
                         call               _jmp_addr_0x0043bbd0                     // 0x00667ee3    e8e83cddff
                         {disp8} mov        dword ptr [esp + 0x1c], eax              // 0x00667ee8    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                   // 0x00667eec    db44241c
                         {disp8} fdivr      dword ptr [esp + 0x20]                   // 0x00667ef0    d87c2420
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00667ef4    d81d90a38a00
                         fnstsw             ax                                       // 0x00667efa    dfe0
                         test               ah, 0x01                                 // 0x00667efc    f6c401
                         {disp8} je         _jmp_addr_0x00667f2e                     // 0x00667eff    742d
                         xor.s              ecx, ecx                                 // 0x00667f01    33c9
                         {disp32} mov       cl, byte ptr [ebx + 0x000006dc]          // 0x00667f03    8a8bdc060000
                         {disp8} mov        dword ptr [esp + 0x20], ecx              // 0x00667f09    894c2420
                         {disp8} fild       dword ptr [esp + 0x20]                   // 0x00667f0d    db442420
                         mov.s              ecx, esi                                 // 0x00667f11    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00667f13    d95c241c
                         call               _jmp_addr_0x0043bbd0                     // 0x00667f17    e8b43cddff
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00667f1c    89442420
                         {disp8} fild       dword ptr [esp + 0x20]                   // 0x00667f20    db442420
                         {disp8} fdivr      dword ptr [esp + 0x1c]                   // 0x00667f24    d87c241c
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00667f28    d95c2418
                         {disp8} jmp        _jmp_addr_0x00667f36                     // 0x00667f2c    eb08
_jmp_addr_0x00667f2e:    {disp8} mov        dword ptr [esp + 0x18], 0x3f800000       // 0x00667f2e    c74424180000803f
_jmp_addr_0x00667f36:    mov.s              ecx, esi                                 // 0x00667f36    8bce
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x00667f38    e8333dddff
                         add                eax, 0x14                                // 0x00667f3d    83c014
                         push               eax                                      // 0x00667f40    50
                         mov.s              ecx, ebp                                 // 0x00667f41    8bcd
                         call               _jmp_addr_0x00658630                     // 0x00667f43    e8e806ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00667f48    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x18]                   // 0x00667f4e    d8642418
                         {disp8} fmul       dword ptr [esp + 0x24]                   // 0x00667f52    d84c2424
                         fmulp              st(1), st                                // 0x00667f56    dec9
                         {disp8} fcom       dword ptr [esp + 0x14]                   // 0x00667f58    d8542414
                         fnstsw             ax                                       // 0x00667f5c    dfe0
                         test               ah, 0x41                                 // 0x00667f5e    f6c441
                         {disp8} jne        _jmp_addr_0x00667f6d                     // 0x00667f61    750a
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00667f63    d95c2414
                         {disp8} mov        dword ptr [esp + 0x10], esi              // 0x00667f67    89742410
                         {disp8} jmp        _jmp_addr_0x00667f6f                     // 0x00667f6b    eb02
_jmp_addr_0x00667f6d:    fstp               st(0)                                    // 0x00667f6d    ddd8
_jmp_addr_0x00667f6f:    mov                edi, dword ptr [edi]                     // 0x00667f6f    8b3f
                         test               edi, edi                                 // 0x00667f71    85ff
                         {disp32} jne       _jmp_addr_0x00667e60                     // 0x00667f73    0f85e7feffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00667f79    8b442410
                         test               eax, eax                                 // 0x00667f7d    85c0
                         {disp8} jne        _jmp_addr_0x00667f9f                     // 0x00667f7f    751e
_jmp_addr_0x00667f81:    {disp32} mov       ebx, dword ptr [ebx + 0x0000075c]        // 0x00667f81    8b9b5c070000
                         test               ebx, ebx                                 // 0x00667f87    85db
                         {disp32} jne       _jmp_addr_0x00667e52                     // 0x00667f89    0f85c3feffff
_jmp_addr_0x00667f8f:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00667f8f    d90598a38a00
                         pop                edi                                      // 0x00667f95    5f
                         pop                esi                                      // 0x00667f96    5e
                         pop                ebp                                      // 0x00667f97    5d
                         pop                ebx                                      // 0x00667f98    5b
                         add                esp, 0x18                                // 0x00667f99    83c418
                         ret                0x0004                                   // 0x00667f9c    c20400
_jmp_addr_0x00667f9f:    {disp8} mov        edx, dword ptr [esp + 0x2c]              // 0x00667f9f    8b54242c
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x00667fa3    d9442414
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x00667fa7    8b442410
                         pop                edi                                      // 0x00667fab    5f
                         pop                esi                                      // 0x00667fac    5e
                         pop                ebp                                      // 0x00667fad    5d
                         {disp32} mov       dword ptr [edx + 0x00000094], eax        // 0x00667fae    898294000000
                         pop                ebx                                      // 0x00667fb4    5b
                         add                esp, 0x18                                // 0x00667fb5    83c418
                         ret                0x0004                                   // 0x00667fb8    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                     // 0x00667fbb    e83998d9ff
                         sub                esp, 0x18                                // 0x00667fc0    83ec18
                         push               ebx                                      // 0x00667fc3    53
                         push               esi                                      // 0x00667fc4    56
                         push               edi                                      // 0x00667fc5    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]              // 0x00667fc6    8b7c2428
                         push               0x0                                      // 0x00667fca    6a00
                         push               0x009c7f30                               // 0x00667fcc    68307f9c00
                         push               0x009c7f18                               // 0x00667fd1    68187f9c00
                         mov.s              ebx, ecx                                 // 0x00667fd6    8bd9
                         push               0x0                                      // 0x00667fd8    6a00
                         mov.s              ecx, edi                                 // 0x00667fda    8bcf
                         call               _jmp_addr_0x00655cf0                     // 0x00667fdc    e80fddfeff
                         push               eax                                      // 0x00667fe1    50
                         call               ___RTDynamicCast                         // 0x00667fe2    e832da1500
                         add                esp, 0x14                                // 0x00667fe7    83c414
                         push               0x0                                      // 0x00667fea    6a00
                         push               0x009cd3f0                               // 0x00667fec    68f0d39c00
                         push               0x009c7f18                               // 0x00667ff1    68187f9c00
                         push               0x0                                      // 0x00667ff6    6a00
                         mov.s              ecx, edi                                 // 0x00667ff8    8bcf
                         mov.s              esi, eax                                 // 0x00667ffa    8bf0
                         call               _jmp_addr_0x00655cb0                     // 0x00667ffc    e8afdcfeff
                         push               eax                                      // 0x00668001    50
                         call               ___RTDynamicCast                         // 0x00668002    e812da1500
                         add                esp, 0x14                                // 0x00668007    83c414
                         test               esi, esi                                 // 0x0066800a    85f6
                         mov.s              edi, eax                                 // 0x0066800c    8bf8
                         {disp32} je        _jmp_addr_0x006680e5                     // 0x0066800e    0f84d1000000
                         test               edi, edi                                 // 0x00668014    85ff
                         {disp32} je        _jmp_addr_0x006680e5                     // 0x00668016    0f84c9000000
                         mov                eax, dword ptr [edi]                     // 0x0066801c    8b07
                         mov.s              ecx, edi                                 // 0x0066801e    8bcf
                         call               dword ptr [eax + 0x2c]                   // 0x00668020    ff502c
                         test               eax, eax                                 // 0x00668023    85c0
                         {disp32} je        _jmp_addr_0x006680e5                     // 0x00668025    0f84ba000000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x0066802b    8d4c240c
                         push               ecx                                      // 0x0066802f    51
                         mov.s              ecx, edi                                 // 0x00668030    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00668032    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x0066803a    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x00668042    c744241800000000
                         call               _jmp_addr_0x0043c120                     // 0x0066804a    e8d140ddff
                         push               esi                                      // 0x0066804f    56
                         mov.s              ecx, ebx                                 // 0x00668050    8bcb
                         call               _jmp_addr_0x00658aa0                     // 0x00668052    e8490affff
                         test               al, al                                   // 0x00668057    84c0
                         {disp32} je        _jmp_addr_0x006680e5                     // 0x00668059    0f8486000000
                         push               0x00000278                               // 0x0066805f    6878020000
                         push               0x00c01d04                               // 0x00668064    68041dc000
                         push               0x74                                     // 0x00668069    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x0066806b    e880e6dcff
                         add                esp, 0x0c                                // 0x00668070    83c40c
                         test               eax, eax                                 // 0x00668073    85c0
                         {disp8} je         _jmp_addr_0x0066808c                     // 0x00668075    7415
                         {disp8} mov        edx, dword ptr [ebx + 0x58]              // 0x00668077    8b5358
                         mov.s              ecx, edx                                 // 0x0066807a    8bca
                         push               ecx                                      // 0x0066807c    51
                         mov.s              ecx, eax                                 // 0x0066807d    8bc8
                         {disp8} mov        dword ptr [esp + 0x2c], edx              // 0x0066807f    8954242c
                         call               _jmp_addr_0x00651210                     // 0x00668083    e88891feff
                         mov.s              edi, eax                                 // 0x00668088    8bf8
                         {disp8} jmp        _jmp_addr_0x0066808e                     // 0x0066808a    eb02
_jmp_addr_0x0066808c:    xor.s              edi, edi                                 // 0x0066808c    33ff
_jmp_addr_0x0066808e:    push               0x00000278                               // 0x0066808e    6878020000
                         push               0x00c01d04                               // 0x00668093    68041dc000
                         push               0x74                                     // 0x00668098    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x0066809a    e851e6dcff
                         mov.s              esi, eax                                 // 0x0066809f    8bf0
                         add                esp, 0x0c                                // 0x006680a1    83c40c
                         test               esi, esi                                 // 0x006680a4    85f6
                         {disp8} je         _jmp_addr_0x006680c0                     // 0x006680a6    7418
                         {disp8} lea        edx, dword ptr [esp + 0x18]              // 0x006680a8    8d542418
                         push               edx                                      // 0x006680ac    52
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x006680ad    8d4c2410
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x006680b1    e88adbf9ff
                         push               eax                                      // 0x006680b6    50
                         mov.s              ecx, esi                                 // 0x006680b7    8bce
                         call               _jmp_addr_0x00651120                     // 0x006680b9    e86290feff
                         {disp8} jmp        _jmp_addr_0x006680c2                     // 0x006680be    eb02
_jmp_addr_0x006680c0:    xor.s              eax, eax                                 // 0x006680c0    33c0
_jmp_addr_0x006680c2:    push               edi                                      // 0x006680c2    57
                         push               eax                                      // 0x006680c3    50
                         call               _jmp_addr_0x00650df0                     // 0x006680c4    e8278dfeff
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]              // 0x006680c9    8b4b34
                         add                esp, 0x08                                // 0x006680cc    83c408
                         push               eax                                      // 0x006680cf    50
                         push               0x8                                      // 0x006680d0    6a08
                         call               _jmp_addr_0x00650280                     // 0x006680d2    e8a981feff
                         pop                edi                                      // 0x006680d7    5f
                         pop                esi                                      // 0x006680d8    5e
                         mov                eax, 0x00000001                          // 0x006680d9    b801000000
                         pop                ebx                                      // 0x006680de    5b
                         add                esp, 0x18                                // 0x006680df    83c418
                         ret                0x0004                                   // 0x006680e2    c20400
_jmp_addr_0x006680e5:    pop                edi                                      // 0x006680e5    5f
                         pop                esi                                      // 0x006680e6    5e
                         xor.s              eax, eax                                 // 0x006680e7    33c0
                         pop                ebx                                      // 0x006680e9    5b
                         add                esp, 0x18                                // 0x006680ea    83c418
                         ret                0x0004                                   // 0x006680ed    c20400
                         sub                esp, 0x18                                // 0x006680f0    83ec18
                         push               ebx                                      // 0x006680f3    53
                         push               esi                                      // 0x006680f4    56
                         push               edi                                      // 0x006680f5    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]              // 0x006680f6    8b7c2428
                         push               0x0                                      // 0x006680fa    6a00
                         push               0x009c7f30                               // 0x006680fc    68307f9c00
                         push               0x009c7f18                               // 0x00668101    68187f9c00
                         mov.s              ebx, ecx                                 // 0x00668106    8bd9
                         push               0x0                                      // 0x00668108    6a00
                         mov.s              ecx, edi                                 // 0x0066810a    8bcf
                         call               _jmp_addr_0x00655cf0                     // 0x0066810c    e8dfdbfeff
                         push               eax                                      // 0x00668111    50
                         call               ___RTDynamicCast                         // 0x00668112    e802d91500
                         add                esp, 0x14                                // 0x00668117    83c414
                         push               0x0                                      // 0x0066811a    6a00
                         push               0x009cd3f0                               // 0x0066811c    68f0d39c00
                         push               0x009c7f18                               // 0x00668121    68187f9c00
                         push               0x0                                      // 0x00668126    6a00
                         mov.s              ecx, edi                                 // 0x00668128    8bcf
                         mov.s              esi, eax                                 // 0x0066812a    8bf0
                         call               _jmp_addr_0x00655cb0                     // 0x0066812c    e87fdbfeff
                         push               eax                                      // 0x00668131    50
                         call               ___RTDynamicCast                         // 0x00668132    e8e2d81500
                         add                esp, 0x14                                // 0x00668137    83c414
                         test               esi, esi                                 // 0x0066813a    85f6
                         mov.s              edi, eax                                 // 0x0066813c    8bf8
                         {disp32} je        _jmp_addr_0x006681ff                     // 0x0066813e    0f84bb000000
                         test               edi, edi                                 // 0x00668144    85ff
                         {disp32} je        _jmp_addr_0x006681ff                     // 0x00668146    0f84b3000000
                         mov                eax, dword ptr [edi]                     // 0x0066814c    8b07
                         mov.s              ecx, edi                                 // 0x0066814e    8bcf
                         call               dword ptr [eax + 0x2c]                   // 0x00668150    ff502c
                         test               eax, eax                                 // 0x00668153    85c0
                         {disp32} je        _jmp_addr_0x006681ff                     // 0x00668155    0f84a4000000
                         push               0x1                                      // 0x0066815b    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x0066815d    8d4c2410
                         push               ecx                                      // 0x00668161    51
                         mov.s              ecx, edi                                 // 0x00668162    8bcf
                         call               _jmp_addr_0x0043d100                     // 0x00668164    e8974fddff
                         push               esi                                      // 0x00668169    56
                         mov.s              ecx, ebx                                 // 0x0066816a    8bcb
                         call               _jmp_addr_0x00658aa0                     // 0x0066816c    e82f09ffff
                         test               al, al                                   // 0x00668171    84c0
                         {disp32} je        _jmp_addr_0x006681ff                     // 0x00668173    0f8486000000
                         push               0x0000028b                               // 0x00668179    688b020000
                         push               0x00c01d04                               // 0x0066817e    68041dc000
                         push               0x74                                     // 0x00668183    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00668185    e866e5dcff
                         add                esp, 0x0c                                // 0x0066818a    83c40c
                         test               eax, eax                                 // 0x0066818d    85c0
                         {disp8} je         _jmp_addr_0x006681a6                     // 0x0066818f    7415
                         {disp8} mov        edx, dword ptr [ebx + 0x58]              // 0x00668191    8b5358
                         mov.s              ecx, edx                                 // 0x00668194    8bca
                         push               ecx                                      // 0x00668196    51
                         mov.s              ecx, eax                                 // 0x00668197    8bc8
                         {disp8} mov        dword ptr [esp + 0x2c], edx              // 0x00668199    8954242c
                         call               _jmp_addr_0x00651210                     // 0x0066819d    e86e90feff
                         mov.s              edi, eax                                 // 0x006681a2    8bf8
                         {disp8} jmp        _jmp_addr_0x006681a8                     // 0x006681a4    eb02
_jmp_addr_0x006681a6:    xor.s              edi, edi                                 // 0x006681a6    33ff
_jmp_addr_0x006681a8:    push               0x0000028b                               // 0x006681a8    688b020000
                         push               0x00c01d04                               // 0x006681ad    68041dc000
                         push               0x74                                     // 0x006681b2    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x006681b4    e837e5dcff
                         mov.s              esi, eax                                 // 0x006681b9    8bf0
                         add                esp, 0x0c                                // 0x006681bb    83c40c
                         test               esi, esi                                 // 0x006681be    85f6
                         {disp8} je         _jmp_addr_0x006681da                     // 0x006681c0    7418
                         {disp8} lea        edx, dword ptr [esp + 0x18]              // 0x006681c2    8d542418
                         push               edx                                      // 0x006681c6    52
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x006681c7    8d4c2410
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x006681cb    e870daf9ff
                         push               eax                                      // 0x006681d0    50
                         mov.s              ecx, esi                                 // 0x006681d1    8bce
                         call               _jmp_addr_0x00651120                     // 0x006681d3    e8488ffeff
                         {disp8} jmp        _jmp_addr_0x006681dc                     // 0x006681d8    eb02
_jmp_addr_0x006681da:    xor.s              eax, eax                                 // 0x006681da    33c0
_jmp_addr_0x006681dc:    push               edi                                      // 0x006681dc    57
                         push               eax                                      // 0x006681dd    50
                         call               _jmp_addr_0x00650df0                     // 0x006681de    e80d8cfeff
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]              // 0x006681e3    8b4b34
                         add                esp, 0x08                                // 0x006681e6    83c408
                         push               eax                                      // 0x006681e9    50
                         push               0x8                                      // 0x006681ea    6a08
                         call               _jmp_addr_0x00650280                     // 0x006681ec    e88f80feff
                         pop                edi                                      // 0x006681f1    5f
                         pop                esi                                      // 0x006681f2    5e
                         mov                eax, 0x00000001                          // 0x006681f3    b801000000
                         pop                ebx                                      // 0x006681f8    5b
                         add                esp, 0x18                                // 0x006681f9    83c418
                         ret                0x0004                                   // 0x006681fc    c20400
_jmp_addr_0x006681ff:    pop                edi                                      // 0x006681ff    5f
                         pop                esi                                      // 0x00668200    5e
                         xor.s              eax, eax                                 // 0x00668201    33c0
                         pop                ebx                                      // 0x00668203    5b
                         add                esp, 0x18                                // 0x00668204    83c418
                         ret                0x0004                                   // 0x00668207    c20400
                         nop                                                         // 0x0066820a    90
                         nop                                                         // 0x0066820b    90
                         nop                                                         // 0x0066820c    90
                         nop                                                         // 0x0066820d    90
                         nop                                                         // 0x0066820e    90
                         nop                                                         // 0x0066820f    90
                         sub                esp, 0x28                                // 0x00668210    83ec28
                         push               ebx                                      // 0x00668213    53
                         push               esi                                      // 0x00668214    56
                         push               edi                                      // 0x00668215    57
                         {disp8} mov        edi, dword ptr [esp + 0x38]              // 0x00668216    8b7c2438
                         push               0x0                                      // 0x0066821a    6a00
                         push               0x009c7f30                               // 0x0066821c    68307f9c00
                         push               0x009c7f18                               // 0x00668221    68187f9c00
                         mov.s              ebx, ecx                                 // 0x00668226    8bd9
                         push               0x0                                      // 0x00668228    6a00
                         mov.s              ecx, edi                                 // 0x0066822a    8bcf
                         call               _jmp_addr_0x00655cf0                     // 0x0066822c    e8bfdafeff
                         push               eax                                      // 0x00668231    50
                         call               ___RTDynamicCast                         // 0x00668232    e8e2d71500
                         add                esp, 0x14                                // 0x00668237    83c414
                         push               0x0                                      // 0x0066823a    6a00
                         push               0x009c7f30                               // 0x0066823c    68307f9c00
                         push               0x009c7f18                               // 0x00668241    68187f9c00
                         push               0x0                                      // 0x00668246    6a00
                         mov.s              ecx, edi                                 // 0x00668248    8bcf
                         mov.s              esi, eax                                 // 0x0066824a    8bf0
                         call               _jmp_addr_0x00655cb0                     // 0x0066824c    e85fdafeff
                         push               eax                                      // 0x00668251    50
                         call               ___RTDynamicCast                         // 0x00668252    e8c2d71500
                         add                esp, 0x14                                // 0x00668257    83c414
                         mov.s              edi, eax                                 // 0x0066825a    8bf8
                         xor.s              eax, eax                                 // 0x0066825c    33c0
                         test               esi, esi                                 // 0x0066825e    85f6
                         setne              al                                       // 0x00668260    0f95c0
                         push               0x00c01d80                               // 0x00668263    68801dc000
                         mov.s              ecx, ebx                                 // 0x00668268    8bcb
                         push               eax                                      // 0x0066826a    50
                         call               _jmp_addr_0x00658230                     // 0x0066826b    e8c0fffeff
                         test               eax, eax                                 // 0x00668270    85c0
                         {disp32} je        _jmp_addr_0x006683b7                     // 0x00668272    0f843f010000
                         xor.s              ecx, ecx                                 // 0x00668278    33c9
                         test               edi, edi                                 // 0x0066827a    85ff
                         setne              cl                                       // 0x0066827c    0f95c1
                         push               0x00c01d70                               // 0x0066827f    68701dc000
                         push               ecx                                      // 0x00668284    51
                         mov.s              ecx, ebx                                 // 0x00668285    8bcb
                         call               _jmp_addr_0x00658230                     // 0x00668287    e8a4fffeff
                         test               eax, eax                                 // 0x0066828c    85c0
                         {disp32} je        _jmp_addr_0x006683b7                     // 0x0066828e    0f8423010000
                         mov                edx, dword ptr [edi]                     // 0x00668294    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x00668296    8d442410
                         push               eax                                      // 0x0066829a    50
                         mov.s              ecx, edi                                 // 0x0066829b    8bcf
                         call               dword ptr [edx + 0x170]                  // 0x0066829d    ff9270010000
                         mov                edx, dword ptr [esi]                     // 0x006682a3    8b16
                         push               eax                                      // 0x006682a5    50
                         {disp8} lea        eax, dword ptr [esp + 0x2c]              // 0x006682a6    8d44242c
                         push               eax                                      // 0x006682aa    50
                         mov.s              ecx, esi                                 // 0x006682ab    8bce
                         call               dword ptr [edx + 0x170]                  // 0x006682ad    ff9270010000
                         push               eax                                      // 0x006682b3    50
                         call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z                          // 0x006682b4    e8b74f0e00
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x006682b9    d95c2414
                         push               0x0000029a                               // 0x006682bd    689a020000
                         push               0x00c01d04                               // 0x006682c2    68041dc000
                         push               0x3e800000                               // 0x006682c7    680000803e
                         call               ?GameFloatRand@GRand@@SAMM@Z             // 0x006682cc    e85f620700
                         mov                edx, dword ptr [edi]                     // 0x006682d1    8b17
                         {disp32} fadd      qword ptr [__real@3ff4000000000000]      // 0x006682d3    dc05d8a88a00
                         add                esp, 0x14                                // 0x006682d9    83c414
                         mov.s              ecx, edi                                 // 0x006682dc    8bcf
                         {disp8} fstp       qword ptr [esp + 0x10]                   // 0x006682de    dd5c2410
                         call               dword ptr [edx + 0x60]                   // 0x006682e2    ff5260
                         {disp8} fmul       qword ptr [esp + 0x10]                   // 0x006682e5    dc4c2410
                         mov                eax, dword ptr [esi]                     // 0x006682e9    8b06
                         mov.s              ecx, esi                                 // 0x006682eb    8bce
                         {disp8} fstp       qword ptr [esp + 0x10]                   // 0x006682ed    dd5c2410
                         call               dword ptr [eax + 0x60]                   // 0x006682f1    ff5060
                         {disp8} fadd       qword ptr [esp + 0x10]                   // 0x006682f4    dc442410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]              // 0x006682f8    8b54240c
                         {disp8} lea        eax, dword ptr [esp + 0x28]              // 0x006682fc    8d442428
                         {disp8} fstp       dword ptr [esp + 0x38]                   // 0x00668300    d95c2438
                         {disp8} mov        ecx, dword ptr [esp + 0x38]              // 0x00668304    8b4c2438
                         push               ecx                                      // 0x00668308    51
                         push               edx                                      // 0x00668309    52
                         push               eax                                      // 0x0066830a    50
                         call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z             // 0x0066830b    e870520e00
                         add                esp, 0x0c                                // 0x00668310    83c40c
                         push               eax                                      // 0x00668313    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x00668314    8d4c2420
                         push               ecx                                      // 0x00668318    51
                         {disp8} lea        ecx, dword ptr [edi + 0x14]              // 0x00668319    8d4f14
                         call               @__pl__9MapCoordsCFRC9MapCoords@16       // 0x0066831c    e8ffd1f9ff
                         push               esi                                      // 0x00668321    56
                         mov.s              ecx, ebx                                 // 0x00668322    8bcb
                         call               _jmp_addr_0x00658aa0                     // 0x00668324    e87707ffff
                         test               al, al                                   // 0x00668329    84c0
                         {disp32} je        _jmp_addr_0x006683b7                     // 0x0066832b    0f8486000000
                         push               0x0000029f                               // 0x00668331    689f020000
                         push               0x00c01d04                               // 0x00668336    68041dc000
                         push               0x74                                     // 0x0066833b    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x0066833d    e8aee3dcff
                         add                esp, 0x0c                                // 0x00668342    83c40c
                         test               eax, eax                                 // 0x00668345    85c0
                         {disp8} je         _jmp_addr_0x0066835e                     // 0x00668347    7415
                         {disp8} mov        edx, dword ptr [ebx + 0x58]              // 0x00668349    8b5358
                         mov.s              ecx, edx                                 // 0x0066834c    8bca
                         push               ecx                                      // 0x0066834e    51
                         mov.s              ecx, eax                                 // 0x0066834f    8bc8
                         {disp8} mov        dword ptr [esp + 0x3c], edx              // 0x00668351    8954243c
                         call               _jmp_addr_0x00651210                     // 0x00668355    e8b68efeff
                         mov.s              edi, eax                                 // 0x0066835a    8bf8
                         {disp8} jmp        _jmp_addr_0x00668360                     // 0x0066835c    eb02
_jmp_addr_0x0066835e:    xor.s              edi, edi                                 // 0x0066835e    33ff
_jmp_addr_0x00668360:    push               0x0000029f                               // 0x00668360    689f020000
                         push               0x00c01d04                               // 0x00668365    68041dc000
                         push               0x74                                     // 0x0066836a    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x0066836c    e87fe3dcff
                         mov.s              esi, eax                                 // 0x00668371    8bf0
                         add                esp, 0x0c                                // 0x00668373    83c40c
                         test               esi, esi                                 // 0x00668376    85f6
                         {disp8} je         _jmp_addr_0x00668392                     // 0x00668378    7418
                         {disp8} lea        edx, dword ptr [esp + 0x28]              // 0x0066837a    8d542428
                         push               edx                                      // 0x0066837e    52
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x0066837f    8d4c2420
                         call               @GetLHPoint__9MapCoordsCFv@12            // 0x00668383    e8b8d8f9ff
                         push               eax                                      // 0x00668388    50
                         mov.s              ecx, esi                                 // 0x00668389    8bce
                         call               _jmp_addr_0x00651120                     // 0x0066838b    e8908dfeff
                         {disp8} jmp        _jmp_addr_0x00668394                     // 0x00668390    eb02
_jmp_addr_0x00668392:    xor.s              eax, eax                                 // 0x00668392    33c0
_jmp_addr_0x00668394:    push               edi                                      // 0x00668394    57
                         push               eax                                      // 0x00668395    50
                         call               _jmp_addr_0x00650df0                     // 0x00668396    e8558afeff
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]              // 0x0066839b    8b4b34
                         add                esp, 0x08                                // 0x0066839e    83c408
                         push               eax                                      // 0x006683a1    50
                         push               0x8                                      // 0x006683a2    6a08
                         call               _jmp_addr_0x00650280                     // 0x006683a4    e8d77efeff
                         pop                edi                                      // 0x006683a9    5f
                         pop                esi                                      // 0x006683aa    5e
                         mov                eax, 0x00000001                          // 0x006683ab    b801000000
                         pop                ebx                                      // 0x006683b0    5b
                         add                esp, 0x28                                // 0x006683b1    83c428
                         ret                0x0004                                   // 0x006683b4    c20400
_jmp_addr_0x006683b7:    pop                edi                                      // 0x006683b7    5f
                         pop                esi                                      // 0x006683b8    5e
                         xor.s              eax, eax                                 // 0x006683b9    33c0
                         pop                ebx                                      // 0x006683bb    5b
                         add                esp, 0x28                                // 0x006683bc    83c428
                         ret                0x0004                                   // 0x006683bf    c20400
                         nop                                                         // 0x006683c2    90
                         nop                                                         // 0x006683c3    90
                         nop                                                         // 0x006683c4    90
                         nop                                                         // 0x006683c5    90
                         nop                                                         // 0x006683c6    90
                         nop                                                         // 0x006683c7    90
                         nop                                                         // 0x006683c8    90
                         nop                                                         // 0x006683c9    90
                         nop                                                         // 0x006683ca    90
                         nop                                                         // 0x006683cb    90
                         nop                                                         // 0x006683cc    90
                         nop                                                         // 0x006683cd    90
                         nop                                                         // 0x006683ce    90
                         nop                                                         // 0x006683cf    90
                         sub                esp, 0x0c                                // 0x006683d0    83ec0c
                         push               ebx                                      // 0x006683d3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]              // 0x006683d4    8b5c2414
                         push               esi                                      // 0x006683d8    56
                         push               edi                                      // 0x006683d9    57
                         push               0x0                                      // 0x006683da    6a00
                         push               0x00bf4178                               // 0x006683dc    687841bf00
                         push               0x009c7f18                               // 0x006683e1    68187f9c00
                         mov.s              edi, ecx                                 // 0x006683e6    8bf9
                         push               0x0                                      // 0x006683e8    6a00
                         mov.s              ecx, ebx                                 // 0x006683ea    8bcb
                         call               _jmp_addr_0x00655cb0                     // 0x006683ec    e8bfd8feff
                         push               eax                                      // 0x006683f1    50
                         call               ___RTDynamicCast                         // 0x006683f2    e822d61500
                         add                esp, 0x14                                // 0x006683f7    83c414
                         push               0x0                                      // 0x006683fa    6a00
                         push               0x009d96c0                               // 0x006683fc    68c0969d00
                         push               0x009c7f18                               // 0x00668401    68187f9c00
                         push               0x0                                      // 0x00668406    6a00
                         mov.s              ecx, ebx                                 // 0x00668408    8bcb
                         mov.s              esi, eax                                 // 0x0066840a    8bf0
                         call               _jmp_addr_0x00655cc0                     // 0x0066840c    e8afd8feff
                         push               eax                                      // 0x00668411    50
                         call               ___RTDynamicCast                         // 0x00668412    e802d61500
                         add                esp, 0x14                                // 0x00668417    83c414
                         test               esi, esi                                 // 0x0066841a    85f6
                         mov.s              ebx, eax                                 // 0x0066841c    8bd8
                         {disp8} je         _jmp_addr_0x00668474                     // 0x0066841e    7454
                         test               ebx, ebx                                 // 0x00668420    85db
                         {disp8} je         _jmp_addr_0x00668474                     // 0x00668422    7450
                         mov.s              ecx, esi                                 // 0x00668424    8bce
                         call               _jmp_addr_0x00726380                     // 0x00668426    e855df0b00
                         {disp8} lea        eax, dword ptr [esp + 0x0c]              // 0x0066842b    8d44240c
                         push               eax                                      // 0x0066842f    50
                         mov.s              ecx, ebx                                 // 0x00668430    8bcb
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00668432    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x0066843a    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000       // 0x00668442    c744241800000000
                         call               _jmp_addr_0x0077ce60                     // 0x0066844a    e8114a1100
                         push               esi                                      // 0x0066844f    56
                         mov.s              ecx, edi                                 // 0x00668450    8bcf
                         call               _jmp_addr_0x00665dd0                     // 0x00668452    e879d9ffff
                         push               0x0                                      // 0x00668457    6a00
                         push               esi                                      // 0x00668459    56
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x0066845a    8d4c2414
                         push               ecx                                      // 0x0066845e    51
                         mov.s              ecx, edi                                 // 0x0066845f    8bcf
                         call               _jmp_addr_0x00666410                     // 0x00668461    e8aadfffff
                         pop                edi                                      // 0x00668466    5f
                         pop                esi                                      // 0x00668467    5e
                         pop                ebx                                      // 0x00668468    5b
                         and                eax, 0x000000ff                          // 0x00668469    25ff000000
                         add                esp, 0x0c                                // 0x0066846e    83c40c
                         ret                0x0004                                   // 0x00668471    c20400
_jmp_addr_0x00668474:    pop                edi                                      // 0x00668474    5f
                         pop                esi                                      // 0x00668475    5e
                         xor.s              eax, eax                                 // 0x00668476    33c0
                         pop                ebx                                      // 0x00668478    5b
                         add                esp, 0x0c                                // 0x00668479    83c40c
                         ret                0x0004                                   // 0x0066847c    c20400
                         nop                                                         // 0x0066847f    90
                         sub                esp, 0x0c                                // 0x00668480    83ec0c
                         push               ebx                                      // 0x00668483    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]              // 0x00668484    8b5c2414
                         push               esi                                      // 0x00668488    56
                         push               edi                                      // 0x00668489    57
                         push               0x0                                      // 0x0066848a    6a00
                         push               0x00bf4178                               // 0x0066848c    687841bf00
                         push               0x009c7f18                               // 0x00668491    68187f9c00
                         mov.s              edi, ecx                                 // 0x00668496    8bf9
                         push               0x0                                      // 0x00668498    6a00
                         mov.s              ecx, ebx                                 // 0x0066849a    8bcb
                         call               _jmp_addr_0x00655cb0                     // 0x0066849c    e80fd8feff
                         push               eax                                      // 0x006684a1    50
                         call               ___RTDynamicCast                         // 0x006684a2    e872d51500
                         add                esp, 0x14                                // 0x006684a7    83c414
                         push               0x0                                      // 0x006684aa    6a00
                         push               0x009cd3f0                               // 0x006684ac    68f0d39c00
                         push               0x009c7f18                               // 0x006684b1    68187f9c00
                         push               0x0                                      // 0x006684b6    6a00
                         mov.s              ecx, ebx                                 // 0x006684b8    8bcb
                         mov.s              esi, eax                                 // 0x006684ba    8bf0
                         call               _jmp_addr_0x00655cc0                     // 0x006684bc    e8ffd7feff
                         push               eax                                      // 0x006684c1    50
                         call               ___RTDynamicCast                         // 0x006684c2    e852d51500
                         add                esp, 0x14                                // 0x006684c7    83c414
                         test               esi, esi                                 // 0x006684ca    85f6
                         {disp8} je         _jmp_addr_0x00668505                     // 0x006684cc    7437
                         test               eax, eax                                 // 0x006684ce    85c0
                         {disp8} je         _jmp_addr_0x00668505                     // 0x006684d0    7433
                         push               0x1                                      // 0x006684d2    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x006684d4    8d4c2410
                         push               ecx                                      // 0x006684d8    51
                         mov.s              ecx, eax                                 // 0x006684d9    8bc8
                         call               _jmp_addr_0x0043d100                     // 0x006684db    e8204cddff
                         push               esi                                      // 0x006684e0    56
                         mov.s              ecx, edi                                 // 0x006684e1    8bcf
                         call               _jmp_addr_0x00665dd0                     // 0x006684e3    e8e8d8ffff
                         push               0x0                                      // 0x006684e8    6a00
                         push               esi                                      // 0x006684ea    56
                         {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x006684eb    8d542414
                         push               edx                                      // 0x006684ef    52
                         mov.s              ecx, edi                                 // 0x006684f0    8bcf
                         call               _jmp_addr_0x00666410                     // 0x006684f2    e819dfffff
                         pop                edi                                      // 0x006684f7    5f
                         pop                esi                                      // 0x006684f8    5e
                         pop                ebx                                      // 0x006684f9    5b
                         and                eax, 0x000000ff                          // 0x006684fa    25ff000000
                         add                esp, 0x0c                                // 0x006684ff    83c40c
                         ret                0x0004                                   // 0x00668502    c20400
_jmp_addr_0x00668505:    pop                edi                                      // 0x00668505    5f
                         pop                esi                                      // 0x00668506    5e
                         xor.s              eax, eax                                 // 0x00668507    33c0
                         pop                ebx                                      // 0x00668509    5b
                         add                esp, 0x0c                                // 0x0066850a    83c40c
                         ret                0x0004                                   // 0x0066850d    c20400
_jmp_addr_0x00668510:    sub                esp, 0x1c                                // 0x00668510    83ec1c
                         push               ebx                                      // 0x00668513    53
                         push               esi                                      // 0x00668514    56
                         {disp8} mov        esi, dword ptr [esp + 0x28]              // 0x00668515    8b742428
                         mov.s              ebx, ecx                                 // 0x00668519    8bd9
                         mov.s              ecx, esi                                 // 0x0066851b    8bce
                         call               ?IsVillagerAvailable@Villager@@QAE_NXZ   // 0x0066851d    e86e9d0e00
                         test               eax, eax                                 // 0x00668522    85c0
                         {disp32} je        _jmp_addr_0x00668637                     // 0x00668524    0f840d010000
                         mov                eax, dword ptr [esi]                     // 0x0066852a    8b06
                         mov.s              ecx, esi                                 // 0x0066852c    8bce
                         call               dword ptr [eax + 0xaf8]                  // 0x0066852e    ff90f80a0000
                         test               eax, eax                                 // 0x00668534    85c0
                         {disp32} jne       _jmp_addr_0x00668637                     // 0x00668536    0f85fb000000
                         mov                edx, dword ptr [esi]                     // 0x0066853c    8b16
                         mov.s              ecx, esi                                 // 0x0066853e    8bce
                         call               dword ptr [edx + 0x530]                  // 0x00668540    ff9230050000
                         test               eax, eax                                 // 0x00668546    85c0
                         {disp32} je        _jmp_addr_0x00668637                     // 0x00668548    0f84e9000000
                         mov                eax, dword ptr [esi]                     // 0x0066854e    8b06
                         push               edi                                      // 0x00668550    57
                         mov.s              ecx, esi                                 // 0x00668551    8bce
                         call               dword ptr [eax + 0xb04]                  // 0x00668553    ff90040b0000
                         mov                edx, dword ptr [esi]                     // 0x00668559    8b16
                         and                eax, 0x000000ff                          // 0x0066855b    25ff000000
                         mov.s              ecx, eax                                 // 0x00668560    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]         // 0x00668562    8d0449
                         shl                eax, 3                                   // 0x00668565    c1e003
                         sub.s              eax, ecx                                 // 0x00668568    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]         // 0x0066856a    8d0c40
                         {disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00db9e7c]  // 0x0066856d    8b3c8d7c9edb00
                         mov.s              ecx, esi                                 // 0x00668574    8bce
                         call               dword ptr [edx + 0x11c]                  // 0x00668576    ff921c010000
                         fstp               st(0)                                    // 0x0066857c    ddd8
                         cmp                edi, -0x01                               // 0x0066857e    83ffff
                         pop                edi                                      // 0x00668581    5f
                         {disp32} jne       _jmp_addr_0x00668637                     // 0x00668582    0f85af000000
                         xor.s              eax, eax                                 // 0x00668588    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]          // 0x0066858a    668b86e0000000
                         test               al, 0x02                                 // 0x00668591    a802
                         {disp32} jne       _jmp_addr_0x00668637                     // 0x00668593    0f859e000000
                         shr                eax, 9                                   // 0x00668599    c1e809
                         test               al, 0x01                                 // 0x0066859c    a801
                         {disp32} jne       _jmp_addr_0x00668637                     // 0x0066859e    0f8593000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000fc]        // 0x006685a4    8b86fc000000
                         test               eax, eax                                 // 0x006685aa    85c0
                         {disp32} jne       _jmp_addr_0x00668637                     // 0x006685ac    0f8585000000
                         test               byte ptr [esi + 0x25], 0x04              // 0x006685b2    f6462504
                         {disp8} jne        _jmp_addr_0x00668637                     // 0x006685b6    757f
                         mov.s              ecx, ebx                                 // 0x006685b8    8bcb
                         call               _jmp_addr_0x00657fd0                     // 0x006685ba    e811fafeff
                         mov                eax, dword ptr [esi]                     // 0x006685bf    8b06
                         push               ecx                                      // 0x006685c1    51
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x006685c2    8d4c2410
                         fstp               dword ptr [esp]                          // 0x006685c6    d91c24
                         push               ecx                                      // 0x006685c9    51
                         mov.s              ecx, esi                                 // 0x006685ca    8bce
                         call               dword ptr [eax + 0x170]                  // 0x006685cc    ff9070010000
                         push               eax                                      // 0x006685d2    50
                         {disp8} lea        edx, dword ptr [esp + 0x20]              // 0x006685d3    8d542420
                         push               edx                                      // 0x006685d7    52
                         mov.s              ecx, ebx                                 // 0x006685d8    8bcb
                         call               _jmp_addr_0x00657fe0                     // 0x006685da    e801fafeff
                         mov.s              ecx, eax                                 // 0x006685df    8bc8
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x006685e1    e8ead6f9ff
                         push               ecx                                      // 0x006685e6    51
                         fstp               dword ptr [esp]                          // 0x006685e7    d91c24
                         call               _GetDistanceModifier__6GUtilsFff@8       // 0x006685ea    e8a16c0e00
                         mov                eax, dword ptr [esi]                     // 0x006685ef    8b06
                         {disp8} fstp       dword ptr [esp + 0x30]                   // 0x006685f1    d95c2430
                         add                esp, 0x08                                // 0x006685f5    83c408
                         mov.s              ecx, esi                                 // 0x006685f8    8bce
                         call               dword ptr [eax + 0x11c]                  // 0x006685fa    ff901c010000
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x00668600    d84c2428
                         add                esi, 0x14                                // 0x00668604    83c614
                         push               esi                                      // 0x00668607    56
                         mov.s              ecx, ebx                                 // 0x00668608    8bcb
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x0066860a    d95c240c
                         call               _jmp_addr_0x00658630                     // 0x0066860e    e81d00ffff
                         {disp8} fmul       dword ptr [esp + 0x08]                   // 0x00668613    d84c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]              // 0x00668617    8b4c242c
                         fcomp              dword ptr [ecx]                          // 0x0066861b    d819
                         fnstsw             ax                                       // 0x0066861d    dfe0
                         test               ah, 0x41                                 // 0x0066861f    f6c441
                         {disp8} jne        _jmp_addr_0x00668637                     // 0x00668622    7513
                         {disp8} mov        edx, dword ptr [esp + 0x28]              // 0x00668624    8b542428
                         pop                esi                                      // 0x00668628    5e
                         mov                dword ptr [ecx], edx                     // 0x00668629    8911
                         mov                eax, 0x00000001                          // 0x0066862b    b801000000
                         pop                ebx                                      // 0x00668630    5b
                         add                esp, 0x1c                                // 0x00668631    83c41c
                         ret                0x0008                                   // 0x00668634    c20800
_jmp_addr_0x00668637:    pop                esi                                      // 0x00668637    5e
                         xor.s              eax, eax                                 // 0x00668638    33c0
                         pop                ebx                                      // 0x0066863a    5b
                         add                esp, 0x1c                                // 0x0066863b    83c41c
                         ret                0x0008                                   // 0x0066863e    c20800
                         nop                                                         // 0x00668641    90
                         nop                                                         // 0x00668642    90
                         nop                                                         // 0x00668643    90
                         nop                                                         // 0x00668644    90
                         nop                                                         // 0x00668645    90
                         nop                                                         // 0x00668646    90
                         nop                                                         // 0x00668647    90
                         nop                                                         // 0x00668648    90
                         nop                                                         // 0x00668649    90
                         nop                                                         // 0x0066864a    90
                         nop                                                         // 0x0066864b    90
                         nop                                                         // 0x0066864c    90
                         nop                                                         // 0x0066864d    90
                         nop                                                         // 0x0066864e    90
                         nop                                                         // 0x0066864f    90
_jmp_addr_0x00668650:    sub                esp, 0x10                                // 0x00668650    83ec10
                         push               ebx                                      // 0x00668653    53
                         push               ebp                                      // 0x00668654    55
                         push               esi                                      // 0x00668655    56
                         push               edi                                      // 0x00668656    57
                         push               0x0                                      // 0x00668657    6a00
                         push               0x009c7f18                               // 0x00668659    68187f9c00
                         push               0x009c7f18                               // 0x0066865e    68187f9c00
                         mov.s              ebx, ecx                                 // 0x00668663    8bd9
                         {disp8} mov        ecx, dword ptr [esp + 0x30]              // 0x00668665    8b4c2430
                         push               0x0                                      // 0x00668669    6a00
                         call               _jmp_addr_0x00655cc0                     // 0x0066866b    e850d6feff
                         push               eax                                      // 0x00668670    50
                         call               ___RTDynamicCast                         // 0x00668671    e8a3d31500
                         mov.s              esi, eax                                 // 0x00668676    8bf0
                         add                esp, 0x14                                // 0x00668678    83c414
                         {disp8} lea        eax, dword ptr [esp + 0x14]              // 0x0066867b    8d442414
                         push               eax                                      // 0x0066867f    50
                         mov.s              ecx, ebx                                 // 0x00668680    8bcb
                         call               _jmp_addr_0x00657fe0                     // 0x00668682    e859f9feff
                         xor.s              ecx, ecx                                 // 0x00668687    33c9
                         xor.s              ebp, ebp                                 // 0x00668689    33ed
                         test               esi, esi                                 // 0x0066868b    85f6
                         setne              cl                                       // 0x0066868d    0f95c1
                         push               0x00c01d90                               // 0x00668690    68901dc000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x00668695    c744241400000000
                         push               ecx                                      // 0x0066869d    51
                         mov.s              ecx, ebx                                 // 0x0066869e    8bcb
                         call               _jmp_addr_0x00658230                     // 0x006686a0    e88bfbfeff
                         test               eax, eax                                 // 0x006686a5    85c0
                         {disp32} je        _jmp_addr_0x0066877b                     // 0x006686a7    0f84ce000000
                         mov                edx, dword ptr [esi]                     // 0x006686ad    8b16
                         mov.s              ecx, esi                                 // 0x006686af    8bce
                         call               dword ptr [edx + 0x48]                   // 0x006686b1    ff5248
                         mov.s              edi, eax                                 // 0x006686b4    8bf8
                         test               edi, edi                                 // 0x006686b6    85ff
                         {disp8} jne        _jmp_addr_0x0066870c                     // 0x006686b8    7552
                         push               eax                                      // 0x006686ba    50
                         push               0x009cd3f0                               // 0x006686bb    68f0d39c00
                         push               0x009c7f18                               // 0x006686c0    68187f9c00
                         push               eax                                      // 0x006686c5    50
                         push               esi                                      // 0x006686c6    56
                         call               ___RTDynamicCast                         // 0x006686c7    e84dd31500
                         add                esp, 0x14                                // 0x006686cc    83c414
                         test               eax, eax                                 // 0x006686cf    85c0
                         {disp32} je        _jmp_addr_0x0066877b                     // 0x006686d1    0f84a4000000
                         push               edi                                      // 0x006686d7    57
                         push               0x009d96c0                               // 0x006686d8    68c0969d00
                         push               0x009c7f80                               // 0x006686dd    68807f9c00
                         push               edi                                      // 0x006686e2    57
                         mov.s              ecx, eax                                 // 0x006686e3    8bc8
                         call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ         // 0x006686e5    e88635ddff
                         push               eax                                      // 0x006686ea    50
                         call               ___RTDynamicCast                         // 0x006686eb    e829d31500
                         add                esp, 0x14                                // 0x006686f0    83c414
                         test               eax, eax                                 // 0x006686f3    85c0
                         {disp32} je        _jmp_addr_0x0066877b                     // 0x006686f5    0f8480000000
                         {disp32} mov       eax, dword ptr [eax + 0x000000a4]        // 0x006686fb    8b80a4000000
                         test               eax, eax                                 // 0x00668701    85c0
                         {disp8} je         _jmp_addr_0x0066870a                     // 0x00668703    7405
                         {disp8} mov        edi, dword ptr [eax + 0x04]              // 0x00668705    8b7804
                         {disp8} jmp        _jmp_addr_0x0066870c                     // 0x00668708    eb02
_jmp_addr_0x0066870a:    xor.s              edi, edi                                 // 0x0066870a    33ff
_jmp_addr_0x0066870c:    xor.s              eax, eax                                 // 0x0066870c    33c0
                         test               edi, edi                                 // 0x0066870e    85ff
                         setne              al                                       // 0x00668710    0f95c0
                         push               0x00c00d00                               // 0x00668713    68000dc000
                         mov.s              ecx, ebx                                 // 0x00668718    8bcb
                         push               eax                                      // 0x0066871a    50
                         call               _jmp_addr_0x00658230                     // 0x0066871b    e810fbfeff
                         test               eax, eax                                 // 0x00668720    85c0
                         {disp8} je         _jmp_addr_0x0066877b                     // 0x00668722    7457
                         {disp32} mov       edi, dword ptr [edi + 0x00000754]        // 0x00668724    8bbf54070000
                         test               edi, edi                                 // 0x0066872a    85ff
                         {disp8} je         _jmp_addr_0x0066877b                     // 0x0066872c    744d
_jmp_addr_0x0066872e:    {disp32} mov       esi, dword ptr [edi + 0x000000a0]        // 0x0066872e    8bb7a0000000
                         test               esi, esi                                 // 0x00668734    85f6
                         {disp8} je         _jmp_addr_0x00668755                     // 0x00668736    741d
_jmp_addr_0x00668738:    {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x00668738    8d4c2410
                         push               ecx                                      // 0x0066873c    51
                         push               esi                                      // 0x0066873d    56
                         mov.s              ecx, ebx                                 // 0x0066873e    8bcb
                         call               _jmp_addr_0x00668510                     // 0x00668740    e8cbfdffff
                         test               eax, eax                                 // 0x00668745    85c0
                         {disp8} je         _jmp_addr_0x0066874b                     // 0x00668747    7402
                         mov.s              ebp, esi                                 // 0x00668749    8bee
_jmp_addr_0x0066874b:    {disp32} mov       esi, dword ptr [esi + 0x000000e4]        // 0x0066874b    8bb6e4000000
                         test               esi, esi                                 // 0x00668751    85f6
                         {disp8} jne        _jmp_addr_0x00668738                     // 0x00668753    75e3
_jmp_addr_0x00668755:    {disp32} mov       edi, dword ptr [edi + 0x0000009c]        // 0x00668755    8bbf9c000000
                         test               edi, edi                                 // 0x0066875b    85ff
                         {disp8} jne        _jmp_addr_0x0066872e                     // 0x0066875d    75cf
                         test               ebp, ebp                                 // 0x0066875f    85ed
                         {disp8} je         _jmp_addr_0x0066877b                     // 0x00668761    7418
                         {disp8} mov        edx, dword ptr [esp + 0x24]              // 0x00668763    8b542424
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00668767    d9442410
                         pop                edi                                      // 0x0066876b    5f
                         pop                esi                                      // 0x0066876c    5e
                         {disp32} mov       dword ptr [edx + 0x00000094], ebp        // 0x0066876d    89aa94000000
                         pop                ebp                                      // 0x00668773    5d
                         pop                ebx                                      // 0x00668774    5b
                         add                esp, 0x10                                // 0x00668775    83c410
                         ret                0x0004                                   // 0x00668778    c20400
_jmp_addr_0x0066877b:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0066877b    d90598a38a00
                         pop                edi                                      // 0x00668781    5f
                         pop                esi                                      // 0x00668782    5e
                         pop                ebp                                      // 0x00668783    5d
                         pop                ebx                                      // 0x00668784    5b
                         add                esp, 0x10                                // 0x00668785    83c410
                         ret                0x0004                                   // 0x00668788    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                     // 0x0066878b    e86990d9ff
_jmp_addr_0x00668790:    sub                esp, 0x0c                                // 0x00668790    83ec0c
                         push               ebx                                      // 0x00668793    53
                         push               esi                                      // 0x00668794    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]              // 0x00668795    8b742418
                         push               0x0                                      // 0x00668799    6a00
                         push               0x009c7f18                               // 0x0066879b    68187f9c00
                         push               0x009c7f18                               // 0x006687a0    68187f9c00
                         push               0x0                                      // 0x006687a5    6a00
                         mov.s              ecx, esi                                 // 0x006687a7    8bce
                         call               _jmp_addr_0x00655cc0                     // 0x006687a9    e812d5feff
                         push               eax                                      // 0x006687ae    50
                         call               ___RTDynamicCast                         // 0x006687af    e865d21500
                         add                esp, 0x14                                // 0x006687b4    83c414
                         push               0x0                                      // 0x006687b7    6a00
                         push               0x009cfa40                               // 0x006687b9    6840fa9c00
                         push               0x009c7f18                               // 0x006687be    68187f9c00
                         push               0x0                                      // 0x006687c3    6a00
                         mov.s              ecx, esi                                 // 0x006687c5    8bce
                         call               _jmp_addr_0x00655cc0                     // 0x006687c7    e8f4d4feff
                         push               eax                                      // 0x006687cc    50
                         call               ___RTDynamicCast                         // 0x006687cd    e847d21500
                         add                esp, 0x14                                // 0x006687d2    83c414
                         test               eax, eax                                 // 0x006687d5    85c0
                         {disp32} je        _jmp_addr_0x006688cd                     // 0x006687d7    0f84f0000000
                         xor.s              ecx, ecx                                 // 0x006687dd    33c9
                         push               edi                                      // 0x006687df    57
                         {disp32} mov       edi, dword ptr [eax + 0x00000754]        // 0x006687e0    8bb854070000
                         test               edi, edi                                 // 0x006687e6    85ff
                         {disp8} mov        dword ptr [esp + 0x10], ecx              // 0x006687e8    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ecx              // 0x006687ec    894c2414
                         {disp8} mov        word ptr [esp + 0x0e], cx                // 0x006687f0    66894c240e
                         mov                ebx, 0x00000001                          // 0x006687f5    bb01000000
                         {disp32} je        _jmp_addr_0x006688b1                     // 0x006687fa    0f84b1000000
                         push               ebp                                      // 0x00668800    55
                         mov                ebp, 0x00000400                          // 0x00668801    bd00040000
_jmp_addr_0x00668806:    {disp32} mov       esi, dword ptr [edi + 0x000000a0]        // 0x00668806    8bb7a0000000
                         test               esi, esi                                 // 0x0066880c    85f6
                         {disp32} je        _jmp_addr_0x0066889e                     // 0x0066880e    0f848a000000
_jmp_addr_0x00668814:    mov.s              ecx, esi                                 // 0x00668814    8bce
                         call               ?IsVillagerAvailable@Villager@@QAE_NXZ   // 0x00668816    e8759a0e00
                         test               eax, eax                                 // 0x0066881b    85c0
                         {disp8} je         _jmp_addr_0x00668890                     // 0x0066881d    7471
                         {disp32} mov       dl, byte ptr [esi + 0x000000e0]          // 0x0066881f    8a96e0000000
                         not                dl                                       // 0x00668825    f6d2
                         shr                dl, 1                                    // 0x00668827    d0ea
                         test               bl, dl                                   // 0x00668829    84d3
                         {disp8} je         _jmp_addr_0x00668890                     // 0x0066882b    7463
                         mov                eax, dword ptr [esi]                     // 0x0066882d    8b06
                         mov.s              ecx, esi                                 // 0x0066882f    8bce
                         call               dword ptr [eax + 0x530]                  // 0x00668831    ff9030050000
                         test               eax, eax                                 // 0x00668837    85c0
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x00668839    7555
                         mov                edx, dword ptr [esi]                     // 0x0066883b    8b16
                         mov.s              ecx, esi                                 // 0x0066883d    8bce
                         call               dword ptr [edx + 0xaf8]                  // 0x0066883f    ff92f80a0000
                         test               eax, eax                                 // 0x00668845    85c0
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x00668847    7547
                         mov.s              ecx, esi                                 // 0x00668849    8bce
                         call               ?IsSexuallyActive@Villager@@QAEIXZ       // 0x0066884b    e840880f00
                         cmp.s              eax, ebx                                 // 0x00668850    3bc3
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x00668852    753c
                         test               word ptr [esi + 0x24], bp                // 0x00668854    66856e24
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x00668858    7536
                         {disp8} mov        eax, dword ptr [esi + 0x28]              // 0x0066885a    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x000001f8]        // 0x0066885d    8b80f8010000
                         xor.s              ecx, ecx                                 // 0x00668863    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]          // 0x00668865    668b8ee0000000
                         shr                ecx, 9                                   // 0x0066886c    c1e909
                         test               bl, cl                                   // 0x0066886f    84cb
                         {disp8} je         _jmp_addr_0x00668882                     // 0x00668871    740f
                         cmp                byte ptr [esi + 0x000000f2], 0x05        // 0x00668873    80bef200000005
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x0066887a    7514
                         {disp8} mov        byte ptr [esp + eax * 0x1 + 0x12], bl    // 0x0066887c    885c0412
                         {disp8} jmp        _jmp_addr_0x00668890                     // 0x00668880    eb0e
_jmp_addr_0x00668882:    {disp8} mov        ecx, dword ptr [esp + eax * 0x4 + 0x14]  // 0x00668882    8b4c8414
                         test               ecx, ecx                                 // 0x00668886    85c9
                         {disp8} lea        eax, dword ptr [esp + eax * 0x4 + 0x14]  // 0x00668888    8d448414
                         {disp8} jne        _jmp_addr_0x00668890                     // 0x0066888c    7502
                         mov                dword ptr [eax], esi                     // 0x0066888e    8930
_jmp_addr_0x00668890:    {disp32} mov       esi, dword ptr [esi + 0x000000e4]        // 0x00668890    8bb6e4000000
                         test               esi, esi                                 // 0x00668896    85f6
                         {disp32} jne       _jmp_addr_0x00668814                     // 0x00668898    0f8576ffffff
_jmp_addr_0x0066889e:    {disp32} mov       edi, dword ptr [edi + 0x0000009c]        // 0x0066889e    8bbf9c000000
                         test               edi, edi                                 // 0x006688a4    85ff
                         {disp32} jne       _jmp_addr_0x00668806                     // 0x006688a6    0f855affffff
                         {disp8} mov        esi, dword ptr [esp + 0x20]              // 0x006688ac    8b742420
                         pop                ebp                                      // 0x006688b0    5d
_jmp_addr_0x006688b1:    xor.s              eax, eax                                 // 0x006688b1    33c0
                         {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x006688b3    8d4c2410
                         pop                edi                                      // 0x006688b7    5f
_jmp_addr_0x006688b8:    {disp8} mov        dl, byte ptr [esp + eax * 0x1 + 0x0a]    // 0x006688b8    8a54040a
                         test               dl, dl                                   // 0x006688bc    84d2
                         {disp8} jne        _jmp_addr_0x006688c5                     // 0x006688be    7505
                         cmp                dword ptr [ecx], 0x00                    // 0x006688c0    833900
                         {disp8} jne        _jmp_addr_0x006688db                     // 0x006688c3    7516
_jmp_addr_0x006688c5:    inc                eax                                      // 0x006688c5    40
                         add                ecx, 0x4                                 // 0x006688c6    83c104
                         cmp.s              eax, ebx                                 // 0x006688c9    3bc3
                         {disp8} jbe        _jmp_addr_0x006688b8                     // 0x006688cb    76eb
_jmp_addr_0x006688cd:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006688cd    d90598a38a00
                         pop                esi                                      // 0x006688d3    5e
                         pop                ebx                                      // 0x006688d4    5b
                         add                esp, 0x0c                                // 0x006688d5    83c40c
                         ret                0x0004                                   // 0x006688d8    c20400
_jmp_addr_0x006688db:    {disp8} mov        edx, dword ptr [esp + eax * 0x4 + 0x0c]  // 0x006688db    8b54840c
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x006688df    d90590a38a00
                         {disp32} mov       dword ptr [esi + 0x00000094], edx        // 0x006688e5    899694000000
                         pop                esi                                      // 0x006688eb    5e
                         pop                ebx                                      // 0x006688ec    5b
                         add                esp, 0x0c                                // 0x006688ed    83c40c
                         ret                0x0004                                   // 0x006688f0    c20400
                         nop                                                         // 0x006688f3    90
                         nop                                                         // 0x006688f4    90
                         nop                                                         // 0x006688f5    90
                         nop                                                         // 0x006688f6    90
                         nop                                                         // 0x006688f7    90
                         nop                                                         // 0x006688f8    90
                         nop                                                         // 0x006688f9    90
                         nop                                                         // 0x006688fa    90
                         nop                                                         // 0x006688fb    90
                         nop                                                         // 0x006688fc    90
                         nop                                                         // 0x006688fd    90
                         nop                                                         // 0x006688fe    90
                         nop                                                         // 0x006688ff    90
                         sub                esp, 0x18                                // 0x00668900    83ec18
                         push               ebx                                      // 0x00668903    53
                         push               ebp                                      // 0x00668904    55
                         push               esi                                      // 0x00668905    56
                         push               edi                                      // 0x00668906    57
                         {disp8} lea        eax, dword ptr [esp + 0x1c]              // 0x00668907    8d44241c
                         mov.s              ebx, ecx                                 // 0x0066890b    8bd9
                         push               eax                                      // 0x0066890d    50
                         call               _jmp_addr_0x00657fe0                     // 0x0066890e    e8cdf6feff
                         mov                eax, 0x00000001                          // 0x00668913    b801000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00668918    c744241000000000
                         xor.s              edi, edi                                 // 0x00668920    33ff
                         mov                ebp, 0x00000024                          // 0x00668922    bd24000000
                         {disp8} mov        dword ptr [esp + 0x18], eax              // 0x00668927    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax              // 0x0066892b    89442414
_jmp_addr_0x0066892f:    push               0x0                                      // 0x0066892f    6a00
                         push               0x2                                      // 0x00668931    6a02
                         {disp8} lea        ecx, dword ptr [esp + 0x24]              // 0x00668933    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                     // 0x00668937    e884bcf9ff
                         mov.s              esi, eax                                 // 0x0066893c    8bf0
                         test               esi, esi                                 // 0x0066893e    85f6
                         {disp8} je         _jmp_addr_0x0066896b                     // 0x00668940    7429
_jmp_addr_0x00668942:    {disp8} lea        ecx, dword ptr [esp + 0x10]              // 0x00668942    8d4c2410
                         push               ecx                                      // 0x00668946    51
                         push               esi                                      // 0x00668947    56
                         mov.s              ecx, ebx                                 // 0x00668948    8bcb
                         call               _jmp_addr_0x00668510                     // 0x0066894a    e8c1fbffff
                         test               eax, eax                                 // 0x0066894f    85c0
                         {disp8} je         _jmp_addr_0x00668955                     // 0x00668951    7402
                         mov.s              edi, esi                                 // 0x00668953    8bfe
_jmp_addr_0x00668955:    push               esi                                      // 0x00668955    56
                         push               0x2                                      // 0x00668956    6a02
                         {disp8} lea        ecx, dword ptr [esp + 0x24]              // 0x00668958    8d4c2424
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16                     // 0x0066895c    e85fbcf9ff
                         mov.s              esi, eax                                 // 0x00668961    8bf0
                         test               esi, esi                                 // 0x00668963    85f6
                         {disp8} jne        _jmp_addr_0x00668942                     // 0x00668965    75db
                         test               edi, edi                                 // 0x00668967    85ff
                         {disp8} jne        _jmp_addr_0x0066899c                     // 0x00668969    7531
_jmp_addr_0x0066896b:    {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x0066896b    8d542414
                         push               edx                                      // 0x0066896f    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]              // 0x00668970    8d44241c
                         push               eax                                      // 0x00668974    50
                         dec                ebp                                      // 0x00668975    4d
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z   // 0x00668976    e8654e0e00
                         add                esp, 0x08                                // 0x0066897b    83c408
                         push               eax                                      // 0x0066897e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]              // 0x0066897f    8d4c2420
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12       // 0x00668983    e8e8caf9ff
                         test               ebp, ebp                                 // 0x00668988    85ed
                         {disp8} jne        _jmp_addr_0x0066892f                     // 0x0066898a    75a3
                         {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0066898c    d90598a38a00
                         pop                edi                                      // 0x00668992    5f
                         pop                esi                                      // 0x00668993    5e
                         pop                ebp                                      // 0x00668994    5d
                         pop                ebx                                      // 0x00668995    5b
                         add                esp, 0x18                                // 0x00668996    83c418
                         ret                0x0004                                   // 0x00668999    c20400
_jmp_addr_0x0066899c:    {disp8} mov        ecx, dword ptr [esp + 0x2c]              // 0x0066899c    8b4c242c
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x006689a0    d9442410
                         {disp32} mov       dword ptr [ecx + 0x00000094], edi        // 0x006689a4    89b994000000
                         pop                edi                                      // 0x006689aa    5f
                         pop                esi                                      // 0x006689ab    5e
                         pop                ebp                                      // 0x006689ac    5d
                         pop                ebx                                      // 0x006689ad    5b
                         add                esp, 0x18                                // 0x006689ae    83c418
                         ret                0x0004                                   // 0x006689b1    c20400
                         nop                                                         // 0x006689b4    90
                         nop                                                         // 0x006689b5    90
                         nop                                                         // 0x006689b6    90
                         nop                                                         // 0x006689b7    90
                         nop                                                         // 0x006689b8    90
                         nop                                                         // 0x006689b9    90
                         nop                                                         // 0x006689ba    90
                         nop                                                         // 0x006689bb    90
                         nop                                                         // 0x006689bc    90
                         nop                                                         // 0x006689bd    90
                         nop                                                         // 0x006689be    90
                         nop                                                         // 0x006689bf    90
                         sub                esp, 0x08                                // 0x006689c0    83ec08
                         push               esi                                      // 0x006689c3    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]              // 0x006689c4    8b742410
                         push               edi                                      // 0x006689c8    57
                         push               0x0                                      // 0x006689c9    6a00
                         push               0x00bff140                               // 0x006689cb    6840f1bf00
                         push               0x009c7f18                               // 0x006689d0    68187f9c00
                         mov.s              edi, ecx                                 // 0x006689d5    8bf9
                         push               0x0                                      // 0x006689d7    6a00
                         mov.s              ecx, esi                                 // 0x006689d9    8bce
                         call               _jmp_addr_0x00655cc0                     // 0x006689db    e8e0d2feff
                         push               eax                                      // 0x006689e0    50
                         call               ___RTDynamicCast                         // 0x006689e1    e833d01500
                         add                esp, 0x14                                // 0x006689e6    83c414
                         {disp8} mov        dword ptr [esp + 0x08], eax              // 0x006689e9    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x14]              // 0x006689ed    8d442414
                         push               eax                                      // 0x006689f1    50
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x006689f2    8d4c240c
                         push               ecx                                      // 0x006689f6    51
                         mov.s              ecx, edi                                 // 0x006689f7    8bcf
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000       // 0x006689f9    c744241c00000000
                         call               _jmp_addr_0x00666ae0                     // 0x00668a01    e8dae0ffff
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00668a06    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x00668a0a    8b442414
                         test               eax, eax                                 // 0x00668a0e    85c0
                         {disp8} je         _jmp_addr_0x00668a41                     // 0x00668a10    742f
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]              // 0x00668a12    8b4e0c
                         test               ecx, ecx                                 // 0x00668a15    85c9
                         {disp32} mov       dword ptr [esi + 0x00000094], eax        // 0x00668a17    898694000000
                         {disp8} je         _jmp_addr_0x00668a35                     // 0x00668a1d    7416
                         call               _jmp_addr_0x00655cb0                     // 0x00668a1f    e88cd2feff
                         test               eax, eax                                 // 0x00668a24    85c0
                         {disp8} jne        _jmp_addr_0x00668a35                     // 0x00668a26    750d
                         {disp8} mov        edx, dword ptr [esi + 0x0c]              // 0x00668a28    8b560c
                         {disp8} mov        eax, dword ptr [esp + 0x08]              // 0x00668a2b    8b442408
                         {disp32} mov       dword ptr [edx + 0x00000094], eax        // 0x00668a2f    898294000000
_jmp_addr_0x00668a35:    {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00668a35    d944240c
                         pop                edi                                      // 0x00668a39    5f
                         pop                esi                                      // 0x00668a3a    5e
                         add                esp, 0x08                                // 0x00668a3b    83c408
                         ret                0x0004                                   // 0x00668a3e    c20400
_jmp_addr_0x00668a41:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00668a41    d90598a38a00
                         pop                edi                                      // 0x00668a47    5f
                         pop                esi                                      // 0x00668a48    5e
                         add                esp, 0x08                                // 0x00668a49    83c408
                         ret                0x0004                                   // 0x00668a4c    c20400
                         nop                                                         // 0x00668a4f    90
                         sub                esp, 0x18                                // 0x00668a50    83ec18
                         push               ebx                                      // 0x00668a53    53
                         push               ebp                                      // 0x00668a54    55
                         {disp8} mov        ebp, dword ptr [esp + 0x24]              // 0x00668a55    8b6c2424
                         push               esi                                      // 0x00668a59    56
                         push               edi                                      // 0x00668a5a    57
                         push               0x0                                      // 0x00668a5b    6a00
                         push               0x009cfa40                               // 0x00668a5d    6840fa9c00
                         push               0x009c7f18                               // 0x00668a62    68187f9c00
                         mov.s              edi, ecx                                 // 0x00668a67    8bf9
                         push               0x0                                      // 0x00668a69    6a00
                         mov.s              ecx, ebp                                 // 0x00668a6b    8bcd
                         call               _jmp_addr_0x00655cc0                     // 0x00668a6d    e84ed2feff
                         push               eax                                      // 0x00668a72    50
                         call               ___RTDynamicCast                         // 0x00668a73    e8a1cf1500
                         mov.s              esi, eax                                 // 0x00668a78    8bf0
                         add                esp, 0x14                                // 0x00668a7a    83c414
                         test               esi, esi                                 // 0x00668a7d    85f6
                         {disp32} je        _jmp_addr_0x00668b19                     // 0x00668a7f    0f8494000000
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x00668a85    8d442410
                         push               eax                                      // 0x00668a89    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]              // 0x00668a8a    8d4c2430
                         push               ecx                                      // 0x00668a8e    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]              // 0x00668a8f    8d54241c
                         push               edx                                      // 0x00668a93    52
                         mov.s              ecx, esi                                 // 0x00668a94    8bce
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000       // 0x00668a96    c744243800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000       // 0x00668a9e    c744241c00000000
                         call               _jmp_addr_0x00741980                     // 0x00668aa6    e8d58e0d00
                         test               al, al                                   // 0x00668aab    84c0
                         {disp8} je         _jmp_addr_0x00668b19                     // 0x00668aad    746a
                         {disp8} fld        dword ptr [esp + 0x2c]                   // 0x00668aaf    d944242c
                         mov                ebx, 0x00000013                          // 0x00668ab3    bb13000000
                         {disp8} fcomp      dword ptr [esp + 0x10]                   // 0x00668ab8    d85c2410
                         fnstsw             ax                                       // 0x00668abc    dfe0
                         test               ah, 0x41                                 // 0x00668abe    f6c441
                         {disp8} je         _jmp_addr_0x00668ac8                     // 0x00668ac1    7405
                         mov                ebx, 0x00000014                          // 0x00668ac3    bb14000000
_jmp_addr_0x00668ac8:    {disp8} lea        eax, dword ptr [esp + 0x1c]              // 0x00668ac8    8d44241c
                         push               eax                                      // 0x00668acc    50
                         mov.s              ecx, esi                                 // 0x00668acd    8bce
                         call               _jmp_addr_0x0073ae10                     // 0x00668acf    e83c230d00
                         push               0x0                                      // 0x00668ad4    6a00
                         push               ebx                                      // 0x00668ad6    53
                         {disp8} lea        ecx, dword ptr [esp + 0x24]              // 0x00668ad7    8d4c2424
                         push               ecx                                      // 0x00668adb    51
                         mov.s              ecx, edi                                 // 0x00668adc    8bcf
                         call               _jmp_addr_0x00665d40                     // 0x00668ade    e85dd2ffff
                         test               al, al                                   // 0x00668ae3    84c0
                         {disp8} jne        _jmp_addr_0x00668b19                     // 0x00668ae5    7532
                         {disp8} lea        edx, dword ptr [esp + 0x18]              // 0x00668ae7    8d542418
                         push               edx                                      // 0x00668aeb    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]              // 0x00668aec    8d442420
                         push               eax                                      // 0x00668af0    50
                         push               ebx                                      // 0x00668af1    53
                         mov.s              ecx, edi                                 // 0x00668af2    8bcf
                         call               _jmp_addr_0x006668f0                     // 0x00668af4    e8f7ddffff
                         {disp8} fmul       dword ptr [esp + 0x14]                   // 0x00668af9    d84c2414
                         {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x00668afd    8b442418
                         test               eax, eax                                 // 0x00668b01    85c0
                         fadd.s             st(0), st(0)                             // 0x00668b03    dcc0
                         {disp8} je         _jmp_addr_0x00668b17                     // 0x00668b05    7410
                         pop                edi                                      // 0x00668b07    5f
                         pop                esi                                      // 0x00668b08    5e
                         {disp32} mov       dword ptr [ebp + 0x00000094], eax        // 0x00668b09    898594000000
                         pop                ebp                                      // 0x00668b0f    5d
                         pop                ebx                                      // 0x00668b10    5b
                         add                esp, 0x18                                // 0x00668b11    83c418
                         ret                0x0004                                   // 0x00668b14    c20400
_jmp_addr_0x00668b17:    fstp               st(0)                                    // 0x00668b17    ddd8
_jmp_addr_0x00668b19:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00668b19    d90598a38a00
                         pop                edi                                      // 0x00668b1f    5f
                         pop                esi                                      // 0x00668b20    5e
                         pop                ebp                                      // 0x00668b21    5d
                         pop                ebx                                      // 0x00668b22    5b
                         add                esp, 0x18                                // 0x00668b23    83c418
                         ret                0x0004                                   // 0x00668b26    c20400
                         nop                                                         // 0x00668b29    90
                         nop                                                         // 0x00668b2a    90
                         nop                                                         // 0x00668b2b    90
                         nop                                                         // 0x00668b2c    90
                         nop                                                         // 0x00668b2d    90
                         nop                                                         // 0x00668b2e    90
                         nop                                                         // 0x00668b2f    90
                         sub                esp, 0x0c                                // 0x00668b30    83ec0c
                         push               ebx                                      // 0x00668b33    53
                         push               esi                                      // 0x00668b34    56
                         push               edi                                      // 0x00668b35    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]              // 0x00668b36    8b7c241c
                         push               0x0                                      // 0x00668b3a    6a00
                         push               0x00bf4178                               // 0x00668b3c    687841bf00
                         push               0x009c7f18                               // 0x00668b41    68187f9c00
                         mov.s              esi, ecx                                 // 0x00668b46    8bf1
                         push               0x0                                      // 0x00668b48    6a00
                         mov.s              ecx, edi                                 // 0x00668b4a    8bcf
                         call               _jmp_addr_0x00655cb0                     // 0x00668b4c    e85fd1feff
                         push               eax                                      // 0x00668b51    50
                         call               ___RTDynamicCast                         // 0x00668b52    e8c2ce1500
                         add                esp, 0x14                                // 0x00668b57    83c414
                         push               0x0                                      // 0x00668b5a    6a00
                         push               0x009cfa40                               // 0x00668b5c    6840fa9c00
                         push               0x009c7f18                               // 0x00668b61    68187f9c00
                         push               0x0                                      // 0x00668b66    6a00
                         mov.s              ecx, edi                                 // 0x00668b68    8bcf
                         mov.s              ebx, eax                                 // 0x00668b6a    8bd8
                         call               _jmp_addr_0x00655cc0                     // 0x00668b6c    e84fd1feff
                         push               eax                                      // 0x00668b71    50
                         call               ___RTDynamicCast                         // 0x00668b72    e8a2ce1500
                         mov.s              edi, eax                                 // 0x00668b77    8bf8
                         add                esp, 0x14                                // 0x00668b79    83c414
                         xor.s              eax, eax                                 // 0x00668b7c    33c0
                         test               edi, edi                                 // 0x00668b7e    85ff
                         setne              al                                       // 0x00668b80    0f95c0
                         push               0x00c01db4                               // 0x00668b83    68b41dc000
                         mov.s              ecx, esi                                 // 0x00668b88    8bce
                         push               eax                                      // 0x00668b8a    50
                         call               _jmp_addr_0x00658230                     // 0x00668b8b    e8a0f6feff
                         test               eax, eax                                 // 0x00668b90    85c0
                         {disp32} je        _jmp_addr_0x00668c1a                     // 0x00668b92    0f8482000000
                         xor.s              ecx, ecx                                 // 0x00668b98    33c9
                         test               ebx, ebx                                 // 0x00668b9a    85db
                         setne              cl                                       // 0x00668b9c    0f95c1
                         push               0x00c01db4                               // 0x00668b9f    68b41dc000
                         push               ecx                                      // 0x00668ba4    51
                         mov.s              ecx, esi                                 // 0x00668ba5    8bce
                         call               _jmp_addr_0x00658230                     // 0x00668ba7    e884f6feff
                         test               eax, eax                                 // 0x00668bac    85c0
                         {disp8} je         _jmp_addr_0x00668c1a                     // 0x00668bae    746a
                         push               0x0                                      // 0x00668bb0    6a00
                         mov.s              ecx, ebx                                 // 0x00668bb2    8bcb
                         call               _jmp_addr_0x00726380                     // 0x00668bb4    e8c7d70b00
                         push               eax                                      // 0x00668bb9    50
                         {disp8} lea        edx, dword ptr [esp + 0x14]              // 0x00668bba    8d542414
                         push               edx                                      // 0x00668bbe    52
                         mov.s              ecx, edi                                 // 0x00668bbf    8bcf
                         call               _jmp_addr_0x0073ae10                     // 0x00668bc1    e84a220d00
                         push               eax                                      // 0x00668bc6    50
                         mov.s              ecx, esi                                 // 0x00668bc7    8bce
                         call               _jmp_addr_0x00665d40                     // 0x00668bc9    e872d1ffff
                         test               al, al                                   // 0x00668bce    84c0
                         {disp8} jne        _jmp_addr_0x00668c0c                     // 0x00668bd0    753a
                         push               ebx                                      // 0x00668bd2    53
                         mov.s              ecx, esi                                 // 0x00668bd3    8bce
                         call               _jmp_addr_0x00665dd0                     // 0x00668bd5    e8f6d1ffff
                         test               al, al                                   // 0x00668bda    84c0
                         {disp8} je         _jmp_addr_0x00668c0c                     // 0x00668bdc    742e
                         mov                eax, dword ptr [edi]                     // 0x00668bde    8b07
                         mov.s              ecx, edi                                 // 0x00668be0    8bcf
                         call               dword ptr [eax + 0x60]                   // 0x00668be2    ff5060
                         push               ecx                                      // 0x00668be5    51
                         fstp               dword ptr [esp]                          // 0x00668be6    d91c24
                         push               ebx                                      // 0x00668be9    53
                         {disp8} lea        ecx, dword ptr [esp + 0x14]              // 0x00668bea    8d4c2414
                         push               ecx                                      // 0x00668bee    51
                         mov.s              ecx, edi                                 // 0x00668bef    8bcf
                         call               _jmp_addr_0x0073ae10                     // 0x00668bf1    e81a220d00
                         push               eax                                      // 0x00668bf6    50
                         mov.s              ecx, esi                                 // 0x00668bf7    8bce
                         call               _jmp_addr_0x00666410                     // 0x00668bf9    e812d8ffff
                         pop                edi                                      // 0x00668bfe    5f
                         pop                esi                                      // 0x00668bff    5e
                         pop                ebx                                      // 0x00668c00    5b
                         and                eax, 0x000000ff                          // 0x00668c01    25ff000000
                         add                esp, 0x0c                                // 0x00668c06    83c40c
                         ret                0x0004                                   // 0x00668c09    c20400
_jmp_addr_0x00668c0c:    push               0x00c01d9c                               // 0x00668c0c    689c1dc000
                         push               0x0                                      // 0x00668c11    6a00
                         mov.s              ecx, esi                                 // 0x00668c13    8bce
                         call               _jmp_addr_0x00658230                     // 0x00668c15    e816f6feff
_jmp_addr_0x00668c1a:    pop                edi                                      // 0x00668c1a    5f
                         pop                esi                                      // 0x00668c1b    5e
                         xor.s              eax, eax                                 // 0x00668c1c    33c0
                         pop                ebx                                      // 0x00668c1e    5b
                         add                esp, 0x0c                                // 0x00668c1f    83c40c
                         ret                0x0004                                   // 0x00668c22    c20400
                         nop                                                         // 0x00668c25    90
                         nop                                                         // 0x00668c26    90
                         nop                                                         // 0x00668c27    90
                         nop                                                         // 0x00668c28    90
                         nop                                                         // 0x00668c29    90
                         nop                                                         // 0x00668c2a    90
                         nop                                                         // 0x00668c2b    90
                         nop                                                         // 0x00668c2c    90
                         nop                                                         // 0x00668c2d    90
                         nop                                                         // 0x00668c2e    90
                         nop                                                         // 0x00668c2f    90
                         push               ebx                                      // 0x00668c30    53
                         push               ebp                                      // 0x00668c31    55
                         push               esi                                      // 0x00668c32    56
                         push               edi                                      // 0x00668c33    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]              // 0x00668c34    8b7c2414
                         push               0x0                                      // 0x00668c38    6a00
                         push               0x00bf4178                               // 0x00668c3a    687841bf00
                         push               0x009c7f18                               // 0x00668c3f    68187f9c00
                         mov.s              esi, ecx                                 // 0x00668c44    8bf1
                         push               0x0                                      // 0x00668c46    6a00
                         mov.s              ecx, edi                                 // 0x00668c48    8bcf
                         call               _jmp_addr_0x00655cb0                     // 0x00668c4a    e861d0feff
                         push               eax                                      // 0x00668c4f    50
                         call               ___RTDynamicCast                         // 0x00668c50    e8c4cd1500
                         add                esp, 0x14                                // 0x00668c55    83c414
                         push               0x0                                      // 0x00668c58    6a00
                         push               0x009c7f50                               // 0x00668c5a    68507f9c00
                         push               0x009c7f18                               // 0x00668c5f    68187f9c00
                         push               0x0                                      // 0x00668c64    6a00
                         mov.s              ecx, edi                                 // 0x00668c66    8bcf
                         mov.s              ebx, eax                                 // 0x00668c68    8bd8
                         call               _jmp_addr_0x00655cc0                     // 0x00668c6a    e851d0feff
                         push               eax                                      // 0x00668c6f    50
                         call               ___RTDynamicCast                         // 0x00668c70    e8a4cd1500
                         mov.s              edi, eax                                 // 0x00668c75    8bf8
                         add                esp, 0x14                                // 0x00668c77    83c414
                         xor.s              eax, eax                                 // 0x00668c7a    33c0
                         test               edi, edi                                 // 0x00668c7c    85ff
                         setne              al                                       // 0x00668c7e    0f95c0
                         push               0x00c01dbc                               // 0x00668c81    68bc1dc000
                         mov.s              ecx, esi                                 // 0x00668c86    8bce
                         push               eax                                      // 0x00668c88    50
                         call               _jmp_addr_0x00658230                     // 0x00668c89    e8a2f5feff
                         test               eax, eax                                 // 0x00668c8e    85c0
                         {disp8} je         _jmp_addr_0x00668d03                     // 0x00668c90    7471
                         xor.s              ecx, ecx                                 // 0x00668c92    33c9
                         test               ebx, ebx                                 // 0x00668c94    85db
                         setne              cl                                       // 0x00668c96    0f95c1
                         push               0x00c01db4                               // 0x00668c99    68b41dc000
                         push               ecx                                      // 0x00668c9e    51
                         mov.s              ecx, esi                                 // 0x00668c9f    8bce
                         call               _jmp_addr_0x00658230                     // 0x00668ca1    e88af5feff
                         test               eax, eax                                 // 0x00668ca6    85c0
                         {disp8} je         _jmp_addr_0x00668d03                     // 0x00668ca8    7459
                         push               0x0                                      // 0x00668caa    6a00
                         mov.s              ecx, ebx                                 // 0x00668cac    8bcb
                         {disp8} lea        ebp, dword ptr [edi + 0x14]              // 0x00668cae    8d6f14
                         call               _jmp_addr_0x00726380                     // 0x00668cb1    e8cad60b00
                         push               eax                                      // 0x00668cb6    50
                         push               ebp                                      // 0x00668cb7    55
                         mov.s              ecx, esi                                 // 0x00668cb8    8bce
                         call               _jmp_addr_0x00665d40                     // 0x00668cba    e881d0ffff
                         test               al, al                                   // 0x00668cbf    84c0
                         {disp8} jne        _jmp_addr_0x00668cf5                     // 0x00668cc1    7532
                         push               ebx                                      // 0x00668cc3    53
                         mov.s              ecx, esi                                 // 0x00668cc4    8bce
                         call               _jmp_addr_0x00665dd0                     // 0x00668cc6    e805d1ffff
                         test               al, al                                   // 0x00668ccb    84c0
                         {disp8} je         _jmp_addr_0x00668cf5                     // 0x00668ccd    7426
                         mov                edx, dword ptr [edi]                     // 0x00668ccf    8b17
                         mov.s              ecx, edi                                 // 0x00668cd1    8bcf
                         call               dword ptr [edx + 0x60]                   // 0x00668cd3    ff5260
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]        // 0x00668cd6    d80d986c8c00
                         push               ecx                                      // 0x00668cdc    51
                         mov.s              ecx, esi                                 // 0x00668cdd    8bce
                         fstp               dword ptr [esp]                          // 0x00668cdf    d91c24
                         push               ebx                                      // 0x00668ce2    53
                         push               ebp                                      // 0x00668ce3    55
                         call               _jmp_addr_0x00666410                     // 0x00668ce4    e827d7ffff
                         pop                edi                                      // 0x00668ce9    5f
                         pop                esi                                      // 0x00668cea    5e
                         pop                ebp                                      // 0x00668ceb    5d
                         pop                ebx                                      // 0x00668cec    5b
                         and                eax, 0x000000ff                          // 0x00668ced    25ff000000
                         ret                0x0004                                   // 0x00668cf2    c20400
_jmp_addr_0x00668cf5:    push               0x00c01d9c                               // 0x00668cf5    689c1dc000
                         push               0x0                                      // 0x00668cfa    6a00
                         mov.s              ecx, esi                                 // 0x00668cfc    8bce
                         call               _jmp_addr_0x00658230                     // 0x00668cfe    e82df5feff
_jmp_addr_0x00668d03:    pop                edi                                      // 0x00668d03    5f
                         pop                esi                                      // 0x00668d04    5e
                         pop                ebp                                      // 0x00668d05    5d
                         xor.s              eax, eax                                 // 0x00668d06    33c0
                         pop                ebx                                      // 0x00668d08    5b
                         ret                0x0004                                   // 0x00668d09    c20400
                         nop                                                         // 0x00668d0c    90
                         nop                                                         // 0x00668d0d    90
                         nop                                                         // 0x00668d0e    90
                         nop                                                         // 0x00668d0f    90
_jmp_addr_0x00668d10:    push               esi                                      // 0x00668d10    56
                         push               edi                                      // 0x00668d11    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00668d12    8b7c240c
                         push               0x0                                      // 0x00668d16    6a00
                         push               0x00bff140                               // 0x00668d18    6840f1bf00
                         push               0x009c7f18                               // 0x00668d1d    68187f9c00
                         mov.s              esi, ecx                                 // 0x00668d22    8bf1
                         push               0x0                                      // 0x00668d24    6a00
                         mov.s              ecx, edi                                 // 0x00668d26    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x00668d28    e893cffeff
                         push               eax                                      // 0x00668d2d    50
                         call               ___RTDynamicCast                         // 0x00668d2e    e8e6cc1500
                         add                esp, 0x14                                // 0x00668d33    83c414
                         test               eax, eax                                 // 0x00668d36    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00668d38    c744240c00000000
                         {disp8} je         _jmp_addr_0x00668d62                     // 0x00668d40    7420
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x00668d42    8d4c240c
                         push               ecx                                      // 0x00668d46    51
                         push               eax                                      // 0x00668d47    50
                         mov.s              ecx, esi                                 // 0x00668d48    8bce
                         call               _jmp_addr_0x00668e20                     // 0x00668d4a    e8d1000000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x00668d4f    8b44240c
                         test               eax, eax                                 // 0x00668d53    85c0
                         {disp8} je         _jmp_addr_0x00668d68                     // 0x00668d55    7411
                         {disp32} mov       dword ptr [edi + 0x00000094], eax        // 0x00668d57    898794000000
                         pop                edi                                      // 0x00668d5d    5f
                         pop                esi                                      // 0x00668d5e    5e
                         ret                0x0004                                   // 0x00668d5f    c20400
_jmp_addr_0x00668d62:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00668d62    d90598a38a00
_jmp_addr_0x00668d68:    pop                edi                                      // 0x00668d68    5f
                         pop                esi                                      // 0x00668d69    5e
                         ret                0x0004                                   // 0x00668d6a    c20400
                         nop                                                         // 0x00668d6d    90
                         nop                                                         // 0x00668d6e    90
                         nop                                                         // 0x00668d6f    90
                         sub                esp, 0x08                                // 0x00668d70    83ec08
                         push               ebx                                      // 0x00668d73    53
                         push               esi                                      // 0x00668d74    56
                         push               edi                                      // 0x00668d75    57
                         xor.s              ebx, ebx                                 // 0x00668d76    33db
                         mov.s              edi, ecx                                 // 0x00668d78    8bf9
                         {disp32} mov       ecx, dword ptr [_game]                   // 0x00668d7a    8b0d5c19d000
                         push               ebx                                      // 0x00668d80    53
                         {disp8} mov        dword ptr [esp + 0x10], ebx              // 0x00668d81    895c2410
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z                     // 0x00668d85    e8f67beeff
                         mov.s              esi, eax                                 // 0x00668d8a    8bf0
                         test               esi, esi                                 // 0x00668d8c    85f6
                         {disp8} je         _jmp_addr_0x00668df8                     // 0x00668d8e    7468
_jmp_addr_0x00668d90:    mov                eax, dword ptr [edi]                     // 0x00668d90    8b07
                         mov.s              ecx, edi                                 // 0x00668d92    8bcf
                         call               dword ptr [eax + 0x1c]                   // 0x00668d94    ff501c
                         cmp.s              esi, eax                                 // 0x00668d97    3bf0
                         {disp8} je         _jmp_addr_0x00668dd8                     // 0x00668d99    743d
                         mov                edx, dword ptr [edi]                     // 0x00668d9b    8b17
                         mov.s              ecx, edi                                 // 0x00668d9d    8bcf
                         call               dword ptr [edx + 0x1c]                   // 0x00668d9f    ff521c
                         push               eax                                      // 0x00668da2    50
                         mov.s              ecx, esi                                 // 0x00668da3    8bce
                         call               _jmp_addr_0x0064d5d0                     // 0x00668da5    e82648feff
                         test               al, al                                   // 0x00668daa    84c0
                         {disp8} jne        _jmp_addr_0x00668dd8                     // 0x00668dac    752a
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x00668dae    8d442410
                         push               eax                                      // 0x00668db2    50
                         push               esi                                      // 0x00668db3    56
                         mov.s              ecx, edi                                 // 0x00668db4    8bcf
                         call               _jmp_addr_0x00668e20                     // 0x00668db6    e865000000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]              // 0x00668dbb    8b4c2410
                         test               ecx, ecx                                 // 0x00668dbf    85c9
                         {disp8} je         _jmp_addr_0x00668dd6                     // 0x00668dc1    7413
                         {disp8} fcom       dword ptr [esp + 0x0c]                   // 0x00668dc3    d854240c
                         fnstsw             ax                                       // 0x00668dc7    dfe0
                         test               ah, 0x41                                 // 0x00668dc9    f6c441
                         {disp8} jne        _jmp_addr_0x00668dd6                     // 0x00668dcc    7508
                         {disp8} fstp       dword ptr [esp + 0x0c]                   // 0x00668dce    d95c240c
                         mov.s              ebx, ecx                                 // 0x00668dd2    8bd9
                         {disp8} jmp        _jmp_addr_0x00668dd8                     // 0x00668dd4    eb02
_jmp_addr_0x00668dd6:    fstp               st(0)                                    // 0x00668dd6    ddd8
_jmp_addr_0x00668dd8:    {disp32} mov       ecx, dword ptr [_game]                   // 0x00668dd8    8b0d5c19d000
                         push               esi                                      // 0x00668dde    56
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z                     // 0x00668ddf    e89c7beeff
                         mov.s              esi, eax                                 // 0x00668de4    8bf0
                         test               esi, esi                                 // 0x00668de6    85f6
                         {disp8} jne        _jmp_addr_0x00668d90                     // 0x00668de8    75a6
                         test               ebx, ebx                                 // 0x00668dea    85db
                         {disp8} je         _jmp_addr_0x00668df8                     // 0x00668dec    740a
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x00668dee    8b4c2418
                         {disp32} mov       dword ptr [ecx + 0x00000094], ebx        // 0x00668df2    899994000000
_jmp_addr_0x00668df8:    {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00668df8    d944240c
                         pop                edi                                      // 0x00668dfc    5f
                         pop                esi                                      // 0x00668dfd    5e
                         pop                ebx                                      // 0x00668dfe    5b
                         add                esp, 0x08                                // 0x00668dff    83c408
                         ret                0x0004                                   // 0x00668e02    c20400
                         nop                                                         // 0x00668e05    90
                         nop                                                         // 0x00668e06    90
                         nop                                                         // 0x00668e07    90
                         nop                                                         // 0x00668e08    90
                         nop                                                         // 0x00668e09    90
                         nop                                                         // 0x00668e0a    90
                         nop                                                         // 0x00668e0b    90
                         nop                                                         // 0x00668e0c    90
                         nop                                                         // 0x00668e0d    90
                         nop                                                         // 0x00668e0e    90
                         nop                                                         // 0x00668e0f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00668e10    8b442404
                         push               eax                                      // 0x00668e14    50
                         call               _jmp_addr_0x00668d10                     // 0x00668e15    e8f6feffff
                         ret                0x0004                                   // 0x00668e1a    c20400
                         nop                                                         // 0x00668e1d    90
                         nop                                                         // 0x00668e1e    90
                         nop                                                         // 0x00668e1f    90
_jmp_addr_0x00668e20:    sub                esp, 0x38                                // 0x00668e20    83ec38
                         push               ebx                                      // 0x00668e23    53
                         push               ebp                                      // 0x00668e24    55
                         push               esi                                      // 0x00668e25    56
                         mov.s              esi, ecx                                 // 0x00668e26    8bf1
                         mov                eax, dword ptr [esi]                     // 0x00668e28    8b06
                         call               dword ptr [eax + 0x1c]                   // 0x00668e2a    ff501c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000948]        // 0x00668e2d    8b8848090000
                         mov                edx, dword ptr [esi]                     // 0x00668e33    8b16
                         {disp8} mov        dword ptr [esp + 0x24], ecx              // 0x00668e35    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000       // 0x00668e39    c744242800000000
                         {disp8} fild       qword ptr [esp + 0x24]                   // 0x00668e41    df6c2424
                         mov.s              ecx, esi                                 // 0x00668e45    8bce
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00668e47    d95c2414
                         call               dword ptr [edx + 0x1c]                   // 0x00668e4b    ff521c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a48]        // 0x00668e4e    8b88480a0000
                         test               ecx, ecx                                 // 0x00668e54    85c9
                         {disp8} je         _jmp_addr_0x00668e61                     // 0x00668e56    7409
                         mov                eax, dword ptr [esi]                     // 0x00668e58    8b06
                         mov.s              ecx, esi                                 // 0x00668e5a    8bce
                         call               dword ptr [eax + 0x1c]                   // 0x00668e5c    ff501c
                         {disp8} jmp        _jmp_addr_0x00668e6d                     // 0x00668e5f    eb0c
_jmp_addr_0x00668e61:    {disp8} lea        ecx, dword ptr [esp + 0x2c]              // 0x00668e61    8d4c242c
                         push               ecx                                      // 0x00668e65    51
                         mov.s              ecx, esi                                 // 0x00668e66    8bce
                         call               _jmp_addr_0x00657fe0                     // 0x00668e68    e873f1feff
_jmp_addr_0x00668e6d:    {disp8} mov        ebp, dword ptr [esp + 0x48]              // 0x00668e6d    8b6c2448
                         {disp32} mov       ebx, dword ptr [ebp + 0x00000a50]        // 0x00668e71    8b9d500a0000
                         test               ebx, ebx                                 // 0x00668e77    85db
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00668e79    c744240c00000000
                         {disp32} je        _jmp_addr_0x0066905d                     // 0x00668e81    0f84d6010000
                         push               edi                                      // 0x00668e87    57
_jmp_addr_0x00668e88:    {disp32} mov       edi, dword ptr [ebx + 0x00000778]        // 0x00668e88    8bbb78070000
                         test               edi, edi                                 // 0x00668e8e    85ff
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000       // 0x00668e90    c744244c00000000
                         {disp8} je         _jmp_addr_0x00668ee9                     // 0x00668e98    744f
_jmp_addr_0x00668e9a:    mov.s              ecx, edi                                 // 0x00668e9a    8bcf
                         call               _jmp_addr_0x00726380                     // 0x00668e9c    e8dfd40b00
                         mov                edx, dword ptr [esi]                     // 0x00668ea1    8b16
                         push               eax                                      // 0x00668ea3    50
                         mov.s              ecx, esi                                 // 0x00668ea4    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00668ea6    ff521c
                         mov.s              ecx, eax                                 // 0x00668ea9    8bc8
                         call               @IsMagicTypeEnabled__7GPlayerF10MAGIC_TYPE@12                     // 0x00668eab    e87033feff
                         test               eax, eax                                 // 0x00668eb0    85c0
                         {disp8} jne        _jmp_addr_0x00668edf                     // 0x00668eb2    752b
                         {disp8} fld        dword ptr [esp + 0x4c]                   // 0x00668eb4    d944244c
                         mov.s              ecx, edi                                 // 0x00668eb8    8bcf
                         {disp32} fadd      dword ptr [_rdata_float0p5]              // 0x00668eba    d805b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x4c]                   // 0x00668ec0    d95c244c
                         call               _jmp_addr_0x00726380                     // 0x00668ec4    e8b7d40b00
                         {disp8} mov        ecx, dword ptr [esi + eax * 0x4 + 0x68]  // 0x00668ec9    8b4c8668
                         test               ecx, ecx                                 // 0x00668ecd    85c9
                         {disp8} je         _jmp_addr_0x00668edf                     // 0x00668ecf    740e
                         {disp8} fld        dword ptr [esp + 0x4c]                   // 0x00668ed1    d944244c
                         {disp32} fadd      dword ptr [_rdata_float0p5]              // 0x00668ed5    d805b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x4c]                   // 0x00668edb    d95c244c
_jmp_addr_0x00668edf:    {disp32} mov       edi, dword ptr [edi + 0x00000110]        // 0x00668edf    8bbf10010000
                         test               edi, edi                                 // 0x00668ee5    85ff
                         {disp8} jne        _jmp_addr_0x00668e9a                     // 0x00668ee7    75b1
_jmp_addr_0x00668ee9:    {disp8} fld        dword ptr [esp + 0x18]                   // 0x00668ee9    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00668eed    d81d98a38a00
                         fnstsw             ax                                       // 0x00668ef3    dfe0
                         test               ah, 0x40                                 // 0x00668ef5    f6c440
                         {disp8} jne        _jmp_addr_0x00668f1c                     // 0x00668ef8    7522
                         {disp32} mov       eax, dword ptr [ebx + 0x0000061c]        // 0x00668efa    8b831c060000
                         add                eax, dword ptr [ebx + 0x00000618]        // 0x00668f00    038318060000
                         {disp8} mov        dword ptr [esp + 0x30], eax              // 0x00668f06    89442430
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000       // 0x00668f0a    c744243400000000
                         {disp8} fild       qword ptr [esp + 0x30]                   // 0x00668f12    df6c2430
                         {disp8} fdiv       dword ptr [esp + 0x18]                   // 0x00668f16    d8742418
                         {disp8} jmp        _jmp_addr_0x00668f26                     // 0x00668f1a    eb0a
_jmp_addr_0x00668f1c:    {disp8} fld        dword ptr [esp + 0x4c]                   // 0x00668f1c    d944244c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1390]         // 0x00668f20    d80590a38a00
_jmp_addr_0x00668f26:    mov.s              ecx, ebp                                 // 0x00668f26    8bcd
                         {disp8} fstp       dword ptr [esp + 0x1c]                   // 0x00668f28    d95c241c
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x00668f2c    c744241400000000
                         call               ?IsNeutral@GPlayer@@QAE_NXZ              // 0x00668f34    e8c71cfeff
                         test               eax, eax                                 // 0x00668f39    85c0
                         {disp32} jne       _jmp_addr_0x00668fc4                     // 0x00668f3b    0f8583000000
                         mov                edx, dword ptr [esi]                     // 0x00668f41    8b16
                         mov.s              ecx, esi                                 // 0x00668f43    8bce
                         call               dword ptr [edx + 0x1c]                   // 0x00668f45    ff521c
                         {disp32} fld       dword ptr [eax + 0x0000008c]             // 0x00668f48    d9808c000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x00668f4e    d81d98a38a00
                         fnstsw             ax                                       // 0x00668f54    dfe0
                         test               ah, 0x40                                 // 0x00668f56    f6c440
                         {disp8} jne        _jmp_addr_0x00668fbc                     // 0x00668f59    7561
                         {disp32} mov       eax, dword ptr [ebp + 0x0000008c]        // 0x00668f5b    8b858c000000
                         mov                edx, dword ptr [esi]                     // 0x00668f61    8b16
                         mov.s              ecx, esi                                 // 0x00668f63    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax              // 0x00668f65    89442420
                         call               dword ptr [edx + 0x1c]                   // 0x00668f69    ff521c
                         {disp32} fld       dword ptr [eax + 0x0000008c]             // 0x00668f6c    d9808c000000
                         {disp8} fdivr      dword ptr [esp + 0x20]                   // 0x00668f72    d87c2420
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00668f76    d81d90a38a00
                         fnstsw             ax                                       // 0x00668f7c    dfe0
                         test               ah, 0x41                                 // 0x00668f7e    f6c441
                         {disp8} jne        _jmp_addr_0x00668f95                     // 0x00668f81    7512
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00668f83    d90590a38a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x89d88]        // 0x00668f89    dc0d882d9300
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00668f8f    d95c2414
                         {disp8} jmp        _jmp_addr_0x00668fc4                     // 0x00668f93    eb2f
_jmp_addr_0x00668f95:    {disp32} mov       eax, dword ptr [ebp + 0x0000008c]        // 0x00668f95    8b858c000000
                         mov                edx, dword ptr [esi]                     // 0x00668f9b    8b16
                         mov.s              ecx, esi                                 // 0x00668f9d    8bce
                         {disp8} mov        dword ptr [esp + 0x24], eax              // 0x00668f9f    89442424
                         call               dword ptr [edx + 0x1c]                   // 0x00668fa3    ff521c
                         {disp32} fld       dword ptr [eax + 0x0000008c]             // 0x00668fa6    d9808c000000
                         {disp8} fdivr      dword ptr [esp + 0x24]                   // 0x00668fac    d87c2424
                         {disp32} fmul      qword ptr [rdata_bytes + 0x89d88]        // 0x00668fb0    dc0d882d9300
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00668fb6    d95c2414
                         {disp8} jmp        _jmp_addr_0x00668fc4                     // 0x00668fba    eb08
_jmp_addr_0x00668fbc:    {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x00668fbc    c744241400000000
_jmp_addr_0x00668fc4:    push               0x437a0000                               // 0x00668fc4    6800007a43
                         {disp8} lea        eax, dword ptr [ebx + 0x14]              // 0x00668fc9    8d4314
                         push               eax                                      // 0x00668fcc    50
                         {disp8} lea        ecx, dword ptr [esp + 0x44]              // 0x00668fcd    8d4c2444
                         push               ecx                                      // 0x00668fd1    51
                         mov.s              ecx, esi                                 // 0x00668fd2    8bce
                         call               _jmp_addr_0x00657fe0                     // 0x00668fd4    e807f0feff
                         mov.s              ecx, eax                                 // 0x00668fd9    8bc8
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x00668fdb    e8f0ccf9ff
                         push               ecx                                      // 0x00668fe0    51
                         mov.s              ecx, esi                                 // 0x00668fe1    8bce
                         fstp               dword ptr [esp]                          // 0x00668fe3    d91c24
                         call               _jmp_addr_0x00657f30                     // 0x00668fe6    e845effeff
                         {disp32} fmul      dword ptr [_rdata_float0p5]              // 0x00668feb    d80db4a38a00
                         mov                edx, dword ptr [esi]                     // 0x00668ff1    8b16
                         mov.s              ecx, esi                                 // 0x00668ff3    8bce
                         {disp32} fadd      qword ptr [__real@3fe0000000000000]      // 0x00668ff5    dc0560b28a00
                         {disp8} fstp       dword ptr [esp + 0x28]                   // 0x00668ffb    d95c2428
                         call               dword ptr [edx + 0x1c]                   // 0x00668fff    ff521c
                         push               eax                                      // 0x00669002    50
                         mov.s              ecx, ebx                                 // 0x00669003    8bcb
                         call               _jmp_addr_0x00740ed0                     // 0x00669005    e8c67e0d00
                         {disp8} fld        dword ptr [esp + 0x1c]                   // 0x0066900a    d944241c
                         {disp8} fadd       dword ptr [esp + 0x4c]                   // 0x0066900e    d844244c
                         fmulp              st(1), st                                // 0x00669012    dec9
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00669014    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x14]                   // 0x0066901a    d8642414
                         fmulp              st(1), st                                // 0x0066901e    dec9
                         {disp8} fmul       dword ptr [esp + 0x28]                   // 0x00669020    d84c2428
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x00669024    d8542410
                         fnstsw             ax                                       // 0x00669028    dfe0
                         test               ah, 0x41                                 // 0x0066902a    f6c441
                         {disp8} jne        _jmp_addr_0x0066903b                     // 0x0066902d    750c
                         {disp8} mov        eax, dword ptr [esp + 0x50]              // 0x0066902f    8b442450
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x00669033    d95c2410
                         mov                dword ptr [eax], ebx                     // 0x00669037    8918
                         {disp8} jmp        _jmp_addr_0x0066903d                     // 0x00669039    eb02
_jmp_addr_0x0066903b:    fstp               st(0)                                    // 0x0066903b    ddd8
_jmp_addr_0x0066903d:    {disp32} mov       ebx, dword ptr [ebx + 0x0000075c]        // 0x0066903d    8b9b5c070000
                         test               ebx, ebx                                 // 0x00669043    85db
                         {disp32} jne       _jmp_addr_0x00668e88                     // 0x00669045    0f853dfeffff
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x0066904b    d9442410
                         pop                edi                                      // 0x0066904f    5f
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00669050    d81d90a38a00
                         fnstsw             ax                                       // 0x00669056    dfe0
                         test               ah, 0x01                                 // 0x00669058    f6c401
                         {disp8} je         _jmp_addr_0x0066906a                     // 0x0066905b    740d
_jmp_addr_0x0066905d:    {disp8} fld        dword ptr [esp + 0x0c]                   // 0x0066905d    d944240c
                         pop                esi                                      // 0x00669061    5e
                         pop                ebp                                      // 0x00669062    5d
                         pop                ebx                                      // 0x00669063    5b
                         add                esp, 0x38                                // 0x00669064    83c438
                         ret                0x0008                                   // 0x00669067    c20800
_jmp_addr_0x0066906a:    {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0066906a    d90590a38a00
                         pop                esi                                      // 0x00669070    5e
                         pop                ebp                                      // 0x00669071    5d
                         pop                ebx                                      // 0x00669072    5b
                         add                esp, 0x38                                // 0x00669073    83c438
                         ret                0x0008                                   // 0x00669076    c20800
                         nop                                                         // 0x00669079    90
                         nop                                                         // 0x0066907a    90
                         nop                                                         // 0x0066907b    90
                         nop                                                         // 0x0066907c    90
                         nop                                                         // 0x0066907d    90
                         nop                                                         // 0x0066907e    90
                         nop                                                         // 0x0066907f    90
                         sub                esp, 0x08                                // 0x00669080    83ec08
                         push               ebx                                      // 0x00669083    53
                         push               ebp                                      // 0x00669084    55
                         mov.s              ebx, ecx                                 // 0x00669085    8bd9
                         mov                eax, dword ptr [ebx]                     // 0x00669087    8b03
                         push               edi                                      // 0x00669089    57
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000       // 0x0066908a    c744240c0000803f
                         xor.s              ebp, ebp                                 // 0x00669092    33ed
                         call               dword ptr [eax + 0x1c]                   // 0x00669094    ff501c
                         {disp32} mov       edi, dword ptr [eax + 0x00000a50]        // 0x00669097    8bb8500a0000
                         add                eax, 0x00000a50                          // 0x0066909d    05500a0000
                         test               edi, edi                                 // 0x006690a2    85ff
                         {disp32} je        _jmp_addr_0x0066913a                     // 0x006690a4    0f8490000000
                         push               esi                                      // 0x006690aa    56
_jmp_addr_0x006690ab:    {disp32} mov       esi, dword ptr [edi + 0x00000754]        // 0x006690ab    8bb754070000
                         test               esi, esi                                 // 0x006690b1    85f6
                         {disp8} je         _jmp_addr_0x006690f1                     // 0x006690b3    743c
_jmp_addr_0x006690b5:    mov                edx, dword ptr [esi]                     // 0x006690b5    8b16
                         mov.s              ecx, esi                                 // 0x006690b7    8bce
                         call               dword ptr [edx + 0x11c]                  // 0x006690b9    ff921c010000
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x006690bf    d95c2414
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x006690c3    8d4614
                         push               eax                                      // 0x006690c6    50
                         mov.s              ecx, ebx                                 // 0x006690c7    8bcb
                         call               _jmp_addr_0x00658630                     // 0x006690c9    e862f5feff
                         {disp8} fmul       dword ptr [esp + 0x14]                   // 0x006690ce    d84c2414
                         {disp8} fcom       dword ptr [esp + 0x10]                   // 0x006690d2    d8542410
                         fnstsw             ax                                       // 0x006690d6    dfe0
                         test               ah, 0x01                                 // 0x006690d8    f6c401
                         {disp8} je         _jmp_addr_0x006690e5                     // 0x006690db    7408
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x006690dd    d95c2410
                         mov.s              ebp, esi                                 // 0x006690e1    8bee
                         {disp8} jmp        _jmp_addr_0x006690e7                     // 0x006690e3    eb02
_jmp_addr_0x006690e5:    fstp               st(0)                                    // 0x006690e5    ddd8
_jmp_addr_0x006690e7:    {disp32} mov       esi, dword ptr [esi + 0x0000009c]        // 0x006690e7    8bb69c000000
                         test               esi, esi                                 // 0x006690ed    85f6
                         {disp8} jne        _jmp_addr_0x006690b5                     // 0x006690ef    75c4
_jmp_addr_0x006690f1:    {disp32} mov       edi, dword ptr [edi + 0x0000075c]        // 0x006690f1    8bbf5c070000
                         test               edi, edi                                 // 0x006690f7    85ff
                         {disp8} jne        _jmp_addr_0x006690ab                     // 0x006690f9    75b0
                         test               ebp, ebp                                 // 0x006690fb    85ed
                         pop                esi                                      // 0x006690fd    5e
                         {disp8} je         _jmp_addr_0x0066913a                     // 0x006690fe    743a
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00669100    d944240c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]              // 0x00669104    8b4c2418
                         {disp8} fmul       dword ptr [esp + 0x0c]                   // 0x00669108    d84c240c
                         {disp32} mov       dword ptr [ecx + 0x00000094], ebp        // 0x0066910c    89a994000000
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x1390]         // 0x00669112    d82d90a38a00
                         {disp8} fld        dword ptr [esp + 0x0c]                   // 0x00669118    d944240c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c844]        // 0x0066911c    d81d44588c00
                         fnstsw             ax                                       // 0x00669122    dfe0
                         test               ah, 0x01                                 // 0x00669124    f6c401
                         {disp8} je         _jmp_addr_0x00669140                     // 0x00669127    7417
                         pop                edi                                      // 0x00669129    5f
                         fstp               st(0)                                    // 0x0066912a    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0066912c    d90590a38a00
                         pop                ebp                                      // 0x00669132    5d
                         pop                ebx                                      // 0x00669133    5b
                         add                esp, 0x08                                // 0x00669134    83c408
                         ret                0x0004                                   // 0x00669137    c20400
_jmp_addr_0x0066913a:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0066913a    d90598a38a00
_jmp_addr_0x00669140:    pop                edi                                      // 0x00669140    5f
                         pop                ebp                                      // 0x00669141    5d
                         pop                ebx                                      // 0x00669142    5b
                         add                esp, 0x08                                // 0x00669143    83c408
                         ret                0x0004                                   // 0x00669146    c20400
                         nop                                                         // 0x00669149    90
                         nop                                                         // 0x0066914a    90
                         nop                                                         // 0x0066914b    90
                         nop                                                         // 0x0066914c    90
                         nop                                                         // 0x0066914d    90
                         nop                                                         // 0x0066914e    90
                         nop                                                         // 0x0066914f    90
                         push               esi                                      // 0x00669150    56
                         push               edi                                      // 0x00669151    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00669152    8b7c240c
                         push               0x0                                      // 0x00669156    6a00
                         push               0x009c7fa0                               // 0x00669158    68a07f9c00
                         push               0x009c7f18                               // 0x0066915d    68187f9c00
                         push               0x0                                      // 0x00669162    6a00
                         mov.s              ecx, edi                                 // 0x00669164    8bcf
                         call               _jmp_addr_0x00655cc0                     // 0x00669166    e855cbfeff
                         push               eax                                      // 0x0066916b    50
                         call               ___RTDynamicCast                         // 0x0066916c    e8a8c81500
                         mov.s              esi, eax                                 // 0x00669171    8bf0
                         add                esp, 0x14                                // 0x00669173    83c414
                         test               esi, esi                                 // 0x00669176    85f6
                         {disp8} je         _jmp_addr_0x0066919b                     // 0x00669178    7421
                         {disp8} mov        ecx, dword ptr [esi + 0x44]              // 0x0066917a    8b4e44
                         test               ecx, ecx                                 // 0x0066917d    85c9
                         {disp8} je         _jmp_addr_0x0066919b                     // 0x0066917f    741a
                         call               _jmp_addr_0x00730380                     // 0x00669181    e8fa710c00
                         test               eax, eax                                 // 0x00669186    85c0
                         {disp8} je         _jmp_addr_0x0066919b                     // 0x00669188    7411
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0066918a    d90590a38a00
                         {disp32} mov       dword ptr [edi + 0x00000094], esi        // 0x00669190    89b794000000
                         pop                edi                                      // 0x00669196    5f
                         pop                esi                                      // 0x00669197    5e
                         ret                0x0004                                   // 0x00669198    c20400
_jmp_addr_0x0066919b:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x0066919b    d90598a38a00
                         pop                edi                                      // 0x006691a1    5f
                         pop                esi                                      // 0x006691a2    5e
                         ret                0x0004                                   // 0x006691a3    c20400
                         nop                                                         // 0x006691a6    90
                         nop                                                         // 0x006691a7    90
                         nop                                                         // 0x006691a8    90
                         nop                                                         // 0x006691a9    90
                         nop                                                         // 0x006691aa    90
                         nop                                                         // 0x006691ab    90
                         nop                                                         // 0x006691ac    90
                         nop                                                         // 0x006691ad    90
                         nop                                                         // 0x006691ae    90
                         nop                                                         // 0x006691af    90
                         push               esi                                      // 0x006691b0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]              // 0x006691b1    8b742408
                         push               0x0                                      // 0x006691b5    6a00
                         push               0x009c7fa0                               // 0x006691b7    68a07f9c00
                         push               0x009c7f18                               // 0x006691bc    68187f9c00
                         push               0x0                                      // 0x006691c1    6a00
                         mov.s              ecx, esi                                 // 0x006691c3    8bce
                         call               _jmp_addr_0x00655cc0                     // 0x006691c5    e8f6cafeff
                         push               eax                                      // 0x006691ca    50
                         call               ___RTDynamicCast                         // 0x006691cb    e849c81500
                         add                esp, 0x14                                // 0x006691d0    83c414
                         test               eax, eax                                 // 0x006691d3    85c0
                         {disp8} je         _jmp_addr_0x006691ee                     // 0x006691d5    7417
                         {disp8} mov        ecx, dword ptr [eax + 0x44]              // 0x006691d7    8b4844
                         test               ecx, ecx                                 // 0x006691da    85c9
                         {disp8} jne        _jmp_addr_0x006691ee                     // 0x006691dc    7510
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x006691de    d90590a38a00
                         {disp32} mov       dword ptr [esi + 0x00000094], eax        // 0x006691e4    898694000000
                         pop                esi                                      // 0x006691ea    5e
                         ret                0x0004                                   // 0x006691eb    c20400
_jmp_addr_0x006691ee:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006691ee    d90598a38a00
                         pop                esi                                      // 0x006691f4    5e
                         ret                0x0004                                   // 0x006691f5    c20400
                         nop                                                         // 0x006691f8    90
                         nop                                                         // 0x006691f9    90
                         nop                                                         // 0x006691fa    90
                         nop                                                         // 0x006691fb    90
                         nop                                                         // 0x006691fc    90
                         nop                                                         // 0x006691fd    90
                         nop                                                         // 0x006691fe    90
                         nop                                                         // 0x006691ff    90
                         push               ebx                                      // 0x00669200    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00669201    8b5c2408
                         push               esi                                      // 0x00669205    56
                         push               edi                                      // 0x00669206    57
                         push               0x0                                      // 0x00669207    6a00
                         push               0x009c7fa0                               // 0x00669209    68a07f9c00
                         push               0x009c7f18                               // 0x0066920e    68187f9c00
                         mov.s              edi, ecx                                 // 0x00669213    8bf9
                         push               0x0                                      // 0x00669215    6a00
                         mov.s              ecx, ebx                                 // 0x00669217    8bcb
                         call               _jmp_addr_0x00655cc0                     // 0x00669219    e8a2cafeff
                         push               eax                                      // 0x0066921e    50
                         call               ___RTDynamicCast                         // 0x0066921f    e8f5c71500
                         mov.s              esi, eax                                 // 0x00669224    8bf0
                         add                esp, 0x14                                // 0x00669226    83c414
                         test               esi, esi                                 // 0x00669229    85f6
                         {disp8} je         _jmp_addr_0x00669261                     // 0x0066922b    7434
                         {disp8} mov        eax, dword ptr [esi + 0x44]              // 0x0066922d    8b4644
                         test               eax, eax                                 // 0x00669230    85c0
                         push               0x0                                      // 0x00669232    6a00
                         {disp8} je         _jmp_addr_0x0066923e                     // 0x00669234    7408
                         push               0x13                                     // 0x00669236    6a13
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x00669238    8d4614
                         push               eax                                      // 0x0066923b    50
                         {disp8} jmp        _jmp_addr_0x00669244                     // 0x0066923c    eb06
_jmp_addr_0x0066923e:    push               0x14                                     // 0x0066923e    6a14
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x00669240    8d4e14
                         push               ecx                                      // 0x00669243    51
_jmp_addr_0x00669244:    mov.s              ecx, edi                                 // 0x00669244    8bcf
                         call               _jmp_addr_0x00665d40                     // 0x00669246    e8f5caffff
                         test               al, al                                   // 0x0066924b    84c0
                         {disp8} jne        _jmp_addr_0x00669261                     // 0x0066924d    7512
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x0066924f    d90590a38a00
                         pop                edi                                      // 0x00669255    5f
                         {disp32} mov       dword ptr [ebx + 0x00000094], esi        // 0x00669256    89b394000000
                         pop                esi                                      // 0x0066925c    5e
                         pop                ebx                                      // 0x0066925d    5b
                         ret                0x0004                                   // 0x0066925e    c20400
_jmp_addr_0x00669261:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00669261    d90598a38a00
                         pop                edi                                      // 0x00669267    5f
                         pop                esi                                      // 0x00669268    5e
                         pop                ebx                                      // 0x00669269    5b
                         ret                0x0004                                   // 0x0066926a    c20400
                         nop                                                         // 0x0066926d    90
                         nop                                                         // 0x0066926e    90
                         nop                                                         // 0x0066926f    90
                         push               ebx                                      // 0x00669270    53
                         push               ebp                                      // 0x00669271    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]              // 0x00669272    8b6c240c
                         push               esi                                      // 0x00669276    56
                         push               edi                                      // 0x00669277    57
                         push               0x0                                      // 0x00669278    6a00
                         push               0x009c7fa0                               // 0x0066927a    68a07f9c00
                         push               0x009c7f18                               // 0x0066927f    68187f9c00
                         mov.s              edi, ecx                                 // 0x00669284    8bf9
                         push               0x0                                      // 0x00669286    6a00
                         mov.s              ecx, ebp                                 // 0x00669288    8bcd
                         call               _jmp_addr_0x00655cc0                     // 0x0066928a    e831cafeff
                         push               eax                                      // 0x0066928f    50
                         call               ___RTDynamicCast                         // 0x00669290    e884c71500
                         mov.s              esi, eax                                 // 0x00669295    8bf0
                         mov                eax, dword ptr [edi]                     // 0x00669297    8b07
                         add                esp, 0x14                                // 0x00669299    83c414
                         mov.s              ecx, edi                                 // 0x0066929c    8bcf
                         call               dword ptr [eax + 0x1c]                   // 0x0066929e    ff501c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000a48]        // 0x006692a1    8b88480a0000
                         test               ecx, ecx                                 // 0x006692a7    85c9
                         {disp8} je         _jmp_addr_0x006692fc                     // 0x006692a9    7451
                         test               esi, esi                                 // 0x006692ab    85f6
                         mov                ebx, 0x00000013                          // 0x006692ad    bb13000000
                         {disp8} je         _jmp_addr_0x006692cd                     // 0x006692b2    7419
                         {disp8} mov        eax, dword ptr [esi + 0x44]              // 0x006692b4    8b4644
                         test               eax, eax                                 // 0x006692b7    85c0
                         {disp8} je         _jmp_addr_0x006692cd                     // 0x006692b9    7412
                         push               0x0                                      // 0x006692bb    6a00
                         push               ebx                                      // 0x006692bd    53
                         {disp8} lea        ecx, dword ptr [esi + 0x14]              // 0x006692be    8d4e14
                         push               ecx                                      // 0x006692c1    51
                         mov.s              ecx, edi                                 // 0x006692c2    8bcf
                         call               _jmp_addr_0x00665d40                     // 0x006692c4    e877caffff
                         test               al, al                                   // 0x006692c9    84c0
                         {disp8} je         _jmp_addr_0x006692e8                     // 0x006692cb    741b
_jmp_addr_0x006692cd:    test               esi, esi                                 // 0x006692cd    85f6
                         mov                ebx, 0x00000014                          // 0x006692cf    bb14000000
                         {disp8} je         _jmp_addr_0x006692e8                     // 0x006692d4    7412
                         push               0x0                                      // 0x006692d6    6a00
                         push               ebx                                      // 0x006692d8    53
                         {disp8} lea        edx, dword ptr [esi + 0x14]              // 0x006692d9    8d5614
                         push               edx                                      // 0x006692dc    52
                         mov.s              ecx, edi                                 // 0x006692dd    8bcf
                         call               _jmp_addr_0x00665d40                     // 0x006692df    e85ccaffff
                         test               al, al                                   // 0x006692e4    84c0
                         {disp8} jne        _jmp_addr_0x006692fc                     // 0x006692e6    7514
_jmp_addr_0x006692e8:    add                esi, 0x14                                // 0x006692e8    83c614
                         push               esi                                      // 0x006692eb    56
                         push               ebx                                      // 0x006692ec    53
                         push               ebp                                      // 0x006692ed    55
                         mov.s              ecx, edi                                 // 0x006692ee    8bcf
                         call               _jmp_addr_0x00666820                     // 0x006692f0    e82bd5ffff
                         pop                edi                                      // 0x006692f5    5f
                         pop                esi                                      // 0x006692f6    5e
                         pop                ebp                                      // 0x006692f7    5d
                         pop                ebx                                      // 0x006692f8    5b
                         ret                0x0004                                   // 0x006692f9    c20400
_jmp_addr_0x006692fc:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006692fc    d90598a38a00
                         pop                edi                                      // 0x00669302    5f
                         pop                esi                                      // 0x00669303    5e
                         pop                ebp                                      // 0x00669304    5d
                         pop                ebx                                      // 0x00669305    5b
                         ret                0x0004                                   // 0x00669306    c20400
                         nop                                                         // 0x00669309    90
                         nop                                                         // 0x0066930a    90
                         nop                                                         // 0x0066930b    90
                         nop                                                         // 0x0066930c    90
                         nop                                                         // 0x0066930d    90
                         nop                                                         // 0x0066930e    90
                         nop                                                         // 0x0066930f    90
                         push               esi                                      // 0x00669310    56
                         push               edi                                      // 0x00669311    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]              // 0x00669312    8b7c240c
                         push               0x0                                      // 0x00669316    6a00
                         push               0x16                                     // 0x00669318    6a16
                         mov.s              esi, ecx                                 // 0x0066931a    8bf1
                         push               edi                                      // 0x0066931c    57
                         call               _jmp_addr_0x00666820                     // 0x0066931d    e8fed4ffff
                         fadd.s             st(0), st(0)                             // 0x00669322    dcc0
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x00669324    d81d90a38a00
                         fnstsw             ax                                       // 0x0066932a    dfe0
                         test               ah, 0x01                                 // 0x0066932c    f6c401
                         {disp8} je         _jmp_addr_0x00669344                     // 0x0066932f    7413
                         push               0x0                                      // 0x00669331    6a00
                         push               0x16                                     // 0x00669333    6a16
                         push               edi                                      // 0x00669335    57
                         mov.s              ecx, esi                                 // 0x00669336    8bce
                         call               _jmp_addr_0x00666820                     // 0x00669338    e8e3d4ffff
                         fadd.s             st(0), st(0)                             // 0x0066933d    dcc0
                         pop                edi                                      // 0x0066933f    5f
                         pop                esi                                      // 0x00669340    5e
                         ret                0x0004                                   // 0x00669341    c20400
_jmp_addr_0x00669344:    {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00669344    d90590a38a00
                         pop                edi                                      // 0x0066934a    5f
                         pop                esi                                      // 0x0066934b    5e
                         ret                0x0004                                   // 0x0066934c    c20400
                         nop                                                         // 0x0066934f    90
                         sub                esp, 0x08                                // 0x00669350    83ec08
                         push               esi                                      // 0x00669353    56
                         push               edi                                      // 0x00669354    57
                         mov.s              edi, ecx                                 // 0x00669355    8bf9
                         mov                eax, dword ptr [edi]                     // 0x00669357    8b07
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000       // 0x00669359    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000       // 0x00669361    c744240800000000
                         call               dword ptr [eax + 0x1c]                   // 0x00669369    ff501c
                         {disp32} mov       esi, dword ptr [eax + 0x00000a50]        // 0x0066936c    8bb0500a0000
                         add                eax, 0x00000a50                          // 0x00669372    05500a0000
                         test               esi, esi                                 // 0x00669377    85f6
                         {disp8} je         _jmp_addr_0x006693e8                     // 0x00669379    746d
_jmp_addr_0x0066937b:    push               0x5                                      // 0x0066937b    6a05
                         mov.s              ecx, esi                                 // 0x0066937d    8bce
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x0066937f    e89c500d00
                         {disp8} fadd       dword ptr [esp + 0x0c]                   // 0x00669384    d844240c
                         push               0x6                                      // 0x00669388    6a06
                         mov.s              ecx, esi                                 // 0x0066938a    8bce
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x0066938c    d95c2410
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x00669390    e88b500d00
                         {disp8} fadd       dword ptr [esp + 0x08]                   // 0x00669395    d8442408
                         {disp32} mov       esi, dword ptr [esi + 0x0000075c]        // 0x00669399    8bb65c070000
                         test               esi, esi                                 // 0x0066939f    85f6
                         {disp8} fstp       dword ptr [esp + 0x08]                   // 0x006693a1    d95c2408
                         {disp8} jne        _jmp_addr_0x0066937b                     // 0x006693a5    75d4
                         {disp8} fld        dword ptr [esp + 0x08]                   // 0x006693a7    d9442408
                         {disp8} fcomp      dword ptr [esp + 0x0c]                   // 0x006693ab    d85c240c
                         fnstsw             ax                                       // 0x006693af    dfe0
                         test               ah, 0x41                                 // 0x006693b1    f6c441
                         {disp8} jne        _jmp_addr_0x006693e8                     // 0x006693b4    7532
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]              // 0x006693b6    8d4c240c
                         push               ecx                                      // 0x006693ba    51
                         mov.s              ecx, edi                                 // 0x006693bb    8bcf
                         {disp8} mov        dword ptr [esp + 0x10], esi              // 0x006693bd    89742410
                         call               _jmp_addr_0x00669580                     // 0x006693c1    e8ba010000
                         fstp               st(0)                                    // 0x006693c6    ddd8
                         {disp8} mov        eax, dword ptr [esp + 0x0c]              // 0x006693c8    8b44240c
                         test               eax, eax                                 // 0x006693cc    85c0
                         {disp8} je         _jmp_addr_0x006693e8                     // 0x006693ce    7418
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x006693d0    8b542414
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x006693d4    d90590a38a00
                         pop                edi                                      // 0x006693da    5f
                         {disp32} mov       dword ptr [edx + 0x00000094], eax        // 0x006693db    898294000000
                         pop                esi                                      // 0x006693e1    5e
                         add                esp, 0x08                                // 0x006693e2    83c408
                         ret                0x0004                                   // 0x006693e5    c20400
_jmp_addr_0x006693e8:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x006693e8    d90598a38a00
                         pop                edi                                      // 0x006693ee    5f
                         pop                esi                                      // 0x006693ef    5e
                         add                esp, 0x08                                // 0x006693f0    83c408
                         ret                0x0004                                   // 0x006693f3    c20400
                         nop                                                         // 0x006693f6    90
                         nop                                                         // 0x006693f7    90
                         nop                                                         // 0x006693f8    90
                         nop                                                         // 0x006693f9    90
                         nop                                                         // 0x006693fa    90
                         nop                                                         // 0x006693fb    90
                         nop                                                         // 0x006693fc    90
                         nop                                                         // 0x006693fd    90
                         nop                                                         // 0x006693fe    90
                         nop                                                         // 0x006693ff    90
                         push               ebx                                      // 0x00669400    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00669401    8b5c2408
                         push               esi                                      // 0x00669405    56
                         push               edi                                      // 0x00669406    57
                         push               0x0                                      // 0x00669407    6a00
                         push               0x00bece58                               // 0x00669409    6858cebe00
                         push               0x009c7f18                               // 0x0066940e    68187f9c00
                         mov.s              edi, ecx                                 // 0x00669413    8bf9
                         push               0x0                                      // 0x00669415    6a00
                         mov.s              ecx, ebx                                 // 0x00669417    8bcb
                         call               _jmp_addr_0x00655cc0                     // 0x00669419    e8a2c8feff
                         push               eax                                      // 0x0066941e    50
                         call               ___RTDynamicCast                         // 0x0066941f    e8f5c51500
                         mov.s              esi, eax                                 // 0x00669424    8bf0
                         add                esp, 0x14                                // 0x00669426    83c414
                         test               esi, esi                                 // 0x00669429    85f6
                         {disp8} je         _jmp_addr_0x00669459                     // 0x0066942b    742c
                         {disp8} lea        eax, dword ptr [esp + 0x10]              // 0x0066942d    8d442410
                         push               eax                                      // 0x00669431    50
                         mov.s              ecx, edi                                 // 0x00669432    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], esi              // 0x00669434    89742414
                         call               _jmp_addr_0x00669580                     // 0x00669438    e843010000
                         fstp               st(0)                                    // 0x0066943d    ddd8
                         {disp8} mov        eax, dword ptr [esp + 0x10]              // 0x0066943f    8b442410
                         cmp.s              eax, esi                                 // 0x00669443    3bc6
                         {disp8} je         _jmp_addr_0x00669459                     // 0x00669445    7412
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00669447    d90590a38a00
                         pop                edi                                      // 0x0066944d    5f
                         pop                esi                                      // 0x0066944e    5e
                         {disp32} mov       dword ptr [ebx + 0x00000094], eax        // 0x0066944f    898394000000
                         pop                ebx                                      // 0x00669455    5b
                         ret                0x0004                                   // 0x00669456    c20400
_jmp_addr_0x00669459:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00669459    d90598a38a00
                         pop                edi                                      // 0x0066945f    5f
                         pop                esi                                      // 0x00669460    5e
                         pop                ebx                                      // 0x00669461    5b
                         ret                0x0004                                   // 0x00669462    c20400
                         nop                                                         // 0x00669465    90
                         nop                                                         // 0x00669466    90
                         nop                                                         // 0x00669467    90
                         nop                                                         // 0x00669468    90
                         nop                                                         // 0x00669469    90
                         nop                                                         // 0x0066946a    90
                         nop                                                         // 0x0066946b    90
                         nop                                                         // 0x0066946c    90
                         nop                                                         // 0x0066946d    90
                         nop                                                         // 0x0066946e    90
                         nop                                                         // 0x0066946f    90
                         push               ebx                                      // 0x00669470    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]              // 0x00669471    8b5c2408
                         push               esi                                      // 0x00669475    56
                         push               edi                                      // 0x00669476    57
                         push               0x0                                      // 0x00669477    6a00
                         push               0x00bece58                               // 0x00669479    6858cebe00
                         push               0x009c7f18                               // 0x0066947e    68187f9c00
                         mov.s              esi, ecx                                 // 0x00669483    8bf1
                         push               0x0                                      // 0x00669485    6a00
                         mov.s              ecx, ebx                                 // 0x00669487    8bcb
                         call               _jmp_addr_0x00655cb0                     // 0x00669489    e822c8feff
                         push               eax                                      // 0x0066948e    50
                         call               ___RTDynamicCast                         // 0x0066948f    e885c51500
                         add                esp, 0x14                                // 0x00669494    83c414
                         push               0x0                                      // 0x00669497    6a00
                         push               0x00bece58                               // 0x00669499    6858cebe00
                         push               0x009c7f18                               // 0x0066949e    68187f9c00
                         push               0x0                                      // 0x006694a3    6a00
                         mov.s              ecx, ebx                                 // 0x006694a5    8bcb
                         mov.s              edi, eax                                 // 0x006694a7    8bf8
                         call               _jmp_addr_0x00655cf0                     // 0x006694a9    e842c8feff
                         push               eax                                      // 0x006694ae    50
                         call               ___RTDynamicCast                         // 0x006694af    e865c51500
                         add                esp, 0x14                                // 0x006694b4    83c414
                         mov.s              ebx, eax                                 // 0x006694b7    8bd8
                         xor.s              eax, eax                                 // 0x006694b9    33c0
                         test               edi, edi                                 // 0x006694bb    85ff
                         setne              al                                       // 0x006694bd    0f95c0
                         push               0x00c01ddc                               // 0x006694c0    68dc1dc000
                         mov.s              ecx, esi                                 // 0x006694c5    8bce
                         push               eax                                      // 0x006694c7    50
                         call               _jmp_addr_0x00658230                     // 0x006694c8    e863edfeff
                         test               eax, eax                                 // 0x006694cd    85c0
                         {disp8} je         _jmp_addr_0x00669538                     // 0x006694cf    7467
                         xor.s              ecx, ecx                                 // 0x006694d1    33c9
                         test               ebx, ebx                                 // 0x006694d3    85db
                         setne              cl                                       // 0x006694d5    0f95c1
                         push               0x00c01dc8                               // 0x006694d8    68c81dc000
                         push               ecx                                      // 0x006694dd    51
                         mov.s              ecx, esi                                 // 0x006694de    8bce
                         call               _jmp_addr_0x00658230                     // 0x006694e0    e84bedfeff
                         test               eax, eax                                 // 0x006694e5    85c0
                         {disp8} je         _jmp_addr_0x00669538                     // 0x006694e7    744f
                         push               edi                                      // 0x006694e9    57
                         mov.s              ecx, esi                                 // 0x006694ea    8bce
                         call               _jmp_addr_0x00658aa0                     // 0x006694ec    e8aff5feff
                         test               al, al                                   // 0x006694f1    84c0
                         {disp8} je         _jmp_addr_0x00669538                     // 0x006694f3    7443
                         push               0x000004f4                               // 0x006694f5    68f4040000
                         push               0x00c01d04                               // 0x006694fa    68041dc000
                         push               0x74                                     // 0x006694ff    6a74
                         call               ?__nw@Base@@SAPAXK@Z                     // 0x00669501    e8ead1dcff
                         add                esp, 0x0c                                // 0x00669506    83c40c
                         test               eax, eax                                 // 0x00669509    85c0
                         {disp8} je         _jmp_addr_0x00669517                     // 0x0066950b    740a
                         push               ebx                                      // 0x0066950d    53
                         mov.s              ecx, eax                                 // 0x0066950e    8bc8
                         call               _jmp_addr_0x006510f0                     // 0x00669510    e8db7bfeff
                         {disp8} jmp        _jmp_addr_0x00669519                     // 0x00669515    eb02
_jmp_addr_0x00669517:    xor.s              eax, eax                                 // 0x00669517    33c0
_jmp_addr_0x00669519:    push               eax                                      // 0x00669519    50
                         call               _jmp_addr_0x00650d70                     // 0x0066951a    e85178feff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]              // 0x0066951f    8b4e34
                         add                esp, 0x04                                // 0x00669522    83c404
                         push               eax                                      // 0x00669525    50
                         push               0x18                                     // 0x00669526    6a18
                         call               _jmp_addr_0x00650280                     // 0x00669528    e8536dfeff
                         pop                edi                                      // 0x0066952d    5f
                         pop                esi                                      // 0x0066952e    5e
                         mov                eax, 0x00000001                          // 0x0066952f    b801000000
                         pop                ebx                                      // 0x00669534    5b
                         ret                0x0004                                   // 0x00669535    c20400
_jmp_addr_0x00669538:    pop                edi                                      // 0x00669538    5f
                         pop                esi                                      // 0x00669539    5e
                         xor.s              eax, eax                                 // 0x0066953a    33c0
                         pop                ebx                                      // 0x0066953c    5b
                         ret                0x0004                                   // 0x0066953d    c20400
                         push               ecx                                      // 0x00669540    51
                         {disp8} lea        eax, dword ptr [esp + 0x00]              // 0x00669541    8d442400
                         push               eax                                      // 0x00669545    50
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000       // 0x00669546    c744240400000000
                         call               _jmp_addr_0x00669580                     // 0x0066954e    e82d000000
                         fstp               st(0)                                    // 0x00669553    ddd8
                         {disp8} mov        eax, dword ptr [esp + 0x00]              // 0x00669555    8b442400
                         test               eax, eax                                 // 0x00669559    85c0
                         {disp8} je         _jmp_addr_0x00669571                     // 0x0066955b    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x08]              // 0x0066955d    8b4c2408
                         {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x00669561    d90590a38a00
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax        // 0x00669567    898194000000
                         pop                ecx                                      // 0x0066956d    59
                         ret                0x0004                                   // 0x0066956e    c20400
_jmp_addr_0x00669571:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00669571    d90598a38a00
                         pop                ecx                                      // 0x00669577    59
                         ret                0x0004                                   // 0x00669578    c20400
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                     // 0x0066957b    e87982d9ff
_jmp_addr_0x00669580:    sub                esp, 0x30                                // 0x00669580    83ec30
                         push               ebx                                      // 0x00669583    53
                         push               esi                                      // 0x00669584    56
                         {disp8} lea        eax, dword ptr [esp + 0x20]              // 0x00669585    8d442420
                         mov.s              esi, ecx                                 // 0x00669589    8bf1
                         push               eax                                      // 0x0066958b    50
                         {disp8} mov        dword ptr [esp + 0x20], esi              // 0x0066958c    89742420
                         call               _jmp_addr_0x00657fe0                     // 0x00669590    e84beafeff
                         mov                edx, dword ptr [esi]                     // 0x00669595    8b16
                         mov.s              ecx, esi                                 // 0x00669597    8bce
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x00669599    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000       // 0x006695a1    c744241400000000
                         call               dword ptr [edx + 0x1c]                   // 0x006695a9    ff521c
                         {disp32} fld       dword ptr [eax + 0x0000008c]             // 0x006695ac    d9808c000000
                         mov                eax, dword ptr [esi]                     // 0x006695b2    8b06
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1dca4]        // 0x006695b4    d805a46c8c00
                         mov.s              ecx, esi                                 // 0x006695ba    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x006695bc    d95c2418
                         call               dword ptr [eax + 0x1c]                   // 0x006695c0    ff501c
                         {disp32} mov       ebx, dword ptr [eax + 0x00000a50]        // 0x006695c3    8b98500a0000
                         add                eax, 0x00000a50                          // 0x006695c9    05500a0000
                         test               ebx, ebx                                 // 0x006695ce    85db
                         {disp32} je        _jmp_addr_0x00669761                     // 0x006695d0    0f848b010000
                         push               ebp                                      // 0x006695d6    55
                         push               edi                                      // 0x006695d7    57
_jmp_addr_0x006695d8:    {disp32} mov       ebp, dword ptr [ebx + 0x00000754]        // 0x006695d8    8bab54070000
                         test               ebp, ebp                                 // 0x006695de    85ed
                         {disp32} je        _jmp_addr_0x00669737                     // 0x006695e0    0f8451010000
_jmp_addr_0x006695e6:    {disp8} mov        edx, dword ptr [ebp + 0x00]              // 0x006695e6    8b5500
                         mov.s              ecx, ebp                                 // 0x006695e9    8bcd
                         call               dword ptr [edx + 0x310]                  // 0x006695eb    ff9210030000
                         test               eax, eax                                 // 0x006695f1    85c0
                         {disp32} je        _jmp_addr_0x00669729                     // 0x006695f3    0f8430010000
                         {disp32} mov       edi, dword ptr [ebp + 0x000000e0]        // 0x006695f9    8bbde0000000
                         test               edi, edi                                 // 0x006695ff    85ff
                         {disp32} je        _jmp_addr_0x00669729                     // 0x00669601    0f8422010000
_jmp_addr_0x00669607:    {disp8} mov        esi, dword ptr [edi + 0x04]              // 0x00669607    8b7704
                         test               esi, esi                                 // 0x0066960a    85f6
                         {disp32} je        _jmp_addr_0x0066971f                     // 0x0066960c    0f840d010000
                         {disp8} mov        eax, dword ptr [esp + 0x44]              // 0x00669612    8b442444
                         cmp                esi, dword ptr [eax]                     // 0x00669616    3b30
                         {disp32} je        _jmp_addr_0x0066971f                     // 0x00669618    0f8401010000
                         mov.s              ecx, esi                                 // 0x0066961e    8bce
                         call               _jmp_addr_0x006e8b10                     // 0x00669620    e8ebf40700
                         test               eax, eax                                 // 0x00669625    85c0
                         {disp32} je        _jmp_addr_0x0066971f                     // 0x00669627    0f84f2000000
                         test               byte ptr [esi + 0x24], 0x4c              // 0x0066962d    f646244c
                         {disp32} jne       _jmp_addr_0x0066971f                     // 0x00669631    0f85e8000000
                         mov                edx, dword ptr [esi]                     // 0x00669637    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x34]              // 0x00669639    8d442434
                         push               eax                                      // 0x0066963d    50
                         mov.s              ecx, esi                                 // 0x0066963e    8bce
                         call               dword ptr [edx + 0x170]                  // 0x00669640    ff9270010000
                         push               eax                                      // 0x00669646    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]              // 0x00669647    8d4c242c
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                     // 0x0066964b    e880c6f9ff
                         {disp8} fstp       dword ptr [esp + 0x14]                   // 0x00669650    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x20]              // 0x00669654    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x00669658    8b542414
                         push               ecx                                      // 0x0066965c    51
                         push               edx                                      // 0x0066965d    52
                         call               _GetDistanceModifier__6GUtilsFff@8       // 0x0066965e    e82d5c0e00
                         {disp8} fst        dword ptr [esp + 0x1c]                   // 0x00669663    d954241c
                         add                esp, 0x08                                // 0x00669667    83c408
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x0066966a    d95c2410
                         mov.s              ecx, esi                                 // 0x0066966e    8bce
                         call               _jmp_addr_0x006e9d10                     // 0x00669670    e89b060800
                         dec                eax                                      // 0x00669675    48
                         cmp                eax, 0x06                                // 0x00669676    83f806
                         {disp8} ja         _jmp_addr_0x006696f7                     // 0x00669679    777c
                         jmp                dword ptr [eax*4 + 0x669770]             // 0x0066967b    ff248570976600
                         push               0x5                                      // 0x00669682    6a05
                         mov.s              ecx, ebx                                 // 0x00669684    8bcb
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x00669686    e8954d0d00
                         {disp32} fmul      dword ptr [__real@3f400000]              // 0x0066968b    d80d74b28a00
                         cmp                dword ptr [ebx + 0x00000644], 0x000000af // 0x00669691    81bb44060000af000000
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]         // 0x0066969b    d805d4b38a00
                         {disp8} fmul       dword ptr [esp + 0x14]                   // 0x006696a1    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x006696a5    d95c2410
                         {disp8} jle        _jmp_addr_0x006696f7                     // 0x006696a9    7e4c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000       // 0x006696ab    c744241000000000
                         {disp8} jmp        _jmp_addr_0x006696f7                     // 0x006696b3    eb42
                         push               0x6                                      // 0x006696b5    6a06
                         mov.s              ecx, ebx                                 // 0x006696b7    8bcb
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z                     // 0x006696b9    e8624d0d00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x33f8]         // 0x006696be    dc0df8c38a00
                         {disp32} fadd      qword ptr [rdata_bytes + 0x1ebe0]        // 0x006696c4    dc05e07b8c00
                         {disp8} fmul       dword ptr [esp + 0x14]                   // 0x006696ca    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x006696ce    d95c2410
                         {disp8} jmp        _jmp_addr_0x006696f7                     // 0x006696d2    eb23
                         {disp8} fld        dword ptr [esp + 0x14]                   // 0x006696d4    d9442414
                         fadd.s             st(0), st(0)                             // 0x006696d8    dcc0
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1390]         // 0x006696da    d81590a38a00
                         fnstsw             ax                                       // 0x006696e0    dfe0
                         test               ah, 0x01                                 // 0x006696e2    f6c401
                         {disp8} je         _jmp_addr_0x006696ed                     // 0x006696e5    7406
                         {disp8} fstp       dword ptr [esp + 0x10]                   // 0x006696e7    d95c2410
                         {disp8} jmp        _jmp_addr_0x006696f7                     // 0x006696eb    eb0a
_jmp_addr_0x006696ed:    fstp               st(0)                                    // 0x006696ed    ddd8
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000       // 0x006696ef    c74424100000803f
_jmp_addr_0x006696f7:    {disp8} mov        ecx, dword ptr [esp + 0x24]              // 0x006696f7    8b4c2424
                         {disp8} lea        eax, dword ptr [esi + 0x14]              // 0x006696fb    8d4614
                         push               eax                                      // 0x006696fe    50
                         call               _jmp_addr_0x00658630                     // 0x006696ff    e82ceffeff
                         {disp8} fmul       dword ptr [esp + 0x10]                   // 0x00669704    d84c2410
                         {disp8} fcom       dword ptr [esp + 0x18]                   // 0x00669708    d8542418
                         fnstsw             ax                                       // 0x0066970c    dfe0
                         test               ah, 0x41                                 // 0x0066970e    f6c441
                         {disp8} jne        _jmp_addr_0x0066971d                     // 0x00669711    750a
                         {disp8} fstp       dword ptr [esp + 0x18]                   // 0x00669713    d95c2418
                         {disp8} mov        dword ptr [esp + 0x1c], esi              // 0x00669717    8974241c
                         {disp8} jmp        _jmp_addr_0x0066971f                     // 0x0066971b    eb02
_jmp_addr_0x0066971d:    fstp               st(0)                                    // 0x0066971d    ddd8
_jmp_addr_0x0066971f:    mov                edi, dword ptr [edi]                     // 0x0066971f    8b3f
                         test               edi, edi                                 // 0x00669721    85ff
                         {disp32} jne       _jmp_addr_0x00669607                     // 0x00669723    0f85defeffff
_jmp_addr_0x00669729:    {disp32} mov       ebp, dword ptr [ebp + 0x0000009c]        // 0x00669729    8bad9c000000
                         test               ebp, ebp                                 // 0x0066972f    85ed
                         {disp32} jne       _jmp_addr_0x006695e6                     // 0x00669731    0f85affeffff
_jmp_addr_0x00669737:    {disp32} mov       ebx, dword ptr [ebx + 0x0000075c]        // 0x00669737    8b9b5c070000
                         test               ebx, ebx                                 // 0x0066973d    85db
                         {disp32} jne       _jmp_addr_0x006695d8                     // 0x0066973f    0f8593feffff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]              // 0x00669745    8b44241c
                         test               eax, eax                                 // 0x00669749    85c0
                         pop                edi                                      // 0x0066974b    5f
                         pop                ebp                                      // 0x0066974c    5d
                         {disp8} je         _jmp_addr_0x00669761                     // 0x0066974d    7412
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]              // 0x0066974f    8b4c243c
                         {disp8} fld        dword ptr [esp + 0x10]                   // 0x00669753    d9442410
                         pop                esi                                      // 0x00669757    5e
                         mov                dword ptr [ecx], eax                     // 0x00669758    8901
                         pop                ebx                                      // 0x0066975a    5b
                         add                esp, 0x30                                // 0x0066975b    83c430
                         ret                0x0004                                   // 0x0066975e    c20400
_jmp_addr_0x00669761:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x00669761    d90598a38a00
                         pop                esi                                      // 0x00669767    5e
                         pop                ebx                                      // 0x00669768    5b
                         add                esp, 0x30                                // 0x00669769    83c430
                         ret                0x0004                                   // 0x0066976c    c20400

// Snippet: db, [0x0066976f, 0x00669770)
.byte 0x90                        // 0x0066976f

// Snippet: jmptbl, [0x00669770, 0x0066978c)
.byte 0x82, 0x96, 0x66, 0x00      // 0x00669770
.byte 0x82, 0x96, 0x66, 0x00      // 0x00669774
.byte 0xb5, 0x96, 0x66, 0x00      // 0x00669778
.byte 0xb5, 0x96, 0x66, 0x00      // 0x0066977c
.byte 0xb5, 0x96, 0x66, 0x00      // 0x00669780
.byte 0xf7, 0x96, 0x66, 0x00      // 0x00669784
.byte 0xd4, 0x96, 0x66, 0x00      // 0x00669788

// Snippet: db, [0x0066978c, 0x00669790)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0066978c

