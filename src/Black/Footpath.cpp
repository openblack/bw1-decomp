#include "MaxFloat.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "LandscapeConstants.h"
#include "GameTimeConstants.h"
#include "Footpath.h"

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen, strcpy */

#include <stack> /* For std::stack */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For SquareRoot */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint, struct Point2D */
#include <Lionhead/LHLib/ver5.0/Route.h>             /* For struct Route, class RouteNode */

#include "FootpathFinder.h"   /* For struct GFootpathFinder */
#include "FootpathLink.h"     /* For struct GFootpathLink */
#include "FootpathLinkSave.h" /* For struct GFootpathLinkSave */
#include "FootpathNode.h"     /* For struct GFootpathNode */
#include "Game.h"             /* For GGame */
#include "GameOSFile.h"       /* For struct GameOSFile */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Landscape.h"        /* For GLandscape */
#include "Setup.h"            /* For GSetup */
#include "StoragePit.h"       /* For class StoragePit */
#include "Utils.h"            /* For GUtils::GetDistanceInMetres */

static const double ArcStepScale = 0.35;
static const float  ObstacleRangeMargin = 0.4f;
static const float  ObstacleRangeScale = 1.03f;

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\Footpath.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\Footpath.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\Footpath.cpp"
#endif

#define FOOTPATH_SCRIPT_LINE_LENGTH        100
#define FOOTPATH_LINK_SCRIPT_LINE_LENGTH   200
#define FOOTPATH_FAR_DISTANCE              9999990.0f
#define FOOTPATH_LINK_SAVE_MAX_DISTANCE_SQ 0.0025
#define FOOTPATH_FINDER_UPDATES_PER_TURN   20
#define FOOTPATH_ID_NOT_FOUND              -1
#define FOOTPATH_NEAR_DISTANCE             40.0f
#define FOOTPATH_STORAGE_PIT_DISTANCE      10.0f
#define FOOTPATH_ROUTE_OBJECT_MARGIN       0.5f
#define FOOTPATH_ROUTE_EXTRA_LENGTH        1.0f
#define FOOTPATH_ROUTE_LENGTH_FACTOR       5.0f
#define FOOTPATH_ROUTE_MAX_UPDATES         128
#define FOOTPATH_COLLINEAR_TOLERANCE       0.01
#define FOOTPATH_OBSTACLE_RANGE(radius)    (ObstacleRangeScale * (radius) + ObstacleRangeMargin)
#define FOOTPATH_OBSTACLE_INSIDE_SCALE     1.01f
#define FOOTPATH_OBSTACLE_MIN_CHORD_SQ     0.0001
#define FOOTPATH_DETOUR_COS                0.951074828
#define FOOTPATH_DETOUR_SIN                0.308960629
#define FOOTPATH_ARC_COS                   0.951074828f
#define FOOTPATH_ARC_SIN                   0.308960629f
#define MOVE_OUT_OF_OBJECT_NUDGE           0.01f
#define MOVE_OUT_OF_OBJECT_EXTRA_RADIUS    0.1f

// BW1W120 00537260 BW1M119 inlined
static bool32_t RangesOverlap(int start, int end, int low, int high);

template <typename T> inline T tbl_square(T value)
{
	return value * value;
}

GFootpathNode::GFootpathNode(const MapCoords& coords, bool32_t real, bool32_t temporary)
{
	this->coords = coords;
	Real = real;
	Temporary = temporary;
	Hidden = InsideObstacle = false;
}

float GFootpathNode::GetDistance(const MapCoords& pos) const
{
	return GUtils::GetDistanceInMetres(coords, pos);
}

GFootpath::GFootpath() {}

void GFootpath::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
	if ((Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		Active = true;
	}
}

void GFootpath::ResolveLoad()
{
	CallVirtualFunctionsForCreation(NULL);
}

GFootpath::~GFootpath() {}

GFootpath::GFootpath(GameThingWithPos* from, GameThingWithPos* to)
{
	Active = true;
	GGame::g_game->GameLists.footpaths.AddToFirst(this);
}

void GFootpath::ToBeDeleted(bool32_t delete_now)
{
	nodes.ToBeDeletedEach();
	GGame::g_game->GameLists.footpaths.Remove(this);
	Active = false;
	GameThing::ToBeDeleted(delete_now);
}

int GFootpath::GetID()
{
	int        id = 0;
	GFootpath* footpath;
	for (footpath = GGame::g_game->GameLists.footpaths.head; footpath != NULL; footpath = footpath->next, id++)
	{
		if (footpath == this)
		{
			break;
		}
	}
	if (footpath != NULL)
	{
		return id;
	}
	return FOOTPATH_ID_NOT_FOUND;
}

void GFootpath::AddPos(const MapCoords& coords)
{
	nodes.AddToFirst(new (FILEPATH, 169) GFootpathNode(coords, true, false));
}

GFootpathNode* GFootpath::GetEndNonHiddenNode(MapCoords& pos, bool32_t backwards)
{
	if (backwards)
	{
		GFootpathNode* node;
		for (node = nodes.head; node != NULL; node = node->next)
		{
			if (!node->IsHidden())
			{
				break;
			}
		}
		if (node != NULL)
		{
			pos = node->coords;
		}
		return node;
	}
	GFootpathNode* last = NULL;
	for (GFootpathNode* node = nodes.head; node != NULL; node = node->next)
	{
		if (!node->IsHidden())
		{
			last = node;
		}
	}
	if (last != NULL)
	{
		pos = last->coords;
	}
	return last;
}

GFootpathNode* GFootpath::GetNextNode(GFootpathNode* node, bool32_t backwards)
{
	do
	{
		if (backwards)
		{
			node = nodes.GetPrevious(node);
		}
		else
		{
			node = node->next;
		}
	} while (node != NULL && node->IsHidden());
	return node;
}

FOOTPATH_POS GFootpath::GetNextPos(const MapCoords& current_pos, GFootpathNode*& next_node, MapCoords& next_pos,
                                   bool32_t backwards, float max_distance)
{
	GFootpathNode* node = GetNearestPos(current_pos, backwards);
	if (node != NULL && node->GetDistance(current_pos) <= max_distance)
	{
		node = GetNextNode(node, backwards);
		if (node != NULL)
		{
			next_pos = node->coords;
			next_node = node;
			return FOOTPATH_POS_NEXT;
		}
		return FOOTPATH_POS_END;
	}
	return FOOTPATH_POS_NOT_ON_PATH;
}

FOOTPATH_POS GFootpath::GetNextPos(GFootpathNode*& next_node, MapCoords& next_pos, bool32_t backwards)
{
	GFootpathNode* node = GetNextNode(next_node, backwards);
	if (node != NULL)
	{
		next_pos = node->coords;
		next_node = node;
		return FOOTPATH_POS_NEXT;
	}
	return FOOTPATH_POS_END;
}

GFootpathNode* GFootpath::GetNearestPos(const MapCoords& pos, bool32_t backwards)
{
	GFootpathNode* nearest = NULL;
	float          nearestDistance = FOOTPATH_FAR_DISTANCE;
	for (GFootpathNode* node = nodes.head; node != NULL; node = node->next)
	{
		if (!node->IsHidden())
		{
			float distance = node->GetDistance(pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = node;
			}
		}
	}
	if (nearest != NULL)
	{
		GFootpathNode* next = GetNextNode(nearest, backwards);
		if (next != NULL && next->GetDistance(pos) < next->GetDistance(nearest->coords))
		{
			return next;
		}
		return nearest;
	}
	return NULL;
}

bool32_t GFootpath::SaveAll(LHOSFile& file, const MapCoords* offset)
{
	if (offset == NULL)
	{
		return false;
	}
	for (GFootpath* footpath = GGame::g_game->GameLists.footpaths.GetLast(); footpath != NULL;
	     footpath = GGame::g_game->GameLists.footpaths.GetPrevious(footpath))
	{
		footpath->SaveObject(file, offset);
	}
	return true;
}

bool32_t GFootpath::SaveObject(LHOSFile& file, const MapCoords* offset)
{
	char text[FOOTPATH_SCRIPT_LINE_LENGTH];
	char coordsText[FOOTPATH_SCRIPT_LINE_LENGTH];
	if (offset == NULL)
	{
		return false;
	}
	sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_FOOTPATH), GetID());
	GSetup::WriteToFile(this, file, text, strlen(text));
	for (GFootpathNode* node = nodes.GetLast(); node != NULL; node = nodes.GetPrevious(node))
	{
		MapCoords coords = MapCoords(node->coords - *offset);
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_FOOTPATH_NODE), GetID(),
		        coords.ConvertToText(coordsText));
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return true;
}

Point2D ConvertMapCoordsToPoint2D(const MapCoords& coords)
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	return Point2D(point.x, point.z);
}

MapCoords ConvertPoint2DToMapCoords(const Point2D& point)
{
	MapCoords coords;
	GLandscape::ConvertLandscapePointToMapCoord(LHPoint(point.x, 0.0f, point.y), coords);
	return coords;
}

class MoveOutOfObject
{
public:
	// BW1W120 00cd0468
	static Point2D ObjectCentre;
	// BW1W120 00cd0470
	static Point2D Target;
	// BW1W120 00cd0478
	static Point2D* Point;

	// BW1W120 inlined BW1M119 inlined
	static bool FindCircleExit(const Point2D& start, const Point2D& end, const Point2D& centre, float radius,
	                           Point2D& exit)
	{
		Point2D direction = end - start;
		Point2D offset = centre - start;
		float   c = offset.GetNormSq() - radius * radius;
		float   b = -2.0f * (offset * direction);
		float   a = direction.GetNormSq();
		float   discriminant = b * b - 4.0f * a * c;
		if (discriminant >= 0.0f)
		{
			float t = (-b + SquareRoot(discriminant)) / (2.0f * a);
			if (t >= 1.0f)
			{
				exit = direction * t + start;
				return true;
			}
		}
		return false;
	}

	// BW1W120 00535bd0 BW1M119 010f27f0
	static void CallbackFunction(int object_id, Point2D pos, float radius, int update)
	{
		Point2D exit;
		if (FindCircleExit(ObjectCentre, *Point, pos, radius + MOVE_OUT_OF_OBJECT_EXTRA_RADIUS, exit))
		{
			*Point = exit;
		}
	}

	// BW1W120 00535a80 BW1M119 inlined
	static void Move(Point2D* point, MultiMapFixed* structure, Point2D target)
	{
		RPHolder* holder = new (FILEPATH, 981) RPHolder;
		holder->ObjectMargin = FOOTPATH_ROUTE_OBJECT_MARGIN;
		Target = target;
		Point = point;
		ObjectCentre = ConvertMapCoordsToPoint2D(structure->GetPos());
		if (*Point == ObjectCentre)
		{
			Point2D direction = Target - *Point;
			direction.Normalize();
			*Point += direction * MOVE_OUT_OF_OBJECT_NUDGE;
		}
		structure->AddToRoutePlan(holder, NULL, 0, CallbackFunction);
		delete holder;
	}
};

Point2D  MoveOutOfObject::ObjectCentre;
Point2D  MoveOutOfObject::Target;
Point2D* MoveOutOfObject::Point;

void GFootpath::GenerateRoutesBetween(GameThingWithPos* from, GameThingWithPos* to)
{
	GFootpath* footpath = new (FILEPATH, 1005) GFootpath(NULL, NULL);
	MapCoords  fromPos = from->GetArrivePos();
	MapCoords  toPos = to->GetArrivePos();
	footpath->AddPos(fromPos);
	footpath->AddPos(toPos);
	RPHolder       holder;
	RPlan          plan;
	GFootpathNode* start = footpath->nodes.head;
	GFootpathNode* end = footpath->nodes.GetLast();
	Point2D        startPoint = ConvertMapCoordsToPoint2D(start->coords);
	Point2D        endPoint = ConvertMapCoordsToPoint2D(end->coords);
	MultiMapFixed* structure = to->CastMultiMapFixed();
	if (structure != NULL)
	{
		MoveOutOfObject::Move(&startPoint, structure, endPoint);
	}
	structure = from->CastMultiMapFixed();
	if (structure != NULL)
	{
		MoveOutOfObject::Move(&endPoint, structure, startPoint);
	}
	plan.SetStart(startPoint, FOOTPATH_ROUTE_OBJECT_MARGIN, &holder, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID, 0);
	plan.SetDest(endPoint, 0.0f, 0.0f, 0.0f, ROUTE_NODE_NO_AVOID, 0,
	             (startPoint.GetRange(endPoint) + FOOTPATH_ROUTE_EXTRA_LENGTH) * FOOTPATH_ROUTE_LENGTH_FACTOR, true);
	for (int i = FOOTPATH_ROUTE_MAX_UPDATES; i-- > 0 && plan.State == RPLAN_STATE_PLANNING;)
	{
		plan.GameTurnUpdate(0);
	}
	if (plan.State == RPLAN_STATE_SUCCEEDED && plan.CurrentRoute != NULL)
	{
		ConvertCreaturePlanToFootpath(holder, plan, start, end, NULL);
		for (GFootpathNode* node = footpath->nodes.head; node != NULL; node = node->next)
		{
			if (!node->IsHidden())
			{
				node->Temporary = false;
			}
		}
		from->AddFootpath(footpath);
		to->AddFootpath(footpath);
	}
	else
	{
		footpath->ToBeDeleted(false);
	}
}

bool32_t GFootpath::FindPathAsRoute(const MapCoords& from, const MapCoords& to, GFootpath** footpath,
                                    bool32_t& backwards)
{
	return false;
}

bool32_t GFootpath::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		int count = 0;
		for (GFootpathNode* node = nodes.head; node != NULL; node = node->next)
		{
			count++;
		}
		nodes.count = count;
		if (file.WriteSafe(nodes))
		{
			file.WriteSafe(Active);
		}
		return true;
	}
	return false;
}

bool32_t GFootpath::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadSafe(nodes);
		file.ReadSafe(Active);
		return true;
	}
	return false;
}

void GFootpathLink::ToBeDeleted(bool32_t delete_now)
{
	FootpathList.RemoveAll();
	GameThing::ToBeDeleted(delete_now);
}

bool32_t GFootpathLink::AddFootpath(GFootpath* footpath)
{
	FootpathList.Add(footpath);
	return true;
}

bool32_t GFootpathLink::RemoveFootpath(GFootpath* footpath)
{
	FootpathList.Remove(footpath);
	return true;
}

GFootpath* GFootpathLink::GetNearestPathTo(const MapCoords& pos, const MapCoords& dest, float max_distance,
                                           bool32_t& backwards, GFootpathNode** nearest_node)
{
	GFootpath* nearest = NULL;
	for (LHLinkedNode<GFootpath*>* link = FootpathList.head.Get(); link != NULL; link = link->next.Get())
	{
		GFootpath* footpath = link->payload;
		if (footpath->Active)
		{
			GFootpathNode* first = footpath->nodes.head;
			GFootpathNode* last = footpath->nodes.GetLast();
			if (first != NULL && last != NULL)
			{
				bool32_t       reverse = first->GetDistance(dest) < last->GetDistance(dest);
				GFootpathNode* node = footpath->GetNearestPos(pos, reverse);
				if (node != NULL)
				{
					float distance = node->GetDistance(pos);
					if (distance < max_distance)
					{
						if (nearest_node != NULL)
						{
							*nearest_node = node;
						}
						max_distance = distance;
						nearest = footpath;
						backwards = reverse;
					}
				}
			}
		}
	}
	return nearest;
}

GFootpath* GFootpathLink::GetNearestPathToQuick(const MapCoords& pos, const MapCoords& dest, float max_distance,
                                                bool32_t& backwards, GFootpathNode** nearest_node)
{
	GFootpath* nearest = NULL;
	for (LHLinkedNode<GFootpath*>* link = FootpathList.head.Get(); link != NULL; link = link->next.Get())
	{
		GFootpath* footpath = link->payload;
		if (footpath->Active)
		{
			GFootpathNode* first = footpath->nodes.head;
			GFootpathNode* last = footpath->nodes.GetLast();
			if (first != NULL && last != NULL)
			{
				bool reverse = first->coords.GetMetresDistanceSq(dest) < last->coords.GetMetresDistanceSq(dest);
				GFootpathNode* node = reverse ? last : first;
				float          distance = node->GetDistance(pos);
				if (distance < max_distance)
				{
					if (nearest_node != NULL)
					{
						*nearest_node = reverse ? last : first;
					}
					max_distance = distance;
					nearest = footpath;
					backwards = reverse;
				}
			}
		}
	}
	return nearest;
}

bool32_t GFootpathLink::UseFootpathIfNecessary(Living* living, const MapCoords& coords, uint8_t state,
                                               GameThingWithPos* destination)
{
	bool32_t       backwards;
	GFootpathNode* node = NULL;
	GFootpath*     footpath = GetNearestPathTo(living->Pos, coords, FOOTPATH_NEAR_DISTANCE, backwards, &node);
	if (footpath != NULL && living->SetupMoveOnFootpath(footpath, backwards, state, node))
	{
		return true;
	}
	Town* town = destination->GetTown();
	if (town != NULL || (town = coords.GetNearestTown(MaxFloat)) != NULL)
	{
		StoragePit* pit = town->GetStoragePit();
		if (pit != NULL && pit != destination)
		{
			GFootpath* firstLeg =
				GetNearestPathToQuick(coords, pit->GetArrivePos(), FOOTPATH_STORAGE_PIT_DISTANCE, backwards, &node);
			if (firstLeg != NULL && pit->GetFootpathLink() != NULL)
			{
				footpath = pit->GetFootpathLink()->GetNearestPathToQuick(living->Pos, pit->GetArrivePos(),
				                                                         FOOTPATH_NEAR_DISTANCE, backwards, &node);
				if (footpath != NULL)
				{
					living->SetupMoveOnFootpath(footpath, backwards, state, node);
					living->MobileWallHug::footpath = firstLeg;
					return true;
				}
			}
		}
	}
	return living->SetupMoveToWithHug(coords, state);
}

bool32_t GFootpathLink::SaveObject(LHOSFile& file, const MapCoords* offset)
{
	char text[FOOTPATH_LINK_SCRIPT_LINE_LENGTH];
	if (offset != NULL)
	{
		for (LHLinkedNode<GFootpath*>* link = FootpathList.head.Get(); link != NULL; link = link->next.Get())
		{
			if (link->payload->Active)
			{
				sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_LINK_FOOTPATH), link->payload->GetID());
				GSetup::WriteToFile(this, file, text, strlen(text));
			}
		}
		return true;
	}
	return false;
}

void GFootpathLink::Update(MultiMapFixed* structure) {}

bool32_t GFootpathLink::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WriteSafe(FootpathList);
		return true;
	}
	return false;
}

bool32_t GFootpathLink::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadSafe(FootpathList);
		return true;
	}
	return false;
}

bool32_t GFootpathLink::LoadAll(char* filename)
{
	GameOSFile file;
	GameOSFile::ReadEnabled = true;
	if (file.Open(filename, LH_FILE_MODE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		return false;
	}
	file.Reading = true;
	file.MapFile = true;
	strcpy(file.Filename, filename);
	GameOSFile::LoadCount = 0;
	int32_t count;
	file.ReadSafe(count);
	std::stack<GFootpathLinkSave*> saves;
	for (int i = 0; i < count; i++)
	{
		GFootpathLinkSave* save;
		file.ReadPtr((GameThing**)&save);
		if (!GameOSFile::ReadEnabled)
		{
			break;
		}
		if (save != NULL)
		{
			save->Apply();
			saves.push(save);
		}
	}
	if (file.ReadSafe(GGame::g_game->GameLists.footpaths) && GameOSFile::ReadEnabled)
	{
		file.ResolveAllLoads();
	}
	file.Close();
	while (!saves.empty())
	{
		delete saves.top();
		saves.pop();
	}
	return true;
}

void GFootpathLinkSave::Apply()
{
	if (link == NULL)
	{
		return;
	}
	for (Object* object = coords.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
	     object = coords.FindType(OBJECT_TYPE_ANY, object))
	{
		if (object->Pos.GetMetresDistanceSq(coords) < FOOTPATH_LINK_SAVE_MAX_DISTANCE_SQ)
		{
			MultiMapFixed* structure = dynamic_cast<MultiMapFixed*>(object);
			if (structure != NULL)
			{
				if (structure->FootpathLink != NULL)
				{
					structure->FootpathLink->ToBeDeleted(false);
				}
				structure->FootpathLink = link;
				return;
			}
		}
	}
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.head.Get(); node != NULL;
	     node = node->next.Get())
	{
		for (PlannedMultiMapFixed* planned = node->payload->PlannedList.head; planned != NULL; planned = planned->next)
		{
			if (planned->Pos.GetMetresDistanceSq(coords) < FOOTPATH_LINK_SAVE_MAX_DISTANCE_SQ)
			{
				if (planned->FootpathLink.Get() != NULL)
				{
					planned->FootpathLink.Get()->ToBeDeleted(false);
				}
				planned->FootpathLink.Set(link);
				return;
			}
		}
	}
	link->ToBeDeleted(false);
}

bool32_t GFootpathLinkSave::Load(GameOSFile& file)
{
	if (GameThing::Load(file) == true)
	{
		file.ReadSafe(coords);
		file.ReadPtr((GameThing**)&link);
		return true;
	}
	return false;
}

bool32_t GFootpathLinkSave::Save(GameOSFile& file)
{
	if (GameThing::Save(file) == true)
	{
		file.WriteSafe(coords);
		file.WritePtr(link);
		return true;
	}
	return false;
}

GFootpathLinkSave::GFootpathLinkSave(MultiMapFixed* structure)
{
	link = structure->GetFootpathLink();
	coords = structure->Pos;
}

GFootpathLinkSave::GFootpathLinkSave(PlannedMultiMapFixed* planned)
{
	link = planned->GetFootpathLink();
	coords = planned->Pos;
}

static bool32_t RangesOverlap(int start, int end, int low, int high)
{
	int maximum;
	if (start < end)
	{
		maximum = end;
	}
	else
	{
		maximum = start;
		start = end;
	}
	return start < high && low < maximum;
}

void GFootpath::SendFootpathsAroundObsticle(float radius, const MapCoords& coords)
{
	if ((GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) != 0 || GameOSFile::Loading)
	{
		return;
	}
	for (GFootpath* footpath = GGame::g_game->GameLists.footpaths.head; footpath != NULL; footpath = footpath->next)
	{
		GFootpathNode* previous = NULL;
		GFootpathNode* before = NULL;
		GFootpathNode* after = NULL;
		bool32_t       found = false;
		int            distance = GUtils::ConvertMetersToWholeDistance(radius);
		uint32_t       minX = coords.x - distance;
		uint32_t       maxX = coords.x + distance;
		uint32_t       minZ = coords.z - distance;
		uint32_t       maxZ = coords.z + distance;
		float          insideSq = (distance * distance) * FOOTPATH_OBSTACLE_INSIDE_SCALE;
		if (footpath->nodes.head != NULL)
		{
			for (GFootpathNode* node = footpath->nodes.head->next; node != NULL; node = node->next)
			{
				if (!(node->IsHidden() || node->Temporary) && node->next != NULL && node->coords.x >= minX &&
				    node->coords.x <= maxX && node->coords.z >= minZ && node->coords.z <= maxZ &&
				    tbl_square((float)node->coords.x - (float)coords.x) +
				            tbl_square((float)node->coords.z - (float)coords.z) <
				        insideSq)
				{
					node->Hidden = true;
					GFootpathNode* next = node->next;
					node->next = new (FILEPATH, 2235) GFootpathNode(node->coords, true, true);
					node->next.Get()->next = next;
				}
			}
		}
		for (GFootpathNode* node = footpath->nodes.head; node != NULL;)
		{
			if (previous != NULL)
			{
				if (!previous->Temporary)
				{
					before = previous;
					after = GetNextPermanentNode(node);
					found = true;
				}
				if (RangesOverlap(previous->coords.WholeX(), node->coords.WholeX(), minX, maxX) &&
				    RangesOverlap(previous->coords.WholeZ(), node->coords.WholeZ(), minZ, maxZ))
				{
					if (tbl_square((float)previous->coords.x - (float)coords.x) +
					        tbl_square((float)previous->coords.z - (float)coords.z) >
					    insideSq)
					{
						if (tbl_square((float)node->coords.x - (float)coords.x) +
						        tbl_square((float)node->coords.z - (float)coords.z) >
						    insideSq)
						{
							LHPoint start;
							LHPoint end;
							LHPoint centre;
							GLandscape::ConvertMapCoordToLandscapePoint(previous->coords, start);
							GLandscape::ConvertMapCoordToLandscapePoint(node->coords, end);
							GLandscape::ConvertMapCoordToLandscapePoint(coords, centre);
							end.y = start.y = centre.y = 0.0f;
							LHPoint direction = end - start;
							LHPoint offset = centre - start;
							LHPoint nearest = direction * ((offset * direction) / direction.GetNormeSq()) + start;
							float   chordSq = radius * radius - (centre - nearest).GetNormeSq();
							previous->ClearToNextNode();
							node->ClearFromPreviousNode();
							if (chordSq > FOOTPATH_OBSTACLE_MIN_CHORD_SQ)
							{
								if (found && AttemptRerenderFootpathWithCreatureRP(before, after, &coords))
								{
									break;
								}
								direction.FastNormalizeInline();
								direction *= sqrt(chordSq);
								MapCoords entryCoords;
								MapCoords exitCoords;
								LHPoint   entry = nearest - direction - centre;
								LHPoint   exit = nearest + direction - centre;
								GLandscape::ConvertLandscapePointToMapCoord(exit + centre, exitCoords);
								float stepSq = (radius * ArcStepScale) * (radius * ArcStepScale);
								if ((entry ^ exit).y > 0.0f)
								{
									while (entry.GetDistanceSq(exit) > stepSq)
									{
										GLandscape::ConvertLandscapePointToMapCoord(entry + centre, entryCoords);
										previous->next = new (FILEPATH, 2290) GFootpathNode(entryCoords, true, true);
										previous = previous->next;
										entry =
											LHPoint(entry.x * FOOTPATH_DETOUR_COS + entry.z * FOOTPATH_DETOUR_SIN, 0.0f,
										            entry.z * FOOTPATH_DETOUR_COS - entry.x * FOOTPATH_DETOUR_SIN);
									}
								}
								else
								{
									while (entry.GetDistanceSq(exit) > stepSq)
									{
										GLandscape::ConvertLandscapePointToMapCoord(entry + centre, entryCoords);
										previous->next = new (FILEPATH, 2300) GFootpathNode(entryCoords, true, true);
										previous = previous->next;
										entry =
											LHPoint(entry.x * FOOTPATH_DETOUR_COS - entry.z * FOOTPATH_DETOUR_SIN, 0.0f,
										            entry.z * FOOTPATH_DETOUR_COS + entry.x * FOOTPATH_DETOUR_SIN);
									}
								}
								previous->next = new (FILEPATH, 2305) GFootpathNode(exitCoords, true, true);
								previous->next.Get()->next = node;
								int count = 0;
								for (GFootpathNode* counted = footpath->nodes.head; counted != NULL;
								     counted = counted->next)
								{
									count++;
								}
								footpath->nodes.count = count;
								break;
							}
						}
						else if (found && node->Temporary)
						{
							if (AttemptRerenderFootpathWithCreatureRP(before, after, &coords))
							{
								break;
							}
							found = false;
						}
					}
					else if (found && previous->Temporary)
					{
						if (AttemptRerenderFootpathWithCreatureRP(before, after, &coords))
						{
							break;
						}
						found = false;
					}
				}
			}
			previous = node;
			node = node->next;
			while (node != NULL && node->IsHidden())
			{
				node = node->next;
			}
		}
		footpath->AssertValid();
	}
}

bool32_t GFootpath::ArePracticallyCollinear2D(const LHPoint& a, const LHPoint& b, const LHPoint& c)
{
	LHPoint first = a - c;
	LHPoint second = b - c;
	return (first ^ second).y / (first * second) < FOOTPATH_COLLINEAR_TOLERANCE;
}

bool32_t GFootpath::ArePracticallyCollinear2D(const MapCoords& a, const MapCoords& b, const MapCoords& c)
{
	LHPoint pointA;
	LHPoint pointB;
	LHPoint pointC;
	GLandscape::ConvertMapCoordToLandscapePoint(a, pointA);
	GLandscape::ConvertMapCoordToLandscapePoint(b, pointB);
	GLandscape::ConvertMapCoordToLandscapePoint(c, pointC);
	return ArePracticallyCollinear2D(pointA, pointB, pointC);
}

GFootpathNode* GFootpath::GetNextPermanentNode(GFootpathNode* node)
{
	while (node != NULL && (node->Temporary || node->Hidden || node->InsideObstacle))
	{
		node = node->next;
	}
	return node;
}

void GFootpath::StopGoingRoundObsticle(float radius, const MapCoords& coords)
{
	if ((GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) != 0 || GameOSFile::Loading)
	{
		return;
	}
	for (GFootpath* footpath = GGame::g_game->GameLists.footpaths.head; footpath != NULL; footpath = footpath->next)
	{
		uint32_t       distance = GUtils::ConvertMetersToWholeDistance(FOOTPATH_OBSTACLE_RANGE(radius));
		uint32_t       minX = coords.x - distance;
		uint32_t       maxX = coords.x + distance;
		uint32_t       minZ = coords.z - distance;
		uint32_t       maxZ = coords.z + distance;
		GFootpathNode* previous = NULL;
		GFootpathNode* before = NULL;
		GFootpathNode* after = NULL;
		bool32_t       found = false;
		GFootpathNode* node;
		for (node = footpath->nodes.head; node != NULL; previous = node, node = node->next)
		{
			bool erased = false;
			if (previous != NULL && !previous->Temporary)
			{
				before = previous;
				for (after = node; after != NULL && (after->Temporary || after->IsHidden());)
				{
					if (after->Hidden && after->coords.x > minX && after->coords.x < maxX && after->coords.z > minZ &&
					    after->coords.z < maxZ && after->GetDistance(coords) < FOOTPATH_OBSTACLE_RANGE(radius) &&
					    before != after)
					{
						after->Hidden = false;
						footpath->AssertValid();
						before->next = EraseNodesBetween(before, after);
						footpath->AssertValid();
						AttemptRerenderFootpathWithCreatureRP(before, after, NULL);
						footpath->AssertValid();
						before = after;
						after = after->next;
						node = after;
						erased = true;
					}
					else
					{
						after = after->next;
					}
				}
				found = true;
				if (erased)
				{
					footpath->AssertValid();
					before->next = EraseNodesBetween(before, after);
					footpath->AssertValid();
					AttemptRerenderFootpathWithCreatureRP(before, after, NULL);
					footpath->AssertValid();
					break;
				}
			}
		}
		footpath->AssertValid();
		previous = NULL;
		if (node == NULL)
		{
			for (node = footpath->nodes.head; node != NULL; node = node->next)
			{
				if (previous != NULL)
				{
					if (!(previous->Temporary || previous->IsHidden()))
					{
						before = previous;
						after = GetNextPermanentNode(node);
						found = true;
					}
					if (node->InsideObstacle && node->Temporary && node->coords.x > minX && node->coords.x < maxX &&
					    node->coords.z > minZ && node->coords.z < maxZ &&
					    node->GetDistance(coords) < FOOTPATH_OBSTACLE_RANGE(radius) && found)
					{
						previous->next = node->next;
						node->ToBeDeleted(false);
						if (AttemptRerenderFootpathWithCreatureRP(before, after, NULL))
						{
							break;
						}
						continue;
					}
				}
				previous = node;
			}
		}
		GFootpathNode* lastKept = NULL;
		if (node != NULL)
		{
			for (node = footpath->nodes.head; node != NULL;)
			{
				if (lastKept != NULL && node->InsideObstacle && node->Temporary && node->coords.x > minX &&
				    node->coords.x < maxX && node->coords.z > minZ && node->coords.z < maxZ &&
				    node->GetDistance(coords) < FOOTPATH_OBSTACLE_RANGE(radius))
				{
					lastKept->next = node->next;
					GFootpathNode* next = node->next;
					node->ToBeDeleted(false);
					node = next;
				}
				else
				{
					lastKept = node;
					node = node->next;
				}
			}
		}
		else
		{
			previous = NULL;
			for (node = footpath->nodes.head; node != NULL;)
			{
				if (previous != NULL)
				{
					if (!previous->Temporary)
					{
						before = previous;
						after = GetNextPermanentNode(node);
						found = true;
					}
					if (node->Temporary && node->coords.x > minX && node->coords.x < maxX && node->coords.z > minZ &&
					    node->coords.z < maxZ && node->GetDistance(coords) < FOOTPATH_OBSTACLE_RANGE(radius))
					{
						if (found)
						{
							if (AttemptRerenderFootpathWithCreatureRP(before, after, NULL))
							{
								break;
							}
							found = false;
						}
						if (before->coords == after->coords)
						{
							continue;
						}
						bool32_t       inside = true;
						GFootpathNode* first = node;
						GFootpathNode* exit = NULL;
						GFootpathNode* last = NULL;
						GFootpathNode* beforeExit = NULL;
						while (node != NULL && (inside || node->Temporary))
						{
							if (node->GetDistance(coords) < FOOTPATH_OBSTACLE_RANGE(radius))
							{
								inside = true;
							}
							else if (inside)
							{
								inside = false;
								exit = node;
								beforeExit = last;
							}
							last = node;
							node = node->next;
							while (node != NULL && node->IsHidden())
							{
								node = node->next;
							}
						}
						if (exit == NULL)
						{
							continue;
						}
						if (!ArePracticallyCollinear2D(previous->coords, first->coords, exit->coords))
						{
							previous = first;
							first = first->next;
						}
						if (beforeExit == NULL || first == exit)
						{
							continue;
						}
						if (!ArePracticallyCollinear2D(previous->coords, beforeExit->coords, exit->coords))
						{
							exit = beforeExit;
						}
						if (first == exit)
						{
							continue;
						}
						exit->ClearFromPreviousNode();
						previous->ClearToNextNode();
						previous->next = EraseNodesBetween(previous, exit);
						int count = 0;
						for (GFootpathNode* counted = footpath->nodes.head; counted != NULL; counted = counted->next)
						{
							count++;
						}
						footpath->nodes.count = count;
						break;
					}
				}
				previous = node;
				node = node->next;
				while (node != NULL && node->IsHidden())
				{
					node = node->next;
				}
			}
			footpath->AssertValid();
		}
	}
}

void GFootpath::ConvertCreaturePlanToFootpath(RPHolder& holder, RPlan& plan, GFootpathNode* start, GFootpathNode* end,
                                              const MapCoords* obstacle)
{
	RouteNode* routeNode = plan.CurrentRoute->Head;
	RouteNode* previous = NULL;
	end->ClearFromPreviousNode();
	start->ClearToNextNode();
	GFootpathNode* rest = EraseNodesBetween(start, end);
	GFootpathNode* node = start;
	node->next = new (FILEPATH, 2587) GFootpathNode(ConvertPoint2DToMapCoords(plan.Start), true, true);
	node = node->next;
	for (; routeNode != NULL; previous = routeNode, routeNode = routeNode->Next)
	{
		if (routeNode->Arc == true && previous->Avoid != ROUTE_NODE_NO_AVOID)
		{
			RPAvoid& avoid = holder.AvoidArray[previous->Avoid];
			Point2D  start = routeNode->Start;
			Point2D  end = routeNode->End;
			Point2D  from = start - avoid.Centre;
			Point2D  centre = avoid.Centre;
			Point2D  to = end - avoid.Centre;
			to.Normalize();
			to *= sqrt(from.GetNormSq());
			float stepSq = (avoid.Radius * ArcStepScale) * (avoid.Radius * ArcStepScale);
			if (previous->Side == ROUTE_NODE_SIDE_CLOCKWISE)
			{
				while ((from - to).GetNormSq() > stepSq)
				{
					node->next =
						new (FILEPATH, 2611) GFootpathNode(ConvertPoint2DToMapCoords(centre + from), true, true);
					node = node->next;
					from = Point2D(from.y * FOOTPATH_ARC_SIN + from.x * FOOTPATH_ARC_COS,
					               from.y * FOOTPATH_ARC_COS - from.x * FOOTPATH_ARC_SIN);
				}
			}
			else
			{
				while ((from - to).GetNormSq() > stepSq)
				{
					node->next =
						new (FILEPATH, 2621) GFootpathNode(ConvertPoint2DToMapCoords(centre + from), true, true);
					node = node->next;
					from = Point2D(from.x * FOOTPATH_ARC_COS - from.y * FOOTPATH_ARC_SIN,
					               from.y * FOOTPATH_ARC_COS + from.x * FOOTPATH_ARC_SIN);
				}
			}
			node->next = new (FILEPATH, 2627) GFootpathNode(ConvertPoint2DToMapCoords(to + centre), true, true);
			node = node->next;
		}
		else if (routeNode->Next != NULL)
		{
			node->next = new (FILEPATH, 2634) GFootpathNode(ConvertPoint2DToMapCoords(routeNode->End), true, true);
			node = node->next;
		}
	}
	GFootpathNode* last = new (FILEPATH, 2646) GFootpathNode(ConvertPoint2DToMapCoords(plan.Dest), true, true);
	node->next = last;
	if (obstacle != NULL)
	{
		GFootpathNode* obstacleNode = new (FILEPATH, 2650) GFootpathNode(*obstacle, true, true);
		last->next = obstacleNode;
		last = obstacleNode;
		last->InsideObstacle = true;
	}
	last->next = rest;
}

bool32_t GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode* start, GFootpathNode* end,
                                                          const MapCoords* obstacle)
{
	RPHolder holder;
	RPlan    plan;
	Point2D  startPoint = ConvertMapCoordsToPoint2D(start->coords);
	Point2D  endPoint = ConvertMapCoordsToPoint2D(end->coords);
	plan.SetStart(startPoint, FOOTPATH_ROUTE_OBJECT_MARGIN, &holder, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID, 0);
	plan.SetDest(endPoint, 0.0f, 0.0f, 0.0f, ROUTE_NODE_NO_AVOID, 0,
	             (startPoint.GetRange(endPoint) + FOOTPATH_ROUTE_EXTRA_LENGTH) * FOOTPATH_ROUTE_LENGTH_FACTOR, true);
	for (int i = FOOTPATH_ROUTE_MAX_UPDATES; i-- > 0 && plan.State == RPLAN_STATE_PLANNING;)
	{
		plan.GameTurnUpdate(0);
	}
	if (plan.State == RPLAN_STATE_SUCCEEDED && plan.CurrentRoute != NULL)
	{
		ConvertCreaturePlanToFootpath(holder, plan, start, end, obstacle);
		return true;
	}
	return false;
}

void GFootpathNode::ToBeDeleted(bool32_t delete_now)
{
	followers.RemoveAll();
	Delete();
}

void GFootpathNode::PurgeFollowerList()
{
	for (LHLinkedNode<Living*>* link = followers.head.Get(); link != NULL;)
	{
		LHLinkedNode<Living*>* current = link;
		link = link->next.Get();
		if (current->payload->action.GetState(LIVING_ACTION_INDEX_TOP) != VILLAGER_STATE_MOVE_ON_PATH ||
		    current->payload->footpath_node != this)
		{
			followers.Remove(current->payload, true);
		}
	}
}

void GFootpathNode::ClearForDeletion(GFootpathNode* next_node, GFootpathNode* previous_node)
{
	PurgeFollowerList();
	for (LHLinkedNode<Living*>* link = followers.head.Get(); link != NULL; link = link->next.Get())
	{
		Living* living = link->payload;
		living->MoveState = MOVE_TO_STATES_LINEAR;
		living->footpath_node = (living->status & LIVING_STATUS_FOOTPATH_BACKWARDS) ? previous_node : next_node;
		living->footpath_node->followers.Add(living);
		living->goal = living->footpath_node->coords;
		living->InitStepsXZ();
		living->MoveToCircleHugLinearSquareSweep(living->Pos);
	}
	followers.RemoveAll();
}

void GFootpathNode::ClearFromPreviousNode()
{
	PurgeFollowerList();
	for (LHLinkedNode<Living*>* link = followers.head.Get(); link != NULL; link = link->next.Get())
	{
		if ((link->payload->status & LIVING_STATUS_FOOTPATH_BACKWARDS) == 0)
		{
			link->payload->MoveState = MOVE_TO_STATES_LINEAR;
			link->payload->MoveToCircleHugLinearSquareSweep(link->payload->Pos);
		}
	}
}

void GFootpathNode::ClearToNextNode()
{
	PurgeFollowerList();
	for (LHLinkedNode<Living*>* link = followers.head.Get(); link != NULL; link = link->next.Get())
	{
		if ((link->payload->status & LIVING_STATUS_FOOTPATH_BACKWARDS) != 0)
		{
			link->payload->MoveState = MOVE_TO_STATES_LINEAR;
			link->payload->MoveToCircleHugLinearSquareSweep(link->payload->Pos);
		}
	}
}

GFootpathNode* GFootpath::EraseNodesBetween(GFootpathNode* start, GFootpathNode* end)
{
	GFootpathNode* firstKept = NULL;
	GFootpathNode* lastKept = NULL;
	for (GFootpathNode* node = start->next; node != end;)
	{
		GFootpathNode* current = node;
		if (current == NULL)
		{
			return end;
		}
		node = node->next;
		current->ClearForDeletion(end, start);
		if (current->IsHidden())
		{
			if (firstKept != NULL)
			{
				lastKept->next = current;
				lastKept = current;
			}
			else
			{
				lastKept = current;
				firstKept = current;
			}
		}
		else
		{
			current->ToBeDeleted(false);
		}
	}
	if (firstKept != NULL)
	{
		lastKept->next = end;
		return firstKept;
	}
	return end;
}

bool32_t GFootpathNode::Load(GameOSFile& file)
{
	if (GameThing::Load(file) == false)
	{
		return false;
	}
	file.ReadSafe(coords);
	file.ReadSafe(Flags);
	if (file.MapFile == false)
	{
		file.ReadSafe(followers);
	}
	else
	{
		Hidden = InsideObstacle = false;
	}
	return true;
}

bool32_t GFootpathNode::Save(GameOSFile& file)
{
	if (GameThing::Save(file) == false)
	{
		return false;
	}
	file.WriteSafe(coords);
	file.WriteSafe(Flags);
	if (file.MapFile == false)
	{
		file.WriteSafe(followers);
	}
	return true;
}

void GFootpathNode::ResolveLoad() {}

void GFootpath::AssertValid()
{
	for (GFootpathNode* node = nodes.head; node != NULL; node = node->next)
	{
	}
}

GFootpathFinder::GFootpathFinder(GameThingWithPos* from, GameThingWithPos* to)
{
	GGame::g_game->GameLists.footpath_finder.Add(this);
	Footpath = new (FILEPATH, 2856) GFootpath(from, to);
	From = from;
	To = to;
	MapCoords toPos = to->GetArrivePos();
	MapCoords fromPos = From->GetArrivePos();
	Footpath->AddPos(toPos);
	Footpath->AddPos(fromPos);
	StartNode = Footpath->nodes.head;
	DestNode = Footpath->nodes.GetLast();
	Init();
}

GFootpathFinder::~GFootpathFinder() {}

void GFootpathFinder::GameTurnProcess()
{
	if (From->IsAvailable() == false || To->IsAvailable() == false || Footpath->IsAvailable() == false)
	{
		ToBeDeleted(false);
		return;
	}
	if (plan.State == RPLAN_STATE_PLANNING)
	{
		for (int i = 0; i < FOOTPATH_FINDER_UPDATES_PER_TURN; i++)
		{
			plan.GameTurnUpdate(0);
			if (plan.State != RPLAN_STATE_PLANNING)
			{
				return;
			}
		}
	}
	else if (plan.State == RPLAN_STATE_SUCCEEDED && plan.CurrentRoute != NULL)
	{
		Done();
	}
	else
	{
		ToBeDeleted(false);
	}
}

bool32_t GFootpathFinder::Load(GameOSFile& file)
{
	if (GameThing::Load(file) == false)
	{
		return false;
	}
	file.ReadPtr((GameThing**)&From);
	file.ReadPtr((GameThing**)&To);
	file.ReadPtr((GameThing**)&Footpath);
	file.ReadPtr((GameThing**)&StartNode);
	file.ReadPtr((GameThing**)&DestNode);
	Init();
	return true;
}

bool32_t GFootpathFinder::Save(GameOSFile& file)
{
	if (GameThing::Save(file) == false)
	{
		return false;
	}
	file.WritePtr(From);
	file.WritePtr(To);
	file.WritePtr(Footpath);
	file.WritePtr(StartNode);
	file.WritePtr(DestNode);
	return true;
}

void GFootpathFinder::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.footpath_finder.Remove(this);
	if (Footpath != NULL && Footpath->IsAvailable())
	{
		Footpath->ToBeDeleted(false);
	}
	GameThing::ToBeDeleted(delete_now);
}

void GFootpathFinder::Done()
{
	StartNode = Footpath->nodes.head;
	DestNode = Footpath->nodes.GetLast();
	GFootpath::ConvertCreaturePlanToFootpath(holder, plan, StartNode, DestNode, NULL);
	for (GFootpathNode* node = Footpath->nodes.head; node != NULL; node = node->next)
	{
		if (!node->IsHidden())
		{
			node->Temporary = false;
		}
	}
	From->AddFootpath(Footpath);
	To->AddFootpath(Footpath);
	Footpath = NULL;
	ToBeDeleted(false);
}

void GFootpathFinder::Init()
{
	Point2D        start = ConvertMapCoordsToPoint2D(StartNode->coords);
	Point2D        dest = ConvertMapCoordsToPoint2D(DestNode->coords);
	MultiMapFixed* structure = From->CastMultiMapFixed();
	if (structure != NULL)
	{
		MoveOutOfObject::Move(&start, structure, dest);
	}
	structure = To->CastMultiMapFixed();
	if (structure != NULL)
	{
		MoveOutOfObject::Move(&dest, structure, start);
	}
	plan.SetStart(start, FOOTPATH_ROUTE_OBJECT_MARGIN, &holder, ROUTE_NODE_NO_AVOID, ROUTE_NODE_NO_AVOID, 0);
	plan.SetDest(dest, 0.0f, 0.0f, 0.0f, ROUTE_NODE_NO_AVOID, 0,
	             (start.GetRange(dest) + FOOTPATH_ROUTE_EXTRA_LENGTH) * FOOTPATH_ROUTE_LENGTH_FACTOR, true);
}
