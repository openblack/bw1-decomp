#include "lionhead/lh3dlib/development/LH3DRender.h"

// win1.41 0082b220 mac 1003c460 LH3DRender::SetD3DMatrix(D3DMATRIX &, LHMatrix &)
void LH3DRender::SetD3DMatrix(D3DMATRIX* param_1, LHMatrix* param_2)
{
}

// win1.41 0082b2d0 mac inlined LH3DRender::SetProjMatrix(D3DMATRIX *, D3DMATRIX *, float, float, float)
void LH3DRender::SetProjMatrix(D3DMATRIX* param_1, D3DMATRIX* projection, float near_plane, float far_plane, float fov)
{
}

// win1.41 0082b570 mac 100a7970 LH3DRender::Close(void)
int LH3DRender::Close()
{
    return 0;
}

// win1.41 0082b9c0 mac 1002dbb0 LH3DRender::SetTextureStageState(unsigned long, D3DTEXTURESTAGESTATETYPE, unsigned long)
int LH3DRender::SetTextureStageState(uint32_t index, D3DTEXTURESTAGESTATETYPE type, uint32_t value)
{
    return 0;
}
