#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "ControlHand.h"
#include "CreatureAnimInfo.h"

#include <cstdio> /* For sprintf */

#include "Lionhead/LH3DLib/development/LH3DComplexObject.h" /* For struct LH3DComplexObject */

#include "ColourConstants.h" /* For White */
#include "HandState.h"
#include "GameTimeConstants.h"
#include "PSysHandFX.h"

CHand::CHand(LHPoint point, GInterfaceStatus* status)
{
	ThrowSpin = LHPoint();
	ThrowPos = LHPoint();
	ThrowAngles = LHPoint();
	ThrowSpin.SetNull();
	ThrowPos.SetNull();
	ThrowAngles.SetNull();

	HandFx = PSysHandFX::CreateHandFX();

	field_0x4958 = 0;
	field_0x495c = 0;
	field_0x4960 = 0;

	Point0x4964 = LHPoint();
	Point0x4964.SetNull();

	field_0x4970 = 0;
	field_0x4974 = 0;
	field_0x4978 = 0;
	field_0x497c = 0;
	field_0x4980 = 0;
	field_0x4984 = 0;
	field_0x4988 = 1.0f;
	field_0x498c = 0;
	field_0x4990 = '\x01';

	UseDrawScreenPos = false;
	DrawScreenPos.x = 0;
	DrawScreenPos.y = 0;
	field_0x4844 = 0;
	HandOrientation = 0;

	MorphInit(point, 1, NULL);

	field_0x483c = 0;
	field_0x4848 = 0;
	InterfaceStatus = status;
	DistanceFromView = 10.0f;
	field_0x48b4 = 0;
	CurrentState = HAND_STATES_NORMAL;
	field_0x4840 = 1;
	HeldObject = NULL;
	field_0x48fc = 0;
	Tugging = false;
	field_0x4918 = 0;
	field_0x48f8 = 0;
	field_0x49c0 = 0;
	InteractCreature = NULL;
	InteractCreature3d = NULL;
	CreatureBeingGivenTo = NULL;
	InFixedPosAnimation = false;

	DynamicShadow->CreateDynamicShadow();

	DistanceScale = 1.0f;
	field_0x499c = 0;
	field_0x49a0 = 0;
	field_0x49a4 = 0;
	BlendTime = 0.13f;
	field_0x4998 = 1;
	MaxDistanceFromUser = 1800.0f;
	field_0x49a8 = 0;
	Matrix0x49ac = NULL;
	field_0x494c = NULL;
	field_0x4950 = 0;
	field_0x4954 = 0;

	// HandStates.named.invisible = NEW(__LINE__) HandStateInvisible(this);
	// HandStates.named.normal = NEW(__LINE__) HandStateNormal(this);
	// HandStates.named.camera = NEW(__LINE__) HandStateCamera(this);
	// HandStates.named.tug = NEW(__LINE__) HandStateTug(this);
	// HandStates.named.holding = NEW(__LINE__) HandStateHolding(this);
	// HandStates.named.totem = NEW(__LINE__) HandStateTotem(this);
	// HandStates.named.MultiPickUp = NEW(__LINE__) HandStateMultiPickUp(this);
	// HandStates.named.creature = NEW(__LINE__) HandStateCreature(this);
	// HandStates.named.grain = NEW(__LINE__) HandStateGrain(this);
	// HandStates.named.PlayAnim = NEW(__LINE__) HandStatePlayAnim(this);
	// HandStates.named.citadel = NEW(__LINE__) HandStateCitadel(this);

	HandStates.raw[CurrentState]->Enter();

	field_0x4994 = 0;
	field_0x4900 = 0;
}

uint32_t CHand::LoadBinary(char* filename, int param_1)
{
	uint32_t result;

	result = file.SetName(filename);
	result = file.Open(LH_FILE_MODE_READ_ONLY);
	result = file.OpenSegment("Hand");

	int32_t data;
	result = file.GetSegmentData(&data, sizeof(data), -1);
	if (data < 1)
	{
		uint32_t SpecVersion;
		result = file.GetSegmentData(&SpecVersion, sizeof(SpecVersion), -1);
		if (SpecVersion < 6)
		{
			char spec_filename[64];
			if (SpecVersion < 5)
			{
			}
			sprintf(spec_filename, "data\\hndspec%u.txt", SpecVersion);

			AnimInfo* infos = new AnimInfo();
			result = infos->Read(spec_filename);

			result = ReadBinary(&file, infos, infos);

			GetSetAnim(0, 1, 0);
			GetSetAnim(0, 2, 0);
			GetSetAnim(0, 3, 0);
			GetSetAnim(0, 4, 0);
			GetSetAnim(0, 5, 0);

			SelectMesh(0);

			ToggleLeftRight();

			delete infos;

			SetSize(1.0f);
			if (Matrix0x49ac != NULL)
			{
			}
			return 1;
		}
	}

	return 0;
}

void CHand::SetSize(float size)
{
	CLAMP(size, 0.05f, 2.0f);
	Size1 = size;
	float standardSize = 3.2f;
	Size2 = standardSize / field_0x8c * DistanceScale * Size1;
}

void HandStateInvisible::Update(float dt, LHMatrix* buffer) {}
