#include <Lionhead/LHLib/ver5.0/RPFollow.h>

#include <Black/LandscapeConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include <Lionhead/LHLib/ver5.0/RPlan.h>
#include <Lionhead/LHLib/ver5.0/Route.h>

#include <math.h>   /* For atan2, cos, sin, sqrt */
#include <minmax.h> /* For min, max */
#include <stddef.h> /* For NULL */

static const float RP_TIME_STEP = 0.1f;
static const float RP_ACCELERATION = 12.0f;

RPFollow::RPFollow()
{
	FollowState = RPFOLLOW_STATE_UNPLACED;
	Pos = Point2D(0.0f, 0.0f);
	Radius = RPFOLLOW_DEFAULT_RADIUS;
	CurrentPlan = NULL;
	PlanCount = 0;
	PlanIndex = 0;
	HasDest = false;
	MaxSpeed = RPFOLLOW_DEFAULT_MAX_SPEED;
	Speed = 0.0f;
	Heading = 0.0f;
	StepDistance = 0.0f;
	DistanceAlongNode = 0.0f;
	StatusCallback = NULL;
	MovementCallback = NULL;
	UpdatesPerTurn = RPFOLLOW_DEFAULT_UPDATES_PER_TURN;
	RouteReady = false;
	RPHolder::Init(this);
}

RPFollow::~RPFollow()
{
	FreeAll();
}

void RPFollow::FreeAll()
{
	if (CurrentPlan != NULL)
	{
		delete CurrentPlan;
		CurrentPlan = NULL;
	}
	RemoveSpecials();
}

void RPFollow::Init(int context, void(__cdecl* status)(int, int), void(__cdecl* movement)(int, float, float),
                    float(__cdecl* range)(int), int updates_per_turn)
{
	Context = context;
	StatusCallback = status;
	MovementCallback = movement;
	GetRange = range;
	UpdatesPerTurn = updates_per_turn;
}

void RPFollow::SetPos(const Point2D& pos, float radius)
{
	FreeAll();
	Empty();
	Radius = radius;
	ObjectMargin = radius;
	Pos = pos;
	RouteEnd = Pos;
	FollowState = RPFOLLOW_STATE_STOPPED;
	HasDest = false;
	Speed = 0.0f;
}

void RPFollow::SetDest(const Point2D& dest, float end_clearance, float arrive_distance, float radius, float max_length)
{
	MaxLength = max_length;
	switch (FollowState)
	{
	case RPFOLLOW_STATE_STOPPED: {
		Radius = radius;
		Dest = dest;
		EndClearance = end_clearance;
		ArriveDistance = arrive_distance;
		PlanCount = 1;
		PlanIndex = RPFOLLOW_NO_PLAN;
		Plans[0] = new RPlan;
		JoinNodes[0] = NULL;
		Plans[0]->SetStart(RouteEnd, Radius, this, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
		Plans[0]->SetDest(Dest, EndClearance, ArriveDistance, 0.0f, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE,
		                  MaxLength, false);
		RouteReady = false;
		FollowState = (RPFOLLOW_STATE)(FollowState + 1);
		break;
	}
	case RPFOLLOW_STATE_PLANNING:
	case RPFOLLOW_STATE_REPLANNING: {
		Radius = radius;
		Dest = dest;
		EndClearance = end_clearance;
		ArriveDistance = arrive_distance;
		HasDest = true;
		float rangeToPos = Plans[0]->Dest.GetRange(Pos);
		if (Plans[0]->Dest.GetRange(Dest) > rangeToPos * 0.5f)
		{
			FollowState = (RPFOLLOW_STATE)(FollowState - 1);
			RemoveSpecials();
			HasDest = false;
			SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
		}
		break;
	}
	case RPFOLLOW_STATE_MOVING: {
		Radius = radius;
		Dest = dest;
		EndClearance = end_clearance;
		ArriveDistance = arrive_distance;
		RouteNode* node = CurrentNode;
		if (node->Prev != NULL)
		{
			node->Prev->Length = 0.0f;
		}
		for (; node != NULL; node = node->Next)
		{
			node->SetUpLength(AvoidArray);
		}
		RouteNode* tail = CurrentPlan->CurrentRoute->Tail;
		node = CurrentNode;
		float step = (tail->Length - node->Length) * 0.25f;
		float length = node->Length;
		for (; node != NULL; node = node->Next)
		{
			if (node == tail || (PlanCount < RPFOLLOW_MAX_PLANS - 1 && node->Length >= length))
			{
				Plans[PlanCount] = new RPlan;
				JoinNodes[PlanCount] = node;
				Plans[PlanCount]->SetStart(node->End, Radius, this, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID,
				                           ROUTE_NODE_SIDE_NONE);
				Plans[PlanCount]->SetDest(Dest, EndClearance, ArriveDistance, node->Length, ROUTE_NODE_NO_AVOID,
				                          ROUTE_NODE_SIDE_NONE, MaxLength, false);
				length += step;
				PlanCount++;
			}
		}
		FollowState = RPFOLLOW_STATE_REPLANNING;
		break;
	}
	}
}

void RPFollow::StopMoving()
{
	switch (FollowState)
	{
	case RPFOLLOW_STATE_UNPLACED:
		return;
	case RPFOLLOW_STATE_STOPPED:
		return;
	case RPFOLLOW_STATE_PLANNING:
		FreeAll();
		FollowState = RPFOLLOW_STATE_STOPPED;
		break;
	case RPFOLLOW_STATE_MOVING:
	case RPFOLLOW_STATE_REPLANNING: {
		RemoveSpecials();
		FollowState = RPFOLLOW_STATE_MOVING;
		float time = Speed / RP_ACCELERATION;
		float stopDistance = RP_ACCELERATION * time * time * 0.5f;
		if (GetRange != NULL)
		{
			float range = GetRange(Context);
			if (range > stopDistance)
			{
				stopDistance = range;
			}
		}
		if (CurrentNode->GetLength(AvoidArray) - DistanceAlongNode - RPFOLLOW_EPSILON > stopDistance)
		{
			float heading;
			FillPosAndHeading(CurrentNode->End, heading, stopDistance + DistanceAlongNode);
		}
		for (RouteNode* doomed = CurrentNode->Next; doomed != NULL;)
		{
			RouteNode* next = doomed->Next;
			delete doomed;
			doomed = next;
		}
		CurrentNode->Next = NULL;
		CurrentPlan->CurrentRoute->Tail = CurrentNode;
		RouteEnd = CurrentNode->End;
		break;
	}
	}
}

void RPFollow::GameTurnUpdate(void(__cdecl* object_encountered)(int, int), int max_updates)
{
	int updates;
	if (object_encountered != NULL)
	{
		updates = max_updates;
		RPlan::BlockingObjectsFunction = object_encountered;
		RPlan::BlockingObjectsOwnerID = Context;
	}
	else
	{
		updates = UpdatesPerTurn;
	}

	if (PlanCount != 0)
	{
		for (int turn = 0; turn < updates; turn++)
		{
			PlanIndex = 0;
			float bestLength = Plans[0]->BestLength;
			for (int i = 1; i < PlanCount; i++)
			{
				if (Plans[i]->BestLength < bestLength)
				{
					PlanIndex = i;
					bestLength = Plans[i]->BestLength;
				}
			}

			RPlan* plan = Plans[PlanIndex];
			if (plan->State == RPLAN_STATE_SUCCEEDED)
			{
				ActOnRouteSuccess();
				turn = updates;
			}
			else
			{
				if (plan->State == RPLAN_STATE_PLANNING)
				{
					plan->GameTurnUpdate(0);
				}
				switch (plan->State)
				{
				case RPLAN_STATE_NONE:
				case RPLAN_STATE_STARTED:
					turn = updates;
					break;
				case RPLAN_STATE_PLANNING:
					break;
				case RPLAN_STATE_NO_ROUTE:
					if (object_encountered != NULL && Dest.GetRange(Pos) > plan->BlockedLength)
					{
						FollowState = RPFOLLOW_STATE_TRAPPED;
						RemoveSpecials();
					}
					else
					{
						ActOnRouteFailure();
					}
					turn = updates;
					break;
				case RPLAN_STATE_FAILED:
					ActOnRouteFailure();
					turn = updates;
					break;
				case RPLAN_STATE_SUCCEEDED:
					if (FollowState != RPFOLLOW_STATE_REPLANNING)
					{
						ActOnRouteSuccess();
						turn = updates;
					}
					break;
				}
			}
		}
	}
	RPlan::BlockingObjectsFunction = NULL;
}

void RPFollow::RemoveSpecials()
{
	for (int i = 0; i < PlanCount; i++)
	{
		delete Plans[i];
	}
	PlanCount = 0;
}

void RPFollow::ActOnRouteFailure()
{
	RPFOLLOW_STATE state = FollowState;
	switch (state)
	{
	case RPFOLLOW_STATE_UNPLACED:
		return;
	case RPFOLLOW_STATE_STOPPED:
		return;
	case RPFOLLOW_STATE_MOVING:
		return;
	}
	FollowState = (RPFOLLOW_STATE)(state - 1);
	RPLAN_STATE planState = Plans[PlanIndex]->State;
	RemoveSpecials();
	RPFOLLOW_EVENT event;
	if (HasDest)
	{
		event = planState == RPLAN_STATE_NO_ROUTE ? RPFOLLOW_EVENT_REPLAN_NO_ROUTE : RPFOLLOW_EVENT_REPLAN_FAILED;
		HasDest = false;
		SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
	}
	else
	{
		event = planState == RPLAN_STATE_NO_ROUTE ? RPFOLLOW_EVENT_NO_ROUTE : RPFOLLOW_EVENT_FAILED;
	}
	StatusCallback(Context, event);
}

void RPFollow::ActOnRouteSuccess()
{
	RouteReady = true;
	switch (FollowState)
	{
	case RPFOLLOW_STATE_UNPLACED:
		return;
	case RPFOLLOW_STATE_STOPPED:
		return;
	case RPFOLLOW_STATE_MOVING:
		return;
	case RPFOLLOW_STATE_PLANNING: {
		CurrentPlan = Plans[0];
		PlanCount = 0;
		FollowState = RPFOLLOW_STATE_MOVING;
		CurrentNode = CurrentPlan->CurrentRoute->Head;
		DistanceAlongNode = 0.0f;
		RouteEnd = CurrentPlan->CurrentRoute->Tail->End;
		FillPosAndHeading(Pos, Heading, DistanceAlongNode);
		if (MovementCallback != NULL)
		{
			float length = CurrentNode->GetLength(AvoidArray);
			if (length < RPFOLLOW_EPSILON)
			{
				length = RPFOLLOW_EPSILON;
			}
			MovementCallback(Context, 0.0f, length);
		}
		break;
	}
	case RPFOLLOW_STATE_REPLANNING:
		ConcatenateRoutes(JoinNodes[PlanIndex]);
		FollowState = RPFOLLOW_STATE_MOVING;
		break;
	}
	if (PlanCount == 0 && HasDest)
	{
		HasDest = false;
		SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
	}
}

void RPFollow::ConcatenateRoutes(RouteNode* node)
{
	RPlan* plan = Plans[PlanIndex];
	Route* route = plan->CurrentRoute;

	for (RouteNode* doomed = node->Next; doomed != NULL;)
	{
		RouteNode* next = doomed->Next;
		delete doomed;
		doomed = next;
	}

	RouteNode* head = route->Head;
	node->Next = head;
	head->Prev = node;
	CurrentPlan->CurrentRoute->Tail = route->Tail;
	CurrentPlan->Dest = plan->Dest;
	RouteEnd = route->Tail->End;
	CurrentPlan->ArriveDistance = plan->ArriveDistance;
	CurrentPlan->EndClearance = plan->EndClearance;
	route->Tail = NULL;
	route->Head = NULL;

	for (int planIndex = 0; planIndex < PlanCount; planIndex++)
	{
		delete Plans[planIndex];
	}
	PlanCount = 0;

	float range = GetRange != NULL ? GetRange(Context) : 0.0f;
	float length = CurrentNode->GetLength(AvoidArray);
	float remaining = length - DistanceAlongNode;

	Point2D pos;
	float   heading;
	bool    moved;
	if (range > RPFOLLOW_EPSILON && remaining > RPFOLLOW_EPSILON)
	{
		if (remaining > range + RPFOLLOW_EPSILON)
		{
			FillPosAndHeading(pos, heading, range + DistanceAlongNode);
			moved = true;
		}
		else
		{
			pos = CurrentNode->End;
			moved = true;
		}
	}
	else
	{
		pos = Pos;
		moved = false;
	}

	CurrentNode->Start = Pos;
	DistanceAlongNode = 0.0f;
	if (CurrentPlan->CurrentRoute->Head != CurrentNode)
	{
		RouteNode* prev = CurrentNode->Prev;
		prev->Start = prev->End = Pos;
	}

	RPlan newPlan;
	newPlan.SetStart(pos, Radius, this, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);

	int nodeCount = 0;
	for (RouteNode* current = node->Next; current != NULL && nodeCount < RPFOLLOW_MAX_CONCATENATED_NODES;)
	{
		float maxLength = current->Length - CurrentNode->Length + length;
		newPlan.SetDest(current->End, 0.0f, RPFOLLOW_ARRIVE_DISTANCE, 0.0f, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE,
		                maxLength, false);

		bool32_t planning = true;
		for (int turn = 0; planning && turn < RPFOLLOW_MAX_PLAN_UPDATES; turn++)
		{
			switch (newPlan.State)
			{
			case RPLAN_STATE_PLANNING:
				newPlan.GameTurnUpdate(0);
				break;
			case RPLAN_STATE_FAILED:
				planning = false;
				break;
			case RPLAN_STATE_NO_ROUTE:
				planning = false;
				break;
			case RPLAN_STATE_SUCCEEDED:
				planning = false;
				break;
			}
		}

		RouteNode* next = current->Next;
		if (newPlan.State == RPLAN_STATE_SUCCEEDED)
		{
			RouteNode* tail = newPlan.CurrentRoute->Tail;
			if (tail->Avoid == current->Avoid || tail->Avoid == ROUTE_NODE_NO_AVOID)
			{
				newPlan.CurrentRoute->Tail->Side = current->Side;
				newPlan.CurrentRoute->Tail->Avoid = current->Avoid;
				newPlan.CurrentRoute->Tail->Next = next;
				if (next != NULL)
				{
					next->Prev = newPlan.CurrentRoute->Tail;
					current->Next = NULL;
				}
				else
				{
					CurrentPlan->CurrentRoute->Tail = newPlan.CurrentRoute->Tail;
				}

				RouteNode* oldHead = CurrentPlan->CurrentRoute->Head;
				CurrentPlan->CurrentRoute->Head = newPlan.CurrentRoute->Head;
				RouteEnd = CurrentPlan->CurrentRoute->Tail->End;
				if (moved)
				{
					RouteNode* first = new RouteNode(NULL, false, Pos, pos, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
					first->Length = 0.0f;
					first->Next = CurrentPlan->CurrentRoute->Head;
					CurrentPlan->CurrentRoute->Head = first;
					first->Next->Prev = first;
				}
				CurrentNode = CurrentPlan->CurrentRoute->Head;
				DistanceAlongNode = 0.0f;
				newPlan.CurrentRoute->Tail = NULL;
				newPlan.CurrentRoute->Head = NULL;
				while (oldHead != NULL)
				{
					RouteNode* following = oldHead->Next;
					delete oldHead;
					oldHead = following;
				}
			}
		}
		nodeCount++;
		current = next;
	}
}

void RPFollow::UpdateMotion()
{
	switch (FollowState)
	{
	case RPFOLLOW_STATE_UNPLACED:
		return;
	case RPFOLLOW_STATE_STOPPED:
		return;
	case RPFOLLOW_STATE_PLANNING:
		return;
	case RPFOLLOW_STATE_MOVING:
	case RPFOLLOW_STATE_REPLANNING: {
		RouteNode* node = CurrentNode;
		float      limit = MaxSpeed;
		if (node->Next == NULL)
		{
			limit = sqrt((node->GetLength(AvoidArray) - DistanceAlongNode) * RP_ACCELERATION * 2.0f);
			limit = max(RPFOLLOW_MIN_SPEED, limit);
		}
		if (Speed < MaxSpeed)
		{
			float speed = Speed + RP_TIME_STEP * RP_ACCELERATION;
			float maxSpeed = MaxSpeed;
			Speed = min(maxSpeed, speed);
		}
		if (limit < Speed)
		{
			Speed = limit;
		}
		MoveAlongRoute();
		break;
	}
	}
}

void RPFollow::MoveAlongRoute()
{
	StepDistance = RP_TIME_STEP * Speed;
	DistanceAlongNode += StepDistance;
	bool32_t moving = true;
	while (moving && CurrentNode != NULL)
	{
		float length = CurrentNode->GetLength(AvoidArray);
		if (DistanceAlongNode > length)
		{
			DistanceAlongNode -= length;
			if (PlanCount != 0 && JoinNodes[0] == CurrentNode && CurrentNode->Next != NULL)
			{
				delete Plans[0];
				PlanCount--;
				for (int i = 0; i < PlanCount; i++)
				{
					Plans[i] = Plans[i + 1];
					JoinNodes[i] = JoinNodes[i + 1];
				}
				if (PlanCount == 0)
				{
					FollowState = RPFOLLOW_STATE_MOVING;
					if (HasDest)
					{
						HasDest = false;
						SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
					}
				}
			}
			RouteNode* prev = CurrentNode->Prev;
			if (prev != NULL)
			{
				CurrentNode->Prev = NULL;
				CurrentPlan->CurrentRoute->Head = CurrentNode;
				CurrentNode->Arc = false;
				CurrentNode->Start = CurrentNode->End;
				delete prev;
			}
			CurrentNode = CurrentNode->Next;
		}
		else
		{
			moving = false;
		}
	}
	if (CurrentNode != NULL)
	{
		FillPosAndHeading(Pos, Heading, DistanceAlongNode);
		return;
	}
	delete CurrentPlan;
	CurrentPlan = NULL;
	Pos = RouteEnd;
	switch (FollowState)
	{
	case RPFOLLOW_STATE_MOVING:
		Empty();
		FollowState = RPFOLLOW_STATE_STOPPED;
		break;
	case RPFOLLOW_STATE_REPLANNING:
		FollowState = RPFOLLOW_STATE_PLANNING;
		break;
	}
}

void RPFollow::FillPosAndHeading(Point2D& pos, float& heading, float distance)
{
	if (CurrentNode->Arc == true)
	{
		if (CurrentNode->Prev == NULL || CurrentNode->Prev->Avoid == ROUTE_NODE_NO_AVOID)
		{
			CurrentNode->Arc = false;
		}
	}
	float length = CurrentNode->GetLength(AvoidArray);
	if (CurrentNode->Arc == true)
	{
		RouteNode* prev = CurrentNode->Prev;
		RPAvoid*   avoid = &AvoidArray[prev->Avoid];
		Point2D    start = CurrentNode->Start;
		Point2D    end = CurrentNode->End;
		Point2D    startOffset = start - avoid->Centre;
		Point2D    endOffset = end - avoid->Centre;
		float      startAngle = atan2(startOffset.y, startOffset.x);
		float      endAngle = atan2(endOffset.y, endOffset.x);
		float      angleDiff;
		if (prev->Side == ROUTE_NODE_SIDE_ANTICLOCKWISE)
		{
			if (endAngle < startAngle)
			{
				endAngle += PI * 2.0f;
			}
			angleDiff = endAngle - startAngle;
		}
		else
		{
			if (startAngle < endAngle)
			{
				startAngle += PI * 2.0f;
			}
			angleDiff = endAngle - startAngle;
		}
		float angle = startAngle + angleDiff * (distance / length);
		if (prev->Side == ROUTE_NODE_SIDE_ANTICLOCKWISE)
		{
			heading = angle + PI;
		}
		else
		{
			heading = angle;
		}
		pos.x = cos(angle) * avoid->Radius + avoid->Centre.x;
		pos.y = sin(angle) * avoid->Radius + avoid->Centre.y;
	}
	else if (length > RPFOLLOW_ARRIVE_DISTANCE)
	{
		Point2D direction = CurrentNode->End - CurrentNode->Start;
		pos = CurrentNode->Start + direction * (distance / length);
		heading = direction.GetHeading();
	}
}

void RPFollow::CheckIfAnyRoutesAreBlockedByObject(RPAvoid* avoid)
{
	if (FollowState == RPFOLLOW_STATE_STOPPED)
	{
		return;
	}
	if (avoid->Centre.x + avoid->Radius < MinSquareX * CellSize)
	{
		return;
	}
	if (avoid->Centre.x - avoid->Radius > (MaxSquareX + 1) * CellSize)
	{
		return;
	}
	if (avoid->Centre.y + avoid->Radius < MinSquareZ * CellSize)
	{
		return;
	}
	if (avoid->Centre.y - avoid->Radius > (MaxSquareZ + 1) * CellSize)
	{
		return;
	}

	switch (FollowState)
	{
	case RPFOLLOW_STATE_UNPLACED:
		return;
	case RPFOLLOW_STATE_REPLANNING:
		if (CurrentPlan->CurrentRoute->TruncateIfBlockedByObject(avoid, CurrentNode, this, Pos))
		{
			RouteEnd = CurrentPlan->CurrentRoute->Tail->End;
			FollowState = (RPFOLLOW_STATE)(FollowState - 1);
			RemoveSpecials();
			HasDest = false;
			SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
			return;
		}
	default: {
		bool clear = true;
		for (int i = 0; i < PlanCount && clear; i++)
		{
			for (Route* route = Plans[i]->Routes; clear && route != NULL; route = route->NextRoute)
			{
				if (route->TruncateIfBlockedByObject(avoid, route->Head, this, Pos))
				{
					clear = false;
				}
			}
		}
		if (!clear)
		{
			FollowState = (RPFOLLOW_STATE)(FollowState - 1);
			RemoveSpecials();
			HasDest = false;
			SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
		}
		return;
	}
	case RPFOLLOW_STATE_MOVING:
		if (CurrentPlan->CurrentRoute->TruncateIfBlockedByObject(avoid, CurrentNode, this, Pos))
		{
			RouteEnd = CurrentPlan->CurrentRoute->Tail->End;
			SetDest(Dest, EndClearance, ArriveDistance, Radius, MaxLength);
		}
		return;
	}
}
