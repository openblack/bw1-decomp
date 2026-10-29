#include <Lionhead/LHLib/ver5.0/RPAvoid.h>

#include <Black/LandscapeConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include <Lionhead/LHLib/ver5.0/RPHolder.h>
#include <Lionhead/LHLib/ver5.0/Route.h>

#include <math.h>   /* For atan2 */
#include <stddef.h> /* For NULL */

void RPAvoid::Init(int object_id, const Point2D& centre, float radius)
{
	ObjectId = object_id;
	Centre = centre;
	Radius = radius;
	Active = true;
}

bool RPAvoid::PointIsInside(const Point2D& point)
{
	float dx = point.x - Centre.x;
	float dy = point.y - Centre.y;
	float reach = Radius - RPAVOID_MARGIN;
	return dx * dx + dy * dy < reach * reach;
}

bool RPAvoid::PointIsTotallyInside(const Point2D& point, float radius)
{
	float dx = point.x - Centre.x;
	float dy = point.y - Centre.y;
	float reach = Radius - radius - RPAVOID_MARGIN;
	if (reach < 0.0f)
	{
		return false;
	}
	return dx * dx + dy * dy < reach * reach;
}

RouteNode::RouteNode(RouteNode* node)
{
	*this = *node;
	Next = NULL;
	Prev = NULL;
	OnStartObject = false;
}

RouteNode::RouteNode(RouteNode* prev, bool32_t arc, const Point2D& start, const Point2D& end, int avoid, int side)
{
	Arc = arc;
	Start = start;
	End = end;
	Avoid = avoid;
	Side = (ROUTE_NODE_SIDE)side;
	Prev = prev;
	Next = NULL;
	OnStartObject = false;
}

float RouteNode::GetLength(RPAvoid* avoid)
{
	if (Arc == true)
	{
		return GetArcLength(avoid);
	}
	return Start.GetRange(End);
}

float RouteNode::GetArcLength(RPAvoid* avoid)
{
	if (Prev == NULL)
	{
		return 0.0f;
	}
	if (Prev->Avoid == ROUTE_NODE_NO_AVOID)
	{
		return 0.0f;
	}
	RPAvoid* object = &avoid[Prev->Avoid];
	Point2D  from;
	Point2D  to;
	if (Arc == true)
	{
		from = Start;
		to = End;
	}
	else
	{
		from = Prev->End;
		to = Start;
	}
	Point2D fromOffset = from - object->Centre;
	Point2D toOffset = to - object->Centre;
	float   fromAngle = atan2(fromOffset.y, fromOffset.x);
	float   toAngle = atan2(toOffset.y, toOffset.x);
	if (Prev->Side == ROUTE_NODE_SIDE_ANTICLOCKWISE)
	{
		if (toAngle < fromAngle)
		{
			toAngle += 2 * PI;
		}
		return object->Radius * (toAngle - fromAngle);
	}
	if (fromAngle < toAngle)
	{
		fromAngle += 2 * PI;
	}
	return object->Radius * (fromAngle - toAngle);
}

void RouteNode::DeleteAllUpTo(RouteNode* node)
{
	while (Next != node)
	{
		RouteNode* doomed = Next;
		Next = doomed->Next;
		if (Next != NULL)
		{
			Next->Prev = this;
		}
		delete doomed;
	}
}

void RouteNode::DeleteAllIncluding(RouteNode* node)
{
	bool32_t done = false;
	while (!done)
	{
		RouteNode* doomed = Next;
		if (doomed == node)
		{
			done = true;
		}
		Next = doomed->Next;
		if (doomed->Next != NULL)
		{
			doomed->Next->Prev = this;
		}
		delete doomed;
	}
}

void RouteNode::SetUpLength(RPAvoid* avoid)
{
	Length = Prev != NULL ? Prev->Length : 0.0f;
	if (!Arc)
	{
		Length += Start.GetRange(End);
	}
	else
	{
		Length += GetArcLength(avoid);
	}
}

Route::Route()
{
	Head = Tail = NULL;
	NextRoute = NULL;
	Improved = true;
}

Route::Route(Route* route)
{
	Head = new RouteNode(route->Head);
	Tail = Head;
	for (RouteNode* node = route->Head->Next; node != NULL; node = node->Next)
	{
		Tail->Next = new RouteNode(node);
		Tail->Next->Prev = Tail;
		Tail = Tail->Next;
	}
	NextRoute = NULL;
	Improved = route->Improved;
}

Route::~Route()
{
	while (Head != NULL)
	{
		RouteNode* next = Head->Next;
		delete Head;
		Head = next;
	}
}

void Route::DeleteNodesAfter(RouteNode* node)
{
	for (RouteNode* doomed = node->Next; doomed != NULL;)
	{
		RouteNode* next = doomed->Next;
		delete doomed;
		doomed = next;
	}
	node->Next = NULL;
	Tail = node;
}

bool32_t Route::TruncateIfBlockedByObject(RPAvoid* avoid, RouteNode* node, RPHolder* holder, const Point2D& pos)
{
	for (RouteNode* current = node; current != NULL; current = current->Next)
	{
		if (!current->Arc)
		{
			int     prevAvoid = current->Prev != NULL ? current->Prev->Avoid : ROUTE_NODE_NO_AVOID;
			Point2D start;
			if (current == node)
			{
				start = pos;
			}
			else
			{
				start = current->Start;
			}
			Point2D hit;
			int     hitSide;
			int     object = holder->GetFirstObject(start, current->End, prevAvoid, hit, hitSide, 0.0f);
			if (&holder->AvoidArray[object] == avoid)
			{
				current->End = hit;
				current->Avoid = object;
				DeleteNodesAfter(current);
				return true;
			}
		}
		else if (current->Prev != NULL && current->Prev->Avoid != ROUTE_NODE_NO_AVOID)
		{
			RPAvoid* arcAvoid = &holder->AvoidArray[current->Prev->Avoid];
			float    reach = arcAvoid->Radius + avoid->Radius;
			if ((arcAvoid->Centre - avoid->Centre).GetSizeSq() < reach * reach)
			{
				if (current == node)
				{
					current->End = pos;
					DeleteNodesAfter(current);
				}
				else
				{
					DeleteNodesAfter(current->Prev);
				}
				return true;
			}
		}
	}
	return false;
}
