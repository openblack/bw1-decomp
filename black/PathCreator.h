#ifndef BW1_DECOMP_PATH_CREATOR_INCLUDED_H
#define BW1_DECOMP_PATH_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

struct PathCreator
{
  char* dev_black;  /* 0x0 */
  char* profiles;
  char* saved_games;
  char* pictures;
  char* current;  /* 0x10 */
  char* field_0x16;
  char field_0x18[0x10];
  uint8_t field_0x28[0xf4];
  char field_0x11c[0x44];
  uint8_t field_0x160[0xbc];
  char16_t* field_0x21c;
};
static_assert(sizeof(struct PathCreator) == 0x220, "Data type is of wrong size");

// Constructors

// win1.41 0078e8c0 mac 1017a270 PathCreator::PathCreator(void)
struct PathCreator* __fastcall __ct__11PathCreatorFv(struct PathCreator* this) asm("??0PathCreator@@QAE@XZ");

// Non-virtual methods

// win1.41 0078eaa0 mac 1035b570 PathCreator::GetSaveGamePicturesPath__11PathCreatorFPc(char*)
void __fastcall GetSaveGamePicturesPath__11PathCreatorFPc(struct PathCreator* this, const void* edx, char* path) asm("?GetSaveGamePicturesPath@PathCreator@@QAEXPAD@Z");
// win1.41 0078eae0 mac 101ca330 PathCreator::GetCurrentGamePath(char*)
void __fastcall GetCurrentGamePath__11PathCreatorFPc(struct PathCreator* this, const void* edx, char* path) asm("?GetCurrentGamePath@PathCreator@@QAEXPAD@Z");
// win1.41 0078efc0 mac 103655d0 PathCreator::CheckAndRecreateSaveGamePaths(void)
bool __fastcall CheckAndRecreateSaveGamePaths__11PathCreatorFv(struct PathCreator* this) asm("?CheckAndRecreateSaveGamePaths@PathCreator@@QAE_NXZ");

#endif /* BW1_DECOMP_PATH_CREATOR_INCLUDED_H */
