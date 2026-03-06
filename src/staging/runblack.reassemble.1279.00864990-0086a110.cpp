#include "lhall/released/headers/RPFollow.h"
#include "lhall/released/headers/RPAvoid.h"
#include "lhall/released/headers/RouteNode.h"
#include "lhall/released/headers/Route.h"
#include "lionhead/lh3dlib/development/LH3DSky.h"

// win1.41 00864990 mac 100a95a0 RPFollow::MoveAlongRoute(void)
void RPFollow::MoveAlongRoute()
{
}

// win1.41 00864ba0 mac 100a92c0 RPFollow::FillPosAndHeading(Point2D &, float &, float)
void RPFollow::FillPosAndHeading(const Point2D& param_1, float& param_2, float param_3)
{
}

// win1.41 008690a0 mac 100a8da0 RPAvoid::PointIsTotallyInside(Point2D const &, float)
uint32_t RPAvoid::PointIsTotallyInside(const Point2D& param_1, float param_2)
{
    return 0;
}

// // win1.41 00869100 mac 100a8ca0 RouteNode::RouteNode()
// RouteNode::RouteNode()
// {
// }

// // win1.41 00869150 mac 100a8c10 RouteNode::RouteNode(RouteNode *, int, Point2D const &, Point2D const &, int, int)
// RouteNode::RouteNode(RouteNode* param_1, int param_2, Point2D* param_3, Point2D* param_4, int param_5, int param_6)
// {
// }

// win1.41 008691a0 mac 100a8ba0 RouteNode::GetLength(RPAvoid* )
float RouteNode::GetLength(RPAvoid* target)
{
    return 0;
}

// win1.41 008691c0 mac 100a89f0 RouteNode::GetArcLength(RPAvoid* )
float RouteNode::GetArcLength(RPAvoid* target)
{
    return 0;
}

// win1.41 00869380 mac 100a8790 Route::Route(void)
Route::Route()
{
}

// win1.41 008693a0 mac 100a8690 Route::Route(Route *)
Route::Route(Route* other)
{
}

// win1.41 00869430 mac 100a85f0 Route::~Route(void)
Route::~Route()
{
}

// win1.41 00869fa0 mac 100b37d0 LH3DSky::SetDayNightTimes(float, float, float, float)
void LH3DSky::SetDayNightTimes(float night, float dusk_start, float dusk_end, float day)
{
}
