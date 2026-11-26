#include "MapCellConstants.h"
#include "HandConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

const float HandLagStiffness = 20.0f;
const float HandLagDamping = 0.03f;
const float HandBlendDuration = 0.13f;
const float DefaultDistanceFromView = 10.0f;
const float MinDistanceFromView = 2.0f;
const float FarDistanceFromView = 150.0f;

#include "ControlHand.h"

const float DefaultMaxDistanceFromUser = CHAND_DEFAULT_MAX_DISTANCE_FROM_USER;

#include "CreatureAnimInfo.h"

#include <cstdio>    /* For sprintf */
#include <math.h>    /* For pow */
#include <string.h>  /* For memcpy */
#include <windows.h> /* For HINSTANCE */

#include "Lionhead/LH3DLib/development/LH3DAnim.h"          /* For LH3DAnim::GetGraspPoint */
#include "Lionhead/LH3DLib/development/LH3DColor.h"         /* For struct LH3DColor */
#include "Lionhead/LH3DLib/development/LH3DComplexObject.h" /* For struct LH3DComplexObject */
#include "Lionhead/LH3DLib/development/LH3DHand.h"          /* For LH3DHand::g_hotspot_x */
#include "Lionhead/LH3DLib/development/LH3DIsland.h"        /* For LH3DIsland::GetColorAndSpecular */
#include "Lionhead/LH3DLib/development/LH3DMath.h"          /* For heading_from_direction_vector */
#include "Lionhead/LH3DLib/development/LH3DMesh.h"          /* For struct LH3DMesh */
#include "Lionhead/LH3DLib/development/LH3DPrimitive.h"     /* For struct LH3DPrimitive */
#include "Lionhead/LH3DLib/development/LH3DRender.h"        /* For LH3DRender::g_zsorter */
#include "Lionhead/LH3DLib/development/LH3DSubMesh.h"       /* For struct LH3DSubMesh */
#include "Lionhead/LH3DLib/development/LH3DTech.h"          /* For LH3DTech::g_game_time_inc */
#include "Lionhead/LH3DLib/development/LH3DVRAMTex.h"       /* For LH3DVRAMTex::g_surface_mouse */
#include "Lionhead/LH3DLib/development/LH3DZSorter.h"       /* For LH3DZSorter::NewZObject */
#include "Lionhead/LHLib/ver5.0/LHSurface.h"                /* For struct LHSurface */
#include "Lionhead/LHLib/ver5.0/LHSystem.h"                 /* For LHSys */

#include "Lionhead/LHMultiplayer/ver4.0/LHSession.h" /* For LHSession */

#include "Camera.h"
#include "CameraModeCtrInteract.h"
#include "CameraModeNew3.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"        /* For Creature */
#include "CreaturePhysical.h"
#include "FrontEnd.h"     /* For FrontEnd */
#include "Game.h"         /* For GGame */
#include "GameInfo.h"     /* For GGameInfo */
#include "Game3DObject.h" /* For Game3DObject */
#include "GameOSFile.h"   /* For GameOSFile */
#include "Global.h"       /* For GGlobal */
#include "HandState.h"
#include "Interface.h"       /* For GInterface */
#include "InterfaceStatus.h" /* For GInterfaceStatus */
#include "PSysHandFX.h"
#include "PSysInterface.h"    /* For PSysInterface */
#include "PhysicsObject.h"    /* For PhysicsObject */
#include "PlayerProfile.h"    /* For PlayerProfile */
#include "SpellSeed.h"        /* For SpellSeed */
#include "Utils.h"            /* For GUtils */
#include "VirtualInfluence.h" /* For GVirtualInfluence */
#include "alexmfc.h"          /* For struct SetupBox */

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 200 ? 1 : (line) < 800 ? 2 : 16))
#endif

#ifdef VERSION_BW1W130
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 200 ? 6 : (line) < 800 ? 675 : 631))
#endif

static int Unused = 0;

static LHPoint BlendToPos;
static LHPoint BlendFromPos;
static LHPoint BlendPos;

// BW1W120 00d13f20
extern LHPoint HeldObjectOffset;
// BW1W120 00d13f30
extern LHPoint HandLandPos;

static char* HandLagText[2] = {"hand lag ON", "hand lag OFF"};

CHand::CHand(LHPoint point, GInterfaceStatus* status) : HandFx(PSysHandFX::CreateHandFX())
{
	UseDrawScreenPos = false;
	DrawScreenPos = LHCoord(0, 0);
	HandOff = false;
	HandOrientation = false;

	MorphInit(point, 1, NULL);

	CursorOn = false;
	EditorControl = false;
	InterfaceStatus = status;
	DistanceFromView = DefaultDistanceFromView;
	LaggedScreenPosValid = false;
	CurrentState = HAND_STATES_NORMAL;
	InInfluence = true;
	HeldObject = NULL;
	ThrownObject = NULL;
	Tugging = false;
	HandLagOff = 0;
	ThrownObjectTimer = 0;
	InteractionCameraActive = false;
	InteractCreature = NULL;
	InteractCreature3d = NULL;
	CreatureBeingGivenTo = NULL;
	InFixedPosAnimation = false;

	DynamicShadow->CreateDynamicShadow();

	DistanceScale = 1.0f;
	MouseSprite = NULL;
	SpriteCursor = false;
	MouseSpriteDebug = false;
	BlendTime = HandBlendDuration;
	field_0x4998 = 1;
	MaxDistanceFromUser = DefaultMaxDistanceFromUser;
	field_0x49a8 = 0;
	BlendFromMatrices = NULL;
	SpellInHandEffect = NULL;
	SpellInHand = NULL;
	SpellInHandAtGraspPos = false;

	HandStates.named.invisible = NEW(162) HandStateInvisible(this);
	HandStates.named.normal = NEW(163) HandStateNormal(this);
	HandStates.named.camera = NEW(164) HandStateCamera(this);
	HandStates.named.tug = NEW(165) HandStateTug(this);
	HandStates.named.holding = NEW(166) HandStateHolding(this);
	HandStates.named.totem = NEW(167) HandStateTotem(this);
	HandStates.named.MultiPickUp = NEW(168) HandStateMultiPickUp(this);
	HandStates.named.creature = NEW(169) HandStateCreature(this);
	HandStates.named.grain = NEW(170) HandStateGrain(this);
	HandStates.named.PlayAnim = NEW(171) HandStatePlayAnim(this);
	HandStates.named.citadel = NEW(172) HandStateCitadel(this);

	HandStates.raw[CurrentState]->Enter();

	field_0x4994 = 0;
	InteractionTime = 0;
}

void HandStateInvisible::Enter()
{
	Hand->SetEditorControl(false);
	memcpy(Hand->BlendFromMatrices, Hand->TransformedMatrices, Hand->NumBoneMatrices * sizeof(LHMatrix));
}

void HandStateInvisible::Exit()
{
	Hand->Show(false);
}

void HandStateInvisible::Update(float dt, LHMatrix* buffer) {}

uint32_t CHand::LoadBinary(char* filename, bool32_t start_creation)
{
	char      specPath[64];
	AnimInfo* oldInfo = NULL;

	file.SetName(filename);
	if (file.Open(LH_FILE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open hand : ", filename);
		return 0;
	}
	if (file.OpenSegment(CHAND_SEGMENT_NAME) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Hand : ", filename);
		file.Close();
		return 0;
	}
	long version = file.ReadLong();
	if (version > CHAND_FILE_VERSION)
	{
		morphable_error("Unknown hand version : ", filename);
		file.Close();
		return 0;
	}
	{
		long specVersion = file.ReadLong();
		if (specVersion > CHAND_SPEC_VERSION)
		{
			morphable_error("Unknown data version : ", filename);
			file.Close();
			return 0;
		}
		if (specVersion < CHAND_SPEC_VERSION)
		{
			sprintf(specPath, "data\\hndspec%d.txt", specVersion);
			oldInfo = NEW(1139) AnimInfo;
			if (!oldInfo->Read(specPath))
			{
				morphable_error("Can't read : ", specPath);
				delete oldInfo;
				file.Close();
				return 0;
			}
		}
	}
	sprintf(specPath, "data\\hndspec%d.txt", CHAND_SPEC_VERSION);
	AnimInfo* info = NEW(1150) AnimInfo;
	if (!info->Read(specPath))
	{
		morphable_error("Can't read : ", specPath);
		delete oldInfo;
		delete info;
		file.Close();
		return 0;
	}
	if (!ReadBinary(&file, oldInfo ? oldInfo : info, info))
	{
		delete oldInfo;
		delete info;
		file.Close();
		return 0;
	}
	GetSetAnim(0, 1, 0);
	GetSetAnim(0, 2, 0);
	GetSetAnim(0, 3, 0);
	GetSetAnim(0, 4, 0);
	GetSetAnim(0, 5, 0);
	SelectMesh(0);
	ToggleLeftRight();
	delete oldInfo;
	delete info;
	SetSize(1.0f);
	if (BlendFromMatrices != NULL)
	{
		delete BlendFromMatrices;
	}
	BlendFromMatrices = NEW(1185) LHMatrix[NumBoneMatrices];
	ReadRegistrySettings();
	return 1;
}

uint32_t CHand::SaveBinary(char* filename)
{
	LHReleasedFile file;
	file.SetName(filename);
	LoadAllAndClose();
	if (file.Open(LH_FILE_NEW) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't create file : ", filename);
		return 0;
	}
	if (file.OpenSegment(CHAND_SEGMENT_NAME) != LH_FILE_RESULT_OK)
	{
		morphable_error("Can't open segment Hand : ", filename);
		file.Close();
		return 0;
	}
	file.WriteLong(CHAND_FILE_VERSION);
	file.WriteLong(CHAND_SPEC_VERSION);
	WriteBinary(&file, CHAND_ANIM_COUNT);
	file.CloseSegment();
	file.Close();
	return 1;
}

void CHand::ToggleHandLag()
{
	HandLagOff = (HandLagOff + 1) % 2;
	GGlobal::Global.AddPlayerTextMessage(-1, HandLagText[HandLagOff]);
}

void CHand::SetMaxDistanceFromUser(float distance)
{
	MaxDistanceFromUser = distance > DefaultMaxDistanceFromUser ? DefaultMaxDistanceFromUser : distance;
}

float CHand::GetMaxDistanceFromUser()
{
	return MaxDistanceFromUser;
}

void CHand::SetInInfluence(bool32_t in_influence)
{
	if (in_influence != InInfluence)
	{
		InInfluence = in_influence;
		MorphTexture();
	}
}

void CHand::MorphTexture()
{
	Morphable::MorphTexture();
	if (!InInfluence)
	{
		MorphTextureOutsideInfluence();
	}
}

void CHand::MorphTextureOutsideInfluence() {}

float CHand::GetMaxForce()
{
	return (WeakStrong + 1.0f) * CHAND_MAX_FORCE_SCALE;
}

CHand::~CHand()
{
	if (BlendFromMatrices != NULL)
	{
		delete BlendFromMatrices;
	}
	if (file.OpenFlag)
	{
		file.CloseSegment();
		file.Close();
	}
	for (int i = 0; i < _HAND_STATES_COUNT; i++)
	{
		delete HandStates.raw[i];
	}
	SpellInHandDestroy();
	((PHandFX*)HandFx)->Release();
}

float CHand::GetStandardSize()
{
	return CHAND_STANDARD_SIZE;
}

void CHand::StartFixedPosAnimation(LHPoint& pos, long anim)
{
	InFixedPosAnimation = true;
	HandStatePlayAnim* state = HandStates.named.PlayAnim;
	state->Pos = pos;
	state->Anim = anim;
}

void CHand::GiveToCreature(Creature* creature)
{
	if (HeldObject != NULL)
	{
		CreatureBeingGivenTo = creature;
		InteractCreature = creature;
		InteractCreature3d = creature->GetCreature3D();
	}
}

void CHand::EndGiveToCreature()
{
	CreatureBeingGivenTo = NULL;
	InteractCreature = NULL;
	InteractCreature3d = NULL;
}

void CHand::SetDistanceFromView(float distance)
{
	DistanceFromView = distance > MinDistanceFromView ? min(distance, MaxDistanceFromUser) : MinDistanceFromView;
	if (DistanceFromView < DefaultDistanceFromView)
	{
		DistanceScale = pow(DistanceFromView / DefaultDistanceFromView, CHAND_DISTANCE_SCALE_EXPONENT);
	}
	else
	{
		DistanceScale = 1.0f;
	}
	if (DistanceFromView > FarDistanceFromView)
	{
		DistanceScale =
			(1.0f - (DistanceFromView - FarDistanceFromView) / (DefaultMaxDistanceFromUser - FarDistanceFromView) *
		                CHAND_FAR_DISTANCE_SCALE_REDUCTION) *
			(DistanceFromView / FarDistanceFromView) * DistanceScale;
	}
}

void CHand::Show(bool32_t show)
{
	DynamicShadow->Hidden = false;
	if (DynamicShadow->ShadowInfo)
	{
		DynamicShadow->ShadowInfo->Enabled = true;
	}
	if (show)
	{
		EditorControl = false;
	}
	if (CursorOn && !EditorControl)
	{
		if (!SpriteCursor)
		{
			LHSys::GetMouse().SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, false);
			FrontEnd::SetCursorOff();
		}
		else
		{
			LHSys::GetMouse().SetCursor(MouseSprite, LH_MOUSE_IMAGE_TYPE_SURFACE, true);
		}
		CursorOn = false;
	}
}

void CHand::ToggleMouseSpriteDebug()
{
	MouseSpriteDebug ^= true;
}

void CHand::ToggleLeftRight()
{
	HandOrientation ^= true;
	LH3DSubMesh* submesh = meshes[0]->GetListPtrSubmesh()[0];
	for (int p = 0; p < submesh->GetPrimitiveCount(); p++)
	{
		LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[p];
		for (int t = 0; t < primitive->GetTriangleCount(); t++)
		{
			int a = primitive->Triangles[t].A;
			primitive->Triangles[t].A = primitive->Triangles[t].B;
			primitive->Triangles[t].B = a;
		}
	}
}

void CHand::SetEditorControl(bool32_t enable)
{
	DynamicShadow->Hidden = true;
	if (DynamicShadow->ShadowInfo)
	{
		DynamicShadow->ShadowInfo->Enabled = false;
	}
	if (enable)
	{
		EditorControl = true;
	}
	if (!CursorOn)
	{
		if (!HandOff)
		{
			FrontEnd::SetCursorOn();
		}
		CursorOn = true;
	}
}

void CHand::UpdateTime(int time)
{
	if (Inactive && CycleAnim[0])
	{
		CycleTime[0] = (CycleTime[0] + time) % CycleAnim[0]->Duration;
	}
}

void CHand::ToggleMouseSprite()
{
	SpriteCursor = (SpriteCursor + 1) % 2;
	if (MouseSprite == NULL)
	{
		LHSurface* mouse = LH3DVRAMTex::g_surface_mouse;
		if (mouse != NULL)
		{
			MouseSprite = mouse;
		}
		else
		{
			void* mem = LHSys::TheSystem.mem.Alloc(sizeof(LHSurface));
			MouseSprite = mem ? new (mem) LHSurface(CHAND_MOUSE_SPRITE_SIZE, CHAND_MOUSE_SPRITE_SIZE) : NULL;
		}
		if (mouse != NULL || MouseSprite->Initialise() == LH_OK)
		{
			LHColor transparent(0, 0, 0);
			MouseSprite->SetTransparentColor(&transparent);
			LHSys::GetMouse().Hotspot.x = CHAND_MOUSE_SPRITE_HOTSPOT;
			LHSys::GetMouse().Hotspot.y = CHAND_MOUSE_SPRITE_HOTSPOT;
			MouseSprite->Lock();
			if (MouseSprite->LockedAddress)
			{
				memset(MouseSprite->LockedAddress, 0,
				       CHAND_MOUSE_SPRITE_SIZE * CHAND_MOUSE_SPRITE_SIZE * sizeof(uint16_t));
			}
			MouseSprite->Unlock();
		}
	}
	if (!CursorOn)
	{
		if (!SpriteCursor)
		{
			LHSys::GetMouse().SetCursor(NULL, LH_MOUSE_IMAGE_TYPE_HIDDEN, false);
			FrontEnd::SetCursorOff();
		}
		else
		{
			LHSys::GetMouse().SetCursor(MouseSprite, LH_MOUSE_IMAGE_TYPE_SURFACE, true);
		}
	}
}

void CHand::SetSize(float size)
{
	Size1 = boundf(CHAND_MIN_SIZE, size, CHAND_MAX_SIZE);
	Size2 = GetStandardSize() / MeshSize * DistanceScale * Size1;
}

void CHand::BlendToNewPosition()
{
	LHMatrix* matrices = TransformedMatrices;
	BlendTime = 0.0f;
	TransformedMatrices = BlendFromMatrices;
	BlendFromMatrices = matrices;
	BlendFromPos = BlendToPos;
}

void CHand::PrepareForDrawing()
{
	static bool handHiddenByEditor = false;
	if (GGame::g_game->MapEditorActive || GGame::g_game->HelpEditorActive)
	{
		LHCoord mousePos = LHSys::TheSystem.mouse.DefaultPos;
		if (mousePos.x < CHAND_EDITOR_PANEL_WIDTH)
		{
			if (!CursorOn)
			{
				handHiddenByEditor = true;
				SetEditorControl(true);
			}
		}
		else if (handHiddenByEditor)
		{
			handHiddenByEditor = false;
			Show(true);
		}
	}
	else if (handHiddenByEditor)
	{
		handHiddenByEditor = false;
		Show(true);
	}

	int dt = GGame::g_game->GetCameraTimeInc();
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		dt = LH3DTech::g_delta_time;
	}
	float seconds = dt / CHAND_MILLISECONDS_PER_SECOND;
	InteractionTime += dt;
	SetInInfluence(GGame::g_game->MyInterface()->IsInInfluence());
	SetEvilGood(GGame::g_game->MyPlayer()->GetAlignmentValue());
	UpdateMorphing();
	if (Inactive)
	{
		DoPassiveModeDraw();
		return;
	}

	PreviousScreenPos = ScreenPos;
	if (UseDrawScreenPos)
	{
		ScreenPos = DrawScreenPos;
	}
	else
	{
		ScreenPos = LHSys::TheSystem.mouse.Pos();
	}
	ScreenPosChanged = PreviousScreenPos.x != ScreenPos.x;

	LHPoint direction;
	GUtils::SetUnitDirectionVectorFromScreenPoint(ScreenPos, &direction);
	if (fabs(direction.x) > CHAND_MIN_HEADING_DIRECTION || fabs(direction.z) > CHAND_MIN_HEADING_DIRECTION)
	{
		Heading = heading_from_direction_vector(direction);
	}

	HAND_STATES state = GetActualState(GetRequiredState());
	if (state != CurrentState)
	{
		HandStates.raw[CurrentState]->Exit();
		CurrentState = state;
		HandStates.raw[CurrentState]->Enter();
		BlendToNewPosition();
	}

	if (!CursorOn && state != HAND_STATES_INVISIBLE && !SetupBox::Showing &&
	    InterfaceStatus->GetInterface()->IsActive())
	{
		if (LaggedScreenPosValid)
		{
			LaggedScreenPosX += LaggedScreenVelocityX * seconds;
			LaggedScreenPosX = LaggedScreenPosX > ScreenPos.X() - MaxHandLagX
			                       ? min(LaggedScreenPosX, ScreenPos.X() + MaxHandLagX)
			                       : ScreenPos.X() - MaxHandLagX;
			LaggedScreenVelocityX += (ScreenPos.X() - LaggedScreenPosX) * HandLagStiffness * seconds;
			LaggedScreenVelocityX *= pow(HandLagDamping, seconds);
			LaggedScreenPosY += LaggedScreenVelocityY * seconds;
			LaggedScreenPosY = LaggedScreenPosY > ScreenPos.Y() - MaxHandLagY
			                       ? min(LaggedScreenPosY, ScreenPos.Y() + MaxHandLagY)
			                       : ScreenPos.Y() - MaxHandLagY;
			LaggedScreenVelocityY += (ScreenPos.Y() - LaggedScreenPosY) * HandLagStiffness * seconds;
			LaggedScreenVelocityY *= pow(HandLagDamping, seconds);
		}
		else
		{
			LaggedScreenVelocityX = LaggedScreenVelocityY = 0.0f;
			LaggedScreenPosX = ScreenPos.X();
			LaggedScreenPosY = ScreenPos.Y();
			LaggedScreenPosValid = true;
		}

		HandStates.raw[CurrentState]->Update(seconds, TransformedMatrices);
		if (UseDrawScreenPos)
		{
			UseDrawScreenPos = false;
		}

		if (BlendTime < HandBlendDuration)
		{
			BlendTime += seconds;
			if (BlendTime < HandBlendDuration)
			{
				float  fraction = BlendTime / HandBlendDuration;
				int    count = NumBoneMatrices * sizeof(LHMatrix) / sizeof(float);
				float* from = (float*)BlendFromMatrices;
				float* to = (float*)TransformedMatrices;
				for (int i = 0; i < count; i++)
				{
					to[i] = (to[i] - from[i]) * fraction + from[i];
				}
				BlendPos = BlendFromPos + (BlendToPos - BlendFromPos) * fraction;
				if (CurrentState == HAND_STATES_HOLDING &&
				    (!PhysicsObject::PredictionActive || HeldObject != PhysicsObject::PredictionObject))
				{
					HeldObject->Game3dObject->matrix.GetPos() = BlendPos + HeldObjectOffset;
				}
			}
		}
		else
		{
			BlendPos = BlendToPos;
		}

		DynamicShadow->SetMesh(meshes[CurrentMesh], NULL, NULL);
		DynamicShadow->matrix = *TransformedMatrices;
		DynamicShadow->scale = Size2;
		DynamicShadow->BoneMatrices = TransformedMatrices;
		LH3DMesh::g_current_list_matrix = TransformedMatrices;
		DynamicShadow->VerticalShadow = true;
		DynamicShadow->PrepareShadow();
		LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
		if (SpriteCursor)
		{
			PrepareMouseSprite();
		}
	}
}

void CHand::OperateInteractionCamera(long hand_state)
{
	GCamera*    camera = GGame::g_game->GetCamera();
	GInterface* iface = GGame::g_game->MyInterface();
	if (hand_state == HAND_STATE_CREATURE_INTERACTION)
	{
		Object* collide = GGame::g_game->MyInterface()->interface_collide.object;
		InteractCreature = dynamic_cast<Creature*>(collide);
		if (InteractCreature != NULL)
		{
			InteractCreature3d = InteractCreature->physical->Creature3d;
			Object* object = iface->interface_collide.GetObjectA();
			if (object == NULL)
			{
				SetEditorControl(false);
			}
			else if (object != InteractCreature)
			{
				SetEditorControl(false);
			}
			else if (!InteractionCameraActive)
			{
				NEW(746) CameraModeCtrInteract(camera, InteractCreature);
				InteractionCameraActive = true;
				InteractionTime = 0;
			}
		}
	}
	else if (InteractionCameraActive)
	{
		camera->PopViewMode();
		InteractionCameraActive = false;
		GGlobal::Global.debug.SetMessage("PreInteractionTimer: %d", InteractionTime);
		if (InteractionTime < CHAND_CLICK_INTERACTION_TIME)
		{
			if (InteractCreature->GetPlayer() == GGame::g_game->MyPlayer())
			{
				GGame::g_game->SetPacket(PACKET_TYPE_TOGGLE_LEASH);
			}
		}
	}
}

#ifdef VERSION_BW1W130
CHAND_GLOVE_HELP_CUE CHand::GloveHelpCue;
#endif

LHPoint RequiredHandPos;
LHPoint HandLandPosForRequiredState;

HAND_STATES CHand::GetRequiredState()
{
	if (GGame::g_game->IsInCitadel())
	{
		return HAND_STATES_CITADEL;
	}
	GInterface* iface = GGame::g_game->MyInterface();
	if (HeldObject != NULL && iface->HandState.GetState() == HAND_STATE_OFF)
	{
		HandOff = true;
		return HAND_STATES_INVISIBLE;
	}
	if (iface->status->ObjectInteract != NULL && iface->status->ObjectInteract->IsPileResource() != NULL &&
	    HeldObject != NULL)
	{
		if (iface->HandState.GetState() == HAND_STATE_OFF)
		{
			HandOff = true;
			return HAND_STATES_INVISIBLE;
		}
		return HAND_STATES_HOLDING;
	}
	if (HeldObject != NULL)
	{
		if (iface->HandState.GetState() == HAND_STATE_OFF)
		{
			HandOff = true;
			return HAND_STATES_INVISIBLE;
		}
		if (HeldObject->IsSpellSeed() != NULL)
		{
			return HAND_STATES_GRAIN;
		}
		if (Tugging)
		{
			return HAND_STATES_TUG;
		}
		ThrownObjectTimer = CHAND_THROWN_OBJECT_TIMER;
		return HAND_STATES_HOLDING;
	}
	if (ThrownObjectTimer > 0)
	{
		ThrownObjectTimer -= GGame::g_game->TimeInc;
		if (ThrownObjectTimer < 0 && ThrownObject != NULL)
		{
			ThrownObjectTimer = 0;
			HandStateHolding* holding = HandStates.named.holding;
			GGame::g_game->SetPacket(PACKET_TYPE_PUSH_PHYSICS_OBJECT, ThrownObject->GetIndexOffset(),
			                         &(HandLandPosForRequiredState - RequiredHandPos), &holding->ThrowVelocity, 0.0f);
			ThrownObject = NULL;
		}
	}
	long state = iface->HandState.GetState();
	OperateInteractionCamera(state);
	HandOff = false;
	if (InFixedPosAnimation)
	{
		return HAND_STATES_PLAY_ANIM;
	}
	switch (state)
	{
	case HAND_STATE_POINTER_NORMAL:
	case HAND_STATE_POINTER_SELECT:
	case HAND_STATE_OVER_GAME_PANEL:
		return HAND_STATES_INVISIBLE;
	case HAND_STATE_SELECT_LOCK:
		return HAND_STATES_TOTEM;
	case HAND_STATE_CREATURE_INTERACTION:
		return InteractCreature3d != NULL ? HAND_STATES_CREATURE : HAND_STATES_NORMAL;
	case HAND_STATE_OFF:
		HandOff = true;
		return HAND_STATES_INVISIBLE;
	}
	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
	if (mode != NULL && (mode->MouseButtons & CAMERA_MODE_MOUSE_STATUS_LEFT))
	{
		return HAND_STATES_CAMERA;
	}
	return HAND_STATES_NORMAL;
}

HAND_STATES CHand::GetActualState(long required_state)
{
	GGame::g_game->MyInterface()->HandState.GetState();
	HAND_STATES current_state = CurrentState;
	if (required_state == HAND_STATES_CREATURE)
	{
		if (current_state != HAND_STATES_CREATURE && InteractCreature->IsInHandInteract() &&
		    InteractCreature->BeforeHandInteractState == CREATURE_HAND_INTERACT_STATE_NORMAL)
		{
			return HAND_STATES_CREATURE;
		}
		return current_state;
	}
	if (current_state == HAND_STATES_CREATURE)
	{
		HandStateCreature* creature = HandStates.named.creature;
		if (InteractCreature != NULL && InteractCreature->IsReadyForNetworkUnfriendlyEndLockedSelect() != true)
		{
			GGame::g_game->SetPacket(PACKET_TYPE_PLAYER_FEEDBACK, InteractCreature->GetIndexOffset(),
			                         creature->HandValue > -1.0f ? min(creature->HandValue, 1.0f) : -1.0f);
			InteractCreature = NULL;
			InteractCreature3d = NULL;
		}
	}
	return (HAND_STATES)required_state;
}

void CHand::SetUpPositionMatrix(LHMatrix& matrix)
{
	Size2 = GetStandardSize() / MeshSize * DistanceScale * Size1;
	matrix.SetScale(Size2);
	if (HandOrientation)
	{
		matrix._11 = -matrix._11;
		matrix._12 = -matrix._12;
		matrix._13 = -matrix._13;
		matrix._41 = -matrix._41;
	}
}

void CHand::Draw()
{
	if (SpriteCursor == true || SetupBox::Showing || !InterfaceStatus->GetInterface()->IsActive())
	{
		return;
	}
	if (Inactive)
	{
		DynamicShadow->Draw();
		return;
	}
	if (CurrentState != HAND_STATES_INVISIBLE && !CursorOn)
	{
		DynamicShadow->Draw();
		if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
		{
			((PHandFX*)HandFx)->DrawHandFX();
			InterfaceStatus->influence->Draw();
			DrawSpellInHand();
		}
	}
}

uint32_t CHand::AddForDrawing()
{
	AddDrawing();
	return 1;
}

void CHand::AddDrawing()
{
	LH3DIsland::GetColorAndSpecular(&DynamicShadow->matrix.GetPos(), &DynamicShadow->color, &DynamicShadow->specular);
	static float lightScale = 1.5f;
	LH3DColor*   colour = (LH3DColor*)&DynamicShadow->color;
	float        value = lightScale * colour->b;
	if (value > CHAND_COLOUR_CHANNEL_MAX)
	{
		value = CHAND_COLOUR_CHANNEL_MAX;
	}
	colour->b = value;
	value = lightScale * colour->g;
	if (value > CHAND_COLOUR_CHANNEL_MAX)
	{
		value = CHAND_COLOUR_CHANNEL_MAX;
	}
	colour->g = value;
	value = lightScale * colour->r;
	if (value > CHAND_COLOUR_CHANNEL_MAX)
	{
		value = CHAND_COLOUR_CHANNEL_MAX;
	}
	colour->r = value;
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&CHand::Draw,
	                                  LH3DTech::GetValueForZSorter(DynamicShadow->matrix.GetPos()), 0);
}

CAnim* CHand::GetAnimOrDefault(long anim)
{
	CAnim* result = GetAnim(anim, 0);
	if (result == NULL)
	{
		result = GetAnim(0, 0);
	}
	return result;
}

bool32_t CHand::HasPluckedObject() const
{
	return !Tugging;
}

void CHand::UpdateHeldObject()
{
	if (CurrentState == HAND_STATES_TUG)
	{
		HandStates.named.tug->UpdateHeldObject();
	}
}

Creature* CHand::GetCreatureToGiveTo()
{
	if (CurrentState == HAND_STATES_HOLDING && HandStates.named.holding->CanCurrentlyGiveToCreature() &&
	    InteractCreature != NULL)
	{
		return InteractCreature;
	}
	return NULL;
}

void CHand::SetHeldObject(Object* object)
{
	if (object != HeldObject)
	{
		if (HeldObject == NULL)
		{
			PickUpObject(object, false);
		}
		else if (object != NULL)
		{
			SwitchObject(object);
		}
		else
		{
			ThrowObject();
		}
	}
}

HandStateGrain* CHand::GetHandStateGrain()
{
	return HandStates.named.grain;
}

void CHand::UpdateLeftRightFromPlayer(LHPlayer* player)
{
	if (player != NULL && GGame::g_game->network.session != NULL)
	{
		PlayerProfile* profile = (PlayerProfile*)GGame::g_game->network.session->GetUserData(player);
		if (profile != NULL && profile->HAND_ORIENTATION == HandOrientation)
		{
			ToggleLeftRight();
		}
	}
}

void CHand::ReadRegistrySettings() {}

void CHand::UpdateSpellInHand()
{
	if (SpellInHand != NULL && SpellInHand->IsAvailable() != true)
	{
		SpellInHand = NULL;
		SpellInHandEffect->CloseDown();
	}
}

void CHand::DrawSpellInHand()
{
	int dt = max(LH3DTech::GetGameTimeInc(), 1);
	if (SpellInHandEffect != NULL)
	{
		if (SpellInHandAtGraspPos)
		{
			LH3DAnim::GetGraspPoint(TransformedMatrices, GetMesh(), SpellInHandProcessInfo.GesturePosition, 0);
		}
		else
		{
			SpellInHandProcessInfo.GesturePosition = position;
		}
		if (SpellInHand != NULL)
		{
			SpellInHandProcessInfo.Strength = SpellInHand->GetPSysPower();
		}
		SpellInHandEffect->SetMagnitude(GetDistanceScale());
		if (dt > 0 && SpellInHandEffect->Process(SpellInHandProcessInfo, dt) == CHAND_SPELL_EFFECT_FINISHED)
		{
			SpellInHandDestroy();
		}
	}
	if (SpellInHandEffect != NULL && (SpellInHand == NULL || SpellInHand->DrawnInHand))
	{
		SpellInHandEffect->Draw(1.0f, false);
	}
}

void CHand::SpellInHandDestroy()
{
	delete SpellInHandEffect;
	SpellInHandEffect = NULL;
	SpellInHand = NULL;
}

void CHand::SpellInHandStart(const SpellSeed* seed)
{
	SpellInHandDestroy();
	PARTICLE_TYPE type = seed->GetInHandParticleType();
	if (type != PARTICLE_TYPE_NONE)
	{
		SpellInHandEffect = PSysInterface::Create(NULL, type, LHPoint(0.0f, 0.0f, 0.0f), LHPoint(0.0f, 0.0f, 0.0f),
		                                          1.0f, PSysInterface::NET_GAME_TYPE_LOCAL);
		if (SpellInHandEffect != NULL)
		{
			SpellInHand = (SpellSeed*)seed;
			SpellInHandAtGraspPos = SpellInHand->IsDrawAtGraspPos();
			SpellInHandEffect->SetPlayer(GGame::g_game->MyPlayer());
			SpellInHandEffect->SetOrigin(GGame::g_game->MyInterface()->GetRenderHand()->position);
		}
	}
}

void CHand::SpellInHandStop()
{
	if (SpellInHandEffect != NULL)
	{
		SpellInHandEffect->CloseDown();
	}
	SpellInHand = NULL;
}

void CHand::DoPassiveModeDraw()
{
	LHMatrix matrix;
	SetUpPositionMatrix(matrix);

	LHPoint up(0.0f, 1.0f, 0.0f);
	float   heading = PI_F - Heading;
	LHPoint forward(sin(heading), 0.0f, -cos(heading));
	LHPoint right = forward ^ up;
	right.SetSize(1.0f);
	forward = up ^ right;

	LHMatrix rotation;
	rotation.GetVectorX().Set(right.x, right.y, right.z);
	rotation.GetVectorY().Set(-forward.x, -forward.y, -forward.z);
	rotation.GetVectorZ().Set(-up.x, -up.y, -up.z);
	matrix.PostMultiplyMatrixOnly(rotation);
	matrix.SetTranslateOnly(position);
	matrix.GetPos().y += GetStandardSize();

	if (CycleAnim[0])
	{
		CycleAnim[0]->FillBuffer(TransformedMatrices, GetMesh(), BaseMatrices, InverseBaseMatrices, CycleTime[0], frame,
		                         NULL, true);
		LH3DAnim::FinishTransform(TransformedMatrices, GetMesh(), matrix);
	}
	else
	{
		LH3DAnim::SetTransform(TransformedMatrices, GetMesh(), matrix);
	}

	DynamicShadow->SetMesh(meshes[CurrentMesh], NULL, NULL);
	DynamicShadow->matrix = matrix;
	DynamicShadow->BoneMatrices = TransformedMatrices;
	LH3DMesh::g_current_list_matrix = TransformedMatrices;
	DynamicShadow->VerticalShadow = true;
	DynamicShadow->PrepareShadow();
	LH3DMesh::g_current_list_matrix = LH3DMesh::g_my_list_matrix;
}

void CHand::PrepareMouseSprite()
{
	LH3DHand::g_hotspot_x = DrawScreenPos.X();
	LH3DHand::g_hotspot_y = DrawScreenPos.Y();
	if (MouseSprite->Lock() == LH_OK)
	{
		LH3DHand::g_buffer = (uint16_t*)MouseSprite->LockedAddress;
		DynamicShadow->DrawForMouse();
		MouseSprite->Unlock();
		LHSys::GetMouse().Hotspot.Set((short)LH3DHand::g_hotspot_x, (short)LH3DHand::g_hotspot_y);
	}
}

float CHand::GetDistanceFromObject(Object* object)
{
	float radius = 0.0f;
	if (object->Game3dObject)
	{
		radius = object->Get2DRadius();
	}

	LHPoint objectPos;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, objectPos);
	GGame::g_game->GetCamera();
	LHPoint cameraPos;
	cameraPos = *LH3DTech::GetCameraPosition();
	return cameraPos.GetDistance(objectPos) - radius;
}

void CHand::PickUpObject(Object* object, bool32_t allow_tug)
{
	HeldObject = object;
	if (object == NULL)
	{
		Tugging = false;
		return;
	}
	Game3DObject* object3d = object->Game3dObject;
	if (object3d == NULL)
	{
		Tugging = false;
		return;
	}
	if (object->IsSpellSeed())
	{
		allow_tug = false;
	}
	if (HeldObject != NULL && HeldObject->IsG3DObjectDrawnInHand())
	{
		DynamicShadow->SetCarriedObject(object3d);
	}
	else
	{
		DynamicShadow->SetCarriedObject(NULL);
	}
	SavedNeedSorting = object3d->IsNeedSorting();
	SavedCastDynamicShadow = object3d->IsCastDynamicShadow();
	object3d->SetNeedSorting(true);
	object3d->SetCastDynamicShadow(false);
	object3d->specular = 0;
	HoldType = object->GetHoldType();
	bool inPhysics = object->InPhysics && !(object->GameThing::Flags & GAME_THING_FLAG_PSYS_FLYING);
	if (allow_tug && !inPhysics)
	{
		Tugging = true;
		return;
	}
	Tugging = false;
	PickUpPos.Set(object->Game3dObject->matrix.GetPos());
	HoldHeight = object->GetHoldLoweringMultiplier() * object->GetHeight();
	float minHoldHeight = GetStandardSize() * DistanceScale * CHAND_MIN_HOLD_HEIGHT_SCALE;
	HoldHeight = max(minHoldHeight, HoldHeight);
	HeldObjectVelocity.SetNull();
	TugAngularVelocity.SetNull();
}

void CHand::ThrowObject()
{
	if (HeldObject != NULL)
	{
		Game3DObject* object3d = HeldObject->Game3dObject;
		if (object3d != NULL)
		{
			object3d->SetNeedSorting(SavedNeedSorting);
			object3d->SetCastDynamicShadow(SavedCastDynamicShadow);
		}
		DynamicShadow->SetCarriedObject(NULL);
		ThrownObject = HeldObject;
		HeldObject = NULL;
		GLandscape::DrawListRebuildCount = CHAND_THROW_DRAW_LIST_REBUILD_COUNT;
	}
}

void CHand::SwitchObject(Object* object)
{
	Game3DObject* object3d = HeldObject->Game3dObject;
	if (object3d != NULL)
	{
		HeldObject->GetWorldMatrix(&object3d->matrix);
		object3d->SetNeedSorting(SavedNeedSorting);
	}
	HeldObject = object;
	HoldType = object->GetHoldType();
	object3d = HeldObject->Game3dObject;
	SavedNeedSorting = object3d->IsNeedSorting();
	object3d->SetNeedSorting(true);
	if (HeldObject != NULL && HeldObject->IsG3DObjectDrawnInHand())
	{
		DynamicShadow->SetCarriedObject(object3d);
	}
	else
	{
		DynamicShadow->SetCarriedObject(NULL);
	}
	BlendToNewPosition();
}

void CHand::DrawTheHeldObject()
{
	if (!SetupBox::Showing && InterfaceStatus->GetInterface()->IsActive())
	{
		switch (CurrentState)
		{
		case HAND_STATES_TUG:
		case HAND_STATES_HOLDING:
		case HAND_STATES_MULTI_PICK_UP:
		case HAND_STATES_GRAIN:
			HandStates.raw[CurrentState]->DrawTheHeldObject();
			break;
		}
	}
}

float CHand::WorkOutStandardDistanceFromView(bool32_t keep_clear_of_land)
{
	LHPoint  hitPoint;
	bool32_t hit = LH3DIsland::RayCastFrom2DPoint(ScreenPos, &hitPoint.x, &hitPoint.z, true,
	                                              LH3DTech::GetNearClipping() + CHAND_RAY_CAST_NEAR_OFFSET);
	if (hit)
	{
		hitPoint.y = LH3DIsland::GetAltitude(hitPoint);
	}
	else
	{
		hitPoint = position;
		if (CurrentState == HAND_STATES_HOLDING && HandStates.named.holding->InThrow)
		{
			hit = true;
			GUtils::SetPointFromScreenPointAndDistance(&ScreenPos, MaxDistanceFromUser, &hitPoint);
		}
	}
	HandLandPos = hitPoint;
	HandLandPosForRequiredState = hitPoint;
	if (hitPoint.y < CHAND_MIN_KEEP_CLEAR_HEIGHT)
	{
		keep_clear_of_land = false;
	}
	GGame::g_game->GetCamera();
	LHPoint cameraPos;
	cameraPos = *LH3DTech::GetCameraPosition();
	float distance;
	if (hit)
	{
		distance = cameraPos.GetDistance(hitPoint);
		if (keep_clear_of_land)
		{
			distance -= GetStandardSize() * DistanceScale * Size1;
		}
	}
	else
	{
		distance = cameraPos.GetDistance(position);
	}
	return distance > MinDistanceFromView ? min(distance, MaxDistanceFromUser) : MinDistanceFromView;
}

void CHand::FillStandardPositionMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up)
{
	BlendToPos = pos;
	SetUpPositionMatrix(matrix);

	float   heading = Heading + PI_F;
	LHPoint forward(sin(heading), 0.0f, -cos(heading));
	LHPoint right = forward ^ up;
	right.SetSize(1.0f);
	forward = up ^ right;

	LHMatrix rotation;
	rotation.GetVectorX().Set(right.x, right.y, right.z);
	rotation.GetVectorY().Set(-forward.x, -forward.y, -forward.z);
	rotation.GetVectorZ().Set(-up.x, -up.y, -up.z);
	matrix.PostMultiplyMatrixOnly(rotation);
	matrix.SetTranslateOnly(pos);
}

void CHand::FillStandardObjectMatrix(LHMatrix& matrix, const LHPoint& pos, const LHPoint& up)
{
	SetUpPositionMatrix(matrix);

	float   heading = Heading + PI_F;
	LHPoint forward(sin(heading), 0.0f, -cos(heading));
	LHPoint right = forward ^ up;
	right.SetSize(1.0f);
	forward = up ^ right;

	LHMatrix rotation;
	rotation.GetVectorX().Set(right.x, right.y, right.z);
	rotation.GetVectorY().Set(up.x, up.y, up.z);
	rotation.GetVectorZ().Set(forward.x, forward.y, forward.z);
	if (!HandOrientation)
	{
		rotation.GetVectorZ() *= -1.0f;
	}
	matrix.PostMultiplyMatrixOnly(rotation);
	matrix.SetTranslateOnly(pos);
}

void CHand::GameTurnUpdate()
{
	HandStateGrain::Process(GGameInfo::Info.MillisecondsPerGameTurn * CHAND_SECONDS_PER_MILLISECOND);
	if (HeldObject != NULL)
	{
		if (HeldObject->IsAvailable() != true)
		{
			ThrowObject();
		}
		else
		{
			HoldType = HeldObject->GetHoldType();
		}
	}
	if (ThrownObject != NULL && ThrownObject->IsAvailable() != true)
	{
		ThrownObject = NULL;
		ThrownObjectTimer = 0;
	}
	if (InteractCreature != NULL && !InteractCreature->IsAvailable())
	{
		InteractCreature = NULL;
		InteractCreature3d = NULL;
		CreatureBeingGivenTo = NULL;
	}
	UpdateSpellInHand();
}

void CHand::OnClearMap()
{
	SpellInHandDestroy();
	DynamicShadow->SetCarriedObject(NULL);
	HeldObject = NULL;
	ThrownObject = NULL;
	InteractCreature = NULL;
	InteractCreature3d = NULL;
	CreatureBeingGivenTo = NULL;
	ThrownObjectTimer = 0;
	InteractionTime = 0;
	CurrentState = HAND_STATES_NORMAL;
	InInfluence = true;
	MouseSprite = NULL;
	InteractionCameraActive = false;
}

bool32_t CHand::Load(GameOSFile& file)
{
	SpellInHandDestroy();
	file.ReadIt(CurrentState);
	file.ReadPtr((GameThing**)&HeldObject);
	file.ReadIt(HoldType);
	file.ReadIt(SavedNeedSorting);
	file.ReadIt(SavedCastDynamicShadow);
	file.ReadIt(HoldHeight);
	file.ReadIt(position);
	file.ReadSafe((PSysBase*&)SpellInHandEffect);
	file.ReadPtr((GameThing**)&SpellInHand);
	file.ReadIt(SpellInHandAtGraspPos);
	return true;
}

bool32_t CHand::Save(GameOSFile& file)
{
	file.WriteIt(CurrentState);
	file.WritePtr(HeldObject);
	file.WriteIt(HoldType);
	file.WriteIt(SavedNeedSorting);
	file.WriteIt(SavedCastDynamicShadow);
	file.WriteIt(HoldHeight);
	file.WriteIt(position);
	file.WriteSafe((PSysBase*&)SpellInHandEffect);
	file.WritePtr(SpellInHand);
	file.WriteIt(SpellInHandAtGraspPos);
	return true;
}

void CHand::ResolveLoad()
{
	if (CurrentState == HAND_STATES_HOLDING && HeldObject == NULL)
	{
		CurrentState = HAND_STATES_NORMAL;
	}
	switch (CurrentState)
	{
	case HAND_STATES_HOLDING:
		GLandscape::ConvertMapCoordToLandscapePoint(HeldObject->Pos, PickUpPos);
		HeldObjectVelocity.SetNull();
		TugAngularVelocity.SetNull();
		HandStates.raw[CurrentState]->Enter();
		break;
	case HAND_STATES_GRAIN:
		HandStates.raw[CurrentState]->Enter();
		break;
	}
}
