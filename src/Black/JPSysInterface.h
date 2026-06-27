#ifndef BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysInterface.h" /* For struct PSysInterface */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
struct LHPoint;
class PSysBase;
class PSysManager;
struct PSysProcessInfo;

class GJPSysInterface: public PSysInterface
{
public:
    PSysManager* manager; /* 0x14 */

    // Override methods

    // BW1W120 0055ede0 BW1M100 103b65b0 GJPSysInterface::_dt(void)
    virtual ~GJPSysInterface();
    // BW1W120 0055ed20 BW1M100 10001030 GJPSysInterface::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 0055ecc0 BW1M100 10423d80 GJPSysInterface::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006944d0 BW1M100 1041dae0 GJPSysInterface::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cb060 BW1M100 10485b50 GJPSysInterface::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055ecb0 BW1M100 10423d40 GJPSysInterface::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006736b0 BW1M100 inlined GJPSysInterface::Process__1(PSysProcessInfo *const, unsigned int)
    virtual uint32_t Process_1(const PSysProcessInfo* param_1, uint32_t param_2);
    // BW1W120 00673690 BW1M100 inlined GJPSysInterface::Process(PSysProcessInfo *)
    virtual void Process_2(PSysProcessInfo* param_1);
    // BW1W120 0055eda0 BW1M100 inlined GJPSysInterface::Draw(float, bool)
    virtual void Draw_1(float param_1, bool param_2);
    // BW1W120 00673700 BW1M100 inlined GJPSysInterface::Draw(bool)
    virtual void Draw_2(bool param_1);
    // BW1W120 0055edc0 BW1M100 10026de0 GJPSysInterface::AddDrawing(float, LHPoint const &)
    virtual void AddDrawing(float param_1, const LHPoint* param_2);
    // BW1W120 0055ed80 BW1M100 inlined GJPSysInterface::AddTarget__1(LHPoint const &)
    virtual void AddTarget_1(const LHPoint* param_1);
    // BW1W120 0055ed60 BW1M100 inlined GJPSysInterface::AddTarget(GameThing *)
    virtual void AddTarget_2(GameThing* param_1);
    // BW1W120 0055ecd0 BW1M100 100a0c00 GJPSysInterface::CloseDown(void)
    virtual void CloseDown();
    // BW1W120 0055ed30 BW1M100 10017fc0 GJPSysInterface::SetMagnitude(float)
    virtual void SetMagnitude(float param_1);
    // BW1W120 0055ed40 BW1M100 10424080 GJPSysInterface::SetAge(float)
    virtual void SetAge(float param_1);
    // BW1W120 0055ecf0 BW1M100 100722f0 GJPSysInterface::SetOrigin(LHPoint const &)
    virtual void SetOrigin(const LHPoint* param_1);
    // BW1W120 0055ed00 BW1M100 10423f20 GJPSysInterface::SetOriginAndMoveAllAtoms(LHPoint const &)
    virtual void SetOriginAndMoveAllAtoms(const LHPoint* param_1);
    // BW1W120 0055ed50 BW1M100 104240c0 GJPSysInterface::SetAlpha(unsigned char)
    virtual void SetAlpha(uint8_t param_1);
    // BW1W120 0055ed10 BW1M100 10026c40 GJPSysInterface::GetOrigin(void)
    virtual LHPoint* GetOrigin();
};

#endif /* BW1_DECOMP_JP_SYS_INTERFACE_INCLUDED_H */
