#include "EditorIconBase.h"

LH3DColor* EditorIconBase::GetTextColor()
{
	return &DefaultTextColor;
}

LH3DColor* EditorIconBase::GetActiveColor()
{
	return &DefaultActiveColor;
}

LH3DColor* EditorIconBase::GetInactiveColor()
{
	return &DefaultInactiveColor;
}

char* EditorIconBase::GetText()
{
	return NULL;
}
