#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "HandStatePlayAnim.h"

#include <Lionhead/LH3DLib/development/CAnim.h>    /* For struct CAnim */
#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct LH3DAnim */
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_delta_time */
#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */

#include "ColourConstants.h" /* For White */
#include "ControlHand.h"     /* For CHand */
#include "Game.h"            /* For GGame */
#include "Interface.h"       /* For GInterface */

static int Unused = 0;

HandStatePlayAnim::HandStatePlayAnim(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStatePlayAnim::Enter()
{
	AnimationTime = 0;
}

void HandStatePlayAnim::Update(float dt, LHMatrix* buffer)
{
	if (!Started)
	{
		Started = true;
	}

	GGame::g_game->MyInterface()->Collide.GetObjectA();

	CAnim*   anim = Hand->GetAnim(Anim, 0);
	LHPoint  up(0.0f, 1.0f, 0.0f);
	LHMatrix root;

	Hand->GetPos() = Pos;
	Hand->FillStandardPositionMatrix(root, Hand->GetPos(), up);

	anim->FillBuffer(buffer, Hand->GetMesh(), Hand->BaseMatrices, Hand->InverseBaseMatrices, AnimationTime, Hand->frame,
	                 NULL, true);
	LH3DAnim::FinishTransform(buffer, Hand->GetMesh(), root);

	Hand->DrawScreenPos = Hand->ScreenPos;

	AnimationTime += LH3DTech::g_delta_time;
	if (AnimationTime >= anim->Duration)
	{
		Hand->InFixedPosAnimation = false;
	}
}
