#include "Game.h"
#include "Global.h"
#include "../../globals.h"

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
