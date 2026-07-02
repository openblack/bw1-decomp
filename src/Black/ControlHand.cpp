#include "ControlHand.h"

#include <cstdio> /* For sprintf */

#include "Lionhead/LH3DLib/development/LH3DComplexObject.h" /* For struct LH3DComplexObject */

#include "HandState.h"
#include "PSysHandFX.h"

CHand::CHand(LHPoint point, GInterfaceStatus* status)
{
    uint32_t i;
    for (i = 0; i < sizeof(names) / sizeof(names[0]); ++i)
    {
        names[i].string[0] = '\0';
    }
    for (i = 0; i < 6; ++i)
    {
        anim_sets[i] = LH3DAnimSet();
    }

    point_0x48d4 = LHPoint();
    point_0x48e0 = LHPoint();
    point_0x48ec = LHPoint();
    point_0x48d4.SetNull();
    point_0x48e0.SetNull();
    point_0x48ec.SetNull();

    hand_fx = PSysHandFX::CreateHandFX();

    field_0x4958 = 0;
    field_0x495c = 0;
    field_0x4960 = 0;

    point_0x4964 = LHPoint();
    point_0x4964.SetNull();

    field_0x4970 = 0;
    field_0x4974 = 0;
    field_0x4978 = 0;
    field_0x497c = 0;
    field_0x4980 = 0;
    field_0x4984 = 0;
    field_0x4988 = 1.0f;
    field_0x498c = 0;
    field_0x4990 = '\x01';

    field_0x4874 = '\0';
    field_0x486c = 0;
    field_0x4870 = 0;
    field_0x4844 = 0;
    field_0x484c = 0;

    MorphInit(point, 1, NULL);

    field_0x483c = 0;
    field_0x4848 = 0;
    interface_status = status;
    field_0x4854 = 10.0f;
    field_0x48b4 = 0;
    current_state = HAND_STATE_NORMAL;
    field_0x4840 = 1;
    field_0x4904 = 0;
    field_0x48fc = 0;
    field_0x4908 = 0;
    field_0x4918 = 0;
    field_0x48f8 = 0;
    field_0x49c0 = 0;
    field_0x49b4 = 0;
    field_0x49b8 = 0;
    field_0x49bc = 0;
    field_0x491c = '\0';

    dynamic_shadow->CreateDynamicShadow();

    field_0x4834 = 1.0f;
    field_0x499c = 0;
    field_0x49a0 = 0;
    field_0x49a4 = 0;
    field_0x49b0 = 0.13f;
    field_0x4998 = 1;
    max_distance_from_user = 1800.0f;
    field_0x49a8 = 0;
    matrix_0x49ac = NULL;
    field_0x494c = NULL;
    field_0x4950 = 0;
    field_0x4954 = 0;

    // hand_states.named.invisible = new(__FILE__, __LINE__) HandStateInvisible(this);
    // hand_states.named.normal = new(__FILE__, __LINE__) HandStateNormal(this);
    // hand_states.named.camera = new(__FILE__, __LINE__) HandStateCamera(this);
    // hand_states.named.tug = new(__FILE__, __LINE__) HandStateTug(this);
    // hand_states.named.holding = new(__FILE__, __LINE__) HandStateHolding(this);
    // hand_states.named.totem = new(__FILE__, __LINE__) HandStateTotem(this);
    // hand_states.named.multi_pick_up = new(__FILE__, __LINE__) HandStateMultiPickUp(this);
    // hand_states.named.creature = new(__FILE__, __LINE__) HandStateCreature(this);
    // hand_states.named.grain = new(__FILE__, __LINE__) HandStateGrain(this);
    // hand_states.named.play_anim = new(__FILE__, __LINE__) HandStatePlayAnim(this);
    // hand_states.named.citadel = new(__FILE__, __LINE__) HandStateCitadel(this);

    hand_states.raw[current_state]->Enter();

    field_0x4994 = 0;
    field_0x4900 = 0;
}

uint32_t CHand::LoadBinary_5CHandFPci(char* filename, int param_1)
{
    uint32_t result;

    result = file.SetName(filename);
    result = file.Open(static_cast<LH_FILE_MODE>(2)); /* read mode */
    result = file.OpenSegment("Hand");

    int32_t data;
    result = file.GetSegmentData(&data, sizeof(data), -1);
    if (data < 1)
    {
        uint32_t spec_version;
        result = file.GetSegmentData(&spec_version, sizeof(spec_version), -1);
        if (spec_version < 6)
        {
            char spec_filename[64];
            if (spec_version < 5)
            {
            }
            sprintf(spec_filename, "data\\hndspec%u.txt", spec_version);

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
            if (matrix_0x49ac != NULL)
            {
                // __dl__FPv(matrix_0x49ac);
            }
            // matrix_0x49ac = (LHMatrix*)__nw__FUl(field_0x47b8 * 0x30, __FILE__, __LINE__);
            return 1;
        }
    }

    return 0;
}

void CHand::SetSize(float size)
{
    if (size < 0.05f)
    {
        size = 0.05f;
    }
    else if (size > 2.0f)
    {
        size = 2.0f;
    }
    size_1 = size;
    float fVar1 = 3.2f; /* = FUN_0046c040() */
    size_2 = fVar1 / field_0x8c * field_0x4834 * size_1;
}
