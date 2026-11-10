#include "MapCellConstants.h"
#include "GestureConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "InterfaceActionStateTable.h"
#include "InterfaceAction.h"

#include "ColourConstants.h" /* For White */

#include <float.h> /* For FLT_MAX */

#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h> /* For LH_SAMPLE_LOOP_FOREVER, LH_SAMPLE_PLAY_TYPE_ONCE */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>               /* For LHScreen::CriticalSection */
#include <chlasm/LHSample.h>                              /* For LH_SAMPLE_G_HANDGESTURE_02 */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "ControlHand.h"
#include "Creature.h"
#include "Game.h"
#include "GestureSystem.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Player.h"
#include "SoundTag.h"

// clang-format off
InterfaceActionStateTableEntry InterfaceActionStateTableEntry::StateTable[INTERFACE_ACTION_STATE_LAST] = {
	{&GInterface::InterfaceActionStateNormal, 0, 0, false, false, false},
	{&GInterface::InterfaceActionStateNormal, 0, 0, false, false, true},
	{&GInterface::InterfaceActionStateLandscape, 0, 0, false, false, false},
	{&GInterface::InterfaceActionStateWaitForSelectLocked, &GInterface::InterfaceActionStateCleanLockedSelect, 2, false, false, true},
	{&GInterface::InterfaceActionStateLockedSelect, &GInterface::InterfaceActionStateCleanLockedSelect, 2, false, false, true},
	{&GInterface::InterfaceActionStateWaitForSelectLockOff, &GInterface::InterfaceActionStateCleanLockedSelect, 2, false, false, true},
	{&GInterface::InterfaceActionStateWaitForSelectLockOffCompletion, &GInterface::InterfaceActionStateCleanLockedSelect, 2, false, false, true},
	{&GInterface::InterfaceActionStateWaitForPlaceInHand, 0, 0, false, true, true},
	{&GInterface::InterfaceActionStateUsingRecSystem, &GInterface::InterfaceActionStateCleanRSystem, 0, true, false, true},
	{&GInterface::InterfaceActionStateUsingRecSystem, &GInterface::InterfaceActionStateCleanRSystem, 0, true, false, true},
	{&GInterface::InterfaceActionStateHandObjectLockedApplyToPos, &GInterface::InterfaceActionStateCleanLockedApply, 0, true, false, true},
	{&GInterface::InterfaceActionStateHandObjectLockedApplyToObject, &GInterface::InterfaceActionStateCleanLockedApply, 0, true, false, true},
	{&GInterface::InterfaceActionStateWaitForApplyRelease, &GInterface::InterfaceActionStateCleanApplyRelease, 0, true, false, true},
	{&GInterface::InterfaceActionStateWaitForHandPluck, &GInterface::InterfaceActionStateCleanHandPluck, 0, false, true, true},
	{&GInterface::InterfaceActionStateInterfaceOff, 0, 0, false, false, false},
	{&GInterface::InterfaceActionStateWaitForGive, &GInterface::InterfaceActionStateCleanGive, 0, true, false, true},
	{&GInterface::InterfaceActionStateFighting, 0, 0, false, false, false},
	{&GInterface::InterfaceActionStateBubbleGrip, 0, 0, false, false, true},
	{&GInterface::InterfaceActionStateWaitForApplyReleaseNoAction, 0, 0, false, false, true},
	{&GInterface::InterfaceActionStateWaitForStartLockedSelect, 0, 0, false, false, true},
	{&GInterface::InterfaceActionStateWaitForDelayOnLeashSupply, 0, 0, true, false, true},
	{&GInterface::InterfaceActionStateLeashInteract, 0, 0, false, false, true},
	{&GInterface::InterfaceActionStateFightApply, &GInterface::InterfaceActionEndFightAction, 0, false, false, false},
	{&GInterface::InterfaceActionStateFightSelect, &GInterface::InterfaceActionEndFightAction, 0, false, false, false},
};
// clang-format on

void GInterface::InterfaceActionValidateObjectsForStates()
{
	if (IsActive() && GGame::g_game->help_system->WideScreen && GGame::g_game->help_system->GetWideScreenControl() &&
	    !IsPlayBack(0))
	{
		SetActive(false);
	}
	if (!IsActive() && ActionState != INTERFACE_ACTION_STATE_INTERFACE_OFF)
	{
		InterfaceActionForceToNormal();
	}
	Object* object = Collide.object;
	if (object)
	{
		if (!dynamic_cast<Object*>(object))
		{
			InterfaceActionForceToNormal();
			return;
		}
		if (!object->IsInteractable() || (object->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE))
		{
			InterfaceActionForceToNormal();
		}
	}
	else if (InterfaceStateIsCollideObjectRelated())
	{
		InterfaceActionForceToNormal();
	}
	if (status->ObjectHeldInHand())
	{
		Object* held = status->GetFirstObjectInCurrentHand();
		if (held && held->IsInteractable())
		{
			return;
		}
	}
	if (InterfaceStateIsHandObjectRelated())
	{
		InterfaceActionForceToNormal();
	}
}

bool32_t GInterface::InterfaceStateIsHandObjectRelated()
{
	return InterfaceActionStateTableEntry::StateTable[ActionState].HandObjectRelated;
}

bool32_t GInterface::InterfaceStateIsCollideObjectRelated()
{
	return InterfaceActionStateTableEntry::StateTable[ActionState].CollideObjectRelated;
}

void GInterface::InterfaceActionForceToNormal()
{
	if (InterfaceActionStateTableEntry::StateTable[ActionState].CleanState)
	{
		(this->*InterfaceActionStateTableEntry::StateTable[ActionState].CleanState)();
	}
	Collide.ClearObject();
	interface_collide.ClearObject();
	ResetActionState();
	if (status->IsSpaceInHands() && GGame::g_game && GetPlayer() == GGame::g_game->MyPlayer() && hand.Get() &&
	    hand.Get()->HeldObject)
	{
		hand.Get()->ThrowObject();
	}
	MessageBuffers.Count = 0;
	AppliedTurn = 0;
	ApplyRecievedPacketTurn = 0;
	flags.Flags = 0;
	flags.ClickFlags = 0;
}

void GInterface::InterfaceActionSelect()
{
	InterfaceActionSetLandscapeMovement();
}

bool32_t GInterface::InterfaceActionStateCleanHandPluck()
{
	StopImmersion(IMMERSION_EFFECT_TYPE_GRIP_FORCE);
	return true;
}

bool32_t GInterface::InterfaceActionDrop()
{
	if (status->ObjectHeldInHand())
	{
		Object* object = status->GetFirstObjectInCurrentHand();
		if (Collide.GetPos().InBounds() && object->ValidToRemoveFromHand(status, Collide.GetPos()))
		{
			GGame::g_game->SetPacket(PACKET_TYPE_DROP, Collide.GetPos());
			return true;
		}
	}
	return false;
}

bool32_t GInterface::InterfaceActionEndLockedSelect(Object* object)
{
	if (object == NULL)
	{
		return false;
	}
	object->NetworkUnfriendlyEndLockedSelect();
	GGame::g_game->SetPacket(PACKET_TYPE_END_LOCKED_SELECT, object->GetIndexOffset());
	return true;
}

bool32_t GInterface::InterfaceActionStartUsingRSystem(INTERFACE_ACTION_STATE state)
{
	StartUsingRSystem();
	flags.Locked = 1;
	SetActionState(state);
	SoundTag::Create(this, LH_SAMPLE_G_HANDGESTURE_02, false, LH_SAMPLE_PLAY_TYPE_ONCE, LH_SAMPLE_LOOP_FOREVER, false,
	                 true, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	return true;
}

void GInterface::StartUsingRSystem()
{
	GGame::g_game->gesture_system->Reset();
	AddToRSystem(&LocalScreenCursorXY);
}

void GInterface::StopUsingRSystem()
{
	GetSpellSeedInHand();
	EnterCriticalSection(&LHScreen::CriticalSection);
	SoundTag::Remove(this, LH_SAMPLE_G_HANDGESTURE_02, AUDIO_SFX_BANK_TYPE_IN_GAME);
	flags.RSystemInProgress = 0;
	flags.RSystemStopped = 1;
	LeaveCriticalSection(&LHScreen::CriticalSection);
}

bool32_t GInterface::InterfaceActionStartApplyOnRelease()
{
	SetActionState(INTERFACE_ACTION_STATE_WAIT_FOR_APPLY_RELEASE);
	return true;
}

void GInterface::SetActionState(INTERFACE_ACTION_STATE state)
{
	if (state != ActionState)
	{
		ActionState = state;
	}
}

bool32_t GInterface::IsMyCreatureFighting()
{
	if (GGame::g_game->Initialised)
	{
		Creature* creature = GetPlayer()->GetCreature();
		if (creature && creature->IsFighting())
		{
			return true;
		}
	}
	return false;
}

void GInterface::ResetActionState()
{
	if (GGame::g_game)
	{
		if (!IsActive())
		{
			SetActionState(INTERFACE_ACTION_STATE_INTERFACE_OFF);
			return;
		}
		if (GGame::g_game->GetCamera())
		{
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
			if (IsMyCreatureFighting() && mode && mode->HasFight)
			{
				if (!status->GetFirstObjectInCurrentHand())
				{
					SetActionState(INTERFACE_ACTION_STATE_FIGHTING);
					return;
				}
			}
		}
	}
	SetActionState(INTERFACE_ACTION_STATE_NORMAL);
}

Creature* GInterface::GetFightingObject()
{
	Creature* creature = GetPlayer()->GetCreature();
	return creature->IsFighting() ? creature : NULL;
}

void GInterface::InterfaceActionApplyRecievedPacket()
{
	ApplyRecievedPacketTurn = GGame::g_game->data.GetGameTurn();
}

void GInterface::InterfaceActionAppliedTurn()
{
	AppliedTurn = GGame::g_game->data.GetGameTurn();
}

bool32_t GInterface::InterfaceActionStateInterfaceOff()
{
	return true;
}

void GInterface::SetRClickedObject(Object* object)
{
	LastRClickedObject.Set(object);
	LastRClickedTurn = GGame::g_game->data.GetGameTurn();
}

SpellSeed* GInterface::GetSpellSeedInHand()
{
	Object* object = status->GetFirstObjectInCurrentHand();
	if (object)
	{
		return object->IsSpellSeed();
	}
	return NULL;
}

bool32_t GInterface::InterfaceActionSetBubbleGrip()
{
	SetActionState(INTERFACE_ACTION_STATE_BUBBLE_GRIP);
	flags.Locked = 1;
	return true;
}
