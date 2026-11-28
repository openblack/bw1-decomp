#include "GameTimeConstants.h"
#include "PSysTornado.h"

#include "ColourConstants.h" /* For White */

#include <math.h> /* For cos, sin */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F, TWO_PI */

#include "ParticleCreator.h" /* For class ParticleCreator */
#include "PSysAtomCore.h"    /* For class AtomCollection, class AtomCore */
#include "PSysManager.h"     /* For class PSysManager */
#include "PSysRules.h"       /* For class UR_Tornado */

static UR_Tornado::CollectionData* Data;
static AtomCollection*             Collection;

UR_Tornado::UR_Tornado(PersistentOwner* owner) : AtomCreateRule(owner)
{
	Flags ^= 4;
	SpriteCreator = NULL;
	DebrisSpriteCreator = NULL;
	PretendObjectCreatorSmall = NULL;
	PretendObjectCreatorMedium = NULL;
	PretendObjectCreatorLarge = NULL;
	FadeOutTime = 10.0f;
	FadeInTime = 4.0f;
	TopHeight = 100.0f;
	WiggleCount = 5;
	WiggleAmplitude = 10.0f;
	BaseRadius = 3.0f;
	TopRadius = 50.0f;
	BaseScale = 1.0f;
	TopScale = 10.0f;
	BaseThetaDot = 15.0f;
	TopThetaDot = 2.0f;
	MeshThetaDot = 2.0f;
	ThetaBias = 0.5f;
	FunnelBendParameter = 0.5f;
	MaxSearchDistance = 250.0f;
	MaxSearchDistanceWhenNoTargets = 100.0f;
	LocalSearchDistance = 10.0f;
	PauseBeforeAffectsGameObjects = 10.0f;
	UseTornadoStrength = true;
	NumAtomsToCreate = 100;
	GroupToMoveToOnCloseDown = -1;
	GroupToMoveToOnceDone = -1;
	K1_Accn = 0.1f;
	ShowVelocityField = true;
	ScaleWhipUp = 1.0f;
	HeightStiffnessState0 = 0.1f;
	HeightStiffnessState1 = 0.3f;
	TopMoveAmp = 40.0f;
	TopMoveFreq = 0.2f;
	TornadoScaleFloatProvider = NULL;
	DelayBeforeMove = 5.0f;
	Damping = 0.1f;
	DebrisSpeed = 10.0f;
	DebrisEmitRate = 2.0f;
	DebrisRadius = 10.0f;
	DebrisHeight = 10.0f;
	DebrisSpreadAngle = 0.33f * PI_F;
	ResourceAmountRemoveMin = 150.0f;
	ResourceAmountRemoveMax = 650.0f;
	PretendSpeed = 10.0f;
	PretendEmitRate = 2.0f;
	PretendRadius = 10.0f;
	PretendHeight = 10.0f;
	PretendGravity = 10.0f;
	PretendSpreadAngle = 0.33f * PI_F;
	PretendBlendTime = 4.0f;
	GroupFlying = -1;
	GroupDebris = -1;
	GroupMesh = -1;
}

UR_Tornado::CollectionData::~CollectionData() {}

bool UR_Tornado::ModifyAtomCollection(AtomCollection* collection) const
{
	Collection = collection;
	collection->GetModifierData(this, Data);
	Data->Scale0 = TornadoScaleFloatProvider ? TornadoScaleFloatProvider->GetValue() : 1.0f;
	Data->Scale1 = 1.0f;
	UpdateBaseAndTopPoints();
	if (Data->FirstUpdate == true)
	{
		if (PCreator == NULL)
		{
			return false;
		}
		AtomCore*     core = AtomCore::Create();
		GJArray<long> groups;
		groups.SetSize(3);
		groups[0] = GroupFlying;
		groups[1] = GroupDebris;
		groups[2] = GroupMesh;
		Collection->InitNewAtom(core, groups);
		core->Particle = PCreator->CreateParticle(core);
		core->StartSound(SoundTornado);
		core->LocalPos = Data->Point0;
	}
	AtomCore* parent = collection->GetParentAtom();
	if (parent)
	{
		parent->LocalPos = Data->Point0;
	}
	AtomCore* atom = collection->Atoms.First;
	if (atom)
	{
		atom->LocalPos = Data->Point0;
		for (GJDoubleLinkList<AtomCollection>::Iterator it(atom->SubCollections); !it.IsFinished(); it++)
		{
			if (it->Group == GroupFlying)
			{
				UpdateFlyingAtoms(it.GetRef());
			}
			else if (it->Group == GroupMesh)
			{
				UpdateMeshAtoms(it.GetRef());
			}
			else if (it->Group == GroupDebris)
			{
				UpdateDebrisAtoms(it.GetRef());
			}
		}
	}
	Data->FirstUpdate = false;
	return true;
}

void UR_Tornado::InitFlyingAtoms(AtomCollection* collection) const
{
	if (SpriteCreator != NULL)
	{
		for (long i = 0; i < NumAtomsToCreate; i++)
		{
			AtomCore* core = AtomCore::Create();
			core->Particle = SpriteCreator->CreateParticle(core);
			collection->InitNewAtom(core, NextGroups);
			FlyingAtomData* data;
			core->GetModifierData(this, data);
			InitFlyingAtomData(core, data);
			float height = (float)(NumAtomsToCreate - i) / NumAtomsToCreate;
			data->TargetHeight = height;
			LHPoint position;
			GetCentrePointAtHeight(height, &position);
			float theta = PSysManager::PSysFloatRand(TWO_PI);
			position += LHPoint(cosf(theta), 0.0f, sinf(theta)) * GetRadiusAtHeight(data->TargetHeight);
			core->LocalPos = position;
		}
	}
}

void UR_Tornado::InitFlyingAtomData(AtomCore* core, FlyingAtomData* data) const
{
	data->ThetaDotScale = PSysManager::PSysFloatRand(1.0f) + 0.5f;
}
