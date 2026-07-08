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

class Feature : public MultiMapFixed
{
public:
	// Override methods

	// BW1W120 00422e90 BW1M100 100a7a50 Feature::_dt(void)
	virtual ~Feature();
	// BW1W120 00422e80 BW1M100 100d1880 Feature::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00422e70 BW1M100 100d1840 Feature::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00422140 BW1M100 100a5490 Feature::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00422150 BW1M100 100a54d0 Feature::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 005276d0 BW1M100 100d0c30 Feature::IsMushroom(Creature *)
	virtual uint32_t IsMushroom(Creature* param_1);
	// BW1W120 004220e0 BW1M100 100a5350 Feature::IsFeature(void)
	virtual uint32_t IsFeature();
	// BW1W120 005277d0 BW1M100 100d0890 Feature::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00527820 BW1M100 100d07b0 Feature::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 005276c0 BW1M100 10008370 Feature::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 004220d0 BW1M100 100a52b0 Feature::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00518690 BW1M100 100238a0 Feature::Draw(void)
	virtual void Draw();
	// BW1W120 005275b0 BW1M100 100d0dc0 Feature::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
