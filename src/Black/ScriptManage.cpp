#include "WhiteColour.h"
#include "GameTimeConstants.h"
#include "ScriptManage.h"

#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Object.h"
#include "PuzzleGame.h"
#include "Script.h"

ScriptManage ScriptManage::VariableTable[SCRIPT_MANAGE_TABLE_SIZE];
uint32_t     ScriptManage::TotalReferences = 0;

void GScript::ClearVariableTable()
{
	for (uint32_t slot = 0; slot < SCRIPT_MANAGE_TABLE_SIZE; slot++)
	{
		ScriptManage::VariableTable[slot].Clear();
	}
}

void GScript::ValidateVariableTable() {}

uint32_t GScript::FindFreeScriptGameThingSlot()
{
	for (uint32_t tries = 0; tries < SCRIPT_MANAGE_TABLE_SIZE - 1; tries++, ScriptManage::NextFreeSlot++)
	{
		ScriptManage::NextFreeSlot &= SCRIPT_MANAGE_TABLE_SIZE - 1;
		if (ScriptManage::NextFreeSlot == SCRIPT_MANAGE_SLOT_NONE)
		{
			ScriptManage::NextFreeSlot = SCRIPT_MANAGE_SLOT_FIRST;
		}
		if (ScriptManage::VariableTable[ScriptManage::NextFreeSlot].IsClear())
		{
			return ScriptManage::NextFreeSlot;
		}
	}
	ScriptErrorMessage("Script offsets exceeded - Blimey!");
	return SCRIPT_MANAGE_SLOT_NONE;
}

unsigned long GScript::FindScriptGameThing(GameThingWithPos* thing)
{
	for (uint32_t slot = SCRIPT_MANAGE_SLOT_FIRST; slot < SCRIPT_MANAGE_TABLE_SIZE; slot++)
	{
		if (ScriptManage::VariableTable[slot].GetBase() == thing)
		{
			return slot;
		}
	}
	return SCRIPT_MANAGE_SLOT_NONE;
}

void GScript::IncrementScriptReference(unsigned long id)
{
	if (id != SCRIPT_MANAGE_SLOT_NONE)
	{
		SCRIPT_ASSERT(id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE, "Jonty - Out of script range");
		if (id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE)
		{
			ScriptManage::VariableTable[id].IncreaseReferenceCount();
		}
	}
}

void GScript::DecrementScriptReference(unsigned long id)
{
	if (id != SCRIPT_MANAGE_SLOT_NONE)
	{
		SCRIPT_ASSERT(id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE, "Jonty - Out of script range");
		if (id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE)
		{
			ScriptManage::VariableTable[id].DecreaseReferenceCount();
		}
	}
}

uint8_t GScript::GetScriptReferenceCount(unsigned long id)
{
	return ScriptManage::VariableTable[id].GetNoReferences();
}

void GScript::IncrementScriptReference(GameThingWithPos* thing)
{
	uint32_t id = FindScriptGameThing(thing);
	if (id == SCRIPT_MANAGE_SLOT_NONE)
	{
		ScriptErrorMessage("Jonty-No slot for thing! VBAD");
	}
	else
	{
		IncrementScriptReference(id);
	}
}

void GScript::DecrementScriptReference(GameThingWithPos* thing)
{
	uint32_t id = FindScriptGameThing(thing);
	if (id == SCRIPT_MANAGE_SLOT_NONE)
	{
		ScriptErrorMessage("Jonty-No slot for thing! VBAD");
	}
	else
	{
		DecrementScriptReference(id);
	}
}

uint32_t GScript::ReplaceScriptGameThing(GameThingWithPos* old_thing, GameThingWithPos* new_thing)
{
	SCRIPT_ASSERT(old_thing != NULL && new_thing != NULL, "Adding Null script thing");
	bool32_t valid = old_thing != NULL && new_thing != NULL;
	if (!valid)
	{
		return SCRIPT_MANAGE_SLOT_NONE;
	}
	uint32_t id = FindScriptGameThing(old_thing);
	SCRIPT_ASSERT(id != SCRIPT_MANAGE_SLOT_NONE, "Jonty-Script Thing without slot! VBAD");
	if (id != SCRIPT_MANAGE_SLOT_NONE)
	{
		ScriptManage::VariableTable[id].Set(new_thing);
	}
	return id;
}

uint32_t GScript::AddScriptGameThing(GameThingWithPos* thing, bool32_t created_by_script)
{
	if (thing == NULL)
	{
		ScriptErrorMessage("Adding Null script thing");
		return SCRIPT_MANAGE_SLOT_NONE;
	}
	if (created_by_script)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL && object->Game3dObject != NULL)
		{
			object->Game3dObject->SetDisappear(false);
		}
		thing->GameThing::Flags |= GAME_THING_FLAG_NAME_HIDDEN;
	}
	if (thing->IsInScript())
	{
		uint32_t id = FindScriptGameThing(thing);
		if (id != SCRIPT_MANAGE_SLOT_NONE)
		{
			return id;
		}
		ScriptErrorMessage("Jonty-Script Thing without slot!");
	}
	uint32_t slot = FindFreeScriptGameThingSlot();
	if (slot != SCRIPT_MANAGE_SLOT_NONE)
	{
		ScriptManage::VariableTable[slot].SetThing(thing, created_by_script);
	}
	return slot;
}

void GScript::RemoveScriptGameThing(uint32_t id)
{
	SCRIPT_ASSERT(id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE, "Jonty - Out of script range");
	if (id > SCRIPT_MANAGE_SLOT_NONE && id < SCRIPT_MANAGE_TABLE_SIZE)
	{
		GameThingWithPos* thing = GetScriptGameThing(id);
		SCRIPT_ASSERT(ScriptManage::VariableTable[id].GetNoReferences() >= 1,
		              "Script removing object with more than one reference left!");
		if (thing != NULL && thing->IsScriptContainer())
		{
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			DisbandId();
		}
	}
}

GameThingWithPos* GScript::GetScriptGameThing(uint32_t id)
{
	GameThingWithPos* thing = NULL;
	SCRIPT_ASSERT(id != SCRIPT_MANAGE_SLOT_NONE, "Jonty - Script looking for null object");
	SCRIPT_ASSERT(id < SCRIPT_MANAGE_TABLE_SIZE, "Jonty - Out of script range");
	if (id >= SCRIPT_MANAGE_TABLE_SIZE)
	{
		return NULL;
	}
	if (id != SCRIPT_MANAGE_SLOT_NONE)
	{
		thing = (GameThingWithPos*)ScriptManage::VariableTable[id].GetBase();
	}
	if (thing == NULL)
	{
		ScriptWarningMessage("Check-Deleted thing still accessed");
	}
	if (thing != NULL)
	{
		if (thing->IsAvailable())
		{
			SCRIPT_ASSERT(thing->IsInScript(), "Jonty-Thing should be in script! OH CALL ME!!!!");
			if (!(thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
			{
				thing->SetControlledByScript(GGame::g_game->script->LoopSetControlledByScript);
			}
		}
		else
		{
			thing = NULL;
		}
	}
	return thing;
}

uint32_t GScript::FindOrAddScriptGameThing(GameThingWithPos* thing)
{
	uint32_t freeSlot = SCRIPT_MANAGE_SLOT_NONE;
	for (uint32_t slot = SCRIPT_MANAGE_SLOT_FIRST; slot < SCRIPT_MANAGE_TABLE_SIZE; slot++)
	{
		if (ScriptManage::VariableTable[slot].GetBase() == thing)
		{
			return slot;
		}
		if (freeSlot == SCRIPT_MANAGE_SLOT_NONE && ScriptManage::VariableTable[slot].IsClear())
		{
			freeSlot = slot;
		}
	}
	if (freeSlot != SCRIPT_MANAGE_SLOT_NONE)
	{
		ScriptManage::VariableTable[freeSlot].SetThing(thing, false);
		return freeSlot;
	}
	return SCRIPT_MANAGE_SLOT_NONE;
}

void GScript::DeleteAllScriptCreatedGameThings()
{
	for (uint32_t slot = SCRIPT_MANAGE_SLOT_FIRST; slot < SCRIPT_MANAGE_TABLE_SIZE; slot++)
	{
		if (!ScriptManage::VariableTable[slot].IsClear())
		{
			GameThingWithPos* thing = (GameThingWithPos*)ScriptManage::VariableTable[slot].GetBase();
			if (thing != NULL && thing->IsAvailable())
			{
				if (!thing->IsInScript())
				{
					ScriptWarningMessage("Releasing reference to script thing not in script - Tell me");
				}
				if (ScriptManage::VariableTable[slot].CreatedByScript)
				{
					if (thing->IsPuzzleGame())
					{
						((PuzzleGame*)thing)->FullDelete(false);
					}
					else
					{
						thing->ToBeDeleted(false);
					}
				}
				else
				{
					if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
					{
						ReleaseControlFromScript(thing, slot, false);
					}
					thing->SetInScript(false);
					SCRIPT_ASSERT(!(thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT),
					              "Thing should be released! PANIC-GEt ME!");
				}
			}
			ScriptManage::VariableTable[slot].ClearThingOnly();
		}
	}
}

bool32_t GScript::IsCreatedByScript(unsigned long slot)
{
	SCRIPT_ASSERT(slot > SCRIPT_MANAGE_SLOT_NONE && slot < SCRIPT_MANAGE_TABLE_SIZE, "Jonty - Out of script range");
	bool32_t valid = slot > SCRIPT_MANAGE_SLOT_NONE && slot < SCRIPT_MANAGE_TABLE_SIZE;
	if (!valid)
	{
		return false;
	}
	return ScriptManage::VariableTable[slot].CreatedByScript;
}

void GScript::ProcessReferenceTable()
{
	for (uint32_t slot = SCRIPT_MANAGE_SLOT_FIRST; slot < SCRIPT_MANAGE_TABLE_SIZE; slot++)
	{
		if (!ScriptManage::VariableTable[slot].IsClear() && ScriptManage::VariableTable[slot].GetNoReferences() == 0)
		{
			GameThingWithPos* thing = (GameThingWithPos*)ScriptManage::VariableTable[slot].GetBase();
			if (thing != NULL && thing->IsAvailable())
			{
				SCRIPT_ASSERT(thing->IsInScript(), "Releasing reference to script thing not in script");
				ReleaseControlFromScript(thing, slot, false);
				thing->SetInScript(false);
				SCRIPT_ASSERT(!(thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT),
				              "Thing should be released! PANIC-GEt ME!");
			}
			ScriptManage::VariableTable[slot].Clear();
		}
	}
}

void GScript::ReleaseControlFromScript(GameThingWithPos* thing, unsigned long id, bool32_t keep_script_id)
{
	if (thing == NULL)
	{
		ScriptErrorMessage("No thing - BAD MAN!");
		return;
	}
	if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
	{
		if (thing->IsScriptContainer())
		{
			if (!keep_script_id)
			{
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				DisbandId();
				if (IsCreatedByScript(id))
				{
					thing->SetControlledByScript(false);
					thing->ToBeDeleted(false);
					return;
				}
			}
			else
			{
				ReleaseContainerContents(thing);
			}
		}
		thing->IsCreature();
		ReleaseScriptThingIntoTheGame(thing, id, keep_script_id);
	}
	else if (thing->IsScriptContainer())
	{
		DecreaseContainerContentsScriptReference(thing);
	}
}

void ScriptManage::IncreaseReferenceCount()
{
	if (NoReferences < SCRIPT_MANAGE_MAX_REFERENCES)
	{
		if (NoReferences == 0)
		{
			GameThingWithPos* thing = (GameThingWithPos*)GetBase();
			if (thing != NULL)
			{
				thing->SetInScript(true);
				thing->SetControlledByScript((thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) ||
				                             CreatedByScript);
			}
		}
		GameThingWithPos* thing = (GameThingWithPos*)GetBase();
		if (thing != NULL && !thing->IsInScript())
		{
			thing->SetInScript(true);
		}
		NoReferences++;
		TotalReferences++;
	}
}

void ScriptManage::DecreaseReferenceCount()
{
	if (NoReferences != 0)
	{
		NoReferences--;
		if (TotalReferences != 0)
		{
			TotalReferences--;
		}
	}
}

bool32_t ScriptManage::Save(GameOSFile& file)
{
	GameThing* thing = (GameThing*)GetBase();
	if (thing != NULL && !thing->IsAvailable())
	{
		thing = NULL;
	}
	file.WritePtr(thing);
	file.WriteSafe(CreatedByScript);
	file.WriteSafe(NoReferences);
	return true;
}

bool32_t ScriptManage::Load(GameOSFile& file)
{
	GameThing* thing;
	file.ReadPtr(&thing);
	SetThing(thing);
	file.ReadSafe(CreatedByScript);
	file.ReadSafe(NoReferences);
	if (thing == NULL && NoReferences != 0)
	{
		SetInvalid();
	}
	return true;
}

void ScriptManage::Clear()
{
	ClearThingOnly();
	NoReferences = 0;
}

void ScriptManage::ClearThingOnly()
{
	AddressOffset = 0;
	UniqueId = 0;
	CreatedByScript = false;
}

void ScriptManage::SetIds(uint32_t unique_id, uint32_t address_offset)
{
	CreatedByScript = false;
	UniqueId = unique_id;
	AddressOffset = address_offset;
	if (NoReferences != 0)
	{
		NoReferences = 0;
	}
}

void ScriptManage::SetThing(Base* thing)
{
	CreatedByScript = false;
	Set(thing);
	if (NoReferences != 0)
	{
		NoReferences = 0;
	}
}

void ScriptManage::SetThing(Base* thing, bool32_t created_by_script)
{
	CreatedByScript = created_by_script;
	Set(thing);
	if (NoReferences != 0)
	{
		NoReferences = 0;
	}
}
