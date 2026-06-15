#ifndef BW1_DECOMP_INNER_CAMERA_INCLUDED_H
#define BW1_DECOMP_INNER_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer3d */

// Forward Declares

struct InnerRoom;
struct LH3DCamera;
struct LH3DMesh;

class InnerCamera
{
public:
    Zoomer3d zoomer_pos; /* 0x4 */
    Zoomer3d zoomer_foc; /* 0x94 */
    uint32_t field_0x124;
    uint32_t field_0x128;
    int32_t field_0x12c;
    uint8_t field_0x130[0x4];
    uint32_t field_0x134;
    LHCoord* field_0x138;
    uint32_t field_0x13c;
    uint32_t field_0x140;
    float field_0x144;
    uint32_t field_0x148;
    uint32_t field_0x14c;
    uint32_t field_0x150;
    uint32_t field_0x154;
    int field_0x158;
    int field_0x15c;
    char filename[0x100]; /* 0x160 */
    LHPoint field_0x260;
    LHPoint field_0x26c;
    Zoomer3d field_0x278;
    Zoomer3d field_0x308;
    uint8_t field_0x398;
    uint8_t field_0x399;
    uint8_t field_0x39a;
    uint8_t field_0x39b;
    LHPoint pos_0x39c;
    LHPoint foc_0x3a8;
    uint8_t field_0x3b4[0x18];
    float field_0x3cc;
    float field_0x3d0;
    LHPoint current_pos;
    LHPoint current_foc; /* 0x3e0 */
    Point2D field_0x3ec;
    uint8_t field_0x3f4;
    uint8_t field_0x3f5[0x3];
    uint32_t field_0x3f8;
    float field_0x3fc;
    float field_0x400;
    uint8_t field_0x404[0x1c];
    float field_0x420;
    float field_0x424;
    uint32_t field_0x428;
    LHPoint field_0x42c;
    uint32_t field_0x438;
    LH3DCamera* lh3dcamera;
    uint8_t field_0x440[0xc];
    int32_t field_0x44c;
    uint32_t field_0x450;
    LHPoint field_0x454;
    LHPoint field_0x460;

    // Override methods

    // win1.41 00797420 mac 10539420 InnerCamera::ReloadCamera(char *)
    virtual void ReloadCamera(char* param_1);
    // win1.41 00796920 mac 10539d10 InnerCamera::PreDraw(void)
    virtual void PreDraw();
    // win1.41 00797140 mac 10539520 InnerCamera::Init(char *)
    virtual void Init(char* param_1);
    // win1.41 007885f0 mac 10287a60 InnerCamera::Reinit(void)
    virtual void Reinit();
    // win1.41 007974a0 mac 105393b0 InnerCamera::Close(void)
    virtual void Close();
    // win1.41 007969e0 mac 10539ae0 InnerCamera::CalcDoorHit(InnerRoom *, LHCoord, float, bool)
    virtual uint32_t CalcDoorHit(InnerRoom* param_1, LHCoord param_2, float param_3, bool param_4);
    // win1.41 00796b60 mac 10539710 InnerCamera::Update(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void Update(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
    // win1.41 00795ce0 mac 10539fe0 InnerCamera::UpdateMain(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void UpdateMain(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
    // win1.41 007965f0 mac 10539e30 InnerCamera::UpdateState(InnerRoom *, float, int, int, LHCoord const &, bool)
    virtual void UpdateState(InnerRoom* param_1, float param_2, int param_3, int param_4, const LHCoord* param_5, bool param_6);
    // win1.41 00795570 mac 1053b120 InnerCamera::FocusOnSubMesh(LH3DMesh *, int, float, float, float)
    virtual void FocusOnSubMesh(LH3DMesh* param_1, int param_2, float param_3, float param_4, float param_5);
    // win1.41 007957c0 mac 1053ada0 InnerCamera::TriggerIntro(bool, Zoomer3d *, Zoomer3d *)
    virtual void TriggerIntro(bool param_1, Zoomer3d* param_2, Zoomer3d* param_3);
    // win1.41 007974d0 mac 10539320 InnerCamera::__dt(void)
    virtual ~InnerCamera();

    // Constructors

    // win1.41 007974f0 mac 10539250 InnerCamera::InnerCamera(void)
    InnerCamera();
};

#endif /* BW1_DECOMP_INNER_CAMERA_INCLUDED_H */
