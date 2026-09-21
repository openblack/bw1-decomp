#ifndef BW1_DECOMP_FALLING_SPELL_INCLUDED_H
#define BW1_DECOMP_FALLING_SPELL_INCLUDED_H

class FallingSpell
{
public:
	// Observed prefix only. Do not allocate using sizeof this partial declaration.
	unsigned char field_0x0[0x20];
	int           field_0x20;
	// BW1W120 005267d0 BW1M119 010d2cc0
	void Draw();
};

#endif /* BW1_DECOMP_FALLING_SPELL_INCLUDED_H */
