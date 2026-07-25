#ifndef BW1_DECOMP_SETUP_INCLUDED_H
#define BW1_DECOMP_SETUP_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHScript.h> /* For struct LHScriptPramX */

#include "Script.h" /* For enum SCRIPT_FEATURE_COMMANDS */

// Forward Declares

class LHOSFile;
struct MapCell;
struct MapCoords;

class GSetup
{
public:
	// win1.41 00715180 mac 105091d0 GSetup::FeatureMapCommandProcess<c>(long, LHScriptPramX<c> *)
	uint32_t FeatureMapCommandProcess(uint32_t op, LHScriptPramX<char>* script_param);
	// win1.41 007180b0 mac 10508ff0 GSetup::LoadMapFeatures(char *)
	static void LoadMapFeatures(char* map_path);
	// win1.41 00718250 mac 10508f20 GSetup::GetScriptPos(char *)
	static MapCoords GetScriptPos(char* str);
	// win1.41 00715130 mac 1050c350 GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS)
	static char* GetCommandAsText(SCRIPT_FEATURE_COMMANDS param_1);
	// win1.41 00719610 mac 10507c70 GSetup::WriteToFile(void *, LHOSFile &, void *, unsigned long)
	static uint32_t WriteToFile(void* param_1, LHOSFile& param_2, void* param_3, uint32_t param_4);
	// win1.41 00719280 mac 10507ce0 GSetup::LoadTextScripts(void)
	static int LoadTextScripts();
	// win1.41 00715080 mac 1050c3d0 GSetup::LoadMapScript(void)
	static int LoadMapScript();
	// win1.41 00718330 mac 10508550 GSetup::SaveAllMap(char *)
	static int SaveAllMap(char* param_1);
	// win1.41 00718870 mac 10508160 GSetup::SaveMapCell(LHOSFile &, MapCell *, unsigned long &, unsigned long &, unsigned long &, unsigned long &, unsigned long &, MapCoords const &)
	static void SaveMapCell(LHOSFile& param_1, MapCell* param_2, uint32_t& param_3, uint32_t& param_4,
	                        uint32_t& param_5, uint32_t& param_6, uint32_t& param_7, const MapCoords& param_8);
};

#endif /* BW1_DECOMP_SETUP_INCLUDED_H */
