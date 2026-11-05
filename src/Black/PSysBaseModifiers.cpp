#include "GameTimeConstants.h"
#include "PSysModifiers.h" /* For class BaseCollectionModifierData */
#include "PSysBaseModifiers.h"

void AtomCollectionModifier::AddReference(AtomCollection* collection) const
{
	ReferenceCount++;
}

void AtomCollectionModifier::DeleteReference(AtomCollection* collection) const
{
	ReferenceCount--;
}
