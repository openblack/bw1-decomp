#ifndef BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H

// Forward Declares

struct LH3DMaterial;
struct LH3DMesh;
struct MaterialProperties;

// win1.41 0057dfb0 mac 102bf450 GJUtils::GetSharedMesh(const char *, const MaterialProperties &)
struct LH3DMesh* __cdecl GetSharedMesh__7GJUtilsFPCcRC18MaterialProperties(const char* path, const struct MaterialProperties* props) asm("?GetSharedMesh@GJUtils@@SAPAULH3DMesh@@PBDABUMaterialProperties@@@Z");
// win1.41 0057e120 mac 102bf2f0 GJUtils::SetMaterialProperties(LH3DMaterial *, MaterialProperties const &)
void __cdecl SetMaterialProperties__7GJUtilsFP12LH3DMaterialRC18MaterialProperties(struct LH3DMaterial* material, struct MaterialProperties* prop) asm("?SetMaterialProperties@GJUtils@@SAXPAULH3DMaterial@@ABUMaterialProperties@@@Z");
// win1.41 0057e1d0 mac 102bf210 GJUtils::SetMaterialProperties(LH3DMesh *, MaterialProperties const &)
void __cdecl SetMaterialProperties__7GJUtilsFP8LH3DMeshRC18MaterialProperties(struct LH3DMesh* mesh, struct MaterialProperties* prop) asm("?SetMaterialProperties@GJUtils@@SAXPAULH3DMesh@@ABUMaterialProperties@@@Z");

#endif /* BW1_DECOMP_GJ_BASE_UTILS_INCLUDED_H */
