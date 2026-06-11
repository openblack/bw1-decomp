#ifndef BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H
#define BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */

// Forward Declares

struct GCameraEditor__CameraBin;
struct LH3DWay;

class GCameraEditor: public Prss
{
public:
    uint8_t field_0x10[0x18];

    // Static methods

    // win1.41 00445050 mac 1019bdb0 GCameraEditor::FinalDraw(void)
    static void FinalDraw();
    // win1.41 00445530 mac 1019b6c0 GCameraEditor::CreateSegFile(void)
    static void CreateSegFile();
    // win1.41 00445e10 mac 1019b440 GCameraEditor::Draw3DPart(void)
    static void Draw3DPart();
    // win1.41 00446fe0 mac 1019adf0 GCameraEditor::LoadCameraFromHD(long, GCameraEditor::CameraBin &)
    static void LoadCameraFromHD(int param_1, GCameraEditor__CameraBin* param_2);
};

struct Q213GCameraEditor9InfoTrack
{
    int field_0x0;
    uint32_t field_0x4;
    int field_0x8;
    uint32_t field_0xc;
    Q213GCameraEditor9InfoTrack* next; /* 0x10 */
    uint32_t field_0x14;
    LHPoint field_0x18;
    LHPoint field_0x24;
    int field_0x30;
    LH3DWay* field_0x34;
    int32_t* field_0x38;

    // Non-virtual methods

    // win1.41 00446450 mac 1019b070 GCameraEditor::InfoTrack::Draw(void)
    void Draw();
};

#endif /* BW1_DECOMP_CAMERA_EDITOR_INCLUDED_H */
