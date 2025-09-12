cmake_minimum_required(VERSION 3.30)

# Set the llvm utils before project so the toolchain selection has the right paths
if (LLVM_BINARIES_DIR)
    # CMAKE_EXECUTABLE_SUFFIX is set after project
    if (CMAKE_HOST_WIN32)
        set(LLVM_EXECUTABLE_SUFFIX ".exe")
    endif()
    set(CMAKE_ASM_COMPILER "${LLVM_BINARIES_DIR}/clang${LLVM_EXECUTABLE_SUFFIX}")
    set(CMAKE_RC_COMPILER "${LLVM_BINARIES_DIR}/llvm-rc${LLVM_EXECUTABLE_SUFFIX}")
    set(LLVM_STRIP_EXECUTABLE "${LLVM_BINARIES_DIR}/llvm-strip${LLVM_EXECUTABLE_SUFFIX}")
    set(CMAKE_LINKER "${LLVM_BINARIES_DIR}/lld${LLVM_EXECUTABLE_SUFFIX}")
    set(LLVM_AR_EXECUTABLE "${LLVM_BINARIES_DIR}/llvm-ar${LLVM_EXECUTABLE_SUFFIX}")
    set(LLVM_OBJCOPY_EXECUTABLE "${LLVM_BINARIES_DIR}/llvm-objcopy${LLVM_EXECUTABLE_SUFFIX}")
endif()

if (CMAKE_HOST_WIN32)
    set(OBJ_SUFFIX ".obj")
else()
    set(OBJ_SUFFIX ".o")
endif()

project(bw1-decomp ASM C RC)

set(CMAKE_CONFIGURATION_TYPES "RelWithDebInfo;Release" CACHE STRING "Available build configurations" FORCE)

# WARNING This cmake script assumes that it's configured with CMAKE_ASM_COMPILER as a PATCHED clang and CMAKE_LINKER as llvm's lld.
# If the wrong assembler is used, then there won't be the correct object code generated (e.g. register displacements might be of different sizes or opcodes may vary) and
# some of the `.s` custom language extensions will not assemble.
# We try to use labels instead of hardcoded absolute offsets, but there are some that remain. This means if opcodes vary in length, addresses will shift and no longer match.
# If the wrong linker is used, sections may be placed in different virtual and physical offsets. This means the post process script will likely assign wrong offsets.
# If either the assembler or linker are wrongly used, then the md5 sums will not match.

set(CMAKE_ASM_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_ASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> /out:<TARGET> <LINK_LIBRARIES>")
set(CMAKE_ASM_USE_RESPONSE_FILE_FOR_OBJECTS 1)

set(CMAKE_ASM_USING_LINKER_DEFAULT "")
set(CMAKE_ASM_CREATE_CONSOLE_EXE "")
set(CMAKE_ASM_FLAGS_DEBUG "")
set(CMAKE_ASM_FLAGS_MINSIZEREL "")
set(CMAKE_ASM_FLAGS_RELWITHDEBINFO "")
set(CMAKE_ASM_FLAGS_RELEASE "")
set(CMAKE_DEPFILE_FLAGS_ASM "")

set(CMAKE_C_COMPILE_OPTIONS_MSVC_RUNTIME_LIBRARY_MultiThreadedDLL "")
set(CMAKE_C_USING_LINKER_DEFAULT "")
set(CMAKE_C_CREATE_CONSOLE_EXE "")
set(CMAKE_C_FLAGS_DEBUG "")
set(CMAKE_C_FLAGS_MINSIZEREL "")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O2")
set(CMAKE_C_FLAGS_RELEASE "-O3")
set(CMAKE_DEPFILE_FLAGS_C "")

find_package(Python3 REQUIRED)
find_program(LLVM_STRIP_EXECUTABLE NAMES llvm-strip REQUIRED)
find_program(LLVM_AR_EXECUTABLE NAMES llvm-ar REQUIRED)
find_program(LLVM_OBJCOPY_EXECUTABLE NAMES llvm-objcopy REQUIRED)

set(SOURCES_001
    asm/unprocessed/data.000.009c6000-009c7e80-crt-init.asm

    c/_HeaderIncluder.c
    c/_CXXFuncs.c
    asm/unprocessed/rdata.000.dllimports.asm
    c/_DebugDirectory.c
    c/unprocessed/Unknown.000.c
    c/AbodeInfo.001.c
    c/Base.000.c
    c/BaseInfo.000.c
    c/AbodeInfo.002.c
    c/Base.001.c
    c/BaseInfo.001.c
    c/ObjectInfo.000.c
    c/MultiMapFixedInfo.000.c
    c/AbodeInfo.003.c
    c/Abode.000.c
    c/Fixed.000.c
    c/MultiMapFixed.000.c
    c/Abode.001.c
    c/GameThing.000.c
    c/GameThingWithPos.000.c
    c/Object.000.c
    c/Fixed.001.c
    c/MultiMapFixed.001.c
    c/Abode.002.c
    c/LHMatrix.000.c
    c/Abode.003.c
    c/LH3DMesh.000.c
    c/Abode.004.c
    c/AbodeInfo.004.c
    c/Abode.005.c
    c/PlannedAbode.000.c
    c/PlannedMultiMapFixed.000.c
    c/PlannedAbode.001.c
    c/GameThing.001.c
    c/GameThingWithPos.001.c
    c/PlannedAbode.002.c
    c/Windmill.000.c
    c/AbodeInfo.005.c
    c/Abode.006.c
    c/PlannedAbode.003.c
    c/Abode.007.c
    c/PlannedAbode.004.c
    c/Abode.008.c
    c/SetupControl.000.c

    asm/unprocessed/runblack.reassemble.0019.004061a0-004097a0.asm

    asm/unprocessed/text.x.001.asm
    asm/unprocessed/rdata.100-vftables.asm
    asm/unprocessed/rdata.r.100-rtti.asm
    asm/unprocessed/data.100.asm
    asm/unprocessed/bss.100.asm
    c/unprocessed/bss.StateTables.c
    asm/unprocessed/bss.102.asm
    asm/unprocessed/xdata.x.000.009bbdc8-009bc428.asm
    asm/unprocessed/data1.asm
    asm/unprocessed/SELFMOD.asm

    asm/unprocessed/runblack.reassemble.0022.004097a0-00409a40.asm
    asm/unprocessed/runblack.reassemble.0025.00409a40-0040a110.asm
    asm/unprocessed/runblack.reassemble.0029.0040a110-0040c090.asm
    asm/unprocessed/runblack.reassemble.0034.0040c090-00411670.asm
    asm/unprocessed/runblack.reassemble.0037.00411670-004125a0.asm
    asm/unprocessed/runblack.reassemble.0041.004125a0-00416060.asm
    asm/unprocessed/runblack.reassemble.0045.00416060-0041a040.asm
    asm/unprocessed/runblack.reassemble.0049.0041a040-00422300.asm
    asm/unprocessed/runblack.reassemble.0054.00422300-00422aa0.asm
    asm/unprocessed/runblack.reassemble.0058.00422aa0-00423540.asm
    asm/unprocessed/runblack.reassemble.0062.00423540-00423a80.asm
    asm/unprocessed/runblack.reassemble.0066.00423a80-004241b0.asm
    asm/unprocessed/runblack.reassemble.0070.004241b0-00424210.asm
    asm/unprocessed/runblack.reassemble.0073.00424210-00426c40.asm
    asm/unprocessed/runblack.reassemble.0078.00426c40-00426c80.asm
    asm/unprocessed/runblack.reassemble.0082.00426c80-00426ca0.asm
    asm/unprocessed/runblack.reassemble.0084.00426ca0-0042acc0.asm
    asm/unprocessed/runblack.reassemble.0094.0042acc0-0042ae70.asm
    asm/unprocessed/runblack.reassemble.0098.0042ae70-0043f980.asm
    c/LoaderAnon.050.c
    asm/unprocessed/runblack.reassemble.0099.00434040-0043f980.asm
    asm/unprocessed/runblack.reassemble.0102.0043f980-00444d80.asm
    asm/unprocessed/runblack.reassemble.0105.00444d80-00447850.asm
    asm/unprocessed/runblack.reassemble.0110.00447850-00449de0.asm
    asm/unprocessed/runblack.reassemble.0113.00449de0-004509f0.asm
    asm/unprocessed/runblack.reassemble.0121.004509f0-0046cf80.asm
    asm/unprocessed/runblack.reassemble.0125.0046cf80-0046df60.asm
    asm/unprocessed/runblack.reassemble.0127.0046df60-0046f170.asm
    asm/unprocessed/runblack.reassemble.0130.0046f170-0046f590.asm
    asm/unprocessed/runblack.reassemble.0133.0046f590-0046f7c0.asm
    asm/unprocessed/runblack.reassemble.0138.0046f7c0-0046f890.asm
    asm/unprocessed/runblack.reassemble.0142.0046f890-00471760.asm
    asm/unprocessed/runblack.reassemble.0146.00471760-00472680.asm
    asm/unprocessed/runblack.reassemble.0154.00472680-00475f60.asm
    asm/unprocessed/runblack.reassemble.0159.00475f60-00476d10.asm
    asm/unprocessed/runblack.reassemble.0162.00476d10-00477ec0.asm
    asm/unprocessed/runblack.reassemble.0166.00477ec0-0047d470.asm
    asm/unprocessed/runblack.reassemble.0171.0047d470-0047d500.asm
    asm/unprocessed/runblack.reassemble.0175.0047d500-0047e760.asm
    asm/unprocessed/runblack.reassemble.0178.0047e760-0047ec10.asm
    asm/unprocessed/runblack.reassemble.0182.0047ec10-0047ef30.asm
    asm/unprocessed/runblack.reassemble.0186.0047ef30-00480530.asm
    asm/unprocessed/runblack.reassemble.0190.00480530-00481760.asm
    asm/unprocessed/runblack.reassemble.0193.00481760-00483670.asm
    asm/unprocessed/runblack.reassemble.0198.00483670-00483750.asm
    asm/unprocessed/runblack.reassemble.0202.00483750-00484830.asm
    asm/unprocessed/runblack.reassemble.0205.00484830-004851a0.asm
    asm/unprocessed/runblack.reassemble.0207.004851a0-00485df0.asm
    asm/unprocessed/runblack.reassemble.0211.00485df0-004875d0.asm
    asm/unprocessed/runblack.reassemble.0215.004875d0-00489540.asm
    asm/unprocessed/runblack.reassemble.0219.00489540-0048a370.asm
    asm/unprocessed/runblack.reassemble.0223.0048a370-0048d520.asm
    asm/unprocessed/runblack.reassemble.0227.0048d520-0048e1c0.asm
    asm/unprocessed/runblack.reassemble.0229.0048e1c0-0048f060.asm
    asm/unprocessed/runblack.reassemble.0233.0048f060-0048f7b0.asm
    asm/unprocessed/runblack.reassemble.0237.0048f7b0-00490910.asm
    asm/unprocessed/runblack.reassemble.0242.00490910-00491180.asm
    asm/unprocessed/runblack.reassemble.0245.00491180-00491690.asm
    asm/unprocessed/runblack.reassemble.0248.00491690-004af640.asm
    asm/unprocessed/runblack.reassemble.0253.004af640-004c4ab0.asm
    asm/unprocessed/runblack.reassemble.0257.004c4ab0-004ca240.asm
    asm/unprocessed/runblack.reassemble.0262.004ca240-004cb410.asm
    asm/unprocessed/runblack.reassemble.0266.004cb410-004d0a20.asm
    asm/unprocessed/runblack.reassemble.0270.004d0a20-004d63f0.asm
    asm/unprocessed/runblack.reassemble.0275.004d63f0-004d7640.asm
    asm/unprocessed/runblack.reassemble.0280.004d7640-004d8230.asm
    asm/unprocessed/runblack.reassemble.0283.004d8230-004d8df0.asm
    asm/unprocessed/runblack.reassemble.0288.004d8df0-004dcf20.asm
    asm/unprocessed/runblack.reassemble.0292.004dcf20-004e14c0.asm
    asm/unprocessed/runblack.reassemble.0295.004e14c0-004e1570.asm
    asm/unprocessed/runblack.reassemble.0298.004e1570-004e1b40.asm
    asm/unprocessed/runblack.reassemble.0301.004e1b40-004e9f40.asm
    asm/unprocessed/runblack.reassemble.0306.004e9f40-004ed180.asm
    asm/unprocessed/runblack.reassemble.0311.004ed180-004f4b10.asm
    asm/unprocessed/runblack.reassemble.0315.004f4b10-004f5420.asm
    asm/unprocessed/runblack.reassemble.0319.004f5420-004f75b0.asm
    asm/unprocessed/runblack.reassemble.0321.004f75b0-00501950.asm
    asm/unprocessed/runblack.reassemble.0324.00501950-00501a70.asm
    asm/unprocessed/runblack.reassemble.0328.00501a70-00501bc0.asm
    asm/unprocessed/runblack.reassemble.0332.00501bc0-00502660.asm
    asm/unprocessed/runblack.reassemble.0335.00502660-00502810.asm
    asm/unprocessed/runblack.reassemble.0338.00502810-00503bd0.asm
    asm/unprocessed/runblack.reassemble.0343.00503bd0-00504700.asm
    asm/unprocessed/runblack.reassemble.0346.00504700-00504cd0.asm
    asm/unprocessed/runblack.reassemble.0349.00504cd0-005076a0.asm
    asm/unprocessed/runblack.reassemble.0351.005076a0-00509480.asm
    asm/unprocessed/runblack.reassemble.0355.00509480-0050d1c0.asm
    asm/unprocessed/runblack.reassemble.0360.0050d1c0-0050e7e0.asm
    asm/unprocessed/runblack.reassemble.0364.0050e7e0-0050e880.asm
    asm/unprocessed/runblack.reassemble.0368.0050e880-00512130.asm
    asm/unprocessed/runblack.reassemble.0372.00512130-005132d0.asm
    asm/unprocessed/runblack.reassemble.0375.005132d0-00514620.asm
    asm/unprocessed/runblack.reassemble.0379.00514620-00514f20.asm
    asm/unprocessed/runblack.reassemble.0383.00514f20-00515960.asm
    asm/unprocessed/runblack.reassemble.0387.00515960-00515e90.asm
    asm/unprocessed/runblack.reassemble.0391.00515e90-005178d0.asm
    asm/unprocessed/runblack.reassemble.0394.005178d0-0051a830.asm
    asm/unprocessed/runblack.reassemble.0398.0051a830-0051e370.asm
    asm/unprocessed/runblack.reassemble.0403.0051e370-0051e430.asm
    asm/unprocessed/runblack.reassemble.0407.0051e430-0051ea10.asm
    asm/unprocessed/runblack.reassemble.0411.0051ea10-0052aea0.asm
    asm/unprocessed/runblack.reassemble.0414.0052aea0-0052b1a0.asm
    asm/unprocessed/runblack.reassemble.0418.0052b1a0-0053f3e0.asm
    asm/unprocessed/runblack.reassemble.0421.0053f3e0-0053f540.asm
    asm/unprocessed/runblack.reassemble.0425.0053f540-0053f740.asm
    asm/unprocessed/runblack.reassemble.0429.0053f740-0053ff00.asm
    asm/unprocessed/runblack.reassemble.0433.0053ff00-00540260.asm
    asm/unprocessed/runblack.reassemble.0438.00540260-005405b0.asm
    asm/unprocessed/runblack.reassemble.0442.005405b0-00542510.asm
    asm/unprocessed/runblack.reassemble.0446.00542510-00543d50.asm
    asm/unprocessed/runblack.reassemble.0449.00543d50-00544430.asm
    asm/unprocessed/runblack.reassemble.0453.00544430-005445b0.asm
    asm/unprocessed/runblack.reassemble.0456.005445b0-00544f80.asm
    asm/unprocessed/runblack.reassemble.0461.00544f80-00547970.asm
    asm/unprocessed/runblack.reassemble.0464.00547970-00547ff0.asm
    asm/unprocessed/runblack.reassemble.0467.00547ff0-005497f0.asm
    asm/unprocessed/runblack.reassemble.0472.005497f0-00549900.asm
    asm/unprocessed/runblack.reassemble.0476.00549900-0054a180.asm
    asm/unprocessed/runblack.reassemble.0478.0054a180-0054b240.asm
    c/Game.0479.c
    asm/unprocessed/runblack.reassemble.0479.0054b240-0054c180.asm
    c/Game.0480.0054c180-0054c331.c
    asm/unprocessed/runblack.reassemble.0480.0054c340-0054d820.asm
    c/Game.0481.0054d820-0054d83e.c
    asm/unprocessed/runblack.reassemble.0481.0054d840-0054ff80.asm
    c/Game.0483.c
    asm/unprocessed/runblack.reassemble.0483.0054ff80-00551ee0.asm
    asm/unprocessed/runblack.reassemble.0486.00551ee0-005525e0.asm
    asm/unprocessed/runblack.reassemble.0490.005525e0-005529e0.asm
    asm/unprocessed/runblack.reassemble.0493.005529e0-00555240.asm
    asm/unprocessed/runblack.reassemble.0497.00555240-0055c770.asm
    asm/unprocessed/runblack.reassemble.0501.0055c770-0055c8a0.asm
    c/Villager.0501.c
    c/Villager.0502.c

    asm/unprocessed/rdata.150-vftables.asm
    asm/unprocessed/rdata.r.150-rtti.asm

    asm/unprocessed/runblack.reassemble.0503.0055cb70-00562180.asm
    asm/unprocessed/runblack.reassemble.0506.00562180-0056a4d0.asm
    asm/unprocessed/runblack.reassemble.0509.0056a4d0-0056a6d0.asm
    asm/unprocessed/runblack.reassemble.0512.0056a6d0-0056d220.asm
    asm/unprocessed/runblack.reassemble.0516.0056d220-0056d960.asm
    asm/unprocessed/runblack.reassemble.0520.0056d960-0056e130.asm
    asm/unprocessed/runblack.reassemble.0525.0056e130-0056ea90.asm
    asm/unprocessed/runblack.reassemble.0529.0056ea90-0056eef0.asm
    asm/unprocessed/runblack.reassemble.0534.0056eef0-00572d00.asm
    asm/unprocessed/runblack.reassemble.0538.00572d00-00573840.asm
    asm/unprocessed/runblack.reassemble.0542.00573840-00596fd0.asm
    asm/unprocessed/runblack.reassemble.0546.00596fd0-00597190.asm
    asm/unprocessed/runblack.reassemble.0550.00597190-0059b1d0.asm
    asm/unprocessed/runblack.reassemble.0554.0059b1d0-0059be30.asm
    asm/unprocessed/runblack.reassemble.0557.0059be30-005b56d0.asm
    asm/unprocessed/runblack.reassemble.0560.005b56d0-005b8e40.asm
    asm/unprocessed/runblack.reassemble.0564.005b8e40-005bc4a0.asm
    asm/unprocessed/runblack.reassemble.0567.005bc4a0-005bd0b0.asm
    asm/unprocessed/runblack.reassemble.0571.005bd0b0-005bdaf0.asm
    asm/unprocessed/runblack.reassemble.0579.005bdaf0-005bf5d0.asm
    asm/unprocessed/runblack.reassemble.0586.005bf5d0-005c8920.asm
    asm/unprocessed/runblack.reassemble.0589.005c8920-005cb2a0.asm
    asm/unprocessed/runblack.reassemble.0593.005cb2a0-005cb3e0.asm
    asm/unprocessed/runblack.reassemble.0598.005cb3e0-005ddad0.asm
    asm/unprocessed/runblack.reassemble.0602.005ddad0-005dfc40.asm
    asm/unprocessed/runblack.reassemble.0606.005dfc40-005e2d10.asm
    asm/unprocessed/runblack.reassemble.0609.005e2d10-005e3770.asm
    asm/unprocessed/runblack.reassemble.0613.005e3770-005e7a40.asm
    asm/unprocessed/runblack.reassemble.0616.005e7a40-005efd50.asm
    asm/unprocessed/runblack.reassemble.0620.005efd50-005f04c0.asm
    asm/unprocessed/runblack.reassemble.0624.005f04c0-005f0a60.asm
    asm/unprocessed/runblack.reassemble.0627.005f0a60-005f6a70.asm
    asm/unprocessed/runblack.reassemble.0631.005f6a70-005fa480.asm
    asm/unprocessed/runblack.reassemble.0634.005fa480-005fb680.asm
    asm/unprocessed/runblack.reassemble.0637.005fb680-006015e0.asm
    asm/unprocessed/runblack.reassemble.0640.006015e0-00609320.asm
    asm/unprocessed/runblack.reassemble.0643.00609320-0060a010.asm
    asm/unprocessed/runblack.reassemble.0647.0060a010-0060a400.asm
    asm/unprocessed/runblack.reassemble.0650.0060a400-0060a770.asm
    asm/unprocessed/runblack.reassemble.0654.0060a770-0060bbc0.asm
    asm/unprocessed/runblack.reassemble.0659.0060bbc0-0060d280.asm
    asm/unprocessed/runblack.reassemble.0663.0060d280-0060d740.asm
    asm/unprocessed/runblack.reassemble.0667.0060d740-0060f630.asm
    asm/unprocessed/runblack.reassemble.0672.0060f630-006199f0.asm
    asm/unprocessed/runblack.reassemble.0676.006199f0-0061b880.asm
    asm/unprocessed/runblack.reassemble.0679.0061b880-0061e640.asm
    asm/unprocessed/runblack.reassemble.0684.0061e640-0061ed30.asm
    asm/unprocessed/runblack.reassemble.0689.0061ed30-006200b0.asm
    asm/unprocessed/runblack.reassemble.0696.006200b0-00626d90.asm
    asm/unprocessed/runblack.reassemble.0700.00626d90-00629740.asm
    asm/unprocessed/runblack.reassemble.0705.00629740-0062ac00.asm
    asm/unprocessed/runblack.reassemble.0709.0062ac00-0062b030.asm
    asm/unprocessed/runblack.reassemble.0713.0062b030-0062b830.asm
    asm/unprocessed/runblack.reassemble.0717.0062b830-00630fd0.asm
    asm/unprocessed/runblack.reassemble.0722.00630fd0-0063a640.asm
    asm/unprocessed/runblack.reassemble.0725.0063a640-0063ad80.asm
    asm/unprocessed/runblack.reassemble.0728.0063ad80-0063df70.asm
    asm/unprocessed/runblack.reassemble.0731.0063df70-0063eef0.asm
    asm/unprocessed/runblack.reassemble.0734.0063eef0-0063f710.asm
    asm/unprocessed/runblack.reassemble.0742.0063f710-0063ff80.asm
    asm/unprocessed/runblack.reassemble.0747.0063ff80-00640fa0.asm
    asm/unprocessed/runblack.reassemble.0751.00640fa0-00641510.asm
    asm/unprocessed/runblack.reassemble.0756.00641510-00641fe0.asm
    asm/unprocessed/runblack.reassemble.0759.00641fe0-006464f0.asm
    asm/unprocessed/runblack.reassemble.0763.006464f0-0064d800.asm
    asm/unprocessed/runblack.reassemble.0767.0064d800-00651740.asm
    asm/unprocessed/runblack.reassemble.0771.00651740-00666410.asm
    asm/unprocessed/runblack.reassemble.0775.00666410-00666820.asm
    asm/unprocessed/runblack.reassemble.0780.00666820-00669790.asm
    asm/unprocessed/runblack.reassemble.0784.00669790-0066cce0.asm
    asm/unprocessed/runblack.reassemble.0788.0066cce0-00671690.asm
    asm/unprocessed/runblack.reassemble.0790.00671690-006747e0.asm
    asm/unprocessed/runblack.reassemble.0793.006747e0-006868e0.asm
    asm/unprocessed/runblack.reassemble.0797.006868e0-0068e6e0.asm
    asm/unprocessed/runblack.reassemble.0800.0068e6e0-0068e810.asm
    asm/unprocessed/runblack.reassemble.0806.0068e810-006c7c10.asm
    asm/unprocessed/runblack.reassemble.0810.006c7c10-006d6680.asm
    asm/unprocessed/runblack.reassemble.0815.006d6680-006d6cb0.asm
    asm/unprocessed/runblack.reassemble.0820.006d6cb0-006d8b00.asm
    asm/unprocessed/runblack.reassemble.0827.006d8b00-006d9290.asm
    asm/unprocessed/runblack.reassemble.0832.006d9290-006da550.asm
    asm/unprocessed/runblack.reassemble.0835.006da550-006dab60.asm
    asm/unprocessed/runblack.reassemble.0838.006dab60-006daba0.asm
    asm/unprocessed/runblack.reassemble.0842.006daba0-006dabe0.asm
    asm/unprocessed/runblack.reassemble.0846.006dabe0-006dac20.asm
    asm/unprocessed/runblack.reassemble.0850.006dac20-006dac60.asm
    asm/unprocessed/runblack.reassemble.0853.006dac60-006dacd0.asm
    asm/unprocessed/runblack.reassemble.0857.006dacd0-006db570.asm
    asm/unprocessed/runblack.reassemble.0861.006db570-006db8a0.asm
    asm/unprocessed/runblack.reassemble.0865.006db8a0-006dd460.asm
    asm/unprocessed/runblack.reassemble.0869.006dd460-006dd940.asm
    asm/unprocessed/runblack.reassemble.0872.006dd940-006ddf60.asm
    asm/unprocessed/runblack.reassemble.0875.006ddf60-006de220.asm
    asm/unprocessed/runblack.reassemble.0878.006de220-006f1b20.asm
    asm/unprocessed/runblack.reassemble.0882.006f1b20-006f5210.asm
    asm/unprocessed/runblack.reassemble.0887.006f5210-006f6fa0.asm
    asm/unprocessed/runblack.reassemble.0892.006f6fa0-006f94a0.asm
    asm/unprocessed/runblack.reassemble.0895.006f94a0-006fc520.asm
    asm/unprocessed/runblack.reassemble.0899.006fc520-00708fc0.asm
    asm/unprocessed/runblack.reassemble.0903.00708fc0-00709170.asm
    asm/unprocessed/runblack.reassemble.0907.00709170-0070b7f0.asm
    asm/unprocessed/runblack.reassemble.0911.0070b7f0-0070e820.asm
    asm/unprocessed/runblack.reassemble.0915.0070e820-0070f350.asm
    asm/unprocessed/runblack.reassemble.0919.0070f350-0070f7a0.asm
    asm/unprocessed/runblack.reassemble.0924.0070f7a0-00710410.asm
    asm/unprocessed/runblack.reassemble.0927.00710410-00715080.asm
    asm/unprocessed/runblack.reassemble.0930.00715080-00718060.asm
    asm/unprocessed/runblack.reassemble.0936.00718060-0071bcd0.asm
    asm/unprocessed/runblack.reassemble.0939.0071bcd0-0071bd50.asm
    asm/unprocessed/runblack.reassemble.0942.0071bd50-0071bdd0.asm
    asm/unprocessed/runblack.reassemble.0944.0071bdd0-00726350.asm
    c/SpellIcon.0945.00726350-00726360.c
    asm/unprocessed/runblack.reassemble.0946.00726360-00728570.asm
    asm/unprocessed/runblack.reassemble.0950.00728570-00729c90.asm
    asm/unprocessed/runblack.reassemble.0953.00729c90-0072e5c0.asm
    asm/unprocessed/runblack.reassemble.0956.0072e5c0-00735bf0.asm
    asm/unprocessed/runblack.reassemble.0959.00735bf0-00735c30.asm
    asm/unprocessed/runblack.reassemble.0962.00735c30-00736490.asm
    asm/unprocessed/runblack.reassemble.0965.00736490-0073a650.asm
    asm/unprocessed/runblack.reassemble.0970.0073a650-00747310.asm
    asm/unprocessed/runblack.reassemble.0972.00747310-0074f950.asm
    c/Villager.c
    c/VillagerCheck.c
    c/VillagerChild.c
    c/VillagerCivic.c
    c/VillagerDance.c
    c/VillagerFarmer.c
    c/VillagerFireman.c
    c/VillagerFisherman.c
    c/VillagerFood.c
    c/VillagerFootball.c
    c/VillagerForester.c
    c/VillagerHome.c
    c/VillagerHousewife.c
    c/VillagerLeader.c
    c/villagernames.c  # Case is matching vanilla's typo
    c/VillagerPlaytime.c
    c/VillagerReaction.c
    c/VillagerReactionToCreature.c
    c/VillagerScript.c
    c/VillagerShepherd.c
    c/VillagerStates.c
    c/VillagerTrader.c
    c/VillagerWorshipper.c

    asm/unprocessed/rdata.190-vftables.asm
    asm/unprocessed/rdata.r.190-rtti.asm
    asm/unprocessed/data.190.asm
    asm/unprocessed/bss.190.asm

    asm/unprocessed/runblack.reassemble.0993.007678a0-007791d0.asm
    asm/unprocessed/runblack.reassemble.0996.007791d0-0077d2e0.asm
    asm/unprocessed/runblack.reassemble.1000.0077d2e0-0077f670.asm
    asm/unprocessed/runblack.reassemble.1003.0077f670-00787120.asm
    asm/unprocessed/runblack.reassemble.1007.00787120-007878e0.asm
    asm/unprocessed/runblack.reassemble.1010.007878e0-0078b520.asm
    asm/unprocessed/runblack.reassemble.1013.0078b520-0078c7d0.asm
    asm/unprocessed/runblack.reassemble.1016.0078c7d0-0078cd20.asm
    asm/unprocessed/runblack.reassemble.1019.0078cd20-0078ce70.asm
    asm/unprocessed/runblack.reassemble.1022.0078ce70-0078dcd0.asm
    asm/unprocessed/runblack.reassemble.1026.0078dcd0-0078de60.asm
    asm/unprocessed/runblack.reassemble.1030.0078de60-0078dff0.asm
    asm/unprocessed/runblack.reassemble.1034.0078dff0-0078e3c0.asm
    asm/unprocessed/runblack.reassemble.1037.0078e3c0-0078e750.asm
    asm/unprocessed/runblack.reassemble.1041.0078e750-00794970.asm
    asm/unprocessed/runblack.reassemble.1045.00794970-00795ce0.asm
    asm/unprocessed/runblack.reassemble.1047.00795ce0-00796920.asm
    asm/unprocessed/runblack.reassemble.1050.00796920-0079a5a0.asm
    asm/unprocessed/runblack.reassemble.1052.0079a5a0-0079c550.asm
    asm/unprocessed/runblack.reassemble.1056.0079c550-0079f5d0.asm
    asm/unprocessed/runblack.reassemble.1058.0079f5d0-007a1360.asm
    asm/unprocessed/runblack.reassemble.1060.007a1360-007aebb0.asm # some sse ops
    asm/unprocessed/runblack.reassemble.1061.007aebb0-007aee98-jmp-table.asm
)
set(SOURCES_002
    asm/unprocessed/bss.200.asm
    asm/unprocessed/data.200.asm
    asm/unprocessed/rdata.200.asm
    asm/unprocessed/rdata.r.200-libcpmt-rtti.asm
    asm/unprocessed/xdata.x.001.009bc428-009be430.asm
    asm/unprocessed/runblack.reassemble.1062.007aee98-007bf030.asm # some libcpmt.lib
    asm/unprocessed/runblack.reassemble.1063.007bf030-007bf210.asm
    asm/unprocessed/text.x.002.asm
)
set(SOURCES_ZLIB
    asm/zlib/deflate.asm
    asm/zlib/inflate.asm
    asm/zlib/zutil.asm
    asm/zlib/adler32.asm
    asm/zlib/trees.asm
    asm/zlib/infblock.asm
    asm/zlib/infcodes.asm
    asm/zlib/inftrees.asm
    asm/zlib/infutil.asm
    asm/zlib/inffast.asm
)
set(SOURCES_004
    asm/unprocessed/runblack.reassemble.1077.007c5100-007c5604-jmp-table.asm
)

set(SOURCES_008
    asm/unprocessed/bss.300.asm
    asm/unprocessed/rdata.300.asm  # contains some d3d 7? data and some libjpeg data
    asm/unprocessed/rdata.r.300.009bb9b4-009bbdc8.asm
    asm/unprocessed/xdata.x.002.009be4f0-009c5564.asm  # contains some ddraw data
    asm/unprocessed/data.300.asm
    asm/unprocessed/runblack.reassemble.1129.007db410-007dc8b0.asm
    asm/unprocessed/runblack.reassemble.1137.007dc8b0-007dee50.asm
    c/PCMain.1138.007dee50-007deef0.c
    asm/unprocessed/runblack.reassemble.1139.007dee50-007e4e40.asm
    asm/unprocessed/runblack.reassemble.1144.007e4e40-007e6070.asm
    asm/unprocessed/runblack.reassemble.1148.007e6070-007e7900.asm
    asm/unprocessed/runblack.reassemble.1152.007e7900-007e7fb0.asm
    asm/unprocessed/runblack.reassemble.1156.007e7fb0-007e8090.asm
    asm/unprocessed/runblack.reassemble.1160.007e8090-007e8170.asm
    asm/unprocessed/runblack.reassemble.1165.007e8170-007e89f0.asm
    asm/unprocessed/runblack.reassemble.1167.007e89f0-007e95d0.asm
    asm/unprocessed/runblack.reassemble.1169.007e95d0-007e9df0.asm
    asm/unprocessed/runblack.reassemble.1173.007e9df0-007e9eb0.asm
    asm/unprocessed/runblack.reassemble.1177.007e9eb0-007ea000.asm
    asm/unprocessed/runblack.reassemble.1180.007ea000-007ea0b0.asm
    asm/unprocessed/runblack.reassemble.1184.007ea0b0-007f5040.asm
    asm/unprocessed/runblack.reassemble.1187.007f5040-007f5450.asm
    asm/unprocessed/runblack.reassemble.1192.007f5450-007f8970.asm
    asm/unprocessed/runblack.reassemble.1195.007f8970-0080b870.asm
    asm/unprocessed/runblack.reassemble.1199.0080b870-0081b370.asm
    asm/unprocessed/runblack.reassemble.1206.0081b370-0081e1f0.asm
    asm/unprocessed/runblack.reassemble.1213.0081e1f0-0082a2c0.asm
    asm/unprocessed/runblack.reassemble.1216.0082a2c0-0082bf10.asm
    asm/unprocessed/runblack.reassemble.1220.0082bf10-008339e0.asm
    asm/unprocessed/runblack.reassemble.1224.008339e0-00837cf0.asm
    asm/unprocessed/runblack.reassemble.1229.00837cf0-00838430.asm
    asm/unprocessed/runblack.reassemble.1233.00838430-00838eb0.asm
    asm/unprocessed/runblack.reassemble.1238.00838eb0-0083c2d0.asm
    asm/unprocessed/runblack.reassemble.1242.0083c2d0-00842030.asm
    asm/unprocessed/runblack.reassemble.1246.00842030-008427a0.asm
    asm/unprocessed/runblack.reassemble.1251.008427a0-0084f2f0.asm
    asm/unprocessed/runblack.reassemble.1255.0084f2f0-008501b0.asm
    asm/unprocessed/runblack.reassemble.1258.008501b0-00863ef0.asm
    asm/unprocessed/runblack.reassemble.1262.00863ef0-00864040.asm
    asm/unprocessed/runblack.reassemble.1265.00864040-00864190.asm
    asm/unprocessed/runblack.reassemble.1268.00864190-00864420.asm
    asm/unprocessed/runblack.reassemble.1272.00864420-008648b0.asm
    asm/unprocessed/runblack.reassemble.1276.008648b0-00864990.asm
    asm/unprocessed/runblack.reassemble.1279.00864990-0086a110.asm
    asm/unprocessed/runblack.reassemble.1281.0086a110-0086d360.asm
    asm/unprocessed/runblack.reassemble.1285.0086d360-0086fb80.asm
    asm/unprocessed/runblack.reassemble.1289.0086fb80-00877d20.asm
    asm/unprocessed/runblack.reassemble.1291.00877d20-00886570.asm
    asm/unprocessed/runblack.reassemble.1295.00886570-0088d540.asm
    asm/unprocessed/runblack.reassemble.1298.0088d540-00891120.asm
    asm/unprocessed/runblack.reassemble.1301.00891120-00891ca0.asm
    asm/unprocessed/runblack.reassemble.1303.00891ca0-00891f40.asm
    asm/unprocessed/runblack.reassemble.1307.00891f40-00893f30.asm
    asm/unprocessed/runblack.reassemble.1312.00893f30-00893fd0.asm
    asm/unprocessed/runblack.reassemble.1316.00893fd0-00896a80.asm
    asm/unprocessed/runblack.reassemble.1320.00896a80-00897480.asm
    asm/unprocessed/runblack.reassemble.1324.00897480-00897550.asm
    asm/unprocessed/runblack.reassemble.1327.00897550-00898390.asm
    asm/unprocessed/runblack.reassemble.1328.00897550-00899040-dlls.asm # ddraw.dll, winmm.dll, wearasr.dll
    asm/unprocessed/runblack.reassemble.1329.00898450-00899040.asm # contains some libjpeg functions
    asm/unprocessed/runblack.reassemble.1332.00899040-00899340.asm
    asm/unprocessed/runblack.reassemble.1335.00899340-008a2710.asm
    asm/unprocessed/runblack.reassemble.1336.008a2710-008a2770-imm32.dll.asm
    asm/unprocessed/runblack.reassemble.1337.008a2770-008a5030.asm # contains simd ops
    asm/unprocessed/runblack.reassemble.1338.008a5030-008a5440-dlls.asm # binkw32.dll, wsock32.dll, kernel32.dll, user32.dll, gdi32.dll, advapi32.dll, ole32.dll, lhlogr.dll
    asm/unprocessed/runblack.reassemble.1339.008a5440-008a5b00.asm
    asm/unprocessed/runblack.reassemble.1342.008a5b00-008a5b0c-dll-jmp-table.asm
)
set(SOURCES_009
    asm/unprocessed/runblack.reassemble.1344.008a6460-008a6470-dll-jmp-table.asm
    asm/unprocessed/data.400.asm
    asm/unprocessed/data.450.asm  # some libjpeg strings
)

add_library(runblack-reassembled-src-001 OBJECT ${SOURCES_001})
add_library(runblack-reassembled-src-002 OBJECT ${SOURCES_002})
add_library(runblack-reassembled-zlib OBJECT ${SOURCES_ZLIB})
add_library(runblack-reassembled-src-004 OBJECT ${SOURCES_004})
add_library(runblack-reassembled-src-008 OBJECT ${SOURCES_008})
add_library(runblack-reassembled-src-009 OBJECT ${SOURCES_009})
add_library(runblack-reassembled-src-bss-005 OBJECT asm/unprocessed/bss.400.asm)

add_library(runblack-reassembled-rc OBJECT
    res/winnt.rh
    res/winuser.rh
    res/verrsrc.h
    res/resource.h
    res/runblack.rc
)

function(add_patched_static_lib_object library_name src_obj)
    cmake_parse_arguments(ARG "NO_PAD;REMOVE_ASSOCIATIVE_FLAGS" "" "WEAKEN_SYMBOLS;DELETE_SECTIONS" ${ARGN})

    string(REPLACE "\\" "/" src_obj_fixed "${src_obj}")
    get_filename_component(obj ${src_obj_fixed} NAME)

    if (CMAKE_HOST_WIN32)
        set(input_file "${CMAKE_CURRENT_BINARY_DIR}/${library_name}/${obj}")
    else()
        set(input_file "${CMAKE_CURRENT_BINARY_DIR}/${library_name}/${src_obj}")
        set(src_obj "${src_obj}")
    endif()
    set(output_file "${CMAKE_CURRENT_BINARY_DIR}/${library_name}-patched/${obj}.patched${OBJ_SUFFIX}")
    set(tmp_output "${output_file}.tmp")

    set(WEAKEN_ARGS "")
    if (ARG_WEAKEN_SYMBOLS)
        foreach(symbol ${ARG_WEAKEN_SYMBOLS})
            list(APPEND WEAKEN_ARGS "--weaken-symbol=${symbol}")
        endforeach()
    endif()

    set(DELETE_ARGS "")
    if (ARG_DELETE_SECTIONS)
        foreach(section ${ARG_DELETE_SECTIONS})
            list(APPEND DELETE_ARGS "--remove-section=${section}")
        endforeach()
    endif()

    set(PATCH_FLAGS "")
    if (ARG_NO_PAD)
        list(APPEND PATCH_FLAGS "--no-pad")
    endif()
    if (ARG_REMOVE_ASSOCIATIVE_FLAGS)
        list(APPEND PATCH_FLAGS "--remove-associative-flags")
    endif()

    add_custom_command(
        VERBATIM
        OUTPUT ${output_file}
        COMMAND ${LLVM_AR_EXECUTABLE} --format=coff --output "${CMAKE_CURRENT_BINARY_DIR}/${library_name}" x ${CMAKE_SOURCE_DIR}/lib/${library_name}.LIB ${src_obj}
        COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py ${input_file} ${tmp_output} ${PATCH_FLAGS}
        COMMAND ${LLVM_OBJCOPY_EXECUTABLE} ${WEAKEN_ARGS} ${DELETE_ARGS} ${tmp_output} ${output_file}
    )

    set(STATIC_LIB_PATCHED_OBJECTS "${STATIC_LIB_PATCHED_OBJECTS};${output_file}" PARENT_SCOPE)
endfunction()

add_library(runblack-reassembled-libcpmt-001 OBJECT IMPORTED)
set(STATIC_LIB_PATCHED_OBJECTS)
add_patched_static_lib_object(LIBCPMT "build\\intel\\mt_obj\\delop.obj")
add_patched_static_lib_object(LIBCPMT "build\\intel\\mt_obj\\xlock.obj")
set_property(TARGET runblack-reassembled-libcpmt-001 PROPERTY IMPORTED_OBJECTS ${STATIC_LIB_PATCHED_OBJECTS})

add_library(runblack-reassembled-libcmt-002 OBJECT IMPORTED)
set(STATIC_LIB_PATCHED_OBJECTS)
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\fpinit.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\typinfo.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\onexit.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\sprintf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\rtti.obj" REMOVE_ASSOCIATIVE_FLAGS WEAKEN_SYMBOLS "__CT??_R0?AVexception@@@8??0exception@@QAE@ABV0@@Z12" "??_R0?AVexception@@@8" "??_R1A@?0A@A@exception@@8")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\toupper.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcscat.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\xtow.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\purevirt.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\memmove.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsncpy.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcslen.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\swprintf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\new.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\atox.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\malloc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\free.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_ctype.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\sscanf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_wctype.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\rename.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\unlink.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\getenv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\stricmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fprintf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fopen.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fclose.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\chkstk.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcscmp.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\ieeemisc.obj" WEAKEN_SYMBOLS "__real@8@3fff8000000000000000" "__real@8@00000000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\asin.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fread.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fwrite.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\acos.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\asctime.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\localtim.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\time.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\pow.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\lldiv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fscanf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fgetc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\vsprintf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\qsort.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\87fmod.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\ceil.obj" WEAKEN_SYMBOLS "__real@8@3fff8000000000000000")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\bsearch.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsstr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\trnsctrl.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\exsup.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fgets.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\splitpat.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wtox.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\rand.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fseek.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ftell.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fputs.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\floor.obj" WEAKEN_SYMBOLS "__real@8@3fff8000000000000000")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\stdexcpt.obj" WEAKEN_SYMBOLS "??_R0?AVexception@@@8" "??_R1A@?0A@A@exception@@8")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\throw.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strcspn.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\memchr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\lconv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strtol.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\dosmap.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strncpy.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strncmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strchr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\calloc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\printf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strtok.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\atof.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\swscanf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strstr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\tolower.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsncmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\towlower.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\abort.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\chmod.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\realloc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\slbeep.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strrchr.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\ieee87.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ulldiv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\llmul.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\crt0dat.obj" WEAKEN_SYMBOLS __FPinit ___onexitbegin ___onexitend ___mbctype_initialized ___env_initialized)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\llshr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\llshl.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\llrem.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mkdir.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fputc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ungetc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fgetpos.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fsetpos.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\setvbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fflush.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsncat.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wincrt0.obj" WEAKEN_SYMBOLS __acmdln)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strlen.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ehprolog.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\memcpy.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\memcmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\setlocal.obj" WEAKEN_SYMBOLS ___unguarded_readlc_active ___setlc_active "??_C@_01KPOD@?$DN?$AA@" "??_C@_01PJCK@?4?$AA@")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\memset.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_file.obj" WEAKEN_SYMBOLS __nstream __bufin ___piob ___pioinfo)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fputwc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ungetwc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fgetwc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mlock.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\nlsdata2.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\a_map.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\isctype.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strtod.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ctype.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\nlsdata1.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strftime.obj" WEAKEN_SYMBOLS ___no_lead_zeros ___alternate_form) # mismatch for the __Strftime function
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\cmiscdat.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\a_cmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fp8.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\testfdiv.obj" WEAKEN_SYMBOLS "__real@8@3fff8000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\cvt.obj" WEAKEN_SYMBOLS "__real@8@00000000000000000000")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strcmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\msize.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_flsbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\output.obj" WEAKEN_SYMBOLS "??_C@_06ONKE@?$CInull?$CJ?$AA@")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\exsup3.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\xtoa.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\woutput.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_newmode.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\handler.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\heapinit.obj" WEAKEN_SYMBOLS ___active_heap __crtheap)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\sbheap.obj" WEAKEN_SYMBOLS ___sbh_threshold ___sbh_pHeaderList ___sbh_cntHeaderList ___sbh_pHeaderDefer ___sbh_initialized ___sbh_pHeaderScan ___sbh_indGroupDefer ___sbh_sizeHeaderList)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\input.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\iswctype.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbsnbico.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wtombenv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_sftbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_open.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\stream.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\close.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_freebuf.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\ldexp.obj" WEAKEN_SYMBOLS "__real@8@00000000000000000000" "__real@8@3fff8000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\util.obj" WEAKEN_SYMBOLS "__real@8@00000000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\fpexcept.obj" WEAKEN_SYMBOLS "__real@8@00000000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\fpctrl.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\87disp.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\genexcep.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\common.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_filbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\read.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\write.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\timeset.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\tidtable.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\tzset.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\gmtime.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\dtoxtime.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\87tran.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\powhlp.obj" WEAKEN_SYMBOLS "__real@8@00000000000000000000" "__real@8@3fff8000000000000000" "__real@8@40008000000000000000")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\87cdisp.obj" WEAKEN_SYMBOLS __matherr_flag)
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\adj_fdiv.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\frnd.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\frame.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\lowhelpr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\hooks.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbctype.obj" WEAKEN_SYMBOLS ___mblcid __mbctype __mbcasemap ___ismbcodepage ___mbulinfo ___mbcodepage)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbsnbcpy.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\lseek.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ioinit.obj" WEAKEN_SYMBOLS __nhandle ___pioinfo)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strcat.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\unhandld.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\cfin.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\winput.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\w_map.obj" WEAKEN_SYMBOLS "??_C@_01A@?$AA?$AA@" "??_C@_13A@?$AA?$AA?$AA?$AA@")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\winsig.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\crt0msg.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_getbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ftelli64.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fseeki64.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\commit.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\winxfltr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wincmdln.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\stdenvp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\stdargv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\a_env.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\inittime.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\initnum.obj" WEAKEN_SYMBOLS "??_C@_01PJCK@?4?$AA@")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\initmon.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\initctyp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\initcoll.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strpbrk.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\nlsdata3.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\getqloc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\closeall.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_flswbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wctomb.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_filwbuf.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbtowc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\a_str.obj" WEAKEN_SYMBOLS "??_C@_01A@?$AA?$AA@" "??_C@_13A@?$AA?$AA?$AA?$AA@")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\huge.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\intrncvt.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\_fptostr.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\cfout.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\crt0fp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\isatty.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ullrem.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\w_str.obj" WEAKEN_SYMBOLS "??_C@_01A@?$AA?$AA@" "??_C@_13A@?$AA?$AA?$AA?$AA@")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\setenv.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\open.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\osfinfo.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\matherr.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\87except.obj" WEAKEN_SYMBOLS "__matherr_flag")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\validate.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\strgtold.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcstombs.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ncommode.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\crtmbox.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\lseeki64.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ismbbyte.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\inithelp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\days.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strnicmp.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\mantold.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\x10fout.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbschr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strdup.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\chsize.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\tenpow.obj")
add_patched_static_lib_object(LIBCMT "..\\build\\intel\\mt_obj\\constpow.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\txtmode.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\w_loc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\a_loc.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\setmode.obj")
set_property(TARGET runblack-reassembled-libcmt-002 PROPERTY IMPORTED_OBJECTS ${STATIC_LIB_PATCHED_OBJECTS})

add_library(runblack-reassembled-libcmt-007 OBJECT IMPORTED)
set(STATIC_LIB_PATCHED_OBJECTS)
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsdup.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsicmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\flength.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\fileno.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsnicmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\chdir.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strlwr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\getpid.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ehvecdtr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\strspn.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcschr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsrchr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcspbrk.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\wcsspn.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\ehvecctr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\clock.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\longjmp.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\setjmp3.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\mbtoupr.obj")
add_patched_static_lib_object(LIBCMT "build\\intel\\mt_obj\\sehsupp.obj")
set_property(TARGET runblack-reassembled-libcmt-007 PROPERTY IMPORTED_OBJECTS ${STATIC_LIB_PATCHED_OBJECTS})

add_executable(runblack-reassembled)
set_target_properties(runblack-reassembled PROPERTIES
    LINKER_LANGUAGE ASM
    SUFFIX ".exe"
)
add_library(common_compile_options INTERFACE)
target_compile_options(common_compile_options INTERFACE
    -target i686-pc-windows-gnu
    -m32
    -masm=intel
    -march=i386
    $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:-g -gcodeview>
    $<$<AND:$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>,$<OR:$<COMPILE_LANGUAGE:C>,$<COMPILE_LANGUAGE:CXX>>>:-fstandalone-debug -fno-eliminate-unused-debug-types>
)
target_include_directories(common_compile_options
    INTERFACE
        C:/msys64/clang64/include
        D:/msys64/clang64/include
        /usr/x86_64-w64-mingw32/include
        ${LLVM_BINARIES_DIR}/../include
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/..
        ${CMAKE_CURRENT_SOURCE_DIR}/../black
        ${CMAKE_CURRENT_SOURCE_DIR}/../libs
)
# Enforce a obj linking order
target_link_libraries(runblack-reassembled
    PRIVATE
        runblack-reassembled-src-001
        runblack-reassembled-libcpmt-001
        runblack-reassembled-src-002  # contents of libcpmt.lib
        runblack-reassembled-zlib
        runblack-reassembled-src-004  # import jump table from lhlib?
        runblack-reassembled-libcmt-002
        runblack-reassembled-src-008  # some lhlib with some libcmt mixed in
        runblack-reassembled-libcmt-007
        runblack-reassembled-src-bss-005
        runblack-reassembled-src-009
        runblack-reassembled-rc
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/bss.200.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/bss.200.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/data.200.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/data.200.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/rdata.200.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/rdata.200.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/rdata.r.200-libcpmt-rtti.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/rdata.r.200-libcpmt-rtti.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/xdata.x.001.009bc428-009be430.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/xdata.x.001.009bc428-009be430.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/runblack.reassemble.1062.007aee98-007bf030.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/runblack.reassemble.1062.007aee98-007bf030.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/text.x.002.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-002.dir/asm/unprocessed/text.x.002.asm${OBJ_SUFFIX}"
            "--no-pad"
)

add_custom_command(
    TARGET runblack-reassembled
    PRE_LINK
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/patch_coff_object_file.py
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-bss-005.dir/asm/unprocessed/bss.400.asm${OBJ_SUFFIX}"
            "${CMAKE_CURRENT_BINARY_DIR}/CMakeFiles/runblack-reassembled-src-bss-005.dir/asm/unprocessed/bss.400.asm${OBJ_SUFFIX}"
            "--no-pad"
)

target_link_libraries(runblack-reassembled-src-001 PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-src-002 PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-zlib PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-src-004 PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-src-008 PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-src-009 PRIVATE common_compile_options)
target_link_libraries(runblack-reassembled-src-bss-005 PRIVATE common_compile_options)

target_link_options(runblack-reassembled
    PRIVATE
        "-flavor"
        "link"
        "/includeglob:*"
        "/FIXED"
        "/errorlimit:0"
        "/sectionvsize:.text,0x004a795d"
        "/sectionvsize:.data,0x5f8e00"
        "$<$<CONFIG:Release>:/sectionvsize:.rsrc,0x393E>" # Required padding for garbage string in vanilla
        "/subsystem:windows,4"
        "/stack:0x100000,0x1000"
        "/heap:0x100000,0x1000"
        "/base:0x00400000"
        "/filealign:0x1000"
        "/entry:WinMainCRTStartup"
        "/safeseh:no"
        "/demangle:no"
        "/NODEFAULTLIB"
        "/OPT:NOREF"
        "/OPT:NOICF"
        "/alternatename:??_Etype_info@@UAEPAXI@Z=??_Gtype_info@@UAEPAXI@Z"
        "/alternatename:??_E__non_rtti_object@@UAEPAXI@Z=??_G__non_rtti_object@@UAEPAXI@Z"
        "/alternatename:??_Ebad_cast@@UAEPAXI@Z=??_Gbad_cast@@UAEPAXI@Z"
        "/alternatename:??_Ebad_typeid@@UAEPAXI@Z=??_Gbad_typeid@@UAEPAXI@Z"
        "/alternatename:??_Eexception@@UAEPAXI@Z=??_Gexception@@UAEPAXI@Z"
        "$<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:/pdb:$<TARGET_FILE:runblack-reassembled>.pdb>"
        "$<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:/debug:FULL>"
)

add_custom_command(
    TARGET runblack-reassembled
    POST_BUILD
    COMMAND ${LLVM_STRIP_EXECUTABLE} "$<TARGET_FILE:runblack-reassembled>"
    COMMAND ${LLVM_STRIP_EXECUTABLE} -R ".CRT" "$<TARGET_FILE:runblack-reassembled>"
    COMMENT "Stripping $<TARGET_FILE:runblack-reassembled> for reloc, idata and debug"
)

add_custom_command(
    TARGET runblack-reassembled
    POST_BUILD
    COMMAND ${Python3_EXECUTABLE} ${CMAKE_SOURCE_DIR}/scripts/post_assemble_patch.py --input "$<TARGET_FILE:runblack-reassembled>" --output "$<TARGET_FILE:runblack-reassembled>" $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:"--debug"> $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:"--turn-off-fullscreen">
    COMMENT "Patching PE header to match vanilla"
)

add_custom_command(
    TARGET runblack-reassembled
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E md5sum "$<TARGET_FILE:runblack-reassembled>"
    COMMENT "Computing the md5sum"
)
