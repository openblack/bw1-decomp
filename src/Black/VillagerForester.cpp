#include "Villager.h"

#include "BigForest.h"
#include "Forest.h"
#include "Player.h"
#include "Tree.h"
#include "Utils.h"

// BW1W120 0075f4a0 BW1M100 10586060 Villager::CheckSatisfyWoodDesire(void)
bool32_t Villager::CheckSatisfyWoodDesire()
{
	BigForest* bigForest;
	Forest*    forest;
	switch (DecideHowToGetWood(0, &bigForest, &forest))
	{
	case 1:
		return GotoStoragePitForDropOff();
	case 2: {
		MapCoords arrivePos = bigForest->GetArrivePos(this);
		SetupMoveToOnFootpath(*bigForest, arrivePos, VILLAGER_STATE_ARRIVES_AT_BIG_FOREST);
		return 1;
	}
	case 3:
		return VillagerGotoForest(forest, VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST);
	}
	return 0;
}

// BW1W120 0075f510 BW1M100 10585d60 Villager::DecideHowToGetWood(int, BigForest * *, Forest * *)
uint32_t Villager::DecideHowToGetWood(int param_1, BigForest** param_2, Forest** param_3)
{
	// TODO: deferred — calls the UNNAMED global fn_0053A1A0 (nearest-forest-with-trees
	// search; symbols.txt has no name for it) so the call can't be reproduced by name.
	return 0;
}

// BW1W120 0075f710 BW1M100 10585d00 Villager::ForesterGotoForest(void)
bool32_t Villager::ForesterGotoForest()
{
	return CheckSatisfyWoodDesire();
}

// BW1W120 0075f720 BW1M100 10585be0 Villager::VillagerGotoForest(Forest *, VILLAGER_STATES)
bool32_t Villager::VillagerGotoForest(Forest* forest, VILLAGER_STATES state)
{
	Tree*     centre = forest->GetForestCentreTree();
	MapCoords coords;
	if (centre != NULL)
		coords = centre->GetWorkingPos(this);
	else
		coords = forest->Pos;
	if (SetupMoveToWithHug(coords, state))
	{
		action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_FORESTER_MOVE_TO_FOREST);
		return 1;
	}
	return 0;
}

// BW1W120 0075f7d0 BW1M100 105859d0 Villager::ForesterMoveToForest(void)
bool32_t Villager::ForesterMoveToForest()
{
	// TODO: deferred — calls the UNNAMED global fn_0074D6A0 (build MapCoords from angle) and
	// the fn_0x0074cd70 GetDistanceInMetres copy; can't be reproduced by name yet.
	return 1;
}

// BW1W120 0075f930 BW1M100 10585830 Villager::ForesterArrivesAtForest(void)
bool32_t Villager::ForesterArrivesAtForest()
{
	Tree* tree;
	switch (FindTreeNearVillager(&tree))
	{
	case 1: {
		MapCoords coords = tree->GetWorkingPos(this);
		return SetupMoveToWithHug(coords, VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST) != 0;
	}
	case 10:
		TargetThing = NULL;
		SetGameAngle(GameAngle - 0x124);
		PlayAnimThenSetState(VILLAGER_STATE_FORESTER_CHOPS_TREE, 1);
		return 1;
		// case 0: TODO blocked — calls UNNAMED fn_0053A1A0(Pos, 50.0f, 1) then result->vtbl[0xc](0)
	}
	SetTopState(VILLAGER_STATE_FORESTER_FINISHED_FORESTERING);
	return ForesterFinishedForestering();
}

// BW1W120 0075f9e0 BW1M100 10585660 Villager::ArrivesAtBigForest(void)
bool32_t Villager::ArrivesAtBigForest()
{
	// TODO: deferred — two void-mangled-but-returning symbol blockers (dispatcher, Rule 2):
	//   Town::FindNearestForestToPos (?...@Town@@QAEXABVMapCoords@@@Z) reads eax as a Town*/owner;
	//   BigForest::GetArrivePos (?...@BigForest@@QAEXPAVVillager@@@Z) returns MapCoords by value.
	// Body: woodCap=GetWoodCapacity(); if (GetTown() && woodCap) { owner=GetTown()->FindNearestForestToPos(Pos);
	//   if (owner) { bf=owner->field_0x38; if (bf) { c=bf->GetArrivePos(this);
	//     if (AreWeThere(c,0)) { r=bf->AddResource(WOOD,woodCap,0,0); if(r){PickupWood(r,bf->vtbl0x820());GotWoodDecideWhatToDo();} }
	//     else { SetupMoveToWithHug(c, this->vtbl0xb04()); return 1; } } } }
	//   SetTopState(DECIDE_WHAT_TO_DO); return 1;
	return 1;
}

// BW1W120 0075fab0 BW1M100 10585610 Villager::ArrivesAtBigForestForBuilding(void)
bool32_t Villager::ArrivesAtBigForestForBuilding()
{
	return 1;
}

// BW1W120 0075fac0 BW1M100 105854f0 Villager::ForesterChopsTree(void)
bool32_t Villager::ForesterChopsTree()
{
	// TODO: deferred — FelledTree::Create symbol mismatch. Body (from target asm):
	//   if (!TargetThing) { if (FindTreeNearVillager(&tree)) { TargetThing = FelledTree::Create(tree, this);
	//       tree->vtbl[0xc](0); return 1; } }
	//   if (TargetThing && (((Tree*)TargetThing)->Flags & 0x40)>>... && TargetThing->vtbl[0x2c]() == 1) return 1;
	//   TargetThing = 0; SetTopState(VILLAGER_STATE_FORESTER_CHOPS_TREE); return 1;
	// FelledTree::Create is called CDECL returning FelledTree* (push this; push tree; call; add esp,8;
	// TargetThing=eax) but symbols.txt mangles it ?Create@FelledTree@@QAEXPAVTree@@PAVObject@@@Z
	// (thiscall, void). Dispatcher must re-mangle Create as a returning cdecl/static factory.
	return 1;
}

// BW1W120 0075fb40 BW1M100 10585480 Villager::ForesterChopsTreeForBuilding(void)
bool32_t Villager::ForesterChopsTreeForBuilding()
{
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0075fb60 BW1M100 105853f0 Villager::ForesterFinishedForestering(void)
bool32_t Villager::ForesterFinishedForestering()
{
	if (ResourceHeld[RESOURCE_TYPE_WOOD] > 0)
		return GotWoodDecideWhatToDo();
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0075fb90 BW1M100 10585390 Villager::TakeWoodFromTreeForBuilding(void)
bool32_t Villager::TakeWoodFromTreeForBuilding()
{
	return TakeWoodFromTree();
}

// BW1W120 0075fba0 BW1M100 10585340 Villager::TakeWoodFromPotForBuilding(void)
bool32_t Villager::TakeWoodFromPotForBuilding()
{
	return TakeWoodFromPot();
}

// BW1W120 0075fbb0 BW1M100 10585300 Villager::TakeWoodFromPot(void)
bool32_t Villager::TakeWoodFromPot()
{
	return 1;
}

// BW1W120 0075fbc0 BW1M100 10585210 Villager::TakeWoodFromTree(void)
bool32_t Villager::TakeWoodFromTree()
{
	Tree* tree;
	if (FindTreeNearVillager(&tree))
	{
		if (GetPlayer() != NULL)
			GetPlayer()->MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO_FOR_WOOD, 0.5f, Pos);
		SetTopState(VILLAGER_STATE_FORESTER_ARRIVES_AT_FOREST);
		return ForesterArrivesAtForest();
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return 1;
}

// BW1W120 0075fc30 BW1M100 10585080 Villager::GotWoodDecideWhatToDo(void)
bool32_t Villager::GotWoodDecideWhatToDo()
{
	// TODO: deferred — one UNNAMED callee. Body (from target asm) is:
	//   if (ResourceHeld[WOOD]==0) { SetTopState(DECIDE_WHAT_TO_DO); return 1; }
	//   if ((Flags>>9 & 1) && _g_DiscipleInfos[DiscipleType].field_0xc==1) { SetTopState(DECIDE_WHAT_TO_DO); return 1; }
	//   if (building_site && GetTown() && GetTown()->IsBuildingSiteValid(building_site) &&
	//       (building_site->fn_0043BC60() || DiscipleType==4) && GotoBuildingSite(building_site)==1) return 1;
	//   if (CheckNeededForBuilding()) return 1;
	//   SetTopState(VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_DROP_OFF); return 1;
	// _g_DiscipleInfos (0x99a1f8) IS named. BLOCKER: building_site->fn_0043BC60() is UNNAMED
	// (a BuildingSite bool method at 0x43bc60, `return 0 < inner()`). Dispatcher: name it.
	return 1;
}

// BW1W120 0075fd00 BW1M100 10584e30 Villager::FindTreeNearVillager(Tree * *)
bool32_t Villager::FindTreeNearVillager(Tree** found_tree)
{
	MapCoords searchCoords = Pos;
	float     bestDist = 99999.0f;
	Tree*     bestTree = NULL;
	int       spiralA = 1;
	int       spiralB = 1;
	int       count = 9;
	do
	{
		Tree* tree = dynamic_cast<Tree*>(searchCoords.FindType(OBJECT_TYPE_FOREST_TREE, NULL));
		if (tree != NULL && !(tree->Flags & 0x4000))
		{
			MapCoords workPos = tree->GetWorkingPos(this);
			float     dist = GUtils::GetDistanceInMetres(Pos, workPos);
			if (dist < bestDist)
			{
				bestDist = dist;
				bestTree = tree;
			}
		}
		searchCoords += GUtils::Spiral(spiralA, spiralB);
		--count;
	} while (count != 0);
	if (bestTree == NULL)
		return 0;
	*found_tree = bestTree;
	MapCoords bp = bestTree->GetWorkingPos(this);
	return IsTouching(&bp) ? 10 : 1;
}

// BW1W120 0075fe20 BW1M100 10584dc0 Villager::ExitForesting(unsigned char)
bool32_t Villager::ExitForesting(unsigned char state)
{
	TargetThing = NULL;
	return 1;
}
