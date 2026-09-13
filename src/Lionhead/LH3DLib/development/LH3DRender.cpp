#include "LH3DRender.h"

#include <d3d.h>

// TODO: Reconcile the original Render data split before source linkage.
int  g_frame_rate_stats = 5;
bool g_enable_callbacks = true;

int __cdecl LH3DRender::SetRenderState(D3DRENDERSTATETYPE type, uint32_t value)
{
	HRESULT result = S_OK;

	if (g_render_states[type] != value)
	{
		result = Direct3DDevice7->SetRenderState(type, value);
		if (result != S_OK)
		{
			value = 0xffffffff;
		}
		g_render_states[type] = value;
	}
	return result;
}

int __cdecl LH3DRender::GetRenderState(D3DRENDERSTATETYPE type, uint32_t* value)
{
	HRESULT result = S_OK;

	if (g_render_states[type] == 0xffffffff)
	{
		result = Direct3DDevice7->GetRenderState(D3DRENDERSTATE_ZWRITEENABLE, (LPDWORD)value);
		if (result == S_OK)
		{
			g_render_states[type] = *value;
		}
		else
		{
			g_render_states[type] = 0xffffffff;
		}
	}
	else
	{
		*value = g_render_states[type];
	}
	return result;
}
