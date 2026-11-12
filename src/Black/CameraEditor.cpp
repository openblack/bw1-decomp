#include "CameraEditor.h"

#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h> /* For EighthScale */
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>  /* For PI_OVER_2 */

#include <stdio.h>   /* For sprintf */
#include <windows.h> /* For HINSTANCE */

#include <Lionhead/LH3DLib/development/Font.h>
#include <Lionhead/LH3DLib/development/LH3DLine.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DMem.h>
#include <Lionhead/LH3DLib/development/LH3DMenu.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_camera, g_b_grosse_merde */
#include <Lionhead/LH3DLib/development/LH3DVideo.h>
#include <Lionhead/LHFile/ver3.0/LHFile.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

#include "ControlHand.h"
#include "Game.h"
#include "Interface.h"
#include "ScriptedCamera.h"

#ifndef INVALID_FILE_ATTRIBUTES
#define INVALID_FILE_ATTRIBUTES ((DWORD) - 1)
#endif

const float CAMERA_EDITOR_LARGE_STEP = 10.0f;

GCameraEditor* GCameraEditor::Instance;

static GCameraEditor::ScriptInfo* Scripts;
static GCameraEditor::ScriptInfo* CurrentScript;
static GCameraEditor::CameraInfo* CurrentCamera;
static GCameraEditor::TName*      ScriptNames;
static GCameraEditor::TName*      CameraNames;
static int                        NumScripts;
static LHFile*                    SegFile;
static CAMERA_EDITOR_AXIS         Axis;
static bool32_t                   Dirty;
static bool32_t                   TryMe;
static bool32_t                   InsertRequested;
static int                        KeyDelay;
static int                        BlinkTime;
static bool32_t                   EditFocus = true;
static float                      BlinkScale = 1.0f;
static char                       TimeText[256];
static char                       SpeedText[36];

static inline bool32_t IsDigit(char c)
{
	return c <= '9' && c >= '0';
}

static inline int GetDigit(char c)
{
	if (IsDigit(c))
	{
		return c - '0';
	}
	return -1;
}

static inline bool32_t IsAllDigits(char* text)
{
	for (; *text; text++)
	{
		if (!IsDigit(*text))
		{
			return false;
		}
	}
	return true;
}

static inline int ParseInt(char* text)
{
	int value;
	if (IsDigit(*text))
	{
		value = GCameraEditor::ParseNumber(text + 1, GetDigit(*text));
	}
	else
	{
		value = -1;
	}
	return value;
}

static inline void RebuildScriptNames()
{
	if (ScriptNames)
	{
		LH3DMem::Free(ScriptNames);
		ScriptNames = NULL;
	}
	if (NumScripts)
	{
		ScriptNames = (GCameraEditor::TName*)LH3DMem::AllocClear(NumScripts * sizeof(GCameraEditor::TName));
		GCameraEditor::TName* name = ScriptNames;
		for (GCameraEditor::ScriptInfo* script = Scripts; script; script = script->Next)
		{
			*name = script->Name;
			name++;
		}
	}
}

static inline void RebuildCameraNames()
{
	if (CameraNames)
	{
		LH3DMem::Free(CameraNames);
		CameraNames = NULL;
	}
	if (CurrentScript)
	{
		GCameraEditor::TName* name =
			(GCameraEditor::TName*)LH3DMem::AllocClear(CurrentScript->NumCameras * sizeof(GCameraEditor::TName));
		CameraNames = name;
		for (GCameraEditor::CameraInfo* camera = CurrentScript->Cameras; camera; camera = camera->Next)
		{
			*name = camera->Name;
			name++;
		}
	}
}

static inline void DeleteCamera(GCameraEditor::CameraInfo* camera)
{
	Dirty = true;
	GCameraEditor::CameraInfo::BubbleSort();
	RebuildCameraNames();
	if (camera->Track)
	{
		camera->Track->RemoveCamera(camera);
		camera->Track = NULL;
	}
	LH3DMem::Free(camera);
}

static inline GCameraEditor::InfoTrack* CreateTrack(int id)
{
	int index = id;
	if (id < 0)
	{
		index = 0;
	}
	else if (id >= CAMERA_EDITOR_MAX_TRACKS)
	{
		index = CAMERA_EDITOR_MAX_TRACKS - 1;
	}
	GCameraEditor::InfoTrack* track = (GCameraEditor::InfoTrack*)LH3DMem::AllocClear(sizeof(GCameraEditor::InfoTrack));
	track->Id = index;
	track->Next = CurrentScript->Tracks;
	track->Speed = CurrentScript->Speeds[index];
	CurrentScript->Tracks = track;
	return track;
}

inline GCameraEditor::ScriptInfo::ScriptInfo(char* name)
{
	Name = *(TName*)name;
	Name.Name[CAMERA_EDITOR_NAME_LENGTH - 1] = 0;
	Cameras = NULL;
	Tracks = NULL;
	Next = Scripts;
	Scripts = this;
	NumCameras = 0;
	NumScripts++;
	for (int i = 0; i < CAMERA_EDITOR_MAX_TRACKS; i++)
	{
		Speeds[i] = -1.0f;
	}
	for (int j = 0; j < CAMERA_EDITOR_MAX_TRACKS; j++)
	{
		Times[j] = 0;
	}
	BubbleSort();
	RebuildScriptNames();
	Dirty = true;
}

inline GCameraEditor::ScriptInfo::~ScriptInfo()
{
	while (Cameras)
	{
		CameraInfo* camera = Cameras;
		Cameras = camera->Next;
		DeleteCamera(camera);
	}
	Cameras = NULL;
	InfoTrack* track = Tracks;
	while (track)
	{
		InfoTrack* current = track;
		track = track->Next;
		if (current->PositionWay)
		{
			current->PositionWay->Release();
			current->PositionWay = NULL;
		}
		if (current->FocusWay)
		{
			current->FocusWay->Release();
			current->FocusWay = NULL;
		}
		LH3DMem::Free(current);
	}
	Tracks = NULL;
	NumScripts--;
	BubbleSort();
	RebuildScriptNames();
	Dirty = true;
}

inline GCameraEditor::GCameraEditor()
{
	InputEnabled = true;
	MousePressed = false;
	Mode = CAMERA_EDITOR_MODE_NORMAL;
	ListCount = 0;
	ListOffset = 0;
	Selected = -1;
	Instance = this;
	Init();
}

Prss* GCameraEditor::ProcessTurn()
{
	if (!Active)
	{
		Destroy();
		return NULL;
	}
	return this;
}

void GCameraEditor::Display()
{
	KeyDelay -= GGame::g_game->GetCameraTimeInc();
	if (KeyDelay < 0)
	{
		KeyDelay = 0;
	}
	if (LHSys::TheSystem.keyboard.CurrentKey == KB_SPACE && KeyDelay == 0)
	{
		InsertRequested = true;
		KeyDelay = CAMERA_EDITOR_KEY_DELAY;
	}
	BlinkTime += GGame::g_game->GetCameraTimeInc();
	BlinkScale = BlinkTime / 1000.0f;
	if (BlinkTime > CAMERA_EDITOR_BLINK_CYCLE)
	{
		BlinkTime = 0;
	}
	LH3DVideo::Col* blink = &green;
	if (BlinkTime < CAMERA_EDITOR_BLINK_HALF)
	{
		blink = &grey;
	}
	LH3DVideo::Col* scriptColour = &white;
	if (NumScripts == 0)
	{
		scriptColour = &red;
	}
	if (CurrentScript)
	{
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &grey, CurrentScript->Name.Name, CAMERA_EDITOR_BUTTON_NONE);
	}
	else
	{
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &red, "No Script selected", CAMERA_EDITOR_BUTTON_NONE);
	}
	if (CurrentCamera)
	{
		LH3DVideo::Col* colour = blink;
		if (Mode == CAMERA_EDITOR_MODE_EDIT_CAMERA)
		{
			colour = &red;
			g_b_grosse_merde = GROSSE_MERDE_POSITION_AND_FOCUS;
		}
		else
		{
			g_b_grosse_merde = GROSSE_MERDE_OFF;
		}
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, colour, CurrentCamera->Name.Name,
		         CAMERA_EDITOR_BUTTON_EDIT_CAMERA);
		CurrentCamera->UpdateOverride();
	}
	else
	{
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &red, "No Camera selected", CAMERA_EDITOR_BUTTON_NONE);
	}
	if (Mode == CAMERA_EDITOR_MODE_EDIT_CAMERA)
	{
		if (CurrentCamera->Track)
		{
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_LETTER, 0, false, &white, " << ", CAMERA_EDITOR_BUTTON_PREVIOUS_TRACK);
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_LETTER, 0, false, &white, " >> ", CAMERA_EDITOR_BUTTON_NEXT_TRACK);
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, TryMe ? &red : &white, "Try Me",
			         CAMERA_EDITOR_BUTTON_TRY_ME);
			int speed = (int)CurrentCamera->Camera.Speed;
			sprintf(SpeedText, "SPD: %d", speed);
			if (speed == -1)
			{
				if (CurrentCamera->Track->Speed == -1.0f)
				{
					speed = CAMERA_EDITOR_DEFAULT_SPEED;
				}
				else
				{
					speed = (int)CurrentCamera->Track->Speed;
				}
				sprintf(SpeedText, "SPD: D(%d)", speed);
			}
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, SpeedText, CAMERA_EDITOR_BUTTON_SPEED);
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_SHORT, 0, false, &white, "INSERT", CAMERA_EDITOR_BUTTON_INSERT);
		}
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_SHORT, 0, false, Dirty ? blink : &white, "Save", CAMERA_EDITOR_BUTTON_SAVE);
		BMan_Line();
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, EditFocus ? blink : &white, "TARGET",
		         CAMERA_EDITOR_BUTTON_TARGET);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, !EditFocus ? blink : &white, "POSITION",
		         CAMERA_EDITOR_BUTTON_POSITION);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_LETTER, 0, false, Axis == CAMERA_EDITOR_AXIS_X ? blink : &white, "X",
		         CAMERA_EDITOR_BUTTON_AXIS_X);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_LETTER, 0, false, Axis == CAMERA_EDITOR_AXIS_Y ? blink : &white, "Y",
		         CAMERA_EDITOR_BUTTON_AXIS_Y);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_LETTER, 0, false, Axis == CAMERA_EDITOR_AXIS_Z ? blink : &white, "Z",
		         CAMERA_EDITOR_BUTTON_AXIS_Z);
		BMan_Line();
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "+ 0.1", CAMERA_EDITOR_BUTTON_UP_TENTH);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "+   1", CAMERA_EDITOR_BUTTON_UP_ONE);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "+  10", CAMERA_EDITOR_BUTTON_UP_TEN);
		BMan_Line();
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "- 0.1", CAMERA_EDITOR_BUTTON_DOWN_TENTH);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "-   1", CAMERA_EDITOR_BUTTON_DOWN_ONE);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_STEP, 0, false, &white, "-  10", CAMERA_EDITOR_BUTTON_DOWN_TEN);
	}
	else
	{
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_SHORT, 0, false, Dirty ? blink : &white, "Save", CAMERA_EDITOR_BUTTON_SAVE);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_SCRIPT, 0, false, &white, "Create Script",
		         CAMERA_EDITOR_BUTTON_CREATE_SCRIPT);
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_SCRIPT, 0, false, scriptColour, "Choose Script",
		         CAMERA_EDITOR_BUTTON_CHOOSE_SCRIPT);
		if (CurrentScript)
		{
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_SCRIPT, 0, false, &white, "Delete Script",
			         CAMERA_EDITOR_BUTTON_DELETE_SCRIPT);
		}
		BMan_Line();
		if (CurrentScript)
		{
			if (CurrentScript->NumCameras == 0)
			{
				scriptColour = &red;
			}
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &white, "Create Camera",
			         CAMERA_EDITOR_BUTTON_CREATE_CAMERA);
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, scriptColour, "Choose Camera",
			         CAMERA_EDITOR_BUTTON_CHOOSE_CAMERA);
			if (CurrentCamera)
			{
				BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &white, "Delete Camera",
				         CAMERA_EDITOR_BUTTON_DELETE_CAMERA);
			}
		}
		else
		{
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &red, "Create Camera", CAMERA_EDITOR_BUTTON_NONE);
			BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &red, "Choose Camera", CAMERA_EDITOR_BUTTON_NONE);
		}
	}
	if (CurrentCamera && CurrentCamera->Track)
	{
		sprintf(TimeText, "Time:%5d, (%5d)", CurrentCamera->Track->Time,
		        CurrentScript->Times[CurrentCamera->Track->Id]);
		BMan_Line();
		BMan_Btn(this, CAMERA_EDITOR_WIDTH_NAME, 0, false, &white, TimeText, CAMERA_EDITOR_BUTTON_NONE);
	}
	DisplaySubProcess();
	if (InsertRequested && CurrentCamera && CurrentCamera->Track)
	{
		InsertRequested = false;
		char name[0x100];
		sprintf(name, "%d", CurrentCamera->Track->Id);
		AddCamera(name, CurrentScript, NULL);
	}
}

void GCameraEditor::StringFunction(long id, char* text, int data)
{
	switch (id)
	{
	case CAMERA_EDITOR_BUTTON_SPEED:
		if (IsAllDigits(text))
		{
			char name[0x40];
			name[0] = '?';
			strcpy(name + 1, text);
			AddCamera(name, CurrentScript, NULL);
		}
		break;
	case CAMERA_EDITOR_BUTTON_CREATE_CAMERA:
		if (text[0])
		{
			AddCamera(text, CurrentScript, NULL);
		}
		else
		{
			AddCamera("default", CurrentScript, NULL);
		}
		break;
	case CAMERA_EDITOR_BUTTON_CREATE_SCRIPT:
		ScriptInfo* script;
		if (text[0])
		{
			for (ScriptInfo* existing = Scripts; existing; existing = existing->Next)
			{
				if (strcmp(existing->Name.Name, text) == 0)
				{
					return;
				}
			}
			script = NEW(242) ScriptInfo(text);
		}
		else
		{
			script = NEW(244) ScriptInfo("default");
		}
		CurrentScript = script;
		CurrentCamera = NULL;
		CameraInfo::BubbleSort();
		RebuildCameraNames();
		break;
	}
}

void GCameraEditor::ClickFunction(int id, int button, int data)
{
	switch (id)
	{
	case CAMERA_EDITOR_BUTTON_DELETE_SCRIPT:
		if (CurrentScript)
		{
			ScriptInfo* script = Scripts;
			ScriptInfo* previous = NULL;
			if (script)
			{
				while (true)
				{
					if (script == CurrentScript)
					{
						if (previous)
						{
							previous->Next = script->Next;
						}
						else
						{
							Scripts = script->Next;
						}
						delete script;
						break;
					}
					previous = script;
					script = script->Next;
					if (script == NULL)
					{
						break;
					}
				}
			}
			CurrentScript = NULL;
			CurrentCamera = NULL;
		}
		break;
	case CAMERA_EDITOR_BUTTON_DELETE_CAMERA:
		if (CurrentScript && CurrentCamera)
		{
			CameraInfo* camera = CurrentScript->Cameras;
			CameraInfo* previous = NULL;
			if (camera)
			{
				while (true)
				{
					if (camera == CurrentCamera)
					{
						if (previous)
						{
							previous->Next = camera->Next;
						}
						else
						{
							CurrentScript->Cameras = camera->Next;
						}
						DeleteCamera(camera);
						CurrentScript->NumCameras--;
						break;
					}
					previous = camera;
					camera = camera->Next;
					if (camera == NULL)
					{
						break;
					}
				}
			}
			CurrentCamera = NULL;
		}
		break;
	case CAMERA_EDITOR_BUTTON_CHOOSE_SCRIPT:
		if (NumScripts)
		{
			InputEnabled = false;
			ListOffset = 0;
			ListCount = 0;
			MousePressed = false;
			Mode = CAMERA_EDITOR_MODE_CHOOSE_SCRIPT;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
		}
		break;
	case CAMERA_EDITOR_BUTTON_CHOOSE_CAMERA:
		if (NumScripts)
		{
			InputEnabled = false;
			ListOffset = 0;
			ListCount = 0;
			MousePressed = false;
			Mode = CAMERA_EDITOR_MODE_CHOOSE_CAMERA;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
			LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
		}
		break;
	case CAMERA_EDITOR_BUTTON_CREATE_SCRIPT:
		input_message(this, CAMERA_EDITOR_BUTTON_CREATE_SCRIPT, "Enter Script Name", CAMERA_EDITOR_INPUT_LENGTH, "", 0);
		break;
	case CAMERA_EDITOR_BUTTON_CREATE_CAMERA:
		input_message(this, CAMERA_EDITOR_BUTTON_CREATE_CAMERA, "Enter Camera Name", CAMERA_EDITOR_INPUT_LENGTH, "", 0);
		break;
	case CAMERA_EDITOR_BUTTON_SPEED:
		input_message(this, CAMERA_EDITOR_BUTTON_SPEED, "Enter Speed", CAMERA_EDITOR_INPUT_LENGTH, "", 0);
		break;
	case CAMERA_EDITOR_BUTTON_INSERT: {
		bool32_t   applySpeed = true;
		int        next;
		int        speed = -1;
		bool32_t   interpolated = false;
		LHPoint    savedFocus;
		LHPoint    savedPosition;
		InfoTrack* track = CurrentCamera->Track;
		if (track)
		{
			int index = CurrentCamera->GetIndex();
			savedPosition = LH3DTech::g_camera.pos;
			savedFocus = LH3DTech::g_camera.foc;
			next = index + 1;
			if (next < track->NumCameras)
			{
				interpolated = true;
				if (track->Cameras[index]->Camera.Speed == -1.0f)
				{
					applySpeed = false;
				}
				if (track->Cameras[next]->Camera.Speed == -1.0f)
				{
					applySpeed = false;
				}
				speed = (track->Cameras[next]->Camera.Speed + track->Cameras[index]->Camera.Speed) * 0.5f;
				LHPoint middle;
				middle = track->Cameras[index]->Camera.Position;
				middle += track->Cameras[next]->Camera.Position;
				middle *= 0.5f;
				LH3DTech::g_camera.pos.Set(middle);
				middle = track->Cameras[index]->Camera.Focus;
				middle += track->Cameras[next]->Camera.Focus;
				middle *= 0.5f;
				LH3DTech::g_camera.foc.Set(middle);
			}
			track->Renumber(index);
			char trackName[4];
			if (track->Id > 9)
			{
				sprintf(trackName, "%d", track->Id);
			}
			else
			{
				sprintf(trackName, "0%d", track->Id);
			}
			char name[0x40];
			if (next < 10)
			{
				sprintf(name, "T%s_00%d", trackName, next);
			}
			else if (next < 100)
			{
				sprintf(name, "T%s_0%d", trackName, next);
			}
			else
			{
				sprintf(name, "T%s_%d", trackName, next);
			}
			AddCamera(name, CurrentScript, NULL);
			if (interpolated && applySpeed)
			{
				char text[0x20];
				sprintf(text, "?%d", speed);
				AddCamera(text, CurrentScript, NULL);
			}
			LH3DTech::g_camera.pos = savedPosition;
			LH3DTech::g_camera.foc = savedFocus;
		}
		break;
	}
	case CAMERA_EDITOR_BUTTON_SAVE:
		Save();
		break;
	case CAMERA_EDITOR_BUTTON_TRY_ME:
		TryMe = 1 - TryMe;
		break;
	case CAMERA_EDITOR_BUTTON_PREVIOUS_TRACK: {
		InfoTrack* current = CurrentCamera->Track;
		int        frames = current->PositionRunning->way->NumFrames;
		current->Time += frames / -CAMERA_EDITOR_TIME_STEPS;
		while (current->Time < 0)
		{
			current->Time += frames;
		}
		CameraInfo* camera = CurrentCamera;
		InfoTrack*  cameraTrack = camera->Track;
		int         found = -1;
		for (int i = 0; i < cameraTrack->NumCameras; i++)
		{
			if (cameraTrack->Cameras[i] == camera)
			{
				found = i;
			}
		}
		if (found > 0)
		{
			CurrentCamera = cameraTrack->Cameras[found - 1];
		}
		break;
	}
	case CAMERA_EDITOR_BUTTON_NEXT_TRACK: {
		InfoTrack* current = CurrentCamera->Track;
		int        frames = current->PositionRunning->way->NumFrames;
		current->Time += frames / CAMERA_EDITOR_TIME_STEPS;
		while (current->Time > frames)
		{
			current->Time -= frames;
		}
		CameraInfo* camera = CurrentCamera;
		InfoTrack*  cameraTrack = camera->Track;
		int         found = -1;
		for (int i = 0; i < cameraTrack->NumCameras; i++)
		{
			if (cameraTrack->Cameras[i] == camera)
			{
				found = i;
			}
		}
		if (found < cameraTrack->NumCameras - 1)
		{
			CurrentCamera = cameraTrack->Cameras[found + 1];
		}
		break;
	}
	case CAMERA_EDITOR_BUTTON_EDIT_CAMERA:
		Mode = Mode == CAMERA_EDITOR_MODE_EDIT_CAMERA ? CAMERA_EDITOR_MODE_NORMAL : CAMERA_EDITOR_MODE_EDIT_CAMERA;
		break;
	case CAMERA_EDITOR_BUTTON_UP_TENTH:
		AdjustCamera(0.1f);
		break;
	case CAMERA_EDITOR_BUTTON_UP_ONE:
		AdjustCamera(1.0f);
		break;
	case CAMERA_EDITOR_BUTTON_UP_TEN:
		AdjustCamera(CAMERA_EDITOR_LARGE_STEP);
		break;
	case CAMERA_EDITOR_BUTTON_DOWN_TENTH:
		AdjustCamera(-0.1f);
		break;
	case CAMERA_EDITOR_BUTTON_DOWN_ONE:
		AdjustCamera(-1.0f);
		break;
	case CAMERA_EDITOR_BUTTON_DOWN_TEN:
		AdjustCamera(-CAMERA_EDITOR_LARGE_STEP);
		break;
	case CAMERA_EDITOR_BUTTON_AXIS_X:
		Axis = CAMERA_EDITOR_AXIS_X;
		break;
	case CAMERA_EDITOR_BUTTON_AXIS_Y:
		Axis = CAMERA_EDITOR_AXIS_Y;
		break;
	case CAMERA_EDITOR_BUTTON_AXIS_Z:
		Axis = CAMERA_EDITOR_AXIS_Z;
		break;
	case CAMERA_EDITOR_BUTTON_TARGET:
		EditFocus = true;
		break;
	case CAMERA_EDITOR_BUTTON_POSITION:
		EditFocus = false;
		break;
	}
}

GCameraEditor* GCameraEditor::Create(Prss* parent)
{
	if (Instance == NULL)
	{
		GGame::g_game->MyInterface()->GetRenderHand()->SetEditorControl(true);
		Instance = NEW(598) GCameraEditor;
		GCameraEditor* editor = Instance;
		editor->Parent = parent;
		editor->Sub = NULL;
		editor->Active = true;
		setfocus(Instance);
	}
	return Instance;
}

void GCameraEditor::ProcessInputs()
{
	if (Instance->InputEnabled)
	{
		if (LHSys::TheSystem.keyboard.CurrentKey)
		{
			EditorProcessKey((LH_KEY)LHSys::TheSystem.keyboard.CurrentKey, LHSys::TheSystem.keyboard.ModifierFlags);
			LHSys::TheSystem.keyboard.CurrentKey = 0;
		}
		EditorProcessInputs();
	}
}

void GCameraEditor::FinalDraw()
{
	if (Instance && !Instance->InputEnabled)
	{
		switch (Instance->Mode)
		{
		case 8:
			GetSelected(CurrentScript->NumCameras, CameraNames);
			if (Instance->Selected != -1)
			{
				CurrentCamera = GetCamera(Instance->Selected);
			}
			break;
		case 5:
			GetSelected(NumScripts, ScriptNames);
			if (Instance->Selected != -1)
			{
				ScriptInfo* previous = CurrentScript;
				CurrentScript = GetScript(Instance->Selected);
				if (previous != CurrentScript)
				{
					CurrentCamera = NULL;
					CameraInfo::BubbleSort();
					RebuildCameraNames();
				}
			}
			break;
		}
	}
}

void GCameraEditor::GetSelected(long count, TName* names)
{
	Instance->ListCount = count;
	bool32_t clicked = false;
	bool32_t canScrollUp = false;
	bool32_t canScrollDown = false;
	if (Instance->ListCount >= CAMERA_EDITOR_LIST_PAGE)
	{
		canScrollDown = true;
	}
	if (Instance->ListOffset != 0)
	{
		canScrollUp = true;
	}
	int  width = Fonts[0].Length("0") * CAMERA_EDITOR_LIST_COLUMNS * CAMERA_EDITOR_LIST_COLUMN_CHARS +
	             CAMERA_EDITOR_LIST_PAD_WIDTH;
	int  height = Fonts[0].Height * CAMERA_EDITOR_LIST_ROWS + CAMERA_EDITOR_LIST_PAD_HEIGHT;
	long white = LH3DVideo::RGB16(255, 255, 255);
	long black = LH3DVideo::RGB16(0, 0, 0);
	int  right = width + CAMERA_EDITOR_LIST_X;
	int  bottom = height + CAMERA_EDITOR_LIST_Y;
	LH3DVideo::RectFill(CAMERA_EDITOR_LIST_X, CAMERA_EDITOR_LIST_Y, right, bottom, black);
	LH3DVideo::RectFill(CAMERA_EDITOR_LIST_X + 1, CAMERA_EDITOR_LIST_Y + 1, right - 1, bottom - 1, white);
	LHCoord mouse = LHSys::GetMouse().Pos();
	int     x = mouse.x;
	int     y = LHSys::GetMouse().Pos().y;
	if (x < CAMERA_EDITOR_LIST_X)
	{
		x = CAMERA_EDITOR_LIST_X;
	}
	else if (x > right)
	{
		x = right;
	}
	if (y < CAMERA_EDITOR_LIST_Y)
	{
		y = CAMERA_EDITOR_LIST_Y;
	}
	else if (y > bottom)
	{
		y = bottom;
	}
	int hoverColumn = (x - CAMERA_EDITOR_LIST_X) * (float)CAMERA_EDITOR_LIST_COLUMNS / (width + 1);
	int hoverRow = (y - CAMERA_EDITOR_LIST_Y) * (float)CAMERA_EDITOR_LIST_ROWS / (height + 1);
	if (LHSys::GetMouse().ButtonPressed & (LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN))
	{
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
		Instance->MousePressed = true;
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_RIGHT_UP)
	{
		clicked = true;
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_UP;
	}
	if (LHSys::GetMouse().ButtonPressed & LH_MOUSE_BUTTON_LEFT_UP)
	{
		clicked = true;
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
		LHSys::GetMouse().ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_UP;
	}
	if (!Instance->MousePressed)
	{
		clicked = false;
	}
	int textX = CAMERA_EDITOR_LIST_TEXT_X;
	int index = Instance->ListOffset;
	for (int column = 0; column < CAMERA_EDITOR_LIST_COLUMNS; column++)
	{
		TName* name = names + index;
		int    textY = CAMERA_EDITOR_LIST_TEXT_Y;
		for (int row = 0; row < CAMERA_EDITOR_LIST_ROWS; row++)
		{
			if (index < count)
			{
				LH3DVideo::Col colour;
				colour.r = 0;
				colour.g = 0;
				colour.b = 0;
				colour.a = 0;
				if (canScrollUp && column == 0 && row == 0)
				{
					if (hoverRow == 0 && hoverColumn == 0)
					{
						colour.r = 255;
						colour.b = 0;
						colour.g = 0;
						if (clicked)
						{
							clicked = false;
							Instance->ListOffset -= CAMERA_EDITOR_LIST_ROWS;
						}
					}
					else
					{
						colour.r = 0;
						colour.g = 0;
						colour.b = 255;
					}
					Fonts[0].Mess(">   -- continue --", textX + CAMERA_EDITOR_LIST_TEXT_INDENT, textY, &colour,
					              &::white, FONT_NO_CURSOR);
				}
				else if (canScrollDown && column == CAMERA_EDITOR_LIST_COLUMNS - 1 &&
				         row == CAMERA_EDITOR_LIST_ROWS - 1)
				{
					if (hoverRow == CAMERA_EDITOR_LIST_ROWS - 1 && hoverColumn == CAMERA_EDITOR_LIST_COLUMNS - 1)
					{
						colour.r = 255;
						colour.b = 0;
						colour.g = 0;
						if (clicked)
						{
							clicked = false;
							Instance->ListOffset += CAMERA_EDITOR_LIST_ROWS;
						}
					}
					else
					{
						colour.r = 0;
						colour.g = 0;
						colour.b = 255;
					}
					Fonts[0].Mess(">   -- continue --", textX + CAMERA_EDITOR_LIST_TEXT_INDENT, textY, &colour,
					              &::white, FONT_NO_CURSOR);
				}
				else
				{
					if (row == hoverRow && column == hoverColumn)
					{
						colour.r = 255;
						colour.b = 0;
						colour.g = 0;
						if (clicked)
						{
							clicked = false;
							Instance->InputEnabled = true;
						}
					}
					Fonts[0].Mess(name->Name, textX + CAMERA_EDITOR_LIST_TEXT_INDENT, textY, &colour, &::white,
					              FONT_NO_CURSOR);
				}
				textY += Fonts[0].Height + CAMERA_EDITOR_LIST_LINE_GAP;
				index++;
				name++;
			}
		}
		textX += Fonts[0].Length("0") * CAMERA_EDITOR_LIST_COLUMN_CHARS + CAMERA_EDITOR_LIST_TEXT_INDENT;
	}
	if (Instance->InputEnabled)
	{
		Instance->Selected = Instance->ListOffset + hoverColumn * CAMERA_EDITOR_LIST_ROWS + hoverRow;
	}
	else
	{
		Instance->Selected = -1;
	}
}

void GCameraEditor::CreateSegFile()
{
	if (SegFile == NULL)
	{
		SegFile = NEW(839) LHReleasedFile(".\\Data\\camera.edt");
		if (GetFileAttributes(".\\Data\\camera.edt") == INVALID_FILE_ATTRIBUTES)
		{
			SegFile->Open(LH_FILE_MODE_READ_WRITE);
			SegFile->Close();
		}
		SegFile->Open(LH_FILE_MODE_READ_ONLY);
	}
}

void GCameraEditor::Init()
{
	CreateSegFile();
	CurrentScript = NULL;
	CurrentCamera = NULL;
	if (ScriptNames)
	{
		LH3DMem::Free(ScriptNames);
		ScriptNames = NULL;
	}
	if (CameraNames)
	{
		LH3DMem::Free(CameraNames);
		CameraNames = NULL;
	}
	LoadScripts();
	g_b_grosse_merde = GROSSE_MERDE_OFF;
	Dirty = false;
	TryMe = false;
	EditFocus = true;
}

void GCameraEditor::Destroy()
{
	CurrentScript = NULL;
	CurrentCamera = NULL;
	GGame::g_game->MyInterface()->GetRenderHand()->SetEditorControl(false);
	GGame::g_game->MyInterface()->GetRenderHand()->Show(true);
	while (Scripts)
	{
		ScriptInfo* script = Scripts;
		Scripts = script->Next;
		delete script;
	}
	Scripts = NULL;
	delete Instance;
	Instance = NULL;
	setfocus(NULL);
	g_b_grosse_merde = GROSSE_MERDE_OFF;
}

void GCameraEditor::ScriptInfo::BubbleSort()
{
	bool32_t swapped;
	do
	{
		ScriptInfo* script = Scripts;
		ScriptInfo* previous = NULL;
		swapped = false;
		while (script)
		{
			if (script->After(script->Next))
			{
				swapped = true;
				if (previous)
				{
					previous->Next = script->Next;
				}
				else
				{
					Scripts = script->Next;
				}
				ScriptInfo* next = script->Next;
				ScriptInfo* after = next->Next;
				next->Next = script;
				previous = next;
				script->Next = after;
			}
			else
			{
				previous = script;
				script = script->Next;
			}
		}
	} while (swapped);
}

void GCameraEditor::CameraInfo::BubbleSort()
{
	if (CurrentScript)
	{
		bool32_t swapped;
		do
		{
			CameraInfo* camera = CurrentScript->Cameras;
			CameraInfo* previous = NULL;
			swapped = false;
			while (camera)
			{
				if (camera->After(camera->Next))
				{
					swapped = true;
					if (previous)
					{
						previous->Next = camera->Next;
					}
					else
					{
						CurrentScript->Cameras = camera->Next;
					}
					CameraInfo* next = camera->Next;
					CameraInfo* after = next->Next;
					next->Next = camera;
					previous = next;
					camera->Next = after;
				}
				else
				{
					previous = camera;
					camera = camera->Next;
				}
			}
		} while (swapped);
	}
}

bool32_t GCameraEditor::ScriptInfo::After(ScriptInfo* other)
{
	if (other == NULL)
	{
		return false;
	}
	return Name.After(&other->Name);
}

bool32_t GCameraEditor::CameraInfo::After(CameraInfo* other)
{
	if (other == NULL)
	{
		return false;
	}
	return Name.After(&other->Name);
}

bool32_t GCameraEditor::TName::After(TName* other)
{
	if (other)
	{
		char* a = Name;
		char* b = other->Name;
		while (true)
		{
			char ca = *a;
			char cb = *b;
			if (ca > cb)
			{
				return true;
			}
			if (ca != cb)
			{
				break;
			}
			if (ca == 0)
			{
				break;
			}
			a++;
			if (cb == 0)
			{
				return true;
			}
			b++;
		}
	}
	return false;
}

void GCameraEditor::LoadScripts()
{
	LHSegment segment;
	if (SegFile->GetSegment("EDITOR", &segment, true) != LH_FILE_RESULT_NOT_FOUND)
	{
		int* header = (int*)segment.buffer;
		if (header[0] == CAMERA_EDITOR_FILE_VERSION)
		{
			char* record = (char*)(header + CAMERA_EDITOR_FILE_HEADER_SIZE / sizeof(int));
			for (int i = 0; i < header[1]; i++)
			{
				ScriptInfo* source = (ScriptInfo*)record;
				record += sizeof(ScriptInfo);
				ScriptInfo* script = NEW(1090) ScriptInfo(source->Name.Name);
				memcpy(script->Speeds, source->Speeds, sizeof(script->Speeds));
				memcpy(script->Times, source->Times, sizeof(script->Times));
				uint32_t built = 0;
				for (int j = 0; j < source->NumCameras; j++)
				{
					CameraInfo* camera = (CameraInfo*)record;
					record += sizeof(CameraInfo);
					CurrentScript = script;
					CameraInfo* added = AddCamera(camera->Name.Name, script, camera);
					if (added->Track)
					{
						added->Track->Speed = script->Speeds[added->Track->Id];
						uint32_t bit = 1 << added->Track->Id;
						if (!(built & bit))
						{
							added->Track->Rebuild();
							built |= bit;
						}
					}
				}
			}
		}
		SegFile->FreeLastSeg();
	}
}

GCameraEditor::ScriptInfo* GCameraEditor::GetScript(long index)
{
	if (index >= 0 && index < NumScripts)
	{
		ScriptInfo* script = Scripts;
		for (; index != 0; index--)
		{
			script = script->Next;
		}
		return script;
	}
	return Scripts;
}

GCameraEditor::CameraInfo* GCameraEditor::GetCamera(long index)
{
	if (CurrentScript == NULL)
	{
		return NULL;
	}
	if (index >= 0 && index < CurrentScript->NumCameras)
	{
		CameraInfo* camera = CurrentScript->Cameras;
		for (; index != 0; index--)
		{
			camera = camera->Next;
		}
		return camera;
	}
	return CurrentScript->Cameras;
}

void GCameraEditor::PrssKey(LH_KEY key, uint16_t modifier)
{
	switch (key)
	{
	case KB_ESC:
		Terminate();
		break;
	}
}

void GCameraEditor::DrawCross(LHPoint* point)
{
	LH3DColor green(0, 255, 0);
	LH3DColor blue(0, 0, 255);
	LH3DColor yellow(255, 255, 0);
	LHPoint   a;
	LHPoint   b;
	a = *point;
	b = *point;
	b.x += 20.0f;
	a.x -= 20.0f;
	LH3DLine::AddLine(b, a, &green, NULL);
	a = *point;
	b = *point;
	b.y += 20.0f;
	a.y -= 20.0f;
	LH3DLine::AddLine(b, a, &blue, NULL);
	a = *point;
	b = *point;
	b.z += 20.0f;
	a.z -= 20.0f;
	LH3DLine::AddLine(b, a, &yellow, NULL);
}

void GCameraEditor::Draw3DPart()
{
	if (CurrentScript)
	{
		for (CameraInfo* camera = CurrentScript->Cameras; camera; camera = camera->Next)
		{
		}
		for (InfoTrack* track = CurrentScript->Tracks; track; track = track->Next)
		{
			track->Draw();
		}
	}
}

void GCameraEditor::CameraInfo::UpdateOverride()
{
	if (TryMe && CurrentCamera->Track)
	{
		grosse_merde_pos = CurrentCamera->Track->Position;
		grosse_merde_foc = CurrentCamera->Track->Focus;
	}
	else
	{
		grosse_merde_pos = CurrentCamera->Camera.Position;
		grosse_merde_foc = CurrentCamera->Camera.Focus;
	}
}

GCameraEditor::CameraInfo* GCameraEditor::AddCamera(char* name, ScriptInfo* script, CameraInfo* source)
{
	char buffer[0x400];
	if (IsCommand(name))
	{
		ApplyCommand(name);
		return NULL;
	}
	InfoTrack* track = GetTrack(name);
	if (track)
	{
		if (IsAllDigits(name))
		{
			track->GetName(buffer);
			name = buffer;
		}
	}
	CameraInfo* camera = (CameraInfo*)LH3DMem::AllocClear(sizeof(CameraInfo));
	camera->Name = *(TName*)name;
	camera->Name.Name[CAMERA_EDITOR_NAME_LENGTH - 1] = 0;
	camera->Next = script->Cameras;
	script->Cameras = camera;
	script->NumCameras++;
	if (source)
	{
		camera->Camera = source->Camera;
	}
	else
	{
		camera->Camera.Position = LH3DTech::g_camera.pos;
		camera->Camera.Focus = LH3DTech::g_camera.foc;
		camera->Camera.Speed = -1.0f;
	}
	CameraInfo::BubbleSort();
	RebuildCameraNames();
	Dirty = true;
	if (track)
	{
		track->AddCamera(camera);
		camera->Track = track;
	}
	CurrentCamera = camera;
	return camera;
}

GCameraEditor::InfoTrack* GCameraEditor::GetTrack(char* name)
{
	int        id;
	InfoTrack* track;
	if (IsAllDigits(name))
	{
		id = ParseInt(name);
		for (track = CurrentScript->Tracks; track; track = track->Next)
		{
			if (track->Id == id)
			{
				break;
			}
		}
		if (track)
		{
			return track;
		}
		return CreateTrack(id);
	}
	if (*name != 'T')
	{
		return NULL;
	}
	id = ParseInt(name + 1);
	if (id == -1)
	{
		return NULL;
	}
	char* text = name;
	while (*text && *text != '_')
	{
		text++;
	}
	if (*text != '_')
	{
		return NULL;
	}
	if (ParseInt(text + 1) == -1)
	{
		return NULL;
	}
	for (track = CurrentScript->Tracks; track; track = track->Next)
	{
		if (track->Id == id)
		{
			break;
		}
	}
	if (track)
	{
		return track;
	}
	return CreateTrack(id);
}

int GCameraEditor::ParseNumber(char* text, int value)
{
	while (IsDigit(*text))
	{
		if (value == -1)
		{
			value = 0;
		}
		value = value * 10 + GetDigit(*text);
		text++;
	}
	return value;
}

void GCameraEditor::InfoTrack::GetName(char* name)
{
	char id[3];
	if (Id > 9)
	{
		sprintf(id, "%d", Id);
	}
	else
	{
		sprintf(id, "0%d", Id);
	}
	if (NumCameras < 10)
	{
		sprintf(name, "T%s_00%d", id, NumCameras);
	}
	else if (NumCameras < 100)
	{
		sprintf(name, "T%s_0%d", id, NumCameras);
	}
	else
	{
		sprintf(name, "T%s_%d", id, NumCameras);
	}
}

void GCameraEditor::InfoTrack::AddCamera(CameraInfo* camera)
{
	if (NumCameras)
	{
		CameraInfo** old = Cameras;
		Cameras = (CameraInfo**)LH3DMem::AllocClear((NumCameras + 1) * sizeof(CameraInfo*));
		int      next = 0;
		bool32_t pending = true;
		for (int i = 0; i <= NumCameras; i++)
		{
			if (next == NumCameras)
			{
				Cameras[i] = camera;
			}
			else
			{
				if (pending)
				{
					if (old[next]->GetIndex() > camera->GetIndex())
					{
						Cameras[i] = camera;
						pending = false;
						continue;
					}
				}
				Cameras[i] = old[next];
				next++;
			}
		}
		LH3DMem::Free(old);
	}
	else
	{
		Cameras = (CameraInfo**)LH3DMem::AllocClear(sizeof(CameraInfo*));
		Cameras[0] = camera;
	}
	NumCameras++;
	Rebuild();
}

void GCameraEditor::InfoTrack::Draw()
{
	if (PositionWay)
	{
		LH3DWay::g_color = LH3DColor(255, 255, 255);
		PositionWay->Draw();
	}
	if (FocusWay)
	{
		LH3DWay::g_color = LH3DColor(255, 255, 0);
		FocusWay->Draw();
	}
	if (PositionWay && FocusWay)
	{
		if (CurrentCamera && CurrentCamera->Track)
		{
			if (CurrentCamera->Track == this)
			{
				LHCoord mouse = LHSys::GetMouse().Pos();
				if (mouse.y >= LH3DTech::g_info_transform.resolution.y - 32)
				{
					Time = (float)(PositionRunning->way->NumFrames * mouse.x) / LH3DTech::g_info_transform.resolution.x;
				}
				else
				{
					Time += GGame::g_game->GetCameraTimeInc();
					if (Time >= PositionRunning->way->NumFrames)
					{
						Time = 0;
					}
				}
			}
			else
			{
				InfoTrack* track = CurrentCamera->Track;
				Time = CurrentScript->Times[track->Id] - CurrentScript->Times[Id] + track->Time;
			}
			if (Time >= PositionRunning->way->NumFrames)
			{
				Time = PositionRunning->way->NumFrames - 1;
			}
			if (Time < 0)
			{
				Time = 0;
			}
		}
		else
		{
			Time += GGame::g_game->GetCameraTimeInc();
			if (Time >= PositionRunning->way->NumFrames)
			{
				Time = 0;
			}
		}
		PositionRunning->GetPosAtTime(Time, &Position);
		FocusWay->GetPosAtSegment(PositionRunning->Segment, PositionRunning->Fraction, &Focus);
	}
}

void GCameraEditor::InfoTrack::Rebuild()
{
	if (PositionWay)
	{
		PositionWay->Release();
		PositionWay = NULL;
	}
	if (FocusWay)
	{
		FocusWay->Release();
		FocusWay = NULL;
	}
	if (NumCameras > 1)
	{
		PositionWay = LH3DWay::Create(NumCameras);
		FocusWay = LH3DWay::Create(NumCameras);
		for (int i = 0; i < NumCameras; i++)
		{
			CameraInfo* camera = Cameras[i];
			PositionWay->SetPointIndexed(i, &camera->Camera.Position);
			float speed = Speed == -1.0f ? (float)CAMERA_EDITOR_DEFAULT_SPEED : Speed;
			if (camera->Camera.Speed != -1.0f)
			{
				speed = camera->Camera.Speed;
			}
			PositionWay->Speeds[i] = speed;
			FocusWay->SetPointIndexed(i, &camera->Camera.Focus);
		}
		PositionWay->FinishSetup();
		FocusWay->FinishSetup();
		PositionRunning = NEW(1554) LH3DWay::Running(PositionWay);
		FocusRunning = NEW(1555) LH3DWay::Running(FocusWay);
	}
}

inline void GCameraEditor::InfoTrack::RemoveCamera(CameraInfo* camera)
{
	int count = NumCameras - 1;
	if (count)
	{
		CameraInfo** cameras = (CameraInfo**)LH3DMem::AllocClear(count * sizeof(CameraInfo*));
		CameraInfo** source = Cameras;
		for (int i = 0; i < count; i++)
		{
			if (camera == *source)
			{
				source++;
			}
			cameras[i] = *source;
			source++;
		}
		LH3DMem::Free(Cameras);
		Cameras = cameras;
	}
	else
	{
		LH3DMem::Free(Cameras);
		Cameras = NULL;
	}
	NumCameras--;
	char id[3];
	if (Id > 9)
	{
		sprintf(id, "%d", Id);
	}
	else
	{
		sprintf(id, "0%d", Id);
	}
	for (int i = 0; i < NumCameras; i++)
	{
		char* name = Cameras[i]->Name.Name;
		if (i < 10)
		{
			sprintf(name, "T%s_00%d", id, i);
		}
		else if (i < 100)
		{
			sprintf(name, "T%s_0%d", id, i);
		}
		else
		{
			sprintf(name, "T%s_%d", id, i);
		}
	}
	Rebuild();
}

void GCameraEditor::AdjustCamera(float delta)
{
	if (CurrentCamera)
	{
		Dirty = true;
		LHPoint* point;
		if (EditFocus)
		{
			point = &CurrentCamera->Camera.Focus;
		}
		else
		{
			point = &CurrentCamera->Camera.Position;
		}
		switch (Axis)
		{
		case 0:
			point->x += delta;
			break;
		case 1:
			point->y += delta;
			break;
		case 2:
			point->z += delta;
			break;
		}
		if (CurrentCamera->Track)
		{
			CurrentCamera->Track->Rebuild();
		}
	}
}

bool32_t GCameraEditor::IsCommand(char* name)
{
	switch (name[0])
	{
	case 'x':
		if (name[1] == '-')
		{
			for (char* text = name + 2; *text; text++)
			{
				if (!IsDigit(*text))
				{
					return false;
				}
			}
		}
		else
		{
			for (char* text = name + 1; *text; text++)
			{
				if (!IsDigit(*text))
				{
					return false;
				}
			}
		}
		return true;
	case '?':
		if (name[1] == '?')
		{
			for (char* text = name + 2; *text; text++)
			{
				if (!IsDigit(*text))
				{
					return false;
				}
			}
		}
		else
		{
			for (char* text = name + 1; *text; text++)
			{
				if (!IsDigit(*text))
				{
					return false;
				}
			}
		}
		return true;
	}
	return false;
}

void GCameraEditor::ApplyCommand(char* name)
{
	if (name[0] == 'x')
	{
		int value;
		if (name[1] == '-')
		{
			value = -ParseInt(name + 2);
		}
		else
		{
			value = ParseInt(name + 1);
		}
		if (CurrentCamera && CurrentCamera->Track)
		{
			CurrentScript->Times[CurrentCamera->Track->Id] = value;
		}
	}
	else if (CurrentCamera && CurrentCamera->Track)
	{
		if (name[1] == '?')
		{
			float speed = (float)ParseInt(name + 2);
			CurrentCamera->Track->Speed = speed;
			CurrentScript->Speeds[CurrentCamera->Track->Id] = speed;
		}
		else
		{
			CurrentCamera->Camera.Speed = (float)ParseInt(name + 1);
		}
		CurrentCamera->Track->Rebuild();
		Dirty = true;
	}
}

void ScriptedCamera::Release()
{
	LH3DWay::Running* running = PositionRunning;
	if (running)
	{
		if (running->way)
		{
			running->way->Release();
			running->way = NULL;
		}
		delete running;
		PositionRunning = NULL;
	}
	running = FocusRunning;
	if (running)
	{
		if (running->way)
		{
			running->way->Release();
			running->way = NULL;
		}
		delete running;
		FocusRunning = NULL;
	}
	LH3DMem::Free(this);
}

void GCameraEditor::SaveSegments(void* data, int size)
{
	SegFile->Close();
	if (SegFile->Open(LH_FILE_MODE_READ_WRITE))
	{
		char text[0x400];
		sprintf(text, "Can't open %s, may be not check-out!", ".\\Data\\camera.edt");
		return;
	}
	LHSegment segment;
	strcpy((char*)segment.name, "EDITOR");
	segment.size = size;
	segment.buffer = (uint8_t*)data;
	SegFile->WriteSegment(&segment);
	LHSegment   cameraSegment;
	int         index = 0;
	ScriptInfo* script;
	for (script = Scripts; script; script = script->Next)
	{
		for (CameraInfo* camera = script->Cameras; camera; camera = camera->Next)
		{
			char name[12];
			sprintf(name, "Cam%d", index);
			strcpy((char*)cameraSegment.name, name);
			cameraSegment.buffer = (uint8_t*)&camera->Camera;
			cameraSegment.size = sizeof(CameraBin);
			SegFile->WriteSegment(&cameraSegment);
			index++;
		}
	}
	LHSegment trackSegment;
	script = Scripts;
	int trackIndex = 0;
	for (; script; script = script->Next)
	{
		for (InfoTrack* track = script->Tracks; track; track = track->Next)
		{
			if (track->PositionWay)
			{
				char name[12];
				sprintf(name, "Track%d", trackIndex);
				strcpy((char*)trackSegment.name, name);
				track->PositionWay->Type = CAMERA_EDITOR_WAY_TYPE;
				track->FocusWay->Type = CAMERA_EDITOR_WAY_TYPE;
				int   trackSize = track->FocusWay->Size + track->PositionWay->Size + 4;
				char* buffer = (char*)LH3DMem::AllocClear(trackSize);
				trackSegment.size = trackSize;
				*(int*)buffer = script->Times[track->Id];
				memcpy(buffer + 4, track->PositionWay, track->PositionWay->Size);
				memcpy(buffer + 4 + track->PositionWay->Size, track->FocusWay, track->FocusWay->Size);
				trackSegment.buffer = (uint8_t*)buffer;
				SegFile->WriteSegment(&trackSegment);
				trackIndex++;
				LH3DMem::Free(buffer);
			}
		}
	}
	SegFile->Close();
	SegFile->Open(LH_FILE_MODE_READ_ONLY);
}

void GCameraEditor::Save()
{
	Dirty = false;
	int         size = CAMERA_EDITOR_FILE_HEADER_SIZE;
	int         count = 0;
	ScriptInfo* script;
	for (script = Scripts; script; script = script->Next)
	{
		size += sizeof(ScriptInfo) + script->NumCameras * sizeof(CameraInfo);
		count++;
	}
	char* buffer = (char*)LH3DMem::AllocClear(size);
	script = Scripts;
	char* out = buffer;
	*(int*)out = CAMERA_EDITOR_FILE_VERSION;
	*(int*)(out + 4) = count;
	out += CAMERA_EDITOR_FILE_HEADER_SIZE;
	FILE* file = fopen("CameraPosEnum.h", "w");
	if (file)
	{
		fprintf(file, "#pragma once\n\nenum ScriptCameraPosition\n{\n");
	}
	int index = 0;
	for (; script; script = script->Next)
	{
		memcpy(out, script, sizeof(ScriptInfo));
		out += sizeof(ScriptInfo);
		for (CameraInfo* camera = script->Cameras; camera; camera = camera->Next)
		{
			if (file)
			{
				fprintf(file, "  %s%s,\n", script->Name.Name, camera->Name.Name);
			}
			memcpy(out, camera, sizeof(CameraInfo));
			out += sizeof(CameraInfo);
			index++;
		}
	}
	if (file)
	{
		fprintf(file, "};\n");
		fprintf(file, "\nenum SCRIPT_PATH\n{\n");
	}
	for (script = Scripts; script; script = script->Next)
	{
		for (InfoTrack* track = script->Tracks; track; track = track->Next)
		{
			if (track->PositionWay && file)
			{
				if (track->Id > 9)
				{
					fprintf(file, "  %sTRACK%d,\n", script->Name.Name, track->Id);
				}
				else
				{
					fprintf(file, "  %sTRACK0%d,\n", script->Name.Name, track->Id);
				}
			}
		}
	}
	if (file)
	{
		fprintf(file, "};\n");
		fclose(file);
	}
	SaveSegments(buffer, size);
	LH3DMem::Free(buffer);
}

void GCameraEditor::LoadCameraFromHD(long index, CameraBin& bin)
{
	CreateSegFile();
	char name[12];
	sprintf(name, "Cam%d", index);
	LHSegment segment;
	if (SegFile->GetSegment(name, &segment, true) != LH_FILE_RESULT_NOT_FOUND)
	{
		memcpy(&bin, segment.buffer, segment.size);
	}
}

ScriptedCamera* ScriptedCamera::Create(int path)
{
	GCameraEditor::CreateSegFile();
	ScriptedCamera* camera = (ScriptedCamera*)LH3DMem::Alloc(sizeof(ScriptedCamera));
	if (camera)
	{
		memset(camera, 0, sizeof(ScriptedCamera));
	}
	char name[12];
	sprintf(name, "Track%d", path);
	LHSegment segment;
	if (SegFile->GetSegment(name, &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		char text[0x100];
		sprintf(text, "Cannot load track No %d", path);
		return NULL;
	}
	uint32_t* header = (uint32_t*)segment.buffer;
	camera->Header = *header;
	uint8_t* buffer = (uint8_t*)header;
	buffer += 4;
	LH3DWay* way = (LH3DWay*)LH3DMem::Alloc(*(uint16_t*)buffer);
	memcpy(way, buffer, *(uint16_t*)buffer);
	way->AdjustPtr();
	camera->PositionRunning = NEW(1962) LH3DWay::Running(way);
	buffer += *(uint16_t*)buffer;
	way = (LH3DWay*)LH3DMem::Alloc(*(uint16_t*)buffer);
	memcpy(way, buffer, *(uint16_t*)buffer);
	way->AdjustPtr();
	camera->FocusRunning = NEW(1968) LH3DWay::Running(way);
	SegFile->FreeLastSeg();
	return camera;
}

void GCameraEditor::InfoTrack::Renumber(int threshold)
{
	char id[3];
	if (Id > 9)
	{
		sprintf(id, "%d", Id);
	}
	else
	{
		sprintf(id, "0%d", Id);
	}
	for (int i = 0; i < NumCameras; i++)
	{
		CameraInfo* camera = Cameras[i];
		int         index = camera->GetIndex();
		if (index > threshold)
		{
			index++;
			if (index < 10)
			{
				sprintf(camera->Name.Name, "T%s_00%d", id, index);
			}
			else if (index < 100)
			{
				sprintf(camera->Name.Name, "T%s_0%d", id, index);
			}
			else
			{
				sprintf(camera->Name.Name, "T%s_%d", id, index);
			}
		}
	}
}

int GCameraEditor::CameraInfo::GetIndex()
{
	char* text = Name.Name;
	while (*text && *text != '_')
	{
		text++;
	}
	text++;
	if (*text && IsDigit(*text))
	{
		return ParseNumber(text + 1, GetDigit(*text));
	}
	return -1;
}
