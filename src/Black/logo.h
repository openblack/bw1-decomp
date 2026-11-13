#ifndef BW1_DECOMP_LOGO_INCLUDED_H
#define BW1_DECOMP_LOGO_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

class LH3DObject;
class Object;

enum ALEX_FX_STAGE
{
	ALEX_FX_STAGE_INIT = 0,
	ALEX_FX_STAGE_UPDATE = 1,
	ALEX_FX_STAGE_RELEASE = 2,
};

class DanVortexObject3DContainer
{
public:
	// BW1W120 00d37cc0
	static LHLinkedList<LH3DObject*> Objects;
	// BW1W120 00d37cb9
	static DanVortexObject3DContainer Container;

	// BW1W120 inlined BW1M119 0110dcf0
	~DanVortexObject3DContainer() { Empty(); }

	// BW1W120 005fa5a0 BW1M119 null
	static void Add(Object* object);
	// BW1W120 005fa680 BW1M119 0110bc30
	static void Empty();
};

// BW1W120 005fa070 BW1M119 0110be40
void DoLogo();
// BW1W120 005fa000 BW1M119 0110bf80
void InputReset();
// BW1W120 005f89f0 BW1M119 0110c0c0
void RunAlexFX(int stage);

#endif /* BW1_DECOMP_LOGO_INCLUDED_H */
