#ifndef BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H
#define BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHMatrix.h> /* For struct LHMatrix */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "CameraMode.h" /* For enum CAMERA_MODE_HAND_STATUS, enum CAMERA_MODE_MOUSE_STATUS, struct CameraMode, struct CameraModeVftable */

// Forward Declares

struct CameraExclusion;
class GArena;
class GCamera;

class CameraModeNew3: public CameraMode
{
public:
    uint32_t field_0x8;
    LHPoint origin;
    LHPoint heading; /* 0x18 */
    LHPoint field_0x24;
    LHPoint field_0x30;
    uint32_t field_0x3c;
    uint32_t field_0x40;
    bool32_t has_fight;
    GArena* arena;
    uint8_t field_0x4c;
    uint8_t field_0x4d;
    uint8_t field_0x4e;
    uint8_t field_0x4f;
    float yaw_0; /* 0x50 */
    float pitch_0;
    float fight_distance;
    int fight_time_left;
    int time_in_arena; /* 0x60 */
    CameraModeNew3_fight_status_t fight_status;
    LHPoint field_0x68;
    float field_0x74;
    float elapsed_time;
    LHPoint rotate_point;
    bool rotate_around_point; /* 0x88 */
    CAMERA_MODE_MOUSE_STATUS mouse_buttons;
    uint32_t tricon_0x90;
    uint32_t tricon_0x94;
    Point2D from_screen_centre;
    Point2D from_screen_centre_abs; /* 0xa0 */
    LHCoord mouse_delta;
    LHCoord mouse_pos_current; /* 0xb0 */
    LHCoord rotate_around_mouse_pos;
    LHCoord mouse_pos_1; /* 0xc0 */
    bool screen_centre_hit;
    LHPoint mouse_hit_point;
    LHPoint last_grab_mouse_hit_point; /* 0xd8 */
    float yaw_1; /* 0xe4 */
    float pitch_1;
    float perp_distance_0xec;
    LHPoint screen_centre_hit_point; /* 0xf0 */
    float distance_0xfc;
    uint8_t field_0x100;
    uint8_t field_0x101;
    uint8_t field_0x102;
    uint8_t field_0x103;
    LHPoint field_0x104;
    LHPoint field_0x110;
    LHPoint field_0x11c;
    int field_0x128;
    LHPoint heading_0x12c;
    LHPoint field_0x138;
    bool hand_hit; /* 0x144 */
    uint8_t field_0x145;
    uint8_t field_0x146;
    uint8_t field_0x147;
    bool hit_0x148;
    LHPoint field_0x14c;
    double field_0x158;
    LHPoint field_0x160;
    LHPoint field_0x16c;
    LHMatrix field_0x178;
    float distance_0x1a8;
    CAMERA_MODE_HAND_STATUS hand_status;
    LHCoord field_0x1b0;
    Point2D field_0x1b8;
    float length_0x1c0;
    float vertical_distance;
    LHPoint fallback_origin;
    LHPoint fallback_heading; /* 0x1d4 */
    LHPoint field_0x1e0;
    LHPoint origin_0x1ec;
    LHPoint field_0x1f8;
    LHPoint heading_0x204;
    Zoomer field_0x210;
    Zoomer3d field_0x240;
    bool field_0x2d0;
    uint8_t field_0x2d1;
    uint8_t field_0x2d2;
    uint8_t field_0x2d3;
    LHCoord mouse_pos_previous;
    LHCoord field_0x2dc;
    float heading_distance; /* 0x2e4 */
    float idle_time;
    int field_0x2ec;
    int field_0x2f0;
    CameraExclusion* camera_exclusion;
    uint32_t field_0x2f8;
    uint32_t field_0x2fc;

    // Override methods

    // win1.41 0045a960 mac 1003a4f0 CameraModeNew3::Update(void)
    virtual void Update();

    // Static methods

    // win1.41 00458db0 mac 1007c250 CameraModeNew3::CalcPerpDistance(LHPoint &, LHPoint &, LHPoint &)
    static float CalcPerpDistance(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3);
    // win1.41 00458f40 mac 10062a70 CameraModeNew3::FindBestAngle(float, float, LHPoint &, float &, float *)
    static float FindBestAngle(float param_1, float param_2, float* param_3, float* param_4, float* param_5);

    // Constructors

    // win1.41 004572e0 mac 101a6040 CameraModeNew3::CameraModeNew3(GCamera *)
    CameraModeNew3(GCamera* camera);

    // Non-virtual methods

    // win1.41 00459230 mac 10025a60 CameraModeNew3::UpdateTricons(void)
    void UpdateTricons();
    // win1.41 00459610 mac 101a4670 CameraModeNew3::UpdateClickParams(LHPoint &, LHPoint &, bool)
    void UpdateClickParams(const LHPoint* param_1, const LHPoint* param_2, bool param_3);
    // win1.41 00459c30 mac 10037970 CameraModeNew3::
    float GetAltitude(LHPoint* param_1);
    // win1.41 00459d20 mac 101a4380 CameraModeNew3::SetAltitudeAndNormal(LHPoint &, LHPoint &)
    void SetAltitudeAndNormal(LHPoint* param_1, LHPoint* normal);
    // win1.41 00459f10 mac 1007e670 CameraModeNew3::DragFocusOntoLand(LHPoint &, LHPoint &)
    void DragFocusOntoLand(LHPoint* param_1, LHPoint* param_2);
    // win1.41 0045a080 mac 101a3db0 CameraModeNew3::UpdateStrafe(LHPoint &, LHPoint &, float &, float &, float, unsigned long)
    bool UpdateStrafe(LHPoint* param_1, LHPoint* param_2, float* param_3, float* param_4, float param_5, uint32_t param_6);
    // win1.41 0045a390 mac 100098e0 CameraModeNew3::WantToQuitFight(LHPoint, LHPoint, float)
    bool WantToQuitFight(LHPoint param_1, LHPoint param_2, float param_3);
    // win1.41 0045a4d0 mac 101a3910 CameraModeNew3::StartFight(GArena *)
    void StartFight(GArena* arena);
    // win1.41 0045a830 mac inlined CameraModeNew3::EndFightNow(int)
    void EndFightNow(int param_1);
};

#endif /* BW1_DECOMP_CAMERA_MODE_NEW3_INCLUDED_H */
