#include "ColourConstants.h" /* For White */
#include "Script.h"

#include <Lionhead/LH3DLib/development/DansLesNuages.h>
#include <Lionhead/LH3DLib/development/LH3DEye.h>  /* For enum LH3D_EYE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For HALF_PI_F */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/SuperVillager.h>
#include <Lionhead/LH3DLib/development/TemporaryShadow.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For UNICODE_sprintf */
#include <chlasm/ScriptEnumstwo.h>           /* For enum SCRIPT_JC_SPECIAL */

#include "AnimatedStatic.h"
#include "Bookmark.h"
#include "CreditText.h"
#include "Game.h"
#include "Game3DObject.h"
#include "HelpText.h"
#include "Intro.h"
#include "Landscape.h"
#include "ScriptDLL.h"

// BW1W120 00d1a2f8
extern bool32_t ForceMinimumNearClipping;
#ifdef VERSION_BW1WCI
// BW1WCI 00c64230 BW1MCI119 null
extern bool ShowInfluence;
#endif

static wchar_t TempTextBuffer[128];

void GScript::SetClippingDistance()
{
	g_scriptDLL->ULONG_POP();
	ForceMinimumNearClipping = g_scriptDLL->ULONG_POP() != 0;
}

void GScript::SetDrawLeash()
{
	GGame::g_game->script->DrawLeash = g_scriptDLL->ULONG_POP();
}

void GScript::SetDrawHighlight()
{
#ifdef VERSION_BW1WCI
	if (g_scriptDLL->ULONG_POP())
	{
		GGame::g_game->script->DrawHighlight = true;
	}
	else
	{
		GGame::g_game->script->DrawHighlight = false;
	}
#else
	GGame::g_game->script->DrawHighlight = g_scriptDLL->ULONG_POP();
#endif
}

#ifdef VERSION_BW1WCI
void GScript::SetDrawScoreboard()
{
	if (g_scriptDLL->ULONG_POP())
	{
		GGame::g_game->script->DrawScoreboard = true;
	}
	else
	{
		GGame::g_game->script->DrawScoreboard = false;
	}
}
#endif

void GScript::SetHighGFXDetail()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          high = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	Object* object = (Object*)thing;
	if (high)
	{
		object->Game3dObject->SetDontDraw(true);
		LH3DMesh*     mesh = ((LH3DAnimatedObject*)object->Game3dObject)->Meshes[LH3D_MESH_LOD_LEVEL_NEAR];
		LH3DMesh*     highMesh = NULL;
		LH3D_EYE_TYPE eyeType = LH3D_EYE_TYPE_NONE;
		if (mesh == LH3DMesh::GetPackedMesh(MSH_P_NORS_M_A_1))
		{
			eyeType = LH3D_EYE_TYPE_MAN;
			highMesh = LH3DMesh::CreateFromHD("Data\\MISC\\Intro\\nors_man.l3d", false);
		}
		else if (mesh == LH3DMesh::GetPackedMesh(MSH_P_NORS_F_A_1))
		{
			eyeType = LH3D_EYE_TYPE_WOMAN;
			highMesh = LH3DMesh::CreateFromHD("Data\\MISC\\Intro\\nors_woman.l3d", false);
		}
		else if (mesh == LH3DMesh::GetPackedMesh(MSH_P_BOY_WHITE_1))
		{
			eyeType = LH3D_EYE_TYPE_BOY;
			highMesh = LH3DMesh::CreateFromHD("Data\\MISC\\Intro\\nors_boy.l3d", false);
		}
		else if (mesh == LH3DMesh::GetPackedMesh(MSH_P_ANIMAL_TRAINER))
		{
			eyeType = LH3D_EYE_TYPE_WOMAN;
			highMesh = LH3DMesh::CreateFromHD("Data\\MISC\\sable.l3d", false);
		}
		SuperVillager* villager = SuperVillager::Create((LH3DAnimatedObject*)object->Game3dObject, eyeType, highMesh);
		if (villager != NULL)
		{
			villager->UserData = thing;
			villager->Shadow->Active = false;
		}
		GLandscape::DrawListRebuildCount = 1;
	}
	else
	{
		object->Game3dObject->SetDontDraw(false);
		GLandscape::DrawListRebuildCount = 1;
		SuperVillager::ReleaseThisOne((LH3DAnimatedObject*)object->Game3dObject);
	}
}

void GScript::SetOpenCloseState()
{
	uint32_t              id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos*     thing = GetScriptGameThing(id);
	AnimatedStatic::STATE state = (AnimatedStatic::STATE)g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	AnimatedStatic* animated = dynamic_cast<AnimatedStatic*>(thing);
	if (animated == NULL)
	{
		ScriptErrorMessage("Thing must be an animated static");
		return;
	}
	animated->SetAnimatedState(state);
}

void GScript::SetSunDraw()
{
	LH3DSky::g_b_we_are_inside_citadel = g_scriptDLL->ULONG_POP();
}

void GScript::PlayJCSpecial()
{
	switch (g_scriptDLL->ULONG_POP())
	{
	case SJC_CREATE_FIRE_BALL:
		Intro::Create(SJC_CREATE_FIRE_BALL);
		break;
	case SJC_CAMERA_FOLLOW_FIRE_BALL:
		Intro::Create(SJC_CAMERA_FOLLOW_FIRE_BALL);
		break;
	case SJC_CANCEL_CAMERA_FOLLOW_FIRE_BALL:
		Intro::Create(SJC_CANCEL_CAMERA_FOLLOW_FIRE_BALL);
		break;
	case SJC_DANS_LES_NUAGES:
		new (FILEPATH, FILELINE(153, 175)) DansLesNuages();
		break;
	case SJC_CREATE_HAND_WITH_KID:
		Intro::Create(SJC_CREATE_HAND_WITH_KID);
		break;
	case SJC_ACTIVATED_HAND:
		Intro::Create(SJC_ACTIVATED_HAND);
		break;
	case SJC_IL_ETAIT_UN_PETIT_NAVIRE:
		Intro::Create(SJC_IL_ETAIT_UN_PETIT_NAVIRE);
		break;
#ifdef VERSION_BW1WCI
	case SJC_CI_BOAT_ARRIVAL:
		Intro::Create(SJC_CI_BOAT_ARRIVAL);
		break;
	case SJC_CI_BOAT_LAUNCH:
		if (PetitNavire::Current != NULL)
		{
			delete PetitNavire::Current;
			PetitNavire::Current = NULL;
		}
		new (FILEPATH, 207) PetitNavire(PETIT_NAVIRE_TYPE_BOAT_LAUNCH);
		break;
	case SJC_CI_BOAT_CRASH:
		if (PetitNavire::Current != NULL)
		{
			delete PetitNavire::Current;
			PetitNavire::Current = NULL;
		}
		new (FILEPATH, 223) PetitNavire(PETIT_NAVIRE_TYPE_BOAT_CRASH);
		break;
	case SJC_CI_BOAT_CRASH2:
		if (PetitNavire::Current != NULL)
		{
			delete PetitNavire::Current;
			PetitNavire::Current = NULL;
		}
		new (FILEPATH, 232) PetitNavire(PETIT_NAVIRE_TYPE_BOAT_CRASH2);
		break;
	case SJC_CI_BOAT_ARRIVAL_END:
	case SJC_CI_BOAT_LAUNCH_END:
	case SJC_CI_BOAT_CRASH_END:
		if (PetitNavire::Current != NULL)
		{
			delete PetitNavire::Current;
		}
		break;
	case SJC_END_EYE:
		if (AndyEye::Current != NULL)
		{
			AndyEye::Current->Release();
			AndyEye::Current = NULL;
		}
		break;
	case SJC_START_EYE:
		if (AndyEye::Current != NULL)
		{
			AndyEye::Current->Release();
			AndyEye::Current = NULL;
		}
		AndyEye::Current = new (FILEPATH, 256) AndyEye();
		break;
	case SJC_ZOOM_EYE:
		if (AndyEye::Current != NULL)
		{
			AndyEye::Current->Zoom = true;
		}
		break;
#endif
	case SJC_SWITCH_ON_BOOKMARK:
		Bookmark::ShowBookmarks = true;
		break;
	case SJC_SWITCH_OFF_BOOKMARK:
		Bookmark::ShowBookmarks = false;
		break;
#ifdef VERSION_BW1WCI
	case SJC_SWITCH_ON_INFLUENCE:
		ShowInfluence = true;
		break;
	case SJC_SWITCH_OFF_INFLUENCE:
		ShowInfluence = false;
		break;
#endif
	}
}

void GScript::IsPlayingJCSpecial()
{
	float    special = g_scriptDLL->FLOAT_POP();
	bool32_t playing = true;
	switch ((int)special)
	{
	case SJC_START_HAND_WITH_BOY:
		playing = Intro::HandAnimFinished;
		break;
	}
	g_scriptDLL->PUSH((void*)playing, VMType_BOOLEAN);
}

void GScript::ThingJCSpecial()
{
#ifdef VERSION_BW1WCI
	float totemIndex = g_scriptDLL->FLOAT_POP();
#endif
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          special = g_scriptDLL->ULONG_POP();
	bool32_t          value = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SuperVillager* villager = SuperVillager::g_first;
	bool32_t       found = false;
	while (villager != NULL && !found)
	{
		if (villager->UserData == thing)
		{
			found = true;
		}
		else
		{
			villager = villager->Next;
		}
	}
#ifdef VERSION_BW1WCI
	if (special != SJC_RAISE_TOTEM && !found && special != SJC_ALWAYS_VISIBLE)
#else
	if (!found && special != SJC_ALWAYS_VISIBLE)
#endif
	{
		return;
	}
	Object* object = (Object*)thing;
	switch (special)
	{
	case SJC_I_AM_THE_LITTLE_BOY:
		villager->AtIntro = true;
		break;
	case SJC_BLEND_ANGLE:
		if (value)
		{
			villager->NoSmoothing = false;
		}
		else
		{
			villager->NoSmoothing = true;
		}
		break;
	case SJC_PREPARE_ROTATE180:
		object->SetYAngle(-object->GetYAngle());
		villager->NoSmoothing = true;
		break;
	case SJC_PREPARE_TURN_LEFT:
		object->SetYAngle(HALF_PI_F + object->GetYAngle());
		villager->NoSmoothing = true;
		break;
	case SJC_PREPARE_TURN_RIGHT:
		object->SetYAngle(object->GetYAngle() - HALF_PI_F);
		villager->NoSmoothing = true;
		break;
	case SJC_CLEAN_INTRO:
		Intro::ReleaseAll();
		break;
#ifdef VERSION_BW1WCI
	case SJC_ALWAYS_VISIBLE:
		if (object->Game3dObject != NULL)
		{
			object->Game3dObject->SetDisappear(false);
			thing->GameThing::Flags |= GAME_THING_FLAG_REAPPEARED;
		}
		break;
	case SJC_RAISE_TOTEM:
		object->RaiseTotem((long)totemIndex);
		break;
#else
	case SJC_ALWAYS_VISIBLE:
		object->Game3dObject->SetDisappear(false);
		break;
#endif
	}
}

void GScript::DrawTextA()
{
	float    fadeTime = g_scriptDLL->FLOAT_POP();
	float    size = g_scriptDLL->FLOAT_POP();
	float    height = g_scriptDLL->FLOAT_POP();
	float    width = g_scriptDLL->FLOAT_POP();
	float    y = g_scriptDLL->FLOAT_POP();
	float    x = g_scriptDLL->FLOAT_POP();
	wchar_t* text = HelpTextDataBase::HelpTextDatabase.GetHelpText(g_scriptDLL->ULONG_POP());

	CreditTextItem* item = new (FILEPATH, FILELINE(292, 410)) CreditTextItem();
	item->Set(text, x, y, width, height, size, fadeTime);
}

void GScript::DrawTempText()
{
	float      fadeTime = g_scriptDLL->FLOAT_POP();
	float      size = g_scriptDLL->FLOAT_POP();
	float      height = g_scriptDLL->FLOAT_POP();
	float      width = g_scriptDLL->FLOAT_POP();
	float      y = g_scriptDLL->FLOAT_POP();
	float      x = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	UNICODE_sprintf(TempTextBuffer, L"%s", CHAR2WCHAR(dll->STRING(dll->ULONG_POP())));

	CreditTextItem* item = new (FILEPATH, FILELINE(310, 428)) CreditTextItem();
	item->Set(TempTextBuffer, x, y, width, height, size, fadeTime);
}

void GScript::SetDrawTextColour()
{
	float blue = g_scriptDLL->FLOAT_POP();
	float green = g_scriptDLL->FLOAT_POP();
	float red = g_scriptDLL->FLOAT_POP();
	CreditTextItem::NextColor = LH3DColor((uint8_t)red, (uint8_t)green, (uint8_t)blue);
}

void GScript::FadeAllDrawText()
{
	float fadeTime = g_scriptDLL->FLOAT_POP();
	for (CreditTextItem* item = CreditTextItem::FirstItem; item != NULL; item = item->Next)
	{
		item->Reset(fadeTime);
	}
}

void GScript::SetClippingWindow()
{
	float fadeTime = g_scriptDLL->FLOAT_POP();
	float height = g_scriptDLL->FLOAT_POP();
	float width = g_scriptDLL->FLOAT_POP();
	float y = g_scriptDLL->FLOAT_POP();
	float x = g_scriptDLL->FLOAT_POP();
	CreditTextItem::SetClip(x, y, width, height, fadeTime);
}

void GScript::ClearClippingWindow()
{
	float fadeTime = g_scriptDLL->FLOAT_POP();
	CreditTextItem::ResetClip(fadeTime);
}

void GScript::SetHandDemoKeys() {}
