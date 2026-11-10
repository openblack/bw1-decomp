#ifndef BW1_DECOMP_CHEVEAUX_DE_FEU_INCLUDED_H
#define BW1_DECOMP_CHEVEAUX_DE_FEU_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define CHEVEAUX_DE_FEU_RUN_UP           4000.0f
#define CHEVEAUX_DE_FEU_STOP_SHORT       10.0f
#define CHEVEAUX_DE_FEU_SPEED            450.0f
#define CHEVEAUX_DE_FEU_SPACING          6.0f
#define CHEVEAUX_DE_FEU_LAST_FLAME       5
#define CHEVEAUX_DE_FEU_FLAME_FRAME      48
#define CHEVEAUX_DE_FEU_STREAK_FRAME     49
#define CHEVEAUX_DE_FEU_SMOKE_FRAME      50
#define CHEVEAUX_DE_FEU_SIZE_RANGE       15
#define CHEVEAUX_DE_FEU_MIN_SIZE         3.0f
#define CHEVEAUX_DE_FEU_SMOKE_SCALE      2.0f
#define CHEVEAUX_DE_FEU_FLAME_JITTER     2.0f
#define CHEVEAUX_DE_FEU_GLOW             (CHEVEAUX_DE_FEU_SPRITES - 2)
#define CHEVEAUX_DE_FEU_GLOW_ALPHA       0x28
#define CHEVEAUX_DE_FEU_GLOW_SIZE        80.0f
#define CHEVEAUX_DE_FEU_STREAK           (CHEVEAUX_DE_FEU_SPRITES - 1)
#define CHEVEAUX_DE_FEU_STREAK_ALPHA     0x0e
#define CHEVEAUX_DE_FEU_STREAK_SIZE      350.0f
#define CHEVEAUX_DE_FEU_STREAK_ASPECT    0.05f
#define CHEVEAUX_DE_FEU_STREAK_SPIN_TIME 5000.0f
#define CHEVEAUX_DE_FEU_STREAK_SPIN      0.25f
#define CHEVEAUX_DE_FEU_NO_Z_TEST_TIME   8237
#define CHEVEAUX_DE_FEU_CAMERA_DISTANCE  150.0f
#define CHEVEAUX_DE_FEU_CAMERA_HEIGHT    30.0f

#define CHEVEAUX_DE_FEU_SPRITES 20

// Forward Declares

struct LH3DMaterial;
struct LH3DSprite;

enum CHEVEAUX_DE_FEU_STATE
{
	CHEVEAUX_DE_FEU_STATE_RIDING = 0,
	CHEVEAUX_DE_FEU_STATE_STOPPED = 1,
	CHEVEAUX_DE_FEU_STATE_FADING = 2,
	CHEVEAUX_DE_FEU_STATE_GONE = 4,
};

class CheveauxDeFeu
{
public:
	LH3DSprite*           Sprites;
	LHPoint               Pos;
	LHPoint               Start;
	LHPoint               Dir;
	CHEVEAUX_DE_FEU_STATE State;
	long                  Time;
	bool32_t              Arrived;

	// Constructors

	// BW1W120 00827f20 BW1M119 010d5170 (LHCombined Release)
	CheveauxDeFeu(LHPoint* pos, LHPoint* dir, LH3DMaterial* material);

	// Destructor

	// BW1W120 008282e0 BW1M119 010d63e0 (LHCombined Release)
	~CheveauxDeFeu();

	// Non-virtual methods

	// BW1W120 00828300 BW1M119 0104bef0 (LHCombined Release)
	void AddDrawing();
	// BW1W120 00828350 BW1M119 0104e010 (LHCombined Release)
	void ComputePos(LHPoint* pos);
	// BW1W120 008283d0 BW1M119 010b2770 (LHCombined Release)
	void Draw();
	// BW1W120 00828760 BW1M119 010d8ad0 (LHCombined Release)
	void GetSittingPos(LHPoint* pos);
};
static_assert(sizeof(CheveauxDeFeu) == 0x34, "Data type is of wrong size");

#endif /* BW1_DECOMP_CHEVEAUX_DE_FEU_INCLUDED_H */
