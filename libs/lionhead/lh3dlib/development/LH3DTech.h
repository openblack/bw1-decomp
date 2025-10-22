#ifndef BW1_DECOMP_LH3D_TECH_INCLUDED_H
#define BW1_DECOMP_LH3D_TECH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "LHCoord.h" /* For struct LHCoord */
#include "LHPoint.h" /* For struct Point2D */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
struct LHMatrix;
struct LHPoint;

struct InfoTransform
{
  struct LHCoord resolution;  /* 0x0 */
  float aspect_ratio_x_over_y;
  struct Point2D half_res;
  struct Point2D inv_half_res;  /* 0x14 */
  float inv_half_tan_fov_y;
  float inv_half_tan_fov_x;  /* 0x20 */
  float cos_half_fov_sqr;
  float field_0x28;
  float cos_half_fov;
  float field_0x30;
  float inv_aspect_sqr_hypo_inv_times_inv_aspect;
  float inv_aspect_sqr_hypo_inv;
};
static_assert(sizeof(struct InfoTransform) == 0x3c, "Data type is of wrong size");

// win1.41 00819030 mac 100c0920 LH3DTech::UpdateViewPort(long, long)
void __fastcall UpdateViewPort__8LH3DTechFll(int param_1, int param_2) asm("?UpdateViewPort@LH3DTech@@SAXJJ@Z");
// win1.41 00819390 mac 10be2a38 LH3DTech::ProjectPoint(LHPoint *, int *, int *, float *)
uint32_t __fastcall ProjectPoint__8LH3DTechFP7LHPointPiPiPf(struct LHPoint* param_1, int* param_2, int* param_3, float* param_4) asm("?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z");
// win1.41 008195b0 mac 10011b20 LH3DTech::ChangeFov(float)
void __stdcall ChangeFov__8LH3DTechFf(float fov);
// win1.41 00819690 mac 10011d80 LH3DTech::UpdateWorldToCamera(LHMatrix &, LHPoint &, LHPoint &, bool)
void __fastcall UpdateWorldToCamera__8LH3DTechFR8LHMatrixR7LHPointR7LHPointb(struct LHMatrix* param_1_00, struct LHPoint* param_2_00, struct LHPoint* param_1, bool param_2) asm("?UpdateWorldToCamera@LH3DTech@@SAXAAULHMatrix@@AAULHPoint@@1_N@Z");
// win1.41 inlined mac 10093230 LH3DTech::GetDeltaTime(void)
uint32_t __cdecl GetDeltaTime__8LH3DTechFv(void) asm("?GetDeltaTime@LH3DTech@@SAIXZ");
// win1.41 00819920 mac 10034c10 LH3DTech::UpdateCamera(LHPoint const &, LHPoint const &)
void __fastcall UpdateCamera__8LH3DTechFRC7LHPointRC7LHPoint(const struct LHPoint* param_1, const struct LHPoint* param_2) asm("?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z");
// win1.41 00818c60 mac 100c0a80 LH3DTech::RenderInitialization(long, long)
void __cdecl RenderInitialization__8LH3DTechFll(int param_0, int param_1) asm("?RenderInitialization@LH3DTech@@SAXJJ@Z");
// win1.41 0081c5c0 mac 100337d0 LH3DTech::Draw3DScreenTriangle(long, LHPoint *, LH3DColor *, float *, long, long *, LH3DMaterial *, int)
void __fastcall Draw3DScreenTriangle__8LH3DTechFlP7LHPointP9LH3DColorPflPlP12LH3DMateriali(uint32_t num_points, struct LHPoint* positions, struct LH3DColor* colors, float* uvs, uint32_t num_indices, uint32_t* indices, struct LH3DMaterial* material, uint32_t param_8) asm("?Draw3DScreenTriangle@LH3DTech@@SAXJPAULHPoint@@PAULH3DColor@@PAMJPAJPAULH3DMaterial@@H@Z");
// win1.41 0081bbd0 mac 100be300 Report3D(char const *,...)
void __cdecl Report3D__FPCce(const char* fmt, ... );

#endif /* BW1_DECOMP_LH3D_TECH_INCLUDED_H */
