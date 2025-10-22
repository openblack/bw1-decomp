#ifndef BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHConnection;

struct LHConnectionServer
{
  uint32_t field_0x0;
};
static_assert(sizeof(struct LHConnectionServer) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 100e09b0 LHConnectionServer::ConnectToConnection(LHConnection *)
uint32_t __fastcall ConnectToConnection__18LHConnectionServerFP12LHConnection(struct LHConnectionServer* this, const void* edx, struct LHConnection* connection) asm("?ConnectToConnection@LHConnectionServer@@QAEIPAVLHConnection@@@Z");

#endif /* BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H */
