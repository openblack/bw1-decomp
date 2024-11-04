#ifndef BW1_DECOMP_SETUP_INCLUDED_H
#define BW1_DECOMP_SETUP_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHScriptPramX_c_;
struct MapCoords;

// win1.41 00715180 mac 105091d0 GSetup::FeatureMapCommandProcess<c>(long, LHScriptPramX<c> *)
uint32_t __cdecl FeatureMapCommandProcess__6GSetupFlP16LHScriptPramX_c_(uint32_t op, struct LHScriptPramX_c_* script_param);
// win1.41 007180b0 mac 10508ff0 GSetup::LoadMapFeatures(char *)
void __cdecl LoadMapFeatures__6GSetupFPc(char* map_path);
// win1.41 00718250 mac 10508f20 GSetup::GetScriptPos(char *)
struct MapCoords* __cdecl GetScriptPos__6GSetupFPc(struct MapCoords* coords, const char* str);

#endif /* BW1_DECOMP_SETUP_INCLUDED_H */
