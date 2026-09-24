#ifndef BW1_DECOMP_FIRE_EFFECT_INCLUDED_H
#define BW1_DECOMP_FIRE_EFFECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class EffectValues;
class FireGraphic;
class GPlayer;
class GameOSFile;
struct LHPoint;
class Object;

class FireEffect : public GameThing
{
public:
	// BW1W120 00730760 BW1M119 01091670
	static void ProcessList();
	// BW1W120 00730670 BW1M119 01155470
	static void ApplyEffectToFireEffectIfNecessary(Object* object, EffectValues& values);
	// BW1W120 0072ef60 BW1M119 01157d90
	static void SetOnFire(Object* object, float temperature);
	// BW1W120 0072ef10 BW1M119 01157ea0
	static void SetTemperature(Object* object, float temperature, GameThing* source);
	// BW1W120 0072eec0 BW1M119 01157f80
	static float ConvertTemperatureToDamage(Object* object, float temperature);

	float       temperature; /* 0x14 */
	float       temperature2;
	Object*     source;
	GPlayer*    player; /* 0x20 */
	GameThing*  thing;
	uint32_t    field_0x28;
	uint32_t    field_0x2c;
	uint32_t    field_0x30;
	uint32_t    field_0x34;
	uint8_t     field_0x38;
	FireEffect* next;
	uint8_t     field_0x40[0x8];
	uint32_t    field_0x48;
	uint32_t    field_0x4c;

	// Override methods

	// BW1W120 0072eae0 BW1M119 011587b0
	virtual ~FireEffect();
	// BW1W120 0072ebe0 BW1M119 01158400
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072ee70 BW1M119 01158090
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 0072eab0 BW1M119 01154cd0
	virtual GPlayer* GetPlayer();
	// BW1W120 0072ead0 BW1M119 01158bc0
	virtual char* GetDebugText();
	// BW1W120 00730df0 BW1M119 01153cc0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00730b00 BW1M119 01154180
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0072eac0 BW1M119 01158b80
	virtual uint32_t GetSaveType();
	// BW1W120 007310d0 BW1M119 01153c70
	virtual void ResolveLoad();

	// Constructors

	// BW1W120 0072ea80 BW1M119 011589f0
	FireEffect();

	// Non-virtual methods

	// BW1W120 00730330 BW1M119 01155e20
	void Draw();
	// BW1W120 00730a60 BW1M119 011547b0
	void StartedMoving(int param_1);
	// BW1W120 00730360 BW1M119 01155d80
	bool32_t IsOnFire();
	// BW1W120 0072eeb0 BW1M119 01158050
	float GetObjectTemperature();
	// BW1W120 00730ab0 BW1M119 01154740
	void SetOutMagicHand();
	// BW1W120 00730ad0 BW1M119 01154630
	FireGraphic* CreateSprites();
	// BW1W120 00732ae0 BW1M119 011512b0
	uint32_t GetFirstCaused();
};

#endif /* BW1_DECOMP_FIRE_EFFECT_INCLUDED_H */
