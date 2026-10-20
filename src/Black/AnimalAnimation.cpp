#include "AnimalDove.h"
#include "AnimalBat.h"
#include "AnimalCrow.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSwallow.h"
#include "AnimalVulture.h"
#include "AnimalLion.h"
#include "AnimalLeopard.h"
#include "AnimalTiger.h"
#include "AnimalWolf.h"
#include "AnimalCow.h"
#include "AnimalSheep.h"
#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalZebra.h"
#include "AnimalPig.h"
#include "AnimalTortoise.h"
#include "PuzzleGame.h"

// BW1W120 0041bd50
uint32_t Dove::DeadAnimation()
{
	return ANM_DOVE_FLAP;
}

// BW1W120 0041bd60
uint32_t Dove::EatAnimation()
{
	return ANM_DOVE_FLAP;
}

// BW1W120 0041bd70
uint32_t Dove::SleepAnimation()
{
	return ANM_DOVE_FLAP;
}

// BW1W120 0041bd80
uint32_t Dove::StandAnimation()
{
	return ANM_DOVE_FLAP;
}

// BW1W120 0041bd90
uint32_t Dove::ThrownAnimation()
{
	return ANM_DOVE_FLAP;
}

// BW1W120 0041bda0
uint32_t SpellDove::MoveAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041bdb0
uint32_t SpellDove::DeadAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041bdc0
uint32_t SpellDove::EatAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041bdd0
uint32_t SpellDove::SleepAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041bde0
uint32_t SpellDove::StandAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041bdf0
uint32_t SpellDove::ThrownAnimation()
{
	return ANM_SPELL_DOVE_FLAP;
}

// BW1W120 0041be00
uint32_t Bat::MoveAnimation()
{
	return ANM_BAT_FLAP;
}

// BW1W120 0041be10
uint32_t Bat::DeadAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be20
uint32_t Bat::EatAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be30
uint32_t Bat::SleepAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be40
uint32_t Bat::StandAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be50
uint32_t Bat::ThrownAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be60
uint32_t SpellBat::MoveAnimation()
{
	return ANM_BAT_FLAP;
}

// BW1W120 0041be70
uint32_t SpellBat::DeadAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be80
uint32_t SpellBat::EatAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041be90
uint32_t SpellBat::SleepAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041bea0
uint32_t SpellBat::StandAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041beb0
uint32_t SpellBat::ThrownAnimation()
{
	return ANM_BAT_GLIDE;
}

// BW1W120 0041bee0
uint32_t Crow::DeadAnimation()
{
	return ANM_CROW_GLIDE;
}

// BW1W120 0041bef0
uint32_t Crow::EatAnimation()
{
	return ANM_CROW_LANDING;
}

// BW1W120 0041bf00
uint32_t Crow::SleepAnimation()
{
	return ANM_CROW_SIT;
}

// BW1W120 0041bf10
uint32_t Crow::StandAnimation()
{
	return ANM_CROW_TAKEOFF;
}

// BW1W120 0041bf20
uint32_t Crow::ThrownAnimation()
{
	return ANM_CROW_TAKEOFF;
}

// BW1W120 0041bf50
uint32_t Pigeon::DeadAnimation()
{
	return ANM_PIGEON_GLIDE;
}

// BW1W120 0041bf60
uint32_t Pigeon::EatAnimation()
{
	return ANM_PIGEON_LANDING;
}

// BW1W120 0041bf70
uint32_t Pigeon::SleepAnimation()
{
	return ANM_PIGEON_SIT;
}

// BW1W120 0041bf80
uint32_t Pigeon::StandAnimation()
{
	return ANM_PIGEON_TAKEOFF;
}

// BW1W120 0041bf90
uint32_t Pigeon::ThrownAnimation()
{
	return ANM_PIGEON_TAKEOFF;
}

// BW1W120 0041bfc0
uint32_t Seagull::DeadAnimation()
{
	return ANM_SEAGULL_GENTLEFLAP;
}

// BW1W120 0041bfd0
uint32_t Seagull::EatAnimation()
{
	return ANM_SEAGULL_GLIDE;
}

// BW1W120 0041bfe0
uint32_t Seagull::SleepAnimation()
{
	return ANM_SEAGULL_LANDING;
}

// BW1W120 0041bff0
uint32_t Seagull::StandAnimation()
{
	return ANM_SEAGULL_TAKEOFF;
}

// BW1W120 0041c000
uint32_t Seagull::ThrownAnimation()
{
	return ANM_SEAGULL_TAKEOFF;
}

// BW1W120 0041c040
uint32_t Swallow::DeadAnimation()
{
	return ANM_SWALLOW_ERATICGLIDE;
}

// BW1W120 0041c050
uint32_t Swallow::EatAnimation()
{
	return ANM_SWALLOW_FLAP;
}

// BW1W120 0041c060
uint32_t Swallow::SleepAnimation()
{
	return ANM_SWALLOW_FLAP;
}

// BW1W120 0041c070
uint32_t Swallow::StandAnimation()
{
	return ANM_SWALLOW_FLAP;
}

// BW1W120 0041c080
uint32_t Swallow::ThrownAnimation()
{
	return ANM_SWALLOW_FLAP;
}

// BW1W120 0041c090
uint32_t Vulture::MoveAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c0a0
uint32_t Vulture::DeadAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c0b0
uint32_t Vulture::EatAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c0c0
uint32_t Vulture::SleepAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c0d0
uint32_t Vulture::StandAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c110
uint32_t Lion::LandedAnimation()
{
	return ANM_A_LION_UPFROM_SLEEP;
}

// BW1W120 0041c120
uint32_t Lion::DyingAnimation()
{
	return ANM_A_LION_DIE;
}

// BW1W120 0041c130
uint32_t Lion::DeadAnimation()
{
	return ANM_A_LION_SLEEP;
}

// BW1W120 0041c140
uint32_t Lion::EatAnimation()
{
	return ANM_A_LION_EAT;
}

// BW1W120 0041c150
uint32_t Lion::StartToEatAnimation()
{
	return ANM_A_LION_GOTO_EAT;
}

// BW1W120 0041c160
uint32_t Lion::FinishEatingAnimation()
{
	return ANM_A_LION_UPFROM_EAT;
}

// BW1W120 0041c170
uint32_t Lion::SleepAnimation()
{
	return ANM_A_LION_SLEEP;
}

// BW1W120 0041c180
uint32_t Lion::PounceAnimation()
{
	return ANM_A_LION_POUNCE_HI;
}

// BW1W120 0041c190
uint32_t Lion::HideAnimation()
{
	return ANM_A_LION_PROWL;
}

// BW1W120 0041c1a0
uint32_t Lion::StandAnimation()
{
	return ANM_A_LION_STAND;
}

// BW1W120 0041c200
uint32_t Lion::InHandAnimation()
{
	return ANM_A_LION_IN_HAND;
}

// BW1W120 0041c210
uint32_t Lion::ThrownAnimation()
{
	return ANM_A_LION_STAND;
}

// BW1W120 0041c250
uint32_t Leopard::LandedAnimation()
{
	return ANM_A_LEOPARD_UPFROM_SLEEP;
}

// BW1W120 0041c260
uint32_t Leopard::DyingAnimation()
{
	return ANM_A_LEOPARD_DIE;
}

// BW1W120 0041c270
uint32_t Leopard::DeadAnimation()
{
	return ANM_A_LEOPARD_SLEEP;
}

// BW1W120 0041c280
uint32_t Leopard::EatAnimation()
{
	return ANM_A_LEOPARD_EAT;
}

// BW1W120 0041c290
uint32_t Leopard::StartToEatAnimation()
{
	return ANM_A_LEOPARD_GOTO_EAT;
}

// BW1W120 0041c2a0
uint32_t Leopard::FinishEatingAnimation()
{
	return ANM_A_LEOPARD_UPFROM_EAT;
}

// BW1W120 0041c2b0
uint32_t Leopard::SleepAnimation()
{
	return ANM_A_LEOPARD_SLEEP;
}

// BW1W120 0041c2c0
uint32_t Leopard::PounceAnimation()
{
	return ANM_A_LEOPARD_POUNCE_HI;
}

// BW1W120 0041c2d0
uint32_t Leopard::HideAnimation()
{
	return ANM_A_LEOPARD_PROWL;
}

// BW1W120 0041c2e0
uint32_t Leopard::StandAnimation()
{
	return ANM_A_LEOPARD_STAND;
}

// BW1W120 0041c340
uint32_t Leopard::InHandAnimation()
{
	return ANM_A_LEOPARD_IN_HAND;
}

// BW1W120 0041c350
uint32_t Leopard::ThrownAnimation()
{
	return ANM_A_LEOPARD_STAND;
}

// BW1W120 0041c3a0
uint32_t Tiger::LandedAnimation()
{
	return ANM_A_TIGER_UPFROM_SLEEP;
}

// BW1W120 0041c3b0
uint32_t Tiger::DyingAnimation()
{
	return ANM_A_TIGER_DIE;
}

// BW1W120 0041c3c0
uint32_t Tiger::DeadAnimation()
{
	return ANM_A_TIGER_SLEEP;
}

// BW1W120 0041c3d0
uint32_t Tiger::EatAnimation()
{
	return ANM_A_TIGER_EAT;
}

// BW1W120 0041c3e0
uint32_t Tiger::StartToEatAnimation()
{
	return ANM_A_TIGER_GOTO_EAT;
}

// BW1W120 0041c3f0
uint32_t Tiger::FinishEatingAnimation()
{
	return ANM_A_TIGER_UPFROM_EAT;
}

// BW1W120 0041c400
uint32_t Tiger::SleepAnimation()
{
	return ANM_A_TIGER_SLEEP;
}

// BW1W120 0041c410
uint32_t Tiger::PounceAnimation()
{
	return ANM_A_TIGER_POUNCE_HI;
}

// BW1W120 0041c420
uint32_t Tiger::HideAnimation()
{
	return ANM_A_TIGER_PROWL;
}

// BW1W120 0041c430
uint32_t Tiger::StandAnimation()
{
	return ANM_A_TIGER_STAND;
}

// BW1W120 0041c490
uint32_t Tiger::InHandAnimation()
{
	return ANM_A_TIGER_STAND;
}

// BW1W120 0041c4a0
uint32_t Tiger::ThrownAnimation()
{
	return ANM_A_TIGER_STAND;
}

// BW1W120 0041c4f0
uint32_t Wolf::LandedAnimation()
{
	return ANM_A_WOLF_UPFROM_SLEEP;
}

// BW1W120 0041c500
uint32_t Wolf::DyingAnimation()
{
	return ANM_A_WOLF_DIE;
}

// BW1W120 0041c510
uint32_t Wolf::DeadAnimation()
{
	return ANM_A_WOLF_SLEEP;
}

// BW1W120 0041c520
uint32_t Wolf::EatAnimation()
{
	return ANM_A_WOLF_EAT;
}

// BW1W120 0041c530
uint32_t Wolf::StartToEatAnimation()
{
	return ANM_A_WOLF_GOTO_EAT;
}

// BW1W120 0041c540
uint32_t Wolf::FinishEatingAnimation()
{
	return ANM_A_WOLF_UPFROM_EAT;
}

// BW1W120 0041c550
uint32_t Wolf::SleepAnimation()
{
	return ANM_A_WOLF_SLEEP;
}

// BW1W120 0041c560
uint32_t Wolf::PounceAnimation()
{
	return ANM_A_WOLF_POUNCE;
}

// BW1W120 0041c570
uint32_t Wolf::HideAnimation()
{
	return ANM_A_WOLF_PROWL;
}

// BW1W120 0041c580
uint32_t Wolf::StandAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c5e0
uint32_t Wolf::InHandAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c5f0
uint32_t Wolf::ThrownAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c600
uint32_t SpellWolf::MoveAnimation()
{
	return ANM_A_WOLF_RUN;
}

// BW1W120 0041c610
uint32_t SpellWolf::LandedAnimation()
{
	return ANM_A_WOLF_UPFROM_SLEEP;
}

// BW1W120 0041c620
uint32_t SpellWolf::DyingAnimation()
{
	return ANM_A_WOLF_RUN;
}

// BW1W120 0041c630
uint32_t SpellWolf::DeadAnimation()
{
	return ANM_A_WOLF_RUN;
}

// BW1W120 0041c640
uint32_t SpellWolf::EatAnimation()
{
	return ANM_A_WOLF_EAT;
}

// BW1W120 0041c650
uint32_t SpellWolf::StartToEatAnimation()
{
	return ANM_A_WOLF_GOTO_EAT;
}

// BW1W120 0041c660
uint32_t SpellWolf::FinishEatingAnimation()
{
	return ANM_A_WOLF_UPFROM_EAT;
}

// BW1W120 0041c670
uint32_t SpellWolf::SleepAnimation()
{
	return ANM_A_WOLF_SLEEP;
}

// BW1W120 0041c680
uint32_t SpellWolf::PounceAnimation()
{
	return ANM_A_WOLF_POUNCE;
}

// BW1W120 0041c690
uint32_t SpellWolf::HideAnimation()
{
	return ANM_A_WOLF_PROWL;
}

// BW1W120 0041c6a0
uint32_t SpellWolf::StandAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c700
uint32_t SpellWolf::InHandAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c710
uint32_t SpellWolf::ThrownAnimation()
{
	return ANM_A_WOLF_STAND;
}

// BW1W120 0041c7b0
uint32_t Cow::SleepAnimation()
{
	return ANM_A_COW_STAND;
}

// BW1W120 0041c7c0
uint32_t Cow::StartToEatAnimation()
{
	return ANM_A_COW_GOTO_EAT;
}

// BW1W120 0041c7d0
uint32_t Cow::FinishEatingAnimation()
{
	return ANM_A_COW_UPFROM_EAT;
}

// BW1W120 0041c7e0
uint32_t Cow::StandAnimation()
{
	return ANM_A_COW_STAND;
}

// BW1W120 0041c7f0
uint32_t Cow::DyingAnimation()
{
	return ANM_A_COW_DIE;
}

// BW1W120 0041c800
uint32_t Cow::InHandAnimation()
{
	return ANM_A_COW_IN_HAND;
}

// BW1W120 0041c810
uint32_t Cow::ThrownAnimation()
{
	return ANM_A_COW_THROWN;
}

// BW1W120 0041c8b0
uint32_t Sheep::SleepAnimation()
{
	return ANM_A_SHEEP_STAND;
}

// BW1W120 0041c8c0
uint32_t Sheep::StartToEatAnimation()
{
	return ANM_A_SHEEP_GOTO_EAT;
}

// BW1W120 0041c8d0
uint32_t Sheep::FinishEatingAnimation()
{
	return ANM_A_SHEEP_OUT_OF_EAT;
}

// BW1W120 0041c8e0
uint32_t Sheep::StandAnimation()
{
	return ANM_A_SHEEP_STAND;
}

// BW1W120 0041c8f0
uint32_t Sheep::DyingAnimation()
{
	return ANM_A_SHEEP_FALL_DEADLHS;
}

// BW1W120 0041c950
uint32_t Sheep::InHandAnimation()
{
	return ANM_A_SHEEP_IN_HAND;
}

// BW1W120 0041c960
uint32_t Sheep::ThrownAnimation()
{
	return ANM_A_SHEEP_THROWN;
}

// BW1W120 0041c970
uint32_t Goat::MoveAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c980
uint32_t Goat::DeadAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c990
uint32_t Goat::EatAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9a0
uint32_t Goat::SleepAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9b0
uint32_t Goat::StartToEatAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9c0
uint32_t Goat::FinishEatingAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9d0
uint32_t Goat::StandAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9e0
uint32_t Goat::LandedAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041c9f0
uint32_t Goat::DyingAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041ca50
uint32_t Goat::InHandAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041ca60
uint32_t Goat::ThrownAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cb10
uint32_t Horse::SleepAnimation()
{
	return ANM_A_HORSE_STAND;
}

// BW1W120 0041cb20
uint32_t Horse::StartToEatAnimation()
{
	return ANM_A_HORSE_GOTO_EAT;
}

// BW1W120 0041cb30
uint32_t Horse::FinishEatingAnimation()
{
	return ANM_A_HORSE_UP_FROM_EAT;
}

// BW1W120 0041cb40
uint32_t Horse::StandAnimation()
{
	return ANM_A_HORSE_STAND;
}

// BW1W120 0041cb50
uint32_t Horse::DyingAnimation()
{
	return ANM_A_HORSE_DEADLHS;
}

// BW1W120 0041cbb0
uint32_t Horse::InHandAnimation()
{
	return ANM_A_HORSE_IN_HAND;
}

// BW1W120 0041cbc0
uint32_t Horse::ThrownAnimation()
{
	return ANM_A_HORSE_THROWN;
}

// BW1W120 0041cbd0
uint32_t Zebra::MoveAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cbe0
uint32_t Zebra::DeadAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cbf0
uint32_t Zebra::EatAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc00
uint32_t Zebra::SleepAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc10
uint32_t Zebra::StartToEatAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc20
uint32_t Zebra::FinishEatingAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc30
uint32_t Zebra::StandAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc40
uint32_t Zebra::LandedAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cc50
uint32_t Zebra::DyingAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041ccb0
uint32_t Zebra::InHandAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041ccc0
uint32_t Zebra::ThrownAnimation()
{
	return ANM_INVALID;
}

// BW1W120 0041cd60
uint32_t Pig::SleepAnimation()
{
	return ANM_A_PIG_STAND;
}

// BW1W120 0041cd70
uint32_t Pig::StartToEatAnimation()
{
	return ANM_A_PIG_GOTO_EAT;
}

// BW1W120 0041cd80
uint32_t Pig::FinishEatingAnimation()
{
	return ANM_A_PIG_OUT_OF_EAT;
}

// BW1W120 0041cd90
uint32_t Pig::StandAnimation()
{
	return ANM_A_PIG_STAND;
}

// BW1W120 0041cda0
uint32_t Pig::DyingAnimation()
{
	return ANM_A_PIG_FALL_DEADLHS;
}

// BW1W120 0041ce00
uint32_t Pig::InHandAnimation()
{
	return ANM_A_PIG_IN_HAND;
}

// BW1W120 0041ce10
uint32_t Pig::ThrownAnimation()
{
	return ANM_A_PIG_THROWN;
}

// BW1W120 0041ce20
uint32_t Tortoise::MoveAnimation()
{
	return ANM_A_TORTOISE_WALK;
}

// BW1W120 0041ce30
uint32_t Tortoise::DeadAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce40
uint32_t Tortoise::EatAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce50
uint32_t Tortoise::SleepAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce60
uint32_t Tortoise::StartToEatAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce70
uint32_t Tortoise::FinishEatingAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce80
uint32_t Tortoise::StandAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041ce90
uint32_t Tortoise::LandedAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041cea0
uint32_t Tortoise::DyingAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041cf00
uint32_t Tortoise::InHandAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041cf10
uint32_t Tortoise::ThrownAnimation()
{
	return ANM_A_TORTOISE_STAND;
}

// BW1W120 0041cf40
uint32_t PieceVillager::LandedAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cf50
uint32_t PieceVillager::DyingAnimation()
{
	return ANM_P_STAND;
}

// BW1W120 0041cf60
uint32_t PieceVillager::DeadAnimation()
{
	return ANM_P_STAND;
}

// BW1W120 0041cf70
uint32_t PieceVillager::EatAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cf80
uint32_t PieceVillager::StartToEatAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cf90
uint32_t PieceVillager::FinishEatingAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cfa0
uint32_t PieceVillager::SleepAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cfb0
uint32_t PieceVillager::PounceAnimation()
{
	return ANM_P_WALK_MAN;
}

// BW1W120 0041cfc0
uint32_t PieceVillager::HideAnimation()
{
	return ANM_P_STAND;
}

// BW1W120 0041cfd0
uint32_t PieceVillager::StandAnimation()
{
	return ANM_P_STAND;
}

// BW1W120 0041d030
uint32_t PieceVillager::InHandAnimation()
{
	return ANM_P_STAND;
}

// BW1W120 0041d040
uint32_t PieceVillager::ThrownAnimation()
{
	return ANM_P_STAND;
}
