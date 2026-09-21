#ifndef BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H
#define BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/LHKeyBoard.h>                    /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <re_common.h>                            /* For bool32_t */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

struct SubMeshDrawData;

class SubOptionEntry
{
public:
};

class SubOptionEntryButton : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078db60 BW1M119 01118e50
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078dc40 BW1M119 01118d30
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078dcd0 BW1M119 01118ce0
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryCheckBoxChecked : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078deb0 BW1M119 011187b0
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078df60 BW1M119 01118690
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078dff0 BW1M119 01118630
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryCheckBoxUnChecked : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078dd20 BW1M119 01118b00
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078ddd0 BW1M119 011189e0
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078de60 BW1M119 01118980
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryFrame : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e7a0 BW1M119 011174b0
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e850 BW1M119 01117450
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e860 BW1M119 01117400
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryListBox : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e5d0 BW1M119 01117820
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e6a0 BW1M119 011176d0
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e750 BW1M119 01117680
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryPicture : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e0c0 BW1M119 01118290
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e190 BW1M119 01118190
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e1f0 BW1M119 01118140
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryScroll : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e250 BW1M119 01117f50
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e320 BW1M119 01117e00
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e3c0 BW1M119 01117db0
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntrySlider : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e040 BW1M119 01118530
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e060 BW1M119 011184d0
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e070 BW1M119 01118480
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

class SubOptionEntryText : public SubOptionEntry
{
public:
	// Override methods

	// BW1W120 0078e410 BW1M119 01117bd0
	virtual void GetSubMeshData(SubMeshDrawData& param_1, int param_2, int param_3);
	// BW1W120 0078e4e0 BW1M119 01117b70
	virtual uint32_t UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2, int param_3);
	// BW1W120 0078e4f0 BW1M119 01117a20
	virtual uint32_t UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

#endif /* BW1_DECOMP_SUB_OPTION_ENTRY_INCLUDED_H */
