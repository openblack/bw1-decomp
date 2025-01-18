#include "Game.h"

#include "Interface.h"
#include "lionhead/lhlib/ver5.0/LHMouse.h"
#include "lionhead/lhlib/ver5.0/LHSystem.h"
#include "globals.h"

#include "Camera.h"
#include "CameraEditor.h"
#include "Global.h"
#include "HelpSystem.h"

// TODO: Move to Interface.h
void __fastcall FUN_005ce9e0(struct GInterface* this);
// TODO: Move to HelpSystem.h
void __fastcall FUN_005c5eb0(struct HelpSystem* this);

// TODO: Reverse and declare in proper header, or put in unclassified todo header
void FUN_00841c20(void);
void FUN_0054d6f0(void);

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

  // TODO: this is an inlined copy of LHCoord, find a way to use that function and force inlining on release
  // *((int*)0x00c5e8d0) = (*globals.LHSys).mouse.coord_0xe0.x;
  // *((int*)0x00c5e8d4) = (*globals.LHSys).mouse.coord_0xe0.y;
  __asm__(
    "{disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2e8]\n"  // 0x0054d85d    8b0de852e800
    "{disp32} mov       eax, dword ptr [data_bytes + 0x4bf2e4]\n"  // 0x0054d863    a1e452e800
    "{disp32} mov       dword ptr [data_bytes + 0x2988d0], eax\n"  // 0x0054d868    a3d0e8c500
    "{disp32} mov       dword ptr [data_bytes + 0x2988d4], ecx\n"  // 0x0054d86d    890dd4e8c500
  );

  Update__7GCameraFv(this->camera);

  struct GInterface* iface = MyInterface__5GGameFv(this);
  FUN_005ce9e0(iface);

  Process3dEngine__5GGameFv(this);

  // if (*(int*)0x00d00dcc != 0)
  __asm__(
    "{disp32} mov       eax, dword ptr [data_bytes + 0x33adcc]\n"  // 0x0054d893    a1cc0dd000
    "test               eax, eax\n"                                // 0x0054d898    85c0
    "{disp8} je         _jmp_addr_0x0054d8ab\n"                    // 0x0054d89a    740f
  );
  {
    FUN_00841c20();
    FUN_0054d6f0();
    FinalDraw__13GCameraEditorFv();
  }
  __asm__("_jmp_addr_0x0054d8ab:");

  iface = MyInterface__5GGameFv(*globals.game);
  PostDrawProcess__10GInterfaceFv(iface);

  FUN_005c5eb0(this->help_system);
}
