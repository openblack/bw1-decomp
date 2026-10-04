#ifndef BW1_DECOMP_EDITOR_ICON_PDM_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_PDM_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHRegion.h> /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>    /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#if defined(VERSION_BW1W100)
#define EDITOR_ICON_PDM_SOURCE_FILE "C:\\dev\\black\\EditorIconPDM.h"
#elif defined(VERSION_BW1W110)
#define EDITOR_ICON_PDM_SOURCE_FILE "C:\\dev\\Black\\EditorIconPDM.h"
#else
#define EDITOR_ICON_PDM_SOURCE_FILE "C:\\dev\\MP\\Black\\EditorIconPDM.h"
#endif

struct LH3DColor;

class EditorIconShow
{
public:
	// BW1W120 00414c20 BW1M119 010a5760
	virtual LHRegion* GetRegion();

	uint8_t field_0x4[0x144];

	// BW1W120 0051fb20 BW1M119 012bab40
	EditorIconShow(LHRegion region, const char* text, unsigned long param_3, LH3DColor* text_color,
	               LH3DColor* active_color, LH3DColor* inactive_color, LH3DColor* hilite_color);
};

class EditorIconPDM
{
public:
	// BW1W120 00414c20 BW1M119 010a5760
	virtual LHRegion* GetRegion();
	virtual void      vfunc1();
	virtual void      vfunc2();
	virtual void      vfunc3();
	virtual void      vfunc4();
	virtual void      vfunc5();
	virtual void      vfunc6();
	virtual void      vfunc7();
	virtual void      vfunc8();
	virtual void      vfunc9();
	virtual void      vfunc10();
	virtual void      vfunc11();
	virtual void      vfunc12();
	virtual void      vfunc13();
	virtual void      vfunc14();
	virtual void      vfunc15();
	virtual void      vfunc16();
	virtual void      vfunc17();
	virtual void      vfunc18();
	virtual void      vfunc19();
	virtual void      vfunc20();
	// BW1W120 005221b0
	virtual ~EditorIconPDM();

	uint8_t                       field_0x4[0x184];
	LHLinkedList<EditorIconShow*> Items; /* 0x188 */

	// BW1W120 005224e0
	EditorIconPDM* AddPDM(char* text, int param_2, int param_3);

	// TODO: fabricated name; the header inline that appends one show icon to the menu.
	void AddShow(const char* text)
	{
		Items.AddToEnd(new (EDITOR_ICON_PDM_SOURCE_FILE, 43)
		                   EditorIconShow(*GetRegion(), text, 2, NULL, NULL, NULL, NULL));
	}
};

#endif /* BW1_DECOMP_EDITOR_ICON_PDM_INCLUDED_H */
