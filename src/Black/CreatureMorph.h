#ifndef BW1_DECOMP_CREATURE_MORPH_INCLUDED_H
#define BW1_DECOMP_CREATURE_MORPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "Morphable.h" /* For struct Morphable */

// Forward Declares

struct CAnim;
class Creature;
struct LHMatrix;
struct LHPoint;
class RPFollow;

class LH3DCreature : public Morphable
{
public:
	Creature* creature; /* 0x4834 */
	float     field_0x4838;
	float     RequiredSpeed;
	float     field_0x4840;
	uint32_t  field_0x4844;
	float     SpeedModifier0x4848;
	uint8_t   field_0x484c[0x10];
	uint32_t  field_0x485c;
	uint32_t  field_0x4860;
	uint32_t  field_0x4864;
	uint32_t  field_0x4868;
	uint32_t  field_0x486c;
	uint8_t   field_0x4870[0x44];
	int       field_0x48b4;
	uint8_t   field_0x48b8[8];
	float     field_0x48c0;
	float     field_0x48c4;
	float     field_0x48c8;
	uint8_t   field_0x48cc[0x8];
	float     field_0x48d4;
	uint8_t   field_0x48d8[0xc];
	float     field_0x48e4;
	uint8_t   field_0x48e8[0xc];
	float     field_0x48f4;
	uint8_t   field_0x48f8[0x98];
	float     field_0x4990;
	int       field_0x4994;
	uint8_t   field_0x4998[8];
	uint32_t  field_0x49a0;
	uint8_t   field_0x49a4[4];
	float     field_0x49a8;
	int       field_0x49ac;
	uint32_t  field_0x49b0;
	uint8_t   field_0x49b4[4];
	uint32_t  field_0x49b8;
	uint8_t   field_0x49bc[0xd4];
	bool32_t  IsAnimationTimeModified; /* 0x4a90 */
	uint8_t   field_0x4a94[0x14];
	float     field_0x4aa8;
	float     field_0x4aac;
	uint8_t   field_0x4ab0[0x6cc];
	LHMatrix* field_0x517c;
	uint8_t   field_0x5180[4];
	void*     field_0x5184;
	uint8_t   field_0x5188[8];
	uint32_t  field_0x5190;
	uint8_t   field_0x5194[4];
	RPFollow* RpFollow;
	uint32_t  field_0x519c;
	uint8_t   field_0x51a0[0x14];
	uint32_t  field_0x51b4;
	uint32_t  field_0x51b8;
	uint8_t   field_0x51bc;
	uint8_t   field_0x51bd;
	uint8_t   field_0x51be;
	uint8_t   field_0x51bf;
	uint32_t  field_0x51c0;
	uint32_t  field_0x51c4;
	int32_t   RightHandBoneIndex;
	long      field_0x51cc;
	long      field_0x51d0;
	long      field_0x51d4;
	uint32_t  field_0x51d8;
	uint8_t   field_0x51dc[0x14];
	int32_t*  field_0x51f0;
	uint8_t   field_0x51f4[0x28];
	int       field_0x521c;
	CAnim*    Anim0x5220;
	uint8_t   field_0x5224[4];
	float     field_0x5228;
	uint32_t  field_0x522c;
	uint8_t   field_0x5230[8];
	uint32_t  field_0x5238;
	uint32_t  field_0x523c;
	uint8_t   field_0x5240[0x30];
	int       SafeBufferSelector; /* 0x5270 */
	uint32_t  field_0x5274;
	uint8_t*  SafeBuffer0;
	uint32_t  field_0x527c;
	uint8_t*  SafeBuffer1; /* 0x5280 */
	uint8_t   field_0x5284[4];
	uint32_t  field_0x5288;
	int       field_0x528c;
	uint8_t   field_0x5290[0x1d0];
	uint32_t  field_0x5460;
	float     field_0x5464;
	uint8_t   field_0x5468[4];
	uint32_t  field_0x546c;
	uint8_t   field_0x5470[4];
	float     field_0x5474;
	uint8_t   field_0x5478[0x2A4];
	uint32_t  field_0x571c;
	uint8_t   field_0x5720[0x80];
	uint32_t  field_0x57a0;
	uint8_t   field_0x57a4[0x10];
	uint32_t  field_0x57b4;

	// Override methods

	// BW1W120 004eac90 BW1M119 01278470
	virtual uint32_t LoadBase(char* path);
	// Windows vtable entries shared with CreatureFalling.
	// BW1W120 004803d0 BW1M119 01201a70
	virtual void SetAnimTime(int time, int anim);
	// BW1W120 00480530 BW1M119 012018c0
	virtual void SetSize(float size);
	// BW1W120 0048d790 BW1M119 011efbe0
	virtual void MorphAnims();
	// BW1W120 0048d540 BW1M119 011efc70
	virtual void MorphTexture();
	// BW1W120 00481df0 BW1M119 011fe0e0
	virtual void UpdateTime(int time);
	// BW1W120 004ed320 BW1M119 012758a0
	virtual void PrepareForDrawing();
	// BW1W120 0048e1c0 BW1M119 011eee90
	virtual uint32_t AddForDrawing();
	// BW1W120 004eb430 BW1M119 012776d0
	virtual uint32_t LoadBinary(char* filename, int param_1);
	// BW1W120 004ed640 BW1M119 012751a0
	virtual uint32_t SaveBinary(char* filename);

	// Static methods

	// BW1W120 0047f1f0 BW1M119 012037d0
	static void FollowerCallbackFunction(int param_1, int param_2);
	// BW1W120 0047f260 BW1M119 01203660
	static void FollowerCallbackPrepareAnims(Creature* param_1, float param_2, float param_3);
	// BW1W120 0047f280 BW1M119 012035e0
	static float FollowerCallbackGetStopDist(Creature* param_1);

	// Constructors

	// BW1W120 0047f770 BW1M119 01202a40
	LH3DCreature(Creature* creature, const LHPoint& pos, void* param_3);

	// Non-virtual methods

	// BW1W120 00480a60 BW1M119 012011a0
	float GetNavRadius();
	// BW1W120 004813f0 BW1M119 01200130
	LHPoint* GetBonePos(int index);
	// BW1W120 004842b0 BW1M119 011fc210
	uint8_t* GetSafeBuffer();
	// BW1W120 004842d0 BW1M119 011fc1c0
	bool IsPerformingBodyAction();
	// BW1W120 0048b780 BW1M119 011f2640
	uint32_t GetObjectActionStatus();
	// BW1W120 0048dd70 BW1M119 011eefb0
	void DrawFightSparkles();
};
static_assert(sizeof(LH3DCreature) == 0x57b8, "LH3DCreature size is incorrect");

#endif /* BW1_DECOMP_CREATURE_MORPH_INCLUDED_H */
