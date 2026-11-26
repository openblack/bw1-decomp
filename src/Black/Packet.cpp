#include "Packet.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy, strlen, strnicmp */
#include <wchar.h>  /* For wcscpy */

#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_TOOLTIP_FOCUS_CREATURE */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>

#include <windows.h> /* For GetTickCount */

#include "Animal.h"
#include "AnimalInfo.h"
#include "Ball.h"
#include "BallInfo.h"
#include "Base.h"
#include "Citadel.h"
#include "CitadelHeartInfo.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureLessonChooser.h"
#include "CreatureMental.h"
#include "CreatureMentalEditor.h"
#include "CreatureAgenda.h"
#include "CreatureSubAction.h"
#include "CreaturePhysical.h"
#include "CreatureInfo.h"
#include "InterfaceStatus.h"
#include "Alignment.h"
#include "Game.h"
#include "MPFEStartGameData.h"
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>
#include "GameInfo.h"
#include "GatheringBox.h"
#include "Global.h"
#include "OneOffSpellSeed.h"
#include "PSysHandFX.h"
#include "SaveGameRoom.h"
#include "CreatureReceiveSpell.h"
#include "Interface.h"
#include "ParticleContainer.h"
#include "LandAlignement.h"
#include "LeashStatus.h"
#include "PhysicsObject.h"
#include "PlayerProfile.h"
#include "LHNetBase.h"
#include "Player.h"
#include "ControlHand.h"
#include "Rand.h"
#include "ToolTips.h"
#include "Totem.h"
#include "TotemStatue.h"
#include "ValueSpinner.h"
#include "Landscape.h"
#include "Town.h"
#include "Tree.h"
#include "TreeInfo.h"
#include "WorshipSpellIcon.h"

// BW1W120 00d443d4
uint32_t PacketSendTimes[0x20];
// BW1W120 00d44454
uint32_t PacketLatency;

void GGame::ProcessOneSuperpacket()
{
	network.ProcessOneSuperpacket();
	GGame::g_game->Packet.Type = 0;
	GNetwork::ResetStateDebug();
}

void GPacket::SendObjectIndex(unsigned long index)
{
	ObjectIndex = index;
	if (index != 0)
	{
		ObjectUniqueId = Base::GetUniqueId(index);
	}
	else
	{
		ObjectUniqueId = 0;
	}
}

void GPacket::ProcessPacket(uint8_t player_number)
{
	GPlayer*    player = GGame::g_game->GetPlayerFromReal(player_number);
	GInterface* player_interface = GGame::g_game->GetPlayerInterfaceFromReal(player_number);
	LHPlayer*   net_player = LHNetBase::Instance.Session->GetPlayerFromNum(player_number);
	switch (Type)
	{
	case PACKET_TYPE_FORCE_OUT_OF_SYNC:
		GGame::g_game->ProcessDebugGameDataPacket(&Bytes[0], Length, player);
		break;
	case PACKET_TYPE_CREATE_ANIMAL: {
		Animal* animal = Animal::CreateFromType(MapCoords(CellX, CellZ), &GAnimalInfo::GetInfo()[InfoType], NULL, 0);
		if (animal != NULL)
		{
			animal->SetTownIfNearby(150.0f);
		}
		break;
	}
	case PACKET_TYPE_SET_CREATURE:
		if (InfoType == -1)
		{
			if (GGame::g_game->GetPlayer(player_number)->creature.Get() != NULL)
			{
				GGame::g_game->GetPlayer(player_number)->creature.Get()->ToBeDeleted(false);
			}
		}
		else
		{
			Creature* creature = Creature::CreateCreature(MapCoords(CellX, CellZ), &CreatureInfo::GetInfo()[InfoType],
			                                              GGame::g_game->GetPlayer(player_number));
			if (GGame::g_game->IsMultiplayerGame())
			{
				creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
			}
			else if (creature->GetPlayer() == GGame::g_game->MyPlayer() && GGame::g_game->LandNumber == 1)
			{
				creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_INITIAL, 0);
				creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_INITIAL, 0, NULL, NULL, 0);
			}
		}
		break;
	case PACKET_TYPE_SET_OTHER_CREATURE:
		if (InfoType == -1)
		{
			if (GGame::g_game->OtherPlayer()->GetCreature() != NULL)
			{
				GGame::g_game->OtherPlayer()->GetCreature()->ToBeDeleted(false);
			}
		}
		else if (GGame::g_game->OtherPlayer()->GetCreature() != NULL)
		{
			GPlayer* free_player = NULL;
			for (uint32_t i = 0; i < 8; i++)
			{
				GPlayer* candidate = GGame::g_game->GetPlayer(i);
				if (candidate != GGame::g_game->MyPlayer() && candidate->GetCreature() == NULL)
				{
					free_player = candidate;
				}
			}
			if (free_player != NULL)
			{
				Creature::CreateCreature(MapCoords(CellX, CellZ), &CreatureInfo::GetInfo()[InfoType], free_player);
			}
		}
		else
		{
			Creature::CreateCreature(MapCoords(CellX, CellZ), &CreatureInfo::GetInfo()[InfoType],
			                         GGame::g_game->OtherPlayer());
		}
		break;
	case PACKET_TYPE_CREATE_CITADEL:
		Citadel::CreateCitadel(MapCoords(CellX, CellZ), GCitadelHeartInfo::GetInfo(), player_number, 0.0f, 1.0f);
		break;
	case PACKET_TYPE_CREATE_TREE: {
		unsigned short z = Start.CellZ;
		unsigned short x = Start.CellX;
		Tree::Create(MapCoords(x, z), &GTreeInfo::GetInfo()[GAME_RAND(185, TREE_INFO_LAST)], NULL, 1.0f, 0.0f, 1.0f);
	}
	break;
	case PACKET_TYPE_CREATE_BALLS: {
		for (int i = 0; i < Count; i++)
		{
			MapCoords      coords(player_interface->status->ReportedHandPos);
			Ball*          ball = Ball::Create(coords, GBallInfo::GetInfo(), GAME_RAND(213, 0x800), 6.0f, 4.0f);
			LHPoint        zero(0.0f, 0.0f, 0.0f);
			PhysicsObject* physics = ball->InitialisePhysics(zero, zero, NULL, true, NULL).Physics;
			if (physics != NULL)
			{
				physics->Flags |= PHYSICS_OBJECT_FLAG_PUSHED;
				physics->Physics.AdjustToGroundLevel(false, true);
				PhysicsObject::RaiseUntilNotIntersecting(&physics);
			}
		}
		break;
	}
	case PACKET_TYPE_CLAIM_TOWN:
		if (GetObjectFromIndex() != NULL)
		{
			player->ClaimTown(static_cast<Town*>(GetObjectFromIndex()));
		}
		break;
	case PACKET_TYPE_SELECT_MAP_COORD_TO_FIGHT:
		player_interface->SelectMapCoordToFight(Start);
		break;
	case PACKET_TYPE_APPLY_MAP_COORD_TO_FIGHT:
		player_interface->ApplyMapCoordToFight(Start);
		break;
	case PACKET_TYPE_APPLY_OBJECT_TO_HAND_OBJECT:
		player_interface->ApplyInterfaceObjectToHandObject(static_cast<Object*>(GetObjectFromIndex()), &GestureData);
		break;
	case PACKET_TYPE_APPLY_COORD_TO_HAND_OBJECT:
		player_interface->ApplyCoordToHandObject(&GestureData);
		break;
	case PACKET_TYPE_PLACE_OBJECT_IN_HAND:
		player_interface->PlaceObjectInMagicHand(static_cast<Object*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_CREATURE_BRUISE: {
		CreatureBruisePacketData* data = (CreatureBruisePacketData*)&Bytes[0];
		Creature*                 creature = player->GetCreature();
		if (creature != NULL)
		{
			if (creature->GetLife() > 0.01f)
			{
				creature->SetLife(max(0.01f, creature->GetLife() - 0.01f));
			}
			creature->physical->Creature3d->ApplyBruise(&data->Intersect, data->Type, data->SubType);
		}
		break;
	}
	case PACKET_TYPE_HAND_ORIENTATION:
		if (player_interface->hand.Get() != NULL && player_interface->hand.Get()->HandOrientation != Value)
		{
			player_interface->hand.Get()->ToggleLeftRight();
		}
		if (GGame::g_game->network.session != NULL)
		{
			PlayerProfile* profile =
				(PlayerProfile*)GGame::g_game->network.session->GetUserData(player_interface->player);
			if (profile != NULL)
			{
				profile->HAND_ORIENTATION = Value == 0;
			}
		}
		break;
	case PACKET_TYPE_UPDATE_HAND_STATUS: {
		player_interface->UpdateStatusInfo(Position, HandVelocity, HandDirection, HandUp, Sequence);
		if (player_interface == GGame::g_game->MyInterface())
		{
			char text[0x20];
			PacketLatency = GetTickCount() - PacketSendTimes[Sequence];
			sprintf(text, "ping %d", PacketLatency);
		}
		break;
	}
	case PACKET_TYPE_UPDATE_HAND_POSITION: {
		player_interface->UpdateStatusInfo(Position, HandVelocity);
		if (player_interface == GGame::g_game->MyInterface())
		{
			char text[0x20];
			PacketLatency = GetTickCount() - PacketSendTimes[Sequence];
			sprintf(text, "ping %d", PacketLatency);
		}
		break;
	}
	case PACKET_TYPE_UPDATE_CAMERA: {
		player_interface->UpdateStatusInfo(HandVelocity, HandDirection);
		if (player_interface == GGame::g_game->MyInterface())
		{
			char text[0x20];
			PacketLatency = GetTickCount() - PacketSendTimes[Sequence];
			sprintf(text, "ping %d", PacketLatency);
		}
		break;
	}
	case PACKET_TYPE_APPLY_UNLOCK_PROCESS:
		player_interface->ApplyUnlockProcess(static_cast<Object*>(GetObjectFromIndex()), Value);
		break;
	case PACKET_TYPE_START_LOCKED_SELECT:
		player_interface->StartLockedSelect(static_cast<Object*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_END_LOCKED_SELECT:
		player_interface->EndLockedSelect(static_cast<Object*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_EMPTY_HAND:
		player_interface->EmptyHand();
		break;
	case PACKET_TYPE_CANCEL_SPELL_CHARGING:
		player_interface->status->GetPlayer()->CancelSpellCharging(player_interface->status);
		break;
	case PACKET_TYPE_GIVE_HAND_OBJECT:
		player_interface->GiveHandObjectToInterfaceObject(static_cast<Object*>(GetObjectFromIndex()), Value);
		break;
	case PACKET_TYPE_TAP_OBJECT:
		player_interface->TapInterfaceObject(static_cast<Object*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_INTERACT_WITH_OBJECT:
		player_interface->InteractWithMapCoordObject(static_cast<Object*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_FIGHT_APPLY_TO_OBJECT:
		player_interface->FightApplyToObject(static_cast<Object*>(GetObjectFromIndex()), Value);
		break;
	case PACKET_TYPE_FIGHT_SELECT_TO_OBJECT:
		player_interface->FightSelectToObject(static_cast<Object*>(GetObjectFromIndex()), Value);
		break;
	case PACKET_TYPE_END_FIGHT_TO_OBJECT:
		player_interface->EndFightToObject(ObjectIndex);
		break;
	case PACKET_TYPE_REQUEST_SPELL:
		player_interface->InterfaceRequestSpell((SPELL_SEED_TYPE)ObjectIndex);
		break;
	case PACKET_TYPE_REQUEST_SPELL_PREVIOUS:
		player_interface->InterfaceRequestSpellPrevious();
		break;
	case PACKET_TYPE_REQUEST_POWER_UP:
		player_interface->RequestPowerUp(static_cast<WorshipSpellIcon*>(GetObjectFromIndex()), (POWER_UP_TYPE)Value);
		break;
	case PACKET_TYPE_CREATURE_INDIVIDUAL_ACTION:
		if (player_interface != GGame::g_game->MyInterface())
		{
			Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
			if (creature != NULL)
			{
				creature->physical->Creature3d->ForceIndividualAction(Argument, Value);
			}
		}
		break;
	case PACKET_TYPE_QUIT_GAME:
		GGame::g_game->GameMode = GAME_MODE_QUITTING;
		break;
	case PACKET_TYPE_SET_LAND_TIME:
		GLandAlignement::SetTime(FloatValue, 1.0f);
		break;
	case PACKET_TYPE_PLAYER_TEXT_MESSAGE:
		GGlobal::Global.AddPlayerTextMessage(player_number, (char*)&Bytes[0]);
		break;
	case PACKET_TYPE_MOVE_CREATURE_TO_HAND: {
		Creature* creature = player->GetCreature();
		creature->ForceMoveMapObjectWithoutWalking(MapCoords(player_interface->status->ReportedHandPos));
		creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
		creature->ConfinementRadius = 0.0f;
		break;
	}
	case PACKET_TYPE_PUSH_PHYSICS_OBJECT: {
		PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(static_cast<Object*>(GetObjectFromIndex()));
		if (physics != NULL)
		{
			physics->Physics.Torque +=
				(HandVelocity * physics->Physics.Mass * 1.6f * physics->Physics.Velocity.GetNorme()) ^
				LHPoint(0.0f, 1.0f, 0.0f);
		}
		break;
	}
	case PACKET_TYPE_SET_LEASH_LENGTH: {
		GLeashStatus* leash = player_interface->status->LeashStatus;
		leash->LeashLength = FloatValue;
		leash->HalfLeashLength = leash->LeashLength * 0.5f;
	}
	break;
	case PACKET_TYPE_LEASH: {
		Object*   object = static_cast<Object*>(GetObjectFromIndex());
		Creature* creature = GGame::g_game->GetPlayer(Value)->GetCreature();
		if (creature != NULL)
		{
			creature->LeashMakesCreatureMoveToHand(object);
		}
		break;
	}
	case PACKET_TYPE_SPEECH:
		if (GatheringBox::CurrentPlayers->MessagesEnabled)
		{
			ProcessSpeech((unsigned char*)&SpeechData, net_player, false);
		}
		break;
	case PACKET_TYPE_TAUNT:
		ProcessTaunt((unsigned char*)&SpeechData, net_player);
		break;
	case PACKET_TYPE_TOGGLE_MAP_EDITOR:
		GGame::g_game->ToggleMapEditor();
		break;
	case PACKET_TYPE_TOGGLE_HELP_EDITOR:
		GGame::g_game->ToggleHelpEditor();
		break;
	case PACKET_TYPE_TOGGLE_MENTAL_EDITOR:
		if (CreatureMentalEditor::Instance != NULL)
		{
			delete CreatureMentalEditor::Instance;
			CreatureMentalEditor::Instance = NULL;
		}
		else if (Creature::CreatureList.GetHead() != NULL)
		{
			Creature* creature = Creature::CreatureList.GetHead();
			if (GGame::g_game->MyPlayer()->GetCreature() != NULL)
			{
				creature = GGame::g_game->MyPlayer()->GetCreature();
			}
			CreatureMentalEditor::Instance = NEW(556) CreatureMentalEditor(creature->mind);
		}
		break;
	case PACKET_TYPE_TOGGLE_LESSON_CHOOSER: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->mind->debug.IsProcessing = false;
			creature->mind->creature.Get()->physical->Creature3d->EndAnyActions(true, true);
			Creature* mine = GGame::g_game->MyPlayer()->GetCreature();
			if (creature == mine)
			{
				if (CreatureLessonChooser::Instance != NULL)
				{
					delete CreatureLessonChooser::Instance;
					CreatureLessonChooser::Instance = NULL;
				}
				else
				{
					CreatureLessonChooser::Instance = NEW(579) CreatureLessonChooser(mine->mind, FloatValue);
				}
			}
		}
		break;
	}
	case PACKET_TYPE_ALIGNMENT_OR_FIGHT_SPEED:
		if (FloatValue > 10.0f)
		{
			char text[0x100];
			LH3DCreature::FightSpeed = FloatValue - 10.0f;
			sprintf(text, "global_fight_speed %.2f", LH3DCreature::FightSpeed);
			GGlobal::Global.AddPlayerTextMessage(-1, text);
		}
		else
		{
			Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
			if (creature != NULL)
			{
				creature->alignment->CrudeUpdate(FloatValue);
			}
		}
		break;
	case PACKET_TYPE_CLOSE_LESSON_CHOOSER: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->mind->debug.IsProcessing = true;
		}
		break;
	}
	case PACKET_TYPE_CHEAT:
		player->Cheat(FirstShort);
		break;
	case PACKET_TYPE_MOVE_TOTEM:
		if (GetObjectFromIndex() != NULL)
		{
			Totem* totem = static_cast<Totem*>(GetObjectFromIndex());
			totem->Pos = Position;
			totem->InitWorshipPercentageOnTotemHeight();
		}
		break;
	case PACKET_TYPE_SET_WORSHIP_PERCENTAGE:
		if (GetObjectFromIndex() != NULL)
		{
			TotemStatue* totem = static_cast<TotemStatue*>(GetObjectFromIndex());
			Town*        town = totem->GetTown();
			if (town != NULL)
			{
				if (FloatValue > 0.0f && town->GetPlayer() != NULL)
				{
					town->GetPlayer()->MakeCreatureEmpathiseWithPlayer(CREATURE_DESIRE_TO_IMPRESS, 0.5f, totem->Pos);
				}
				town->SetWorshipPercentage(FloatValue);
			}
			else
			{
				totem->SetWorshipPercentage(FloatValue);
			}
			totem->WorshipSpeed2 = totem->GetWorshipSpeed();
			float         percentage = FloatValue * 100.0f;
			ValueSpinner* spinner = NEW(681) ValueSpinner;
			char          text[0x20];
			sprintf(text, "%3.0f", percentage);
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(totem->Pos, pos);
			spinner->Init(pos, CHAR2WCHAR(text), LH3DColor(0x80, 0x80, 0x80, 0xff));
		}
		break;
	case PACKET_TYPE_PLAYER_FEEDBACK: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->mind->RespondToPlayerFeedback(FloatValue);
		}
		break;
	}
	case PACKET_TYPE_ADD_TO_FIGHT_QUEUE: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->physical->Creature3d->AddToFightQueue(Value | 0x4000, false);
		}
		break;
	}
	case PACKET_TYPE_TOGGLE_LEASH:
		player_interface->SelectingLeashType = false;
		player_interface->ToggleLeash();
		break;
	case PACKET_TYPE_RELEASE_LEASH:
		if (player->GetCreature() != NULL &&
		    player->GetCreature()->GetInterfaceStatusLeashOn() == player_interface->status)
		{
			player_interface->status->LeashStatus->SetOn(player->GetCreature(), false);
		}
		break;
	case PACKET_TYPE_LEASH_TO_OBJECT: {
		Object*   object = dynamic_cast<Object*>(GetObjectFromIndex());
		Creature* creature = player->GetCreature();
		if (creature != NULL && creature->LeashEnabled[LEASH_TYPE_ROPE])
		{
			GInterfaceStatus* status = creature->GetInterfaceStatusLeashOn();
			if (status != NULL && status->LeashStatus->LeashWorks)
			{
				if (object == NULL)
				{
					status->LeashStatus->SetOn(creature, false);
					player_interface->status->LeashStatus->SetOnHand(creature);
				}
				else
				{
					status->LeashStatus->SetOnObject(creature, object);
					creature->FinishActionUnsuccessfully("pulled by leash", true, true);
					creature->ForceActOnObject(object);
					creature->LeashControl = LEASH_CONTROL_DIRECT;
				}
			}
		}
		break;
	}
	case PACKET_TYPE_LEASH_ACT_ON_OBJECT: {
		GameThingWithPos* thing = GetObjectFromIndex();
		if (player_interface->status->LeashStatus->LeashWorks)
		{
			Creature* creature = player->GetCreature();
			Object*   object = dynamic_cast<Object*>(thing);
			if (creature != NULL && object != NULL)
			{
				creature->ForceActOnObject(object);
				creature->LeashControl = LEASH_CONTROL_DIRECT;
			}
		}
		break;
	}
	case PACKET_TYPE_ACT_ON_OBJECT: {
		GameThingWithPos* thing = GetObjectFromIndex();
		Creature*         creature = player->GetCreature();
		Object*           object = dynamic_cast<Object*>(thing);
		if (creature != NULL && object != NULL)
		{
			creature->ForceActOnObject(object);
			creature->TurnsBeforeConsideringDecision = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(7.5f);
			ToolTips::ForceToolTips(HELP_TEXT_TOOLTIP_FOCUS_CREATURE, 1.0f);
		}
		break;
	}
	case PACKET_TYPE_LEASH_ACT_ON_MAP_COORD: {
		Creature* creature = player->GetCreature();
		if (creature != NULL)
		{
			GInterfaceStatus* status = creature->GetInterfaceStatusLeashOn();
			if (status != NULL && status->LeashStatus->LeashWorks)
			{
				creature->ForceActOnMapCoord(Start);
				creature->LeashControl = LEASH_CONTROL_DIRECT;
			}
		}
		break;
	}
	case PACKET_TYPE_ACT_ON_MAP_COORD: {
		Creature* creature = player->GetCreature();
		if (creature != NULL)
		{
			creature->ForceActOnMapCoord(Start);
			creature->TurnsBeforeConsideringDecision = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(7.5f);
			ToolTips::ForceToolTips(HELP_TEXT_TOOLTIP_FOCUS_CREATURE, 1.0f);
		}
		break;
	}
	case PACKET_TYPE_SWAP_MINDS:
		Creature::SwapMinds(GGame::g_game->GetPlayer(Value)->GetCreature(),
		                    dynamic_cast<Creature*>(GetObjectFromIndex()));
		break;
	case PACKET_TYPE_CHOOSE_LESSON: {
		int lesson = LongValue;
		GGame::g_game->GetPlayer(ShortX)->GetCreature()->mind->RespondToPlayerFeedback(lesson * 0.001f);
		if (CreatureLessonChooser::Instance != NULL)
		{
			CreatureLessonChooser::Instance->ActionChanged = true;
		}
		break;
	}
	case PACKET_TYPE_CREATE_SPOT_VISUAL:
		GParticleContainer::CreateSpotVisual(Start, (SPOT_VISUAL_TYPE)Value, 1.0f, NULL);
		break;
	case PACKET_TYPE_PREVIOUS_LESSON_ACTION: {
		CreatureLearning& learning = GGame::g_game->GetPlayer(ObjectIndex)->GetCreature()->mind->learning;
		if (learning.SelectedContext + 1 < learning.previous_context_stack.GetSize())
		{
			learning.SelectedContext++;
		}
		break;
	}
	case PACKET_TYPE_NEXT_LESSON_ACTION: {
		CreatureLearning& learning = GGame::g_game->GetPlayer(ObjectIndex)->GetCreature()->mind->learning;
		if (learning.SelectedContext > 0)
		{
			learning.SelectedContext--;
		}
		break;
	}
	case PACKET_TYPE_LOG_VILLAGERS:
		GGlobal::Global.debug.LogVillagers = true;
		break;
	case PACKET_TYPE_LOG_CREATURES:
		GGlobal::Global.debug.LogCreatures = true;
		break;
	case PACKET_TYPE_LOG_COLLIDE:
		GGlobal::Global.debug.LogCollide = true;
		break;
	case PACKET_TYPE_LOG_ALLOCATIONS:
		GGlobal::Global.debug.LogAllocations = true;
		break;
	case PACKET_TYPE_LOG_RAND:
		GGlobal::Global.debug.LogRand = true;
		break;
	case PACKET_TYPE_SAVE_FOR_NET_DEBUG:
		GGame::g_game->network.ToggleSaveGameLog(ObjectIndex, ObjectUniqueId);
		break;
	case PACKET_TYPE_LOAD_FOR_NET_DEBUG:
		GGame::g_game->network.ReloadDebugGame(ObjectIndex);
		break;
	case PACKET_TYPE_SET_HAND_PHYSICS:
		player_interface->status->HandPhysics = *(HandPhysicsInfo*)&ObjectIndex;
		break;
	case PACKET_TYPE_LOAD_MY_CREATURE: {
		char  name[0x100];
		char* creature_data = NULL;
		strcpy(name, player_interface->player != NULL ? player_interface->player->GetUserFileName() : "");
		if (GGame::g_game->IsMultiplayerGame() && player->StartGameData != NULL &&
		    player->StartGameData->CreatureData != NULL)
		{
			creature_data = player->StartGameData->CreatureLength != 0 ? player->StartGameData->CreatureData : NULL;
		}
		char      prefix[] = "CLANCREATECREATURE";
		Creature* creature;
		if (creature_data != NULL && strnicmp(creature_data, prefix, strlen(prefix)) == 0)
		{
			char* rest = creature_data + strlen(prefix);
			char  type_text[3] = {0};
			type_text[0] = rest[0];
			type_text[1] = rest[1];
			int  type = atoi(type_text);
			char creature_name[0x100];
			strcpy(creature_name, rest + 2);
			creature = Creature::CreateCreature(MapCoords(CellX, CellZ), &CreatureInfo::GetInfo()[type], player);
			for (int phase = DEVELOPMENT_PHASE_FIRST; phase < DEVELOPMENT_PHASE_FULLY_MATURE; phase++)
			{
				creature->MoveToDevelopmentPhase((DEVELOPMENT_PHASE)phase, 0);
			}
			wcscpy(creature->name, CHAR2WCHAR(creature_name));
			creature->RemoteCreature = true;
		}
		else
		{
			creature = Creature::Load(name, MapCoords(CellX, CellZ), player, player->StartGameData);
		}
		if (creature != NULL)
		{
			creature->LeashEnabled[LEASH_TYPE_FIRST] = true;
			creature->LeashEnabled[LEASH_TYPE_EVIL] = true;
			creature->LeashEnabled[LEASH_TYPE_ROPE] = true;
			creature->LeashEnabled[LEASH_TYPE_GOOD] = true;
			creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
		}
		break;
	}
	case PACKET_TYPE_CANCEL_GIVE_TO_CREATURE: {
		Creature*       creature = static_cast<Creature*>(GetObjectFromIndex());
		CreatureMental* mind = creature->mind;
		if (mind->agenda.SubActionAgenda.NumSubActions > 0)
		{
			if (mind->agenda.CurrentPlan.creature_action != CREATURE_TAKE_OBJECT_FROM_HAND ||
			    mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Action !=
			        CREATURE_SUB_STATE_ACTIONS_PICK_UP_FROM_HAND ||
			    creature->physical->ObjectCarried == NULL)
			{
				creature->FinishActionUnsuccessfully("cancelling give to creature", true, true);
				LH3DCreature* creature3d = creature->GetCreature3D();
				if (creature3d->IsPickingUpFromHand())
				{
					creature3d->ActionObject = NULL;
				}
			}
		}
		if (player_interface == GGame::g_game->MyInterface())
		{
			player_interface->hand.Get()->EndGiveToCreature();
			player_interface->InterfaceActionForceToNormal();
		}
		break;
	}
	case PACKET_TYPE_CHEAT_MAKE_FIGHT: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->CheatMakeMeFight();
		}
		break;
	}
	case PACKET_TYPE_RESURRECT_CREATURES: {
		for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
		{
			Creature* creature = node->payload;
			creature->SetLife(1.0f);
			if (creature->GetCreature3D()->IsActuallyDead())
			{
				creature->GetCreature3D()->Resurrect();
				creature->Fainted = false;
			}
		}
		break;
	}
	case PACKET_TYPE_INC_FIGHT_QUEUE:
		if (player->GetCreature() != NULL)
		{
			player->GetCreature()->physical->Creature3d->IncFightQueueSize();
		}
		break;
	case PACKET_TYPE_DEC_FIGHT_QUEUE:
		if (player->GetCreature() != NULL)
		{
			player->GetCreature()->physical->Creature3d->DecFightQueueSize();
		}
		break;
	case PACKET_TYPE_SET_CREATURE_SIZE: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL && FloatValue < 2.0f)
		{
			creature->physical->Creature3d->SetSize(FloatValue);
			creature->physical->Size = FloatValue;
		}
		break;
	}
	case PACKET_TYPE_MUSIC_MOOD: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->UpdateMoodsBasedOnMusic(Music);
		}
		break;
	}
	case PACKET_TYPE_INSTANT_SAVE:
		SaveGameRoom::InstantSaveGame(SAVE_GAME_ROOM_INSTANT_SAVE_SLOT);
		if (GGame::MemoryState != 0)
		{
			GGame::MemoryState = 2;
		}
		break;
	case PACKET_TYPE_INSTANT_LOAD:
		GGame::MemoryState = 0;
		SaveGameRoom::InstantLoadGame(SAVE_GAME_ROOM_INSTANT_SAVE_SLOT);
		break;
	case PACKET_TYPE_TEMPLE_LEASH: {
		Creature* creature = player->GetCreature();
		if (creature == NULL || (!creature->ReceiveSpell->IsCreatureSpellActive(CREATURE_RECEIVE_SPELL_COMPASSIONATE) &&
		                         !creature->ReceiveSpell->IsCreatureSpellActive(CREATURE_RECEIVE_SPELL_ANGRY)))
		{
			player_interface->status->LeashStatus->SetType((LEASH_TYPE)FirstShort, player);
		}
		break;
	}
	case PACKET_TYPE_CREATE_ONE_OFF_SPELL:
		OneOffSpellSeed::Create(Start, (SPELL_SEED_TYPE)Value, POWER_UP_TYPE_NONE, 1.0f);
		if (player_interface == GGame::g_game->MyInterface())
		{
			((PHandFX*)player_interface->hand.Get()->HandFx)->DoRemoveFromHandVisual();
			player_interface->InterfaceActionSetEmptyHandPacket();
		}
		break;
	case PACKET_TYPE_TOGGLE_ALWAYS_CATCH: {
		Creature* creature = static_cast<Creature*>(GetObjectFromIndex());
		if (creature != NULL)
		{
			creature->AlwaysCatch = !creature->AlwaysCatch;
			if (player_interface == GGame::g_game->MyInterface())
			{
				GGlobal::Global.AddPlayerTextMessage(-1,
				                                     creature->AlwaysCatch ? "Always Catch On" : "Always Catch Off");
			}
		}
		break;
	}
	}
}

GameThingWithPos* GPacket::GetObjectFromIndex()
{
	Base* object = NULL;
	if (ObjectIndex != 0)
	{
		object = Base::GetIndexPtr(ObjectIndex);
		if (object != NULL && Base::GetUniqueId(object) != ObjectUniqueId)
		{
			object = NULL;
		}
	}
	return static_cast<GameThingWithPos*>(object);
}
