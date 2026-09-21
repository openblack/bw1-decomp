#ifndef BW1_DECOMP_DANCE_INCLUDED_H
#define BW1_DECOMP_DANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GroupBehaviour.h" /* For struct GroupBehaviour */

// Forward Declares

class Base;
class GDanceInfo;
class GFootpath;
class GFootpathLink;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LHPoint;
struct MapCoords;
class Town;

class Dance : public GroupBehaviour
{
public:
	// BW1W120 0050bb60 BW1M119 0108ff50
	static void ProcessDances();

	uint32_t field_0xe8;
	Dance*   Next; /* 0xec */
	uint8_t  field_0xf0[0x3c];

	// Override methods

	// BW1W120 0050b770 BW1M119 012ad180
	virtual ~Dance();
	// BW1W120 0050b970 BW1M119 012ace10
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050c250 BW1M119 012ac440
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 0050b720 BW1M119 012ab210
	virtual GFootpathLink* GetFootpathLink();
	// BW1W120 0050ca60 BW1M119 012ab4c0
	virtual uint32_t AddFootpath(GFootpath* param_1);
	// BW1W120 0050cb10 BW1M119 012ab420
	virtual uint32_t RemoveFootpath(GFootpath* param_1);
	// BW1W120 0050b760 BW1M119 012ab2e0
	virtual char* GetDebugText();
	// BW1W120 0050c760 BW1M119 012ab680
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050c480 BW1M119 012aba40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050b750 BW1M119 012ab2b0
	virtual uint32_t GetSaveType();
	// BW1W120 0050cb40 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0050b730 BW1M119 012ab250
	virtual uint32_t IsDance() const;
	// BW1W120 0050b710 BW1M119 012ab1d0
	virtual uint32_t IsScriptContainer() const;
	// BW1W120 0050b740 BW1M119 012ab280
	virtual const char* GetText();
	// BW1W120 0050c3c0 BW1M119 012ac1e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0050bb30 BW1M119 012acd30
	virtual void CleanUpBeforeReset();
	// BW1W120 0050bb90 BW1M119 012ac8e0
	virtual void Process();
	// BW1W120 0050c310 BW1M119 012ac300
	virtual float GetAngle();

	// Constructors

	// BW1W120 0050b6a0 BW1M119 012ad5a0
	Dance(const MapCoords& param_1, const GDanceInfo* info, const GameThingWithPos* param_3, uint32_t param_4,
	      int param_5, Town* town);

	// Non-virtual methods

	// BW1W120 0050bb40 BW1M119 012acce0
	void StartDance();
};

#endif /* BW1_DECOMP_DANCE_INCLUDED_H */
