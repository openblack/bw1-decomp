#ifndef BW1_DECOMP_ALIGNMENT_HISTORY_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_HISTORY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                      /* For enum RESOURCE_TYPE, enum DEATH_REASON, enum TOWN_DESIRE_INFO */
#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "PlayerName.h" /* For _PLAYER_NAME_COUNT */

// Forward Declares

class Abode;
class Creature;
class EffectValues;
class GPlayer;
class Object;
class Reaction;
class Town;
class Tree;
class Villager;
template <typename T> class EditorIconSlider;

class CAlignmentHistoryNode
{
public:
	enum ALIGNMENT_HISTORY_TYPE
	{
		ALIGNMENT_HISTORY_TYPE_TOWN = 0,
		ALIGNMENT_HISTORY_TYPE_EFFECT = 1,
		ALIGNMENT_HISTORY_TYPE_REACTION = 2,
		ALIGNMENT_HISTORY_TYPE_CREATURE = 3,
		ALIGNMENT_HISTORY_TYPE_SCRIPT = 4,
		ALIGNMENT_HISTORY_TYPE_UPDATE = 5,
		ALIGNMENT_HISTORY_TYPE_DEATH = 6,
		ALIGNMENT_HISTORY_TYPE_STORAGE = 7,
		ALIGNMENT_HISTORY_TYPE_TREE = 8,
		ALIGNMENT_HISTORY_TYPE_VILLAGER = 9,
		ALIGNMENT_HISTORY_TYPE_LAST = 10,
	};

	LHListNode<CAlignmentHistoryNode> next; /* 0x0 */
	ALIGNMENT_HISTORY_TYPE            Type;
	unsigned long                     GameTurn;
	float                             Change;
	float                             Alignment; /* 0x10 */
	// The thing's ALIGNMENT_TYPE, or the amount given to or taken from a storage pit.
	long Amount;
	// The TOWN_DESIRE_INFO, EFFECT_TYPE, REACTION, script challenge, DEATH_REASON or RESOURCE_TYPE.
	long Reason;

	// Constructors

	// BW1W120 00415500 BW1M119 010a3d90
	CAlignmentHistoryNode(GPlayer* player, Town* town, TOWN_DESIRE_INFO info, float change);
	// BW1W120 00415550 BW1M119 010a3c70
	CAlignmentHistoryNode(GPlayer* player, Object* object, EFFECT_TYPE type, float change);
	// BW1W120 004155b0 BW1M119 010a3b70
	CAlignmentHistoryNode(GPlayer* player, Reaction* reaction, float change);
	// BW1W120 00415600 BW1M119 010a3a90
	CAlignmentHistoryNode(GPlayer* player, Creature* creature, float change);
	// BW1W120 00415650 BW1M119 010a39a0
	CAlignmentHistoryNode(GPlayer* player, unsigned long script, float change);
	// BW1W120 004156a0 BW1M119 null
	CAlignmentHistoryNode(GPlayer* player, float change);
	// BW1W120 004156f0 BW1M119 010a38c0
	CAlignmentHistoryNode(GPlayer* player, Tree* tree, float change);
	// BW1W120 00415740 BW1M119 010a37e0
	CAlignmentHistoryNode(GPlayer* player, Villager* villager, float change);
	// BW1W120 00415790 BW1M119 null
	CAlignmentHistoryNode(GPlayer* player, Object* object, DEATH_REASON reason, float change);
	// BW1W120 004157f0 BW1M119 null
	CAlignmentHistoryNode(GPlayer* player, ALIGNMENT_HISTORY_TYPE type, float change);
	// BW1W120 00415840 BW1M119 010a3650
	CAlignmentHistoryNode(Abode* abode, RESOURCE_TYPE type, long amount, float change);

	// Non-virtual methods

	// BW1W120 004158b0 BW1M119 null
	void Draw(int x, int y);
};
static_assert(sizeof(CAlignmentHistoryNode) == 0x1c, "Data type is of wrong size");

class CAlignmentHistory
{
public:
	EditorIconSlider<float>*          Slider;                                                     /* 0x0 */
	LHListHead<CAlignmentHistoryNode> Nodes[_PLAYER_NAME_COUNT];                                  /* 0x4 */
	uint32_t                          field_0x44[_PLAYER_NAME_COUNT];                             /* 0x44 */
	float                             StartAlignment[_PLAYER_NAME_COUNT];                         /* 0x64 */
	bool                              ShowTotals;                                                 /* 0x84 */
	bool                              Recording;                                                  /* 0x85 */
	float                             ScrollPosition;                                             /* 0x88 */
	float                             Totals[CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_LAST]; /* 0x8c */
	unsigned long                     Counts[CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE_LAST]; /* 0xb4 */

	// Constructors

	// BW1W120 004147c0 BW1M119 010a6c00
	CAlignmentHistory();

	// Destructor

	// BW1W120 00414820 BW1M119 010a6a70
	~CAlignmentHistory();

	// Non-virtual methods

	// BW1W120 00414840 BW1M119 null
	void DrawTotals();
	// BW1W120 00414c60 BW1M119 null
	void DrawHistory();
	// BW1W120 00414d40 BW1M119 010a4b20
	void Add(Town* town, TOWN_DESIRE_INFO info, float change);
	// BW1W120 00414e10 BW1M119 010a4990
	void Add(Object* object, EffectValues* values, EFFECT_TYPE type, float change);
	// BW1W120 00414ee0 BW1M119 0109da80
	void Add(Reaction* reaction, float change);
	// BW1W120 00414fa0 BW1M119 010a4670
	void Add(Creature* creature, float change);
	// BW1W120 00415060 BW1M119 null
	void Add(GPlayer* player, Object* object, DEATH_REASON reason, float change);
	// BW1W120 00415110 BW1M119 010a4510
	void Add(GPlayer* player, unsigned long script, float change);
	// BW1W120 004151c0 BW1M119 null
	void Add(GPlayer* player, float change);
	// BW1W120 00415260 BW1M119 010a43b0
	void Add(GPlayer* player, Tree* tree, float change);
	// BW1W120 00415310 BW1M119 010a4250
	void Add(GPlayer* player, Villager* villager, float change);
	// BW1W120 004153c0 BW1M119 010a3ee0
	void Add(Abode* abode, RESOURCE_TYPE type, long amount, float change);
	// BW1W120 00415480 BW1M119 0109f9f0
	void AddTotal(GPlayer* player, CAlignmentHistoryNode::ALIGNMENT_HISTORY_TYPE type, float change);

	// Static data

	// BW1W120 00c4cd40
	static CAlignmentHistory History;
};
static_assert(sizeof(CAlignmentHistory) == 0xdc, "Data type is of wrong size");

#endif /* BW1_DECOMP_ALIGNMENT_HISTORY_INCLUDED_H */
