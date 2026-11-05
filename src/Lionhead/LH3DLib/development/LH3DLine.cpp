#include "LH3DLine.h"

#include "LH3DMaterial.h"
#include "LH3DRender.h"

LH3DMaterial* LH3DLine::g_material_line;

void LH3DLine::Open()
{
	g_material_line = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA, NULL);
	g_material_line->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
}

void LH3DLine::Close()
{
	delete g_material_line;
}

void LH3DLine::AddLine(const LHPoint& from, const LHPoint& to, LH3DColor* from_color, LH3DColor* to_color) {}

void LH3DLine::DrawAllPreStored() {}
