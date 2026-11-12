#include "ReactionFunction.h" /* For ReactionFunction */
#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include <chlasm/CreatureSpec.h> /* For enum CREATURE_ANIMATIONS */
#include "Creature.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "ZeroPointConstants.h" /* For ZeroPoint */
#include "GestureConstants.h"   /* For GS_HALF_SECTOR_ANGLE */
#include "HalfLifeConstants.h"  /* For OneOverLogHalf */
#include "CreatureInfo.h"
#include "CreaturePhysical.h"
#include "DifferentCreatureInfo.h"
#include "Utils.h" /* For GUtils */
#include <chlasm/LHSample.h>
#include "Creature3D.h"
#include "CreatureMental.h"
#include "Landscape.h"
#include "Pot.h"
#include "PotInfo.h"
#include "SoundTag.h"
#include "Alignment.h"
#include "CreatureReceiveSpell.h"
#include "Player.h"
#include "Serialise.h"
#include "MapCoordsMeters.h"
#include "Rand.h"
#include "CreatureMentalLearnAction.h"
#include "SpellSystemInfo.h"
#include "SubArgument.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureRoom.h"
#include "CreatureRoomScreenShots.h"
#include "HelpText.h"
#include <stdio.h>
#include "Belief.h"
#include "CreatureActionInfo.h"
#include "CreatureMusicFeedback.h"
#include "LandBalance.h"
#include "MusicMoodController.h"
#include "Packet.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Town.h"
#include "TownInfo.h"
#include "CreatureForcedAction.h"
#include "CreatureImpressiveSpells.h"
#include "CreatureHelpInvalidation.h"
#include "MusicMoodCallbacks.h"
#include "CreatureLeashSettings.h"
#include "GenerateCreatureHTML.h"
#include "FrontEnd.h" /* For WCHAR2CHAR */
#include "Game.h"
#include "GameInfo.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <math.h>
#include "Bubble.h"
#include "TattooEditor.h"
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include "Bookmark.h"
#include "CreatureAgenda.h"
#include "Interface.h"
#include "Citadel.h"
#include "Climate.h"
#include "CreatureContext.h"
#include "CreatureMentalBelief.h"
#include "CreatureMimicInfo.h"
#include "CreaturePlan.h"
#include "CreatureValueSpinner.h"
#include "Dance.h"
#include "CitadelHeart.h"
#include "Game3DObject.h"
#include "Global.h"
#include "ParticleContainer.h"
#include "Villager.h"
#include "WinCondition.h"
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>
#include <chlasm/SoundAction.h>
#include <windows.h> /* For max */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <string.h> /* For strlen */
#include "CreatureDesireTableEntry.h"
#include "Script.h"
#include "Setup.h"
#include "AlignmentInfo.h"
#include "EffectValues.h"
#include "PhysicsObject.h"
#include "EditorPhysics.h"
#include <Lionhead/LH3DLib/development/PhysOb.h>
#include <Lionhead/LH3DLib/development/CollideBox.h>
#include "AnimatedGesture.h"
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include "ObjectMovementConstants.h"
#include "CreatureSpeechItem.h"
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>
#include <wchar.h>                                          /* For swprintf */
#include <Lionhead/LH3DLib/development/Eureka.h>            /* For Eureka */
#include <Lionhead/LH3DLib/development/LH3DMem.h>           /* For LH3DMem */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>                /* For LHOSFile */
#include <Lionhead/LHLib/ver5.0/RPFollow.h>                 /* For RPFollow */
#include <chlasm/HitRegions.h>                              /* For enum FIGHT_ACTION */
#include "JCMisc.h"                                         /* For CompressTattoo */
#include "Object.h"                                         /* For OBJECT_GRAVITY */
#include "WayPoint.h"                                       /* For WayPoint */
#include "GameStats.h"                                      /* For GameStats */
#include "HelpSystem.h"                                     /* For HelpSystem */
#include "GJUtils.h"                                        /* For GlobalTextures */
#include "PlayerComputer.h"                                 /* For GComputerPlayer */
#include "RoutePlan.h"                                      /* For LandAvoid */
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h> /* For LH3DComplexObject */
#include "Arena.h"                                          /* For GArena */
#include "CreatureSubStateTableEntry.h"                     /* For CreatureSubStateTableEntry */
#include <Lionhead/LH3DLib/development/LH3DSmoke.h>         /* For LH3DSmoke */
#include "CreatureDevelopment.h"                            /* For CreatureDevelopmentPhaseEntry */
#include "CreatureLessonChooser.h"
#include <Lionhead/LH3DLib/development/LH3DJustFootPrint.h>

// BW1W120 00bf34d4 BW1M119 01979acc
extern float CameraFieldOfView;

static Creature* CreatureBeingLogged;

CreatureInfo CreatureInfo::Infos[CREATURE_TYPE_LAST];

GBaseInfo* CreatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return Infos;
}

DifferentCreatureInfo DifferentCreatureInfo::Infos[CREATURE_TYPE_LAST];

GBaseInfo* DifferentCreatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return Infos;
}

LHLinkedList<Creature*> Creature::CreatureList;

static uint32_t    CheckSum3D;
static uint32_t    PosCheckSum;
static uint32_t    MentalMiscCheckSum;
static uint32_t    MentalBeliefsCheckSum;
static uint32_t    MentalAgendaCheckSum;
static const float FightStaminaRecoveryRate = 0.0016666f;
static const float HandOverCreatureDecay = 0.9f;

#define CREATURE_CHECKSUM_FLOAT_SCALE                1000.0f
#define CREATURE_CONFINEMENT_OBJECT_MAX_EXTRA_RADIUS 150.0f
#define CREATURE_CONFINEMENT_OBJECT_MIN_RADIUS       50.0f
#define CREATURE_HOME_CONFINEMENT_RADIUS             10.0f
#define CREATURE_MIN_CONFINEMENT_RETURN_DISTANCE     5.0f
#define CREATURE_FROZ_COLOUR                         0x354f8d
#define CREATURE_MIND_SAVE_INTERVAL                  600

uint32_t Creature::ProcessState()
{
	MentalMiscCheckSum += BeforeHandInteractState;
	MentalMiscCheckSum += (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) != 0;
	MentalMiscCheckSum += mind->debug.IsProcessing;
	MentalMiscCheckSum += GetInterfaceStatusLookingAtCreature() != NULL;

	GPlayer* player = GetPlayer();
	if (player != NULL)
	{
		if (player->GetStats()->StartCreatureSize == 0.0f)
		{
			player->GetStats()->StartCreatureSize = GetSize();
		}
		if (player->GetCitadel() != NULL)
		{
			CitadelHeart* heart = player->GetCitadel()->GetCitadelHeart();
			if (heart != NULL)
			{
				LHPoint pos;
				heart->Game3dObject->GetExtraPos(CITADEL_HEART_ENTRANCE_EXTRA_POS, &pos);
				GLandscape::ConvertLandscapePointToMapCoord(pos, HomePos);
			}
		}
	}

	LH3DCreature* creature3d = physical->Creature3d;
	ProcessSpellsReceived();
	ProcessSpells();
	PlaySoundEffectToIndicateMood();
	ProcessPlayerInterestingness();
	if (GetPlayer() != NULL && GetPlayer()->ComputerPlayer != NULL && GetPlayer()->ComputerPlayer->Active)
	{
		ActionForced = false;
	}
	if (GetCreature3D()->IsActuallyDead() && mind->agenda.CurrentPlan.creature_action != CREATURE_DEAD &&
	    mind->agenda.CurrentPlan.creature_action != CREATURE_DEAD_FOREVER &&
	    mind->agenda.CurrentPlan.creature_action != CREATURE_DIE_PERMANENTLY)
	{
		GetCreature3D()->Resurrect();
	}
	if (physical->GetObjectCarried() != NULL)
	{
		physical->GetObjectCarried()->Pos = Pos;
	}
	mind->RemoveBeliefsAboutDeletedObjects();
	ShrinkDownIfNearCitadel();

	if (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING)
	{
		mind->agenda.StartActionAgain = true;
		switch (BeforeHandInteractState)
		{
		case CREATURE_HAND_INTERACT_STATE_TURN_TO_FACE_CAMERA:
			PerformFinishingAction();
			break;
		case CREATURE_HAND_INTERACT_STATE_PLAY_LAST_DESIRE_ANIM:
			PerformAnimShowingLastDesire();
			break;
		}
	}
	else
	{
		AutoScale();
		physical->NumGameTicksAlive++;
		UpdateLeash();
		GInterfaceStatus* leashStatus = GetInterfaceStatusLeashOn();
		if (leashStatus != NULL)
		{
			TurnsBeforeConsideringDecision = 0;
		}
#ifndef VERSION_BW1W100
		if (ConfinedToObject && ConfinementObject != NULL)
		{
			ConfinementCentre = ConfinementObject->Pos;
			ConfinementRadius = min(CREATURE_CONFINEMENT_OBJECT_MAX_EXTRA_RADIUS, (float)physical->GetAge()) +
			                    CREATURE_CONFINEMENT_OBJECT_MIN_RADIUS;
		}
#endif
		if (leashStatus == NULL && DevelopmentPhase < DEVELOPMENT_PHASE_MEET_GUIDE && GetPlayer() != NULL &&
		    GetPlayer()->type != PLAYER_TYPE_COMPUTER && !GGame::g_game->IsMultiplayerGame() &&
		    GetPlayer() == GGame::g_game->MyPlayer() && GGame::g_game->LandNumber == 1)
		{
			ConfinementCentre = HomePos;
			ConfinementRadius = CREATURE_HOME_CONFINEMENT_RADIUS;
		}
		if (!Trapped && IsConfinedToArea() && LeashControl != LEASH_CONTROL_DIRECT &&
		    !mind->agenda.CommandState.ControlledByTeleport &&
#ifdef VERSION_BW1W100
		    !mind->agenda.MimicState.Mimicking &&
#else
		    (!mind->agenda.MimicState.Mimicking || ConfinedToObject) &&
#endif
		    !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && ConfinementCentre.InBounds())
		{
			float distance = GUtils::GetDistanceInMetres(Pos, ConfinementCentre);
			if (distance > ConfinementRadius &&
			    (!GoingBackToConfinedArea ||
			     GUtils::GetDistanceInMetres(mind->agenda.Destination, ConfinementCentre) >
			         max(CREATURE_MIN_CONFINEMENT_RETURN_DISTANCE, ConfinementRadius * 0.5f)) &&
			    !LandAvoid[ConfinementCentre.MapZ()][ConfinementCentre.MapX()])
			{
				if (leashStatus != NULL && leashStatus->LeashStatus->ObjectAttachedTo != NULL)
				{
					mind->PreviousActions.TurnsSinceLastDone[mind->agenda.CurrentPlan.creature_action] = 0;
				}
				float maxDistance = ConfinementRadius * 2.0f;
				CLAMP(distance, 0.0f, maxDistance);
				physical->Creature3d->SetRequiredSpeed(distance * 0.8f / maxDistance + GetInfo()->WalkSpeed);
				physical->Creature3d->EndAnyAnimsRapidly();
#ifdef VERSION_BW1WCI
				ForceGoToMapCoords(ConfinementCentre, physical->Creature3d->GetRequiredSpeed());
#else
				ForceGoToMapCoords(ConfinementCentre);
#endif
				GoingBackToConfinedArea = true;
				if (GetInterfaceStatusLeashOn() != NULL)
				{
					LeashControl = LEASH_CONTROL_PULL;
				}
			}
		}

		if (mind->desires.CheatDominantDesire != INVALID_CREATURE_DESIRE)
		{
			mind->desires.UnsuppressDesire(mind->desires.CheatDominantDesire);
			mind->desires.CheatDominantDesireTurns++;
			if (mind->desires.CheatDominantDesireTurns / GGameInfo::Info.NumGameTicksPerSecond() >
			    mind->desires.CheatDominantDesireSeconds)
			{
				mind->desires.UnsuppressAllDesires();
				mind->desires.CheatDominantDesire = INVALID_CREATURE_DESIRE;
			}
		}

		if (GGlobal::Global.CreatureUpdatesEnabled)
		{
			UpdateLocation();
#ifndef VERSION_BW1W100
			if (ActionForced)
			{
				CheckForNewDevelopmentPhase();
			}
#endif
			if (GGlobal::Global.CreatureTimePassingEnabled &&
			    DevelopmentPhase >= DEVELOPMENT_PHASE_LEARN_TO_TAKE_FROM_PLAYER_AND_EAT)
			{
				physical->UpdateAttributesAsTimePasses(GetInfo());
			}
			else
			{
				for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
				{
					if (CreatureInitialDesireInfo::GetInfo()[i].Physical)
					{
						mind->desires.SetDesire(i, 0.0f);
					}
				}
			}
			mind->ExplorationMap.UpdateMap(Pos, this);
			mind->UpdateBeliefAboutContext();
			UpdateAttitudeToPlayer();
		}
		if (GGlobal::Global.CreatureLookingEnabled && mind->debug.IsLooking)
		{
			Look();
		}

		if (mind->agenda.IsValid() && mind->agenda.StartActionAgain)
		{
			mind->agenda.StartActionAgain = false;
			CreaturePlan plan = mind->agenda.CurrentPlan;
			FinishActionUnsuccessfully("starting again", true, true);
			mind->agenda.CurrentPlan = plan;
			mind->agenda.ConstructSubActionsFromActionAgenda(mind->agenda.CurrentPlan.creature_action);
		}
		if (mind->agenda.IsValid() &&
		    mind->agenda.CurrentPlan.CreatureDesire != CREATURE_DESIRE_TO_FOLLOW_PLAYER_DESIRE)
		{
			Moving = true;
		}
		if (GetPlayer() != NULL && GetPlayer()->type != PLAYER_TYPE_COMPUTER &&
		    !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
		{
			RespondToBeingStuck();
			RespondToPhysicalProblems();
		}
		RespondToEmergencies();
		LookAtMostInterestingObject();
		if (TurnsBeforeConsideringDecision > 0)
		{
			TurnsBeforeConsideringDecision--;
		}

		if (GGlobal::Global.CreatureProcessingEnabled && mind->debug.IsProcessing &&
		    !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && !mind->IsDemobilised)
		{
			for (uint32_t i = 0; i < NUM_CREATURE_ACTIONS * 3 / GGameInfo::Info.NumGameTicksPerSecond(); i++)
			{
				UpdateActionPriority();
			}
			ProcessHelpStack();
			if (GetPlayer() != NULL)
			{
				UpdateHelp();
			}
			mind->UpdateAttitudesToCreatures();
			mind->desires.UpdateDesires(this);
			mind->desires.StorePreviousValues();
			if (InCreatureHand != NULL && InCreatureHand->GetCreature3D()->IsMoving())
			{
				mind->desires.MakeDesireMostDominant(CREATURE_DESIRE_TO_REST, GetInfo(), 1.5f);
			}
			if (TurnsBeforeConsideringDecision == 0)
			{
				ConsiderDecision();
			}
			HelpSystem* help = GGame::g_game->help_system;
			if (help->WideScreen && help->GetWideScreenControl() &&
			    mind->agenda.CurrentPlan.creature_action != CREATURE_LOOK_AT_CAMERA_IN_WIDE_SCREEN)
			{
				CreatureBelief* belief = mind->GetBeliefAboutObject(this);
				CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_LOOK_AT_CAMERA_IN_WIDE_SCREEN, NULL, belief,
				                  NULL, 1.0f);
				ForceActivityAndForceAction(plan, true, true);
				mind->agenda.CommandState.Commanded = true;
			}
			if (mind->agenda.IsValid())
			{
				if (GGlobal::Global.debug.LogCreatures)
				{
					OutputCreatureInformation();
				}
				mind->agenda.Process();
				ProcessSubAction();
			}
			else
			{
				mind->agenda.CurrentPlan.AgendaPriority = 0.0f;
				mind->agenda.NumTurnsWithoutAction++;
				Fainted = false;
				LeashControl = LEASH_CONTROL_NONE;
			}
		}
		else if (mind->debug.IsProcessing)
		{
			ProcessSubAction();
		}

		if (GGlobal::Global.CreatureBodyUpdatesEnabled)
		{
			physical->UpdateAttributesBeforeProcessingCreature3D(GetInfo());
			Update3DCreatureFromAttributes();
		}
	}

	if (GGlobal::Global.CreatureBodyUpdatesEnabled && mind->debug.ShowMaterialEffects)
	{
		LH3DComplexObject* object = creature3d->Get3DObject();
		object->FizzAmount = FizzCurr;
		if (FizzCurr != 0.0f)
		{
			object->FizzMaterial = GlobalTextures::GetFizzMaterial();
		}
		if (FizzSpeed != 0.0f)
		{
			FizzCurr += GGameInfo::Info.MillisecondsPerGameTurn * FizzSpeed * 0.001f;
			if (FizzSpeed > 0.0f)
			{
				if (FizzCurr > FizzDest)
				{
					FizzCurr = FizzDest;
					FizzSpeed = 0.0f;
				}
			}
			else if (FizzCurr < FizzDest)
			{
				FizzCurr = FizzDest;
				FizzSpeed = 0.0f;
			}
			if (FizzCurr == 1.0f && FizzLocked)
			{
				ToBeDeleted(false);
				return 3;
			}
		}
		if (FrozAmount != 0.0f)
		{
			object->FrozMaterial = GlobalTextures::GetFrozMaterial(GlobalTextures::FROZ_MAT_TYPE_0);
			object->FrozParam = CREATURE_FROZ_COLOUR;
		}
		object->FrozAmount = FrozAmount;
		creature3d->UpdateTime(physical->field_0x48 * GGameInfo::Info.MillisecondsPerGameTurn);
	}

	alignment->Update(*this);
	if (CreatureBeingLogged == this)
	{
		DisplayStatistics();
	}
	if (physical->NumGameTicksAlive > 0 && physical->NumGameTicksAlive % CREATURE_MIND_SAVE_INTERVAL == 0 &&
	    GetPlayer() == GGame::g_game->MyPlayer() &&
	    GetPlayer()->GetLeaderInterfaceStatus() == GGame::g_game->MyInterfaceStatus() &&
	    !GetPlayer()->GetLeaderInterfaceStatus()->GetInterface()->player->ClanID && !RemoteCreature)
	{
		GPlayer* owner = GetPlayer();
		owner->GetLeaderInterfaceStatus()->GetInterface();
		char mindPath[256];
		char physiquePath[256];
		sprintf(mindPath, ".\\Scripts\\CreatureMind\\%s",
		        owner->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		mind->SaveMind(mindPath);
		sprintf(physiquePath, ".\\Scripts\\CreatureMind\\Physique%s",
		        owner->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		Save3D(physiquePath);
		GenerateHTML();
	}
	ConsiderTakingSnapshot();
	if (IsFighting())
	{
		GetCreature3D()->FightStamina += FightStaminaRecoveryRate;
		CLAMP(GetCreature3D()->FightStamina, 0.0f, 1.0f);
	}
	HandOverCreatureLevel = HandOverCreatureLevel * HandOverCreatureDecay + IsHandOverCreature() * 0.1f;
	alignment->Process(this);
	if (GGlobal::Global.CreatureUpdatesEnabled)
	{
		AddToCheckSum();
	}
	return 1;
}

#define CREATURE_DEFAULT_NAME HELP_TEXT_CHIMP_NAME_01

Creature::Creature(const MapCoords& coords, const CreatureInfo* info, GPlayer* player)
	: Living(coords, info),
	  NumPeopleKilled(NumAnimalsKilled = NumCreaturesKilled = NumBattlesFought = NumBattlesWon = NumMushroomsEaten = 0),
	  NumPoos(0), ReceiveSpell(NEW(664) CreatureReceiveSpell(this)), owner(NULL), dance(NULL), field_0x108c(0)
{
	SetToZero();
	alignment = NEW(667) GAlignment();
	Initialise(coords, info, player);
}

ANIM_LIST Creature::GetAnimId()
{
	return ANM_INVALID;
}

int Creature::CallIntoAnimationFunction(uint8_t state)
{
	return ANM_INVALID;
}

int Creature::CallOutofAnimationFunction(uint8_t state)
{
	return ANM_INVALID;
}

GPlayer* Creature::GetPlayer()
{
	return owner;
}

void Creature::RemoveDance()
{
	dance = NULL;
}

bool32_t Creature::IsFinalState(uint8_t state)
{
	return false;
}

bool32_t Creature::IsReachable()
{
	return false;
}

bool32_t Creature::ValidForPlaceInHand(GInterfaceStatus* status)
{
	return false;
}

uint32_t Creature::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_CREATURE;
}

uint32_t Creature::GetCreatureMimicType()
{
	return CREATURE_MIMIC_TYPE_CREATURE;
}

void Creature::SetAnim(int anim) {}

uint32_t Creature::CallExitStateFunction(uint8_t state)
{
	return 1;
}

uint32_t Creature::CallEntryStateFunction(uint8_t state)
{
	return 1;
}

uint32_t Creature::CallEntryStateFunction(uint8_t current, uint8_t destination)
{
	return 1;
}

bool32_t Creature::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Creature::CanBePickedUp()
{
	return true;
}

bool32_t Creature::CanBeExaminedByCreature(Creature* creature)
{
	return false;
}

DANCE_INFO Creature::DanceType()
{
	return DANCE_INFO_CREATURE;
}

Creature* Creature::CastCreature()
{
	return this;
}

bool32_t Creature::IsActivityObjectWhichCompassionAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBeSleptNextToByCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBeEatenByCreature(Creature* creature)
{
	return false;
}

bool32_t Creature::CanBeBefriendedByCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBePlayedWithByCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::IsCreature()
{
	return true;
}

bool32_t Creature::IsCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBeFoughtByCreature(Creature* creature)
{
	return !IsDead();
}

bool32_t Creature::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

uint32_t Creature::GetSaveType()
{
	return GAME_THING_TYPE_CREATURE;
}

char* Creature::GetDebugText()
{
	return "Creature:";
}

void Creature::SetToZero()
{
	RemoteCreature = false;
	ParticleContainer0x11e4 = NULL;
	field_0x11f0 = 0;
	bookmark_graphic = NULL;
	field_0x11e8 = NULL;
	field_0x1078 = NULL;
	ParticleContainer0x1080 = NULL;
	ParticleContainer0x107c = NULL;
	field_0x1084 = NULL;
	field_0x1088 = NULL;
	memset(Tattoos, 0, sizeof(Tattoos));
	Tattoos[0].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[1].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[2].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[3].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[4].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[5].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[6].Slot = TATTOO_EDITOR_NO_SLOT;
	Tattoos[7].Slot = TATTOO_EDITOR_NO_SLOT;
	TattooData = NULL;
	FizzCurr = 0.0f;
	FizzDest = 0.0f;
	FizzSpeed = 0.0f;
	FrozAmount = 0.0f;
	FizzLocked = false;
	MaxSmallSize = 0.2f;
	MaxBigSize = 2.4f;
	CanGoThroughVortex = false;
	arena = NULL;
	GameTurnOfLastSnapshot = 0;
	MaxSnapshots = 5;
	Fainted = false;
	FightStarted = false;
	FightEnded = false;
	DirectedByLeash = false;
	TouchedByLeash = false;
	ConfinementRadius = 0.0f;
	GoingBackToConfinedArea = false;
	SpellReversion = true;
	field_0x10a8 = 0;
	IsShowingDevelopmentHelpScript = false;
	field_0x3c8 = 0;
	InCreatureHand = NULL;
	TurnsBeforeConsideringDecision = 0;
	field_0x10ec = 0;
	field_0x10f0 = 0;
	RespondingToEmergency = false;
	LastTownImpressed = NULL;
	LastImpressiveDanceTurn = 0;
	LastImpressiveDanceType = DANCE_INFO_WORSHIP;
	IgnoredByVillagers = false;
	BeforeHandInteractState = CREATURE_HAND_INTERACT_STATE_NORMAL;
	bubble = NULL;
	bubble = NEW(746) Bubble();
	bubble->SetDefaultSizes(250.0f, 100.0f, 19.0f);
	Invisible = false;
	field_0x10d0 = 0;
	SubActionAgendaSaved = false;
	for (int i = 0; i < ARRAY_SIZE(LeashEnabled); i++)
	{
		LeashEnabled[i] = false;
	}
	GameTurn = 0;
#ifndef VERSION_BW1W100
	ConfinedToObject = false;
	ConfinementObject = NULL;
	ConfinementPlayerNumber = -1;
#endif
}

// BW1W120 0047b2d0 BW1M119 011dbe50
void __stdcall CreatureMusicMoodCallback(MusicMoodPacket packet);
// BW1W120 0047b310 BW1M119 011dbcc0
void __stdcall CreatureMusicMoodUpdateCallback(MusicEmotion& emotion);

void Creature::Initialise(const MapCoords& coords, const CreatureInfo* info, GPlayer* player)
{
	physical = NEW(766) CreaturePhysical(coords, GetGameAngle(), info, this);
	owner = player;
	if (player != NULL)
	{
		player->SetCreature(this);
	}
	mind = NULL;
	mind = NEW(774) CreatureMental(this, info, coords, player);
	physical->Creature3d->MorphTexture();
	ActionForced = ReactionsEnabled = LearningEnabled = true;
	mind->agenda.creature = this;
	mind->agenda.Clear();
	mind->agenda.PlanState.SetupRemainingGoalsToPlanFor(this);
	mind->agenda.CommandState.TakingFromHand = false;
	mind->agenda.CommandState.Commanded = false;
	mind->agenda.CommandState.ForcedByPlayerAction = false;
	mind->ExplorationMap.UpdateMap(Pos, this);
	dance = NULL;
	for (int i = 0; i < DEVELOPMENT_PHASE_LAST; i++)
	{
		DevelopmentPhaseActionDone[i] = false;
	}
	ActionPriorityUpdateIndex = 0;
	Reaction::CreateReaction(this, REACTION_REACT_TO_CREATURE, player, false);
	mind->ContextBelief = mind->CreateBeliefAboutContext();
	GiveCreatureInitialLessons();
	CreatureList.Add(this);
	if (CreatureBeingLogged == NULL)
	{
		CreatureBeingLogged = this;
	}
	if (player == NULL || player->type == PLAYER_TYPE_COMPUTER)
	{
		wcscpy(name, HelpTextDataBase::HelpTextDatabase.GetHelpText(CREATURE_DEFAULT_NAME + (CreatureList.count & 3)));
	}
	else
	{
		wcscpy(name, LHNetGetCurrentUsedProfile());
	}
	if (player != NULL && player->GetLeaderInterfaceStatus() != NULL)
	{
		LHPlayer*      lhPlayer = player->GetLeaderInterfaceStatus()->GetInterface()->player;
		const wchar_t* userName = (const wchar_t*)GGame::g_game->network.session->GetUserData(lhPlayer);
		if (userName != NULL)
		{
			wcscpy(name, userName);
		}
	}
	GameTurnsInDevelopmentPhase = 0;
	HomeObject = NULL;
	field_0x11f8 = 0;
	HomeFootPrint = 0;
	HandOverCreatureLevel = 0.0f;
	DestPos = coords;
	for (int j = 0; j < ARRAY_SIZE(NumTimesPerformedAction); j++)
	{
		NumTimesPerformedAction[j] = 0.0f;
	}
	LastDroppedObject = NULL;
	field_0x1068 = 0;
	LeashControl = LEASH_CONTROL_NONE;
	smoke = NULL;
	if (GGame::g_game->MyPlayer() == player)
	{
		MusicMoodController::ReadDatabase(NULL, true);
		MusicMoodCallbacks::SendPacket = CreatureMusicMoodCallback;
		MusicMoodCallbacks::UpdateEmotion = CreatureMusicMoodUpdateCallback;
	}
	bookmark_graphic = BookmarkGraphic::Create(1, (CREATURE_TYPE)GetInfo()->CreatureType);
	InteractingObject = NULL;
	Moving = false;
	NumTurnsStuck = 0;
	LastSuccessfulAction = CREATURE_ERROR;
	Trapped = false;
	CanDie = true;
	AutoScaleEnabled = false;
	AutoScaleValue = 0.0f;
}

Creature::Creature()
	: NumPeopleKilled(NumAnimalsKilled = NumCreaturesKilled = NumBattlesFought = NumBattlesWon = NumMushroomsEaten = 0),
	  NumPoos(0), ReceiveSpell(NEW(890) CreatureReceiveSpell(this)), owner(NULL), dance(NULL), field_0x108c(0)
{
	DevelopmentPhase = DEVELOPMENT_PHASE_INITIAL;
	SetToZero();
}

int Living::DecideWhatToDo()
{
	return 0;
}

#ifndef VERSION_BW1WCI
Creature* Creature::Create(const MapCoords& coords, const CreatureInfo* info, GPlayer* player)
{
	if (!coords.InBounds() && player != NULL)
	{
		return NULL;
	}
	Creature* creature = NEW(903) Creature(coords, info, player);
	if (creature != NULL)
	{
		creature->CallVirtualFunctionsForCreation(coords);
		if (player != NULL && player->GetCitadel() != NULL)
		{
			CitadelHeart* heart = player->GetCitadel()->GetCitadelHeart();
			if (heart == NULL)
			{
				return NULL;
			}
			LHPoint point;
			if (!heart->Game3dObject->GetExtraPos(0, &point))
			{
				return NULL;
			}
			GLandscape::ConvertLandscapePointToMapCoord(point, creature->HomePos);
			heart->UpdateLeashes();
		}
		else
		{
			creature->HomePos = coords;
		}
		creature->UpdateLongRangeVision();
		creature->Game3dObject->Release();
		creature->Game3dObject = NULL;
		creature->Game3dObject = (Game3DObject*)creature->physical->Creature3d->DynamicShadow;
	}
	return creature;
}
#endif

Creature* Creature::CreateCreature(const MapCoords& coords, const CreatureInfo* info, GPlayer* player)
{
	if (player == NULL || player->GetCreature() == NULL)
	{
		Creature* creature = Create(coords, info, player);
		if (creature != NULL)
		{
			if (GGame::g_game->GameFlags & GAME_FLAG_ACTIVATE_CREATURE_DESIRES)
			{
				GGlobal::Global.CreatureProcessingEnabled = true;
			}
			return creature;
		}
	}
	return NULL;
}

#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1WCI)
Creature* Creature::CreateTyke(Creature* master, const MapCoords& coords, const CreatureInfo* info)
{
	if (master == NULL || master->GetPlayer() == NULL)
	{
		return NULL;
	}
	Creature* tyke = CreateCreature(coords, info, NULL);
	tyke->ConfinedToObject = true;
	tyke->ConfinementObject = master;
	tyke->ConfinementPlayerNumber = master->GetPlayer()->player_number;
	master->ConfinedCreatures.AddToEnd(tyke);
	tyke->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
	return tyke;
}

void Creature::UpdateTykesFromAction()
{
	if (ConfinedCreatures.count > 0)
	{
		CREATURE_ACTION action = mind->agenda.CurrentPlan.creature_action;
		for (LHLinkedNode<Creature*>* node = ConfinedCreatures.head.Get(); node != NULL; node = node->next.Get())
		{
			Creature* tyke = node->payload;
			if (tyke->IsFacingObject(this) &&
			    GUtils::GetDistanceInMetres(Pos, tyke->Pos) < CREATURE_TYKE_MIMIC_DISTANCE)
			{
				DETECTED_PLAYER_ACTION mimicAction = CreatureActionInfo::GetInfo()[action].TykeMimicAction;
				if (mimicAction != DETECTED_PLAYER_ACTION_LAST)
				{
					GameThingWithPos* object = mind->agenda.CurrentPlan.ObjectToActOn->Pointer;
					MAGIC_TYPE        magicType = CreatureActionInfo::GetInfo()[action].MagicType;
					float             priority = CreatureMimicInfo::GetInfo()[mimicAction].Priority;
					bool32_t          mimic = false;
					if (!tyke->mind->agenda.MimicState.Mimicking)
					{
						if (priority > 0.0f)
						{
							mimic = true;
						}
					}
					else if (tyke->mind->agenda.MimicState.Stage == MIMIC_STAGE_COPY_DESIRE)
					{
						mimic = true;
					}
					else
					{
						DETECTED_PLAYER_ACTION current = tyke->mind->agenda.MimicState.DetectedPlayerAction;
						float                  currentPriority = CreatureMimicInfo::GetInfo()[current].Priority;
						if (priority >= currentPriority && mimicAction != current)
						{
							mimic = true;
						}
					}
					if (mimic)
					{
						tyke->MimicPlayer(mimicAction, object, magicType);
					}
				}
				else
				{
					if (GAME_RAND(1029, 100) > 50)
					{
						CreaturePlan plan(mind->agenda.CurrentPlan);
						if (plan.ActivityObject != NULL && plan.ActivityObject->Pointer != NULL &&
						    plan.ActivityObject->Pointer->IsAvailable())
						{
							plan.ActivityObject =
								tyke->mind->AddBeliefAboutObject(tyke, plan.ActivityObject->GetPointer());
						}
						if (plan.ObjectToActOn != NULL && plan.ObjectToActOn->Pointer != NULL &&
						    plan.ObjectToActOn->Pointer->IsAvailable())
						{
							plan.ObjectToActOn =
								tyke->mind->AddBeliefAboutObject(tyke, plan.ObjectToActOn->GetPointer());
						}
						if (plan.ObjectToUse != NULL && plan.ObjectToUse->Pointer != NULL &&
						    plan.ObjectToUse->Pointer->IsAvailable())
						{
							plan.ObjectToUse = tyke->mind->AddBeliefAboutObject(tyke, plan.ObjectToUse->GetPointer());
						}
						tyke->ForceActivityAndForceAction(plan, true, true);
						tyke->mind->agenda.CommandState.Commanded = true;
					}
					else
					{
						tyke->mind->SetCheatDominantDesire(CreatureActionInfo::GetInfo()[action].PlanIndex,
						                                   CREATURE_TYKE_DESIRE_SECONDS, true);
					}
				}
			}
		}
	}
}

#endif

void Creature::ToBeDeleted(bool32_t delete_now)
{
	GPlayer* player = GetPlayer();
	if (player != NULL && player->GetLeaderInterfaceStatus() != NULL &&
	    player->GetLeaderInterfaceStatus()->GetInterface()->player != NULL && RemoteCreature == false)
	{
		char mindPath[256];
		char physiquePath[256];
		sprintf(mindPath, ".\\Scripts\\CreatureMind\\%s",
		        player->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		mind->SaveMind(mindPath);
		sprintf(physiquePath, ".\\Scripts\\CreatureMind\\Physique%s",
		        player->GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		Save3D(physiquePath);
	}
	ReleaseDependents();
	if (GetPlayer() != NULL && GetPlayer()->GetCitadel() != NULL &&
	    GetPlayer()->GetCitadel()->GetCitadelHeart() != NULL)
	{
		GetPlayer()->GetCitadel()->GetCitadelHeart()->UpdateLeashes();
	}
	if (GetPlayer() != NULL)
	{
		for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
		     status = GetPlayer()->GetNextInterfaceStatus(status))
		{
			status->LeashStatus->SetOn(this, false);
		}
	}
	if (field_0x1078 != NULL)
	{
		field_0x1078->ToBeDeleted(false);
		field_0x1078 = NULL;
	}
	if (ParticleContainer0x107c != NULL)
	{
		ParticleContainer0x107c->ToBeDeleted(false);
		ParticleContainer0x107c = NULL;
	}
	if (ParticleContainer0x1080 != NULL)
	{
		ParticleContainer0x1080->ToBeDeleted(false);
		ParticleContainer0x1080 = NULL;
	}
	if (field_0x1084 != NULL)
	{
		field_0x1084->ToBeDeleted(false);
		field_0x1084 = NULL;
	}
	if (field_0x1088 != NULL)
	{
		field_0x1088->ToBeDeleted(false);
		field_0x1088 = NULL;
	}
	ReceiveSpell->CtrGestureDelete();
	if (ParticleContainer0x11e4 != NULL)
	{
		ParticleContainer0x11e4->ToBeDeleted(false);
		ParticleContainer0x11e4 = NULL;
	}
	if (bookmark_graphic != NULL)
	{
		bookmark_graphic->Release();
		bookmark_graphic = NULL;
	}
	CreatureList.Remove(this);
	if (dance != NULL)
	{
		dance->ToBeDeleted(false);
		dance = NULL;
	}
	Reaction::RemoveAllReactionsInitiatedByObject(this);
	Living::ToBeDeleted(delete_now);
}

Creature::~Creature()
{
	if (GGame::g_game->GameLists.LivingList.Find(this) != NULL)
	{
		GGame::g_game->GameLists.LivingList.Remove(this);
	}
	if (CreatureList.count == 0)
	{
		CreatureBeingLogged = NULL;
	}
	delete physical->Creature3d;
	Game3dObject = NULL;
	delete physical;
	delete mind;
	delete ReceiveSpell;
	SpeechItems.DeleteAll();
	if (owner != NULL)
	{
		owner->creature = NULL;
	}
	if (CreatureLessonChooser::Instance != NULL && CreatureLessonChooser::Instance->Mental == mind)
	{
		CreatureLessonChooser::Instance->Mental = NULL;
		CreatureLessonChooser::Instance->Finished = true;
	}
	DebugPath.DeleteAll();
	delete bubble;
	ReleaseTattooData();
	if (HomeFootPrint != NULL)
	{
		HomeFootPrint->Release();
	}
	if (HomeObject != NULL)
	{
		HomeObject->Release();
	}
	if (field_0x11f8 != NULL)
	{
		field_0x11f8->Release();
	}
	if (GGame::g_game->MyPlayer() == owner)
	{
		MusicMoodCallbacks::SendPacket = NULL;
		MusicMoodCallbacks::UpdateEmotion = NULL;
	}
	Game3dObject = NULL;
	Snapshots.DeleteAll();
	delete alignment;
}

MapCoords* Creature::GetDestPos()
{
	return &DestPos;
}

void Creature::GetFinalDestPos(MapCoords* out)
{
	*out = *GetDestPos();
}

void Creature::CantFindRoute()
{
	if (mind->agenda.belief != NULL)
	{
		mind->agenda.belief->SetNavigationBlockedFlag();
	}
	mind->PreviousActions.TurnsSinceLastDone[mind->agenda.CurrentPlan.creature_action] = 0;
	FinishActionUnsuccessfully("Cannot find route", true, true);
	physical->Creature3d->PlayASoundEffect(SOUND_ACTION_REFUSAL, 0, false);
}

#ifndef VERSION_BW1WCI
void Creature::FinishActionSuccessfully()
{
	CREATURE_ACTION action = mind->agenda.CurrentPlan.creature_action;
	LastSuccessfulAction = action;
	UpdateTykesFromAction();
	if (mind->agenda.CurrentPlan.CreatureDesire == CREATURE_DESIRE_COMPASSION && mind->CanChooseTownDesireToHelp &&
	    mind->agenda.CurrentPlan.ActivityObject != NULL && mind->agenda.CurrentPlan.ActivityObject->Pointer != NULL &&
	    mind->agenda.CurrentPlan.ActivityObject->Pointer->IsTown())
	{
		Town* town = dynamic_cast<Town*>(mind->agenda.CurrentPlan.ActivityObject->Pointer);
		if (town != NULL && mind->TownDesireToHelp > TOWN_DESIRE_INFO_NONE &&
		    mind->TownDesireToHelp < TOWN_DESIRE_INFO_LAST)
		{
			mind->agenda.GameTurnLastPlanDecided = GGame::g_game->data.GameTurn;
			if (town->GetRawDesire(mind->TownDesireToHelp) > mind->TownDesireToHelpLevel &&
			    mind->NumTimesTownDesireHelped <= GAME_RAND(1284, 2) + 2 &&
			    mind->TownDesireToHelp != TOWN_DESIRE_INFO_FOR_RELAXATION)
			{
				mind->NumTimesTownDesireHelped++;
			}
			else
			{
				mind->NumTimesTownDesireHelped = 0;
				mind->TownDesireToHelpIndex++;
				LHStack<TOWN_DESIRE_INFO, TOWN_DESIRE_INFO_LAST> desires;
				town->FillListWithMostImportantDesires(desires);
				if (mind->TownDesireToHelpIndex >= desires.Size())
				{
					mind->TownDesireToHelpIndex = 0;
				}
				if (mind->TownDesireToHelpIndex < desires.Size())
				{
					mind->TownDesireToHelp = desires[mind->TownDesireToHelpIndex];
					mind->TownDesireToHelpLevel = town->GetRawDesire(mind->TownDesireToHelp) * 0.85f;
				}
				else
				{
					mind->TownDesireToHelp = TOWN_DESIRE_INFO_NONE;
					mind->TownDesireToHelpLevel = 0.0f;
				}
			}
		}
	}
	DEVELOPMENT_PHASE phase = CreatureActionInfo::GetInfo()[action].DevelopmentPhase;
	if (phase != DEVELOPMENT_PHASE_LAST)
	{
		DevelopmentPhaseActionDone[phase] = true;
	}
	float howNiceChange = CreatureActionInfo::GetInfo()[action].HowNiceChange;
	if (howNiceChange != 0.0f && mind->agenda.CurrentPlan.ObjectToActOn != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(mind->agenda.CurrentPlan.ObjectToActOn->Pointer);
		if (creature != NULL)
		{
			mind->UpdateHowNiceIsCreature(creature, howNiceChange);
		}
	}
	if (!(GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		CREATURE_ACTION currentAction = mind->agenda.CurrentPlan.creature_action;
		mind->learning.NumTimesActionPerformed[currentAction]++;
		mind->learning.GameTurnActionLastPerformed[currentAction] = GGame::g_game->data.GameTurn;
		CreatureContext* context = mind->learning.GetCurrentContext();
		context->FinishedSuccessfully = true;
		context->GameTurnWasSeen = GGame::g_game->data.GameTurn;
		if (GetInterfaceStatusLookingAtCreature() != NULL)
		{
			context->WasSeen = true;
		}
	}
	FinishActionGeneric(true, true);
	if (mind->agenda.MimicState.Mimicking)
	{
		mind->agenda.MimicState.StageProgress++;
	}
}
#endif

void Creature::FinishActionUnsuccessfully(char* reason, bool32_t stop_moving, bool32_t end_actions)
{
	if (physical->Creature3d->FightCreature != NULL)
	{
		physical->ModifyStrength(CreatureActionInfo::GetInfo()[CREATURE_FIGHT].StrengthGain);
	}
	mind->PreviousActions.TurnsSinceLastDone[mind->agenda.CurrentPlan.creature_action] = 0;
	mind->agenda.CommandState.Commanded = false;
	mind->agenda.CommandState.ForcedByPlayerAction = false;
	FinishActionGeneric(stop_moving, end_actions);
	if (reason != NULL && GGlobal::Global.ShowCreatureFailureReasons)
	{
		CreatureValueSpinner* spinner = NEW(1375) CreatureValueSpinner;
		LH3DColor             color(0xff, 0, 0, 0xff);
		LHPoint*              headPos = physical->Creature3d->GetHeadPos();
		spinner->Init(*headPos, CHAR2WCHAR(reason), color);
	}
}

void Creature::FinishActionGeneric(bool32_t stop_moving, bool32_t end_actions)
{
	StopWhatIAmDoing(stop_moving, end_actions);
	if (mind->agenda.SubActionAgenda.Partner != NULL)
	{
		mind->IsDemobilised = false;
		mind->agenda.SubActionAgenda.Partner = NULL;
		FinishActionUnsuccessfully("Stopping because my partner told me to", true, true);
	}
}

void Creature::StopWhatIAmDoing(bool32_t stop_moving, bool32_t end_actions)
{
	if (mind->agenda.SubActionAgenda.NumSubActions > 0)
	{
		CREATURE_SUB_STATE_ACTIONS action =
			mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Action;
		if (CreatureSubStateTableEntry::SubStateTable[action].Function[CREATURE_SUB_STATE_FUNCTION_ABORT] != NULL)
		{
			(this->*CreatureSubStateTableEntry::SubStateTable[action].Function[CREATURE_SUB_STATE_FUNCTION_ABORT])();
		}
	}
	if (mind->agenda.SpellSeedTown != NULL)
	{
		mind->agenda.SpellSeedTown->GiveSpellSeedType(mind->agenda.SpellSeedType, StolenPowerUps);
		mind->agenda.SpellSeedTown = NULL;
	}
	InteractingObject = NULL;
	if (GetCreature3D()->IsActuallyDead())
	{
		GetCreature3D()->Resurrect();
	}
	LastCreatureTargetPosClear();
	uint32_t     turnsPerformingAction = mind->agenda.NumTurnsPerformingAction;
	CreaturePlan plan = mind->agenda.CurrentPlan;
	if (plan.IsValid())
	{
		CREATURE_ACTION action = mind->GetNthActionForPlan(plan, 0);
		for (unsigned long i = 0;
		     i < MAX_NUM_ACTIONS_FOR_EACH_DESIRE && action != CREATURE_ERROR && action < NUM_CREATURE_ACTIONS;)
		{
			if (action != mind->agenda.CurrentPlan.creature_action)
			{
				mind->PreviousActions.TurnsSinceLastDone[action] += turnsPerformingAction;
			}
			i++;
			action = mind->GetNthActionForPlan(plan, i);
		}
	}
	mind->agenda.NumTurnsPerformingAction = 0;
	if (physical->ObjectCarried != NULL && physical->Creature3d->HeldObject == NULL)
	{
		physical->ObjectCarried = NULL;
	}
	mind->agenda.Clear();
	mind->agenda.CurrentPlan.CreatureDesire = NUM_CREATURE_DESIRES;
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	DestroySpell();
	ReceiveSpell->CtrGestureCloseDown();
	if (dance != NULL)
	{
		dance->SetState(DANCE_STATE_WAITING);
	}
	if (GetPlayer() != NULL && GetPlayer()->type != PLAYER_TYPE_COMPUTER)
	{
		physical->Creature3d->SetRequiredSpeed(GetInfo()->WalkSpeed);
	}
	mind->agenda.SubActionAgenda.field_0xc38 = 0;
	mind->agenda.SubActionAgenda.AskedToPlayGame = false;
	LH3DCreature* opponent = physical->Creature3d->FightCreature;
	if (opponent != NULL)
	{
		if (opponent->creature != NULL)
		{
			opponent->creature->physical->ModifyStrength(CreatureActionInfo::GetInfo()[CREATURE_FIGHT].StrengthGain);
		}
		opponent->FightCreature = NULL;
		opponent->creature->FinishActionUnsuccessfully("Stopping because my partner told me to", true, true);
	}
	physical->Creature3d->EndAnyActions(stop_moving, end_actions);
	mind->debug.IsLooking = true;
	ReleaseDependents();
	mind->agenda.field_0x1ae4 = 0;
	mind->agenda.ObjectToThrowInPile = NULL;
	mind->desires.ForceCompletion = false;
	if (reaction.Get() != NULL)
	{
		StopReacting();
	}
	LeashControl = LEASH_CONTROL_NONE;
	field_0x1068 = 0;
	if (smoke != NULL)
	{
		smoke->Release();
		smoke = NULL;
	}
	if (arena != NULL)
	{
		if (arena->CreatedForFight)
		{
			arena->ToBeDeleted(false);
		}
		else
		{
			arena->Deactivate();
		}
		arena = NULL;
	}
	mind->agenda.CommandState.TakingFromHand = false;
	mind->agenda.CommandState.Commanded = false;
	mind->agenda.CommandState.ForcedByPlayerAction = false;
	FightEnded = false;
	FightStarted = false;
	ClearEyeState();
	GoingBackToConfinedArea = false;
	mind->agenda.MimicState.ActionUnderway = false;
	RespondingToEmergency = false;
	mind->VisionState.SeenObjectToActOn = false;
	mind->VisionState.LookedAtPosOfObjectToActOn = false;
	mind->VisionState.SeenObjectToUse = false;
	mind->VisionState.LookedAtPosOfObjectToUse = false;
	mind->agenda.CommandState.ControlledByTeleport = false;
	Moving = false;
	Trapped = false;
}

void Creature::ClearEyeState()
{
	LH3DCreature* creature3d = GetCreature3D();
	creature3d->BlinkPeriod = LH3D_CREATURE_DEFAULT_BLINK_PERIOD;
	creature3d->EyeState = LH3D_CREATURE_EYE_STATE_OPEN;
	float level = 1.0f - physical->Exhaustion * 2.0f;
	CLAMP(level, -1.0f, CREATURE_MAX_EYE_LID_LEVEL);
	creature3d->EyeLidLevel = level;
}

void Creature::UpdateOnCompletion()
{
	physical->UpdateAttributesAfterPerformingAction(mind->agenda.CurrentPlan.creature_action);
	if ((!mind->agenda.CommandState.Commanded || mind->agenda.CommandState.ForcedByPlayerAction) &&
	    mind->agenda.CurrentPlan.IsValid())
	{
		CREATURE_DESIRES desire = mind->agenda.CurrentPlan.CreatureDesire;
		if (mind->desires.UpdateAfterActionCompletionToSeeIfUrgeIsSatisfied(desire))
		{
			mind->desires.ClearSourcesAfterSatisfyingDesire(desire);
			mind->desires.UpdateDesiresAfterPerformingAction(mind->agenda.CurrentPlan.creature_action, GetInfo());
		}
		switch (desire)
		{
		case CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER:
			mind->desires.SuppressDesire(CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER, CREATURE_LONG_SUPPRESS_SECONDS);
			break;
		case CREATURE_DESIRE_TO_GET_WARMER:
			mind->desires.SuppressDesire(CREATURE_DESIRE_TO_GET_WARMER, CREATURE_LONG_SUPPRESS_SECONDS);
			break;
		case CREATURE_DESIRE_TO_GET_COLDER:
			mind->desires.SuppressDesire(CREATURE_DESIRE_TO_GET_COLDER, CREATURE_LONG_SUPPRESS_SECONDS);
			break;
		case CREATURE_DESIRE_TO_ATTRACT_PLAYERS_ATTENTION:
			mind->desires.SuppressDesire(CREATURE_DESIRE_TO_ATTRACT_PLAYERS_ATTENTION, CREATURE_SHORT_SUPPRESS_SECONDS);
			break;
		case CREATURE_DESIRE_TO_POO:
			mind->desires.SuppressDesire(CREATURE_DESIRE_TO_POO, CREATURE_SHORT_SUPPRESS_SECONDS);
			break;
		case CREATURE_DESIRE_TO_RESTORE_HEALTH:
			SetLife(GetLife() + CREATURE_RESTORE_HEALTH_AMOUNT);
			break;
		case CREATURE_DESIRE_TIREDNESS:
			mind->desires.MakeDesireLeastDominant(CREATURE_DESIRE_TIREDNESS, GetInfo(), CREATURE_TIREDNESS_DIVISOR);
			break;
		}
		if (CreatureActionInfo::GetInfo()[mind->agenda.CurrentPlan.creature_action].IsRecoveryAction)
		{
			SetLife(1.0f);
			SetTemperature(GClimate::GetTemp(&Pos.GetLHPoint()), NULL);
		}
	}
	if (mind->agenda.CurrentPlan.IsValid())
	{
		CREATURE_ACTION action = mind->agenda.CurrentPlan.creature_action;
		mind->PreviousActions.TurnsSinceLastDone[action] = 0;
		mind->agenda.MinSecondsPerformingActionToLearn =
			CreatureActionInfo::GetInfo()[action].MinSecondsPerformingActionToLearn;
	}
}

void Creature::DestroyObjectInHand(Object* object)
{
	if (object->IsVillager(NULL))
	{
		((Villager*)object)->VillagerDead(DEATH_REASON_NONE, GetPlayer(), object->GetLife(), false);
		GetPlayer()->AddToCondition(WC_CREATURE_KILL_VILLAGERS, 1);
	}
	object->ToBeDeleted(false);
}

LHPoint Creature::CalculateErrorDisplacement(const MapCoords& from, const MapCoords& to)
{
	float         skill = mind->learning.GetSkillAtAction(mind->agenda.CurrentPlan.creature_action);
	unsigned long angle = GUtils::GetAngleFromXZ(from, to);
	angle -= (long)((1.0f - skill) * CREATURE_ERROR_ANGLE_SCALE);
	if ((long)angle < 0)
	{
		angle += GAME_ANGLE_FULL_TURN;
	}
	else if (angle > GAME_ANGLE_FULL_TURN)
	{
		angle -= GAME_ANGLE_FULL_TURN;
	}
	float   distance = GUtils::GetDistanceInMetres(&from, &to);
	LHPoint displacement;
	displacement.x = GUtils::GetXByAngle(angle, distance);
	displacement.z = GUtils::GetZByAngle(angle, distance);
	displacement.y = 0.0f;
	return displacement;
}

#define CREATURE_DEBUG_CATEGORY         2
#define CREATURE_DEBUG_DESIRES_PER_LINE 3
#define CREATURE_DEBUG_DESIRE_LINES                                                                                    \
	((NUM_CREATURE_DESIRES + CREATURE_DEBUG_DESIRES_PER_LINE - 1) / CREATURE_DEBUG_DESIRES_PER_LINE)
#define CREATURE_DEBUG_NEAREST_TOWN_DISTANCE 100.0f

void Creature::DisplayStatistics()
{
	char text[1024];
	if (GGlobal::Global.debug.ShowCreatureStatistics)
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Creature %p %s", this, MindFileName);
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Development: %s",
		                                 CreatureDevelopmentPhaseEntry::GetInfo()[DevelopmentPhase].Name);
		CreatureAgenda* agenda = &mind->agenda;
		if (agenda->CurrentPlan.IsValid() && agenda->SubActionAgenda.IsValid())
		{
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Agenda");
			if (mind->agenda.CommandState.Commanded)
			{
				GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY,
				                                 "Creature is doing what the player told him to do");
			}
			CreatureMental* mental = mind;
			if (CreatureInitialDesireInfo::GetInfo()[mental->agenda.CurrentPlan.CreatureDesire].Social)
			{
				CreatureBelief* activityObject = mental->agenda.CurrentPlan.ActivityObject;
				GGlobal::Global.debug.SetMessage(
					CREATURE_DEBUG_CATEGORY, "Activity: %s on %s at %d, %d (priority: %.2f)",
					CreatureInitialDesireInfo::GetInfo()[mind->agenda.CurrentPlan.CreatureDesire].Name,
					AttributeType::ValueNames[activityObject->GetType()], activityObject->GetPos().MapX(),
					activityObject->GetPos().MapZ(), mental->agenda.CurrentPlan.AgendaPriority);
			}
			else
			{
				GGlobal::Global.debug.SetMessage(
					CREATURE_DEBUG_CATEGORY, "Activity: %s (priority: %.2f)",
					CreatureInitialDesireInfo::GetInfo()[mental->agenda.CurrentPlan.CreatureDesire].Name,
					mental->agenda.CurrentPlan.AgendaPriority);
			}
			text[0] = '\0';
			sprintf(text, "Action: %s", CreatureAgenda::ActionTable[mind->agenda.CurrentPlan.creature_action].Name);
			if (mind->agenda.CurrentPlan.ObjectToActOn != NULL &&
			    mind->agenda.CurrentPlan.ObjectToActOn != mind->agenda.CurrentPlan.ActivityObject)
			{
				sprintf(text + strlen(text), " on %s",
				        AttributeType::ValueNames[mind->agenda.CurrentPlan.ObjectToActOn->GetType()]);
			}
			if (mind->agenda.CurrentPlan.ObjectToUse != NULL)
			{
				sprintf(text + strlen(text), " using %s",
				        AttributeType::ValueNames[mind->agenda.CurrentPlan.ObjectToUse->GetType()]);
			}
			sprintf(text + strlen(text), " (priority %.2f)", mind->agenda.CurrentPlan.ActionPriority);
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
			GGlobal::Global.debug.SetMessage(
				CREATURE_DEBUG_CATEGORY, "SubAction: %s",
				CreatureSubStateTableEntry::SubStateTable
					[mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Action]
						.Name);
			int moveState = physical->Creature3d->MoveState;
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "PhysicalAction: %s",
			                                 moveState < LH3D_CREATURE_STATE_LAST ? PhysicalActionNames[moveState]
			                                                                      : "Invalid!");
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
		}
		else
		{
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Temporarily invalid agenda");
		}
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Desires");
		for (uint32_t line = 0; line < CREATURE_DEBUG_DESIRE_LINES; line++)
		{
			text[0] = '\0';
			for (uint32_t column = 0; column < CREATURE_DEBUG_DESIRES_PER_LINE; column++)
			{
				uint32_t desire = column + line * CREATURE_DEBUG_DESIRES_PER_LINE;
				if (desire < NUM_CREATURE_DESIRES)
				{
					if (mind->desires.IsActivated((CREATURE_DESIRES)desire))
					{
						float level = mind->desires.Levels[desire];
						sprintf(text + strlen(text), "%s=%.2f (%.5f)  ",
						        CreatureInitialDesireInfo::GetInfo()[desire].Name, level,
						        mind->desires.GetIncrementFromSources((CREATURE_DESIRES)desire));
					}
					else
					{
						sprintf(text + strlen(text), "%s=0.0 ", CreatureInitialDesireInfo::GetInfo()[desire].Name);
					}
				}
			}
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
		}
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
		sprintf(text, "Height: %.1f Strength: %.1f Fatness: %.1f Energy: %.1f MaxEnergy: %.1f", physical->GetUserSize(),
		        physical->GetStrength(), physical->GetFatness(), physical->GetEnergy(), physical->GetMaxEnergy());
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
		GGlobal::Global.debug.SetMessage(
			CREATURE_DEBUG_CATEGORY,
			"Age: %d Life: %.2f AmountOfPoo: %.2f Exhaustion: %.1f Speed: %.1f Dehydration: %.1f", physical->GetAge(),
			GetLife(), physical->GetAmountOfPoo(), physical->GetExhaustion(), physical->Creature3d->GetRequiredSpeed(),
			physical->GetDehydration());
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
		if (mind->debug.NumLostMostImportantObjectMessages > 0)
		{
			mind->debug.NumLostMostImportantObjectMessages--;
			GGlobal::Global.debug.SetMessage(
				CREATURE_DEBUG_CATEGORY, "************************** LOST MOST IMPORTANT OBJECT! ******************");
			GGlobal::Global.debug.SetMessage(
				CREATURE_DEBUG_CATEGORY, "************************** LOST MOST IMPORTANT OBJECT! ******************");
		}
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "UnsatisfiedDesires: %.2f", mind->desires.TotalLevel);
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Player's niceness: %.2f",
		                                 mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe);
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Attention paid: %.2f",
		                                 physical->NumGameTicksAlive != 0
		                                     ? (float)mind->AttitudeToPlayer.TotalNumGameTicksPlayerHasBeenWatchingMe /
		                                           (float)physical->NumGameTicksAlive
		                                     : 0.0f);
		GGlobal::Global.debug.SetMessage(
			CREATURE_DEBUG_CATEGORY, "NumSecondsPlayerHasIgnoredMe: %d",
			mind->AttitudeToPlayer.TicksSinceAttention /
				(CREATURE_MILLISECONDS_PER_SECOND / GGameInfo::Info.MillisecondsPerGameTurn));
		GGlobal::Global.debug.SetMessage(
			CREATURE_DEBUG_CATEGORY, "NumSecondsSinceLastInteract: %.1f",
			mind->AttitudeToPlayer.TicksSinceInteraction /
				(CREATURE_MILLISECONDS_PER_SECOND / GGameInfo::Info.MillisecondsPerGameTurn));
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "IsPlayerLookingAtCreature: %d",
		                                 GetInterfaceStatusLookingAtCreature() != NULL);
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "CreatureCanSeePlayerHand: %d",
		                                 CanCreatureSeePlayerHand());
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
	}
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Creature");
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "IsShowingDevelopmentHelpScript: %s",
	                                 IsShowingDevelopmentHelpScript ? "true" : "false");
	if (reaction.Get() != NULL)
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Reaction: %s",
		                                 ReactionFunction::Functions[GetReaction()->type].Name);
	}
	Town* town = Pos.GetNearestTown(CREATURE_DEBUG_NEAREST_TOWN_DISTANCE);
	if (town != NULL)
	{
		switch (town->GetTownAttitudeToCreature(this))
		{
		case TOWN_ATTITUDE_TO_CREATURE_NEVER_SEEN:
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Town attitude: NEW Creature");
			break;
		case TOWN_ATTITUDE_TO_CREATURE_NONE:
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Town attitude: IGNORE Creature");
			break;
		case TOWN_ATTITUDE_TO_CREATURE_CURIOUS:
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Town attitude: CURIOUS to Creature");
			break;
		case TOWN_ATTITUDE_TO_CREATURE_FEAR:
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Town attitude: FEAR of Creature");
			break;
		case TOWN_ATTITUDE_TO_CREATURE_RESPECT:
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Town attitude: RESPECT Creature");
			break;
		}
	}
	unsigned long numContexts = mind->learning.previous_context_stack.GetSize();
	if (numContexts > 0)
	{
		CreatureContext* current = mind->learning.GetCurrentContext();
		CREATURE_ACTION  action = current->plan.creature_action;
		text[0] = '\0';
		sprintf(text, "CURRENT ACTION: %s (WAS SEEN: %s, PRIORITY: %.2f SUFFICIENTLY COMPLETED: %s)",
		        CreatureAgenda::ActionTable[action].Name, current->WasSeen ? "true" : "false",
		        current->CalculateLearningPriority(),
		        mind->IsActionSufficientlyCompletedToBePerceived() ? "true" : "false");
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
		for (unsigned long i = 1; i < numContexts; i++)
		{
			if (numContexts > 1)
			{
				CreatureContext* previous = mind->learning.previous_context_stack.GetNth(i);
				CREATURE_ACTION  previousAction = previous->plan.creature_action;
				text[0] = '\0';
				sprintf(text, "PREVIOUS ACTION: %s (WAS SEEN: %s, PRIORITY: %.2f)",
				        CreatureAgenda::ActionTable[previousAction].Name, previous->WasSeen ? "true" : "false",
				        previous->CalculateLearningPriority());
				GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
			}
		}
	}
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
	CreatureContext context;
	if (mind->GetBestContextToLearnFrom(context) > 0.0f)
	{
		CREATURE_ACTION trainingAction = context.plan.creature_action;
		text[0] = '\0';
		sprintf(text, "TRAINING ACTION: %s (PRIORITY: %.2f)", CreatureAgenda::ActionTable[trainingAction].Name,
		        context.CalculateLearningPriority());
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, text);
	}
	else
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "NO RECENT ACTION FOR TRAINING");
	}
	if (mind->agenda.PlayerHasBeenTold)
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Player has been told");
	}
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Temperature at creature pos: %.2f",
	                                 GClimate::GetTemp(&Pos.GetLHPoint()));
	GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "AttentionTimer: %d", TurnsBeforeConsideringDecision);
	switch (LeashControl)
	{
	case LEASH_CONTROL_NONE:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Leash not controlling");
		break;
	case LEASH_CONTROL_PULL:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Leash pulling");
		break;
	case LEASH_CONTROL_DIRECT:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Leash clicked");
		break;
	}
	if (IsAvailableForReaction(REACTION_FLEE_FROM_OBJECT))
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Available for reaction");
	}
	else
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "NOT Available for reaction");
	}
	if (GoingBackToConfinedArea)
	{
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Going back to confined area");
	}
	if (mind->learning.LessonTextTicks > 0.0f)
	{
		mind->learning.LessonTextTicks -= 1.0f;
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Learning");
		if (mind->learning.LessonLearnt)
		{
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Lesson Origin: %s",
			                                 mind->learning.PreviousLesson.OriginText);
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Last Lesson: %s",
			                                 mind->learning.PreviousLesson.FeedbackText);
			for (uint32_t i = 0; i < mind->learning.PreviousLesson.NumLessonTexts; i++)
			{
				GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Last Lesson: %s",
				                                 mind->learning.PreviousLesson.LessonTexts[i]);
			}
		}
		else
		{
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Invalid player feedback!!");
		}
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, " ");
	}
	if (GetPlayer() != NULL)
	{
		GInterfaceStatus* status = GetInterfaceStatusLeashOn();
		if (status != NULL && status->LeashStatus != NULL)
		{
			GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Leash taut length: %.2f",
			                                 status->LeashStatus->LeashLength);
		}
	}
	switch (BeforeHandInteractState)
	{
	case CREATURE_HAND_INTERACT_STATE_NORMAL:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "Normal");
		break;
	case CREATURE_HAND_INTERACT_STATE_TURN_TO_FACE_CAMERA:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "TurnToFaceCamera");
		break;
	case CREATURE_HAND_INTERACT_STATE_PLAY_LAST_DESIRE_ANIM:
		GGlobal::Global.debug.SetMessage(CREATURE_DEBUG_CATEGORY, "PlayLastDesireAnim");
		break;
	}
}

uint32_t Creature::ValidToSelectFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords)
{
	return IsFighting() != false;
}

uint32_t Creature::ValidToApplyFightThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords)
{
	return ValidToSelectFightThisToMapCoord(status, coords);
}

uint32_t Creature::ValidToFightThisToObject(GInterfaceStatus* status, const MapCoords& coords)
{
	return ValidToSelectFightThisToMapCoord(status, coords);
}

bool32_t Creature::ValidForLockedSelectProcess(GInterfaceStatus* status)
{
#ifdef VERSION_BW1WCI
	if (GetInfo()->CreatureType != CREATURE_TYPE_OGRE && !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) &&
#else
	if (GetInfo()->CreatureType != CREATURE_TYPE_OGRE && !IsControlledByScript() &&
#endif
	    (mind->agenda.CurrentPlan.creature_action != CREATURE_DEAD ||
	     mind->agenda.SubActionAgenda.CurrentSubAction > 2) &&
	    GetPlayer() != NULL && !ReceiveSpell->IsCreatureSpellActive(CREATURE_RECEIVE_SPELL_FREEZE))
	{
		return true;
	}
	return false;
}

bool32_t Creature::NetworkFriendlyStartLockedSelect(GInterfaceStatus* status)
{
	GoIntoStateOfFinishingAction();
	status->Flags |= GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
	return true;
}

bool32_t Creature::NetworkFriendlyEndLockedSelect(GInterfaceStatus* status)
{
	GetCreature3D()->ReconnectToGame();
	status->Flags &= ~GAME_THING_WITH_POS_FLAG_LOCKED_SELECT;
	return true;
}

bool32_t Creature::IsReadyForNetworkUnfriendlyLockedSelect()
{
	return BeforeHandInteractState == CREATURE_HAND_INTERACT_STATE_NORMAL;
}

bool32_t Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* info)
{
	return true;
}

bool32_t Creature::GetReadyForNetworkUnfriendlyEndLockedSelect()
{
	physical->Creature3d->LookPoint.SetNull();
	physical->Creature3d->StopHandInteraction();
	return true;
}

bool32_t Creature::IsReadyForNetworkUnfriendlyEndLockedSelect()
{
	if (physical->Creature3d->ReachedLookDestination() &&
	    (!physical->Creature3d->IsPerformingBodyAction() || physical->Creature3d->IsActuallyDead()) &&
	    !physical->Creature3d->IsPerformingFacialAction())
	{
		return true;
	}
	return false;
}

bool32_t Creature::NetworkUnfriendlyEndLockedSelect()
{
	return true;
}

uint32_t Creature::DestroyedByEffect(GPlayer* player, float amount)
{
	if (CanDie)
	{
		Faint();
		return true;
	}
	SetLife(1.0f);
	return true;
}

void Creature::Faint()
{
	if (Fainted)
	{
		return;
	}
	ReceiveSpell->TryFinishAllSpells();
	GetCreature3D()->EndAnyAnimsRapidly();
	GetCreature3D()->StopMoving();
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status != NULL)
	{
		status->LeashStatus->SetOn(this, false);
	}
	CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_DEAD, NULL, mind->GetBeliefAboutObject(this), NULL,
	                  1.0f);
	ForceActivityAndForceAction(plan, true, true);
	mind->agenda.CommandState.Commanded = true;
	Fainted = true;
	SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
	                        CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_HAS_FAINTED, NULL, NULL, 0);
}

void Creature::ForceToFallOver()
{
	Faint();
}

void Creature::LookConfused(CreatureBelief* belief, long argument)
{
	CreaturePlan plan(CREATURE_DESIRE_CURIOSITY, CREATURE_LOOK_CONFUSED, NULL, mind->GetBeliefAboutObject(this), NULL,
	                  1.0f);
	ForceActivityAndForceAction(plan, true, true);
	mind->agenda.CommandState.Commanded = true;
}

const float CanSeeObjectHeightScale = 50.0f;

void Creature::SetHeadPos(MapCoords* pos)
{
	GLandscape::ConvertLandscapePointToMapCoord(*physical->Creature3d->GetHeadPos(), *pos);
	pos->SetAltitude(physical->Creature3d->GetHeadPos()->y);
}

void Creature::UpdateLocation()
{
	MapCoords coords;
	LHPoint   pos = physical->Creature3d->GetPos();
	GLandscape::ConvertLandscapePointToMapCoord(pos, coords);
	coords.altitude = pos.y - LH3DIsland::GetAltitude(pos);
	if (coords.InBounds() && InCreatureHand == NULL)
	{
		MoveMapObject(coords);
	}
}

void Creature::Update3DCreatureFromAttributes()
{
	float change = physical->Fatness - physical->PreviousFatness;
	CLAMP(change, -CREATURE_MAX_FATNESS_CHANGE_PER_TURN, CREATURE_MAX_FATNESS_CHANGE_PER_TURN);
	float fatness = change + physical->PreviousFatness;
	CLAMP(fatness, 0.0f, 1.0f);
	physical->PreviousFatness = fatness;
	physical->Creature3d->SetThinFat(fatness * 2.0f - 1.0f);
	physical->Creature3d->SetEvilGood(alignment->GetValue());
	LH3DCreature* creature3d = physical->Creature3d;
	creature3d->SetWeakStrong(CreaturePhysical::ConvertStrengthTo3D(physical->GetStrength(), GetInfo()->CreatureType));
}

bool32_t Creature::CanSeeAnObject(Object* object)
{
	if (!object->Pos.InBounds())
	{
		return false;
	}
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, point);
	LHPoint offset = point - physical->Creature3d->GetPos();
	float   distance = offset.GetNormSq();
	if (distance < CREATURE_SIGHT_DISTANCE || distance < object->GetHeight() * CanSeeObjectHeightScale)
	{
		return true;
	}
	return false;
}

bool32_t Creature::CanSeePos(const MapCoords& pos)
{
	uint32_t lookAngle = GUtils::ConvertScawenAngleToGameAngle(physical->Creature3d->GetLookDirection());
	long     angle = GUtils::GetAngleFromXZ(Pos, pos);
	uint32_t diff = abs((uint16_t)lookAngle - (uint16_t)angle);
	if (diff > GAME_ANGLE_FULL_TURN / 2)
	{
		diff = GAME_ANGLE_FULL_TURN - diff;
	}
	if (diff > GAME_ANGLE_FULL_TURN / 3 && (pos.MapX() != Pos.MapX() || pos.MapZ() != Pos.MapZ()))
	{
		return false;
	}
	return true;
}

bool32_t Creature::IsFacingObject(GameThingWithPos* object)
{
	return IsLookingTowardsPos(object->Pos, 4);
}

bool32_t Creature::IsHeadingTowardsPos(const MapCoords& pos, unsigned long degrees)
{
	return IsDirectionClose(pos, degrees, physical->Creature3d->GetHeading());
}

bool32_t Creature::IsLookingTowardsPos(const MapCoords& pos, unsigned long degrees)
{
	return IsDirectionClose(pos, degrees, physical->Creature3d->GetLookDirection());
}

bool32_t Creature::IsDirectionClose(const MapCoords& pos, unsigned long degrees, float direction)
{
	uint16_t myAngle = GUtils::ConvertScawenAngleToGameAngle(direction);
	uint16_t angle = GUtils::GetAngleFromXZ(Pos, pos);
	int      diff = myAngle > angle ? myAngle - angle : angle - myAngle;
	if (diff >= (int)(GAME_ANGLE_FULL_TURN / degrees) && (pos.MapX() != Pos.MapX() || pos.MapZ() != Pos.MapZ()))
	{
		return false;
	}
	return true;
}

#define CREATURE_LOOKED_AT_MAX_DISTANCE 400.0f

GInterfaceStatus* Creature::GetInterfaceStatusLookingAtCreature()
{
	if (GetPlayer() != NULL)
	{
		GInterfaceStatus* nearest = NULL;
		float             nearestDistance = 0.0f;
		for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
		     status = GetPlayer()->GetNextInterfaceStatus(status))
		{
			LHPoint viewDirection = status->GetCameraFocus() - status->GetCameraPos();
			LHPoint toCreature = physical->Creature3d->GetPos() - status->GetCameraPos();
			viewDirection.FastNormalizeInline();
			float distance = toCreature.Normalise();
			if (distance < CREATURE_LOOKED_AT_MAX_DISTANCE)
			{
				float dot = viewDirection * toCreature;
				float minCos = cos(CameraFieldOfView * 4.0f / 3.0f * 0.5f);
				if (dot > minCos && (nearest == NULL || distance < nearestDistance))
				{
					nearest = status;
					nearestDistance = distance;
				}
			}
		}
		return nearest;
	}
	return NULL;
}

bool32_t Creature::IsHandOverCreature()
{
	if (GetPlayer() == NULL)
	{
		return false;
	}
	for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
	     status = GetPlayer()->GetNextInterfaceStatus(status))
	{
		if (status->GetInterface()->interface_collide.GetObjectA() == this)
		{
			return true;
		}
	}
	return false;
}

bool32_t Creature::CanCreatureSeePlayerHand()
{
	if (GetPlayer() != NULL)
	{
		GInterfaceStatus* status = GetInterfaceStatusLookingAtCreature();
		if (status != NULL && IsLookingTowardsPos(MapCoords(status->ReportedHandPos), 3))
		{
			return true;
		}
	}
	return false;
}

LH3DCreature* Creature::GetCreature3D()
{
	return physical->Creature3d;
}

LHPoint Creature::GetNearestEdgeOfObject(Object* object)
{
	return LHPoint(0.0f, 0.0f, 0.0f);
}

LHPoint Creature::GetFurthestEdgeOfObject(Object* object)
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, point);
	uint16_t angle =
		(uint16_t)GUtils::GetAngleFromDXDZ(Pos.WholeX() - object->Pos.WholeX(), Pos.WholeZ() - object->Pos.WholeZ());
	float x =
		point.x - GUtils::GetXByAngle(angle, physical->Creature3d->BodyRadius +
	                                             object->GetScale() *
	                                                 max(object->Game3dObject->GetMesh()->GetBoundingBox().size.x,
	                                                     object->Game3dObject->GetMesh()->GetBoundingBox().size.z));
	float z =
		point.z - GUtils::GetZByAngle(angle, physical->Creature3d->BodyRadius +
	                                             object->GetScale() *
	                                                 max(object->Game3dObject->GetMesh()->GetBoundingBox().size.x,
	                                                     object->Game3dObject->GetMesh()->GetBoundingBox().size.z));
	return LHPoint(x, 0.0f, z);
}

void Creature::UpdateAttitudeToPlayer()
{
	if (GetInterfaceStatusLookingAtCreature() != NULL)
	{
		mind->AttitudeToPlayer.NumGameTicksPlayerHasBeenCurrentlyWatchingMe++;
		mind->AttitudeToPlayer.TotalNumGameTicksPlayerHasBeenWatchingMe++;
		mind->AttitudeToPlayer.TicksSinceAttention = 0;
	}
	else
	{
		mind->AttitudeToPlayer.TicksSinceAttention++;
		mind->AttitudeToPlayer.NumGameTicksPlayerHasBeenCurrentlyWatchingMe = 0;
	}
	mind->AttitudeToPlayer.TicksSinceInteraction++;
	mind->AttitudeToPlayer.PerceivedPlayerDesires.Process();
}

float Creature::CalculateEnergyUnitsFromFoodValue(unsigned long food_value)
{
	return food_value / CREATURE_FOOD_VALUE_PER_ENERGY_UNIT;
}

void Creature::GetMovementDirection(LHPoint* direction)
{
	uint32_t angle = GUtils::ConvertScawenAngleToGameAngle(physical->Creature3d->GetHeading());
	direction->x = GUtils::GetXByAngleMetersDistance(angle, CREATURE_MOVEMENT_DIRECTION_DISTANCE);
	direction->y = 0.0f;
	direction->z = GUtils::GetXByAngleMetersDistance(angle, CREATURE_MOVEMENT_DIRECTION_DISTANCE);
}

void Creature::GoIntoStateOfFinishingAction()
{
	if (GetPlayer() == NULL)
	{
		return;
	}
	LHPoint direction;
	float   heading;
	if (GetPlayer() != NULL)
	{
		LHPoint& pos = physical->Creature3d->GetPos();
		direction = GetNearestCameraInterfaceStatus()->GetCameraPos() - pos;
		if (fabs(direction.x) > 0.01f || fabs(direction.z) > 0.01f)
		{
			heading = heading_from_direction_vector(direction);
		}
		else
		{
			heading = 0.0f;
		}
	}
	else
	{
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, direction);
		heading = 0.0f;
	}
	physical->Creature3d->LookPoint.SetNull();
	physical->Creature3d->EndAnyActionsThenTurnToHeading(heading);
	BeforeHandInteractState = CREATURE_HAND_INTERACT_STATE_TURN_TO_FACE_CAMERA;
}

long Creature::GetAnimOfBestContextToLearnFrom(CREATURE_DESIRES* desire)
{
	CreatureContext  context;
	CREATURE_DESIRES bestDesire;
	if (mind->GetBestContextToLearnFrom(context) > 0.0f)
	{
		bestDesire = context.plan.CreatureDesire;
	}
	else
	{
		bestDesire = mind->agenda.CurrentPlan.CreatureDesire;
	}
	if (bestDesire < NUM_CREATURE_DESIRES && CreatureDesireTableEntry::Table[bestDesire].Manifestable)
	{
		mind->agenda.PlayerHasBeenTold = true;
		*desire = bestDesire;
		return CreatureDesireTableEntry::Table[bestDesire].ManifestAnimation;
	}
	*desire = NUM_CREATURE_DESIRES;
	return C_MOVE_STAND;
}

bool32_t Creature::PerformFinishingAction()
{
	LH3DCreature* creature3d = physical->Creature3d;
	if (!creature3d->IsPerformingBodyAction())
	{
		CREATURE_DESIRES desire;
		long             anim = GetAnimOfBestContextToLearnFrom(&desire);
		BeforeHandInteractState = CREATURE_HAND_INTERACT_STATE_NORMAL;
		GetCreature3D()->DisconnectFromGame(anim);
		creature3d->StartHandInteraction();
		if (desire != NUM_CREATURE_DESIRES)
		{
			SendCandidateHelpScript(CREATURE_HELP_TYPE_CURRENT_DESIRE, desire, NULL, NULL, 1);
		}
		return true;
	}
	return false;
}

bool32_t Creature::PerformAnimShowingLastDesire()
{
	return false;
}

void Creature::UpdateDesiresAfterObservingPlayerAction(CREATURE_DESIRES desire)
{
	if (CanCreatureSeePlayerHand())
	{
		UpdateDesiresAfterObservingAction(desire);
	}
}

void Creature::UpdateDesiresAfterObservingAction(CREATURE_DESIRES desire)
{
	mind->desires.DivideIncreaseTimeTimeBy(desire, GetInfo()->GetObservedActionIncreaseTimeDivisor(desire));
}

float CreatureInfo::GetObservedActionIncreaseTimeDivisor(CREATURE_DESIRES desire) const
{
	return CreatureInitialDesireInfo::GetInfo()[desire].ObservedActionIncreaseTimeDivisor *
	       ObservedActionIncreaseTimeScale;
}

uint32_t Creature::GetCreatureBeliefListType()
{
	return 0;
}

CREATURE_ACTION Creature::CalculatePerceivedCurrentAction() const
{
	return LastSuccessfulAction;
}

IMPRESSIVE_TYPE Creature::GetImpressiveType()
{
	return CreatureActionInfo::GetInfo()[CalculatePerceivedCurrentAction()].ImpressiveType;
}

bool32_t Creature::IsObjectTurningTooFastForCameraToFollowSmoothly()
{
	switch (mind->agenda.CurrentPlan.creature_action)
	{
	case CREATURE_LOOK_AT_HAND:
	case CREATURE_LOOK_AT_CAMERA:
	case CREATURE_GO_TO_MIDDLE_OF_SCREEN:
	case CREATURE_GO_TO_HAND:
	case CREATURE_WAVE_AT_PLAYER:
	case CREATURE_LOOK_CONFUSED:
		return true;
	}
	return false;
}

float Creature::GetFacingDirection()
{
	return physical->Creature3d->GetHeading() + TWO_PI - CREATURE_FACING_DIRECTION_OFFSET;
}

float Creature::GetFacingPitch()
{
	return physical->Creature3d->LookRelativePitch;
}

float Creature::GetProjectileSpeed()
{
	return 0.0f;
}

bool32_t Creature::IsScary()
{
	return alignment->GetValue() < CREATURE_SCARY_ALIGNMENT;
}

uint8_t Creature::GetFinalState() const
{
	return 0;
}

void Creature::ResetStateAfterReacting()
{
	StopReacting();
}

float Creature::Get2DRadius()
{
	return physical->Creature3d->BodyRadius;
}

float Creature::GetHeight()
{
	return physical->Creature3d->GetSize() * CREATURE_SIZE_TO_HEIGHT;
}

uint32_t Creature::SaveObject(LHOSFile& file, const MapCoords* origin)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved && GetPlayer() != NULL)
	{
		MapCoords relative = (origin != NULL) ? (Pos - *origin) : Pos;
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_CREATURE),
		        relative.ConvertToText(coordText), GetInfo() - CreatureInfo::Infos, GetPlayer()->GetPlayerNumber(),
		        MindFileName[0] ? MindFileName : "NULL");
		GSetup::WriteToFile(this, file, text, strlen(text));
	}
	return saved;
}

void Creature::UpdateDesiresFromEffect(EFFECT_TYPE type)
{
	CREATURE_DESIRES desires[EFFECT_TYPE_LAST] = {
		CREATURE_DESIRE_ANGER,      //
		CREATURE_DESIRE_ANGER,      //
		CREATURE_DESIRE_ANGER,      //
		CREATURE_DESIRE_COMPASSION, //
		CREATURE_DESIRE_ANGER,      //
		CREATURE_DESIRE_TO_IMPRESS, //
		CREATURE_DESIRE_TO_IMPRESS, //
	};
	if (type == EFFECT_TYPE_ALIGNMENT_MODIFICATION)
	{
		UpdateDesiresAfterObservingPlayerAction(CREATURE_DESIRE_COMPASSION);
	}
	else
	{
		UpdateDesiresAfterObservingPlayerAction(desires[type]);
	}
}

void Creature::AddToCheckSum()
{
	PosCheckSum += (int)(physical->Creature3d->position.x * CREATURE_CHECKSUM_FLOAT_SCALE);
	PosCheckSum += (int)(physical->Creature3d->position.z * CREATURE_CHECKSUM_FLOAT_SCALE);
	AddToMentalCheckSum();
	AddTo3DCheckSum();
}

void Creature::AddToMentalCheckSum()
{
	MentalMiscCheckSum += BeforeHandInteractState;
	MentalMiscCheckSum += (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) != 0;
	MentalMiscCheckSum += mind->debug.IsProcessing;
	MentalMiscCheckSum += GetInterfaceStatusLookingAtCreature() != NULL;

	MentalAgendaCheckSum += mind->agenda.CurrentPlan.CreatureDesire;
	if (mind->agenda.CurrentPlan.ActivityObject != NULL)
	{
		MentalAgendaCheckSum += mind->agenda.CurrentPlan.ActivityObject->Pointer->GetIndexOffset();
	}
	MentalAgendaCheckSum += (int)(mind->agenda.CurrentPlan.AgendaPriority * CREATURE_CHECKSUM_FLOAT_SCALE);
	MentalAgendaCheckSum += mind->agenda.CurrentPlan.creature_action;
	if (mind->agenda.CurrentPlan.ObjectToActOn != NULL)
	{
		MentalAgendaCheckSum += mind->agenda.CurrentPlan.ObjectToActOn->Pointer->GetIndexOffset();
	}
	MentalAgendaCheckSum += (int)(mind->agenda.CurrentPlan.AgendaPriority * CREATURE_CHECKSUM_FLOAT_SCALE);
	MentalAgendaCheckSum += (int)(mind->agenda.CurrentPlan.ActionPriority * CREATURE_CHECKSUM_FLOAT_SCALE);
	MentalAgendaCheckSum +=
		(int)(mind->agenda.SubActionAgenda.GetPositionArgument()->x * CREATURE_CHECKSUM_FLOAT_SCALE);
	MentalAgendaCheckSum +=
		(int)(mind->agenda.SubActionAgenda.GetPositionArgument()->z * CREATURE_CHECKSUM_FLOAT_SCALE);
	MentalAgendaCheckSum += mind->agenda.SubActionAgenda.CurrentSubAction;
	MentalAgendaCheckSum += mind->agenda.SubActionAgenda.SubActionState;

	MentalBeliefsCheckSum += mind->beliefs.lists[0].NumBeliefs;
	for (CreatureBelief* belief = mind->beliefs.lists[0].Head; belief != NULL; belief = belief->Next)
	{
		MentalBeliefsCheckSum += belief->Pointer->GetIndexOffset();
	}
}

void Creature::AddTo3DCheckSum()
{
	CheckSum3D += physical->Creature3d->GetInteractionCheckSum();
	if (!(Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))
	{
		CheckSum3D += physical->Creature3d->GetNormalCheckSum();
	}
}

void Creature::OutputCreatureInformation()
{
	fprintf(GGame::g_game->CreatureLogFile, "----------------------------------------------\n");
	fprintf(GGame::g_game->CreatureLogFile, "CreatureMental:\n");
	fprintf(GGame::g_game->CreatureLogFile, "\t\tGameTurn %d\n", GGame::g_game->data.GameTurn);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tBeforeHandInteractState: %d\n", BeforeHandInteractState);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tIsInHandInteract(): %d\n",
	        (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) != 0);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tIsProcessing: %d\n", mind->debug.IsProcessing);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tIsPlayerLookingAtCreature: %d\n",
	        GetInterfaceStatusLookingAtCreature() != NULL);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tDesireActedUpon %d\n", mind->agenda.CurrentPlan.CreatureDesire);
	if (mind->agenda.CurrentPlan.ActivityObject != NULL)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tActivityObject %d\n",
		        mind->agenda.CurrentPlan.ActivityObject->Pointer->GetIndexOffset());
	}
	fprintf(GGame::g_game->CreatureLogFile, "\t\tWhichAction %d\n", mind->agenda.CurrentPlan.creature_action);
	if (mind->agenda.CurrentPlan.ObjectToActOn != NULL)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tActionObject %d\n",
		        mind->agenda.CurrentPlan.ObjectToActOn->Pointer->GetIndexOffset());
	}
	fprintf(GGame::g_game->CreatureLogFile, "\t\tOverallPriority %.3f\n", mind->agenda.CurrentPlan.AgendaPriority);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tPriorityOfAction %.3f\n", mind->agenda.CurrentPlan.ActionPriority);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tSubActionIndex %d\n", mind->agenda.SubActionAgenda.CurrentSubAction);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tSubActionPart %d\n", mind->agenda.SubActionAgenda.SubActionState);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tActionFeedbackStage %d\n", mind->agenda.SubActionAgenda.MainSubAction);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tActionCompletionStage %d\n",
	        mind->agenda.SubActionAgenda.NumSubActions - 1);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tAge %d\n", physical->Age);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tStrength %.3f\n", physical->GetStrength());
	fprintf(GGame::g_game->CreatureLogFile, "\t\tFatness %.3f\n", physical->GetFatness());
	fprintf(GGame::g_game->CreatureLogFile, "\t\tPreviousFatness %.3f\n", physical->PreviousFatness);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tEnergy %.3f\n", physical->GetEnergy());
	fprintf(GGame::g_game->CreatureLogFile, "\t\tAmountOfPoo %.3f\n", physical->GetAmountOfPoo());
	fprintf(GGame::g_game->CreatureLogFile, "\t\tExhaustion %.3f\n", physical->GetExhaustion());
	fprintf(GGame::g_game->CreatureLogFile, "\t\tIsAvoidingObject %d\n", physical->IsAvoidingObject);
	fprintf(GGame::g_game->CreatureLogFile, "\t\tNumSubActions %d\n", mind->agenda.SubActionAgenda.NumSubActions);
	for (uint32_t i = 0; i < mind->agenda.SubActionAgenda.NumSubActions; i++)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tSubaction %d\n",
		        mind->agenda.SubActionAgenda.SubActions[i].Action);
	}
	CreatureBelief* belief;
	for (belief = mind->beliefs.lists[0].Head; belief != NULL; belief = belief->Next)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tActivityObject %d\n", belief->Pointer->GetIndexOffset());
	}
	for (belief = mind->beliefs.lists[1].Head; belief != NULL; belief = belief->Next)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tActionObject %d\n", belief->Pointer->GetIndexOffset());
	}
	for (uint32_t desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		fprintf(GGame::g_game->CreatureLogFile, "\t\tDesire[%d].Value: %.2f\n", desire,
		        mind->desires.GetDesire(desire));
		fprintf(GGame::g_game->CreatureLogFile, "\t\tDesire[%d].IncreaseTime: %.2f\n", desire,
		        mind->desires.IncreaseTime[desire]);
		fprintf(GGame::g_game->CreatureLogFile, "\t\tDesire[%d].Maximum: %.2f\n", desire,
		        mind->desires.MaxLevels[desire]);
	}
}

static bool        ReceivingFightImpact;
static bool        ReactingToPhysicsImpact;
static const float BlockingDamageScale = 0.1f;

void Creature::BeCutAndScarredByEffect(EffectValues& values)
{
	float damage = GetDamageEffect(values);
	CLAMP(damage, 0.0f, 1.0f);
	if (values.AppliedBy == NULL || values.AppliedBy->CastPlayer() != GetPlayer())
	{
		mind->desires.ChangeSource(FEAR_FROM_BEING_DAMAGED, damage);
		mind->desires.ChangeSource(ANGER_FROM_BEING_DAMAGED, damage);
	}
	if (damage > 0.0f)
	{
		LH3DCreature* creature3d = GetCreature3D();
		LHPoint       anus = *creature3d->GetAnusPos();
		float         size = creature3d->Size1 * CREATURE_CUT_AREA_SCALE;
		float         halfSize = size * 0.5f;
		float         eighthSize = size * 0.125f;
		float         quarterSize = eighthSize * 2.0f;
		if (values.numbers.values[EFFECT_TYPE_BURN] < values.numbers.values[EFFECT_TYPE_CRUSH])
		{
			long    type = damage < 0.5f ? 0 : 1;
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(values.coords, pos);
			LHPoint direction = anus - pos;
			if (direction.GetNorm() > CREATURE_CUT_MIN_DISTANCE_SQUARED)
			{
				long cuts = GAME_RAND(2835, 5) - 2 - (long)(damage * CREATURE_MAX_CUTS - CREATURE_MAX_CUTS);
				if (cuts > 0)
				{
					if (cuts >= CREATURE_MAX_CUTS)
					{
						cuts = CREATURE_MAX_CUTS;
					}
				}
				else
				{
					cuts = 0;
				}
				creature3d->BeCut(pos, direction, type, cuts);
			}
		}
		else
		{
			long type = GAME_RAND(2842, 3) != 0 ? 0 : 6;
			if (GAME_RAND(2851, (long)(creature3d->GetDamageFraction() * 140.0f + 10.0f)) == 0)
			{
				LHPoint pos;
				pos.x = GAME_FLOAT_RAND(2854, quarterSize) + anus.x - eighthSize;
				pos.y = GAME_FLOAT_RAND(2855, size) + anus.y - halfSize;
				pos.z = GAME_FLOAT_RAND(2856, quarterSize) + anus.z - eighthSize;
				LHPoint direction = anus - pos;
				if (direction.GetNorm() > CREATURE_CUT_MIN_DISTANCE_SQUARED)
				{
					long cuts = GAME_RAND(2861, 5) - 2 - (long)(damage * CREATURE_MAX_CUTS - CREATURE_MAX_CUTS);
					if (cuts > 0)
					{
						if (cuts >= CREATURE_MAX_CUTS)
						{
							cuts = CREATURE_MAX_CUTS;
						}
					}
					else
					{
						cuts = 0;
					}
					creature3d->BeCut(pos, direction, type, cuts);
				}
			}
		}
	}
}

void Creature::FillInEffectDefenceMultiplier(EffectNumbers& numbers)
{
	for (uint32_t i = 0; i < EFFECT_TYPE_LAST; i++)
	{
		numbers.values[i] = info->DefenceMultiplier[i];
		switch (i)
		{
		case EFFECT_TYPE_BURN:
		case EFFECT_TYPE_CRUSH:
		case EFFECT_TYPE_HIT:
		case EFFECT_TYPE_APPLY_FORCE:
			float size = GetCreature3D()->Size1;
			CLAMP(size, CREATURE_DEFENCE_MIN_SIZE, CREATURE_DEFENCE_MAX_SIZE);
			numbers.values[i] /= size * CREATURE_DEFENCE_SIZE_SCALE + 1.0f;
			break;
		}
	}
}

float Creature::ApplyEffect(EffectValues& values, int param_2)
{
	float damage = GetDamageEffect(values);
	if (damage <= 0.0f)
	{
		if (values.AppliedBy != this && IsFighting() && values.AppliedBy != GetPlayer())
		{
			return 0.0f;
		}
	}
	else if (values.AppliedBy == this)
	{
		return 0.0f;
	}
	if (IsFighting())
	{
		if (!ReceivingFightImpact && !ReactingToPhysicsImpact)
		{
			if (GetCreature3D()->IsBlocking())
			{
				values.numbers *= BlockingDamageScale;
			}
			GetCreature3D()->StartFightRecoilAction(C_RECOIL_MI);
			float heal = GetHealEffect(values);
			if (heal > 0.0f)
			{
				GetCreature3D()->TimeWarpHeal((long)(heal * CREATURE_TIME_WARP_HEAL_SCALE));
				GetCreature3D()->FightHealth += heal;
				CLAMP(GetCreature3D()->FightHealth, 0.0f, 1.0f);
			}
			if (damage > 0.0f)
			{
				GetCreature3D()->FightHealth -= damage;
				if (GetCreature3D()->FightHealth <= 0.0f)
				{
					if (GetCreature3D()->FightCreature != NULL)
					{
						Creature*       winner = GetCreature3D()->FightCreature->creature;
						CreatureBelief* belief = winner->mind->AddBeliefAboutObject(winner, this);
						CreaturePlan    plan(CREATURE_DESIRE_TO_OBEY_PLAYER,
						                     winner->GetCreature3D()->EvilGood >= -0.5f
						                         ? CREATURE_SHOW_IMPRESSIVE_ANIMATION
						                         : CREATURE_POO,
						                     belief, belief, NULL, 1.0f);
						winner->ForceActivityAndForceAction(plan, true, true);
						winner->mind->agenda.CommandState.Commanded = true;
						winner->NumBattlesWon++;
						winner->FightEnded = true;
					}
					FightEnded = true;
					Faint();
				}
			}
		}
	}
	else
	{
		BeCutAndScarredByEffect(values);
	}
	float heal = GetHealEffect(values);
	if (heal > 0.0f)
	{
		GetCreature3D()->TimeWarpHeal((long)(heal * CREATURE_TIME_WARP_HEAL_SCALE));
	}
	Creature* attacker = dynamic_cast<Creature*>(values.AppliedBy);
	if (attacker != NULL)
	{
		if (mind->learning.GameTurnNicenessLastUpdated == 0 ||
		    GGame::g_game->data.GameTurn - mind->learning.GameTurnNicenessLastUpdated > CREATURE_NICENESS_UPDATE_TURNS)
		{
			mind->learning.GameTurnNicenessLastUpdated = GGame::g_game->data.GameTurn;
			float niceness = 0.0f;
			for (uint32_t i = 0; i < EFFECT_TYPE_APPLY_FORCE; i++)
			{
				float value = values.numbers.values[i];
				if (value > 0.0f)
				{
					niceness += value * GAlignmentInfo::GetInfo()[i].Modifiers[ALIGNMENT_TYPE_CREATURE];
				}
			}
			mind->UpdateHowNiceIsCreature(attacker, niceness);
		}
	}
	if (!IsFighting())
	{
		return Object::ApplyEffect(values, param_2);
	}
	return 1.0f;
}

void Creature::ApplySingleEffect(EFFECT_TYPE type, float amount, GameThing* applied_by, const MapCoords& coords)
{
	Object::ApplySingleEffect(type, amount, applied_by, coords);
}

void Creature::ReceivedFightImpact(long impact, float strength, Creature* attacker)
{
	field_0x10a8 = GGame::g_game->data.GameTurn;
	ReceivingFightImpact = true;
	ApplySingleEffect(EFFECT_TYPE_HIT, strength * CREATURE_FIGHT_IMPACT_EFFECT_SCALE, attacker, Pos);
	ReceivingFightImpact = false;
}

void Creature::SetupCreatureForDanceEditing(const MapCoords& pos)
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(pos, point);
	mind->agenda.CurrentPlan.Force(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_WAVE_AT_PLAYER, NULL,
	                               mind->GetBeliefAboutObject(this), NULL, 1.0f);
	mind->agenda.CommandState.Commanded = true;
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DANCING_DURING_EDITOR,
	                                          NEW(3052) SubArgumentPoint(point), NULL,
	                                          &Creature::SetFaceForActionSmile);
	SetControlledByScript(true);
}

void Creature::ReleaseDependents()
{
	for (LHLinkedNode<Villager*>* node = ControlledVillagers.GetStart(); node != NULL; node = node->next.Get())
	{
		Villager* villager = node->payload;
		villager->status &= ~LIVING_STATUS_CONTROLLED_BY_CREATURE;
		switch (villager->GetFinalState())
		{
		case VILLAGER_STATE_IN_HAND:
		case VILLAGER_STATE_WORSHIPPING_CREATURE:
		case VILLAGER_STATE_CONTROLLED_BY_CREATURE:
			if (villager->IsDancing())
			{
				villager->RemoveFromDance(true);
			}
			villager->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			break;
		}
	}
	ControlledVillagers.RemoveAll();
}

bool32_t Creature::IsActionInFinalStage()
{
	return mind->agenda.SubActionAgenda.NumSubActions - 1 == mind->agenda.SubActionAgenda.GetSubActionIndex();
}

float Creature::GetRadius()
{
	return physical->Creature3d->BodyRadius;
}

Citadel* Creature::GetCitadel()
{
	if (owner != NULL)
	{
		return owner->GetCitadel();
	}
	return NULL;
}

bool32_t Creature::IsDominantCreature(Creature* other)
{
	uint32_t otherAge = other->physical->Age;
	uint32_t age = physical->Age;
	if ((uint32_t)abs((int)(age - otherAge)) > CREATURE_DOMINANCE_AGE_DIFFERENCE)
	{
		return otherAge < age;
	}
	return (uint32_t)other->GetIndexOffset() < (uint32_t)GetIndexOffset();
}

void Creature::ConsiderSendingCandidateSnapshot() {}

bool32_t Creature::IsHandNear()
{
	if (GetPlayer() == NULL)
	{
		return false;
	}
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
	float distance = GUtils::GetDistance(point, GetNearestHandInterfaceStatus()->GetHandPos());
	return distance < GetHeight() * 2.0f;
}

bool32_t Creature::IsAreaNew()
{
	uint32_t turnsPerSecond = CREATURE_MILLISECONDS_PER_SECOND / GGameInfo::Info.MillisecondsPerGameTurn;
	uint32_t seconds = mind->ExplorationMap.GetNumGameTurnsCreatureHasStayedInRegion(Pos) / turnsPerSecond;
	return (float)seconds < CREATURE_NEW_AREA_SECONDS;
}

bool32_t Creature::IsInGathering()
{
	return (GGame::g_game->GameFlags & GAME_FLAG_ACTIVATE_CREATURE_DESIRES) != 0;
}

bool32_t Creature::IsCreatureFarFromHome()
{
	return GUtils::GetDistanceInMetres(Pos, HomePos) > CREATURE_FAR_FROM_HOME_DISTANCE;
}

bool32_t Creature::HasFinishedBuildingHome()
{
	return HomeBuildingObjects.count > CREATURE_HOME_FINISHED_SIZE;
}

bool32_t Creature::IsReadyForNewScriptAction()
{
	return mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.GetSubActionIndex()].Action ==
	       CREATURE_SUB_STATE_ACTIONS_IN_SCRIPT;
}

void Creature::UpdateStatsWhenObjectKilled(Object* object)
{
	switch (object->info->type)
	{
	case OBJECT_TYPE_CREATURE:
		NumCreaturesKilled++;
		break;
	case OBJECT_TYPE_VILLAGER:
		NumPeopleKilled++;
		break;
	case OBJECT_TYPE_ANIMAL:
		NumAnimalsKilled++;
		break;
	}
}

void Creature::UpdateStatsWhenObjectEaten(Object* object)
{
	if (object->IsMushroom(this))
	{
		NumMushroomsEaten++;
	}
}

CreatureSpeechItem::CreatureSpeechItem(wchar_t* text, LHPlayer* player)
{
	StartTime = GGame::g_game->GameTimeMilliseconds;
	Text = _wcsdup(text);
	Player.SetDetails(player);
}

CreatureSpeechItem::~CreatureSpeechItem()
{
	free(Text);
}

bool32_t Creature::CreatureBubbleCallback(int index, LH3DColor* color, wchar_t** text, float* scale,
                                          GatheringText** font)
{
	if (GetPlayer() != NULL)
	{
		LHLinkedListIterator<CreatureSpeechItem*> it = SpeechItems.GetStart();
		if (it != NULL)
		{
			while (index != 0)
			{
				index--;
				it++;
				if (it == NULL)
				{
					return false;
				}
			}
			CreatureSpeechItem* item = it.Get();
			unsigned long       colour = 0;
			if (item->Player.PlayerId != -1)
			{
				GPlayer* player = GGame::g_game->GetPlayerFromReal(item->Player.PlayerId);
				if (player != NULL)
				{
					colour = player->GetPlayerColour();
				}
			}
			if (colour == 0)
			{
				colour = 0xffffffff;
			}
			*text = item->Text;
			*scale = 1.0f;
			*color = LH3DColor((colour >> 1) & 0x7f7f7f | 0xff808080);
			*font = bubble->Font;
			return true;
		}
	}
	return false;
}

int __stdcall Creature::CreatureBubbleCallbackStub(int index, unsigned long user, LH3DColor* color, wchar_t** text,
                                                   float* scale, GatheringText** font)
{
	if (user != 0)
	{
		return ((Creature*)user)->CreatureBubbleCallback(index, color, text, scale, font);
	}
	return false;
}

void Creature::AddSpeechItem(char16_t* text, LHPlayer* player, unsigned long flags)
{
	if (flags & CREATURE_SPEECH_FLAG_NO_NAME)
	{
		SpeechItems.Add(NEW(3304) CreatureSpeechItem(text, player));
		bubble->DisplayTime += CREATURE_SPEECH_DISPLAY_TIME;
	}
	else
	{
		SpeechItems.Add(NEW(3309) CreatureSpeechItem(LHSPrintfW(L"%s: %s", player->Name, text), player));
	}
	bubble->ScrollPos = 0.0f;
	if (bubble->DisplayTime < CREATURE_SPEECH_DISPLAY_TIME)
	{
		bubble->DisplayTime = CREATURE_SPEECH_DISPLAY_TIME;
	}
	char path[0x200];
	GGame::g_game->path_creator.GetCurrentUserPath(path);
	char name[0x400];
	name[WideCharToMultiByte(CP_ACP, 0, player->Name, -1, name, sizeof(name) - 1, NULL, NULL)] = '\0';
	char message[0x400];
	message[WideCharToMultiByte(CP_ACP, 0, text, -1, message, sizeof(message) - 1, NULL, NULL)] = '\0';
	FILE* file = fopen(LHSPrintf("%s\\chat.log", path), "a");
	if (file != NULL)
	{
		fprintf(file, "%s: %s\n", name, message);
		fclose(file);
	}
}

void Creature::CheatLearnEverything()
{
	CheatLearnNormalThings();
	for (uint32_t action = 0; action < MAGIC_TYPE_LAST; action++)
	{
		mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_MAGIC, action, false);
	}
}

void Creature::CheatLearnNormalThings()
{
	for (uint32_t action = 0; action < CREATURE_ACTION_KNOWN_ABOUT_LAST; action++)
	{
		mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL, action, false);
	}
}

void Creature::CheatNextDevelopmentPhase()
{
	if (DevelopmentPhase < DEVELOPMENT_PHASE_FULLY_MATURE)
	{
		for (uint32_t action = 0; action < CREATURE_ACTION_KNOWN_ABOUT_LAST; action++)
		{
			mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_NORMAL, action, false);
		}
		GameTurnsInDevelopmentPhase = 0;
	}
}

float Creature::GetHomeSize()
{
	return Get2DRadius() * 2.0f;
}

void Creature::GetBoundingSphere(LHPoint& centre, float& radius)
{
	physical->Creature3d->GetBoundingSphere(centre, radius);
}

void Creature::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	PhysicsObject* hitter = physics_object->WhoHitMe;
	if (hitter == NULL)
	{
		return;
	}
	if (hitter->object != NULL && hitter->object->IsToy(NULL))
	{
		return;
	}
	if (hitter->object != NULL && hitter->object->IsToy(NULL))
	{
		return;
	}
	physical->Creature3d->ApplyForce(hitter->Physics.Matrix.GetPos(), physics_object->ImpactForce);
	if ((Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && GetPlayer() == GGame::g_game->MyPlayer())
	{
		return;
	}
	EffectValues values(EFFECT_INFO_CRUSH, hitter->object, hitter->GetPlayer());
	float        damage = GetDamageDonebyFlyingObject(physics_object->ImpactDamage);
	values.numbers *= damage;
	if (damage > CREATURE_MIN_PHYSICS_IMPACT_DAMAGE)
	{
		GLandscape::ConvertLandscapePointToMapCoord(hitter->Physics.Matrix.GetPos(), values.coords);
		values.coords.altitude =
			hitter->Physics.Matrix.GetPos().y - LH3DIsland::GetAltitude(hitter->Physics.Matrix.GetPos());
		ReactingToPhysicsImpact = true;
		ApplyEffect(values, 0);
		ReactingToPhysicsImpact = false;
		if (physics_object->GetPlayer() == GetPlayer())
		{
			mind->UpdateAttitudeToPlayerFromFeedback(-damage);
		}
		mind->desires.ChangeSource(FEAR_FROM_BEING_DAMAGED, damage);
		mind->desires.ChangeSource(ANGER_FROM_BEING_DAMAGED, damage);
	}
}

PHYSICS_CONSTANTS_TYPE Creature::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_DEFAULT_UNMOVABLE;
}

void Creature::SetUpPhysOb(PhysOb* phys_ob)
{
	LH3DCreature* creature3d = physical->Creature3d;
	creature3d->GetBoundingSphere(phys_ob->Matrix.GetPos(), phys_ob->Radius);
	phys_ob->SetUpConstants(CREATURE_PHYSICS_MASS, &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()], false);
	phys_ob->NumVertices = 0;
	phys_ob->NumFaces = 0;
	phys_ob->Faces = NULL;
	phys_ob->NumVertices = creature3d->NumBoneMatrices;
	IPoint* vertices = NEW(3447) IPoint[phys_ob->NumVertices];
	phys_ob->Vertices = vertices;
	int i;
	for (i = 0; i < phys_ob->NumVertices; i++)
	{
		vertices->Pos.SetNull();
		vertices++;
	}
	CollideBox* boxes = (CollideBox*)creature3d->GetBoite();
	phys_ob->CollideBoxes = boxes;
	phys_ob->CollideMesh = creature3d->meshes[creature3d->CurrentMesh];
	phys_ob->SetUpMoi();
	IPoint* vertex = phys_ob->Vertices;
	for (i = 0; i < phys_ob->NumVertices; i++)
	{
		vertex->WorldPos = boxes->Matrix.GetPos();
		vertex->Contact = boxes->Matrix.GetPos();
		vertex->LastCompression = 0.0f;
		vertex->Compression = 0.0f;
		vertex++;
		boxes++;
	}
	creature3d->PhysicsOb = phys_ob;
}

bool32_t Creature::CanBecomeAPhysicsObject()
{
	return false;
}

bool Creature::InteractsWithPhysicsObjects()
{
	return true;
}

bool32_t Creature::IsPosInsideCreatureHome(const MapCoords& pos)
{
	float distance = GUtils::GetDistanceInMetres(&HomePos, &pos);
	return distance < GetHomeSize() * CREATURE_HOME_SIZE_SCALE;
}

CreatureBelief* Creature::GetNearbyObject(bool32_t (GameThingWithPos::*is_suitable)(Creature*),
                                          CreatureBelief* exclude1, CreatureBelief* exclude2)
{
	CreatureBelief* best = NULL;
	float           bestDistance = MaxFloat;
	for (uint32_t i = 0; i < ARRAY_SIZE(mind->beliefs.lists); i++)
	{
		for (CreatureBelief* belief = mind->beliefs.lists[i].Head; belief != NULL; belief = belief->Next)
		{
			GameThingWithPos* object = belief->GetPointer();
			if ((object->*is_suitable)(this) && belief != exclude1 && belief != exclude2)
			{
				float distance = GUtils::GetDistanceInMetres(Pos, object->Pos);
				if (distance < bestDistance)
				{
					bestDistance = distance;
					best = belief;
				}
			}
		}
	}
	return best;
}

void CreatureValueSpinner::UpdatePosition(float time)
{
	if (point.y < CREATURE_VALUE_SPINNER_MAX_HEIGHT)
	{
		point.y += time * CREATURE_VALUE_SPINNER_RISE_SPEED;
	}
}

bool32_t Creature::IsMoving() const
{
	return physical->Creature3d->IsMoving();
}

int Creature::MoveMapObject(const MapCoords& coords)
{
	mind->VisionState.ThingToLookAt.ConsiderNewMountainsToLookAt(this);
	mind->VisionState.ThingToLookAt.ConsiderNewWaterToLookAt(this);
	UpdateLongRangeVision();
	if (InCreatureHand != NULL)
	{
		return OBJECT_MOVE_RESULT_SAME_CELL;
	}
	return Object::MoveMapObject(coords);
}

void Creature::ForceMoveMapObjectWithoutWalking(const MapCoords& pos)
{
	MoveMapObject(pos);
	float size = physical->Size;
	GetCreature3D()->SetSize(size);
	LH3DCreature* creature3d = physical->Creature3d;
	LHPoint       point;
	GLandscape::ConvertMapCoordToLandscapePoint(pos, point);
	creature3d->SetPos(point);
	creature3d->ResetLook();
	LHMatrix* to = creature3d->PreviousBuffer;
	LHMatrix* from = creature3d->SafeBuffer0;
	for (int i = 0; i < creature3d->NumBoneMatrices; i++)
	{
		*to++ = *from++;
	}
}

int Creature::MoveByTeleport(const MapCoords& pos)
{
	CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_MOVE_TO_POS, NULL, mind->GetBeliefAboutObject(this),
	                  NULL, 1.0f);
	ForceActivityAndForceAction(plan, true, true);
	mind->agenda.CommandState.Commanded = true;
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(pos, point);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TRANSPORTED_BY_TELEPORT,
	                                          NEW(3605) SubArgumentPoint(point), NULL, NULL);
	GLandscape::ConvertMapCoordToLandscapePoint(DestPosBeforeTeleport, point);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                          NEW(3608)
	                                              SubArgumentPointAndFloat(point, CREATURE_TELEPORT_DESTINATION_RADIUS),
	                                          &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_STOP_CONTROLLED_BY_TELEPORT, NULL, NULL, NULL);
	mind->agenda.CommandState.ControlledByTeleport = true;
	return true;
}

void Creature::TakeFromPlayersHand(GInterfaceStatus* status)
{
	if (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING)
	{
		return;
	}
	if (reaction.Get() == NULL)
	{
		mind->agenda.PreviousPlan = mind->agenda.CurrentPlan;
	}
	physical->Creature3d->EndAnyAnimsRapidly();
	mind->agenda.SubActionAgenda.HandStatus = status;
	CreaturePlan plan(CREATURE_DESIRE_CURIOSITY, CREATURE_TAKE_OBJECT_FROM_HAND, NULL, mind->GetBeliefAboutObject(this),
	                  NULL, 1.0f);
	ForceActivityAndForceAction(plan, true, true);
	mind->agenda.CommandState.Commanded = true;
	mind->agenda.CommandState.TakingFromHand = true;
	mind->agenda.ForcedActionFunction = &Creature::ActOnObjectInHand;
}

GAME_RETURNS Creature::InterfaceGiveObject(GInterfaceStatus* status, Object* object)
{
	return GAME_RETURNS_REMOVE_FROM_HAND;
}

uint32_t Creature::InterfaceValidToGiveObject(GInterfaceStatus* status, Object* object)
{
	GPlayer* player = GetPlayer();
	if (player != NULL && status != NULL)
	{
		GPlayer* giver = status->GetPlayer();
		if (giver != NULL && (player == giver || player->IsAllied(giver)))
		{
			if (!object->IsSpellSeed() && GetInfo()->CreatureType != CREATURE_TYPE_OGRE)
			{
				if (!object->CanBePickedUpByCreatureIgnoringWhetherItIsInTheMap(this))
				{
					SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
					                        CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_CANNOT_PICK_UP, NULL, NULL, 0);
				}
				else
				{
					return true;
				}
			}
		}
	}
	return false;
}

void Creature::GetGesturePoint(GESTURE_TYPE type, float frac, LHPoint* point)
{
	LHPoint          gesturePoint;
	AnimatedGesture* gesture = AnimatedGestures::GetGesture(type);
	gesture->GetPointAtFrac(frac, &gesturePoint);
	gesturePoint.z = 1.0f - gesturePoint.z;
	float   distance = Get2DRadius() * 2.0f;
	float   heading = physical->Creature3d->Heading;
	LHPoint forward(sinf(heading) * distance, 0.0f, -cosf(heading) * distance);
	LHPoint centre = *physical->Creature3d->GetHeadPos() + forward;
	float   size = Get2DRadius() * CREATURE_GESTURE_SIZE_SCALE;
	float   sideHeading = physical->Creature3d->Heading - HALF_PI_F;
	LHPoint side(sinf(sideHeading) * size, 0.0f, -cosf(sideHeading) * size);
	LHPoint up(0.0f, size, 0.0f);
	*point = centre + side * gesturePoint.x + up * gesturePoint.z;
}

void Creature::GetRunAwayPoint(const LHPoint& from, LHPoint* point)
{
	MapCoords pos = Pos;
	float     distance = GAME_RAND(3725, 40) + GetInfo()->field_0x2e0[2];
	LHPoint   direction(Pos.MapMetersX() - from.x, 0.0f, Pos.MapMetersZ() - from.z);
	if ((float)fabs(direction.x) > 0.001f || (float)fabs(direction.z) > 0.001f)
	{
		direction.SetSize(1.0f);
	}
	else
	{
		direction.x = 1.0f;
		direction.z = 0.0f;
	}
	direction *= distance;
	pos.SetMapMetersX(pos.MapMetersX() + direction.x);
	pos.SetMapMetersZ(pos.MapMetersZ() + direction.z);
	MapCoords clear;
	LHPoint   result;
	if (pos.GetClearAreaForActivity(this, &clear, 400.0f, 10.0f, false))
	{
		GLandscape::ConvertMapCoordToLandscapePoint(clear, result);
	}
	else
	{
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, result);
	}
	if (!GetCreature3D()->IsDestinationValid(&result))
	{
		LHPoint valid;
		LH3DCreature::SpiralCheckForValidPoint(&result, &valid);
		if (GetCreature3D()->IsDestinationValid(&valid))
		{
			LHPoint difference(&result);
			difference.Sub(LHPoint(&valid));
			if (difference.GetNorme() < 30.0f)
			{
				result = valid;
			}
		}
	}
	*point = result;
}

const float CreatureDistanceSpeedScale = 2.0f;
const float CreatureDistanceSpeedOffset = 5000.0f;

void Creature::StartMovingToObject(CreatureBelief* belief, Object* object, float speed, float min_speed)
{
	LH3DCreature* creature3d = physical->Creature3d;
	if (creature3d->RequiredSpeed == GetInfo()->RunSpeed)
	{
		creature3d->RequiredBreathTime = creature3d->GetVeryFastBreathTime();
	}
	else
	{
		creature3d->RequiredBreathTime = creature3d->GetFastBreathTime();
	}
	mind->agenda.belief = belief;
	float distance = GUtils::GetDistanceInMetres(Pos, object->Pos);
	float time = CreatureDistanceSpeedScale * distance + CreatureDistanceSpeedOffset;
	if (speed <= min_speed)
	{
		speed = min_speed + 0.01f;
	}
	DestPos = object->Pos;
	physical->Creature3d->StartMovingToObject(object, speed, min_speed, time);
}

void Creature::StartMovingToPoint(CreatureBelief* belief, const LHPoint& pos, float speed, float min_speed)
{
	LH3DCreature* creature3d = physical->Creature3d;
	if (creature3d->RequiredSpeed == GetInfo()->RunSpeed)
	{
		creature3d->RequiredBreathTime = creature3d->GetVeryFastBreathTime();
	}
	else
	{
		creature3d->RequiredBreathTime = creature3d->GetFastBreathTime();
	}
	mind->agenda.belief = belief;
	float distance = GetCreature3D()->position.GetDistance2D(pos);
	float time = CreatureDistanceSpeedScale * distance + CreatureDistanceSpeedOffset;
	if (speed <= min_speed)
	{
		speed = min_speed + 0.01f;
	}
	GLandscape::ConvertLandscapePointToMapCoord(pos, DestPos);
	physical->Creature3d->StartMovingToPoint(pos, speed, min_speed, time);
}

long Creature::GetPutDownAction()
{
	long    action = C_OBJECT_REMOVE_DISCARD;
	Object* held = physical->Creature3d->HeldObject;
	if (held && held->IsCreature())
	{
		return C_OBJECT_REMOVE_PUT_DOWN;
	}
	CreatureBelief*     belief = mind->AddBeliefAboutObject(this, held);
	CreatureBelief*     activity = AddBeliefAboutAssociatedObject(belief);
	static CreaturePlan plan;
	if (mind->FindSomethingToDoOnParticularObject(activity, belief, plan))
	{
		switch (plan.CreatureDesire)
		{
		case CREATURE_DESIRE_TO_IMPRESS:
		case CREATURE_DESIRE_COMPASSION:
		case CREATURE_DESIRE_CURIOSITY:
			action = C_OBJECT_REMOVE_PUT_DOWN;
			break;
		}
	}
	return action;
}

void Creature::ForceMeToActOnObject(GameThingWithPos* object)
{
	CreatureBelief*     belief = mind->AddBeliefAboutObject(this, object);
	CreatureBelief*     activity = AddBeliefAboutAssociatedObject(belief);
	static CreaturePlan plan;
	if (mind->FindSomethingToDoOnParticularObject(activity, belief, plan))
	{
		ConstructCurrentPlanFromPlan(plan, true);
	}
	else if (object->CanBePickedUpByCreature(this))
	{
		CreaturePlan holdPlan(CREATURE_DESIRE_CURIOSITY, CREATURE_HOLD_OBJECT, NULL, belief, NULL, 1.0f);
		ForceActivityAndForceAction(holdPlan, true, true);
	}
	else
	{
		CreaturePlan examinePlan(CREATURE_DESIRE_CURIOSITY, CREATURE_EXAMINE_BY_LOOKING, NULL, belief, NULL, 1.0f);
		ForceActivityAndForceAction(examinePlan, true, true);
	}
	mind->agenda.CommandState.Commanded = true;
}

void Creature::SetFizz(float amount, float duration, bool lock)
{
	if (FizzLocked)
	{
		return;
	}
	if (amount == 1.0f)
	{
		SoundTag::Create(Pos, LH_SAMPLE_G_SPELLTELEPORTENERGISEGO, false, 2, 0, false, true,
		                 AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	}
	FizzLocked |= lock;
	amount = boundf(0.0f, amount, 1.0f);
	FizzDest = amount;
	if (duration == 0.0f || FizzDest == FizzCurr)
	{
		FizzSpeed = 0.0f;
		FizzCurr = FizzDest;
	}
	else
	{
		FizzSpeed = 1.0f / duration;
		FizzSpeed *= FizzDest - FizzCurr > 0.0f ? 1.0f : -1.0f;
	}
}

float Creature::GetFizzDest()
{
	return FizzDest;
}

float Creature::GetFizzCurr()
{
	return FizzCurr;
}

Pot* Creature::CreateHandObject(GameThingWithPos* source, const MapCoords& pos, POT_INFO type, unsigned long amount)
{
	Pot* pot =
		Pot::Create(pos, &GPotInfo::GetInfo()[type], amount, NULL, pos.GetNearestTown(MaxFloat), 0, 0.0f, 1.0f, false);
	pot->SetScale(1.5f * physical->Creature3d->Size1);
	if (source)
	{
		Pot* sourcePot = dynamic_cast<Pot*>(source);
		if (sourcePot)
		{
			sourcePot->RemoveResource(((const GPotInfo*)pot->info)->ResourceType, amount, NULL, NULL);
		}
	}
	return pot;
}

void Creature::CalculateCreationPos(const MapCoords& target, MapCoords* pos)
{
	float   range = physical->Creature3d->CalculateMaximumActionRange(LH3D_CREATURE_STATE_PICKING_UP);
	LHPoint from;
	LHPoint to;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, from);
	GLandscape::ConvertMapCoordToLandscapePoint(target, to);
	LHPoint offset;
	offset = to - from;
	offset.y = 0.0f;
	offset.SetSize(range * 0.95f);
	offset += from;
	MapCoords result(offset);
	*pos = result;
}

float Creature::GetScreenWidthInWorldMetres()
{
	GInterfaceStatus* status = GetNearestCameraInterfaceStatus();
	if (!status)
	{
		status = GGame::g_game->MyInterfaceStatus();
	}
	LHPoint focus = status->GetCameraFocus();
	LHPoint pos = status->GetCameraPos();
	LHPoint offset(pos.x - focus.x, pos.y - focus.y, pos.z - focus.z);
	float   distance = sqrt(offset.x * offset.x + offset.y * offset.y + offset.z * offset.z);
	LHPoint left;
	LH3DTech::Get3DPointFromScreen(LHCoord(0, 300), left, distance);
	LHPoint right;
	LH3DTech::Get3DPointFromScreen(LHCoord(800, 300), right, distance);
	return distance * (float)tan(0.875);
}

bool32_t Creature::HasPerformedActionInLastNSeconds(CREATURE_ACTION action, float seconds)
{
	uint32_t turns = mind->PreviousActions.TurnsSinceLastDone[action];
	if ((float)(turns / (1000 / GGameInfo::Info.MillisecondsPerGameTurn)) < seconds && turns != 0)
	{
		return true;
	}
	return false;
}

void Creature::CheatMakeMeFight()
{
	if (GetPlayer())
	{
		GInterfaceStatus* status = GetInterfaceStatusLeashOn();
		if (status)
		{
			status->LeashStatus->SetOn(this, false);
		}
	}
	LH3DCreature* creature3d = physical->Creature3d;
	LH3DCreature* opponent3d = creature3d->FightCreature;
	if (opponent3d)
	{
		if (creature3d->IsActuallyDead())
		{
			creature3d->Resurrect();
		}
		if (opponent3d->IsActuallyDead())
		{
			opponent3d->Resurrect();
		}
		FinishActionUnsuccessfully("fight aborted by user", true, true);
		return;
	}
	Creature* nearest = NULL;
	float     nearestDistance = MaxFloat;
	for (LHLinkedNode<Creature*>* node = CreatureList.GetStart(); node; node = node->next.Get())
	{
		if (node->payload != this)
		{
			float distance = GUtils::GetDistanceInMetres(Pos, node->payload->Pos);
			if (distance < nearestDistance)
			{
				nearest = node->payload;
				nearestDistance = distance;
			}
		}
	}
	if (nearest)
	{
		CheatLearnEverything();
		nearest->CheatLearnEverything();
		CreatureBelief* belief = mind->AddBeliefAboutObject(this, nearest);
		nearest->mind->AddBeliefAboutObject(nearest, this);
		CreatureForcedAction::InProgress = true;
		ForceActivityAndForceAction(CREATURE_DESIRE_ANGER, belief, CREATURE_FIGHT, belief, NULL, true, true);
		mind->agenda.CommandState.Commanded = true;
	}
}

bool32_t Creature::IsAnimIndividual(unsigned long anim)
{
	return anim >= C_INDIVIDUAL_SUMMON;
}

float Creature::GetImpressiveIntensity(IMPRESSIVE_TYPE type)
{
	return physical->GetUserSize();
}

void Creature::SetScale(float scale)
{
	physical->Creature3d->SetSize(scale);
	physical->Size = scale;
}

float Creature::GetScale()
{
	return physical->GetUserSize();
}

uint32_t Creature::GetAge()
{
	return physical->Age;
}

void Creature::SetAge(uint32_t age)
{
	physical->Age = age;
}

bool32_t Creature::IsFighting()
{
	return physical->Creature3d->FightCreature != NULL;
}

bool32_t Creature::CanBeDestroyedBySpell(Spell* spell)
{
	return false;
}

float Creature::GetMaxAlignmentChangePerGameTurn()
{
	return GetInfo()->MaxAlignmentChangePerGameTurn;
}

float Creature::GetImpressiveValue(Living* living, Reaction* reaction)
{
	CREATURE_ACTION action = CalculatePerceivedCurrentAction();
	float           value =
		reaction->GetDefaultReactionMultiplier(living) * CreatureActionInfo::GetInfo()[action].ImpressiveValue;
	Town* town = living->GetTown();
	if (town && !town->GetTownAttitudeToCreature(this))
	{
		value = town->GetInfo()->field_0x154;
	}
	float distance = GUtils::GetDistanceInMetres(living->Pos, Pos);
	float distanceChange = GBelief::DistanceChangeToBelief(distance, reaction->GetInfo()->MaxReactionDistance);
	float power = GetPower();
	float boredom = living->GetBoredomMultiplier(reaction);
	float size = GetImpressiveSize();
	return value * distanceChange * power * boredom * size *
	       GLandBalance::Values[GLandBalance::LAND_BALANCE_IMPRESSIVE];
}

// BW1W120 0047e060 BW1M119 011d5af0
void MakeMyCreatureReactToMusic(float mood);

void __stdcall CreatureMusicMoodCallback(MusicMoodPacket packet)
{
	GGame::g_game->SetPacket(PACKET_TYPE_MUSIC_MOOD,
	                         GGame::g_game->players[GGame::g_game->PlayerIndex].creature.Get()->GetIndexOffset(),
	                         packet);
}

void __stdcall CreatureMusicMoodUpdateCallback(MusicEmotion& emotion)
{
	Creature*                creature = GGame::g_game->players[GGame::g_game->PlayerIndex].creature.Get();
	CreatureEmotionsForMusic emotions;
	creature->CalculateCurrentEmotionsForMusic(emotions);
	float mood = emotions.Mood - creature->EmotionsForMusic.Mood;
	float fear = emotions.Fear - creature->EmotionsForMusic.Fear;
	CLAMP(mood, -1.0f, 1.0f);
	CLAMP(fear, -1.0f, 1.0f);
	emotion.Mood += mood;
	emotion.Fear += fear;
	creature->EmotionsForMusic.Fear = 0.0f;
	creature->EmotionsForMusic.Mood = 0.0f;
}

void Creature::UpdateMoodsBasedOnMusic(MusicMoodPacket& packet)
{
	if (packet.MusicID)
	{
		MakeMyCreatureReactToMusic(packet.Emotion.Mood);
		CreatureMusicFeedback::RecentFeedback = 0.0f;
	}
}

void Creature::CalculateCurrentEmotionsForMusic(CreatureEmotionsForMusic& emotions)
{
	emotions.Mood = CreatureMusicFeedback::RecentFeedback;
	emotions.Fear = mind->desires.GetDesire(CREATURE_DESIRE_FEAR);
}

#define CREATURE_HTML_ATTENTION_LEVELS 5

void Creature::GenerateHTML()
{
	unsigned long size = 200;
	HTMLParser*   parser = NEW(4291) HTMLParser();
	char          key[64];
	char          userPath[256];
	wchar_t       profileName[200];
	float         value;

	parser->AddKeyValue("name", WCHAR2CHAR(name));
	parser->AddKeyValue("health", LHSPrintf("%.2f", GetLife()));
	parser->AddKeyValue("alignment", LHSPrintf("%.2f", alignment->GetValue()));
	parser->AddKeyValue("age", LHSPrintf("%d", physical->GetAge()));
	parser->AddKeyValue("energy", LHSPrintf("%.2f", physical->GetEnergy()));
	parser->AddKeyValue("strength", LHSPrintf("%.2f", physical->GetStrength()));
	parser->AddKeyValue("fatness", LHSPrintf("%.2f", physical->GetFatness()));
	parser->AddKeyValue("exhaustion", LHSPrintf("%.2f", physical->GetExhaustion()));
	parser->AddKeyValue("dehydration", LHSPrintf("%.2f", physical->GetDehydration()));
	parser->AddKeyValue("itchiness", LHSPrintf("%.2f", physical->Itchiness));
	parser->AddKeyValue("amount-of-poo", LHSPrintf("%.2f", physical->GetAmountOfPoo()));
	parser->AddKeyValue("num-people-killed", LHSPrintf("%d", NumPeopleKilled));
	parser->AddKeyValue("num-animals-killed", LHSPrintf("%d", NumAnimalsKilled));
	parser->AddKeyValue("num-creatures-killed", LHSPrintf("%d", NumCreaturesKilled));
	parser->AddKeyValue("num-battles-fought", LHSPrintf("%d", NumBattlesFought));
	parser->AddKeyValue("num-battles-won", LHSPrintf("%d", NumBattlesWon));
	parser->AddKeyValue("num-poos", LHSPrintf("%d", NumPoos));
	parser->AddKeyValue("num-mushrooms", LHSPrintf("%d", NumMushroomsEaten));

	for (uint32_t shot = 0; shot < CREATURE_ROOM_NUM_SCREEN_SHOTS; shot++)
	{
		sprintf(key, "picture_dialog_%i", shot);
		parser->AddKeyValue(key, WCHAR2CHAR(CreatureRoomScreenShots::Names[shot]));
	}

	for (uint32_t desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		char desireKey[256];
		value = mind->desires.Levels[desire];
		sprintf(desireKey, "desire-%s", CreatureInitialDesireInfo::GetInfo()[desire].field_0x100);
		parser->AddKeyValue(desireKey, LHSPrintf("%.2f", value));
	}

	for (uint32_t type = 0; type < CREATURE_BELIEF_TYPE_LAST; type++)
	{
		parser->AddKeyValue(LHSPrintf("beliefs_%ld", type),
		                    LHSPrintf("%ld", mind->beliefs.GetNumBeliefsAboutType((CREATURE_BELIEF_TYPE)type)));
	}

	for (uint32_t slot = 0; slot < CREATURE_RECEIVE_SPELL_SLOTS; slot++)
	{
		if (ReceiveSpell->data[slot].State != 0)
		{
			parser->AddKeyValue(LHSPrintf("spell_received_%ld", slot + HELP_TEXT_CREATURE_RECEIVED_SPELL_01), "1");
			break;
		}
	}

	value = mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe;
	parser->AddKeyValue("how_nice_player_has_been",
	                    LHSPrintf("%ld", GAlignment::GetDiscreteAlignmentValue(value) + HELP_TEXT_ALIGNMENT_01));

	float    attention = physical->NumGameTicksAlive != 0
	                         ? (float)mind->AttitudeToPlayer.TotalNumGameTicksPlayerHasBeenWatchingMe /
	                               (float)physical->NumGameTicksAlive
	                         : 0.0f;
	uint32_t attentionLevel = (uint32_t)(attention * CREATURE_HTML_ATTENTION_LEVELS);
	if (attentionLevel > CREATURE_HTML_ATTENTION_LEVELS - 1)
	{
		attentionLevel = CREATURE_HTML_ATTENTION_LEVELS - 1;
	}
	parser->AddKeyValue("how_much_attention_player_has_given_me",
	                    LHSPrintf("%ld", attentionLevel + HELP_TEXT_HOW_MUCH_01));

	GGame::g_game->path_creator.GetCurrentUserPath(userPath);
	parser->ParseTemplateFileTo(".\\scripts\\creature_html.tmpl",
	                            LHSPrintf("%s\\html\\%s.html", userPath, WCHAR2CHAR(name)));

	memset(profileName, 0, 100);
	LHNetGetCurrentProfileWString((char*)LH_NET_PROFILE_LOGIN_NAME, profileName, &size);
	for (int i = 0; profileName[i] != 0; i += 2)
	{
		if ((profileName[i] < 'a' || profileName[i] > 'z') && (profileName[i] < 'A' || profileName[i] > 'Z') &&
		    (profileName[i] < '0' || profileName[i] > '9') && profileName[i] != '-')
		{
			profileName[i] = '_';
		}
	}
	parser->WriteDataFile(WCHAR2CHAR(profileName), LHSPrintf("%s\\creature.lhp", userPath));
	delete parser;
}

void Creature::ConsiderTakingSnapshot()
{
	float seconds = (float)((GGame::g_game->data.GameTurn - GameTurnOfLastSnapshot) /
	                        (1000 / GGameInfo::Info.MillisecondsPerGameTurn));
	if (GetInterfaceStatusLookingAtCreature() && seconds > 10.0f && physical->Creature3d->field_0x5268)
	{
		CREATURE_ACTION action = mind->agenda.CurrentPlan.creature_action;
		for (LHLinkedNode<SnapshotData*>* node = Snapshots.GetStart(); node; node = node->next.Get())
		{
			if (node->payload->Action == action)
			{
				return;
			}
		}
		float actionPriority = CreatureActionInfo::GetInfo()[action].SnapshotPriority;
		CLAMP(actionPriority, 0.0f, 1.0f);
		float agendaPriority = mind->agenda.CurrentPlan.AgendaPriority;
		CLAMP(agendaPriority, 0.0f, 1.0f);
		float ageScale;
		if (physical->Age < 30)
		{
			ageScale = 1.0f;
		}
		else if (physical->Age < 100)
		{
			ageScale = 0.9f;
		}
		else
		{
			ageScale = 0.8f;
		}
		TakeSnapshotIfPriorityIsSufficient(ageScale * actionPriority * agendaPriority, action);
		GameTurnOfLastSnapshot = GGame::g_game->data.GameTurn;
	}
}

void Creature::TakeSnapshotIfPriorityIsSufficient(float priority, CREATURE_ACTION action)
{
	if (Snapshots.count == MaxSnapshots)
	{
		int           worst = GetWorstSnapshotIndex();
		SnapshotData* snapshot = Snapshots.GetNodeAtPosition(worst)->payload;
		if (!(snapshot->Priority < priority))
		{
			return;
		}
		RemoveSnapshot(snapshot);
	}
	TakeSnapshot(priority, action);
}

static wchar_t SnapshotName[0x200];

void Creature::TakeSnapshot(float priority, CREATURE_ACTION action)
{
	uint32_t index = Snapshots.count;
	swprintf(SnapshotName, L" %s",
	         HelpTextDataBase::HelpTextDatabase.GetHelpText(mind->agenda.CurrentPlan.CreatureDesire +
	                                                        HELP_TEXT_CREATURE_CURRENT_DESIRE_01));
	CreatureRoom::TakeScreenShot(index, SnapshotName);
	SnapshotData* snapshot = NEW(4459) SnapshotData(priority, physical->GetAge(), action);
	Snapshots.AddToEnd(snapshot);
}

void Creature::RemoveSnapshot(SnapshotData* snapshot)
{
	Snapshots.Remove(snapshot);
	delete snapshot;
}

int Creature::GetWorstSnapshotIndex()
{
	float worstPriority = 1.0f;
	int   worstIndex = MaxSnapshots;
	int   index = 0;
	for (LHLinkedNode<SnapshotData*>* node = Snapshots.GetStart(); node; node = node->next.Get())
	{
		if (node->payload->Priority < worstPriority)
		{
			worstPriority = node->payload->Priority;
			worstIndex = index;
		}
		index++;
	}
	return worstIndex;
}

char* Creature::ThingHeLikesMostText(CREATURE_DESIRES desire)
{
	DecisionTreeAgenda* agenda;
	if (CreatureInitialDesireInfo::GetInfo()[desire].Social)
	{
		agenda = mind->decision_tree_collection.agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[desire];
	}
	else
	{
		agenda = mind->decision_tree_collection.agendas[DECISION_TREE_TYPE_ACTION_OBJECT].contents[desire];
	}
	return agenda->trees[0].FindBestNodeInTree()->CalculateText();
}

uint32_t Creature::ThingHeLikesMostMesh(CREATURE_DESIRES desire)
{
	if (desire == CREATURE_DESIRE_HUNGER)
	{
		uint32_t mostEaten = 0;
		uint32_t mostEatenType;
		for (uint32_t type = 0; type < OBJECT_TYPE_LAST; type++)
		{
			if (mind->learning.ObjectEatenCounts[type] > mostEaten)
			{
				mostEaten = mind->learning.ObjectEatenCounts[type];
				mostEatenType = type;
			}
		}
		if (mostEaten > 0)
		{
			return GetMeshForObjectType((OBJECT_TYPE)mostEatenType);
		}
		return 0;
	}
	DecisionTreeAgenda* agenda;
	if (CreatureInitialDesireInfo::GetInfo()[desire].Social)
	{
		agenda = mind->decision_tree_collection.agendas[DECISION_TREE_TYPE_ACTIVITY_OBJECT].contents[desire];
	}
	else
	{
		agenda = mind->decision_tree_collection.agendas[DECISION_TREE_TYPE_ACTION_OBJECT].contents[desire];
	}
	return agenda->trees[0].FindBestNodeInTree()->CalculateMesh();
}

void Creature::SwapMinds(Creature* new_creature, Creature* my_creature)
{
	if (new_creature->GetPlayer())
	{
		GInterfaceStatus* status = new_creature->GetInterfaceStatusLeashOn();
		if (status)
		{
			status->LeashStatus->SetOn(new_creature, false);
		}
	}
	if (my_creature->GetPlayer())
	{
		GInterfaceStatus* status = my_creature->GetInterfaceStatusLeashOn();
		if (status)
		{
			status->LeashStatus->SetOn(my_creature, false);
		}
	}
	wchar_t newName[0x100];
	wchar_t myName[0x100];
	wcscpy(newName, new_creature->name);
	wcscpy(myName, my_creature->name);
	float newSize = new_creature->physical->Size;
	float mySize = my_creature->physical->Size;
	float newAlignment = new_creature->alignment->Value;
	float myAlignment = my_creature->alignment->Value;
	float newHeight = new_creature->ReceiveSpell->GetPhysicalHeightToMentalSave();
	float myHeight = my_creature->ReceiveSpell->GetPhysicalHeightToMentalSave();
	float newMentalAlignment = new_creature->ReceiveSpell->GetAlignmentToMentalSave();
	float myMentalAlignment = my_creature->ReceiveSpell->GetAlignmentToMentalSave();
	new_creature->mind->SaveMind("temp1");
	my_creature->mind->SaveMind("temp2");
	Archive myArchive("temp2", LH_FILE_MODE_READ_ONLY);
	if (myArchive.IsOpen())
	{
		new_creature->mind->LoadMindIntoPreexistingCreature(myArchive);
	}
	Archive newArchive("temp1", LH_FILE_MODE_READ_ONLY);
	if (newArchive.IsOpen())
	{
		my_creature->mind->LoadMindIntoPreexistingCreature(newArchive);
	}
	wcscpy(new_creature->name, newName);
	wcscpy(my_creature->name, myName);
	new_creature->physical->Size = newSize;
	my_creature->physical->Size = mySize;
	new_creature->alignment->CrudeSet(newAlignment);
	my_creature->alignment->CrudeSet(myAlignment);
	new_creature->mind->agenda.SwapMindTargetHeight = myHeight;
	new_creature->mind->agenda.SwapMindTargetAlignment = myMentalAlignment;
	my_creature->mind->agenda.SwapMindTargetHeight = newHeight;
	my_creature->mind->agenda.SwapMindTargetAlignment = newMentalAlignment;
	new_creature->Update3DCreatureFromAttributes();
	new_creature->physical->Creature3d->UpdateMorphing();
	my_creature->Update3DCreatureFromAttributes();
	my_creature->physical->Creature3d->UpdateMorphing();
	CreaturePlan newPlan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_SWAP_MIND_WITH_OTHER_CREATURE, NULL,
	                     new_creature->mind->AddBeliefAboutObject(new_creature, my_creature), NULL, 1.0f);
	new_creature->ForceActivityAndForceAction(newPlan, true, true);
	new_creature->mind->agenda.CommandState.Commanded = true;
	CreaturePlan myPlan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_SWAP_MIND_WITH_OTHER_CREATURE, NULL,
	                    my_creature->mind->AddBeliefAboutObject(my_creature, new_creature), NULL, 1.0f);
	my_creature->ForceActivityAndForceAction(myPlan, true, true);
	my_creature->mind->agenda.CommandState.Commanded = true;
	GPlayer* newPlayer = new_creature->GetPlayer();
	GPlayer* myPlayer = my_creature->GetPlayer();
	if (newPlayer)
	{
		newPlayer->SetCreature(my_creature);
	}
	if (myPlayer)
	{
		myPlayer->SetCreature(new_creature);
	}
	new_creature->owner = myPlayer;
	my_creature->owner = newPlayer;
	for (uint32_t type = MAGIC_TYPE_NONE + 1; type < MAGIC_TYPE_LAST; type++)
	{
		float newTimes = new_creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(type);
		float myTimes = my_creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(type);
		float scale = 1.0f;
		if (newTimes > 0.0f)
		{
			scale = myTimes / newTimes;
		}
		my_creature->mind->learning.NumTimesMagicActionSeen[type] =
			(uint32_t)(my_creature->mind->learning.NumTimesMagicActionSeen[type] * scale);
	}
	my_creature->ReactionsEnabled = true;
	new_creature->ReactionsEnabled = false;
}

CREATURE_ACTION Creature::GetCreatureActionFromMagicType(MAGIC_TYPE type)
{
	return CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[type].MimickingAction;
}

long Creature::GetNumSpecialMoves()
{
	return 1;
}

uint32_t Creature::GetSpecialMoveGesture(long move)
{
	return GSpellSystemInfo::GetInfo()->SpecialMoveGesture;
}

float Creature::GetRunningSpeedInMetres()
{
	return physical->RunningSpeedInMetres;
}

float Creature::GetDefaultSpeedInMetres()
{
	return physical->DefaultSpeedInMetres;
}

void Creature::SetAnimationTimeModify(bool value)
{
	LH3DCreature* creature3d = GetCreature3D();
	if (creature3d)
	{
		creature3d->IsAnimationTimeModified = value;
	}
}

bool32_t Creature::IsDancing()
{
	if (mind->agenda.CurrentPlan.creature_action == CREATURE_PRACTICE_DANCE)
	{
		return true;
	}
	return Living::IsDancing();
}

bool32_t Creature::IsOnHomeTeam()
{
	return !(GetPlayer()->GetPlayerNumber() & 1);
}

void Creature::CopyDifferentCreatureInfoToCreatureInfo()
{
	for (uint32_t type = 0; type < CREATURE_TYPE_LAST; type++)
	{
		CreatureInfo::GetInfo()[type].field_0x1f8[1] = DifferentCreatureInfo::GetInfo()[type].field_0x10;
		CreatureInfo::GetInfo()[type].field_0x214[0] = DifferentCreatureInfo::GetInfo()[type].field_0x14;
		CreatureInfo::GetInfo()[type].field_0x220[4] = DifferentCreatureInfo::GetInfo()[type].field_0x18;
		CreatureInfo::GetInfo()[type].field_0x1f8[2] = DifferentCreatureInfo::GetInfo()[type].field_0x1c;
		CreatureInfo::GetInfo()[type].field_0x220[5] = DifferentCreatureInfo::GetInfo()[type].field_0x20;
		CreatureInfo::GetInfo()[type].field_0x220[6] = DifferentCreatureInfo::GetInfo()[type].field_0x24;
		CreatureInfo::GetInfo()[type].Strength = DifferentCreatureInfo::GetInfo()[type].Strength;
		CreatureInfo::GetInfo()[type].field_0x220[2] = DifferentCreatureInfo::GetInfo()[type].field_0x2c;
		CreatureInfo::GetInfo()[type].field_0x220[3] = DifferentCreatureInfo::GetInfo()[type].field_0x30;
		CreatureInfo::GetInfo()[type].field_0x220[12] = DifferentCreatureInfo::GetInfo()[type].field_0x34;
		CreatureInfo::GetInfo()[type].WalkSpeed = DifferentCreatureInfo::GetInfo()[type].WalkSpeed;
		CreatureInfo::GetInfo()[type].RunSpeed = DifferentCreatureInfo::GetInfo()[type].RunSpeed;
		CreatureInfo::GetInfo()[type].field_0x25c[0] = DifferentCreatureInfo::GetInfo()[type].field_0x40;
		CreatureInfo::GetInfo()[type].field_0x220[0] = DifferentCreatureInfo::GetInfo()[type].field_0x44;
		CreatureInfo::GetInfo()[type].field_0x220[8] = DifferentCreatureInfo::GetInfo()[type].field_0x48;
		CreatureInfo::GetInfo()[type].DefenceMultiplier[EFFECT_TYPE_BURN] =
			DifferentCreatureInfo::GetInfo()[type].BurnDefenceMultiplier;
		CreatureInfo::GetInfo()[type].DefenceMultiplier[EFFECT_TYPE_CRUSH] =
			DifferentCreatureInfo::GetInfo()[type].CrushDefenceMultiplier;
		CreatureInfo::GetInfo()[type].DefenceMultiplier[EFFECT_TYPE_HIT] =
			DifferentCreatureInfo::GetInfo()[type].HitDefenceMultiplier;
		CreatureInfo::GetInfo()[type].field_0x220[7] = DifferentCreatureInfo::GetInfo()[type].field_0x58;
		CreatureInfo::GetInfo()[type].field_0x210 = DifferentCreatureInfo::GetInfo()[type].field_0x5c;
		CreatureInfo::GetInfo()[type].field_0x374[3] = DifferentCreatureInfo::GetInfo()[type].field_0x60;
		CreatureInfo::GetInfo()[type].field_0x374[2] = DifferentCreatureInfo::GetInfo()[type].field_0x64;
		CreatureInfo::GetInfo()[type].AlignmentChangeScale =
			DifferentCreatureInfo::GetInfo()[type].AlignmentChangeScale;
	}
}

void Creature::PlaySoundEffectToIndicateMood() {}

void Creature::BodgeForceCatch(GameThingWithPos* object)
{
	GetCreature3D()->EndAnyAnimsRapidly();
	GetCreature3D()->StopMoving();
	mind->agenda.CurrentPlan.Force(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_WAVE_AT_PLAYER, NULL,
	                               mind->GetBeliefAboutObject(this), NULL, 1.0f);
	mind->agenda.CommandState.Commanded = true;
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	CreatureBelief* belief = mind->AddBeliefAboutObject(this, object);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CATCH, NEW(4857) SubArgumentObject(belief),
	                                          NULL, &Creature::SetFaceForActionSmile);
}

SCRIPT_OBJECT_TYPE Creature::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_CREATURE;
}

float Creature::GetCurrentNiceness()
{
	float compassion = 0.0f;
	float anger = 0.0f;
	if (!mind->desires.IsSuppressed(CREATURE_DESIRE_COMPASSION))
	{
		compassion = mind->desires.GetDesire(CREATURE_DESIRE_COMPASSION);
	}
	if (!mind->desires.IsSuppressed(CREATURE_DESIRE_ANGER))
	{
		anger = mind->desires.GetDesire(CREATURE_DESIRE_ANGER);
	}
	float niceness = compassion - anger;
	CLAMP(niceness, 0.0f, 1.0f);
	return niceness;
}

float Creature::GetCurrentNastiness()
{
	return 1.0f - GetCurrentNiceness();
}

float Creature::HowUsefulForNiceActivity()
{
	return mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_COMPASSION);
}

float Creature::HowUsefulForNastyActivity()
{
	return mind->HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRE_ANGER);
}

bool32_t Creature::IsAvailableToCatch(Object* object)
{
	if (Flags & GAME_THING_WITH_POS_FLAG_INTERACTING || mind->agenda.CurrentPlan.creature_action == CREATURE_FIGHT ||
	    IsFighting())
	{
		return false;
	}
#ifdef VERSION_BW1WCI
	if (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
#else
	if (IsControlledByScript())
#endif
	{
		return false;
	}
	if ((IsAvailableForReaction(REACTION_FLEE_FROM_OBJECT) ||
	     mind->desires.CheatDominantDesire != INVALID_CREATURE_DESIRE) &&
	    mind->agenda.CurrentPlan.creature_action != CREATURE_CATCH)
	{
		return true;
	}
	return false;
}

bool32_t Creature::HasAChanceOfCatching(GameThingWithPos* object, PhysicsObject* physics_object)
{
	if (physics_object != NULL && physics_object->CollidedWith == this)
	{
		return false;
	}
	if (physics_object != NULL && physics_object->status != NULL)
	{
		GPlayer* player = physics_object->status->GetPlayer();
		if (player != NULL && player != GetPlayer() && !player->IsAllied(GetPlayer()) && GAME_RAND(4942, 100) > 2)
		{
			return false;
		}
	}
	LH3DCreature* creature3D = GetCreature3D();
	LHPoint       velocity = physics_object->Physics.Velocity;
	velocity.y = 0.0f;
	float speedSq = velocity.GetNorm();
	if (speedSq < 1.0f)
	{
		return false;
	}
	float   speed = (float)sqrt(speedSq);
	LHPoint direction = velocity * (-1.0f / speed);
	LHPoint offset = physics_object->Physics.Matrix.GetPos() - creature3D->position;
	offset.y = 0.0f;
	float time = (direction * offset) / speed;
	if (time > 5.0f)
	{
		return false;
	}
	int     catchFrames = creature3D->CatchTime;
	float   catchSpeed = 1.6f - 0.85f * (creature3D->Size1 * 0.5f);
	LHPoint arrival = physics_object->Physics.Matrix.GetPos() + velocity * time;
	float   dx = arrival.x - creature3D->position.x;
	float   dz = arrival.z - creature3D->position.z;
	CAnim*  anim = creature3D->GetAnim(C_CATCH_STEP_RIGHT, 0);
	time -= catchFrames / (catchSpeed * 1000.0f);
	if (time < 0.05f)
	{
		return false;
	}
	float animTime = anim->Duration / (catchSpeed * 1000.0f);
	float distance = SquareRoot(dx * dx + dz * dz);
	float reach = -anim->Movement.x * creature3D->Size2;
	reach /= animTime;
	return distance < reach * (animTime * 0.5f + time);
}

void Creature::CheckAllCreaturesForCatching(Object* object, PhysicsObject* physics_object)
{
	for (LHLinkedNode<Creature*>* node = CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature* creature = node->payload;
		if (creature->IsAvailableToCatch(object) && !(creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING))
		{
			creature->Get2DRadius();
			object->Get2DRadius();
			float weight = object->GetWeight();
			if (creature->MaximumPickUpWeight() > weight && object->CanBePickedUp() &&
			    creature->HasAChanceOfCatching(object, physics_object))
			{
				creature->GetCreature3D()->EndAnyAnimsRapidly();
				creature->GetCreature3D()->StopMoving();
				CreaturePlan plan(CREATURE_DESIRE_TO_PLAY, CREATURE_CATCH,
				                  creature->mind->GetBeliefAboutObject(creature),
				                  creature->mind->AddBeliefAboutObject(creature, object), NULL, 1.0f);
				creature->ForceActivityAndForceAction(plan, true, true);
			}
		}
	}
}

bool32_t Creature::IsConfinedToArea()
{
	if (ConfinementRadius > 0.0f && (GetInterfaceStatusLeashOn() == NULL || IsLeashWorking() != NULL))
	{
		return true;
	}
	return false;
}

bool32_t Creature::IsPosOutsideConfinedArea(const MapCoords& pos)
{
	if (IsConfinedToArea() && GUtils::GetDistanceInMetres(pos, ConfinementCentre) > ConfinementRadius)
	{
		return true;
	}
	return false;
}

float Creature::GetWeight()
{
	return GetCreature3D()->GetMass();
}

bool32_t Creature::IsDead()
{
	return mind->agenda.CurrentPlan.creature_action == CREATURE_DEAD ||
	       mind->agenda.CurrentPlan.creature_action == CREATURE_DEAD_FOREVER;
}

void Creature::CreateLightbulb(float progress)
{
	if (GGame::g_game->data.GameTurn - GameTurn > CREATURE_LIGHTBULB_REPEAT_TURNS)
	{
		GameTurn = GGame::g_game->data.GameTurn;
		float   size = GetHeight() / CREATURE_LIGHTBULB_SIZE_DIVISOR;
		LHPoint pos = *GetCreature3D()->GetHeadPos();
		pos.y += CREATURE_LIGHTBULB_HEIGHT_ABOVE_HEAD;
		wchar_t text[EUREKA_TEXT_LENGTH];
		swprintf(text, L"%.0f%%", progress * 100.0f);
		NEW(5067) Eureka(&pos, text, size, 1.0f, NULL);
	}
}

void Creature::RespondToBeingStuck()
{
	if (!Moving)
	{
		NumTurnsStuck++;
	}
	if (NumTurnsStuck > (uint32_t)(GGameInfo::Info.NumGameTicksPerSecond() * CREATURE_STUCK_SECONDS))
	{
		NumTurnsStuck = 0;
		mind->agenda.MimicState.Mimicking = false;
		mind->agenda.CommandState.Commanded = false;
		mind->desires.SuppressDesire(CREATURE_DESIRE_TO_FOLLOW_PLAYER_DESIRE, CREATURE_STUCK_SUPPRESS_SECONDS);
	}
}

void Creature::RespondToPhysicalProblems()
{
#ifdef VERSION_BW1WCI
	if (DevelopmentPhase < DEVELOPMENT_PHASE_MEET_GUIDE || (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
#else
	if (DevelopmentPhase < DEVELOPMENT_PHASE_MEET_GUIDE || IsControlledByScript())
#endif
	{
		return;
	}
	if (GetLife() <= 0.0f)
	{
		SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_PHYSICAL_PROBLEM, CREATURE_PHYSICAL_PROBLEM_NO_LIFE, NULL, NULL,
		                        0);
		Faint();
	}
	else if (physical->Energy <= 0.0f)
	{
		SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_PHYSICAL_PROBLEM, CREATURE_PHYSICAL_PROBLEM_NO_ENERGY, NULL,
		                        NULL, 0);
		Faint();
	}
	else if (physical->Exhaustion >= 1.0f)
	{
		SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_PHYSICAL_PROBLEM, CREATURE_PHYSICAL_PROBLEM_EXHAUSTED, NULL,
		                        NULL, 0);
		Faint();
	}
}

void Creature::RespondToEmergencies()
{
#ifdef VERSION_BW1WCI
	if (RespondingToEmergency || (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) ||
	    mind->agenda.CommandState.Commanded || IsFighting())
#else
	if (RespondingToEmergency || IsControlledByScript() || mind->agenda.CommandState.Commanded || IsFighting())
#endif
	{
		return;
	}
	if (IsOnFire())
	{
		GetCreature3D()->SetRequiredSpeed(GetInfo()->RunSpeed);
		if (((float)mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_WATER] /
		                 NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_WATER) >
		             1.0f
		         ? 1.0f
		         : (float)mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_WATER] /
		               NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_WATER)) >
		        CREATURE_MIN_WATER_SPELL_PROGRESS &&
		    HasEnoughEnergyToCastSpell(MAGIC_TYPE_WATER))
		{
			ForceActivityAndForceAction(CREATURE_DESIRE_TO_RESTORE_HEALTH, NULL, CREATURE_PUT_OUT_FIRE_ON_MYSELF,
			                            mind->GetBeliefAboutObject(this), NULL, true, true);
		}
		else
		{
			GInterfaceStatus* status = GetInterfaceStatusLeashOn();
			if (status != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
			{
				status->LeashStatus->SetOn(this, false);
			}
			ForceActivityAndForceAction(CREATURE_DESIRE_TO_RESTORE_HEALTH, NULL, CREATURE_DRINK_FROM_THE_SEA,
			                            mind->GetBeliefAboutObject(this), NULL, true, true);
		}
		CreatureAgenda& agenda = mind->agenda;
		if (agenda.CurrentPlan.IsValid() && agenda.SubActionAgenda.IsValid())
		{
			mind->agenda.CommandState.Commanded = true;
			RespondingToEmergency = true;
			return;
		}
	}
	else if (GetLife() < CREATURE_LOW_LIFE)
	{
		mind->SetCheatDominantDesire(CREATURE_DESIRE_TO_RESTORE_HEALTH, CREATURE_LOW_LIFE_DESIRE_SECONDS, true);
		RespondingToEmergency = true;
		return;
	}
	float progress = (float)mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_WATER] /
	                             NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_WATER) >
	                         1.0f
	                     ? 1.0f
	                     : (float)mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_WATER] /
	                           NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_WATER);
	Town* town = Pos.GetNearestTown(CREATURE_TOWN_ON_FIRE_RANGE);
	if (town != NULL && mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, MAGIC_TYPE_WATER) &&
	    progress > CREATURE_MIN_WATER_SPELL_PROGRESS && HasEnoughEnergyToCastSpell(MAGIC_TYPE_WATER) &&
	    mind->desires.IsActivated(CREATURE_DESIRE_COMPASSION) &&
	    !mind->desires.IsSuppressed(CREATURE_DESIRE_COMPASSION) &&
	    mind->desires.GetDesire(CREATURE_DESIRE_COMPASSION) > mind->desires.GetDesire(CREATURE_DESIRE_ANGER))
	{
		Abode* abode = town->GetMostImportantAbodeOnFire();
		if (abode != NULL)
		{
			CreatureBelief* belief = mind->AddBeliefAboutObject(this, abode);
			CreatureBelief* activityObject = AddBeliefAboutAssociatedObject(belief);
			ForceActivityAndForceAction(CREATURE_DESIRE_COMPASSION, activityObject,
			                            CREATURE_PUT_OUT_FIRE_WITH_MAGIC_WATER, belief, NULL, true, true);
			mind->agenda.CommandState.Commanded = true;
			RespondingToEmergency = true;
		}
	}
}

void Creature::SetControlledByScript(int controlled)
{
	GameThingWithPos::SetControlledByScript(controlled);
}

void Creature::SetAutoFightStatus(unsigned long status)
{
	GetCreature3D()->AutoFightStatus = (FIGHT_CONTROL_AI)status;
}

FIGHT_CONTROL_AI Creature::GetAutoFightStatus()
{
	return GetCreature3D()->AutoFightStatus;
}

void Creature::QueueAttackOrBlock(unsigned long move)
{
	GetCreature3D()->AddToFightQueue(move, false);
}

void Creature::QueueSpell(unsigned long spell)
{
	GetCreature3D()->AddToFightQueue(spell | LH3D_CREATURE_FIGHT_QUEUE_SPELL, false);
}

void Creature::QueueSideStep(unsigned long step)
{
	GetCreature3D()->AddToFightQueue(step | LH3D_CREATURE_FIGHT_QUEUE_SIDE_STEP, false);
}

uint32_t Creature::GetCurrentFightAction()
{
	switch (GetCreature3D()->CurrentAnim)
	{
	case C_FIGHT_START:
	case C_FIGHT_STANCE:
	case C_FIGHT_FINISH:
		return CTR_FIGHT_NOTHING;
	case C_RECOIL_HI:
	case C_RECOIL_HI_R:
	case C_RECOIL_HI_L:
	case C_RECOIL_HI_T:
	case C_RECOIL_HI_B:
		return CTR_FIGHT_RECOIL_HIGH;
	case C_RECOIL_MI:
	case C_RECOIL_MI_R:
	case C_RECOIL_MI_L:
	case C_RECOIL_MI_T:
	case C_RECOIL_MI_B:
		return CTR_FIGHT_RECOIL_MIDDLE;
	case C_RECOIL_LO:
	case C_RECOIL_LO_R:
	case C_RECOIL_LO_L:
	case C_RECOIL_LO_T:
	case C_RECOIL_LO_B:
		return CTR_FIGHT_RECOIL_LOW;
	case C_FIGHT_ATTACK_HIGH:
	case C_FIGHT_ATTACK_EYE:
	case C_FIGHT_ATTACK_BELLY:
	case C_FIGHT_ATTACK_PELVIS:
	case C_FIGHT_ATTACK_KNEE:
	case C_FIGHT_ATTACK_HIGH2:
	case C_FIGHT_ATTACK_EYE2:
	case C_FIGHT_ATTACK_BELLY2:
	case C_FIGHT_ATTACK_PELVIS2:
	case C_FIGHT_ATTACK_KNEE2:
		return CTR_FIGHT_HITTING;
	case C_FIGHT_ATTACK_SPECIAL:
	case C_FIGHT_ATTACK_SPECIAL2:
		return CTR_FIGHT_SPECIAL_MOVE;
	case C_FIGHT_STEP_FORWARD:
	case C_FIGHT_STEP_BACK:
	case C_FIGHT_STEP_RIGHT:
	case C_FIGHT_STEP_LEFT:
		return CTR_FIGHT_STEPPING;
	case C_FIGHT_START_BLOCK:
	case C_FIGHT_BLOCK:
	case C_FIGHT_END_BLOCK:
		return CTR_FIGHT_BLOCKING;
	case C_FIGHT_EXTRA_START_CAST:
	case C_FIGHT_EXTRA_CAST:
	case C_FIGHT_EXTRA_END_CAST:
		return CTR_FIGHT_CASTING;
	case C_FIGHT_EXTRA_FAINT:
		return CTR_FIGHT_FAINTING;
	}
	return CTR_FIGHT_UNKNOWN_ACTION;
}

uint32_t Creature::CountNumberOfHitsInQueue()
{
	LH3DCreature* creature3d = GetCreature3D();
	uint32_t      hits = 0;
	for (int i = 0; i < creature3d->FightQueueSize; i++)
	{
		if (creature3d->FightQueue[i] == CTR_HIT_HIGH || creature3d->FightQueue[i] == CTR_HIT_MIDDLE ||
		    creature3d->FightQueue[i] == CTR_HIT_LOW)
		{
			hits++;
		}
	}
	return hits;
}

bool32_t Creature::CreatureMustAvoid(Creature* creature)
{
	if (creature == NULL || creature == this)
	{
		return false;
	}
	switch (GetCreature3D()->RpFollow->FollowState)
	{
	case RPFOLLOW_STATE_UNPLACED:
	case RPFOLLOW_STATE_STOPPED:
	case RPFOLLOW_STATE_PLANNING:
		return true;
	case RPFOLLOW_STATE_MOVING:
	case RPFOLLOW_STATE_REPLANNING:
		return false;
	}
	return false;
}

void Creature::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                              void(__cdecl* add_function)(int object_id, Point2D position, float radius, int update))
{
	float         radius = (Get2DRadius() + holder->ObjectMargin) * 1.15f;
	LH3DCreature* creature3d = GetCreature3D();
	Point2D       pos(creature3d->position.x, creature3d->position.z);
	if (add_function != NULL)
	{
		add_function((int)this, pos, radius, update);
	}
	else
	{
		holder->AddObject((int)this, pos, radius, update);
	}
}

float Creature::GetSize()
{
	return physical->Creature3d->GetSize();
}

float Creature::GetImpressiveSize()
{
	float size = physical->Creature3d->GetSize() + GetInfo()->ImpressiveSizeBonus;
	CLAMP(size, CREATURE_MIN_IMPRESSIVE_SIZE, CREATURE_MAX_IMPRESSIVE_SIZE);
	return size * GetInfo()->ImpressiveSizeScale;
}

float Creature::GetDamageDonebyFlyingObject(float damage)
{
	float amount = damage / (GetCreature3D()->GetMass() * OBJECT_GRAVITY);
	if (CREATURE_MAX_FLYING_OBJECT_DAMAGE < amount)
	{
		amount = CREATURE_MAX_FLYING_OBJECT_DAMAGE;
	}
	return amount / CREATURE_MAX_FLYING_OBJECT_DAMAGE;
}

GInterfaceStatus* Creature::GetNearestCameraInterfaceStatus()
{
	if (GetPlayer() == NULL)
	{
		if (GGame::g_game->IsMultiplayerGame())
		{
			return NULL;
		}
		return GGame::g_game->MyInterfaceStatus();
	}
	GInterfaceStatus* nearest = NULL;
	float             nearestDistance = 0.0f;
	LHPoint           pos;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
	     status = GetPlayer()->GetNextInterfaceStatus(status))
	{
		float distance = pos.GetDistance(status->CameraPos);
		if (nearest == NULL || distance < nearestDistance)
		{
			nearestDistance = distance;
			nearest = status;
		}
	}
	return nearest;
}

GInterfaceStatus* Creature::GetNearestHandInterfaceStatus()
{
	if (GetPlayer() == NULL)
	{
		return NULL;
	}
	GInterfaceStatus* nearest = NULL;
	float             nearestDistance = 0.0f;
	LHPoint           pos;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	for (GInterfaceStatus* status = GetPlayer()->GetNextInterfaceStatus(NULL); status != NULL;
	     status = GetPlayer()->GetNextInterfaceStatus(status))
	{
		float distance = pos.GetDistance(status->ReportedHandPos);
		if (nearest == NULL || distance < nearestDistance)
		{
			nearestDistance = distance;
			nearest = status;
		}
	}
	return nearest;
}

void Creature::SetSpeedInMetres(float speed_in_metres, bool32_t scale_speed)
{
	physical->Creature3d->SetRequiredSpeed(speed_in_metres);
}

void Creature::OnClearMap()
{
	CreatureHelpInvalidation::LastTurn = 0;
	CreatureForcedAction::InProgress = false;
	CreatureLeashSettings::LeashOverridesScript = false;
	for (uint32_t i = 0; i < NUM_CREATURE_IMPRESSIVE_SPELLS; i++)
	{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		CreatureImpressiveSpells::DoneWhen[i] = 0;
#else
		ImpressiveSpellDoneWhen[i] = 0;
#endif
	}
}

bool32_t Creature::FindNearbyWaterPoint(MapCoords* coords, float radius)
{
	float    nearestDistance = MaxFloat;
	bool32_t found = false;
	for (WayPoint* waypoint = GGame::g_game->GameLists.waypoints.Get(); waypoint != NULL;
	     waypoint = waypoint->next.Get())
	{
		float distance = GUtils::GetDistanceInMetres(waypoint->Pos, Pos);
		if (distance < radius && distance < nearestDistance)
		{
			nearestDistance = distance;
			found = true;
			*coords = waypoint->Pos;
		}
	}
	return found;
}

HELP_TEXT Creature::GetQueryFirstEnumText()
{
	HELP_TEXT text = Object::GetQueryFirstEnumText();
	if (GetInfo()->CreatureType != CREATURE_TYPE_CHIMP && GetInfo()->CreatureType != CREATURE_TYPE_OGRE)
	{
		if (GetPlayer() != GGame::g_game->MyPlayer())
		{
			text = (HELP_TEXT)(text + 1);
		}
	}
	return text;
}

HELP_TEXT Creature::GetQueryLastEnumText()
{
	return GetQueryFirstEnumText();
}

void Creature::ReleaseTattooData()
{
	if (TattooData != NULL)
	{
		LH3DMem::Free(TattooData);
	}
	TattooData = NULL;
}

void Creature::UpdateTattooDataFromLocalMachine()
{
	ReleaseTattooData();
	TattooData = CompressTattoo::Create(this);
}

void Creature::TrappedInEnclosedSpace(unsigned long num_objects, Object** objects)
{
	if (Trapped || num_objects <= 0)
	{
		return;
	}
	unsigned long index;
	if (GAME_RAND(5552, 4) == 0)
	{
		index = GAME_RAND(5554, num_objects);
	}
	else
	{
		index = GAME_RAND(5558, min(num_objects, 3));
	}
	Object*         object = objects[index];
	CREATURE_ACTION action = FindSuitableActionToRemoveObstacle(object);
	CreatureBelief* belief = mind->AddBeliefAboutObject(this, object);
	CreaturePlan    plan(CREATURE_DESIRE_TO_OBEY_PLAYER, action, NULL, belief, NULL, 1.0f);
	if (plan.IsValid())
	{
		ForceActivityAndForceAction(plan, true, true);
		mind->agenda.CommandState.Commanded = true;
		mind->agenda.ForcedActionFunction = &Creature::GoToLastSpecifiedPos;
	}
	Trapped = true;
}

CREATURE_ACTION Creature::FindSuitableActionToRemoveObstacle(Object* object)
{
	if (object->IsCitadelHeart() || object->IsStoragePit(NULL) || object->IsTownCentre())
	{
		return NO_ACTION_SPECIFIED;
	}
	if (object->CanBePickedUpByCreature(this))
	{
		return CREATURE_THROW_AROUND;
	}
	if (object->CanBeKickedByCreature(this))
	{
		return CREATURE_KICK;
	}
	for (unsigned long i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, i))
		{
			CREATURE_ACTION action = CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[i].MimickingAction;
			if (action != NO_ACTION_SPECIFIED &&
			    CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[i].field_0x50 == 2)
			{
				return action;
			}
		}
	}
	return NO_ACTION_SPECIFIED;
}

float Creature::GetBigSize()
{
	Creature* partner = mind->agenda.SubActionAgenda.Partner;
	if (partner != NULL)
	{
		float size = partner->GetCreature3D()->Size1 * CREATURE_BIG_SIZE_SCALE;
		if (size < GetCreature3D()->Size1)
		{
			size = GetCreature3D()->Size1;
		}
		return MaxBigSize < size ? MaxBigSize : size;
	}
	return MaxBigSize;
}

float Creature::GetSmallSize()
{
	Creature* partner = mind->agenda.SubActionAgenda.Partner;
	if (partner != NULL)
	{
		float size = partner->GetCreature3D()->Size1 / CREATURE_BIG_SIZE_SCALE;
		if (size > GetCreature3D()->Size1)
		{
			size = GetCreature3D()->Size1;
		}
		return MaxSmallSize < size ? MaxSmallSize : size;
	}
	return MaxSmallSize;
}

void Creature::AutoScale()
{
	if (GGame::g_game->IsMultiplayerGame() || !AutoScaleEnabled)
	{
		return;
	}
	Creature* myCreature = GGame::g_game->MyPlayer()->creature.Get();
	if (myCreature == NULL)
	{
		return;
	}
	float height = myCreature->ReceiveSpell->GetPhysicalHeightToMentalSave() * AutoScaleValue;
	height = physical->Size + (height - physical->Size) * 0.5f;
	ReceiveSpell->SetPhysicalHeightMentalLoaded(min(height, CREATURE_MAX_AUTO_SCALE_HEIGHT));
}

float Creature::ReduceLife(float value, GPlayer* player)
{
	LH3DCreature* creature3d = GetCreature3D();
	if (creature3d != NULL && creature3d->FightCreature != NULL)
	{
		creature3d->FightHealth -= value;
		creature3d->FightHealth = max(0.0f, creature3d->FightHealth);
		if (creature3d->FightHealth <= 0.0f)
		{
			{
				Creature*       opponent = creature3d->FightCreature->creature;
				CreatureBelief* belief = opponent->mind->AddBeliefAboutObject(opponent, this);
				CREATURE_ACTION action = CREATURE_SHOW_IMPRESSIVE_ANIMATION;
				if (opponent->GetCreature3D()->EvilGood < CREATURE_EVIL_VICTORY_ALIGNMENT)
				{
					action = CREATURE_POO;
				}
				CreaturePlan plan(CREATURE_DESIRE_TO_OBEY_PLAYER, action, belief, belief, NULL, 1.0f);
				opponent->ForceActivityAndForceAction(plan, true, true);
				opponent->mind->agenda.CommandState.Commanded = true;
				opponent->NumBattlesWon++;
				opponent->FightEnded = true;
			}
			FightEnded = true;
			Faint();
		}
	}
	return Object::ReduceLife(value, player);
}

float Creature::IncreaseLife(float value)
{
	LH3DCreature* creature3d = GetCreature3D();
	if (creature3d != NULL && creature3d->FightCreature != NULL)
	{
		creature3d->FightHealth += value;
		creature3d->FightHealth = min(1.0f, creature3d->FightHealth);
	}
	return Object::IncreaseLife(value);
}

void Creature::SetHeight(float height)
{
	float size = height * CREATURE_HEIGHT_TO_SIZE;
	physical->Size = size;
	GetCreature3D()->Size1 = size;
}

void Creature::BalanceKnowlegeForComputerPlayer()
{
	GPlayer* player = GetPlayer();
	if (player == NULL || player->citadel.Get() == NULL)
	{
		return;
	}
	for (unsigned long magicType = MAGIC_TYPE_FIREBALL; magicType < MAGIC_TYPE_LAST; magicType++)
	{
		if (player->IsMagicTypeEnabled((MAGIC_TYPE)magicType) || magicType == MAGIC_TYPE_FOOD ||
		    magicType == MAGIC_TYPE_HEAL || magicType == MAGIC_TYPE_WOOD || magicType == MAGIC_TYPE_WATER)
		{
			mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_MAGIC, magicType, true);
			mind->learning.NumTimesMagicActionSeen[magicType] =
				(uint32_t)NumTimesMagicActionMustBeSeenBeforeItIsLearnt(magicType);
		}
	}
}

bool32_t Creature::CanBeHealedByHealSpell()
{
	return true;
}

void Creature::CheckThatMindAndBodyLoadedCorrectly()
{
	if (GGame::g_game->IsMultiplayerGame() || GetPlayer() != GGame::g_game->MyPlayer())
	{
		return;
	}
	LHPlayer* lhPlayer = GGame::g_game->GetMyLHPlayer();
	if (lhPlayer == NULL)
	{
		return;
	}
	char path[260];
	sprintf(path, ".\\Scripts\\CreatureMind\\%s", lhPlayer->UserFilename);
	if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
	{
		sprintf(path, ".\\Scripts\\CreatureMind\\Physique%s", lhPlayer->UserFilename);
		if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
		{
			return;
		}
	}
	ToBeDeleted(false);
	DeleteMyCreatureFiles();
}

void Creature::DeleteMyCreatureFiles()
{
	LHPlayer* lhPlayer = GGame::g_game->GetMyLHPlayer();
	if (lhPlayer != NULL)
	{
		char path[260];
		sprintf(path, ".\\Scripts\\CreatureMind\\%s", lhPlayer->UserFilename);
		DeleteFileA(path);
		sprintf(path, ".\\Scripts\\CreatureMind\\Physique%s", lhPlayer->UserFilename);
		DeleteFileA(path);
	}
}

// BW1W120 0047e1b0 BW1M119 011d54a0
void MakeMyCreatureReactToNewMusic(Creature* creature, float mood);
// BW1W120 0047e760 BW1M119 011d4f10
void MakeMyCreatureReactToNiceMusic(Creature* creature, float mood);
// BW1W120 0047ec10 BW1M119 011d4a20
void MakeMyCreatureReactToNastyMusic(Creature* creature, float mood);

void MakeMyCreatureReactToMusic(float mood)
{
	Creature* creature = GGame::g_game->MyPlayer()->creature.Get();
	if (creature == NULL)
	{
		return;
	}
	creature->physical->Creature3d->EndAnyAnimsRapidly();
	CreatureBelief* belief = creature->mind->GetBeliefAboutObject(creature);
	CreaturePlan plan(CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER,
	                  GAME_RAND(5805, 3) == 0 ? CREATURE_LOOK_AT_CAMERA : CREATURE_POINT_AT_CAMERA, NULL, belief, NULL,
	                  1.0f);
	if (mood < 0.0f)
	{
		plan.CreatureDesire = CREATURE_DESIRE_SADNESS;
		plan.creature_action = CREATURE_BE_SAD;
	}
	creature->ForceActivityAndForceAction(plan, true, true);
	creature->mind->agenda.CommandState.Commanded = true;
	creature->mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	if (mood == 0.0f)
	{
		MakeMyCreatureReactToNewMusic(creature, mood);
	}
	else if (mood > 0.0f)
	{
		MakeMyCreatureReactToNiceMusic(creature, mood);
	}
	else
	{
		MakeMyCreatureReactToNastyMusic(creature, mood);
	}
	creature->mind->agenda.ForcedActionBelief = belief;
	creature->mind->agenda.ForcedActionArgument = (long)(mood * CREATURE_MUSIC_MOOD_ARGUMENT_SCALE);
}

void MakeMyCreatureReactToNewMusic(Creature* creature, float mood)
{
	uint32_t count = GAME_RAND(5837, 8) + 8;
	void (Creature::*face)();
	for (uint32_t i = 0; i < count; i++)
	{
		face = &Creature::SetFaceForActionCuriosity;
		if (i == 0 || GAME_RAND(5843, 2) == 0)
		{
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL,
			                                                    &Creature::LookAtCamera, face);
		}
		switch (GAME_RAND(5847, 5))
		{
		case 0:
			if (creature->alignment->GetValue() < 0.0f)
			{
				creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                                                    NEW(5853) SubArgumentInteger(C_MISC_LAUGH), NULL,
				                                                    face);
			}
			else
			{
				creature->mind->agenda.SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
				                                                        NEW(5857) SubArgumentInteger(C_FACE_SMILE),
				                                                        NULL, NULL);
			}
			break;
		case 1: {
			GInterfaceStatus* status = creature->GetNearestCameraInterfaceStatus();
			if (status != NULL)
			{
				LHPoint cameraPos = status->GetCameraPos();
				creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
				                                                    NEW(5867) SubArgumentPointAndFloat(cameraPos, 1.0f),
				                                                    &Creature::LookAtPosition, face);
			}
			break;
		}
		case 2:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL, NULL, face);
			break;
		case 3:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(5877) SubArgumentInteger(C_INDIVIDUAL_CONFUSED),
			                                                    &Creature::LookJustWokenUp, face);
			break;
		case 4:
			if (GAME_RAND(5880, 100) > 50)
			{
				creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                                                    NEW(5882) SubArgumentInteger(C_INDIVIDUAL_CONFUSED),
				                                                    &Creature::LookJustWokenUp, face);
			}
			else
			{
				creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                                                    NEW(5888) SubArgumentInteger(C_INDIVIDUAL_SCRATCH),
				                                                    &Creature::LookJustWokenUp, face);
			}
			break;
		}
	}
	creature->mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		NEW(5894) SubArgumentIntegerAndFloat(C_STATIC_SIT, GAME_FLOAT_RAND(5894, 15.0f) + 20.0f),
		&Creature::LookJustWokenUp, face);
	GInterfaceStatus* status = creature->GetNearestCameraInterfaceStatus();
	if (status != NULL)
	{
		LHPoint cameraPos = status->GetCameraPos();
		creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                                    NEW(5899) SubArgumentPointAndFloat(cameraPos, 1.0f),
		                                                    &Creature::LookAtPosition, face);
	}
	if (GAME_RAND(5901, 100) > 50)
	{
		creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
		                                                    NEW(5903) SubArgumentFloat(1.0f), NULL, face);
	}
	creature->mind->agenda.ForcedActionFunction = &Creature::LookCurious;
	creature->mind->SetCheatDominantDesire(CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER, 15.0f, true);
}

void MakeMyCreatureReactToNiceMusic(Creature* creature, float mood)
{
	uint32_t count = GAME_RAND(5915, 8) + 8;
	void (Creature::*face)();
	for (uint32_t i = 0; i < count; i++)
	{
		switch (GAME_RAND(5920, 3))
		{
		case 0:
			face = &Creature::SetFaceForActionSmile;
			break;
		case 1:
			face = &Creature::SetFaceForActionAmazed;
			break;
		case 2:
			face = &Creature::SetFaceForActionCompassion;
			break;
		}
		if (i == 0 || GAME_RAND(5933, 2) == 0)
		{
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL,
			                                                    &Creature::LookAtCamera, face);
		}
		switch (GAME_RAND(5937, 12))
		{
		case 0:
		case 1:
		case 3:
		case 4:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(5945) SubArgumentInteger(C_INDIVIDUAL_HAPPY),
			                                                    &Creature::LookAtCamera, face);
			break;
		case 5:
		case 6:
		case 7:
			creature->mind->agenda.SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION, NEW(5951) SubArgumentInteger(C_INDIVIDUAL_FRIENDLY_WAVE),
				&Creature::LookAtCamera, face);
			break;
		case 2:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(5955) SubArgumentInteger(C_INDIVIDUAL_LOOK_AT_ME),
			                                                    &Creature::LookAtCamera, face);
			break;
		case 8:
			creature->mind->agenda.SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
			                                                        NEW(5958) SubArgumentInteger(C_FACE_SMILE),
			                                                        &Creature::LookAtCamera, face);
			break;
		case 9:
			creature->mind->agenda.SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                        NEW(5962) SubArgumentInteger(C_MISC_LAUGH),
			                                                        &Creature::LookAtCamera, face);
			break;
		case 10:
		case 11:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL,
			                                                    &Creature::LookAtCamera, face);
			break;
		}
	}
	creature->mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		NEW(5972) SubArgumentIntegerAndFloat(C_STATIC_SIT, GAME_FLOAT_RAND(5972, 60.0f)), &Creature::LookAtCamera,
		&Creature::SetFaceForActionSmile);
	creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
	                                                    NEW(5973) SubArgumentFloat(min(60.0f, mood * 10.0f + 5.0f)),
	                                                    &Creature::LookAtCamera, &Creature::SetFaceForActionSmile);
	creature->mind->agenda.ForcedActionFunction =
		GAME_RAND(5974, 100) > 20 ? &Creature::DanceToMusic : &Creature::BeHappy;
	creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
	                                  CREATURE_MISCELLANEOUS_HELP_STACKED_NICE_MUSIC, NULL, NULL, 0);
	creature->mind->SetCheatDominantDesire(CREATURE_DESIRE_TO_PLAY_WITH_PLAYER, 180.0f, true);
}

void MakeMyCreatureReactToNastyMusic(Creature* creature, float mood)
{
	uint32_t count = GAME_RAND(5985, 8) + 8;
	void (Creature::*face)();
	for (uint32_t i = 0; i < count; i++)
	{
		switch (GAME_RAND(5990, 3))
		{
		case 0:
			face = &Creature::SetFaceForActionAnger;
			break;
		case 1:
			face = &Creature::SetFaceForActionFear;
			break;
		case 2:
			face = &Creature::SetFaceForMoodSad;
			break;
		}
		if (i == 0 || GAME_RAND(6003, 2) == 0)
		{
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL,
			                                                    &Creature::LookAtCamera, face);
		}
		switch (GAME_RAND(6007, 9))
		{
		case 0:
		case 1:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(6013) SubArgumentInteger(C_INDIVIDUAL_SAD), NULL,
			                                                    face);
			break;
		case 2:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(6017) SubArgumentInteger(C_MISC_HOWL), NULL, face);
			break;
		case 3:
		case 4:
			creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                                    NEW(6022) SubArgumentInteger(C_INDIVIDUAL_FRIGHTENED),
			                                                    NULL, face);
			break;
		case 5:
		case 6:
		case 7:
		case 8:
			if (creature->alignment->GetValue() < 0.0f)
			{
				if (GAME_RAND(6030, 100) > 30)
				{
					creature->mind->agenda.SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION, NEW(6033) SubArgumentInteger(C_INDIVIDUAL_ANGRY),
						NULL, face);
				}
				else
				{
					creature->mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
					                                                    NEW(6038) SubArgumentInteger(C_MISC_FUCK_YOU),
					                                                    NULL, face);
				}
			}
			else
			{
				creature->mind->agenda.SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION, NEW(6045) SubArgumentInteger(C_MISC_CRY), NULL, face);
			}
			break;
		}
	}
	creature->mind->agenda.ForcedActionFunction = &Creature::BeSad;
	creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
	                                  CREATURE_MISCELLANEOUS_HELP_STACKED_NASTY_MUSIC, NULL, NULL, 0);
	creature->mind->SetCheatDominantDesire(GAME_RAND(6053, 100) > 50 ? CREATURE_DESIRE_SADNESS : CREATURE_DESIRE_FEAR,
	                                       180.0f, true);
}
