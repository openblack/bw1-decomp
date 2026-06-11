#ifndef BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H
#define BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class CitadelEntrance: public Object
{
public:

    // Override methods

    // win1.41 00468e80 mac 101bb490 CitadelEntrance::_dt(void)
    virtual ~CitadelEntrance();
    // win1.41 00468e70 mac 101bb5b0 CitadelEntrance::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00468e60 mac 101bb570 CitadelEntrance::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00469380 mac 101bb5f0 CitadelEntrance::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00468f90 mac 101bbbe0 CitadelEntrance::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00468fa0 mac 101bbb70 CitadelEntrance::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 00468f50 mac 101bbc30 CitadelEntrance::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 00468ef0 mac 101bbce0 CitadelEntrance::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 00468e50 mac 101bb520 CitadelEntrance::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_CITADEL_ENTRANCE_INCLUDED_H */
