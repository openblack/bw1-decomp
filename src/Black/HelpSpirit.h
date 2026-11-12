#ifndef BW1_DECOMP_HELP_SPIRIT_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>         /* For enum HELP_SPIRIT_TYPE */
#include <chlasm/HelpDudeAnim.h> /* For enum ANIMLIST */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GameThingWithPos;
class GInterfaceStatus;
class HelpSystem;
class LHOSFile;
struct LHCoord;
struct LHPoint;
struct MapCoords;

class HelpSpirit : public Object
{
public:
	HELP_SPIRIT_TYPE  Type;
	GameThingWithPos* PointObject;
	GameThingWithPos* LookObject;
	uint32_t          field_0x60;

	// Override methods

	// BW1W120 005c4b10 BW1M119 01353a90
	virtual ~HelpSpirit();
	// BW1W120 005c4b00 BW1M119 01353bc0
	virtual void Create3DObject();
	// BW1W120 005c5270 BW1M119 01085730
	virtual uint32_t Process();
	// BW1W120 005c4b90 BW1M119 01354c80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 005c4af0 BW1M119 01353b70
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005c4ae0 BW1M119 01353b20
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords* param_2);

	// Constructors

	// BW1W120 005c4aa0 BW1M119 01354e40
	HelpSpirit(const MapCoords& coords, HELP_SPIRIT_TYPE type);

	// BW1W120 005c4b30 BW1M119 01354d40
	static HelpSpirit* Create(const MapCoords& coords, HelpSystem* help_system, HELP_SPIRIT_TYPE type);

	// BW1W120 005c4bd0 BW1M119 01354bd0
	void Eject(bool32_t appear);
	// BW1W120 005c4c20 BW1M119 01354b50
	void InterruptTalking(bool32_t disappear);
	// BW1W120 005c4c50 BW1M119 01354af0
	bool32_t IsEjected() const;
	// BW1W120 005c4c60 BW1M119 01354a70
	bool32_t IsHome() const;
	// BW1W120 005c4c80 BW1M119 01354940
	void PlayAnim(float x, float y, ANIMLIST anim, float speed);
#ifdef VERSION_BW1WCI
	// BW1WCI 005da260 BW1MCI119 01376d90
	void PlayAnim(const LHPoint& pos, ANIMLIST anim, float speed);
#endif
	// BW1W120 005c4d10 BW1M119 013548b0
	bool32_t IsPlayingAnim();
	// BW1W120 005c4d40 BW1M119 013547f0
	void Cling(float x, float y);
	// BW1W120 005c4da0 BW1M119 01354740
	void Fly(float x, float y);
	// BW1W120 005c4e00 BW1M119 01354670
	void Look(const LHPoint& point);
	// BW1W120 005c4e50 BW1M119 013544f0
	void Look(GameThingWithPos* thing);
	// BW1W120 005c4ef0 BW1M119 01354420
	void Point(const LHPoint& point, bool32_t in_world);
	// BW1W120 005c4f50 BW1M119 01354350
	void Point(const LHCoord& coord);
	// BW1W120 005c4fa0 BW1M119 013541a0
	void Point(GameThingWithPos* thing, bool32_t in_world);
	// BW1W120 005c5060 BW1M119 01354120
	void ClearPointing();
	// BW1W120 005c5090 BW1M119 013540a0
	void ClearLooking();
	// BW1W120 005c5200 BW1M119 01353d60
	void Home(bool32_t disappear);
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INCLUDED_H */
