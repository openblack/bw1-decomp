#ifndef BW1_DECOMP_SETUP_INCLUDED_H
#define BW1_DECOMP_SETUP_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include "Script.h" /* For enum SCRIPT_FEATURE_COMMANDS */

// Forward Declares

struct GSetup;
struct LHOSFile;
struct LHScriptPramX_c_;
struct MapCoords;

// win1.41 00715180 mac 105091d0 GSetup::FeatureMapCommandProcess<c>(long, LHScriptPramX<c> *)
uint32_t __cdecl FeatureMapCommandProcess__6GSetupFlP16LHScriptPramX_c_(uint32_t op, struct LHScriptPramX_c_* script_param);
// win1.41 007180b0 mac 10508ff0 GSetup::LoadMapFeatures(char *)
void __cdecl LoadMapFeatures__6GSetupFPc(char* map_path);
// win1.41 00718250 mac 10508f20 GSetup::GetScriptPos(char *)
struct MapCoords* __cdecl GetScriptPos__6GSetupFPc(struct MapCoords* coords, const char* str);
// win1.41 00715130 mac 1050c350 GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS)
char* __cdecl GetCommandAsText__6GSetupF23SCRIPT_FEATURE_COMMANDS(struct GSetup* this, enum SCRIPT_FEATURE_COMMANDS param_1) asm("?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z");
// win1.41 00719610 mac 10507c70 GSetup::WriteToFile(void *, LHOSFile &, void *, unsigned long)
uint32_t __cdecl WriteToFile__6GSetupFPvR8LHOSFilePvUl(struct GSetup* this, void* param_1, struct LHOSFile* param_2, void* param_3, unsigned long param_4) asm("?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z");

#endif /* BW1_DECOMP_SETUP_INCLUDED_H */
