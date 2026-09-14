#ifndef BW1_DECOMP_ALEX_MFC_INCLUDED_H
#define BW1_DECOMP_ALEX_MFC_INCLUDED_H

// BW1W120 004079c0: returns AL. The current symbols.txt incorrectly says void.
bool NeedsBiggerText();
// BW1W120 00407a00 / 00407a10: both return a full-width integer in EAX.
int GetMidTextSize();
int GetSmallTextSize();

#endif /* BW1_DECOMP_ALEX_MFC_INCLUDED_H */
