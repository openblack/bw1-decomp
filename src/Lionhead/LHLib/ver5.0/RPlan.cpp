#include <Lionhead/LHLib/ver5.0/RPlan.h>

void(__cdecl* RPlan::BlockingObjectsFunction)(int owner_id, int object_id);

#include <Black/LandscapeConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include <Lionhead/LHLib/ver5.0/RPAvoid.h>
#include <Lionhead/LHLib/ver5.0/RPHolder.h>
#include <Lionhead/LHLib/ver5.0/Route.h>

#define RPLAN_POS_EPSILON          0.001f
#define RPLAN_MAX_IMPROVE_DEPTH    2
#define RPLAN_MAX_IMPROVE_TURNS    16
#define RPLAN_MAX_IMPROVE_ATTEMPTS 4

int RPlan::BlockingObjectsOwnerID;

RPlan::RPlan()
{
	Routes = NULL;
	NumRoutes = 0;
	State = RPLAN_STATE_NONE;
	OldRoute = NULL;
	SpareRoute = NULL;
	VisitBlocks = NULL;
	NumVisits = 0;
}

RPlan::~RPlan()
{
	FreeRoutes();
}

void RPlan::FreeRoutes()
{
	while (Routes != NULL)
	{
		Route* next = Routes->NextRoute;
		delete Routes;
		Routes = next;
	}
	if (OldRoute != NULL)
	{
		delete OldRoute;
		OldRoute = NULL;
	}
	if (SpareRoute != NULL)
	{
		delete SpareRoute;
		SpareRoute = NULL;
	}
	NumRoutes = 0;
	State = RPLAN_STATE_NONE;
	if (VisitBlocks != NULL)
	{
		delete VisitBlocks;
		VisitBlocks = NULL;
	}
	NumVisits = 0;
}

void RPlan::SetStart(const Point2D& start, float radius, RPHolder* holder, int start_avoid, int second_avoid,
                     int start_side)
{
	FreeRoutes();
	Holder = holder;
	StartAvoid = start_avoid;
	SecondAvoid = second_avoid;
	StartSide = start_side;
	Radius = radius;
	Start = Dest = start;
	State = RPLAN_STATE_STARTED;
}

void RPlan::SetDest(const Point2D& dest, float end_clearance, float arrive_distance, float start_length, int dest_avoid,
                    int dest_side, float max_length, bool32_t ignore_end_objects)
{
	BlockedLength = 0.0f;
	StartLength = start_length;
	if (ignore_end_objects)
	{
		Holder->IgnoredDest = &Dest;
		Holder->IgnoredStart = &Start;
	}
	FreeRoutes();
	Routes = new Route();
	CurrentRoute = Routes;
	Dest = dest;
	EndClearance = end_clearance;
	ArriveDistance = arrive_distance;
	DestAvoid = dest_avoid;
	DestSide = dest_side;
	MaxLength = max_length;
	State = RPLAN_STATE_PLANNING;
	if (DestAvoid == ROUTE_NODE_NO_AVOID)
	{
		CheckLine(Start, Dest);
		RPAvoid* avoid = Holder->AvoidArray;
		for (int i = 0; i < Holder->AvoidCount; avoid++, i++)
		{
			if (avoid->PointIsTotallyInside(Dest, ArriveDistance))
			{
				State = RPLAN_STATE_FAILED;
				return;
			}
		}
	}
	else
	{
		CheckLine(Start, Holder->AvoidArray[DestAvoid].Centre);
	}

	Point2D target;
	if (DestAvoid == ROUTE_NODE_NO_AVOID)
	{
		target = Dest;
	}
	else if (!Holder->GetSidePointOfStartObject(DestAvoid, Start, target,
	                                            DestSide == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE
	                                                                                  : ROUTE_NODE_SIDE_CLOCKWISE))
	{
		State = RPLAN_STATE_NO_ROUTE;
		return;
	}

	Point2D hit;
	int     hitSide;
	int     object = Holder->GetFirstObject(Start, target, ROUTE_NODE_NO_AVOID, hit, hitSide, EndClearance);
	if (object == ROUTE_NODE_NO_AVOID)
	{
		if (DestAvoid != ROUTE_NODE_NO_AVOID)
		{
			RPAvoid* destAvoid = &Holder->AvoidArray[DestAvoid];
			if ((Start - DestArcEnd) * (destAvoid->Centre - DestArcEnd) / destAvoid->Radius < RPLAN_POS_EPSILON)
			{
				State = RPLAN_STATE_NO_ROUTE;
				return;
			}
		}
		State = RPLAN_STATE_SUCCEEDED;
		Routes->Head = Routes->Tail =
			new RouteNode(NULL, false, Start, target, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
		Routes->Tail->Length = StartLength + Start.GetRange(target);
		BestLength = Routes->Tail->Length + Routes->Tail->End.GetRange(target);
		return;
	}
	if (BlockingObjectsFunction != NULL && Holder->AvoidArray[object].ObjectId != ROUTE_NODE_NO_AVOID)
	{
		BlockingObjectsFunction(BlockingObjectsOwnerID, Holder->AvoidArray[object].ObjectId);
	}
	if (StartAvoid == object || SecondAvoid == object)
	{
		if (SecondAvoid == ROUTE_NODE_NO_AVOID)
		{
			Routes->Head = Routes->Tail = new RouteNode(
				NULL, false, Start, Start, StartAvoid,
				StartSide == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE : ROUTE_NODE_SIDE_CLOCKWISE);
			Routes->Tail->Length = StartLength;
			Routes->Tail->OnStartObject = true;
		}
		else
		{
			Routes->Head = Routes->Tail = new RouteNode(
				NULL, false, Start, Start, StartAvoid,
				StartSide == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE : ROUTE_NODE_SIDE_CLOCKWISE);
			Routes->Tail->Length = StartLength;
			Routes->Tail->OnStartObject = true;
			Route* route = new Route();
			route->NextRoute = Routes;
			Routes = route;
			Routes->Head = Routes->Tail = new RouteNode(NULL, false, Start, Start, SecondAvoid, StartSide);
			Routes->Tail->Length = StartLength;
			Routes->Tail->OnStartObject = true;
		}
		BestLength = Routes->Tail->Length + Routes->Tail->End.GetRange(target);
		return;
	}
	float range = Start.GetRange(hit);
	Routes->Head = Routes->Tail =
		new RouteNode(NULL, false, Start, hit, object,
	                  hitSide == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE : ROUTE_NODE_SIDE_CLOCKWISE);
	Routes->Tail->Length = StartLength + range;
	float remaining = Routes->Tail->End.GetRange(target);
	if (remaining < ArriveDistance)
	{
		State = RPLAN_STATE_SUCCEEDED;
	}
	else
	{
		Route* route = new Route();
		route->NextRoute = Routes;
		Routes = route;
		Routes->Head = Routes->Tail = new RouteNode(NULL, false, Start, hit, object, hitSide);
		Routes->Tail->Length = StartLength + range;
	}
	BestLength = Routes->Tail->Length + remaining;
}

void RPlan::CheckCurrentRouteForCompletion()
{
	if (CurrentRoute != NULL && CurrentRoute->Tail->End.GetRange(Dest) < ArriveDistance)
	{
		SucceedAndFree();
	}
}

void RPlan::SucceedAndFree()
{
	for (Route* route = Routes; route != NULL;)
	{
		Route* next = route->NextRoute;
		if (route != CurrentRoute)
		{
			delete route;
		}
		route = next;
	}
	NumRoutes = 1;
	Routes = CurrentRoute;
	CurrentRoute->NextRoute = NULL;
	BestLength = CurrentRoute->Tail->Length;
	State = RPLAN_STATE_SUCCEEDED;
	if (VisitBlocks != NULL)
	{
		delete VisitBlocks;
		VisitBlocks = NULL;
	}
	NumVisits = 0;
}

bool32_t RPlan::CheckPos(const Point2D& pos, float length, float max_length)
{
	if (length > max_length)
	{
		return true;
	}
	float minX = pos.x - RPLAN_POS_EPSILON;
	float maxX = pos.x + RPLAN_POS_EPSILON;
	float minY = pos.y - RPLAN_POS_EPSILON;
	float maxY = pos.y + RPLAN_POS_EPSILON;
	for (VisitBlock* block = VisitBlocks; block != NULL; block = block->Next)
	{
		RoutePosItem* item = block->Items;
		for (int i = 0; i < block->NumItems; item++, i++)
		{
			if (item->Pos.x > minX && item->Pos.x < maxX && item->Pos.y > minY && item->Pos.y < maxY)
			{
				if (BlockingObjectsFunction != NULL && length > BlockedLength)
				{
					BlockedLength = length;
				}
				return true;
			}
		}
	}
	AddVisit(pos, length);
	NumVisits++;
	return false;
}

void RPlan::GameTurnUpdate(int depth)
{
	Point2D  sidePoint;
	Point2D  target;
	bool32_t direct;
	Point2D  from;
	if (State != RPLAN_STATE_PLANNING)
	{
		return;
	}
	Route* route = Routes;
	CurrentRoute = route;
	BestLength = route->Tail->Length + route->Tail->End.GetRange(Dest);
	route = route->NextRoute;
	NumRoutes = 1;
	while (route != NULL)
	{
		NumRoutes++;
		float length = route->Tail->Length + route->Tail->End.GetRange(Dest);
		if (length < BestLength - RPLAN_POS_EPSILON)
		{
			BestLength = length;
			CurrentRoute = route;
		}
		route = route->NextRoute;
	}

	RouteNode* tail = CurrentRoute->Tail;
	if (tail->Avoid == ROUTE_NODE_NO_AVOID)
	{
		RemoveRoute(CurrentRoute, true);
		return;
	}
	RPAvoid* avoid = &Holder->AvoidArray[tail->Avoid];
	if (!avoid->Active)
	{
		RemoveRoute(CurrentRoute, true);
		return;
	}
	if (DestAvoid == ROUTE_NODE_NO_AVOID)
	{
		target = Dest;
		direct = Holder->GetSidePointOfStartObject(tail->Avoid, Dest, sidePoint, tail->Side);
	}
	else
	{
		if (tail->Avoid == DestAvoid)
		{
			RemoveRoute(CurrentRoute, true);
			return;
		}
		if (tail->Side != DestSide)
		{
			RPAvoid* destAvoid = &Holder->AvoidArray[DestAvoid];
			float    reach = destAvoid->Radius + avoid->Radius;
			float    dx = avoid->Centre.x - destAvoid->Centre.x;
			float    dy = avoid->Centre.y - destAvoid->Centre.y;
			if (dx * dx + dy * dy < reach * reach + RPLAN_POS_EPSILON)
			{
				RemoveRoute(CurrentRoute, true);
				return;
			}
		}
		if (Holder->WorkOutSidePoints(tail->Avoid, tail->Side, sidePoint, DestAvoid, DestSide, target))
		{
			if ((avoid->Centre - tail->End) * (target - tail->End) / avoid->Radius < RPLAN_POS_EPSILON)
			{
				RemoveRoute(CurrentRoute, true);
				return;
			}
			direct = true;
		}
		else
		{
			RemoveRoute(CurrentRoute, true);
			return;
		}
	}

	int blockingObject;
	if (Holder->GetNearestPossiblePointRoundObjectToPoint(tail->Avoid, tail->Side, sidePoint, tail->End,
	                                                      blockingObject))
	{
		if (BlockingObjectsFunction != NULL && Holder->AvoidArray[blockingObject].ObjectId != ROUTE_NODE_NO_AVOID)
		{
			BlockingObjectsFunction(BlockingObjectsOwnerID, Holder->AvoidArray[blockingObject].ObjectId);
		}
		tail->Next = new RouteNode(tail, true, tail->End, sidePoint, blockingObject, tail->Side);
		tail->Next->Length = tail->Length + tail->Next->GetArcLength(Holder->AvoidArray);
		CurrentRoute->Tail = tail->Next;
		if (CheckPos(tail->Next->End, tail->Next->Length, MaxLength))
		{
			RemoveRoute(CurrentRoute, true);
			return;
		}
		CurrentRoute->Improved = tail->OnStartObject;
		ImproveRoute(CurrentRoute, depth);
		CheckCurrentRouteForCompletion();
		return;
	}

	Point2D hit;
	int     hitSide;
	int     object = Holder->GetFirstObject(sidePoint, target, tail->Avoid, hit, hitSide, EndClearance);
	if (object == RPHOLDER_BLOCKED)
	{
		RemoveRoute(CurrentRoute, true);
		return;
	}
	int     blockSide = hitSide;
	Point2D blockPoint = hit;
	if (object == ROUTE_NODE_NO_AVOID)
	{
		if (DestAvoid != ROUTE_NODE_NO_AVOID)
		{
			RPAvoid* destAvoid = &Holder->AvoidArray[DestAvoid];
			if ((sidePoint - DestArcEnd) * (destAvoid->Centre - DestArcEnd) / destAvoid->Radius < RPLAN_POS_EPSILON)
			{
				RemoveRoute(CurrentRoute, true);
				return;
			}
			Point2D approach = DestArcEnd;
			int     destBlockingObject;
			if (Holder->GetNearestPossiblePointRoundObjectToPoint(DestAvoid, DestSide, approach, target,
			                                                      destBlockingObject))
			{
				RemoveRoute(CurrentRoute, true);
				return;
			}
		}
		CurrentRoute->Improved = tail->OnStartObject;
		tail->Next = new RouteNode(tail, true, tail->End, sidePoint, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
		tail->Next->Length = tail->Length + tail->Next->GetArcLength(Holder->AvoidArray);
		if (direct)
		{
			RouteNode* arc = tail->Next;
			arc->Next = new RouteNode(arc, false, sidePoint, target, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
			arc->Next->Length = arc->Length + arc->Next->End.GetRange(arc->Next->Start);
			CurrentRoute->Tail = arc->Next;
		}
		else
		{
			CurrentRoute->Tail = tail->Next;
		}
		ImproveRoute(CurrentRoute, depth);
		SucceedAndFree();
		return;
	}

	if (BlockingObjectsFunction != NULL && Holder->AvoidArray[object].ObjectId != ROUTE_NODE_NO_AVOID)
	{
		BlockingObjectsFunction(BlockingObjectsOwnerID, Holder->AvoidArray[object].ObjectId);
	}
	RPAvoid* objectAvoid = &Holder->AvoidArray[object];
	float    reach = objectAvoid->Radius + avoid->Radius;
	float    dx = avoid->Centre.x - objectAvoid->Centre.x;
	float    dy = avoid->Centre.y - objectAvoid->Centre.y;
	if (dx * dx + dy * dy < reach * reach)
	{
		CurrentRoute->Improved = tail->OnStartObject;
		tail->Next = new RouteNode(tail, true, tail->End, sidePoint, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
		tail->Next->Length = tail->Length + tail->Next->GetArcLength(Holder->AvoidArray);
		int        side = tail->Side;
		RouteNode* arc = tail->Next;
		arc->Next = new RouteNode(arc, false, sidePoint, hit, object, side);
		arc->Next->Length = arc->Length + arc->Next->End.GetRange(arc->Next->Start);
		CurrentRoute->Tail = arc->Next;
		ImproveRoute(CurrentRoute, depth);
		CheckCurrentRouteForCompletion();
		return;
	}

	if (tail->Prev != NULL && tail->Prev->Avoid != ROUTE_NODE_NO_AVOID)
	{
		from = tail->End;
	}
	else
	{
		from = tail->End;
	}
	if (Holder->GetNearestPossiblePointRoundObjectToPoint(tail->Avoid, tail->Side, from, tail->End, blockingObject))
	{
		int blockingAvoid = blockingObject;
		if (BlockingObjectsFunction != NULL && Holder->AvoidArray[blockingAvoid].ObjectId != ROUTE_NODE_NO_AVOID)
		{
			BlockingObjectsFunction(BlockingObjectsOwnerID, Holder->AvoidArray[blockingAvoid].ObjectId);
		}
		Route* newRoute = new Route(CurrentRoute);
		newRoute->NextRoute = Routes;
		Routes = newRoute;
		newRoute->Improved = tail->OnStartObject;
		RouteNode* node = new RouteNode(Routes->Tail, true, tail->End, from, blockingAvoid, tail->Side);
		node->Length = Routes->Tail->Length + node->GetArcLength(Holder->AvoidArray);
		Routes->Tail->Next = node;
		Routes->Tail = node;
		if (CheckPos(node->End, node->Length, MaxLength))
		{
			RemoveRoute(Routes, false);
		}
		else
		{
			ImproveRoute(Routes, depth);
		}
	}
	if (CurrentRoute == NULL)
	{
		return;
	}
	CurrentRoute->Improved = tail->OnStartObject;
	tail->Next = new RouteNode(tail, true, tail->End, sidePoint, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE);
	tail->Next->Length = tail->Length + tail->Next->GetArcLength(Holder->AvoidArray);
	CurrentRoute->Tail = tail->Next;
	RouteNode* arc = tail->Next;
	float      range = sidePoint.GetRange(blockPoint);
	arc->Next = new RouteNode(arc, false, sidePoint, blockPoint, object,
	                          blockSide == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE
	                                                                 : ROUTE_NODE_SIDE_CLOCKWISE);
	arc->Next->Length = arc->Length + range;
	CurrentRoute->Tail = arc->Next;
	ImproveRoute(CurrentRoute, depth);
	Route* otherSide = new Route(CurrentRoute);
	otherSide->NextRoute = Routes;
	otherSide->Tail->Side =
		otherSide->Tail->Side == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE : ROUTE_NODE_SIDE_CLOCKWISE;
	Routes = otherSide;
	CheckCurrentRouteForCompletion();
}

bool32_t RPlan::PathIsClear(const Point2D& from, const Point2D& to)
{
	Point2D  dir = to - from;
	float    length = dir.MakeUnit();
	Point2D  perp(-dir.y, dir.x);
	RPAvoid* avoid = Holder->AvoidArray;
	for (int i = 0; i < Holder->AvoidCount; avoid++, i++)
	{
		Point2D offset = avoid->Centre - from;
		float   side = perp.DotProduct(&offset);
		if (side > RPLAN_POS_EPSILON - avoid->Radius && side < avoid->Radius - RPLAN_POS_EPSILON)
		{
			float along = offset * dir;
			if (along > 0.0f && length + avoid->Radius > along)
			{
				if (along < length)
				{
					return false;
				}
				float b = along * -2.0f;
				float disc = b * b - 4.0f * (offset.GetSizeSq() - avoid->Radius * avoid->Radius);
				if (disc >= 0.0f)
				{
					float t = ((float)sqrt(disc) + b) * -0.5f;
					if (t > -RPLAN_POS_EPSILON && t < length - RPLAN_POS_EPSILON)
					{
						return false;
					}
				}
			}
		}
	}
	return true;
}

void RPlan::RemoveRoute(Route* route, bool32_t current)
{
	if (CurrentRoute == route)
	{
		CurrentRoute = NULL;
	}
	if (route == Routes)
	{
		Route* next = Routes->NextRoute;
		delete Routes;
		Routes = next;
		if (Routes == NULL)
		{
			State = RPLAN_STATE_NO_ROUTE;
			if (VisitBlocks != NULL)
			{
				delete VisitBlocks;
				VisitBlocks = NULL;
			}
			NumVisits = 0;
		}
	}
	else
	{
		for (Route* prev = Routes; prev->NextRoute != NULL; prev = prev->NextRoute)
		{
			if (prev->NextRoute == route)
			{
				Route* next = prev->NextRoute->NextRoute;
				delete prev->NextRoute;
				prev->NextRoute = next;
				return;
			}
		}
	}
}

void RPlan::CheckLine(const Point2D& from, const Point2D& to) {}

bool32_t DirectionIsBetween(const Point2D& from, const Point2D& to, const Point2D& dir, int side)
{
	Point2D perp(-to.y, to.x);
	float   fromTo = from.Cross(to);
	float   fromDir = from.Cross(dir);
	if (side == ROUTE_NODE_SIDE_CLOCKWISE)
	{
		if (perp.DotProduct(&dir) < 0.0f ? fromTo <= 0.0f && fromDir >= 0.0f : fromTo <= 0.0f || fromDir >= 0.0f)
		{
			return true;
		}
	}
	else if (perp.DotProduct(&dir) > 0.0f ? fromTo >= 0.0f && fromDir <= 0.0f : fromTo >= 0.0f || fromDir <= 0.0f)
	{
		return true;
	}
	return false;
}

void RPlan::ImproveRoute(Route* route, int depth)
{
	if (route->Improved)
	{
		return;
	}
	if (depth > RPLAN_MAX_IMPROVE_DEPTH)
	{
		route->Improved = true;
		return;
	}
	RPlan      plan;
	RouteNode* end = route->Tail->Arc == true ? route->Tail : route->Tail->Prev;
	if (end == NULL)
	{
		route->Improved = true;
		return;
	}
	if (end->Arc != true)
	{
		route->Improved = true;
		return;
	}
	RouteNode* start = end->Prev;
	if (start == NULL)
	{
		route->Improved = true;
		return;
	}
	while (start != route->Head && start->Arc != true)
	{
		start = start->Prev;
		if (start == NULL)
		{
			route->Improved = true;
			return;
		}
	}
	if (start->Arc != true && start->Side == ROUTE_NODE_SIDE_NONE)
	{
		route->Improved = true;
		return;
	}
	int     endAvoid = end->Prev->Avoid;
	Point2D origin(0.0f, 0.0f);
	int     attempts = 0;
	while (start != NULL)
	{
		if (end->Arc == true)
		{
			plan.SetStart(end->End, Radius, Holder, endAvoid, end->Avoid, end->Prev->Side);
		}
		else
		{
			plan.SetStart(end->End, Radius, Holder, end->Avoid, ROUTE_NODE_NO_AVOID, end->Prev->Prev->Side);
		}
		if (start->Arc == false)
		{
			float maxLength = end->Length;
			plan.SetDest(start->Start, 0.0f, 0.0f, 0.0f, ROUTE_NODE_NO_AVOID, ROUTE_NODE_SIDE_NONE, maxLength, false);
		}
		else
		{
			RouteNode* prev = start->Prev;
			if (prev == NULL)
			{
				route->Improved = true;
				return;
			}
			float maxLength = end->Length - prev->Length;
			int   destAvoid = prev->Avoid;
			if (destAvoid == ROUTE_NODE_NO_AVOID)
			{
				route->Improved = true;
				return;
			}
			int destSide =
				prev->Side == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE : ROUTE_NODE_SIDE_CLOCKWISE;
			plan.DestArcStart = prev->Start;
			plan.DestArcEnd = start->Prev->End;
			plan.SetDest(origin, 0.0f, 0.0f, 0.0f, destAvoid, destSide, maxLength, false);
		}
		bool32_t planning = true;
		for (int turn = 0; planning && turn < RPLAN_MAX_IMPROVE_TURNS; turn++)
		{
			switch (plan.State)
			{
			case RPLAN_STATE_PLANNING:
				plan.GameTurnUpdate(depth + 1);
				break;
			case RPLAN_STATE_FAILED:
				planning = false;
				break;
			case RPLAN_STATE_NO_ROUTE:
			case RPLAN_STATE_SUCCEEDED:
				planning = false;
				break;
			}
		}
		RouteNode* prevStart = start->Prev;
		if (plan.State != RPLAN_STATE_SUCCEEDED)
		{
			attempts++;
			start = attempts >= RPLAN_MAX_IMPROVE_ATTEMPTS ? NULL : prevStart;
			if (start != NULL && start->Arc == false && start != route->Head)
			{
				start = start->Prev;
				if (start == NULL || start->Arc != true)
				{
					route->Improved = true;
					return;
				}
			}
			continue;
		}

		int        tailSide = route->Tail->Side;
		int        tailAvoid = route->Tail->Avoid;
		Point2D    tailEnd = route->Tail->End;
		RouteNode* node = plan.CurrentRoute->Tail;
		RouteNode* doomed;
		RouteNode* last;
		if (start->Arc == false)
		{
			doomed = start;
			last = NULL;
			if (node->Arc == true)
			{
				last = new RouteNode(NULL, false, node->End, node->End, node->Prev->Avoid,
				                     node->Prev->Side == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE
				                                                                   : ROUTE_NODE_SIDE_CLOCKWISE);
				route->Head = last;
				last->Length = StartLength + last->Start.GetRange(last->End);
			}
		}
		else if (node->Arc == false)
		{
			doomed = start->Next;
			start->End = node->End;
			start->Avoid = ROUTE_NODE_NO_AVOID;
			start->Side = ROUTE_NODE_SIDE_NONE;
			start->SetUpLength(Holder->AvoidArray);
			start->Next = NULL;
			last = start;
		}
		else
		{
			doomed = start->Next;
			start->End = node->End;
			start->Avoid = node->Prev->Avoid;
			start->Side = node->Prev->Side == ROUTE_NODE_SIDE_CLOCKWISE ? ROUTE_NODE_SIDE_ANTICLOCKWISE
			                                                            : ROUTE_NODE_SIDE_CLOCKWISE;
			start->SetUpLength(Holder->AvoidArray);
			start->Next = NULL;
			last = start;
		}
		int side;
		int avoid;
		while (node != NULL)
		{
			if (node->Prev != NULL)
			{
				if (node->Arc == false)
				{
					switch (node->Prev->Prev->Side)
					{
					case ROUTE_NODE_SIDE_NONE:
						side = ROUTE_NODE_SIDE_NONE;
						break;
					case ROUTE_NODE_SIDE_CLOCKWISE:
						side = ROUTE_NODE_SIDE_ANTICLOCKWISE;
						break;
					case ROUTE_NODE_SIDE_ANTICLOCKWISE:
						side = ROUTE_NODE_SIDE_CLOCKWISE;
						break;
					}
					avoid = node->Prev->Prev->Avoid;
				}
				else if (node->Prev->Arc == true)
				{
					switch (node->Prev->Prev->Side)
					{
					case ROUTE_NODE_SIDE_NONE:
						side = ROUTE_NODE_SIDE_NONE;
						break;
					case ROUTE_NODE_SIDE_CLOCKWISE:
						side = ROUTE_NODE_SIDE_ANTICLOCKWISE;
						break;
					case ROUTE_NODE_SIDE_ANTICLOCKWISE:
						side = ROUTE_NODE_SIDE_CLOCKWISE;
						break;
					}
					avoid = node->Prev->Prev->Avoid;
				}
				else
				{
					side = ROUTE_NODE_SIDE_NONE;
					avoid = ROUTE_NODE_NO_AVOID;
				}
				RouteNode* copy = new RouteNode(last, node->Arc, node->End, node->Start, avoid, side);
				if (last != NULL)
				{
					last->Next = copy;
					last = copy;
					copy->SetUpLength(Holder->AvoidArray);
				}
				else
				{
					route->Head = copy;
					last = copy;
					copy->Length = StartLength + copy->Start.GetRange(copy->End);
				}
				node = node->Prev;
			}
			else
			{
				if (node->End.x == tailEnd.x && node->End.y == tailEnd.y)
				{
					if (last != NULL)
					{
						last->Avoid = tailAvoid;
						last->Side = (ROUTE_NODE_SIDE)tailSide;
					}
					else
					{
						RouteNode* copy = new RouteNode(last, node->Arc, node->End, tailEnd, tailAvoid, tailSide);
						route->Head = copy;
						last = copy;
						copy->SetUpLength(Holder->AvoidArray);
					}
				}
				else
				{
					RouteNode* copy = new RouteNode(last, node->Arc, node->End, tailEnd, tailAvoid, tailSide);
					copy->SetUpLength(Holder->AvoidArray);
					if (last != NULL)
					{
						last->Next = copy;
					}
					else
					{
						route->Head = copy;
					}
					last = copy;
				}
				node = NULL;
			}
		}
		route->Tail = last;
		BestLength = last->Length + last->End.GetRange(Dest);
		while (doomed != NULL)
		{
			RouteNode* node = doomed;
			doomed = doomed->Next;
			delete node;
		}
		start = NULL;
	}
	route->Improved = true;
}

void RPlan::AddVisit(const Point2D& pos, float length)
{
	if (VisitBlocks != NULL)
	{
		if (VisitBlocks->NumItems == RPLAN_VISITS_PER_BLOCK)
		{
			VisitBlocks = new VisitBlock(VisitBlocks);
		}
	}
	else
	{
		VisitBlocks = new VisitBlock(NULL);
	}
	VisitBlocks->Items[VisitBlocks->NumItems++].Init(pos, length);
}
