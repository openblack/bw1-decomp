#ifndef BW1_DECOMP_INTERFACE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h>

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h>

#include "BaseInfo.h"               /* For struct BaseInfo */
#include "GameThingWithPos.h"       /* For struct GameThingWithPos */
#include "InterfaceCollide.h"       /* For struct GInterfaceCollide */
#include "InterfaceFlags.h"         /* For struct GInterfaceFlags */
#include "InterfaceHandState.h"     /* For struct InterfaceHandState */
#include "InterfaceMessage.h"       /* For enum INTERFACE_MESSAGE_TYPES */
#include "InterfaceMessageBuffer.h" /* For struct GInterfaceMessageBuffer */

// Forward Declares

class Base;
class CHand;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
struct LHCoord;
class LH3DObject;
class LHPlayer;
struct LHPoint;
class Object;
struct Leash;
struct LiquidParticleGroup;

class GInterface : public GameThingWithPos
{
public:
	// BW1W120 005d05f0 BW1M119 01360150
	void                    Validate();
	uint32_t                field_0x28;
	LiquidParticleGroup*    liquid_particle_group;
	GInterfaceFlags         flags; /* 0x30 */
	int                     field_0x44;
	uint32_t                field_0x48;
	uint32_t                field_0x4c;
	LHReleasedOSFile        file;               /* 0x50 */
	uint32_t                IsSpecificPlayback; /* 0x15c */
	uint32_t                IsAnyPlayback;      /* 0x160 */
	uint8_t                 field_0x164[0x30];
	uint32_t                field_0x194;
	Leash*                  Leash0x198;
	Leash*                  Leash0x19c;
	Leash*                  Leash0x1a0;
	uint32_t                field_0x1a4;
	uint32_t                field_0x1a8;
	uint32_t                field_0x1ac;
	uint32_t                field_0x1b0;
	uint32_t                field_0x1b4;
	uint32_t                field_0x1b8;
	LHPlayer*               player;
	uint8_t                 field_0x1c0[0x1a0];
	uint32_t                field_0x360;
	uint32_t                field_0x364;
	uint32_t                field_0x368;
	uint32_t                field_0x36c;
	uint32_t                field_0x370;
	uint32_t                field_0x374;
	uint32_t                field_0x378;
	uint32_t                field_0x37c;
	uint32_t                field_0x380;
	uint32_t                field_0x384;
	uint32_t                field_0x388;
	uint32_t                field_0x38c;
	uint32_t                field_0x390;
	uint32_t                field_0x394;
	uint32_t                field_0x398;
	GInterfaceStatus*       status;
	LHFastPointer<CHand>    hand; /* 0x3a0 */
	InterfaceHandState      field_0x3a4;
	GInterfaceCollide       interface_collide; /* 0x3b0 */
	GInterfaceCollide       field_0x3e0;
	float                   field_0x410;
	float                   field_0x414;
	uint32_t                field_0x418;
	uint32_t                field_0x41c;
	uint32_t                field_0x420;
	uint32_t                field_0x424;
	uint32_t                field_0x428;
	uint32_t                field_0x42c;
	GInterfaceMessageBuffer MessageBuffers; /* 0x430 */
	int                     field_0x444;
	int                     field_0x448;
	uint32_t                field_0x44c;
	uint32_t                field_0x450;
	uint32_t                field_0x454;
	uint32_t                field_0x458;
	BaseInfo                field_0x45c;
	uint32_t                field_0x468;
	uint32_t                field_0x46c;
	uint32_t                field_0x470;
	uint32_t                field_0x474;
	uint32_t                field_0x478;

	// Override methods

	// BW1W120 005ce310 BW1M119 01363e50
	virtual ~GInterface();
	// BW1W120 005ce480 BW1M119 01363bb0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005cec50 BW1M119 01362d00
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 005ce2c0 BW1M119 0106b890
	virtual GPlayer* GetPlayer();
	// BW1W120 005ce300 BW1M119 0135fe70
	virtual char* GetDebugText();
	// BW1W120 005d04d0 BW1M119 01360520
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005d0490 BW1M119 013605b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005ce2f0 BW1M119 0135fe30
	virtual uint32_t GetSaveType();
	// BW1W120 005d0590 BW1M119 013601b0
	virtual void SaveExtraData(GameOSFile& param_1);
	// BW1W120 005d0510 BW1M119 01360310
	virtual void ResolveLoad();
	// BW1W120 005ce2e0 BW1M119 01076df0
	virtual bool32_t IsActive() const;
	// BW1W120 005ce2d0 BW1M119 0135fdf0
	virtual const char* GetText();

	// Non-virtual methods

	// BW1W120 005d8af0 BW1M119 0136f110
	void StopAllImmersion();
	// BW1W120 005d56c0 BW1M119 0107d9c0
	void SendObjectDrawCollision(Object* object, float distance, LH3DObject* lh3d_object);

	// BW1W120 005d0560 BW1M119 01360280
	void ResolveLoadForCreature();

	// BW1W120 005ce4d0 BW1M119 01363950
	void SetToZero();
	// BW1W120 005ce670 BW1M119 013637d0
	void Init(uint8_t player_number);
	// BW1W120 005ce7f0 BW1M119 01363560
	void InitLeash();
	// BW1W120 005ce920 BW1M119 01363380
	void SetupHand();
	// BW1W120 005ce9e0 BW1M119 0107de50
	void PreDrawProcess();
	// BW1W120 005ceab0 BW1M119 0107ff30
	void        PostDrawProcess();
	void        Draw();           // 00518640
	static void DrawAllLeashes(); // 005d9310
	// BW1W120 005cec10 BW1M119 01028060
	void Process();
	// BW1W120 005cedb0 BW1M119 01086500
	void ProcessFrameUpdates();
	// BW1W120 005db710 BW1M119 01074d00
	bool32_t IsPlayBack(uint32_t playback) const;
	// BW1W120 005d0610 BW1M119 01086440
	void UpdateHandRenderCollide();
	// BW1W120 005ce3f0 BW1M119 01363de0
	static void SetupStatics();
	// BW1W120 005ceba0 BW1M119 01362e80
	bool32_t LoadFiles();
	// BW1W120 005d9130 BW1M119 01033f60
	void UpdateAllLeashes();
	// BW1W120 005d9d80 BW1M119 010042e0
	bool SendMessageA(INTERFACE_MESSAGE_TYPES param_1, LHCoord* param_2);
};

// LHReleasedOSFile already includes its 0x104-byte filename storage.
static_assert(offsetof(GInterface, IsSpecificPlayback) == 0x15c, "GInterface playback offset is incorrect");
static_assert(offsetof(GInterface, hand) == 0x3a0, "GInterface hand offset is incorrect");
static_assert(sizeof(LHFastPointer<CHand>) == 4, "GInterface hand pointer size is incorrect");
static_assert(offsetof(GInterface, field_0x3a4) == 0x3a4, "GInterface hand state offset is incorrect");

#endif /* BW1_DECOMP_INTERFACE_INCLUDED_H */
