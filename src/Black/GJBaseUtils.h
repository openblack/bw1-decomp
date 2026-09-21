#ifndef BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H

// Forward Declares

struct LH3DMaterial;
struct LH3DMesh;
struct MaterialProperties;

// BW1W120 0057dfb0 BW1M119 012c2db0
struct LH3DMesh* __cdecl GetSharedMesh__7GJUtilsFPCcRC18MaterialProperties(
	const char*                      path,
	const struct MaterialProperties* props) asm("?GetSharedMesh@GJUtils@@SAPAULH3DMesh@@PBDABUMaterialProperties@@@Z");
// BW1W120 0057e120 BW1M119 012c2c50
void __cdecl SetMaterialProperties__7GJUtilsFP12LH3DMaterialRC18MaterialProperties(
	struct LH3DMaterial* material,
	struct MaterialProperties*
		prop) asm("?SetMaterialProperties@GJUtils@@SAXPAULH3DMaterial@@ABUMaterialProperties@@@Z");
// BW1W120 0057e1d0 BW1M119 012c2b70
void __cdecl SetMaterialProperties__7GJUtilsFP8LH3DMeshRC18MaterialProperties(
	struct LH3DMesh*           mesh,
	struct MaterialProperties* prop) asm("?SetMaterialProperties@GJUtils@@SAXPAULH3DMesh@@ABUMaterialProperties@@@Z");

#endif /* BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H */
