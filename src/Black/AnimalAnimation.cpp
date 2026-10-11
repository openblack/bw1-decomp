#include "AnimalGoat.h"
#include "AnimalVulture.h"
#include "AnimalZebra.h"
#include "AnimalBat.h"
#include "AnimalCow.h"
#include "AnimalCrow.h"
#include "AnimalDove.h"
#include "AnimalHorse.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"
#include "AnimalPig.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSheep.h"
#include "AnimalSwallow.h"
#include "AnimalTiger.h"
#include "AnimalTortoise.h"
#include "AnimalWolf.h"
#include "PuzzleGame.h"

uint32_t Vulture::MoveAnimation()
{
	return ANM_INVALID;
}

uint32_t Vulture::DeadAnimation()
{
	return ANM_INVALID;
}

uint32_t Vulture::EatAnimation()
{
	return ANM_INVALID;
}

uint32_t Vulture::SleepAnimation()
{
	return ANM_INVALID;
}

uint32_t Vulture::StandAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::MoveAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::DyingAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::DeadAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::EatAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::StartToEatAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::FinishEatingAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::SleepAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::InHandAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::LandedAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::ThrownAnimation()
{
	return ANM_INVALID;
}

uint32_t Goat::StandAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::MoveAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::DyingAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::DeadAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::EatAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::StartToEatAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::FinishEatingAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::SleepAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::InHandAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::LandedAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::ThrownAnimation()
{
	return ANM_INVALID;
}

uint32_t Zebra::StandAnimation()
{
	return ANM_INVALID;
}

uint32_t Dove::DeadAnimation()
{
	return 8;
}

uint32_t Dove::EatAnimation()
{
	return 8;
}

uint32_t Dove::SleepAnimation()
{
	return 8;
}

uint32_t Dove::StandAnimation()
{
	return 8;
}

uint32_t Dove::ThrownAnimation()
{
	return 8;
}

uint32_t SpellDove::MoveAnimation()
{
	return 23;
}

uint32_t SpellDove::DeadAnimation()
{
	return 23;
}

uint32_t SpellDove::EatAnimation()
{
	return 23;
}

uint32_t SpellDove::SleepAnimation()
{
	return 23;
}

uint32_t SpellDove::StandAnimation()
{
	return 23;
}

uint32_t SpellDove::ThrownAnimation()
{
	return 23;
}

uint32_t Bat::MoveAnimation()
{
	return 1;
}

uint32_t Bat::DeadAnimation()
{
	return 2;
}

uint32_t Bat::EatAnimation()
{
	return 2;
}

uint32_t Bat::SleepAnimation()
{
	return 2;
}

uint32_t Bat::StandAnimation()
{
	return 2;
}

uint32_t Bat::ThrownAnimation()
{
	return 2;
}

uint32_t SpellBat::MoveAnimation()
{
	return 1;
}

uint32_t SpellBat::DeadAnimation()
{
	return 2;
}

uint32_t SpellBat::EatAnimation()
{
	return 2;
}

uint32_t SpellBat::SleepAnimation()
{
	return 2;
}

uint32_t SpellBat::StandAnimation()
{
	return 2;
}

uint32_t SpellBat::ThrownAnimation()
{
	return 2;
}

uint32_t Crow::DeadAnimation()
{
	return 4;
}

uint32_t Crow::EatAnimation()
{
	return 5;
}

uint32_t Crow::SleepAnimation()
{
	return 6;
}

uint32_t Crow::StandAnimation()
{
	return 7;
}

uint32_t Crow::ThrownAnimation()
{
	return 7;
}

uint32_t Pigeon::DeadAnimation()
{
	return 14;
}

uint32_t Pigeon::EatAnimation()
{
	return 15;
}

uint32_t Pigeon::SleepAnimation()
{
	return 16;
}

uint32_t Pigeon::StandAnimation()
{
	return 17;
}

uint32_t Pigeon::ThrownAnimation()
{
	return 17;
}

uint32_t Seagull::DeadAnimation()
{
	return 19;
}

uint32_t Seagull::EatAnimation()
{
	return 20;
}

uint32_t Seagull::SleepAnimation()
{
	return 21;
}

uint32_t Seagull::StandAnimation()
{
	return 22;
}

uint32_t Seagull::ThrownAnimation()
{
	return 22;
}

uint32_t Swallow::DeadAnimation()
{
	return 26;
}

uint32_t Swallow::EatAnimation()
{
	return 27;
}

uint32_t Swallow::SleepAnimation()
{
	return 27;
}

uint32_t Swallow::StandAnimation()
{
	return 27;
}

uint32_t Swallow::ThrownAnimation()
{
	return 27;
}

uint32_t Lion::LandedAnimation()
{
	return 112;
}

uint32_t Lion::DyingAnimation()
{
	return 89;
}

uint32_t Lion::DeadAnimation()
{
	return 105;
}

uint32_t Lion::EatAnimation()
{
	return 92;
}

uint32_t Lion::StartToEatAnimation()
{
	return 95;
}

uint32_t Lion::FinishEatingAnimation()
{
	return 110;
}

uint32_t Lion::SleepAnimation()
{
	return 105;
}

uint32_t Lion::PounceAnimation()
{
	return 100;
}

uint32_t Lion::HideAnimation()
{
	return 102;
}

uint32_t Lion::StandAnimation()
{
	return 106;
}

uint32_t Lion::InHandAnimation()
{
	return 98;
}

uint32_t Lion::ThrownAnimation()
{
	return 106;
}

uint32_t Leopard::LandedAnimation()
{
	return 84;
}

uint32_t Leopard::DyingAnimation()
{
	return 65;
}

uint32_t Leopard::DeadAnimation()
{
	return 79;
}

uint32_t Leopard::EatAnimation()
{
	return 66;
}

uint32_t Leopard::StartToEatAnimation()
{
	return 69;
}

uint32_t Leopard::FinishEatingAnimation()
{
	return 82;
}

uint32_t Leopard::SleepAnimation()
{
	return 79;
}

uint32_t Leopard::PounceAnimation()
{
	return 74;
}

uint32_t Leopard::HideAnimation()
{
	return 76;
}

uint32_t Leopard::StandAnimation()
{
	return 80;
}

uint32_t Leopard::InHandAnimation()
{
	return 72;
}

uint32_t Leopard::ThrownAnimation()
{
	return 80;
}

uint32_t Tiger::LandedAnimation()
{
	return 168;
}

uint32_t Tiger::DyingAnimation()
{
	return 149;
}

uint32_t Tiger::DeadAnimation()
{
	return 163;
}

uint32_t Tiger::EatAnimation()
{
	return 150;
}

uint32_t Tiger::StartToEatAnimation()
{
	return 153;
}

uint32_t Tiger::FinishEatingAnimation()
{
	return 166;
}

uint32_t Tiger::SleepAnimation()
{
	return 163;
}

uint32_t Tiger::PounceAnimation()
{
	return 158;
}

uint32_t Tiger::HideAnimation()
{
	return 160;
}

uint32_t Tiger::StandAnimation()
{
	return 164;
}

uint32_t Tiger::InHandAnimation()
{
	return 164;
}

uint32_t Tiger::ThrownAnimation()
{
	return 164;
}

uint32_t Wolf::LandedAnimation()
{
	return 187;
}

uint32_t Wolf::DyingAnimation()
{
	return 173;
}

uint32_t Wolf::DeadAnimation()
{
	return 183;
}

uint32_t Wolf::EatAnimation()
{
	return 174;
}

uint32_t Wolf::StartToEatAnimation()
{
	return 175;
}

uint32_t Wolf::FinishEatingAnimation()
{
	return 185;
}

uint32_t Wolf::SleepAnimation()
{
	return 183;
}

uint32_t Wolf::PounceAnimation()
{
	return 179;
}

uint32_t Wolf::HideAnimation()
{
	return 180;
}

uint32_t Wolf::StandAnimation()
{
	return 184;
}

uint32_t Wolf::InHandAnimation()
{
	return 184;
}

uint32_t Wolf::ThrownAnimation()
{
	return 184;
}

uint32_t SpellWolf::MoveAnimation()
{
	return 181;
}

uint32_t SpellWolf::LandedAnimation()
{
	return 187;
}

uint32_t SpellWolf::DyingAnimation()
{
	return 181;
}

uint32_t SpellWolf::DeadAnimation()
{
	return 181;
}

uint32_t SpellWolf::EatAnimation()
{
	return 174;
}

uint32_t SpellWolf::StartToEatAnimation()
{
	return 175;
}

uint32_t SpellWolf::FinishEatingAnimation()
{
	return 185;
}

uint32_t SpellWolf::SleepAnimation()
{
	return 183;
}

uint32_t SpellWolf::PounceAnimation()
{
	return 179;
}

uint32_t SpellWolf::HideAnimation()
{
	return 180;
}

uint32_t SpellWolf::StandAnimation()
{
	return 184;
}

uint32_t SpellWolf::InHandAnimation()
{
	return 184;
}

uint32_t SpellWolf::ThrownAnimation()
{
	return 184;
}

uint32_t Cow::SleepAnimation()
{
	return 42;
}

uint32_t Cow::StartToEatAnimation()
{
	return 37;
}

uint32_t Cow::FinishEatingAnimation()
{
	return 44;
}

uint32_t Cow::StandAnimation()
{
	return 42;
}

uint32_t Cow::DyingAnimation()
{
	return 31;
}

uint32_t Cow::InHandAnimation()
{
	return 38;
}

uint32_t Cow::ThrownAnimation()
{
	return 43;
}

uint32_t Sheep::SleepAnimation()
{
	return 142;
}

uint32_t Sheep::StartToEatAnimation()
{
	return 136;
}

uint32_t Sheep::FinishEatingAnimation()
{
	return 140;
}

uint32_t Sheep::StandAnimation()
{
	return 142;
}

uint32_t Sheep::DyingAnimation()
{
	return 134;
}

uint32_t Sheep::InHandAnimation()
{
	return 137;
}

uint32_t Sheep::ThrownAnimation()
{
	return 143;
}

uint32_t Horse::SleepAnimation()
{
	return 57;
}

uint32_t Horse::StartToEatAnimation()
{
	return 52;
}

uint32_t Horse::FinishEatingAnimation()
{
	return 60;
}

uint32_t Horse::StandAnimation()
{
	return 57;
}

uint32_t Horse::DyingAnimation()
{
	return 46;
}

uint32_t Horse::InHandAnimation()
{
	return 53;
}

uint32_t Horse::ThrownAnimation()
{
	return 58;
}

uint32_t Pig::SleepAnimation()
{
	return 126;
}

uint32_t Pig::StartToEatAnimation()
{
	return 120;
}

uint32_t Pig::FinishEatingAnimation()
{
	return 124;
}

uint32_t Pig::StandAnimation()
{
	return 126;
}

uint32_t Pig::DyingAnimation()
{
	return 118;
}

uint32_t Pig::InHandAnimation()
{
	return 121;
}

uint32_t Pig::ThrownAnimation()
{
	return 127;
}

uint32_t Tortoise::MoveAnimation()
{
	return 172;
}

uint32_t Tortoise::DeadAnimation()
{
	return 171;
}

uint32_t Tortoise::EatAnimation()
{
	return 171;
}

uint32_t Tortoise::SleepAnimation()
{
	return 171;
}

uint32_t Tortoise::StartToEatAnimation()
{
	return 171;
}

uint32_t Tortoise::FinishEatingAnimation()
{
	return 171;
}

uint32_t Tortoise::StandAnimation()
{
	return 171;
}

uint32_t Tortoise::LandedAnimation()
{
	return 171;
}

uint32_t Tortoise::DyingAnimation()
{
	return 171;
}

uint32_t Tortoise::InHandAnimation()
{
	return 171;
}

uint32_t Tortoise::ThrownAnimation()
{
	return 171;
}

uint32_t PieceVillager::LandedAnimation()
{
	return 427;
}

uint32_t PieceVillager::DyingAnimation()
{
	return 385;
}

uint32_t PieceVillager::DeadAnimation()
{
	return 385;
}

uint32_t PieceVillager::EatAnimation()
{
	return 427;
}

uint32_t PieceVillager::StartToEatAnimation()
{
	return 427;
}

uint32_t PieceVillager::FinishEatingAnimation()
{
	return 427;
}

uint32_t PieceVillager::SleepAnimation()
{
	return 427;
}

uint32_t PieceVillager::PounceAnimation()
{
	return 427;
}

uint32_t PieceVillager::HideAnimation()
{
	return 385;
}

uint32_t PieceVillager::StandAnimation()
{
	return 385;
}

uint32_t PieceVillager::InHandAnimation()
{
	return 385;
}

uint32_t PieceVillager::ThrownAnimation()
{
	return 385;
}
