#ifndef BW1_DECOMP_CAMERA_STORE_INCLUDED_H
#define BW1_DECOMP_CAMERA_STORE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// TODO: placement unproven: CameraStore::Set is in Camera.cpp, but Object.cpp (through Town.h) never saw Camera.h's
// LH3DTech::g_camera
struct CameraStore
{
	LHPoint Position;
	LHPoint Focus;

	// Non-virtual methods

	// BW1W120 00441840 BW1M119 011a3b60
	void Set(LHPoint& position, LHPoint& focus);
};

#endif /* BW1_DECOMP_CAMERA_STORE_INCLUDED_H */
