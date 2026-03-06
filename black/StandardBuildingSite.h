#ifndef BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BuildingSite.h" /* For struct BuildingSite */

#ifdef __cplusplus

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;
class Object;
class Pot;
class PotStructure;

// win1.41 009cd470 mac inlined StandardBuildingSite::`RTTI Type Descriptor'
// win1.41 009a8638 mac inlined StandardBuildingSite::`RTTI Base Class Descriptor'
// win1.41 009a8650 mac inlined StandardBuildingSite::`RTTI Base Class Array'
// win1.41 009a8668 mac inlined StandardBuildingSite::`RTTI Class Hierarchy Descriptor'
// win1.41 008c6df0 mac 10739334 StandardBuildingSite::`RTTI Complete Object Locator'
// win1.41 008c6df4 mac 1073933c StandardBuildingSite::`vftable'
class StandardBuildingSite: public BuildingSite
{
public:
    Pot* wood_pile; /* 0x644 */

    // Override methods

    // win1.41 0043d720 mac 100b8360 StandardBuildingSite::_dt(void)
    virtual ~StandardBuildingSite();
    // win1.41 0043d710 mac 100be260 StandardBuildingSite::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0043d890 mac 100b7ec0 StandardBuildingSite::Load(GameOSFile &)
    virtual bool Load(GameOSFile& param_1);
    // win1.41 0043d850 mac 100b7f60 StandardBuildingSite::Save(GameOSFile &)
    virtual bool Save(GameOSFile& param_1);
    // win1.41 0043d700 mac 100be220 StandardBuildingSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0043d8d0 mac 10077e70 StandardBuildingSite::Process(void)
    virtual void Process();
    // win1.41 0043c5e0 mac inlined StandardBuildingSite::GetWoodForStats(void)
    virtual uint32_t GetWoodForStats();
    // win1.41 0043d6e0 mac 100b8180 StandardBuildingSite::GetPileWood(MapCoords const &)
    virtual Pot* GetPileWood(const MapCoords* param_1);
    // win1.41 0043d6f0 mac 100b8130 StandardBuildingSite::SetPileWood(Pot *)
    virtual void SetPileWood(Pot* param_1);
    // win1.41 0043d760 mac 100b81d0 StandardBuildingSite::CreatePileWood(void)
    virtual void CreatePileWood();
    // win1.41 0043c220 mac inlined StandardBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
    virtual void GetResourcePosAndYAngle(uint32_t param_1, uint32_t param_2, float* param_3);
    // win1.41 0043d800 mac 100b8060 StandardBuildingSite::RemovePotFromStructure(PotStructure *)
    virtual void RemovePotFromStructure(PotStructure* param_1);
    // win1.41 0043d830 mac 100b8000 StandardBuildingSite::IsLinkedToThisBuildingSite(Pot *)
    virtual bool IsLinkedToThisBuildingSite(Pot* param_1);
    // win1.41 0043ce40 mac inlined StandardBuildingSite::GetNearestEdge(float, float, int *)
    virtual float GetNearestEdge(float param_1, float param_2, int* param_3);
    // win1.41 0043cf40 mac inlined StandardBuildingSite::GetNextPosFromIndex(int *)
    virtual void GetNextPosFromIndex(int* param_1);
    // win1.41 0043cde0 mac inlined StandardBuildingSite::GetRandomBuildPos(Object *, int *)
    virtual void GetRandomBuildPos(Object* param_1, int* param_2);
};

#else // __cplusplus

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;
struct MapCoords;
struct Object;
struct Pot;
struct PotStructure;

struct StandardBuildingSite
{
  struct BuildingSite super;  /* 0x0 */
  struct Pot* wood_pile;  /* 0x644 */
};
static_assert(sizeof(struct StandardBuildingSite) == 0x648, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd470 mac inlined StandardBuildingSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20StandardBuildingSite asm("??_R0?AVStandardBuildingSite@@@8");
// win1.41 009a8638 mac inlined StandardBuildingSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20StandardBuildingSite asm("??_R1A@?0A@A@StandardBuildingSite@@8");
// win1.41 009a8650 mac inlined StandardBuildingSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20StandardBuildingSite asm("??_R2StandardBuildingSite@@8");
// win1.41 009a8668 mac inlined StandardBuildingSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20StandardBuildingSite asm("??_R3StandardBuildingSite@@8");
// win1.41 008c6df0 mac 10739334 StandardBuildingSite::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20StandardBuildingSite asm("??_R4StandardBuildingSite@@6B@");
// win1.41 008c6df4 mac 1073933c StandardBuildingSite::`vftable'
extern const struct BuildingSiteVftable __vt__20StandardBuildingSite asm("??_7StandardBuildingSite@@6B@");

// Override methods

// win1.41 0043d720 mac 100b8360 StandardBuildingSite::_dt(void)
void __fastcall __dt__20StandardBuildingSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GStandardBuildingSite@@UAEPAXI@Z");
// win1.41 0043d710 mac 100be260 StandardBuildingSite::GetDebugText(void)
char* __fastcall GetDebugText__20StandardBuildingSiteFv(struct GameThing* this) asm("?GetDebugText@StandardBuildingSite@@UAEPADXZ");
// win1.41 0043d890 mac 100b7ec0 StandardBuildingSite::Load(GameOSFile &)
uint32_t __fastcall Load__20StandardBuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@StandardBuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043d850 mac 100b7f60 StandardBuildingSite::Save(GameOSFile &)
uint32_t __fastcall Save__20StandardBuildingSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@StandardBuildingSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0043d700 mac 100be220 StandardBuildingSite::GetSaveType(void)
uint32_t __fastcall GetSaveType__20StandardBuildingSiteFv(struct GameThing* this) asm("?GetSaveType@StandardBuildingSite@@UAEIXZ");
// win1.41 0043d8d0 mac 10077e70 StandardBuildingSite::Process(void)
void __fastcall Process__20StandardBuildingSiteFv(struct BuildingSite* this) asm("?Process@StandardBuildingSite@@UAEXXZ");
// win1.41 0043c5e0 mac inlined StandardBuildingSite::GetWoodForStats(void)
uint32_t __fastcall GetWoodForStats__20StandardBuildingSiteFv(struct BuildingSite* this) asm("?GetWoodForStats@StandardBuildingSite@@UAEIXZ");
// win1.41 0043d6e0 mac 100b8180 StandardBuildingSite::GetPileWood(MapCoords const &)
struct Pot* __fastcall GetPileWood__20StandardBuildingSiteFRC9MapCoords(struct BuildingSite* this, const void* edx, const struct MapCoords* param_1) asm("?GetPileWood@StandardBuildingSite@@UAEPAVPot@@ABUMapCoords@@@Z");
// win1.41 0043d6f0 mac 100b8130 StandardBuildingSite::SetPileWood(Pot *)
void __fastcall SetPileWood__20StandardBuildingSiteFP3Pot(struct BuildingSite* this, const void* edx, struct Pot* param_1) asm("?SetPileWood@StandardBuildingSite@@UAEXPAVPot@@@Z");
// win1.41 0043d760 mac 100b81d0 StandardBuildingSite::CreatePileWood(void)
void __fastcall CreatePileWood__20StandardBuildingSiteFv(struct BuildingSite* this) asm("?CreatePileWood@StandardBuildingSite@@UAEXXZ");
// win1.41 0043c220 mac inlined StandardBuildingSite::GetResourcePosAndYAngle(unsigned int, unsigned int, float *)
void __fastcall GetResourcePosAndYAngle__20StandardBuildingSiteFUiUiPf(struct BuildingSite* this, const void* edx, uint32_t param_1, uint32_t param_2, float* param_3) asm("?GetResourcePosAndYAngle@StandardBuildingSite@@UAEXIIPAM@Z");
// win1.41 0043d800 mac 100b8060 StandardBuildingSite::RemovePotFromStructure(PotStructure *)
void __fastcall RemovePotFromStructure__20StandardBuildingSiteFP12PotStructure(struct BuildingSite* this, const void* edx, struct PotStructure* param_1) asm("?RemovePotFromStructure@StandardBuildingSite@@UAEXPAVPotStructure@@@Z");
// win1.41 0043d830 mac 100b8000 StandardBuildingSite::IsLinkedToThisBuildingSite(Pot *)
bool __fastcall IsLinkedToThisBuildingSite__20StandardBuildingSiteFP3Pot(struct BuildingSite* this, const void* edx, struct Pot* param_1) asm("?IsLinkedToThisBuildingSite@StandardBuildingSite@@UAE_NPAVPot@@@Z");
// win1.41 0043ce40 mac inlined StandardBuildingSite::GetNearestEdge(float, float, int *)
float __fastcall GetNearestEdge__20StandardBuildingSiteFffPi(struct BuildingSite* this, const void* edx, float param_1, float param_2, int* param_3) asm("?GetNearestEdge@StandardBuildingSite@@UAEMMMPAH@Z");
// win1.41 0043cf40 mac inlined StandardBuildingSite::GetNextPosFromIndex(int *)
void __fastcall GetNextPosFromIndex__20StandardBuildingSiteFPi(struct BuildingSite* this, const void* edx, int* param_1) asm("?GetNextPosFromIndex@StandardBuildingSite@@UAEXPAH@Z");
// win1.41 0043cde0 mac inlined StandardBuildingSite::GetRandomBuildPos(Object *, int *)
void __fastcall GetRandomBuildPos__20StandardBuildingSiteFP6ObjectPi(struct BuildingSite* this, const void* edx, struct Object* param_1, int* param_2) asm("?GetRandomBuildPos@StandardBuildingSite@@UAEXPAVObject@@PAH@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H */
