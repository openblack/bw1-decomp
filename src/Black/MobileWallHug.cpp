#include "MobileWallHug.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Landscape.h"
#include <math.h> /* For sqrt */
#include "Game.h"
#include "GameOSFile.h"
#include "MobileWallHugInfo.h"
#include "Rand.h"
#include "Utils.h"
#include "Villager.h"
#include "Field.h"
#include "MultiMapFixed.h"
#include "VillagerInfo.h"

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

static CircleHugStateInfoT g_CircleHugStateInfo;
static bool                g_CircleHugNeedsLookahead;

inline NewCollide::Obj* CircleHugStateInfoT::fetch(MapCoords coords)
{
	coords.CentreOnMap();
	SubCollideBlockPos blockPos = SubCollideBlockPos::MakeSubCollideBlockPos(coords);
	std::map<SubCollideBlockPos, NewCollide::Obj*>::iterator it = LandscapeBlockers.find(blockPos);
	if (it != LandscapeBlockers.end())
	{
		return (*it).second;
	}
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	NewCollide::Obj* obj = new (__FILE__, 215) NewCollide::Obj(7.2f, &point);
	LandscapeBlockers[blockPos] = obj;
	return obj;
}

inline MapCoords CircleHugInfo::GetObjCoords()
{
	MapCoords coords;
	GLandscape::ConvertLandscapePointToMapCoord(GetObjectPtr()->position, coords);
	return coords;
}

// BW1W120 inlined BW1M119 013cde50
inline void CircleHugStateInfoT::swapDirection(MobileWallHug& mwh)
{
	MapCoords pos = mwh.Pos;
	pos.x += mwh.step.x * 3;
	pos.z += mwh.step.z * 3;
	mwh.MoveMapObject(pos);
	// The Mac shows the same swapped altitude/z arguments
	mwh.step.Init(-mwh.step.x, -mwh.step.altitude, -mwh.step.z);
	mwh.GameAngle = (mwh.GameAngle + 0x400) & 0x7ff;
}

// BW1W120 inlined BW1M119 013cdab0
inline CircleHugStateInfoT::performance CircleHugStateInfoT::evaluate(MobileWallHug* mwh, bool swapped)
{
	Villager* villager = Villager::Create(mwh->Pos, GVillagerInfo::GetInfo(), 21, false);
	villager->circle_hug_info.TurnsToObj = mwh->circle_hug_info.TurnsToObj;
	villager->circle_hug_info.EntryDistance = mwh->circle_hug_info.EntryDistance;
	if (villager->circle_hug_info.EntryDistance == -1)
	{
		ExtendedEntryDistances[villager] = ExtendedEntryDistances[mwh];
	}
	villager->circle_hug_info.SetObjectPtr(mwh->circle_hug_info.GetObjectPtr(), villager, false);
	villager->MoveState = mwh->MoveState;
	villager->goal = mwh->goal;
	villager->step.Init(mwh->step.x, mwh->step.z, mwh->step.altitude);
	villager->GameAngle = mwh->GameAngle;
	villager->SetSpeed(mwh->speed * 4, 1);

	if (swapped)
	{
		switch (villager->GetMoveState())
		{
		case MOVE_TO_STATES_LINEAR_CW:
			villager->SetMoveState(MOVE_TO_STATES_LINEAR_CCW);
			swapDirection(*villager);
			break;
		case MOVE_TO_STATES_LINEAR_CCW:
			villager->SetMoveState(MOVE_TO_STATES_LINEAR_CW);
			swapDirection(*villager);
			break;
		case MOVE_TO_STATES_ORBIT_CW:
			villager->SetMoveState(MOVE_TO_STATES_ORBIT_CCW);
			swapDirection(*villager);
			if (villager->circle_hug_info.GetObjectPtr() != NULL)
			{
				MobileWallHug_InCircleStuff<false>::MoveToCircleHugCircleSquareSweep(villager, villager->GetPos());
			}
			break;
		case MOVE_TO_STATES_ORBIT_CCW:
			villager->SetMoveState(MOVE_TO_STATES_ORBIT_CW);
			swapDirection(*villager);
			if (villager->circle_hug_info.GetObjectPtr() != NULL)
			{
				MobileWallHug_InCircleStuff<true>::MoveToCircleHugCircleSquareSweep(villager, villager->GetPos());
			}
			break;
		case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
			villager->SetMoveState(MOVE_TO_STATES_EXIT_CIRCLE_CW);
			swapDirection(*villager);
			break;
		case MOVE_TO_STATES_EXIT_CIRCLE_CW:
			villager->SetMoveState(MOVE_TO_STATES_EXIT_CIRCLE_CCW);
			swapDirection(*villager);
			break;
		}

		if (villager->MoveState == MOVE_TO_STATES_STEP_THROUGH)
		{
			performance result;
			result.count = 0;
			result.dist = MaxFloat;
			villager->ToBeDeleted(0);
			return result;
		}
	}

	performance result;
	result.count = 1500;
	while (villager->MoveTo() != 10 && result.count-- > 0)
	{
	}
	result.dist = villager->goal.GetMetresDistanceSq(villager->Pos);
	villager->ToBeDeleted(0);
	return result;
}

inline void CircleHugStateInfoT::swap(MobileWallHug& mwh)
{
	switch (mwh.MoveState)
	{
	case MOVE_TO_STATES_LINEAR_CW:
		mwh.MoveState = MOVE_TO_STATES_LINEAR_CCW;
		swapDirection(mwh);
		break;
	case MOVE_TO_STATES_LINEAR_CCW:
		mwh.MoveState = MOVE_TO_STATES_LINEAR_CW;
		swapDirection(mwh);
		break;
	case MOVE_TO_STATES_ORBIT_CW:
		mwh.MoveState = MOVE_TO_STATES_ORBIT_CCW;
		swapDirection(mwh);
		if (mwh.circle_hug_info.obj != NULL)
		{
			MobileWallHug_InCircleStuff<false>::MoveToCircleHugCircleSquareSweep(&mwh, mwh.GetPos());
		}
		break;
	case MOVE_TO_STATES_ORBIT_CCW:
		mwh.MoveState = MOVE_TO_STATES_ORBIT_CW;
		swapDirection(mwh);
		if (mwh.circle_hug_info.obj != NULL)
		{
			MobileWallHug_InCircleStuff<true>::MoveToCircleHugCircleSquareSweep(&mwh, mwh.GetPos());
		}
		break;
	case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
		mwh.MoveState = MOVE_TO_STATES_EXIT_CIRCLE_CW;
		swapDirection(mwh);
		break;
	case MOVE_TO_STATES_EXIT_CIRCLE_CW:
		mwh.MoveState = MOVE_TO_STATES_EXIT_CIRCLE_CCW;
		swapDirection(mwh);
		break;
	}
}

void DoWallHuggerLookahead()
{
	bool lookahead = g_CircleHugStateInfo.EvaluatingLookahead;
	g_CircleHugStateInfo.EvaluatingLookahead = true;
	if (!g_CircleHugStateInfo.PendingLookahead.empty())
	{
		MobileWallHug* mwh = *g_CircleHugStateInfo.PendingLookahead.begin();
		g_CircleHugStateInfo.PendingLookahead.erase(g_CircleHugStateInfo.PendingLookahead.begin());
		g_CircleHugStateInfo.CompletedLookahead.insert(mwh);
		CircleHugStateInfoT::performance unswapped = g_CircleHugStateInfo.evaluate(mwh, false);
		CircleHugStateInfoT::performance swapped = g_CircleHugStateInfo.evaluate(mwh, true);
		if (swapped < unswapped)
		{
			g_CircleHugStateInfo.swap(*mwh);
		}
		else if (mwh->GetMoveState() == MOVE_TO_STATES_ORBIT_CW)
		{
			mwh->InitStepsXZSetAngle((GUtils::GetAngleFromXZ(mwh->Pos, mwh->circle_hug_info.GetObjCoords()) + 0x200) &
			                         0x7ff);
		}
		else if (mwh->GetMoveState() == MOVE_TO_STATES_ORBIT_CCW)
		{
			mwh->InitStepsXZSetAngle((GUtils::GetAngleFromXZ(mwh->Pos, mwh->circle_hug_info.GetObjCoords()) - 0x200) &
			                         0x7ff);
		}
	}
	g_CircleHugStateInfo.EvaluatingLookahead = lookahead;
}

void ResetBlockersForClearMap()
{
	while (g_CircleHugStateInfo.LandscapeBlockers.size() != 0)
	{
		std::map<SubCollideBlockPos, NewCollide::Obj*>::iterator it = g_CircleHugStateInfo.LandscapeBlockers.begin();
		delete (*it).second;
		g_CircleHugStateInfo.LandscapeBlockers.erase(it);
	}
}

void CircleHugInfo::FetchObjectFromCircHugInfo(NewCollide::Obj* collide_obj, ResolutionInfoT& info)
{
	if (collide_obj == NULL)
	{
		info.object = NULL;
		info.index = 0;
		info.coords = MapCoords();
		return;
	}

	MapCoords coords;
	coords.SetX(collide_obj->position.x);
	coords.SetZ(collide_obj->position.z);
	coords.altitude = 0.0f;
	long    spiralX = 1;
	long    spiralZ = 1;
	Object* found = NULL;
	int     index;
	int     count = 9;
	do
	{
		for (Object* object = coords.GetFirstObjectFixed(); object != NULL; object = object->GetMapChild(coords))
		{
			NewCollide* collide = object->GetCollideData();
			if (collide != NULL)
			{
				if (collide->obj == collide_obj)
				{
					found = object;
					index = -1;
				}
				else
				{
					NewCollide::List* list = collide->obj->IteratorList;
					if (list != NULL)
					{
						for (index = 0; index < list->count; index++)
						{
							if (list->objs[index] == collide_obj)
							{
								found = object;
								break;
							}
						}
					}
				}
				if (found != NULL)
				{
					break;
				}
			}
		}
		if (found != NULL)
		{
			break;
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	} while (count != 0);

	if (found != NULL)
	{
		found->GetCollideData();
		info.object = found;
		info.index = index;
		info.coords = MapCoords();
	}
	else
	{
		info.object = NULL;
		info.index = 1;
		info.coords.SetX(collide_obj->position.x);
		info.coords.SetZ(collide_obj->position.z);
		info.coords.altitude = 0.0f;
	}
}

void CircleHugInfo::SetResolutionInfo(Object* object, int index, const MapCoords& coords)
{
	obj = (NewCollide::Obj*)new ("C:\\dev\\MP\\Black\\MobileWallHug.cpp", 312) ResolutionInfoT;
	((ResolutionInfoT*)obj)->object = object;
	((ResolutionInfoT*)obj)->index = index;
	((ResolutionInfoT*)obj)->coords = coords;
}

CircleHugInfo::CircleHugInfo()
{
	obj = NULL;
	Reset(NULL);
}

NewCollide::Obj* CircleHugInfo::GetObjectPtr()
{
	return obj;
}

void CircleHugStateInfoT::OnDeletionOfNewcollideObjHandler(NewCollide::Obj* obj)
{
	g_CircleHugStateInfo.OnDeletionOfNewcollideObj(obj);
}

void CircleHugStateInfoT::OnDeletionOfNewcollideObj(NewCollide::Obj* obj)
{
	for (;;)
	{
		std::map<NewCollide::Obj*, std::set<MobileWallHug*> >::iterator it = ObjToMwh.find(obj);
		if (it == ObjToMwh.end())
		{
			return;
		}

		MobileWallHug* mwh = *(*it).second.begin();
		mwh->circle_hug_info.GetObjectPtr();
		switch (mwh->MoveState)
		{
		case MOVE_TO_STATES_LINEAR:
			mwh->MoveToCircleHugLinearSquareSweep(mwh->Pos);
			break;
		case MOVE_TO_STATES_ORBIT_CW:
			mwh->InitStepsXZ();
			mwh->MoveState = MOVE_TO_STATES_LINEAR_CW;
			mwh->MoveToCircleHugLinearSquareSweep(mwh->Pos);
			break;
		case MOVE_TO_STATES_ORBIT_CCW:
			mwh->InitStepsXZ();
			mwh->MoveState = MOVE_TO_STATES_LINEAR_CCW;
			mwh->MoveToCircleHugLinearSquareSweep(mwh->Pos);
			break;
		case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
		case MOVE_TO_STATES_EXIT_CIRCLE_CW:
			mwh->InitStepsXZ();
			mwh->MoveState =
				mwh->MoveState == MOVE_TO_STATES_EXIT_CIRCLE_CW ? MOVE_TO_STATES_LINEAR_CW : MOVE_TO_STATES_LINEAR_CCW;
			mwh->MoveToCircleHugLinearSquareSweep(mwh->Pos);
			// fallthrough
		default:
			mwh->circle_hug_info.SetObjectPtr(NULL, mwh, false);
			break;
		}
	}
}

void CircleHugInfo::SetObjectPtr(NewCollide::Obj* new_obj, MobileWallHug* mwh, bool resolving_load)
{
	if (GameOSFile::Loading && !resolving_load)
	{
		if (new_obj == NULL)
		{
			if (obj != NULL)
			{
				delete (ResolutionInfoT*)obj;
			}
			obj = NULL;
		}
		else if (obj != NULL)
		{
			FetchObjectFromCircHugInfo(new_obj, *(ResolutionInfoT*)obj);
		}
		else
		{
			obj = (NewCollide::Obj*)new (__FILE__, 422) ResolutionInfoT;
			FetchObjectFromCircHugInfo(new_obj, *(ResolutionInfoT*)obj);
		}
		return;
	}

	if (obj != NULL)
	{
		std::map<NewCollide::Obj*, std::set<MobileWallHug*> >::iterator it = g_CircleHugStateInfo.ObjToMwh.find(obj);
		std::set<MobileWallHug*>::iterator                              mwhIt = (*it).second.find(mwh);
		if (g_CircleHugStateInfo.ObjToMwh.end() != it && mwhIt != (*it).second.end())
		{
			(*it).second.erase(mwhIt);
			if ((*it).second.size() == 0)
			{
				g_CircleHugStateInfo.ObjToMwh.erase(it);
			}
		}
	}

	if (new_obj != NULL)
	{
		g_CircleHugStateInfo.ObjToMwh[new_obj].insert(mwh);
	}

	obj = new_obj;
}

// fabricated: an inlined helper is needed to reproduce the out-of-line
// set::find calls of the original
inline void EraseFromCircleHugSet(std::set<MobileWallHug*>& s, MobileWallHug* mwh)
{
	std::set<MobileWallHug*>::iterator it = s.find(mwh);
	if (it != s.end())
	{
		s.erase(it);
	}
}

// BW1W120 0060a9f0 BW1M119 01029be0
void CircleHugInfo::Reset(MobileWallHug* mwh)
{
	if (mwh != NULL)
	{
		SetObjectPtr(NULL, mwh, false);
	}
	TurnsToObj = 0xff;
	EntryDistance = 0;

	EraseFromCircleHugSet(g_CircleHugStateInfo.CompletedLookahead, mwh);
	EraseFromCircleHugSet(g_CircleHugStateInfo.PendingLookahead, mwh);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.ExtendedEntryDistances.find(mwh);
	if (it != g_CircleHugStateInfo.ExtendedEntryDistances.end())
	{
		g_CircleHugStateInfo.ExtendedEntryDistances.erase(it);
	}
}

// TODO: the map lookups below emit _Lbound calls where the target calls
// lower_bound; likely needs this TU's other container users to match
#pragma inline_depth(1)

// BW1W120 0060aad0 BW1M119 010303f0
void MobileWallHug::SetupMobileMoveToPos(const MapCoords& coords)
{
	goal = coords;
	InitStepsXZ();

	EraseFromCircleHugSet(g_CircleHugStateInfo.CompletedLookahead, this);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.ExtendedEntryDistances.find(this);
	if (it != g_CircleHugStateInfo.ExtendedEntryDistances.end())
	{
		g_CircleHugStateInfo.ExtendedEntryDistances.erase(it);
		circle_hug_info.EntryDistance = 0;
	}

	if (AreWeThere(0.0f) == 1)
	{
		MoveState = MOVE_TO_STATES_ARRIVED;
		return;
	}

	circle_hug_info.Reset(this);
	TurnsUntilStepRebuild = 1;
	MoveState = MOVE_TO_STATES_STEP_THROUGH;
}

// BW1W120 0060abc0 BW1M119 0101f330
void MobileWallHug::SetupMobileMoveToPos(const MapCoords& coords, MOVE_TO_STATES move_to_state)
{
	goal = coords;
	InitStepsXZ();

	EraseFromCircleHugSet(g_CircleHugStateInfo.CompletedLookahead, this);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.ExtendedEntryDistances.find(this);
	if (it != g_CircleHugStateInfo.ExtendedEntryDistances.end())
	{
		g_CircleHugStateInfo.ExtendedEntryDistances.erase(it);
		circle_hug_info.EntryDistance = 0;
	}

	if (AreWeThere(0.0f) == 1)
	{
		MoveState = MOVE_TO_STATES_ARRIVED;
		return;
	}

	if (move_to_state == MOVE_TO_STATES_LINEAR)
	{
		MoveToCircleHugLinearSquareSweep(Pos);
		MoveState = move_to_state;
		return;
	}
	if (move_to_state == MOVE_TO_STATES_STEP_THROUGH)
	{
		TurnsUntilStepRebuild = 1;
	}
	MoveState = move_to_state;
}

#pragma inline_depth()

void MobileWallHug::SetupMobileMoveToObject(Object* object)
{
	if (object != NULL)
	{
		target = object;
		goal = object->GetWorkingPos(this);
		InitStepsXZ();
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_ARRIVED;
			return;
		}
		TurnsUntilStepRebuild = 1;
		MoveState = MOVE_TO_STATES_STEP_THROUGH;
	}
}

bool32_t MobileWallHug::AreWeThere(float extra_distance)
{
	return AreWeThere(*GetDestPos(), extra_distance);
}

bool32_t MobileWallHug::AreWeThere(const MapCoords& coords, float extra_distance)
{
	float dx = (float)(Pos.x - coords.x);
	float dz = (float)(Pos.z - coords.z);
	float r = (float)speed + extra_distance;
	return dx * dx + dz * dz <= r * r;
}

int MobileWallHug::MoveToObjectPos()
{
	Object* object = target;
	if (object != NULL && object->IsAvailable())
	{
		MapCoords pos = object->Pos;
		float     speedInMetres = GetSpeedInMetres();
		if (Pos.GetDistance(pos) < speedInMetres)
		{
			return 10;
		}
		if (!IsAnimal())
		{
			float targetSpeed = object->GetSpeedInMetres() * 1.1f;
			if (targetSpeed > speedInMetres)
			{
				speedInMetres = targetSpeed;
			}
			SetSpeedInMetres(speedInMetres, 0);
		}
		goal = pos;
		if (IsVillager(NULL))
		{
			Villager* villager = dynamic_cast<Villager*>(this);
			if (villager != NULL && (villager->Flags & 0x80))
			{
				InitStepsXZ();
			}
		}
		return MoveTo();
	}
	return 38;
}

void MobileWallHug::MoveTo3D()
{
	if (Pos.Altitude() > goal.Altitude())
	{
		Pos.altitude -= 0.2f;
	}
	else if (Pos.Altitude() < goal.Altitude())
	{
		Pos.altitude += 0.2f;
	}
	MoveTo();
}

int MobileWallHug::MoveTo()
{
	int result = 1;
	g_CircleHugNeedsLookahead = false;
	switch (MoveState)
	{
	case MOVE_TO_STATES_WANDER:
		result = MoveToWander(NULL, 0, 0);
		break;
	case MOVE_TO_STATES_FINAL_STEP: {
		MapCoords pos = Pos;
		pos.x = GetDestPos()->x;
		pos.z = GetDestPos()->z;
		MoveMapObject(pos);
		return 10;
	}
	case MOVE_TO_STATES_ARRIVED:
		if (AreWeThere(0.0f) == 1)
		{
			MapCoords pos = Pos;
			pos.x = GetDestPos()->x;
			pos.z = GetDestPos()->z;
			MoveMapObject(pos);
			return 10;
		}
		TurnsUntilStepRebuild = 16;
		MoveState = MOVE_TO_STATES_STEP_THROUGH;
		// fallthrough
	case MOVE_TO_STATES_STEP_THROUGH: {
		if (IsAnimal())
		{
			InitStepsXZ();
		}
		else if (--TurnsUntilStepRebuild == 0)
		{
			TurnsUntilStepRebuild = 127;
			InitStepsXZ();
		}
		MapCoords pos = Pos;
		pos.x += step.x;
		pos.z += step.z;
		result = MoveMapObject(pos);
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_FINAL_STEP;
			step.Init(Pos.x - goal.x, Pos.z - goal.z, 0.0f);
		}
		break;
	}
	case MOVE_TO_STATES_LINEAR:
	case MOVE_TO_STATES_LINEAR_CW:
	case MOVE_TO_STATES_LINEAR_CCW:
		if (circle_hug_info.TurnsToObj != 0xff && circle_hug_info.GetObjectPtr() == NULL)
		{
			MoveToCircleHugLinearSquareSweep(Pos);
		}
		result = MoveToCircleHug();
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_FINAL_STEP;
			step.Init(Pos.x - goal.x, Pos.z - goal.z, 0.0f);
		}
		break;
	case MOVE_TO_STATES_ORBIT_CW: {
		if (circle_hug_info.GetObjectPtr() == NULL)
		{
			InitStepsXZ();
			MoveState = MOVE_TO_STATES_LINEAR_CW;
			MoveToCircleHugLinearSquareSweep(Pos);
			break;
		}
		result = MobileWallHug_InCircleStuff<true>::MoveToCircleHugCircle(this);
		uint32_t turns = circle_hug_info.EntryDistance != (int16_t)0xffff
		                     ? (uint16_t)circle_hug_info.EntryDistance
		                     : g_CircleHugStateInfo.ExtendedEntryDistances[this];
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_FINAL_STEP;
			step.Init(Pos.x - goal.x, Pos.z - goal.z, 0.0f);
			break;
		}
		float limit = (float)turns * (1.0f / 0x4000) * (float)turns;
		if (Pos.GetMetresDistanceSq(goal) < limit)
		{
			// TODO: the target converts the coordinates as unsigned 32-bit values here
			float dz = (float)(uint32_t)Pos.z - (float)(uint32_t)goal.z;
			float dx = (float)(uint32_t)Pos.x - (float)(uint32_t)goal.x;
			if (step.x * dz - step.z * dx < 0.0f && dx * step.x + dz * step.z < 0.0f)
			{
				InitStepsXZSetAngle(GUtils::GetAngleFromXZ(circle_hug_info.GetObjCoords(), Pos));
				MoveState = MOVE_TO_STATES_EXIT_CIRCLE_CW;
				EraseFromCircleHugSet(g_CircleHugStateInfo.CompletedLookahead, this);
				if (circle_hug_info.EntryDistance == -1)
				{
					std::map<MobileWallHug*, uint32_t>::iterator it =
						g_CircleHugStateInfo.ExtendedEntryDistances.find(this);
					if (it != g_CircleHugStateInfo.ExtendedEntryDistances.end())
					{
						g_CircleHugStateInfo.ExtendedEntryDistances.erase(it);
					}
					circle_hug_info.EntryDistance = 0;
				}
			}
		}
		break;
	}
	case MOVE_TO_STATES_ORBIT_CCW: {
		if (circle_hug_info.GetObjectPtr() == NULL)
		{
			InitStepsXZ();
			MoveState = MOVE_TO_STATES_LINEAR_CCW;
			MoveToCircleHugLinearSquareSweep(Pos);
			break;
		}
		result = MobileWallHug_InCircleStuff<false>::MoveToCircleHugCircle(this);
		uint32_t turns = circle_hug_info.EntryDistance != (int16_t)0xffff
		                     ? (uint16_t)circle_hug_info.EntryDistance
		                     : g_CircleHugStateInfo.ExtendedEntryDistances[this];
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_FINAL_STEP;
			step.Init(Pos.x - goal.x, Pos.z - goal.z, 0.0f);
			break;
		}
		float limit = (float)turns * (1.0f / 0x4000) * (float)turns;
		if (Pos.GetMetresDistanceSq(goal) < limit)
		{
			// TODO: the target converts the coordinates as unsigned 32-bit values here
			float dz = (float)(uint32_t)Pos.z - (float)(uint32_t)goal.z;
			float dx = (float)(uint32_t)Pos.x - (float)(uint32_t)goal.x;
			if (step.x * dz - step.z * dx > 0.0f && dx * step.x + dz * step.z < 0.0f)
			{
				InitStepsXZSetAngle(GUtils::GetAngleFromXZ(circle_hug_info.GetObjCoords(), Pos));
				MoveState = MOVE_TO_STATES_EXIT_CIRCLE_CCW;
				EraseFromCircleHugSet(g_CircleHugStateInfo.CompletedLookahead, this);
				if (circle_hug_info.EntryDistance == -1)
				{
					std::map<MobileWallHug*, uint32_t>::iterator it =
						g_CircleHugStateInfo.ExtendedEntryDistances.find(this);
					if (it != g_CircleHugStateInfo.ExtendedEntryDistances.end())
					{
						g_CircleHugStateInfo.ExtendedEntryDistances.erase(it);
					}
					circle_hug_info.EntryDistance = 0;
				}
			}
		}
		break;
	}
	case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
	case MOVE_TO_STATES_EXIT_CIRCLE_CW: {
		if (circle_hug_info.GetObjectPtr() == NULL)
		{
			InitStepsXZ();
			MoveState =
				MoveState == MOVE_TO_STATES_EXIT_CIRCLE_CW ? MOVE_TO_STATES_LINEAR_CW : MOVE_TO_STATES_LINEAR_CCW;
			MoveToCircleHugLinearSquareSweep(Pos);
			break;
		}
		MapCoords pos = Pos;
		pos.x += step.x;
		pos.z += step.z;
		result = MoveMapObject(pos);
		if (AreWeThere(0.0f) == 1)
		{
			MoveState = MOVE_TO_STATES_FINAL_STEP;
			step.Init(Pos.x - goal.x, Pos.z - goal.z, 0.0f);
			break;
		}
		float distSq = circle_hug_info.GetObjCoords().GetMetresDistanceSq(Pos);
		if (circle_hug_info.GetObjectPtr()->radius * circle_hug_info.GetObjectPtr()->radius < distSq)
		{
			InitStepsXZ();
			MoveState =
				MoveState == MOVE_TO_STATES_EXIT_CIRCLE_CW ? MOVE_TO_STATES_LINEAR_CW : MOVE_TO_STATES_LINEAR_CCW;
			MoveToCircleHugLinearSquareSweep(Pos);
		}
		break;
	}
	case MOVE_TO_STATES_0xa:
		break;
	default:
		result = 0;
		break;
	}

	if (g_CircleHugNeedsLookahead)
	{
		if (g_CircleHugStateInfo.CompletedLookahead.find(this) == g_CircleHugStateInfo.CompletedLookahead.end() &&
		    !g_CircleHugStateInfo.EvaluatingLookahead)
		{
			g_CircleHugStateInfo.PendingLookahead.insert(this);
		}
	}
	return result;
}

// BW1W120 0060bbc0 BW1M119 013cb950
int MobileWallHug::SimpleMoveTo()
{
	int       result = 1;
	MapCoords pos = Pos;
	GetDestPos();
	pos.x += step.x;
	pos.z += step.z;
	if (MoveMapObject(pos) == 7)
	{
		result = 7;
	}
	return result;
}

void MobileWallHug::SetNewWander(const MapCoords* centre, long min_dist, long max_dist)
{
	int angle = GameAngle;
	if (centre != NULL)
	{
		int dist = (int)GUtils::GetDistanceInMetres_0074cd50(*centre, Pos);
		if (dist > max_dist)
		{
			angle = GUtils::GetAngleFromXZ(Pos, *centre);
		}
		else if (dist < min_dist)
		{
			angle = GUtils::GetAngleFromXZ(*centre, Pos);
		}
		else
		{
			angle += GRand::GameRand(0x80, __FILE__, 1080) - 0x40;
		}
	}
	else
	{
		angle += GRand::GameRand(0x80, __FILE__, 1085) - 0x40;
	}
	SetTowardsAngle(angle & 0x7ff);
	RebuildMoveByStep();
}

int MobileWallHug::MoveToWander(const MapCoords* centre, long min_dist, long max_dist)
{
	int direction;
	int result = MoveByStep(direction);
	if (result == 7)
	{
		SetNewWander(centre, min_dist, max_dist);
	}
	else if (result == 8)
	{
		int cellX = Pos.MapX();
		int cellZ = Pos.MapZ();
		int i;
		if (GameAngle - (direction << 9) < 0)
		{
			for (i = 0; i < 3; i++)
			{
				direction = (direction - 1) & 3;
				if (GGame::g_game->map.InBounds(cellX + MapXZDirections[direction].x,
				                                cellZ + MapXZDirections[direction].z) &&
				    CollideWithMapCell(cellX + MapXZDirections[direction].x, cellZ + MapXZDirections[direction].z) == 0)
				{
					break;
				}
			}
		}
		else
		{
			for (i = 0; i < 3; i++)
			{
				direction = (direction + 1) & 3;
				if (GGame::g_game->map.InBounds(cellX + MapXZDirections[direction].x,
				                                cellZ + MapXZDirections[direction].z) &&
				    CollideWithMapCell(cellX + MapXZDirections[direction].x, cellZ + MapXZDirections[direction].z) == 0)
				{
					break;
				}
			}
		}
		SetGameAngle(direction << 9);
		RebuildMoveByStep();
	}
	return result;
}

int MobileWallHug::MoveByStep(int& direction)
{
	MapCoords pos = Pos;
	MapCoords next(pos.x + step.x, pos.z + step.z, pos.Altitude());
	return MoveMapObject(next);
}

int MobileWallHug::CollideWithMapCell(uint16_t x, uint16_t z)
{
	COLLIDE_TYPE mask = (COLLIDE_TYPE)GetInfo()->CollideMask;
	return GGame::g_game->map.InBounds(x, z)
	           ? GGame::g_game->map.cells[0][x * GGame::g_game->map.CellExtentZx[0] + z].Collide(mask)
	           : -1;
}

int MobileWallHug::Collide()
{
	return Pos.Collide((COLLIDE_TYPE)GetInfo()->CollideMask);
}

int MobileWallHug::Collide(const MapCoords& coords)
{
	return coords.Collide(GetCollideMask());
}

COLLIDE_TYPE MobileWallHug::GetCollideMask()
{
	return (COLLIDE_TYPE)GetInfo()->CollideMask;
}

void MobileWallHug::InitStepsXZ()
{
	long angle = GUtils::GetAngleFromXZ(Pos, *GetDestPos());
	SetTowardsAngle(angle);
	RebuildMoveByStep();
}

void MobileWallHug::SetAngleOnMoveBy()
{
	SetGameAngle(GUtils::GetAngleFromDXDZ(step.x, step.z));
}

float MobileWallHug::GetFacingDirection()
{
	return GUtils::ConvertGameAngleToScawenAngle(GameAngle);
}

void MobileWallHug::GetMovementDirection(LHPoint* direction)
{
	if (Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		GetPhysicsMovementDirection(direction);
		return;
	}
	direction->x = step.x;
	direction->z = step.z;
	direction->y = 0.0f;
}

float MobileWallHug::GetSpeedInMetres() const
{
	return GUtils::ConvertWholeDistanceToMeters(speed);
}

void MobileWallHug::SetSpeedInMetres(float speed_in_metres, int scale_speed)
{
	SetSpeed(GUtils::ConvertMetersToWholeDistance(speed_in_metres));
}

float MobileWallHug::GetRunningSpeedInMetres()
{
	return GUtils::ConvertWholeDistanceToMeters(GetInfo()->RunningSpeed);
}

float MobileWallHug::GetDefaultSpeedInMetres()
{
	return GUtils::ConvertWholeDistanceToMeters(GetInfo()->speed);
}

float MobileWallHug::GetSpeedInMetresPerSecond() const
{
	return GUtils::ConvertWholeDistanceToMeters(speed) * 10.0f;
}

void MobileWallHug::SetSpeedInMetresPerSecond(float speed)
{
	SetSpeed(GUtils::ConvertMetersToWholeDistance(speed / 10.0f));
}

float MobileWallHug::GetRunningSpeedInMetresPerSecond()
{
	return GUtils::ConvertWholeDistanceToMeters(GetInfo()->RunningSpeed) * 10.0f;
}

float MobileWallHug::GetDefaultSpeedInMetresPerSecond()
{
	return GUtils::ConvertWholeDistanceToMeters(GetInfo()->speed) * 10.0f;
}

void MapCoordsToPoint2D(Point2D& point, const MapCoords& coords)
{
	point.x = coords.x * (10.0f / (float)0x10000);
	point.y = coords.z * (10.0f / (float)0x10000);
}

void WholeXZToPoint2D(Point2D& point, long x, long z)
{
	point.x = x * (10.0f / (float)0x10000);
	point.y = z * (10.0f / (float)0x10000);
}

template <> Point2D Point2DCompare<false>::origin;
template <> Point2D Point2DCompare<true>::origin;

void CircleHugInfo::ResolveLoad(MobileWallHug* mwh)
{
	ResolutionInfoT* info = (ResolutionInfoT*)obj;
	obj = NULL;
	if (info == NULL)
	{
		return;
	}

	if (info->object != NULL)
	{
		if (info->object->GetCollideData() == NULL)
		{
			delete info;
			return;
		}
		if (info->object->GetCollideData()->obj->IteratorList == NULL)
		{
			info->index = -1;
		}
		else
		{
			info->index = info->object->GetCollideData()->obj->IteratorList->count - 1;
		}
	}

	if (info->object != NULL)
	{
		if (info->index == -1)
		{
			SetObjectPtr(info->object->GetCollideData()->obj, mwh, true);
		}
		else
		{
			SetObjectPtr(info->object->GetCollideData()->obj->IteratorList->objs[info->index], mwh, true);
		}
	}
	else if (info->index == 1)
	{
		SetObjectPtr(g_CircleHugStateInfo.fetch(info->coords), mwh, true);
	}
	delete info;
}

uint32_t MobileWallHug::Save(GameOSFile& file)
{
	if (Mobile::Save(file))
	{
		WRITE_SAFE(file, TurnsUntilNextStateChange);
		WRITE_SAFE(file, speed);
		WRITE_SAFE(file, GameAngle);
		WRITE_SAFE(file, MoveState);
		switch (MoveState)
		{
		case MOVE_TO_STATES_LINEAR:
		case MOVE_TO_STATES_LINEAR_CW:
		case MOVE_TO_STATES_LINEAR_CCW:
		case MOVE_TO_STATES_ORBIT_CW:
		case MOVE_TO_STATES_ORBIT_CCW:
		case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
		case MOVE_TO_STATES_EXIT_CIRCLE_CW: {
			WRITE_SAFE(file, circle_hug_info.TurnsToObj);
			uint32_t turns = circle_hug_info.EntryDistance != (int16_t)0xffff
			                     ? (uint16_t)circle_hug_info.EntryDistance
			                     : g_CircleHugStateInfo.ExtendedEntryDistances[this];
			WRITE_SAFE(file, turns);
			CircleHugInfo::ResolutionInfoT info;
			circle_hug_info.FetchObjectFromCircHugInfo(circle_hug_info.GetObjectPtr(), info);
			file.WritePtr(info.object);
			WRITE_SAFE(file, info.index);
			WRITE_SAFE(file, info.coords);
			break;
		}
		case MOVE_TO_STATES_STEP_THROUGH:
			WRITE_SAFE(file, TurnsUntilStepRebuild);
			break;
		}
		file.WritePtr((GameThing*)footpath);
		WRITE_SAFE(file, goal);
		file.WritePtr(target);
		file.WriteIt(step);
		return 1;
	}
	return 0;
}

uint32_t MobileWallHug::Load(GameOSFile& file)
{
	if (Mobile::Load(file))
	{
		file.ReadIt(TurnsUntilNextStateChange);
		file.ReadIt(speed);
		file.ReadIt(GameAngle);
		file.ReadIt(MoveState);
		switch (MoveState)
		{
		case MOVE_TO_STATES_LINEAR:
		case MOVE_TO_STATES_LINEAR_CW:
		case MOVE_TO_STATES_LINEAR_CCW:
		case MOVE_TO_STATES_ORBIT_CW:
		case MOVE_TO_STATES_ORBIT_CCW:
		case MOVE_TO_STATES_EXIT_CIRCLE_CCW:
		case MOVE_TO_STATES_EXIT_CIRCLE_CW: {
			file.ReadIt(circle_hug_info.TurnsToObj);
			uint32_t turns;
			file.ReadIt(turns);
			if (turns >= 0xffff)
			{
				g_CircleHugStateInfo.ExtendedEntryDistances[this] = turns;
				circle_hug_info.EntryDistance = -1;
			}
			else
			{
				circle_hug_info.EntryDistance = turns;
			}
			CircleHugInfo::ResolutionInfoT info;
			file.ReadPtr((GameThing**)&info.object);
			file.ReadIt(info.index);
			file.ReadIt(info.coords);
			circle_hug_info.SetResolutionInfo(info.object, info.index, info.coords);
			break;
		}
		case MOVE_TO_STATES_STEP_THROUGH:
			file.ReadIt(TurnsUntilStepRebuild);
			break;
		}
		file.ReadPtr((GameThing**)&footpath);
		file.ReadIt(goal);
		file.ReadPtr((GameThing**)&target);
		file.ReadIt(step);
		return 1;
	}
	return 0;
}

// fabricated name. The step of a linear wall hug, measured from origin along the unit direction dir, against
// the collision circle of obj. t0 is only a lower bound on the distance at which the step enters the circle
// until Resolve() works it out.
struct IntersectIntervalLine
{
	float            t0;
	float            t1;   // distance to the point of closest approach to the circle's centre
	float            disc; // radius squared less the squared distance of the centre from the line
	NewCollide::Obj* obj;

	// BW1W120 inlined BW1M119 inlined
	IntersectIntervalLine() {}
	// BW1W120 inlined BW1M119 inlined
	IntersectIntervalLine(NewCollide::Obj* collide_obj, const Point2D& origin, const Point2D& dir)
	{
		Init(collide_obj, origin, dir);
	}

	// BW1W120 0060cee0 BW1M119 inlined
	void Resolve()
	{
		if (t0 != t1)
		{
			t0 = t1 = t1 - sqrt(disc);
			if (t0 < -0.2)
			{
				t0 = t1 = MaxFloat;
			}
		}
	}
	// BW1W120 0060cf20 BW1M119 inlined
	void Init(NewCollide::Obj* collide_obj, const Point2D& origin, const Point2D& dir)
	{
		Point2D offset(collide_obj->position.x, collide_obj->position.z);
		offset -= origin;
		t1 = offset * dir;
		float radius = collide_obj->radius;
		t0 = t1 - radius;
		obj = collide_obj;
		disc = radius * radius - offset.GetNormSq() + t1 * t1;
		if (t0 < -0.2 && disc > 0.0f)
		{
			Resolve();
		}
	}
	// BW1W120 0060cff0 BW1M119 inlined
	bool32_t operator<(IntersectIntervalLine& other)
	{
		if (t1 < other.t0)
		{
			return TRUE;
		}
		if (t0 > other.t1)
		{
			return FALSE;
		}
		Resolve();
		other.Resolve();
		return t1 < other.t0;
	}
};

inline bool isValidForTravel(const MapCoords& coords)
{
	if (!GGame::g_game->map.InBounds(coords.MapX(), coords.MapZ()))
	{
		return false;
	}
	MapCell* cell = GGame::g_game->map.ToMap(coords.MapX(), coords.MapZ());
	if (LH3DIsland::IsWater(coords.MapX(), coords.MapZ()))
	{
		return false;
	}
	return true;
}

inline void ObjectCircleIterator::Init(int new_index, const MapCoords& coords)
{
	MapCoords cell_coords = coords;
	switch (new_index)
	{
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_RIGHT:
		cell_coords.AddToMapX(1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_LEFT:
		cell_coords.AddToMapX(-1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN:
		cell_coords.AddToMapZ(1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_UP:
		cell_coords.AddToMapZ(-1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_LEFT:
		cell_coords.AddToMapZ(-1);
		cell_coords.AddToMapX(-1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_LEFT:
		cell_coords.AddToMapZ(1);
		cell_coords.AddToMapX(-1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_RIGHT:
		cell_coords.AddToMapZ(-1);
		cell_coords.AddToMapX(1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_RIGHT:
		cell_coords.AddToMapZ(1);
		cell_coords.AddToMapX(1);
		break;
	case OBJECT_CIRCLE_ITERATOR_DIRECTION_NONE:
		obj = NULL;
		CollideObj = NULL;
		return;
	}
	index = new_index;
	if (!isValidForTravel(cell_coords))
	{
		CollideObj = g_CircleHugStateInfo.fetch(cell_coords);
	}
	else
	{
		Init(index + 1, coords);
	}
}

inline void ObjectCircleIterator::Init(Object* new_obj, const MapCoords& coords)
{
	CollideObj = NULL;
	if (new_obj == NULL)
	{
		Init(0, coords);
		return;
	}
	obj = new_obj;
	CollideData = new_obj->GetCollideData();
	if (CollideData == NULL)
	{
		Init(obj->GetMapChild(coords), coords);
	}
	else if (dynamic_cast<Field*>(new_obj) != NULL)
	{
		Init(obj->GetMapChild(coords), coords);
	}
	else
	{
		index = 0;
	}
}

inline void ObjectCircleIterator::Next(const MapCoords& coords)
{
	if (DoIPointAtLandscapeMaterial())
	{
		Init(index + 1, coords);
		return;
	}
	if (CollideData->obj->IteratorList)
	{
		index++;
		if (index < CollideData->obj->IteratorList->count)
		{
			return;
		}
		Init(obj->GetMapChild(coords), coords);
	}
	else
	{
		Init(obj->GetMapChild(coords), coords);
	}
}

uint32_t MobileWallHug::MoveToCircleHugLinearSquareSweep(const MapCoords& coords)
{
	Point2D dir;
	WholeXZToPoint2D(dir, step.x, step.z);
	Point2D origin;
	MapCoordsToPoint2D(origin, Pos);
	circle_hug_info.SetObjectPtr(NULL, this, false);
	ObjectCircleIterator it(coords);
	if (it.IsValid())
	{
		float                  length = dir.Normalize();
		IntersectIntervalLine* nearest = new (__FILE__, 1771) IntersectIntervalLine(it, origin, dir);
		IntersectIntervalLine* current = new (__FILE__, 1772) IntersectIntervalLine;
		while (nearest->disc <= 0.0f)
		{
			it.Next(coords);
			if (!it.IsValid())
			{
				break;
			}
			nearest->Init(it, origin, dir);
		}
		if (!it.IsValid())
		{
			circle_hug_info.TurnsToObj = 0xff;
		}
		else
		{
			for (it.Next(coords); it.IsValid(); it.Next(coords))
			{
				current->Init(it, origin, dir);
				while (current->disc <= 0.0f)
				{
					it.Next(coords);
					if (!it.IsValid())
					{
						break;
					}
					current->Init(it, origin, dir);
				}
				if (!it.IsValid())
				{
					break;
				}
				if (*current < *nearest)
				{
					IntersectIntervalLine* swap = nearest;
					nearest = current;
					current = swap;
				}
			}
			nearest->Resolve();
			if (nearest->t0 == MaxFloat)
			{
				circle_hug_info.TurnsToObj = 0xff;
			}
			else
			{
				nearest->t0 /= length;
				if (nearest->t0 > 255.0f)
				{
					circle_hug_info.TurnsToObj = 0xff;
				}
				else
				{
					circle_hug_info.TurnsToObj = (uint8_t)(nearest->t0 > 0.0f ? nearest->t0 : 0.0f);
					if (circle_hug_info.TurnsToObj != 0xff)
					{
						circle_hug_info.SetObjectPtr(nearest->obj, this, false);
					}
				}
			}
		}
		delete nearest;
		delete current;
	}
	else
	{
		circle_hug_info.TurnsToObj = 0xff;
	}
	return 1;
}

int MobileWallHug::MoveToCircleHug()
{
	MapCoords next(Pos.x + step.x, Pos.z + step.z, Pos.Altitude());
	if (next.MapX() != Pos.MapX() || next.MapZ() != Pos.MapZ())
	{
		InitStepsXZ();
		MoveToCircleHugLinearSquareSweep(next);
	}

	if (circle_hug_info.TurnsToObj != 0xff && circle_hug_info.TurnsToObj-- == 0)
	{
		Point2D dir;
		WholeXZToPoint2D(dir, step.x, step.z);
		Point2D pos;
		MapCoordsToPoint2D(pos, Pos);
		Point2D centre;
		MapCoordsToPoint2D(centre, circle_hug_info.GetObjCoords());

		NewCollide::Obj* obj = circle_hug_info.GetObjectPtr();
		MapCoords        block;
		GLandscape::ConvertLandscapePointToMapCoord(obj->position, block);
		block.CentreOnMap();
		std::map<SubCollideBlockPos, NewCollide::Obj*>::iterator it =
			g_CircleHugStateInfo.LandscapeBlockers.find(SubCollideBlockPos::MakeSubCollideBlockPos(block));
		if (it != g_CircleHugStateInfo.LandscapeBlockers.end() && (*it).second == obj)
		{
			g_CircleHugNeedsLookahead = true;
		}

		if (MoveState == MOVE_TO_STATES_LINEAR)
		{
			MoveState = (pos - centre).Cross(dir) > 0.0f ? MOVE_TO_STATES_ORBIT_CW : MOVE_TO_STATES_ORBIT_CCW;
		}
		else
		{
			MoveState = MoveState == MOVE_TO_STATES_LINEAR_CW ? MOVE_TO_STATES_ORBIT_CW : MOVE_TO_STATES_ORBIT_CCW;
		}

		if (MoveState == MOVE_TO_STATES_ORBIT_CW)
		{
			MobileWallHug_InCircleStuff<true>::MoveToCircleHugCircleSquareSweep(this, Pos);
		}
		else
		{
			MobileWallHug_InCircleStuff<false>::MoveToCircleHugCircleSquareSweep(this, Pos);
		}

		uint32_t turns = (uint32_t)max(sqrt(Pos.GetMetresDistanceSq(goal)) * 128.0 - 1.0, 0.0);
		if (turns >= 0xffff)
		{
			g_CircleHugStateInfo.ExtendedEntryDistances[this] = turns;
			circle_hug_info.EntryDistance = -1;
		}
		else
		{
			circle_hug_info.EntryDistance = turns;
		}
	}

	return MoveMapObject(next);
}

// BW1W120 0060da90 BW1M119 0104f670
void MobileWallHug::SetGameAngle(uint16_t angle)
{
	GameAngle = angle;
	Object::SetYAngle(GUtils::ConvertGameAngleTo3D(angle));
}

// BW1W120 0060dac0 BW1M119 013c98d0
void MobileWallHug::SetYAngle(float angle)
{
	Object::SetYAngle(angle);
	GameAngle = GUtils::ConvertAngle3DToGame(angle);
}

// BW1W120 0060db00 BW1M119 013c9820
MobileWallHug::~MobileWallHug()
{
	circle_hug_info.Reset(this);
}

// BW1W120 0060f760 BW1M119 013c9790
void MobileWallHug::SetToZero()
{
	speed = 0;
	TurnsUntilNextStateChange = 0;
	SetGameAngle(0);
	target = NULL;
	footpath = NULL;
}

bool CirclesOverlap(NewCollide::Obj* a, NewCollide::Obj* b)
{
	float radius = a->radius + b->radius;
	float dx = a->position.x - b->position.x;
	float dz = a->position.z - b->position.z;
	return dx * dx + dz * dz < radius * radius;
}

bool ObjectsCollide(Object* a, Object* b)
{
	NewCollide::Obj** objs_a;
	int               count_a;
	NewCollide*       collide_a = a->GetCollideData();
	if (collide_a == NULL)
	{
		objs_a = NULL;
		count_a = 0;
	}
	else if (collide_a->obj->IteratorList)
	{
		objs_a = collide_a->obj->IteratorList->objs;
		count_a = collide_a->obj->IteratorList->count;
	}
	else
	{
		objs_a = &collide_a->obj;
		count_a = 1;
	}
	for (; count_a > 0; objs_a++, count_a--)
	{
		NewCollide::Obj** objs_b;
		int               count_b;
		NewCollide*       collide_b = b->GetCollideData();
		if (collide_b == NULL)
		{
			objs_b = NULL;
			count_b = 0;
		}
		else if (collide_b->obj->IteratorList)
		{
			objs_b = collide_b->obj->IteratorList->objs;
			count_b = collide_b->obj->IteratorList->count;
		}
		else
		{
			objs_b = &collide_b->obj;
			count_b = 1;
		}
		for (; count_b > 0; objs_b++, count_b--)
		{
			if (CirclesOverlap(*objs_a, *objs_b))
			{
				return true;
			}
		}
	}
	return false;
}

void MobileWallHug::ProcessRemoveFromMap(MultiMapFixed* map_fixed)
{
	std::set<MultiMapFixed*> to_process;
	std::set<MultiMapFixed*> processed;
	to_process.insert(map_fixed);
	while (to_process.size() != 0)
	{
		std::set<MultiMapFixed*>::iterator next = to_process.begin();
		MultiMapFixed*                     current = *next;
		to_process.erase(next);
		processed.insert(current);
		std::set<MultiMapFixed*> neighbours;
		for (uint32_t i = 0; i < current->MultiChildrenArray.size; i++)
		{
			MapCell* cell = current->MultiChildrenArray.array[i].coords.ToMap();
			for (Object* obj = cell->FirstObjectFixed; obj != NULL; obj = obj->GetMapChild(*cell))
			{
				MultiMapFixed* other = dynamic_cast<MultiMapFixed*>(obj);
				if (other == NULL)
				{
					continue;
				}
				if (processed.find(other) != processed.end())
				{
					continue;
				}
				if (to_process.find(other) != to_process.end())
				{
					continue;
				}
				if (neighbours.find(other) != neighbours.end())
				{
					continue;
				}
				if (ObjectsCollide(current, other))
				{
					to_process.insert(other);
				}
				else
				{
					neighbours.insert(other);
				}
			}
		}
	}
	for (std::set<MultiMapFixed*>::iterator it = processed.begin(); it != processed.end(); ++it)
	{
		NewCollide::Obj** objs;
		int               count;
		NewCollide*       collide = (*it)->GetCollideData();
		if (collide == NULL)
		{
			objs = NULL;
			count = 0;
		}
		else if (collide->obj->IteratorList)
		{
			objs = collide->obj->IteratorList->objs;
			count = collide->obj->IteratorList->count;
		}
		else
		{
			objs = &collide->obj;
			count = 1;
		}
		for (; count > 0; objs++, count--)
		{
			std::map<NewCollide::Obj*, std::set<MobileWallHug*> >::iterator found =
				g_CircleHugStateInfo.ObjToMwh.find(*objs);
			if (found != g_CircleHugStateInfo.ObjToMwh.end())
			{
				for (std::set<MobileWallHug*>::iterator mwh = (*found).second.begin(); mwh != (*found).second.end();
				     ++mwh)
				{
					(*mwh)->circle_hug_info.EntryDistance = -1;
					g_CircleHugStateInfo.ExtendedEntryDistances[*mwh] = 0x7fffffff;
				}
			}
		}
	}
}

void MobileWallHug::SetSpeed(int new_speed)
{
	if (new_speed < 0)
	{
		new_speed = 0;
	}
	else if (new_speed > 0xffff)
	{
		new_speed = 0xffff;
	}
	speed = new_speed;
}
