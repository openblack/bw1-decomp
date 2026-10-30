#ifndef BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H
#define BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/PhysicsData.h> /* For struct PhysicsData */

#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */

class EditorPhysics
{
public:
	// BW1W120 inlined BW1M119 012bbec0
	static PhysicsData* GetData() { return PhysicsConstants; }
	enum SymbolNumberingPadding
	{
		SYMBOL_NUMBERING_PADDING_0,
		SYMBOL_NUMBERING_PADDING_1,
		SYMBOL_NUMBERING_PADDING_2,
		SYMBOL_NUMBERING_PADDING_3,
		SYMBOL_NUMBERING_PADDING_4,
		SYMBOL_NUMBERING_PADDING_5,
		SYMBOL_NUMBERING_PADDING_6,
		SYMBOL_NUMBERING_PADDING_7,
	};
	// BW1W120 00cc63e0
	static PhysicsData PhysicsConstants[0x18];

	// Non-virtual methods

	// BW1W120 005249d0 BW1M119 012bbcb0
	static void Load();
};

#endif /* BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H */
