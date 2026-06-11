#ifndef BW1_DECOMP_FEATURE_INCLUDED_H
#define BW1_DECOMP_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;

class Feature: public MultiMapFixed
{
public:

    // Override methods

    // win1.41 00422e90 mac 100a7a50 Feature::_dt(void)
    virtual ~Feature();
    // win1.41 00422e80 mac 100d1880 Feature::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00422e70 mac 100d1840 Feature::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00422140 mac 100a5490 Feature::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00422150 mac 100a54d0 Feature::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 005276d0 mac 100d0c30 Feature::IsMushroom(Creature *)
    virtual uint32_t IsMushroom(Creature* param_1);
    // win1.41 004220e0 mac 100a5350 Feature::IsFeature(void)
    virtual uint32_t IsFeature();
    // win1.41 005277d0 mac 100d0890 Feature::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00527820 mac 100d07b0 Feature::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 005276c0 mac 10008370 Feature::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 004220d0 mac 100a52b0 Feature::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00518690 mac 100238a0 Feature::Draw(void)
    virtual void Draw();
    // win1.41 005275b0 mac 100d0dc0 Feature::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
