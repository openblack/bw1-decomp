.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern @AutoScroll__9SetupListFb@9
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern ?SetFocusNext@SetupBox@@QAEXXZ
.extern ?SetFocusPrev@SetupBox@@QAEXXZ
.extern _jmp_addr_0x00411150
.extern ?GetTextHeight@SetupThing@@SAMHHHHH_NPA_WH@Z
.extern ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern _jmp_addr_0x00413960
.extern _jmp_addr_0x00429da0
.extern _jmp_addr_0x00513680
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _toupper
.extern _wcscat
.extern _wcscpy
.extern __itow
.extern @Activate__Q24slim5TbIMEFPv@12
.extern @UnActivate__Q24slim5TbIMEFv@4
.extern _jmp_addr_0x007f3d70
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern _jmp_addr_0x007f3e40
.extern _jmp_addr_0x007f40c0
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern ?ReactToPhysicsImpact@Abode@@UAEXPAVPhysicsObject@@_N@Z
.extern ?Save@Abode@@UAEIPAVGameOSFile@@@Z
.extern ?Load@Abode@@UAEIPAVGameOSFile@@@Z
.extern ?GetDiscipleStateIfInteractedWith@Abode@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.extern ?StopBeingFunctional@Abode@@UAEXPAVGPlayer@@@Z

.globl ??$WriteIt@I@GameOSFile@@QAEXAAI@Z
.globl _WriteIt_u32___10GameOSFileFRUl
.globl ??$ReadIt@H@GameOSFile@@QAEXAAH@Z
.globl _ReadIt_i32___10GameOSFileFRl
.globl ??$ReadIt@H@GameOSFile@@QAEXAAI@Z
.globl _ReadIt_u32___10GameOSFileFRUl
.globl ?AddToLast@?$LHListHead@VVillager@@@@QAEXPAVVillager@@@Z
.globl _AddToLast__21LHListHead_8Villager_FP8Villager
.globl _NeedsBiggerText__Fv
.globl _GetMidTextSize__Fv
.globl _GetSmallTextSize__Fv
.globl _jmp_addr_0x00407a20
.globl _jmp_addr_0x00407a30
.globl @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.globl ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.globl _jmp_addr_0x00407ee0
.globl _jmp_addr_0x00407ef0
.globl _jmp_addr_0x00408100
.globl @FindControl__8SetupBoxFi@12
.globl _jmp_addr_0x004081a0
.globl _jmp_addr_0x00408240
.globl _jmp_addr_0x00408340
.globl _jmp_addr_0x00408f80
.globl @SetFocusControl__8SetupBoxFP12SetupControl@12
.globl @SetFocus__12SetupControlFb@9
.globl ??0SetupControl@@QAE@HHHHHPA_W@Z
.globl ??1SetupControl@@UAE@XZ  
.globl _globl_ct_0x00407840
.globl _globl_ct_0x00407880
.globl _globl_ct_0x004078b0
.globl _globl_ct_0x004078d0
.globl _globl_ct_0x004078f0
.globl _globl_ct_0x00407910
.globl _globl_ct_0x00407930
.globl _globl_ct_0x00407950
.globl _globl_ct_0x00407970
.globl _globl_ct_0x004079a0
.globl ?Char@SetupControl@@UAEXH@Z
.globl ?Hide@SetupControl@@UAEX_N@Z
.globl ?KeyDown@SetupControl@@UAEXW4LHKey@@W4LHKeyMod@@@Z
.globl ?SetToolTip@SetupControl@@QAEXPA_W@Z
.globl ?SetToolTip@SetupControl@@QAEXK@Z
.globl ?HitTest@SetupControl@@UAE_NHH@Z
.globl ?Drag@SetupControl@@UAEXHH@Z
.globl ??_GSetupControl@@UAEPAXI@Z
.globl ?MouseDown@SetupControl@@UAEXHH_N@Z
.globl _Draw__15SetupStaticTextFbb
.globl ?Click@SetupControl@@UAEXHH@Z
.globl ?MouseUp@SetupControl@@UAEXHH_N@Z
.globl ?SetFocus@SetupControl@@UAEX_N@Z

??$WriteIt@I@GameOSFile@@QAEXAAI@Z:
_WriteIt_u32___10GameOSFileFRUl:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00407700    a190c9be00
                         test               eax, eax                                      // 0x00407705    85c0
                         push               esi                                           // 0x00407707    56
                         mov.s              esi, ecx                                      // 0x00407708    8bf1
                         {disp8} je         _jmp_addr_0x00407740                          // 0x0040770a    7434
                         push               edi                                           // 0x0040770c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0040770d    8b7c240c
                         push               0x0                                           // 0x00407711    6a00
                         push               0x4                                           // 0x00407713    6a04
                         push               edi                                           // 0x00407715    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00407716    e805523b00
                         cmp                eax, 0x03                                     // 0x0040771b    83f803
                         {disp8} jne        _jmp_addr_0x0040772a                          // 0x0040771e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x00407720    c70590c9be0000000000
_jmp_addr_0x0040772a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0040772a    8b8e14020000
                         xor.s              eax, eax                                      // 0x00407730    33c0
                         mov                al, byte ptr [edi]                            // 0x00407732    8a07
                         pop                edi                                           // 0x00407734    5f
                         add                eax, 0x04                                     // 0x00407735    83c004
                         add.s              ecx, eax                                      // 0x00407738    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0040773a    898e14020000
_jmp_addr_0x00407740:    pop                esi                                           // 0x00407740    5e
                         ret                0x0004                                        // 0x00407741    c20400
                         nop                                                              // 0x00407744    90
                         nop                                                              // 0x00407745    90
                         nop                                                              // 0x00407746    90
                         nop                                                              // 0x00407747    90
                         nop                                                              // 0x00407748    90
                         nop                                                              // 0x00407749    90
                         nop                                                              // 0x0040774a    90
                         nop                                                              // 0x0040774b    90
                         nop                                                              // 0x0040774c    90
                         nop                                                              // 0x0040774d    90
                         nop                                                              // 0x0040774e    90
                         nop                                                              // 0x0040774f    90

??$ReadIt@H@GameOSFile@@QAEXAAH@Z:
_ReadIt_i32___10GameOSFileFRl:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00407750    a194c9be00
                         test               eax, eax                                      // 0x00407755    85c0
                         push               esi                                           // 0x00407757    56
                         mov.s              esi, ecx                                      // 0x00407758    8bf1
                         {disp8} je         _jmp_addr_0x00407790                          // 0x0040775a    7434
                         push               edi                                           // 0x0040775c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0040775d    8b7c240c
                         push               0x0                                           // 0x00407761    6a00
                         push               0x4                                           // 0x00407763    6a04
                         push               edi                                           // 0x00407765    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00407766    e875513b00
                         cmp                eax, 0x03                                     // 0x0040776b    83f803
                         {disp8} jne        _jmp_addr_0x0040777a                          // 0x0040776e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x00407770    c70594c9be0000000000
_jmp_addr_0x0040777a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0040777a    8b8e14020000
                         xor.s              eax, eax                                      // 0x00407780    33c0
                         mov                al, byte ptr [edi]                            // 0x00407782    8a07
                         pop                edi                                           // 0x00407784    5f
                         add                eax, 0x04                                     // 0x00407785    83c004
                         add.s              ecx, eax                                      // 0x00407788    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0040778a    898e14020000
_jmp_addr_0x00407790:    pop                esi                                           // 0x00407790    5e
                         ret                0x0004                                        // 0x00407791    c20400
                         nop                                                              // 0x00407794    90
                         nop                                                              // 0x00407795    90
                         nop                                                              // 0x00407796    90
                         nop                                                              // 0x00407797    90
                         nop                                                              // 0x00407798    90
                         nop                                                              // 0x00407799    90
                         nop                                                              // 0x0040779a    90
                         nop                                                              // 0x0040779b    90
                         nop                                                              // 0x0040779c    90
                         nop                                                              // 0x0040779d    90
                         nop                                                              // 0x0040779e    90
                         nop                                                              // 0x0040779f    90

??$ReadIt@H@GameOSFile@@QAEXAAI@Z:
_ReadIt_u32___10GameOSFileFRUl:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x004077a0    a194c9be00
                         test               eax, eax                                      // 0x004077a5    85c0
                         push               esi                                           // 0x004077a7    56
                         mov.s              esi, ecx                                      // 0x004077a8    8bf1
                         {disp8} je         _jmp_addr_0x004077e0                          // 0x004077aa    7434
                         push               edi                                           // 0x004077ac    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004077ad    8b7c240c
                         push               0x0                                           // 0x004077b1    6a00
                         push               0x4                                           // 0x004077b3    6a04
                         push               edi                                           // 0x004077b5    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x004077b6    e825513b00
                         cmp                eax, 0x03                                     // 0x004077bb    83f803
                         {disp8} jne        _jmp_addr_0x004077ca                          // 0x004077be    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x004077c0    c70594c9be0000000000
_jmp_addr_0x004077ca:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x004077ca    8b8e14020000
                         xor.s              eax, eax                                      // 0x004077d0    33c0
                         mov                al, byte ptr [edi]                            // 0x004077d2    8a07
                         pop                edi                                           // 0x004077d4    5f
                         add                eax, 0x04                                     // 0x004077d5    83c004
                         add.s              ecx, eax                                      // 0x004077d8    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x004077da    898e14020000
_jmp_addr_0x004077e0:    pop                esi                                           // 0x004077e0    5e
                         ret                0x0004                                        // 0x004077e1    c20400
                         nop                                                              // 0x004077e4    90
                         nop                                                              // 0x004077e5    90
                         nop                                                              // 0x004077e6    90
                         nop                                                              // 0x004077e7    90
                         nop                                                              // 0x004077e8    90
                         nop                                                              // 0x004077e9    90
                         nop                                                              // 0x004077ea    90
                         nop                                                              // 0x004077eb    90
                         nop                                                              // 0x004077ec    90
                         nop                                                              // 0x004077ed    90
                         nop                                                              // 0x004077ee    90
                         nop                                                              // 0x004077ef    90

?AddToLast@?$LHListHead@VVillager@@@@QAEXPAVVillager@@@Z:
_AddToLast__21LHListHead_8Villager_FP8Villager:
                         mov                edx, dword ptr [ecx]                          // 0x004077f0    8b11
                         test               edx, edx                                      // 0x004077f2    85d2
                         {disp8} je         _jmp_addr_0x00407826                          // 0x004077f4    7430
                         {disp32} mov       eax, dword ptr [edx + 0x000000e4]             // 0x004077f6    8b82e4000000
                         test               eax, eax                                      // 0x004077fc    85c0
                         {disp8} je         _jmp_addr_0x0040780c                          // 0x004077fe    740c
_jmp_addr_0x00407800:    mov.s              edx, eax                                      // 0x00407800    8bd0
                         {disp32} mov       eax, dword ptr [edx + 0x000000e4]             // 0x00407802    8b82e4000000
                         test               eax, eax                                      // 0x00407808    85c0
                         {disp8} jne        _jmp_addr_0x00407800                          // 0x0040780a    75f4
_jmp_addr_0x0040780c:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0040780c    8b442404
                         {disp32} mov       dword ptr [edx + 0x000000e4], eax             // 0x00407810    8982e4000000
                         {disp32} mov       dword ptr [eax + 0x000000e4], 0x00000000      // 0x00407816    c780e400000000000000
                         {disp8} inc        dword ptr [ecx + 0x04]                        // 0x00407820    ff4104
                         ret                0x0004                                        // 0x00407823    c20400
_jmp_addr_0x00407826:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00407826    8b442404
                         mov                dword ptr [ecx], eax                          // 0x0040782a    8901
                         {disp32} mov       dword ptr [eax + 0x000000e4], 0x00000000      // 0x0040782c    c780e400000000000000
                         {disp8} inc        dword ptr [ecx + 0x04]                        // 0x00407836    ff4104
                         ret                0x0004                                        // 0x00407839    c20400
                         nop                                                              // 0x0040783c    90
                         nop                                                              // 0x0040783d    90
                         nop                                                              // 0x0040783e    90
                         nop                                                              // 0x0040783f    90
_globl_ct_0x00407840:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00407840    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00407846    b001
                         test               al, cl                                        // 0x00407848    84c8
                         {disp8} jne        _jmp_addr_0x00407854                          // 0x0040784a    7508
                         or.s               cl, al                                        // 0x0040784c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0040784e    880d34c9fa00
_jmp_addr_0x00407854:    {disp32} jmp       _jmp_addr_0x00407860                          // 0x00407854    e907000000
                         nop                                                              // 0x00407859    90
                         nop                                                              // 0x0040785a    90
                         nop                                                              // 0x0040785b    90
                         nop                                                              // 0x0040785c    90
                         nop                                                              // 0x0040785d    90
                         nop                                                              // 0x0040785e    90
                         nop                                                              // 0x0040785f    90
_jmp_addr_0x00407860:    push               0x00407870                                    // 0x00407860    6870784000
                         call               _atexit                                       // 0x00407865    e827df3b00
                         pop                ecx                                           // 0x0040786a    59
                         ret                                                              // 0x0040786b    c3
                         nop                                                              // 0x0040786c    90
                         nop                                                              // 0x0040786d    90
                         nop                                                              // 0x0040786e    90
                         nop                                                              // 0x0040786f    90
                         ret                                                              // 0x00407870    c3
                         nop                                                              // 0x00407871    90
                         nop                                                              // 0x00407872    90
                         nop                                                              // 0x00407873    90
                         nop                                                              // 0x00407874    90
                         nop                                                              // 0x00407875    90
                         nop                                                              // 0x00407876    90
                         nop                                                              // 0x00407877    90
                         nop                                                              // 0x00407878    90
                         nop                                                              // 0x00407879    90
                         nop                                                              // 0x0040787a    90
                         nop                                                              // 0x0040787b    90
                         nop                                                              // 0x0040787c    90
                         nop                                                              // 0x0040787d    90
                         nop                                                              // 0x0040787e    90
                         nop                                                              // 0x0040787f    90
_globl_ct_0x00407880:    {disp32} jmp       _jmp_addr_0x00407890                          // 0x00407880    e90b000000
                         nop                                                              // 0x00407885    90
                         nop                                                              // 0x00407886    90
                         nop                                                              // 0x00407887    90
                         nop                                                              // 0x00407888    90
                         nop                                                              // 0x00407889    90
                         nop                                                              // 0x0040788a    90
                         nop                                                              // 0x0040788b    90
                         nop                                                              // 0x0040788c    90
                         nop                                                              // 0x0040788d    90
                         nop                                                              // 0x0040788e    90
                         nop                                                              // 0x0040788f    90
_jmp_addr_0x00407890:    fldln2                                                           // 0x00407890    d9ed
                         {disp32} fld       qword ptr [__real@3fe0000000000000]           // 0x00407892    dd0560b28a00
                         fyl2x                                                            // 0x00407898    d9f1
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0040789a    d83d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x286cfc]             // 0x004078a0    d91dfcccc400
                         ret                                                              // 0x004078a6    c3
                         nop                                                              // 0x004078a7    90
                         nop                                                              // 0x004078a8    90
                         nop                                                              // 0x004078a9    90
                         nop                                                              // 0x004078aa    90
                         nop                                                              // 0x004078ab    90
                         nop                                                              // 0x004078ac    90
                         nop                                                              // 0x004078ad    90
                         nop                                                              // 0x004078ae    90
                         nop                                                              // 0x004078af    90
_globl_ct_0x004078b0:    {disp32} jmp       _jmp_addr_0x004078c0                          // 0x004078b0    e90b000000
                         nop                                                              // 0x004078b5    90
                         nop                                                              // 0x004078b6    90
                         nop                                                              // 0x004078b7    90
                         nop                                                              // 0x004078b8    90
                         nop                                                              // 0x004078b9    90
                         nop                                                              // 0x004078ba    90
                         nop                                                              // 0x004078bb    90
                         nop                                                              // 0x004078bc    90
                         nop                                                              // 0x004078bd    90
                         nop                                                              // 0x004078be    90
                         nop                                                              // 0x004078bf    90
_jmp_addr_0x004078c0:    {disp32} mov       dword ptr [data_bytes + 0x286ce8], 0xffffffff // 0x004078c0    c705e8ccc400ffffffff
                         ret                                                              // 0x004078ca    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004078cb    e8a99fffff
_globl_ct_0x004078d0:    {disp32} jmp       _jmp_addr_0x004078e0                          // 0x004078d0    e90b000000
                         nop                                                              // 0x004078d5    90
                         nop                                                              // 0x004078d6    90
                         nop                                                              // 0x004078d7    90
                         nop                                                              // 0x004078d8    90
                         nop                                                              // 0x004078d9    90
                         nop                                                              // 0x004078da    90
                         nop                                                              // 0x004078db    90
                         nop                                                              // 0x004078dc    90
                         nop                                                              // 0x004078dd    90
                         nop                                                              // 0x004078de    90
                         nop                                                              // 0x004078df    90
_jmp_addr_0x004078e0:    {disp32} mov       dword ptr [data_bytes + 0x286ce4], 0xffc08020 // 0x004078e0    c705e4ccc4002080c0ff
                         ret                                                              // 0x004078ea    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004078eb    e8899fffff
_globl_ct_0x004078f0:    {disp32} jmp       _jmp_addr_0x00407900                          // 0x004078f0    e90b000000
                         nop                                                              // 0x004078f5    90
                         nop                                                              // 0x004078f6    90
                         nop                                                              // 0x004078f7    90
                         nop                                                              // 0x004078f8    90
                         nop                                                              // 0x004078f9    90
                         nop                                                              // 0x004078fa    90
                         nop                                                              // 0x004078fb    90
                         nop                                                              // 0x004078fc    90
                         nop                                                              // 0x004078fd    90
                         nop                                                              // 0x004078fe    90
                         nop                                                              // 0x004078ff    90
_jmp_addr_0x00407900:    {disp32} mov       dword ptr [data_bytes + 0x286ce0], 0xff000000 // 0x00407900    c705e0ccc400000000ff
                         ret                                                              // 0x0040790a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040790b    e8699fffff
_globl_ct_0x00407910:    {disp32} jmp       _jmp_addr_0x00407920                          // 0x00407910    e90b000000
                         nop                                                              // 0x00407915    90
                         nop                                                              // 0x00407916    90
                         nop                                                              // 0x00407917    90
                         nop                                                              // 0x00407918    90
                         nop                                                              // 0x00407919    90
                         nop                                                              // 0x0040791a    90
                         nop                                                              // 0x0040791b    90
                         nop                                                              // 0x0040791c    90
                         nop                                                              // 0x0040791d    90
                         nop                                                              // 0x0040791e    90
                         nop                                                              // 0x0040791f    90
_jmp_addr_0x00407920:    {disp32} mov       dword ptr [data_bytes + 0x286cdc], 0xff000000 // 0x00407920    c705dcccc400000000ff
                         ret                                                              // 0x0040792a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040792b    e8499fffff
_globl_ct_0x00407930:    {disp32} jmp       _jmp_addr_0x00407940                          // 0x00407930    e90b000000
                         nop                                                              // 0x00407935    90
                         nop                                                              // 0x00407936    90
                         nop                                                              // 0x00407937    90
                         nop                                                              // 0x00407938    90
                         nop                                                              // 0x00407939    90
                         nop                                                              // 0x0040793a    90
                         nop                                                              // 0x0040793b    90
                         nop                                                              // 0x0040793c    90
                         nop                                                              // 0x0040793d    90
                         nop                                                              // 0x0040793e    90
                         nop                                                              // 0x0040793f    90
_jmp_addr_0x00407940:    {disp32} mov       dword ptr [data_bytes + 0x286cf8], 0xffffffff // 0x00407940    c705f8ccc400ffffffff
                         ret                                                              // 0x0040794a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040794b    e8299fffff
_globl_ct_0x00407950:    {disp32} jmp       _jmp_addr_0x00407960                          // 0x00407950    e90b000000
                         nop                                                              // 0x00407955    90
                         nop                                                              // 0x00407956    90
                         nop                                                              // 0x00407957    90
                         nop                                                              // 0x00407958    90
                         nop                                                              // 0x00407959    90
                         nop                                                              // 0x0040795a    90
                         nop                                                              // 0x0040795b    90
                         nop                                                              // 0x0040795c    90
                         nop                                                              // 0x0040795d    90
                         nop                                                              // 0x0040795e    90
                         nop                                                              // 0x0040795f    90
_jmp_addr_0x00407960:    {disp32} mov       dword ptr [data_bytes + 0x286cd8], 0xffd0d0d0 // 0x00407960    c705d8ccc400d0d0d0ff
                         ret                                                              // 0x0040796a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040796b    e8099fffff
_globl_ct_0x00407970:    {disp32} jmp       _jmp_addr_0x00407980                          // 0x00407970    e90b000000
                         nop                                                              // 0x00407975    90
                         nop                                                              // 0x00407976    90
                         nop                                                              // 0x00407977    90
                         nop                                                              // 0x00407978    90
                         nop                                                              // 0x00407979    90
                         nop                                                              // 0x0040797a    90
                         nop                                                              // 0x0040797b    90
                         nop                                                              // 0x0040797c    90
                         nop                                                              // 0x0040797d    90
                         nop                                                              // 0x0040797e    90
                         nop                                                              // 0x0040797f    90
_jmp_addr_0x00407980:    xor.s              eax, eax                                      // 0x00407980    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x286cc4], eax        // 0x00407982    a3c4ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cc0], eax        // 0x00407987    a3c0ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cbc], eax        // 0x0040798c    a3bcccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cb8], eax        // 0x00407991    a3b8ccc400
                         ret                                                              // 0x00407996    c3
                         nop                                                              // 0x00407997    90
                         nop                                                              // 0x00407998    90
                         nop                                                              // 0x00407999    90
                         nop                                                              // 0x0040799a    90
                         nop                                                              // 0x0040799b    90
                         nop                                                              // 0x0040799c    90
                         nop                                                              // 0x0040799d    90
                         nop                                                              // 0x0040799e    90
                         nop                                                              // 0x0040799f    90
_globl_ct_0x004079a0:    {disp32} jmp       _jmp_addr_0x004079b0                          // 0x004079a0    e90b000000
                         nop                                                              // 0x004079a5    90
                         nop                                                              // 0x004079a6    90
                         nop                                                              // 0x004079a7    90
                         nop                                                              // 0x004079a8    90
                         nop                                                              // 0x004079a9    90
                         nop                                                              // 0x004079aa    90
                         nop                                                              // 0x004079ab    90
                         nop                                                              // 0x004079ac    90
                         nop                                                              // 0x004079ad    90
                         nop                                                              // 0x004079ae    90
                         nop                                                              // 0x004079af    90
_jmp_addr_0x004079b0:    ret                                                              // 0x004079b0    c3
                         nop                                                              // 0x004079b1    90
                         nop                                                              // 0x004079b2    90
                         nop                                                              // 0x004079b3    90
                         nop                                                              // 0x004079b4    90
                         nop                                                              // 0x004079b5    90
                         nop                                                              // 0x004079b6    90
                         nop                                                              // 0x004079b7    90
                         nop                                                              // 0x004079b8    90
                         nop                                                              // 0x004079b9    90
                         nop                                                              // 0x004079ba    90
                         nop                                                              // 0x004079bb    90
                         nop                                                              // 0x004079bc    90
                         nop                                                              // 0x004079bd    90
                         nop                                                              // 0x004079be    90
                         nop                                                              // 0x004079bf    90
_NeedsBiggerText__Fv:    {disp32} mov       eax, dword ptr [_game]                        // 0x004079c0    a15c19d000
                         test               eax, eax                                      // 0x004079c5    85c0
                         {disp8} jne        _jmp_addr_0x004079cc                          // 0x004079c7    7503
                         xor.s              al, al                                        // 0x004079c9    32c0
                         ret                                                              // 0x004079cb    c3
_jmp_addr_0x004079cc:    {disp32} mov       eax, dword ptr [eax + 0x00250080]             // 0x004079cc    8b8080002500
                         cmp                eax, 0x06                                     // 0x004079d2    83f806
                         {disp8} je         _jmp_addr_0x004079ee                          // 0x004079d5    7417
                         cmp                eax, 0x0a                                     // 0x004079d7    83f80a
                         {disp8} je         _jmp_addr_0x004079ee                          // 0x004079da    7412
                         cmp                eax, 0x0b                                     // 0x004079dc    83f80b
                         {disp8} je         _jmp_addr_0x004079ee                          // 0x004079df    740d
                         cmp                eax, 0x0d                                     // 0x004079e1    83f80d
                         {disp8} je         _jmp_addr_0x004079ee                          // 0x004079e4    7408
                         cmp                eax, 0x0e                                     // 0x004079e6    83f80e
                         {disp8} je         _jmp_addr_0x004079ee                          // 0x004079e9    7403
                         xor.s              al, al                                        // 0x004079eb    32c0
                         ret                                                              // 0x004079ed    c3
_jmp_addr_0x004079ee:    mov                al, 0x01                                      // 0x004079ee    b001
                         ret                                                              // 0x004079f0    c3
                         nop                                                              // 0x004079f1    90
                         nop                                                              // 0x004079f2    90
                         nop                                                              // 0x004079f3    90
                         nop                                                              // 0x004079f4    90
                         nop                                                              // 0x004079f5    90
                         nop                                                              // 0x004079f6    90
                         nop                                                              // 0x004079f7    90
                         nop                                                              // 0x004079f8    90
                         nop                                                              // 0x004079f9    90
                         nop                                                              // 0x004079fa    90
                         nop                                                              // 0x004079fb    90
                         nop                                                              // 0x004079fc    90
                         nop                                                              // 0x004079fd    90
                         nop                                                              // 0x004079fe    90
                         nop                                                              // 0x004079ff    90
_GetMidTextSize__Fv:     call               _NeedsBiggerText__Fv                          // 0x00407a00    e8bbffffff
                         neg                al                                            // 0x00407a05    f6d8
                         sbb.s              eax, eax                                      // 0x00407a07    1bc0
                         neg                eax                                           // 0x00407a09    f7d8
                         add                eax, 0x16                                     // 0x00407a0b    83c016
                         ret                                                              // 0x00407a0e    c3
                         nop                                                              // 0x00407a0f    90
_GetSmallTextSize__Fv:   call               _NeedsBiggerText__Fv                          // 0x00407a10    e8abffffff
                         neg                al                                            // 0x00407a15    f6d8
                         sbb.s              eax, eax                                      // 0x00407a17    1bc0
                         neg                eax                                           // 0x00407a19    f7d8
                         add                eax, 0x14                                     // 0x00407a1b    83c014
                         ret                                                              // 0x00407a1e    c3
                         nop                                                              // 0x00407a1f    90
_jmp_addr_0x00407a20:    mov                eax, 0x00000023                               // 0x00407a20    b823000000
                         ret                                                              // 0x00407a25    c3
                         nop                                                              // 0x00407a26    90
                         nop                                                              // 0x00407a27    90
                         nop                                                              // 0x00407a28    90
                         nop                                                              // 0x00407a29    90
                         nop                                                              // 0x00407a2a    90
                         nop                                                              // 0x00407a2b    90
                         nop                                                              // 0x00407a2c    90
                         nop                                                              // 0x00407a2d    90
                         nop                                                              // 0x00407a2e    90
                         nop                                                              // 0x00407a2f    90
_jmp_addr_0x00407a30:    sub                esp, 0x74                                     // 0x00407a30    83ec74
                         push               ebx                                           // 0x00407a33    53
                         push               esi                                           // 0x00407a34    56
                         {disp32} mov       esi, dword ptr [esp + 0x00000080]             // 0x00407a35    8bb42480000000
                         xor.s              ebx, ebx                                      // 0x00407a3c    33db
                         cmp.s              esi, ebx                                      // 0x00407a3e    3bf3
                         {disp8} je         _jmp_addr_0x00407a9f                          // 0x00407a40    745d
                         push               0x3f19999a                                    // 0x00407a42    689a99193f
                         push               ebx                                           // 0x00407a47    53
                         push               0x3f800000                                    // 0x00407a48    680000803f
                         mov                ecx, 0x00c4cc88                               // 0x00407a4d    b988ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c8c], ebx        // 0x00407a52    891d8cccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c88], ebx        // 0x00407a58    891d88ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286ca4], ebx        // 0x00407a5e    891da4ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286ca0], ebx        // 0x00407a64    891da0ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c9c], ebx        // 0x00407a6a    891d9cccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cb4], ebx        // 0x00407a70    891db4ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cb0], ebx        // 0x00407a76    891db0ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c98], ebx        // 0x00407a7c    891d98ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cac], ebx        // 0x00407a82    891dacccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c94], ebx        // 0x00407a88    891d94ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286ca8], ebx        // 0x00407a8e    891da8ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c90], ebx        // 0x00407a94    891d90ccc400
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00407a9a    e8c1020000
_jmp_addr_0x00407a9f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407a9f    8b0d20cdc400
                         cmp.s              ecx, ebx                                      // 0x00407aa5    3bcb
                         {disp32} mov       dword ptr [data_bytes + 0x286d04], ebx        // 0x00407aa7    891d04cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d08], ebx        // 0x00407aad    891d08cdc400
                         {disp8} je         _jmp_addr_0x00407ac1                          // 0x00407ab3    740c
                         push               ebx                                           // 0x00407ab5    53
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00407ab6    e885160000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407abb    8b0d20cdc400
_jmp_addr_0x00407ac1:    cmp.s              esi, ebx                                      // 0x00407ac1    3bf3
                         {disp8} je         _jmp_addr_0x00407ad3                          // 0x00407ac3    740e
                         push               ebx                                           // 0x00407ac5    53
                         mov.s              ecx, esi                                      // 0x00407ac6    8bce
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00407ac8    e873160000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407acd    8b0d20cdc400
_jmp_addr_0x00407ad3:    cmp.s              ecx, ebx                                      // 0x00407ad3    3bcb
                         {disp8} je         _jmp_addr_0x00407b23                          // 0x00407ad5    744c
                         cmp                byte ptr [ecx + 0x64], bl                     // 0x00407ad7    385964
                         {disp8} je         _jmp_addr_0x00407ae7                          // 0x00407ada    740b
                         call               _jmp_addr_0x00408240                          // 0x00407adc    e85f070000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407ae1    8b0d20cdc400
_jmp_addr_0x00407ae7:    cmp.s              ecx, ebx                                      // 0x00407ae7    3bcb
                         {disp8} je         _jmp_addr_0x00407b23                          // 0x00407ae9    7438
                         cmp                dword ptr [ecx + 0x000000b0], ebx             // 0x00407aeb    3999b0000000
                         {disp8} je         _jmp_addr_0x00407b23                          // 0x00407af1    7430
                         {disp8} mov        dword ptr [ecx + 0x74], ebx                   // 0x00407af3    895974
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x00407af6    a120cdc400
                         {disp8} mov        dword ptr [eax + 0x70], ebx                   // 0x00407afb    895870
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407afe    8b0d20cdc400
                         call               _jmp_addr_0x00408240                          // 0x00407b04    e837070000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x00407b09    a120cdc400
                         {disp8} mov        ecx, dword ptr [eax + 0x70]                   // 0x00407b0e    8b4870
                         push               ebx                                           // 0x00407b11    53
                         push               ebx                                           // 0x00407b12    53
                         push               ecx                                           // 0x00407b13    51
                         push               eax                                           // 0x00407b14    50
                         push               0x7                                           // 0x00407b15    6a07
                         call               dword ptr [eax + 0xb0]                        // 0x00407b17    ff90b0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407b1d    8b0d20cdc400
_jmp_addr_0x00407b23:    cmp.s              ecx, ebx                                      // 0x00407b23    3bcb
                         {disp32} mov       dword ptr [data_bytes + 0x286d24], ecx        // 0x00407b25    890d24cdc400
                         {disp8} je         _jmp_addr_0x00407b7c                          // 0x00407b2b    744f
                         {disp8} lea        eax, dword ptr [ecx + 0x34]                   // 0x00407b2d    8d4134
                         push               0x3e4ccccd                                    // 0x00407b30    68cdcc4c3e
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x00407b35    895804
                         mov                dword ptr [eax], ebx                          // 0x00407b38    8918
                         {disp8} mov        dword ptr [eax + 0x1c], ebx                   // 0x00407b3a    89581c
                         {disp8} mov        dword ptr [eax + 0x18], ebx                   // 0x00407b3d    895818
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x00407b40    895814
                         {disp8} mov        dword ptr [eax + 0x2c], ebx                   // 0x00407b43    89582c
                         {disp8} mov        dword ptr [eax + 0x28], ebx                   // 0x00407b46    895828
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x00407b49    895810
                         {disp8} mov        dword ptr [eax + 0x24], ebx                   // 0x00407b4c    895824
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x00407b4f    89580c
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x00407b52    895820
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x00407b55    895808
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286d24]        // 0x00407b58    8b1524cdc400
                         push               ebx                                           // 0x00407b5e    53
                         push               ebx                                           // 0x00407b5f    53
                         {disp8} lea        ecx, dword ptr [edx + 0x34]                   // 0x00407b60    8d4a34
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00407b63    e8f8010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d24]        // 0x00407b68    a124cdc400
                         push               0x3e4ccccd                                    // 0x00407b6d    68cdcc4c3e
                         push               ebx                                           // 0x00407b72    53
                         push               ebx                                           // 0x00407b73    53
                         {disp8} lea        ecx, dword ptr [eax + 0x04]                   // 0x00407b74    8d4804
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00407b77    e8e4010000
_jmp_addr_0x00407b7c:    xor.s              eax, eax                                      // 0x00407b7c    33c0
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf304]          // 0x00407b7e    a00453e800
                         mov.s              ecx, esi                                      // 0x00407b83    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x286d20], ecx        // 0x00407b85    890d20cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], ebx        // 0x00407b8b    891de455e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e0], ebx        // 0x00407b91    891de055e800
                         {disp32} mov       dword ptr [data_bytes + 0x286d08], ebx        // 0x00407b97    891d08cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d04], ebx        // 0x00407b9d    891d04cdc400
                         and                eax, 0x01                                     // 0x00407ba3    83e001
                         cmp.s              esi, ebx                                      // 0x00407ba6    3bf3
                         {disp32} mov       dword ptr [data_bytes + 0x286d0c], eax        // 0x00407ba8    a30ccdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286ccc], eax        // 0x00407bad    a3ccccc400
                         {disp32} je        _jmp_addr_0x00407d51                          // 0x00407bb2    0f8499010000
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00407bb8    895e08
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x00407bbb    895e04
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00407bbe    895e20
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x00407bc1    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x00407bc4    895e18
                         {disp8} mov        dword ptr [esi + 0x30], ebx                   // 0x00407bc7    895e30
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x00407bca    895e2c
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x00407bcd    895e14
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x00407bd0    895e28
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x00407bd3    895e10
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x00407bd6    895e24
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00407bd9    895e0c
                         {disp8} mov        dword ptr [esi + 0x38], ebx                   // 0x00407bdc    895e38
                         {disp8} mov        dword ptr [esi + 0x34], ebx                   // 0x00407bdf    895e34
                         {disp8} mov        dword ptr [esi + 0x50], ebx                   // 0x00407be2    895e50
                         {disp8} mov        dword ptr [esi + 0x4c], ebx                   // 0x00407be5    895e4c
                         {disp8} mov        dword ptr [esi + 0x48], ebx                   // 0x00407be8    895e48
                         {disp8} mov        dword ptr [esi + 0x60], ebx                   // 0x00407beb    895e60
                         {disp8} mov        dword ptr [esi + 0x5c], ebx                   // 0x00407bee    895e5c
                         {disp8} mov        dword ptr [esi + 0x44], ebx                   // 0x00407bf1    895e44
                         {disp8} mov        dword ptr [esi + 0x58], ebx                   // 0x00407bf4    895e58
                         {disp8} mov        dword ptr [esi + 0x40], ebx                   // 0x00407bf7    895e40
                         {disp8} mov        dword ptr [esi + 0x54], ebx                   // 0x00407bfa    895e54
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                   // 0x00407bfd    895e3c
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00407c00    8b4e04
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x00407c03    8b5610
                         {disp8} mov        dword ptr [esi + 0x20], ecx                   // 0x00407c06    894e20
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x00407c09    895624
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00407c0c    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00407c10    8d4c244c
                         {disp8} mov        dword ptr [esi + 0x08], 0x3f800000            // 0x00407c14    c746080000803f
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00407c1b    895e0c
                         {disp8} mov        dword ptr [esi + 0x1c], 0x3f000000            // 0x00407c1e    c7461c0000003f
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x00407c25    895e18
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3b2aaaab            // 0x00407c28    c744241cabaa2a3b
                         {disp8} mov        dword ptr [esp + 0x20], 0x3caaaaab            // 0x00407c30    c7442420abaaaa3c
                         {disp8} mov        dword ptr [esp + 0x24], 0x3e000000            // 0x00407c38    c74424240000003e
                         {disp8} mov        dword ptr [esp + 0x28], 0x3caaaaab            // 0x00407c40    c7442428abaaaa3c
                         {disp8} mov        dword ptr [esp + 0x2c], 0x3e000000            // 0x00407c48    c744242c0000003e
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f000000            // 0x00407c50    c74424300000003f
                         {disp8} mov        dword ptr [esp + 0x34], 0x3e000000            // 0x00407c58    c74424340000003e
                         {disp8} mov        dword ptr [esp + 0x38], 0x3f000000            // 0x00407c60    c74424380000003f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000            // 0x00407c68    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x00407c70    c744244800000000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000000            // 0x00407c78    c744244400000000
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x00407c80    c744244000000000
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x00407c88    e803363f00
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00407c8d    d94608
                         {disp8} fsub       dword ptr [esi + 0x20]                        // 0x00407c90    d86620
                         {disp8} fld        dword ptr [esi + 0x24]                        // 0x00407c93    d94624
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x00407c96    d84e1c
                         fsubp              st(1), st                                     // 0x00407c99    dee9
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00407c9b    d9460c
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x00407c9e    d86624
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00407ca1    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00407ca5    8b442414
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00407ca9    8944240c
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x00407cad    d9542408
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x00407cb1    d9442458
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00407cb5    d84c2414
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00407cb9    d944244c
                         fmul               st, st(2)                                     // 0x00407cbd    d8ca
                         faddp              st(1), st                                     // 0x00407cbf    dec1
                         {disp8} fadd       dword ptr [esp + 0x70]                        // 0x00407cc1    d8442470
                         fstp               st(1)                                         // 0x00407cc5    ddd9
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x00407cc7    d9442450
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00407ccb    d84c2408
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x00407ccf    d944245c
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00407cd3    d84c2414
                         faddp              st(1), st                                     // 0x00407cd7    dec1
                         {disp8} fadd       dword ptr [esp + 0x74]                        // 0x00407cd9    d8442474
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00407cdd    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00407ce1    8b4c2414
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x00407ce5    d9442460
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x00407ce9    d84c240c
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00407ced    d9442454
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00407cf1    d84c2408
                         faddp              st(1), st                                     // 0x00407cf5    dec1
                         {disp8} fadd       dword ptr [esp + 0x78]                        // 0x00407cf7    d8442478
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00407cfb    d95c2418
                         {disp8} fstp       dword ptr [esi + 0x30]                        // 0x00407cff    d95e30
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00407d02    8b542418
                         {disp8} mov        dword ptr [esi + 0x2c], ecx                   // 0x00407d06    894e2c
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x00407d09    895628
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407d0c    8b0d20cdc400
                         cmp.s              ecx, ebx                                      // 0x00407d12    3bcb
                         {disp8} je         _jmp_addr_0x00407d51                          // 0x00407d14    743b
                         call               _jmp_addr_0x00408240                          // 0x00407d16    e825050000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x00407d1b    a120cdc400
                         {disp8} mov        dword ptr [eax + 0x74], ebx                   // 0x00407d20    895874
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407d23    8b0d20cdc400
                         {disp8} mov        dword ptr [ecx + 0x70], ebx                   // 0x00407d29    895970
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407d2c    8b0d20cdc400
                         cmp.s              ecx, ebx                                      // 0x00407d32    3bcb
                         {disp8} je         _jmp_addr_0x00407d51                          // 0x00407d34    741b
                         {disp32} mov       eax, dword ptr [ecx + 0x000000b0]             // 0x00407d36    8b81b0000000
                         cmp.s              eax, ebx                                      // 0x00407d3c    3bc3
                         {disp8} je         _jmp_addr_0x00407d51                          // 0x00407d3e    7411
                         {disp8} mov        edx, dword ptr [ecx + 0x70]                   // 0x00407d40    8b5170
                         push               ebx                                           // 0x00407d43    53
                         push               ebx                                           // 0x00407d44    53
                         push               edx                                           // 0x00407d45    52
                         push               ecx                                           // 0x00407d46    51
                         push               0x6                                           // 0x00407d47    6a06
                         call               eax                                           // 0x00407d49    ffd0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00407d4b    8b0d20cdc400
_jmp_addr_0x00407d51:    push               ecx                                           // 0x00407d51    51
                         call               _jmp_addr_0x00513680                          // 0x00407d52    e829b91000
                         add                esp, 0x04                                     // 0x00407d57    83c404
                         pop                esi                                           // 0x00407d5a    5e
                         pop                ebx                                           // 0x00407d5b    5b
                         add                esp, 0x74                                     // 0x00407d5c    83c474
                         ret                                                              // 0x00407d5f    c3
@SetDestinationWithSpeedAndTime__6ZoomerFfff@20:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00407d60    d944240c
                         sub                esp, 0x6c                                     // 0x00407d64    83ec6c
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                 // 0x00407d67    d81db0a38a00
                         push               esi                                           // 0x00407d6d    56
                         mov.s              esi, ecx                                      // 0x00407d6e    8bf1
                         fnstsw             ax                                            // 0x00407d70    dfe0
                         test               ah, 0x01                                      // 0x00407d72    f6c401
                         {disp8} je         _jmp_addr_0x00407dab                          // 0x00407d75    7434
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x00407d77    8b442474
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00407d7b    894604
                         mov.s              ecx, eax                                      // 0x00407d7e    8bc8
                         mov.s              edx, eax                                      // 0x00407d80    8bd0
                         xor.s              eax, eax                                      // 0x00407d82    33c0
                         mov                dword ptr [esi], ecx                          // 0x00407d84    890e
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x00407d86    89561c
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00407d89    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00407d8c    894614
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x00407d8f    89462c
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x00407d92    894628
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x00407d95    894610
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00407d98    894624
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x00407d9b    89460c
                         {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x00407d9e    894620
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00407da1    894608
                         pop                esi                                           // 0x00407da4    5e
                         add                esp, 0x6c                                     // 0x00407da5    83c46c
                         ret                0x000c                                        // 0x00407da8    c20c00
_jmp_addr_0x00407dab:    {disp8} fld        dword ptr [esp + 0x7c]                        // 0x00407dab    d944247c
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00407daf    8b4e0c
                         fld                st(0)                                         // 0x00407db2    d9c0
                         fmulp              st(1), st                                     // 0x00407db4    dec9
                         mov                eax, dword ptr [esi]                          // 0x00407db6    8b06
                         {disp8} mov        edx, dword ptr [esp + 0x74]                   // 0x00407db8    8b542474
                         {disp8} mov        dword ptr [esi + 0x20], ecx                   // 0x00407dbc    894e20
                         {disp8} mov        ecx, dword ptr [esp + 0x7c]                   // 0x00407dbf    8b4c247c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00407dc3    d80db4a38a00
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x00407dc9    89461c
                         {disp8} mov        eax, dword ptr [esp + 0x78]                   // 0x00407dcc    8b442478
                         fld                st(0)                                         // 0x00407dd0    d9c0
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x00407dd2    895604
                         {disp8} fmul       dword ptr [esp + 0x7c]                        // 0x00407dd5    d84c247c
                         mov.s              edx, ecx                                      // 0x00407dd9    8bd1
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00407ddb    894608
                         mov.s              eax, ecx                                      // 0x00407dde    8bc1
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x00407de0    d80d6cb28a00
                         fld                st(1)                                         // 0x00407de6    d9c1
                         {disp8} mov        dword ptr [esi + 0x18], ecx                   // 0x00407de8    894e18
                         fmul               st, st(2)                                     // 0x00407deb    d8ca
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00407ded    89542424
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00407df1    8d542410
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x00407df5    8d4c2440
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x00407df9    d80d68b28a00
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000000            // 0x00407dff    c7461400000000
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00407e06    8944242c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00407e0a    d95c2410
                         {disp8} mov        dword ptr [esp + 0x30], 0x3f800000            // 0x00407e0e    c74424300000803f
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x00407e16    d9542414
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x00407e1a    c744243c00000000
                         fld                st(1)                                         // 0x00407e22    d9c1
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x00407e24    c744243800000000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00407e2c    d95c2418
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00407e30    c744243400000000
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00407e38    d95c241c
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x00407e3c    d9542420
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00407e40    d95c2428
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x00407e44    e847343f00
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00407e49    d94604
                         {disp8} fsub       dword ptr [esi + 0x1c]                        // 0x00407e4c    d8661c
                         {disp8} fld        dword ptr [esi + 0x18]                        // 0x00407e4f    d94618
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x00407e52    d84e20
                         fsubp              st(1), st                                     // 0x00407e55    dee9
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00407e57    d94608
                         {disp8} fsub       dword ptr [esi + 0x20]                        // 0x00407e5a    d86620
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00407e5d    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00407e61    8b4c2408
                         {disp8} mov        dword ptr [esp + 0x74], ecx                   // 0x00407e65    894c2474
                         {disp8} fst        dword ptr [esp + 0x7c]                        // 0x00407e69    d954247c
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00407e6d    d944244c
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00407e71    d84c2408
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00407e75    d9442440
                         fmul               st, st(2)                                     // 0x00407e79    d8ca
                         faddp              st(1), st                                     // 0x00407e7b    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x00407e7d    d8442464
                         fstp               st(1)                                         // 0x00407e81    ddd9
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00407e83    d9442444
                         {disp8} fmul       dword ptr [esp + 0x7c]                        // 0x00407e87    d84c247c
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x00407e8b    d9442450
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00407e8f    d84c2408
                         faddp              st(1), st                                     // 0x00407e93    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x00407e95    d8442468
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00407e99    d95c2408
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00407e9d    8b542408
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x00407ea1    d9442454
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x00407ea5    895628
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x00407ea8    d84c2474
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00407eac    d9442448
                         {disp8} fmul       dword ptr [esp + 0x7c]                        // 0x00407eb0    d84c247c
                         faddp              st(1), st                                     // 0x00407eb4    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                        // 0x00407eb6    d844246c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00407eba    d95c240c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00407ebe    8b44240c
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x00407ec2    894624
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x00407ec5    d95e2c
                         pop                esi                                           // 0x00407ec8    5e
                         add                esp, 0x6c                                     // 0x00407ec9    83c46c
                         ret                0x000c                                        // 0x00407ecc    c20c00
                         nop                                                              // 0x00407ecf    90
?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ:
                                      {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x00407ed0    a120cdc400
                         ret                                                              // 0x00407ed5    c3
                         nop                                                              // 0x00407ed6    90
                         nop                                                              // 0x00407ed7    90
                         nop                                                              // 0x00407ed8    90
                         nop                                                              // 0x00407ed9    90
                         nop                                                              // 0x00407eda    90
                         nop                                                              // 0x00407edb    90
                         nop                                                              // 0x00407edc    90
                         nop                                                              // 0x00407edd    90
                         nop                                                              // 0x00407ede    90
                         nop                                                              // 0x00407edf    90
_jmp_addr_0x00407ee0:    {disp32} mov       eax, dword ptr [data_bytes + 0x286d24]        // 0x00407ee0    a124cdc400
                         ret                                                              // 0x00407ee5    c3
                         nop                                                              // 0x00407ee6    90
                         nop                                                              // 0x00407ee7    90
                         nop                                                              // 0x00407ee8    90
                         nop                                                              // 0x00407ee9    90
                         nop                                                              // 0x00407eea    90
                         nop                                                              // 0x00407eeb    90
                         nop                                                              // 0x00407eec    90
                         nop                                                              // 0x00407eed    90
                         nop                                                              // 0x00407eee    90
                         nop                                                              // 0x00407eef    90
_jmp_addr_0x00407ef0:    push               ecx                                           // 0x00407ef0    51
                         {disp32} mov       byte ptr [data_bytes + 0x286ced], 0x00        // 0x00407ef1    c605edccc40000
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00407ef8    e8d3ffffff
                         test               eax, eax                                      // 0x00407efd    85c0
                         {disp8} je         _jmp_addr_0x00407f5d                          // 0x00407eff    745c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30029c]        // 0x00407f01    a19c62cc00
                         test               eax, eax                                      // 0x00407f06    85c0
                         push               ebx                                           // 0x00407f08    53
                         mov                bl, 0x01                                      // 0x00407f09    b301
                         {disp8} mov        byte ptr [esp + 0x07], bl                     // 0x00407f0b    885c2407
                         {disp8} je         _jmp_addr_0x00407f3f                          // 0x00407f0f    742e
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00407f11    e8baffffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30029c]        // 0x00407f16    8b0d9c62cc00
                         cmp                dword ptr [ecx + 0x04], eax                   // 0x00407f1c    394104
                         {disp8} jne        _jmp_addr_0x00407f3f                          // 0x00407f1f    751e
                         mov                eax, dword ptr [ecx]                          // 0x00407f21    8b01
                         call               dword ptr [eax + 0x14]                        // 0x00407f23    ff5014
                         test               al, al                                        // 0x00407f26    84c0
                         {disp8} mov        byte ptr [esp + 0x07], al                     // 0x00407f28    88442407
                         {disp8} je         _jmp_addr_0x00407f3d                          // 0x00407f2c    740f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30029c]        // 0x00407f2e    8b0d9c62cc00
                         mov                edx, dword ptr [ecx]                          // 0x00407f34    8b11
                         call               dword ptr [edx + 0x1c]                        // 0x00407f36    ff521c
                         test               al, al                                        // 0x00407f39    84c0
                         {disp8} jne        _jmp_addr_0x00407f3f                          // 0x00407f3b    7502
_jmp_addr_0x00407f3d:    xor.s              bl, bl                                        // 0x00407f3d    32db
_jmp_addr_0x00407f3f:    call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00407f3f    e88cffffff
                         {disp8} mov        cl, byte ptr [eax + 0x64]                     // 0x00407f44    8a4864
                         test               cl, cl                                        // 0x00407f47    84c9
                         {disp8} je         _jmp_addr_0x00407f4d                          // 0x00407f49    7402
                         xor.s              bl, bl                                        // 0x00407f4b    32db
_jmp_addr_0x00407f4d:    {disp8} mov        al, byte ptr [esp + 0x07]                     // 0x00407f4d    8a442407
                         {disp32} mov       byte ptr [data_bytes + 0x286cec], bl          // 0x00407f51    881decccc400
                         {disp32} mov       byte ptr [data_bytes + 0x286ced], al          // 0x00407f57    a2edccc400
                         pop                ebx                                           // 0x00407f5c    5b
_jmp_addr_0x00407f5d:    pop                ecx                                           // 0x00407f5d    59
                         ret                                                              // 0x00407f5e    c3
                         nop                                                              // 0x00407f5f    90
_jmp_addr_0x00407f60:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00407f60    8b44240c
                         sub                esp, 0x08                                     // 0x00407f64    83ec08
                         test               eax, eax                                      // 0x00407f67    85c0
                         {disp8} je         _jmp_addr_0x00407f74                          // 0x00407f69    7409
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x00407f6b    8b4018
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00407f6e    89442400
                         {disp8} jmp        _jmp_addr_0x00407f7c                          // 0x00407f72    eb08
_jmp_addr_0x00407f74:    {disp8} mov        dword ptr [esp + 0x00], 0x00000000            // 0x00407f74    c744240000000000
_jmp_addr_0x00407f7c:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00407f7c    8b44240c
                         push               ebx                                           // 0x00407f80    53
                         push               ebp                                           // 0x00407f81    55
                         push               esi                                           // 0x00407f82    56
                         or                 ebp, 0xffffffff                               // 0x00407f83    83cdff
                         cmp                eax, 0x08                                     // 0x00407f86    83f808
                         push               edi                                           // 0x00407f89    57
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00407f8a    8b7c2420
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00407f8e    896c2414
                         {disp32} jne       _jmp_addr_0x00408061                          // 0x00407f92    0f85c9000000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00407f98    8b44242c
                         test               eax, eax                                      // 0x00407f9c    85c0
                         {disp32} jne       _jmp_addr_0x004080ae                          // 0x00407f9e    0f850a010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x00407fa4    8b15ac7cd100
                         cmp                edx, 0x000019f2                               // 0x00407faa    81faf2190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00407fb0    8b0da87cd100
                         mov.s              eax, ecx                                      // 0x00407fb6    8bc1
                         {disp8} jbe        _jmp_addr_0x00407fc0                          // 0x00407fb8    7606
                         {disp32} lea       eax, dword ptr [ecx + 0x00013758]             // 0x00407fba    8d8158370100
_jmp_addr_0x00407fc0:    cmp                edx, 0x000019f1                               // 0x00407fc0    81faf1190000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00407fc6    8b4008
                         mov                ax, word ptr [eax]                            // 0x00407fc9    668b00
                         {disp8} jbe        _jmp_addr_0x00407fd4                          // 0x00407fcc    7606
                         add                ecx, 0x0001374c                               // 0x00407fce    81c14c370100
_jmp_addr_0x00407fd4:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00407fd4    8b4908
                         mov                si, word ptr [ecx]                            // 0x00407fd7    668b31
                         cmp.s              ax, si                                        // 0x00407fda    663bc6
                         {disp32} je        _jmp_addr_0x004080ae                          // 0x00407fdd    0f84cb000000
                         and                eax, 0x0000ffff                               // 0x00407fe3    25ffff0000
                         push               eax                                           // 0x00407fe8    50
                         call               _toupper                                      // 0x00407fe9    e863de3b00
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x00407fee    8b5c242c
                         push               ebx                                           // 0x00407ff2    53
                         mov.s              ebp, eax                                      // 0x00407ff3    8be8
                         call               _toupper                                      // 0x00407ff5    e857de3b00
                         add                esp, 0x08                                     // 0x00407ffa    83c408
                         cmp.s              eax, ebp                                      // 0x00407ffd    3bc5
                         {disp8} jne        _jmp_addr_0x00408023                          // 0x00407fff    7522
                         push               ebx                                           // 0x00408001    53
                         call               _toupper                                      // 0x00408002    e84ade3b00
                         add                esp, 0x04                                     // 0x00408007    83c404
                         test               eax, eax                                      // 0x0040800a    85c0
                         {disp8} je         _jmp_addr_0x00408023                          // 0x0040800c    7415
                         push               0x00002712                                    // 0x0040800e    6812270000
                         mov.s              ecx, edi                                      // 0x00408013    8bcf
                         call               @FindControl__8SetupBoxFi@12                  // 0x00408015    e846010000
                         test               eax, eax                                      // 0x0040801a    85c0
                         {disp8} je         _jmp_addr_0x00408023                          // 0x0040801c    7405
                         {disp8} mov        ebp, dword ptr [eax + 0x18]                   // 0x0040801e    8b6818
                         {disp8} jmp        _jmp_addr_0x00408027                          // 0x00408021    eb04
_jmp_addr_0x00408023:    {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00408023    8b6c2414
_jmp_addr_0x00408027:    and                esi, 0x0000ffff                               // 0x00408027    81e6ffff0000
                         push               esi                                           // 0x0040802d    56
                         call               _toupper                                      // 0x0040802e    e81ede3b00
                         push               ebx                                           // 0x00408033    53
                         mov.s              esi, eax                                      // 0x00408034    8bf0
                         call               _toupper                                      // 0x00408036    e816de3b00
                         add                esp, 0x08                                     // 0x0040803b    83c408
                         cmp.s              eax, esi                                      // 0x0040803e    3bc6
                         {disp8} jne        _jmp_addr_0x004080ae                          // 0x00408040    756c
                         push               ebx                                           // 0x00408042    53
                         call               _toupper                                      // 0x00408043    e809de3b00
                         add                esp, 0x04                                     // 0x00408048    83c404
                         test               eax, eax                                      // 0x0040804b    85c0
                         {disp8} je         _jmp_addr_0x004080ae                          // 0x0040804d    745f
                         push               0x00002713                                    // 0x0040804f    6813270000
                         mov.s              ecx, edi                                      // 0x00408054    8bcf
                         call               @FindControl__8SetupBoxFi@12                  // 0x00408056    e805010000
                         test               eax, eax                                      // 0x0040805b    85c0
                         {disp8} je         _jmp_addr_0x004080ae                          // 0x0040805d    744f
                         {disp8} jmp        _jmp_addr_0x004080ab                          // 0x0040805f    eb4a
_jmp_addr_0x00408061:    cmp                eax, 0x02                                     // 0x00408061    83f802
                         {disp8} jne        _jmp_addr_0x004080ae                          // 0x00408064    7548
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00408066    8b442428
                         dec                eax                                           // 0x0040806a    48
                         {disp8} je         _jmp_addr_0x0040808b                          // 0x0040806b    741e
                         sub                eax, 0x1b                                     // 0x0040806d    83e81b
                         {disp8} je         _jmp_addr_0x00408079                          // 0x00408070    7407
                         sub                eax, 0x00000080                               // 0x00408072    2d80000000
                         {disp8} jne        _jmp_addr_0x004080ae                          // 0x00408077    7535
_jmp_addr_0x00408079:    push               0x00002710                                    // 0x00408079    6810270000
                         mov.s              ecx, edi                                      // 0x0040807e    8bcf
                         call               @FindControl__8SetupBoxFi@12                  // 0x00408080    e8db000000
                         test               eax, eax                                      // 0x00408085    85c0
                         {disp8} je         _jmp_addr_0x004080ae                          // 0x00408087    7425
                         {disp8} jmp        _jmp_addr_0x004080ab                          // 0x00408089    eb20
_jmp_addr_0x0040808b:    push               0x00002711                                    // 0x0040808b    6811270000
                         mov.s              ecx, edi                                      // 0x00408090    8bcf
                         call               @FindControl__8SetupBoxFi@12                  // 0x00408092    e8c9000000
                         test               eax, eax                                      // 0x00408097    85c0
                         {disp8} jne        _jmp_addr_0x004080ab                          // 0x00408099    7510
                         push               0x00002710                                    // 0x0040809b    6810270000
                         mov.s              ecx, edi                                      // 0x004080a0    8bcf
                         call               @FindControl__8SetupBoxFi@12                  // 0x004080a2    e8b9000000
                         test               eax, eax                                      // 0x004080a7    85c0
                         {disp8} je         _jmp_addr_0x004080ae                          // 0x004080a9    7403
_jmp_addr_0x004080ab:    {disp8} mov        ebp, dword ptr [eax + 0x18]                   // 0x004080ab    8b6818
_jmp_addr_0x004080ae:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004080ae    8b442410
                         cmp                eax, 0x00002710                               // 0x004080b2    3d10270000
                         {disp8} jl         _jmp_addr_0x004080c2                          // 0x004080b7    7c09
                         cmp                dword ptr [esp + 0x1c], 0x01                  // 0x004080b9    837c241c01
                         {disp8} jne        _jmp_addr_0x004080c2                          // 0x004080be    7502
                         mov.s              ebp, eax                                      // 0x004080c0    8be8
_jmp_addr_0x004080c2:    test               ebp, ebp                                      // 0x004080c2    85ed
                         {disp8} jl         _jmp_addr_0x004080f0                          // 0x004080c4    7c2a
                         {disp8} mov        al, byte ptr [edi + 0x64]                     // 0x004080c6    8a4764
                         test               al, al                                        // 0x004080c9    84c0
                         {disp8} je         _jmp_addr_0x004080f0                          // 0x004080cb    7423
                         mov.s              ecx, edi                                      // 0x004080cd    8bcf
                         call               _jmp_addr_0x00408240                          // 0x004080cf    e86c010000
                         {disp32} mov       eax, dword ptr [edi + 0x000000b0]             // 0x004080d4    8b87b0000000
                         test               eax, eax                                      // 0x004080da    85c0
                         {disp8} je         _jmp_addr_0x004080f0                          // 0x004080dc    7412
                         {disp32} mov       edx, dword ptr [edi + 0x000000b8]             // 0x004080de    8b97b8000000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x004080e4    8b4c2424
                         push               edx                                           // 0x004080e8    52
                         push               ebp                                           // 0x004080e9    55
                         push               ecx                                           // 0x004080ea    51
                         push               edi                                           // 0x004080eb    57
                         push               0x3                                           // 0x004080ec    6a03
                         call               eax                                           // 0x004080ee    ffd0
_jmp_addr_0x004080f0:    pop                edi                                           // 0x004080f0    5f
                         pop                esi                                           // 0x004080f1    5e
                         pop                ebp                                           // 0x004080f2    5d
                         pop                ebx                                           // 0x004080f3    5b
                         add                esp, 0x08                                     // 0x004080f4    83c408
                         ret                0x0014                                        // 0x004080f7    c21400
                         call               dword ptr [__imp__DirectDrawCreate@4]         // 0x004080fa    ff152c908a00
_jmp_addr_0x00408100:    push               esi                                           // 0x00408100    56
                         {disp8} mov        esi, dword ptr [ecx + 0x6c]                   // 0x00408101    8b716c
                         push               edi                                           // 0x00408104    57
                         xor.s              edi, edi                                      // 0x00408105    33ff
                         test               esi, esi                                      // 0x00408107    85f6
                         {disp8} je         _jmp_addr_0x00408158                          // 0x00408109    744d
                         push               ebx                                           // 0x0040810b    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0040810c    8b5c2414
                         push               ebp                                           // 0x00408110    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00408111    8b6c2414
_jmp_addr_0x00408115:    mov                eax, dword ptr [esi]                          // 0x00408115    8b06
                         push               ebx                                           // 0x00408117    53
                         push               ebp                                           // 0x00408118    55
                         mov.s              ecx, esi                                      // 0x00408119    8bce
                         call               dword ptr [eax + 0x10]                        // 0x0040811b    ff5010
                         test               al, al                                        // 0x0040811e    84c0
                         {disp8} je         _jmp_addr_0x00408145                          // 0x00408120    7423
                         {disp32} mov       al, byte ptr [esi + 0x00000229]               // 0x00408122    8a8629020000
                         test               al, al                                        // 0x00408128    84c0
                         {disp8} jne        _jmp_addr_0x00408145                          // 0x0040812a    7519
                         test               edi, edi                                      // 0x0040812c    85ff
                         {disp8} je         _jmp_addr_0x00408143                          // 0x0040812e    7413
                         cmp                dword ptr [esi + 0x18], 0x0085b680            // 0x00408130    817e1880b68500
                         {disp8} je         _jmp_addr_0x00408143                          // 0x00408137    740a
                         {disp32} mov       al, byte ptr [esi + 0x0000022b]               // 0x00408139    8a862b020000
                         test               al, al                                        // 0x0040813f    84c0
                         {disp8} je         _jmp_addr_0x00408145                          // 0x00408141    7402
_jmp_addr_0x00408143:    mov.s              edi, esi                                      // 0x00408143    8bfe
_jmp_addr_0x00408145:    {disp32} mov       esi, dword ptr [esi + 0x00000230]             // 0x00408145    8bb630020000
                         test               esi, esi                                      // 0x0040814b    85f6
                         {disp8} jne        _jmp_addr_0x00408115                          // 0x0040814d    75c6
                         pop                ebp                                           // 0x0040814f    5d
                         pop                ebx                                           // 0x00408150    5b
                         mov.s              eax, edi                                      // 0x00408151    8bc7
                         pop                edi                                           // 0x00408153    5f
                         pop                esi                                           // 0x00408154    5e
                         ret                0x0008                                        // 0x00408155    c20800
_jmp_addr_0x00408158:    mov.s              eax, edi                                      // 0x00408158    8bc7
                         pop                edi                                           // 0x0040815a    5f
                         pop                esi                                           // 0x0040815b    5e
                         ret                0x0008                                        // 0x0040815c    c20800
                         nop                                                              // 0x0040815f    90
@FindControl__8SetupBoxFi@12:    {disp8} mov        eax, dword ptr [ecx + 0x6c]                   // 0x00408160    8b416c
                         test               eax, eax                                      // 0x00408163    85c0
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00408165    8b542404
                         {disp8} je         _jmp_addr_0x0040817a                          // 0x00408169    740f
_jmp_addr_0x0040816b:    cmp                dword ptr [eax + 0x18], edx                   // 0x0040816b    395018
                         {disp8} je         _jmp_addr_0x00408192                          // 0x0040816e    7422
                         {disp32} mov       eax, dword ptr [eax + 0x00000230]             // 0x00408170    8b8030020000
                         test               eax, eax                                      // 0x00408176    85c0
                         {disp8} jne        _jmp_addr_0x0040816b                          // 0x00408178    75f1
_jmp_addr_0x0040817a:    {disp8} mov        eax, dword ptr [ecx + 0x68]                   // 0x0040817a    8b4168
                         test               eax, eax                                      // 0x0040817d    85c0
                         {disp8} je         _jmp_addr_0x00408190                          // 0x0040817f    740f
_jmp_addr_0x00408181:    cmp                dword ptr [eax + 0x18], edx                   // 0x00408181    395018
                         {disp8} je         _jmp_addr_0x00408192                          // 0x00408184    740c
                         {disp32} mov       eax, dword ptr [eax + 0x00000230]             // 0x00408186    8b8030020000
                         test               eax, eax                                      // 0x0040818c    85c0
                         {disp8} jne        _jmp_addr_0x00408181                          // 0x0040818e    75f1
_jmp_addr_0x00408190:    xor.s              eax, eax                                      // 0x00408190    33c0
_jmp_addr_0x00408192:    ret                0x0004                                        // 0x00408192    c20400
                         nop                                                              // 0x00408195    90
                         nop                                                              // 0x00408196    90
                         nop                                                              // 0x00408197    90
                         nop                                                              // 0x00408198    90
                         nop                                                              // 0x00408199    90
                         nop                                                              // 0x0040819a    90
                         nop                                                              // 0x0040819b    90
                         nop                                                              // 0x0040819c    90
                         nop                                                              // 0x0040819d    90
                         nop                                                              // 0x0040819e    90
                         nop                                                              // 0x0040819f    90
_jmp_addr_0x004081a0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004081a0    8b442404
                         push               ebx                                           // 0x004081a4    53
                         push               esi                                           // 0x004081a5    56
                         mov.s              esi, ecx                                      // 0x004081a6    8bf1
                         {disp32} mov       dword ptr [esi + 0x000000b8], eax             // 0x004081a8    8986b8000000
                         {disp8} mov        al, byte ptr [esi + 0x64]                     // 0x004081ae    8a4664
                         xor.s              ebx, ebx                                      // 0x004081b1    33db
                         cmp.s              al, bl                                        // 0x004081b3    3ac3
                         {disp8} jne        _jmp_addr_0x00408233                          // 0x004081b5    757c
                         push               ebx                                           // 0x004081b7    53
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x004081b8    e8830f0000
                         {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x004081bd    8b86b0000000
                         cmp.s              eax, ebx                                      // 0x004081c3    3bc3
                         {disp32} mov       dword ptr [esi + 0x000000bc], ebx             // 0x004081c5    899ebc000000
                         {disp8} mov        dword ptr [esi + 0x74], ebx                   // 0x004081cb    895e74
                         {disp8} je         _jmp_addr_0x004081db                          // 0x004081ce    740b
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x004081d0    8b4e70
                         push               ebx                                           // 0x004081d3    53
                         push               ebx                                           // 0x004081d4    53
                         push               ecx                                           // 0x004081d5    51
                         push               esi                                           // 0x004081d6    56
                         push               0x5                                           // 0x004081d7    6a05
                         call               eax                                           // 0x004081d9    ffd0
_jmp_addr_0x004081db:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x004081db    8b466c
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x004081de    8b5668
                         {disp8} lea        ecx, dword ptr [esi + 0x34]                   // 0x004081e1    8d4e34
                         {disp8} mov        byte ptr [esi + 0x64], 0x01                   // 0x004081e4    c6466401
                         {disp8} mov        dword ptr [esi + 0x6c], edx                   // 0x004081e8    89566c
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x004081eb    894668
                         push               0x3f000000                                    // 0x004081ee    680000003f
                         push               ebx                                           // 0x004081f3    53
                         push               0x3f800000                                    // 0x004081f4    680000803f
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                   // 0x004081f9    895904
                         mov                dword ptr [ecx], ebx                          // 0x004081fc    8919
                         {disp8} mov        dword ptr [ecx + 0x1c], ebx                   // 0x004081fe    89591c
                         {disp8} mov        dword ptr [ecx + 0x18], ebx                   // 0x00408201    895918
                         {disp8} mov        dword ptr [ecx + 0x14], ebx                   // 0x00408204    895914
                         {disp8} mov        dword ptr [ecx + 0x2c], ebx                   // 0x00408207    89592c
                         {disp8} mov        dword ptr [ecx + 0x28], ebx                   // 0x0040820a    895928
                         {disp8} mov        dword ptr [ecx + 0x10], ebx                   // 0x0040820d    895910
                         {disp8} mov        dword ptr [ecx + 0x24], ebx                   // 0x00408210    895924
                         {disp8} mov        dword ptr [ecx + 0x0c], ebx                   // 0x00408213    89590c
                         {disp8} mov        dword ptr [ecx + 0x20], ebx                   // 0x00408216    895920
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x00408219    895908
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x0040821c    e83ffbffff
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], ebx        // 0x00408221    891d7454e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], ebx        // 0x00408227    891de455e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e0], ebx        // 0x0040822d    891de055e800
_jmp_addr_0x00408233:    pop                esi                                           // 0x00408233    5e
                         pop                ebx                                           // 0x00408234    5b
                         ret                0x0004                                        // 0x00408235    c20400
                         nop                                                              // 0x00408238    90
                         nop                                                              // 0x00408239    90
                         nop                                                              // 0x0040823a    90
                         nop                                                              // 0x0040823b    90
                         nop                                                              // 0x0040823c    90
                         nop                                                              // 0x0040823d    90
                         nop                                                              // 0x0040823e    90
                         nop                                                              // 0x0040823f    90
_jmp_addr_0x00408240:    push               ebx                                           // 0x00408240    53
                         push               esi                                           // 0x00408241    56
                         mov.s              esi, ecx                                      // 0x00408242    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x64]                     // 0x00408244    8a4664
                         xor.s              ebx, ebx                                      // 0x00408247    33db
                         cmp.s              al, bl                                        // 0x00408249    3ac3
                         {disp32} je        _jmp_addr_0x004082ec                          // 0x0040824b    0f849b000000
                         push               ebx                                           // 0x00408251    53
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00408252    e8e90e0000
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x00408257    8b466c
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0040825a    8b4e68
                         {disp8} mov        dword ptr [esi + 0x6c], ecx                   // 0x0040825d    894e6c
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x00408260    894668
                         {disp8} mov        byte ptr [esi + 0x64], bl                     // 0x00408263    885e64
                         {disp32} mov       dword ptr [esi + 0x000000bc], ebx             // 0x00408266    899ebc000000
                         {disp8} mov        dword ptr [esi + 0x74], ebx                   // 0x0040826c    895e74
                         {disp8} lea        ecx, dword ptr [esi + 0x04]                   // 0x0040826f    8d4e04
                         {disp8} mov        dword ptr [ecx + 0x18], ebx                   // 0x00408272    895918
                         {disp8} mov        dword ptr [ecx + 0x14], ebx                   // 0x00408275    895914
                         {disp8} mov        dword ptr [ecx + 0x2c], ebx                   // 0x00408278    89592c
                         {disp8} mov        dword ptr [ecx + 0x28], ebx                   // 0x0040827b    895928
                         {disp8} mov        dword ptr [ecx + 0x10], ebx                   // 0x0040827e    895910
                         {disp8} mov        dword ptr [ecx + 0x24], ebx                   // 0x00408281    895924
                         {disp8} mov        dword ptr [ecx + 0x0c], ebx                   // 0x00408284    89590c
                         {disp8} mov        dword ptr [ecx + 0x20], ebx                   // 0x00408287    895920
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x0040828a    895908
                         add                esi, 0x34                                     // 0x0040828d    83c634
                         mov                eax, 0x3f800000                               // 0x00408290    b80000803f
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00408295    894104
                         mov                dword ptr [ecx], eax                          // 0x00408298    8901
                         {disp8} mov        dword ptr [ecx + 0x1c], eax                   // 0x0040829a    89411c
                         push               0x3f000000                                    // 0x0040829d    680000003f
                         push               ebx                                           // 0x004082a2    53
                         push               eax                                           // 0x004082a3    50
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x004082a4    895e04
                         mov                dword ptr [esi], ebx                          // 0x004082a7    891e
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x004082a9    895e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x004082ac    895e18
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x004082af    895e14
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x004082b2    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x004082b5    895e28
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x004082b8    895e10
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x004082bb    895e24
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x004082be    895e0c
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x004082c1    895e20
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x004082c4    895e08
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x004082c7    e894faffff
                         push               0x3e4ccccd                                    // 0x004082cc    68cdcc4c3e
                         push               ebx                                           // 0x004082d1    53
                         push               ebx                                           // 0x004082d2    53
                         mov.s              ecx, esi                                      // 0x004082d3    8bce
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x004082d5    e886faffff
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], ebx        // 0x004082da    891d7454e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], ebx        // 0x004082e0    891de455e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e0], ebx        // 0x004082e6    891de055e800
_jmp_addr_0x004082ec:    pop                esi                                           // 0x004082ec    5e
                         pop                ebx                                           // 0x004082ed    5b
                         ret                                                              // 0x004082ee    c3
                         nop                                                              // 0x004082ef    90
_jmp_addr_0x004082f0:    {disp32} mov       ecx, dword ptr [_global]                      // 0x004082f0    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x004082f6    8b81ac030000
                         push               eax                                           // 0x004082fc    50
                         push               0x0                                           // 0x004082fd    6a00
                         push               0x0                                           // 0x004082ff    6a00
                         push               0x0                                           // 0x00408301    6a00
                         push               0x3                                           // 0x00408303    6a03
                         push               0x0000009f                                    // 0x00408305    689f000000
                         push               0x0                                           // 0x0040830a    6a00
                         call               _jmp_addr_0x00429da0                          // 0x0040830c    e88f1a0200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00408311    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00408317    e834d51400
                         test               eax, eax                                      // 0x0040831c    85c0
                         {disp8} je         _jmp_addr_0x00408339                          // 0x0040831e    7419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00408320    8b0d5c19d000
                         push               0x80000000                                    // 0x00408326    6800000080
                         push               0x2c                                          // 0x0040832b    6a2c
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0040832d    e81ed51400
                         mov.s              ecx, eax                                      // 0x00408332    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x00408334    e8d7061d00
_jmp_addr_0x00408339:    ret                                                              // 0x00408339    c3
                         call               dword ptr [__imp__DirectInputCreateA@4]       // 0x0040833a    ff1534908a00
_jmp_addr_0x00408340:    {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]             // 0x00408340    db053481c300
                         {disp8} mov        al, byte ptr [esp + 0x14]                     // 0x00408346    8a442414
                         sub                esp, 0x00000208                               // 0x0040834a    81ec08020000
                         push               ebx                                           // 0x00408350    53
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00408351    d80db0a38a00
                         push               ebp                                           // 0x00408357    55
                         push               esi                                           // 0x00408358    56
                         xor.s              ebp, ebp                                      // 0x00408359    33ed
                         test               al, al                                        // 0x0040835b    84c0
                         push               edi                                           // 0x0040835d    57
                         mov.s              esi, ecx                                      // 0x0040835e    8bf1
                         {disp32} jne       _jmp_addr_0x0040843a                          // 0x00408360    0f85d4000000
                         {disp32} fld       dword ptr [data_bytes + 0x286c9c]             // 0x00408366    d9059cccc400
                         fadd               st, st(1)                                     // 0x0040836c    d8c1
                         {disp32} fst       dword ptr [data_bytes + 0x286c9c]             // 0x0040836e    d9159cccc400
                         {disp32} fcomp     dword ptr [data_bytes + 0x286ca0]             // 0x00408374    d81da0ccc400
                         fnstsw             ax                                            // 0x0040837a    dfe0
                         test               ah, 0x01                                      // 0x0040837c    f6c401
                         {disp8} jne        _jmp_addr_0x004083ae                          // 0x0040837f    752d
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286c8c]        // 0x00408381    a18cccc400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286c90]        // 0x00408386    8b0d90ccc400
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286ca0]        // 0x0040838c    8b15a0ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c88], eax        // 0x00408392    a388ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c94], ecx        // 0x00408397    890d94ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c98], ebp        // 0x0040839d    892d98ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286c9c], edx        // 0x004083a3    89159cccc400
                         {disp32} jmp       _jmp_addr_0x0040843a                          // 0x004083a9    e98c000000
_jmp_addr_0x004083ae:    {disp32} fld       dword ptr [data_bytes + 0x286c9c]             // 0x004083ae    d9059cccc400
                         fld                st(0)                                         // 0x004083b4    d9c0
                         fmulp              st(1), st                                     // 0x004083b6    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004083b8    d80db4a38a00
                         {disp32} fld       dword ptr [data_bytes + 0x286c9c]             // 0x004083be    d9059cccc400
                         fmul               st, st(1)                                     // 0x004083c4    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x004083c6    d80d6cb28a00
                         {disp32} fld       dword ptr [data_bytes + 0x286cac]             // 0x004083cc    d905acccc400
                         {disp32} fmul      dword ptr [data_bytes + 0x286c9c]             // 0x004083d2    d80d9cccc400
                         {disp32} fld       dword ptr [data_bytes + 0x286cb4]             // 0x004083d8    d905b4ccc400
                         fmul               st, st(2)                                     // 0x004083de    d8ca
                         faddp              st(1), st                                     // 0x004083e0    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x286cb0]             // 0x004083e2    d905b0ccc400
                         fmul               st, st(3)                                     // 0x004083e8    d8cb
                         faddp              st(1), st                                     // 0x004083ea    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x286ca8]             // 0x004083ec    d805a8ccc400
                         {disp32} fstp      dword ptr [data_bytes + 0x286c94]             // 0x004083f2    d91d94ccc400
                         fld                st(1)                                         // 0x004083f8    d9c1
                         fmul               st, st(2)                                     // 0x004083fa    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x004083fc    d80d68b28a00
                         {disp32} fmul      dword ptr [data_bytes + 0x286cb4]             // 0x00408402    d80db4ccc400
                         {disp32} fld       dword ptr [data_bytes + 0x286c9c]             // 0x00408408    d9059cccc400
                         {disp32} fmul      dword ptr [data_bytes + 0x286ca8]             // 0x0040840e    d80da8ccc400
                         faddp              st(1), st                                     // 0x00408414    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x286cb0]             // 0x00408416    d905b0ccc400
                         fmul               st, st(2)                                     // 0x0040841c    d8ca
                         faddp              st(1), st                                     // 0x0040841e    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x286cac]             // 0x00408420    d905acccc400
                         fmul               st, st(3)                                     // 0x00408426    d8cb
                         faddp              st(1), st                                     // 0x00408428    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x286ca4]             // 0x0040842a    d805a4ccc400
                         {disp32} fstp      dword ptr [data_bytes + 0x286c88]             // 0x00408430    d91d88ccc400
                         fstp               st(0)                                         // 0x00408436    ddd8
                         fstp               st(0)                                         // 0x00408438    ddd8
_jmp_addr_0x0040843a:    fld                st(0)                                         // 0x0040843a    d9c0
                         {disp8} fadd       dword ptr [esi + 0x18]                        // 0x0040843c    d84618
                         {disp8} fcom       dword ptr [esi + 0x1c]                        // 0x0040843f    d8561c
                         {disp8} fst        dword ptr [esi + 0x18]                        // 0x00408442    d95618
                         fnstsw             ax                                            // 0x00408445    dfe0
                         test               ah, 0x01                                      // 0x00408447    f6c401
                         {disp8} jne        _jmp_addr_0x00408465                          // 0x0040844a    7519
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0040844c    8b4608
                         fstp               st(0)                                         // 0x0040844f    ddd8
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00408451    8b4e0c
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x00408454    8b561c
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00408457    894604
                         {disp8} mov        dword ptr [esi + 0x10], ecx                   // 0x0040845a    894e10
                         {disp8} mov        dword ptr [esi + 0x14], ebp                   // 0x0040845d    896e14
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x00408460    895618
                         {disp8} jmp        _jmp_addr_0x004084ba                          // 0x00408463    eb55
_jmp_addr_0x00408465:    fld                st(0)                                         // 0x00408465    d9c0
                         fld                st(0)                                         // 0x00408467    d9c0
                         fmulp              st(1), st                                     // 0x00408469    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0040846b    d80db4a38a00
                         fld                st(1)                                         // 0x00408471    d9c1
                         fmul               st, st(1)                                     // 0x00408473    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x00408475    d80d6cb28a00
                         fld                st(0)                                         // 0x0040847b    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0040847d    d84e30
                         fld                st(3)                                         // 0x00408480    d9c3
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x00408482    d84e28
                         faddp              st(1), st                                     // 0x00408485    dec1
                         fld                st(2)                                         // 0x00408487    d9c2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x00408489    d84e2c
                         faddp              st(1), st                                     // 0x0040848c    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x0040848e    d84624
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x00408491    d95e10
                         fld                st(1)                                         // 0x00408494    d9c1
                         fmul               st, st(2)                                     // 0x00408496    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x00408498    d80d68b28a00
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0040849e    d84e30
                         fxch               st(3)                                         // 0x004084a1    d9cb
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x004084a3    d84e24
                         faddp              st(3), st                                     // 0x004084a6    dec3
                         fxch               st(1)                                         // 0x004084a8    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x004084aa    d84e28
                         faddp              st(2), st                                     // 0x004084ad    dec2
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x004084af    d84e2c
                         faddp              st(1), st                                     // 0x004084b2    dec1
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x004084b4    d84620
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x004084b7    d95e04
_jmp_addr_0x004084ba:    {disp8} fadd       dword ptr [esi + 0x48]                        // 0x004084ba    d84648
                         {disp8} fcom       dword ptr [esi + 0x4c]                        // 0x004084bd    d8564c
                         {disp8} fst        dword ptr [esi + 0x48]                        // 0x004084c0    d95648
                         fnstsw             ax                                            // 0x004084c3    dfe0
                         test               ah, 0x01                                      // 0x004084c5    f6c401
                         {disp8} jne        _jmp_addr_0x004084e3                          // 0x004084c8    7519
                         {disp8} mov        eax, dword ptr [esi + 0x38]                   // 0x004084ca    8b4638
                         fstp               st(0)                                         // 0x004084cd    ddd8
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                   // 0x004084cf    8b4e3c
                         {disp8} mov        edx, dword ptr [esi + 0x4c]                   // 0x004084d2    8b564c
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x004084d5    894634
                         {disp8} mov        dword ptr [esi + 0x40], ecx                   // 0x004084d8    894e40
                         {disp8} mov        dword ptr [esi + 0x44], ebp                   // 0x004084db    896e44
                         {disp8} mov        dword ptr [esi + 0x48], edx                   // 0x004084de    895648
                         {disp8} jmp        _jmp_addr_0x00408538                          // 0x004084e1    eb55
_jmp_addr_0x004084e3:    fld                st(0)                                         // 0x004084e3    d9c0
                         fld                st(0)                                         // 0x004084e5    d9c0
                         fmulp              st(1), st                                     // 0x004084e7    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004084e9    d80db4a38a00
                         fld                st(1)                                         // 0x004084ef    d9c1
                         fmul               st, st(1)                                     // 0x004084f1    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x004084f3    d80d6cb28a00
                         fld                st(0)                                         // 0x004084f9    d9c0
                         {disp8} fmul       dword ptr [esi + 0x60]                        // 0x004084fb    d84e60
                         fld                st(3)                                         // 0x004084fe    d9c3
                         {disp8} fmul       dword ptr [esi + 0x58]                        // 0x00408500    d84e58
                         faddp              st(1), st                                     // 0x00408503    dec1
                         fld                st(2)                                         // 0x00408505    d9c2
                         {disp8} fmul       dword ptr [esi + 0x5c]                        // 0x00408507    d84e5c
                         faddp              st(1), st                                     // 0x0040850a    dec1
                         {disp8} fadd       dword ptr [esi + 0x54]                        // 0x0040850c    d84654
                         {disp8} fstp       dword ptr [esi + 0x40]                        // 0x0040850f    d95e40
                         fld                st(1)                                         // 0x00408512    d9c1
                         fmul               st, st(2)                                     // 0x00408514    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x00408516    d80d68b28a00
                         {disp8} fmul       dword ptr [esi + 0x60]                        // 0x0040851c    d84e60
                         fxch               st(3)                                         // 0x0040851f    d9cb
                         {disp8} fmul       dword ptr [esi + 0x54]                        // 0x00408521    d84e54
                         faddp              st(3), st                                     // 0x00408524    dec3
                         fxch               st(1)                                         // 0x00408526    d9c9
                         {disp8} fmul       dword ptr [esi + 0x58]                        // 0x00408528    d84e58
                         faddp              st(2), st                                     // 0x0040852b    dec2
                         {disp8} fmul       dword ptr [esi + 0x5c]                        // 0x0040852d    d84e5c
                         faddp              st(1), st                                     // 0x00408530    dec1
                         {disp8} fadd       dword ptr [esi + 0x50]                        // 0x00408532    d84650
                         {disp8} fstp       dword ptr [esi + 0x34]                        // 0x00408535    d95e34
_jmp_addr_0x00408538:    {disp8} fld        dword ptr [esi + 0x18]                        // 0x00408538    d94618
                         {disp8} fcomp      dword ptr [esi + 0x1c]                        // 0x0040853b    d85e1c
                         fnstsw             ax                                            // 0x0040853e    dfe0
                         test               ah, 0x40                                      // 0x00408540    f6c440
                         {disp8} je         _jmp_addr_0x00408570                          // 0x00408543    742b
                         {disp8} fld        dword ptr [esi + 0x48]                        // 0x00408545    d94648
                         {disp8} fcomp      dword ptr [esi + 0x4c]                        // 0x00408548    d85e4c
                         fnstsw             ax                                            // 0x0040854b    dfe0
                         test               ah, 0x40                                      // 0x0040854d    f6c440
                         {disp8} je         _jmp_addr_0x00408570                          // 0x00408550    741e
                         cmp                dword ptr [data_bytes + 0x286d24], esi        // 0x00408552    393524cdc400
                         {disp8} jne        _jmp_addr_0x00408570                          // 0x00408558    7516
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x0040855a    d94604
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0040855d    d81d98a38a00
                         fnstsw             ax                                            // 0x00408563    dfe0
                         test               ah, 0x40                                      // 0x00408565    f6c440
                         {disp8} je         _jmp_addr_0x00408570                          // 0x00408568    7406
                         {disp32} mov       dword ptr [data_bytes + 0x286d24], ebp        // 0x0040856a    892d24cdc400
_jmp_addr_0x00408570:    {disp32} lea       eax, dword ptr [esp + 0x00000220]             // 0x00408570    8d842420020000
                         push               eax                                           // 0x00408577    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000220]             // 0x00408578    8d8c2420020000
                         mov                ebx, 0x00c387c8                               // 0x0040857f    bbc887c300
                         push               ecx                                           // 0x00408584    51
                         {disp32} mov       dword ptr [data_bytes + 0x504618], ebx        // 0x00408585    891d18a6ec00
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0040858b    e8a0960000
                         fstp               st(0)                                         // 0x00408590    ddd8
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00408592    d94604
                         add                esp, 0x08                                     // 0x00408595    83c408
                         {disp8} fld        dword ptr [esi + 0x34]                        // 0x00408598    d94634
                         {disp32} fmul      dword ptr [__real@3f400000]                   // 0x0040859b    d80d74b28a00
                         fsubp              st(1), st                                     // 0x004085a1    dee9
                         {disp32} fmul      dword ptr [esi + 0x000000c4]                  // 0x004085a3    d88ec4000000
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x004085a9    d80d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x004085af    e84c8e3900
                         mov.s              edi, eax                                      // 0x004085b4    8bf8
                         cmp.s              edi, ebp                                      // 0x004085b6    3bfd
                         {disp8} jge        _jmp_addr_0x004085be                          // 0x004085b8    7d04
                         xor.s              edi, edi                                      // 0x004085ba    33ff
                         {disp8} jmp        _jmp_addr_0x004085cb                          // 0x004085bc    eb0d
_jmp_addr_0x004085be:    cmp                edi, 0x000000ff                               // 0x004085be    81ffff000000
                         {disp8} jle        _jmp_addr_0x004085cb                          // 0x004085c4    7e05
                         mov                edi, 0x000000ff                               // 0x004085c6    bfff000000
_jmp_addr_0x004085cb:    {disp32} mov       dword ptr [data_bytes + 0x2078], edi          // 0x004085cb    893d78809c00
                         {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x004085d1    8b86b0000000
                         cmp.s              eax, ebp                                      // 0x004085d7    3bc5
                         {disp8} je         _jmp_addr_0x004085f4                          // 0x004085d9    7419
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x004085db    8b942420020000
                         {disp32} mov       ecx, dword ptr [esp + 0x0000021c]             // 0x004085e2    8b8c241c020000
                         push               edx                                           // 0x004085e9    52
                         {disp8} mov        edx, dword ptr [esi + 0x70]                   // 0x004085ea    8b5670
                         push               ecx                                           // 0x004085ed    51
                         push               edx                                           // 0x004085ee    52
                         push               esi                                           // 0x004085ef    56
                         push               0xd                                           // 0x004085f0    6a0d
                         call               eax                                           // 0x004085f2    ffd0
_jmp_addr_0x004085f4:    cmp                dword ptr [esi + 0x00000094], ebp             // 0x004085f4    39ae94000000
                         {disp32} je        _jmp_addr_0x004086bd                          // 0x004085fa    0f84bd000000
                         cmp                dword ptr [esi + 0x0000009c], ebp             // 0x00408600    39ae9c000000
                         {disp32} jle       _jmp_addr_0x004086bd                          // 0x00408606    0f8eb1000000
                         cmp                dword ptr [esi + 0x000000a0], ebp             // 0x0040860c    39aea0000000
                         {disp32} jle       _jmp_addr_0x004086bd                          // 0x00408612    0f8ea5000000
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edi          // 0x00408618    893d78809c00
                         cmp                dword ptr [esi + 0x00000094], 0x02            // 0x0040861e    83be9400000002
                         {disp8} jne        _jmp_addr_0x0040864e                          // 0x00408625    7527
                         {disp32} mov       eax, dword ptr [esi + 0x000000a0]             // 0x00408627    8b86a0000000
                         cdq                                                              // 0x0040862d    99
                         sub.s              eax, edx                                      // 0x0040862e    2bc2
                         mov.s              ecx, eax                                      // 0x00408630    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x0000009c]             // 0x00408632    8b869c000000
                         cdq                                                              // 0x00408638    99
                         push               ebp                                           // 0x00408639    55
                         sar                ecx, 1                                        // 0x0040863a    d1f9
                         sub.s              eax, edx                                      // 0x0040863c    2bc2
                         push               ebp                                           // 0x0040863e    55
                         sar                eax, 1                                        // 0x0040863f    d1f8
                         push               0x00ffffff                                    // 0x00408641    68ffffff00
                         {disp32} lea       edx, dword ptr [ecx + 0x00000154]             // 0x00408646    8d9154010000
                         {disp8} jmp        _jmp_addr_0x0040869d                          // 0x0040864c    eb4f
_jmp_addr_0x0040864e:    cmp                dword ptr [esi + 0x00000098], ebp             // 0x0040864e    39ae98000000
                         {disp32} mov       eax, dword ptr [esi + 0x000000a0]             // 0x00408654    8b86a0000000
                         cdq                                                              // 0x0040865a    99
                         {disp8} je         _jmp_addr_0x0040867e                          // 0x0040865b    7421
                         sub.s              eax, edx                                      // 0x0040865d    2bc2
                         mov.s              ecx, eax                                      // 0x0040865f    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x0000009c]             // 0x00408661    8b869c000000
                         cdq                                                              // 0x00408667    99
                         push               -0x1                                          // 0x00408668    6aff
                         sar                ecx, 1                                        // 0x0040866a    d1f9
                         sub.s              eax, edx                                      // 0x0040866c    2bc2
                         push               ebp                                           // 0x0040866e    55
                         sar                eax, 1                                        // 0x0040866f    d1f8
                         push               0x00ffffff                                    // 0x00408671    68ffffff00
                         {disp32} lea       edx, dword ptr [ecx + 0x00000154]             // 0x00408676    8d9154010000
                         {disp8} jmp        _jmp_addr_0x0040869d                          // 0x0040867c    eb1f
_jmp_addr_0x0040867e:    sub.s              eax, edx                                      // 0x0040867e    2bc2
                         mov.s              ecx, eax                                      // 0x00408680    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x0000009c]             // 0x00408682    8b869c000000
                         cdq                                                              // 0x00408688    99
                         push               -0x1                                          // 0x00408689    6aff
                         sar                ecx, 1                                        // 0x0040868b    d1f9
                         sub.s              eax, edx                                      // 0x0040868d    2bc2
                         push               ebp                                           // 0x0040868f    55
                         sar                eax, 1                                        // 0x00408690    d1f8
                         push               0x00ffffff                                    // 0x00408692    68ffffff00
                         {disp32} lea       edx, dword ptr [ecx + 0x0000012c]             // 0x00408697    8d912c010000
_jmp_addr_0x0040869d:    push               edx                                           // 0x0040869d    52
                         {disp32} lea       edx, dword ptr [eax + 0x00000190]             // 0x0040869e    8d9090010000
                         push               edx                                           // 0x004086a4    52
                         mov                edx, 0x0000012c                               // 0x004086a5    ba2c010000
                         sub.s              edx, ecx                                      // 0x004086aa    2bd1
                         mov                ecx, 0x00000190                               // 0x004086ac    b990010000
                         push               edx                                           // 0x004086b1    52
                         sub.s              ecx, eax                                      // 0x004086b2    2bc8
                         push               ecx                                           // 0x004086b4    51
                         call               _jmp_addr_0x00413960                          // 0x004086b5    e8a6b20000
                         add                esp, 0x1c                                     // 0x004086ba    83c41c
_jmp_addr_0x004086bd:    {disp32} mov       dword ptr [data_bytes + 0x504618], ebx        // 0x004086bd    891d18a6ec00
                         {disp8} mov        al, byte ptr [esi + 0x64]                     // 0x004086c3    8a4664
                         test               al, al                                        // 0x004086c6    84c0
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edi          // 0x004086c8    893d78809c00
                         {disp32} je        _jmp_addr_0x0040879e                          // 0x004086ce    0f84ca000000
                         {disp8} mov        edi, dword ptr [esi + 0x68]                   // 0x004086d4    8b7e68
                         cmp.s              edi, ebp                                      // 0x004086d7    3bfd
                         {disp8} je         _jmp_addr_0x004086f8                          // 0x004086d9    741d
_jmp_addr_0x004086db:    {disp32} mov       al, byte ptr [edi + 0x00000229]               // 0x004086db    8a8729020000
                         test               al, al                                        // 0x004086e1    84c0
                         {disp8} jne        _jmp_addr_0x004086ee                          // 0x004086e3    7509
                         mov                edx, dword ptr [edi]                          // 0x004086e5    8b17
                         push               ebp                                           // 0x004086e7    55
                         push               ebp                                           // 0x004086e8    55
                         mov.s              ecx, edi                                      // 0x004086e9    8bcf
                         call               dword ptr [edx + 0x14]                        // 0x004086eb    ff5214
_jmp_addr_0x004086ee:    {disp32} mov       edi, dword ptr [edi + 0x00000230]             // 0x004086ee    8bbf30020000
                         cmp.s              edi, ebp                                      // 0x004086f4    3bfd
                         {disp8} jne        _jmp_addr_0x004086db                          // 0x004086f6    75e3
_jmp_addr_0x004086f8:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x004086f8    8b86b0000000
                         cmp.s              eax, ebp                                      // 0x004086fe    3bc5
                         {disp8} je         _jmp_addr_0x0040871b                          // 0x00408700    7419
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408702    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408709    8b94241c020000
                         push               ecx                                           // 0x00408710    51
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408711    8b4e70
                         push               edx                                           // 0x00408714    52
                         push               ecx                                           // 0x00408715    51
                         push               esi                                           // 0x00408716    56
                         push               0xe                                           // 0x00408717    6a0e
                         call               eax                                           // 0x00408719    ffd0
_jmp_addr_0x0040871b:    {disp8} fld        dword ptr [esi + 0x34]                        // 0x0040871b    d94634
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x0040871e    d80d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x00408724    e8d78c3900
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00408729    a378809c00
                         {disp32} mov       ecx, dword ptr [esi + 0x0000009c]             // 0x0040872e    8b8e9c000000
                         mov                eax, 0x00000005                               // 0x00408734    b805000000
                         cmp.s              ecx, eax                                      // 0x00408739    3bc8
                         {disp8} jle        _jmp_addr_0x0040874c                          // 0x0040873b    7e0f
                         cmp                dword ptr [esi + 0x000000a0], eax             // 0x0040873d    3986a0000000
                         {disp8} jle        _jmp_addr_0x0040874c                          // 0x00408743    7e07
                         mov                edi, 0x00000001                               // 0x00408745    bf01000000
                         {disp8} jmp        _jmp_addr_0x0040874e                          // 0x0040874a    eb02
_jmp_addr_0x0040874c:    xor.s              edi, edi                                      // 0x0040874c    33ff
_jmp_addr_0x0040874e:    {disp32} mov       eax, dword ptr [esi + 0x000000a8]             // 0x0040874e    8b86a8000000
                         cdq                                                              // 0x00408754    99
                         sub.s              eax, edx                                      // 0x00408755    2bc2
                         mov.s              ecx, eax                                      // 0x00408757    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x000000a4]             // 0x00408759    8b86a4000000
                         cdq                                                              // 0x0040875f    99
                         sub.s              eax, edx                                      // 0x00408760    2bc2
                         {disp32} mov       edx, dword ptr [esi + 0x000000c0]             // 0x00408762    8b96c0000000
                         push               -0x1                                          // 0x00408768    6aff
                         and                edx, 0x00ffffff                               // 0x0040876a    81e2ffffff00
                         push               edi                                           // 0x00408770    57
                         push               edx                                           // 0x00408771    52
                         sar                ecx, 1                                        // 0x00408772    d1f9
                         {disp32} lea       edx, dword ptr [ecx + 0x0000012c]             // 0x00408774    8d912c010000
                         push               edx                                           // 0x0040877a    52
                         sar                eax, 1                                        // 0x0040877b    d1f8
                         {disp32} lea       edx, dword ptr [eax + 0x00000190]             // 0x0040877d    8d9090010000
                         push               edx                                           // 0x00408783    52
                         mov                edx, 0x0000012c                               // 0x00408784    ba2c010000
                         sub.s              edx, ecx                                      // 0x00408789    2bd1
                         mov                ecx, 0x00000190                               // 0x0040878b    b990010000
                         push               edx                                           // 0x00408790    52
                         sub.s              ecx, eax                                      // 0x00408791    2bc8
                         push               ecx                                           // 0x00408793    51
                         call               _jmp_addr_0x00413960                          // 0x00408794    e8c7b10000
                         add                esp, 0x1c                                     // 0x00408799    83c41c
                         {disp8} jmp        _jmp_addr_0x004087a5                          // 0x0040879c    eb07
_jmp_addr_0x0040879e:    mov.s              ecx, esi                                      // 0x0040879e    8bce
                         call               _jmp_addr_0x00411150                          // 0x004087a0    e8ab890000
_jmp_addr_0x004087a5:    {disp32} mov       al, byte ptr [esp + 0x0000022c]               // 0x004087a5    8a84242c020000
                         test               al, al                                        // 0x004087ac    84c0
                         {disp8} je         _jmp_addr_0x004087b4                          // 0x004087ae    7404
                         xor.s              eax, eax                                      // 0x004087b0    33c0
                         {disp8} jmp        _jmp_addr_0x004087cb                          // 0x004087b2    eb17
_jmp_addr_0x004087b4:    {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x004087b4    8b942420020000
                         {disp32} mov       eax, dword ptr [esp + 0x0000021c]             // 0x004087bb    8b84241c020000
                         push               edx                                           // 0x004087c2    52
                         push               eax                                           // 0x004087c3    50
                         mov.s              ecx, esi                                      // 0x004087c4    8bce
                         call               _jmp_addr_0x00408100                          // 0x004087c6    e835f9ffff
_jmp_addr_0x004087cb:    {disp32} mov       edx, dword ptr [esp + 0x00000224]             // 0x004087cb    8b942424020000
                         cmp.s              edx, ebp                                      // 0x004087d2    3bd5
                         {disp8} mov        edi, dword ptr [esi + 0x6c]                   // 0x004087d4    8b7e6c
                         {disp32} mov       dword ptr [esi + 0x000000bc], eax             // 0x004087d7    8986bc000000
                         {disp8} je         _jmp_addr_0x004087f8                          // 0x004087dd    7419
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x004087df    8b4e70
                         cmp.s              ecx, ebp                                      // 0x004087e2    3bcd
                         {disp8} je         _jmp_addr_0x004087f8                          // 0x004087e4    7412
                         cmp                edx, dword ptr [data_bytes + 0x286ccc]        // 0x004087e6    3b15ccccc400
                         {disp8} jne        _jmp_addr_0x004087f8                          // 0x004087ec    750a
                         cmp.s              eax, ecx                                      // 0x004087ee    3bc1
                         {disp8} je         _jmp_addr_0x004087f8                          // 0x004087f0    7406
                         {disp32} mov       dword ptr [esi + 0x000000bc], ebp             // 0x004087f2    89aebc000000
_jmp_addr_0x004087f8:    xor.s              ebp, ebp                                      // 0x004087f8    33ed
                         test               edi, edi                                      // 0x004087fa    85ff
                         mov                ebx, 0x0085b680                               // 0x004087fc    bb80b68500
                         {disp8} je         _jmp_addr_0x00408873                          // 0x00408801    7470
_jmp_addr_0x00408803:    {disp32} mov       al, byte ptr [edi + 0x00000229]               // 0x00408803    8a8729020000
                         test               al, al                                        // 0x00408809    84c0
                         {disp8} jne        _jmp_addr_0x00408832                          // 0x0040880b    7525
                         cmp                dword ptr [edi + 0x18], ebx                   // 0x0040880d    395f18
                         {disp8} jne        _jmp_addr_0x00408816                          // 0x00408810    7504
                         mov.s              ebp, edi                                      // 0x00408812    8bef
                         {disp8} jmp        _jmp_addr_0x00408832                          // 0x00408814    eb1c
_jmp_addr_0x00408816:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408816    8b4670
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x00408819    8b8ebc000000
                         mov                edx, dword ptr [edi]                          // 0x0040881f    8b17
                         cmp.s              edi, eax                                      // 0x00408821    3bf8
                         sete               al                                            // 0x00408823    0f94c0
                         cmp.s              edi, ecx                                      // 0x00408826    3bf9
                         sete               cl                                            // 0x00408828    0f94c1
                         push               eax                                           // 0x0040882b    50
                         push               ecx                                           // 0x0040882c    51
                         mov.s              ecx, edi                                      // 0x0040882d    8bcf
                         call               dword ptr [edx + 0x14]                        // 0x0040882f    ff5214
_jmp_addr_0x00408832:    {disp32} mov       edi, dword ptr [edi + 0x00000230]             // 0x00408832    8bbf30020000
                         test               edi, edi                                      // 0x00408838    85ff
                         {disp8} jne        _jmp_addr_0x00408803                          // 0x0040883a    75c7
                         test               ebp, ebp                                      // 0x0040883c    85ed
                         {disp8} je         _jmp_addr_0x00408873                          // 0x0040883e    7433
                         {disp32} mov       edi, dword ptr [data_bytes + 0x2078]          // 0x00408840    8b3d78809c00
                         {disp32} mov       dword ptr [data_bytes + 0x2078], 0x000000ff   // 0x00408846    c70578809c00ff000000
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408850    8b4670
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x00408853    8b8ebc000000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x00408859    8b5500
                         cmp.s              ebp, eax                                      // 0x0040885c    3be8
                         sete               al                                            // 0x0040885e    0f94c0
                         cmp.s              ebp, ecx                                      // 0x00408861    3be9
                         sete               cl                                            // 0x00408863    0f94c1
                         push               eax                                           // 0x00408866    50
                         push               ecx                                           // 0x00408867    51
                         mov.s              ecx, ebp                                      // 0x00408868    8bcd
                         call               dword ptr [edx + 0x14]                        // 0x0040886a    ff5214
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edi          // 0x0040886d    893d78809c00
_jmp_addr_0x00408873:    {disp32} mov       al, byte ptr [esp + 0x0000022c]               // 0x00408873    8a84242c020000
                         test               al, al                                        // 0x0040887a    84c0
                         {disp32} jne       _jmp_addr_0x00408f08                          // 0x0040887c    0f8586060000
                         push               ebx                                           // 0x00408882    53
                         mov.s              ecx, esi                                      // 0x00408883    8bce
                         call               @FindControl__8SetupBoxFi@12                  // 0x00408885    e8d6f8ffff
                         mov.s              edi, eax                                      // 0x0040888a    8bf8
                         xor.s              ebx, ebx                                      // 0x0040888c    33db
                         cmp.s              edi, ebx                                      // 0x0040888e    3bfb
                         {disp32} je        _jmp_addr_0x00408a6d                          // 0x00408890    0f84d7010000
                         cmp                dword ptr [edi + 0x04], ebx                   // 0x00408896    395f04
                         {disp32} je        _jmp_addr_0x00408a50                          // 0x00408899    0f84b1010000
                         cmp                dword ptr [data_bytes + 0x286d00], ebx        // 0x0040889f    391d00cdc400
                         {disp32} je        _jmp_addr_0x00408a50                          // 0x004088a5    0f84a5010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004088ab    8b0d04c1e800
                         call               _jmp_addr_0x007f40c0                          // 0x004088b1    e80ab83e00
                         cmp.s              eax, ebx                                      // 0x004088b6    3bc3
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x004088b8    89442414
                         {disp32} je        _jmp_addr_0x00408a45                          // 0x004088bc    0f8483010000
                         mov                edx, dword ptr [edi]                          // 0x004088c2    8b17
                         {disp32} mov       bl, byte ptr [edi + 0x00000229]               // 0x004088c4    8a9f29020000
                         push               0x0                                           // 0x004088ca    6a00
                         mov.s              ecx, edi                                      // 0x004088cc    8bcf
                         call               dword ptr [edx + 8]                           // 0x004088ce    ff5208
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004088d1    8b0d04c1e800
                         call               _jmp_addr_0x007f3e40                          // 0x004088d7    e864b53e00
                         test               al, al                                        // 0x004088dc    84c0
                         {disp8} jne        _jmp_addr_0x004088e8                          // 0x004088de    7508
                         test               bl, bl                                        // 0x004088e0    84db
                         {disp32} jne       _jmp_addr_0x00408a59                          // 0x004088e2    0f8571010000
_jmp_addr_0x004088e8:    {disp32} fild      dword ptr [edi + 0x0000027c]                  // 0x004088e8    db877c020000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x004088ee    8b8750020000
                         test               eax, eax                                      // 0x004088f4    85c0
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004088f6    d95c2410
                         {disp8} jle        _jmp_addr_0x0040890f                          // 0x004088fa    7e13
_jmp_addr_0x004088fc:    dec                eax                                           // 0x004088fc    48
                         push               eax                                           // 0x004088fd    50
                         mov.s              ecx, edi                                      // 0x004088fe    8bcf
                         call               @DeleteString__9SetupListFi@12                // 0x00408900    e85b240000
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x00408905    8b8750020000
                         test               eax, eax                                      // 0x0040890b    85c0
                         {disp8} jg         _jmp_addr_0x004088fc                          // 0x0040890d    7fed
_jmp_addr_0x0040890f:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0040890f    8b442414
                         xor.s              ebp, ebp                                      // 0x00408913    33ed
                         test               eax, eax                                      // 0x00408915    85c0
                         {disp8} jle        _jmp_addr_0x00408990                          // 0x00408917    7e77
_jmp_addr_0x00408919:    push               0xa                                           // 0x00408919    6a0a
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0040891b    8d44241c
                         push               eax                                           // 0x0040891f    50
                         {disp8} lea        ebx, dword ptr [ebp + 0x01]                   // 0x00408920    8d5d01
                         push               ebx                                           // 0x00408923    53
                         call               __itow                                        // 0x00408924    e8b2d63b00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00408929    8d4c2424
                         push               0x009c810c                                    // 0x0040892d    680c819c00
                         push               ecx                                           // 0x00408932    51
                         call               _wcscat                                       // 0x00408933    e854d63b00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00408938    8b0d04c1e800
                         add                esp, 0x14                                     // 0x0040893e    83c414
                         push               ebp                                           // 0x00408941    55
                         call               _jmp_addr_0x007f3d70                          // 0x00408942    e829b43e00
                         push               eax                                           // 0x00408947    50
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00408948    8d54241c
                         push               edx                                           // 0x0040894c    52
                         call               _wcscat                                       // 0x0040894d    e83ad63b00
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x00408952    8b8f50020000
                         add                esp, 0x08                                     // 0x00408958    83c408
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0040895b    8d442418
                         push               eax                                           // 0x0040895f    50
                         push               ecx                                           // 0x00408960    51
                         mov.s              ecx, edi                                      // 0x00408961    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x00408963    e808250000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x00408968    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0040896e    8d41ff
                         test               eax, eax                                      // 0x00408971    85c0
                         {disp8} jl         _jmp_addr_0x00408986                          // 0x00408973    7c11
                         cmp.s              eax, ecx                                      // 0x00408975    3bc1
                         {disp8} jge        _jmp_addr_0x00408986                          // 0x00408977    7d0d
                         {disp32} mov       edx, dword ptr [edi + 0x00000268]             // 0x00408979    8b9768020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x0040897f    c7048200000000
_jmp_addr_0x00408986:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00408986    8b442414
                         mov.s              ebp, ebx                                      // 0x0040898a    8beb
                         cmp.s              ebp, eax                                      // 0x0040898c    3be8
                         {disp8} jl         _jmp_addr_0x00408919                          // 0x0040898e    7c89
_jmp_addr_0x00408990:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00408990    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x00408996    e825b43e00
                         mov.s              ebp, eax                                      // 0x0040899b    8be8
                         test               ebp, ebp                                      // 0x0040899d    85ed
                         {disp8} jl         _jmp_addr_0x004089b1                          // 0x0040899f    7c10
                         cmp                ebp, dword ptr [edi + 0x00000250]             // 0x004089a1    3baf50020000
                         {disp8} jge        _jmp_addr_0x004089b1                          // 0x004089a7    7d08
                         {disp32} mov       dword ptr [edi + 0x00000248], ebp             // 0x004089a9    89af48020000
                         {disp8} jmp        _jmp_addr_0x004089bb                          // 0x004089af    eb0a
_jmp_addr_0x004089b1:    {disp32} mov       dword ptr [edi + 0x00000248], 0xffffffff      // 0x004089b1    c78748020000ffffffff
_jmp_addr_0x004089bb:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x004089bb    8b4704
                         test               eax, eax                                      // 0x004089be    85c0
                         {disp8} je         _jmp_addr_0x004089fd                          // 0x004089c0    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x004089c2    a100cdc400
                         test               eax, eax                                      // 0x004089c7    85c0
                         {disp8} je         _jmp_addr_0x004089fd                          // 0x004089c9    7432
                         test               ebp, ebp                                      // 0x004089cb    85ed
                         {disp8} jl         _jmp_addr_0x004089fd                          // 0x004089cd    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004089cf    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x004089d5    e8e6b33e00
                         cmp.s              eax, ebp                                      // 0x004089da    3bc5
                         {disp8} je         _jmp_addr_0x004089fd                          // 0x004089dc    741f
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x004089de    8b8750020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004089e4    8b0d04c1e800
                         push               ebp                                           // 0x004089ea    55
                         dec                eax                                           // 0x004089eb    48
                         push               eax                                           // 0x004089ec    50
                         push               0x0                                           // 0x004089ed    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x004089ef    e8ecb33e00
                         push               0x0                                           // 0x004089f4    6a00
                         mov.s              ecx, edi                                      // 0x004089f6    8bcf
                         call               @AutoScroll__9SetupListFb@9                   // 0x004089f8    e8d3130000
_jmp_addr_0x004089fd:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x004089fd    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00408a01    d81d98a38a00
                         fnstsw             ax                                            // 0x00408a07    dfe0
                         test               ah, 0x41                                      // 0x00408a09    f6c441
                         {disp8} jne        _jmp_addr_0x00408a29                          // 0x00408a0c    751b
                         {disp32} fild      dword ptr [edi + 0x00000278]                  // 0x00408a0e    db8778020000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00408a14    d9442410
                         fcomp              st(1)                                         // 0x00408a18    d8d9
                         fnstsw             ax                                            // 0x00408a1a    dfe0
                         test               ah, 0x01                                      // 0x00408a1c    f6c401
                         {disp8} je         _jmp_addr_0x00408a2f                          // 0x00408a1f    740e
                         fstp               st(0)                                         // 0x00408a21    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00408a23    d9442410
                         {disp8} jmp        _jmp_addr_0x00408a2f                          // 0x00408a27    eb06
_jmp_addr_0x00408a29:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00408a29    d90598a38a00
_jmp_addr_0x00408a2f:    call               _jmp_addr_0x007a1400                          // 0x00408a2f    e8cc893900
                         push               0x0                                           // 0x00408a34    6a00
                         mov.s              ecx, edi                                      // 0x00408a36    8bcf
                         {disp32} mov       dword ptr [edi + 0x0000027c], eax             // 0x00408a38    89877c020000
                         call               @AutoScroll__9SetupListFb@9                   // 0x00408a3e    e88d130000
                         {disp8} jmp        _jmp_addr_0x00408a59                          // 0x00408a43    eb14
_jmp_addr_0x00408a45:    mov                edx, dword ptr [edi]                          // 0x00408a45    8b17
                         push               0x1                                           // 0x00408a47    6a01
                         mov.s              ecx, edi                                      // 0x00408a49    8bcf
                         call               dword ptr [edx + 8]                           // 0x00408a4b    ff5208
                         {disp8} jmp        _jmp_addr_0x00408a59                          // 0x00408a4e    eb09
_jmp_addr_0x00408a50:    mov                eax, dword ptr [edi]                          // 0x00408a50    8b07
                         push               0x1                                           // 0x00408a52    6a01
                         mov.s              ecx, edi                                      // 0x00408a54    8bcf
                         call               dword ptr [eax + 8]                           // 0x00408a56    ff5008
_jmp_addr_0x00408a59:    {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x00408a59    a100cdc400
                         xor.s              ebx, ebx                                      // 0x00408a5e    33db
                         cmp.s              eax, ebx                                      // 0x00408a60    3bc3
                         {disp8} jne        _jmp_addr_0x00408a6d                          // 0x00408a62    7509
                         mov                edx, dword ptr [edi]                          // 0x00408a64    8b17
                         push               0x1                                           // 0x00408a66    6a01
                         mov.s              ecx, edi                                      // 0x00408a68    8bcf
                         call               dword ptr [edx + 8]                           // 0x00408a6a    ff5208
_jmp_addr_0x00408a6d:    cmp                dword ptr [esp + 0x00000228], ebx             // 0x00408a6d    399c2428020000
                         {disp32} mov       edi, dword ptr [esp + 0x00000224]             // 0x00408a74    8bbc2424020000
                         {disp8} je         _jmp_addr_0x00408aca                          // 0x00408a7b    744d
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408a7d    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408a83    3bcb
                         {disp8} je         _jmp_addr_0x00408aaf                          // 0x00408a85    7428
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408a87    8b4670
                         cmp.s              eax, ebx                                      // 0x00408a8a    3bc3
                         {disp8} je         _jmp_addr_0x00408aaf                          // 0x00408a8c    7421
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408a8e    8b942420020000
                         push               edx                                           // 0x00408a95    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408a96    8b942420020000
                         push               edx                                           // 0x00408a9d    52
                         push               eax                                           // 0x00408a9e    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408a9f    8b8034020000
                         push               eax                                           // 0x00408aa5    50
                         push               0xc                                           // 0x00408aa6    6a0c
                         call               ecx                                           // 0x00408aa8    ffd1
                         call               _jmp_addr_0x004082f0                          // 0x00408aaa    e841f8ffff
_jmp_addr_0x00408aaf:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00408aaf    8b0d5c19d000
                         cmp                dword ptr [ecx + 0x00250538], ebx             // 0x00408ab5    399938052500
                         {disp8} jne        _jmp_addr_0x00408ac4                          // 0x00408abb    7507
                         and                byte ptr [data_bytes + 0x4bf350], -0x11       // 0x00408abd    80255053e800ef
_jmp_addr_0x00408ac4:    {disp32} mov       dword ptr [data_bytes + 0x286d10], ebx        // 0x00408ac4    891d10cdc400
_jmp_addr_0x00408aca:    cmp                dword ptr [data_bytes + 0x286d04], ebx        // 0x00408aca    391d04cdc400
                         {disp32} je        _jmp_addr_0x00408c61                          // 0x00408ad0    0f848b010000
                         cmp                dword ptr [data_bytes + 0x286ccc], edi        // 0x00408ad6    393dccccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d04], ebx        // 0x00408adc    891d04cdc400
                         {disp32} jne       _jmp_addr_0x00408c6d                          // 0x00408ae2    0f8585010000
                         cmp.s              edi, ebx                                      // 0x00408ae8    3bfb
                         {disp32} jne       _jmp_addr_0x00408c61                          // 0x00408aea    0f8571010000
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x00408af0    8b86bc000000
                         cmp.s              eax, ebx                                      // 0x00408af6    3bc3
                         {disp32} je        _jmp_addr_0x00408c61                          // 0x00408af8    0f8463010000
                         push               eax                                           // 0x00408afe    50
                         mov.s              ecx, esi                                      // 0x00408aff    8bce
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00408b01    e83a060000
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408b06    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408b09    3bcb
                         {disp8} je         _jmp_addr_0x00408b24                          // 0x00408b0b    7417
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408b0d    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408b14    8b11
                         push               0x1                                           // 0x00408b16    6a01
                         push               eax                                           // 0x00408b18    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000224]             // 0x00408b19    8b842424020000
                         push               eax                                           // 0x00408b20    50
                         call               dword ptr [edx + 0x1c]                        // 0x00408b21    ff521c
_jmp_addr_0x00408b24:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408b24    8b4670
                         cmp.s              eax, ebx                                      // 0x00408b27    3bc3
                         {disp8} je         _jmp_addr_0x00408b51                          // 0x00408b29    7426
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408b2b    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408b31    3bcb
                         {disp8} je         _jmp_addr_0x00408b51                          // 0x00408b33    741c
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408b35    8b942420020000
                         push               edx                                           // 0x00408b3c    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408b3d    8b942420020000
                         push               edx                                           // 0x00408b44    52
                         push               eax                                           // 0x00408b45    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408b46    8b8034020000
                         push               eax                                           // 0x00408b4c    50
                         push               0x9                                           // 0x00408b4d    6a09
                         call               ecx                                           // 0x00408b4f    ffd1
_jmp_addr_0x00408b51:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408b51    8b4670
                         cmp.s              eax, ebx                                      // 0x00408b54    3bc3
                         {disp8} je         _jmp_addr_0x00408b77                          // 0x00408b56    741f
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408b58    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408b5f    8b94241c020000
                         push               ecx                                           // 0x00408b66    51
                         push               edx                                           // 0x00408b67    52
                         push               eax                                           // 0x00408b68    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408b69    8b8034020000
                         push               eax                                           // 0x00408b6f    50
                         push               0x9                                           // 0x00408b70    6a09
                         call               _jmp_addr_0x00407f60                          // 0x00408b72    e8e9f3ffff
_jmp_addr_0x00408b77:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408b77    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408b7a    3bcb
                         {disp8} je         _jmp_addr_0x00408b95                          // 0x00408b7c    7417
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408b7e    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408b85    8b11
                         push               0x1                                           // 0x00408b87    6a01
                         push               eax                                           // 0x00408b89    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000224]             // 0x00408b8a    8b842424020000
                         push               eax                                           // 0x00408b91    50
                         call               dword ptr [edx + 0x20]                        // 0x00408b92    ff5220
_jmp_addr_0x00408b95:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408b95    8b4670
                         cmp.s              eax, ebx                                      // 0x00408b98    3bc3
                         {disp8} je         _jmp_addr_0x00408bc2                          // 0x00408b9a    7426
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408b9c    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408ba2    3bcb
                         {disp8} je         _jmp_addr_0x00408bc2                          // 0x00408ba4    741c
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408ba6    8b942420020000
                         push               edx                                           // 0x00408bad    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408bae    8b942420020000
                         push               edx                                           // 0x00408bb5    52
                         push               eax                                           // 0x00408bb6    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408bb7    8b8034020000
                         push               eax                                           // 0x00408bbd    50
                         push               0xa                                           // 0x00408bbe    6a0a
                         call               ecx                                           // 0x00408bc0    ffd1
_jmp_addr_0x00408bc2:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408bc2    8b4670
                         cmp.s              eax, ebx                                      // 0x00408bc5    3bc3
                         {disp8} je         _jmp_addr_0x00408be8                          // 0x00408bc7    741f
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408bc9    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408bd0    8b94241c020000
                         push               ecx                                           // 0x00408bd7    51
                         push               edx                                           // 0x00408bd8    52
                         push               eax                                           // 0x00408bd9    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408bda    8b8034020000
                         push               eax                                           // 0x00408be0    50
                         push               0xa                                           // 0x00408be1    6a0a
                         call               _jmp_addr_0x00407f60                          // 0x00408be3    e878f3ffff
_jmp_addr_0x00408be8:    cmp                dword ptr [esi + 0x70], ebx                   // 0x00408be8    395e70
                         {disp8} je         _jmp_addr_0x00408bf2                          // 0x00408beb    7405
                         call               _jmp_addr_0x004082f0                          // 0x00408bed    e8fef6ffff
_jmp_addr_0x00408bf2:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408bf2    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408bf5    3bcb
                         {disp8} je         _jmp_addr_0x00408c0e                          // 0x00408bf7    7415
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408bf9    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408c00    8b11
                         push               eax                                           // 0x00408c02    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408c03    8b842420020000
                         push               eax                                           // 0x00408c0a    50
                         call               dword ptr [edx + 0x24]                        // 0x00408c0b    ff5224
_jmp_addr_0x00408c0e:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408c0e    8b4670
                         cmp.s              eax, ebx                                      // 0x00408c11    3bc3
                         {disp8} je         _jmp_addr_0x00408c3b                          // 0x00408c13    7426
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408c15    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408c1b    3bcb
                         {disp8} je         _jmp_addr_0x00408c3b                          // 0x00408c1d    741c
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408c1f    8b942420020000
                         push               edx                                           // 0x00408c26    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408c27    8b942420020000
                         push               edx                                           // 0x00408c2e    52
                         push               eax                                           // 0x00408c2f    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408c30    8b8034020000
                         push               eax                                           // 0x00408c36    50
                         push               0x1                                           // 0x00408c37    6a01
                         call               ecx                                           // 0x00408c39    ffd1
_jmp_addr_0x00408c3b:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408c3b    8b4670
                         cmp.s              eax, ebx                                      // 0x00408c3e    3bc3
                         {disp8} je         _jmp_addr_0x00408c61                          // 0x00408c40    741f
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408c42    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408c49    8b94241c020000
                         push               ecx                                           // 0x00408c50    51
                         push               edx                                           // 0x00408c51    52
                         push               eax                                           // 0x00408c52    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408c53    8b8034020000
                         push               eax                                           // 0x00408c59    50
                         push               0x1                                           // 0x00408c5a    6a01
                         call               _jmp_addr_0x00407f60                          // 0x00408c5c    e8fff2ffff
_jmp_addr_0x00408c61:    cmp                edi, dword ptr [data_bytes + 0x286ccc]        // 0x00408c61    3b3dccccc400
                         {disp32} je        _jmp_addr_0x00408e02                          // 0x00408c67    0f8495010000
_jmp_addr_0x00408c6d:    cmp.s              edi, ebx                                      // 0x00408c6d    3bfb
                         {disp32} je        _jmp_addr_0x00408d24                          // 0x00408c6f    0f84af000000
                         {disp32} mov       ecx, dword ptr [esp + 0x0000021c]             // 0x00408c75    8b8c241c020000
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408c7c    8b942420020000
                         {disp32} mov       dword ptr [data_bytes + 0x286cd4], ecx        // 0x00408c83    890dd4ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d04], ebx        // 0x00408c89    891d04cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cd0], edx        // 0x00408c8f    8915d0ccc400
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x00408c95    8b86bc000000
                         push               eax                                           // 0x00408c9b    50
                         mov.s              ecx, esi                                      // 0x00408c9c    8bce
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00408c9e    e89d040000
                         {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x00408ca3    8b86bc000000
                         cmp.s              eax, ebx                                      // 0x00408ca9    3bc3
                         {disp8} je         _jmp_addr_0x00408cbe                          // 0x00408cab    7411
                         xor.s              ecx, ecx                                      // 0x00408cad    33c9
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf304]          // 0x00408caf    8a0d0453e800
                         and                ecx, 0x02                                     // 0x00408cb5    83e102
                         {disp32} mov       dword ptr [eax + 0x0000022c], ecx             // 0x00408cb8    89882c020000
_jmp_addr_0x00408cbe:    {disp32} mov       edx, dword ptr [esi + 0x000000b0]             // 0x00408cbe    8b96b0000000
                         cmp.s              edx, ebx                                      // 0x00408cc4    3bd3
                         {disp8} je         _jmp_addr_0x00408cef                          // 0x00408cc6    7427
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408cc8    8b4670
                         cmp.s              eax, ebx                                      // 0x00408ccb    3bc3
                         {disp8} je         _jmp_addr_0x00408cd7                          // 0x00408ccd    7408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000234]             // 0x00408ccf    8b8834020000
                         {disp8} jmp        _jmp_addr_0x00408cd9                          // 0x00408cd5    eb02
_jmp_addr_0x00408cd7:    xor.s              ecx, ecx                                      // 0x00408cd7    33c9
_jmp_addr_0x00408cd9:    {disp32} mov       ebp, dword ptr [esp + 0x00000220]             // 0x00408cd9    8bac2420020000
                         push               ebp                                           // 0x00408ce0    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000220]             // 0x00408ce1    8bac2420020000
                         push               ebp                                           // 0x00408ce8    55
                         push               eax                                           // 0x00408ce9    50
                         push               ecx                                           // 0x00408cea    51
                         push               0x9                                           // 0x00408ceb    6a09
                         call               edx                                           // 0x00408ced    ffd2
_jmp_addr_0x00408cef:    cmp                dword ptr [esi + 0x000000bc], ebx             // 0x00408cef    399ebc000000
                         {disp32} je        _jmp_addr_0x00408ec8                          // 0x00408cf5    0f84cd010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408cfb    8b842420020000
                         push               0x1                                           // 0x00408d02    6a01
                         {disp32} mov       byte ptr [data_bytes + 0x286cc8], 0x01        // 0x00408d04    c605c8ccc40001
                         {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x00408d0b    8b8ebc000000
                         mov                edx, dword ptr [ecx]                          // 0x00408d11    8b11
                         push               eax                                           // 0x00408d13    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000224]             // 0x00408d14    8b842424020000
                         push               eax                                           // 0x00408d1b    50
                         call               dword ptr [edx + 0x1c]                        // 0x00408d1c    ff521c
                         {disp32} jmp       _jmp_addr_0x00408ec8                          // 0x00408d1f    e9a4010000
_jmp_addr_0x00408d24:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408d24    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408d27    3bcb
                         {disp8} je         _jmp_addr_0x00408d42                          // 0x00408d29    7417
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408d2b    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408d32    8b11
                         push               0x1                                           // 0x00408d34    6a01
                         push               eax                                           // 0x00408d36    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000224]             // 0x00408d37    8b842424020000
                         push               eax                                           // 0x00408d3e    50
                         call               dword ptr [edx + 0x20]                        // 0x00408d3f    ff5220
_jmp_addr_0x00408d42:    {disp32} mov       edx, dword ptr [esi + 0x000000b0]             // 0x00408d42    8b96b0000000
                         cmp.s              edx, ebx                                      // 0x00408d48    3bd3
                         {disp8} je         _jmp_addr_0x00408d73                          // 0x00408d4a    7427
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408d4c    8b4670
                         cmp.s              eax, ebx                                      // 0x00408d4f    3bc3
                         {disp8} je         _jmp_addr_0x00408d5b                          // 0x00408d51    7408
                         {disp32} mov       ecx, dword ptr [eax + 0x00000234]             // 0x00408d53    8b8834020000
                         {disp8} jmp        _jmp_addr_0x00408d5d                          // 0x00408d59    eb02
_jmp_addr_0x00408d5b:    xor.s              ecx, ecx                                      // 0x00408d5b    33c9
_jmp_addr_0x00408d5d:    {disp32} mov       ebp, dword ptr [esp + 0x00000220]             // 0x00408d5d    8bac2420020000
                         push               ebp                                           // 0x00408d64    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000220]             // 0x00408d65    8bac2420020000
                         push               ebp                                           // 0x00408d6c    55
                         push               eax                                           // 0x00408d6d    50
                         push               ecx                                           // 0x00408d6e    51
                         push               0xa                                           // 0x00408d6f    6a0a
                         call               edx                                           // 0x00408d71    ffd2
_jmp_addr_0x00408d73:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408d73    8b4670
                         cmp                eax, dword ptr [esi + 0x000000bc]             // 0x00408d76    3b86bc000000
                         {disp8} jne        _jmp_addr_0x00408df6                          // 0x00408d7c    7578
                         cmp.s              eax, ebx                                      // 0x00408d7e    3bc3
                         {disp8} je         _jmp_addr_0x00408df6                          // 0x00408d80    7474
                         call               _jmp_addr_0x004082f0                          // 0x00408d82    e869f5ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408d87    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408d8a    3bcb
                         {disp8} je         _jmp_addr_0x00408da3                          // 0x00408d8c    7415
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408d8e    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408d95    8b11
                         push               eax                                           // 0x00408d97    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408d98    8b842420020000
                         push               eax                                           // 0x00408d9f    50
                         call               dword ptr [edx + 0x24]                        // 0x00408da0    ff5224
_jmp_addr_0x00408da3:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408da3    8b4670
                         cmp.s              eax, ebx                                      // 0x00408da6    3bc3
                         {disp8} je         _jmp_addr_0x00408dd0                          // 0x00408da8    7426
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408daa    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408db0    3bcb
                         {disp8} je         _jmp_addr_0x00408dd0                          // 0x00408db2    741c
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408db4    8b942420020000
                         push               edx                                           // 0x00408dbb    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408dbc    8b942420020000
                         push               edx                                           // 0x00408dc3    52
                         push               eax                                           // 0x00408dc4    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408dc5    8b8034020000
                         push               eax                                           // 0x00408dcb    50
                         push               0x1                                           // 0x00408dcc    6a01
                         call               ecx                                           // 0x00408dce    ffd1
_jmp_addr_0x00408dd0:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408dd0    8b4670
                         cmp.s              eax, ebx                                      // 0x00408dd3    3bc3
                         {disp8} je         _jmp_addr_0x00408df6                          // 0x00408dd5    741f
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408dd7    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408dde    8b94241c020000
                         push               ecx                                           // 0x00408de5    51
                         push               edx                                           // 0x00408de6    52
                         push               eax                                           // 0x00408de7    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x00408de8    8b8034020000
                         push               eax                                           // 0x00408dee    50
                         push               0x1                                           // 0x00408def    6a01
                         call               _jmp_addr_0x00407f60                          // 0x00408df1    e86af1ffff
_jmp_addr_0x00408df6:    {disp32} mov       byte ptr [data_bytes + 0x286cc8], 0x00        // 0x00408df6    c605c8ccc40000
                         {disp32} jmp       _jmp_addr_0x00408ec8                          // 0x00408dfd    e9c6000000
_jmp_addr_0x00408e02:    cmp.s              edi, ebx                                      // 0x00408e02    3bfb
                         {disp32} je        _jmp_addr_0x00408ec8                          // 0x00408e04    0f84be000000
                         {disp32} mov       al, byte ptr [data_bytes + 0x286cc8]          // 0x00408e0a    a0c8ccc400
                         test               al, al                                        // 0x00408e0f    84c0
                         {disp8} je         _jmp_addr_0x00408e2f                          // 0x00408e11    741c
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408e13    8b4e70
                         cmp.s              ecx, ebx                                      // 0x00408e16    3bcb
                         {disp8} je         _jmp_addr_0x00408e2f                          // 0x00408e18    7415
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408e1a    8b842420020000
                         mov                edx, dword ptr [ecx]                          // 0x00408e21    8b11
                         push               eax                                           // 0x00408e23    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000220]             // 0x00408e24    8b842420020000
                         push               eax                                           // 0x00408e2b    50
                         call               dword ptr [edx + 0x18]                        // 0x00408e2c    ff5218
_jmp_addr_0x00408e2f:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408e2f    8b4670
                         cmp.s              eax, ebx                                      // 0x00408e32    3bc3
                         {disp8} je         _jmp_addr_0x00408e4f                          // 0x00408e34    7419
                         {disp32} mov       edx, dword ptr [eax + 0x0000022c]             // 0x00408e36    8b902c020000
                         xor.s              ecx, ecx                                      // 0x00408e3c    33c9
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf304]          // 0x00408e3e    8a0d0453e800
                         and                ecx, 0x02                                     // 0x00408e44    83e102
                         or.s               edx, ecx                                      // 0x00408e47    0bd1
                         {disp32} mov       dword ptr [eax + 0x0000022c], edx             // 0x00408e49    89902c020000
_jmp_addr_0x00408e4f:    {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408e4f    8b8eb0000000
                         cmp.s              ecx, ebx                                      // 0x00408e55    3bcb
                         {disp8} je         _jmp_addr_0x00408e76                          // 0x00408e57    741d
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408e59    8b4670
                         cmp.s              eax, ebx                                      // 0x00408e5c    3bc3
                         {disp8} je         _jmp_addr_0x00408e76                          // 0x00408e5e    7416
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408e60    8b942420020000
                         push               edx                                           // 0x00408e67    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408e68    8b942420020000
                         push               edx                                           // 0x00408e6f    52
                         push               eax                                           // 0x00408e70    50
                         push               esi                                           // 0x00408e71    56
                         push               0x4                                           // 0x00408e72    6a04
                         call               ecx                                           // 0x00408e74    ffd1
_jmp_addr_0x00408e76:    {disp8} mov        ecx, dword ptr [esi + 0x74]                   // 0x00408e76    8b4e74
                         cmp                dword ptr [esi + 0x000000bc], ecx             // 0x00408e79    398ebc000000
                         {disp8} je         _jmp_addr_0x00408ec8                          // 0x00408e7f    7447
                         cmp.s              ecx, ebx                                      // 0x00408e81    3bcb
                         {disp8} je         _jmp_addr_0x00408ea0                          // 0x00408e83    741b
                         cmp                ecx, dword ptr [esi + 0x70]                   // 0x00408e85    3b4e70
                         {disp8} jne        _jmp_addr_0x00408ea0                          // 0x00408e88    7516
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408e8a    8b942420020000
                         mov                eax, dword ptr [ecx]                          // 0x00408e91    8b01
                         push               ebx                                           // 0x00408e93    53
                         push               edx                                           // 0x00408e94    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000224]             // 0x00408e95    8b942424020000
                         push               edx                                           // 0x00408e9c    52
                         call               dword ptr [eax + 0x20]                        // 0x00408e9d    ff5020
_jmp_addr_0x00408ea0:    {disp32} mov       ecx, dword ptr [esi + 0x000000bc]             // 0x00408ea0    8b8ebc000000
                         cmp.s              ecx, ebx                                      // 0x00408ea6    3bcb
                         {disp8} mov        dword ptr [esi + 0x74], ecx                   // 0x00408ea8    894e74
                         {disp8} je         _jmp_addr_0x00408ec8                          // 0x00408eab    741b
                         cmp                ecx, dword ptr [esi + 0x70]                   // 0x00408ead    3b4e70
                         {disp8} jne        _jmp_addr_0x00408ec8                          // 0x00408eb0    7516
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408eb2    8b942420020000
                         mov                eax, dword ptr [ecx]                          // 0x00408eb9    8b01
                         push               ebx                                           // 0x00408ebb    53
                         push               edx                                           // 0x00408ebc    52
                         {disp32} mov       edx, dword ptr [esp + 0x00000224]             // 0x00408ebd    8b942424020000
                         push               edx                                           // 0x00408ec4    52
                         call               dword ptr [eax + 0x1c]                        // 0x00408ec5    ff501c
_jmp_addr_0x00408ec8:    {disp32} mov       edx, dword ptr [data_bytes + 0x4bf5e0]        // 0x00408ec8    8b15e055e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf5e4]        // 0x00408ece    8b0de455e800
                         mov.s              eax, edx                                      // 0x00408ed4    8bc2
                         sub.s              eax, ecx                                      // 0x00408ed6    2bc1
                         {disp8} jns        _jmp_addr_0x00408edd                          // 0x00408ed8    7903
                         add                eax, 0x10                                     // 0x00408eda    83c010
_jmp_addr_0x00408edd:    cmp.s              eax, ebx                                      // 0x00408edd    3bc3
                         {disp8} je         _jmp_addr_0x00408f02                          // 0x00408edf    7421
                         cmp.s              edx, ecx                                      // 0x00408ee1    3bd1
                         {disp8} jne        _jmp_addr_0x00408ee9                          // 0x00408ee3    7504
                         xor.s              eax, eax                                      // 0x00408ee5    33c0
                         {disp8} jmp        _jmp_addr_0x00408efa                          // 0x00408ee7    eb11
_jmp_addr_0x00408ee9:    {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00e855a0]       // 0x00408ee9    8b048da055e800
                         inc                ecx                                           // 0x00408ef0    41
                         and                ecx, 0x0f                                     // 0x00408ef1    83e10f
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], ecx        // 0x00408ef4    890de455e800
_jmp_addr_0x00408efa:    push               eax                                           // 0x00408efa    50
                         mov.s              ecx, esi                                      // 0x00408efb    8bce
                         call               _jmp_addr_0x00409070                          // 0x00408efd    e86e010000
_jmp_addr_0x00408f02:    {disp32} mov       dword ptr [data_bytes + 0x286ccc], edi        // 0x00408f02    893dccccc400
_jmp_addr_0x00408f08:    {disp8} mov        al, byte ptr [esi + 0x64]                     // 0x00408f08    8a4664
                         test               al, al                                        // 0x00408f0b    84c0
                         {disp8} je         _jmp_addr_0x00408f16                          // 0x00408f0d    7407
                         {disp8} mov        al, byte ptr [esi + 0x65]                     // 0x00408f0f    8a4665
                         test               al, al                                        // 0x00408f12    84c0
                         {disp8} je         _jmp_addr_0x00408f39                          // 0x00408f14    7423
_jmp_addr_0x00408f16:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x00408f16    8b86b0000000
                         test               eax, eax                                      // 0x00408f1c    85c0
                         {disp8} je         _jmp_addr_0x00408f39                          // 0x00408f1e    7419
                         {disp32} mov       ecx, dword ptr [esp + 0x00000220]             // 0x00408f20    8b8c2420020000
                         {disp32} mov       edx, dword ptr [esp + 0x0000021c]             // 0x00408f27    8b94241c020000
                         push               ecx                                           // 0x00408f2e    51
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408f2f    8b4e70
                         push               edx                                           // 0x00408f32    52
                         push               ecx                                           // 0x00408f33    51
                         push               esi                                           // 0x00408f34    56
                         push               0xe                                           // 0x00408f35    6a0e
                         call               eax                                           // 0x00408f37    ffd0
_jmp_addr_0x00408f39:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x00408f39    8b86b0000000
                         test               eax, eax                                      // 0x00408f3f    85c0
                         {disp8} je         _jmp_addr_0x00408f5f                          // 0x00408f41    741c
                         {disp32} mov       edx, dword ptr [esp + 0x00000220]             // 0x00408f43    8b942420020000
                         {disp32} mov       ecx, dword ptr [esp + 0x0000021c]             // 0x00408f4a    8b8c241c020000
                         push               edx                                           // 0x00408f51    52
                         {disp32} mov       edx, dword ptr [esi + 0x000000bc]             // 0x00408f52    8b96bc000000
                         push               ecx                                           // 0x00408f58    51
                         push               edx                                           // 0x00408f59    52
                         push               esi                                           // 0x00408f5a    56
                         push               0x0                                           // 0x00408f5b    6a00
                         call               eax                                           // 0x00408f5d    ffd0
_jmp_addr_0x00408f5f:    pop                edi                                           // 0x00408f5f    5f
                         pop                esi                                           // 0x00408f60    5e
                         pop                ebp                                           // 0x00408f61    5d
                         {disp32} mov       dword ptr [data_bytes + 0x504618], 0x00c38728 // 0x00408f62    c70518a6ec002887c300
                         pop                ebx                                           // 0x00408f6c    5b
                         add                esp, 0x00000208                               // 0x00408f6d    81c408020000
                         ret                0x0014                                        // 0x00408f73    c21400
                         nop                                                              // 0x00408f76    90
                         nop                                                              // 0x00408f77    90
                         nop                                                              // 0x00408f78    90
                         nop                                                              // 0x00408f79    90
                         nop                                                              // 0x00408f7a    90
                         nop                                                              // 0x00408f7b    90
                         nop                                                              // 0x00408f7c    90
                         nop                                                              // 0x00408f7d    90
                         nop                                                              // 0x00408f7e    90
                         nop                                                              // 0x00408f7f    90
_jmp_addr_0x00408f80:    push               ebx                                           // 0x00408f80    53
                         push               esi                                           // 0x00408f81    56
                         push               edi                                           // 0x00408f82    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00408f83    8b7c2410
                         test               edi, edi                                      // 0x00408f87    85ff
                         mov.s              esi, ecx                                      // 0x00408f89    8bf1
                         {disp32} je        _jmp_addr_0x00409063                          // 0x00408f8b    0f84d2000000
                         cmp                edi, 0x0f                                     // 0x00408f91    83ff0f
                         {disp8} jne        _jmp_addr_0x00408fbe                          // 0x00408f94    7528
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00408f96    8b4c2414
                         xor.s              eax, eax                                      // 0x00408f9a    33c0
                         {disp32} mov       ax, word ptr [rdata_bytes + 0xf861c]          // 0x00408f9c    66a11c169a00
                         test               eax, ecx                                      // 0x00408fa2    85c8
                         mov.s              ecx, esi                                      // 0x00408fa4    8bce
                         {disp8} je         _jmp_addr_0x00408fb3                          // 0x00408fa6    740b
                         call               ?SetFocusPrev@SetupBox@@QAEXXZ                // 0x00408fa8    e853810000
                         pop                edi                                           // 0x00408fad    5f
                         pop                esi                                           // 0x00408fae    5e
                         pop                ebx                                           // 0x00408faf    5b
                         ret                0x0008                                        // 0x00408fb0    c20800
_jmp_addr_0x00408fb3:    call               ?SetFocusNext@SetupBox@@QAEXXZ                // 0x00408fb3    e8d8800000
                         pop                edi                                           // 0x00408fb8    5f
                         pop                esi                                           // 0x00408fb9    5e
                         pop                ebx                                           // 0x00408fba    5b
                         ret                0x0008                                        // 0x00408fbb    c20800
_jmp_addr_0x00408fbe:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x00408fbe    8b4e70
                         test               ecx, ecx                                      // 0x00408fc1    85c9
                         {disp8} je         _jmp_addr_0x00409025                          // 0x00408fc3    7460
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf478]        // 0x00408fc5    a17854e800
                         mov                edx, dword ptr [ecx]                          // 0x00408fca    8b11
                         and                eax, 0x000000ff                               // 0x00408fcc    25ff000000
                         push               eax                                           // 0x00408fd1    50
                         push               edi                                           // 0x00408fd2    57
                         call               dword ptr [edx + 0x28]                        // 0x00408fd3    ff5228
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00408fd6    8b4670
                         test               eax, eax                                      // 0x00408fd9    85c0
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00408fdb    8b5c2414
                         {disp8} je         _jmp_addr_0x00409007                          // 0x00408fdf    7426
                         {disp8} mov        cl, byte ptr [esi + 0x64]                     // 0x00408fe1    8a4e64
                         test               cl, cl                                        // 0x00408fe4    84c9
                         {disp8} je         _jmp_addr_0x00408fef                          // 0x00408fe6    7407
                         {disp8} mov        cl, byte ptr [esi + 0x65]                     // 0x00408fe8    8a4e65
                         test               cl, cl                                        // 0x00408feb    84c9
                         {disp8} je         _jmp_addr_0x00409007                          // 0x00408fed    7418
_jmp_addr_0x00408fef:    {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00408fef    8b8eb0000000
                         test               ecx, ecx                                      // 0x00408ff5    85c9
                         {disp8} je         _jmp_addr_0x00409007                          // 0x00408ff7    740e
                         {disp32} mov       edx, dword ptr [eax + 0x00000234]             // 0x00408ff9    8b9034020000
                         push               ebx                                           // 0x00408fff    53
                         push               edi                                           // 0x00409000    57
                         push               eax                                           // 0x00409001    50
                         push               edx                                           // 0x00409002    52
                         push               0x2                                           // 0x00409003    6a02
                         call               ecx                                           // 0x00409005    ffd1
_jmp_addr_0x00409007:    {disp8} mov        esi, dword ptr [esi + 0x70]                   // 0x00409007    8b7670
                         test               esi, esi                                      // 0x0040900a    85f6
                         {disp8} je         _jmp_addr_0x00409063                          // 0x0040900c    7455
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]             // 0x0040900e    8b8634020000
                         push               ebx                                           // 0x00409014    53
                         push               edi                                           // 0x00409015    57
                         push               esi                                           // 0x00409016    56
                         push               eax                                           // 0x00409017    50
                         push               0x2                                           // 0x00409018    6a02
                         call               _jmp_addr_0x00407f60                          // 0x0040901a    e841efffff
                         pop                edi                                           // 0x0040901f    5f
                         pop                esi                                           // 0x00409020    5e
                         pop                ebx                                           // 0x00409021    5b
                         ret                0x0008                                        // 0x00409022    c20800
_jmp_addr_0x00409025:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x00409025    8b86b0000000
                         test               eax, eax                                      // 0x0040902b    85c0
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0040902d    8b5c2414
                         {disp8} je         _jmp_addr_0x00409050                          // 0x00409031    741d
                         {disp8} mov        cl, byte ptr [esi + 0x64]                     // 0x00409033    8a4e64
                         test               cl, cl                                        // 0x00409036    84c9
                         {disp8} je         _jmp_addr_0x00409041                          // 0x00409038    7407
                         {disp8} mov        cl, byte ptr [esi + 0x65]                     // 0x0040903a    8a4e65
                         test               cl, cl                                        // 0x0040903d    84c9
                         {disp8} je         _jmp_addr_0x00409050                          // 0x0040903f    740f
_jmp_addr_0x00409041:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x00409041    8b0d20cdc400
                         push               ebx                                           // 0x00409047    53
                         push               edi                                           // 0x00409048    57
                         push               0x0                                           // 0x00409049    6a00
                         push               ecx                                           // 0x0040904b    51
                         push               0x2                                           // 0x0040904c    6a02
                         call               eax                                           // 0x0040904e    ffd0
_jmp_addr_0x00409050:    {disp8} mov        edx, dword ptr [esi + 0x70]                   // 0x00409050    8b5670
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x00409053    a120cdc400
                         push               ebx                                           // 0x00409058    53
                         push               edi                                           // 0x00409059    57
                         push               edx                                           // 0x0040905a    52
                         push               eax                                           // 0x0040905b    50
                         push               0x2                                           // 0x0040905c    6a02
                         call               _jmp_addr_0x00407f60                          // 0x0040905e    e8fdeeffff
_jmp_addr_0x00409063:    pop                edi                                           // 0x00409063    5f
                         pop                esi                                           // 0x00409064    5e
                         pop                ebx                                           // 0x00409065    5b
                         ret                0x0008                                        // 0x00409066    c20800
                         nop                                                              // 0x00409069    90
                         nop                                                              // 0x0040906a    90
                         nop                                                              // 0x0040906b    90
                         nop                                                              // 0x0040906c    90
                         nop                                                              // 0x0040906d    90
                         nop                                                              // 0x0040906e    90
                         nop                                                              // 0x0040906f    90
_jmp_addr_0x00409070:    push               esi                                           // 0x00409070    56
                         push               edi                                           // 0x00409071    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00409072    8b7c240c
                         test               edi, edi                                      // 0x00409076    85ff
                         mov.s              esi, ecx                                      // 0x00409078    8bf1
                         {disp32} je        _jmp_addr_0x0040912f                          // 0x0040907a    0f84af000000
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x00409080    8b4670
                         test               eax, eax                                      // 0x00409083    85c0
                         {disp8} je         _jmp_addr_0x004090d9                          // 0x00409085    7452
                         {disp8} mov        cl, byte ptr [esi + 0x64]                     // 0x00409087    8a4e64
                         test               cl, cl                                        // 0x0040908a    84c9
                         {disp8} je         _jmp_addr_0x00409095                          // 0x0040908c    7407
                         {disp8} mov        cl, byte ptr [esi + 0x65]                     // 0x0040908e    8a4e65
                         test               cl, cl                                        // 0x00409091    84c9
                         {disp8} je         _jmp_addr_0x004090ae                          // 0x00409093    7419
_jmp_addr_0x00409095:    {disp32} mov       ecx, dword ptr [esi + 0x000000b0]             // 0x00409095    8b8eb0000000
                         test               ecx, ecx                                      // 0x0040909b    85c9
                         {disp8} je         _jmp_addr_0x004090ae                          // 0x0040909d    740f
                         push               0x0                                           // 0x0040909f    6a00
                         push               edi                                           // 0x004090a1    57
                         push               eax                                           // 0x004090a2    50
                         {disp32} mov       eax, dword ptr [eax + 0x00000234]             // 0x004090a3    8b8034020000
                         push               eax                                           // 0x004090a9    50
                         push               0x8                                           // 0x004090aa    6a08
                         call               ecx                                           // 0x004090ac    ffd1
_jmp_addr_0x004090ae:    {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x004090ae    8b4670
                         test               eax, eax                                      // 0x004090b1    85c0
                         {disp8} je         _jmp_addr_0x004090c7                          // 0x004090b3    7412
                         {disp32} mov       ecx, dword ptr [eax + 0x00000234]             // 0x004090b5    8b8834020000
                         push               0x0                                           // 0x004090bb    6a00
                         push               edi                                           // 0x004090bd    57
                         push               eax                                           // 0x004090be    50
                         push               ecx                                           // 0x004090bf    51
                         push               0x8                                           // 0x004090c0    6a08
                         call               _jmp_addr_0x00407f60                          // 0x004090c2    e899eeffff
_jmp_addr_0x004090c7:    {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x004090c7    8b4e70
                         test               ecx, ecx                                      // 0x004090ca    85c9
                         {disp8} je         _jmp_addr_0x0040912f                          // 0x004090cc    7461
                         mov                edx, dword ptr [ecx]                          // 0x004090ce    8b11
                         push               edi                                           // 0x004090d0    57
                         call               dword ptr [edx + 0x2c]                        // 0x004090d1    ff522c
                         pop                edi                                           // 0x004090d4    5f
                         pop                esi                                           // 0x004090d5    5e
                         ret                0x0004                                        // 0x004090d6    c20400
_jmp_addr_0x004090d9:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x004090d9    8b86b0000000
                         test               eax, eax                                      // 0x004090df    85c0
                         {disp8} je         _jmp_addr_0x00409101                          // 0x004090e1    741e
                         {disp8} mov        cl, byte ptr [esi + 0x64]                     // 0x004090e3    8a4e64
                         test               cl, cl                                        // 0x004090e6    84c9
                         {disp8} je         _jmp_addr_0x004090f1                          // 0x004090e8    7407
                         {disp8} mov        cl, byte ptr [esi + 0x65]                     // 0x004090ea    8a4e65
                         test               cl, cl                                        // 0x004090ed    84c9
                         {disp8} je         _jmp_addr_0x00409101                          // 0x004090ef    7410
_jmp_addr_0x004090f1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286d20]        // 0x004090f1    8b0d20cdc400
                         push               0x0                                           // 0x004090f7    6a00
                         push               edi                                           // 0x004090f9    57
                         push               0x0                                           // 0x004090fa    6a00
                         push               ecx                                           // 0x004090fc    51
                         push               0x8                                           // 0x004090fd    6a08
                         call               eax                                           // 0x004090ff    ffd0
_jmp_addr_0x00409101:    {disp32} mov       eax, dword ptr [esi + 0x000000b0]             // 0x00409101    8b86b0000000
                         test               eax, eax                                      // 0x00409107    85c0
                         {disp8} je         _jmp_addr_0x0040911b                          // 0x00409109    7410
                         cmp                edi, 0x1b                                     // 0x0040910b    83ff1b
                         {disp8} jne        _jmp_addr_0x0040911b                          // 0x0040910e    750b
                         push               0x0                                           // 0x00409110    6a00
                         push               edi                                           // 0x00409112    57
                         push               0x0                                           // 0x00409113    6a00
                         push               0x0                                           // 0x00409115    6a00
                         push               0xf                                           // 0x00409117    6a0f
                         call               eax                                           // 0x00409119    ffd0
_jmp_addr_0x0040911b:    {disp8} mov        edx, dword ptr [esi + 0x70]                   // 0x0040911b    8b5670
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d20]        // 0x0040911e    a120cdc400
                         push               0x0                                           // 0x00409123    6a00
                         push               edi                                           // 0x00409125    57
                         push               edx                                           // 0x00409126    52
                         push               eax                                           // 0x00409127    50
                         push               0x8                                           // 0x00409128    6a08
                         call               _jmp_addr_0x00407f60                          // 0x0040912a    e831eeffff
_jmp_addr_0x0040912f:    pop                edi                                           // 0x0040912f    5f
                         pop                esi                                           // 0x00409130    5e
                         ret                0x0004                                        // 0x00409131    c20400
                         nop                                                              // 0x00409134    90
                         nop                                                              // 0x00409135    90
                         nop                                                              // 0x00409136    90
                         nop                                                              // 0x00409137    90
                         nop                                                              // 0x00409138    90
                         nop                                                              // 0x00409139    90
                         nop                                                              // 0x0040913a    90
                         nop                                                              // 0x0040913b    90
                         nop                                                              // 0x0040913c    90
                         nop                                                              // 0x0040913d    90
                         nop                                                              // 0x0040913e    90
                         nop                                                              // 0x0040913f    90
@SetFocusControl__8SetupBoxFP12SetupControl@12:    push               esi                                           // 0x00409140    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00409141    8b742408
                         push               edi                                           // 0x00409145    57
                         mov.s              edi, ecx                                      // 0x00409146    8bf9
                         {disp8} mov        ecx, dword ptr [edi + 0x70]                   // 0x00409148    8b4f70
                         cmp.s              ecx, esi                                      // 0x0040914b    3bce
                         {disp8} je         _jmp_addr_0x0040916a                          // 0x0040914d    741b
                         test               ecx, ecx                                      // 0x0040914f    85c9
                         {disp8} je         _jmp_addr_0x0040915a                          // 0x00409151    7407
                         mov                eax, dword ptr [ecx]                          // 0x00409153    8b01
                         push               0x0                                           // 0x00409155    6a00
                         call               dword ptr [eax + 0xc]                         // 0x00409157    ff500c
_jmp_addr_0x0040915a:    test               esi, esi                                      // 0x0040915a    85f6
                         {disp8} mov        dword ptr [edi + 0x70], esi                   // 0x0040915c    897770
                         {disp8} je         _jmp_addr_0x0040916a                          // 0x0040915f    7409
                         mov                edx, dword ptr [esi]                          // 0x00409161    8b16
                         push               0x1                                           // 0x00409163    6a01
                         mov.s              ecx, esi                                      // 0x00409165    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00409167    ff520c
_jmp_addr_0x0040916a:    pop                edi                                           // 0x0040916a    5f
                         pop                esi                                           // 0x0040916b    5e
                         ret                0x0004                                        // 0x0040916c    c20400
                         nop                                                              // 0x0040916f    90
                         ret                0x0008                                        // 0x00409170    c20800
                         nop                                                              // 0x00409173    90
                         nop                                                              // 0x00409174    90
                         nop                                                              // 0x00409175    90
                         nop                                                              // 0x00409176    90
                         nop                                                              // 0x00409177    90
                         nop                                                              // 0x00409178    90
                         nop                                                              // 0x00409179    90
                         nop                                                              // 0x0040917a    90
                         nop                                                              // 0x0040917b    90
                         nop                                                              // 0x0040917c    90
                         nop                                                              // 0x0040917d    90
                         nop                                                              // 0x0040917e    90
                         nop                                                              // 0x0040917f    90
?SetFocus@SetupControl@@UAEX_N@Z:
@SetFocus__12SetupControlFb@9:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00409180    8a442404
                         test               al, al                                        // 0x00409184    84c0
                         push               esi                                           // 0x00409186    56
                         mov.s              esi, ecx                                      // 0x00409187    8bf1
                         {disp32} mov       byte ptr [esi + 0x00000228], al               // 0x00409189    888628020000
                         {disp8} je         _jmp_addr_0x004091a9                          // 0x0040918f    7418
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00409191    8b4604
                         test               eax, eax                                      // 0x00409194    85c0
                         {disp8} je         _jmp_addr_0x004091a9                          // 0x00409196    7411
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00409198    e833edffff
                         cmp                dword ptr [esi + 0x00000234], eax             // 0x0040919d    398634020000
                         {disp8} jne        _jmp_addr_0x004091a9                          // 0x004091a3    7504
                         mov                al, 0x01                                      // 0x004091a5    b001
                         {disp8} jmp        _jmp_addr_0x004091ab                          // 0x004091a7    eb02
_jmp_addr_0x004091a9:    xor.s              al, al                                        // 0x004091a9    32c0
_jmp_addr_0x004091ab:    {disp32} mov       edx, dword ptr [data_bytes + 0x286d00]        // 0x004091ab    8b1500cdc400
                         {disp8} mov        byte ptr [esp + 0x08], al                     // 0x004091b1    88442408
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x004091b5    8b742408
                         xor.s              ecx, ecx                                      // 0x004091b9    33c9
                         and                esi, 0x000000ff                               // 0x004091bb    81e6ff000000
                         test               edx, edx                                      // 0x004091c1    85d2
                         setne              cl                                            // 0x004091c3    0f95c1
                         cmp.s              ecx, esi                                      // 0x004091c6    3bce
                         {disp8} je         _jmp_addr_0x004091ff                          // 0x004091c8    7435
                         test               al, al                                        // 0x004091ca    84c0
                         {disp8} je         _jmp_addr_0x004091ea                          // 0x004091cc    741c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf078]        // 0x004091ce    8b157850e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004091d4    8b0d04c1e800
                         push               edx                                           // 0x004091da    52
                         call               @Activate__Q24slim5TbIMEFPv@12                // 0x004091db    e820ab3e00
                         {disp32} mov       dword ptr [data_bytes + 0x286d00], esi        // 0x004091e0    893500cdc400
                         pop                esi                                           // 0x004091e6    5e
                         ret                0x0004                                        // 0x004091e7    c20400
_jmp_addr_0x004091ea:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x004091ea    8b0d04c1e800
                         call               @UnActivate__Q24slim5TbIMEFv@4                // 0x004091f0    e81bab3e00
                         {disp32} mov       dword ptr [data_bytes + 0x286d00], 0x00000000 // 0x004091f5    c70500cdc40000000000
_jmp_addr_0x004091ff:    pop                esi                                           // 0x004091ff    5e
                         ret                0x0004                                        // 0x00409200    c20400
                         nop                                                              // 0x00409203    90
                         nop                                                              // 0x00409204    90
                         nop                                                              // 0x00409205    90
                         nop                                                              // 0x00409206    90
                         nop                                                              // 0x00409207    90
                         nop                                                              // 0x00409208    90
                         nop                                                              // 0x00409209    90
                         nop                                                              // 0x0040920a    90
                         nop                                                              // 0x0040920b    90
                         nop                                                              // 0x0040920c    90
                         nop                                                              // 0x0040920d    90
                         nop                                                              // 0x0040920e    90
                         nop                                                              // 0x0040920f    90
?SetToolTip@SetupControl@@QAEXK@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00409210    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x00409214    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x00409220                          // 0x0040921a    7304
                         test               eax, eax                                      // 0x0040921c    85c0
                         {disp8} ja         _jmp_addr_0x00409231                          // 0x0040921e    7711
_jmp_addr_0x00409220:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00409220    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00409225    8b4008
                         {disp32} mov       dword ptr [ecx + 0x00000224], eax             // 0x00409228    898124020000
                         ret                0x0004                                        // 0x0040922e    c20400
_jmp_addr_0x00409231:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x00409231    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00409234    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x00409239    8d0490
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0040923c    8b5008
                         {disp32} mov       dword ptr [ecx + 0x00000224], edx             // 0x0040923f    899124020000
                         ret                0x0004                                        // 0x00409245    c20400
                         nop                                                              // 0x00409248    90
                         nop                                                              // 0x00409249    90
                         nop                                                              // 0x0040924a    90
                         nop                                                              // 0x0040924b    90
                         nop                                                              // 0x0040924c    90
                         nop                                                              // 0x0040924d    90
                         nop                                                              // 0x0040924e    90
                         nop                                                              // 0x0040924f    90
??0SetupControl@@QAE@HHHHHPA_W@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00409250    8b442418
                         push               ebx                                           // 0x00409254    53
                         push               esi                                           // 0x00409255    56
                         mov.s              esi, ecx                                      // 0x00409256    8bf1
                         push               eax                                           // 0x00409258    50
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                   // 0x00409259    8d4e24
                         xor.s              ebx, ebx                                      // 0x0040925c    33db
                         push               ecx                                           // 0x0040925e    51
                         mov                dword ptr [esi], 0x008ab27c                   // 0x0040925f    c7067cb28a00
                         {disp32} mov       byte ptr [esi + 0x0000022b], bl               // 0x00409265    889e2b020000
                         {disp32} mov       dword ptr [esi + 0x00000224], ebx             // 0x0040926b    899e24020000
                         call               _wcscpy                                       // 0x00409271    e840cd3b00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00409276    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0040927a    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0040927e    8b4c241c
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x00409282    895618
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00409285    8b542420
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00409289    894608
                         add.s              eax, edx                                      // 0x0040928c    03c2
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0040928e    894610
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00409291    8b442424
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x00409295    894e0c
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00409298    895e20
                         add.s              ecx, eax                                      // 0x0040929b    03c8
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x0040929d    894e14
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d1c]        // 0x004092a0    8b0d1ccdc400
                         {disp32} mov       dword ptr [esi + 0x00000234], ecx             // 0x004092a6    898e34020000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x286d1c]        // 0x004092ac    8b151ccdc400
                         {disp8} mov        eax, dword ptr [edx + 0x6c]                   // 0x004092b2    8b426c
                         {disp32} mov       dword ptr [esi + 0x00000230], eax             // 0x004092b5    898630020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d1c]        // 0x004092bb    8b0d1ccdc400
                         {disp8} mov        dword ptr [ecx + 0x6c], esi                   // 0x004092c1    89716c
                         add                esp, 0x08                                     // 0x004092c4    83c408
                         {disp32} mov       byte ptr [esi + 0x00000229], bl               // 0x004092c7    889e29020000
                         {disp32} mov       byte ptr [esi + 0x00000228], bl               // 0x004092cd    889e28020000
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x004092d3    895e04
                         {disp8} mov        dword ptr [esi + 0x1c], ebx                   // 0x004092d6    895e1c
                         {disp32} mov       dword ptr [esi + 0x00000238], ebx             // 0x004092d9    899e38020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], 0x01             // 0x004092df    c6862a02000001
                         mov.s              eax, esi                                      // 0x004092e6    8bc6
                         pop                esi                                           // 0x004092e8    5e
                         pop                ebx                                           // 0x004092e9    5b
                         ret                0x0018                                        // 0x004092ea    c21800
                         nop                                                              // 0x004092ed    90
                         nop                                                              // 0x004092ee    90
                         nop                                                              // 0x004092ef    90
?SetToolTip@SetupControl@@QAEXPA_W@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004092f0    8b442404
                         {disp32} mov       dword ptr [ecx + 0x00000224], eax             // 0x004092f4    898124020000
                         ret                0x0004                                        // 0x004092fa    c20400
                         nop                                                              // 0x004092fd    90
                         nop                                                              // 0x004092fe    90
                         nop                                                              // 0x004092ff    90
?Hide@SetupControl@@UAEX_N@Z:
                         {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00409300    8a442404
                         {disp32} mov       byte ptr [ecx + 0x00000229], al               // 0x00409304    888129020000
                         ret                0x0004                                        // 0x0040930a    c20400
                         nop                                                              // 0x0040930d    90
                         nop                                                              // 0x0040930e    90
                         nop                                                              // 0x0040930f    90
?HitTest@SetupControl@@UAE_NHH@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00409310    8b542404
                         cmp                edx, dword ptr [ecx + 0x08]                   // 0x00409314    3b5108
                         {disp8} jl         _jmp_addr_0x00409334                          // 0x00409317    7c1b
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00409319    8b442408
                         cmp                eax, dword ptr [ecx + 0x0c]                   // 0x0040931d    3b410c
                         {disp8} jl         _jmp_addr_0x00409334                          // 0x00409320    7c12
                         cmp                edx, dword ptr [ecx + 0x10]                   // 0x00409322    3b5110
                         {disp8} jge        _jmp_addr_0x00409334                          // 0x00409325    7d0d
                         cmp                eax, dword ptr [ecx + 0x14]                   // 0x00409327    3b4114
                         {disp8} jge        _jmp_addr_0x00409334                          // 0x0040932a    7d08
                         mov                eax, 0x00000001                               // 0x0040932c    b801000000
                         ret                0x0008                                        // 0x00409331    c20800
_jmp_addr_0x00409334:    xor.s              eax, eax                                      // 0x00409334    33c0
                         ret                0x0008                                        // 0x00409336    c20800
                         nop                                                              // 0x00409339    90
                         nop                                                              // 0x0040933a    90
                         nop                                                              // 0x0040933b    90
                         nop                                                              // 0x0040933c    90
                         nop                                                              // 0x0040933d    90
                         nop                                                              // 0x0040933e    90
                         nop                                                              // 0x0040933f    90
?Drag@SetupControl@@UAEXHH@Z:
                         ret                0x0008                                        // 0x00409340    c20800
                         nop                                                              // 0x00409343    90
                         nop                                                              // 0x00409344    90
                         nop                                                              // 0x00409345    90
                         nop                                                              // 0x00409346    90
                         nop                                                              // 0x00409347    90
                         nop                                                              // 0x00409348    90
                         nop                                                              // 0x00409349    90
                         nop                                                              // 0x0040934a    90
                         nop                                                              // 0x0040934b    90
                         nop                                                              // 0x0040934c    90
                         nop                                                              // 0x0040934d    90
                         nop                                                              // 0x0040934e    90
                         nop                                                              // 0x0040934f    90
?MouseDown@SetupControl@@UAEXHH_N@Z:
                         ret                0x000c                                        // 0x00409350    c20c00
                         nop                                                              // 0x00409353    90
                         nop                                                              // 0x00409354    90
                         nop                                                              // 0x00409355    90
                         nop                                                              // 0x00409356    90
                         nop                                                              // 0x00409357    90
                         nop                                                              // 0x00409358    90
                         nop                                                              // 0x00409359    90
                         nop                                                              // 0x0040935a    90
                         nop                                                              // 0x0040935b    90
                         nop                                                              // 0x0040935c    90
                         nop                                                              // 0x0040935d    90
                         nop                                                              // 0x0040935e    90
                         nop                                                              // 0x0040935f    90
?MouseUp@SetupControl@@UAEXHH_N@Z:
                         ret                0x000c                                        // 0x00409360    c20c00
                         nop                                                              // 0x00409363    90
                         nop                                                              // 0x00409364    90
                         nop                                                              // 0x00409365    90
                         nop                                                              // 0x00409366    90
                         nop                                                              // 0x00409367    90
                         nop                                                              // 0x00409368    90
                         nop                                                              // 0x00409369    90
                         nop                                                              // 0x0040936a    90
                         nop                                                              // 0x0040936b    90
                         nop                                                              // 0x0040936c    90
                         nop                                                              // 0x0040936d    90
                         nop                                                              // 0x0040936e    90
                         nop                                                              // 0x0040936f    90
?Click@SetupControl@@UAEXHH@Z:
                         ret                0x0008                                        // 0x00409370    c20800
                         nop                                                              // 0x00409373    90
                         nop                                                              // 0x00409374    90
                         nop                                                              // 0x00409375    90
                         nop                                                              // 0x00409376    90
                         nop                                                              // 0x00409377    90
                         nop                                                              // 0x00409378    90
                         nop                                                              // 0x00409379    90
                         nop                                                              // 0x0040937a    90
                         nop                                                              // 0x0040937b    90
                         nop                                                              // 0x0040937c    90
                         nop                                                              // 0x0040937d    90
                         nop                                                              // 0x0040937e    90
                         nop                                                              // 0x0040937f    90
?KeyDown@SetupControl@@UAEXW4LHKey@@W4LHKeyMod@@@Z:
                         ret                0x0008                                        // 0x00409380    c20800
                         nop                                                              // 0x00409383    90
                         nop                                                              // 0x00409384    90
                         nop                                                              // 0x00409385    90
                         nop                                                              // 0x00409386    90
                         nop                                                              // 0x00409387    90
                         nop                                                              // 0x00409388    90
                         nop                                                              // 0x00409389    90
                         nop                                                              // 0x0040938a    90
                         nop                                                              // 0x0040938b    90
                         nop                                                              // 0x0040938c    90
                         nop                                                              // 0x0040938d    90
                         nop                                                              // 0x0040938e    90
                         nop                                                              // 0x0040938f    90
?Char@SetupControl@@UAEXH@Z:
                         ret                0x0004                                        // 0x00409390    c20400
                         nop                                                              // 0x00409393    90
                         nop                                                              // 0x00409394    90
                         nop                                                              // 0x00409395    90
                         nop                                                              // 0x00409396    90
                         nop                                                              // 0x00409397    90
                         nop                                                              // 0x00409398    90
                         nop                                                              // 0x00409399    90
                         nop                                                              // 0x0040939a    90
                         nop                                                              // 0x0040939b    90
                         nop                                                              // 0x0040939c    90
                         nop                                                              // 0x0040939d    90
                         nop                                                              // 0x0040939e    90
                         nop                                                              // 0x0040939f    90
??_GSetupControl@@UAEPAXI@Z:
                         push               esi                                           // 0x004093a0    56
                         mov.s              esi, ecx                                      // 0x004093a1    8bf1
                         call               ??1SetupControl@@UAE@XZ                       // 0x004093a3    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x004093a8    f644240801
                         {disp8} je         _jmp_addr_0x004093b8                          // 0x004093ad    7409
                         push               esi                                           // 0x004093af    56
                         call               ??3@YAXPAX@Z                                  // 0x004093b0    e8e35a3a00
                         add                esp, 0x04                                     // 0x004093b5    83c404
_jmp_addr_0x004093b8:    mov.s              eax, esi                                      // 0x004093b8    8bc6
                         pop                esi                                           // 0x004093ba    5e
                         ret                0x0004                                        // 0x004093bb    c20400
                         nop                                                              // 0x004093be    90
                         nop                                                              // 0x004093bf    90
??1SetupControl@@UAE@XZ  :    push               esi                                           // 0x004093c0    56
                         mov.s              esi, ecx                                      // 0x004093c1    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000234]             // 0x004093c3    8b8e34020000
                         mov                dword ptr [esi], 0x008ab27c                   // 0x004093c9    c7067cb28a00
                         cmp                dword ptr [ecx + 0x70], esi                   // 0x004093cf    397170
                         {disp8} jne        _jmp_addr_0x004093db                          // 0x004093d2    7507
                         push               0x0                                           // 0x004093d4    6a00
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x004093d6    e865fdffff
_jmp_addr_0x004093db:    {disp32} mov       eax, dword ptr [esi + 0x00000234]             // 0x004093db    8b8634020000
                         cmp                dword ptr [eax + 0x74], esi                   // 0x004093e1    397074
                         {disp8} jne        _jmp_addr_0x004093ed                          // 0x004093e4    7507
                         {disp8} mov        dword ptr [eax + 0x74], 0x00000000            // 0x004093e6    c7407400000000
_jmp_addr_0x004093ed:    {disp32} mov       ecx, dword ptr [esi + 0x00000234]             // 0x004093ed    8b8e34020000
                         {disp8} mov        eax, dword ptr [ecx + 0x6c]                   // 0x004093f3    8b416c
                         cmp.s              eax, esi                                      // 0x004093f6    3bc6
                         {disp8} jne        _jmp_addr_0x00409405                          // 0x004093f8    750b
                         {disp32} mov       eax, dword ptr [esi + 0x00000230]             // 0x004093fa    8b8630020000
                         {disp8} mov        dword ptr [ecx + 0x6c], eax                   // 0x00409400    89416c
                         pop                esi                                           // 0x00409403    5e
                         ret                                                              // 0x00409404    c3
_jmp_addr_0x00409405:    test               eax, eax                                      // 0x00409405    85c0
                         {disp8} je         _jmp_addr_0x0040942b                          // 0x00409407    7422
_jmp_addr_0x00409409:    {disp32} mov       ecx, dword ptr [eax + 0x00000230]             // 0x00409409    8b8830020000
                         test               ecx, ecx                                      // 0x0040940f    85c9
                         {disp8} je         _jmp_addr_0x0040942b                          // 0x00409411    7418
                         cmp.s              ecx, esi                                      // 0x00409413    3bce
                         {disp8} je         _jmp_addr_0x0040941f                          // 0x00409415    7408
                         mov.s              eax, ecx                                      // 0x00409417    8bc1
                         test               eax, eax                                      // 0x00409419    85c0
                         {disp8} jne        _jmp_addr_0x00409409                          // 0x0040941b    75ec
                         pop                esi                                           // 0x0040941d    5e
                         ret                                                              // 0x0040941e    c3
_jmp_addr_0x0040941f:    {disp32} mov       ecx, dword ptr [esi + 0x00000230]             // 0x0040941f    8b8e30020000
                         {disp32} mov       dword ptr [eax + 0x00000230], ecx             // 0x00409425    898830020000
_jmp_addr_0x0040942b:    pop                esi                                           // 0x0040942b    5e
                         ret                                                              // 0x0040942c    c3
                         nop                                                              // 0x0040942d    90
                         nop                                                              // 0x0040942e    90
                         nop                                                              // 0x0040942f    90
_Draw__15SetupStaticTextFbb:
                         sub                esp, 0x08                                     // 0x00409430    83ec08
                         push               esi                                           // 0x00409433    56
                         mov.s              esi, ecx                                      // 0x00409434    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000240]             // 0x00409436    8b8640020000
                         push               edi                                           // 0x0040943c    57
                         mov                edi, 0x0000000a                               // 0x0040943d    bf0a000000
                         cmp.s              eax, edi                                      // 0x00409442    3bc7
                         {disp8} jge        _jmp_addr_0x00409467                          // 0x00409444    7d21
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x00409446    8b4620
                         test               eax, eax                                      // 0x00409449    85c0
                         {disp8} jne        _jmp_addr_0x00409461                          // 0x0040944b    7514
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]             // 0x0040944d    8b8634020000
                         test               eax, eax                                      // 0x00409453    85c0
                         {disp8} je         _jmp_addr_0x0040945f                          // 0x00409455    7408
                         {disp32} mov       eax, dword ptr [eax + 0x000000ac]             // 0x00409457    8b80ac000000
                         {disp8} jmp        _jmp_addr_0x00409461                          // 0x0040945d    eb02
_jmp_addr_0x0040945f:    mov.s              eax, edi                                      // 0x0040945f    8bc7
_jmp_addr_0x00409461:    {disp32} mov       dword ptr [esi + 0x00000240], eax             // 0x00409461    898640020000
_jmp_addr_0x00409467:    {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x00409467    8b4620
                         test               eax, eax                                      // 0x0040946a    85c0
                         {disp8} je         _jmp_addr_0x00409472                          // 0x0040946c    7404
                         mov.s              ecx, eax                                      // 0x0040946e    8bc8
                         {disp8} jmp        _jmp_addr_0x00409486                          // 0x00409470    eb14
_jmp_addr_0x00409472:    {disp32} mov       ecx, dword ptr [esi + 0x00000234]             // 0x00409472    8b8e34020000
                         test               ecx, ecx                                      // 0x00409478    85c9
                         {disp8} je         _jmp_addr_0x00409484                          // 0x0040947a    7408
                         {disp32} mov       ecx, dword ptr [ecx + 0x000000ac]             // 0x0040947c    8b89ac000000
                         {disp8} jmp        _jmp_addr_0x00409486                          // 0x00409482    eb02
_jmp_addr_0x00409484:    mov.s              ecx, edi                                      // 0x00409484    8bcf
_jmp_addr_0x00409486:    cmp                dword ptr [esi + 0x00000240], ecx             // 0x00409486    398e40020000
                         push               ebx                                           // 0x0040948c    53
                         push               ebp                                           // 0x0040948d    55
                         {disp32} je        _jmp_addr_0x0040955e                          // 0x0040948e    0f84ca000000
                         test               eax, eax                                      // 0x00409494    85c0
                         {disp8} jne        _jmp_addr_0x004094ac                          // 0x00409496    7514
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]             // 0x00409498    8b8634020000
                         test               eax, eax                                      // 0x0040949e    85c0
                         {disp8} je         _jmp_addr_0x004094aa                          // 0x004094a0    7408
                         {disp32} mov       eax, dword ptr [eax + 0x000000ac]             // 0x004094a2    8b80ac000000
                         {disp8} jmp        _jmp_addr_0x004094ac                          // 0x004094a8    eb02
_jmp_addr_0x004094aa:    mov.s              eax, edi                                      // 0x004094aa    8bc7
_jmp_addr_0x004094ac:    cmp.s              eax, edi                                      // 0x004094ac    3bc7
                         {disp32} mov       dword ptr [esi + 0x00000240], eax             // 0x004094ae    898640020000
                         {disp32} jle       _jmp_addr_0x0040955e                          // 0x004094b4    0f8ea4000000
_jmp_addr_0x004094ba:    {disp32} mov       eax, dword ptr [esi + 0x0000023c]             // 0x004094ba    8b863c020000
                         cmp                eax, 0x03                                     // 0x004094c0    83f803
                         {disp8} jl         _jmp_addr_0x0040950f                          // 0x004094c3    7c4a
                         cmp                eax, 0x04                                     // 0x004094c5    83f804
                         {disp8} jg         _jmp_addr_0x0040950f                          // 0x004094c8    7f45
                         {disp32} mov       eax, dword ptr [esi + 0x00000240]             // 0x004094ca    8b8640020000
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x004094d0    8b4e0c
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                   // 0x004094d3    8b5e14
                         push               eax                                           // 0x004094d6    50
                         {disp8} lea        edx, dword ptr [esi + 0x24]                   // 0x004094d7    8d5624
                         push               edx                                           // 0x004094da    52
                         push               0x0                                           // 0x004094db    6a00
                         push               ecx                                           // 0x004094dd    51
                         add.s              eax, ebx                                      // 0x004094de    03c3
                         push               eax                                           // 0x004094e0    50
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x004094e1    8b4610
                         push               eax                                           // 0x004094e4    50
                         push               ecx                                           // 0x004094e5    51
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x004094e6    8b4e08
                         push               ecx                                           // 0x004094e9    51
                         call               ?GetTextHeight@SetupThing@@SAMHHHHH_NPA_WH@Z  // 0x004094ea    e8a1810000
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x004094ef    8b460c
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x004094f2    8b5614
                         sub.s              edx, eax                                      // 0x004094f5    2bd0
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x004094f7    89542430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004094fb    db442430
                         add                esp, 0x20                                     // 0x004094ff    83c420
                         fxch               st(1)                                         // 0x00409502    d9c9
                         fcompp                                                           // 0x00409504    ded9
                         fnstsw             ax                                            // 0x00409506    dfe0
                         test               ah, 0x41                                      // 0x00409508    f6c441
                         {disp8} jne        _jmp_addr_0x0040955e                          // 0x0040950b    7551
                         {disp8} jmp        _jmp_addr_0x00409547                          // 0x0040950d    eb38
_jmp_addr_0x0040950f:    {disp32} fild      dword ptr [esi + 0x00000240]                  // 0x0040950f    db8640020000
                         push               0x3f800000                                    // 0x00409515    680000803f
                         push               0x0                                           // 0x0040951a    6a00
                         push               ecx                                           // 0x0040951c    51
                         {disp8} lea        eax, dword ptr [esi + 0x24]                   // 0x0040951d    8d4624
                         fstp               dword ptr [esp]                               // 0x00409520    d91c24
                         push               eax                                           // 0x00409523    50
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x00409524    e8f7810000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00409529    8b4608
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0040952c    8b4e10
                         sub.s              ecx, eax                                      // 0x0040952f    2bc8
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00409531    894c2420
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00409535    db442420
                         add                esp, 0x10                                     // 0x00409539    83c410
                         fxch               st(1)                                         // 0x0040953c    d9c9
                         fcompp                                                           // 0x0040953e    ded9
                         fnstsw             ax                                            // 0x00409540    dfe0
                         test               ah, 0x41                                      // 0x00409542    f6c441
                         {disp8} jne        _jmp_addr_0x0040955e                          // 0x00409545    7517
_jmp_addr_0x00409547:    {disp32} mov       ecx, dword ptr [esi + 0x00000240]             // 0x00409547    8b8e40020000
                         dec                ecx                                           // 0x0040954d    49
                         mov.s              eax, ecx                                      // 0x0040954e    8bc1
                         cmp.s              eax, edi                                      // 0x00409550    3bc7
                         {disp32} mov       dword ptr [esi + 0x00000240], ecx             // 0x00409552    898e40020000
                         {disp32} jg        _jmp_addr_0x004094ba                          // 0x00409558    0f8f5cffffff
_jmp_addr_0x0040955e:    {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x0040955e    8b560c
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00409561    8b4614
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]             // 0x00409564    8b8e40020000
                         {disp8} mov        ebp, dword ptr [esi + 0x08]                   // 0x0040956a    8b6e08
                         add.s              eax, edx                                      // 0x0040956d    03c2
                         {disp32} mov       ebx, dword ptr [esi + 0x0000023c]             // 0x0040956f    8b9e3c020000
                         cdq                                                              // 0x00409575    99
                         sub.s              eax, edx                                      // 0x00409576    2bc2
                         mov.s              edi, eax                                      // 0x00409578    8bf8
                         mov.s              eax, ecx                                      // 0x0040957a    8bc1
                         cdq                                                              // 0x0040957c    99
                         sub.s              eax, edx                                      // 0x0040957d    2bc2
                         sar                eax, 1                                        // 0x0040957f    d1f8
                         sar                edi, 1                                        // 0x00409581    d1ff
                         sub.s              edi, eax                                      // 0x00409583    2bf8
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x00409585    8b4610
                         mov.s              edx, eax                                      // 0x00409588    8bd0
                         sub.s              edx, ebp                                      // 0x0040958a    2bd5
                         cmp                ebx, 0x04                                     // 0x0040958c    83fb04
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0040958f    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00409593    db442410
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00409597    d95c2414
                         {disp32} ja        _jmp_addr_0x004096b6                          // 0x0040959b    0f8715010000
                         jmp                dword ptr [ebx*4 + 0x409784]                  // 0x004095a1    ff249d84974000
                         push               0x0                                           // 0x004095a8    6a00
                         push               0x00c4ccdc                                    // 0x004095aa    68dcccc400
                         push               ecx                                           // 0x004095af    51
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                   // 0x004095b0    8d5e24
                         push               ebx                                           // 0x004095b3    53
                         push               0x0                                           // 0x004095b4    6a00
                         push               edx                                           // 0x004095b6    52
                         {disp8} lea        edx, dword ptr [edi + 0x02]                   // 0x004095b7    8d5702
                         push               edx                                           // 0x004095ba    52
                         add                ebp, 0x02                                     // 0x004095bb    83c502
                         push               ebp                                           // 0x004095be    55
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x004095bf    e8ec830000
                         fstp               st(0)                                         // 0x004095c4    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]             // 0x004095c6    8b8e40020000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x004095cc    8b4608
                         {disp32} mov       edx, dword ptr [esi + 0x0000023c]             // 0x004095cf    8b963c020000
                         push               0x0                                           // 0x004095d5    6a00
                         push               0x00c4cce8                                    // 0x004095d7    68e8ccc400
                         push               ecx                                           // 0x004095dc    51
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x004095dd    8b4e10
                         push               ebx                                           // 0x004095e0    53
                         push               edx                                           // 0x004095e1    52
                         sub.s              ecx, eax                                      // 0x004095e2    2bc8
                         push               ecx                                           // 0x004095e4    51
                         push               edi                                           // 0x004095e5    57
                         {disp32} jmp       _jmp_addr_0x00409709                          // 0x004095e6    e91e010000
                         {disp8} mov        ebx, dword ptr [esi + 0x1c]                   // 0x004095eb    8b5e1c
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x004095ee    8b560c
                         add                edx, 0x02                                     // 0x004095f1    83c202
                         push               0x0                                           // 0x004095f4    6a00
                         test               ebx, ebx                                      // 0x004095f6    85db
                         setne              bl                                            // 0x004095f8    0f95c3
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x004095fb    8d7e24
                         push               ebx                                           // 0x004095fe    53
                         push               0x00c4ccdc                                    // 0x004095ff    68dcccc400
                         push               ecx                                           // 0x00409604    51
                         cmp                dword ptr [esi + 0x0000023c], 0x04            // 0x00409605    83be3c02000004
                         sete               cl                                            // 0x0040960c    0f94c1
                         push               edi                                           // 0x0040960f    57
                         add                eax, 0x02                                     // 0x00409610    83c002
                         add                ebp, 0x02                                     // 0x00409613    83c502
                         push               ecx                                           // 0x00409616    51
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00409617    8b4e14
                         push               edx                                           // 0x0040961a    52
                         add                ecx, 0x2                                      // 0x0040961b    83c102
                         push               ecx                                           // 0x0040961e    51
                         push               eax                                           // 0x0040961f    50
                         push               edx                                           // 0x00409620    52
                         push               ebp                                           // 0x00409621    55
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x00409622    e829810000
                         fstp               st(0)                                         // 0x00409627    ddd8
                         {disp8} mov        ebp, dword ptr [esi + 0x1c]                   // 0x00409629    8b6e1c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000240]             // 0x0040962c    8b8e40020000
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x00409632    8b460c
                         push               0x0                                           // 0x00409635    6a00
                         test               ebp, ebp                                      // 0x00409637    85ed
                         setne              dl                                            // 0x00409639    0f95c2
                         push               edx                                           // 0x0040963c    52
                         {disp32} mov       edx, dword ptr [esi + 0x0000023c]             // 0x0040963d    8b963c020000
                         push               0x00c4cce8                                    // 0x00409643    68e8ccc400
                         push               ecx                                           // 0x00409648    51
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00409649    8b4e14
                         cmp                edx, 0x04                                     // 0x0040964c    83fa04
                         sete               dl                                            // 0x0040964f    0f94c2
                         push               edi                                           // 0x00409652    57
                         push               edx                                           // 0x00409653    52
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x00409654    8b5610
                         push               eax                                           // 0x00409657    50
                         push               ecx                                           // 0x00409658    51
                         push               edx                                           // 0x00409659    52
                         push               eax                                           // 0x0040965a    50
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0040965b    8b4608
                         push               eax                                           // 0x0040965e    50
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040965f    e8ec800000
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x00409664    d95c2468
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x00409668    d944246c
                         add                esp, 0x58                                     // 0x0040966c    83c458
                         {disp32} jmp       _jmp_addr_0x00409730                          // 0x0040966f    e9bc000000
                         push               0x0                                           // 0x00409674    6a00
                         push               0x00c4ccdc                                    // 0x00409676    68dcccc400
                         push               ecx                                           // 0x0040967b    51
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                   // 0x0040967c    8d5e24
                         push               ebx                                           // 0x0040967f    53
                         push               0x2                                           // 0x00409680    6a02
                         push               edx                                           // 0x00409682    52
                         {disp8} lea        ecx, dword ptr [edi + 0x02]                   // 0x00409683    8d4f02
                         push               ecx                                           // 0x00409686    51
                         add                eax, 0x02                                     // 0x00409687    83c002
                         push               eax                                           // 0x0040968a    50
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040968b    e820830000
                         fstp               st(0)                                         // 0x00409690    ddd8
                         {disp32} mov       edx, dword ptr [esi + 0x00000240]             // 0x00409692    8b9640020000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000023c]             // 0x00409698    8b8e3c020000
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x0040969e    8b4610
                         push               0x0                                           // 0x004096a1    6a00
                         push               0x00c4cce8                                    // 0x004096a3    68e8ccc400
                         push               edx                                           // 0x004096a8    52
                         push               ebx                                           // 0x004096a9    53
                         push               ecx                                           // 0x004096aa    51
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x004096ab    8b4e08
                         mov.s              edx, eax                                      // 0x004096ae    8bd0
                         sub.s              edx, ecx                                      // 0x004096b0    2bd1
                         push               edx                                           // 0x004096b2    52
                         push               edi                                           // 0x004096b3    57
                         {disp8} jmp        _jmp_addr_0x00409709                          // 0x004096b4    eb53
_jmp_addr_0x004096b6:    push               0x0                                           // 0x004096b6    6a00
                         push               0x00c4ccdc                                    // 0x004096b8    68dcccc400
                         push               ecx                                           // 0x004096bd    51
                         {disp32} mov       ecx, dword ptr [esi + 0x0000023c]             // 0x004096be    8b8e3c020000
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                   // 0x004096c4    8d5e24
                         push               ebx                                           // 0x004096c7    53
                         push               ecx                                           // 0x004096c8    51
                         add.s              eax, ebp                                      // 0x004096c9    03c5
                         push               edx                                           // 0x004096cb    52
                         cdq                                                              // 0x004096cc    99
                         sub.s              eax, edx                                      // 0x004096cd    2bc2
                         {disp8} lea        ecx, dword ptr [edi + 0x02]                   // 0x004096cf    8d4f02
                         sar                eax, 1                                        // 0x004096d2    d1f8
                         push               ecx                                           // 0x004096d4    51
                         add                eax, 0x02                                     // 0x004096d5    83c002
                         push               eax                                           // 0x004096d8    50
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x004096d9    e8d2820000
                         {disp32} mov       edx, dword ptr [esi + 0x00000240]             // 0x004096de    8b9640020000
                         fstp               st(0)                                         // 0x004096e4    ddd8
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x004096e6    8b4610
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x004096e9    8b4e08
                         push               0x0                                           // 0x004096ec    6a00
                         push               0x00c4cce8                                    // 0x004096ee    68e8ccc400
                         push               edx                                           // 0x004096f3    52
                         {disp32} mov       edx, dword ptr [esi + 0x0000023c]             // 0x004096f4    8b963c020000
                         push               ebx                                           // 0x004096fa    53
                         push               edx                                           // 0x004096fb    52
                         mov.s              edx, eax                                      // 0x004096fc    8bd0
                         sub.s              edx, ecx                                      // 0x004096fe    2bd1
                         add.s              eax, ecx                                      // 0x00409700    03c1
                         push               edx                                           // 0x00409702    52
                         cdq                                                              // 0x00409703    99
                         sub.s              eax, edx                                      // 0x00409704    2bc2
                         push               edi                                           // 0x00409706    57
                         sar                eax, 1                                        // 0x00409707    d1f8
_jmp_addr_0x00409709:    push               eax                                           // 0x00409709    50
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040970a    e8a1820000
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x0040970f    d95c2450
                         {disp32} fild      dword ptr [esi + 0x00000240]                  // 0x00409713    db8640020000
                         add                esp, 0x40                                     // 0x00409719    83c440
                         push               0x3f800000                                    // 0x0040971c    680000803f
                         push               0x0                                           // 0x00409721    6a00
                         push               ecx                                           // 0x00409723    51
                         fstp               dword ptr [esp]                               // 0x00409724    d91c24
                         push               ebx                                           // 0x00409727    53
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x00409728    e8f37f0000
                         add                esp, 0x10                                     // 0x0040972d    83c410
_jmp_addr_0x00409730:    {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00409730    8b4614
                         sub                eax, dword ptr [esi + 0x0c]                   // 0x00409733    2b460c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00409736    89442414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0040973a    db442414
                         pop                ebp                                           // 0x0040973e    5d
                         pop                ebx                                           // 0x0040973f    5b
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00409740    d85c2408
                         fnstsw             ax                                            // 0x00409744    dfe0
                         test               ah, 0x01                                      // 0x00409746    f6c401
                         {disp8} jne        _jmp_addr_0x00409768                          // 0x00409749    751d
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0040974b    8b4608
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0040974e    8b4e10
                         sub.s              ecx, eax                                      // 0x00409751    2bc8
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00409753    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00409757    db44240c
                         fxch               st(1)                                         // 0x0040975b    d9c9
                         fcompp                                                           // 0x0040975d    ded9
                         fnstsw             ax                                            // 0x0040975f    dfe0
                         test               ah, 0x41                                      // 0x00409761    f6c441
                         {disp8} jne        _jmp_addr_0x0040977c                          // 0x00409764    7516
                         {disp8} jmp        _jmp_addr_0x0040976a                          // 0x00409766    eb02
_jmp_addr_0x00409768:    fstp               st(0)                                         // 0x00409768    ddd8
_jmp_addr_0x0040976a:    {disp32} mov       eax, dword ptr [esi + 0x00000240]             // 0x0040976a    8b8640020000
                         cmp                eax, 0x0a                                     // 0x00409770    83f80a
                         {disp8} jle        _jmp_addr_0x0040977c                          // 0x00409773    7e07
                         dec                eax                                           // 0x00409775    48
                         {disp32} mov       dword ptr [esi + 0x00000240], eax             // 0x00409776    898640020000
_jmp_addr_0x0040977c:    pop                edi                                           // 0x0040977c    5f
                         pop                esi                                           // 0x0040977d    5e
                         add                esp, 0x08                                     // 0x0040977e    83c408
                         ret                0x0008                                        // 0x00409781    c20800

// Snippet: jmptbl, [0x00409784, 0x00409798)
.byte 0xa8, 0x95, 0x40, 0x00      // 0x00409784
.byte 0xb6, 0x96, 0x40, 0x00      // 0x00409788
.byte 0x74, 0x96, 0x40, 0x00      // 0x0040978c
.byte 0xeb, 0x95, 0x40, 0x00      // 0x00409790
.byte 0xeb, 0x95, 0x40, 0x00      // 0x00409794

// Snippet: db, [0x00409798, 0x004097a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00409798
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040979c

