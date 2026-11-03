#include "LH3DCT.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For malloc */
#include <string.h> /* For memset, memcpy */

#include "LH3DMem.h"     /* For struct LH3DMem */
#include "LH3DTech.h"    /* For Report3D__FPCce */
#include "LH3DTexture.h" /* For GLock, LH3DTexture */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHFileLength, LHLoadData, LHSaveData */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For struct LHSys */

#define LH3D_CT_DESC_FLAGS   (DDSD_CAPS | DDSD_HEIGHT | DDSD_WIDTH | DDSD_PIXELFORMAT)
#define LH3D_CT_LOW_RES_SIZE 128
#define LH3D_CT_SIZE         256
#define LH3D_CT_BLANK_BYTE   0xff
#define LH3D_CT_CAPS         (DDSCAPS_TEXTURE | DDSCAPS_SYSTEMMEMORY)

uint32_t LH3DCT::g_total_mem_used;

LH3DCT* LH3DCT::Create(DataOnDisk* data, bool32_t alpha)
{
	LH3DCT*        ct = (LH3DCT*)LH3DMem::AllocClear(sizeof(LH3DCT));
	DDSURFACEDESC2 desc;
	if (data != NULL)
	{
		memcpy(&desc, &data->Desc, sizeof(desc));
		desc.dwFlags = LH3D_CT_DESC_FLAGS;
		desc.ddsCaps.dwCaps = LH3D_CT_CAPS;
		Report3D__FPCce("SIZE = %d, %d\n", desc.dwWidth, desc.dwHeight);
	}
	else
	{
		uint32_t width;
		uint32_t height;
		if (LH3DTexture::g_b_use_low_res)
		{
			height = width = LH3D_CT_LOW_RES_SIZE;
		}
		else
		{
			height = width = LH3D_CT_SIZE;
		}
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		desc.dwFlags = LH3D_CT_DESC_FLAGS;
		desc.dwWidth = width;
		desc.dwHeight = height;
		desc.ddsCaps.dwCaps = LH3D_CT_CAPS;
		memset(&desc.ddpfPixelFormat, 0, sizeof(desc.ddpfPixelFormat));
		desc.ddpfPixelFormat.dwSize = sizeof(desc.ddpfPixelFormat);
		desc.ddpfPixelFormat.dwFlags = DDPF_FOURCC;
		desc.ddpfPixelFormat.dwFourCC = alpha ? MAKEFOURCC('D', 'X', 'T', '3') : MAKEFOURCC('D', 'X', 'T', '1');
	}
	LHSys::TheSystem.screen.PDirectDraw->CreateSurface(&desc, &ct->Surface, NULL);
	if (ct->Surface != NULL)
	{
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		GLock(ct->Surface, NULL, &desc, DDLOCK_WAIT, NULL);
		ct->Size = desc.dwLinearSize;
		if (desc.lpSurface != NULL)
		{
			if (data != NULL)
			{
				memcpy(desc.lpSurface, (uint8_t*)data + sizeof(DataOnDisk), desc.dwLinearSize);
			}
			else
			{
				memset(desc.lpSurface, LH3D_CT_BLANK_BYTE, desc.dwLinearSize);
			}
		}
		ct->Surface->Unlock(NULL);
	}
	g_total_mem_used += ct->Size;
	return ct;
}

void LH3DCT::Release()
{
	if (Surface != NULL)
	{
		Surface->Release();
		Surface = NULL;
	}
	g_total_mem_used -= Size;
	LH3DMem::Free(this);
}

LH3DCT::DataOnDisk* LH3DCT::CreateSavingData()
{
	DDSURFACEDESC2 desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	GLock(Surface, NULL, &desc, DDLOCK_WAIT, NULL);
	unsigned long size = desc.dwLinearSize + sizeof(DataOnDisk);
	DataOnDisk*   data = (DataOnDisk*)malloc(size);
	if (desc.dwLinearSize != 0)
	{
		data->Size = size;
		memcpy(&data->Desc, &desc, sizeof(desc));
		memcpy((uint8_t*)data + sizeof(DataOnDisk), desc.lpSurface, desc.dwLinearSize);
	}
	Surface->Unlock(NULL);
	return data;
}

void LH3DCT::SaveOnDisk(char* name)
{
	DataOnDisk* data = CreateSavingData();
	LHSaveData(name, data, data->Size, NULL);
	free(data);
}

LH3DCT* LH3DCT::CreateFromDisk(char* name)
{
	unsigned int length;
	char         message[0x400];
	if (LHFileLength(name, &length) != LH_FILE_RESULT_OK)
	{
		sprintf(message, "Can't load %s", name);
		return NULL;
	}
	DataOnDisk* data = (DataOnDisk*)LH3DMem::Alloc(length);
	LHLoadData(name, data, length, NULL);
	LH3DCT* ct = Create(data, false);
	LH3DMem::Free(data);
	return ct;
}
