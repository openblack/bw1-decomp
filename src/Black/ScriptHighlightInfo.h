#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GScriptHighlightInfo: public GSingleMapFixedInfo
{
public:

    // Override methods

    // BW1W120 007096b0 BW1M100 104fb990 GScriptHighlightInfo::_dt(void)
    virtual ~GScriptHighlightInfo();
    // BW1W120 00709640 BW1M100 104fc510 GScriptHighlightInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H */
