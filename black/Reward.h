#ifndef BW1_DECOMP_REWARD_INCLUDED_H
#define BW1_DECOMP_REWARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct Base;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct Reward
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x40];
};
static_assert(sizeof(struct Reward) == 0xa8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0bee8 mac inlined Reward::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Reward asm("??_R0?AVReward@@@8");
// win1.41 009b8d48 mac inlined Reward::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Reward asm("??_R1A@?0A@A@Reward@@8");
// win1.41 009b8d60 mac inlined Reward::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Reward asm("??_R2Reward@@8");
// win1.41 009b8d80 mac inlined Reward::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Reward asm("??_R3Reward@@8");
// win1.41 00941890 mac 10759768 Reward::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Reward asm("??_R4Reward@@6B@");
// win1.41 00941894 mac 10759770 Reward::`vftable'
extern const struct MobileObjectVftable __vt__6Reward asm("??_7Reward@@6B@");

// Override methods

// win1.41 006e5690 mac 1013bef0 Reward::_dt(void)
void __fastcall __dt__6RewardFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GReward@@UAEPAXI@Z");
// win1.41 006e5c10 mac 1013b3b0 Reward::ToBeDeleted(int)
void __fastcall ToBeDeleted__6RewardFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Reward@@UAEXH@Z");
// win1.41 006e5cb0 mac 1013b340 Reward::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__6RewardFv(struct GameThing* this) asm("?GetPlayer@Reward@@UAEPAVGPlayer@@XZ");
// win1.41 006e5680 mac 10138f70 Reward::GetDebugText(void)
char* __fastcall GetDebugText__6RewardFv(struct GameThing* this) asm("?GetDebugText@Reward@@UAEPADXZ");
// win1.41 006e6c70 mac 10139000 Reward::Load(GameOSFile &)
uint32_t __fastcall Load__6RewardFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Reward@@UAEIAAVGameOSFile@@@Z");
// win1.41 006e69c0 mac 10139380 Reward::Save(GameOSFile &)
uint32_t __fastcall Save__6RewardFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Reward@@UAEIAAVGameOSFile@@@Z");
// win1.41 006e5670 mac 10138f30 Reward::GetSaveType(void)
uint32_t __fastcall GetSaveType__6RewardFv(struct GameThing* this) asm("?GetSaveType@Reward@@UAEIXZ");
// win1.41 006e6f00 mac 10138fb0 Reward::ResolveLoad(void)
void __fastcall ResolveLoad__6RewardFv(struct GameThing* this) asm("?ResolveLoad@Reward@@UAEXXZ");
// win1.41 006e6990 mac 101397c0 Reward::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__6RewardFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@Reward@@UAEXH@Z");
// win1.41 006e69b0 mac 10139730 Reward::GetOverwriteTapToolTip(void)
uint32_t __fastcall GetOverwriteTapToolTip__6RewardFv(struct GameThingWithPos* this) asm("?GetOverwriteTapToolTip@Reward@@UAEIXZ");
// win1.41 006e5650 mac 10138ed0 Reward::IsReward( const(void))
uint32_t __fastcall IsReward__6RewardCFv(const struct GameThingWithPos* this) asm("?IsReward@Reward@@UBEIXZ");
// win1.41 006e5660 mac 10138f00 Reward::IsActive( const(void))
uint32_t __fastcall IsActive__6RewardCFv(const struct GameThingWithPos* this) asm("?IsActive@Reward@@UBEIXZ");
// win1.41 006e5ca0 mac 1013b370 Reward::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__6RewardFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Reward@@UAEIXZ");
// win1.41 006e68f0 mac 10139850 Reward::Process(void)
uint32_t __fastcall Process__6RewardFv(struct Object* this) asm("?Process@Reward@@UAEIXZ");
// win1.41 006e6380 mac 1013a430 Reward::Draw(void)
void __fastcall Draw__6RewardFv(struct Object* this) asm("?Draw@Reward@@UAEXXZ");
// win1.41 006e6880 mac 10139bc0 Reward::GetWeight(void)
float __fastcall GetWeight__6RewardFv(struct Object* this) asm("?GetWeight@Reward@@UAEMXZ");
// win1.41 006e59b0 mac 1013b570 Reward::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__6RewardFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Reward@@UAEXABUMapCoords@@@Z");
// win1.41 006e69a0 mac 10139770 Reward::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__6RewardFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Reward@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e5cc0 mac 1013b270 Reward::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__6RewardFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@Reward@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e5d00 mac 1013a480 Reward::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__6RewardFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@Reward@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006e6980 mac 10139800 Reward::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__6RewardFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Reward@@UAE_NXZ");

DECLARE_LH_LINKED_LIST(Reward);

struct GRewardProgress
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GRewardProgress) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0bec8 mac inlined GRewardProgress::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GRewardProgress asm("??_R0?AVGRewardProgress@@@8");
// win1.41 009b8cf8 mac inlined GRewardProgress::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GRewardProgress asm("??_R1A@?0A@A@GRewardProgress@@8");
// win1.41 009b8d10 mac inlined GRewardProgress::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GRewardProgress asm("??_R2GRewardProgress@@8");
// win1.41 009b8d20 mac inlined GRewardProgress::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GRewardProgress asm("??_R3GRewardProgress@@8");

// Override methods

// win1.41 006e5580 mac 1013afe0 GRewardProgress::_dt(void)
void __fastcall __dt__15GRewardProgressFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGRewardProgress@@UAEPAXI@Z");
// win1.41 006e5520 mac 1013c310 GRewardProgress::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GRewardProgressFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GRewardProgress@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_REWARD_INCLUDED_H */
