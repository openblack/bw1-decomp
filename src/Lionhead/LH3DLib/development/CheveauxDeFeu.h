#ifndef BW1_DECOMP_CHEVEAUX_DE_FEU_INCLUDED_H
#define BW1_DECOMP_CHEVEAUX_DE_FEU_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

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
