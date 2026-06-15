#ifndef BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H
#define BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "LightSheet.h" /* For struct LightSheet */

// Forward Declares

class Base;
class EffectValues;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;
class WorshipSite;

struct Q212WorshipTotem13TChargingData
{
    uint8_t field_0x0;
    LightSheet light_sheet;
    uint32_t field_0x64;
    uint32_t field_0x68;
    uint32_t field_0x6c;

    // Constructors

    // win1.41 00780af0 mac inlined WorshipTotem::TChargingData::TChargingData(void)
    Q212WorshipTotem13TChargingData();
};

class WorshipTotem: public CitadelPart
{
public:
    uint32_t field_0x8c;
    Q212WorshipTotem13TChargingData charging_data; /* 0x90 */
    WorshipSite* site; /* 0x100 */

    // Override methods

    // win1.41 00780810 mac 105b74d0 WorshipTotem::_dt(void)
    virtual ~WorshipTotem();
    // win1.41 007808e0 mac 105b8520 WorshipTotem::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00780800 mac 105b7760 WorshipTotem::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00780f10 mac 105b7910 WorshipTotem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00780f90 mac 105b7820 WorshipTotem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 007807f0 mac 105b7720 WorshipTotem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00780f00 mac 105b7a00 WorshipTotem::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00780ad0 mac 105b8160 WorshipTotem::GetPSysPower( const(void))
    virtual float GetPSysPower();
    // win1.41 00780a80 mac 105b8330 WorshipTotem::CalculateDesireForFood(void)
    virtual float CalculateDesireForFood();
    // win1.41 00780a90 mac 105b82c0 WorshipTotem::CalculateDesireForRest(void)
    virtual float CalculateDesireForRest();
    // win1.41 00780aa0 mac 105b8240 WorshipTotem::CalculatePeopleHidingIndicator(void)
    virtual float CalculatePeopleHidingIndicator();
    // win1.41 007807e0 mac 105b76e0 WorshipTotem::IsSacrificeAltar(void)
    virtual uint32_t IsSacrificeAltar();
    // win1.41 007807b0 mac inlined WorshipTotem::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // win1.41 007807c0 mac 105b7650 WorshipTotem::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // win1.41 00780a70 mac 105b83a0 WorshipTotem::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00519360 mac 100c7bd0 WorshipTotem::Draw(void)
    virtual void Draw();
    // win1.41 00780ab0 mac 105b81d0 WorshipTotem::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 007807d0 mac 105b7690 WorshipTotem::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 00780790 mac 105b7570 WorshipTotem::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
    // win1.41 007807a0 mac 105b75c0 WorshipTotem::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);

    // Static methods

    // win1.41 00780930 mac 105b8440 WorshipTotem::Create(WorshipSite *)
    static WorshipTotem* Create(WorshipSite* site);

    // Constructors

    // win1.41 00780840 mac 105b8640 WorshipTotem::WorshipTotem(WorshipSite *)
    WorshipTotem(WorshipSite* site);
};

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
