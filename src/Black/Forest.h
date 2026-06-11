#ifndef BW1_DECOMP_FOREST_INCLUDED_H
#define BW1_DECOMP_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Container.h" /* For struct Container, struct ContainerVftable */
#include "Tree.h" /* For struct Tree */

// Forward Declares

class Base;
class Creature;
class GFootpath;
class GFootpathLink;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;

class Forest: public Container
{
public:
    uint8_t field_0x30[0x10];
    uint32_t id; /* 0x40 */
    Forest* next;
    LHLinkedList__Tree trees_0;
    LHLinkedList__Tree trees_1; /* 0x50 */

    // Override methods

    // win1.41 00539b20 mac 100ef2f0 Forest::_dt(void)
    virtual ~Forest();
    // win1.41 00539c60 mac 100f2300 Forest::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00539ae0 mac 100ef710 Forest::IsFootpathLink(void)
    virtual uint32_t IsFootpathLink();
    // win1.41 00539af0 mac 100ef750 Forest::GetFootpathLink(void)
    virtual GFootpathLink* GetFootpathLink();
    // win1.41 0053acf0 mac 100f07e0 Forest::GetNearestPathTo(MapCoords const &, float, int)
    virtual uint32_t GetNearestPathTo(const MapCoords* param_1, float param_2, int param_3);
    // win1.41 0053ad60 mac 100f05a0 Forest::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
    virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
    // win1.41 0053ac50 mac 100f08e0 Forest::AddFootpath(GFootpath *)
    virtual uint32_t AddFootpath(GFootpath* param_1);
    // win1.41 0053acc0 mac 100f0830 Forest::RemoveFootpath(GFootpath *)
    virtual uint32_t RemoveFootpath(GFootpath* param_1);
    // win1.41 00539a60 mac 100ef4a0 Forest::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 00539b10 mac 100ef7d0 Forest::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0053b070 mac 100ef950 Forest::Load(GameOSFile &)
    virtual bool Load(GameOSFile* file);
    // win1.41 0053ae40 mac 100efda0 Forest::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00539b00 mac 100ef790 Forest::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00539a80 mac 100ef580 Forest::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00539a90 mac 100ef5c0 Forest::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // win1.41 00539ab0 mac 100ef650 Forest::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // win1.41 00539aa0 mac 100ef600 Forest::IsSuitableForCreatureActivity(void)
    virtual uint32_t IsSuitableForCreatureActivity();
    // win1.41 00539ac0 mac 100ef6b0 Forest::GetText(void)
    virtual const char* GetText();
    // win1.41 00539ad0 mac 100ef6e0 Forest::IsForest(void)
    virtual uint32_t IsForest();

    // Constructors

    // win1.41 00539bd0 mac 100f2620 Forest::Forest(MapCoords const&, unsigned long)
    Forest(const MapCoords* coords, uint32_t param_2);

    // Non-virtual methods

    // win1.41 0053a310 mac 100f16f0 Forest::AddTree(Tree*)
    void AddTree(Tree* tree);
    // win1.41 0053abf0 mac 100f0a00 Forest::GetForestCentreTree(void)
    Tree* GetForestCentreTree();
};

#endif /* BW1_DECOMP_FOREST_INCLUDED_H */
