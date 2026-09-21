#ifndef BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H
#define BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "InnerCamera.h" /* For struct InnerCamera */

class ChallengeRoomCamera : public InnerCamera
{
public:
	// Override methods

	// BW1W120 00785300 BW1M119 011bf8a0
	virtual void Init(char* param_1);
	// BW1W120 00785250 BW1M119 011bfa50
	virtual void Reinit();
	// BW1W120 007854c0 BW1M119 011bf840
	virtual void Close();
};

#endif /* BW1_DECOMP_CHALLENGE_ROOM_CAMERA_INCLUDED_H */
