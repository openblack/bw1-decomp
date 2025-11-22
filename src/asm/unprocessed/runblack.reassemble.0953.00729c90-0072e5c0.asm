.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??$ReadIt@H@GameOSFile@@QAEXAAH@Z
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x0043dc00
.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x004e94f0
.extern _jmp_addr_0x004e9540
.extern _jmp_addr_0x0050dd50
.extern ??0EffectValues@@QAE@W4EFFECT_TYPE@@MPAVGameThing@@MPAVGPlayer@@@Z
.extern _jmp_addr_0x0052bfd0
.extern _jmp_addr_0x0052c020
.extern ??0FixedObject@@QAE@XZ
.extern @__ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff@24
.extern ?Save@Fixed@@UAEIPAVGameOSFile@@@Z
.extern ?Load@Fixed@@QAEIAAVGGameOSFile@@@Z
.extern ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z
.extern _jmp_addr_0x0052eac0
.extern _jmp_addr_0x0052f690
.extern ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00555880
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00563400
.extern _jmp_addr_0x00563410
.extern _jmp_addr_0x00563ea0
.extern @ReadInfo__10GameOSFileFPPC9GBaseInfo@12
.extern _jmp_addr_0x0056fa80
.extern ?CheckAndSetSaved@GameThing@@QAE_NXZ
.extern ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.extern ?GetSharedMesh@GJUtils@@SAPAULH3DMesh@@PBDABUMaterialProperties@@@Z
.extern _jmp_addr_0x0057e220
.extern _jmp_addr_0x005cd9d0
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x005dc870
.extern _jmp_addr_0x005dc890
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern ?GetMagicInfoText@GMagicInfo@@QBEPBDXZ
.extern ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ
.extern _jmp_addr_0x005fbb00
.extern @GetNearestTown__9MapCoordsCFf@12
.extern ?ConvertToText@MapCoords@@QAEPADPAD@Z
.extern _jmp_addr_0x006055c0
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28
.extern ?ToBeDeleted@MobileObject@@UAEXH@Z
.extern ?CallVirtualFunctionsForCreation@MobileObject@@UAEXABUMapCoords@@@Z
.extern ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z
.extern ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z
.extern ?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ
.extern ?ToBeDeleted@Object@@UAEXH@Z
.extern ?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z
.extern ?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z
.extern ?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z
.extern ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z
.extern ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.extern ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.extern ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.extern @SetScale__6ObjectFf@12
.extern ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.extern ?Save@Object@@UAEIPAVGameOSFile@@@Z
.extern @Load__6ObjectFR10GameOSFile@12
.extern _jmp_addr_0x0063b5d0
.extern _jmp_addr_0x00644df0
.extern _jmp_addr_0x00644f00
.extern _jmp_addr_0x00646950
.extern _jmp_addr_0x00647460
.extern _jmp_addr_0x0064bf40
.extern _jmp_addr_0x0064c250
.extern _jmp_addr_0x0068f2f0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006de590
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x006e4750
.extern _jmp_addr_0x006e4780
.extern ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z
.extern ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z
.extern _jmp_addr_0x0071d0b0
.extern ??0Spell@@QAE@XZ
.extern @__ct__5SpellF10MAGIC_TYPEP9GameThing@16
.extern ?ToBeDeleted@Spell@@UAEXH@Z
.extern ?InitWithPos@Spell@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z
.extern _jmp_addr_0x007201d0
.extern _jmp_addr_0x007202c0
.extern _jmp_addr_0x007202d0
.extern ?Draw@Spell@@UAEXXZ
.extern ?Process@Spell@@UAEIXZ
.extern _jmp_addr_0x00720750
.extern ?CalculateCostToMaintain@Spell@@UAEMXZ
.extern _jmp_addr_0x00720990
.extern ?ToBeDeleted@SpellWithObjects@@UAEXH@Z
.extern ?Load@SpellWithObjects@@UAEIAAVGameOSFile@@@Z
.extern ?Save@SpellWithObjects@@UAEIAAVGameOSFile@@@Z
.extern ?Process@SpellWithObjects@@UAEIXZ
.extern ?CloseDown@SpellWithObjects@@UAEXXZ
.extern ?GetImpressiveValue@Spell@@UAEMPAVLiving@@PAVReaction@@@Z
.extern _jmp_addr_0x007220c0
.extern _jmp_addr_0x00722110
.extern ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z
.extern _jmp_addr_0x00727680
.extern _jmp_addr_0x007282a0
.extern _jmp_addr_0x00728300
.extern _jmp_addr_0x007290f0
.extern _jmp_addr_0x00729860
.extern _jmp_addr_0x00729900
.extern _jmp_addr_0x00729a30
.extern _jmp_addr_0x00729a80
.extern _jmp_addr_0x0072e740
.extern _jmp_addr_0x0073c9b0
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ??2@YAPAXI@Z
.extern _isalpha
.extern __strcmpi
.extern _localtime
.extern _time
.extern __CIfmod
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0080bec0
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern ?Create@LH3DSprite@@SAPAV1@JH@Z
.extern ?Release@LH3DSprite@@QAEXXZ
.extern ?Draw@LH3DSprite@@QAEXXZ

.globl _jmp_addr_0x0072a2f0
.globl _jmp_addr_0x0072a400
.globl _jmp_addr_0x0072a570
.globl _jmp_addr_0x0072a5f0
.globl _jmp_addr_0x0072a610
.globl _jmp_addr_0x0072a730
.globl _jmp_addr_0x0072a840
.globl _jmp_addr_0x0072af10
.globl _jmp_addr_0x0072af50
.globl @GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12
.globl _jmp_addr_0x0072afa0
.globl @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12
.globl _jmp_addr_0x0072afe0
.globl _jmp_addr_0x0072b010
.globl @SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12
.globl ?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z
.globl _jmp_addr_0x0072b100
.globl _jmp_addr_0x0072b160
.globl _jmp_addr_0x0072b170
.globl _jmp_addr_0x0072b1c0
.globl _jmp_addr_0x0072b200
.globl _jmp_addr_0x0072b230
.globl _jmp_addr_0x0072b3f0
.globl _jmp_addr_0x0072b4b0
.globl ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ
.globl _jmp_addr_0x0072b990
.globl _jmp_addr_0x0072ba00
.globl _jmp_addr_0x0072bb00
.globl _jmp_addr_0x0072bd20
.globl _jmp_addr_0x0072bf50
.globl _jmp_addr_0x0072bf80
.globl @__ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield@20
.globl _jmp_addr_0x0072c1f0
.globl _jmp_addr_0x0072cb50
.globl _jmp_addr_0x0072d900
.globl _jmp_addr_0x0072d9c0
.globl _jmp_addr_0x0072db80
.globl _jmp_addr_0x0072dcc0
.globl _jmp_addr_0x0072e280
.globl _jmp_addr_0x0072e2a0
.globl _jmp_addr_0x0072e310
.globl _jmp_addr_0x0072e3b0
.globl _jmp_addr_0x0072e4e0

.globl _globl_ct_0x0072ad00
.globl _globl_ct_0x0072ad30
.globl _globl_ct_0x0072ad50
.globl _globl_ct_0x0072ad80
.globl _globl_ct_0x0072ae20
.globl _globl_ct_0x0072b240
.globl _globl_ct_0x0072b270
.globl _globl_ct_0x0072b290
.globl _globl_ct_0x0072b2c0
.globl _globl_ct_0x0072b2f0
.globl _globl_ct_0x0072b320
.globl _globl_ct_0x0072b340
.globl _globl_ct_0x0072b370
.globl _globl_ct_0x0072bd60
.globl _globl_ct_0x0072d8b0
.globl _globl_ct_0x0072dd30
.globl _globl_ct_0x0072dd60
.globl _globl_ct_0x0072dd80
.globl _globl_ct_0x0072ddb0
.globl _globl_ct_0x0072dde0
.globl _globl_ct_0x0072de00
.globl _globl_ct_0x0072e0e0
.globl _globl_ct_0x0072e110
.globl _globl_ct_0x0072e130
.globl _globl_ct_0x0072e180
.globl ?GetScriptObjectType@SpellSeed@@UAEIXZ
.globl ?Save@SpellSeed@@UAEIAAVGameOSFile@@@Z
.globl ?Load@SpellSeed@@UAEIAAVGameOSFile@@@Z
.globl ?GetInHandImmersionTexture@SpellSeed@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.globl ?ToBeDeleted@OneOffSpellSeed@@UAEXH@Z
.globl ?CallVirtualFunctionsForCreation@OneOffSpellSeed@@UAEXABUMapCoords@@@Z
.globl ?IsEffectReceiver@OneOffSpellSeed@@UAEIPAVEffectValues@@@Z
.globl ?InterfaceSetInMagicHand@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?InterfaceValidToTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?InterfaceTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z
.globl ?GetMesh@OneOffSpellSeed@@UBEHXZ
.globl ?GetPhysicsConstantsType@OneOffSpellSeed@@UAEIXZ
.globl ?Save@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z
.globl ?Load@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z
.globl ?IsOneOffSpellAggressive@OneOffSpellSeed@@UAEIPAVCreature@@@Z
.globl ?IsOneOffSpellCompassionate@OneOffSpellSeed@@UAEIPAVCreature@@@Z
.globl ?IsOneOffSpellPlayful@OneOffSpellSeed@@UAEIPAVCreature@@@Z
.globl ?IsOneOffSpellToRestoreHealth@OneOffSpellSeed@@UAEIPAVCreature@@@Z
.globl ?SaveObject@OneOffSpellSeed@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?GetOverwritePickUpToolTip@OneOffSpellSeed@@UAEIXZ
.globl ?GetOverwriteTapToolTip@OneOffSpellSeed@@UAEIXZ
.globl ?GetQueryFirstEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ
.globl ?GetQueryLastEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ
.globl ?ThrowObjectFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@H@Z
.globl ?GetBaseInfo@GSpellSystemInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpellSystemInfo@@UAEPAXI@Z
.globl ?GetMesh@GSpellSeedInfo@@UBEIXZ
.globl ?GetBaseInfo@GSpellSeedInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpellSeedInfo@@UAEPAXI@Z
.globl ?IsSpellShield@SpellShield@@UAEIXZ
.globl ?Get2DRadius@SpellShield@@UAEMXZ
.globl ?GetRadius@SpellShield@@UAEMXZ
.globl ?GetSaveType@SpellShield@@UAEIXZ
.globl ?GetDebugText@SpellShield@@UAEPADXZ
.globl ??_GSpellShield@@UAEPAXI@Z
.globl ?ToBeDeleted@SpellShield@@UAEXH@Z
.globl ?InitWithPos@SpellShield@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z
.globl ?Process@SpellShield@@UAEIXZ
.globl ?UpdateStruckReaction@SpellShield@@UAEXXZ
.globl ?SetUpDestroyedReaction@SpellShield@@UAEXXZ
.globl ?CalculateCostToMaintain@SpellShield@@UAEMXZ
.globl ?CloseDown@SpellShield@@UAEXXZ
.globl ?IsPointDefinietlyWithinShieldVolume@MagicShield@@UAE_NPBUMapCoords@@@Z
.globl ?IsPointDefinietlyWithinShieldVolume@PhysicalShield@@UAE_NPBUMapCoords@@@Z
.globl ?GetImpressiveValue@SpellShield@@UAEMPAVLiving@@PAVReaction@@@Z
.globl ?Load@SpellShield@@UAEIAAVGameOSFile@@@Z
.globl ?Save@SpellShield@@UAEIAAVGameOSFile@@@Z
.globl ??_GGMapShieldInfo@@UAEPAXI@Z
.globl ?ValidForPlaceInHand@MapShield@@UAEIPAVGInterfaceStatus@@@Z
.globl ?HandShouldFeelWithMeshIntersect@MapShield@@UAEIXZ
.globl ?SaveObject@MapShield@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?GetSaveType@MapShield@@UAEIXZ
.globl ?GetDebugText@MapShield@@UAEPADXZ
.globl ??_GMapShield@@UAEPAXI@Z
.globl ?GetPlayer@MapShield@@UAEPAVGPlayer@@XZ
.globl ?CreatureMustAvoid@MapShield@@UAE_NPAVCreature@@@Z
.globl ?GetMesh@MapShield@@UBEHXZ
.globl ?GetTopPos@MapShield@@UAEMXZ
.globl ?CanBecomeAPhysicsObject@MapShield@@UAE_NXZ
.globl ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@MapShield@@UAEXPAVObject@@@Z
.globl ?GetSaveType@MagicShield@@UAEIXZ
.globl ?GetDebugText@MagicShield@@UAEPADXZ
.globl ??_GMagicShield@@UAEPAXI@Z
.globl ?CallVirtualFunctionsForCreation@MagicShield@@UAEXABUMapCoords@@@Z
.globl ?ProcessShield@MagicShield@@UAEXXZ
.globl ?DrawShield@MagicShield@@UAEXXZ
.globl ?Draw@MagicShield@@UAEXXZ
.globl ?IsEffectReceiver@MagicShield@@UAEIPAVEffectValues@@@Z
.globl ?SetDying@MagicShield@@UAE_NXZ
.globl ?InteractsWithPhysicsObjects@MagicShield@@UAE_NXZ
.globl ?Get3DType@MagicShield@@UAE?AW4LH3DObject__ObjectType@@XZ
.globl ?Load@MagicShield@@UAEIAAVGameOSFile@@@Z
.globl ?Save@MagicShield@@UAEIAAVGameOSFile@@@Z
.globl ?Load@PhysicalShield@@UAEIAAVGameOSFile@@@Z
.globl ?Save@PhysicalShield@@UAEIAAVGameOSFile@@@Z
.globl ?GetAlwaysRemainsInPhysicsInternalSystem@PhysicalShield@@UAE_NXZ
.globl ?GetSaveType@PhysicalShield@@UAEIXZ
.globl ?GetDebugText@PhysicalShield@@UAEPADXZ
.globl ??_GPhysicalShield@@UAEPAXI@Z
.globl ?ToBeDeleted@PhysicalShield@@UAEXH@Z
.globl ?IsEffectReceiver@PhysicalShield@@UAEIPAVEffectValues@@@Z
.globl ?CallVirtualFunctionsForCreation@PhysicalShield@@UAEXABUMapCoords@@@Z
.globl ?Get3DType@PhysicalShield@@UAE?AW4LH3DObject__ObjectType@@XZ
.globl ?ApplyEffect@PhysicalShield@@UAEXAAVEffectValues@@H@Z
.globl ?DestroyedByEffect@PhysicalShield@@UAEIPAVGPlayer@@M@Z
.globl ?Draw@PhysicalShield@@UAEXXZ
.globl ?SetUpPhysOb@PhysicalShield@@UAEXPAUPhysOb@@@Z
.globl ?DrawShield@PhysicalShield@@UAEXXZ
.globl ?SetDying@PhysicalShield@@UAE_NXZ
.globl ?ProcessShield@PhysicalShield@@UAEXXZ
.globl ?InteractsWithPhysicsObjects@PhysicalShield@@UAE_NXZ
.globl ?ReactToPhysicsImpact@PhysicalShield@@UAEXPAVPhysicsObject@@_N@Z
.globl ?GetPhysicsConstantsType@PhysicalShield@@UAEIXZ
.globl ?GetImpressiveValue@PhysicalShield@@UAEMPAVLiving@@PAVReaction@@@Z
.globl ?InitWithPos@SpellHeal@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z
.globl ?Get2DRadius@SpellStormAndTornado@@UAEMXZ
.globl ?GetRadius@SpellStormAndTornado@@UAEMXZ
.globl ?GetSaveType@SpellStormAndTornado@@UAEIXZ
.globl ?GetDebugText@SpellStormAndTornado@@UAEPADXZ
.globl ??_GSpellStormAndTornado@@UAEPAXI@Z
.globl ?ToBeDeleted@SpellStormAndTornado@@UAEXH@Z
.globl ?GetBaseInfo@GSpookyVoiceInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpookyVoiceInfo@@UAEPAXI@Z
.globl ??_GGSpookyVoices@@UAEPAXI@Z
.globl ?ToBeDeleted@MapShield@@UAEXH@Z
.globl ?Load@MapShield@@UAEIAAVGameOSFile@@@Z
.globl ?Save@MapShield@@UAEIAAVGameOSFile@@@Z

start_0x00729c90_0x0072e5c0:
// Snippet: asm, [0x00729c90, 0x0072e54c)
?GetScriptObjectType@SpellSeed@@UAEIXZ:
                         {disp8} mov        al, byte ptr [ecx + 0x72]                     // 0x00729c90    8a4172
                         neg                al                                            // 0x00729c93    f6d8
                         sbb.s              eax, eax                                      // 0x00729c95    1bc0
                         and                eax, 0x06                                     // 0x00729c97    83e006
                         add                eax, 0x18                                     // 0x00729c9a    83c018
                         ret                                                              // 0x00729c9d    c3
                         nop                                                              // 0x00729c9e    90
                         nop                                                              // 0x00729c9f    90
?Save@SpellSeed@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00729ca0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00729ca1    8b742408
                         push               edi                                           // 0x00729ca5    57
                         mov.s              edi, ecx                                      // 0x00729ca6    8bf9
                         push               esi                                           // 0x00729ca8    56
                         call               ?Save@Object@@UAEIPAVGameOSFile@@@Z           // 0x00729ca9    e8e2fef0ff
                         test               eax, eax                                      // 0x00729cae    85c0
                         {disp32} je        _jmp_addr_0x00729fa7                          // 0x00729cb0    0f84f1020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x00729cb6    a190c9be00
                         push               ebx                                           // 0x00729cbb    53
                         push               ebp                                           // 0x00729cbc    55
                         xor.s              ebp, ebp                                      // 0x00729cbd    33ed
                         cmp.s              eax, ebp                                      // 0x00729cbf    3bc5
                         {disp8} je         _jmp_addr_0x00729d25                          // 0x00729cc1    7462
                         push               ebp                                           // 0x00729cc3    55
                         push               0x4                                           // 0x00729cc4    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x6c]                   // 0x00729cc6    8d5f6c
                         push               ebx                                           // 0x00729cc9    53
                         mov.s              ecx, esi                                      // 0x00729cca    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729ccc    e84f2c0900
                         cmp                eax, 0x03                                     // 0x00729cd1    83f803
                         {disp8} jne        _jmp_addr_0x00729cdc                          // 0x00729cd4    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729cd6    892d90c9be00
_jmp_addr_0x00729cdc:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729cdc    8b8e14020000
                         xor.s              eax, eax                                      // 0x00729ce2    33c0
                         mov                al, byte ptr [ebx]                            // 0x00729ce4    8a03
                         add                eax, 0x04                                     // 0x00729ce6    83c004
                         add.s              ecx, eax                                      // 0x00729ce9    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729ceb    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729cf1    392d90c9be00
                         {disp8} je         _jmp_addr_0x00729d25                          // 0x00729cf7    742c
                         push               ebp                                           // 0x00729cf9    55
                         push               0x1                                           // 0x00729cfa    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x54]                   // 0x00729cfc    8d5f54
                         push               ebx                                           // 0x00729cff    53
                         mov.s              ecx, esi                                      // 0x00729d00    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729d02    e8192c0900
                         cmp                eax, 0x03                                     // 0x00729d07    83f803
                         {disp8} jne        _jmp_addr_0x00729d12                          // 0x00729d0a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729d0c    892d90c9be00
_jmp_addr_0x00729d12:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x00729d12    8b8614020000
                         xor.s              ecx, ecx                                      // 0x00729d18    33c9
                         mov                cl, byte ptr [ebx]                            // 0x00729d1a    8a0b
                         inc                ecx                                           // 0x00729d1c    41
                         add.s              eax, ecx                                      // 0x00729d1d    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x00729d1f    898614020000
_jmp_addr_0x00729d25:    {disp8} mov        edx, dword ptr [edi + 0x58]                   // 0x00729d25    8b5758
                         push               edx                                           // 0x00729d28    52
                         mov.s              ecx, esi                                      // 0x00729d29    8bce
                         call               _jmp_addr_0x00563ea0                          // 0x00729d2b    e870a1e3ff
                         {disp8} mov        eax, dword ptr [edi + 0x5c]                   // 0x00729d30    8b475c
                         push               eax                                           // 0x00729d33    50
                         mov.s              ecx, esi                                      // 0x00729d34    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00729d36    e8d580e3ff
                         {disp8} mov        ecx, dword ptr [edi + 0x68]                   // 0x00729d3b    8b4f68
                         push               ecx                                           // 0x00729d3e    51
                         mov.s              ecx, esi                                      // 0x00729d3f    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00729d41    e8ca80e3ff
                         {disp8} mov        edx, dword ptr [edi + 0x60]                   // 0x00729d46    8b5760
                         push               edx                                           // 0x00729d49    52
                         mov.s              ecx, esi                                      // 0x00729d4a    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00729d4c    e8bf80e3ff
                         {disp8} mov        eax, dword ptr [edi + 0x64]                   // 0x00729d51    8b4764
                         push               eax                                           // 0x00729d54    50
                         mov.s              ecx, esi                                      // 0x00729d55    8bce
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x00729d57    e8b480e3ff
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729d5c    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729d62    0f84fe010000
                         push               ebp                                           // 0x00729d68    55
                         push               0x1                                           // 0x00729d69    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x70]                   // 0x00729d6b    8d5f70
                         push               ebx                                           // 0x00729d6e    53
                         mov.s              ecx, esi                                      // 0x00729d6f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729d71    e8aa2b0900
                         cmp                eax, 0x03                                     // 0x00729d76    83f803
                         {disp8} jne        _jmp_addr_0x00729d81                          // 0x00729d79    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729d7b    892d90c9be00
_jmp_addr_0x00729d81:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00729d81    8b9614020000
                         xor.s              ecx, ecx                                      // 0x00729d87    33c9
                         mov                cl, byte ptr [ebx]                            // 0x00729d89    8a0b
                         inc                ecx                                           // 0x00729d8b    41
                         add.s              edx, ecx                                      // 0x00729d8c    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00729d8e    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729d94    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729d9a    0f84c6010000
                         push               ebp                                           // 0x00729da0    55
                         push               0x1                                           // 0x00729da1    6a01
                         {disp8} lea        ebx, dword ptr [edi + 0x71]                   // 0x00729da3    8d5f71
                         push               ebx                                           // 0x00729da6    53
                         mov.s              ecx, esi                                      // 0x00729da7    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729da9    e8722b0900
                         cmp                eax, 0x03                                     // 0x00729dae    83f803
                         {disp8} jne        _jmp_addr_0x00729db9                          // 0x00729db1    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729db3    892d90c9be00
_jmp_addr_0x00729db9:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729db9    8b8e14020000
                         xor.s              edx, edx                                      // 0x00729dbf    33d2
                         mov                dl, byte ptr [ebx]                            // 0x00729dc1    8a13
                         inc                edx                                           // 0x00729dc3    42
                         add.s              ecx, edx                                      // 0x00729dc4    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729dc6    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729dcc    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729dd2    0f848e010000
                         push               ebp                                           // 0x00729dd8    55
                         push               0x4                                           // 0x00729dd9    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x74]                   // 0x00729ddb    8d5f74
                         push               ebx                                           // 0x00729dde    53
                         mov.s              ecx, esi                                      // 0x00729ddf    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729de1    e83a2b0900
                         cmp                eax, 0x03                                     // 0x00729de6    83f803
                         {disp8} jne        _jmp_addr_0x00729df1                          // 0x00729de9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729deb    892d90c9be00
_jmp_addr_0x00729df1:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729df1    8b8e14020000
                         xor.s              eax, eax                                      // 0x00729df7    33c0
                         mov                al, byte ptr [ebx]                            // 0x00729df9    8a03
                         add                eax, 0x04                                     // 0x00729dfb    83c004
                         add.s              ecx, eax                                      // 0x00729dfe    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729e00    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729e06    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729e0c    0f8454010000
                         push               ebp                                           // 0x00729e12    55
                         push               0x4                                           // 0x00729e13    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x00729e15    8d5f78
                         push               ebx                                           // 0x00729e18    53
                         mov.s              ecx, esi                                      // 0x00729e19    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729e1b    e8002b0900
                         cmp                eax, 0x03                                     // 0x00729e20    83f803
                         {disp8} jne        _jmp_addr_0x00729e2b                          // 0x00729e23    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729e25    892d90c9be00
_jmp_addr_0x00729e2b:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00729e2b    8b9614020000
                         xor.s              ecx, ecx                                      // 0x00729e31    33c9
                         mov                cl, byte ptr [ebx]                            // 0x00729e33    8a0b
                         add                ecx, 0x4                                      // 0x00729e35    83c104
                         add.s              edx, ecx                                      // 0x00729e38    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00729e3a    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729e40    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729e46    0f841a010000
                         push               ebp                                           // 0x00729e4c    55
                         push               0x4                                           // 0x00729e4d    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x7c]                   // 0x00729e4f    8d5f7c
                         push               ebx                                           // 0x00729e52    53
                         mov.s              ecx, esi                                      // 0x00729e53    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729e55    e8c62a0900
                         cmp                eax, 0x03                                     // 0x00729e5a    83f803
                         {disp8} jne        _jmp_addr_0x00729e65                          // 0x00729e5d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729e5f    892d90c9be00
_jmp_addr_0x00729e65:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729e65    8b8e14020000
                         xor.s              edx, edx                                      // 0x00729e6b    33d2
                         mov                dl, byte ptr [ebx]                            // 0x00729e6d    8a13
                         add                edx, 0x04                                     // 0x00729e6f    83c204
                         add.s              ecx, edx                                      // 0x00729e72    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729e74    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729e7a    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729e80    0f84e0000000
                         push               ebp                                           // 0x00729e86    55
                         push               0x4                                           // 0x00729e87    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00000084]             // 0x00729e89    8d9f84000000
                         push               ebx                                           // 0x00729e8f    53
                         mov.s              ecx, esi                                      // 0x00729e90    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729e92    e8892a0900
                         cmp                eax, 0x03                                     // 0x00729e97    83f803
                         {disp8} jne        _jmp_addr_0x00729ea2                          // 0x00729e9a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729e9c    892d90c9be00
_jmp_addr_0x00729ea2:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729ea2    8b8e14020000
                         xor.s              eax, eax                                      // 0x00729ea8    33c0
                         mov                al, byte ptr [ebx]                            // 0x00729eaa    8a03
                         add                eax, 0x04                                     // 0x00729eac    83c004
                         add.s              ecx, eax                                      // 0x00729eaf    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729eb1    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729eb7    392d90c9be00
                         {disp32} je        _jmp_addr_0x00729f66                          // 0x00729ebd    0f84a3000000
                         push               ebp                                           // 0x00729ec3    55
                         push               0x4                                           // 0x00729ec4    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x00729ec6    8d9f80000000
                         push               ebx                                           // 0x00729ecc    53
                         mov.s              ecx, esi                                      // 0x00729ecd    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729ecf    e84c2a0900
                         cmp                eax, 0x03                                     // 0x00729ed4    83f803
                         {disp8} jne        _jmp_addr_0x00729edf                          // 0x00729ed7    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729ed9    892d90c9be00
_jmp_addr_0x00729edf:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x00729edf    8b9614020000
                         xor.s              ecx, ecx                                      // 0x00729ee5    33c9
                         mov                cl, byte ptr [ebx]                            // 0x00729ee7    8a0b
                         add                ecx, 0x4                                      // 0x00729ee9    83c104
                         add.s              edx, ecx                                      // 0x00729eec    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x00729eee    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729ef4    392d90c9be00
                         {disp8} je         _jmp_addr_0x00729f66                          // 0x00729efa    746a
                         push               ebp                                           // 0x00729efc    55
                         push               0x4                                           // 0x00729efd    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x0000008c]             // 0x00729eff    8d9f8c000000
                         push               ebx                                           // 0x00729f05    53
                         mov.s              ecx, esi                                      // 0x00729f06    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729f08    e8132a0900
                         cmp                eax, 0x03                                     // 0x00729f0d    83f803
                         {disp8} jne        _jmp_addr_0x00729f18                          // 0x00729f10    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729f12    892d90c9be00
_jmp_addr_0x00729f18:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729f18    8b8e14020000
                         xor.s              edx, edx                                      // 0x00729f1e    33d2
                         mov                dl, byte ptr [ebx]                            // 0x00729f20    8a13
                         add                edx, 0x04                                     // 0x00729f22    83c204
                         add.s              ecx, edx                                      // 0x00729f25    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729f27    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x00729f2d    392d90c9be00
                         {disp8} je         _jmp_addr_0x00729f66                          // 0x00729f33    7431
                         push               ebp                                           // 0x00729f35    55
                         push               0x4                                           // 0x00729f36    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x00000088]             // 0x00729f38    8d9f88000000
                         push               ebx                                           // 0x00729f3e    53
                         mov.s              ecx, esi                                      // 0x00729f3f    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x00729f41    e8da290900
                         cmp                eax, 0x03                                     // 0x00729f46    83f803
                         {disp8} jne        _jmp_addr_0x00729f51                          // 0x00729f49    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x00729f4b    892d90c9be00
_jmp_addr_0x00729f51:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729f51    8b8e14020000
                         xor.s              eax, eax                                      // 0x00729f57    33c0
                         mov                al, byte ptr [ebx]                            // 0x00729f59    8a03
                         add                eax, 0x04                                     // 0x00729f5b    83c004
                         add.s              ecx, eax                                      // 0x00729f5e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729f60    898e14020000
_jmp_addr_0x00729f66:    {disp32} lea       ecx, dword ptr [edi + 0x00000090]             // 0x00729f66    8d8f90000000
                         push               ecx                                           // 0x00729f6c    51
                         mov.s              ecx, esi                                      // 0x00729f6d    8bce
                         call               _jmp_addr_0x0052bfd0                          // 0x00729f6f    e85c20e0ff
                         {disp32} lea       edx, dword ptr [edi + 0x00000094]             // 0x00729f74    8d9794000000
                         push               edx                                           // 0x00729f7a    52
                         mov.s              ecx, esi                                      // 0x00729f7b    8bce
                         call               _jmp_addr_0x004e94f0                          // 0x00729f7d    e86ef5dbff
                         {disp32} lea       eax, dword ptr [edi + 0x00000098]             // 0x00729f82    8d8798000000
                         push               eax                                           // 0x00729f88    50
                         mov.s              ecx, esi                                      // 0x00729f89    8bce
                         call               _jmp_addr_0x007220c0                          // 0x00729f8b    e83081ffff
                         add                edi, 0x72                                     // 0x00729f90    83c772
                         push               edi                                           // 0x00729f93    57
                         mov.s              ecx, esi                                      // 0x00729f94    8bce
                         call               _jmp_addr_0x0052bfd0                          // 0x00729f96    e83520e0ff
                         pop                ebp                                           // 0x00729f9b    5d
                         pop                ebx                                           // 0x00729f9c    5b
                         pop                edi                                           // 0x00729f9d    5f
                         mov                eax, 0x00000001                               // 0x00729f9e    b801000000
                         pop                esi                                           // 0x00729fa3    5e
                         ret                0x0004                                        // 0x00729fa4    c20400
_jmp_addr_0x00729fa7:    pop                edi                                           // 0x00729fa7    5f
                         xor.s              eax, eax                                      // 0x00729fa8    33c0
                         pop                esi                                           // 0x00729faa    5e
                         ret                0x0004                                        // 0x00729fab    c20400
                         nop                                                              // 0x00729fae    90
                         nop                                                              // 0x00729faf    90
?Load@SpellSeed@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x00729fb0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00729fb1    8b742408
                         push               edi                                           // 0x00729fb5    57
                         mov.s              edi, ecx                                      // 0x00729fb6    8bf9
                         push               esi                                           // 0x00729fb8    56
                         call               @Load__6ObjectFR10GameOSFile@12               // 0x00729fb9    e8f2fef0ff
                         test               eax, eax                                      // 0x00729fbe    85c0
                         {disp32} je        _jmp_addr_0x0072a2c4                          // 0x00729fc0    0f84fe020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x00729fc6    a194c9be00
                         push               ebx                                           // 0x00729fcb    53
                         push               ebp                                           // 0x00729fcc    55
                         xor.s              ebp, ebp                                      // 0x00729fcd    33ed
                         cmp.s              eax, ebp                                      // 0x00729fcf    3bc5
                         {disp8} lea        ebx, dword ptr [edi + 0x6c]                   // 0x00729fd1    8d5f6c
                         {disp8} je         _jmp_addr_0x0072a001                          // 0x00729fd4    742b
                         push               ebp                                           // 0x00729fd6    55
                         push               0x4                                           // 0x00729fd7    6a04
                         push               ebx                                           // 0x00729fd9    53
                         mov.s              ecx, esi                                      // 0x00729fda    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x00729fdc    e8ff280900
                         cmp                eax, 0x03                                     // 0x00729fe1    83f803
                         {disp8} jne        _jmp_addr_0x00729fec                          // 0x00729fe4    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x00729fe6    892d94c9be00
_jmp_addr_0x00729fec:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x00729fec    8b8e14020000
                         xor.s              eax, eax                                      // 0x00729ff2    33c0
                         mov                al, byte ptr [ebx]                            // 0x00729ff4    8a03
                         add                eax, 0x04                                     // 0x00729ff6    83c004
                         add.s              ecx, eax                                      // 0x00729ff9    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x00729ffb    898e14020000
_jmp_addr_0x0072a001:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a001    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x54]                   // 0x0072a007    8d5f54
                         {disp8} je         _jmp_addr_0x0072a035                          // 0x0072a00a    7429
                         push               ebp                                           // 0x0072a00c    55
                         push               0x1                                           // 0x0072a00d    6a01
                         push               ebx                                           // 0x0072a00f    53
                         mov.s              ecx, esi                                      // 0x0072a010    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a012    e8c9280900
                         cmp                eax, 0x03                                     // 0x0072a017    83f803
                         {disp8} jne        _jmp_addr_0x0072a022                          // 0x0072a01a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a01c    892d94c9be00
_jmp_addr_0x0072a022:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a022    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072a028    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a02a    8a0b
                         inc                ecx                                           // 0x0072a02c    41
                         add.s              eax, ecx                                      // 0x0072a02d    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a02f    898614020000
_jmp_addr_0x0072a035:    {disp8} lea        edx, dword ptr [edi + 0x58]                   // 0x0072a035    8d5758
                         push               edx                                           // 0x0072a038    52
                         mov.s              ecx, esi                                      // 0x0072a039    8bce
                         call               @ReadInfo__10GameOSFileFPPC9GBaseInfo@12      // 0x0072a03b    e8c09ee3ff
                         {disp8} lea        eax, dword ptr [edi + 0x5c]                   // 0x0072a040    8d475c
                         push               eax                                           // 0x0072a043    50
                         mov.s              ecx, esi                                      // 0x0072a044    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072a046    e83581e3ff
                         {disp8} lea        ecx, dword ptr [edi + 0x68]                   // 0x0072a04b    8d4f68
                         push               ecx                                           // 0x0072a04e    51
                         mov.s              ecx, esi                                      // 0x0072a04f    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072a051    e82a81e3ff
                         {disp8} lea        edx, dword ptr [edi + 0x60]                   // 0x0072a056    8d5760
                         push               edx                                           // 0x0072a059    52
                         mov.s              ecx, esi                                      // 0x0072a05a    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072a05c    e81f81e3ff
                         {disp8} lea        eax, dword ptr [edi + 0x64]                   // 0x0072a061    8d4764
                         push               eax                                           // 0x0072a064    50
                         mov.s              ecx, esi                                      // 0x0072a065    8bce
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072a067    e81481e3ff
                         cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a06c    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x70]                   // 0x0072a072    8d5f70
                         {disp8} je         _jmp_addr_0x0072a0a0                          // 0x0072a075    7429
                         push               ebp                                           // 0x0072a077    55
                         push               0x1                                           // 0x0072a078    6a01
                         push               ebx                                           // 0x0072a07a    53
                         mov.s              ecx, esi                                      // 0x0072a07b    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a07d    e85e280900
                         cmp                eax, 0x03                                     // 0x0072a082    83f803
                         {disp8} jne        _jmp_addr_0x0072a08d                          // 0x0072a085    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a087    892d94c9be00
_jmp_addr_0x0072a08d:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a08d    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072a093    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a095    8a0b
                         inc                ecx                                           // 0x0072a097    41
                         add.s              eax, ecx                                      // 0x0072a098    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a09a    898614020000
_jmp_addr_0x0072a0a0:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a0a0    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x71]                   // 0x0072a0a6    8d5f71
                         {disp8} je         _jmp_addr_0x0072a0d4                          // 0x0072a0a9    7429
                         push               ebp                                           // 0x0072a0ab    55
                         push               0x1                                           // 0x0072a0ac    6a01
                         push               ebx                                           // 0x0072a0ae    53
                         mov.s              ecx, esi                                      // 0x0072a0af    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a0b1    e82a280900
                         cmp                eax, 0x03                                     // 0x0072a0b6    83f803
                         {disp8} jne        _jmp_addr_0x0072a0c1                          // 0x0072a0b9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a0bb    892d94c9be00
_jmp_addr_0x0072a0c1:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a0c1    8b8614020000
                         xor.s              edx, edx                                      // 0x0072a0c7    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072a0c9    8a13
                         inc                edx                                           // 0x0072a0cb    42
                         add.s              eax, edx                                      // 0x0072a0cc    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a0ce    898614020000
_jmp_addr_0x0072a0d4:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a0d4    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x74]                   // 0x0072a0da    8d5f74
                         {disp8} je         _jmp_addr_0x0072a10a                          // 0x0072a0dd    742b
                         push               ebp                                           // 0x0072a0df    55
                         push               0x4                                           // 0x0072a0e0    6a04
                         push               ebx                                           // 0x0072a0e2    53
                         mov.s              ecx, esi                                      // 0x0072a0e3    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a0e5    e8f6270900
                         cmp                eax, 0x03                                     // 0x0072a0ea    83f803
                         {disp8} jne        _jmp_addr_0x0072a0f5                          // 0x0072a0ed    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a0ef    892d94c9be00
_jmp_addr_0x0072a0f5:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072a0f5    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072a0fb    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072a0fd    8a03
                         add                eax, 0x04                                     // 0x0072a0ff    83c004
                         add.s              ecx, eax                                      // 0x0072a102    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072a104    898e14020000
_jmp_addr_0x0072a10a:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a10a    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0072a110    8d5f78
                         {disp8} je         _jmp_addr_0x0072a140                          // 0x0072a113    742b
                         push               ebp                                           // 0x0072a115    55
                         push               0x4                                           // 0x0072a116    6a04
                         push               ebx                                           // 0x0072a118    53
                         mov.s              ecx, esi                                      // 0x0072a119    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a11b    e8c0270900
                         cmp                eax, 0x03                                     // 0x0072a120    83f803
                         {disp8} jne        _jmp_addr_0x0072a12b                          // 0x0072a123    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a125    892d94c9be00
_jmp_addr_0x0072a12b:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a12b    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072a131    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a133    8a0b
                         add                ecx, 0x4                                      // 0x0072a135    83c104
                         add.s              eax, ecx                                      // 0x0072a138    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a13a    898614020000
_jmp_addr_0x0072a140:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a140    392d94c9be00
                         {disp8} lea        ebx, dword ptr [edi + 0x7c]                   // 0x0072a146    8d5f7c
                         {disp8} je         _jmp_addr_0x0072a176                          // 0x0072a149    742b
                         push               ebp                                           // 0x0072a14b    55
                         push               0x4                                           // 0x0072a14c    6a04
                         push               ebx                                           // 0x0072a14e    53
                         mov.s              ecx, esi                                      // 0x0072a14f    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a151    e88a270900
                         cmp                eax, 0x03                                     // 0x0072a156    83f803
                         {disp8} jne        _jmp_addr_0x0072a161                          // 0x0072a159    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a15b    892d94c9be00
_jmp_addr_0x0072a161:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a161    8b8614020000
                         xor.s              edx, edx                                      // 0x0072a167    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072a169    8a13
                         add                edx, 0x04                                     // 0x0072a16b    83c204
                         add.s              eax, edx                                      // 0x0072a16e    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a170    898614020000
_jmp_addr_0x0072a176:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a176    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00000084]             // 0x0072a17c    8d9f84000000
                         {disp8} je         _jmp_addr_0x0072a1af                          // 0x0072a182    742b
                         push               ebp                                           // 0x0072a184    55
                         push               0x4                                           // 0x0072a185    6a04
                         push               ebx                                           // 0x0072a187    53
                         mov.s              ecx, esi                                      // 0x0072a188    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a18a    e851270900
                         cmp                eax, 0x03                                     // 0x0072a18f    83f803
                         {disp8} jne        _jmp_addr_0x0072a19a                          // 0x0072a192    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a194    892d94c9be00
_jmp_addr_0x0072a19a:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072a19a    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072a1a0    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072a1a2    8a03
                         add                eax, 0x04                                     // 0x0072a1a4    83c004
                         add.s              ecx, eax                                      // 0x0072a1a7    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072a1a9    898e14020000
_jmp_addr_0x0072a1af:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a1af    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00000080]             // 0x0072a1b5    8d9f80000000
                         {disp8} je         _jmp_addr_0x0072a1e8                          // 0x0072a1bb    742b
                         push               ebp                                           // 0x0072a1bd    55
                         push               0x4                                           // 0x0072a1be    6a04
                         push               ebx                                           // 0x0072a1c0    53
                         mov.s              ecx, esi                                      // 0x0072a1c1    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a1c3    e818270900
                         cmp                eax, 0x03                                     // 0x0072a1c8    83f803
                         {disp8} jne        _jmp_addr_0x0072a1d3                          // 0x0072a1cb    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a1cd    892d94c9be00
_jmp_addr_0x0072a1d3:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a1d3    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072a1d9    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a1db    8a0b
                         add                ecx, 0x4                                      // 0x0072a1dd    83c104
                         add.s              eax, ecx                                      // 0x0072a1e0    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a1e2    898614020000
_jmp_addr_0x0072a1e8:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a1e8    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x0000008c]             // 0x0072a1ee    8d9f8c000000
                         {disp8} je         _jmp_addr_0x0072a221                          // 0x0072a1f4    742b
                         push               ebp                                           // 0x0072a1f6    55
                         push               0x4                                           // 0x0072a1f7    6a04
                         push               ebx                                           // 0x0072a1f9    53
                         mov.s              ecx, esi                                      // 0x0072a1fa    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a1fc    e8df260900
                         cmp                eax, 0x03                                     // 0x0072a201    83f803
                         {disp8} jne        _jmp_addr_0x0072a20c                          // 0x0072a204    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a206    892d94c9be00
_jmp_addr_0x0072a20c:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a20c    8b8614020000
                         xor.s              edx, edx                                      // 0x0072a212    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072a214    8a13
                         add                edx, 0x04                                     // 0x0072a216    83c204
                         add.s              eax, edx                                      // 0x0072a219    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a21b    898614020000
_jmp_addr_0x0072a221:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a221    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00000088]             // 0x0072a227    8d9f88000000
                         {disp8} je         _jmp_addr_0x0072a25a                          // 0x0072a22d    742b
                         push               ebp                                           // 0x0072a22f    55
                         push               0x4                                           // 0x0072a230    6a04
                         push               ebx                                           // 0x0072a232    53
                         mov.s              ecx, esi                                      // 0x0072a233    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a235    e8a6260900
                         cmp                eax, 0x03                                     // 0x0072a23a    83f803
                         {disp8} jne        _jmp_addr_0x0072a245                          // 0x0072a23d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a23f    892d94c9be00
_jmp_addr_0x0072a245:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072a245    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072a24b    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072a24d    8a03
                         add                eax, 0x04                                     // 0x0072a24f    83c004
                         add.s              ecx, eax                                      // 0x0072a252    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072a254    898e14020000
_jmp_addr_0x0072a25a:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072a25a    392d94c9be00
                         {disp32} lea       ebx, dword ptr [edi + 0x00000090]             // 0x0072a260    8d9f90000000
                         {disp8} je         _jmp_addr_0x0072a291                          // 0x0072a266    7429
                         push               ebp                                           // 0x0072a268    55
                         push               0x1                                           // 0x0072a269    6a01
                         push               ebx                                           // 0x0072a26b    53
                         mov.s              ecx, esi                                      // 0x0072a26c    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072a26e    e86d260900
                         cmp                eax, 0x03                                     // 0x0072a273    83f803
                         {disp8} jne        _jmp_addr_0x0072a27e                          // 0x0072a276    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072a278    892d94c9be00
_jmp_addr_0x0072a27e:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a27e    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072a284    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a286    8a0b
                         inc                ecx                                           // 0x0072a288    41
                         add.s              eax, ecx                                      // 0x0072a289    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a28b    898614020000
_jmp_addr_0x0072a291:    {disp32} lea       edx, dword ptr [edi + 0x00000094]             // 0x0072a291    8d9794000000
                         push               edx                                           // 0x0072a297    52
                         mov.s              ecx, esi                                      // 0x0072a298    8bce
                         call               ??$ReadIt@H@GameOSFile@@QAEXAAH@Z             // 0x0072a29a    e8b1d4cdff
                         {disp32} lea       eax, dword ptr [edi + 0x00000098]             // 0x0072a29f    8d8798000000
                         push               eax                                           // 0x0072a2a5    50
                         mov.s              ecx, esi                                      // 0x0072a2a6    8bce
                         call               _jmp_addr_0x00722110                          // 0x0072a2a8    e8637effff
                         add                edi, 0x72                                     // 0x0072a2ad    83c772
                         push               edi                                           // 0x0072a2b0    57
                         mov.s              ecx, esi                                      // 0x0072a2b1    8bce
                         call               _jmp_addr_0x0052c020                          // 0x0072a2b3    e8681de0ff
                         pop                ebp                                           // 0x0072a2b8    5d
                         pop                ebx                                           // 0x0072a2b9    5b
                         pop                edi                                           // 0x0072a2ba    5f
                         mov                eax, 0x00000001                               // 0x0072a2bb    b801000000
                         pop                esi                                           // 0x0072a2c0    5e
                         ret                0x0004                                        // 0x0072a2c1    c20400
_jmp_addr_0x0072a2c4:    pop                edi                                           // 0x0072a2c4    5f
                         xor.s              eax, eax                                      // 0x0072a2c5    33c0
                         pop                esi                                           // 0x0072a2c7    5e
                         ret                0x0004                                        // 0x0072a2c8    c20400
                         nop                                                              // 0x0072a2cb    90
                         nop                                                              // 0x0072a2cc    90
                         nop                                                              // 0x0072a2cd    90
                         nop                                                              // 0x0072a2ce    90
                         nop                                                              // 0x0072a2cf    90
?GetInHandImmersionTexture@SpellSeed@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ:
                         call               _jmp_addr_0x007290f0                          // 0x0072a2d0    e81beeffff
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0072a2d5    8b4010
                         dec                eax                                           // 0x0072a2d8    48
                         neg                eax                                           // 0x0072a2d9    f7d8
                         sbb.s              eax, eax                                      // 0x0072a2db    1bc0
                         and                eax, 0xfffffff2                               // 0x0072a2dd    83e0f2
                         add                eax, 0x0d                                     // 0x0072a2e0    83c00d
                         ret                                                              // 0x0072a2e3    c3
                         nop                                                              // 0x0072a2e4    90
                         nop                                                              // 0x0072a2e5    90
                         nop                                                              // 0x0072a2e6    90
                         nop                                                              // 0x0072a2e7    90
                         nop                                                              // 0x0072a2e8    90
                         nop                                                              // 0x0072a2e9    90
                         nop                                                              // 0x0072a2ea    90
                         nop                                                              // 0x0072a2eb    90
                         nop                                                              // 0x0072a2ec    90
                         nop                                                              // 0x0072a2ed    90
                         nop                                                              // 0x0072a2ee    90
                         nop                                                              // 0x0072a2ef    90
_jmp_addr_0x0072a2f0:    sub                esp, 0x18                                     // 0x0072a2f0    83ec18
                         push               esi                                           // 0x0072a2f3    56
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0072a2f4    8b742424
                         cmp                esi, -0x01                                    // 0x0072a2f8    83feff
                         {disp32} jle       _jmp_addr_0x0072a398                          // 0x0072a2fb    0f8e97000000
                         cmp                esi, 0x1e                                     // 0x0072a301    83fe1e
                         {disp32} jge       _jmp_addr_0x0072a398                          // 0x0072a304    0f8d8e000000
                         push               edi                                           // 0x0072a30a    57
                         push               0x000005ec                                    // 0x0072a30b    68ec050000
                         push               0x00c22714                                    // 0x0072a310    681427c200
                         push               0x7c                                          // 0x0072a315    6a7c
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0072a317    e8d4c3d0ff
                         add                esp, 0x0c                                     // 0x0072a31c    83c40c
                         test               eax, eax                                      // 0x0072a31f    85c0
                         {disp8} je         _jmp_addr_0x0072a38e                          // 0x0072a321    746b
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0072a323    8b7c2424
                         push               0x3f800000                                    // 0x0072a327    680000803f
                         mov.s              ecx, edi                                      // 0x0072a32c    8bcf
                         mov                edx, dword ptr [ecx]                          // 0x0072a32e    8b11
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0072a330    8954240c
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0072a334    8b5104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0072a337    8b4908
                         push               0x0                                           // 0x0072a33a    6a00
                         push               0x0                                           // 0x0072a33c    6a00
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0072a33e    89542418
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0072a342    8b54243c
                         push               edx                                           // 0x0072a346    52
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0072a347    894c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0072a34b    8b4c243c
                         push               ecx                                           // 0x0072a34f    51
                         push               esi                                           // 0x0072a350    56
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0072a351    8d542420
                         push               edx                                           // 0x0072a355    52
                         mov.s              ecx, eax                                      // 0x0072a356    8bc8
                         call               _jmp_addr_0x0072a3a0                          // 0x0072a358    e843000000
                         mov.s              esi, eax                                      // 0x0072a35d    8bf0
                         test               esi, esi                                      // 0x0072a35f    85f6
                         {disp8} je         _jmp_addr_0x0072a386                          // 0x0072a361    7423
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0072a363    8b4f04
                         mov                eax, dword ptr [edi]                          // 0x0072a366    8b07
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0072a368    8b5708
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0072a36b    894c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0072a36f    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0072a373    89442414
                         mov                eax, dword ptr [esi]                          // 0x0072a377    8b06
                         push               ecx                                           // 0x0072a379    51
                         mov.s              ecx, esi                                      // 0x0072a37a    8bce
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0072a37c    89542420
                         call               dword ptr [eax + 0x658]                       // 0x0072a380    ff9058060000
_jmp_addr_0x0072a386:    pop                edi                                           // 0x0072a386    5f
                         mov.s              eax, esi                                      // 0x0072a387    8bc6
                         pop                esi                                           // 0x0072a389    5e
                         add                esp, 0x18                                     // 0x0072a38a    83c418
                         ret                                                              // 0x0072a38d    c3
_jmp_addr_0x0072a38e:    xor.s              esi, esi                                      // 0x0072a38e    33f6
                         pop                edi                                           // 0x0072a390    5f
                         mov.s              eax, esi                                      // 0x0072a391    8bc6
                         pop                esi                                           // 0x0072a393    5e
                         add                esp, 0x18                                     // 0x0072a394    83c418
                         ret                                                              // 0x0072a397    c3
_jmp_addr_0x0072a398:    xor.s              eax, eax                                      // 0x0072a398    33c0
                         pop                esi                                           // 0x0072a39a    5e
                         add                esp, 0x18                                     // 0x0072a39b    83c418
                         ret                                                              // 0x0072a39e    c3
                         nop                                                              // 0x0072a39f    90
_jmp_addr_0x0072a3a0:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0072a3a0    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0072a3a4    8b542414
                         push               esi                                           // 0x0072a3a8    56
                         push               eax                                           // 0x0072a3a9    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0072a3aa    8b44240c
                         mov.s              esi, ecx                                      // 0x0072a3ae    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0072a3b0    8b4c2420
                         push               ecx                                           // 0x0072a3b4    51
                         push               edx                                           // 0x0072a3b5    52
                         push               0x00d39f3c                                    // 0x0072a3b6    683c9fd300
                         push               eax                                           // 0x0072a3bb    50
                         mov.s              ecx, esi                                      // 0x0072a3bc    8bce
                         call               @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x0072a3be    e87dcaedff
                         {disp8} mov        dword ptr [esi + 0x70], 0x00000000            // 0x0072a3c3    c7467000000000
                         mov.s              ecx, esi                                      // 0x0072a3ca    8bce
                         mov                dword ptr [esi], 0x008f3774                   // 0x0072a3cc    c70674378f00
                         call               _jmp_addr_0x0072a400                          // 0x0072a3d2    e829000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0072a3d7    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0072a3db    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0072a3df    8b542414
                         {disp8} mov        dword ptr [esi + 0x78], eax                   // 0x0072a3e3    894678
                         {disp8} mov        dword ptr [esi + 0x68], ecx                   // 0x0072a3e6    894e68
                         {disp8} mov        dword ptr [esi + 0x6c], edx                   // 0x0072a3e9    89566c
                         mov.s              eax, esi                                      // 0x0072a3ec    8bc6
                         pop                esi                                           // 0x0072a3ee    5e
                         ret                0x001c                                        // 0x0072a3ef    c21c00
                         nop                                                              // 0x0072a3f2    90
                         nop                                                              // 0x0072a3f3    90
                         nop                                                              // 0x0072a3f4    90
                         nop                                                              // 0x0072a3f5    90
                         nop                                                              // 0x0072a3f6    90
                         nop                                                              // 0x0072a3f7    90
                         nop                                                              // 0x0072a3f8    90
                         nop                                                              // 0x0072a3f9    90
                         nop                                                              // 0x0072a3fa    90
                         nop                                                              // 0x0072a3fb    90
                         nop                                                              // 0x0072a3fc    90
                         nop                                                              // 0x0072a3fd    90
                         nop                                                              // 0x0072a3fe    90
                         nop                                                              // 0x0072a3ff    90
_jmp_addr_0x0072a400:    or                 eax, -0x1                                     // 0x0072a400    83c8ff
                         {disp8} mov        dword ptr [ecx + 0x74], 0x00000000            // 0x0072a403    c7417400000000
                         {disp8} mov        dword ptr [ecx + 0x6c], 0x3f800000            // 0x0072a40a    c7416c0000803f
                         {disp8} mov        dword ptr [ecx + 0x68], eax                   // 0x0072a411    894168
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x0072a414    894178
                         ret                                                              // 0x0072a417    c3
                         nop                                                              // 0x0072a418    90
                         nop                                                              // 0x0072a419    90
                         nop                                                              // 0x0072a41a    90
                         nop                                                              // 0x0072a41b    90
                         nop                                                              // 0x0072a41c    90
                         nop                                                              // 0x0072a41d    90
                         nop                                                              // 0x0072a41e    90
                         nop                                                              // 0x0072a41f    90
?ToBeDeleted@OneOffSpellSeed@@UAEXH@Z:
                         push               esi                                           // 0x0072a420    56
                         mov.s              esi, ecx                                      // 0x0072a421    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                   // 0x0072a423    8b4e70
                         test               ecx, ecx                                      // 0x0072a426    85c9
                         {disp8} je         _jmp_addr_0x0072a438                          // 0x0072a428    740e
                         mov                eax, dword ptr [ecx]                          // 0x0072a42a    8b01
                         push               0x0                                           // 0x0072a42c    6a00
                         call               dword ptr [eax + 0xc]                         // 0x0072a42e    ff500c
                         {disp8} mov        dword ptr [esi + 0x70], 0x00000000            // 0x0072a431    c7467000000000
_jmp_addr_0x0072a438:    push               0x0                                           // 0x0072a438    6a00
                         mov.s              ecx, esi                                      // 0x0072a43a    8bce
                         call               ?ToBeDeleted@MobileObject@@UAEXH@Z            // 0x0072a43c    e8bfcaedff
                         pop                esi                                           // 0x0072a441    5e
                         ret                0x0004                                        // 0x0072a442    c20400
                         nop                                                              // 0x0072a445    90
                         nop                                                              // 0x0072a446    90
                         nop                                                              // 0x0072a447    90
                         nop                                                              // 0x0072a448    90
                         nop                                                              // 0x0072a449    90
                         nop                                                              // 0x0072a44a    90
                         nop                                                              // 0x0072a44b    90
                         nop                                                              // 0x0072a44c    90
                         nop                                                              // 0x0072a44d    90
                         nop                                                              // 0x0072a44e    90
                         nop                                                              // 0x0072a44f    90
?CallVirtualFunctionsForCreation@OneOffSpellSeed@@UAEXABUMapCoords@@@Z:
                         sub                esp, 0x08                                     // 0x0072a450    83ec08
                         push               ebx                                           // 0x0072a453    53
                         push               ebp                                           // 0x0072a454    55
                         push               esi                                           // 0x0072a455    56
                         push               edi                                           // 0x0072a456    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0072a457    8b7c241c
                         mov.s              esi, ecx                                      // 0x0072a45b    8bf1
                         push               edi                                           // 0x0072a45d    57
                         call               ?CallVirtualFunctionsForCreation@MobileObject@@UAEXABUMapCoords@@@Z                          // 0x0072a45e    e8edccedff
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0072a463    8b4640
                         push               0x0                                           // 0x0072a466    6a00
                         mov                ebx, 0x00000001                               // 0x0072a468    bb01000000
                         push               0x0                                           // 0x0072a46d    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0072a46f    8d4c2418
                         push               ecx                                           // 0x0072a473    51
                         {disp8} mov        byte ptr [esp + 0x20], bl                     // 0x0072a474    885c2420
                         {disp8} mov        byte ptr [esp + 0x1c], bl                     // 0x0072a478    885c241c
                         {disp8} mov        byte ptr [esp + 0x1d], bl                     // 0x0072a47c    885c241d
                         {disp8} mov        byte ptr [esp + 0x1e], 0x00                   // 0x0072a480    c644241e00
                         {disp8} mov        byte ptr [esp + 0x1f], bl                     // 0x0072a485    885c241f
                         mov                ebp, dword ptr [eax]                          // 0x0072a489    8b28
                         push               0x00c0285c                                    // 0x0072a48b    685c28c000
                         call               ?GetSharedMesh@GJUtils@@SAPAULH3DMesh@@PBDABUMaterialProperties@@@Z         // 0x0072a490    e81b3be5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072a495    8b4e40
                         add                esp, 0x08                                     // 0x0072a498    83c408
                         mov.s              edx, eax                                      // 0x0072a49b    8bd0
                         call               dword ptr [ebp + 0xf4]                        // 0x0072a49d    ff95f4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072a4a3    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072a4a6    8b01
                         mov.s              edx, ebx                                      // 0x0072a4a8    8bd3
                         call               dword ptr [eax + 0x40]                        // 0x0072a4aa    ff5040
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072a4ad    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072a4b0    8b01
                         xor.s              edx, edx                                      // 0x0072a4b2    33d2
                         call               dword ptr [eax + 0x78]                        // 0x0072a4b4    ff5078
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072a4b7    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072a4ba    8b01
                         xor.s              edx, edx                                      // 0x0072a4bc    33d2
                         call               dword ptr [eax + 0x80]                        // 0x0072a4be    ff9080000000
                         test               byte ptr [esi + 0x0a], bl                     // 0x0072a4c4    845e0a
                         {disp8} jne        _jmp_addr_0x0072a50e                          // 0x0072a4c7    7545
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                   // 0x0072a4c9    8b4e78
                         push               ecx                                           // 0x0072a4cc    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0072a4cd    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0072a4d3    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]               // 0x0072a4d5    8a815b5a2000
                         push               0x3f800000                                    // 0x0072a4db    680000803f
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0072a4e0    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0072a4e3    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0072a4e6    8d0450
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x0072a4e9    8b5668
                         shl                eax, 5                                        // 0x0072a4ec    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0072a4ef    8d4c0818
                         push               ecx                                           // 0x0072a4f3    51
                         push               edx                                           // 0x0072a4f4    52
                         push               edi                                           // 0x0072a4f5    57
                         call               ?Create@SpellSeedGraphic@@SAPAV1@PBUMapCoords@@W4SPELL_SEED_TYPE@@PAVGPlayer@@MW4POWER_UP_TYPE@@@Z                          // 0x0072a4f6    e865caffff
                         add                esp, 0x14                                     // 0x0072a4fb    83c414
                         test               eax, eax                                      // 0x0072a4fe    85c0
                         {disp8} mov        dword ptr [esi + 0x70], eax                   // 0x0072a500    894670
                         {disp8} je         _jmp_addr_0x0072a50e                          // 0x0072a503    7409
                         push               0x0                                           // 0x0072a505    6a00
                         mov.s              ecx, eax                                      // 0x0072a507    8bc8
                         call               _jmp_addr_0x00727680                          // 0x0072a509    e872d1ffff
_jmp_addr_0x0072a50e:    pop                edi                                           // 0x0072a50e    5f
                         pop                esi                                           // 0x0072a50f    5e
                         pop                ebp                                           // 0x0072a510    5d
                         pop                ebx                                           // 0x0072a511    5b
                         add                esp, 0x08                                     // 0x0072a512    83c408
                         ret                0x0004                                        // 0x0072a515    c20400
                         nop                                                              // 0x0072a518    90
                         nop                                                              // 0x0072a519    90
                         nop                                                              // 0x0072a51a    90
                         nop                                                              // 0x0072a51b    90
                         nop                                                              // 0x0072a51c    90
                         nop                                                              // 0x0072a51d    90
                         nop                                                              // 0x0072a51e    90
                         nop                                                              // 0x0072a51f    90
?IsEffectReceiver@OneOffSpellSeed@@UAEIPAVEffectValues@@@Z:
                         xor.s              eax, eax                                      // 0x0072a520    33c0
                         ret                0x0004                                        // 0x0072a522    c20400
                         nop                                                              // 0x0072a525    90
                         nop                                                              // 0x0072a526    90
                         nop                                                              // 0x0072a527    90
                         nop                                                              // 0x0072a528    90
                         nop                                                              // 0x0072a529    90
                         nop                                                              // 0x0072a52a    90
                         nop                                                              // 0x0072a52b    90
                         nop                                                              // 0x0072a52c    90
                         nop                                                              // 0x0072a52d    90
                         nop                                                              // 0x0072a52e    90
                         nop                                                              // 0x0072a52f    90
?InterfaceSetInMagicHand@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x78]                   // 0x0072a530    8b4178
                         {disp8} mov        ecx, dword ptr [ecx + 0x68]                   // 0x0072a533    8b4968
                         push               eax                                           // 0x0072a536    50
                         lea                eax, dword ptr [ecx + ecx * 0x4]              // 0x0072a537    8d0489
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0072a53a    8d0c80
                         shl                ecx, 4                                        // 0x0072a53d    c1e104
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072a540    81c178d6d900
                         call               @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12                          // 0x0072a546    e8750a0000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0072a54b    8b4c2404
                         mov                edx, dword ptr [ecx]                          // 0x0072a54f    8b11
                         push               eax                                           // 0x0072a551    50
                         call               dword ptr [edx + 0x1c]                        // 0x0072a552    ff521c
                         mov.s              ecx, eax                                      // 0x0072a555    8bc8
                         call               _jmp_addr_0x0064c250                          // 0x0072a557    e8f41cf2ff
                         mov                eax, 0x00000001                               // 0x0072a55c    b801000000
                         ret                0x0004                                        // 0x0072a561    c20400
                         nop                                                              // 0x0072a564    90
                         nop                                                              // 0x0072a565    90
                         nop                                                              // 0x0072a566    90
                         nop                                                              // 0x0072a567    90
                         nop                                                              // 0x0072a568    90
                         nop                                                              // 0x0072a569    90
                         nop                                                              // 0x0072a56a    90
                         nop                                                              // 0x0072a56b    90
                         nop                                                              // 0x0072a56c    90
                         nop                                                              // 0x0072a56d    90
                         nop                                                              // 0x0072a56e    90
                         nop                                                              // 0x0072a56f    90
_jmp_addr_0x0072a570:    push               ecx                                           // 0x0072a570    51
                         {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x0072a571    db05c09eea00
                         push               esi                                           // 0x0072a577    56
                         mov.s              esi, ecx                                      // 0x0072a578    8bf1
                         push               edi                                           // 0x0072a57a    57
                         {disp32} fmul      dword ptr [rdata_bytes + 0xd8fb4]             // 0x0072a57b    d80db41f9800
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0072a581    d80db0a38a00
                         {disp8} fadd       dword ptr [esi + 0x74]                        // 0x0072a587    d84674
                         {disp32} fld       qword ptr [rdata_bytes + 0xd9820]             // 0x0072a58a    dd0520289800
                         call               __CIfmod                                      // 0x0072a590    e8b5da0900
                         {disp8} fst        dword ptr [esi + 0x74]                        // 0x0072a595    d95674
                         call               _jmp_addr_0x007a1400                          // 0x0072a598    e8636e0700
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072a59d    8b4e40
                         mov                esi, dword ptr [ecx]                          // 0x0072a5a0    8b31
                         mov.s              edi, eax                                      // 0x0072a5a2    8bf8
                         cdq                                                              // 0x0072a5a4    99
                         and                edx, 0x03                                     // 0x0072a5a5    83e203
                         add.s              eax, edx                                      // 0x0072a5a8    03c2
                         sar                eax, 2                                        // 0x0072a5aa    c1f802
                         and                edi, 0x80000003                               // 0x0072a5ad    81e703000080
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0072a5b3    89442408
                         push               ecx                                           // 0x0072a5b7    51
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0072a5b8    db44240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0xd8fb8]             // 0x0072a5bc    d80db81f9800
                         fstp               dword ptr [esp]                               // 0x0072a5c2    d91c24
                         {disp8} jns        _jmp_addr_0x0072a5cc                          // 0x0072a5c5    7905
                         dec                edi                                           // 0x0072a5c7    4f
                         or                 edi, 0xfffffffc                               // 0x0072a5c8    83cffc
                         inc                edi                                           // 0x0072a5cb    47
_jmp_addr_0x0072a5cc:    {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0072a5cc    897c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0072a5d0    db44240c
                         push               ecx                                           // 0x0072a5d4    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0xd8fb8]             // 0x0072a5d5    d80db81f9800
                         fstp               dword ptr [esp]                               // 0x0072a5db    d91c24
                         call               dword ptr [esi + 0xe8]                        // 0x0072a5de    ff96e8000000
                         pop                edi                                           // 0x0072a5e4    5f
                         pop                esi                                           // 0x0072a5e5    5e
                         pop                ecx                                           // 0x0072a5e6    59
                         ret                                                              // 0x0072a5e7    c3
                         nop                                                              // 0x0072a5e8    90
                         nop                                                              // 0x0072a5e9    90
                         nop                                                              // 0x0072a5ea    90
                         nop                                                              // 0x0072a5eb    90
                         nop                                                              // 0x0072a5ec    90
                         nop                                                              // 0x0072a5ed    90
                         nop                                                              // 0x0072a5ee    90
                         nop                                                              // 0x0072a5ef    90
_jmp_addr_0x0072a5f0:    {disp8} mov        eax, dword ptr [ecx + 0x68]                   // 0x0072a5f0    8b4168
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0072a5f3    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0072a5f6    8d0480
                         shl                eax, 4                                        // 0x0072a5f9    c1e004
                         add                eax, 0x00d9d678 /* OFFSET _GSpellSeedInfo_ARRAY_00d9d678 */                              // 0x0072a5fc    0578d6d900
                         ret                                                              // 0x0072a601    c3
                         nop                                                              // 0x0072a602    90
                         nop                                                              // 0x0072a603    90
                         nop                                                              // 0x0072a604    90
                         nop                                                              // 0x0072a605    90
                         nop                                                              // 0x0072a606    90
                         nop                                                              // 0x0072a607    90
                         nop                                                              // 0x0072a608    90
                         nop                                                              // 0x0072a609    90
                         nop                                                              // 0x0072a60a    90
                         nop                                                              // 0x0072a60b    90
                         nop                                                              // 0x0072a60c    90
                         nop                                                              // 0x0072a60d    90
                         nop                                                              // 0x0072a60e    90
                         nop                                                              // 0x0072a60f    90
_jmp_addr_0x0072a610:    {disp8} mov        eax, dword ptr [ecx + 0x78]                   // 0x0072a610    8b4178
                         push               eax                                           // 0x0072a613    50
                         call               _jmp_addr_0x0072a5f0                          // 0x0072a614    e8d7ffffff
                         mov.s              ecx, eax                                      // 0x0072a619    8bc8
                         call               _jmp_addr_0x0072afe0                          // 0x0072a61b    e8c0090000
                         ret                                                              // 0x0072a620    c3
                         nop                                                              // 0x0072a621    90
                         nop                                                              // 0x0072a622    90
                         nop                                                              // 0x0072a623    90
                         nop                                                              // 0x0072a624    90
                         nop                                                              // 0x0072a625    90
                         nop                                                              // 0x0072a626    90
                         nop                                                              // 0x0072a627    90
                         nop                                                              // 0x0072a628    90
                         nop                                                              // 0x0072a629    90
                         nop                                                              // 0x0072a62a    90
                         nop                                                              // 0x0072a62b    90
                         nop                                                              // 0x0072a62c    90
                         nop                                                              // 0x0072a62d    90
                         nop                                                              // 0x0072a62e    90
                         nop                                                              // 0x0072a62f    90
?InterfaceValidToTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         mov                eax, 0x00000001                               // 0x0072a630    b801000000
                         ret                0x0004                                        // 0x0072a635    c20400
                         nop                                                              // 0x0072a638    90
                         nop                                                              // 0x0072a639    90
                         nop                                                              // 0x0072a63a    90
                         nop                                                              // 0x0072a63b    90
                         nop                                                              // 0x0072a63c    90
                         nop                                                              // 0x0072a63d    90
                         nop                                                              // 0x0072a63e    90
                         nop                                                              // 0x0072a63f    90
?InterfaceTap@OneOffSpellSeed@@UAEIPAVGInterfaceStatus@@@Z:
                         sub                esp, 0x00000174                               // 0x0072a640    81ec74010000
                         push               esi                                           // 0x0072a646    56
                         mov.s              esi, ecx                                      // 0x0072a647    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0072a649    8b4e6c
                         {disp8} mov        edx, dword ptr [esi + 0x78]                   // 0x0072a64c    8b5678
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0072a64f    8b4668
                         push               edi                                           // 0x0072a652    57
                         {disp32} mov       edi, dword ptr [esp + 0x00000180]             // 0x0072a653    8bbc2480010000
                         push               ecx                                           // 0x0072a65a    51
                         push               edx                                           // 0x0072a65b    52
                         push               eax                                           // 0x0072a65c    50
                         push               edi                                           // 0x0072a65d    57
                         call               _jmp_addr_0x0072a730                          // 0x0072a65e    e8cd000000
                         add                esp, 0x10                                     // 0x0072a663    83c410
                         test               eax, eax                                      // 0x0072a666    85c0
                         {disp32} je        _jmp_addr_0x0072a71c                          // 0x0072a668    0f84ae000000
                         push               0x80000000                                    // 0x0072a66e    6800000080
                         push               0xe                                           // 0x0072a673    6a0e
                         mov.s              ecx, edi                                      // 0x0072a675    8bcf
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                          // 0x0072a677    e83422ebff
                         mov.s              ecx, eax                                      // 0x0072a67c    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x0072a67e    e88de3eaff
                         {disp32} mov       ecx, dword ptr [edi + 0x000000cc]             // 0x0072a683    8b8fcc000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000c8]             // 0x0072a689    8b87c8000000
                         {disp32} mov       edx, dword ptr [edi + 0x000000d0]             // 0x0072a68f    8b97d0000000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0072a695    894c240c
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0072a699    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0072a69d    89442408
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0072a6a1    89542410
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0072a6a5    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0072a6ab    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x0072a6b1    8b81ac030000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0072a6b7    8b542408
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0072a6bb    89442418
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0072a6bf    8b44240c
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0072a6c3    89442448
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x0072a6c7    89542444
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0072a6cb    8b542410
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0072a6cf    8d442414
                         push               eax                                           // 0x0072a6d3    50
                         {disp8} mov        dword ptr [esp + 0x3c], 0x0000006d            // 0x0072a6d4    c744243c6d000000
                         {disp8} mov        dword ptr [esp + 0x38], esi                   // 0x0072a6dc    89742438
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000001            // 0x0072a6e0    c744242001000000
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x0072a6e8    89542450
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0072a6ec    c744242400000000
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0072a6f4    e837f7cfff
                         mov                edx, dword ptr [esi]                          // 0x0072a6f9    8b16
                         push               0x0                                           // 0x0072a6fb    6a00
                         mov.s              ecx, esi                                      // 0x0072a6fd    8bce
                         call               dword ptr [edx + 0xc]                         // 0x0072a6ff    ff520c
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0072a702    8d4c2414
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0072a706    ff1558978a00
                         pop                edi                                           // 0x0072a70c    5f
                         mov                eax, 0x00000003                               // 0x0072a70d    b803000000
                         pop                esi                                           // 0x0072a712    5e
                         add                esp, 0x00000174                               // 0x0072a713    81c474010000
                         ret                0x0004                                        // 0x0072a719    c20400
_jmp_addr_0x0072a71c:    pop                edi                                           // 0x0072a71c    5f
                         xor.s              eax, eax                                      // 0x0072a71d    33c0
                         pop                esi                                           // 0x0072a71f    5e
                         add                esp, 0x00000174                               // 0x0072a720    81c474010000
                         ret                0x0004                                        // 0x0072a726    c20400
                         nop                                                              // 0x0072a729    90
                         nop                                                              // 0x0072a72a    90
                         nop                                                              // 0x0072a72b    90
                         nop                                                              // 0x0072a72c    90
                         nop                                                              // 0x0072a72d    90
                         nop                                                              // 0x0072a72e    90
                         nop                                                              // 0x0072a72f    90
_jmp_addr_0x0072a730:    sub                esp, 0x0c                                     // 0x0072a730    83ec0c
                         push               esi                                           // 0x0072a733    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0072a734    8b742414
                         mov.s              ecx, esi                                      // 0x0072a738    8bce
                         call               _jmp_addr_0x005dc890                          // 0x0072a73a    e85121ebff
                         test               eax, eax                                      // 0x0072a73f    85c0
                         {disp32} je        _jmp_addr_0x0072a834                          // 0x0072a741    0f84ed000000
                         mov                eax, dword ptr [esi]                          // 0x0072a747    8b06
                         push               ebx                                           // 0x0072a749    53
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0072a74a    8b5c241c
                         push               ebp                                           // 0x0072a74e    55
                         push               edi                                           // 0x0072a74f    57
                         push               ebx                                           // 0x0072a750    53
                         push               esi                                           // 0x0072a751    56
                         mov.s              ecx, esi                                      // 0x0072a752    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0072a754    ff501c
                         mov.s              ecx, eax                                      // 0x0072a757    8bc8
                         call               _jmp_addr_0x0064bf40                          // 0x0072a759    e8e217f2ff
                         {disp32} fld       dword ptr [esi + 0x000000c8]                  // 0x0072a75e    d986c8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0072a764    d80d00c48a00
                         mov.s              edi, eax                                      // 0x0072a76a    8bf8
                         call               _jmp_addr_0x007a1400                          // 0x0072a76c    e88f6c0700
                         {disp32} fld       dword ptr [esi + 0x000000d0]                  // 0x0072a771    d986d0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x0072a777    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0072a77d    89442410
                         call               _jmp_addr_0x007a1400                          // 0x0072a781    e87a6c0700
                         test               edi, edi                                      // 0x0072a786    85ff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0072a788    89442414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0072a78c    c744241800000000
                         {disp8} je         _jmp_addr_0x0072a7ae                          // 0x0072a794    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0072a796    8b4c242c
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x0072a79a    8b6c2428
                         push               ecx                                           // 0x0072a79e    51
                         push               ebp                                           // 0x0072a79f    55
                         push               esi                                           // 0x0072a7a0    56
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0072a7a1    8d54241c
                         push               edi                                           // 0x0072a7a5    57
                         push               edx                                           // 0x0072a7a6    52
                         call               _jmp_addr_0x007282a0                          // 0x0072a7a7    e8f4daffff
                         {disp8} jmp        _jmp_addr_0x0072a7d3                          // 0x0072a7ac    eb25
_jmp_addr_0x0072a7ae:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0072a7ae    8b44242c
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x0072a7b2    8b6c2428
                         push               eax                                           // 0x0072a7b6    50
                         lea                eax, dword ptr [ebx + ebx * 0x4]              // 0x0072a7b7    8d049b
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0072a7ba    8d0c80
                         push               ebp                                           // 0x0072a7bd    55
                         shl                ecx, 4                                        // 0x0072a7be    c1e104
                         push               esi                                           // 0x0072a7c1    56
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072a7c2    81c178d6d900
                         push               ecx                                           // 0x0072a7c8    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0072a7c9    8d542420
                         push               edx                                           // 0x0072a7cd    52
                         call               _jmp_addr_0x00728300                          // 0x0072a7ce    e82ddbffff
_jmp_addr_0x0072a7d3:    mov.s              edi, eax                                      // 0x0072a7d3    8bf8
                         add                esp, 0x14                                     // 0x0072a7d5    83c414
                         test               edi, edi                                      // 0x0072a7d8    85ff
                         {disp8} je         _jmp_addr_0x0072a82a                          // 0x0072a7da    744e
                         lea                eax, dword ptr [ebx + ebx * 0x4]              // 0x0072a7dc    8d049b
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0072a7df    8d0c80
                         shl                ecx, 4                                        // 0x0072a7e2    c1e104
                         push               ebp                                           // 0x0072a7e5    55
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072a7e6    81c178d6d900
                         call               @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12                          // 0x0072a7ec    e8cf070000
                         push               eax                                           // 0x0072a7f1    50
                         mov                eax, dword ptr [esi]                          // 0x0072a7f2    8b06
                         mov.s              ecx, esi                                      // 0x0072a7f4    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0072a7f6    ff501c
                         mov.s              ecx, eax                                      // 0x0072a7f9    8bc8
                         call               _jmp_addr_0x0064c250                          // 0x0072a7fb    e8501af2ff
                         push               ebp                                           // 0x0072a800    55
                         mov.s              ecx, edi                                      // 0x0072a801    8bcf
                         {disp8} mov        byte ptr [edi + 0x72], 0x01                   // 0x0072a803    c6477201
                         call               _jmp_addr_0x00729860                          // 0x0072a807    e854f0ffff
                         push               ecx                                           // 0x0072a80c    51
                         mov.s              ecx, edi                                      // 0x0072a80d    8bcf
                         fstp               dword ptr [esp]                               // 0x0072a80f    d91c24
                         call               _jmp_addr_0x00729a30                          // 0x0072a812    e819f2ffff
                         fstp               st(0)                                         // 0x0072a817    ddd8
                         push               edi                                           // 0x0072a819    57
                         mov.s              ecx, esi                                      // 0x0072a81a    8bce
                         call               _jmp_addr_0x005dc870                          // 0x0072a81c    e84f20ebff
                         push               0x0                                           // 0x0072a821    6a00
                         mov.s              ecx, edi                                      // 0x0072a823    8bcf
                         call               _jmp_addr_0x00729900                          // 0x0072a825    e8d6f0ffff
_jmp_addr_0x0072a82a:    mov.s              eax, edi                                      // 0x0072a82a    8bc7
                         pop                edi                                           // 0x0072a82c    5f
                         pop                ebp                                           // 0x0072a82d    5d
                         pop                ebx                                           // 0x0072a82e    5b
                         pop                esi                                           // 0x0072a82f    5e
                         add                esp, 0x0c                                     // 0x0072a830    83c40c
                         ret                                                              // 0x0072a833    c3
_jmp_addr_0x0072a834:    xor.s              eax, eax                                      // 0x0072a834    33c0
                         pop                esi                                           // 0x0072a836    5e
                         add                esp, 0x0c                                     // 0x0072a837    83c40c
                         ret                                                              // 0x0072a83a    c3
                         nop                                                              // 0x0072a83b    90
                         nop                                                              // 0x0072a83c    90
                         nop                                                              // 0x0072a83d    90
                         nop                                                              // 0x0072a83e    90
                         nop                                                              // 0x0072a83f    90
_jmp_addr_0x0072a840:    push               esi                                           // 0x0072a840    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0072a841    8b742408
                         push               edi                                           // 0x0072a845    57
                         mov.s              edi, ecx                                      // 0x0072a846    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x40]                   // 0x0072a848    8b4740
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0072a84b    8b4814
                         add                eax, 0x14                                     // 0x0072a84e    83c014
                         mov                dword ptr [esi], ecx                          // 0x0072a851    890e
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0072a853    8b5004
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0072a856    895604
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0072a859    8b4808
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x0072a85c    894e08
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x0072a85f    8b500c
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0072a862    89560c
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0072a865    8b4810
                         {disp8} mov        dword ptr [esi + 0x10], ecx                   // 0x0072a868    894e10
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x0072a86b    8b5014
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x0072a86e    895614
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0072a871    8b4818
                         {disp8} mov        dword ptr [esi + 0x18], ecx                   // 0x0072a874    894e18
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x0072a877    8b501c
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x0072a87a    89561c
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x0072a87d    8b4820
                         {disp8} mov        dword ptr [esi + 0x20], ecx                   // 0x0072a880    894e20
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x0072a883    8b5024
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x0072a886    895624
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x0072a889    8b4828
                         {disp8} mov        dword ptr [esi + 0x28], ecx                   // 0x0072a88c    894e28
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x0072a88f    8b502c
                         {disp8} mov        dword ptr [esi + 0x2c], edx                   // 0x0072a892    89562c
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x0072a895    8b4f40
                         mov                eax, dword ptr [ecx]                          // 0x0072a898    8b01
                         call               dword ptr [eax + 0xf8]                        // 0x0072a89a    ff90f8000000
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x0072a8a0    8b4f40
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x0072a8a3    d94120
                         add                ecx, 0x14                                     // 0x0072a8a6    83c114
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0072a8a9    d8481c
                         add                eax, 0x18                                     // 0x0072a8ac    83c018
                         {disp8} fld        dword ptr [ecx + 0x18]                        // 0x0072a8af    d94118
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0072a8b2    8b542410
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0072a8b6    d84808
                         faddp              st(1), st                                     // 0x0072a8b9    dec1
                         fld                dword ptr [eax]                               // 0x0072a8bb    d900
                         fmul               dword ptr [ecx]                               // 0x0072a8bd    d809
                         faddp              st(1), st                                     // 0x0072a8bf    dec1
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x0072a8c1    d84124
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x0072a8c4    d95e24
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0072a8c7    d94104
                         fmul               dword ptr [eax]                               // 0x0072a8ca    d808
                         {disp8} fld        dword ptr [ecx + 0x10]                        // 0x0072a8cc    d94110
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0072a8cf    d84804
                         faddp              st(1), st                                     // 0x0072a8d2    dec1
                         {disp8} fld        dword ptr [ecx + 0x1c]                        // 0x0072a8d4    d9411c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0072a8d7    d84808
                         faddp              st(1), st                                     // 0x0072a8da    dec1
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x0072a8dc    d84128
                         {disp8} fstp       dword ptr [esi + 0x28]                        // 0x0072a8df    d95e28
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0072a8e2    d94108
                         fmul               dword ptr [eax]                               // 0x0072a8e5    d808
                         {disp8} fld        dword ptr [ecx + 0x14]                        // 0x0072a8e7    d94114
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0072a8ea    d84804
                         faddp              st(1), st                                     // 0x0072a8ed    dec1
                         {disp8} fld        dword ptr [ecx + 0x20]                        // 0x0072a8ef    d94120
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0072a8f2    d84808
                         faddp              st(1), st                                     // 0x0072a8f5    dec1
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x0072a8f7    d8412c
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x0072a8fa    d95e2c
                         {disp8} mov        ecx, dword ptr [edi + 0x40]                   // 0x0072a8fd    8b4f40
                         {disp8} fld        dword ptr [ecx + 0x44]                        // 0x0072a900    d94144
                         pop                edi                                           // 0x0072a903    5f
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebdc]             // 0x0072a904    d80ddc7b8c00
                         pop                esi                                           // 0x0072a90a    5e
                         fstp               dword ptr [edx]                               // 0x0072a90b    d91a
                         ret                0x0008                                        // 0x0072a90d    c20800
?GetMesh@OneOffSpellSeed@@UBEHXZ:
                         xor.s              eax, eax                                      // 0x0072a910    33c0
                         ret                                                              // 0x0072a912    c3
                         nop                                                              // 0x0072a913    90
                         nop                                                              // 0x0072a914    90
                         nop                                                              // 0x0072a915    90
                         nop                                                              // 0x0072a916    90
                         nop                                                              // 0x0072a917    90
                         nop                                                              // 0x0072a918    90
                         nop                                                              // 0x0072a919    90
                         nop                                                              // 0x0072a91a    90
                         nop                                                              // 0x0072a91b    90
                         nop                                                              // 0x0072a91c    90
                         nop                                                              // 0x0072a91d    90
                         nop                                                              // 0x0072a91e    90
                         nop                                                              // 0x0072a91f    90
?GetPhysicsConstantsType@OneOffSpellSeed@@UAEIXZ:
                         mov                eax, 0x00000009                               // 0x0072a920    b809000000
                         ret                                                              // 0x0072a925    c3
                         nop                                                              // 0x0072a926    90
                         nop                                                              // 0x0072a927    90
                         nop                                                              // 0x0072a928    90
                         nop                                                              // 0x0072a929    90
                         nop                                                              // 0x0072a92a    90
                         nop                                                              // 0x0072a92b    90
                         nop                                                              // 0x0072a92c    90
                         nop                                                              // 0x0072a92d    90
                         nop                                                              // 0x0072a92e    90
                         nop                                                              // 0x0072a92f    90
?Save@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0072a930    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0072a931    8b742408
                         push               edi                                           // 0x0072a935    57
                         mov.s              edi, ecx                                      // 0x0072a936    8bf9
                         push               esi                                           // 0x0072a938    56
                         call               ?Save@MobileObject@@UAEIAAVGameOSFile@@@Z     // 0x0072a939    e802d3edff
                         test               eax, eax                                      // 0x0072a93e    85c0
                         {disp32} je        _jmp_addr_0x0072aa0a                          // 0x0072a940    0f84c4000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072a946    a190c9be00
                         test               eax, eax                                      // 0x0072a94b    85c0
                         push               ebx                                           // 0x0072a94d    53
                         {disp32} je        _jmp_addr_0x0072a9ff                          // 0x0072a94e    0f84ab000000
                         push               0x0                                           // 0x0072a954    6a00
                         push               0x4                                           // 0x0072a956    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x78]                   // 0x0072a958    8d5f78
                         push               ebx                                           // 0x0072a95b    53
                         mov.s              ecx, esi                                      // 0x0072a95c    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072a95e    e8bd1f0900
                         cmp                eax, 0x03                                     // 0x0072a963    83f803
                         {disp8} jne        _jmp_addr_0x0072a972                          // 0x0072a966    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0072a968    c70590c9be0000000000
_jmp_addr_0x0072a972:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072a972    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072a978    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072a97a    8a03
                         add                eax, 0x04                                     // 0x0072a97c    83c004
                         add.s              ecx, eax                                      // 0x0072a97f    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072a981    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072a987    a190c9be00
                         test               eax, eax                                      // 0x0072a98c    85c0
                         {disp8} je         _jmp_addr_0x0072a9ff                          // 0x0072a98e    746f
                         push               0x0                                           // 0x0072a990    6a00
                         push               0x4                                           // 0x0072a992    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x68]                   // 0x0072a994    8d5f68
                         push               ebx                                           // 0x0072a997    53
                         mov.s              ecx, esi                                      // 0x0072a998    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072a99a    e8811f0900
                         cmp                eax, 0x03                                     // 0x0072a99f    83f803
                         {disp8} jne        _jmp_addr_0x0072a9ae                          // 0x0072a9a2    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0072a9a4    c70590c9be0000000000
_jmp_addr_0x0072a9ae:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0072a9ae    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0072a9b4    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072a9b6    8a0b
                         add                ecx, 0x4                                      // 0x0072a9b8    83c104
                         add.s              edx, ecx                                      // 0x0072a9bb    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0072a9bd    899614020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072a9c3    a190c9be00
                         test               eax, eax                                      // 0x0072a9c8    85c0
                         {disp8} je         _jmp_addr_0x0072a9ff                          // 0x0072a9ca    7433
                         push               0x0                                           // 0x0072a9cc    6a00
                         push               0x4                                           // 0x0072a9ce    6a04
                         add                edi, 0x6c                                     // 0x0072a9d0    83c76c
                         push               edi                                           // 0x0072a9d3    57
                         mov.s              ecx, esi                                      // 0x0072a9d4    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072a9d6    e8451f0900
                         cmp                eax, 0x03                                     // 0x0072a9db    83f803
                         {disp8} jne        _jmp_addr_0x0072a9ea                          // 0x0072a9de    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0072a9e0    c70590c9be0000000000
_jmp_addr_0x0072a9ea:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072a9ea    8b8614020000
                         xor.s              edx, edx                                      // 0x0072a9f0    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072a9f2    8a17
                         add                edx, 0x04                                     // 0x0072a9f4    83c204
                         add.s              eax, edx                                      // 0x0072a9f7    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072a9f9    898614020000
_jmp_addr_0x0072a9ff:    pop                ebx                                           // 0x0072a9ff    5b
                         pop                edi                                           // 0x0072aa00    5f
                         mov                eax, 0x00000001                               // 0x0072aa01    b801000000
                         pop                esi                                           // 0x0072aa06    5e
                         ret                0x0004                                        // 0x0072aa07    c20400
_jmp_addr_0x0072aa0a:    pop                edi                                           // 0x0072aa0a    5f
                         xor.s              eax, eax                                      // 0x0072aa0b    33c0
                         pop                esi                                           // 0x0072aa0d    5e
                         ret                0x0004                                        // 0x0072aa0e    c20400
                         nop                                                              // 0x0072aa11    90
                         nop                                                              // 0x0072aa12    90
                         nop                                                              // 0x0072aa13    90
                         nop                                                              // 0x0072aa14    90
                         nop                                                              // 0x0072aa15    90
                         nop                                                              // 0x0072aa16    90
                         nop                                                              // 0x0072aa17    90
                         nop                                                              // 0x0072aa18    90
                         nop                                                              // 0x0072aa19    90
                         nop                                                              // 0x0072aa1a    90
                         nop                                                              // 0x0072aa1b    90
                         nop                                                              // 0x0072aa1c    90
                         nop                                                              // 0x0072aa1d    90
                         nop                                                              // 0x0072aa1e    90
                         nop                                                              // 0x0072aa1f    90
?Load@OneOffSpellSeed@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x0072aa20    53
                         push               esi                                           // 0x0072aa21    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072aa22    8b74240c
                         mov.s              ebx, ecx                                      // 0x0072aa26    8bd9
                         push               esi                                           // 0x0072aa28    56
                         call               ?Load@MobileObject@@UAEIAAVGameOSFile@@@Z     // 0x0072aa29    e8d2d2edff
                         test               eax, eax                                      // 0x0072aa2e    85c0
                         {disp32} je        _jmp_addr_0x0072aaf6                          // 0x0072aa30    0f84c0000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0072aa36    a194c9be00
                         test               eax, eax                                      // 0x0072aa3b    85c0
                         push               edi                                           // 0x0072aa3d    57
                         {disp8} lea        edi, dword ptr [ebx + 0x78]                   // 0x0072aa3e    8d7b78
                         {disp8} je         _jmp_addr_0x0072aa73                          // 0x0072aa41    7430
                         push               0x0                                           // 0x0072aa43    6a00
                         push               0x4                                           // 0x0072aa45    6a04
                         push               edi                                           // 0x0072aa47    57
                         mov.s              ecx, esi                                      // 0x0072aa48    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072aa4a    e8911e0900
                         cmp                eax, 0x03                                     // 0x0072aa4f    83f803
                         {disp8} jne        _jmp_addr_0x0072aa5e                          // 0x0072aa52    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0072aa54    c70594c9be0000000000
_jmp_addr_0x0072aa5e:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072aa5e    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072aa64    33c0
                         mov                al, byte ptr [edi]                            // 0x0072aa66    8a07
                         add                eax, 0x04                                     // 0x0072aa68    83c004
                         add.s              ecx, eax                                      // 0x0072aa6b    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072aa6d    898e14020000
_jmp_addr_0x0072aa73:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0072aa73    a194c9be00
                         test               eax, eax                                      // 0x0072aa78    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x68]                   // 0x0072aa7a    8d7b68
                         {disp8} je         _jmp_addr_0x0072aaaf                          // 0x0072aa7d    7430
                         push               0x0                                           // 0x0072aa7f    6a00
                         push               0x4                                           // 0x0072aa81    6a04
                         push               edi                                           // 0x0072aa83    57
                         mov.s              ecx, esi                                      // 0x0072aa84    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072aa86    e8551e0900
                         cmp                eax, 0x03                                     // 0x0072aa8b    83f803
                         {disp8} jne        _jmp_addr_0x0072aa9a                          // 0x0072aa8e    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0072aa90    c70594c9be0000000000
_jmp_addr_0x0072aa9a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072aa9a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072aaa0    33c9
                         mov                cl, byte ptr [edi]                            // 0x0072aaa2    8a0f
                         add                ecx, 0x4                                      // 0x0072aaa4    83c104
                         add.s              eax, ecx                                      // 0x0072aaa7    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072aaa9    898614020000
_jmp_addr_0x0072aaaf:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0072aaaf    a194c9be00
                         test               eax, eax                                      // 0x0072aab4    85c0
                         {disp8} lea        edi, dword ptr [ebx + 0x6c]                   // 0x0072aab6    8d7b6c
                         {disp8} je         _jmp_addr_0x0072aaeb                          // 0x0072aab9    7430
                         push               0x0                                           // 0x0072aabb    6a00
                         push               0x4                                           // 0x0072aabd    6a04
                         push               edi                                           // 0x0072aabf    57
                         mov.s              ecx, esi                                      // 0x0072aac0    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072aac2    e8191e0900
                         cmp                eax, 0x03                                     // 0x0072aac7    83f803
                         {disp8} jne        _jmp_addr_0x0072aad6                          // 0x0072aaca    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0072aacc    c70594c9be0000000000
_jmp_addr_0x0072aad6:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072aad6    8b8614020000
                         xor.s              edx, edx                                      // 0x0072aadc    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072aade    8a17
                         add                edx, 0x04                                     // 0x0072aae0    83c204
                         add.s              eax, edx                                      // 0x0072aae3    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072aae5    898614020000
_jmp_addr_0x0072aaeb:    pop                edi                                           // 0x0072aaeb    5f
                         pop                esi                                           // 0x0072aaec    5e
                         mov                eax, 0x00000001                               // 0x0072aaed    b801000000
                         pop                ebx                                           // 0x0072aaf2    5b
                         ret                0x0004                                        // 0x0072aaf3    c20400
_jmp_addr_0x0072aaf6:    pop                esi                                           // 0x0072aaf6    5e
                         xor.s              eax, eax                                      // 0x0072aaf7    33c0
                         pop                ebx                                           // 0x0072aaf9    5b
                         ret                0x0004                                        // 0x0072aafa    c20400
                         nop                                                              // 0x0072aafd    90
                         nop                                                              // 0x0072aafe    90
                         nop                                                              // 0x0072aaff    90
?IsOneOffSpellAggressive@OneOffSpellSeed@@UAEIPAVCreature@@@Z:
                         push               -0x1                                          // 0x0072ab00    6aff
                         call               _jmp_addr_0x0072a5f0                          // 0x0072ab02    e8e9faffff
                         mov.s              ecx, eax                                      // 0x0072ab07    8bc8
                         call               _jmp_addr_0x0072afe0                          // 0x0072ab09    e8d2040000
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x0072ab0e    8b4048
                         ret                0x0004                                        // 0x0072ab11    c20400
                         nop                                                              // 0x0072ab14    90
                         nop                                                              // 0x0072ab15    90
                         nop                                                              // 0x0072ab16    90
                         nop                                                              // 0x0072ab17    90
                         nop                                                              // 0x0072ab18    90
                         nop                                                              // 0x0072ab19    90
                         nop                                                              // 0x0072ab1a    90
                         nop                                                              // 0x0072ab1b    90
                         nop                                                              // 0x0072ab1c    90
                         nop                                                              // 0x0072ab1d    90
                         nop                                                              // 0x0072ab1e    90
                         nop                                                              // 0x0072ab1f    90
?IsOneOffSpellCompassionate@OneOffSpellSeed@@UAEIPAVCreature@@@Z:
                         push               -0x1                                          // 0x0072ab20    6aff
                         call               _jmp_addr_0x0072a5f0                          // 0x0072ab22    e8c9faffff
                         mov.s              ecx, eax                                      // 0x0072ab27    8bc8
                         call               _jmp_addr_0x0072afe0                          // 0x0072ab29    e8b2040000
                         {disp8} mov        eax, dword ptr [eax + 0x4c]                   // 0x0072ab2e    8b404c
                         ret                0x0004                                        // 0x0072ab31    c20400
                         nop                                                              // 0x0072ab34    90
                         nop                                                              // 0x0072ab35    90
                         nop                                                              // 0x0072ab36    90
                         nop                                                              // 0x0072ab37    90
                         nop                                                              // 0x0072ab38    90
                         nop                                                              // 0x0072ab39    90
                         nop                                                              // 0x0072ab3a    90
                         nop                                                              // 0x0072ab3b    90
                         nop                                                              // 0x0072ab3c    90
                         nop                                                              // 0x0072ab3d    90
                         nop                                                              // 0x0072ab3e    90
                         nop                                                              // 0x0072ab3f    90
?IsOneOffSpellPlayful@OneOffSpellSeed@@UAEIPAVCreature@@@Z:
                         push               -0x1                                          // 0x0072ab40    6aff
                         call               _jmp_addr_0x0072a5f0                          // 0x0072ab42    e8a9faffff
                         mov.s              ecx, eax                                      // 0x0072ab47    8bc8
                         call               _jmp_addr_0x0072afe0                          // 0x0072ab49    e892040000
                         {disp8} mov        eax, dword ptr [eax + 0x44]                   // 0x0072ab4e    8b4044
                         ret                0x0004                                        // 0x0072ab51    c20400
                         nop                                                              // 0x0072ab54    90
                         nop                                                              // 0x0072ab55    90
                         nop                                                              // 0x0072ab56    90
                         nop                                                              // 0x0072ab57    90
                         nop                                                              // 0x0072ab58    90
                         nop                                                              // 0x0072ab59    90
                         nop                                                              // 0x0072ab5a    90
                         nop                                                              // 0x0072ab5b    90
                         nop                                                              // 0x0072ab5c    90
                         nop                                                              // 0x0072ab5d    90
                         nop                                                              // 0x0072ab5e    90
                         nop                                                              // 0x0072ab5f    90
?IsOneOffSpellToRestoreHealth@OneOffSpellSeed@@UAEIPAVCreature@@@Z:
                         push               -0x1                                          // 0x0072ab60    6aff
                         call               _jmp_addr_0x0072a5f0                          // 0x0072ab62    e889faffff
                         mov.s              ecx, eax                                      // 0x0072ab67    8bc8
                         call               _jmp_addr_0x0072afe0                          // 0x0072ab69    e872040000
                         {disp8} mov        eax, dword ptr [eax + 0x50]                   // 0x0072ab6e    8b4050
                         ret                0x0004                                        // 0x0072ab71    c20400
                         nop                                                              // 0x0072ab74    90
                         nop                                                              // 0x0072ab75    90
                         nop                                                              // 0x0072ab76    90
                         nop                                                              // 0x0072ab77    90
                         nop                                                              // 0x0072ab78    90
                         nop                                                              // 0x0072ab79    90
                         nop                                                              // 0x0072ab7a    90
                         nop                                                              // 0x0072ab7b    90
                         nop                                                              // 0x0072ab7c    90
                         nop                                                              // 0x0072ab7d    90
                         nop                                                              // 0x0072ab7e    90
                         nop                                                              // 0x0072ab7f    90
?SaveObject@OneOffSpellSeed@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         sub                esp, 0x00000144                               // 0x0072ab80    81ec44010000
                         push               ebx                                           // 0x0072ab86    53
                         push               esi                                           // 0x0072ab87    56
                         mov.s              esi, ecx                                      // 0x0072ab88    8bf1
                         call               ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x0072ab8a    e86153e4ff
                         mov.s              ebx, eax                                      // 0x0072ab8f    8bd8
                         test               ebx, ebx                                      // 0x0072ab91    85db
                         {disp32} je        _jmp_addr_0x0072ac35                          // 0x0072ab93    0f849c000000
                         {disp32} mov       eax, dword ptr [esp + 0x00000154]             // 0x0072ab99    8b842454010000
                         test               eax, eax                                      // 0x0072aba0    85c0
                         {disp8} je         _jmp_addr_0x0072abb4                          // 0x0072aba2    7410
                         push               eax                                           // 0x0072aba4    50
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0072aba5    8d442418
                         push               eax                                           // 0x0072aba9    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0072abaa    8d4e14
                         call               _jmp_addr_0x006055c0                          // 0x0072abad    e80eaaedff
                         {disp8} jmp        _jmp_addr_0x0072abb7                          // 0x0072abb2    eb03
_jmp_addr_0x0072abb4:    {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0072abb4    8d4614
_jmp_addr_0x0072abb7:    mov                ecx, dword ptr [eax]                          // 0x0072abb7    8b08
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0072abb9    894c2408
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0072abbd    8b5004
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0072abc0    8954240c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0072abc4    8b4008
                         push               edi                                           // 0x0072abc7    57
                         mov.s              ecx, esi                                      // 0x0072abc8    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0072abca    89442414
                         call               _jmp_addr_0x0072a610                          // 0x0072abce    e83dfaffff
                         mov.s              ecx, eax                                      // 0x0072abd3    8bc8
                         call               ?GetMagicInfoText@GMagicInfo@@QBEPBDXZ        // 0x0072abd5    e81608edff
                         push               eax                                           // 0x0072abda    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f0]             // 0x0072abdb    8d8c24f0000000
                         push               ecx                                           // 0x0072abe2    51
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0072abe3    8d4c2414
                         call               ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x0072abe7    e8947cedff
                         push               eax                                           // 0x0072abec    50
                         push               0x54                                          // 0x0072abed    6a54
                         call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x0072abef    e83ca5feff
                         add                esp, 0x04                                     // 0x0072abf4    83c404
                         push               eax                                           // 0x0072abf7    50
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0072abf8    8d542430
                         push               edx                                           // 0x0072abfc    52
                         call               _sprintf                                      // 0x0072abfd    e8d0ab0900
                         or                 ecx, 0xffffffff                               // 0x0072ac02    83c9ff
                         xor.s              eax, eax                                      // 0x0072ac05    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x34]                   // 0x0072ac07    8d7c2434
                         repne scasb                                                      // 0x0072ac0b    f2ae
                         not                ecx                                           // 0x0072ac0d    f7d1
                         dec                ecx                                           // 0x0072ac0f    49
                         push               ecx                                           // 0x0072ac10    51
                         {disp32} mov       ecx, dword ptr [esp + 0x00000168]             // 0x0072ac11    8b8c2468010000
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x0072ac18    8d442438
                         push               eax                                           // 0x0072ac1c    50
                         push               ecx                                           // 0x0072ac1d    51
                         push               esi                                           // 0x0072ac1e    56
                         call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x0072ac1f    e8ece9feff
                         add                esp, 0x20                                     // 0x0072ac24    83c420
                         pop                edi                                           // 0x0072ac27    5f
                         pop                esi                                           // 0x0072ac28    5e
                         mov.s              eax, ebx                                      // 0x0072ac29    8bc3
                         pop                ebx                                           // 0x0072ac2b    5b
                         add                esp, 0x00000144                               // 0x0072ac2c    81c444010000
                         ret                0x0008                                        // 0x0072ac32    c20800
_jmp_addr_0x0072ac35:    pop                esi                                           // 0x0072ac35    5e
                         mov.s              eax, ebx                                      // 0x0072ac36    8bc3
                         pop                ebx                                           // 0x0072ac38    5b
                         add                esp, 0x00000144                               // 0x0072ac39    81c444010000
                         ret                0x0008                                        // 0x0072ac3f    c20800
                         nop                                                              // 0x0072ac42    90
                         nop                                                              // 0x0072ac43    90
                         nop                                                              // 0x0072ac44    90
                         nop                                                              // 0x0072ac45    90
                         nop                                                              // 0x0072ac46    90
                         nop                                                              // 0x0072ac47    90
                         nop                                                              // 0x0072ac48    90
                         nop                                                              // 0x0072ac49    90
                         nop                                                              // 0x0072ac4a    90
                         nop                                                              // 0x0072ac4b    90
                         nop                                                              // 0x0072ac4c    90
                         nop                                                              // 0x0072ac4d    90
                         nop                                                              // 0x0072ac4e    90
                         nop                                                              // 0x0072ac4f    90
?GetOverwritePickUpToolTip@OneOffSpellSeed@@UAEIXZ:
                         push               esi                                           // 0x0072ac50    56
                         mov.s              esi, ecx                                      // 0x0072ac51    8bf1
                         call               _jmp_addr_0x0072a610                          // 0x0072ac53    e8b8f9ffff
                         test               eax, eax                                      // 0x0072ac58    85c0
                         {disp8} je         _jmp_addr_0x0072ac6b                          // 0x0072ac5a    740f
                         mov.s              ecx, eax                                      // 0x0072ac5c    8bc8
                         call               ?GetMagicEffectInfo@GMagicInfo@@QBEPAVGMagicEffectInfo@@XZ        // 0x0072ac5e    e81d0aedff
                         {disp32} mov       eax, dword ptr [eax + 0x00000110]             // 0x0072ac63    8b8010010000
                         pop                esi                                           // 0x0072ac69    5e
                         ret                                                              // 0x0072ac6a    c3
_jmp_addr_0x0072ac6b:    {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0072ac6b    8b4668
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0072ac6e    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0072ac71    8d0480
                         shl                eax, 4                                        // 0x0072ac74    c1e004
                         {disp32} mov       eax, dword ptr [eax + 0x00d9d7fc]             // 0x0072ac77    8b80fcd7d900
                         pop                esi                                           // 0x0072ac7d    5e
                         ret                                                              // 0x0072ac7e    c3
                         nop                                                              // 0x0072ac7f    90
?GetOverwriteTapToolTip@OneOffSpellSeed@@UAEIXZ:
                         mov                eax, 0x00000ef7                               // 0x0072ac80    b8f70e0000
                         ret                                                              // 0x0072ac85    c3
                         nop                                                              // 0x0072ac86    90
                         nop                                                              // 0x0072ac87    90
                         nop                                                              // 0x0072ac88    90
                         nop                                                              // 0x0072ac89    90
                         nop                                                              // 0x0072ac8a    90
                         nop                                                              // 0x0072ac8b    90
                         nop                                                              // 0x0072ac8c    90
                         nop                                                              // 0x0072ac8d    90
                         nop                                                              // 0x0072ac8e    90
                         nop                                                              // 0x0072ac8f    90
?GetQueryFirstEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ:
                         push               esi                                           // 0x0072ac90    56
                         mov.s              esi, ecx                                      // 0x0072ac91    8bf1
                         call               _jmp_addr_0x0072a5f0                          // 0x0072ac93    e858f9ffff
                         {disp8} mov        eax, dword ptr [eax + 0x50]                   // 0x0072ac98    8b4050
                         test               eax, eax                                      // 0x0072ac9b    85c0
                         {disp8} jne        _jmp_addr_0x0072aca6                          // 0x0072ac9d    7507
                         mov.s              ecx, esi                                      // 0x0072ac9f    8bce
                         call               ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ                          // 0x0072aca1    e8dad8f0ff
_jmp_addr_0x0072aca6:    pop                esi                                           // 0x0072aca6    5e
                         ret                                                              // 0x0072aca7    c3
                         nop                                                              // 0x0072aca8    90
                         nop                                                              // 0x0072aca9    90
                         nop                                                              // 0x0072acaa    90
                         nop                                                              // 0x0072acab    90
                         nop                                                              // 0x0072acac    90
                         nop                                                              // 0x0072acad    90
                         nop                                                              // 0x0072acae    90
                         nop                                                              // 0x0072acaf    90
?GetQueryLastEnumText@OneOffSpellSeed@@UAE?AW4HELP_TEXT@@XZ:
                         push               esi                                           // 0x0072acb0    56
                         mov.s              esi, ecx                                      // 0x0072acb1    8bf1
                         call               _jmp_addr_0x0072a5f0                          // 0x0072acb3    e838f9ffff
                         {disp8} mov        eax, dword ptr [eax + 0x54]                   // 0x0072acb8    8b4054
                         test               eax, eax                                      // 0x0072acbb    85c0
                         {disp8} jne        _jmp_addr_0x0072acc6                          // 0x0072acbd    7507
                         mov.s              ecx, esi                                      // 0x0072acbf    8bce
                         call               ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ                          // 0x0072acc1    e8cad8f0ff
_jmp_addr_0x0072acc6:    pop                esi                                           // 0x0072acc6    5e
                         ret                                                              // 0x0072acc7    c3
                         nop                                                              // 0x0072acc8    90
                         nop                                                              // 0x0072acc9    90
                         nop                                                              // 0x0072acca    90
                         nop                                                              // 0x0072accb    90
                         nop                                                              // 0x0072accc    90
                         nop                                                              // 0x0072accd    90
                         nop                                                              // 0x0072acce    90
                         nop                                                              // 0x0072accf    90
?ThrowObjectFromHand@SpellSeed@@UAEIPAVGInterfaceStatus@@H@Z:
                         push               esi                                           // 0x0072acd0    56
                         push               edi                                           // 0x0072acd1    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0072acd2    8b7c2410
                         test               edi, edi                                      // 0x0072acd6    85ff
                         mov.s              esi, ecx                                      // 0x0072acd8    8bf1
                         {disp8} je         _jmp_addr_0x0072aceb                          // 0x0072acda    740f
                         call               _jmp_addr_0x00729a80                          // 0x0072acdc    e89fedffff
                         cmp                eax, 0x03                                     // 0x0072ace1    83f803
                         {disp8} jne        _jmp_addr_0x0072aceb                          // 0x0072ace4    7505
                         pop                edi                                           // 0x0072ace6    5f
                         pop                esi                                           // 0x0072ace7    5e
                         ret                0x0008                                        // 0x0072ace8    c20800
_jmp_addr_0x0072aceb:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0072aceb    8b44240c
                         push               edi                                           // 0x0072acef    57
                         push               eax                                           // 0x0072acf0    50
                         mov.s              ecx, esi                                      // 0x0072acf1    8bce
                         call               ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z                          // 0x0072acf3    e8e8d8f0ff
                         pop                edi                                           // 0x0072acf8    5f
                         pop                esi                                           // 0x0072acf9    5e
                         ret                0x0008                                        // 0x0072acfa    c20800
                         nop                                                              // 0x0072acfd    90
                         nop                                                              // 0x0072acfe    90
                         nop                                                              // 0x0072acff    90
_globl_ct_0x0072ad00:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0072ad00    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0072ad06    b001
                         test               al, cl                                        // 0x0072ad08    84c8
                         {disp8} jne        _jmp_addr_0x0072ad14                          // 0x0072ad0a    7508
                         or.s               cl, al                                        // 0x0072ad0c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0072ad0e    880d34c9fa00
_jmp_addr_0x0072ad14:    {disp32} jmp       _jmp_addr_0x0072ad20                          // 0x0072ad14    e907000000
                         nop                                                              // 0x0072ad19    90
                         nop                                                              // 0x0072ad1a    90
                         nop                                                              // 0x0072ad1b    90
                         nop                                                              // 0x0072ad1c    90
                         nop                                                              // 0x0072ad1d    90
                         nop                                                              // 0x0072ad1e    90
                         nop                                                              // 0x0072ad1f    90
_jmp_addr_0x0072ad20:    push               0x00407870                                    // 0x0072ad20    6870784000
                         call               _atexit                                       // 0x0072ad25    e867aa0900
                         pop                ecx                                           // 0x0072ad2a    59
                         ret                                                              // 0x0072ad2b    c3
                         nop                                                              // 0x0072ad2c    90
                         nop                                                              // 0x0072ad2d    90
                         nop                                                              // 0x0072ad2e    90
                         nop                                                              // 0x0072ad2f    90
_globl_ct_0x0072ad30:    {disp32} jmp       _jmp_addr_0x0072ad40                          // 0x0072ad30    e90b000000
                         nop                                                              // 0x0072ad35    90
                         nop                                                              // 0x0072ad36    90
                         nop                                                              // 0x0072ad37    90
                         nop                                                              // 0x0072ad38    90
                         nop                                                              // 0x0072ad39    90
                         nop                                                              // 0x0072ad3a    90
                         nop                                                              // 0x0072ad3b    90
                         nop                                                              // 0x0072ad3c    90
                         nop                                                              // 0x0072ad3d    90
                         nop                                                              // 0x0072ad3e    90
                         nop                                                              // 0x0072ad3f    90
_jmp_addr_0x0072ad40:    {disp32} mov       dword ptr [data_bytes + 0x3d7670], 0x3e000000 // 0x0072ad40    c70570d6d9000000003e
                         ret                                                              // 0x0072ad4a    c3
                         nop                                                              // 0x0072ad4b    90
                         nop                                                              // 0x0072ad4c    90
                         nop                                                              // 0x0072ad4d    90
                         nop                                                              // 0x0072ad4e    90
                         nop                                                              // 0x0072ad4f    90
_globl_ct_0x0072ad50:    {disp32} jmp       _jmp_addr_0x0072ad60                          // 0x0072ad50    e90b000000
                         nop                                                              // 0x0072ad55    90
                         nop                                                              // 0x0072ad56    90
                         nop                                                              // 0x0072ad57    90
                         nop                                                              // 0x0072ad58    90
                         nop                                                              // 0x0072ad59    90
                         nop                                                              // 0x0072ad5a    90
                         nop                                                              // 0x0072ad5b    90
                         nop                                                              // 0x0072ad5c    90
                         nop                                                              // 0x0072ad5d    90
                         nop                                                              // 0x0072ad5e    90
                         nop                                                              // 0x0072ad5f    90
_jmp_addr_0x0072ad60:    {disp32} fld       dword ptr [rdata_bytes + 0xd982c]             // 0x0072ad60    d9052c289800
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0072ad66    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3da558]             // 0x0072ad6c    d91d5805da00
                         ret                                                              // 0x0072ad72    c3
                         nop                                                              // 0x0072ad73    90
                         nop                                                              // 0x0072ad74    90
                         nop                                                              // 0x0072ad75    90
                         nop                                                              // 0x0072ad76    90
                         nop                                                              // 0x0072ad77    90
                         nop                                                              // 0x0072ad78    90
                         nop                                                              // 0x0072ad79    90
                         nop                                                              // 0x0072ad7a    90
                         nop                                                              // 0x0072ad7b    90
                         nop                                                              // 0x0072ad7c    90
                         nop                                                              // 0x0072ad7d    90
                         nop                                                              // 0x0072ad7e    90
                         nop                                                              // 0x0072ad7f    90
_globl_ct_0x0072ad80:    call               _jmp_addr_0x0072ad90                          // 0x0072ad80    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072add0                          // 0x0072ad85    e946000000
                         nop                                                              // 0x0072ad8a    90
                         nop                                                              // 0x0072ad8b    90
                         nop                                                              // 0x0072ad8c    90
                         nop                                                              // 0x0072ad8d    90
                         nop                                                              // 0x0072ad8e    90
                         nop                                                              // 0x0072ad8f    90
_jmp_addr_0x0072ad90:    xor.s              eax, eax                                      // 0x0072ad90    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3da564], eax        // 0x0072ad92    a36405da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da568], eax        // 0x0072ad97    a36805da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da560], 0x00982834 // 0x0072ad9c    c7056005da0034289800
                         ret                                                              // 0x0072ada6    c3
                         nop                                                              // 0x0072ada7    90
                         nop                                                              // 0x0072ada8    90
                         nop                                                              // 0x0072ada9    90
                         nop                                                              // 0x0072adaa    90
                         nop                                                              // 0x0072adab    90
                         nop                                                              // 0x0072adac    90
                         nop                                                              // 0x0072adad    90
                         nop                                                              // 0x0072adae    90
                         nop                                                              // 0x0072adaf    90
?GetBaseInfo@GSpellSystemInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072adb0    8b442404
                         mov                dword ptr [eax], 0x00000001                   // 0x0072adb4    c70001000000
                         mov                eax, 0x00da0560                               // 0x0072adba    b86005da00
                         ret                0x0004                                        // 0x0072adbf    c20400
                         nop                                                              // 0x0072adc2    90
                         nop                                                              // 0x0072adc3    90
                         nop                                                              // 0x0072adc4    90
                         nop                                                              // 0x0072adc5    90
                         nop                                                              // 0x0072adc6    90
                         nop                                                              // 0x0072adc7    90
                         nop                                                              // 0x0072adc8    90
                         nop                                                              // 0x0072adc9    90
                         nop                                                              // 0x0072adca    90
                         nop                                                              // 0x0072adcb    90
                         nop                                                              // 0x0072adcc    90
                         nop                                                              // 0x0072adcd    90
                         nop                                                              // 0x0072adce    90
                         nop                                                              // 0x0072adcf    90
_jmp_addr_0x0072add0:    push               0x0072ade0                                    // 0x0072add0    68e0ad7200
                         call               _atexit                                       // 0x0072add5    e8b7a90900
                         pop                ecx                                           // 0x0072adda    59
                         ret                                                              // 0x0072addb    c3
                         nop                                                              // 0x0072addc    90
                         nop                                                              // 0x0072addd    90
                         nop                                                              // 0x0072adde    90
                         nop                                                              // 0x0072addf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d766d]          // 0x0072ade0    8a0d6dd6d900
                         mov                al, 0x01                                      // 0x0072ade6    b001
                         test               al, cl                                        // 0x0072ade8    84c8
                         {disp8} jne        _jmp_addr_0x0072adfe                          // 0x0072adea    7512
                         or.s               cl, al                                        // 0x0072adec    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3d766d], cl          // 0x0072adee    880d6dd6d900
                         mov                ecx, 0x00da0560                               // 0x0072adf4    b96005da00
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0072adf9    e962bbd0ff
_jmp_addr_0x0072adfe:    ret                                                              // 0x0072adfe    c3
                         nop                                                              // 0x0072adff    90
??_GGSpellSystemInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x0072ae00    56
                         mov.s              esi, ecx                                      // 0x0072ae01    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0072ae03    e858bbd0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072ae08    f644240801
                         {disp8} je         _jmp_addr_0x0072ae1a                          // 0x0072ae0d    740b
                         push               0x4c                                          // 0x0072ae0f    6a4c
                         push               esi                                           // 0x0072ae11    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072ae12    e859bbd0ff
                         add                esp, 0x08                                     // 0x0072ae17    83c408
_jmp_addr_0x0072ae1a:    mov.s              eax, esi                                      // 0x0072ae1a    8bc6
                         pop                esi                                           // 0x0072ae1c    5e
                         ret                0x0004                                        // 0x0072ae1d    c20400
_globl_ct_0x0072ae20:    call               _jmp_addr_0x0072ae30                          // 0x0072ae20    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072ae90                          // 0x0072ae25    e966000000
                         nop                                                              // 0x0072ae2a    90
                         nop                                                              // 0x0072ae2b    90
                         nop                                                              // 0x0072ae2c    90
                         nop                                                              // 0x0072ae2d    90
                         nop                                                              // 0x0072ae2e    90
                         nop                                                              // 0x0072ae2f    90
_jmp_addr_0x0072ae30:    mov                eax, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072ae30    b878d6d900
                         mov                ecx, 0x0000001e                               // 0x0072ae35    b91e000000
                         xor.s              edx, edx                                      // 0x0072ae3a    33d2
.att_syntax
_jmp_addr_0x0072ae3c:    movl               $??_7Base@@6B@, (%eax)                        // 0x0072ae3c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0072ae42    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0072ae45    895008
                         mov                dword ptr [eax], 0x00982864                   // 0x0072ae48    c70064289800
                         add                eax, 0x00000190                               // 0x0072ae4e    0590010000
                         dec                ecx                                           // 0x0072ae53    49
                         {disp8} jne        _jmp_addr_0x0072ae3c                          // 0x0072ae54    75e6
                         ret                                                              // 0x0072ae56    c3
                         nop                                                              // 0x0072ae57    90
                         nop                                                              // 0x0072ae58    90
                         nop                                                              // 0x0072ae59    90
                         nop                                                              // 0x0072ae5a    90
                         nop                                                              // 0x0072ae5b    90
                         nop                                                              // 0x0072ae5c    90
                         nop                                                              // 0x0072ae5d    90
                         nop                                                              // 0x0072ae5e    90
                         nop                                                              // 0x0072ae5f    90
?GetMesh@GSpellSeedInfo@@UBEIXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000140]             // 0x0072ae60    8b8140010000
                         ret                                                              // 0x0072ae66    c3
                         nop                                                              // 0x0072ae67    90
                         nop                                                              // 0x0072ae68    90
                         nop                                                              // 0x0072ae69    90
                         nop                                                              // 0x0072ae6a    90
                         nop                                                              // 0x0072ae6b    90
                         nop                                                              // 0x0072ae6c    90
                         nop                                                              // 0x0072ae6d    90
                         nop                                                              // 0x0072ae6e    90
                         nop                                                              // 0x0072ae6f    90
?GetBaseInfo@GSpellSeedInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072ae70    8b442404
                         mov                dword ptr [eax], 0x0000001e                   // 0x0072ae74    c7001e000000
                         mov                eax, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072ae7a    b878d6d900
                         ret                0x0004                                        // 0x0072ae7f    c20400
                         nop                                                              // 0x0072ae82    90
                         nop                                                              // 0x0072ae83    90
                         nop                                                              // 0x0072ae84    90
                         nop                                                              // 0x0072ae85    90
                         nop                                                              // 0x0072ae86    90
                         nop                                                              // 0x0072ae87    90
                         nop                                                              // 0x0072ae88    90
                         nop                                                              // 0x0072ae89    90
                         nop                                                              // 0x0072ae8a    90
                         nop                                                              // 0x0072ae8b    90
                         nop                                                              // 0x0072ae8c    90
                         nop                                                              // 0x0072ae8d    90
                         nop                                                              // 0x0072ae8e    90
                         nop                                                              // 0x0072ae8f    90
_jmp_addr_0x0072ae90:    push               0x0072aea0                                    // 0x0072ae90    68a0ae7200
                         call               _atexit                                       // 0x0072ae95    e8f7a80900
                         pop                ecx                                           // 0x0072ae9a    59
                         ret                                                              // 0x0072ae9b    c3
                         nop                                                              // 0x0072ae9c    90
                         nop                                                              // 0x0072ae9d    90
                         nop                                                              // 0x0072ae9e    90
                         nop                                                              // 0x0072ae9f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3d766c]          // 0x0072aea0    8a0d6cd6d900
                         mov                al, 0x01                                      // 0x0072aea6    b001
                         test               al, cl                                        // 0x0072aea8    84c8
                         {disp8} jne        _jmp_addr_0x0072aed2                          // 0x0072aeaa    7526
                         push               esi                                           // 0x0072aeac    56
                         or.s               cl, al                                        // 0x0072aead    0ac8
                         push               edi                                           // 0x0072aeaf    57
                         {disp32} mov       byte ptr [data_bytes + 0x3d766c], cl          // 0x0072aeb0    880d6cd6d900
                         mov                esi, 0x00da0558                               // 0x0072aeb6    be5805da00
                         mov                edi, 0x0000001e                               // 0x0072aebb    bf1e000000
_jmp_addr_0x0072aec0:    sub                esi, 0x00000190                               // 0x0072aec0    81ee90010000
                         mov.s              ecx, esi                                      // 0x0072aec6    8bce
                         call               _jmp_addr_0x00436960                          // 0x0072aec8    e893bad0ff
                         dec                edi                                           // 0x0072aecd    4f
                         {disp8} jne        _jmp_addr_0x0072aec0                          // 0x0072aece    75f0
                         pop                edi                                           // 0x0072aed0    5f
                         pop                esi                                           // 0x0072aed1    5e
_jmp_addr_0x0072aed2:    ret                                                              // 0x0072aed2    c3
                         nop                                                              // 0x0072aed3    90
                         nop                                                              // 0x0072aed4    90
                         nop                                                              // 0x0072aed5    90
                         nop                                                              // 0x0072aed6    90
                         nop                                                              // 0x0072aed7    90
                         nop                                                              // 0x0072aed8    90
                         nop                                                              // 0x0072aed9    90
                         nop                                                              // 0x0072aeda    90
                         nop                                                              // 0x0072aedb    90
                         nop                                                              // 0x0072aedc    90
                         nop                                                              // 0x0072aedd    90
                         nop                                                              // 0x0072aede    90
                         nop                                                              // 0x0072aedf    90
??_GGSpellSeedInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x0072aee0    56
                         mov.s              esi, ecx                                      // 0x0072aee1    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0072aee3    e878bad0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072aee8    f644240801
                         {disp8} je         _jmp_addr_0x0072aefd                          // 0x0072aeed    740e
                         push               0x00000190                                    // 0x0072aeef    6890010000
                         push               esi                                           // 0x0072aef4    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072aef5    e876bad0ff
                         add                esp, 0x08                                     // 0x0072aefa    83c408
_jmp_addr_0x0072aefd:    mov.s              eax, esi                                      // 0x0072aefd    8bc6
                         pop                esi                                           // 0x0072aeff    5e
                         ret                0x0004                                        // 0x0072af00    c20400
                         nop                                                              // 0x0072af03    90
                         nop                                                              // 0x0072af04    90
                         nop                                                              // 0x0072af05    90
                         nop                                                              // 0x0072af06    90
                         nop                                                              // 0x0072af07    90
                         nop                                                              // 0x0072af08    90
                         nop                                                              // 0x0072af09    90
                         nop                                                              // 0x0072af0a    90
                         nop                                                              // 0x0072af0b    90
                         nop                                                              // 0x0072af0c    90
                         nop                                                              // 0x0072af0d    90
                         nop                                                              // 0x0072af0e    90
                         nop                                                              // 0x0072af0f    90
_jmp_addr_0x0072af10:    push               esi                                           // 0x0072af10    56
                         push               edi                                           // 0x0072af11    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072af12    8b7c240c
                         xor.s              eax, eax                                      // 0x0072af16    33c0
                         test               edi, edi                                      // 0x0072af18    85ff
                         {disp8} jne        _jmp_addr_0x0072af27                          // 0x0072af1a    750b
                         {disp32} mov       eax, dword ptr [ecx + 0x00000124]             // 0x0072af1c    8b8124010000
                         pop                edi                                           // 0x0072af22    5f
                         pop                esi                                           // 0x0072af23    5e
                         ret                0x0004                                        // 0x0072af24    c20400
_jmp_addr_0x0072af27:    xor.s              edx, edx                                      // 0x0072af27    33d2
                         {disp32} lea       esi, dword ptr [ecx + 0x00000134]             // 0x0072af29    8db134010000
_jmp_addr_0x0072af2f:    cmp                dword ptr [esi], edi                          // 0x0072af2f    393e
                         {disp8} je         _jmp_addr_0x0072af41                          // 0x0072af31    740e
                         inc                edx                                           // 0x0072af33    42
                         add                esi, 0x04                                     // 0x0072af34    83c604
                         cmp                edx, 0x03                                     // 0x0072af37    83fa03
                         {disp8} jl         _jmp_addr_0x0072af2f                          // 0x0072af3a    7cf3
                         pop                edi                                           // 0x0072af3c    5f
                         pop                esi                                           // 0x0072af3d    5e
                         ret                0x0004                                        // 0x0072af3e    c20400
_jmp_addr_0x0072af41:    {disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x00000128] // 0x0072af41    8b849128010000
                         pop                edi                                           // 0x0072af48    5f
                         pop                esi                                           // 0x0072af49    5e
                         ret                0x0004                                        // 0x0072af4a    c20400
                         nop                                                              // 0x0072af4d    90
                         nop                                                              // 0x0072af4e    90
                         nop                                                              // 0x0072af4f    90
_jmp_addr_0x0072af50:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072af50    8b442404
                         push               eax                                           // 0x0072af54    50
                         call               _jmp_addr_0x0072af10                          // 0x0072af55    e8b6ffffff
                         {disp32} mov       eax, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0072af5a    8b0485107dd300
                         ret                0x0004                                        // 0x0072af61    c20400
                         nop                                                              // 0x0072af64    90
                         nop                                                              // 0x0072af65    90
                         nop                                                              // 0x0072af66    90
                         nop                                                              // 0x0072af67    90
                         nop                                                              // 0x0072af68    90
                         nop                                                              // 0x0072af69    90
                         nop                                                              // 0x0072af6a    90
                         nop                                                              // 0x0072af6b    90
                         nop                                                              // 0x0072af6c    90
                         nop                                                              // 0x0072af6d    90
                         nop                                                              // 0x0072af6e    90
                         nop                                                              // 0x0072af6f    90
@GetPowerUpFromMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072af70    8b542404
                         cmp                edx, dword ptr [ecx + 0x00000124]             // 0x0072af74    3b9124010000
                         {disp8} je         _jmp_addr_0x0072af91                          // 0x0072af7a    7415
                         xor.s              eax, eax                                      // 0x0072af7c    33c0
                         add                ecx, 0x00000128                               // 0x0072af7e    81c128010000
_jmp_addr_0x0072af84:    cmp                dword ptr [ecx], edx                          // 0x0072af84    3911
                         {disp8} je         _jmp_addr_0x0072af94                          // 0x0072af86    740c
                         inc                eax                                           // 0x0072af88    40
                         add                ecx, 0x4                                      // 0x0072af89    83c104
                         cmp                eax, 0x03                                     // 0x0072af8c    83f803
                         {disp8} jl         _jmp_addr_0x0072af84                          // 0x0072af8f    7cf3
_jmp_addr_0x0072af91:    or                 eax, -0x1                                     // 0x0072af91    83c8ff
_jmp_addr_0x0072af94:    ret                0x0004                                        // 0x0072af94    c20400
                         nop                                                              // 0x0072af97    90
                         nop                                                              // 0x0072af98    90
                         nop                                                              // 0x0072af99    90
                         nop                                                              // 0x0072af9a    90
                         nop                                                              // 0x0072af9b    90
                         nop                                                              // 0x0072af9c    90
                         nop                                                              // 0x0072af9d    90
                         nop                                                              // 0x0072af9e    90
                         nop                                                              // 0x0072af9f    90
_jmp_addr_0x0072afa0:    mov                eax, 0x00000001                               // 0x0072afa0    b801000000
                         add                ecx, 0x00000134                               // 0x0072afa5    81c134010000
                         mov                edx, 0x00000003                               // 0x0072afab    ba03000000
_jmp_addr_0x0072afb0:    cmp                dword ptr [ecx], 0x00                         // 0x0072afb0    833900
                         {disp8} je         _jmp_addr_0x0072afb6                          // 0x0072afb3    7401
                         inc                eax                                           // 0x0072afb5    40
_jmp_addr_0x0072afb6:    add                ecx, 0x4                                      // 0x0072afb6    83c104
                         dec                edx                                           // 0x0072afb9    4a
                         {disp8} jne        _jmp_addr_0x0072afb0                          // 0x0072afba    75f4
                         ret                                                              // 0x0072afbc    c3
                         nop                                                              // 0x0072afbd    90
                         nop                                                              // 0x0072afbe    90
                         nop                                                              // 0x0072afbf    90
@GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072afc0    8b442404
                         cmp                eax, -0x01                                    // 0x0072afc4    83f8ff
                         {disp8} jne        _jmp_addr_0x0072afd2                          // 0x0072afc7    7509
                         {disp32} mov       eax, dword ptr [ecx + 0x00000124]             // 0x0072afc9    8b8124010000
                         ret                0x0004                                        // 0x0072afcf    c20400
_jmp_addr_0x0072afd2:    {disp32} mov       eax, dword ptr [ecx + eax * 0x4 + 0x00000128] // 0x0072afd2    8b848128010000
                         ret                0x0004                                        // 0x0072afd9    c20400
                         nop                                                              // 0x0072afdc    90
                         nop                                                              // 0x0072afdd    90
                         nop                                                              // 0x0072afde    90
                         nop                                                              // 0x0072afdf    90
_jmp_addr_0x0072afe0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072afe0    8b442404
                         push               esi                                           // 0x0072afe4    56
                         mov.s              esi, ecx                                      // 0x0072afe5    8bf1
                         push               eax                                           // 0x0072afe7    50
                         call               @GetMagicTypeFromPULevel__14GSpellSeedInfoCF13POWER_UP_TYPE@12                          // 0x0072afe8    e8d3ffffff
                         test               eax, eax                                      // 0x0072afed    85c0
                         {disp8} je         _jmp_addr_0x0072affc                          // 0x0072afef    740b
                         {disp32} mov       eax, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0072aff1    8b0485107dd300
                         pop                esi                                           // 0x0072aff8    5e
                         ret                0x0004                                        // 0x0072aff9    c20400
_jmp_addr_0x0072affc:    {disp32} mov       ecx, dword ptr [esi + 0x00000124]             // 0x0072affc    8b8e24010000
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + _MagicInfoTable]  // 0x0072b002    8b048d107dd300
                         pop                esi                                           // 0x0072b009    5e
                         ret                0x0004                                        // 0x0072b00a    c20400
                         nop                                                              // 0x0072b00d    90
                         nop                                                              // 0x0072b00e    90
                         nop                                                              // 0x0072b00f    90
_jmp_addr_0x0072b010:    push               esi                                           // 0x0072b010    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072b011    8b74240c
                         test               esi, esi                                      // 0x0072b015    85f6
                         push               edi                                           // 0x0072b017    57
                         {disp8} je         _jmp_addr_0x0072b020                          // 0x0072b018    7406
                         mov                dword ptr [esi], 0xffffffff                   // 0x0072b01a    c706ffffffff
_jmp_addr_0x0072b020:    {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072b020    8b7c240c
                         cmp                dword ptr [ecx + 0x00000124], edi             // 0x0072b024    39b924010000
                         {disp8} je         _jmp_addr_0x0072b041                          // 0x0072b02a    7415
                         xor.s              edx, edx                                      // 0x0072b02c    33d2
                         {disp32} lea       eax, dword ptr [ecx + 0x00000128]             // 0x0072b02e    8d8128010000
_jmp_addr_0x0072b034:    cmp                dword ptr [eax], edi                          // 0x0072b034    3938
                         {disp8} je         _jmp_addr_0x0072b048                          // 0x0072b036    7410
                         inc                edx                                           // 0x0072b038    42
                         add                eax, 0x04                                     // 0x0072b039    83c004
                         cmp                edx, 0x03                                     // 0x0072b03c    83fa03
                         {disp8} jl         _jmp_addr_0x0072b034                          // 0x0072b03f    7cf3
_jmp_addr_0x0072b041:    xor.s              eax, eax                                      // 0x0072b041    33c0
_jmp_addr_0x0072b043:    pop                edi                                           // 0x0072b043    5f
                         pop                esi                                           // 0x0072b044    5e
                         ret                0x0008                                        // 0x0072b045    c20800
_jmp_addr_0x0072b048:    test               esi, esi                                      // 0x0072b048    85f6
                         {disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x00000134] // 0x0072b04a    8b849134010000
                         {disp8} je         _jmp_addr_0x0072b043                          // 0x0072b051    74f0
                         pop                edi                                           // 0x0072b053    5f
                         mov                dword ptr [esi], edx                          // 0x0072b054    8916
                         pop                esi                                           // 0x0072b056    5e
                         ret                0x0008                                        // 0x0072b057    c20800
                         nop                                                              // 0x0072b05a    90
                         nop                                                              // 0x0072b05b    90
                         nop                                                              // 0x0072b05c    90
                         nop                                                              // 0x0072b05d    90
                         nop                                                              // 0x0072b05e    90
                         nop                                                              // 0x0072b05f    90
@SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072b060    8b542404
                         cmp                dword ptr [ecx + 0x00000124], edx             // 0x0072b064    399124010000
                         {disp8} jne        _jmp_addr_0x0072b074                          // 0x0072b06a    7508
_jmp_addr_0x0072b06c:    mov                eax, 0x00000001                               // 0x0072b06c    b801000000
                         ret                0x0004                                        // 0x0072b071    c20400
_jmp_addr_0x0072b074:    xor.s              eax, eax                                      // 0x0072b074    33c0
                         add                ecx, 0x00000128                               // 0x0072b076    81c128010000
_jmp_addr_0x0072b07c:    cmp                dword ptr [ecx], edx                          // 0x0072b07c    3911
                         {disp8} je         _jmp_addr_0x0072b06c                          // 0x0072b07e    74ec
                         inc                eax                                           // 0x0072b080    40
                         add                ecx, 0x4                                      // 0x0072b081    83c104
                         cmp                eax, 0x03                                     // 0x0072b084    83f803
                         {disp8} jl         _jmp_addr_0x0072b07c                          // 0x0072b087    7cf3
                         xor.s              eax, eax                                      // 0x0072b089    33c0
                         ret                0x0004                                        // 0x0072b08b    c20400
                         nop                                                              // 0x0072b08e    90
                         nop                                                              // 0x0072b08f    90
?GetFirstSpellSeedForMagicType@GSpellSeedInfo@@SA?AW4SPELL_SEED_TYPE@@W4MAGIC_TYPE@@@Z:
                                                                  push               ebx                                           // 0x0072b090    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0072b091    8b5c2408
                         push               esi                                           // 0x0072b095    56
                         push               edi                                           // 0x0072b096    57
                         xor.s              edi, edi                                      // 0x0072b097    33ff
                         mov                esi, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072b099    be78d6d900
_jmp_addr_0x0072b09e:    push               ebx                                           // 0x0072b09e    53
                         mov.s              ecx, esi                                      // 0x0072b09f    8bce
                         call               @SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12                          // 0x0072b0a1    e8baffffff
                         test               eax, eax                                      // 0x0072b0a6    85c0
                         {disp8} jne        _jmp_addr_0x0072b0c0                          // 0x0072b0a8    7516
                         add                esi, 0x00000190                               // 0x0072b0aa    81c690010000
                         inc                edi                                           // 0x0072b0b0    47
                         cmp                esi, 0x00da0558                               // 0x0072b0b1    81fe5805da00
                         {disp8} jl         _jmp_addr_0x0072b09e                          // 0x0072b0b7    7ce5
                         pop                edi                                           // 0x0072b0b9    5f
                         pop                esi                                           // 0x0072b0ba    5e
                         or                 eax, -0x1                                     // 0x0072b0bb    83c8ff
                         pop                ebx                                           // 0x0072b0be    5b
                         ret                                                              // 0x0072b0bf    c3
_jmp_addr_0x0072b0c0:    mov.s              eax, edi                                      // 0x0072b0c0    8bc7
                         pop                edi                                           // 0x0072b0c2    5f
                         pop                esi                                           // 0x0072b0c3    5e
                         pop                ebx                                           // 0x0072b0c4    5b
                         ret                                                              // 0x0072b0c5    c3
                         nop                                                              // 0x0072b0c6    90
                         nop                                                              // 0x0072b0c7    90
                         nop                                                              // 0x0072b0c8    90
                         nop                                                              // 0x0072b0c9    90
                         nop                                                              // 0x0072b0ca    90
                         nop                                                              // 0x0072b0cb    90
                         nop                                                              // 0x0072b0cc    90
                         nop                                                              // 0x0072b0cd    90
                         nop                                                              // 0x0072b0ce    90
                         nop                                                              // 0x0072b0cf    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072b0d0    8b542404
                         push               esi                                           // 0x0072b0d4    56
                         xor.s              eax, eax                                      // 0x0072b0d5    33c0
                         mov                ecx, 0x00d9d7f8                               // 0x0072b0d7    b9f8d7d900
_jmp_addr_0x0072b0dc:    {disp8} mov        esi, dword ptr [ecx + -0x04]                  // 0x0072b0dc    8b71fc
                         test               esi, esi                                      // 0x0072b0df    85f6
                         {disp8} je         _jmp_addr_0x0072b0e7                          // 0x0072b0e1    7404
                         cmp                dword ptr [ecx], edx                          // 0x0072b0e3    3911
                         {disp8} je         _jmp_addr_0x0072b0f9                          // 0x0072b0e5    7412
_jmp_addr_0x0072b0e7:    add                ecx, 0x00000190                               // 0x0072b0e7    81c190010000
                         inc                eax                                           // 0x0072b0ed    40
                         cmp                ecx, 0x00da06d8                               // 0x0072b0ee    81f9d806da00
                         {disp8} jl         _jmp_addr_0x0072b0dc                          // 0x0072b0f4    7ce6
                         or                 eax, -0x1                                     // 0x0072b0f6    83c8ff
_jmp_addr_0x0072b0f9:    pop                esi                                           // 0x0072b0f9    5e
                         ret                                                              // 0x0072b0fa    c3
                         nop                                                              // 0x0072b0fb    90
                         nop                                                              // 0x0072b0fc    90
                         nop                                                              // 0x0072b0fd    90
                         nop                                                              // 0x0072b0fe    90
                         nop                                                              // 0x0072b0ff    90
_jmp_addr_0x0072b100:    push               ebx                                           // 0x0072b100    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0072b101    8b5c2408
                         push               ebp                                           // 0x0072b105    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x0072b106    8b6c2410
                         push               esi                                           // 0x0072b10a    56
                         push               edi                                           // 0x0072b10b    57
                         {disp8} mov        dword ptr [ebp + 0x00], 0xffffffff            // 0x0072b10c    c74500ffffffff
                         xor.s              edi, edi                                      // 0x0072b113    33ff
                         mov                esi, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072b115    be78d6d900
_jmp_addr_0x0072b11a:    push               ebx                                           // 0x0072b11a    53
                         mov.s              ecx, esi                                      // 0x0072b11b    8bce
                         call               @SpellSeedIsOfMagicType__14GSpellSeedInfoCF10MAGIC_TYPE@12                          // 0x0072b11d    e83effffff
                         test               eax, eax                                      // 0x0072b122    85c0
                         {disp8} jne        _jmp_addr_0x0072b13a                          // 0x0072b124    7514
                         add                esi, 0x00000190                               // 0x0072b126    81c690010000
                         inc                edi                                           // 0x0072b12c    47
                         cmp                esi, 0x00da0558                               // 0x0072b12d    81fe5805da00
                         {disp8} jl         _jmp_addr_0x0072b11a                          // 0x0072b133    7ce5
                         pop                edi                                           // 0x0072b135    5f
                         pop                esi                                           // 0x0072b136    5e
                         pop                ebp                                           // 0x0072b137    5d
                         pop                ebx                                           // 0x0072b138    5b
                         ret                                                              // 0x0072b139    c3
_jmp_addr_0x0072b13a:    lea                eax, dword ptr [edi + edi * 0x4]              // 0x0072b13a    8d04bf
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0072b13d    8d0c80
                         push               ebp                                           // 0x0072b140    55
                         shl                ecx, 4                                        // 0x0072b141    c1e104
                         push               ebx                                           // 0x0072b144    53
                         add                ecx, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072b145    81c178d6d900
                         call               _jmp_addr_0x0072b010                          // 0x0072b14b    e8c0feffff
                         pop                edi                                           // 0x0072b150    5f
                         pop                esi                                           // 0x0072b151    5e
                         pop                ebp                                           // 0x0072b152    5d
                         pop                ebx                                           // 0x0072b153    5b
                         ret                                                              // 0x0072b154    c3
                         nop                                                              // 0x0072b155    90
                         nop                                                              // 0x0072b156    90
                         nop                                                              // 0x0072b157    90
                         nop                                                              // 0x0072b158    90
                         nop                                                              // 0x0072b159    90
                         nop                                                              // 0x0072b15a    90
                         nop                                                              // 0x0072b15b    90
                         nop                                                              // 0x0072b15c    90
                         nop                                                              // 0x0072b15d    90
                         nop                                                              // 0x0072b15e    90
                         nop                                                              // 0x0072b15f    90
_jmp_addr_0x0072b160:    {disp8} lea        eax, dword ptr [ecx + 0x18]                   // 0x0072b160    8d4118
                         ret                                                              // 0x0072b163    c3
                         nop                                                              // 0x0072b164    90
                         nop                                                              // 0x0072b165    90
                         nop                                                              // 0x0072b166    90
                         nop                                                              // 0x0072b167    90
                         nop                                                              // 0x0072b168    90
                         nop                                                              // 0x0072b169    90
                         nop                                                              // 0x0072b16a    90
                         nop                                                              // 0x0072b16b    90
                         nop                                                              // 0x0072b16c    90
                         nop                                                              // 0x0072b16d    90
                         nop                                                              // 0x0072b16e    90
                         nop                                                              // 0x0072b16f    90
_jmp_addr_0x0072b170:    push               ebx                                           // 0x0072b170    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0072b171    8b5c2408
                         push               esi                                           // 0x0072b175    56
                         push               edi                                           // 0x0072b176    57
                         xor.s              edi, edi                                      // 0x0072b177    33ff
                         mov                esi, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x0072b179    be78d6d900
_jmp_addr_0x0072b17e:    mov.s              ecx, esi                                      // 0x0072b17e    8bce
                         call               _jmp_addr_0x0072b160                          // 0x0072b180    e8dbffffff
                         push               eax                                           // 0x0072b185    50
                         push               ebx                                           // 0x0072b186    53
                         call               __strcmpi                                     // 0x0072b187    e854bb0900
                         add                esp, 0x08                                     // 0x0072b18c    83c408
                         test               eax, eax                                      // 0x0072b18f    85c0
                         {disp8} je         _jmp_addr_0x0072b1ab                          // 0x0072b191    7418
                         add                esi, 0x00000190                               // 0x0072b193    81c690010000
                         inc                edi                                           // 0x0072b199    47
                         cmp                esi, 0x00da0558                               // 0x0072b19a    81fe5805da00
                         .byte              0x72, 0xdc// {disp8} jb _jmp_addr_0x0072b17e  // 0x0072b1a0    72dc
                         pop                edi                                           // 0x0072b1a2    5f
                         pop                esi                                           // 0x0072b1a3    5e
                         mov                eax, 0x0000001e                               // 0x0072b1a4    b81e000000
                         pop                ebx                                           // 0x0072b1a9    5b
                         ret                                                              // 0x0072b1aa    c3
_jmp_addr_0x0072b1ab:    mov.s              eax, edi                                      // 0x0072b1ab    8bc7
                         pop                edi                                           // 0x0072b1ad    5f
                         pop                esi                                           // 0x0072b1ae    5e
                         pop                ebx                                           // 0x0072b1af    5b
                         ret                                                              // 0x0072b1b0    c3
                         nop                                                              // 0x0072b1b1    90
                         nop                                                              // 0x0072b1b2    90
                         nop                                                              // 0x0072b1b3    90
                         nop                                                              // 0x0072b1b4    90
                         nop                                                              // 0x0072b1b5    90
                         nop                                                              // 0x0072b1b6    90
                         nop                                                              // 0x0072b1b7    90
                         nop                                                              // 0x0072b1b8    90
                         nop                                                              // 0x0072b1b9    90
                         nop                                                              // 0x0072b1ba    90
                         nop                                                              // 0x0072b1bb    90
                         nop                                                              // 0x0072b1bc    90
                         nop                                                              // 0x0072b1bd    90
                         nop                                                              // 0x0072b1be    90
                         nop                                                              // 0x0072b1bf    90
_jmp_addr_0x0072b1c0:    push               esi                                           // 0x0072b1c0    56
                         push               edi                                           // 0x0072b1c1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072b1c2    8b7c240c
                         xor.s              eax, eax                                      // 0x0072b1c6    33c0
                         mov                esi, 0x00d9d7a0                               // 0x0072b1c8    bea0d7d900
_jmp_addr_0x0072b1cd:    cmp                dword ptr [esi + -0x04], edi                  // 0x0072b1cd    397efc
                         {disp8} je         _jmp_addr_0x0072b1f7                          // 0x0072b1d0    7425
                         xor.s              ecx, ecx                                      // 0x0072b1d2    33c9
                         mov.s              edx, esi                                      // 0x0072b1d4    8bd6
_jmp_addr_0x0072b1d6:    cmp                dword ptr [edx], edi                          // 0x0072b1d6    393a
                         {disp8} je         _jmp_addr_0x0072b1f7                          // 0x0072b1d8    741d
                         inc                ecx                                           // 0x0072b1da    41
                         add                edx, 0x04                                     // 0x0072b1db    83c204
                         cmp                ecx, 0x03                                     // 0x0072b1de    83f903
                         .byte              0x72, 0xf3// {disp8} jb _jmp_addr_0x0072b1d6  // 0x0072b1e1    72f3
                         add                esi, 0x00000190                               // 0x0072b1e3    81c690010000
                         inc                eax                                           // 0x0072b1e9    40
                         cmp                esi, 0x00da0680                               // 0x0072b1ea    81fe8006da00
                         .byte              0x72, 0xdb// {disp8} jb _jmp_addr_0x0072b1cd  // 0x0072b1f0    72db
                         mov                eax, 0x0000001e                               // 0x0072b1f2    b81e000000
_jmp_addr_0x0072b1f7:    pop                edi                                           // 0x0072b1f7    5f
                         pop                esi                                           // 0x0072b1f8    5e
                         ret                                                              // 0x0072b1f9    c3
                         nop                                                              // 0x0072b1fa    90
                         nop                                                              // 0x0072b1fb    90
                         nop                                                              // 0x0072b1fc    90
                         nop                                                              // 0x0072b1fd    90
                         nop                                                              // 0x0072b1fe    90
                         nop                                                              // 0x0072b1ff    90
_jmp_addr_0x0072b200:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072b200    8b442404
                         cmp                eax, 0x00d9d678 /* OFFSET _GSpellSeedInfo_ARRAY_00d9d678 */                              // 0x0072b204    3d78d6d900
                         .byte              0x72, 0x1f// {disp8} jb _jmp_addr_0x0072b22a  // 0x0072b209    721f
                         sub                eax, 0x00d9d678 /* OFFSET _GSpellSeedInfo_ARRAY_00d9d678 */                              // 0x0072b20b    2d78d6d900
                         mov.s              ecx, eax                                      // 0x0072b210    8bc8
                         mov                eax, 0x51eb851f                               // 0x0072b212    b81f85eb51
                         imul               ecx                                           // 0x0072b217    f7e9
                         sar                edx, 7                                        // 0x0072b219    c1fa07
                         mov.s              eax, edx                                      // 0x0072b21c    8bc2
                         shr                eax, 0x1f                                     // 0x0072b21e    c1e81f
                         add.s              edx, eax                                      // 0x0072b221    03d0
                         mov.s              eax, edx                                      // 0x0072b223    8bc2
                         cmp                eax, 0x1e                                     // 0x0072b225    83f81e
                         {disp8} jl         _jmp_addr_0x0072b22d                          // 0x0072b228    7c03
_jmp_addr_0x0072b22a:    or                 eax, -0x1                                     // 0x0072b22a    83c8ff
_jmp_addr_0x0072b22d:    ret                                                              // 0x0072b22d    c3
                         nop                                                              // 0x0072b22e    90
                         nop                                                              // 0x0072b22f    90
_jmp_addr_0x0072b230:    {disp32} mov       eax, dword ptr [ecx + 0x00000124]             // 0x0072b230    8b8124010000
                         ret                                                              // 0x0072b236    c3
                         nop                                                              // 0x0072b237    90
                         nop                                                              // 0x0072b238    90
                         nop                                                              // 0x0072b239    90
                         nop                                                              // 0x0072b23a    90
                         nop                                                              // 0x0072b23b    90
                         nop                                                              // 0x0072b23c    90
                         nop                                                              // 0x0072b23d    90
                         nop                                                              // 0x0072b23e    90
                         nop                                                              // 0x0072b23f    90
_globl_ct_0x0072b240:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0072b240    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0072b246    b001
                         test               al, cl                                        // 0x0072b248    84c8
                         {disp8} jne        _jmp_addr_0x0072b254                          // 0x0072b24a    7508
                         or.s               cl, al                                        // 0x0072b24c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0072b24e    880d34c9fa00
_jmp_addr_0x0072b254:    {disp32} jmp       _jmp_addr_0x0072b260                          // 0x0072b254    e907000000
                         nop                                                              // 0x0072b259    90
                         nop                                                              // 0x0072b25a    90
                         nop                                                              // 0x0072b25b    90
                         nop                                                              // 0x0072b25c    90
                         nop                                                              // 0x0072b25d    90
                         nop                                                              // 0x0072b25e    90
                         nop                                                              // 0x0072b25f    90
_jmp_addr_0x0072b260:    push               0x00407870                                    // 0x0072b260    6870784000
                         call               _atexit                                       // 0x0072b265    e827a50900
                         pop                ecx                                           // 0x0072b26a    59
                         ret                                                              // 0x0072b26b    c3
                         nop                                                              // 0x0072b26c    90
                         nop                                                              // 0x0072b26d    90
                         nop                                                              // 0x0072b26e    90
                         nop                                                              // 0x0072b26f    90
_globl_ct_0x0072b270:    {disp32} jmp       _jmp_addr_0x0072b280                          // 0x0072b270    e90b000000
                         nop                                                              // 0x0072b275    90
                         nop                                                              // 0x0072b276    90
                         nop                                                              // 0x0072b277    90
                         nop                                                              // 0x0072b278    90
                         nop                                                              // 0x0072b279    90
                         nop                                                              // 0x0072b27a    90
                         nop                                                              // 0x0072b27b    90
                         nop                                                              // 0x0072b27c    90
                         nop                                                              // 0x0072b27d    90
                         nop                                                              // 0x0072b27e    90
                         nop                                                              // 0x0072b27f    90
_jmp_addr_0x0072b280:    {disp32} mov       dword ptr [data_bytes + 0x3da7e0], 0x3e000000 // 0x0072b280    c705e007da000000003e
                         ret                                                              // 0x0072b28a    c3
                         nop                                                              // 0x0072b28b    90
                         nop                                                              // 0x0072b28c    90
                         nop                                                              // 0x0072b28d    90
                         nop                                                              // 0x0072b28e    90
                         nop                                                              // 0x0072b28f    90
_globl_ct_0x0072b290:    {disp32} jmp       _jmp_addr_0x0072b2a0                          // 0x0072b290    e90b000000
                         nop                                                              // 0x0072b295    90
                         nop                                                              // 0x0072b296    90
                         nop                                                              // 0x0072b297    90
                         nop                                                              // 0x0072b298    90
                         nop                                                              // 0x0072b299    90
                         nop                                                              // 0x0072b29a    90
                         nop                                                              // 0x0072b29b    90
                         nop                                                              // 0x0072b29c    90
                         nop                                                              // 0x0072b29d    90
                         nop                                                              // 0x0072b29e    90
                         nop                                                              // 0x0072b29f    90
_jmp_addr_0x0072b2a0:    {disp32} fld       dword ptr [rdata_bytes + 0xd98a4]             // 0x0072b2a0    d905a4289800
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0072b2a6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3da7e8]             // 0x0072b2ac    d91de807da00
                         ret                                                              // 0x0072b2b2    c3
                         nop                                                              // 0x0072b2b3    90
                         nop                                                              // 0x0072b2b4    90
                         nop                                                              // 0x0072b2b5    90
                         nop                                                              // 0x0072b2b6    90
                         nop                                                              // 0x0072b2b7    90
                         nop                                                              // 0x0072b2b8    90
                         nop                                                              // 0x0072b2b9    90
                         nop                                                              // 0x0072b2ba    90
                         nop                                                              // 0x0072b2bb    90
                         nop                                                              // 0x0072b2bc    90
                         nop                                                              // 0x0072b2bd    90
                         nop                                                              // 0x0072b2be    90
                         nop                                                              // 0x0072b2bf    90
_globl_ct_0x0072b2c0:    {disp32} jmp       _jmp_addr_0x0072b2d0                          // 0x0072b2c0    e90b000000
                         nop                                                              // 0x0072b2c5    90
                         nop                                                              // 0x0072b2c6    90
                         nop                                                              // 0x0072b2c7    90
                         nop                                                              // 0x0072b2c8    90
                         nop                                                              // 0x0072b2c9    90
                         nop                                                              // 0x0072b2ca    90
                         nop                                                              // 0x0072b2cb    90
                         nop                                                              // 0x0072b2cc    90
                         nop                                                              // 0x0072b2cd    90
                         nop                                                              // 0x0072b2ce    90
                         nop                                                              // 0x0072b2cf    90
_jmp_addr_0x0072b2d0:    {disp32} mov       dword ptr [data_bytes + 0x3da5c0], 0x00000000 // 0x0072b2d0    c705c005da0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3da5c4], 0x00000000 // 0x0072b2da    c705c405da0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3da5c8], 0x00000000 // 0x0072b2e4    c705c805da0000000000
                         ret                                                              // 0x0072b2ee    c3
                         nop                                                              // 0x0072b2ef    90
_globl_ct_0x0072b2f0:    {disp32} jmp       _jmp_addr_0x0072b300                          // 0x0072b2f0    e90b000000
                         nop                                                              // 0x0072b2f5    90
                         nop                                                              // 0x0072b2f6    90
                         nop                                                              // 0x0072b2f7    90
                         nop                                                              // 0x0072b2f8    90
                         nop                                                              // 0x0072b2f9    90
                         nop                                                              // 0x0072b2fa    90
                         nop                                                              // 0x0072b2fb    90
                         nop                                                              // 0x0072b2fc    90
                         nop                                                              // 0x0072b2fd    90
                         nop                                                              // 0x0072b2fe    90
                         nop                                                              // 0x0072b2ff    90
_jmp_addr_0x0072b300:    {disp32} fld       dword ptr [rdata_bytes + 0xd98ac]             // 0x0072b300    d905ac289800
                         {disp32} fmul      dword ptr [rdata_bytes + 0xd98a8]             // 0x0072b306    d80da8289800
                         {disp32} fstp      dword ptr [data_bytes + 0x3da5b4]             // 0x0072b30c    d91db405da00
                         ret                                                              // 0x0072b312    c3
                         nop                                                              // 0x0072b313    90
                         nop                                                              // 0x0072b314    90
                         nop                                                              // 0x0072b315    90
                         nop                                                              // 0x0072b316    90
                         nop                                                              // 0x0072b317    90
                         nop                                                              // 0x0072b318    90
                         nop                                                              // 0x0072b319    90
                         nop                                                              // 0x0072b31a    90
                         nop                                                              // 0x0072b31b    90
                         nop                                                              // 0x0072b31c    90
                         nop                                                              // 0x0072b31d    90
                         nop                                                              // 0x0072b31e    90
                         nop                                                              // 0x0072b31f    90
_globl_ct_0x0072b320:    {disp32} jmp       _jmp_addr_0x0072b330                          // 0x0072b320    e90b000000
                         nop                                                              // 0x0072b325    90
                         nop                                                              // 0x0072b326    90
                         nop                                                              // 0x0072b327    90
                         nop                                                              // 0x0072b328    90
                         nop                                                              // 0x0072b329    90
                         nop                                                              // 0x0072b32a    90
                         nop                                                              // 0x0072b32b    90
                         nop                                                              // 0x0072b32c    90
                         nop                                                              // 0x0072b32d    90
                         nop                                                              // 0x0072b32e    90
                         nop                                                              // 0x0072b32f    90
_jmp_addr_0x0072b330:    {disp32} mov       dword ptr [data_bytes + 0x3da5bc], 0xffffffff // 0x0072b330    c705bc05da00ffffffff
                         ret                                                              // 0x0072b33a    c3
                         nop                                                              // 0x0072b33b    90
                         nop                                                              // 0x0072b33c    90
                         nop                                                              // 0x0072b33d    90
                         nop                                                              // 0x0072b33e    90
                         nop                                                              // 0x0072b33f    90
_globl_ct_0x0072b340:    {disp32} jmp       _jmp_addr_0x0072b350                          // 0x0072b340    e90b000000
                         nop                                                              // 0x0072b345    90
                         nop                                                              // 0x0072b346    90
                         nop                                                              // 0x0072b347    90
                         nop                                                              // 0x0072b348    90
                         nop                                                              // 0x0072b349    90
                         nop                                                              // 0x0072b34a    90
                         nop                                                              // 0x0072b34b    90
                         nop                                                              // 0x0072b34c    90
                         nop                                                              // 0x0072b34d    90
                         nop                                                              // 0x0072b34e    90
                         nop                                                              // 0x0072b34f    90
_jmp_addr_0x0072b350:    fldln2                                                           // 0x0072b350    d9ed
                         {disp32} fld       qword ptr [__real@3fe0000000000000]           // 0x0072b352    dd0560b28a00
                         fyl2x                                                            // 0x0072b358    d9f1
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0072b35a    d83d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3da7e4]             // 0x0072b360    d91de407da00
                         ret                                                              // 0x0072b366    c3
                         nop                                                              // 0x0072b367    90
                         nop                                                              // 0x0072b368    90
                         nop                                                              // 0x0072b369    90
                         nop                                                              // 0x0072b36a    90
                         nop                                                              // 0x0072b36b    90
                         nop                                                              // 0x0072b36c    90
                         nop                                                              // 0x0072b36d    90
                         nop                                                              // 0x0072b36e    90
                         nop                                                              // 0x0072b36f    90
_globl_ct_0x0072b370:    call               _jmp_addr_0x0072b380                          // 0x0072b370    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072b390                          // 0x0072b375    e916000000
                         nop                                                              // 0x0072b37a    90
                         nop                                                              // 0x0072b37b    90
                         nop                                                              // 0x0072b37c    90
                         nop                                                              // 0x0072b37d    90
                         nop                                                              // 0x0072b37e    90
                         nop                                                              // 0x0072b37f    90
_jmp_addr_0x0072b380:    xor.s              eax, eax                                      // 0x0072b380    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f0], eax        // 0x0072b382    a3f007da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f4], eax        // 0x0072b387    a3f407da00
                         ret                                                              // 0x0072b38c    c3
                         nop                                                              // 0x0072b38d    90
                         nop                                                              // 0x0072b38e    90
                         nop                                                              // 0x0072b38f    90
_jmp_addr_0x0072b390:    push               0x0072b3a0                                    // 0x0072b390    68a0b37200
                         call               _atexit                                       // 0x0072b395    e8f7a30900
                         pop                ecx                                           // 0x0072b39a    59
                         ret                                                              // 0x0072b39b    c3
                         nop                                                              // 0x0072b39c    90
                         nop                                                              // 0x0072b39d    90
                         nop                                                              // 0x0072b39e    90
                         nop                                                              // 0x0072b39f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3da5b9]          // 0x0072b3a0    8a0db905da00
                         mov                al, 0x01                                      // 0x0072b3a6    b001
                         test               al, cl                                        // 0x0072b3a8    84c8
                         {disp8} jne        _jmp_addr_0x0072b3b4                          // 0x0072b3aa    7508
                         or.s               cl, al                                        // 0x0072b3ac    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3da5b9], cl          // 0x0072b3ae    880db905da00
_jmp_addr_0x0072b3b4:    ret                                                              // 0x0072b3b4    c3
                         nop                                                              // 0x0072b3b5    90
                         nop                                                              // 0x0072b3b6    90
                         nop                                                              // 0x0072b3b7    90
                         nop                                                              // 0x0072b3b8    90
                         nop                                                              // 0x0072b3b9    90
                         nop                                                              // 0x0072b3ba    90
                         nop                                                              // 0x0072b3bb    90
                         nop                                                              // 0x0072b3bc    90
                         nop                                                              // 0x0072b3bd    90
                         nop                                                              // 0x0072b3be    90
                         nop                                                              // 0x0072b3bf    90
_jmp_addr_0x0072b3c0:    {disp32} mov       eax, dword ptr [data_bytes + 0x3da7f0]        // 0x0072b3c0    a1f007da00
                         {disp32} mov       dword ptr [ecx + 0x00000100], eax             // 0x0072b3c5    898100010000
                         {disp32} inc       dword ptr [data_bytes + 0x3da7f4]             // 0x0072b3cb    ff05f407da00
                         xor.s              eax, eax                                      // 0x0072b3d1    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f0], ecx        // 0x0072b3d3    890df007da00
                         {disp32} mov       dword ptr [ecx + 0x000000f4], eax             // 0x0072b3d9    8981f4000000
                         {disp32} mov       dword ptr [ecx + 0x000000f8], eax             // 0x0072b3df    8981f8000000
                         {disp32} mov       dword ptr [ecx + 0x000000fc], eax             // 0x0072b3e5    8981fc000000
                         ret                                                              // 0x0072b3eb    c3
                         nop                                                              // 0x0072b3ec    90
                         nop                                                              // 0x0072b3ed    90
                         nop                                                              // 0x0072b3ee    90
                         nop                                                              // 0x0072b3ef    90
_jmp_addr_0x0072b3f0:    push               esi                                           // 0x0072b3f0    56
                         mov.s              esi, ecx                                      // 0x0072b3f1    8bf1
                         call               ??0Spell@@QAE@XZ                              // 0x0072b3f3    e83846ffff
                         xor.s              eax, eax                                      // 0x0072b3f8    33c0
                         {disp32} mov       dword ptr [esi + 0x000000f0], eax             // 0x0072b3fa    8986f0000000
                         {disp32} mov       dword ptr [esi + 0x000000ec], eax             // 0x0072b400    8986ec000000
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0072b406    898600010000
                         {disp32} mov       dword ptr [esi + 0x00000108], eax             // 0x0072b40c    898608010000
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0072b412    898604010000
                         mov.s              ecx, esi                                      // 0x0072b418    8bce
                         mov                dword ptr [esi], 0x009828d8                   // 0x0072b41a    c706d8289800
                         call               _jmp_addr_0x0072b3c0                          // 0x0072b420    e89bffffff
                         mov.s              eax, esi                                      // 0x0072b425    8bc6
                         pop                esi                                           // 0x0072b427    5e
                         ret                                                              // 0x0072b428    c3
                         nop                                                              // 0x0072b429    90
                         nop                                                              // 0x0072b42a    90
                         nop                                                              // 0x0072b42b    90
                         nop                                                              // 0x0072b42c    90
                         nop                                                              // 0x0072b42d    90
                         nop                                                              // 0x0072b42e    90
                         nop                                                              // 0x0072b42f    90
?IsSpellShield@SpellShield@@UAEIXZ:
                         mov.s              eax, ecx                                      // 0x0072b430    8bc1
                         ret                                                              // 0x0072b432    c3
                         nop                                                              // 0x0072b433    90
                         nop                                                              // 0x0072b434    90
                         nop                                                              // 0x0072b435    90
                         nop                                                              // 0x0072b436    90
                         nop                                                              // 0x0072b437    90
                         nop                                                              // 0x0072b438    90
                         nop                                                              // 0x0072b439    90
                         nop                                                              // 0x0072b43a    90
                         nop                                                              // 0x0072b43b    90
                         nop                                                              // 0x0072b43c    90
                         nop                                                              // 0x0072b43d    90
                         nop                                                              // 0x0072b43e    90
                         nop                                                              // 0x0072b43f    90
?Get2DRadius@SpellShield@@UAEMXZ:
                         {disp32} jmp       _jmp_addr_0x007202c0                          // 0x0072b440    e97b4effff
                         nop                                                              // 0x0072b445    90
                         nop                                                              // 0x0072b446    90
                         nop                                                              // 0x0072b447    90
                         nop                                                              // 0x0072b448    90
                         nop                                                              // 0x0072b449    90
                         nop                                                              // 0x0072b44a    90
                         nop                                                              // 0x0072b44b    90
                         nop                                                              // 0x0072b44c    90
                         nop                                                              // 0x0072b44d    90
                         nop                                                              // 0x0072b44e    90
                         nop                                                              // 0x0072b44f    90
?GetRadius@SpellShield@@UAEMXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0072b450    8b01
                         {disp8} jmp        dword ptr [eax + 0x64]                        // 0x0072b452    ff6064
                         nop                                                              // 0x0072b455    90
                         nop                                                              // 0x0072b456    90
                         nop                                                              // 0x0072b457    90
                         nop                                                              // 0x0072b458    90
                         nop                                                              // 0x0072b459    90
                         nop                                                              // 0x0072b45a    90
                         nop                                                              // 0x0072b45b    90
                         nop                                                              // 0x0072b45c    90
                         nop                                                              // 0x0072b45d    90
                         nop                                                              // 0x0072b45e    90
                         nop                                                              // 0x0072b45f    90
?GetSaveType@SpellShield@@UAEIXZ:
                         mov                eax, 0x00000011                               // 0x0072b460    b811000000
                         ret                                                              // 0x0072b465    c3
                         nop                                                              // 0x0072b466    90
                         nop                                                              // 0x0072b467    90
                         nop                                                              // 0x0072b468    90
                         nop                                                              // 0x0072b469    90
                         nop                                                              // 0x0072b46a    90
                         nop                                                              // 0x0072b46b    90
                         nop                                                              // 0x0072b46c    90
                         nop                                                              // 0x0072b46d    90
                         nop                                                              // 0x0072b46e    90
                         nop                                                              // 0x0072b46f    90
?GetDebugText@SpellShield@@UAEPADXZ:
                         mov                eax, 0x00c22794                               // 0x0072b470    b89427c200
                         ret                                                              // 0x0072b475    c3
                         nop                                                              // 0x0072b476    90
                         nop                                                              // 0x0072b477    90
                         nop                                                              // 0x0072b478    90
                         nop                                                              // 0x0072b479    90
                         nop                                                              // 0x0072b47a    90
                         nop                                                              // 0x0072b47b    90
                         nop                                                              // 0x0072b47c    90
                         nop                                                              // 0x0072b47d    90
                         nop                                                              // 0x0072b47e    90
                         nop                                                              // 0x0072b47f    90
??_GSpellShield@@UAEPAXI@Z:
                         push               esi                                           // 0x0072b480    56
                         mov.s              esi, ecx                                      // 0x0072b481    8bf1
                         call               _jmp_addr_0x0056fa80                          // 0x0072b483    e8f845e4ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072b488    f644240801
                         {disp8} je         _jmp_addr_0x0072b49d                          // 0x0072b48d    740e
                         push               0x0000010c                                    // 0x0072b48f    680c010000
                         push               esi                                           // 0x0072b494    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072b495    e8d6b4d0ff
                         add                esp, 0x08                                     // 0x0072b49a    83c408
_jmp_addr_0x0072b49d:    mov.s              eax, esi                                      // 0x0072b49d    8bc6
                         pop                esi                                           // 0x0072b49f    5e
                         ret                0x0004                                        // 0x0072b4a0    c20400
                         nop                                                              // 0x0072b4a3    90
                         nop                                                              // 0x0072b4a4    90
                         nop                                                              // 0x0072b4a5    90
                         nop                                                              // 0x0072b4a6    90
                         nop                                                              // 0x0072b4a7    90
                         nop                                                              // 0x0072b4a8    90
                         nop                                                              // 0x0072b4a9    90
                         nop                                                              // 0x0072b4aa    90
                         nop                                                              // 0x0072b4ab    90
                         nop                                                              // 0x0072b4ac    90
                         nop                                                              // 0x0072b4ad    90
                         nop                                                              // 0x0072b4ae    90
                         nop                                                              // 0x0072b4af    90
_jmp_addr_0x0072b4b0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072b4b0    8b442408
                         push               esi                                           // 0x0072b4b4    56
                         mov.s              esi, ecx                                      // 0x0072b4b5    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072b4b7    8b4c2408
                         push               eax                                           // 0x0072b4bb    50
                         push               ecx                                           // 0x0072b4bc    51
                         mov.s              ecx, esi                                      // 0x0072b4bd    8bce
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x0072b4bf    e87c46ffff
                         xor.s              eax, eax                                      // 0x0072b4c4    33c0
                         {disp32} mov       dword ptr [esi + 0x000000f0], eax             // 0x0072b4c6    8986f0000000
                         {disp32} mov       dword ptr [esi + 0x000000ec], eax             // 0x0072b4cc    8986ec000000
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0072b4d2    898600010000
                         {disp32} mov       dword ptr [esi + 0x00000108], eax             // 0x0072b4d8    898608010000
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0072b4de    898604010000
                         mov.s              ecx, esi                                      // 0x0072b4e4    8bce
                         mov                dword ptr [esi], 0x009828d8                   // 0x0072b4e6    c706d8289800
                         call               _jmp_addr_0x0072b3c0                          // 0x0072b4ec    e8cffeffff
                         mov.s              eax, esi                                      // 0x0072b4f1    8bc6
                         pop                esi                                           // 0x0072b4f3    5e
                         ret                0x0008                                        // 0x0072b4f4    c20800
                         nop                                                              // 0x0072b4f7    90
                         nop                                                              // 0x0072b4f8    90
                         nop                                                              // 0x0072b4f9    90
                         nop                                                              // 0x0072b4fa    90
                         nop                                                              // 0x0072b4fb    90
                         nop                                                              // 0x0072b4fc    90
                         nop                                                              // 0x0072b4fd    90
                         nop                                                              // 0x0072b4fe    90
                         nop                                                              // 0x0072b4ff    90
?ToBeDeleted@SpellShield@@UAEXH@Z:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3da7f0]        // 0x0072b500    a1f007da00
                         push               ebx                                           // 0x0072b505    53
                         push               ebp                                           // 0x0072b506    55
                         push               esi                                           // 0x0072b507    56
                         mov.s              esi, ecx                                      // 0x0072b508    8bf1
                         cmp.s              eax, esi                                      // 0x0072b50a    3bc6
                         push               edi                                           // 0x0072b50c    57
                         {disp8} jne        _jmp_addr_0x0072b51c                          // 0x0072b50d    750d
                         {disp32} mov       eax, dword ptr [esi + 0x00000100]             // 0x0072b50f    8b8600010000
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f0], eax        // 0x0072b515    a3f007da00
                         {disp8} jmp        _jmp_addr_0x0072b53e                          // 0x0072b51a    eb22
_jmp_addr_0x0072b51c:    test               eax, eax                                      // 0x0072b51c    85c0
                         {disp8} je         _jmp_addr_0x0072b54e                          // 0x0072b51e    742e
_jmp_addr_0x0072b520:    {disp32} mov       ecx, dword ptr [eax + 0x00000100]             // 0x0072b520    8b8800010000
                         cmp.s              ecx, esi                                      // 0x0072b526    3bce
                         {disp8} je         _jmp_addr_0x0072b532                          // 0x0072b528    7408
                         mov.s              eax, ecx                                      // 0x0072b52a    8bc1
                         test               eax, eax                                      // 0x0072b52c    85c0
                         {disp8} jne        _jmp_addr_0x0072b520                          // 0x0072b52e    75f0
                         {disp8} jmp        _jmp_addr_0x0072b54e                          // 0x0072b530    eb1c
_jmp_addr_0x0072b532:    {disp32} mov       ecx, dword ptr [esi + 0x00000100]             // 0x0072b532    8b8e00010000
                         {disp32} mov       dword ptr [eax + 0x00000100], ecx             // 0x0072b538    898800010000
_jmp_addr_0x0072b53e:    dec                dword ptr [data_bytes + 0x3da7f4]             // 0x0072b53e    ff0df407da00
                         {disp32} mov       dword ptr [esi + 0x00000100], 0x00000000      // 0x0072b544    c7860001000000000000
_jmp_addr_0x0072b54e:    push               esi                                           // 0x0072b54e    56
                         call               _jmp_addr_0x006e4750                          // 0x0072b54f    e8fc91fbff
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0072b554    8b542418
                         add                esp, 0x04                                     // 0x0072b558    83c404
                         push               edx                                           // 0x0072b55b    52
                         mov.s              ecx, esi                                      // 0x0072b55c    8bce
                         {disp32} mov       dword ptr [esi + 0x000000f8], 0x00000000      // 0x0072b55e    c786f800000000000000
                         call               ?ToBeDeleted@SpellWithObjects@@UAEXH@Z        // 0x0072b568    e8635affff
_jmp_addr_0x0072b56d:    {disp32} mov       eax, dword ptr [esi + 0x00000104]             // 0x0072b56d    8b8604010000
                         test               eax, eax                                      // 0x0072b573    85c0
                         {disp8} je         _jmp_addr_0x0072b5de                          // 0x0072b575    7467
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x0072b577    8b5804
                         mov                eax, dword ptr [ebx]                          // 0x0072b57a    8b03
                         push               0x0                                           // 0x0072b57c    6a00
                         mov.s              ecx, ebx                                      // 0x0072b57e    8bcb
                         call               dword ptr [eax + 0xc]                         // 0x0072b580    ff500c
                         {disp32} mov       eax, dword ptr [esi + 0x00000104]             // 0x0072b583    8b8604010000
                         mov.s              ecx, eax                                      // 0x0072b589    8bc8
                         test               ecx, ecx                                      // 0x0072b58b    85c9
                         {disp8} je         _jmp_addr_0x0072b56d                          // 0x0072b58d    74de
_jmp_addr_0x0072b58f:    cmp                dword ptr [ecx + 0x04], ebx                   // 0x0072b58f    395904
                         {disp8} je         _jmp_addr_0x0072b59c                          // 0x0072b592    7408
                         mov                ecx, dword ptr [ecx]                          // 0x0072b594    8b09
                         test               ecx, ecx                                      // 0x0072b596    85c9
                         {disp8} jne        _jmp_addr_0x0072b58f                          // 0x0072b598    75f5
                         {disp8} jmp        _jmp_addr_0x0072b56d                          // 0x0072b59a    ebd1
_jmp_addr_0x0072b59c:    xor.s              ebp, ebp                                      // 0x0072b59c    33ed
                         test               eax, eax                                      // 0x0072b59e    85c0
                         {disp8} je         _jmp_addr_0x0072b56d                          // 0x0072b5a0    74cb
_jmp_addr_0x0072b5a2:    cmp                dword ptr [eax + 0x04], ebx                   // 0x0072b5a2    395804
                         mov                edi, dword ptr [eax]                          // 0x0072b5a5    8b38
                         {disp8} jne        _jmp_addr_0x0072b5d4                          // 0x0072b5a7    752b
                         cmp                eax, dword ptr [esi + 0x00000104]             // 0x0072b5a9    3b8604010000
                         {disp8} jne        _jmp_addr_0x0072b5b9                          // 0x0072b5af    7508
                         {disp32} mov       dword ptr [esi + 0x00000104], edi             // 0x0072b5b1    89be04010000
                         {disp8} jmp        _jmp_addr_0x0072b5bc                          // 0x0072b5b7    eb03
_jmp_addr_0x0072b5b9:    {disp8} mov        dword ptr [ebp + 0x00], edi                   // 0x0072b5b9    897d00
_jmp_addr_0x0072b5bc:    {disp32} mov       edx, dword ptr [esi + 0x00000108]             // 0x0072b5bc    8b9608010000
                         dec                edx                                           // 0x0072b5c2    4a
                         push               eax                                           // 0x0072b5c3    50
                         {disp32} mov       dword ptr [esi + 0x00000108], edx             // 0x0072b5c4    899608010000
                         call               ??3@YAXPAX@Z                                  // 0x0072b5ca    e8c9380800
                         add                esp, 0x04                                     // 0x0072b5cf    83c404
                         {disp8} jmp        _jmp_addr_0x0072b5d6                          // 0x0072b5d2    eb02
_jmp_addr_0x0072b5d4:    mov.s              ebp, eax                                      // 0x0072b5d4    8be8
_jmp_addr_0x0072b5d6:    test               edi, edi                                      // 0x0072b5d6    85ff
                         mov.s              eax, edi                                      // 0x0072b5d8    8bc7
                         {disp8} jne        _jmp_addr_0x0072b5a2                          // 0x0072b5da    75c6
                         {disp8} jmp        _jmp_addr_0x0072b56d                          // 0x0072b5dc    eb8f
_jmp_addr_0x0072b5de:    pop                edi                                           // 0x0072b5de    5f
                         pop                esi                                           // 0x0072b5df    5e
                         pop                ebp                                           // 0x0072b5e0    5d
                         pop                ebx                                           // 0x0072b5e1    5b
                         ret                0x0004                                        // 0x0072b5e2    c20400
                         nop                                                              // 0x0072b5e5    90
                         nop                                                              // 0x0072b5e6    90
                         nop                                                              // 0x0072b5e7    90
                         nop                                                              // 0x0072b5e8    90
                         nop                                                              // 0x0072b5e9    90
                         nop                                                              // 0x0072b5ea    90
                         nop                                                              // 0x0072b5eb    90
                         nop                                                              // 0x0072b5ec    90
                         nop                                                              // 0x0072b5ed    90
                         nop                                                              // 0x0072b5ee    90
                         nop                                                              // 0x0072b5ef    90
?InitWithPos@SpellShield@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z:
                         push               ebx                                           // 0x0072b5f0    53
                         push               ebp                                           // 0x0072b5f1    55
                         push               esi                                           // 0x0072b5f2    56
                         push               edi                                           // 0x0072b5f3    57
                         mov.s              esi, ecx                                      // 0x0072b5f4    8bf1
                         call               ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ             // 0x0072b5f6    e825020000
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0072b5fb    8b4c241c
                         mov.s              edx, eax                                      // 0x0072b5ff    8bd0
                         mov                eax, dword ptr [ecx]                          // 0x0072b601    8b01
                         {disp8} fld        dword ptr [edx + 0x5c]                        // 0x0072b603    d9425c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0072b606    8944241c
                         {disp8} fcomp      dword ptr [esp + 0x1c]                        // 0x0072b60a    d85c241c
                         fnstsw             ax                                            // 0x0072b60e    dfe0
                         test               ah, 0x41                                      // 0x0072b610    f6c441
                         {disp8} je         _jmp_addr_0x0072b61c                          // 0x0072b613    7407
                         {disp8} fld        dword ptr [edx + 0x5c]                        // 0x0072b615    d9425c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0072b618    d95c241c
_jmp_addr_0x0072b61c:    {disp8} fld        dword ptr [edx + 0x58]                        // 0x0072b61c    d94258
                         {disp8} fcomp      dword ptr [esp + 0x1c]                        // 0x0072b61f    d85c241c
                         fnstsw             ax                                            // 0x0072b623    dfe0
                         test               ah, 0x01                                      // 0x0072b625    f6c401
                         {disp8} jne        _jmp_addr_0x0072b631                          // 0x0072b628    7507
                         {disp8} fld        dword ptr [edx + 0x58]                        // 0x0072b62a    d94258
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0072b62d    d95c241c
_jmp_addr_0x0072b631:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0072b631    8b442420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0072b635    8b54241c
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0072b639    8b6c2418
                         push               eax                                           // 0x0072b63d    50
                         push               ecx                                           // 0x0072b63e    51
                         mov                dword ptr [ecx], edx                          // 0x0072b63f    8911
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0072b641    8b4c241c
                         push               ebp                                           // 0x0072b645    55
                         push               ecx                                           // 0x0072b646    51
                         mov.s              ecx, esi                                      // 0x0072b647    8bce
                         call               ?InitWithPos@Spell@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z                          // 0x0072b649    e80248ffff
                         mov                edx, dword ptr [esi]                          // 0x0072b64e    8b16
                         mov.s              ebx, eax                                      // 0x0072b650    8bd8
                         push               0x0                                           // 0x0072b652    6a00
                         mov.s              ecx, esi                                      // 0x0072b654    8bce
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x0072b656    895c2424
                         call               dword ptr [edx + 0x1c]                        // 0x0072b65a    ff521c
                         push               eax                                           // 0x0072b65d    50
                         push               0xd                                           // 0x0072b65e    6a0d
                         push               esi                                           // 0x0072b660    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0072b661    e80a87fbff
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0072b666    d944242c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1651c]             // 0x0072b66a    d8051cf58b00
                         {disp32} mov       dword ptr [esi + 0x000000f8], eax             // 0x0072b670    8986f8000000
                         add                esp, 0x10                                     // 0x0072b676    83c410
                         mov.s              ecx, esi                                      // 0x0072b679    8bce
                         {disp8} fstp       dword ptr [eax + 0x3c]                        // 0x0072b67b    d9583c
                         call               _jmp_addr_0x007202c0                          // 0x0072b67e    e83d4cffff
                         push               0x43fa0000                                    // 0x0072b683    680000fa43
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0072b688    d95c2420
                         mov.s              ecx, ebp                                      // 0x0072b68c    8bcd
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x0072b68e    e84d6aedff
                         {disp32} mov       dword ptr [esi + 0x000000fc], eax             // 0x0072b693    8986fc000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0072b699    8b0d5c19d000
                         push               0x0                                           // 0x0072b69f    6a00
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0072b6a1    e82a52e2ff
                         mov.s              edi, eax                                      // 0x0072b6a6    8bf8
                         test               edi, edi                                      // 0x0072b6a8    85ff
                         {disp8} je         _jmp_addr_0x0072b709                          // 0x0072b6aa    745d
_jmp_addr_0x0072b6ac:    mov                eax, dword ptr [esi]                          // 0x0072b6ac    8b06
                         mov.s              ecx, esi                                      // 0x0072b6ae    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0072b6b0    ff501c
                         cmp.s              edi, eax                                      // 0x0072b6b3    3bf8
                         {disp8} je         _jmp_addr_0x0072b6f3                          // 0x0072b6b5    743c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0072b6b7    8b4c241c
                         push               0x1                                           // 0x0072b6bb    6a01
                         push               ecx                                           // 0x0072b6bd    51
                         push               edi                                           // 0x0072b6be    57
                         push               ebp                                           // 0x0072b6bf    55
                         call               _jmp_addr_0x005cd9d0                          // 0x0072b6c0    e80b23eaff
                         mov.s              ebx, eax                                      // 0x0072b6c5    8bd8
                         add                esp, 0x10                                     // 0x0072b6c7    83c410
                         test               ebx, ebx                                      // 0x0072b6ca    85db
                         {disp8} je         _jmp_addr_0x0072b6f3                          // 0x0072b6cc    7425
                         push               0x8                                           // 0x0072b6ce    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0072b6d0    e819ae0900
                         add                esp, 0x04                                     // 0x0072b6d5    83c404
                         test               eax, eax                                      // 0x0072b6d8    85c0
                         {disp8} je         _jmp_addr_0x0072b6f3                          // 0x0072b6da    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x00000104]             // 0x0072b6dc    8b8e04010000
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x0072b6e2    895804
                         mov                dword ptr [eax], ecx                          // 0x0072b6e5    8908
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0072b6e7    898604010000
                         {disp32} inc       dword ptr [esi + 0x00000108]                  // 0x0072b6ed    ff8608010000
_jmp_addr_0x0072b6f3:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0072b6f3    8b0d5c19d000
                         push               edi                                           // 0x0072b6f9    57
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0072b6fa    e8d151e2ff
                         mov.s              edi, eax                                      // 0x0072b6ff    8bf8
                         test               edi, edi                                      // 0x0072b701    85ff
                         {disp8} jne        _jmp_addr_0x0072b6ac                          // 0x0072b703    75a7
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0072b705    8b5c2420
_jmp_addr_0x0072b709:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0072b709    8b54241c
                         push               edx                                           // 0x0072b70d    52
                         push               esi                                           // 0x0072b70e    56
                         push               ebp                                           // 0x0072b70f    55
                         call               _jmp_addr_0x0072be20                          // 0x0072b710    e80b070000
                         mov.s              edi, eax                                      // 0x0072b715    8bf8
                         add                esp, 0x0c                                     // 0x0072b717    83c40c
                         test               edi, edi                                      // 0x0072b71a    85ff
                         {disp8} je         _jmp_addr_0x0072b743                          // 0x0072b71c    7425
                         push               0x8                                           // 0x0072b71e    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0072b720    e8c9ad0900
                         add                esp, 0x04                                     // 0x0072b725    83c404
                         test               eax, eax                                      // 0x0072b728    85c0
                         {disp8} je         _jmp_addr_0x0072b743                          // 0x0072b72a    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072b72c    8b8eec000000
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x0072b732    897804
                         mov                dword ptr [eax], ecx                          // 0x0072b735    8908
                         {disp32} mov       dword ptr [esi + 0x000000ec], eax             // 0x0072b737    8986ec000000
                         {disp32} inc       dword ptr [esi + 0x000000f0]                  // 0x0072b73d    ff86f0000000
_jmp_addr_0x0072b743:    pop                edi                                           // 0x0072b743    5f
                         pop                esi                                           // 0x0072b744    5e
                         pop                ebp                                           // 0x0072b745    5d
                         mov.s              eax, ebx                                      // 0x0072b746    8bc3
                         pop                ebx                                           // 0x0072b748    5b
                         ret                0x0010                                        // 0x0072b749    c21000
                         nop                                                              // 0x0072b74c    90
                         nop                                                              // 0x0072b74d    90
                         nop                                                              // 0x0072b74e    90
                         nop                                                              // 0x0072b74f    90
?Process@SpellShield@@UAEIXZ:
                         push               esi                                           // 0x0072b750    56
                         mov.s              esi, ecx                                      // 0x0072b751    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x0072b753    8b8ef4000000
                         test               ecx, ecx                                      // 0x0072b759    85c9
                         {disp8} je         _jmp_addr_0x0072b771                          // 0x0072b75b    7414
                         mov                eax, dword ptr [ecx]                          // 0x0072b75d    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x0072b75f    ff502c
                         cmp                eax, 0x01                                     // 0x0072b762    83f801
                         {disp8} je         _jmp_addr_0x0072b771                          // 0x0072b765    740a
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x0072b767    c786f400000000000000
_jmp_addr_0x0072b771:    mov.s              ecx, esi                                      // 0x0072b771    8bce
                         call               ?Process@SpellWithObjects@@UAEIXZ             // 0x0072b773    e8185bffff
                         pop                esi                                           // 0x0072b778    5e
                         ret                                                              // 0x0072b779    c3
                         nop                                                              // 0x0072b77a    90
                         nop                                                              // 0x0072b77b    90
                         nop                                                              // 0x0072b77c    90
                         nop                                                              // 0x0072b77d    90
                         nop                                                              // 0x0072b77e    90
                         nop                                                              // 0x0072b77f    90
?UpdateStruckReaction@SpellShield@@UAEXXZ:
                         push               esi                                           // 0x0072b780    56
                         mov.s              esi, ecx                                      // 0x0072b781    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000f4]             // 0x0072b783    8b86f4000000
                         test               eax, eax                                      // 0x0072b789    85c0
                         {disp8} jne        _jmp_addr_0x0072b7a7                          // 0x0072b78b    751a
                         push               eax                                           // 0x0072b78d    50
                         mov                eax, dword ptr [esi]                          // 0x0072b78e    8b06
                         call               dword ptr [eax + 0x1c]                        // 0x0072b790    ff501c
                         push               eax                                           // 0x0072b793    50
                         push               0x23                                          // 0x0072b794    6a23
                         push               esi                                           // 0x0072b796    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0072b797    e8d485fbff
                         add                esp, 0x10                                     // 0x0072b79c    83c410
                         {disp32} mov       dword ptr [esi + 0x000000f4], eax             // 0x0072b79f    8986f4000000
                         pop                esi                                           // 0x0072b7a5    5e
                         ret                                                              // 0x0072b7a6    c3
_jmp_addr_0x0072b7a7:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0072b7a7    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0072b7ad    8b91405a2000
                         {disp8} mov        dword ptr [eax + 0x2c], edx                   // 0x0072b7b3    89502c
                         pop                esi                                           // 0x0072b7b6    5e
                         ret                                                              // 0x0072b7b7    c3
                         nop                                                              // 0x0072b7b8    90
                         nop                                                              // 0x0072b7b9    90
                         nop                                                              // 0x0072b7ba    90
                         nop                                                              // 0x0072b7bb    90
                         nop                                                              // 0x0072b7bc    90
                         nop                                                              // 0x0072b7bd    90
                         nop                                                              // 0x0072b7be    90
                         nop                                                              // 0x0072b7bf    90
?SetUpDestroyedReaction@SpellShield@@UAEXXZ:
                         push               esi                                           // 0x0072b7c0    56
                         mov.s              esi, ecx                                      // 0x0072b7c1    8bf1
                         push               0xd                                           // 0x0072b7c3    6a0d
                         push               esi                                           // 0x0072b7c5    56
                         call               _jmp_addr_0x006e4780                          // 0x0072b7c6    e8b58ffbff
                         mov                eax, dword ptr [esi]                          // 0x0072b7cb    8b06
                         add                esp, 0x08                                     // 0x0072b7cd    83c408
                         push               0x0                                           // 0x0072b7d0    6a00
                         mov.s              ecx, esi                                      // 0x0072b7d2    8bce
                         {disp32} mov       dword ptr [esi + 0x000000f8], 0x00000000      // 0x0072b7d4    c786f800000000000000
                         call               dword ptr [eax + 0x1c]                        // 0x0072b7de    ff501c
                         push               eax                                           // 0x0072b7e1    50
                         push               0x24                                          // 0x0072b7e2    6a24
                         push               esi                                           // 0x0072b7e4    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0072b7e5    e88685fbff
                         add                esp, 0x10                                     // 0x0072b7ea    83c410
                         pop                esi                                           // 0x0072b7ed    5e
                         ret                                                              // 0x0072b7ee    c3
                         nop                                                              // 0x0072b7ef    90
?CalculateCostToMaintain@SpellShield@@UAEMXZ:
                         push               ecx                                           // 0x0072b7f0    51
                         push               esi                                           // 0x0072b7f1    56
                         push               edi                                           // 0x0072b7f2    57
                         mov.s              esi, ecx                                      // 0x0072b7f3    8bf1
                         call               ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ             // 0x0072b7f5    e826000000
                         mov.s              ecx, esi                                      // 0x0072b7fa    8bce
                         mov.s              edi, eax                                      // 0x0072b7fc    8bf8
                         call               _jmp_addr_0x007202c0                          // 0x0072b7fe    e8bd4affff
                         {disp8} fdiv       dword ptr [edi + 0x60]                        // 0x0072b803    d87760
                         mov.s              ecx, esi                                      // 0x0072b806    8bce
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0072b808    d95c2408
                         call               ?CalculateCostToMaintain@Spell@@UAEMXZ        // 0x0072b80c    e8ff4fffff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0072b811    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0072b815    d84c2408
                         pop                edi                                           // 0x0072b819    5f
                         pop                esi                                           // 0x0072b81a    5e
                         fmulp              st(1), st                                     // 0x0072b81b    dec9
                         pop                ecx                                           // 0x0072b81d    59
                         ret                                                              // 0x0072b81e    c3
                         nop                                                              // 0x0072b81f    90
?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ:
                                      {disp32} mov       eax, dword ptr [ecx + 0x000000b4]             // 0x0072b820    8b81b4000000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0072b826    8b0485107dd300
                         ret                                                              // 0x0072b82d    c3
                         nop                                                              // 0x0072b82e    90
                         nop                                                              // 0x0072b82f    90
_jmp_addr_0x0072b830:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072b830    8b442404
                         push               0x1                                           // 0x0072b834    6a01
                         push               eax                                           // 0x0072b836    50
                         call               _jmp_addr_0x00720990                          // 0x0072b837    e85451ffff
                         ret                0x0004                                        // 0x0072b83c    c20400
                         nop                                                              // 0x0072b83f    90
?CloseDown@SpellShield@@UAEXXZ:
                         {disp32} jmp       ?CloseDown@SpellWithObjects@@UAEXXZ           // 0x0072b840    e9bb5affff
                         nop                                                              // 0x0072b845    90
                         nop                                                              // 0x0072b846    90
                         nop                                                              // 0x0072b847    90
                         nop                                                              // 0x0072b848    90
                         nop                                                              // 0x0072b849    90
                         nop                                                              // 0x0072b84a    90
                         nop                                                              // 0x0072b84b    90
                         nop                                                              // 0x0072b84c    90
                         nop                                                              // 0x0072b84d    90
                         nop                                                              // 0x0072b84e    90
                         nop                                                              // 0x0072b84f    90
?IsPointDefinietlyWithinShieldVolume@MagicShield@@UAE_NPBUMapCoords@@@Z:
                         sub                esp, 0x18                                     // 0x0072b850    83ec18
                         push               esi                                           // 0x0072b853    56
                         mov.s              esi, ecx                                      // 0x0072b854    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0072b856    8b4660
                         test               eax, eax                                      // 0x0072b859    85c0
                         {disp8} je         _jmp_addr_0x0072b8d2                          // 0x0072b85b    7475
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0072b85d    8b4c2420
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0072b861    8d442404
                         push               eax                                           // 0x0072b865    50
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0072b866    e8d5a3edff
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0072b86b    8d4c2410
                         push               ecx                                           // 0x0072b86f    51
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0072b870    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0072b873    e8c8a3edff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072b878    8b4e60
                         mov                edx, dword ptr [ecx]                          // 0x0072b87b    8b11
                         call               dword ptr [edx + 0x64]                        // 0x0072b87d    ff5264
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0072b880    d9442404
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0072b884    d8642410
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0072b888    d9442408
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0072b88c    d8642414
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072b890    d944240c
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0072b894    d8642418
                         fld                st(0)                                         // 0x0072b898    d9c0
                         fmul               st, st(1)                                     // 0x0072b89a    d8c9
                         fld                st(2)                                         // 0x0072b89c    d9c2
                         fmul               st, st(3)                                     // 0x0072b89e    d8cb
                         faddp              st(1), st                                     // 0x0072b8a0    dec1
                         fld                st(3)                                         // 0x0072b8a2    d9c3
                         fmul               st, st(4)                                     // 0x0072b8a4    d8cc
                         faddp              st(1), st                                     // 0x0072b8a6    dec1
                         fld                st(4)                                         // 0x0072b8a8    d9c4
                         fmul               st, st(5)                                     // 0x0072b8aa    d8cd
                         fcompp                                                           // 0x0072b8ac    ded9
                         fstp               st(0)                                         // 0x0072b8ae    ddd8
                         fstp               st(0)                                         // 0x0072b8b0    ddd8
                         fnstsw             ax                                            // 0x0072b8b2    dfe0
                         fstp               st(0)                                         // 0x0072b8b4    ddd8
                         test               ah, 0x41                                      // 0x0072b8b6    f6c441
                         fstp               st(0)                                         // 0x0072b8b9    ddd8
                         {disp8} jne        _jmp_addr_0x0072b8c9                          // 0x0072b8bb    750c
                         mov                eax, 0x00000001                               // 0x0072b8bd    b801000000
                         pop                esi                                           // 0x0072b8c2    5e
                         add                esp, 0x18                                     // 0x0072b8c3    83c418
                         ret                0x0004                                        // 0x0072b8c6    c20400
_jmp_addr_0x0072b8c9:    xor.s              eax, eax                                      // 0x0072b8c9    33c0
                         pop                esi                                           // 0x0072b8cb    5e
                         add                esp, 0x18                                     // 0x0072b8cc    83c418
                         ret                0x0004                                        // 0x0072b8cf    c20400
_jmp_addr_0x0072b8d2:    xor.s              al, al                                        // 0x0072b8d2    32c0
                         pop                esi                                           // 0x0072b8d4    5e
                         add                esp, 0x18                                     // 0x0072b8d5    83c418
                         ret                0x0004                                        // 0x0072b8d8    c20400
                         nop                                                              // 0x0072b8db    90
                         nop                                                              // 0x0072b8dc    90
                         nop                                                              // 0x0072b8dd    90
                         nop                                                              // 0x0072b8de    90
                         nop                                                              // 0x0072b8df    90
?IsPointDefinietlyWithinShieldVolume@PhysicalShield@@UAE_NPBUMapCoords@@@Z:
                         sub                esp, 0x20                                     // 0x0072b8e0    83ec20
                         push               esi                                           // 0x0072b8e3    56
                         push               edi                                           // 0x0072b8e4    57
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x0072b8e5    8b7c242c
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0072b8e9    8d442410
                         mov.s              esi, ecx                                      // 0x0072b8ed    8bf1
                         push               eax                                           // 0x0072b8ef    50
                         mov.s              ecx, edi                                      // 0x0072b8f0    8bcf
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0072b8f2    e849a3edff
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0072b8f7    8d4c241c
                         push               ecx                                           // 0x0072b8fb    51
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0072b8fc    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0072b8ff    e83ca3edff
                         mov                edx, dword ptr [esi]                          // 0x0072b904    8b16
                         mov.s              ecx, esi                                      // 0x0072b906    8bce
                         call               dword ptr [edx + 0x64]                        // 0x0072b908    ff5264
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0072b90b    d95c242c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072b90f    d9442410
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0072b913    d864241c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0072b917    d9442418
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x0072b91b    d8642424
                         fld                st(0)                                         // 0x0072b91f    d9c0
                         fmul               st, st(1)                                     // 0x0072b921    d8c9
                         fld                st(2)                                         // 0x0072b923    d9c2
                         fmul               st, st(3)                                     // 0x0072b925    d8cb
                         faddp              st(1), st                                     // 0x0072b927    dec1
                         {disp8} fst        dword ptr [esp + 0x0c]                        // 0x0072b929    d954240c
                         fstp               st(2)                                         // 0x0072b92d    ddda
                         fstp               st(0)                                         // 0x0072b92f    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0072b931    d944242c
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x0072b935    d84c242c
                         fxch               st(1)                                         // 0x0072b939    d9c9
                         fcompp                                                           // 0x0072b93b    ded9
                         fnstsw             ax                                            // 0x0072b93d    dfe0
                         test               ah, 0x01                                      // 0x0072b93f    f6c401
                         {disp8} je         _jmp_addr_0x0072b982                          // 0x0072b942    743e
                         mov                eax, dword ptr [esi]                          // 0x0072b944    8b06
                         mov.s              ecx, esi                                      // 0x0072b946    8bce
                         call               dword ptr [eax + 0x42c]                       // 0x0072b948    ff902c040000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0072b94e    d95c2408
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x0072b952    d94708
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072b955    d944240c
                         fsqrt                                                            // 0x0072b959    d9fa
                         fxch               st(1)                                         // 0x0072b95b    d9c9
                         fxch               st(1)                                         // 0x0072b95d    d9c9
                         {disp8} fdiv       dword ptr [esp + 0x2c]                        // 0x0072b95f    d874242c
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0072b963    d9442408
                         fchs                                                             // 0x0072b967    d9e0
                         fmulp              st(1), st                                     // 0x0072b969    dec9
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x0072b96b    d8442408
                         fcompp                                                           // 0x0072b96f    ded9
                         fnstsw             ax                                            // 0x0072b971    dfe0
                         test               ah, 0x41                                      // 0x0072b973    f6c441
                         {disp8} jne        _jmp_addr_0x0072b982                          // 0x0072b976    750a
                         pop                edi                                           // 0x0072b978    5f
                         mov                al, 0x01                                      // 0x0072b979    b001
                         pop                esi                                           // 0x0072b97b    5e
                         add                esp, 0x20                                     // 0x0072b97c    83c420
                         ret                0x0004                                        // 0x0072b97f    c20400
_jmp_addr_0x0072b982:    pop                edi                                           // 0x0072b982    5f
                         xor.s              al, al                                        // 0x0072b983    32c0
                         pop                esi                                           // 0x0072b985    5e
                         add                esp, 0x20                                     // 0x0072b986    83c420
                         ret                0x0004                                        // 0x0072b989    c20400
                         nop                                                              // 0x0072b98c    90
                         nop                                                              // 0x0072b98d    90
                         nop                                                              // 0x0072b98e    90
                         nop                                                              // 0x0072b98f    90
_jmp_addr_0x0072b990:    {disp32} mov       eax, dword ptr [_game]                        // 0x0072b990    a15c19d000
                         push               ebx                                           // 0x0072b995    53
                         push               esi                                           // 0x0072b996    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205ca4]             // 0x0072b997    8bb0a45c2000
                         test               esi, esi                                      // 0x0072b99d    85f6
                         push               edi                                           // 0x0072b99f    57
                         {disp8} je         _jmp_addr_0x0072b9e9                          // 0x0072b9a0    7447
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0072b9a2    8b4c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0072b9a6    8b5c2414
                         {disp8} lea        edi, dword ptr [ecx + 0x14]                   // 0x0072b9aa    8d7914
_jmp_addr_0x0072b9ad:    {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x0072b9ad    8d5614
                         push               edi                                           // 0x0072b9b0    57
                         push               edx                                           // 0x0072b9b1    52
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0072b9b2    e8b9130200
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0072b9b7    d95c2418
                         mov                eax, dword ptr [esi]                          // 0x0072b9bb    8b06
                         add                esp, 0x08                                     // 0x0072b9bd    83c408
                         mov.s              ecx, esi                                      // 0x0072b9c0    8bce
                         call               dword ptr [eax + 0x64]                        // 0x0072b9c2    ff5064
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0072b9c5    d85c2410
                         fnstsw             ax                                            // 0x0072b9c9    dfe0
                         test               ah, 0x41                                      // 0x0072b9cb    f6c441
                         {disp8} jne        _jmp_addr_0x0072b9e2                          // 0x0072b9ce    7512
                         mov                edx, dword ptr [esi]                          // 0x0072b9d0    8b16
                         {disp8} lea        eax, dword ptr [ebx + 0x14]                   // 0x0072b9d2    8d4314
                         push               eax                                           // 0x0072b9d5    50
                         mov.s              ecx, esi                                      // 0x0072b9d6    8bce
                         call               dword ptr [edx + 0x870]                       // 0x0072b9d8    ff9270080000
                         test               al, al                                        // 0x0072b9de    84c0
                         {disp8} je         _jmp_addr_0x0072b9ef                          // 0x0072b9e0    740d
_jmp_addr_0x0072b9e2:    {disp8} mov        esi, dword ptr [esi + 0x5c]                   // 0x0072b9e2    8b765c
                         test               esi, esi                                      // 0x0072b9e5    85f6
                         {disp8} jne        _jmp_addr_0x0072b9ad                          // 0x0072b9e7    75c4
_jmp_addr_0x0072b9e9:    pop                edi                                           // 0x0072b9e9    5f
                         pop                esi                                           // 0x0072b9ea    5e
                         xor.s              al, al                                        // 0x0072b9eb    32c0
                         pop                ebx                                           // 0x0072b9ed    5b
                         ret                                                              // 0x0072b9ee    c3
_jmp_addr_0x0072b9ef:    pop                edi                                           // 0x0072b9ef    5f
                         pop                esi                                           // 0x0072b9f0    5e
                         mov                al, 0x01                                      // 0x0072b9f1    b001
                         pop                ebx                                           // 0x0072b9f3    5b
                         ret                                                              // 0x0072b9f4    c3
                         nop                                                              // 0x0072b9f5    90
                         nop                                                              // 0x0072b9f6    90
                         nop                                                              // 0x0072b9f7    90
                         nop                                                              // 0x0072b9f8    90
                         nop                                                              // 0x0072b9f9    90
                         nop                                                              // 0x0072b9fa    90
                         nop                                                              // 0x0072b9fb    90
                         nop                                                              // 0x0072b9fc    90
                         nop                                                              // 0x0072b9fd    90
                         nop                                                              // 0x0072b9fe    90
                         nop                                                              // 0x0072b9ff    90
_jmp_addr_0x0072ba00:    push               ebx                                           // 0x0072ba00    53
                         push               esi                                           // 0x0072ba01    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x3da7f0]        // 0x0072ba02    8b35f007da00
                         test               esi, esi                                      // 0x0072ba08    85f6
                         push               edi                                           // 0x0072ba0a    57
                         {disp8} je         _jmp_addr_0x0072ba73                          // 0x0072ba0b    7466
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0072ba0d    8b7c2414
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0072ba11    8b5c2410
_jmp_addr_0x0072ba15:    mov                eax, dword ptr [esi]                          // 0x0072ba15    8b06
                         mov.s              ecx, esi                                      // 0x0072ba17    8bce
                         call               dword ptr [eax + 0x2c]                        // 0x0072ba19    ff502c
                         cmp                eax, 0x01                                     // 0x0072ba1c    83f801
                         {disp8} jne        _jmp_addr_0x0072ba69                          // 0x0072ba1f    7548
                         {disp32} mov       ecx, dword ptr [esi + 0x000000b4]             // 0x0072ba21    8b8eb4000000
                         xor.s              eax, eax                                      // 0x0072ba27    33c0
                         cmp                ecx, 0x13                                     // 0x0072ba29    83f913
                         {disp8} jne        _jmp_addr_0x0072ba35                          // 0x0072ba2c    7507
                         mov                eax, 0x00000002                               // 0x0072ba2e    b802000000
                         {disp8} jmp        _jmp_addr_0x0072ba3f                          // 0x0072ba33    eb0a
_jmp_addr_0x0072ba35:    cmp                ecx, 0x14                                     // 0x0072ba35    83f914
                         {disp8} jne        _jmp_addr_0x0072ba3f                          // 0x0072ba38    7505
                         mov                eax, 0x00000001                               // 0x0072ba3a    b801000000
_jmp_addr_0x0072ba3f:    or.s               eax, edi                                      // 0x0072ba3f    0bc7
                         {disp8} je         _jmp_addr_0x0072ba69                          // 0x0072ba41    7426
                         {disp32} lea       ecx, dword ptr [esi + 0x000000c0]             // 0x0072ba43    8d8ec0000000
                         push               ebx                                           // 0x0072ba49    53
                         push               ecx                                           // 0x0072ba4a    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0072ba4b    e820130200
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0072ba50    d95c241c
                         mov                edx, dword ptr [esi]                          // 0x0072ba54    8b16
                         add                esp, 0x08                                     // 0x0072ba56    83c408
                         mov.s              ecx, esi                                      // 0x0072ba59    8bce
                         call               dword ptr [edx + 0x64]                        // 0x0072ba5b    ff5264
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0072ba5e    d85c2414
                         fnstsw             ax                                            // 0x0072ba62    dfe0
                         test               ah, 0x41                                      // 0x0072ba64    f6c441
                         {disp8} je         _jmp_addr_0x0072ba79                          // 0x0072ba67    7410
_jmp_addr_0x0072ba69:    {disp32} mov       esi, dword ptr [esi + 0x00000100]             // 0x0072ba69    8bb600010000
                         test               esi, esi                                      // 0x0072ba6f    85f6
                         {disp8} jne        _jmp_addr_0x0072ba15                          // 0x0072ba71    75a2
_jmp_addr_0x0072ba73:    pop                edi                                           // 0x0072ba73    5f
                         pop                esi                                           // 0x0072ba74    5e
                         xor.s              eax, eax                                      // 0x0072ba75    33c0
                         pop                ebx                                           // 0x0072ba77    5b
                         ret                                                              // 0x0072ba78    c3
_jmp_addr_0x0072ba79:    pop                edi                                           // 0x0072ba79    5f
                         mov.s              eax, esi                                      // 0x0072ba7a    8bc6
                         pop                esi                                           // 0x0072ba7c    5e
                         pop                ebx                                           // 0x0072ba7d    5b
                         ret                                                              // 0x0072ba7e    c3
                         nop                                                              // 0x0072ba7f    90
?GetImpressiveValue@SpellShield@@UAEMPAVLiving@@PAVReaction@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072ba80    8b442408
                         push               ebp                                           // 0x0072ba84    55
                         {disp8} mov        ebp, dword ptr [eax + 0x24]                   // 0x0072ba85    8b6824
                         push               esi                                           // 0x0072ba88    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072ba89    8b74240c
                         mov                edx, dword ptr [esi]                          // 0x0072ba8d    8b16
                         push               edi                                           // 0x0072ba8f    57
                         mov.s              edi, ecx                                      // 0x0072ba90    8bf9
                         push               0x0                                           // 0x0072ba92    6a00
                         mov.s              ecx, esi                                      // 0x0072ba94    8bce
                         call               dword ptr [edx + 0x2c8]                       // 0x0072ba96    ff92c8020000
                         test               eax, eax                                      // 0x0072ba9c    85c0
                         {disp8} je         _jmp_addr_0x0072badb                          // 0x0072ba9e    743b
                         mov                eax, dword ptr [esi]                          // 0x0072baa0    8b06
                         mov.s              ecx, esi                                      // 0x0072baa2    8bce
                         call               dword ptr [eax + 0x48]                        // 0x0072baa4    ff5048
                         test               eax, eax                                      // 0x0072baa7    85c0
                         {disp8} je         _jmp_addr_0x0072badb                          // 0x0072baa9    7430
                         mov                edx, dword ptr [esi]                          // 0x0072baab    8b16
                         push               ebx                                           // 0x0072baad    53
                         mov.s              ecx, esi                                      // 0x0072baae    8bce
                         call               dword ptr [edx + 0x48]                        // 0x0072bab0    ff5248
                         {disp32} mov       ebx, dword ptr [eax + 0x00000eac]             // 0x0072bab3    8b98ac0e0000
                         mov                eax, dword ptr [edi]                          // 0x0072bab9    8b07
                         mov.s              ecx, edi                                      // 0x0072babb    8bcf
                         call               dword ptr [eax + 0x1c]                        // 0x0072babd    ff501c
                         cmp.s              ebx, eax                                      // 0x0072bac0    3bd8
                         pop                ebx                                           // 0x0072bac2    5b
                         {disp8} jne        _jmp_addr_0x0072badb                          // 0x0072bac3    7516
                         cmp                ebp, 0x0d                                     // 0x0072bac5    83fd0d
                         {disp8} je         _jmp_addr_0x0072bacf                          // 0x0072bac8    7405
                         cmp                ebp, 0x23                                     // 0x0072baca    83fd23
                         {disp8} jne        _jmp_addr_0x0072badb                          // 0x0072bacd    750c
_jmp_addr_0x0072bacf:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072bacf    d90598a38a00
                         pop                edi                                           // 0x0072bad5    5f
                         pop                esi                                           // 0x0072bad6    5e
                         pop                ebp                                           // 0x0072bad7    5d
                         ret                0x0008                                        // 0x0072bad8    c20800
_jmp_addr_0x0072badb:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0072badb    8b4c2414
                         push               ecx                                           // 0x0072badf    51
                         push               esi                                           // 0x0072bae0    56
                         mov.s              ecx, edi                                      // 0x0072bae1    8bcf
                         call               ?GetImpressiveValue@Spell@@UAEMPAVLiving@@PAVReaction@@@Z                          // 0x0072bae3    e8485bffff
                         cmp                ebp, 0x24                                     // 0x0072bae8    83fd24
                         {disp8} jne        _jmp_addr_0x0072baf3                          // 0x0072baeb    7506
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x0072baed    d80d18b48a00
_jmp_addr_0x0072baf3:    pop                edi                                           // 0x0072baf3    5f
                         pop                esi                                           // 0x0072baf4    5e
                         pop                ebp                                           // 0x0072baf5    5d
                         ret                0x0008                                        // 0x0072baf6    c20800
                         nop                                                              // 0x0072baf9    90
                         nop                                                              // 0x0072bafa    90
                         nop                                                              // 0x0072bafb    90
                         nop                                                              // 0x0072bafc    90
                         nop                                                              // 0x0072bafd    90
                         nop                                                              // 0x0072bafe    90
                         nop                                                              // 0x0072baff    90
_jmp_addr_0x0072bb00:    push               esi                                           // 0x0072bb00    56
                         {disp32} mov       esi, dword ptr [ecx + 0x000000f8]             // 0x0072bb01    8bb1f8000000
                         test               esi, esi                                      // 0x0072bb07    85f6
                         {disp8} je         _jmp_addr_0x0072bb37                          // 0x0072bb09    742c
                         push               0x8                                           // 0x0072bb0b    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0072bb0d    e8dca90900
                         add                esp, 0x04                                     // 0x0072bb12    83c404
                         test               eax, eax                                      // 0x0072bb15    85c0
                         {disp8} je         _jmp_addr_0x0072bb2f                          // 0x0072bb17    7416
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x0072bb19    8b4e18
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0072bb1c    8b542408
                         mov                dword ptr [eax], edx                          // 0x0072bb20    8910
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0072bb22    894804
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0072bb25    894618
                         {disp8} inc        dword ptr [esi + 0x1c]                        // 0x0072bb28    ff461c
                         pop                esi                                           // 0x0072bb2b    5e
                         ret                0x0004                                        // 0x0072bb2c    c20400
_jmp_addr_0x0072bb2f:    xor.s              eax, eax                                      // 0x0072bb2f    33c0
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0072bb31    894618
                         {disp8} inc        dword ptr [esi + 0x1c]                        // 0x0072bb34    ff461c
_jmp_addr_0x0072bb37:    pop                esi                                           // 0x0072bb37    5e
                         ret                0x0004                                        // 0x0072bb38    c20400
                         nop                                                              // 0x0072bb3b    90
                         nop                                                              // 0x0072bb3c    90
                         nop                                                              // 0x0072bb3d    90
                         nop                                                              // 0x0072bb3e    90
                         nop                                                              // 0x0072bb3f    90
?Load@SpellShield@@UAEIAAVGameOSFile@@@Z:
                         push               ecx                                           // 0x0072bb40    51
                         push               ebx                                           // 0x0072bb41    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x0072bb42    8b5c240c
                         push               edi                                           // 0x0072bb46    57
                         mov.s              edi, ecx                                      // 0x0072bb47    8bf9
                         push               ebx                                           // 0x0072bb49    53
                         call               ?Load@SpellWithObjects@@UAEIAAVGameOSFile@@@Z // 0x0072bb4a    e8a155ffff
                         test               eax, eax                                      // 0x0072bb4f    85c0
                         {disp32} je        _jmp_addr_0x0072bc2d                          // 0x0072bb51    0f84d6000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0072bb57    a194c9be00
                         test               eax, eax                                      // 0x0072bb5c    85c0
                         {disp32} je        _jmp_addr_0x0072bc06                          // 0x0072bb5e    0f84a2000000
                         push               0x0                                           // 0x0072bb64    6a00
                         push               0x4                                           // 0x0072bb66    6a04
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0072bb68    8d442418
                         push               eax                                           // 0x0072bb6c    50
                         mov.s              ecx, ebx                                      // 0x0072bb6d    8bcb
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072bb6f    e86c0d0900
                         cmp                eax, 0x03                                     // 0x0072bb74    83f803
                         {disp8} jne        _jmp_addr_0x0072bb83                          // 0x0072bb77    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0072bb79    c70594c9be0000000000
_jmp_addr_0x0072bb83:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0072bb83    8b442410
                         {disp32} mov       edx, dword ptr [ebx + 0x00000214]             // 0x0072bb87    8b9314020000
                         mov.s              ecx, eax                                      // 0x0072bb8d    8bc8
                         and                ecx, 0x000000ff                               // 0x0072bb8f    81e1ff000000
                         add                ecx, 0x4                                      // 0x0072bb95    83c104
                         add.s              edx, ecx                                      // 0x0072bb98    03d1
                         test               eax, eax                                      // 0x0072bb9a    85c0
                         {disp32} mov       dword ptr [ebx + 0x00000214], edx             // 0x0072bb9c    899314020000
                         {disp8} jle        _jmp_addr_0x0072bc06                          // 0x0072bba2    7e62
                         push               esi                                           // 0x0072bba4    56
_jmp_addr_0x0072bba5:    {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0072bba5    8d54240c
                         push               edx                                           // 0x0072bba9    52
                         mov.s              ecx, ebx                                      // 0x0072bbaa    8bcb
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072bbac    e8cf65e3ff
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0072bbb1    8b44240c
                         test               eax, eax                                      // 0x0072bbb5    85c0
                         mov.s              esi, eax                                      // 0x0072bbb7    8bf0
                         {disp8} je         _jmp_addr_0x0072bbf8                          // 0x0072bbb9    743d
                         push               0x8                                           // 0x0072bbbb    6a08
                         call               ??2@YAPAXI@Z                                  // 0x0072bbbd    e82ca90900
                         add                esp, 0x04                                     // 0x0072bbc2    83c404
                         test               eax, eax                                      // 0x0072bbc5    85c0
                         {disp8} je         _jmp_addr_0x0072bbf8                          // 0x0072bbc7    742f
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x0072bbc9    897004
                         mov                dword ptr [eax], 0x00000000                   // 0x0072bbcc    c70000000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000104]             // 0x0072bbd2    8b8f04010000
                         test               ecx, ecx                                      // 0x0072bbd8    85c9
                         {disp8} je         _jmp_addr_0x0072bbec                          // 0x0072bbda    7410
_jmp_addr_0x0072bbdc:    mov.s              edx, ecx                                      // 0x0072bbdc    8bd1
                         mov                ecx, dword ptr [ecx]                          // 0x0072bbde    8b09
                         test               ecx, ecx                                      // 0x0072bbe0    85c9
                         {disp8} jne        _jmp_addr_0x0072bbdc                          // 0x0072bbe2    75f8
                         test               edx, edx                                      // 0x0072bbe4    85d2
                         {disp8} je         _jmp_addr_0x0072bbec                          // 0x0072bbe6    7404
                         mov                dword ptr [edx], eax                          // 0x0072bbe8    8902
                         {disp8} jmp        _jmp_addr_0x0072bbf2                          // 0x0072bbea    eb06
_jmp_addr_0x0072bbec:    {disp32} mov       dword ptr [edi + 0x00000104], eax             // 0x0072bbec    898704010000
_jmp_addr_0x0072bbf2:    {disp32} inc       dword ptr [edi + 0x00000108]                  // 0x0072bbf2    ff8708010000
_jmp_addr_0x0072bbf8:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0072bbf8    8b442414
                         dec                eax                                           // 0x0072bbfc    48
                         test               eax, eax                                      // 0x0072bbfd    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0072bbff    89442414
                         {disp8} jg         _jmp_addr_0x0072bba5                          // 0x0072bc03    7fa0
                         pop                esi                                           // 0x0072bc05    5e
_jmp_addr_0x0072bc06:    {disp32} lea       eax, dword ptr [edi + 0x000000f4]             // 0x0072bc06    8d87f4000000
                         push               eax                                           // 0x0072bc0c    50
                         mov.s              ecx, ebx                                      // 0x0072bc0d    8bcb
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072bc0f    e86c65e3ff
                         add                edi, 0x000000f8                               // 0x0072bc14    81c7f8000000
                         push               edi                                           // 0x0072bc1a    57
                         mov.s              ecx, ebx                                      // 0x0072bc1b    8bcb
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072bc1d    e85e65e3ff
                         pop                edi                                           // 0x0072bc22    5f
                         mov                eax, 0x00000001                               // 0x0072bc23    b801000000
                         pop                ebx                                           // 0x0072bc28    5b
                         pop                ecx                                           // 0x0072bc29    59
                         ret                0x0004                                        // 0x0072bc2a    c20400
_jmp_addr_0x0072bc2d:    pop                edi                                           // 0x0072bc2d    5f
                         xor.s              eax, eax                                      // 0x0072bc2e    33c0
                         pop                ebx                                           // 0x0072bc30    5b
                         pop                ecx                                           // 0x0072bc31    59
                         ret                0x0004                                        // 0x0072bc32    c20400
                         nop                                                              // 0x0072bc35    90
                         nop                                                              // 0x0072bc36    90
                         nop                                                              // 0x0072bc37    90
                         nop                                                              // 0x0072bc38    90
                         nop                                                              // 0x0072bc39    90
                         nop                                                              // 0x0072bc3a    90
                         nop                                                              // 0x0072bc3b    90
                         nop                                                              // 0x0072bc3c    90
                         nop                                                              // 0x0072bc3d    90
                         nop                                                              // 0x0072bc3e    90
                         nop                                                              // 0x0072bc3f    90
?Save@SpellShield@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x0072bc40    53
                         push               edi                                           // 0x0072bc41    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072bc42    8b7c240c
                         mov.s              ebx, ecx                                      // 0x0072bc46    8bd9
                         push               edi                                           // 0x0072bc48    57
                         call               ?Save@SpellWithObjects@@UAEIAAVGameOSFile@@@Z // 0x0072bc49    e88255ffff
                         test               eax, eax                                      // 0x0072bc4e    85c0
                         {disp32} je        _jmp_addr_0x0072bd10                          // 0x0072bc50    0f84ba000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072bc56    a190c9be00
                         test               eax, eax                                      // 0x0072bc5b    85c0
                         push               ebp                                           // 0x0072bc5d    55
                         push               esi                                           // 0x0072bc5e    56
                         {disp32} je        _jmp_addr_0x0072bce8                          // 0x0072bc5f    0f8483000000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000108]             // 0x0072bc65    8b8308010000
                         xor.s              ebp, ebp                                      // 0x0072bc6b    33ed
                         push               ebp                                           // 0x0072bc6d    55
                         {disp32} lea       esi, dword ptr [ebx + 0x00000108]             // 0x0072bc6e    8db308010000
                         push               0x4                                           // 0x0072bc74    6a04
                         push               esi                                           // 0x0072bc76    56
                         mov.s              ecx, edi                                      // 0x0072bc77    8bcf
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0072bc79    89442420
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072bc7d    e89e0c0900
                         cmp                eax, 0x03                                     // 0x0072bc82    83f803
                         {disp8} jne        _jmp_addr_0x0072bc8d                          // 0x0072bc85    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072bc87    892d90c9be00
_jmp_addr_0x0072bc8d:    {disp32} mov       edx, dword ptr [edi + 0x00000214]             // 0x0072bc8d    8b9714020000
                         xor.s              ecx, ecx                                      // 0x0072bc93    33c9
                         mov                cl, byte ptr [esi]                            // 0x0072bc95    8a0e
                         add                ecx, 0x4                                      // 0x0072bc97    83c104
                         add.s              edx, ecx                                      // 0x0072bc9a    03d1
                         {disp32} mov       dword ptr [edi + 0x00000214], edx             // 0x0072bc9c    899714020000
                         {disp32} mov       esi, dword ptr [ebx + 0x00000104]             // 0x0072bca2    8bb304010000
                         test               esi, esi                                      // 0x0072bca8    85f6
                         {disp8} je         _jmp_addr_0x0072bccf                          // 0x0072bcaa    7423
_jmp_addr_0x0072bcac:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0072bcac    8b442414
                         inc                ebp                                           // 0x0072bcb0    45
                         cmp.s              ebp, eax                                      // 0x0072bcb1    3be8
                         {disp8} jg         _jmp_addr_0x0072bcde                          // 0x0072bcb3    7f29
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072bcb5    a190c9be00
                         test               eax, eax                                      // 0x0072bcba    85c0
                         {disp8} je         _jmp_addr_0x0072bce8                          // 0x0072bcbc    742a
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x0072bcbe    8b5604
                         push               edx                                           // 0x0072bcc1    52
                         mov.s              ecx, edi                                      // 0x0072bcc2    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0072bcc4    e84761e3ff
                         mov                esi, dword ptr [esi]                          // 0x0072bcc9    8b36
                         test               esi, esi                                      // 0x0072bccb    85f6
                         {disp8} jne        _jmp_addr_0x0072bcac                          // 0x0072bccd    75dd
_jmp_addr_0x0072bccf:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072bccf    a190c9be00
                         test               eax, eax                                      // 0x0072bcd4    85c0
                         {disp8} je         _jmp_addr_0x0072bce8                          // 0x0072bcd6    7410
                         cmp                ebp, dword ptr [esp + 0x14]                   // 0x0072bcd8    3b6c2414
                         {disp8} je         _jmp_addr_0x0072bce8                          // 0x0072bcdc    740a
_jmp_addr_0x0072bcde:    {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0072bcde    c70590c9be0000000000
_jmp_addr_0x0072bce8:    {disp32} mov       eax, dword ptr [ebx + 0x000000f4]             // 0x0072bce8    8b83f4000000
                         push               eax                                           // 0x0072bcee    50
                         mov.s              ecx, edi                                      // 0x0072bcef    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0072bcf1    e81a61e3ff
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f8]             // 0x0072bcf6    8b8bf8000000
                         push               ecx                                           // 0x0072bcfc    51
                         mov.s              ecx, edi                                      // 0x0072bcfd    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0072bcff    e80c61e3ff
                         pop                esi                                           // 0x0072bd04    5e
                         pop                ebp                                           // 0x0072bd05    5d
                         pop                edi                                           // 0x0072bd06    5f
                         mov                eax, 0x00000001                               // 0x0072bd07    b801000000
                         pop                ebx                                           // 0x0072bd0c    5b
                         ret                0x0004                                        // 0x0072bd0d    c20400
_jmp_addr_0x0072bd10:    pop                edi                                           // 0x0072bd10    5f
                         xor.s              eax, eax                                      // 0x0072bd11    33c0
                         pop                ebx                                           // 0x0072bd13    5b
                         ret                0x0004                                        // 0x0072bd14    c20400
                         nop                                                              // 0x0072bd17    90
                         nop                                                              // 0x0072bd18    90
                         nop                                                              // 0x0072bd19    90
                         nop                                                              // 0x0072bd1a    90
                         nop                                                              // 0x0072bd1b    90
                         nop                                                              // 0x0072bd1c    90
                         nop                                                              // 0x0072bd1d    90
                         nop                                                              // 0x0072bd1e    90
                         nop                                                              // 0x0072bd1f    90
_jmp_addr_0x0072bd20:    push               esi                                           // 0x0072bd20    56
                         mov.s              esi, ecx                                      // 0x0072bd21    8bf1
                         mov                eax, dword ptr [esi]                          // 0x0072bd23    8b06
                         call               dword ptr [eax + 0x60]                        // 0x0072bd25    ff5060
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0072bd28    d864240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072bd2c    8b4c2408
                         add                esi, 0x000000cc                               // 0x0072bd30    81c6cc000000
                         push               esi                                           // 0x0072bd36    56
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0072bd37    d95c2410
                         push               ecx                                           // 0x0072bd3b    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0072bd3c    e82f100200
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0072bd41    d85c2414
                         add                esp, 0x08                                     // 0x0072bd45    83c408
                         pop                esi                                           // 0x0072bd48    5e
                         fnstsw             ax                                            // 0x0072bd49    dfe0
                         test               ah, 0x01                                      // 0x0072bd4b    f6c401
                         {disp8} je         _jmp_addr_0x0072bd58                          // 0x0072bd4e    7408
                         mov                eax, 0x00000001                               // 0x0072bd50    b801000000
                         ret                0x0008                                        // 0x0072bd55    c20800
_jmp_addr_0x0072bd58:    xor.s              eax, eax                                      // 0x0072bd58    33c0
                         ret                0x0008                                        // 0x0072bd5a    c20800
                         nop                                                              // 0x0072bd5d    90
                         nop                                                              // 0x0072bd5e    90
                         nop                                                              // 0x0072bd5f    90
_globl_ct_0x0072bd60:    call               _jmp_addr_0x0072bd70                          // 0x0072bd60    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072bda0                          // 0x0072bd65    e936000000
                         nop                                                              // 0x0072bd6a    90
                         nop                                                              // 0x0072bd6b    90
                         nop                                                              // 0x0072bd6c    90
                         nop                                                              // 0x0072bd6d    90
                         nop                                                              // 0x0072bd6e    90
                         nop                                                              // 0x0072bd6f    90
_jmp_addr_0x0072bd70:    mov                eax, 0x00da05d0                               // 0x0072bd70    b8d005da00
                         mov                ecx, 0x00000002                               // 0x0072bd75    b902000000
                         xor.s              edx, edx                                      // 0x0072bd7a    33d2
.att_syntax
_jmp_addr_0x0072bd7c:    movl               $??_7Base@@6B@, (%eax)                        // 0x0072bd7c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0072bd82    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0072bd85    895008
                         mov                dword ptr [eax], 0x00982e34                   // 0x0072bd88    c700342e9800
                         add                eax, 0x00000108                               // 0x0072bd8e    0508010000
                         dec                ecx                                           // 0x0072bd93    49
                         {disp8} jne        _jmp_addr_0x0072bd7c                          // 0x0072bd94    75e6
                         ret                                                              // 0x0072bd96    c3
                         nop                                                              // 0x0072bd97    90
                         nop                                                              // 0x0072bd98    90
                         nop                                                              // 0x0072bd99    90
                         nop                                                              // 0x0072bd9a    90
                         nop                                                              // 0x0072bd9b    90
                         nop                                                              // 0x0072bd9c    90
                         nop                                                              // 0x0072bd9d    90
                         nop                                                              // 0x0072bd9e    90
                         nop                                                              // 0x0072bd9f    90
_jmp_addr_0x0072bda0:    push               0x0072bdb0                                    // 0x0072bda0    68b0bd7200
                         call               _atexit                                       // 0x0072bda5    e8e7990900
                         pop                ecx                                           // 0x0072bdaa    59
                         ret                                                              // 0x0072bdab    c3
                         nop                                                              // 0x0072bdac    90
                         nop                                                              // 0x0072bdad    90
                         nop                                                              // 0x0072bdae    90
                         nop                                                              // 0x0072bdaf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3da5b8]          // 0x0072bdb0    8a0db805da00
                         mov                al, 0x01                                      // 0x0072bdb6    b001
                         test               al, cl                                        // 0x0072bdb8    84c8
                         {disp8} jne        _jmp_addr_0x0072bde2                          // 0x0072bdba    7526
                         push               esi                                           // 0x0072bdbc    56
                         or.s               cl, al                                        // 0x0072bdbd    0ac8
                         push               edi                                           // 0x0072bdbf    57
                         {disp32} mov       byte ptr [data_bytes + 0x3da5b8], cl          // 0x0072bdc0    880db805da00
                         mov                esi, 0x00da07e0                               // 0x0072bdc6    bee007da00
                         mov                edi, 0x00000002                               // 0x0072bdcb    bf02000000
_jmp_addr_0x0072bdd0:    sub                esi, 0x00000108                               // 0x0072bdd0    81ee08010000
                         mov.s              ecx, esi                                      // 0x0072bdd6    8bce
                         call               _jmp_addr_0x00436960                          // 0x0072bdd8    e883abd0ff
                         dec                edi                                           // 0x0072bddd    4f
                         {disp8} jne        _jmp_addr_0x0072bdd0                          // 0x0072bdde    75f0
                         pop                edi                                           // 0x0072bde0    5f
                         pop                esi                                           // 0x0072bde1    5e
_jmp_addr_0x0072bde2:    ret                                                              // 0x0072bde2    c3
                         nop                                                              // 0x0072bde3    90
                         nop                                                              // 0x0072bde4    90
                         nop                                                              // 0x0072bde5    90
                         nop                                                              // 0x0072bde6    90
                         nop                                                              // 0x0072bde7    90
                         nop                                                              // 0x0072bde8    90
                         nop                                                              // 0x0072bde9    90
                         nop                                                              // 0x0072bdea    90
                         nop                                                              // 0x0072bdeb    90
                         nop                                                              // 0x0072bdec    90
                         nop                                                              // 0x0072bded    90
                         nop                                                              // 0x0072bdee    90
                         nop                                                              // 0x0072bdef    90
??_GGMapShieldInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x0072bdf0    56
                         mov.s              esi, ecx                                      // 0x0072bdf1    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0072bdf3    e868abd0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072bdf8    f644240801
                         {disp8} je         _jmp_addr_0x0072be0d                          // 0x0072bdfd    740e
                         push               0x00000108                                    // 0x0072bdff    6808010000
                         push               esi                                           // 0x0072be04    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072be05    e866abd0ff
                         add                esp, 0x08                                     // 0x0072be0a    83c408
_jmp_addr_0x0072be0d:    mov.s              eax, esi                                      // 0x0072be0d    8bc6
                         pop                esi                                           // 0x0072be0f    5e
                         ret                0x0004                                        // 0x0072be10    c20400
                         nop                                                              // 0x0072be13    90
                         nop                                                              // 0x0072be14    90
                         nop                                                              // 0x0072be15    90
                         nop                                                              // 0x0072be16    90
                         nop                                                              // 0x0072be17    90
                         nop                                                              // 0x0072be18    90
                         nop                                                              // 0x0072be19    90
                         nop                                                              // 0x0072be1a    90
                         nop                                                              // 0x0072be1b    90
                         nop                                                              // 0x0072be1c    90
                         nop                                                              // 0x0072be1d    90
                         nop                                                              // 0x0072be1e    90
                         nop                                                              // 0x0072be1f    90
_jmp_addr_0x0072be20:    push               esi                                           // 0x0072be20    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072be21    8b74240c
                         {disp32} mov       eax, dword ptr [esi + 0x000000b4]             // 0x0072be25    8b86b4000000
                         cmp                eax, 0x13                                     // 0x0072be2b    83f813
                         push               edi                                           // 0x0072be2e    57
                         {disp8} jne        _jmp_addr_0x0072be7d                          // 0x0072be2f    754c
                         push               0x0000015f                                    // 0x0072be31    685f010000
                         push               0x00c227c8                                    // 0x0072be36    68c827c200
                         push               0x68                                          // 0x0072be3b    6a68
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0072be3d    e8aea8d0ff
                         add                esp, 0x0c                                     // 0x0072be42    83c40c
                         test               eax, eax                                      // 0x0072be45    85c0
                         {disp8} je         _jmp_addr_0x0072be76                          // 0x0072be47    742d
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0072be49    8b4c2414
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072be4d    8b7c240c
                         push               ecx                                           // 0x0072be51    51
                         push               esi                                           // 0x0072be52    56
                         push               0x00da05d0                                    // 0x0072be53    68d005da00
                         push               edi                                           // 0x0072be58    57
                         mov.s              ecx, eax                                      // 0x0072be59    8bc8
                         call               _jmp_addr_0x0072c250                          // 0x0072be5b    e8f0030000
                         mov.s              esi, eax                                      // 0x0072be60    8bf0
                         test               esi, esi                                      // 0x0072be62    85f6
                         {disp8} je         _jmp_addr_0x0072be71                          // 0x0072be64    740b
                         mov                edx, dword ptr [esi]                          // 0x0072be66    8b16
                         push               edi                                           // 0x0072be68    57
                         mov.s              ecx, esi                                      // 0x0072be69    8bce
                         call               dword ptr [edx + 0x658]                       // 0x0072be6b    ff9258060000
_jmp_addr_0x0072be71:    pop                edi                                           // 0x0072be71    5f
                         mov.s              eax, esi                                      // 0x0072be72    8bc6
                         pop                esi                                           // 0x0072be74    5e
                         ret                                                              // 0x0072be75    c3
_jmp_addr_0x0072be76:    xor.s              esi, esi                                      // 0x0072be76    33f6
                         pop                edi                                           // 0x0072be78    5f
                         mov.s              eax, esi                                      // 0x0072be79    8bc6
                         pop                esi                                           // 0x0072be7b    5e
                         ret                                                              // 0x0072be7c    c3
_jmp_addr_0x0072be7d:    cmp                eax, 0x14                                     // 0x0072be7d    83f814
                         {disp8} jne        _jmp_addr_0x0072bedc                          // 0x0072be80    755a
                         push               ebx                                           // 0x0072be82    53
                         push               0x00000168                                    // 0x0072be83    6868010000
                         push               0x00c227c8                                    // 0x0072be88    68c827c200
                         push               0x00000100                                    // 0x0072be8d    6800010000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x0072be92    e859a8d0ff
                         add                esp, 0x0c                                     // 0x0072be97    83c40c
                         test               eax, eax                                      // 0x0072be9a    85c0
                         {disp8} je         _jmp_addr_0x0072bed4                          // 0x0072be9c    7436
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0072be9e    8b7c2418
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0072bea2    8b5c2410
                         push               edi                                           // 0x0072bea6    57
                         push               esi                                           // 0x0072bea7    56
                         push               0x00da06d8                                    // 0x0072bea8    68d806da00
                         push               ebx                                           // 0x0072bead    53
                         mov.s              ecx, eax                                      // 0x0072beae    8bc8
                         call               _jmp_addr_0x0072c9f0                          // 0x0072beb0    e83b0b0000
                         mov.s              esi, eax                                      // 0x0072beb5    8bf0
                         test               esi, esi                                      // 0x0072beb7    85f6
                         {disp8} je         _jmp_addr_0x0072bece                          // 0x0072beb9    7413
                         mov                eax, dword ptr [esi]                          // 0x0072bebb    8b06
                         push               ebx                                           // 0x0072bebd    53
                         mov.s              ecx, esi                                      // 0x0072bebe    8bce
                         call               dword ptr [eax + 0x658]                       // 0x0072bec0    ff9058060000
                         push               edi                                           // 0x0072bec6    57
                         mov.s              ecx, esi                                      // 0x0072bec7    8bce
                         call               _jmp_addr_0x0072cd40                          // 0x0072bec9    e8720e0000
_jmp_addr_0x0072bece:    pop                ebx                                           // 0x0072bece    5b
                         pop                edi                                           // 0x0072becf    5f
                         mov.s              eax, esi                                      // 0x0072bed0    8bc6
                         pop                esi                                           // 0x0072bed2    5e
                         ret                                                              // 0x0072bed3    c3
_jmp_addr_0x0072bed4:    pop                ebx                                           // 0x0072bed4    5b
                         xor.s              esi, esi                                      // 0x0072bed5    33f6
                         pop                edi                                           // 0x0072bed7    5f
                         mov.s              eax, esi                                      // 0x0072bed8    8bc6
                         pop                esi                                           // 0x0072beda    5e
                         ret                                                              // 0x0072bedb    c3
_jmp_addr_0x0072bedc:    pop                edi                                           // 0x0072bedc    5f
                         xor.s              eax, eax                                      // 0x0072bedd    33c0
                         pop                esi                                           // 0x0072bedf    5e
                         ret                                                              // 0x0072bee0    c3
                         nop                                                              // 0x0072bee1    90
                         nop                                                              // 0x0072bee2    90
                         nop                                                              // 0x0072bee3    90
                         nop                                                              // 0x0072bee4    90
                         nop                                                              // 0x0072bee5    90
                         nop                                                              // 0x0072bee6    90
                         nop                                                              // 0x0072bee7    90
                         nop                                                              // 0x0072bee8    90
                         nop                                                              // 0x0072bee9    90
                         nop                                                              // 0x0072beea    90
                         nop                                                              // 0x0072beeb    90
                         nop                                                              // 0x0072beec    90
                         nop                                                              // 0x0072beed    90
                         nop                                                              // 0x0072beee    90
                         nop                                                              // 0x0072beef    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072bef0    8b442408
                         test               eax, eax                                      // 0x0072bef4    85c0
                         push               esi                                           // 0x0072bef6    56
                         push               edi                                           // 0x0072bef7    57
                         {disp8} jne        _jmp_addr_0x0072bf07                          // 0x0072bef8    750d
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0072befa    a15c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x00205ca4]             // 0x0072beff    8bb0a45c2000
                         {disp8} jmp        _jmp_addr_0x0072bf0a                          // 0x0072bf05    eb03
_jmp_addr_0x0072bf07:    {disp8} mov        esi, dword ptr [eax + 0x5c]                   // 0x0072bf07    8b705c
_jmp_addr_0x0072bf0a:    test               esi, esi                                      // 0x0072bf0a    85f6
                         {disp8} je         _jmp_addr_0x0072bf3c                          // 0x0072bf0c    742e
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072bf0e    8b7c240c
_jmp_addr_0x0072bf12:    {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x0072bf12    8d4e14
                         push               edi                                           // 0x0072bf15    57
                         push               ecx                                           // 0x0072bf16    51
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x0072bf17    e8540e0200
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0072bf1c    d95c2418
                         mov                edx, dword ptr [esi]                          // 0x0072bf20    8b16
                         add                esp, 0x08                                     // 0x0072bf22    83c408
                         mov.s              ecx, esi                                      // 0x0072bf25    8bce
                         call               dword ptr [edx + 0x64]                        // 0x0072bf27    ff5264
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0072bf2a    d85c2410
                         fnstsw             ax                                            // 0x0072bf2e    dfe0
                         test               ah, 0x41                                      // 0x0072bf30    f6c441
                         {disp8} je         _jmp_addr_0x0072bf41                          // 0x0072bf33    740c
                         {disp8} mov        esi, dword ptr [esi + 0x5c]                   // 0x0072bf35    8b765c
                         test               esi, esi                                      // 0x0072bf38    85f6
                         {disp8} jne        _jmp_addr_0x0072bf12                          // 0x0072bf3a    75d6
_jmp_addr_0x0072bf3c:    pop                edi                                           // 0x0072bf3c    5f
                         xor.s              eax, eax                                      // 0x0072bf3d    33c0
                         pop                esi                                           // 0x0072bf3f    5e
                         ret                                                              // 0x0072bf40    c3
_jmp_addr_0x0072bf41:    pop                edi                                           // 0x0072bf41    5f
                         mov.s              eax, esi                                      // 0x0072bf42    8bc6
                         pop                esi                                           // 0x0072bf44    5e
                         ret                                                              // 0x0072bf45    c3
                         nop                                                              // 0x0072bf46    90
                         nop                                                              // 0x0072bf47    90
                         nop                                                              // 0x0072bf48    90
                         nop                                                              // 0x0072bf49    90
                         nop                                                              // 0x0072bf4a    90
                         nop                                                              // 0x0072bf4b    90
                         nop                                                              // 0x0072bf4c    90
                         nop                                                              // 0x0072bf4d    90
                         nop                                                              // 0x0072bf4e    90
                         nop                                                              // 0x0072bf4f    90
_jmp_addr_0x0072bf50:    {disp32} mov       eax, dword ptr [_game]                        // 0x0072bf50    a15c19d000
                         push               esi                                           // 0x0072bf55    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205ca4]             // 0x0072bf56    8bb0a45c2000
                         test               esi, esi                                      // 0x0072bf5c    85f6
                         {disp8} je         _jmp_addr_0x0072bf7d                          // 0x0072bf5e    741d
_jmp_addr_0x0072bf60:    mov                edx, dword ptr [esi]                          // 0x0072bf60    8b16
                         mov.s              ecx, esi                                      // 0x0072bf62    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0072bf64    ff522c
                         cmp                eax, 0x01                                     // 0x0072bf67    83f801
                         {disp8} jne        _jmp_addr_0x0072bf76                          // 0x0072bf6a    750a
                         mov                eax, dword ptr [esi]                          // 0x0072bf6c    8b06
                         mov.s              ecx, esi                                      // 0x0072bf6e    8bce
                         call               dword ptr [eax + 0x86c]                       // 0x0072bf70    ff906c080000
_jmp_addr_0x0072bf76:    {disp8} mov        esi, dword ptr [esi + 0x5c]                   // 0x0072bf76    8b765c
                         test               esi, esi                                      // 0x0072bf79    85f6
                         {disp8} jne        _jmp_addr_0x0072bf60                          // 0x0072bf7b    75e3
_jmp_addr_0x0072bf7d:    pop                esi                                           // 0x0072bf7d    5e
                         ret                                                              // 0x0072bf7e    c3
                         nop                                                              // 0x0072bf7f    90
_jmp_addr_0x0072bf80:    {disp32} mov       eax, dword ptr [_game]                        // 0x0072bf80    a15c19d000
                         push               esi                                           // 0x0072bf85    56
                         {disp32} mov       esi, dword ptr [eax + 0x00205ca4]             // 0x0072bf86    8bb0a45c2000
                         test               esi, esi                                      // 0x0072bf8c    85f6
                         {disp8} je         _jmp_addr_0x0072bfb1                          // 0x0072bf8e    7421
                         push               edi                                           // 0x0072bf90    57
_jmp_addr_0x0072bf91:    mov                edx, dword ptr [esi]                          // 0x0072bf91    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x5c]                   // 0x0072bf93    8b7e5c
                         mov.s              ecx, esi                                      // 0x0072bf96    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x0072bf98    ff522c
                         cmp                eax, 0x01                                     // 0x0072bf9b    83f801
                         {disp8} jne        _jmp_addr_0x0072bfaa                          // 0x0072bf9e    750a
                         mov                eax, dword ptr [esi]                          // 0x0072bfa0    8b06
                         mov.s              ecx, esi                                      // 0x0072bfa2    8bce
                         call               dword ptr [eax + 0x868]                       // 0x0072bfa4    ff9068080000
_jmp_addr_0x0072bfaa:    test               edi, edi                                      // 0x0072bfaa    85ff
                         mov.s              esi, edi                                      // 0x0072bfac    8bf7
                         {disp8} jne        _jmp_addr_0x0072bf91                          // 0x0072bfae    75e1
                         pop                edi                                           // 0x0072bfb0    5f
_jmp_addr_0x0072bfb1:    pop                esi                                           // 0x0072bfb1    5e
                         ret                                                              // 0x0072bfb2    c3
                         nop                                                              // 0x0072bfb3    90
                         nop                                                              // 0x0072bfb4    90
                         nop                                                              // 0x0072bfb5    90
                         nop                                                              // 0x0072bfb6    90
                         nop                                                              // 0x0072bfb7    90
                         nop                                                              // 0x0072bfb8    90
                         nop                                                              // 0x0072bfb9    90
                         nop                                                              // 0x0072bfba    90
                         nop                                                              // 0x0072bfbb    90
                         nop                                                              // 0x0072bfbc    90
                         nop                                                              // 0x0072bfbd    90
                         nop                                                              // 0x0072bfbe    90
                         nop                                                              // 0x0072bfbf    90
_jmp_addr_0x0072bfc0:    push               esi                                           // 0x0072bfc0    56
                         mov.s              esi, ecx                                      // 0x0072bfc1    8bf1
                         call               ??0FixedObject@@QAE@XZ                        // 0x0072bfc3    e8b81de0ff
                         mov.s              ecx, esi                                      // 0x0072bfc8    8bce
                         mov                dword ptr [esi], 0x008dc894                   // 0x0072bfca    c70694c88d00
                         call               _jmp_addr_0x0052f690                          // 0x0072bfd0    e8bb36e0ff
                         xor.s              eax, eax                                      // 0x0072bfd5    33c0
                         {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x0072bfd7    894658
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x0072bfda    89465c
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0072bfdd    894660
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x0072bfe0    894664
                         mov.s              ecx, esi                                      // 0x0072bfe3    8bce
                         mov                dword ptr [esi], 0x00982e74                   // 0x0072bfe5    c706742e9800
                         call               _jmp_addr_0x0072c0e0                          // 0x0072bfeb    e8f0000000
                         mov.s              eax, esi                                      // 0x0072bff0    8bc6
                         pop                esi                                           // 0x0072bff2    5e
                         ret                                                              // 0x0072bff3    c3
                         nop                                                              // 0x0072bff4    90
                         nop                                                              // 0x0072bff5    90
                         nop                                                              // 0x0072bff6    90
                         nop                                                              // 0x0072bff7    90
                         nop                                                              // 0x0072bff8    90
                         nop                                                              // 0x0072bff9    90
                         nop                                                              // 0x0072bffa    90
                         nop                                                              // 0x0072bffb    90
                         nop                                                              // 0x0072bffc    90
                         nop                                                              // 0x0072bffd    90
                         nop                                                              // 0x0072bffe    90
                         nop                                                              // 0x0072bfff    90
?ValidForPlaceInHand@MapShield@@UAEIPAVGInterfaceStatus@@@Z:
                         xor.s              eax, eax                                      // 0x0072c000    33c0
                         ret                0x0004                                        // 0x0072c002    c20400
                         nop                                                              // 0x0072c005    90
                         nop                                                              // 0x0072c006    90
                         nop                                                              // 0x0072c007    90
                         nop                                                              // 0x0072c008    90
                         nop                                                              // 0x0072c009    90
                         nop                                                              // 0x0072c00a    90
                         nop                                                              // 0x0072c00b    90
                         nop                                                              // 0x0072c00c    90
                         nop                                                              // 0x0072c00d    90
                         nop                                                              // 0x0072c00e    90
                         nop                                                              // 0x0072c00f    90
?HandShouldFeelWithMeshIntersect@MapShield@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x0072c010    33c0
                         ret                                                              // 0x0072c012    c3
                         nop                                                              // 0x0072c013    90
                         nop                                                              // 0x0072c014    90
                         nop                                                              // 0x0072c015    90
                         nop                                                              // 0x0072c016    90
                         nop                                                              // 0x0072c017    90
                         nop                                                              // 0x0072c018    90
                         nop                                                              // 0x0072c019    90
                         nop                                                              // 0x0072c01a    90
                         nop                                                              // 0x0072c01b    90
                         nop                                                              // 0x0072c01c    90
                         nop                                                              // 0x0072c01d    90
                         nop                                                              // 0x0072c01e    90
                         nop                                                              // 0x0072c01f    90
?SaveObject@MapShield@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         xor.s              eax, eax                                      // 0x0072c020    33c0
                         ret                0x0008                                        // 0x0072c022    c20800
                         nop                                                              // 0x0072c025    90
                         nop                                                              // 0x0072c026    90
                         nop                                                              // 0x0072c027    90
                         nop                                                              // 0x0072c028    90
                         nop                                                              // 0x0072c029    90
                         nop                                                              // 0x0072c02a    90
                         nop                                                              // 0x0072c02b    90
                         nop                                                              // 0x0072c02c    90
                         nop                                                              // 0x0072c02d    90
                         nop                                                              // 0x0072c02e    90
                         nop                                                              // 0x0072c02f    90
?GetSaveType@MapShield@@UAEIXZ:
                         xor.s              eax, eax                                      // 0x0072c030    33c0
                         ret                                                              // 0x0072c032    c3
                         nop                                                              // 0x0072c033    90
                         nop                                                              // 0x0072c034    90
                         nop                                                              // 0x0072c035    90
                         nop                                                              // 0x0072c036    90
                         nop                                                              // 0x0072c037    90
                         nop                                                              // 0x0072c038    90
                         nop                                                              // 0x0072c039    90
                         nop                                                              // 0x0072c03a    90
                         nop                                                              // 0x0072c03b    90
                         nop                                                              // 0x0072c03c    90
                         nop                                                              // 0x0072c03d    90
                         nop                                                              // 0x0072c03e    90
                         nop                                                              // 0x0072c03f    90
?GetDebugText@MapShield@@UAEPADXZ:
                         mov                eax, 0x00c22800                               // 0x0072c040    b80028c200
                         ret                                                              // 0x0072c045    c3
                         nop                                                              // 0x0072c046    90
                         nop                                                              // 0x0072c047    90
                         nop                                                              // 0x0072c048    90
                         nop                                                              // 0x0072c049    90
                         nop                                                              // 0x0072c04a    90
                         nop                                                              // 0x0072c04b    90
                         nop                                                              // 0x0072c04c    90
                         nop                                                              // 0x0072c04d    90
                         nop                                                              // 0x0072c04e    90
                         nop                                                              // 0x0072c04f    90
??_GMapShield@@UAEPAXI@Z:
                         push               esi                                           // 0x0072c050    56
                         mov.s              esi, ecx                                      // 0x0072c051    8bf1
                         call               _jmp_addr_0x0052eac0                          // 0x0072c053    e8682ae0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072c058    f644240801
                         {disp8} je         _jmp_addr_0x0072c06a                          // 0x0072c05d    740b
                         push               0x68                                          // 0x0072c05f    6a68
                         push               esi                                           // 0x0072c061    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072c062    e809a9d0ff
                         add                esp, 0x08                                     // 0x0072c067    83c408
_jmp_addr_0x0072c06a:    mov.s              eax, esi                                      // 0x0072c06a    8bc6
                         pop                esi                                           // 0x0072c06c    5e
                         ret                0x0004                                        // 0x0072c06d    c20400
@__ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield@20:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072c070    8b442408
                         push               esi                                           // 0x0072c074    56
                         push               edi                                           // 0x0072c075    57
                         push               0x3f800000                                    // 0x0072c076    680000803f
                         xor.s              edi, edi                                      // 0x0072c07b    33ff
                         push               edi                                           // 0x0072c07d    57
                         mov.s              esi, ecx                                      // 0x0072c07e    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0072c080    8b4c2414
                         push               eax                                           // 0x0072c084    50
                         push               ecx                                           // 0x0072c085    51
                         mov.s              ecx, esi                                      // 0x0072c086    8bce
                         call               @__ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff@24                          // 0x0072c088    e8331de0ff
                         {disp8} mov        dword ptr [esi + 0x58], edi                   // 0x0072c08d    897e58
                         {disp8} mov        dword ptr [esi + 0x5c], edi                   // 0x0072c090    897e5c
                         {disp8} mov        dword ptr [esi + 0x60], edi                   // 0x0072c093    897e60
                         {disp8} mov        dword ptr [esi + 0x64], edi                   // 0x0072c096    897e64
                         mov.s              ecx, esi                                      // 0x0072c099    8bce
                         mov                dword ptr [esi], 0x00982e74                   // 0x0072c09b    c706742e9800
                         call               _jmp_addr_0x0072c0e0                          // 0x0072c0a1    e83a000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0072c0a6    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00205ca4]             // 0x0072c0ac    8b8aa45c2000
                         {disp32} lea       eax, dword ptr [edx + 0x00205ca4]             // 0x0072c0b2    8d82a45c2000
                         {disp8} mov        dword ptr [esi + 0x5c], ecx                   // 0x0072c0b8    894e5c
                         {disp8} inc        dword ptr [eax + 0x04]                        // 0x0072c0bb    ff4004
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0072c0be    8b4c2414
                         mov                dword ptr [eax], esi                          // 0x0072c0c2    8930
                         {disp8} mov        dword ptr [esi + 0x60], ecx                   // 0x0072c0c4    894e60
                         call               ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ             // 0x0072c0c7    e854f7ffff
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x0072c0cc    894664
                         pop                edi                                           // 0x0072c0cf    5f
                         mov.s              eax, esi                                      // 0x0072c0d0    8bc6
                         pop                esi                                           // 0x0072c0d2    5e
                         ret                0x000c                                        // 0x0072c0d3    c20c00
                         nop                                                              // 0x0072c0d6    90
                         nop                                                              // 0x0072c0d7    90
                         nop                                                              // 0x0072c0d8    90
                         nop                                                              // 0x0072c0d9    90
                         nop                                                              // 0x0072c0da    90
                         nop                                                              // 0x0072c0db    90
                         nop                                                              // 0x0072c0dc    90
                         nop                                                              // 0x0072c0dd    90
                         nop                                                              // 0x0072c0de    90
                         nop                                                              // 0x0072c0df    90
_jmp_addr_0x0072c0e0:    xor.s              eax, eax                                      // 0x0072c0e0    33c0
                         {disp8} mov        dword ptr [ecx + 0x60], eax                   // 0x0072c0e2    894160
                         {disp8} mov        dword ptr [ecx + 0x64], eax                   // 0x0072c0e5    894164
                         ret                                                              // 0x0072c0e8    c3
                         nop                                                              // 0x0072c0e9    90
                         nop                                                              // 0x0072c0ea    90
                         nop                                                              // 0x0072c0eb    90
                         nop                                                              // 0x0072c0ec    90
                         nop                                                              // 0x0072c0ed    90
                         nop                                                              // 0x0072c0ee    90
                         nop                                                              // 0x0072c0ef    90
?ToBeDeleted@MapShield@@UAEXH@Z:
                         test               byte ptr [ecx + 0x0a], 0x01                   // 0x0072c0f0    f6410a01
                         push               esi                                           // 0x0072c0f4    56
                         {disp8} jne        _jmp_addr_0x0072c13e                          // 0x0072c0f5    7547
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0072c0f7    a15c19d000
                         {disp32} lea       esi, dword ptr [eax + 0x00205ca4]             // 0x0072c0fc    8db0a45c2000
                         mov                eax, dword ptr [esi]                          // 0x0072c102    8b06
                         cmp.s              eax, ecx                                      // 0x0072c104    3bc1
                         {disp8} jne        _jmp_addr_0x0072c10f                          // 0x0072c106    7507
                         {disp8} mov        edx, dword ptr [ecx + 0x5c]                   // 0x0072c108    8b515c
                         mov                dword ptr [esi], edx                          // 0x0072c10b    8916
                         {disp8} jmp        _jmp_addr_0x0072c134                          // 0x0072c10d    eb25
_jmp_addr_0x0072c10f:    test               eax, eax                                      // 0x0072c10f    85c0
                         {disp8} je         _jmp_addr_0x0072c13e                          // 0x0072c111    742b
_jmp_addr_0x0072c113:    {disp8} mov        edx, dword ptr [eax + 0x5c]                   // 0x0072c113    8b505c
                         cmp.s              edx, ecx                                      // 0x0072c116    3bd1
                         {disp8} je         _jmp_addr_0x0072c12e                          // 0x0072c118    7414
                         mov.s              eax, edx                                      // 0x0072c11a    8bc2
                         test               eax, eax                                      // 0x0072c11c    85c0
                         {disp8} jne        _jmp_addr_0x0072c113                          // 0x0072c11e    75f3
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072c120    8b442408
                         push               eax                                           // 0x0072c124    50
                         call               ?ToBeDeleted@Object@@UAEXH@Z                  // 0x0072c125    e846a5f0ff
                         pop                esi                                           // 0x0072c12a    5e
                         ret                0x0004                                        // 0x0072c12b    c20400
_jmp_addr_0x0072c12e:    {disp8} mov        edx, dword ptr [ecx + 0x5c]                   // 0x0072c12e    8b515c
                         {disp8} mov        dword ptr [eax + 0x5c], edx                   // 0x0072c131    89505c
_jmp_addr_0x0072c134:    dec                dword ptr [esi + 0x04]                        // 0x0072c134    ff4e04
                         {disp8} mov        dword ptr [ecx + 0x5c], 0x00000000            // 0x0072c137    c7415c00000000
_jmp_addr_0x0072c13e:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072c13e    8b442408
                         push               eax                                           // 0x0072c142    50
                         call               ?ToBeDeleted@Object@@UAEXH@Z                  // 0x0072c143    e828a5f0ff
                         pop                esi                                           // 0x0072c148    5e
                         ret                0x0004                                        // 0x0072c149    c20400
                         nop                                                              // 0x0072c14c    90
                         nop                                                              // 0x0072c14d    90
                         nop                                                              // 0x0072c14e    90
                         nop                                                              // 0x0072c14f    90
?GetPlayer@MapShield@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x60]                   // 0x0072c150    8b4160
                         test               eax, eax                                      // 0x0072c153    85c0
                         {disp8} je         _jmp_addr_0x0072c15e                          // 0x0072c155    7407
                         mov                edx, dword ptr [eax]                          // 0x0072c157    8b10
                         mov.s              ecx, eax                                      // 0x0072c159    8bc8
                         {disp8} jmp        dword ptr [edx + 0x1c]                        // 0x0072c15b    ff621c
_jmp_addr_0x0072c15e:    {disp32} jmp       ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ       // 0x0072c15e    e9cd3fe4ff
                         nop                                                              // 0x0072c163    90
                         nop                                                              // 0x0072c164    90
                         nop                                                              // 0x0072c165    90
                         nop                                                              // 0x0072c166    90
                         nop                                                              // 0x0072c167    90
                         nop                                                              // 0x0072c168    90
                         nop                                                              // 0x0072c169    90
                         nop                                                              // 0x0072c16a    90
                         nop                                                              // 0x0072c16b    90
                         nop                                                              // 0x0072c16c    90
                         nop                                                              // 0x0072c16d    90
                         nop                                                              // 0x0072c16e    90
                         nop                                                              // 0x0072c16f    90
?CreatureMustAvoid@MapShield@@UAE_NPAVCreature@@@Z:
                         push               esi                                           // 0x0072c170    56
                         mov.s              esi, ecx                                      // 0x0072c171    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072c173    8b4c2408
                         test               ecx, ecx                                      // 0x0072c177    85c9
                         {disp8} je         _jmp_addr_0x0072c19e                          // 0x0072c179    7423
                         test               byte ptr [ecx + 0x25], 0x04                   // 0x0072c17b    f6412504
                         {disp8} jne        _jmp_addr_0x0072c19e                          // 0x0072c17f    751d
                         mov                eax, dword ptr [ecx]                          // 0x0072c181    8b01
                         push               edi                                           // 0x0072c183    57
                         call               dword ptr [eax + 0x1c]                        // 0x0072c184    ff501c
                         mov                edx, dword ptr [esi]                          // 0x0072c187    8b16
                         mov.s              ecx, esi                                      // 0x0072c189    8bce
                         mov.s              edi, eax                                      // 0x0072c18b    8bf8
                         call               dword ptr [edx + 0x1c]                        // 0x0072c18d    ff521c
                         cmp.s              edi, eax                                      // 0x0072c190    3bf8
                         pop                edi                                           // 0x0072c192    5f
                         {disp8} je         _jmp_addr_0x0072c19e                          // 0x0072c193    7409
                         mov                eax, 0x00000001                               // 0x0072c195    b801000000
                         pop                esi                                           // 0x0072c19a    5e
                         ret                0x0004                                        // 0x0072c19b    c20400
_jmp_addr_0x0072c19e:    xor.s              eax, eax                                      // 0x0072c19e    33c0
                         pop                esi                                           // 0x0072c1a0    5e
                         ret                0x0004                                        // 0x0072c1a1    c20400
                         nop                                                              // 0x0072c1a4    90
                         nop                                                              // 0x0072c1a5    90
                         nop                                                              // 0x0072c1a6    90
                         nop                                                              // 0x0072c1a7    90
                         nop                                                              // 0x0072c1a8    90
                         nop                                                              // 0x0072c1a9    90
                         nop                                                              // 0x0072c1aa    90
                         nop                                                              // 0x0072c1ab    90
                         nop                                                              // 0x0072c1ac    90
                         nop                                                              // 0x0072c1ad    90
                         nop                                                              // 0x0072c1ae    90
                         nop                                                              // 0x0072c1af    90
?GetMesh@MapShield@@UBEHXZ:
                         mov                eax, 0x0000022a                               // 0x0072c1b0    b82a020000
                         ret                                                              // 0x0072c1b5    c3
                         nop                                                              // 0x0072c1b6    90
                         nop                                                              // 0x0072c1b7    90
                         nop                                                              // 0x0072c1b8    90
                         nop                                                              // 0x0072c1b9    90
                         nop                                                              // 0x0072c1ba    90
                         nop                                                              // 0x0072c1bb    90
                         nop                                                              // 0x0072c1bc    90
                         nop                                                              // 0x0072c1bd    90
                         nop                                                              // 0x0072c1be    90
                         nop                                                              // 0x0072c1bf    90
?GetTopPos@MapShield@@UAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072c1c0    d90598a38a00
                         ret                                                              // 0x0072c1c6    c3
                         nop                                                              // 0x0072c1c7    90
                         nop                                                              // 0x0072c1c8    90
                         nop                                                              // 0x0072c1c9    90
                         nop                                                              // 0x0072c1ca    90
                         nop                                                              // 0x0072c1cb    90
                         nop                                                              // 0x0072c1cc    90
                         nop                                                              // 0x0072c1cd    90
                         nop                                                              // 0x0072c1ce    90
                         nop                                                              // 0x0072c1cf    90
?CanBecomeAPhysicsObject@MapShield@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x0072c1d0    33c0
                         ret                                                              // 0x0072c1d2    c3
                         nop                                                              // 0x0072c1d3    90
                         nop                                                              // 0x0072c1d4    90
                         nop                                                              // 0x0072c1d5    90
                         nop                                                              // 0x0072c1d6    90
                         nop                                                              // 0x0072c1d7    90
                         nop                                                              // 0x0072c1d8    90
                         nop                                                              // 0x0072c1d9    90
                         nop                                                              // 0x0072c1da    90
                         nop                                                              // 0x0072c1db    90
                         nop                                                              // 0x0072c1dc    90
                         nop                                                              // 0x0072c1dd    90
                         nop                                                              // 0x0072c1de    90
                         nop                                                              // 0x0072c1df    90
?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@MapShield@@UAEXPAVObject@@@Z:
                         xor.s              al, al                                        // 0x0072c1e0    32c0
                         ret                0x0004                                        // 0x0072c1e2    c20400
                         nop                                                              // 0x0072c1e5    90
                         nop                                                              // 0x0072c1e6    90
                         nop                                                              // 0x0072c1e7    90
                         nop                                                              // 0x0072c1e8    90
                         nop                                                              // 0x0072c1e9    90
                         nop                                                              // 0x0072c1ea    90
                         nop                                                              // 0x0072c1eb    90
                         nop                                                              // 0x0072c1ec    90
                         nop                                                              // 0x0072c1ed    90
                         nop                                                              // 0x0072c1ee    90
                         nop                                                              // 0x0072c1ef    90
_jmp_addr_0x0072c1f0:    push               esi                                           // 0x0072c1f0    56
                         mov.s              esi, ecx                                      // 0x0072c1f1    8bf1
                         call               _jmp_addr_0x0072bfc0                          // 0x0072c1f3    e8c8fdffff
                         mov                dword ptr [esi], 0x009836ec                   // 0x0072c1f8    c706ec369800
                         mov.s              eax, esi                                      // 0x0072c1fe    8bc6
                         pop                esi                                           // 0x0072c200    5e
                         ret                                                              // 0x0072c201    c3
                         nop                                                              // 0x0072c202    90
                         nop                                                              // 0x0072c203    90
                         nop                                                              // 0x0072c204    90
                         nop                                                              // 0x0072c205    90
                         nop                                                              // 0x0072c206    90
                         nop                                                              // 0x0072c207    90
                         nop                                                              // 0x0072c208    90
                         nop                                                              // 0x0072c209    90
                         nop                                                              // 0x0072c20a    90
                         nop                                                              // 0x0072c20b    90
                         nop                                                              // 0x0072c20c    90
                         nop                                                              // 0x0072c20d    90
                         nop                                                              // 0x0072c20e    90
                         nop                                                              // 0x0072c20f    90
?GetSaveType@MagicShield@@UAEIXZ:
                         mov                eax, 0x00000018                               // 0x0072c210    b818000000
                         ret                                                              // 0x0072c215    c3
                         nop                                                              // 0x0072c216    90
                         nop                                                              // 0x0072c217    90
                         nop                                                              // 0x0072c218    90
                         nop                                                              // 0x0072c219    90
                         nop                                                              // 0x0072c21a    90
                         nop                                                              // 0x0072c21b    90
                         nop                                                              // 0x0072c21c    90
                         nop                                                              // 0x0072c21d    90
                         nop                                                              // 0x0072c21e    90
                         nop                                                              // 0x0072c21f    90
?GetDebugText@MagicShield@@UAEPADXZ:
                         mov                eax, 0x00c2282c                               // 0x0072c220    b82c28c200
                         ret                                                              // 0x0072c225    c3
                         nop                                                              // 0x0072c226    90
                         nop                                                              // 0x0072c227    90
                         nop                                                              // 0x0072c228    90
                         nop                                                              // 0x0072c229    90
                         nop                                                              // 0x0072c22a    90
                         nop                                                              // 0x0072c22b    90
                         nop                                                              // 0x0072c22c    90
                         nop                                                              // 0x0072c22d    90
                         nop                                                              // 0x0072c22e    90
                         nop                                                              // 0x0072c22f    90
??_GMagicShield@@UAEPAXI@Z:
                         push               esi                                           // 0x0072c230    56
                         mov.s              esi, ecx                                      // 0x0072c231    8bf1
                         call               _jmp_addr_0x0052eac0                          // 0x0072c233    e88828e0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072c238    f644240801
                         {disp8} je         _jmp_addr_0x0072c24a                          // 0x0072c23d    740b
                         push               0x68                                          // 0x0072c23f    6a68
                         push               esi                                           // 0x0072c241    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072c242    e829a7d0ff
                         add                esp, 0x08                                     // 0x0072c247    83c408
_jmp_addr_0x0072c24a:    mov.s              eax, esi                                      // 0x0072c24a    8bc6
                         pop                esi                                           // 0x0072c24c    5e
                         ret                0x0004                                        // 0x0072c24d    c20400
_jmp_addr_0x0072c250:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0072c250    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072c254    8b542404
                         push               esi                                           // 0x0072c258    56
                         mov.s              esi, ecx                                      // 0x0072c259    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0072c25b    8b4c240c
                         push               eax                                           // 0x0072c25f    50
                         push               ecx                                           // 0x0072c260    51
                         push               edx                                           // 0x0072c261    52
                         mov.s              ecx, esi                                      // 0x0072c262    8bce
                         call               @__ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield@20                          // 0x0072c264    e807feffff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072c269    8b4e60
                         mov                dword ptr [esi], 0x009836ec                   // 0x0072c26c    c706ec369800
                         call               ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ             // 0x0072c272    e8a9f5ffff
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98b0]             // 0x0072c277    d905b0289800
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0072c27d    d84c2414
                         push               ecx                                           // 0x0072c281    51
                         mov.s              ecx, esi                                      // 0x0072c282    8bce
                         fstp               dword ptr [esp]                               // 0x0072c284    d91c24
                         call               @SetScale__6ObjectFf@12                       // 0x0072c287    e874cff0ff
                         mov.s              eax, esi                                      // 0x0072c28c    8bc6
                         pop                esi                                           // 0x0072c28e    5e
                         ret                0x0010                                        // 0x0072c28f    c21000
                         nop                                                              // 0x0072c292    90
                         nop                                                              // 0x0072c293    90
                         nop                                                              // 0x0072c294    90
                         nop                                                              // 0x0072c295    90
                         nop                                                              // 0x0072c296    90
                         nop                                                              // 0x0072c297    90
                         nop                                                              // 0x0072c298    90
                         nop                                                              // 0x0072c299    90
                         nop                                                              // 0x0072c29a    90
                         nop                                                              // 0x0072c29b    90
                         nop                                                              // 0x0072c29c    90
                         nop                                                              // 0x0072c29d    90
                         nop                                                              // 0x0072c29e    90
                         nop                                                              // 0x0072c29f    90
?CallVirtualFunctionsForCreation@MagicShield@@UAEXABUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072c2a0    8b442404
                         push               esi                                           // 0x0072c2a4    56
                         mov.s              esi, ecx                                      // 0x0072c2a5    8bf1
                         push               eax                                           // 0x0072c2a7    50
                         call               ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z                          // 0x0072c2a8    e8d325e0ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072c2ad    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072c2b0    8b01
                         xor.s              edx, edx                                      // 0x0072c2b2    33d2
                         call               dword ptr [eax + 0x78]                        // 0x0072c2b4    ff5078
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072c2b7    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072c2ba    8b01
                         xor.s              edx, edx                                      // 0x0072c2bc    33d2
                         call               dword ptr [eax + 0x80]                        // 0x0072c2be    ff9080000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072c2c4    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072c2c7    8b01
                         xor.s              edx, edx                                      // 0x0072c2c9    33d2
                         call               dword ptr [eax + 0x88]                        // 0x0072c2cb    ff9088000000
                         pop                esi                                           // 0x0072c2d1    5e
                         ret                0x0004                                        // 0x0072c2d2    c20400
                         nop                                                              // 0x0072c2d5    90
                         nop                                                              // 0x0072c2d6    90
                         nop                                                              // 0x0072c2d7    90
                         nop                                                              // 0x0072c2d8    90
                         nop                                                              // 0x0072c2d9    90
                         nop                                                              // 0x0072c2da    90
                         nop                                                              // 0x0072c2db    90
                         nop                                                              // 0x0072c2dc    90
                         nop                                                              // 0x0072c2dd    90
                         nop                                                              // 0x0072c2de    90
                         nop                                                              // 0x0072c2df    90
?ProcessShield@MagicShield@@UAEXXZ:
                         ret                                                              // 0x0072c2e0    c3
                         nop                                                              // 0x0072c2e1    90
                         nop                                                              // 0x0072c2e2    90
                         nop                                                              // 0x0072c2e3    90
                         nop                                                              // 0x0072c2e4    90
                         nop                                                              // 0x0072c2e5    90
                         nop                                                              // 0x0072c2e6    90
                         nop                                                              // 0x0072c2e7    90
                         nop                                                              // 0x0072c2e8    90
                         nop                                                              // 0x0072c2e9    90
                         nop                                                              // 0x0072c2ea    90
                         nop                                                              // 0x0072c2eb    90
                         nop                                                              // 0x0072c2ec    90
                         nop                                                              // 0x0072c2ed    90
                         nop                                                              // 0x0072c2ee    90
                         nop                                                              // 0x0072c2ef    90
?DrawShield@MagicShield@@UAEXXZ:
                         ret                                                              // 0x0072c2f0    c3
                         nop                                                              // 0x0072c2f1    90
                         nop                                                              // 0x0072c2f2    90
                         nop                                                              // 0x0072c2f3    90
                         nop                                                              // 0x0072c2f4    90
                         nop                                                              // 0x0072c2f5    90
                         nop                                                              // 0x0072c2f6    90
                         nop                                                              // 0x0072c2f7    90
                         nop                                                              // 0x0072c2f8    90
                         nop                                                              // 0x0072c2f9    90
                         nop                                                              // 0x0072c2fa    90
                         nop                                                              // 0x0072c2fb    90
                         nop                                                              // 0x0072c2fc    90
                         nop                                                              // 0x0072c2fd    90
                         nop                                                              // 0x0072c2fe    90
                         nop                                                              // 0x0072c2ff    90
?Draw@MagicShield@@UAEXXZ:
                         ret                                                              // 0x0072c300    c3
                         nop                                                              // 0x0072c301    90
                         nop                                                              // 0x0072c302    90
                         nop                                                              // 0x0072c303    90
                         nop                                                              // 0x0072c304    90
                         nop                                                              // 0x0072c305    90
                         nop                                                              // 0x0072c306    90
                         nop                                                              // 0x0072c307    90
                         nop                                                              // 0x0072c308    90
                         nop                                                              // 0x0072c309    90
                         nop                                                              // 0x0072c30a    90
                         nop                                                              // 0x0072c30b    90
                         nop                                                              // 0x0072c30c    90
                         nop                                                              // 0x0072c30d    90
                         nop                                                              // 0x0072c30e    90
                         nop                                                              // 0x0072c30f    90
?IsEffectReceiver@MagicShield@@UAEIPAVEffectValues@@@Z:
                         xor.s              eax, eax                                      // 0x0072c310    33c0
                         ret                0x0004                                        // 0x0072c312    c20400
                         nop                                                              // 0x0072c315    90
                         nop                                                              // 0x0072c316    90
                         nop                                                              // 0x0072c317    90
                         nop                                                              // 0x0072c318    90
                         nop                                                              // 0x0072c319    90
                         nop                                                              // 0x0072c31a    90
                         nop                                                              // 0x0072c31b    90
                         nop                                                              // 0x0072c31c    90
                         nop                                                              // 0x0072c31d    90
                         nop                                                              // 0x0072c31e    90
                         nop                                                              // 0x0072c31f    90
?SetDying@MagicShield@@UAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0072c320    8b01
                         push               0x0                                           // 0x0072c322    6a00
                         call               dword ptr [eax + 0xc]                         // 0x0072c324    ff500c
                         mov                eax, 0x00000003                               // 0x0072c327    b803000000
                         ret                                                              // 0x0072c32c    c3
                         nop                                                              // 0x0072c32d    90
                         nop                                                              // 0x0072c32e    90
                         nop                                                              // 0x0072c32f    90
?InteractsWithPhysicsObjects@MagicShield@@UAE_NXZ:
                         xor.s              al, al                                        // 0x0072c330    32c0
                         ret                                                              // 0x0072c332    c3
                         nop                                                              // 0x0072c333    90
                         nop                                                              // 0x0072c334    90
                         nop                                                              // 0x0072c335    90
                         nop                                                              // 0x0072c336    90
                         nop                                                              // 0x0072c337    90
                         nop                                                              // 0x0072c338    90
                         nop                                                              // 0x0072c339    90
                         nop                                                              // 0x0072c33a    90
                         nop                                                              // 0x0072c33b    90
                         nop                                                              // 0x0072c33c    90
                         nop                                                              // 0x0072c33d    90
                         nop                                                              // 0x0072c33e    90
                         nop                                                              // 0x0072c33f    90
?Get3DType@MagicShield@@UAE?AW4LH3DObject__ObjectType@@XZ:
                         {disp32} jmp       ?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ                          // 0x0072c340    e9aba1f0ff
                         nop                                                              // 0x0072c345    90
                         nop                                                              // 0x0072c346    90
                         nop                                                              // 0x0072c347    90
                         nop                                                              // 0x0072c348    90
                         nop                                                              // 0x0072c349    90
                         nop                                                              // 0x0072c34a    90
                         nop                                                              // 0x0072c34b    90
                         nop                                                              // 0x0072c34c    90
                         nop                                                              // 0x0072c34d    90
                         nop                                                              // 0x0072c34e    90
                         nop                                                              // 0x0072c34f    90
?Load@MapShield@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0072c350    56
                         push               edi                                           // 0x0072c351    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072c352    8b7c240c
                         mov.s              esi, ecx                                      // 0x0072c356    8bf1
                         push               edi                                           // 0x0072c358    57
                         call               ?Load@Fixed@@QAEIAAVGGameOSFile@@@Z         // 0x0072c359    e8121ee0ff
                         test               eax, eax                                      // 0x0072c35e    85c0
                         {disp8} je         _jmp_addr_0x0072c382                          // 0x0072c360    7420
                         {disp8} lea        eax, dword ptr [esi + 0x60]                   // 0x0072c362    8d4660
                         push               eax                                           // 0x0072c365    50
                         mov.s              ecx, edi                                      // 0x0072c366    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0072c368    e8135ee3ff
                         add                esi, 0x64                                     // 0x0072c36d    83c664
                         push               esi                                           // 0x0072c370    56
                         mov.s              ecx, edi                                      // 0x0072c371    8bcf
                         call               @ReadInfo__10GameOSFileFPPC9GBaseInfo@12      // 0x0072c373    e8887be3ff
                         pop                edi                                           // 0x0072c378    5f
                         mov                eax, 0x00000001                               // 0x0072c379    b801000000
                         pop                esi                                           // 0x0072c37e    5e
                         ret                0x0004                                        // 0x0072c37f    c20400
_jmp_addr_0x0072c382:    pop                edi                                           // 0x0072c382    5f
                         xor.s              eax, eax                                      // 0x0072c383    33c0
                         pop                esi                                           // 0x0072c385    5e
                         ret                0x0004                                        // 0x0072c386    c20400
                         nop                                                              // 0x0072c389    90
                         nop                                                              // 0x0072c38a    90
                         nop                                                              // 0x0072c38b    90
                         nop                                                              // 0x0072c38c    90
                         nop                                                              // 0x0072c38d    90
                         nop                                                              // 0x0072c38e    90
                         nop                                                              // 0x0072c38f    90
?Save@MapShield@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0072c390    56
                         push               edi                                           // 0x0072c391    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072c392    8b7c240c
                         mov.s              esi, ecx                                      // 0x0072c396    8bf1
                         push               edi                                           // 0x0072c398    57
                         call               ?Save@Fixed@@UAEIPAVGameOSFile@@@Z            // 0x0072c399    e8a21de0ff
                         test               eax, eax                                      // 0x0072c39e    85c0
                         {disp8} je         _jmp_addr_0x0072c3c2                          // 0x0072c3a0    7420
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0072c3a2    8b4660
                         push               eax                                           // 0x0072c3a5    50
                         mov.s              ecx, edi                                      // 0x0072c3a6    8bcf
                         call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0072c3a8    e8635ae3ff
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x0072c3ad    8b4e64
                         push               ecx                                           // 0x0072c3b0    51
                         mov.s              ecx, edi                                      // 0x0072c3b1    8bcf
                         call               _jmp_addr_0x00563ea0                          // 0x0072c3b3    e8e87ae3ff
                         pop                edi                                           // 0x0072c3b8    5f
                         mov                eax, 0x00000001                               // 0x0072c3b9    b801000000
                         pop                esi                                           // 0x0072c3be    5e
                         ret                0x0004                                        // 0x0072c3bf    c20400
_jmp_addr_0x0072c3c2:    pop                edi                                           // 0x0072c3c2    5f
                         xor.s              eax, eax                                      // 0x0072c3c3    33c0
                         pop                esi                                           // 0x0072c3c5    5e
                         ret                0x0004                                        // 0x0072c3c6    c20400
                         nop                                                              // 0x0072c3c9    90
                         nop                                                              // 0x0072c3ca    90
                         nop                                                              // 0x0072c3cb    90
                         nop                                                              // 0x0072c3cc    90
                         nop                                                              // 0x0072c3cd    90
                         nop                                                              // 0x0072c3ce    90
                         nop                                                              // 0x0072c3cf    90
?Load@MagicShield@@UAEIAAVGameOSFile@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072c3d0    8b442404
                         push               eax                                           // 0x0072c3d4    50
                         call               ?Load@MapShield@@UAEIAAVGameOSFile@@@Z        // 0x0072c3d5    e876ffffff
                         neg                eax                                           // 0x0072c3da    f7d8
                         sbb.s              eax, eax                                      // 0x0072c3dc    1bc0
                         neg                eax                                           // 0x0072c3de    f7d8
                         ret                0x0004                                        // 0x0072c3e0    c20400
                         nop                                                              // 0x0072c3e3    90
                         nop                                                              // 0x0072c3e4    90
                         nop                                                              // 0x0072c3e5    90
                         nop                                                              // 0x0072c3e6    90
                         nop                                                              // 0x0072c3e7    90
                         nop                                                              // 0x0072c3e8    90
                         nop                                                              // 0x0072c3e9    90
                         nop                                                              // 0x0072c3ea    90
                         nop                                                              // 0x0072c3eb    90
                         nop                                                              // 0x0072c3ec    90
                         nop                                                              // 0x0072c3ed    90
                         nop                                                              // 0x0072c3ee    90
                         nop                                                              // 0x0072c3ef    90
?Save@MagicShield@@UAEIAAVGameOSFile@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072c3f0    8b442404
                         push               eax                                           // 0x0072c3f4    50
                         call               ?Save@MapShield@@UAEIAAVGameOSFile@@@Z        // 0x0072c3f5    e896ffffff
                         neg                eax                                           // 0x0072c3fa    f7d8
                         sbb.s              eax, eax                                      // 0x0072c3fc    1bc0
                         neg                eax                                           // 0x0072c3fe    f7d8
                         ret                0x0004                                        // 0x0072c400    c20400
                         nop                                                              // 0x0072c403    90
                         nop                                                              // 0x0072c404    90
                         nop                                                              // 0x0072c405    90
                         nop                                                              // 0x0072c406    90
                         nop                                                              // 0x0072c407    90
                         nop                                                              // 0x0072c408    90
                         nop                                                              // 0x0072c409    90
                         nop                                                              // 0x0072c40a    90
                         nop                                                              // 0x0072c40b    90
                         nop                                                              // 0x0072c40c    90
                         nop                                                              // 0x0072c40d    90
                         nop                                                              // 0x0072c40e    90
                         nop                                                              // 0x0072c40f    90
?Load@PhysicalShield@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x0072c410    53
                         push               esi                                           // 0x0072c411    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072c412    8b74240c
                         mov.s              ebx, ecx                                      // 0x0072c416    8bd9
                         push               esi                                           // 0x0072c418    56
                         call               ?Load@MapShield@@UAEIAAVGameOSFile@@@Z        // 0x0072c419    e832ffffff
                         test               eax, eax                                      // 0x0072c41e    85c0
                         {disp32} je        _jmp_addr_0x0072c6ef                          // 0x0072c420    0f84c9020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0072c426    a194c9be00
                         push               ebp                                           // 0x0072c42b    55
                         xor.s              ebp, ebp                                      // 0x0072c42c    33ed
                         cmp.s              eax, ebp                                      // 0x0072c42e    3bc5
                         push               edi                                           // 0x0072c430    57
                         {disp8} lea        edi, dword ptr [ebx + 0x68]                   // 0x0072c431    8d7b68
                         {disp8} je         _jmp_addr_0x0072c461                          // 0x0072c434    742b
                         push               ebp                                           // 0x0072c436    55
                         push               0x4                                           // 0x0072c437    6a04
                         push               edi                                           // 0x0072c439    57
                         mov.s              ecx, esi                                      // 0x0072c43a    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c43c    e89f040900
                         cmp                eax, 0x03                                     // 0x0072c441    83f803
                         {disp8} jne        _jmp_addr_0x0072c44c                          // 0x0072c444    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c446    892d94c9be00
_jmp_addr_0x0072c44c:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c44c    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c452    33c0
                         mov                al, byte ptr [edi]                            // 0x0072c454    8a07
                         add                eax, 0x04                                     // 0x0072c456    83c004
                         add.s              ecx, eax                                      // 0x0072c459    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c45b    898e14020000
_jmp_addr_0x0072c461:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c461    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x6c]                   // 0x0072c467    8d7b6c
                         {disp8} je         _jmp_addr_0x0072c497                          // 0x0072c46a    742b
                         push               ebp                                           // 0x0072c46c    55
                         push               0x4                                           // 0x0072c46d    6a04
                         push               edi                                           // 0x0072c46f    57
                         mov.s              ecx, esi                                      // 0x0072c470    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c472    e869040900
                         cmp                eax, 0x03                                     // 0x0072c477    83f803
                         {disp8} jne        _jmp_addr_0x0072c482                          // 0x0072c47a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c47c    892d94c9be00
_jmp_addr_0x0072c482:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c482    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072c488    33c9
                         mov                cl, byte ptr [edi]                            // 0x0072c48a    8a0f
                         add                ecx, 0x4                                      // 0x0072c48c    83c104
                         add.s              eax, ecx                                      // 0x0072c48f    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c491    898614020000
_jmp_addr_0x0072c497:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c497    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x74]                   // 0x0072c49d    8d7b74
                         {disp8} je         _jmp_addr_0x0072c4cd                          // 0x0072c4a0    742b
                         push               ebp                                           // 0x0072c4a2    55
                         push               0x34                                          // 0x0072c4a3    6a34
                         push               edi                                           // 0x0072c4a5    57
                         mov.s              ecx, esi                                      // 0x0072c4a6    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c4a8    e833040900
                         cmp                eax, 0x03                                     // 0x0072c4ad    83f803
                         {disp8} jne        _jmp_addr_0x0072c4b8                          // 0x0072c4b0    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c4b2    892d94c9be00
_jmp_addr_0x0072c4b8:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c4b8    8b8614020000
                         xor.s              edx, edx                                      // 0x0072c4be    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072c4c0    8a17
                         add                edx, 0x34                                     // 0x0072c4c2    83c234
                         add.s              eax, edx                                      // 0x0072c4c5    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c4c7    898614020000
_jmp_addr_0x0072c4cd:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c4cd    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000a8]             // 0x0072c4d3    8dbba8000000
                         {disp8} je         _jmp_addr_0x0072c506                          // 0x0072c4d9    742b
                         push               ebp                                           // 0x0072c4db    55
                         push               0x34                                          // 0x0072c4dc    6a34
                         push               edi                                           // 0x0072c4de    57
                         mov.s              ecx, esi                                      // 0x0072c4df    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c4e1    e8fa030900
                         cmp                eax, 0x03                                     // 0x0072c4e6    83f803
                         {disp8} jne        _jmp_addr_0x0072c4f1                          // 0x0072c4e9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c4eb    892d94c9be00
_jmp_addr_0x0072c4f1:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c4f1    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c4f7    33c0
                         mov                al, byte ptr [edi]                            // 0x0072c4f9    8a07
                         add                eax, 0x34                                     // 0x0072c4fb    83c034
                         add.s              ecx, eax                                      // 0x0072c4fe    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c500    898e14020000
_jmp_addr_0x0072c506:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c506    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000dc]             // 0x0072c50c    8dbbdc000000
                         {disp8} je         _jmp_addr_0x0072c53f                          // 0x0072c512    742b
                         push               ebp                                           // 0x0072c514    55
                         push               0x4                                           // 0x0072c515    6a04
                         push               edi                                           // 0x0072c517    57
                         mov.s              ecx, esi                                      // 0x0072c518    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c51a    e8c1030900
                         cmp                eax, 0x03                                     // 0x0072c51f    83f803
                         {disp8} jne        _jmp_addr_0x0072c52a                          // 0x0072c522    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c524    892d94c9be00
_jmp_addr_0x0072c52a:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c52a    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072c530    33c9
                         mov                cl, byte ptr [edi]                            // 0x0072c532    8a0f
                         add                ecx, 0x4                                      // 0x0072c534    83c104
                         add.s              eax, ecx                                      // 0x0072c537    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c539    898614020000
_jmp_addr_0x0072c53f:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c53f    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e0]             // 0x0072c545    8dbbe0000000
                         {disp8} je         _jmp_addr_0x0072c578                          // 0x0072c54b    742b
                         push               ebp                                           // 0x0072c54d    55
                         push               0x4                                           // 0x0072c54e    6a04
                         push               edi                                           // 0x0072c550    57
                         mov.s              ecx, esi                                      // 0x0072c551    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c553    e888030900
                         cmp                eax, 0x03                                     // 0x0072c558    83f803
                         {disp8} jne        _jmp_addr_0x0072c563                          // 0x0072c55b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c55d    892d94c9be00
_jmp_addr_0x0072c563:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c563    8b8614020000
                         xor.s              edx, edx                                      // 0x0072c569    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072c56b    8a17
                         add                edx, 0x04                                     // 0x0072c56d    83c204
                         add.s              eax, edx                                      // 0x0072c570    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c572    898614020000
_jmp_addr_0x0072c578:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c578    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e4]             // 0x0072c57e    8dbbe4000000
                         {disp8} je         _jmp_addr_0x0072c5b1                          // 0x0072c584    742b
                         push               ebp                                           // 0x0072c586    55
                         push               0x4                                           // 0x0072c587    6a04
                         push               edi                                           // 0x0072c589    57
                         mov.s              ecx, esi                                      // 0x0072c58a    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c58c    e84f030900
                         cmp                eax, 0x03                                     // 0x0072c591    83f803
                         {disp8} jne        _jmp_addr_0x0072c59c                          // 0x0072c594    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c596    892d94c9be00
_jmp_addr_0x0072c59c:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c59c    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c5a2    33c0
                         mov                al, byte ptr [edi]                            // 0x0072c5a4    8a07
                         add                eax, 0x04                                     // 0x0072c5a6    83c004
                         add.s              ecx, eax                                      // 0x0072c5a9    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c5ab    898e14020000
_jmp_addr_0x0072c5b1:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c5b1    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e8]             // 0x0072c5b7    8dbbe8000000
                         {disp8} je         _jmp_addr_0x0072c5ea                          // 0x0072c5bd    742b
                         push               ebp                                           // 0x0072c5bf    55
                         push               0x4                                           // 0x0072c5c0    6a04
                         push               edi                                           // 0x0072c5c2    57
                         mov.s              ecx, esi                                      // 0x0072c5c3    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c5c5    e816030900
                         cmp                eax, 0x03                                     // 0x0072c5ca    83f803
                         {disp8} jne        _jmp_addr_0x0072c5d5                          // 0x0072c5cd    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c5cf    892d94c9be00
_jmp_addr_0x0072c5d5:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c5d5    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072c5db    33c9
                         mov                cl, byte ptr [edi]                            // 0x0072c5dd    8a0f
                         add                ecx, 0x4                                      // 0x0072c5df    83c104
                         add.s              eax, ecx                                      // 0x0072c5e2    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c5e4    898614020000
_jmp_addr_0x0072c5ea:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c5ea    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000ec]             // 0x0072c5f0    8dbbec000000
                         {disp8} je         _jmp_addr_0x0072c623                          // 0x0072c5f6    742b
                         push               ebp                                           // 0x0072c5f8    55
                         push               0x4                                           // 0x0072c5f9    6a04
                         push               edi                                           // 0x0072c5fb    57
                         mov.s              ecx, esi                                      // 0x0072c5fc    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c5fe    e8dd020900
                         cmp                eax, 0x03                                     // 0x0072c603    83f803
                         {disp8} jne        _jmp_addr_0x0072c60e                          // 0x0072c606    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c608    892d94c9be00
_jmp_addr_0x0072c60e:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c60e    8b8614020000
                         xor.s              edx, edx                                      // 0x0072c614    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072c616    8a17
                         add                edx, 0x04                                     // 0x0072c618    83c204
                         add.s              eax, edx                                      // 0x0072c61b    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c61d    898614020000
_jmp_addr_0x0072c623:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c623    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000f0]             // 0x0072c629    8dbbf0000000
                         {disp8} je         _jmp_addr_0x0072c65c                          // 0x0072c62f    742b
                         push               ebp                                           // 0x0072c631    55
                         push               0x4                                           // 0x0072c632    6a04
                         push               edi                                           // 0x0072c634    57
                         mov.s              ecx, esi                                      // 0x0072c635    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c637    e8a4020900
                         cmp                eax, 0x03                                     // 0x0072c63c    83f803
                         {disp8} jne        _jmp_addr_0x0072c647                          // 0x0072c63f    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c641    892d94c9be00
_jmp_addr_0x0072c647:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c647    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c64d    33c0
                         mov                al, byte ptr [edi]                            // 0x0072c64f    8a07
                         add                eax, 0x04                                     // 0x0072c651    83c004
                         add.s              ecx, eax                                      // 0x0072c654    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c656    898e14020000
_jmp_addr_0x0072c65c:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c65c    392d94c9be00
                         {disp32} lea       edi, dword ptr [ebx + 0x000000f8]             // 0x0072c662    8dbbf8000000
                         {disp8} je         _jmp_addr_0x0072c693                          // 0x0072c668    7429
                         push               ebp                                           // 0x0072c66a    55
                         push               0x1                                           // 0x0072c66b    6a01
                         push               edi                                           // 0x0072c66d    57
                         mov.s              ecx, esi                                      // 0x0072c66e    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c670    e86b020900
                         cmp                eax, 0x03                                     // 0x0072c675    83f803
                         {disp8} jne        _jmp_addr_0x0072c680                          // 0x0072c678    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c67a    892d94c9be00
_jmp_addr_0x0072c680:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c680    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072c686    33c9
                         mov                cl, byte ptr [edi]                            // 0x0072c688    8a0f
                         inc                ecx                                           // 0x0072c68a    41
                         add.s              eax, ecx                                      // 0x0072c68b    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c68d    898614020000
_jmp_addr_0x0072c693:    cmp                dword ptr [data_bytes + 0x226994], ebp        // 0x0072c693    392d94c9be00
                         {disp8} lea        edi, dword ptr [ebx + 0x70]                   // 0x0072c699    8d7b70
                         {disp8} je         _jmp_addr_0x0072c6c7                          // 0x0072c69c    7429
                         push               ebp                                           // 0x0072c69e    55
                         push               0x1                                           // 0x0072c69f    6a01
                         push               edi                                           // 0x0072c6a1    57
                         mov.s              ecx, esi                                      // 0x0072c6a2    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0072c6a4    e837020900
                         cmp                eax, 0x03                                     // 0x0072c6a9    83f803
                         {disp8} jne        _jmp_addr_0x0072c6b4                          // 0x0072c6ac    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], ebp        // 0x0072c6ae    892d94c9be00
_jmp_addr_0x0072c6b4:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c6b4    8b8614020000
                         xor.s              edx, edx                                      // 0x0072c6ba    33d2
                         mov                dl, byte ptr [edi]                            // 0x0072c6bc    8a17
                         inc                edx                                           // 0x0072c6be    42
                         add.s              eax, edx                                      // 0x0072c6bf    03c2
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c6c1    898614020000
_jmp_addr_0x0072c6c7:    {disp32} lea       eax, dword ptr [ebx + 0x000000fc]             // 0x0072c6c7    8d83fc000000
                         push               eax                                           // 0x0072c6cd    50
                         mov.s              ecx, esi                                      // 0x0072c6ce    8bce
                         call               _jmp_addr_0x004e9540                          // 0x0072c6d0    e86bcedbff
                         add                ebx, 0x000000f4                               // 0x0072c6d5    81c3f4000000
                         push               ebx                                           // 0x0072c6db    53
                         mov.s              ecx, esi                                      // 0x0072c6dc    8bce
                         call               _jmp_addr_0x00563400                          // 0x0072c6de    e81d6de3ff
                         pop                edi                                           // 0x0072c6e3    5f
                         pop                ebp                                           // 0x0072c6e4    5d
                         pop                esi                                           // 0x0072c6e5    5e
                         mov                eax, 0x00000001                               // 0x0072c6e6    b801000000
                         pop                ebx                                           // 0x0072c6eb    5b
                         ret                0x0004                                        // 0x0072c6ec    c20400
_jmp_addr_0x0072c6ef:    pop                esi                                           // 0x0072c6ef    5e
                         xor.s              eax, eax                                      // 0x0072c6f0    33c0
                         pop                ebx                                           // 0x0072c6f2    5b
                         ret                0x0004                                        // 0x0072c6f3    c20400
                         nop                                                              // 0x0072c6f6    90
                         nop                                                              // 0x0072c6f7    90
                         nop                                                              // 0x0072c6f8    90
                         nop                                                              // 0x0072c6f9    90
                         nop                                                              // 0x0072c6fa    90
                         nop                                                              // 0x0072c6fb    90
                         nop                                                              // 0x0072c6fc    90
                         nop                                                              // 0x0072c6fd    90
                         nop                                                              // 0x0072c6fe    90
                         nop                                                              // 0x0072c6ff    90
?Save@PhysicalShield@@UAEIAAVGameOSFile@@@Z:
                         push               esi                                           // 0x0072c700    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0072c701    8b742408
                         push               edi                                           // 0x0072c705    57
                         mov.s              edi, ecx                                      // 0x0072c706    8bf9
                         push               esi                                           // 0x0072c708    56
                         call               ?Save@MapShield@@UAEIAAVGameOSFile@@@Z        // 0x0072c709    e882fcffff
                         test               eax, eax                                      // 0x0072c70e    85c0
                         {disp32} je        _jmp_addr_0x0072c9da                          // 0x0072c710    0f84c4020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0072c716    a190c9be00
                         push               ebx                                           // 0x0072c71b    53
                         push               ebp                                           // 0x0072c71c    55
                         xor.s              ebp, ebp                                      // 0x0072c71d    33ed
                         cmp.s              eax, ebp                                      // 0x0072c71f    3bc5
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c721    0f8480020000
                         push               ebp                                           // 0x0072c727    55
                         push               0x4                                           // 0x0072c728    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x68]                   // 0x0072c72a    8d5f68
                         push               ebx                                           // 0x0072c72d    53
                         mov.s              ecx, esi                                      // 0x0072c72e    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c730    e8eb010900
                         cmp                eax, 0x03                                     // 0x0072c735    83f803
                         {disp8} jne        _jmp_addr_0x0072c740                          // 0x0072c738    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c73a    892d90c9be00
_jmp_addr_0x0072c740:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c740    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c746    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072c748    8a03
                         add                eax, 0x04                                     // 0x0072c74a    83c004
                         add.s              ecx, eax                                      // 0x0072c74d    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c74f    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c755    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c75b    0f8446020000
                         push               ebp                                           // 0x0072c761    55
                         push               0x4                                           // 0x0072c762    6a04
                         {disp8} lea        ebx, dword ptr [edi + 0x6c]                   // 0x0072c764    8d5f6c
                         push               ebx                                           // 0x0072c767    53
                         mov.s              ecx, esi                                      // 0x0072c768    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c76a    e8b1010900
                         cmp                eax, 0x03                                     // 0x0072c76f    83f803
                         {disp8} jne        _jmp_addr_0x0072c77a                          // 0x0072c772    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c774    892d90c9be00
_jmp_addr_0x0072c77a:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0072c77a    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0072c780    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072c782    8a0b
                         add                ecx, 0x4                                      // 0x0072c784    83c104
                         add.s              edx, ecx                                      // 0x0072c787    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0072c789    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c78f    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c795    0f840c020000
                         push               ebp                                           // 0x0072c79b    55
                         push               0x34                                          // 0x0072c79c    6a34
                         {disp8} lea        ebx, dword ptr [edi + 0x74]                   // 0x0072c79e    8d5f74
                         push               ebx                                           // 0x0072c7a1    53
                         mov.s              ecx, esi                                      // 0x0072c7a2    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c7a4    e877010900
                         cmp                eax, 0x03                                     // 0x0072c7a9    83f803
                         {disp8} jne        _jmp_addr_0x0072c7b4                          // 0x0072c7ac    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c7ae    892d90c9be00
_jmp_addr_0x0072c7b4:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c7b4    8b8e14020000
                         xor.s              edx, edx                                      // 0x0072c7ba    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072c7bc    8a13
                         add                edx, 0x34                                     // 0x0072c7be    83c234
                         add.s              ecx, edx                                      // 0x0072c7c1    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c7c3    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c7c9    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c7cf    0f84d2010000
                         push               ebp                                           // 0x0072c7d5    55
                         push               0x34                                          // 0x0072c7d6    6a34
                         {disp32} lea       ebx, dword ptr [edi + 0x000000a8]             // 0x0072c7d8    8d9fa8000000
                         push               ebx                                           // 0x0072c7de    53
                         mov.s              ecx, esi                                      // 0x0072c7df    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c7e1    e83a010900
                         cmp                eax, 0x03                                     // 0x0072c7e6    83f803
                         {disp8} jne        _jmp_addr_0x0072c7f1                          // 0x0072c7e9    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c7eb    892d90c9be00
_jmp_addr_0x0072c7f1:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c7f1    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c7f7    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072c7f9    8a03
                         add                eax, 0x34                                     // 0x0072c7fb    83c034
                         add.s              ecx, eax                                      // 0x0072c7fe    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c800    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c806    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c80c    0f8495010000
                         push               ebp                                           // 0x0072c812    55
                         push               0x4                                           // 0x0072c813    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000dc]             // 0x0072c815    8d9fdc000000
                         push               ebx                                           // 0x0072c81b    53
                         mov.s              ecx, esi                                      // 0x0072c81c    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c81e    e8fd000900
                         cmp                eax, 0x03                                     // 0x0072c823    83f803
                         {disp8} jne        _jmp_addr_0x0072c82e                          // 0x0072c826    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c828    892d90c9be00
_jmp_addr_0x0072c82e:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0072c82e    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0072c834    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072c836    8a0b
                         add                ecx, 0x4                                      // 0x0072c838    83c104
                         add.s              edx, ecx                                      // 0x0072c83b    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0072c83d    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c843    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c849    0f8458010000
                         push               ebp                                           // 0x0072c84f    55
                         push               0x4                                           // 0x0072c850    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000e0]             // 0x0072c852    8d9fe0000000
                         push               ebx                                           // 0x0072c858    53
                         mov.s              ecx, esi                                      // 0x0072c859    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c85b    e8c0000900
                         cmp                eax, 0x03                                     // 0x0072c860    83f803
                         {disp8} jne        _jmp_addr_0x0072c86b                          // 0x0072c863    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c865    892d90c9be00
_jmp_addr_0x0072c86b:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c86b    8b8e14020000
                         xor.s              edx, edx                                      // 0x0072c871    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072c873    8a13
                         add                edx, 0x04                                     // 0x0072c875    83c204
                         add.s              ecx, edx                                      // 0x0072c878    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c87a    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c880    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c886    0f841b010000
                         push               ebp                                           // 0x0072c88c    55
                         push               0x4                                           // 0x0072c88d    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000e4]             // 0x0072c88f    8d9fe4000000
                         push               ebx                                           // 0x0072c895    53
                         mov.s              ecx, esi                                      // 0x0072c896    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c898    e883000900
                         cmp                eax, 0x03                                     // 0x0072c89d    83f803
                         {disp8} jne        _jmp_addr_0x0072c8a8                          // 0x0072c8a0    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c8a2    892d90c9be00
_jmp_addr_0x0072c8a8:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c8a8    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c8ae    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072c8b0    8a03
                         add                eax, 0x04                                     // 0x0072c8b2    83c004
                         add.s              ecx, eax                                      // 0x0072c8b5    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c8b7    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c8bd    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c8c3    0f84de000000
                         push               ebp                                           // 0x0072c8c9    55
                         push               0x4                                           // 0x0072c8ca    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000e8]             // 0x0072c8cc    8d9fe8000000
                         push               ebx                                           // 0x0072c8d2    53
                         mov.s              ecx, esi                                      // 0x0072c8d3    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c8d5    e846000900
                         cmp                eax, 0x03                                     // 0x0072c8da    83f803
                         {disp8} jne        _jmp_addr_0x0072c8e5                          // 0x0072c8dd    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c8df    892d90c9be00
_jmp_addr_0x0072c8e5:    {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0072c8e5    8b9614020000
                         xor.s              ecx, ecx                                      // 0x0072c8eb    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072c8ed    8a0b
                         add                ecx, 0x4                                      // 0x0072c8ef    83c104
                         add.s              edx, ecx                                      // 0x0072c8f2    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0072c8f4    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c8fa    392d90c9be00
                         {disp32} je        _jmp_addr_0x0072c9a7                          // 0x0072c900    0f84a1000000
                         push               ebp                                           // 0x0072c906    55
                         push               0x4                                           // 0x0072c907    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000ec]             // 0x0072c909    8d9fec000000
                         push               ebx                                           // 0x0072c90f    53
                         mov.s              ecx, esi                                      // 0x0072c910    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c912    e809000900
                         cmp                eax, 0x03                                     // 0x0072c917    83f803
                         {disp8} jne        _jmp_addr_0x0072c922                          // 0x0072c91a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c91c    892d90c9be00
_jmp_addr_0x0072c922:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c922    8b8e14020000
                         xor.s              edx, edx                                      // 0x0072c928    33d2
                         mov                dl, byte ptr [ebx]                            // 0x0072c92a    8a13
                         add                edx, 0x04                                     // 0x0072c92c    83c204
                         add.s              ecx, edx                                      // 0x0072c92f    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c931    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c937    392d90c9be00
                         {disp8} je         _jmp_addr_0x0072c9a7                          // 0x0072c93d    7468
                         push               ebp                                           // 0x0072c93f    55
                         push               0x4                                           // 0x0072c940    6a04
                         {disp32} lea       ebx, dword ptr [edi + 0x000000f0]             // 0x0072c942    8d9ff0000000
                         push               ebx                                           // 0x0072c948    53
                         mov.s              ecx, esi                                      // 0x0072c949    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c94b    e8d0ff0800
                         cmp                eax, 0x03                                     // 0x0072c950    83f803
                         {disp8} jne        _jmp_addr_0x0072c95b                          // 0x0072c953    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c955    892d90c9be00
_jmp_addr_0x0072c95b:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0072c95b    8b8e14020000
                         xor.s              eax, eax                                      // 0x0072c961    33c0
                         mov                al, byte ptr [ebx]                            // 0x0072c963    8a03
                         add                eax, 0x04                                     // 0x0072c965    83c004
                         add.s              ecx, eax                                      // 0x0072c968    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0072c96a    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], ebp        // 0x0072c970    392d90c9be00
                         {disp8} je         _jmp_addr_0x0072c9a7                          // 0x0072c976    742f
                         push               ebp                                           // 0x0072c978    55
                         push               0x1                                           // 0x0072c979    6a01
                         {disp32} lea       ebx, dword ptr [edi + 0x000000f8]             // 0x0072c97b    8d9ff8000000
                         push               ebx                                           // 0x0072c981    53
                         mov.s              ecx, esi                                      // 0x0072c982    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0072c984    e897ff0800
                         cmp                eax, 0x03                                     // 0x0072c989    83f803
                         {disp8} jne        _jmp_addr_0x0072c994                          // 0x0072c98c    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], ebp        // 0x0072c98e    892d90c9be00
_jmp_addr_0x0072c994:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0072c994    8b8614020000
                         xor.s              ecx, ecx                                      // 0x0072c99a    33c9
                         mov                cl, byte ptr [ebx]                            // 0x0072c99c    8a0b
                         inc                ecx                                           // 0x0072c99e    41
                         add.s              eax, ecx                                      // 0x0072c99f    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0072c9a1    898614020000
_jmp_addr_0x0072c9a7:    {disp8} lea        edx, dword ptr [edi + 0x70]                   // 0x0072c9a7    8d5770
                         push               edx                                           // 0x0072c9aa    52
                         mov.s              ecx, esi                                      // 0x0072c9ab    8bce
                         call               _jmp_addr_0x0050dd50                          // 0x0072c9ad    e89e13deff
                         {disp32} lea       eax, dword ptr [edi + 0x000000fc]             // 0x0072c9b2    8d87fc000000
                         push               eax                                           // 0x0072c9b8    50
                         mov.s              ecx, esi                                      // 0x0072c9b9    8bce
                         call               _jmp_addr_0x0043dc00                          // 0x0072c9bb    e84012d1ff
                         add                edi, 0x000000f4                               // 0x0072c9c0    81c7f4000000
                         push               edi                                           // 0x0072c9c6    57
                         mov.s              ecx, esi                                      // 0x0072c9c7    8bce
                         call               _jmp_addr_0x00563410                          // 0x0072c9c9    e8426ae3ff
                         pop                ebp                                           // 0x0072c9ce    5d
                         pop                ebx                                           // 0x0072c9cf    5b
                         pop                edi                                           // 0x0072c9d0    5f
                         mov                eax, 0x00000001                               // 0x0072c9d1    b801000000
                         pop                esi                                           // 0x0072c9d6    5e
                         ret                0x0004                                        // 0x0072c9d7    c20400
_jmp_addr_0x0072c9da:    pop                edi                                           // 0x0072c9da    5f
                         xor.s              eax, eax                                      // 0x0072c9db    33c0
                         pop                esi                                           // 0x0072c9dd    5e
                         ret                0x0004                                        // 0x0072c9de    c20400
                         nop                                                              // 0x0072c9e1    90
                         nop                                                              // 0x0072c9e2    90
                         nop                                                              // 0x0072c9e3    90
                         nop                                                              // 0x0072c9e4    90
                         nop                                                              // 0x0072c9e5    90
                         nop                                                              // 0x0072c9e6    90
                         nop                                                              // 0x0072c9e7    90
                         nop                                                              // 0x0072c9e8    90
                         nop                                                              // 0x0072c9e9    90
                         nop                                                              // 0x0072c9ea    90
                         nop                                                              // 0x0072c9eb    90
                         nop                                                              // 0x0072c9ec    90
                         nop                                                              // 0x0072c9ed    90
                         nop                                                              // 0x0072c9ee    90
                         nop                                                              // 0x0072c9ef    90
_jmp_addr_0x0072c9f0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072c9f0    8b442408
                         push               esi                                           // 0x0072c9f4    56
                         push               edi                                           // 0x0072c9f5    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0072c9f6    8b7c2414
                         push               edi                                           // 0x0072c9fa    57
                         mov.s              esi, ecx                                      // 0x0072c9fb    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0072c9fd    8b4c2410
                         push               eax                                           // 0x0072ca01    50
                         push               ecx                                           // 0x0072ca02    51
                         mov.s              ecx, esi                                      // 0x0072ca03    8bce
                         call               @__ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield@20                          // 0x0072ca05    e866f6ffff
                         mov.s              ecx, esi                                      // 0x0072ca0a    8bce
                         mov                dword ptr [esi], 0x00983f64                   // 0x0072ca0c    c706643f9800
                         call               _jmp_addr_0x0072cb70                          // 0x0072ca12    e859010000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0072ca17    8b155c19d000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000e0]             // 0x0072ca1d    8b8ee0000000
                         {disp32} mov       eax, dword ptr [edx + 0x00205a40]             // 0x0072ca23    8b82405a2000
                         push               ecx                                           // 0x0072ca29    51
                         mov.s              ecx, esi                                      // 0x0072ca2a    8bce
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x0072ca2c    89466c
                         call               @SetScale__6ObjectFf@12                       // 0x0072ca2f    e8ccc7f0ff
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x0072ca34    8b4664
                         {disp8} fld        dword ptr [eax + 0x6c]                        // 0x0072ca37    d9406c
                         mov.s              ecx, edi                                      // 0x0072ca3a    8bcf
                         {disp32} fmul      dword ptr [esi + 0x000000e0]                  // 0x0072ca3c    d88ee0000000
                         {disp8} fadd       dword ptr [eax + 0x68]                        // 0x0072ca42    d84068
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0072ca45    d95e1c
                         call               _jmp_addr_0x007202d0                          // 0x0072ca48    e88338ffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0xd98b8]             // 0x0072ca4d    d80db8289800
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98b4]             // 0x0072ca53    d905b4289800
                         fchs                                                             // 0x0072ca59    d9e0
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0072ca5b    d95c2414
                         {disp8} fcom       dword ptr [esp + 0x14]                        // 0x0072ca5f    d8542414
                         fnstsw             ax                                            // 0x0072ca63    dfe0
                         test               ah, 0x41                                      // 0x0072ca65    f6c441
                         {disp8} jne        _jmp_addr_0x0072ca81                          // 0x0072ca68    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0xd98b4]             // 0x0072ca6a    d815b4289800
                         fnstsw             ax                                            // 0x0072ca70    dfe0
                         test               ah, 0x01                                      // 0x0072ca72    f6c401
                         {disp8} jne        _jmp_addr_0x0072ca87                          // 0x0072ca75    7510
                         fstp               st(0)                                         // 0x0072ca77    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98b4]             // 0x0072ca79    d905b4289800
                         {disp8} jmp        _jmp_addr_0x0072ca87                          // 0x0072ca7f    eb06
_jmp_addr_0x0072ca81:    fstp               st(0)                                         // 0x0072ca81    ddd8
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0072ca83    d9442414
_jmp_addr_0x0072ca87:    fld                st(0)                                         // 0x0072ca87    d9c0
                         {disp32} fstp      dword ptr [esi + 0x000000e4]                  // 0x0072ca89    d99ee4000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072ca8f    d81d98a38a00
                         fnstsw             ax                                            // 0x0072ca95    dfe0
                         test               ah, 0x01                                      // 0x0072ca97    f6c401
                         {disp8} je         _jmp_addr_0x0072caa4                          // 0x0072ca9a    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2678]              // 0x0072ca9c    d90578b68a00
                         {disp8} jmp        _jmp_addr_0x0072caaa                          // 0x0072caa2    eb06
_jmp_addr_0x0072caa4:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072caa4    d90590a38a00
_jmp_addr_0x0072caaa:    {disp32} fmul      dword ptr [rdata_bytes + 0xd98cc]             // 0x0072caaa    d80dcc289800
                         mov.s              ecx, esi                                      // 0x0072cab0    8bce
                         {disp32} fstp      dword ptr [esi + 0x000000e8]                  // 0x0072cab2    d99ee8000000
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98b0]             // 0x0072cab8    d905b0289800
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0072cabe    d84c2418
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x0072cac2    d9542414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1c840]             // 0x0072cac6    d80d40588c00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0072cacc    8b542414
                         push               edx                                           // 0x0072cad0    52
                         {disp32} fstp      dword ptr [esi + 0x000000dc]                  // 0x0072cad1    d99edc000000
                         call               _jmp_addr_0x0072d5e0                          // 0x0072cad7    e8040b0000
                         pop                edi                                           // 0x0072cadc    5f
                         mov.s              eax, esi                                      // 0x0072cadd    8bc6
                         pop                esi                                           // 0x0072cadf    5e
                         ret                0x0010                                        // 0x0072cae0    c21000
                         nop                                                              // 0x0072cae3    90
                         nop                                                              // 0x0072cae4    90
                         nop                                                              // 0x0072cae5    90
                         nop                                                              // 0x0072cae6    90
                         nop                                                              // 0x0072cae7    90
                         nop                                                              // 0x0072cae8    90
                         nop                                                              // 0x0072cae9    90
                         nop                                                              // 0x0072caea    90
                         nop                                                              // 0x0072caeb    90
                         nop                                                              // 0x0072caec    90
                         nop                                                              // 0x0072caed    90
                         nop                                                              // 0x0072caee    90
                         nop                                                              // 0x0072caef    90
?GetAlwaysRemainsInPhysicsInternalSystem@PhysicalShield@@UAE_NXZ:
                         mov                al, 0x01                                      // 0x0072caf0    b001
                         ret                                                              // 0x0072caf2    c3
                         nop                                                              // 0x0072caf3    90
                         nop                                                              // 0x0072caf4    90
                         nop                                                              // 0x0072caf5    90
                         nop                                                              // 0x0072caf6    90
                         nop                                                              // 0x0072caf7    90
                         nop                                                              // 0x0072caf8    90
                         nop                                                              // 0x0072caf9    90
                         nop                                                              // 0x0072cafa    90
                         nop                                                              // 0x0072cafb    90
                         nop                                                              // 0x0072cafc    90
                         nop                                                              // 0x0072cafd    90
                         nop                                                              // 0x0072cafe    90
                         nop                                                              // 0x0072caff    90
?GetSaveType@PhysicalShield@@UAEIXZ:
                         mov                eax, 0x00000017                               // 0x0072cb00    b817000000
                         ret                                                              // 0x0072cb05    c3
                         nop                                                              // 0x0072cb06    90
                         nop                                                              // 0x0072cb07    90
                         nop                                                              // 0x0072cb08    90
                         nop                                                              // 0x0072cb09    90
                         nop                                                              // 0x0072cb0a    90
                         nop                                                              // 0x0072cb0b    90
                         nop                                                              // 0x0072cb0c    90
                         nop                                                              // 0x0072cb0d    90
                         nop                                                              // 0x0072cb0e    90
                         nop                                                              // 0x0072cb0f    90
?GetDebugText@PhysicalShield@@UAEPADXZ:
                         mov                eax, 0x00c22860                               // 0x0072cb10    b86028c200
                         ret                                                              // 0x0072cb15    c3
                         nop                                                              // 0x0072cb16    90
                         nop                                                              // 0x0072cb17    90
                         nop                                                              // 0x0072cb18    90
                         nop                                                              // 0x0072cb19    90
                         nop                                                              // 0x0072cb1a    90
                         nop                                                              // 0x0072cb1b    90
                         nop                                                              // 0x0072cb1c    90
                         nop                                                              // 0x0072cb1d    90
                         nop                                                              // 0x0072cb1e    90
                         nop                                                              // 0x0072cb1f    90
??_GPhysicalShield@@UAEPAXI@Z:
                         push               esi                                           // 0x0072cb20    56
                         mov.s              esi, ecx                                      // 0x0072cb21    8bf1
                         call               _jmp_addr_0x0052eac0                          // 0x0072cb23    e8981fe0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072cb28    f644240801
                         {disp8} je         _jmp_addr_0x0072cb3d                          // 0x0072cb2d    740e
                         push               0x00000100                                    // 0x0072cb2f    6800010000
                         push               esi                                           // 0x0072cb34    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072cb35    e8369ed0ff
                         add                esp, 0x08                                     // 0x0072cb3a    83c408
_jmp_addr_0x0072cb3d:    mov.s              eax, esi                                      // 0x0072cb3d    8bc6
                         pop                esi                                           // 0x0072cb3f    5e
                         ret                0x0004                                        // 0x0072cb40    c20400
                         nop                                                              // 0x0072cb43    90
                         nop                                                              // 0x0072cb44    90
                         nop                                                              // 0x0072cb45    90
                         nop                                                              // 0x0072cb46    90
                         nop                                                              // 0x0072cb47    90
                         nop                                                              // 0x0072cb48    90
                         nop                                                              // 0x0072cb49    90
                         nop                                                              // 0x0072cb4a    90
                         nop                                                              // 0x0072cb4b    90
                         nop                                                              // 0x0072cb4c    90
                         nop                                                              // 0x0072cb4d    90
                         nop                                                              // 0x0072cb4e    90
                         nop                                                              // 0x0072cb4f    90
_jmp_addr_0x0072cb50:    push               esi                                           // 0x0072cb50    56
                         mov.s              esi, ecx                                      // 0x0072cb51    8bf1
                         call               _jmp_addr_0x0072bfc0                          // 0x0072cb53    e868f4ffff
                         mov.s              ecx, esi                                      // 0x0072cb58    8bce
                         mov                dword ptr [esi], 0x00983f64                   // 0x0072cb5a    c706643f9800
                         call               _jmp_addr_0x0072cb70                          // 0x0072cb60    e80b000000
                         mov.s              eax, esi                                      // 0x0072cb65    8bc6
                         pop                esi                                           // 0x0072cb67    5e
                         ret                                                              // 0x0072cb68    c3
                         nop                                                              // 0x0072cb69    90
                         nop                                                              // 0x0072cb6a    90
                         nop                                                              // 0x0072cb6b    90
                         nop                                                              // 0x0072cb6c    90
                         nop                                                              // 0x0072cb6d    90
                         nop                                                              // 0x0072cb6e    90
                         nop                                                              // 0x0072cb6f    90
_jmp_addr_0x0072cb70:    xor.s              eax, eax                                      // 0x0072cb70    33c0
                         {disp8} mov        dword ptr [ecx + 0x6c], eax                   // 0x0072cb72    89416c
                         {disp32} mov       byte ptr [ecx + 0x000000f8], al               // 0x0072cb75    8881f8000000
                         {disp8} mov        byte ptr [ecx + 0x70], -0x01                  // 0x0072cb7b    c64170ff
                         {disp32} mov       dword ptr [ecx + 0x000000f4], eax             // 0x0072cb7f    8981f4000000
                         {disp32} mov       dword ptr [ecx + 0x000000ec], eax             // 0x0072cb85    8981ec000000
                         {disp32} mov       dword ptr [ecx + 0x000000f0], eax             // 0x0072cb8b    8981f0000000
                         {disp32} mov       dword ptr [ecx + 0x000000fc], eax             // 0x0072cb91    8981fc000000
                         mov                edx, 0x3f800000                               // 0x0072cb97    ba0000803f
                         {disp32} mov       dword ptr [ecx + 0x000000e0], edx             // 0x0072cb9c    8991e0000000
                         {disp32} mov       dword ptr [ecx + 0x000000dc], edx             // 0x0072cba2    8991dc000000
                         {disp32} mov       dword ptr [ecx + 0x000000e8], edx             // 0x0072cba8    8991e8000000
                         {disp32} mov       dword ptr [ecx + 0x000000e4], edx             // 0x0072cbae    8991e4000000
                         {disp8} mov        dword ptr [ecx + 0x68], edx                   // 0x0072cbb4    895168
                         {disp32} mov       dword ptr [ecx + 0x000000a0], eax             // 0x0072cbb7    8981a0000000
                         {disp32} mov       dword ptr [ecx + 0x0000009c], eax             // 0x0072cbbd    89819c000000
                         {disp32} mov       dword ptr [ecx + 0x00000098], eax             // 0x0072cbc3    898198000000
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax             // 0x0072cbc9    898190000000
                         {disp32} mov       dword ptr [ecx + 0x0000008c], eax             // 0x0072cbcf    89818c000000
                         {disp32} mov       dword ptr [ecx + 0x00000088], eax             // 0x0072cbd5    898188000000
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x0072cbdb    898180000000
                         {disp8} mov        dword ptr [ecx + 0x7c], eax                   // 0x0072cbe1    89417c
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x0072cbe4    894178
                         {disp32} mov       dword ptr [ecx + 0x00000094], edx             // 0x0072cbe7    899194000000
                         {disp32} mov       dword ptr [ecx + 0x00000084], edx             // 0x0072cbed    899184000000
                         {disp8} mov        dword ptr [ecx + 0x74], edx                   // 0x0072cbf3    895174
                         {disp32} mov       dword ptr [ecx + 0x000000a4], edx             // 0x0072cbf6    8991a4000000
                         {disp32} mov       dword ptr [ecx + 0x000000d4], eax             // 0x0072cbfc    8981d4000000
                         {disp32} mov       dword ptr [ecx + 0x000000d0], eax             // 0x0072cc02    8981d0000000
                         {disp32} mov       dword ptr [ecx + 0x000000cc], eax             // 0x0072cc08    8981cc000000
                         {disp32} mov       dword ptr [ecx + 0x000000c4], eax             // 0x0072cc0e    8981c4000000
                         {disp32} mov       dword ptr [ecx + 0x000000c0], eax             // 0x0072cc14    8981c0000000
                         {disp32} mov       dword ptr [ecx + 0x000000bc], eax             // 0x0072cc1a    8981bc000000
                         {disp32} mov       dword ptr [ecx + 0x000000b4], eax             // 0x0072cc20    8981b4000000
                         {disp32} mov       dword ptr [ecx + 0x000000b0], eax             // 0x0072cc26    8981b0000000
                         {disp32} mov       dword ptr [ecx + 0x000000ac], eax             // 0x0072cc2c    8981ac000000
                         {disp32} mov       dword ptr [ecx + 0x000000c8], edx             // 0x0072cc32    8991c8000000
                         {disp32} mov       dword ptr [ecx + 0x000000b8], edx             // 0x0072cc38    8991b8000000
                         {disp32} mov       dword ptr [ecx + 0x000000a8], edx             // 0x0072cc3e    8991a8000000
                         {disp32} mov       dword ptr [ecx + 0x000000d8], edx             // 0x0072cc44    8991d8000000
                         ret                                                              // 0x0072cc4a    c3
                         nop                                                              // 0x0072cc4b    90
                         nop                                                              // 0x0072cc4c    90
                         nop                                                              // 0x0072cc4d    90
                         nop                                                              // 0x0072cc4e    90
                         nop                                                              // 0x0072cc4f    90
?ToBeDeleted@PhysicalShield@@UAEXH@Z:
                         push               esi                                           // 0x0072cc50    56
                         mov.s              esi, ecx                                      // 0x0072cc51    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x0072cc53    8b8ef4000000
                         test               ecx, ecx                                      // 0x0072cc59    85c9
                         {disp8} je         _jmp_addr_0x0072cc6e                          // 0x0072cc5b    7411
                         mov                eax, dword ptr [ecx]                          // 0x0072cc5d    8b01
                         push               0x1                                           // 0x0072cc5f    6a01
                         call               dword ptr [eax + 4]                           // 0x0072cc61    ff5004
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x0072cc64    c786f400000000000000
_jmp_addr_0x0072cc6e:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072cc6e    8b4c2408
                         push               ecx                                           // 0x0072cc72    51
                         mov.s              ecx, esi                                      // 0x0072cc73    8bce
                         call               ?ToBeDeleted@MapShield@@UAEXH@Z               // 0x0072cc75    e876f4ffff
                         pop                esi                                           // 0x0072cc7a    5e
                         ret                0x0004                                        // 0x0072cc7b    c20400
                         nop                                                              // 0x0072cc7e    90
                         nop                                                              // 0x0072cc7f    90
?IsEffectReceiver@PhysicalShield@@UAEIPAVEffectValues@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072cc80    8b442404
                         test               eax, eax                                      // 0x0072cc84    85c0
                         {disp8} je         _jmp_addr_0x0072cc9d                          // 0x0072cc86    7415
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0072cc88    d94008
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072cc8b    d81d98a38a00
                         fnstsw             ax                                            // 0x0072cc91    dfe0
                         test               ah, 0x40                                      // 0x0072cc93    f6c440
                         {disp8} jne        _jmp_addr_0x0072cc9d                          // 0x0072cc96    7505
                         xor.s              eax, eax                                      // 0x0072cc98    33c0
                         ret                0x0004                                        // 0x0072cc9a    c20400
_jmp_addr_0x0072cc9d:    mov                eax, 0x00000001                               // 0x0072cc9d    b801000000
                         ret                0x0004                                        // 0x0072cca2    c20400
                         nop                                                              // 0x0072cca5    90
                         nop                                                              // 0x0072cca6    90
                         nop                                                              // 0x0072cca7    90
                         nop                                                              // 0x0072cca8    90
                         nop                                                              // 0x0072cca9    90
                         nop                                                              // 0x0072ccaa    90
                         nop                                                              // 0x0072ccab    90
                         nop                                                              // 0x0072ccac    90
                         nop                                                              // 0x0072ccad    90
                         nop                                                              // 0x0072ccae    90
                         nop                                                              // 0x0072ccaf    90
?CallVirtualFunctionsForCreation@PhysicalShield@@UAEXABUMapCoords@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072ccb0    8b442404
                         push               esi                                           // 0x0072ccb4    56
                         mov.s              esi, ecx                                      // 0x0072ccb5    8bf1
                         push               eax                                           // 0x0072ccb7    50
                         call               ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z                          // 0x0072ccb8    e8c31be0ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072ccbd    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x0072ccc0    8b11
                         push               0xd                                           // 0x0072ccc2    6a0d
                         push               0x5                                           // 0x0072ccc4    6a05
                         call               dword ptr [edx + 0xf8]                        // 0x0072ccc6    ff92f8000000
                         push               eax                                           // 0x0072cccc    50
                         call               _jmp_addr_0x0057e220                          // 0x0072cccd    e84e15e5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072ccd2    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072ccd5    8b01
                         add                esp, 0x0c                                     // 0x0072ccd7    83c40c
                         push               0xd                                           // 0x0072ccda    6a0d
                         push               0x4                                           // 0x0072ccdc    6a04
                         call               dword ptr [eax + 0xf8]                        // 0x0072ccde    ff90f8000000
                         push               eax                                           // 0x0072cce4    50
                         call               _jmp_addr_0x0057e220                          // 0x0072cce5    e83615e5ff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072ccea    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072cced    8b01
                         add                esp, 0x0c                                     // 0x0072ccef    83c40c
                         xor.s              edx, edx                                      // 0x0072ccf2    33d2
                         call               dword ptr [eax + 0x78]                        // 0x0072ccf4    ff5078
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072ccf7    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072ccfa    8b01
                         xor.s              edx, edx                                      // 0x0072ccfc    33d2
                         call               dword ptr [eax + 0x80]                        // 0x0072ccfe    ff9080000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072cd04    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072cd07    8b01
                         xor.s              edx, edx                                      // 0x0072cd09    33d2
                         call               dword ptr [eax + 0x88]                        // 0x0072cd0b    ff9088000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072cd11    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072cd14    8b01
                         xor.s              edx, edx                                      // 0x0072cd16    33d2
                         call               dword ptr [eax + 0x98]                        // 0x0072cd18    ff9098000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072cd1e    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x0072cd21    8b11
                         call               dword ptr [edx + 0x1e8]                       // 0x0072cd23    ff92e8010000
                         test               byte ptr [esi + 0x0a], 0x01                   // 0x0072cd29    f6460a01
                         {disp8} jne        _jmp_addr_0x0072cd38                          // 0x0072cd2d    7509
                         push               esi                                           // 0x0072cd2f    56
                         call               _jmp_addr_0x00644df0                          // 0x0072cd30    e8bb80f1ff
                         add                esp, 0x04                                     // 0x0072cd35    83c404
_jmp_addr_0x0072cd38:    pop                esi                                           // 0x0072cd38    5e
                         ret                0x0004                                        // 0x0072cd39    c20400
                         nop                                                              // 0x0072cd3c    90
                         nop                                                              // 0x0072cd3d    90
                         nop                                                              // 0x0072cd3e    90
                         nop                                                              // 0x0072cd3f    90
_jmp_addr_0x0072cd40:    sub                esp, 0x1c                                     // 0x0072cd40    83ec1c
                         push               ebx                                           // 0x0072cd43    53
                         mov.s              ebx, ecx                                      // 0x0072cd44    8bd9
                         {disp8} mov        eax, dword ptr [ebx + 0x40]                   // 0x0072cd46    8b4340
                         push               esi                                           // 0x0072cd49    56
                         push               edi                                           // 0x0072cd4a    57
                         {disp8} lea        edx, dword ptr [eax + 0x14]                   // 0x0072cd4b    8d5014
                         mov.s              esi, edx                                      // 0x0072cd4e    8bf2
                         {disp32} lea       edi, dword ptr [ebx + 0x000000a8]             // 0x0072cd50    8dbba8000000
                         mov                ecx, 0x0000000c                               // 0x0072cd56    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0072cd5b    f3a5
                         mov.s              esi, edx                                      // 0x0072cd5d    8bf2
                         {disp8} lea        edi, dword ptr [ebx + 0x74]                   // 0x0072cd5f    8d7b74
                         mov                ecx, 0x0000000c                               // 0x0072cd62    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0072cd67    f3a5
                         {disp8} fld        dword ptr [eax + 0x44]                        // 0x0072cd69    d94044
                         {disp32} fst       dword ptr [ebx + 0x000000d8]                  // 0x0072cd6c    d993d8000000
                         mov                eax, dword ptr [ebx]                          // 0x0072cd72    8b03
                         mov.s              ecx, ebx                                      // 0x0072cd74    8bcb
                         {disp32} fstp      dword ptr [ebx + 0x000000a4]                  // 0x0072cd76    d99ba4000000
                         call               dword ptr [eax + 0x868]                       // 0x0072cd7c    ff9068080000
                         mov                edx, dword ptr [ebx]                          // 0x0072cd82    8b13
                         mov.s              ecx, ebx                                      // 0x0072cd84    8bcb
                         call               dword ptr [edx + 0x868]                       // 0x0072cd86    ff9268080000
                         {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0072cd8c    8b431c
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x0072cd8f    8d7314
                         mov.s              ecx, esi                                      // 0x0072cd92    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0072cd94    8944240c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0072cd98    e8f3620d00
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x0072cd9d    d844240c
                         push               0x0                                           // 0x0072cda1    6a00
                         push               0x3f800000                                    // 0x0072cda3    680000803f
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0072cda8    d95c2428
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0072cdac    8d4c2418
                         fild               dword ptr [esi]                               // 0x0072cdb0    db06
                         push               ecx                                           // 0x0072cdb2    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0072cdb3    8d542428
                         push               edx                                           // 0x0072cdb7    52
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072cdb8    d80da4a38a00
                         push               0x43                                          // 0x0072cdbe    6a43
                         push               0x0                                           // 0x0072cdc0    6a00
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0072cdc2    c744242800000000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0072cdca    d95c2434
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0072cdce    c744242c00000000
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0072cdd6    db4604
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0072cdd9    c744243000000000
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072cde1    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0072cde7    d95c243c
                         call               _jmp_addr_0x0068f2f0                          // 0x0072cdeb    e80025f6ff
                         add                esp, 0x18                                     // 0x0072cdf0    83c418
                         test               eax, eax                                      // 0x0072cdf3    85c0
                         {disp32} mov       dword ptr [ebx + 0x000000f4], eax             // 0x0072cdf5    8983f4000000
                         {disp8} je         _jmp_addr_0x0072ce39                          // 0x0072cdfb    743c
                         {disp8} mov        ecx, dword ptr [ebx + 0x60]                   // 0x0072cdfd    8b4b60
                         test               ecx, ecx                                      // 0x0072ce00    85c9
                         {disp8} je         _jmp_addr_0x0072ce39                          // 0x0072ce02    7435
                         mov                esi, dword ptr [eax]                          // 0x0072ce04    8b30
                         mov                eax, dword ptr [ebx]                          // 0x0072ce06    8b03
                         mov.s              ecx, ebx                                      // 0x0072ce08    8bcb
                         call               dword ptr [eax + 0x1c]                        // 0x0072ce0a    ff501c
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f4]             // 0x0072ce0d    8b8bf4000000
                         push               eax                                           // 0x0072ce13    50
                         call               dword ptr [esi + 0x20]                        // 0x0072ce14    ff5620
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f4]             // 0x0072ce17    8b8bf4000000
                         mov                edx, dword ptr [ecx]                          // 0x0072ce1d    8b11
                         push               ebx                                           // 0x0072ce1f    53
                         call               dword ptr [edx + 0x114]                       // 0x0072ce20    ff9214010000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f4]             // 0x0072ce26    8b8bf4000000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0072ce2c    8b54242c
                         mov                eax, dword ptr [ecx]                          // 0x0072ce30    8b01
                         push               edx                                           // 0x0072ce32    52
                         call               dword ptr [eax + 0x11c]                       // 0x0072ce33    ff901c010000
_jmp_addr_0x0072ce39:    pop                edi                                           // 0x0072ce39    5f
                         pop                esi                                           // 0x0072ce3a    5e
                         pop                ebx                                           // 0x0072ce3b    5b
                         add                esp, 0x1c                                     // 0x0072ce3c    83c41c
                         ret                0x0004                                        // 0x0072ce3f    c20400
                         nop                                                              // 0x0072ce42    90
                         nop                                                              // 0x0072ce43    90
                         nop                                                              // 0x0072ce44    90
                         nop                                                              // 0x0072ce45    90
                         nop                                                              // 0x0072ce46    90
                         nop                                                              // 0x0072ce47    90
                         nop                                                              // 0x0072ce48    90
                         nop                                                              // 0x0072ce49    90
                         nop                                                              // 0x0072ce4a    90
                         nop                                                              // 0x0072ce4b    90
                         nop                                                              // 0x0072ce4c    90
                         nop                                                              // 0x0072ce4d    90
                         nop                                                              // 0x0072ce4e    90
                         nop                                                              // 0x0072ce4f    90
?Get3DType@PhysicalShield@@UAE?AW4LH3DObject__ObjectType@@XZ:
                         mov                eax, 0x00000001                               // 0x0072ce50    b801000000
                         ret                                                              // 0x0072ce55    c3
                         nop                                                              // 0x0072ce56    90
                         nop                                                              // 0x0072ce57    90
                         nop                                                              // 0x0072ce58    90
                         nop                                                              // 0x0072ce59    90
                         nop                                                              // 0x0072ce5a    90
                         nop                                                              // 0x0072ce5b    90
                         nop                                                              // 0x0072ce5c    90
                         nop                                                              // 0x0072ce5d    90
                         nop                                                              // 0x0072ce5e    90
                         nop                                                              // 0x0072ce5f    90
?ApplyEffect@PhysicalShield@@UAEXAAVEffectValues@@H@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072ce60    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072ce64    8b542404
                         push               eax                                           // 0x0072ce68    50
                         push               edx                                           // 0x0072ce69    52
                         call               ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z                          // 0x0072ce6a    e811abf0ff
                         ret                0x0008                                        // 0x0072ce6f    c20800
                         nop                                                              // 0x0072ce72    90
                         nop                                                              // 0x0072ce73    90
                         nop                                                              // 0x0072ce74    90
                         nop                                                              // 0x0072ce75    90
                         nop                                                              // 0x0072ce76    90
                         nop                                                              // 0x0072ce77    90
                         nop                                                              // 0x0072ce78    90
                         nop                                                              // 0x0072ce79    90
                         nop                                                              // 0x0072ce7a    90
                         nop                                                              // 0x0072ce7b    90
                         nop                                                              // 0x0072ce7c    90
                         nop                                                              // 0x0072ce7d    90
                         nop                                                              // 0x0072ce7e    90
                         nop                                                              // 0x0072ce7f    90
?DestroyedByEffect@PhysicalShield@@UAEIPAVGPlayer@@M@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072ce80    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072ce84    8b542404
                         push               eax                                           // 0x0072ce88    50
                         push               edx                                           // 0x0072ce89    52
                         call               ?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z// 0x0072ce8a    e851aaf0ff
                         ret                0x0008                                        // 0x0072ce8f    c20800
                         nop                                                              // 0x0072ce92    90
                         nop                                                              // 0x0072ce93    90
                         nop                                                              // 0x0072ce94    90
                         nop                                                              // 0x0072ce95    90
                         nop                                                              // 0x0072ce96    90
                         nop                                                              // 0x0072ce97    90
                         nop                                                              // 0x0072ce98    90
                         nop                                                              // 0x0072ce99    90
                         nop                                                              // 0x0072ce9a    90
                         nop                                                              // 0x0072ce9b    90
                         nop                                                              // 0x0072ce9c    90
                         nop                                                              // 0x0072ce9d    90
                         nop                                                              // 0x0072ce9e    90
                         nop                                                              // 0x0072ce9f    90
?Draw@PhysicalShield@@UAEXXZ:
                         ret                                                              // 0x0072cea0    c3
                         nop                                                              // 0x0072cea1    90
                         nop                                                              // 0x0072cea2    90
                         nop                                                              // 0x0072cea3    90
                         nop                                                              // 0x0072cea4    90
                         nop                                                              // 0x0072cea5    90
                         nop                                                              // 0x0072cea6    90
                         nop                                                              // 0x0072cea7    90
                         nop                                                              // 0x0072cea8    90
                         nop                                                              // 0x0072cea9    90
                         nop                                                              // 0x0072ceaa    90
                         nop                                                              // 0x0072ceab    90
                         nop                                                              // 0x0072ceac    90
                         nop                                                              // 0x0072cead    90
                         nop                                                              // 0x0072ceae    90
                         nop                                                              // 0x0072ceaf    90
?SetUpPhysOb@PhysicalShield@@UAEXPAUPhysOb@@@Z:
                         push               esi                                           // 0x0072ceb0    56
                         mov.s              esi, ecx                                      // 0x0072ceb1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072ceb3    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072ceb6    8b01
                         call               dword ptr [eax + 0x1e8]                       // 0x0072ceb8    ff90e8010000
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072cebe    8b4c2408
                         push               ecx                                           // 0x0072cec2    51
                         mov.s              ecx, esi                                      // 0x0072cec3    8bce
                         call               ?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z        // 0x0072cec5    e8e6a7f0ff
                         pop                esi                                           // 0x0072ceca    5e
                         ret                0x0004                                        // 0x0072cecb    c20400
                         nop                                                              // 0x0072cece    90
                         nop                                                              // 0x0072cecf    90
?DrawShield@PhysicalShield@@UAEXXZ:
                         sub                esp, 0x0c                                     // 0x0072ced0    83ec0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0072ced3    a15c19d000
                         push               ebx                                           // 0x0072ced8    53
                         push               esi                                           // 0x0072ced9    56
                         mov.s              esi, ecx                                      // 0x0072ceda    8bf1
                         {disp32} fld       dword ptr [esi + 0x000000a4]                  // 0x0072cedc    d986a4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072cee2    8b4e40
                         {disp32} fsub      dword ptr [esi + 0x000000d8]                  // 0x0072cee5    d8a6d8000000
                         push               edi                                           // 0x0072ceeb    57
                         {disp32} fmul      dword ptr [eax + 0x00205d64]                  // 0x0072ceec    d888645d2000
                         {disp32} fadd      dword ptr [esi + 0x000000d8]                  // 0x0072cef2    d886d8000000
                         {disp8} fstp       dword ptr [ecx + 0x44]                        // 0x0072cef8    d95944
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0072cefb    8b155c19d000
                         {disp32} fld       dword ptr [edx + 0x00205d64]                  // 0x0072cf01    d982645d2000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0072cf07    8b4640
                         {disp8} fld        dword ptr [esi + 0x74]                        // 0x0072cf0a    d94674
                         add                eax, 0x14                                     // 0x0072cf0d    83c014
                         {disp32} fsub      dword ptr [esi + 0x000000a8]                  // 0x0072cf10    d8a6a8000000
                         fmul               st, st(1)                                     // 0x0072cf16    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000a8]                  // 0x0072cf18    d886a8000000
                         fstp               dword ptr [eax]                               // 0x0072cf1e    d918
                         {disp8} fld        dword ptr [esi + 0x78]                        // 0x0072cf20    d94678
                         {disp32} fsub      dword ptr [esi + 0x000000ac]                  // 0x0072cf23    d8a6ac000000
                         fmul               st, st(1)                                     // 0x0072cf29    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000ac]                  // 0x0072cf2b    d886ac000000
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0072cf31    d95804
                         {disp8} fld        dword ptr [esi + 0x7c]                        // 0x0072cf34    d9467c
                         {disp32} fsub      dword ptr [esi + 0x000000b0]                  // 0x0072cf37    d8a6b0000000
                         fmul               st, st(1)                                     // 0x0072cf3d    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000b0]                  // 0x0072cf3f    d886b0000000
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0072cf45    d95808
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x0072cf48    d98680000000
                         {disp32} fsub      dword ptr [esi + 0x000000b4]                  // 0x0072cf4e    d8a6b4000000
                         fmul               st, st(1)                                     // 0x0072cf54    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000b4]                  // 0x0072cf56    d886b4000000
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0072cf5c    d9580c
                         {disp32} fld       dword ptr [esi + 0x00000084]                  // 0x0072cf5f    d98684000000
                         {disp32} fsub      dword ptr [esi + 0x000000b8]                  // 0x0072cf65    d8a6b8000000
                         fmul               st, st(1)                                     // 0x0072cf6b    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000b8]                  // 0x0072cf6d    d886b8000000
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0072cf73    d95810
                         {disp32} fld       dword ptr [esi + 0x00000088]                  // 0x0072cf76    d98688000000
                         {disp32} fsub      dword ptr [esi + 0x000000bc]                  // 0x0072cf7c    d8a6bc000000
                         fmul               st, st(1)                                     // 0x0072cf82    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000bc]                  // 0x0072cf84    d886bc000000
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0072cf8a    d95814
                         {disp32} fld       dword ptr [esi + 0x0000008c]                  // 0x0072cf8d    d9868c000000
                         {disp32} fsub      dword ptr [esi + 0x000000c0]                  // 0x0072cf93    d8a6c0000000
                         fmul               st, st(1)                                     // 0x0072cf99    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000c0]                  // 0x0072cf9b    d886c0000000
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0072cfa1    d95818
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x0072cfa4    d98690000000
                         {disp32} fsub      dword ptr [esi + 0x000000c4]                  // 0x0072cfaa    d8a6c4000000
                         fmul               st, st(1)                                     // 0x0072cfb0    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000c4]                  // 0x0072cfb2    d886c4000000
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x0072cfb8    d9581c
                         {disp32} fld       dword ptr [esi + 0x00000094]                  // 0x0072cfbb    d98694000000
                         {disp32} fsub      dword ptr [esi + 0x000000c8]                  // 0x0072cfc1    d8a6c8000000
                         fmul               st, st(1)                                     // 0x0072cfc7    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000c8]                  // 0x0072cfc9    d886c8000000
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0072cfcf    d95820
                         {disp32} fld       dword ptr [esi + 0x00000098]                  // 0x0072cfd2    d98698000000
                         {disp32} fsub      dword ptr [esi + 0x000000cc]                  // 0x0072cfd8    d8a6cc000000
                         fmul               st, st(1)                                     // 0x0072cfde    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000cc]                  // 0x0072cfe0    d886cc000000
                         {disp8} fstp       dword ptr [eax + 0x24]                        // 0x0072cfe6    d95824
                         {disp32} fld       dword ptr [esi + 0x0000009c]                  // 0x0072cfe9    d9869c000000
                         {disp32} fsub      dword ptr [esi + 0x000000d0]                  // 0x0072cfef    d8a6d0000000
                         fmul               st, st(1)                                     // 0x0072cff5    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000d0]                  // 0x0072cff7    d886d0000000
                         {disp8} fstp       dword ptr [eax + 0x28]                        // 0x0072cffd    d95828
                         {disp32} fld       dword ptr [esi + 0x000000a0]                  // 0x0072d000    d986a0000000
                         {disp32} fsub      dword ptr [esi + 0x000000d4]                  // 0x0072d006    d8a6d4000000
                         fmul               st, st(1)                                     // 0x0072d00c    d8c9
                         {disp32} fadd      dword ptr [esi + 0x000000d4]                  // 0x0072d00e    d886d4000000
                         {disp8} fstp       dword ptr [eax + 0x2c]                        // 0x0072d014    d9582c
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072d017    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072d01a    8b01
                         fstp               st(0)                                         // 0x0072d01c    ddd8
                         call               dword ptr [eax + 0x1e8]                       // 0x0072d01e    ff90e8010000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0072d024    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0072d02a    8b91405a2000
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0072d030    8b4e6c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x0072d033    a1381ad000
                         sub.s              edx, ecx                                      // 0x0072d038    2bd1
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d03a    8b4e60
                         test               ecx, ecx                                      // 0x0072d03d    85c9
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0072d03f    89542410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0072d043    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0072d04b    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0072d04f    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0072d053    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0072d05b    df6c2410
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0072d05f    d80db0a38a00
                         fmulp              st(1), st                                     // 0x0072d065    dec9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0072d067    d95c240c
                         {disp8} je         _jmp_addr_0x0072d0aa                          // 0x0072d06b    743d
                         call               _jmp_addr_0x00720750                          // 0x0072d06d    e8de36ffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d072    d90590a38a00
                         fcomp              st(1)                                         // 0x0072d078    d8d9
                         fnstsw             ax                                            // 0x0072d07a    dfe0
                         test               ah, 0x01                                      // 0x0072d07c    f6c401
                         {disp8} je         _jmp_addr_0x0072d089                          // 0x0072d07f    7408
                         fstp               st(0)                                         // 0x0072d081    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d083    d90590a38a00
_jmp_addr_0x0072d089:    {disp32} fmul      dword ptr [__real@437f0000]                   // 0x0072d089    d80d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x0072d08f    e86c430700
                         cmp                al, 0x28                                      // 0x0072d094    3c28
                         {disp8} mov        byte ptr [esi + 0x70], al                     // 0x0072d096    884670
                         {disp8} jae        _jmp_addr_0x0072d0a2                          // 0x0072d099    7307
                         mov                eax, 0x00000028                               // 0x0072d09b    b828000000
                         {disp8} jmp        _jmp_addr_0x0072d0a7                          // 0x0072d0a0    eb05
_jmp_addr_0x0072d0a2:    and                eax, 0x000000ff                               // 0x0072d0a2    25ff000000
_jmp_addr_0x0072d0a7:    {disp8} mov        byte ptr [esi + 0x70], al                     // 0x0072d0a7    884670
_jmp_addr_0x0072d0aa:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072d0aa    d944240c
                         {disp8} mov        bl, byte ptr [esi + 0x70]                     // 0x0072d0ae    8a5e70
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xd98bc]             // 0x0072d0b1    d81dbc289800
                         {disp8} mov        byte ptr [esp + 0x10], bl                     // 0x0072d0b7    885c2410
                         fnstsw             ax                                            // 0x0072d0bb    dfe0
                         test               ah, 0x41                                      // 0x0072d0bd    f6c441
                         {disp8} jne        _jmp_addr_0x0072d0e7                          // 0x0072d0c0    7525
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0072d0c2    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x0072d0c5    8b01
                         mov                edx, 0x00000001                               // 0x0072d0c7    ba01000000
                         call               dword ptr [eax + 0x48]                        // 0x0072d0cc    ff5048
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x0072d0cf    8b7e40
                         push               0x0                                           // 0x0072d0d2    6a00
                         or                 edx, 0xffffffff                               // 0x0072d0d4    83caff
                         mov.s              ecx, edi                                      // 0x0072d0d7    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x0072d0d9    e8e2ed0d00
                         xor.s              edx, edx                                      // 0x0072d0de    33d2
                         mov.s              ecx, edi                                      // 0x0072d0e0    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x0072d0e2    e8e9e4f0ff
_jmp_addr_0x0072d0e7:    {disp32} mov       edi, dword ptr [esi + 0x000000f4]             // 0x0072d0e7    8bbef4000000
                         test               edi, edi                                      // 0x0072d0ed    85ff
                         {disp8} je         _jmp_addr_0x0072d166                          // 0x0072d0ef    7475
                         {disp32} mov       al, byte ptr [esi + 0x000000f8]               // 0x0072d0f1    8a86f8000000
                         test               al, al                                        // 0x0072d0f7    84c0
                         {disp8} je         _jmp_addr_0x0072d150                          // 0x0072d0f9    7455
                         {disp32} fld       dword ptr [esi + 0x000000fc]                  // 0x0072d0fb    d986fc000000
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd98c8]             // 0x0072d101    d835c8289800
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0072d107    d81590a38a00
                         fnstsw             ax                                            // 0x0072d10d    dfe0
                         test               ah, 0x41                                      // 0x0072d10f    f6c441
                         {disp8} jne        _jmp_addr_0x0072d12b                          // 0x0072d112    7517
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0072d114    d81598a38a00
                         fnstsw             ax                                            // 0x0072d11a    dfe0
                         test               ah, 0x01                                      // 0x0072d11c    f6c401
                         {disp8} jne        _jmp_addr_0x0072d133                          // 0x0072d11f    7512
                         fstp               st(0)                                         // 0x0072d121    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072d123    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0072d133                          // 0x0072d129    eb08
_jmp_addr_0x0072d12b:    fstp               st(0)                                         // 0x0072d12b    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d12d    d90590a38a00
_jmp_addr_0x0072d133:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0072d133    8b4c2410
                         and                ecx, 0x000000ff                               // 0x0072d137    81e1ff000000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0072d13d    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0072d141    db442410
                         fmul               st, st(1)                                     // 0x0072d145    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x0072d147    e8b4420700
                         fstp               st(0)                                         // 0x0072d14c    ddd8
                         mov.s              bl, al                                        // 0x0072d14e    8ad8
_jmp_addr_0x0072d150:    {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x0072d150    8b5714
                         {disp8} mov        byte ptr [edx + 0x6c], bl                     // 0x0072d153    885a6c
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x0072d156    8b8ef4000000
                         mov                eax, dword ptr [ecx]                          // 0x0072d15c    8b01
                         push               0x1                                           // 0x0072d15e    6a01
                         call               dword ptr [eax + 0x108]                       // 0x0072d160    ff9008010000
_jmp_addr_0x0072d166:    pop                edi                                           // 0x0072d166    5f
                         pop                esi                                           // 0x0072d167    5e
                         pop                ebx                                           // 0x0072d168    5b
                         add                esp, 0x0c                                     // 0x0072d169    83c40c
                         ret                                                              // 0x0072d16c    c3
                         nop                                                              // 0x0072d16d    90
                         nop                                                              // 0x0072d16e    90
                         nop                                                              // 0x0072d16f    90
?SetDying@PhysicalShield@@UAE_NXZ:
                         mov                eax, 0x00000001                               // 0x0072d170    b801000000
                         {disp32} mov       byte ptr [ecx + 0x000000f8], al               // 0x0072d175    8881f8000000
                         {disp8} mov        dword ptr [ecx + 0x60], 0x00000000            // 0x0072d17b    c7416000000000
                         ret                                                              // 0x0072d182    c3
                         nop                                                              // 0x0072d183    90
                         nop                                                              // 0x0072d184    90
                         nop                                                              // 0x0072d185    90
                         nop                                                              // 0x0072d186    90
                         nop                                                              // 0x0072d187    90
                         nop                                                              // 0x0072d188    90
                         nop                                                              // 0x0072d189    90
                         nop                                                              // 0x0072d18a    90
                         nop                                                              // 0x0072d18b    90
                         nop                                                              // 0x0072d18c    90
                         nop                                                              // 0x0072d18d    90
                         nop                                                              // 0x0072d18e    90
                         nop                                                              // 0x0072d18f    90
?ProcessShield@PhysicalShield@@UAEXXZ:
                         sub                esp, 0x58                                     // 0x0072d190    83ec58
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x0072d193    a1381ad000
                         push               ebx                                           // 0x0072d198    53
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0072d199    8944240c
                         push               esi                                           // 0x0072d19d    56
                         xor.s              esi, esi                                      // 0x0072d19e    33f6
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0072d1a0    89742414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0072d1a4    df6c2410
                         mov.s              ebx, ecx                                      // 0x0072d1a8    8bd9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0072d1aa    8b0d5c19d000
                         {disp8} mov        eax, dword ptr [ebx + 0x6c]                   // 0x0072d1b0    8b436c
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x0072d1b3    d80db0a38a00
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x0072d1b9    8b91405a2000
                         sub.s              edx, eax                                      // 0x0072d1bf    2bd0
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0072d1c1    89542410
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0072d1c5    d95c240c
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0072d1c9    89742414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0072d1cd    df6c2410
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0072d1d1    d84c240c
                         {disp32} fcom      dword ptr [rdata_bytes + 0xd98bc]             // 0x0072d1d5    d815bc289800
                         fnstsw             ax                                            // 0x0072d1db    dfe0
                         test               ah, 0x01                                      // 0x0072d1dd    f6c401
                         {disp8} je         _jmp_addr_0x0072d1f3                          // 0x0072d1e0    7411
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd98bc]             // 0x0072d1e2    d835bc289800
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0072d1e8    d82d90a38a00
                         {disp32} jmp       _jmp_addr_0x0072d2af                          // 0x0072d1ee    e9bc000000
_jmp_addr_0x0072d1f3:    {disp32} fsub      dword ptr [rdata_bytes + 0xd98bc]             // 0x0072d1f3    d825bc289800
                         {disp32} fcom      dword ptr [rdata_bytes + 0xd98c4]             // 0x0072d1f9    d815c4289800
                         fnstsw             ax                                            // 0x0072d1ff    dfe0
                         test               ah, 0x01                                      // 0x0072d201    f6c401
                         {disp8} jne        _jmp_addr_0x0072d210                          // 0x0072d204    750a
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000            // 0x0072d206    c74424100000803f
                         {disp8} jmp        _jmp_addr_0x0072d230                          // 0x0072d20e    eb20
_jmp_addr_0x0072d210:    fld                st(0)                                         // 0x0072d210    d9c0
                         {disp32} fdiv      dword ptr [rdata_bytes + 0xd98c4]             // 0x0072d212    d835c4289800
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d218    d90590a38a00
                         fsub               st, st(1)                                     // 0x0072d21e    d8e1
                         fmul               st, st(1)                                     // 0x0072d220    d8c9
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0072d222    d80590a38a00
                         fmul               st, st(1)                                     // 0x0072d228    d8c9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0072d22a    d95c2410
                         fstp               st(0)                                         // 0x0072d22e    ddd8
_jmp_addr_0x0072d230:    {disp32} fcom      dword ptr [rdata_bytes + 0xd98c0]             // 0x0072d230    d815c0289800
                         fnstsw             ax                                            // 0x0072d236    dfe0
                         test               ah, 0x01                                      // 0x0072d238    f6c401
                         {disp8} jne        _jmp_addr_0x0072d249                          // 0x0072d23b    750c
                         fstp               st(0)                                         // 0x0072d23d    ddd8
                         {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x0072d23f    c74424080000803f
                         {disp8} jmp        _jmp_addr_0x0072d267                          // 0x0072d247    eb1e
_jmp_addr_0x0072d249:    {disp32} fdiv      dword ptr [rdata_bytes + 0xd98c0]             // 0x0072d249    d835c0289800
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d24f    d90590a38a00
                         fsub               st, st(1)                                     // 0x0072d255    d8e1
                         fmul               st, st(1)                                     // 0x0072d257    d8c9
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0072d259    d80590a38a00
                         fmul               st, st(1)                                     // 0x0072d25f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0072d261    d95c2408
                         fstp               st(0)                                         // 0x0072d265    ddd8
_jmp_addr_0x0072d267:    {disp32} fld       dword ptr [ebx + 0x000000e8]                  // 0x0072d267    d983e8000000
                         {disp32} fsub      dword ptr [ebx + 0x000000e4]                  // 0x0072d26d    d8a3e4000000
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0072d273    d84c2408
                         {disp32} fadd      dword ptr [ebx + 0x000000e4]                  // 0x0072d277    d883e4000000
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0072d27d    d84c240c
                         {disp32} fadd      dword ptr [ebx + 0x000000ec]                  // 0x0072d281    d883ec000000
                         {disp32} fld       qword ptr [rdata_bytes + 0x2b5d8]             // 0x0072d287    dd05d8458d00
                         call               __CIfmod                                      // 0x0072d28d    e8b8ad0900
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0072d292    d81598a38a00
                         fnstsw             ax                                            // 0x0072d298    dfe0
                         test               ah, 0x01                                      // 0x0072d29a    f6c401
                         {disp8} je         _jmp_addr_0x0072d2a5                          // 0x0072d29d    7406
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x0072d29f    d80510b28a00
_jmp_addr_0x0072d2a5:    {disp32} fstp      dword ptr [ebx + 0x000000ec]                  // 0x0072d2a5    d99bec000000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d2ab    d9442410
_jmp_addr_0x0072d2af:    {disp32} mov       al, byte ptr [ebx + 0x000000f8]               // 0x0072d2af    8a83f8000000
                         test               al, al                                        // 0x0072d2b5    84c0
                         {disp8} je         _jmp_addr_0x0072d32e                          // 0x0072d2b7    7475
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072d2b9    d944240c
                         {disp32} fadd      dword ptr [ebx + 0x000000fc]                  // 0x0072d2bd    d883fc000000
                         {disp32} fst       dword ptr [ebx + 0x000000fc]                  // 0x0072d2c3    d993fc000000
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98c8]             // 0x0072d2c9    d905c8289800
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x0072d2cf    d80d4cb28a00
                         fld                st(1)                                         // 0x0072d2d5    d9c1
                         fcompp                                                           // 0x0072d2d7    ded9
                         fnstsw             ax                                            // 0x0072d2d9    dfe0
                         test               ah, 0x41                                      // 0x0072d2db    f6c441
                         {disp8} jne        _jmp_addr_0x0072d2f2                          // 0x0072d2de    7512
                         mov                eax, dword ptr [ebx]                          // 0x0072d2e0    8b03
                         fstp               st(0)                                         // 0x0072d2e2    ddd8
                         push               esi                                           // 0x0072d2e4    56
                         fstp               st(0)                                         // 0x0072d2e5    ddd8
                         mov.s              ecx, ebx                                      // 0x0072d2e7    8bcb
                         call               dword ptr [eax + 0xc]                         // 0x0072d2e9    ff500c
                         pop                esi                                           // 0x0072d2ec    5e
                         pop                ebx                                           // 0x0072d2ed    5b
                         add                esp, 0x58                                     // 0x0072d2ee    83c458
                         ret                                                              // 0x0072d2f1    c3
_jmp_addr_0x0072d2f2:    {disp32} fdiv      dword ptr [rdata_bytes + 0xd98c8]             // 0x0072d2f2    d835c8289800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0072d2f8    d81598a38a00
                         fnstsw             ax                                            // 0x0072d2fe    dfe0
                         test               ah, 0x41                                      // 0x0072d300    f6c441
                         {disp8} jne        _jmp_addr_0x0072d31c                          // 0x0072d303    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0072d305    d81590a38a00
                         fnstsw             ax                                            // 0x0072d30b    dfe0
                         test               ah, 0x01                                      // 0x0072d30d    f6c401
                         {disp8} jne        _jmp_addr_0x0072d324                          // 0x0072d310    7512
                         fstp               st(0)                                         // 0x0072d312    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0072d314    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0072d324                          // 0x0072d31a    eb08
_jmp_addr_0x0072d31c:    fstp               st(0)                                         // 0x0072d31c    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072d31e    d90598a38a00
_jmp_addr_0x0072d324:    fld                st(1)                                         // 0x0072d324    d9c1
                         fchs                                                             // 0x0072d326    d9e0
                         fmul               st, st(1)                                     // 0x0072d328    d8c9
                         faddp              st(2), st                                     // 0x0072d32a    dec2
                         fstp               st(0)                                         // 0x0072d32c    ddd8
_jmp_addr_0x0072d32e:    {disp32} fld       dword ptr [ebx + 0x000000e0]                  // 0x0072d32e    d983e0000000
                         {disp32} fsub      dword ptr [ebx + 0x000000dc]                  // 0x0072d334    d8a3dc000000
                         fmul               st, st(1)                                     // 0x0072d33a    d8c9
                         {disp32} fadd      dword ptr [ebx + 0x000000dc]                  // 0x0072d33c    d883dc000000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0072d342    d95c2408
                         fstp               st(0)                                         // 0x0072d346    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0xd98d0]             // 0x0072d348    d905d0289800
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0072d34e    d84c240c
                         {disp32} fadd      dword ptr [ebx + 0x000000f0]                  // 0x0072d352    d883f0000000
                         {disp32} fld       qword ptr [rdata_bytes + 0x2b5d8]             // 0x0072d358    dd05d8458d00
                         call               __CIfmod                                      // 0x0072d35e    e8e7ac0900
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0072d363    d81598a38a00
                         fnstsw             ax                                            // 0x0072d369    dfe0
                         test               ah, 0x01                                      // 0x0072d36b    f6c401
                         {disp8} je         _jmp_addr_0x0072d376                          // 0x0072d36e    7406
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x0072d370    d80510b28a00
_jmp_addr_0x0072d376:    {disp32} fst       dword ptr [ebx + 0x000000f0]                  // 0x0072d376    d993f0000000
                         fsin                                                             // 0x0072d37c    d9fe
                         {disp8} mov        eax, dword ptr [ebx + 0x64]                   // 0x0072d37e    8b4364
                         push               ebp                                           // 0x0072d381    55
                         push               edi                                           // 0x0072d382    57
                         {disp8} lea        ebp, dword ptr [ebx + 0x74]                   // 0x0072d383    8d6b74
                         {disp32} lea       edi, dword ptr [ebx + 0x000000a8]             // 0x0072d386    8dbba8000000
                         mov                ecx, 0x0000000d                               // 0x0072d38c    b90d000000
                         mov.s              esi, ebp                                      // 0x0072d391    8bf5
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0072d393    f3a5
                         {disp8} lea        esi, dword ptr [ebx + 0x14]                   // 0x0072d395    8d7314
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0072d398    d80590a38a00
                         {disp8} fmul       dword ptr [eax + 0x70]                        // 0x0072d39e    d84870
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0072d3a1    d84c2410
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0072d3a5    d80db4a38a00
                         {disp8} fld        dword ptr [eax + 0x6c]                        // 0x0072d3ab    d9406c
                         {disp32} fmul      dword ptr [ebx + 0x000000e0]                  // 0x0072d3ae    d88be0000000
                         {disp8} fadd       dword ptr [eax + 0x68]                        // 0x0072d3b4    d84068
                         faddp              st(1), st                                     // 0x0072d3b7    dec1
                         {disp8} fstp       dword ptr [ebx + 0x1c]                        // 0x0072d3b9    d95b1c
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x0072d3bc    8b4e08
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0072d3bf    894c2418
                         mov.s              ecx, esi                                      // 0x0072d3c3    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0072d3c5    e8c65c0d00
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0072d3ca    d8442418
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0072d3ce    8b542410
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0072d3d2    d95c2424
                         fild               dword ptr [esi]                               // 0x0072d3d6    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072d3d8    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0072d3de    d95c2420
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x0072d3e2    db4604
                         {disp32} mov       dword ptr [ebx + 0x000000a4], edx             // 0x0072d3e5    8993a4000000
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072d3eb    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0072d3f1    d95c2428
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d3f5    d9442410
                         {disp32} fcomp     dword ptr [ebx + 0x000000d8]                  // 0x0072d3f9    d89bd8000000
                         fnstsw             ax                                            // 0x0072d3ff    dfe0
                         test               ah, 0x40                                      // 0x0072d401    f6c440
                         {disp8} jne        _jmp_addr_0x0072d438                          // 0x0072d404    7532
                         mov.s              eax, edx                                      // 0x0072d406    8bc2
                         mov                edx, dword ptr [ebx]                          // 0x0072d408    8b13
                         mov.s              ecx, ebx                                      // 0x0072d40a    8bcb
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0072d40c    89442418
                         call               dword ptr [edx + 0x120]                       // 0x0072d410    ff9220010000
                         {disp8} fsubr      dword ptr [esp + 0x18]                        // 0x0072d416    d86c2418
                         fabs                                                             // 0x0072d41a    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x57c70]             // 0x0072d41c    dc1d700c9000
                         fnstsw             ax                                            // 0x0072d422    dfe0
                         test               ah, 0x41                                      // 0x0072d424    f6c441
                         {disp8} jne        _jmp_addr_0x0072d438                          // 0x0072d427    750f
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0072d429    8b4c2418
                         mov                eax, dword ptr [ebx]                          // 0x0072d42d    8b03
                         push               ecx                                           // 0x0072d42f    51
                         mov.s              ecx, ebx                                      // 0x0072d430    8bcb
                         call               dword ptr [eax + 0x124]                       // 0x0072d432    ff9024010000
_jmp_addr_0x0072d438:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d438    d9442410
                         xor.s              eax, eax                                      // 0x0072d43c    33c0
                         {disp8} mov        dword ptr [ebp + 0x2c], eax                   // 0x0072d43e    89452c
                         {disp8} mov        dword ptr [ebp + 0x28], eax                   // 0x0072d441    894528
                         {disp8} mov        dword ptr [ebp + 0x24], eax                   // 0x0072d444    894524
                         {disp8} mov        dword ptr [ebp + 0x1c], eax                   // 0x0072d447    89451c
                         {disp8} mov        dword ptr [ebp + 0x18], eax                   // 0x0072d44a    894518
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x0072d44d    894514
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                   // 0x0072d450    89450c
                         {disp8} mov        dword ptr [ebp + 0x08], eax                   // 0x0072d453    894508
                         {disp8} mov        dword ptr [ebp + 0x04], eax                   // 0x0072d456    894504
                         mov                ecx, 0x3f800000                               // 0x0072d459    b90000803f
                         {disp8} mov        dword ptr [ebp + 0x20], ecx                   // 0x0072d45e    894d20
                         {disp8} mov        dword ptr [ebp + 0x10], ecx                   // 0x0072d461    894d10
                         {disp8} mov        dword ptr [ebp + 0x00], ecx                   // 0x0072d464    894d00
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0072d467    d84d00
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0072d46a    d95d00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d46d    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0072d471    d84d04
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0072d474    d95d04
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d477    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0072d47b    d84d08
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0072d47e    d95d08
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d481    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x0c]                        // 0x0072d485    d84d0c
                         {disp8} fstp       dword ptr [ebp + 0x0c]                        // 0x0072d488    d95d0c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d48b    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x10]                        // 0x0072d48f    d84d10
                         {disp8} fstp       dword ptr [ebp + 0x10]                        // 0x0072d492    d95d10
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d495    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x14]                        // 0x0072d499    d84d14
                         {disp8} fstp       dword ptr [ebp + 0x14]                        // 0x0072d49c    d95d14
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d49f    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x18]                        // 0x0072d4a3    d84d18
                         {disp8} fstp       dword ptr [ebp + 0x18]                        // 0x0072d4a6    d95d18
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d4a9    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x1c]                        // 0x0072d4ad    d84d1c
                         {disp8} fstp       dword ptr [ebp + 0x1c]                        // 0x0072d4b0    d95d1c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d4b3    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x20]                        // 0x0072d4b7    d84d20
                         {disp8} fstp       dword ptr [ebp + 0x20]                        // 0x0072d4ba    d95d20
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0072d4bd    d9442420
                         {disp8} fadd       dword ptr [ebp + 0x24]                        // 0x0072d4c1    d84524
                         {disp8} fstp       dword ptr [ebp + 0x24]                        // 0x0072d4c4    d95d24
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0072d4c7    d9442424
                         {disp8} fadd       dword ptr [ebp + 0x28]                        // 0x0072d4cb    d84528
                         {disp8} fstp       dword ptr [ebp + 0x28]                        // 0x0072d4ce    d95d28
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0072d4d1    d9442428
                         {disp8} fadd       dword ptr [ebp + 0x2c]                        // 0x0072d4d5    d8452c
                         {disp8} fstp       dword ptr [ebp + 0x2c]                        // 0x0072d4d8    d95d2c
                         {disp32} fld       dword ptr [ebx + 0x000000ec]                  // 0x0072d4db    d983ec000000
                         fld                st(0)                                         // 0x0072d4e1    d9c0
                         fcos                                                             // 0x0072d4e3    d9ff
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0072d4e5    d95c2410
                         fsin                                                             // 0x0072d4e9    d9fe
                         fld                st(0)                                         // 0x0072d4eb    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0072d4ed    d84d00
                         fld                st(1)                                         // 0x0072d4f0    d9c1
                         {disp8} fmul       dword ptr [ebp + 0x18]                        // 0x0072d4f2    d84d18
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d4f5    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0072d4f9    d84d00
                         faddp              st(1), st                                     // 0x0072d4fc    dec1
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x0072d4fe    d95d00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d501    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x18]                        // 0x0072d505    d84d18
                         fsub               st, st(1)                                     // 0x0072d508    d8e1
                         {disp8} fstp       dword ptr [ebp + 0x18]                        // 0x0072d50a    d95d18
                         fstp               st(0)                                         // 0x0072d50d    ddd8
                         fld                st(0)                                         // 0x0072d50f    d9c0
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0072d511    d84d04
                         fld                st(1)                                         // 0x0072d514    d9c1
                         {disp8} fmul       dword ptr [ebp + 0x1c]                        // 0x0072d516    d84d1c
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d519    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0072d51d    d84d04
                         faddp              st(1), st                                     // 0x0072d520    dec1
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x0072d522    d95d04
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d525    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x1c]                        // 0x0072d529    d84d1c
                         fsub               st, st(1)                                     // 0x0072d52c    d8e1
                         {disp8} fstp       dword ptr [ebp + 0x1c]                        // 0x0072d52e    d95d1c
                         fstp               st(0)                                         // 0x0072d531    ddd8
                         fld                st(0)                                         // 0x0072d533    d9c0
                         mov.s              esi, ebp                                      // 0x0072d535    8bf5
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0072d537    d84d08
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0072d53a    d95c2418
                         {disp8} fmul       dword ptr [ebp + 0x20]                        // 0x0072d53e    d84d20
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d541    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0072d545    d84d08
                         faddp              st(1), st                                     // 0x0072d548    dec1
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0072d54a    d95d08
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0072d54d    d9442410
                         {disp8} fmul       dword ptr [ebp + 0x20]                        // 0x0072d551    d84d20
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0072d554    d8642418
                         {disp8} fstp       dword ptr [ebp + 0x20]                        // 0x0072d558    d95d20
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000a4]             // 0x0072d55b    8b8ba4000000
                         {disp8} mov        edx, dword ptr [ebx + 0x40]                   // 0x0072d561    8b5340
                         {disp8} mov        dword ptr [edx + 0x44], ecx                   // 0x0072d564    894a44
                         {disp8} mov        edi, dword ptr [ebx + 0x40]                   // 0x0072d567    8b7b40
                         add                edi, 0x14                                     // 0x0072d56a    83c714
                         mov                ecx, 0x0000000c                               // 0x0072d56d    b90c000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0072d572    f3a5
                         {disp32} mov       ebx, dword ptr [ebx + 0x000000f4]             // 0x0072d574    8b9bf4000000
                         cmp.s              ebx, eax                                      // 0x0072d57a    3bd8
                         pop                edi                                           // 0x0072d57c    5f
                         pop                ebp                                           // 0x0072d57d    5d
                         {disp8} je         _jmp_addr_0x0072d5d0                          // 0x0072d57e    7450
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0072d580    89442424
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0072d584    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0072d588    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0072d58c    89442430
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0072d590    89442434
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0072d594    89442438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0072d598    8944243c
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x0072d59c    89442440
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0072d5a0    89442444
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0072d5a4    89442448
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x0072d5a8    8944244c
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x0072d5ac    89442450
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x0072d5b0    89442458
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0072d5b4    8d442424
                         {disp8} mov        byte ptr [esp + 0x5c], 0x01                   // 0x0072d5b8    c644245c01
                         {disp8} mov        dword ptr [esp + 0x54], 0x3f800000            // 0x0072d5bd    c74424540000803f
                         mov                edx, dword ptr [ebx]                          // 0x0072d5c5    8b13
                         push               eax                                           // 0x0072d5c7    50
                         mov.s              ecx, ebx                                      // 0x0072d5c8    8bcb
                         call               dword ptr [edx + 0x100]                       // 0x0072d5ca    ff9200010000
_jmp_addr_0x0072d5d0:    pop                esi                                           // 0x0072d5d0    5e
                         pop                ebx                                           // 0x0072d5d1    5b
                         add                esp, 0x58                                     // 0x0072d5d2    83c458
                         ret                                                              // 0x0072d5d5    c3
                         nop                                                              // 0x0072d5d6    90
                         nop                                                              // 0x0072d5d7    90
                         nop                                                              // 0x0072d5d8    90
                         nop                                                              // 0x0072d5d9    90
                         nop                                                              // 0x0072d5da    90
                         nop                                                              // 0x0072d5db    90
                         nop                                                              // 0x0072d5dc    90
                         nop                                                              // 0x0072d5dd    90
                         nop                                                              // 0x0072d5de    90
                         nop                                                              // 0x0072d5df    90
_jmp_addr_0x0072d5e0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072d5e0    8b442404
                         mov                edx, dword ptr [ecx]                          // 0x0072d5e4    8b11
                         push               eax                                           // 0x0072d5e6    50
                         {disp32} mov       dword ptr [ecx + 0x000000e0], eax             // 0x0072d5e7    8981e0000000
                         call               dword ptr [edx + 0x124]                       // 0x0072d5ed    ff9224010000
                         ret                0x0004                                        // 0x0072d5f3    c20400
                         nop                                                              // 0x0072d5f6    90
                         nop                                                              // 0x0072d5f7    90
                         nop                                                              // 0x0072d5f8    90
                         nop                                                              // 0x0072d5f9    90
                         nop                                                              // 0x0072d5fa    90
                         nop                                                              // 0x0072d5fb    90
                         nop                                                              // 0x0072d5fc    90
                         nop                                                              // 0x0072d5fd    90
                         nop                                                              // 0x0072d5fe    90
                         nop                                                              // 0x0072d5ff    90
?InteractsWithPhysicsObjects@PhysicalShield@@UAE_NXZ:
                         mov                al, 0x01                                      // 0x0072d600    b001
                         ret                                                              // 0x0072d602    c3
                         nop                                                              // 0x0072d603    90
                         nop                                                              // 0x0072d604    90
                         nop                                                              // 0x0072d605    90
                         nop                                                              // 0x0072d606    90
                         nop                                                              // 0x0072d607    90
                         nop                                                              // 0x0072d608    90
                         nop                                                              // 0x0072d609    90
                         nop                                                              // 0x0072d60a    90
                         nop                                                              // 0x0072d60b    90
                         nop                                                              // 0x0072d60c    90
                         nop                                                              // 0x0072d60d    90
                         nop                                                              // 0x0072d60e    90
                         nop                                                              // 0x0072d60f    90
?ReactToPhysicsImpact@PhysicalShield@@UAEXPAVPhysicsObject@@_N@Z:
                         sub                esp, 0x78                                     // 0x0072d610    83ec78
                         push               ebp                                           // 0x0072d613    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000080]             // 0x0072d614    8bac2480000000
                         push               esi                                           // 0x0072d61b    56
                         mov.s              esi, ecx                                      // 0x0072d61c    8bf1
                         push               edi                                           // 0x0072d61e    57
                         mov.s              ecx, ebp                                      // 0x0072d61f    8bcd
                         call               _jmp_addr_0x00644f00                          // 0x0072d621    e8da78f1ff
                         mov.s              edi, eax                                      // 0x0072d626    8bf8
                         test               edi, edi                                      // 0x0072d628    85ff
                         {disp32} je        _jmp_addr_0x0072d7bb                          // 0x0072d62a    0f848b010000
                         mov                eax, dword ptr [edi]                          // 0x0072d630    8b07
                         mov.s              ecx, edi                                      // 0x0072d632    8bcf
                         call               dword ptr [eax + 0x2c]                        // 0x0072d634    ff502c
                         cmp                eax, 0x01                                     // 0x0072d637    83f801
                         {disp32} jne       _jmp_addr_0x0072d7bb                          // 0x0072d63a    0f857b010000
                         mov                edx, dword ptr [edi]                          // 0x0072d640    8b17
                         mov.s              ecx, edi                                      // 0x0072d642    8bcf
                         call               dword ptr [edx + 0x7a8]                       // 0x0072d644    ff92a8070000
                         test               al, al                                        // 0x0072d64a    84c0
                         {disp32} je        _jmp_addr_0x0072d7bb                          // 0x0072d64c    0f8469010000
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d652    8b4e60
                         test               ecx, ecx                                      // 0x0072d655    85c9
                         {disp32} je        _jmp_addr_0x0072d7bb                          // 0x0072d657    0f845e010000
                         call               _jmp_addr_0x00720750                          // 0x0072d65d    e8ee30ffff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072d662    d81d98a38a00
                         fnstsw             ax                                            // 0x0072d668    dfe0
                         test               ah, 0x41                                      // 0x0072d66a    f6c441
                         {disp32} jne       _jmp_addr_0x0072d7bb                          // 0x0072d66d    0f8548010000
                         {disp8} fild       dword ptr [edi + 0x14]                        // 0x0072d673    db4714
                         push               0x0                                           // 0x0072d676    6a00
                         push               0x0                                           // 0x0072d678    6a00
                         push               0x0                                           // 0x0072d67a    6a00
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072d67c    d80da4a38a00
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000005            // 0x0072d682    c744242805000000
                         {disp8} fild       dword ptr [edi + 0x18]                        // 0x0072d68a    db4718
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x0072d68d    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0072d693    d95c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0072d697    8b4c2424
                         {disp8} fld        dword ptr [edi + 0x1c]                        // 0x0072d69b    d9471c
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x0072d69e    894c2434
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0072d6a2    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0072d6a6    8b442420
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0072d6aa    8d4c2438
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0072d6ae    d95c242c
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0072d6b2    89442430
                         call               @__ct__7LHPointFfff@20                        // 0x0072d6b6    e84550d1ff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d6bb    8b4e60
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0072d6be    8d44241c
                         {disp8} mov        dword ptr [esp + 0x38], 0x3f800000            // 0x0072d6c2    c74424380000803f
                         {disp8} mov        byte ptr [esp + 0x3c], 0x00                   // 0x0072d6ca    c644243c00
                         {disp8} mov        dword ptr [esp + 0x40], 0x00000000            // 0x0072d6cf    c744244000000000
                         mov                edx, dword ptr [ecx]                          // 0x0072d6d7    8b11
                         push               eax                                           // 0x0072d6d9    50
                         call               dword ptr [edx + 0x52c]                       // 0x0072d6da    ff922c050000
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x0072d6e0    8b4520
                         {disp32} fld       dword ptr [eax + 0x00000104]                  // 0x0072d6e3    d98004010000
                         add                eax, 0x28                                     // 0x0072d6e9    83c028
                         {disp32} fld       dword ptr [eax + 0x000000e0]                  // 0x0072d6ec    d980e0000000
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d6f2    8b4e60
                         {disp32} fld       dword ptr [eax + 0x000000e4]                  // 0x0072d6f5    d980e4000000
                         fld                st(0)                                         // 0x0072d6fb    d9c0
                         fmul               st, st(1)                                     // 0x0072d6fd    d8c9
                         fld                st(2)                                         // 0x0072d6ff    d9c2
                         fmul               st, st(3)                                     // 0x0072d701    d8cb
                         faddp              st(1), st                                     // 0x0072d703    dec1
                         fld                st(3)                                         // 0x0072d705    d9c3
                         fmul               st, st(4)                                     // 0x0072d707    d8cc
                         faddp              st(1), st                                     // 0x0072d709    dec1
                         fsqrt                                                            // 0x0072d70b    d9fa
                         fstp               st(3)                                         // 0x0072d70d    dddb
                         fstp               st(0)                                         // 0x0072d70f    ddd8
                         fstp               st(0)                                         // 0x0072d711    ddd8
                         {disp32} fmul      dword ptr [eax + 0x00000134]                  // 0x0072d713    d88834010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0072d719    d95c240c
                         call               ?GetMagicInfo@SpellShield@@QBEPAVGMagicInfo@@XZ             // 0x0072d71d    e8fee0ffff
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072d722    d944240c
                         {disp8} fmul       dword ptr [eax + 0x64]                        // 0x0072d726    d84864
                         {disp32} fmul      dword ptr [rdata_bytes + 0x16518]             // 0x0072d729    d80d18f58b00
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0072d72f    d95c240c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0072d733    8b4c240c
                         push               ecx                                           // 0x0072d737    51
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d738    8b4e60
                         call               _jmp_addr_0x0072b830                          // 0x0072d73b    e8f0e0ffff
                         fstp               st(0)                                         // 0x0072d740    ddd8
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0072d742    8b5660
                         {disp32} mov       eax, dword ptr [edx + 0x000000fc]             // 0x0072d745    8b82fc000000
                         test               eax, eax                                      // 0x0072d74b    85c0
                         {disp8} je         _jmp_addr_0x0072d791                          // 0x0072d74d    7442
                         push               edi                                           // 0x0072d74f    57
                         call               _jmp_addr_0x00646950                          // 0x0072d750    e8fb91f1ff
                         add                esp, 0x04                                     // 0x0072d755    83c404
                         mov.s              ecx, eax                                      // 0x0072d758    8bc8
                         call               _jmp_addr_0x00647460                          // 0x0072d75a    e8019df1ff
                         push               eax                                           // 0x0072d75f    50
                         push               0x3f800000                                    // 0x0072d760    680000803f
                         push               edi                                           // 0x0072d765    57
                         push               0x0                                           // 0x0072d766    6a00
                         push               0x2                                           // 0x0072d768    6a02
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x0072d76a    8d4c2458
                         call               ??0EffectValues@@QAE@W4EFFECT_TYPE@@MPAVGameThing@@MPAVGPlayer@@@Z                    // 0x0072d76e    e8cd78dfff
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d773    8b4e60
                         {disp32} mov       ecx, dword ptr [ecx + 0x000000fc]             // 0x0072d776    8b89fc000000
                         push               0x0                                           // 0x0072d77c    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x48]                   // 0x0072d77e    8d442448
                         push               eax                                           // 0x0072d782    50
                         call               _jmp_addr_0x0073c9b0                          // 0x0072d783    e828f20000
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0072d788    8d4c2444
                         call               _jmp_addr_0x00436960                          // 0x0072d78c    e8cf91d0ff
_jmp_addr_0x0072d791:    {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d791    8b4e60
                         call               _jmp_addr_0x00720750                          // 0x0072d794    e8b72fffff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072d799    d81d98a38a00
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0072d79f    8b4e60
                         fnstsw             ax                                            // 0x0072d7a2    dfe0
                         test               ah, 0x41                                      // 0x0072d7a4    f6c441
                         {disp8} jne        _jmp_addr_0x0072d7b3                          // 0x0072d7a7    750a
                         mov                edx, dword ptr [ecx]                          // 0x0072d7a9    8b11
                         call               dword ptr [edx + 0x51c]                       // 0x0072d7ab    ff921c050000
                         {disp8} jmp        _jmp_addr_0x0072d7bb                          // 0x0072d7b1    eb08
_jmp_addr_0x0072d7b3:    mov                eax, dword ptr [ecx]                          // 0x0072d7b3    8b01
                         call               dword ptr [eax + 0x520]                       // 0x0072d7b5    ff9020050000
_jmp_addr_0x0072d7bb:    {disp32} mov       ecx, dword ptr [esp + 0x0000008c]             // 0x0072d7bb    8b8c248c000000
                         push               ecx                                           // 0x0072d7c2    51
                         push               ebp                                           // 0x0072d7c3    55
                         mov.s              ecx, esi                                      // 0x0072d7c4    8bce
                         call               ?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z                          // 0x0072d7c6    e8f59ff0ff
                         pop                edi                                           // 0x0072d7cb    5f
                         pop                esi                                           // 0x0072d7cc    5e
                         pop                ebp                                           // 0x0072d7cd    5d
                         add                esp, 0x78                                     // 0x0072d7ce    83c478
                         ret                0x0008                                        // 0x0072d7d1    c20800
                         nop                                                              // 0x0072d7d4    90
                         nop                                                              // 0x0072d7d5    90
                         nop                                                              // 0x0072d7d6    90
                         nop                                                              // 0x0072d7d7    90
                         nop                                                              // 0x0072d7d8    90
                         nop                                                              // 0x0072d7d9    90
                         nop                                                              // 0x0072d7da    90
                         nop                                                              // 0x0072d7db    90
                         nop                                                              // 0x0072d7dc    90
                         nop                                                              // 0x0072d7dd    90
                         nop                                                              // 0x0072d7de    90
                         nop                                                              // 0x0072d7df    90
?GetPhysicsConstantsType@PhysicalShield@@UAEIXZ:
                         mov                eax, 0x0000000a                               // 0x0072d7e0    b80a000000
                         ret                                                              // 0x0072d7e5    c3
                         nop                                                              // 0x0072d7e6    90
                         nop                                                              // 0x0072d7e7    90
                         nop                                                              // 0x0072d7e8    90
                         nop                                                              // 0x0072d7e9    90
                         nop                                                              // 0x0072d7ea    90
                         nop                                                              // 0x0072d7eb    90
                         nop                                                              // 0x0072d7ec    90
                         nop                                                              // 0x0072d7ed    90
                         nop                                                              // 0x0072d7ee    90
                         nop                                                              // 0x0072d7ef    90
?GetImpressiveValue@PhysicalShield@@UAEMPAVLiving@@PAVReaction@@@Z:
                         push               ebp                                           // 0x0072d7f0    55
                         push               esi                                           // 0x0072d7f1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0072d7f2    8b74240c
                         mov                eax, dword ptr [esi]                          // 0x0072d7f6    8b06
                         push               edi                                           // 0x0072d7f8    57
                         mov.s              edi, ecx                                      // 0x0072d7f9    8bf9
                         push               0x0                                           // 0x0072d7fb    6a00
                         mov.s              ecx, esi                                      // 0x0072d7fd    8bce
                         call               dword ptr [eax + 0x2c8]                       // 0x0072d7ff    ff90c8020000
                         test               eax, eax                                      // 0x0072d805    85c0
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x0072d807    8b6c2414
                         {disp8} je         _jmp_addr_0x0072d844                          // 0x0072d80b    7437
                         mov                edx, dword ptr [esi]                          // 0x0072d80d    8b16
                         mov.s              ecx, esi                                      // 0x0072d80f    8bce
                         call               dword ptr [edx + 0x48]                        // 0x0072d811    ff5248
                         test               eax, eax                                      // 0x0072d814    85c0
                         {disp8} je         _jmp_addr_0x0072d844                          // 0x0072d816    742c
                         mov                eax, dword ptr [esi]                          // 0x0072d818    8b06
                         push               ebx                                           // 0x0072d81a    53
                         mov.s              ecx, esi                                      // 0x0072d81b    8bce
                         call               dword ptr [eax + 0x48]                        // 0x0072d81d    ff5048
                         mov                edx, dword ptr [edi]                          // 0x0072d820    8b17
                         {disp32} mov       ebx, dword ptr [eax + 0x00000eac]             // 0x0072d822    8b98ac0e0000
                         mov.s              ecx, edi                                      // 0x0072d828    8bcf
                         call               dword ptr [edx + 0x1c]                        // 0x0072d82a    ff521c
                         cmp.s              ebx, eax                                      // 0x0072d82d    3bd8
                         pop                ebx                                           // 0x0072d82f    5b
                         {disp8} jne        _jmp_addr_0x0072d844                          // 0x0072d830    7512
                         cmp                dword ptr [ebp + 0x24], 0x0d                  // 0x0072d832    837d240d
                         {disp8} jne        _jmp_addr_0x0072d844                          // 0x0072d836    750c
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072d838    d90598a38a00
                         pop                edi                                           // 0x0072d83e    5f
                         pop                esi                                           // 0x0072d83f    5e
                         pop                ebp                                           // 0x0072d840    5d
                         ret                0x0008                                        // 0x0072d841    c20800
_jmp_addr_0x0072d844:    push               ebp                                           // 0x0072d844    55
                         push               esi                                           // 0x0072d845    56
                         mov.s              ecx, edi                                      // 0x0072d846    8bcf
                         call               ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z                          // 0x0072d848    e813c0f0ff
                         pop                edi                                           // 0x0072d84d    5f
                         pop                esi                                           // 0x0072d84e    5e
                         pop                ebp                                           // 0x0072d84f    5d
                         ret                0x0008                                        // 0x0072d850    c20800
                         nop                                                              // 0x0072d853    90
                         nop                                                              // 0x0072d854    90
                         nop                                                              // 0x0072d855    90
                         nop                                                              // 0x0072d856    90
                         nop                                                              // 0x0072d857    90
                         nop                                                              // 0x0072d858    90
                         nop                                                              // 0x0072d859    90
                         nop                                                              // 0x0072d85a    90
                         nop                                                              // 0x0072d85b    90
                         nop                                                              // 0x0072d85c    90
                         nop                                                              // 0x0072d85d    90
                         nop                                                              // 0x0072d85e    90
                         nop                                                              // 0x0072d85f    90
_jmp_addr_0x0072d860:    {disp32} jmp       _jmp_addr_0x007201d0                          // 0x0072d860    e96b29ffff
                         nop                                                              // 0x0072d865    90
                         nop                                                              // 0x0072d866    90
                         nop                                                              // 0x0072d867    90
                         nop                                                              // 0x0072d868    90
                         nop                                                              // 0x0072d869    90
                         nop                                                              // 0x0072d86a    90
                         nop                                                              // 0x0072d86b    90
                         nop                                                              // 0x0072d86c    90
                         nop                                                              // 0x0072d86d    90
                         nop                                                              // 0x0072d86e    90
                         nop                                                              // 0x0072d86f    90
?InitWithPos@SpellHeal@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0072d870    8b442410
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0072d874    8b542404
                         push               ebx                                           // 0x0072d878    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x0072d879    8b5c240c
                         push               esi                                           // 0x0072d87d    56
                         push               edi                                           // 0x0072d87e    57
                         mov.s              esi, ecx                                      // 0x0072d87f    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0072d881    8b4c2418
                         push               eax                                           // 0x0072d885    50
                         push               ecx                                           // 0x0072d886    51
                         push               ebx                                           // 0x0072d887    53
                         push               edx                                           // 0x0072d888    52
                         mov.s              ecx, esi                                      // 0x0072d889    8bce
                         call               ?InitWithPos@Spell@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z                          // 0x0072d88b    e8c025ffff
                         mov.s              edi, eax                                      // 0x0072d890    8bf8
                         cmp                edi, 0x01                                     // 0x0072d892    83ff01
                         {disp8} jne        _jmp_addr_0x0072d8a7                          // 0x0072d895    7510
                         push               esi                                           // 0x0072d897    56
                         push               ebx                                           // 0x0072d898    53
                         mov.s              ecx, esi                                      // 0x0072d899    8bce
                         call               _jmp_addr_0x0072d860                          // 0x0072d89b    e8c0ffffff
                         mov.s              ecx, eax                                      // 0x0072d8a0    8bc8
                         call               _jmp_addr_0x005fbb00                          // 0x0072d8a2    e859e2ecff
_jmp_addr_0x0072d8a7:    mov.s              eax, edi                                      // 0x0072d8a7    8bc7
                         pop                edi                                           // 0x0072d8a9    5f
                         pop                esi                                           // 0x0072d8aa    5e
                         pop                ebx                                           // 0x0072d8ab    5b
                         ret                0x0010                                        // 0x0072d8ac    c21000
                         nop                                                              // 0x0072d8af    90
_globl_ct_0x0072d8b0:    call               _jmp_addr_0x0072d8c0                          // 0x0072d8b0    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072d8d0                          // 0x0072d8b5    e916000000
                         nop                                                              // 0x0072d8ba    90
                         nop                                                              // 0x0072d8bb    90
                         nop                                                              // 0x0072d8bc    90
                         nop                                                              // 0x0072d8bd    90
                         nop                                                              // 0x0072d8be    90
                         nop                                                              // 0x0072d8bf    90
_jmp_addr_0x0072d8c0:    xor.s              eax, eax                                      // 0x0072d8c0    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f8], eax        // 0x0072d8c2    a3f807da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da7fc], eax        // 0x0072d8c7    a3fc07da00
                         ret                                                              // 0x0072d8cc    c3
                         nop                                                              // 0x0072d8cd    90
                         nop                                                              // 0x0072d8ce    90
                         nop                                                              // 0x0072d8cf    90
_jmp_addr_0x0072d8d0:    push               0x0072d8e0                                    // 0x0072d8d0    68e0d87200
                         call               _atexit                                       // 0x0072d8d5    e8b77e0900
                         pop                ecx                                           // 0x0072d8da    59
                         ret                                                              // 0x0072d8db    c3
                         nop                                                              // 0x0072d8dc    90
                         nop                                                              // 0x0072d8dd    90
                         nop                                                              // 0x0072d8de    90
                         nop                                                              // 0x0072d8df    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3da5ba]          // 0x0072d8e0    8a0dba05da00
                         mov                al, 0x01                                      // 0x0072d8e6    b001
                         test               al, cl                                        // 0x0072d8e8    84c8
                         {disp8} jne        _jmp_addr_0x0072d8f4                          // 0x0072d8ea    7508
                         or.s               cl, al                                        // 0x0072d8ec    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3da5ba], cl          // 0x0072d8ee    880dba05da00
_jmp_addr_0x0072d8f4:    ret                                                              // 0x0072d8f4    c3
                         nop                                                              // 0x0072d8f5    90
                         nop                                                              // 0x0072d8f6    90
                         nop                                                              // 0x0072d8f7    90
                         nop                                                              // 0x0072d8f8    90
                         nop                                                              // 0x0072d8f9    90
                         nop                                                              // 0x0072d8fa    90
                         nop                                                              // 0x0072d8fb    90
                         nop                                                              // 0x0072d8fc    90
                         nop                                                              // 0x0072d8fd    90
                         nop                                                              // 0x0072d8fe    90
                         nop                                                              // 0x0072d8ff    90
_jmp_addr_0x0072d900:    push               esi                                           // 0x0072d900    56
                         mov.s              esi, ecx                                      // 0x0072d901    8bf1
                         call               ??0Spell@@QAE@XZ                              // 0x0072d903    e82821ffff
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x0072d908    c786f400000000000000
                         mov.s              ecx, esi                                      // 0x0072d912    8bce
                         mov                dword ptr [esi], 0x009847dc                   // 0x0072d914    c706dc479800
                         call               _jmp_addr_0x0072da10                          // 0x0072d91a    e8f1000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3da7f8]        // 0x0072d91f    a1f807da00
                         {disp32} mov       dword ptr [esi + 0x000000f4], eax             // 0x0072d924    8986f4000000
                         {disp32} inc       dword ptr [data_bytes + 0x3da7fc]             // 0x0072d92a    ff05fc07da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f8], esi        // 0x0072d930    8935f807da00
                         mov.s              eax, esi                                      // 0x0072d936    8bc6
                         pop                esi                                           // 0x0072d938    5e
                         ret                                                              // 0x0072d939    c3
                         nop                                                              // 0x0072d93a    90
                         nop                                                              // 0x0072d93b    90
                         nop                                                              // 0x0072d93c    90
                         nop                                                              // 0x0072d93d    90
                         nop                                                              // 0x0072d93e    90
                         nop                                                              // 0x0072d93f    90
                         mov.s              eax, ecx                                      // 0x0072d940    8bc1
                         ret                                                              // 0x0072d942    c3
                         nop                                                              // 0x0072d943    90
                         nop                                                              // 0x0072d944    90
                         nop                                                              // 0x0072d945    90
                         nop                                                              // 0x0072d946    90
                         nop                                                              // 0x0072d947    90
                         nop                                                              // 0x0072d948    90
                         nop                                                              // 0x0072d949    90
                         nop                                                              // 0x0072d94a    90
                         nop                                                              // 0x0072d94b    90
                         nop                                                              // 0x0072d94c    90
                         nop                                                              // 0x0072d94d    90
                         nop                                                              // 0x0072d94e    90
                         nop                                                              // 0x0072d94f    90
?Get2DRadius@SpellStormAndTornado@@UAEMXZ:
                         {disp32} jmp       _jmp_addr_0x007202c0                          // 0x0072d950    e96b29ffff
                         nop                                                              // 0x0072d955    90
                         nop                                                              // 0x0072d956    90
                         nop                                                              // 0x0072d957    90
                         nop                                                              // 0x0072d958    90
                         nop                                                              // 0x0072d959    90
                         nop                                                              // 0x0072d95a    90
                         nop                                                              // 0x0072d95b    90
                         nop                                                              // 0x0072d95c    90
                         nop                                                              // 0x0072d95d    90
                         nop                                                              // 0x0072d95e    90
                         nop                                                              // 0x0072d95f    90
?GetRadius@SpellStormAndTornado@@UAEMXZ:
                         mov                eax, dword ptr [ecx]                          // 0x0072d960    8b01
                         {disp8} jmp        dword ptr [eax + 0x64]                        // 0x0072d962    ff6064
                         nop                                                              // 0x0072d965    90
                         nop                                                              // 0x0072d966    90
                         nop                                                              // 0x0072d967    90
                         nop                                                              // 0x0072d968    90
                         nop                                                              // 0x0072d969    90
                         nop                                                              // 0x0072d96a    90
                         nop                                                              // 0x0072d96b    90
                         nop                                                              // 0x0072d96c    90
                         nop                                                              // 0x0072d96d    90
                         nop                                                              // 0x0072d96e    90
                         nop                                                              // 0x0072d96f    90
?GetSaveType@SpellStormAndTornado@@UAEIXZ:
                         mov                eax, 0x00000010                               // 0x0072d970    b810000000
                         ret                                                              // 0x0072d975    c3
                         nop                                                              // 0x0072d976    90
                         nop                                                              // 0x0072d977    90
                         nop                                                              // 0x0072d978    90
                         nop                                                              // 0x0072d979    90
                         nop                                                              // 0x0072d97a    90
                         nop                                                              // 0x0072d97b    90
                         nop                                                              // 0x0072d97c    90
                         nop                                                              // 0x0072d97d    90
                         nop                                                              // 0x0072d97e    90
                         nop                                                              // 0x0072d97f    90
?GetDebugText@SpellStormAndTornado@@UAEPADXZ:
                         mov                eax, 0x00c22870                               // 0x0072d980    b87028c200
                         ret                                                              // 0x0072d985    c3
                         nop                                                              // 0x0072d986    90
                         nop                                                              // 0x0072d987    90
                         nop                                                              // 0x0072d988    90
                         nop                                                              // 0x0072d989    90
                         nop                                                              // 0x0072d98a    90
                         nop                                                              // 0x0072d98b    90
                         nop                                                              // 0x0072d98c    90
                         nop                                                              // 0x0072d98d    90
                         nop                                                              // 0x0072d98e    90
                         nop                                                              // 0x0072d98f    90
??_GSpellStormAndTornado@@UAEPAXI@Z:
                         push               esi                                           // 0x0072d990    56
                         mov.s              esi, ecx                                      // 0x0072d991    8bf1
                         call               _jmp_addr_0x0056fa80                          // 0x0072d993    e8e820e4ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072d998    f644240801
                         {disp8} je         _jmp_addr_0x0072d9ad                          // 0x0072d99d    740e
                         push               0x000000f8                                    // 0x0072d99f    68f8000000
                         push               esi                                           // 0x0072d9a4    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072d9a5    e8c68fd0ff
                         add                esp, 0x08                                     // 0x0072d9aa    83c408
_jmp_addr_0x0072d9ad:    mov.s              eax, esi                                      // 0x0072d9ad    8bc6
                         pop                esi                                           // 0x0072d9af    5e
                         ret                0x0004                                        // 0x0072d9b0    c20400
                         nop                                                              // 0x0072d9b3    90
                         nop                                                              // 0x0072d9b4    90
                         nop                                                              // 0x0072d9b5    90
                         nop                                                              // 0x0072d9b6    90
                         nop                                                              // 0x0072d9b7    90
                         nop                                                              // 0x0072d9b8    90
                         nop                                                              // 0x0072d9b9    90
                         nop                                                              // 0x0072d9ba    90
                         nop                                                              // 0x0072d9bb    90
                         nop                                                              // 0x0072d9bc    90
                         nop                                                              // 0x0072d9bd    90
                         nop                                                              // 0x0072d9be    90
                         nop                                                              // 0x0072d9bf    90
_jmp_addr_0x0072d9c0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0072d9c0    8b442408
                         push               esi                                           // 0x0072d9c4    56
                         mov.s              esi, ecx                                      // 0x0072d9c5    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0072d9c7    8b4c2408
                         push               eax                                           // 0x0072d9cb    50
                         push               ecx                                           // 0x0072d9cc    51
                         mov.s              ecx, esi                                      // 0x0072d9cd    8bce
                         call               @__ct__5SpellF10MAGIC_TYPEP9GameThing@16      // 0x0072d9cf    e86c21ffff
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x0072d9d4    c786f400000000000000
                         mov.s              ecx, esi                                      // 0x0072d9de    8bce
                         mov                dword ptr [esi], 0x009847dc                   // 0x0072d9e0    c706dc479800
                         call               _jmp_addr_0x0072da10                          // 0x0072d9e6    e825000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3da7f8]        // 0x0072d9eb    8b15f807da00
                         {disp32} mov       dword ptr [esi + 0x000000f4], edx             // 0x0072d9f1    8996f4000000
                         {disp32} inc       dword ptr [data_bytes + 0x3da7fc]             // 0x0072d9f7    ff05fc07da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f8], esi        // 0x0072d9fd    8935f807da00
                         mov.s              eax, esi                                      // 0x0072da03    8bc6
                         pop                esi                                           // 0x0072da05    5e
                         ret                0x0008                                        // 0x0072da06    c20800
                         nop                                                              // 0x0072da09    90
                         nop                                                              // 0x0072da0a    90
                         nop                                                              // 0x0072da0b    90
                         nop                                                              // 0x0072da0c    90
                         nop                                                              // 0x0072da0d    90
                         nop                                                              // 0x0072da0e    90
                         nop                                                              // 0x0072da0f    90
_jmp_addr_0x0072da10:    xor.s              eax, eax                                      // 0x0072da10    33c0
                         {disp32} mov       dword ptr [ecx + 0x000000ec], eax             // 0x0072da12    8981ec000000
                         {disp32} mov       dword ptr [ecx + 0x000000f0], eax             // 0x0072da18    8981f0000000
                         ret                                                              // 0x0072da1e    c3
                         nop                                                              // 0x0072da1f    90
?ToBeDeleted@SpellStormAndTornado@@UAEXH@Z:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3da7f8]        // 0x0072da20    a1f807da00
                         push               esi                                           // 0x0072da25    56
                         mov.s              esi, ecx                                      // 0x0072da26    8bf1
                         cmp.s              eax, esi                                      // 0x0072da28    3bc6
                         {disp8} jne        _jmp_addr_0x0072da39                          // 0x0072da2a    750d
                         {disp32} mov       eax, dword ptr [esi + 0x000000f4]             // 0x0072da2c    8b86f4000000
                         {disp32} mov       dword ptr [data_bytes + 0x3da7f8], eax        // 0x0072da32    a3f807da00
                         {disp8} jmp        _jmp_addr_0x0072da5b                          // 0x0072da37    eb22
_jmp_addr_0x0072da39:    test               eax, eax                                      // 0x0072da39    85c0
                         {disp8} je         _jmp_addr_0x0072da6b                          // 0x0072da3b    742e
_jmp_addr_0x0072da3d:    {disp32} mov       ecx, dword ptr [eax + 0x000000f4]             // 0x0072da3d    8b88f4000000
                         cmp.s              ecx, esi                                      // 0x0072da43    3bce
                         {disp8} je         _jmp_addr_0x0072da4f                          // 0x0072da45    7408
                         mov.s              eax, ecx                                      // 0x0072da47    8bc1
                         test               eax, eax                                      // 0x0072da49    85c0
                         {disp8} jne        _jmp_addr_0x0072da3d                          // 0x0072da4b    75f0
                         {disp8} jmp        _jmp_addr_0x0072da6b                          // 0x0072da4d    eb1c
_jmp_addr_0x0072da4f:    {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x0072da4f    8b8ef4000000
                         {disp32} mov       dword ptr [eax + 0x000000f4], ecx             // 0x0072da55    8988f4000000
_jmp_addr_0x0072da5b:    dec                dword ptr [data_bytes + 0x3da7fc]             // 0x0072da5b    ff0dfc07da00
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x0072da61    c786f400000000000000
_jmp_addr_0x0072da6b:    push               0x0                                           // 0x0072da6b    6a00
                         mov.s              ecx, esi                                      // 0x0072da6d    8bce
                         call               ?ToBeDeleted@Spell@@UAEXH@Z                   // 0x0072da6f    e81c23ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072da74    8b8eec000000
                         test               ecx, ecx                                      // 0x0072da7a    85c9
                         {disp8} je         _jmp_addr_0x0072da8f                          // 0x0072da7c    7411
                         mov                edx, dword ptr [ecx]                          // 0x0072da7e    8b11
                         push               0x1                                           // 0x0072da80    6a01
                         call               dword ptr [edx + 4]                           // 0x0072da82    ff5204
                         {disp32} mov       dword ptr [esi + 0x000000ec], 0x00000000      // 0x0072da85    c786ec00000000000000
_jmp_addr_0x0072da8f:    pop                esi                                           // 0x0072da8f    5e
                         ret                0x0004                                        // 0x0072da90    c20400
                         nop                                                              // 0x0072da93    90
                         nop                                                              // 0x0072da94    90
                         nop                                                              // 0x0072da95    90
                         nop                                                              // 0x0072da96    90
                         nop                                                              // 0x0072da97    90
                         nop                                                              // 0x0072da98    90
                         nop                                                              // 0x0072da99    90
                         nop                                                              // 0x0072da9a    90
                         nop                                                              // 0x0072da9b    90
                         nop                                                              // 0x0072da9c    90
                         nop                                                              // 0x0072da9d    90
                         nop                                                              // 0x0072da9e    90
                         nop                                                              // 0x0072da9f    90
                         sub                esp, 0x0c                                     // 0x0072daa0    83ec0c
                         push               ebx                                           // 0x0072daa3    53
                         push               ebp                                           // 0x0072daa4    55
                         push               esi                                           // 0x0072daa5    56
                         push               edi                                           // 0x0072daa6    57
                         mov.s              esi, ecx                                      // 0x0072daa7    8bf1
                         call               _jmp_addr_0x0072db80                          // 0x0072daa9    e8d2000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0072daae    8b4c2428
                         fld                dword ptr [ecx]                               // 0x0072dab2    d901
                         mov.s              edx, eax                                      // 0x0072dab4    8bd0
                         {disp8} fld        dword ptr [edx + 0x5c]                        // 0x0072dab6    d9425c
                         fld                st(1)                                         // 0x0072dab9    d9c1
                         fcompp                                                           // 0x0072dabb    ded9
                         fnstsw             ax                                            // 0x0072dabd    dfe0
                         test               ah, 0x01                                      // 0x0072dabf    f6c401
                         {disp8} jne        _jmp_addr_0x0072dac9                          // 0x0072dac2    7505
                         fstp               st(0)                                         // 0x0072dac4    ddd8
                         {disp8} fld        dword ptr [edx + 0x5c]                        // 0x0072dac6    d9425c
_jmp_addr_0x0072dac9:    {disp8} fld        dword ptr [edx + 0x58]                        // 0x0072dac9    d94258
                         fld                st(1)                                         // 0x0072dacc    d9c1
                         fcompp                                                           // 0x0072dace    ded9
                         fnstsw             ax                                            // 0x0072dad0    dfe0
                         test               ah, 0x41                                      // 0x0072dad2    f6c441
                         {disp8} je         _jmp_addr_0x0072dadc                          // 0x0072dad5    7405
                         fstp               st(0)                                         // 0x0072dad7    ddd8
                         {disp8} fld        dword ptr [edx + 0x58]                        // 0x0072dad9    d94258
_jmp_addr_0x0072dadc:    {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x0072dadc    8b7c242c
                         fstp               dword ptr [ecx]                               // 0x0072dae0    d919
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x0072dae2    8b5c2424
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0072dae6    8b442420
                         push               edi                                           // 0x0072daea    57
                         push               ecx                                           // 0x0072daeb    51
                         push               ebx                                           // 0x0072daec    53
                         push               eax                                           // 0x0072daed    50
                         mov.s              ecx, esi                                      // 0x0072daee    8bce
                         call               ?InitWithPos@Spell@@UAEHPAVGameThing@@ABUMapCoords@@PAVSpellCastData@@ABUPSysProcessInfo@@@Z                          // 0x0072daf0    e85b23ffff
                         push               0x0                                           // 0x0072daf5    6a00
                         push               0x3f800000                                    // 0x0072daf7    680000803f
                         add                edi, 0x24                                     // 0x0072dafc    83c724
                         push               edi                                           // 0x0072daff    57
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0072db00    8d4c241c
                         push               ecx                                           // 0x0072db04    51
                         mov.s              ecx, ebx                                      // 0x0072db05    8bcb
                         mov.s              ebp, eax                                      // 0x0072db07    8be8
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x0072db09    e83281edff
                         push               eax                                           // 0x0072db0e    50
                         push               0x6a                                          // 0x0072db0f    6a6a
                         push               0x0                                           // 0x0072db11    6a00
                         call               _jmp_addr_0x0068f2f0                          // 0x0072db13    e8d817f6ff
                         add                esp, 0x18                                     // 0x0072db18    83c418
                         test               eax, eax                                      // 0x0072db1b    85c0
                         {disp32} mov       dword ptr [esi + 0x000000ec], eax             // 0x0072db1d    8986ec000000
                         {disp8} je         _jmp_addr_0x0072db3e                          // 0x0072db23    7419
                         mov                edi, dword ptr [eax]                          // 0x0072db25    8b38
                         mov.s              ecx, esi                                      // 0x0072db27    8bce
                         call               _jmp_addr_0x007202c0                          // 0x0072db29    e89227ffff
                         push               ecx                                           // 0x0072db2e    51
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072db2f    8b8eec000000
                         fstp               dword ptr [esp]                               // 0x0072db35    d91c24
                         call               dword ptr [edi + 0x11c]                       // 0x0072db38    ff971c010000
_jmp_addr_0x0072db3e:    pop                edi                                           // 0x0072db3e    5f
                         pop                esi                                           // 0x0072db3f    5e
                         mov.s              eax, ebp                                      // 0x0072db40    8bc5
                         pop                ebp                                           // 0x0072db42    5d
                         pop                ebx                                           // 0x0072db43    5b
                         add                esp, 0x0c                                     // 0x0072db44    83c40c
                         ret                0x0010                                        // 0x0072db47    c21000
                         nop                                                              // 0x0072db4a    90
                         nop                                                              // 0x0072db4b    90
                         nop                                                              // 0x0072db4c    90
                         nop                                                              // 0x0072db4d    90
                         nop                                                              // 0x0072db4e    90
                         nop                                                              // 0x0072db4f    90
                         push               ecx                                           // 0x0072db50    51
                         push               esi                                           // 0x0072db51    56
                         push               edi                                           // 0x0072db52    57
                         mov.s              esi, ecx                                      // 0x0072db53    8bf1
                         call               _jmp_addr_0x0072db80                          // 0x0072db55    e826000000
                         mov.s              ecx, esi                                      // 0x0072db5a    8bce
                         mov.s              edi, eax                                      // 0x0072db5c    8bf8
                         call               _jmp_addr_0x007202c0                          // 0x0072db5e    e85d27ffff
                         {disp8} fdiv       dword ptr [edi + 0x60]                        // 0x0072db63    d87760
                         mov.s              ecx, esi                                      // 0x0072db66    8bce
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0072db68    d95c2408
                         call               ?CalculateCostToMaintain@Spell@@UAEMXZ        // 0x0072db6c    e89f2cffff
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0072db71    d9442408
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x0072db75    d84c2408
                         pop                edi                                           // 0x0072db79    5f
                         pop                esi                                           // 0x0072db7a    5e
                         fmulp              st(1), st                                     // 0x0072db7b    dec9
                         pop                ecx                                           // 0x0072db7d    59
                         ret                                                              // 0x0072db7e    c3
                         nop                                                              // 0x0072db7f    90
_jmp_addr_0x0072db80:    {disp32} mov       eax, dword ptr [ecx + 0x000000b4]             // 0x0072db80    8b81b4000000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + _MagicInfoTable]  // 0x0072db86    8b0485107dd300
                         ret                                                              // 0x0072db8d    c3
                         nop                                                              // 0x0072db8e    90
                         nop                                                              // 0x0072db8f    90
                         sub                esp, 0x3c                                     // 0x0072db90    83ec3c
                         push               esi                                           // 0x0072db93    56
                         mov.s              esi, ecx                                      // 0x0072db94    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f0]             // 0x0072db96    8b8ef0000000
                         test               ecx, ecx                                      // 0x0072db9c    85c9
                         {disp8} je         _jmp_addr_0x0072dbb4                          // 0x0072db9e    7414
                         mov                eax, dword ptr [ecx]                          // 0x0072dba0    8b01
                         call               dword ptr [eax + 0x2c]                        // 0x0072dba2    ff502c
                         cmp                eax, 0x01                                     // 0x0072dba5    83f801
                         {disp8} je         _jmp_addr_0x0072dbb4                          // 0x0072dba8    740a
                         {disp32} mov       dword ptr [esi + 0x000000f0], 0x00000000      // 0x0072dbaa    c786f000000000000000
_jmp_addr_0x0072dbb4:    {disp32} mov       eax, dword ptr [esi + 0x000000ec]             // 0x0072dbb4    8b86ec000000
                         test               eax, eax                                      // 0x0072dbba    85c0
                         {disp32} je        _jmp_addr_0x0072dc91                          // 0x0072dbbc    0f84cf000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000a0]             // 0x0072dbc2    8b8ea0000000
                         test               ecx, ecx                                      // 0x0072dbc8    85c9
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x0072dbca    c744240400000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0072dbd2    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0072dbda    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0072dbe2    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0072dbea    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0072dbf2    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0072dbfa    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0072dc02    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0072dc0a    c744242400000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0072dc12    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0072dc1a    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0072dc22    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f800000            // 0x0072dc2a    c74424340000803f
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x0072dc32    c744243800000000
                         {disp8} mov        byte ptr [esp + 0x3c], 0x01                   // 0x0072dc3a    c644243c01
                         {disp8} je         _jmp_addr_0x0072dc4c                          // 0x0072dc3f    740b
                         mov                edx, dword ptr [ecx]                          // 0x0072dc41    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0072dc43    8d442404
                         push               eax                                           // 0x0072dc47    50
                         push               esi                                           // 0x0072dc48    56
                         call               dword ptr [edx + 0x5c]                        // 0x0072dc49    ff525c
_jmp_addr_0x0072dc4c:    {disp32} mov       eax, dword ptr [esi + 0x000000a0]             // 0x0072dc4c    8b86a0000000
                         test               eax, eax                                      // 0x0072dc52    85c0
                         {disp8} mov        dword ptr [esp + 0x34], 0x3f800000            // 0x0072dc54    c74424340000803f
                         {disp8} je         _jmp_addr_0x0072dc76                          // 0x0072dc5c    7418
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072dc5e    8b8eec000000
                         mov                edx, dword ptr [ecx]                          // 0x0072dc64    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x0072dc66    8d442404
                         push               eax                                           // 0x0072dc6a    50
                         call               dword ptr [edx + 0x100]                       // 0x0072dc6b    ff9200010000
                         cmp                eax, 0x05                                     // 0x0072dc71    83f805
                         {disp8} jne        _jmp_addr_0x0072dc91                          // 0x0072dc74    751b
_jmp_addr_0x0072dc76:    {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072dc76    8b8eec000000
                         test               ecx, ecx                                      // 0x0072dc7c    85c9
                         {disp8} je         _jmp_addr_0x0072dc87                          // 0x0072dc7e    7407
                         mov                edx, dword ptr [ecx]                          // 0x0072dc80    8b11
                         push               0x1                                           // 0x0072dc82    6a01
                         call               dword ptr [edx + 4]                           // 0x0072dc84    ff5204
_jmp_addr_0x0072dc87:    {disp32} mov       dword ptr [esi + 0x000000ec], 0x00000000      // 0x0072dc87    c786ec00000000000000
_jmp_addr_0x0072dc91:    mov.s              ecx, esi                                      // 0x0072dc91    8bce
                         call               ?Process@Spell@@UAEIXZ                        // 0x0072dc93    e8782affff
                         pop                esi                                           // 0x0072dc98    5e
                         add                esp, 0x3c                                     // 0x0072dc99    83c43c
                         ret                                                              // 0x0072dc9c    c3
                         nop                                                              // 0x0072dc9d    90
                         nop                                                              // 0x0072dc9e    90
                         nop                                                              // 0x0072dc9f    90
                         push               esi                                           // 0x0072dca0    56
                         mov.s              esi, ecx                                      // 0x0072dca1    8bf1
                         call               ?Draw@Spell@@UAEXXZ                           // 0x0072dca3    e88827ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000ec]             // 0x0072dca8    8b8eec000000
                         test               ecx, ecx                                      // 0x0072dcae    85c9
                         pop                esi                                           // 0x0072dcb0    5e
                         {disp8} je         _jmp_addr_0x0072dcbd                          // 0x0072dcb1    740a
                         mov                eax, dword ptr [ecx]                          // 0x0072dcb3    8b01
                         push               0x1                                           // 0x0072dcb5    6a01
                         call               dword ptr [eax + 0x108]                       // 0x0072dcb7    ff9008010000
_jmp_addr_0x0072dcbd:    ret                                                              // 0x0072dcbd    c3
                         nop                                                              // 0x0072dcbe    90
                         nop                                                              // 0x0072dcbf    90
_jmp_addr_0x0072dcc0:    push               esi                                           // 0x0072dcc0    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x3da7f8]        // 0x0072dcc1    8b35f807da00
                         test               esi, esi                                      // 0x0072dcc7    85f6
                         push               edi                                           // 0x0072dcc9    57
                         {disp8} je         _jmp_addr_0x0072dd23                          // 0x0072dcca    7457
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0072dccc    8b7c240c
_jmp_addr_0x0072dcd0:    {disp32} mov       eax, dword ptr [esi + 0x000000f0]             // 0x0072dcd0    8b86f0000000
                         test               eax, eax                                      // 0x0072dcd6    85c0
                         {disp8} jne        _jmp_addr_0x0072dcfb                          // 0x0072dcd8    7521
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0072dcda    8d4614
                         push               eax                                           // 0x0072dcdd    50
                         mov.s              ecx, edi                                      // 0x0072dcde    8bcf
                         call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2                          // 0x0072dce0    e8eb7fedff
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0072dce5    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x0072dce9    8b16
                         mov.s              ecx, esi                                      // 0x0072dceb    8bce
                         call               dword ptr [edx + 0x64]                        // 0x0072dced    ff5264
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x0072dcf0    d85c240c
                         fnstsw             ax                                            // 0x0072dcf4    dfe0
                         test               ah, 0x41                                      // 0x0072dcf6    f6c441
                         {disp8} je         _jmp_addr_0x0072dd08                          // 0x0072dcf9    740d
_jmp_addr_0x0072dcfb:    {disp32} mov       esi, dword ptr [esi + 0x000000f4]             // 0x0072dcfb    8bb6f4000000
                         test               esi, esi                                      // 0x0072dd01    85f6
                         {disp8} jne        _jmp_addr_0x0072dcd0                          // 0x0072dd03    75cb
                         pop                edi                                           // 0x0072dd05    5f
                         pop                esi                                           // 0x0072dd06    5e
                         ret                                                              // 0x0072dd07    c3
_jmp_addr_0x0072dd08:    mov                eax, dword ptr [esi]                          // 0x0072dd08    8b06
                         push               0x1                                           // 0x0072dd0a    6a01
                         mov.s              ecx, esi                                      // 0x0072dd0c    8bce
                         call               dword ptr [eax + 0x1c]                        // 0x0072dd0e    ff501c
                         push               eax                                           // 0x0072dd11    50
                         push               0x22                                          // 0x0072dd12    6a22
                         push               esi                                           // 0x0072dd14    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0072dd15    e85660fbff
                         add                esp, 0x10                                     // 0x0072dd1a    83c410
                         {disp32} mov       dword ptr [esi + 0x000000f0], eax             // 0x0072dd1d    8986f0000000
_jmp_addr_0x0072dd23:    pop                edi                                           // 0x0072dd23    5f
                         pop                esi                                           // 0x0072dd24    5e
                         ret                                                              // 0x0072dd25    c3
                         nop                                                              // 0x0072dd26    90
                         nop                                                              // 0x0072dd27    90
                         nop                                                              // 0x0072dd28    90
                         nop                                                              // 0x0072dd29    90
                         nop                                                              // 0x0072dd2a    90
                         nop                                                              // 0x0072dd2b    90
                         nop                                                              // 0x0072dd2c    90
                         nop                                                              // 0x0072dd2d    90
                         nop                                                              // 0x0072dd2e    90
                         nop                                                              // 0x0072dd2f    90
_globl_ct_0x0072dd30:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0072dd30    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0072dd36    b001
                         test               al, cl                                        // 0x0072dd38    84c8
                         {disp8} jne        _jmp_addr_0x0072dd44                          // 0x0072dd3a    7508
                         or.s               cl, al                                        // 0x0072dd3c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0072dd3e    880d34c9fa00
_jmp_addr_0x0072dd44:    {disp32} jmp       _jmp_addr_0x0072dd50                          // 0x0072dd44    e907000000
                         nop                                                              // 0x0072dd49    90
                         nop                                                              // 0x0072dd4a    90
                         nop                                                              // 0x0072dd4b    90
                         nop                                                              // 0x0072dd4c    90
                         nop                                                              // 0x0072dd4d    90
                         nop                                                              // 0x0072dd4e    90
                         nop                                                              // 0x0072dd4f    90
_jmp_addr_0x0072dd50:    push               0x00407870                                    // 0x0072dd50    6870784000
                         call               _atexit                                       // 0x0072dd55    e8377a0900
                         pop                ecx                                           // 0x0072dd5a    59
                         ret                                                              // 0x0072dd5b    c3
                         nop                                                              // 0x0072dd5c    90
                         nop                                                              // 0x0072dd5d    90
                         nop                                                              // 0x0072dd5e    90
                         nop                                                              // 0x0072dd5f    90
_globl_ct_0x0072dd60:    {disp32} jmp       _jmp_addr_0x0072dd70                          // 0x0072dd60    e90b000000
                         nop                                                              // 0x0072dd65    90
                         nop                                                              // 0x0072dd66    90
                         nop                                                              // 0x0072dd67    90
                         nop                                                              // 0x0072dd68    90
                         nop                                                              // 0x0072dd69    90
                         nop                                                              // 0x0072dd6a    90
                         nop                                                              // 0x0072dd6b    90
                         nop                                                              // 0x0072dd6c    90
                         nop                                                              // 0x0072dd6d    90
                         nop                                                              // 0x0072dd6e    90
                         nop                                                              // 0x0072dd6f    90
_jmp_addr_0x0072dd70:    {disp32} mov       dword ptr [data_bytes + 0x3da808], 0x3e000000 // 0x0072dd70    c7050808da000000003e
                         ret                                                              // 0x0072dd7a    c3
                         nop                                                              // 0x0072dd7b    90
                         nop                                                              // 0x0072dd7c    90
                         nop                                                              // 0x0072dd7d    90
                         nop                                                              // 0x0072dd7e    90
                         nop                                                              // 0x0072dd7f    90
_globl_ct_0x0072dd80:    {disp32} jmp       _jmp_addr_0x0072dd90                          // 0x0072dd80    e90b000000
                         nop                                                              // 0x0072dd85    90
                         nop                                                              // 0x0072dd86    90
                         nop                                                              // 0x0072dd87    90
                         nop                                                              // 0x0072dd88    90
                         nop                                                              // 0x0072dd89    90
                         nop                                                              // 0x0072dd8a    90
                         nop                                                              // 0x0072dd8b    90
                         nop                                                              // 0x0072dd8c    90
                         nop                                                              // 0x0072dd8d    90
                         nop                                                              // 0x0072dd8e    90
                         nop                                                              // 0x0072dd8f    90
_jmp_addr_0x0072dd90:    {disp32} fld       dword ptr [rdata_bytes + 0xdbd34]             // 0x0072dd90    d905344d9800
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0072dd96    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3da80c]             // 0x0072dd9c    d91d0c08da00
                         ret                                                              // 0x0072dda2    c3
                         nop                                                              // 0x0072dda3    90
                         nop                                                              // 0x0072dda4    90
                         nop                                                              // 0x0072dda5    90
                         nop                                                              // 0x0072dda6    90
                         nop                                                              // 0x0072dda7    90
                         nop                                                              // 0x0072dda8    90
                         nop                                                              // 0x0072dda9    90
                         nop                                                              // 0x0072ddaa    90
                         nop                                                              // 0x0072ddab    90
                         nop                                                              // 0x0072ddac    90
                         nop                                                              // 0x0072ddad    90
                         nop                                                              // 0x0072ddae    90
                         nop                                                              // 0x0072ddaf    90
_globl_ct_0x0072ddb0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0072ddb0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0072ddb6    b001
                         test               al, cl                                        // 0x0072ddb8    84c8
                         {disp8} jne        _jmp_addr_0x0072ddc4                          // 0x0072ddba    7508
                         or.s               cl, al                                        // 0x0072ddbc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0072ddbe    880d34c9fa00
_jmp_addr_0x0072ddc4:    {disp32} jmp       _jmp_addr_0x0072ddd0                          // 0x0072ddc4    e907000000
                         nop                                                              // 0x0072ddc9    90
                         nop                                                              // 0x0072ddca    90
                         nop                                                              // 0x0072ddcb    90
                         nop                                                              // 0x0072ddcc    90
                         nop                                                              // 0x0072ddcd    90
                         nop                                                              // 0x0072ddce    90
                         nop                                                              // 0x0072ddcf    90
_jmp_addr_0x0072ddd0:    push               0x00407870                                    // 0x0072ddd0    6870784000
                         call               _atexit                                       // 0x0072ddd5    e8b7790900
                         pop                ecx                                           // 0x0072ddda    59
                         ret                                                              // 0x0072dddb    c3
                         nop                                                              // 0x0072dddc    90
                         nop                                                              // 0x0072dddd    90
                         nop                                                              // 0x0072ddde    90
                         nop                                                              // 0x0072dddf    90
_globl_ct_0x0072dde0:    {disp32} jmp       _jmp_addr_0x0072ddf0                          // 0x0072dde0    e90b000000
                         nop                                                              // 0x0072dde5    90
                         nop                                                              // 0x0072dde6    90
                         nop                                                              // 0x0072dde7    90
                         nop                                                              // 0x0072dde8    90
                         nop                                                              // 0x0072dde9    90
                         nop                                                              // 0x0072ddea    90
                         nop                                                              // 0x0072ddeb    90
                         nop                                                              // 0x0072ddec    90
                         nop                                                              // 0x0072dded    90
                         nop                                                              // 0x0072ddee    90
                         nop                                                              // 0x0072ddef    90
_jmp_addr_0x0072ddf0:    {disp32} mov       dword ptr [data_bytes + 0x3da818], 0x3e000000 // 0x0072ddf0    c7051808da000000003e
                         ret                                                              // 0x0072ddfa    c3
                         nop                                                              // 0x0072ddfb    90
                         nop                                                              // 0x0072ddfc    90
                         nop                                                              // 0x0072ddfd    90
                         nop                                                              // 0x0072ddfe    90
                         nop                                                              // 0x0072ddff    90
_globl_ct_0x0072de00:    {disp32} jmp       _jmp_addr_0x0072de10                          // 0x0072de00    e90b000000
                         nop                                                              // 0x0072de05    90
                         nop                                                              // 0x0072de06    90
                         nop                                                              // 0x0072de07    90
                         nop                                                              // 0x0072de08    90
                         nop                                                              // 0x0072de09    90
                         nop                                                              // 0x0072de0a    90
                         nop                                                              // 0x0072de0b    90
                         nop                                                              // 0x0072de0c    90
                         nop                                                              // 0x0072de0d    90
                         nop                                                              // 0x0072de0e    90
                         nop                                                              // 0x0072de0f    90
_jmp_addr_0x0072de10:    {disp32} fld       dword ptr [rdata_bytes + 0xdbd3c]             // 0x0072de10    d9053c4d9800
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0072de16    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3da81c]             // 0x0072de1c    d91d1c08da00
                         ret                                                              // 0x0072de22    c3
                         nop                                                              // 0x0072de23    90
                         nop                                                              // 0x0072de24    90
                         nop                                                              // 0x0072de25    90
                         nop                                                              // 0x0072de26    90
                         nop                                                              // 0x0072de27    90
                         nop                                                              // 0x0072de28    90
                         nop                                                              // 0x0072de29    90
                         nop                                                              // 0x0072de2a    90
                         nop                                                              // 0x0072de2b    90
                         nop                                                              // 0x0072de2c    90
                         nop                                                              // 0x0072de2d    90
                         nop                                                              // 0x0072de2e    90
                         nop                                                              // 0x0072de2f    90
                         mov.s              eax, ecx                                      // 0x0072de30    8bc1
                         xor.s              ecx, ecx                                      // 0x0072de32    33c9
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0072de34    89481c
                         {disp8} mov        dword ptr [eax + 0x20], 0x3f800000            // 0x0072de37    c740200000803f
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0072de3e    894810
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0072de41    894814
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0072de44    894818
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0072de47    894808
                         {disp8} mov        byte ptr [eax + 0x0c], cl                     // 0x0072de4a    88480c
                         ret                                                              // 0x0072de4d    c3
                         nop                                                              // 0x0072de4e    90
                         nop                                                              // 0x0072de4f    90
                         push               esi                                           // 0x0072de50    56
                         push               edi                                           // 0x0072de51    57
                         mov.s              esi, ecx                                      // 0x0072de52    8bf1
                         call               _jmp_addr_0x0072e0a0                          // 0x0072de54    e847020000
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0072de59    8b4e10
                         xor.s              edi, edi                                      // 0x0072de5c    33ff
                         cmp.s              ecx, edi                                      // 0x0072de5e    3bcf
                         {disp8} je         _jmp_addr_0x0072de67                          // 0x0072de60    7405
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x0072de62    e8d99e1000
_jmp_addr_0x0072de67:    {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x0072de67    897e14
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x0072de6a    897e18
                         pop                edi                                           // 0x0072de6d    5f
                         pop                esi                                           // 0x0072de6e    5e
                         ret                                                              // 0x0072de6f    c3
                         sub                esp, 0x18                                     // 0x0072de70    83ec18
                         push               esi                                           // 0x0072de73    56
                         mov.s              esi, ecx                                      // 0x0072de74    8bf1
                         {disp8} fld        dword ptr [esi + 0x20]                        // 0x0072de76    d94620
                         push               edi                                           // 0x0072de79    57
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072de7a    d81d98a38a00
                         {disp32} mov       edi, dword ptr [__imp__timeGetTime@4]         // 0x0072de80    8b3d8c988a00
                         fnstsw             ax                                            // 0x0072de86    dfe0
                         test               ah, 0x40                                      // 0x0072de88    f6c440
                         {disp8} je         _jmp_addr_0x0072de95                          // 0x0072de8b    7408
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072de8d    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0072deb3                          // 0x0072de93    eb1e
_jmp_addr_0x0072de95:    call               edi                                           // 0x0072de95    ffd7
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0072de97    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0072de9b    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0072dea3    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x0072dea7    d80d18c48a00
                         {disp8} fsub       dword ptr [esi + 0x1c]                        // 0x0072dead    d8661c
                         {disp8} fdiv       dword ptr [esi + 0x20]                        // 0x0072deb0    d87620
_jmp_addr_0x0072deb3:    {disp32} fcomp     dword ptr [__real@3dcccccd]                   // 0x0072deb3    d81d2cb28a00
                         fnstsw             ax                                            // 0x0072deb9    dfe0
                         test               ah, 0x01                                      // 0x0072debb    f6c401
                         {disp8} je         _jmp_addr_0x0072dec8                          // 0x0072debe    7408
                         {disp32} fld       dword ptr [__real@3dcccccd]                   // 0x0072dec0    d9052cb28a00
                         {disp8} jmp        _jmp_addr_0x0072defe                          // 0x0072dec6    eb36
_jmp_addr_0x0072dec8:    {disp8} fld        dword ptr [esi + 0x20]                        // 0x0072dec8    d94620
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0072decb    d81d98a38a00
                         fnstsw             ax                                            // 0x0072ded1    dfe0
                         test               ah, 0x40                                      // 0x0072ded3    f6c440
                         {disp8} je         _jmp_addr_0x0072dee0                          // 0x0072ded6    7408
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0072ded8    d90598a38a00
                         {disp8} jmp        _jmp_addr_0x0072defe                          // 0x0072dede    eb1e
_jmp_addr_0x0072dee0:    call               edi                                           // 0x0072dee0    ffd7
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0072dee2    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0072dee6    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0072deee    df6c2408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x0072def2    d80d18c48a00
                         {disp8} fsub       dword ptr [esi + 0x1c]                        // 0x0072def8    d8661c
                         {disp8} fdiv       dword ptr [esi + 0x20]                        // 0x0072defb    d87620
_jmp_addr_0x0072defe:    {disp32} fmul      dword ptr [__real@40c90fdb]                   // 0x0072defe    d80d10b28a00
                         {disp8} mov        edi, dword ptr [esi + 0x18]                   // 0x0072df04    8b7e18
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0072df07    d95e08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x0072df0a    a11487c300
                         test               eax, eax                                      // 0x0072df0f    85c0
                         {disp8} je         _jmp_addr_0x0072df8d                          // 0x0072df11    747a
                         test               edi, edi                                      // 0x0072df13    85ff
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], edi        // 0x0072df15    893d4ca6ec00
                         {disp8} je         _jmp_addr_0x0072df8d                          // 0x0072df1b    7470
                         mov                eax, dword ptr [edi]                          // 0x0072df1d    8b07
                         push               ebp                                           // 0x0072df1f    55
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x504618]        // 0x0072df20    8b2d18a6ec00
                         xor.s              edx, edx                                      // 0x0072df26    33d2
                         mov.s              ecx, edi                                      // 0x0072df28    8bcf
                         call               dword ptr [ebp + eax*8]                       // 0x0072df2a    ff54c500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0072df2e    a114a6ec00
                         test               eax, eax                                      // 0x0072df33    85c0
                         pop                ebp                                           // 0x0072df35    5d
                         {disp8} jne        _jmp_addr_0x0072df47                          // 0x0072df36    750f
                         test               byte ptr [edi + 0x05], 0x04                   // 0x0072df38    f6470504
                         {disp8} jne        _jmp_addr_0x0072df47                          // 0x0072df3c    7509
                         push               0x0                                           // 0x0072df3e    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0072df40    e80b201000
                         {disp8} jmp        _jmp_addr_0x0072df4e                          // 0x0072df45    eb07
_jmp_addr_0x0072df47:    push               0x0                                           // 0x0072df47    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0072df49    e8c21f1000
_jmp_addr_0x0072df4e:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0072df4e    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0072df53    33c9
                         {disp8} mov        cl, byte ptr [edi + 0x05]                     // 0x0072df55    8a4f05
                         not                cl                                            // 0x0072df58    f6d1
                         add                esp, 0x04                                     // 0x0072df5a    83c404
                         and                ecx, 0x01                                     // 0x0072df5d    83e101
                         shl                ecx, 1                                        // 0x0072df60    d1e1
                         or                 ecx, 1                                        // 0x0072df62    83c901
                         mov.s              edi, ecx                                      // 0x0072df65    8bf9
                         cmp.s              eax, edi                                      // 0x0072df67    3bc7
                         {disp8} je         _jmp_addr_0x0072df8d                          // 0x0072df69    7422
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0072df6b    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0072df70    8b10
                         push               edi                                           // 0x0072df72    57
                         push               0x16                                          // 0x0072df73    6a16
                         push               eax                                           // 0x0072df75    50
                         call               dword ptr [edx + 0x50]                        // 0x0072df76    ff5250
                         test               eax, eax                                      // 0x0072df79    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0072df7b    c70548a2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0072df8d                          // 0x0072df85    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504248], edi        // 0x0072df87    893d48a2ec00
_jmp_addr_0x0072df8d:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0072df8d    8d542408
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0072df91    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0072df95    c744240800000000
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0072df9d    c744240c00000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x41200000            // 0x0072dfa5    c744241000002041
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0072dfad    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0072dfb5    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0xc1200000            // 0x0072dfbd    c744241c000020c1
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x0072dfc5    e856b90e00
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0072dfca    d94608
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0072dfcd    8b4614
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0072dfd0    d95814
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x0072dfd3    8b4e14
                         call               ?Draw@LH3DSprite@@QAEXXZ                      // 0x0072dfd6    e855251100
                         pop                edi                                           // 0x0072dfdb    5f
                         pop                esi                                           // 0x0072dfdc    5e
                         add                esp, 0x18                                     // 0x0072dfdd    83c418
                         ret                                                              // 0x0072dfe0    c3
                         nop                                                              // 0x0072dfe1    90
                         nop                                                              // 0x0072dfe2    90
                         nop                                                              // 0x0072dfe3    90
                         nop                                                              // 0x0072dfe4    90
                         nop                                                              // 0x0072dfe5    90
                         nop                                                              // 0x0072dfe6    90
                         nop                                                              // 0x0072dfe7    90
                         nop                                                              // 0x0072dfe8    90
                         nop                                                              // 0x0072dfe9    90
                         nop                                                              // 0x0072dfea    90
                         nop                                                              // 0x0072dfeb    90
                         nop                                                              // 0x0072dfec    90
                         nop                                                              // 0x0072dfed    90
                         nop                                                              // 0x0072dfee    90
                         nop                                                              // 0x0072dfef    90
                         sub                esp, 0x08                                     // 0x0072dff0    83ec08
                         push               esi                                           // 0x0072dff3    56
                         mov.s              esi, ecx                                      // 0x0072dff4    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x0c]                     // 0x0072dff6    8a460c
                         test               al, al                                        // 0x0072dff9    84c0
                         {disp8} je         _jmp_addr_0x0072e002                          // 0x0072dffb    7405
                         call               _jmp_addr_0x0072e0a0                          // 0x0072dffd    e89e000000
_jmp_addr_0x0072e002:    push               0x0                                           // 0x0072e002    6a00
                         push               0x0                                           // 0x0072e004    6a00
                         push               0x41                                          // 0x0072e006    6a41
                         push               0x00c22888                                    // 0x0072e008    688828c200
                         call               _jmp_addr_0x008379e0                          // 0x0072e00d    e8ce991000
                         push               eax                                           // 0x0072e012    50
                         push               0xd                                           // 0x0072e013    6a0d
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0072e015    894610
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x0072e018    e8131d1000
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0072e01d    8b4e10
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0072e020    894618
                         mov                edx, 0x00000001                               // 0x0072e023    ba01000000
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0072e028    894808
                         add                esp, 0x18                                     // 0x0072e02b    83c418
                         mov.s              ecx, edx                                      // 0x0072e02e    8bca
                         call               ?Create@LH3DSprite@@SAPAV1@JH@Z               // 0x0072e030    e86b241100
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0072e035    894614
                         {disp8} mov        byte ptr [eax + 0x30], 0x04                   // 0x0072e038    c6403004
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0072e03c    8b4618
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0072e03f    8b5614
                         {disp8} mov        dword ptr [edx + 0x2c], eax                   // 0x0072e042    89422c
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0072e045    8b4614
                         {disp8} mov        ecx, dword ptr [eax + 0x28]                   // 0x0072e048    8b4828
                         and                ecx, 0xffffffc3                               // 0x0072e04b    83e1c3
                         or                 ecx, 3                                        // 0x0072e04e    83c903
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0072e051    894828
                         call               dword ptr [__imp__timeGetTime@4]              // 0x0072e054    ff158c988a00
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0072e05a    8b5614
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0072e05d    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0072e061    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x0072e069    df6c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3418]              // 0x0072e06d    d80d18c48a00
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0072e073    d95e1c
                         mov                dword ptr [edx], 0xc1200000                   // 0x0072e076    c702000020c1
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0072e07c    8b4614
                         {disp8} mov        dword ptr [eax + 0x04], 0xc1100000            // 0x0072e07f    c74004000010c1
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x0072e086    8b4e14
                         {disp8} mov        dword ptr [ecx + 0x08], 0x41200000            // 0x0072e089    c7410800002041
                         pop                esi                                           // 0x0072e090    5e
                         add                esp, 0x08                                     // 0x0072e091    83c408
                         ret                                                              // 0x0072e094    c3
                         nop                                                              // 0x0072e095    90
                         nop                                                              // 0x0072e096    90
                         nop                                                              // 0x0072e097    90
                         nop                                                              // 0x0072e098    90
                         nop                                                              // 0x0072e099    90
                         nop                                                              // 0x0072e09a    90
                         nop                                                              // 0x0072e09b    90
                         nop                                                              // 0x0072e09c    90
                         nop                                                              // 0x0072e09d    90
                         nop                                                              // 0x0072e09e    90
                         nop                                                              // 0x0072e09f    90
_jmp_addr_0x0072e0a0:    push               esi                                           // 0x0072e0a0    56
                         mov.s              esi, ecx                                      // 0x0072e0a1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x0072e0a3    8b4e14
                         push               edi                                           // 0x0072e0a6    57
                         xor.s              edi, edi                                      // 0x0072e0a7    33ff
                         cmp.s              ecx, edi                                      // 0x0072e0a9    3bcf
                         {disp8} je         _jmp_addr_0x0072e0b5                          // 0x0072e0ab    7408
                         call               ?Release@LH3DSprite@@QAEXXZ                   // 0x0072e0ad    e86e241100
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x0072e0b2    897e14
_jmp_addr_0x0072e0b5:    {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0072e0b5    8b4618
                         cmp.s              eax, edi                                      // 0x0072e0b8    3bc7
                         {disp8} je         _jmp_addr_0x0072e0c2                          // 0x0072e0ba    7406
                         {disp8} mov        dword ptr [eax + 0x08], edi                   // 0x0072e0bc    897808
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x0072e0bf    897e18
_jmp_addr_0x0072e0c2:    {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0072e0c2    8b4e10
                         cmp.s              ecx, edi                                      // 0x0072e0c5    3bcf
                         {disp8} je         _jmp_addr_0x0072e0d1                          // 0x0072e0c7    7408
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x0072e0c9    e8729c1000
                         {disp8} mov        dword ptr [esi + 0x10], edi                   // 0x0072e0ce    897e10
_jmp_addr_0x0072e0d1:    pop                edi                                           // 0x0072e0d1    5f
                         pop                esi                                           // 0x0072e0d2    5e
                         ret                                                              // 0x0072e0d3    c3
                         nop                                                              // 0x0072e0d4    90
                         nop                                                              // 0x0072e0d5    90
                         nop                                                              // 0x0072e0d6    90
                         nop                                                              // 0x0072e0d7    90
                         nop                                                              // 0x0072e0d8    90
                         nop                                                              // 0x0072e0d9    90
                         nop                                                              // 0x0072e0da    90
                         nop                                                              // 0x0072e0db    90
                         nop                                                              // 0x0072e0dc    90
                         nop                                                              // 0x0072e0dd    90
                         nop                                                              // 0x0072e0de    90
                         nop                                                              // 0x0072e0df    90
_globl_ct_0x0072e0e0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0072e0e0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0072e0e6    b001
                         test               al, cl                                        // 0x0072e0e8    84c8
                         {disp8} jne        _jmp_addr_0x0072e0f4                          // 0x0072e0ea    7508
                         or.s               cl, al                                        // 0x0072e0ec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0072e0ee    880d34c9fa00
_jmp_addr_0x0072e0f4:    {disp32} jmp       _jmp_addr_0x0072e100                          // 0x0072e0f4    e907000000
                         nop                                                              // 0x0072e0f9    90
                         nop                                                              // 0x0072e0fa    90
                         nop                                                              // 0x0072e0fb    90
                         nop                                                              // 0x0072e0fc    90
                         nop                                                              // 0x0072e0fd    90
                         nop                                                              // 0x0072e0fe    90
                         nop                                                              // 0x0072e0ff    90
_jmp_addr_0x0072e100:    push               0x00407870                                    // 0x0072e100    6870784000
                         call               _atexit                                       // 0x0072e105    e887760900
                         pop                ecx                                           // 0x0072e10a    59
                         ret                                                              // 0x0072e10b    c3
                         nop                                                              // 0x0072e10c    90
                         nop                                                              // 0x0072e10d    90
                         nop                                                              // 0x0072e10e    90
                         nop                                                              // 0x0072e10f    90
_globl_ct_0x0072e110:    {disp32} jmp       _jmp_addr_0x0072e120                          // 0x0072e110    e90b000000
                         nop                                                              // 0x0072e115    90
                         nop                                                              // 0x0072e116    90
                         nop                                                              // 0x0072e117    90
                         nop                                                              // 0x0072e118    90
                         nop                                                              // 0x0072e119    90
                         nop                                                              // 0x0072e11a    90
                         nop                                                              // 0x0072e11b    90
                         nop                                                              // 0x0072e11c    90
                         nop                                                              // 0x0072e11d    90
                         nop                                                              // 0x0072e11e    90
                         nop                                                              // 0x0072e11f    90
_jmp_addr_0x0072e120:    {disp32} mov       dword ptr [data_bytes + 0x3da84c], 0xffffffff // 0x0072e120    c7054c08da00ffffffff
                         ret                                                              // 0x0072e12a    c3
                         nop                                                              // 0x0072e12b    90
                         nop                                                              // 0x0072e12c    90
                         nop                                                              // 0x0072e12d    90
                         nop                                                              // 0x0072e12e    90
                         nop                                                              // 0x0072e12f    90
_globl_ct_0x0072e130:    call               _jmp_addr_0x0072e140                          // 0x0072e130    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072e150                          // 0x0072e135    e916000000
                         nop                                                              // 0x0072e13a    90
                         nop                                                              // 0x0072e13b    90
                         nop                                                              // 0x0072e13c    90
                         nop                                                              // 0x0072e13d    90
                         nop                                                              // 0x0072e13e    90
                         nop                                                              // 0x0072e13f    90
_jmp_addr_0x0072e140:    mov                ecx, 0x00da0830                               // 0x0072e140    b93008da00
                         {disp32} jmp       _jmp_addr_0x0072e240                          // 0x0072e145    e9f6000000
                         nop                                                              // 0x0072e14a    90
                         nop                                                              // 0x0072e14b    90
                         nop                                                              // 0x0072e14c    90
                         nop                                                              // 0x0072e14d    90
                         nop                                                              // 0x0072e14e    90
                         nop                                                              // 0x0072e14f    90
_jmp_addr_0x0072e150:    push               0x0072e160                                    // 0x0072e150    6860e17200
                         call               _atexit                                       // 0x0072e155    e837760900
                         pop                ecx                                           // 0x0072e15a    59
                         ret                                                              // 0x0072e15b    c3
                         nop                                                              // 0x0072e15c    90
                         nop                                                              // 0x0072e15d    90
                         nop                                                              // 0x0072e15e    90
                         nop                                                              // 0x0072e15f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3da828]          // 0x0072e160    8a0d2808da00
                         mov                al, 0x01                                      // 0x0072e166    b001
                         test               al, cl                                        // 0x0072e168    84c8
                         {disp8} jne        _jmp_addr_0x0072e17e                          // 0x0072e16a    7512
                         or.s               cl, al                                        // 0x0072e16c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x3da828], cl          // 0x0072e16e    880d2808da00
                         mov                ecx, 0x00da0830                               // 0x0072e174    b93008da00
                         {disp32} jmp       _jmp_addr_0x0072e270                          // 0x0072e179    e9f2000000
_jmp_addr_0x0072e17e:    ret                                                              // 0x0072e17e    c3
                         nop                                                              // 0x0072e17f    90
_globl_ct_0x0072e180:    call               _jmp_addr_0x0072e190                          // 0x0072e180    e80b000000
                         {disp32} jmp       _jmp_addr_0x0072e1e0                          // 0x0072e185    e956000000
                         nop                                                              // 0x0072e18a    90
                         nop                                                              // 0x0072e18b    90
                         nop                                                              // 0x0072e18c    90
                         nop                                                              // 0x0072e18d    90
                         nop                                                              // 0x0072e18e    90
                         nop                                                              // 0x0072e18f    90
_jmp_addr_0x0072e190:    mov                eax, 0x00da0850                               // 0x0072e190    b85008da00
                         mov                ecx, 0x00000005                               // 0x0072e195    b905000000
                         xor.s              edx, edx                                      // 0x0072e19a    33d2
.att_syntax
_jmp_addr_0x0072e19c:    movl               $??_7Base@@6B@, (%eax)                        // 0x0072e19c    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0072e1a2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0072e1a5    895008
                         mov                dword ptr [eax], 0x009995c8                   // 0x0072e1a8    c700c8959900
                         add                eax, 0x34                                     // 0x0072e1ae    83c034
                         dec                ecx                                           // 0x0072e1b1    49
                         {disp8} jne        _jmp_addr_0x0072e19c                          // 0x0072e1b2    75e8
                         ret                                                              // 0x0072e1b4    c3
                         nop                                                              // 0x0072e1b5    90
                         nop                                                              // 0x0072e1b6    90
                         nop                                                              // 0x0072e1b7    90
                         nop                                                              // 0x0072e1b8    90
                         nop                                                              // 0x0072e1b9    90
                         nop                                                              // 0x0072e1ba    90
                         nop                                                              // 0x0072e1bb    90
                         nop                                                              // 0x0072e1bc    90
                         nop                                                              // 0x0072e1bd    90
                         nop                                                              // 0x0072e1be    90
                         nop                                                              // 0x0072e1bf    90
?GetBaseInfo@GSpookyVoiceInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0072e1c0    8b442404
                         mov                dword ptr [eax], 0x00000005                   // 0x0072e1c4    c70005000000
                         mov                eax, 0x00da0850                               // 0x0072e1ca    b85008da00
                         ret                0x0004                                        // 0x0072e1cf    c20400
                         nop                                                              // 0x0072e1d2    90
                         nop                                                              // 0x0072e1d3    90
                         nop                                                              // 0x0072e1d4    90
                         nop                                                              // 0x0072e1d5    90
                         nop                                                              // 0x0072e1d6    90
                         nop                                                              // 0x0072e1d7    90
                         nop                                                              // 0x0072e1d8    90
                         nop                                                              // 0x0072e1d9    90
                         nop                                                              // 0x0072e1da    90
                         nop                                                              // 0x0072e1db    90
                         nop                                                              // 0x0072e1dc    90
                         nop                                                              // 0x0072e1dd    90
                         nop                                                              // 0x0072e1de    90
                         nop                                                              // 0x0072e1df    90
_jmp_addr_0x0072e1e0:    push               0x0072e1f0                                    // 0x0072e1e0    68f0e17200
                         call               _atexit                                       // 0x0072e1e5    e8a7750900
                         pop                ecx                                           // 0x0072e1ea    59
                         ret                                                              // 0x0072e1eb    c3
                         nop                                                              // 0x0072e1ec    90
                         nop                                                              // 0x0072e1ed    90
                         nop                                                              // 0x0072e1ee    90
                         nop                                                              // 0x0072e1ef    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3da828]          // 0x0072e1f0    8a0d2808da00
                         mov                al, 0x02                                      // 0x0072e1f6    b002
                         test               al, cl                                        // 0x0072e1f8    84c8
                         {disp8} jne        _jmp_addr_0x0072e21f                          // 0x0072e1fa    7523
                         push               esi                                           // 0x0072e1fc    56
                         or.s               cl, al                                        // 0x0072e1fd    0ac8
                         push               edi                                           // 0x0072e1ff    57
                         {disp32} mov       byte ptr [data_bytes + 0x3da828], cl          // 0x0072e200    880d2808da00
                         mov                esi, 0x00da0954                               // 0x0072e206    be5409da00
                         mov                edi, 0x00000005                               // 0x0072e20b    bf05000000
_jmp_addr_0x0072e210:    sub                esi, 0x34                                     // 0x0072e210    83ee34
                         mov.s              ecx, esi                                      // 0x0072e213    8bce
                         call               _jmp_addr_0x00436960                          // 0x0072e215    e84687d0ff
                         dec                edi                                           // 0x0072e21a    4f
                         {disp8} jne        _jmp_addr_0x0072e210                          // 0x0072e21b    75f3
                         pop                edi                                           // 0x0072e21d    5f
                         pop                esi                                           // 0x0072e21e    5e
_jmp_addr_0x0072e21f:    ret                                                              // 0x0072e21f    c3
??_GGSpookyVoiceInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x0072e220    56
                         mov.s              esi, ecx                                      // 0x0072e221    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0072e223    e83887d0ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072e228    f644240801
                         {disp8} je         _jmp_addr_0x0072e23a                          // 0x0072e22d    740b
                         push               0x34                                          // 0x0072e22f    6a34
                         push               esi                                           // 0x0072e231    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072e232    e83987d0ff
                         add                esp, 0x08                                     // 0x0072e237    83c408
_jmp_addr_0x0072e23a:    mov.s              eax, esi                                      // 0x0072e23a    8bc6
                         pop                esi                                           // 0x0072e23c    5e
                         ret                0x0004                                        // 0x0072e23d    c20400
_jmp_addr_0x0072e240:    mov.s              eax, ecx                                      // 0x0072e240    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0072e242    c7400400000000
                         mov                dword ptr [eax], 0x009995f8                   // 0x0072e249    c700f8959900
                         ret                                                              // 0x0072e24f    c3
??_GGSpookyVoices@@UAEPAXI@Z:
                         push               esi                                           // 0x0072e250    56
                         mov.s              esi, ecx                                      // 0x0072e251    8bf1
                         call               _jmp_addr_0x0072e270                          // 0x0072e253    e818000000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0072e258    f644240801
                         {disp8} je         _jmp_addr_0x0072e26a                          // 0x0072e25d    740b
                         push               0x1c                                          // 0x0072e25f    6a1c
                         push               esi                                           // 0x0072e261    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x0072e262    e80987d0ff
                         add                esp, 0x08                                     // 0x0072e267    83c408
_jmp_addr_0x0072e26a:    mov.s              eax, esi                                      // 0x0072e26a    8bc6
                         pop                esi                                           // 0x0072e26c    5e
                         ret                0x0004                                        // 0x0072e26d    c20400
_jmp_addr_0x0072e270:    mov                dword ptr [ecx], 0x009995f8                   // 0x0072e270    c701f8959900
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0072e276    e9e586d0ff
                         nop                                                              // 0x0072e27b    90
                         nop                                                              // 0x0072e27c    90
                         nop                                                              // 0x0072e27d    90
                         nop                                                              // 0x0072e27e    90
                         nop                                                              // 0x0072e27f    90
_jmp_addr_0x0072e280:    push               esi                                           // 0x0072e280    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x3da83c]        // 0x0072e281    8b353c08da00
                         test               esi, esi                                      // 0x0072e287    85f6
                         {disp8} je         _jmp_addr_0x0072e29c                          // 0x0072e289    7411
                         mov.s              ecx, esi                                      // 0x0072e28b    8bce
                         call               dword ptr [rdata_bytes + 0x758]               // 0x0072e28d    ff1558978a00
                         push               esi                                           // 0x0072e293    56
                         call               ??3@YAXPAX@Z                                  // 0x0072e294    e8ff0b0800
                         add                esp, 0x04                                     // 0x0072e299    83c404
_jmp_addr_0x0072e29c:    pop                esi                                           // 0x0072e29c    5e
                         ret                                                              // 0x0072e29d    c3
                         nop                                                              // 0x0072e29e    90
                         nop                                                              // 0x0072e29f    90
_jmp_addr_0x0072e2a0:    {disp32} mov       eax, dword ptr [_global]                      // 0x0072e2a0    a1203bcd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000003d0]             // 0x0072e2a5    8b88d0030000
                         push               0x29                                          // 0x0072e2ab    6a29
                         push               0x00c228e4                                    // 0x0072e2ad    68e428c200
                         push               0x00000168                                    // 0x0072e2b2    6868010000
                         {disp32} mov       dword ptr [data_bytes + 0x3da838], ecx        // 0x0072e2b7    890d3808da00
                         call               ___nw__FUl                                    // 0x0072e2bd    e8ced40a00
                         add                esp, 0x0c                                     // 0x0072e2c2    83c40c
                         test               eax, eax                                      // 0x0072e2c5    85c0
                         {disp8} je         _jmp_addr_0x0072e2d3                          // 0x0072e2c7    740a
                         mov.s              ecx, eax                                      // 0x0072e2c9    8bc8
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0072e2cb    ff155c978a00
                         {disp8} jmp        _jmp_addr_0x0072e2d5                          // 0x0072e2d1    eb02
_jmp_addr_0x0072e2d3:    xor.s              eax, eax                                      // 0x0072e2d3    33c0
_jmp_addr_0x0072e2d5:    {disp32} mov       edx, dword ptr [data_bytes + 0x3da838]        // 0x0072e2d5    8b153808da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da83c], eax        // 0x0072e2db    a33c08da00
                         mov                ecx, 0x00da0830                               // 0x0072e2e0    b93008da00
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0072e2e5    895004
                         call               _jmp_addr_0x0072e740                          // 0x0072e2e8    e853040000
                         {disp32} mov       dword ptr [data_bytes + 0x3da840], eax        // 0x0072e2ed    a34008da00
                         {disp32} mov       dword ptr [data_bytes + 0x3da844], 0x00000000 // 0x0072e2f2    c7054408da0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3da848], 0x00000064 // 0x0072e2fc    c7054808da0064000000
                         ret                                                              // 0x0072e306    c3
                         nop                                                              // 0x0072e307    90
                         nop                                                              // 0x0072e308    90
                         nop                                                              // 0x0072e309    90
                         nop                                                              // 0x0072e30a    90
                         nop                                                              // 0x0072e30b    90
                         nop                                                              // 0x0072e30c    90
                         nop                                                              // 0x0072e30d    90
                         nop                                                              // 0x0072e30e    90
                         nop                                                              // 0x0072e30f    90
_jmp_addr_0x0072e310:    {disp32} mov       eax, dword ptr [_game]                        // 0x0072e310    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a08]             // 0x0072e315    8b80085a2000
                         cmp                eax, 0x01                                     // 0x0072e31b    83f801
                         {disp32} je        _jmp_addr_0x0072e3ad                          // 0x0072e31e    0f8489000000
                         cmp                eax, 0x02                                     // 0x0072e324    83f802
                         {disp32} je        _jmp_addr_0x0072e3ad                          // 0x0072e327    0f8480000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3da840]        // 0x0072e32d    a14008da00
                         test               eax, eax                                      // 0x0072e332    85c0
                         {disp8} jbe        _jmp_addr_0x0072e3ad                          // 0x0072e334    7677
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3da848]        // 0x0072e336    a14808da00
                         test               eax, eax                                      // 0x0072e33b    85c0
                         {disp8} jne        _jmp_addr_0x0072e3a7                          // 0x0072e33d    7568
                         mov                ecx, 0x00da0830                               // 0x0072e33f    b93008da00
                         call               _jmp_addr_0x0072e3b0                          // 0x0072e344    e867000000
                         test               eax, eax                                      // 0x0072e349    85c0
                         {disp8} je         _jmp_addr_0x0072e3a2                          // 0x0072e34b    7455
                         push               0x3f800000                                    // 0x0072e34d    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0072e352    e83902fbff
                         fld                st(0)                                         // 0x0072e357    d9c0
                         fmul               st, st(1)                                     // 0x0072e359    d8c9
                         add                esp, 0x04                                     // 0x0072e35b    83c404
                         fmul               st, st(1)                                     // 0x0072e35e    d8c9
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0072e360    d82d90a38a00
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x0072e366    d80d28b28a00
                         call               _jmp_addr_0x007a1400                          // 0x0072e36c    e88f300700
                         fstp               st(0)                                         // 0x0072e371    ddd8
                         cmp                eax, dword ptr [data_bytes + 0x3da844]        // 0x0072e373    3b054408da00
                         {disp8} jae        _jmp_addr_0x0072e387                          // 0x0072e379    730c
                         mov                ecx, 0x00da0830                               // 0x0072e37b    b93008da00
                         call               _jmp_addr_0x0072e3f0                          // 0x0072e380    e86b000000
                         {disp8} jmp        _jmp_addr_0x0072e39c                          // 0x0072e385    eb15
_jmp_addr_0x0072e387:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0072e387    8b0d5c19d000
                         call               _jmp_addr_0x00555880                          // 0x0072e38d    e8ee74e2ff
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x0072e392    8b4830
                         push               0x1                                           // 0x0072e395    6a01
                         call               _jmp_addr_0x0071d0b0                          // 0x0072e397    e814edfeff
_jmp_addr_0x0072e39c:    {disp32} inc       dword ptr [data_bytes + 0x3da844]             // 0x0072e39c    ff054408da00
_jmp_addr_0x0072e3a2:    mov                eax, 0x00000064                               // 0x0072e3a2    b864000000
_jmp_addr_0x0072e3a7:    dec                eax                                           // 0x0072e3a7    48
                         {disp32} mov       dword ptr [data_bytes + 0x3da848], eax        // 0x0072e3a8    a34808da00
_jmp_addr_0x0072e3ad:    ret                                                              // 0x0072e3ad    c3
                         nop                                                              // 0x0072e3ae    90
                         nop                                                              // 0x0072e3af    90
_jmp_addr_0x0072e3b0:    push               ecx                                           // 0x0072e3b0    51
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0072e3b1    8d442400
                         push               eax                                           // 0x0072e3b5    50
                         call               _time                                         // 0x0072e3b6    e842960900
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0072e3bb    8d4c2404
                         push               ecx                                           // 0x0072e3bf    51
                         call               _localtime                                    // 0x0072e3c0    e8d8940900
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0072e3c5    8b4808
                         add                esp, 0x08                                     // 0x0072e3c8    83c408
                         cmp                ecx, 0x17                                     // 0x0072e3cb    83f917
                         {disp8} jge        _jmp_addr_0x0072e3e9                          // 0x0072e3ce    7d19
                         cmp                ecx, 0x05                                     // 0x0072e3d0    83f905
                         {disp8} jle        _jmp_addr_0x0072e3e9                          // 0x0072e3d3    7e14
                         cmp                ecx, 0x14                                     // 0x0072e3d5    83f914
                         {disp8} jl         _jmp_addr_0x0072e3e5                          // 0x0072e3d8    7c0b
                         cmp                dword ptr [eax + 0x04], 0x2d                  // 0x0072e3da    8378042d
                         {disp8} jl         _jmp_addr_0x0072e3e5                          // 0x0072e3de    7c05
                         cmp                ecx, 0x15                                     // 0x0072e3e0    83f915
                         {disp8} jl         _jmp_addr_0x0072e3e9                          // 0x0072e3e3    7c04
_jmp_addr_0x0072e3e5:    xor.s              eax, eax                                      // 0x0072e3e5    33c0
                         pop                ecx                                           // 0x0072e3e7    59
                         ret                                                              // 0x0072e3e8    c3
_jmp_addr_0x0072e3e9:    mov                eax, 0x00000001                               // 0x0072e3e9    b801000000
                         pop                ecx                                           // 0x0072e3ee    59
                         ret                                                              // 0x0072e3ef    c3
_jmp_addr_0x0072e3f0:    sub                esp, 0x0c                                     // 0x0072e3f0    83ec0c
                         push               ebx                                           // 0x0072e3f3    53
                         push               esi                                           // 0x0072e3f4    56
                         push               edi                                           // 0x0072e3f5    57
                         push               0x3f266666                                    // 0x0072e3f6    686666263f
                         mov.s              esi, ecx                                      // 0x0072e3fb    8bf1
                         call               _jmp_addr_0x006de590                          // 0x0072e3fd    e88e01fbff
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0072e402    d95c2410
                         push               0x2                                           // 0x0072e406    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0072e408    e86301fbff
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0072e40d    d9442414
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0072e411    d84c2414
                         add                esp, 0x08                                     // 0x0072e415    83c408
                         test               eax, eax                                      // 0x0072e418    85c0
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0072e41a    d84c240c
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0072e41e    d80590a38a00
                         {disp8} jne        _jmp_addr_0x0072e42c                          // 0x0072e424    7506
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0072e426    d83d90a38a00
_jmp_addr_0x0072e42c:    push               0x000000b4                                    // 0x0072e42c    68b4000000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0072e431    d95c2410
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0072e435    e83601fbff
                         push               0x3f4ccccd                                    // 0x0072e43a    68cdcc4c3f
                         mov.s              ebx, eax                                      // 0x0072e43f    8bd8
                         call               _jmp_addr_0x006de590                          // 0x0072e441    e84a01fbff
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0072e446    d95c2418
                         push               0x2                                           // 0x0072e44a    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0072e44c    e81f01fbff
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0072e451    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0072e455    d84c241c
                         add                esp, 0x0c                                     // 0x0072e459    83c40c
                         test               eax, eax                                      // 0x0072e45c    85c0
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0072e45e    d84c2410
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0072e462    d80590a38a00
                         {disp8} jne        _jmp_addr_0x0072e470                          // 0x0072e468    7506
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0072e46a    d83d90a38a00
_jmp_addr_0x0072e470:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0072e470    d944240c
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x0072e474    8b460c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x3da840]        // 0x0072e477    8b0d4008da00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x0072e47d    d80d1cb48a00
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0072e483    894824
                         call               _jmp_addr_0x007a1400                          // 0x0072e486    e8752f0700
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x0072e48b    8b560c
                         {disp8} mov        dword ptr [edx + 0x48], eax                   // 0x0072e48e    894248
                         {disp8} mov        edi, dword ptr [esi + 0x0c]                   // 0x0072e491    8b7e0c
                         {disp8} mov        eax, dword ptr [edi + 0x28]                   // 0x0072e494    8b4728
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0072e497    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0072e49b    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0072e4a3    df6c2410
                         fmul               st, st(1)                                     // 0x0072e4a7    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x0072e4a9    e8522f0700
                         fstp               st(0)                                         // 0x0072e4ae    ddd8
                         {disp8} mov        dword ptr [edi + 0x28], eax                   // 0x0072e4b0    894728
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x0072e4b3    8b4e0c
                         {disp8} mov        dword ptr [ecx + 0x2c], ebx                   // 0x0072e4b6    89592c
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x0072e4b9    8b560c
                         {disp8} mov        dword ptr [edx + 0x08], 0x00000000            // 0x0072e4bc    c7420800000000
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x0072e4c3    8b460c
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0072e4c6    8b0d203bcd00
                         push               eax                                           // 0x0072e4cc    50
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0072e4cd    e85eb9cfff
                         pop                edi                                           // 0x0072e4d2    5f
                         {disp8} mov        dword ptr [esi + 0x14], 0x00000000            // 0x0072e4d3    c7461400000000
                         pop                esi                                           // 0x0072e4da    5e
                         pop                ebx                                           // 0x0072e4db    5b
                         add                esp, 0x0c                                     // 0x0072e4dc    83c40c
                         ret                                                              // 0x0072e4df    c3
_jmp_addr_0x0072e4e0:    push               esi                                           // 0x0072e4e0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0072e4e1    8b742408
                         xor.s              eax, eax                                      // 0x0072e4e5    33c0
                         mov                ax, word ptr [esi]                            // 0x0072e4e7    668b06
                         push               eax                                           // 0x0072e4ea    50
                         call               _isalpha                                      // 0x0072e4eb    e87f830900
                         add                esp, 0x04                                     // 0x0072e4f0    83c404
                         test               eax, eax                                      // 0x0072e4f3    85c0
                         {disp8} je         _jmp_addr_0x0072e546                          // 0x0072e4f5    744f
                         xor.s              eax, eax                                      // 0x0072e4f7    33c0
                         mov                ax, word ptr [esi]                            // 0x0072e4f9    668b06
                         mov.s              ecx, eax                                      // 0x0072e4fc    8bc8
                         or                 ecx, 0x60                                     // 0x0072e4fe    83c960
                         add                ecx, -0x61                                    // 0x0072e501    83c19f
                         cmp                ecx, 0x19                                     // 0x0072e504    83f919
                         {disp8} ja         _jmp_addr_0x0072e548                          // 0x0072e507    773f
                         jmp                dword ptr [ecx*4 + 0x72e54c]                  // 0x0072e509    ff248d4ce57200
                         mov                eax, 0x00000001                               // 0x0072e510    b801000000
                         pop                esi                                           // 0x0072e515    5e
                         ret                0x0004                                        // 0x0072e516    c20400
                         mov                eax, 0x00000002                               // 0x0072e519    b802000000
                         pop                esi                                           // 0x0072e51e    5e
                         ret                0x0004                                        // 0x0072e51f    c20400
                         mov                eax, 0x00000003                               // 0x0072e522    b803000000
                         pop                esi                                           // 0x0072e527    5e
                         ret                0x0004                                        // 0x0072e528    c20400
                         mov                eax, 0x00000004                               // 0x0072e52b    b804000000
                         pop                esi                                           // 0x0072e530    5e
                         ret                0x0004                                        // 0x0072e531    c20400
                         mov                eax, 0x00000005                               // 0x0072e534    b805000000
                         pop                esi                                           // 0x0072e539    5e
                         ret                0x0004                                        // 0x0072e53a    c20400
                         mov                eax, 0x00000006                               // 0x0072e53d    b806000000
                         pop                esi                                           // 0x0072e542    5e
                         ret                0x0004                                        // 0x0072e543    c20400
_jmp_addr_0x0072e546:    xor.s              eax, eax                                      // 0x0072e546    33c0
_jmp_addr_0x0072e548:    pop                esi                                           // 0x0072e548    5e
                         ret                0x0004                                        // 0x0072e549    c20400

// Snippet: jmptbl, [0x0072e54c, 0x0072e5b4)
.byte 0x46, 0xe5, 0x72, 0x00      // 0x0072e54c
.byte 0x10, 0xe5, 0x72, 0x00      // 0x0072e550
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e554
.byte 0x22, 0xe5, 0x72, 0x00      // 0x0072e558
.byte 0x46, 0xe5, 0x72, 0x00      // 0x0072e55c
.byte 0x10, 0xe5, 0x72, 0x00      // 0x0072e560
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e564
.byte 0x48, 0xe5, 0x72, 0x00      // 0x0072e568
.byte 0x46, 0xe5, 0x72, 0x00      // 0x0072e56c
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e570
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e574
.byte 0x2b, 0xe5, 0x72, 0x00      // 0x0072e578
.byte 0x34, 0xe5, 0x72, 0x00      // 0x0072e57c
.byte 0x34, 0xe5, 0x72, 0x00      // 0x0072e580
.byte 0x46, 0xe5, 0x72, 0x00      // 0x0072e584
.byte 0x10, 0xe5, 0x72, 0x00      // 0x0072e588
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e58c
.byte 0x3d, 0xe5, 0x72, 0x00      // 0x0072e590
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e594
.byte 0x22, 0xe5, 0x72, 0x00      // 0x0072e598
.byte 0x46, 0xe5, 0x72, 0x00      // 0x0072e59c
.byte 0x10, 0xe5, 0x72, 0x00      // 0x0072e5a0
.byte 0x48, 0xe5, 0x72, 0x00      // 0x0072e5a4
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e5a8
.byte 0x48, 0xe5, 0x72, 0x00      // 0x0072e5ac
.byte 0x19, 0xe5, 0x72, 0x00      // 0x0072e5b0

// Snippet: db, [0x0072e5b4, 0x0072e5c0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0072e5b4
.byte 0x90, 0x90, 0x90, 0x90      // 0x0072e5b8
.byte 0x90, 0x90, 0x90, 0x90      // 0x0072e5bc

