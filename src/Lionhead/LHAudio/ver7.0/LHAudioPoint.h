#ifndef BW1_DECOMP_LH_AUDIO_POINT_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For sqrt */

class LHAudioPoint
{
public:
	float x;
	float y;
	float z;

	// BW1W120 inlined BW1M119 inlined
	void Normalise()
	{
		if (x != 0.0f || y != 0.0f || z != 0.0f)
		{
			float scale = 1.0f / (float)sqrt(z * z + y * y + x * x);
			x *= scale;
			y *= scale;
			z *= scale;
		}
	}
	// BW1W120 inlined BW1M119 inlined
	float DotProduct(const LHAudioPoint& other) const { return x * other.x + y * other.y + z * other.z; }
};
static_assert(sizeof(LHAudioPoint) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_POINT_INCLUDED_H */
