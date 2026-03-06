#include "Game.h"

#include "Interface.h"
#include "lionhead/lh3dlib/development/LH3DRender.h"
#include "lionhead/lh3dlib/development/LHCoord.h"
#include "lionhead/lhlib/ver5.0/LHMouse.h"
#include "lionhead/lhlib/ver5.0/LHSystem.h"

#include "Camera.h"
#include "CameraEditor.h"
#include "Global.h"
#include "HelpSystem.h"

// win1.41 0054d820 mac 10083dd0 GGame::ProcessGameCode(void)
void GGame::ProcessGameCode()
{
    StartTurn();
    if ((field_0x14 & 4) == 0)
    {
        ProcessTurn();
    }
    EndTurn();
}

void GGame::DisplayPlayerTextMessages()
{
    // globals.global->DisplayPlayerTextMessages();
}

// win1.41 0054d850 mac 10079980 GGame::ProcessGraphicsEngine(unsigned long, unsigned long)
void GGame::ProcessGraphicsEngine(uint32_t param_1, uint32_t param_2)
{
    // (*globals.LHSys).mouse.DeltaPos();

    // *LHCoord_00c5e8d0 = (*globals.LHSys).mouse.coord_0xe0;

    camera->Update();

    MyInterface()->PreDrawProcess();

    Process3dEngine();

    // if (*int_00d00dcc != 0)
    {
        LH3DRender::BMan_Display();
        LH3DRender::DrawMouseCross();
        GCameraEditor::FinalDraw();
    }

    MyInterface()->PostDrawProcess();

    help_system->PostDrawProcess();
}
