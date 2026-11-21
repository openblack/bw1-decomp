#ifndef BW1_DECOMP_ARTIFACT_INCLUDED_H
#define BW1_DECOMP_ARTIFACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class LHOSFile;
struct MapCoords;
class Base;
class Dance;
class Fixed;
class GParticleContainer;
class GPlayer;
class GameOSFile;
class PlayerSymbolSprite;
class Town;
class Villager;
class WorshipSite;

#define TOWN_ARTIFACT_PARTICLE_SCALE        1.0f
#define TOWN_ARTIFACT_SYMBOL_SCALE          0.5f
#define TOWN_ARTIFACT_VALUE_GAIN            300.0f
#define TOWN_ARTIFACT_VALUE_INCREMENT       0.1f
#define TOWN_ARTIFACT_VILLAGER_MAX_DISTANCE 250.0f

class TownArtifact : public GameThing
{
public:
	Fixed*                   Artifact;
	Town*                    town;
	WorshipSite*             Site;
	LHListNode<TownArtifact> next;
	GPlayer*                 Player;
	float                    Value;
	Dance*                   ArtifactDance;
	bool32_t                 DanceStarted;
	uint32_t                 DanceStartTurn;
	GParticleContainer*      Particles;
	PlayerSymbolSprite*      Symbol;

	// Override methods

	// BW1W120 004267e0 BW1M119 010b1280
	virtual void ResolveLoad();
	// BW1W120 00425e70 BW1M119 010b2410
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 00425d40 BW1M119 010b0b70
	virtual GPlayer* GetPlayer() { return Player; }
	// BW1W120 00425d50 BW1M119 010b0bb0
	virtual void SetPlayer(GPlayer* player) { Player = player; }
	// BW1W120 00425d60 BW1M119 010b0bf0
	virtual Town* GetTown() { return town; }
	// BW1W120 004262d0 BW1M119 010b1940
	virtual float GetVillagerActivityDesire(Villager* villager);
	// BW1W120 00426470 BW1M119 010b1640
	virtual uint32_t SetVillagerActivity(Villager* villager);
	// BW1W120 004266c0 BW1M119 010b12d0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 004265a0 BW1M119 010b1480
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00425d70 BW1M119 010b0c30
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_TOWN_ARTIFACT; }

	// Constructors

	// BW1W120 00561ba0 BW1M119 inlined
	TownArtifact() { SetToZero(); }
	// BW1W120 00425d00 BW1M119 010b28e0
	TownArtifact(Fixed* artifact, Town* town, GPlayer* player);
	// BW1W120 00425db0 BW1M119 010b27c0
	TownArtifact(Fixed* artifact, WorshipSite* site, GPlayer* player);

	// Non-virtual methods
	// BW1W120 00425df0 BW1M119 010b25f0
	void Init(Fixed* artifact, Town* town, WorshipSite* site, GPlayer* player);
	// BW1W120 004263d0 BW1M119 010b1830
	float GetDesireToAddVillager();
	// BW1W120 00426130 BW1M119 010b1d30
	void CalculateDanceEffect();
	// BW1W120 00426100 BW1M119 010b1f00
	uint32_t GetDanceTimeRemaining();
	// BW1W120 00426080 BW1M119 010b1fd0
	void StopDanceIfNecessary(bool force);

	// BW1W120 00425f00 BW1M119 010b23c0
	void SetToZero();
	// BW1W120 004268e0 BW1M119 010b0e90
	float GetImpressiveValueForDancing();
	// BW1W120 004267f0 BW1M119 010b1220
	bool IsReadyForParticleEffect();
	// BW1W120 00426230 BW1M119 010b1af0
	void RemoveFromTown();
	// BW1W120 00426880 BW1M119 010b1070
	bool32_t WillImpress(Town* town);
	// BW1W120 004268b0 BW1M119 010b1000
	bool32_t WillImpress(WorshipSite* site);
	// BW1W120 00426860 BW1M119 010b10e0
	void Validate();
	// BW1W120 0051c8e0 BW1M119 010c77b0
	void Draw();
	// BW1W120 inlined BW1M119 inlined
	float GetValue() { return Value; }
	// BW1W120 00426a80 BW1M119 010b0c70
	void AddToValue(float amount);
	// BW1W120 00426810 BW1M119 null
	void IncrementValue();
	// BW1W120 00426820 BW1M119 010b1180
	void SetValue(float value);
	// BW1W120 004269c0 BW1M119 010b0cf0
	uint32_t SaveObject(LHOSFile& file, const MapCoords& coords);
	// BW1W120 00425fb0 BW1M119 010b20e0
	void Process();
	// BW1W120 00425f20 BW1M119 010b2290
	void CreateParticleEffectIfNecessary();
};

#endif /* BW1_DECOMP_ARTIFACT_INCLUDED_H */
