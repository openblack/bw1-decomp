#ifndef BW1_DECOMP_ARCHIVE_INCLUDED_H
#define BW1_DECOMP_ARCHIVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHOSFile.h" /* For struct LHOSFile */

struct Archive
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  struct LHOSFile file;
};
static_assert(sizeof(struct Archive) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_ARCHIVE_INCLUDED_H */
