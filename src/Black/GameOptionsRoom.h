#ifndef BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H
#define BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "PictureRoom.h" /* For struct PictureRoomBase */

// Forward Declares

class TempleRoom;

class GameOptionsRoom: public PictureRoomBase
{
public:

    // Override methods

    // win1.41 0078d8f0 mac 102ffdb0 GameOptionsRoom::IsAvailable(void)
    virtual bool IsAvailable();
    // win1.41 0079a230 mac inlined GameOptionsRoom::DrawAdditional(bool)
    virtual void DrawAdditional(bool param_1);
    // win1.41 00799f80 mac inlined GameOptionsRoom::PreDraw(void)
    virtual void PreDraw();
    // win1.41 0078d810 mac 10300060 GameOptionsRoom::Draw(void)
    virtual void Draw();
    // win1.41 00799ed0 mac inlined GameOptionsRoom::DrawHand(void)
    virtual void DrawHand();
    // win1.41 0078d860 mac 102ffe70 GameOptionsRoom::Update(void)
    virtual void Update();
    // win1.41 0078d820 mac 102fffd0 GameOptionsRoom::UpdateMouse(LHCoord, INTERFACE_MESSAGE_TYPES)
    virtual void UpdateMouse(LHCoord param_1, INTERFACE_MESSAGE_TYPES param_2);
    // win1.41 0078d840 mac 102fff70 GameOptionsRoom::UpdateKeyboard(LH_KEY, unsigned short)
    virtual void UpdateKeyboard(LH_KEY param_1, uint16_t param_2);
};

#endif /* BW1_DECOMP_GAME_OPTIONS_ROOM_INCLUDED_H */
