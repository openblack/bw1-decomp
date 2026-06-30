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

    // BW1W120 00780af0 BW1M100 inlined WorshipTotem::TChargingData::TChargingData(void)
    Q212WorshipTotem13TChargingData();
};

class WorshipTotem: public CitadelPart
{
public:
    uint32_t field_0x8c;
    Q212WorshipTotem13TChargingData charging_data; /* 0x90 */
    WorshipSite* site; /* 0x100 */

    // Override methods

    // BW1W120 00780810 BW1M100 105b74d0 WorshipTotem::_dt(void)
    virtual ~WorshipTotem();
    // BW1W120 007808e0 BW1M100 105b8520 WorshipTotem::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00780800 BW1M100 105b7760 WorshipTotem::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00780f10 BW1M100 105b7910 WorshipTotem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00780f90 BW1M100 105b7820 WorshipTotem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 007807f0 BW1M100 105b7720 WorshipTotem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00780f00 BW1M100 105b7a00 WorshipTotem::ResolveLoad(void)
    virtual void ResolveLoad();
    // BW1W120 00780ad0 BW1M100 105b8160 WorshipTotem::GetPSysPower( const(void))
    virtual float GetPSysPower();
    // BW1W120 00780a80 BW1M100 105b8330 WorshipTotem::CalculateDesireForFood(void)
    virtual float CalculateDesireForFood();
    // BW1W120 00780a90 BW1M100 105b82c0 WorshipTotem::CalculateDesireForRest(void)
    virtual float CalculateDesireForRest();
    // BW1W120 00780aa0 BW1M100 105b8240 WorshipTotem::CalculatePeopleHidingIndicator(void)
    virtual float CalculatePeopleHidingIndicator();
    // BW1W120 007807e0 BW1M100 105b76e0 WorshipTotem::IsSacrificeAltar(void)
    virtual uint32_t IsSacrificeAltar();
    // BW1W120 007807b0 BW1M100 inlined WorshipTotem::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // BW1W120 007807c0 BW1M100 105b7650 WorshipTotem::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // BW1W120 00780a70 BW1M100 105b83a0 WorshipTotem::GetMesh( const(void))
    virtual int GetMesh();
    // BW1W120 00519360 BW1M100 100c7bd0 WorshipTotem::Draw(void)
    virtual void Draw();
    // BW1W120 00780ab0 BW1M100 105b81d0 WorshipTotem::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 007807d0 BW1M100 105b7690 WorshipTotem::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 00780790 BW1M100 105b7570 WorshipTotem::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
    // BW1W120 007807a0 BW1M100 105b75c0 WorshipTotem::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);

    // Static methods

    // BW1W120 00780930 BW1M100 105b8440 WorshipTotem::Create(WorshipSite *)
    static WorshipTotem* Create(WorshipSite* site);

    // Constructors

    // BW1W120 00780840 BW1M100 105b8640 WorshipTotem::WorshipTotem(WorshipSite *)
    WorshipTotem(WorshipSite* site);
};

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
