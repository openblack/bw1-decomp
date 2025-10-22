#ifndef BW1_DECOMP_ROUTE_NODE_INCLUDED_H
#define BW1_DECOMP_ROUTE_NODE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct Point2D */

// Forward Declares

struct RPAvoid;

struct RouteNode
{
  struct Point2D start;  /* 0x0 */
  struct Point2D end;
  int field_0x10;
  int field_0x14;
  uint32_t field_0x18;
  int field_0x1c;
  float field_0x20;
  struct RouteNode* next;
  struct RouteNode* prev;
};
static_assert(sizeof(struct RouteNode) == 0x2c, "Data type is of wrong size");

// Constructors

// win1.41 00869100 mac 100a8ca0 RouteNode::RouteNode()
struct RouteNode* __fastcall __ct__9RouteNodeFP9RouteNode(struct RouteNode* this, const void* edx, struct RouteNode* param_1) asm("??0RouteNode@@QAE@PAV0@@Z");
// win1.41 00869150 mac 100a8c10 RouteNode::RouteNode(RouteNode *, int, Point2D const &, Point2D const &, int, int)
struct RouteNode* __fastcall __ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii(struct RouteNode* this, const void* edx, struct RouteNode* param_1, int param_2, struct Point2D* param_3, struct Point2D* param_4, int param_5, int param_6) asm("??0RouteNode@@QAE@PAV0@HABUPoint2D@@1HH@Z");

// Non-virtual methods

// win1.41 008691a0 mac 100a8ba0 RouteNode::GetLength(RPAvoid* )
float __fastcall GetLength__9RouteNodeFP7RPAvoid(struct RouteNode* this, const void* edx, struct RPAvoid* target) asm("?GetLength@RouteNode@@QAEMPAURPAvoid@@@Z");
// win1.41 008691c0 mac 100a89f0 RouteNode::GetArcLength(RPAvoid* )
float __fastcall GetArcLength__9RouteNodeFP7RPAvoid(struct RouteNode* this, const void* edx, struct RPAvoid* target) asm("?GetArcLength@RouteNode@@QAEMPAURPAvoid@@@Z");

#endif /* BW1_DECOMP_ROUTE_NODE_INCLUDED_H */
