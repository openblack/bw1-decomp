#ifndef BW1_DECOMP_R_PLAN_INCLUDED_H
#define BW1_DECOMP_R_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct Point2D */

// Forward Declares

struct RPHolder;
struct Route;
struct VisitBlock;

struct RPlan
{
    RPHolder* holder; /* 0x0 */
    float field_0x4;
    int field_0x8;
    int field_0xc;
    int field_0x10;
    int field_0x14;
    int field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    Point2D field_0x24;
    Point2D field_0x2c;
    Point2D field_0x34;
    float field_0x3c;
    float field_0x40;
    float field_0x44;
    float field_0x48;
    float field_0x4c;
    uint32_t field_0x50;
    uint32_t field_0x54;
    VisitBlock* visit_blocks;
    float field_0x5c;
    Route* route_0x60;
    uint32_t field_0x64;
    Route* route_0x68;
    Route* route_0x6c;
    Route* route_0x70;

    // Constructors

    // win1.41 0086e0d0 mac 100aefe0 RPlan::RPlan(void)
    RPlan();

    // Non-virtual methods

    // win1.41 0086e100 mac 100aee30 RPlan::FreeRoutes(void)
    void FreeRoutes();
    // win1.41 0086e200 mac 100aed70 RPlan::SetStart(Point2D const &, float, RPHolder *, int, int, int)
    void SetStart(Point2D* param_1, float param_2, RPHolder* holder, int param_4, int param_5, int param_6);
    // win1.41 0086e250 mac 100ae750 RPlan::SetDest(Point2D const &, float, float, float, int, int, float, int)
    void SetDest(const Point2D* param_1, float param_2, float param_3, float param_4, int param_5, int param_6, float param_7, int param_8);
    // win1.41 0086e9a0 mac 1061b3ec RPlan::GameTurnUpdate(int)
    void GameTurnUpdate(int param_2);
    // win1.41 0086e0f0 mac 100aef60 RPlan::~RPlan(void)
    ~RPlan();
};

#endif /* BW1_DECOMP_R_PLAN_INCLUDED_H */
