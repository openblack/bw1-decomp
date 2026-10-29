#include <Lionhead/LHLib/ver5.0/RPFollow.h>

#include <Lionhead/LHLib/ver5.0/RPlan.h>
#include <Lionhead/LHLib/ver5.0/Route.h>

static const float RP_SQUARE_SIZE = 10.0f;

void RPFollow::RemoveSpecials()
{
	for (int i = 0; i < PlanCount; i++)
	{
		delete Plans[i];
	}
	PlanCount = 0;
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
	CurrentPlan->field_0x40 = plan->field_0x40;
	CurrentPlan->field_0x3c = plan->field_0x3c;
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
	for (RouteNode* current = node->Next; current != NULL && nodeCount < RPFOLLOW_MAX_CONCATENATED_NODES; nodeCount++)
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
		current = next;
	}
}

void RPFollow::CheckIfAnyRoutesAreBlockedByObject(RPAvoid* avoid)
{
	if (FollowState == RPFOLLOW_STATE_STOPPED)
	{
		return;
	}
	if (avoid->Centre.x + avoid->Radius < MinSquareX * RP_SQUARE_SIZE)
	{
		return;
	}
	if (avoid->Centre.x - avoid->Radius > (MaxSquareX + 1) * RP_SQUARE_SIZE)
	{
		return;
	}
	if (avoid->Centre.y + avoid->Radius < MinSquareZ * RP_SQUARE_SIZE)
	{
		return;
	}
	if (avoid->Centre.y - avoid->Radius > (MaxSquareZ + 1) * RP_SQUARE_SIZE)
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
			field_0x64058 = 0;
			SetDest(Dest, field_0x6407c, field_0x64080, Radius, field_0x64084);
			return;
		}
	default: {
		bool clear = true;
		for (int i = 0; clear && i < PlanCount; i++)
		{
			for (Route* route = Plans[i]->Routes; route != NULL && clear; route = route->NextRoute)
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
			field_0x64058 = 0;
			SetDest(Dest, field_0x6407c, field_0x64080, Radius, field_0x64084);
		}
		return;
	}
	case RPFOLLOW_STATE_MOVING:
		if (CurrentPlan->CurrentRoute->TruncateIfBlockedByObject(avoid, CurrentNode, this, Pos))
		{
			RouteEnd = CurrentPlan->CurrentRoute->Tail->End;
			SetDest(Dest, field_0x6407c, field_0x64080, Radius, field_0x64084);
		}
		return;
	}
}
