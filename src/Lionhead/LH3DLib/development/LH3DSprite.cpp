#include "LH3DSprite.h"

#include "LH3DMem.h" /* For LH3DMem */

void LH3DSprite::Release()
{
	LH3DMem::Free(this);
}
