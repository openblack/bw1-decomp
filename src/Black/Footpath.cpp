#include "MaxFloat.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "LandscapeConstants.h"
#include "GameTimeConstants.h"
#include "Footpath.h"

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint, struct Point2D */

#include "FootpathFinder.h"   /* For struct GFootpathFinder */
#include "FootpathLink.h"     /* For struct GFootpathLink */
#include "FootpathLinkSave.h" /* For struct GFootpathLinkSave */
#include "FootpathNode.h"     /* For struct GFootpathNode */
#include "Game.h"             /* For GGame */
#include "GameOSFile.h"       /* For struct GameOSFile */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Landscape.h"        /* For GLandscape */
#include "Setup.h"            /* For GSetup */
#include "Utils.h"            /* For GUtils::GetDistanceInMetres */

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

void GFootpathNode::ToBeDeleted(bool32_t delete_now)
{
	followers.RemoveAll();
	Delete();
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
	else if (plan.State == RPLAN_STATE_SUCCEEDED && plan.Route0x68 != NULL)
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
