#ifndef BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H

class LH3DObject;

class LH3DLandscape
{
public:
	// Descriptive callback names. The texture caller at 00871d26 passes pixels/size in ECX/EDX
	// and block X/Z on the stack; Landscape's no-op callback therefore ends with RET 8.
	static void(__fastcall* TextureUpdateCallback)(void* pixels, int size, int block_x, int block_z); // 00c397f4
	static void(__fastcall* InitEnumCallback)(int block_x, int block_z);                              // 00fa76a0
	static LH3DObject* (*GetNextEnumCallback)();                                                      // 00fa76a4
	// BW1W120 00871f00 BW1M100 1000f830 LH3DLandscape::TextureUpdateThread(void)
	static void TextureUpdateThread();
	// BW1W120 00871220 BW1M100 100547b0 LH3DLandscape::Release(void)
	static void Release();
};

#endif /* BW1_DECOMP_LH3D_LANDSCAPE_INCLUDED_H */
