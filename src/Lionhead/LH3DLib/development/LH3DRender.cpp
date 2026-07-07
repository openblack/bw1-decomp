#include "LH3DRender.h"

#include <d3d.h>

int __cdecl LH3DRender::SetRenderState(D3DRENDERSTATETYPE type, uint32_t value)
{
	HRESULT result = S_OK;

	if (g_RenderStates[type] != value)
	{
		result = Direct3DDevice7->SetRenderState(type, value);
		if (result != S_OK)
		{
			value = 0xffffffff;
		}
		g_RenderStates[type] = value;
	}
	return result;
}

int __cdecl LH3DRender::GetRenderState(D3DRENDERSTATETYPE type, uint32_t* value)
{
	HRESULT result = S_OK;

	if (g_RenderStates[type] == 0xffffffff)
	{
		result = Direct3DDevice7->GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, (LPDWORD)value);
		if (result == S_OK)
		{
			g_RenderStates[type] = *value;
		}
		else
		{
			g_RenderStates[type] = 0xffffffff;
		}
	}
	else
	{
		*value = g_RenderStates[type];
	}
	return result;
}
