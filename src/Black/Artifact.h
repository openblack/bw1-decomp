#ifndef BW1_DECOMP_ARTIFACT_INCLUDED_H
#define BW1_DECOMP_ARTIFACT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class Fixed;
class GPlayer;
class GameOSFile;
class Town;
class Villager;
class WorshipSite;

class TownArtifact : public GameThing
{
public:
	Fixed*                   Artifact;
	Town*                    town;
	GameThing*               field_0x1c;
	LHListNode<TownArtifact> next;
	GPlayer*                 Player;
	float                    Value;
	uint8_t                  field_0x2c[0x14];

	// Override methods

	// BW1W120 00425d80 BW1M119 010b0ae0
	virtual ~TownArtifact();
	// BW1W120 00425e70 BW1M119 010b2410
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00425d40 BW1M119 010b0b70
	virtual GPlayer* GetPlayer();
	// BW1W120 00425d50 BW1M119 010b0bb0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00425d60 BW1M119 010b0bf0
	virtual Town* GetTown();
	// BW1W120 004262d0 BW1M119 010b1940
	virtual float GetVillagerActivityDesire(Villager* param_1);
	// BW1W120 00426470 BW1M119 010b1640
	virtual uint32_t SetVillagerActivity(Villager* param_1);
	// BW1W120 004266c0 BW1M119 010b12d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004265a0 BW1M119 010b1480
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00425d70 BW1M119 010b0c30
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 00425d00 BW1M119 010b28e0
	TownArtifact(Fixed* artifact, Town* town, GPlayer* player);

	// Non-virtual methods

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
};

#endif /* BW1_DECOMP_ARTIFACT_INCLUDED_H */
