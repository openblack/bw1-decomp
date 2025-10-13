#include "Game.h"

#include "Interface.h"
#include "lionhead/lh3dlib/development/LHCoord.h"
#include "lionhead/lhlib/ver5.0/LHMouse.h"
#include "lionhead/lhlib/ver5.0/LHSystem.h"
#include "globals.h"
#include "unprocessed/unprocessed_functions.h"
#include "unprocessed/unprocessed_globals.h"

#include "Camera.h"
#include "CameraEditor.h"
#include "Global.h"
#include "HelpSystem.h"

__attribute__((MOV32rr_REV, disable_tail_calls))
void __fastcall ProcessGameCode__5GGameFv(struct GGame* this) {
  StartTurn__5GGameFv(this);
  if ((this->field_0x14 & 4) == 0)
  {
    ProcessTurn__5GGameFv(this);
  }
  EndTurn__5GGameFv(this);
}

void __fastcall DisplayPlayerTextMessages__5GGameFv(struct GGame* this)
{
  DisplayPlayerTextMessages__7GGlobalFv(globals.global);
}

__attribute__((MOV32rr_REV))
void __fastcall ProcessGraphicsEngine__5GGameFUlUl(struct GGame* this, const void* edx, uint32_t param_1, uint32_t param_2)
{
  DeltaPos__7LHMouseFv(&(*globals.LHSys).mouse);

  __ct__7LHCoordFRC7LHCoord(LHCoord_00c5e8d0, edx, &(*globals.LHSys).mouse.coord_0xe0);

  Update__7GCameraFv(this->camera);

  struct GInterface* iface = MyInterface__5GGameFv(this);
  FUN_005ce9e0(iface);

  Process3dEngine__5GGameFv(this);

  if (*int_00d00dcc != 0)
  {
    FUN_00841c20();
    FUN_0054d6f0();
    FinalDraw__13GCameraEditorFv();
  }

  iface = MyInterface__5GGameFv(*globals.game);
  PostDrawProcess__10GInterfaceFv(iface);

  FUN_005c5eb0(this->help_system);
}
