#ifndef BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H
#define BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

class GameOSFile;
class LHFile;
struct LH3DColor;

enum EXCLUSIONTYPE
{
	EXCLUSIONTYPE_DOME = 0x0,
	EXCLUSIONTYPE_CYLINDER = 0x1,
};

struct CameraExclusion
{
	CameraExclusion* next;
	CameraExclusion* NextNearby;
	uint32_t         id;
	LHPoint          pos;
	float            Radius;
	float            Height;
	EXCLUSIONTYPE    type;
	bool32_t         Saved;

	// Static data

	// BW1W120 00c5e160
	static CameraExclusion* ExclusionList;
	// BW1W120 009ce618
	static float Margin;

	// Static methods

	// BW1W120 00454960 BW1M119 011b1b80
	static CameraExclusion* CreateDome(unsigned long id, LHPoint pos, float radius, float height);
	// BW1W120 004549c0 BW1M119 null
	static CameraExclusion* CreateCylinder(unsigned long id, LHPoint pos, float radius);
	// BW1W120 00454a00 BW1M119 011b1af0
	static void Remove(CameraExclusion* exclusion);
	// BW1W120 00454a40 BW1M119 011b1a30
	static void RemoveByID(unsigned long id);
	// BW1W120 00454a70 BW1M119 011b1970
	static void RemoveAll();
	// BW1W120 00454aa0 BW1M119 011b18a0
	static void Adjust(CameraExclusion* exclusion, LHPoint pos, float radius, float height);
	// BW1W120 00454c10 BW1M119 011b0e00
	static void DebugDraw(CameraExclusion* selected, int selected_point);
	// BW1W120 00455320 BW1M119 011b0d50
	static void ResetExclusionFile(unsigned long id);
	// BW1W120 00455370 BW1M119 011b08c0
	static void LoadExclusionFile(LHFile* file, unsigned long id);
	// fabricated name: the Mac build only kept the loader.
	// BW1W120 00455520 BW1M119 null
	static void SaveExclusionFile(LHFile* file, unsigned long id);
	// BW1W120 00455660 BW1M119 011b01e0
	static void LoadExclusionFile(GameOSFile& file);
	// BW1W120 00455a10 BW1M119 011afbf0
	static void SaveExclusionFile(GameOSFile& file);
	// BW1W120 00455d50 BW1M119 01000050
	static bool InsideExclusion(LHPoint point);
	// BW1W120 00455e20 BW1M119 01051ac0
	static bool InsideInclusion(LHPoint from, LHPoint direction, LHPoint* closest, LHPoint* normal);
	// BW1W120 00460890 BW1M119 011ac070
	static void DrawCircleXZ(LHPoint& centre, float radius_x, float radius_z, float offset, LH3DColor* color);
	// BW1W120 00460940 BW1M119 011abea0
	static void DrawCircleXY(LHPoint& centre, float radius_x, float radius_y, float offset, LH3DColor* color);
	// BW1W120 004609f0 BW1M119 011abcd0
	static void DrawCircleYZ(LHPoint& centre, float radius_y, float radius_z, float offset, LH3DColor* color);
	// BW1W120 00460aa0 BW1M119 011abbf0
	static void DrawSphere(LHPoint& centre, float radius, LH3DColor* color);
	// BW1W120 00460ae0 BW1M119 011abb10
	static void DrawSphere(LHPoint& centre, float radius, float height, LH3DColor* color);

	// Constructors

	// BW1W120 00454bd0 BW1M119 null
	CameraExclusion();
	// BW1W120 00454b80 BW1M119 011b17e0
	CameraExclusion(unsigned long id, LHPoint& pos, float radius, float height, EXCLUSIONTYPE type);

	// Destructor

	// BW1W120 00454be0 BW1M119 011b1720
	~CameraExclusion();
};

static_assert(sizeof(CameraExclusion) == 0x28, "CameraExclusion size is incorrect");

#endif /* BW1_DECOMP_CAMERA_EXCLUSION_INCLUDED_H */
