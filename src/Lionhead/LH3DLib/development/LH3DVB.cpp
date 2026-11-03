#include "LH3DVB.h"

#include <d3d.h>
#include <ddraw.h>

#include "LH3DRender.h" /* For LH3DRender */
#include "LH3DVertex.h" /* For Vertex3DMT */

#define LH3D_VB_FVF    (D3DFVF_XYZ | D3DFVF_NORMAL | D3DFVF_TEX1)
#define LH3D_VB_FVF_MT (D3DFVF_XYZ | D3DFVF_NORMAL | D3DFVF_TEX2)

void*                   LH3DVB::vbpooldataMT;
bool32_t                LH3DVB::inited;
void*                   LH3DVB::vbpooldata;
IDirect3DVertexBuffer7* LH3DVB::vbpoolMT;
IDirect3DVertexBuffer7* LH3DVB::vbpool;
int                     LH3DVB::curvmt;
int                     LH3DVB::curv;
bool32_t                LH3DVB::newframemt;
bool32_t                LH3DVB::newframe;

HRESULT LH3DVB::Init()
{
	if (inited)
	{
		return D3D_OK;
	}
	inited = true;
	D3DVERTEXBUFFERDESC desc;
	desc.dwSize = sizeof(desc);
	desc.dwCaps = D3DVBCAPS_WRITEONLY;
	desc.dwFVF = LH3D_VB_FVF;
	desc.dwNumVertices = LH3D_VB_VERTEX_COUNT;
	vbpool = NULL;
	HRESULT result = LH3DRender::D3D->CreateVertexBuffer(&desc, &vbpool, 0);
	if (result != D3D_OK)
	{
		Close();
	}
	D3DVERTEXBUFFERDESC descMT;
	descMT.dwSize = sizeof(descMT);
	descMT.dwCaps = D3DVBCAPS_WRITEONLY;
	descMT.dwFVF = LH3D_VB_FVF_MT;
	descMT.dwNumVertices = LH3D_VB_VERTEX_COUNT;
	vbpoolMT = NULL;
	result = LH3DRender::D3D->CreateVertexBuffer(&descMT, &vbpoolMT, 0);
	if (result != D3D_OK)
	{
		Close();
	}
	newframe = true;
	newframemt = true;
	curv = 0;
	curvmt = 0;
	return result;
}

void LH3DVB::Close()
{
	if (inited)
	{
		inited = false;
		if (vbpool != NULL)
		{
			vbpool->Release();
		}
		vbpool = NULL;
		if (vbpoolMT != NULL)
		{
			vbpoolMT->Release();
		}
		vbpoolMT = NULL;
	}
}

void* LH3DVB::Lock(int vertex_count)
{
	if (vertex_count < 0 || vertex_count > LH3D_VB_MAX_LOCK_VERTICES)
	{
		return NULL;
	}
	if (curv + vertex_count > LH3D_VB_VERTEX_COUNT)
	{
		curv = 0;
		newframe = true;
	}
	if (vbpool->Lock((newframe ? DDLOCK_DISCARDCONTENTS : DDLOCK_NOOVERWRITE) | DDLOCK_WRITEONLY | DDLOCK_WAIT |
	                     DDLOCK_SURFACEMEMORYPTR,
	                 &vbpooldata, NULL) != D3D_OK)
	{
		return NULL;
	}
	newframe = false;
	return (LH3DVBVertex*)vbpooldata + curv;
}

void LH3DVB::UnlockAndDraw(int vertex_count, uint16_t* indices, int index_count)
{
	if (LH3DRender::g_b_need_anim_uv && vbpooldata != NULL)
	{
		LH3DVBVertex* vertex = (LH3DVBVertex*)vbpooldata + curv;
		for (int i = 0; i < vertex_count; i++)
		{
			vertex[i].uv.x += LH3DRender::g_adu;
			vertex[i].uv.y += LH3DRender::g_adv;
		}
	}
	if (vbpool->Unlock() == D3D_OK)
	{
		LH3DRender::D3DDevice->DrawIndexedPrimitiveVB(D3DPT_TRIANGLELIST, vbpool, curv, vertex_count, indices,
		                                              index_count, 0);
		curv += vertex_count;
	}
}

void* LH3DVB::LockMT(int vertex_count)
{
	if (vertex_count < 0 || vertex_count > LH3D_VB_MAX_LOCK_VERTICES)
	{
		return NULL;
	}
	if (curvmt + vertex_count > LH3D_VB_VERTEX_COUNT)
	{
		curvmt = 0;
		newframemt = true;
	}
	if (vbpoolMT->Lock((newframemt ? DDLOCK_DISCARDCONTENTS : DDLOCK_NOOVERWRITE) | DDLOCK_WRITEONLY | DDLOCK_WAIT |
	                       DDLOCK_SURFACEMEMORYPTR,
	                   &vbpooldataMT, NULL) != D3D_OK)
	{
		return NULL;
	}
	newframemt = false;
	return (Vertex3DMT*)vbpooldataMT + curvmt;
}

void LH3DVB::UnlockAndDrawMT(int vertex_count, uint16_t* indices, int index_count)
{
	if (vbpoolMT->Unlock() == D3D_OK)
	{
		LH3DRender::D3DDevice->DrawIndexedPrimitiveVB(D3DPT_TRIANGLELIST, vbpoolMT, curvmt, vertex_count, indices,
		                                              index_count, 0);
		curvmt += vertex_count;
	}
}
