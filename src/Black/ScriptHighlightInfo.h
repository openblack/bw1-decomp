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

    // win1.41 007096b0 mac 104fb990 GScriptHighlightInfo::_dt(void)
    virtual ~GScriptHighlightInfo();
    // win1.41 00709640 mac 104fc510 GScriptHighlightInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H */
