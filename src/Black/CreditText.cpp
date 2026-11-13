#include "CreditText.h"
#include "CreditsRoom.h"

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

LH3DColor       CreditTextItem::NextColor;
CreditTextItem* CreditTextItem::FirstItem;
#ifdef VERSION_BW1WCI
float CreditTextItem::ClipAlpha;
#endif
