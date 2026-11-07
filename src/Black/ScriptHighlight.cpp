#include "ScriptHighlightInfo.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h"   /* For White */
#include "HalfLifeConstants.h" /* For OneOverLogHalf */
#include "ScriptHighlight.h"

#include <d3dtypes.h> /* For RGBA_MAKE */
#include <math.h>     /* For atan2, cos, sin */

#include <chlasm/HelpTextEnums.h>                      /* For HELP_TEXT_TOOLTIP_120 */
#include <chlasm/LHSample.h>                           /* For LH_SAMPLE_G_CLICKONSCROLL_01, LH_SAMPLE_G_CLICKSIGNPOST */
#include <chlasm/ScriptChallengeEnums.h>               /* For CHALLENGE_LEAVE_THROUGH_VORTEX_LAND1 */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>   /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>     /* For InverseSquareRoot */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h> /* For struct MaterialProperties */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>     /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>    /* For struct LH3DPrimitive */
#include <Lionhead/LH3DLib/development/LH3DSprite.h>       /* For struct LH3DSprite */
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>      /* For struct LH3DSubMesh */
#include <Lionhead/LH3DLib/development/LH3DMeshVertices.h> /* For LH3DMesh::GetVerticesCount */
#include <Lionhead/LH3DLib/development/LH3DTech.h>         /* For LH3DTech::g_camera */

#include "Audio.h"           /* For class GAudio */
#include "Camera.h"          /* For class GCamera */
#include "CreditsRoom.h"     /* For CreditsRoom::HasDidYouKnowBeenSeen */
#include "Game.h"            /* For class GGame */
#include "Game3DObject.h"    /* For SetPositionOnMap */
#include "GameInfo.h"        /* For GGameInfo::Info */
#include "GameOSFile.h"      /* For class GameOSFile */
#include "Global.h"          /* For GGlobal::Global */
#include "GJUtils.h"         /* For GlobalTextures, GJUtils */
#include "GoldenShower.h"    /* For class GoldenShower */
#include "HelpProfile.h"     /* For class HelpProfile */
#include "HelpSystem.h"      /* For class HelpSystem */
#include "Interface.h"       /* For GInterface::SendInvisibleDrawCollision */
#include "InterfaceStatus.h" /* For class GInterfaceStatus */
#include "Landscape.h"       /* For GLandscape */
#include "MapCoords.h"       /* For struct MapCoords */
#include "PSysInterface.h"   /* For class PSysInterface */
#include "PSysProcessInfo.h" /* For struct PSysProcessInfo */
#include "Script.h"          /* For class GScript */
#include "ScriptConstants.h" /* For SCRIPT_TASK_NONE */
#include "ScriptDLL.h"       /* For class ScriptDLL */
#include "Temple.h"          /* For struct Temple */
#include "Utils.h"           /* For GUtils::GetDistance */

#ifdef VERSION_BW1WCI
#include <ctype.h>  /* For isdigit */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For strlen */

#include <Lionhead/LH3DLib/development/LH3DOrientSprite.h>  /* For struct LH3DOrientSprite */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender::CreateMaterial */
#include <Lionhead/LH3DLib/development/LHMatrixOperators.h> /* For operator+=, operator*= on LHMatrix */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>       /* For struct LH3DTexture */

#include "ScriptHighlightScoreBoard.h" /* For ScriptHighlight::IsScoreBoard */
#endif

static float UnusedStatic = 0.0f;
static float BeamPulseAngle = 0.0f;
static float BeamPulseValue = 0.0f;
static float LastBeamPulseValue = 0.0f;

GScriptHighlightInfo GScriptHighlightInfo::Infos[SCRIPT_HIGHLIGHT_INFO_LAST];

void ScriptHighlight::OnClearMap()
{
	BeamPulseAngle = 0.0f;
	BeamPulseValue = 0.0f;
	LastBeamPulseValue = 0.0f;
}

ScriptHighlight::ScriptHighlight()
{
	SetToZero();
}

ScriptHighlight::ScriptHighlight(const MapCoords& coords, const GScriptHighlightInfo* info, unsigned long script_id,
                                 float y_angle, float scale)
	: SingleMapFixed(coords, info, y_angle, scale)
{
	SetToZero();
	GGame::g_game->GameLists.ScriptHighlights.AddToFirst(this);
	ScriptId = script_id;
}

void ScriptHighlight::SetToZero()
{
	Sprite = NULL;
	Beam = NULL;
	Active = false;
	Hidden = false;
	ActiveParticle = NULL;
	Particle = NULL;
	Shower = NULL;
	ScriptId = 0;
	UseDrawHeight = false;
	DrawHeight = 0.0f;
	Category = DYK_NAVIGATION;
#ifdef VERSION_BW1WCI
	ScoreBoardValue = -1;
#endif
}

ScriptHighlight::~ScriptHighlight()
{
	if (Sprite != NULL)
	{
		Sprite->Release();
		Sprite = NULL;
	}
	if (Beam != NULL)
	{
		Beam->Release();
		Beam = NULL;
	}
}

void ScriptHighlight::ToBeDeleted(bool32_t delete_now)
{
	GGame::g_game->GameLists.ScriptHighlights.Remove(this);
	if (Particle != NULL)
	{
		delete Particle;
		Particle = NULL;
	}
	if (ActiveParticle != NULL)
	{
		delete ActiveParticle;
		ActiveParticle = NULL;
	}
	if (Shower != NULL)
	{
		Shower->Release();
		Shower = NULL;
	}
	Object::ToBeDeleted(delete_now);
}

void ScriptHighlight::SetScriptId(unsigned long script_id, DYK_CATEGORY category)
{
	ScriptId = script_id;
	Category = category;
}

ScriptHighlight* ScriptHighlight::Create(const MapCoords& coords, const GScriptHighlightInfo* info,
                                         unsigned long script_id, float y_angle, float scale)
{
#ifdef VERSION_BW1WCI
	ScriptHighlight* highlight = NEW(128) ScriptHighlight(coords, info, script_id, y_angle, scale);
#else
	ScriptHighlight* highlight = NEW(126) ScriptHighlight(coords, info, script_id, y_angle, scale);
#endif
	if (highlight != NULL)
	{
		highlight->CallVirtualFunctionsForCreation(coords);
#ifdef VERSION_BW1WCI
		if (highlight->IsDidYouKnow() || highlight->IsScoreBoard())
		{
			highlight->SetDrawHeight(0.0f);
		}
#endif
	}
	return highlight;
}

void ScriptHighlight::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	SingleMapFixed::CallVirtualFunctionsForCreation(coords);
	Game3dObject->SetEnvMap(LH3DObject::ENV_MAP_TYPE_DEFAULT);
#ifdef VERSION_BW1WCI
	if (!IsDidYouKnow() && !IsScoreBoard())
#else
	if (!IsDidYouKnow())
#endif
	{
		Game3dObject->SetDisappear(false);
	}
	Sprite = LH3DSprite::Create(1, true);
	if (Sprite != NULL)
	{
		Sprite->material = GlobalTextures::GetHighlightMaterial();
	}
	Beam = LH3DObject::Create(LH3DObject::STATIC);
	Beam->SetMesh(LH3DMesh::GetPackedMesh(MSH_S_BLAST_CENTRE), NULL, NULL);
	LH3DMesh*          mesh = Beam->GetMesh();
	MaterialProperties props;
	props.ApplyToMesh = true;
	props.Transparent = true;
	props.Additive = true;
	props.AlphaBlend = false;
	props.cull = false;
	GJUtils::SetMaterialProperties(mesh, props);
	Game3dObject->SetShadowOnTexture(false);
	if (IsDidYouKnow() && CreditsRoom::HasDidYouKnowBeenSeen(ScriptId, Category))
	{
		SetActivated(true);
	}
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(Active ? GetActiveMesh() : GetMesh()), NULL, NULL);
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		PARTICLE_TYPE type = GetInfo()->ParticleType;
		if (type != PARTICLE_TYPE_NONE)
		{
			Particle = PSysInterface::Create(NULL, type, coords.GetLHPoint(), LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                 PSysInterface::NET_GAME_TYPE_LOCAL);
			if (Particle != NULL)
			{
				Particle->AddTarget(this);
			}
		}
		Shower = GoldenShower::Create();
	}
}

void ScriptHighlight::SetDrawHeight(float height)
{
	UseDrawHeight = true;
	DrawHeight = height;
}

#ifdef VERSION_BW1WCI
void ScriptHighlight::DrawSignPostText(int value, float angle, float scale)
{
	static LH3DTexture*      DigitTexture = NULL;
	static LH3DMaterial*     DigitMaterial = NULL;
	static LH3DOrientSprite* DigitSprite = NULL;

	if (DigitMaterial == NULL || DigitTexture == NULL || DigitSprite == NULL)
	{
		DigitTexture = LH3DTexture::Create(SCRIPT_HIGHLIGHT_DIGIT_TEXTURE,
		                                   LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
		DigitMaterial =
			LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, DigitTexture);
		DigitSprite = LH3DOrientSprite::Create(1, true);
		DigitSprite->material = DigitMaterial;
		DigitSprite->FramesPerRow = SCRIPT_HIGHLIGHT_DIGIT_FRAMES_PER_ROW;
		DigitSprite->SetFrame(0);
		DigitSprite->SetUseMatrix();
	}
	if (DigitMaterial != NULL && DigitTexture != NULL && DigitSprite != NULL)
	{
		LH3DObject* object = Game3dObject;
		if (object != NULL)
		{
			LH3DColor colour = object->color;
			LH3DColor specular = object->specular;
			if (object->GetMesh()->GetEMetricsData() != NULL)
			{
				long count = ((LH3DMeshExtraMetrics*)object->GetMesh()->GetEMetricsData())->Count;
				if (count >= 1)
				{
					char text[256];
					int  digits = 1;
					if (count > 1)
					{
						sprintf(text, "%d", value);
						digits = strlen(text);
					}
					if (digits > count)
					{
						digits = count;
					}
					int      spare = count - digits;
					bool32_t odd = spare & 1;
					for (int i = 0; i < digits; i++)
					{
						LHMatrix matrix;
						object->GetExtraPos(count - spare / 2 - i - 1, &matrix);
						if (odd)
						{
							LHMatrix other;
							object->GetExtraPos(count - (spare + 1) / 2 - i - 1, &other);
							matrix += other;
							matrix *= 0.5f;
						}
						matrix.RotateZ(angle - HALF_PI_F);
						matrix.RotateY(PI_F);
						matrix.GetPos() += matrix.GetVectorY() * SCRIPT_HIGHLIGHT_DIGIT_LIFT;
						LHPoint pos = matrix.GetPos();
						matrix.ScaleMatrixOnly(scale * SCRIPT_HIGHLIGHT_DIGIT_SCALE);
						DigitSprite->SetPosition(pos);
						DigitSprite->SetMatrix(matrix);
						DigitSprite->SetColour(colour);
						DigitSprite->SetSpecular(specular);
						int frame = -1;
						if (count == 1)
						{
							frame = value & 0xF;
						}
						else if (isdigit(text[i]))
						{
							frame = text[i] - '0';
						}
						if (frame >= 0)
						{
							DigitSprite->SetFrame(frame);
							DigitSprite->Draw();
						}
					}
				}
			}
		}
	}
}
#endif

void ScriptHighlight::Draw()
{
	static const float   SpriteSizeScale = 2.0f;
	static const float   CollisionRadiusMargin = 0.5f;
	static const uint8_t BlueBeamAlpha = 20;
	static const uint8_t BlueBeamRed = 180;
	static const uint8_t BlueBeamGreen = 220;
	static const uint8_t BlueBeamBlue = 255;
	static const uint8_t YellowBeamAlpha = 80;
	static const uint8_t YellowBeamRed = 255;
	static const uint8_t YellowBeamGreen = 255;
	static const uint8_t YellowBeamBlue = 0;
	static const uint8_t ActiveMediumAlpha = 100;
	static const uint8_t ActiveStrongAlpha = 150;
	static const uint8_t ActiveFaintAlpha = 50;
	static const uint8_t InactiveMediumAlpha = 100;
	static const uint8_t InactiveStrongAlpha = 150;
	static const uint8_t InactiveFaintAlpha = 50;

	MapCoords coords = Pos;
#ifdef VERSION_BW1WCI
	if (!Hidden && (IsDidYouKnow() || GetInfo()->GetType() == SCRIPT_HIGHLIGHT_INFO_SCRIPT_SWAP_CREATURE ||
	                GetInfo()->GetType() == SCRIPT_HIGHLIGHT_INFO_SCRIPT_FIGHT_CREATURE ||
	                (IsScoreBoard() && GGame::g_game->script->DrawScoreboard) ||
	                (!IsScoreBoard() && GGame::g_game->script->DrawHighlight)))
	{
		bool32_t drawn = false;
		if (Game3dObject == NULL)
		{
			return;
		}
#else
	bool32_t drawn = false;
	if (!Hidden && (GGame::g_game->script->DrawHighlight || IsDidYouKnow()) && Game3dObject != NULL)
	{
#endif
		HIGHLIGHT_INFO type = (HIGHLIGHT_INFO)(GetInfo() - GScriptHighlightInfo::GetInfo());
		LHPoint        centre = Game3dObject->GetMesh()->GetBoundingBox().centre;
		float          spin = LH3DTech::GetGameTimeInc() * PI_F / SCRIPT_HIGHLIGHT_SPIN_HALF_TURN_MS;
		float          angle = Game3dObject->GetYAngle();
#ifdef VERSION_BW1WCI
		if ((Active && IsDidYouKnow()) || IsScoreBoard())
#else
		if (Active && IsDidYouKnow())
#endif
		{
			LHPoint point;
			GLandscape::ConvertMapCoordToLandscapePoint(Pos, point);
			LHPoint camera;
			GGame::g_game->GetCamera()->GetPosition(camera);
			camera -= point;
			angle = (float)atan2(camera.z, camera.x) + HALF_PI_F;
		}
		else
		{
			angle += spin;
		}
		Wrap(angle, TWO_PI);
		float   scale = GetScale();
		LHPoint cameraOrigin;
		cameraOrigin = GGame::g_game->GetCamera()->CameraOriginZoomer.GetCurrentValue();
		LHPoint landscapePoint;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, landscapePoint);
		uint32_t distance = GUtils::GetDistance(landscapePoint, cameraOrigin);
		distance = distance > SCRIPT_HIGHLIGHT_FAR_DISTANCE ? SCRIPT_HIGHLIGHT_FAR_DISTANCE
		                                                    : max(SCRIPT_HIGHLIGHT_NEAR_DISTANCE, distance);
#ifdef VERSION_BW1WCI
		if (!IsDidYouKnow() && !IsScoreBoard())
#else
		if (!IsDidYouKnow())
#endif
		{
			scale = distance * scale / SCRIPT_HIGHLIGHT_FULL_SCALE_DISTANCE;
		}
		SetPositionOnMap(Game3dObject, coords, angle, scale);
		Game3dObject->matrix.TransformPoint(centre);
		LHPoint size = Game3dObject->GetMesh()->GetBoundingBox().size;
		Game3dObject->matrix.TransformVector(size);
		float radius = size.GetNorme();
		SingleMapFixed::Draw();
#ifdef VERSION_BW1WCI
		if (IsScoreBoard() && ScoreBoardValue >= 0)
		{
			DrawSignPostText(ScoreBoardValue, 0.0f, 1.0f);
		}
#endif
		bool32_t onScreen = LH3DObject::g_b_last_on_screen;
#ifdef VERSION_BW1WCI
		if ((Active || type == SCRIPT_HIGHLIGHT_INFO_BROTHERHOOD) && !IsDidYouKnow() && !IsScoreBoard())
#else
		if (Active && !IsDidYouKnow())
#endif
		{
			LHPoint camera;
			GGame::g_game->GetCamera()->GetPosition(camera);
			camera -= centre;
			float    beamAngle = (float)atan2(camera.z, camera.x) + HALF_PI_F;
			LHMatrix beamMatrix;
			beamMatrix.SetRotationY(beamAngle);
			beamMatrix.PreScale(1.0f, SCRIPT_HIGHLIGHT_BEAM_SCALE, 1.0f);
			beamMatrix.SetTranslateOnly(centre);
			Beam->matrix = beamMatrix;
			Beam->scale = SCRIPT_HIGHLIGHT_BEAM_SCALE;
#ifdef VERSION_BW1WCI
			unsigned long colour = type == SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER
			                           ? RGBA_MAKE(BlueBeamRed, BlueBeamGreen, BlueBeamBlue, BlueBeamAlpha)
			                           : RGBA_MAKE(YellowBeamRed, YellowBeamGreen, YellowBeamBlue,
			                                       (uint8_t)(YellowBeamAlpha * GetNetUnsafeBeamPulseValue()));
#else
			unsigned long colour = type == SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER
			                           ? RGBA_MAKE(BlueBeamRed, BlueBeamGreen, BlueBeamBlue, BlueBeamAlpha)
			                           : RGBA_MAKE(YellowBeamRed, YellowBeamGreen, YellowBeamBlue,
			                                       (uint8_t)(YellowBeamAlpha * (int)GetNetUnsafeBeamPulseValue()));
#endif
			Beam->SetColorSpecular(colour, 0);
			Beam->SetDrawWithGlobalAlpha(true);
			Beam->AddDrawing();
			drawn = true;
		}
		LHPoint top;
		top.x = centre.x;
		top.y = centre.y + radius;
		top.z = centre.z;
		if (Particle != NULL)
		{
			PSysProcessInfo processInfo;
			Particle->Process(processInfo, LH3DTech::GetGameTimeInc());
			Particle->Draw(1.0f, true);
		}
		if (ActiveParticle != NULL)
		{
			ActiveParticle->SetOrigin(centre);
			PSysProcessInfo processInfo;
			ActiveParticle->Process(processInfo, LH3DTech::GetGameTimeInc());
			ActiveParticle->Draw(1.0f, true);
		}
		if (Shower != NULL && GetInfo() == &GScriptHighlightInfo::GetInfo()[SCRIPT_HIGHLIGHT_INFO_SCRIPT_GOLD])
		{
			Shower->SetPosition(top);
			Shower->AddDrawing();
			drawn = true;
		}
		if (onScreen || drawn)
		{
			LH3DObject::g_b_last_on_screen = true;
#ifdef VERSION_BW1WCI
			if (!IsDidYouKnow() && !IsScoreBoard())
#else
			if (!IsDidYouKnow())
#endif
			{
				GInterface::SendInvisibleDrawCollision(this, &centre, radius + CollisionRadiusMargin);
			}
			LHPoint toCamera = *LH3DTech::GetCameraPosition() - centre;
			float   norm = toCamera.GetNorm();
			float   inverse = InverseSquareRoot(norm);
			toCamera.x *= inverse;
			toCamera.y *= inverse;
			toCamera.z *= inverse;
			Sprite->pos = centre + toCamera * radius * SCRIPT_HIGHLIGHT_SPRITE_RADIUS_SCALE;
			Sprite->SetSize(SpriteSizeScale * radius);
			uint8_t alpha = 0;
			switch (type)
			{
			case SCRIPT_HIGHLIGHT_INFO_SCRIPT_GOLD:
#ifdef VERSION_BW1WCI
			case SCRIPT_HIGHLIGHT_INFO_BROTHERHOOD:
#endif
				alpha = Active ? ActiveMediumAlpha : InactiveMediumAlpha;
				break;
			case SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER:
				alpha = Active ? ActiveStrongAlpha : InactiveStrongAlpha;
				break;
			case SCRIPT_HIGHLIGHT_INFO_SCRIPT_BRONZE:
				alpha = Active ? ActiveFaintAlpha : InactiveFaintAlpha;
				break;
			}
#ifdef VERSION_BW1WCI
			if ((!IsDidYouKnow() && !IsScoreBoard()) || !Active)
#else
			if (!IsDidYouKnow() || !Active)
#endif
			{
				Sprite->colour = LH3DColor(RGBA_MAKE(0xff, 0xff, 0xff, alpha));
				Sprite->AddDrawing();
			}
		}
		else
		{
			LH3DObject::g_b_last_on_screen = false;
		}
	}
}

void ScriptHighlight::ProcessHighlights()
{
	static const float BeamPulseSpeed = 5.0f;

	BeamPulseAngle += GGameInfo::Info.MillisecondsPerGameTurn * BeamPulseSpeed * SCRIPT_SECONDS_PER_MILLISECOND;
	if (BeamPulseAngle > TWO_PI)
	{
		BeamPulseAngle -= TWO_PI;
	}
	LastBeamPulseValue = BeamPulseValue;
	BeamPulseValue = (1.0f - (float)cos(BeamPulseAngle)) * 0.5f;
	ScriptHighlight* highlight = GGame::g_game->GameLists.ScriptHighlights.head;
	while (highlight != NULL)
	{
		ScriptHighlight* next = highlight->next;
		if (highlight->IsAvailable())
		{
			highlight->Process();
		}
		highlight = next;
	}
}

float ScriptHighlight::GetNetUnsafeBeamPulseValue()
{
	return GJUtils::Linterp(
		SCRIPT_HIGHLIGHT_BEAM_PULSE_MIN, SCRIPT_HIGHLIGHT_BEAM_PULSE_MAX,
		boundf(0.0f, GJUtils::LinterpNoBoundsCheck(LastBeamPulseValue, BeamPulseValue, GGame::g_game->TurnFraction),
	           1.0f));
}

uint32_t ScriptHighlight::Process()
{
	Pos.SetAltitude(!UseDrawHeight ? Pos.GetAltitudeOfHighestObjectExcluding(this, true) : DrawHeight);
	if (!Active && IsDidYouKnow())
	{
		uint32_t turn = GGame::g_game->data.GetGameTurn();
		if (((turn + GetUniqueId()) & SCRIPT_HIGHLIGHT_SEEN_CHECK_TURN_MASK) == 0 &&
		    CreditsRoom::HasDidYouKnowBeenSeen(ScriptId, Category))
		{
			SetActivated(true);
		}
	}
	return true;
}

#ifndef VERSION_BW1W100
void ScriptHighlight::SetPosition(const MapCoords& coords)
{
	Pos = coords;
	Process();
}
#endif

void ScriptHighlight::SetActivated(bool32_t activated)
{
	Active = activated;
	if (ActiveParticle != NULL)
	{
		delete ActiveParticle;
		ActiveParticle = NULL;
	}
	MESH_LIST mesh;
	if (!Active)
	{
		mesh = GetMesh();
	}
	else
	{
#ifdef VERSION_BW1WCI
		if (!IsDidYouKnow() && !IsScoreBoard())
#else
		if (!IsDidYouKnow())
#endif
		{
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.AttachedObject = this;
			options.Positional = false;
			options.SampleNumber = LH_SAMPLE_G_CLICKONSCROLL_01;
			GGlobal::Global.audio->PlaySoundEffect(&options);
		}
		mesh = GetActiveMesh();
		PARTICLE_TYPE type = GetInfo()->ActiveParticleType;
		if (type != PARTICLE_TYPE_NONE)
		{
			ActiveParticle = PSysInterface::Create(NULL, type, Pos.GetLHPoint(), LHPoint(0.0f, 0.0f, 0.0f), 1.0f,
			                                       PSysInterface::NET_GAME_TYPE_LOCAL);
		}
	}
	Game3dObject->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
}

MESH_LIST ScriptHighlight::GetActiveMesh()
{
	return GetInfo()->ActiveMesh;
}

bool32_t ScriptHighlight::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		file.WriteIt(Hidden);
		file.WriteIt(Active);
		file.WriteIt(UseDrawHeight);
		file.WriteIt(DrawHeight);
		file.WriteIt(ScriptId);
		file.WriteIt(Category);
#ifdef VERSION_BW1WCI
		file.WriteIt(ScoreBoardValue);
#endif
		return true;
	}
	return false;
}

bool32_t ScriptHighlight::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadIt(Hidden);
		file.ReadIt(Active);
		file.ReadIt(UseDrawHeight);
		file.ReadIt(DrawHeight);
		file.ReadIt(ScriptId);
		file.ReadIt(Category);
#ifdef VERSION_BW1WCI
		file.ReadIt(ScoreBoardValue);
#endif
		return true;
	}
	return false;
}

int ScriptHighlight::ForDrawFXGetNumVertices()
{
	if (Game3dObject != NULL)
	{
		return Game3dObject->GetMesh()->GetVerticesCount();
	}
	return 0;
}

bool ScriptHighlight::ForDrawFXGetVertexPos(int index, LHPoint* pos)
{
	if (Game3dObject != NULL)
	{
		LH3DMesh* mesh = Game3dObject->GetMesh();
		if (mesh != NULL)
		{
			if (index > mesh->GetVerticesCount())
			{
				return false;
			}
			LH3DSubMesh** submesh = mesh->GetListPtrSubmesh();
			LH3DSubMesh** submeshEnd = submesh + mesh->GetSubmeshCount();
			for (; submesh < submeshEnd; submesh++)
			{
				LH3DPrimitive** primitive = (*submesh)->GetListPtrPrimitive();
				LH3DPrimitive** primitiveEnd = primitive + (*submesh)->GetPrimitiveCount();
				for (; primitive < primitiveEnd; primitive++)
				{
					int count = (*primitive)->GetVerticesCount();
					if (index < count)
					{
						LH3DVertex* vertex = (*primitive)->GetListVertex() + index;
						pos->Set(vertex->position);
						Game3dObject->matrix.TransformPoint(*pos);
						return true;
					}
					index -= count;
				}
			}
		}
	}
	return false;
}

void ScriptHighlight::ShowHelpBubble()
{
	GGame::g_game->help_system->SetBubbleProperties(this, ScriptId, Category);
}

bool32_t ScriptHighlight::IsDidYouKnow()
{
	return GetInfo() - GScriptHighlightInfo::GetInfo() == SCRIPT_HIGHLIGHT_INFO_SCRIPT_BRONZE;
}

bool32_t ScriptHighlight::IsVortexEntry()
{
	return ScriptId == CHALLENGE_LEAVE_THROUGH_VORTEX_LAND1 || ScriptId == CHALLENGE_LEAVE_THROUGH_VORTEX_LAND2 ||
	       ScriptId == CHALLENGE_LEAVE_THROUGH_VORTEX_LAND3 || ScriptId == CHALLENGE_LEAVE_THROUGH_VORTEX_LAND4;
}

uint32_t ScriptHighlight::InterfaceTap(GInterfaceStatus* status)
{
	if (status->GetPlayer() == GGame::g_game->MyPlayer())
	{
		if (ScriptId != 0)
		{
			GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_34);
		}
		else
		{
			GGame::g_game->help_profile->Trigger(HELP_EVENT_TYPE_35);
		}
	}
	if (ScriptId != 0)
	{
		SetActivated(true);
		if (IsDidYouKnow())
		{
			if (status == GGame::g_game->MyInterfaceStatus())
			{
				LH_SamplePlayOptions options;
				options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
				options.SampleNumber = LH_SAMPLE_G_CLICKSIGNPOST;
				options.AttachedObject = NULL;
				options.Positional = false;
				options.Follow = false;
				GGlobal::Global.audio->PlaySoundEffect(&options);
			}
			ShowHelpBubble();
		}
#ifdef VERSION_BW1WCI
		else if (!IsScoreBoard())
#else
		else
#endif
		{
			if (GGame::g_game->help_system->DialogueControlTask != SCRIPT_TASK_NONE &&
			    GScript::g_scriptDLL->GetScriptType(GGame::g_game->help_system->DialogueControlTask) ==
			        VMScriptType_Help)
			{
				GScript::StopHelpScripts();
			}
			if (GGame::g_game->help_system->DialogueControlTask == SCRIPT_TASK_NONE)
			{
				GGame::g_game->temple->StartScript(ScriptId);
			}
		}
	}
	return true;
}

uint32_t ScriptHighlight::InterfaceValidToTap(GInterfaceStatus* status)
{
	if (IsDidYouKnow())
	{
		return ScriptId != 0;
	}
#ifdef VERSION_BW1WCI
	return !IsScoreBoard() && Active && ScriptId != 0;
#else
	return Active && ScriptId != 0;
#endif
}

uint32_t ScriptHighlight::GetOverwriteTapToolTip()
{
#ifdef VERSION_BW1WCI
	return GetInfo()->OverwriteTapToolTip;
#else
	return info->type == OBJECT_TYPE_CREATURE ? HELP_TEXT_TOOLTIP_120 : 0;
#endif
}

SCRIPT_OBJECT_TYPE ScriptHighlight::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_HIGHLIGHT;
}

void ScriptHighlight::AddToRoutePlan(RPHolder* holder, Creature* creature, int update,
                                     void(__cdecl* add_function)(int object_id, Point2D position, float radius,
                                                                 int update))
{
	SimpleAddToRoutePlan(holder, creature, update, add_function);
}

#ifdef VERSION_BW1WCI
bool32_t ScriptHighlight::IsBrotherhood()
{
	return GetInfo()->GetType() == SCRIPT_HIGHLIGHT_INFO_BROTHERHOOD;
}
#endif
