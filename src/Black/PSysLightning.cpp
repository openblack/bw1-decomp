#include "PSysProperties.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For HALF_PI_F */

#include "Game.h"             /* For GGame */
#include "GameThingWithPos.h" /* For GameThingWithPos::IsSpellSeed */
#include "PSysRules.h"        /* For class UR_Lightning */

GJDoubleLinkList<UR_Lightning_CollectionData> UR_Lightning_CollectionData::List;

UR_Lightning_CollectionData::UR_Lightning_CollectionData(const AtomCollectionModifier* modifier)
	: BaseCollectionModifierData(modifier), Previous(NULL), Next(NULL)
{
	TargetDistance = 1.0f;
	FirstUpdate = true;
	Heading = 0.0f;
	field_0x5a = false;
	TimeSinceSearch = 0.0f;
	CommonHelper = NULL;
	CommonHelped = NULL;
	NumLightningObjects = 0;
	NumTargets = 0;
	CreationTurn = GGame::g_game->data.GameTurn;
	ParentCollection = NULL;
	const UR_Lightning* rule = dynamic_cast<const UR_Lightning*>(modifier);
	if (rule)
	{
		CastingFromHand = rule->CastingFromHand;
	}
	List.InsertIntoList(this);
}

UR_Lightning_CollectionData::~UR_Lightning_CollectionData()
{
	if (CommonHelped)
	{
		CommonHelped->SetCommonHelper(NULL, -1);
	}
	if (CommonHelper)
	{
		CommonHelper->CommonHelped = NULL;
	}
	for (long i = 0; i < Collections.GetSize(); i++)
	{
		if (Collections[i].Collection && Collections[i].OwnsCollection)
		{
			delete Collections[i].Collection;
		}
	}
	List.RemoveFromList(this);
}

bool UR_Lightning::IsValidTarget(GameThingWithPos* thing) const
{
	if (thing->IsSpellSeed())
	{
		return false;
	}
	return true;
}

UR_Lightning::UR_Lightning(PersistentOwner* owner) : AtomCreateRule(owner)
{
	FP_ForkScale = NULL;
	SearchRadius = NULL;
	DefaultSearchRadius = 20.0f;
	MaxLightningObjects = 50;
	MinLightningObjects = 3;
	MaxLightningObjectsAtOnce = 10;
	field_0x5c = 50.0f;
	MaxJointsPerFork = 10;
	ForkGroup = -1;
	CommonGlowGroup = -1;
	LightMapGroup = -1;
	SplitAngle = HALF_PI_F;
	RandomFrac = 0.1f;
	ForkScale = 1.0f;
	PCreatorLightMapAtom = NULL;
	AverageLightmapLife = 0.5f;
	CastingFromHand = true;
	RenewTargetsOnMove = false;
	RenewTargetsOnMoveFrac = 0.5f;
	RenewSearchEvery = 1.0f;
	TakeTargetsFromManager = false;
	NumTexturesToTile = -1;
	CommonForkScale = 3.0f;
}

float UR_Lightning::GetSearchRadius() const
{
	if (SearchRadius)
	{
		return SearchRadius->GetValue();
	}
	return DefaultSearchRadius;
}
