#ifndef BW1_DECOMP_HELP_EDITOR_INCLUDED_H
#define BW1_DECOMP_HELP_EDITOR_INCLUDED_H

// Declaration-only view: do not allocate until the editor layout is recovered.
// TODO: Class spelling inferred from the constructor's HelpEditor.cpp allocation string.
class HelpEditor
{
public:
	// BW1W120 005c4410. Destroys the PDMStrip at +8, then frees it.
	~HelpEditor();
};

#endif /* BW1_DECOMP_HELP_EDITOR_INCLUDED_H */
