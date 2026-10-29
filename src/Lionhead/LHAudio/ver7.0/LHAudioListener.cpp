#include <math.h> /* For fabs, sqrt */

#include "LH_ListenerInfo.h"
#include "LH_MidiInfo.h"

#define LH_LISTENER_DEFAULT_HEIGHT 0.02f
#define LH_LISTENER_DEFAULT_FRONT  5.0f

void LH_ListenerInfo::Transform(LHAudioPoint* out, LHAudioPoint* in)
{
	float (*m)[3] = Matrix;
	out->x = m[0][0] * in->x + m[1][0] * in->y + m[2][0] * in->z + m[3][0];
	out->y = m[0][1] * in->x + m[1][1] * in->y + m[2][1] * in->z + m[3][1];
	out->z = m[0][2] * in->x + m[1][2] * in->y + m[2][2] * in->z + m[3][2];
}

LH_ListenerInfo::LH_ListenerInfo()
{
	LHAudioPoint pos = {0.0f, LH_LISTENER_DEFAULT_HEIGHT, 0.0f};
	LHAudioPoint front = {0.0f, 0.0f, LH_LISTENER_DEFAULT_FRONT};
	LHAudioPoint top = {0.0f, 1.0f, 0.0f};
	UpdateListener(&pos, &front, &top);
}

void LH_AudioSystem::LHListenerUpdate(LHAudioPoint* pos, LHAudioPoint* front, LHAudioPoint* top)
{
	if (!WaveInstalled || !SystemInstalled)
	{
		return;
	}

	ListenerInfo->UpdateListener(pos, front, top);

	if (MidiInstalled)
	{
		for (unsigned long i = 0; i < LH_MIDI_INFO_COUNT; i++)
		{
			if (MidiInfos[i].Segment != NULL && MidiInfos[i].Positional == true)
			{
				LHAudioPoint point;
				ListenerInfo->Transform(&point, &MidiInfos[i].Pos);
				MidiInfos[i].Buffer3D->SetPosition(point.x, point.y, point.z, DS3D_IMMEDIATE);
				if (point.x * point.x + point.y * point.y + point.z * point.z > MidiInfos[i].MaxDistance)
				{
					MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MIN);
				}
				else
				{
					MidiInfos[i].Buffer->SetVolume(DSBVOLUME_MAX);
				}
			}
		}
	}

	QSVECTOR position;
	QSVECTOR up;
	QSVECTOR direction;
	position.x = ListenerInfo->Pos.x;
	position.y = ListenerInfo->Pos.y;
	position.z = ListenerInfo->Pos.z;
	direction.x = ListenerInfo->Direction.x;
	direction.y = ListenerInfo->Direction.y;
	direction.z = ListenerInfo->Direction.z;
	up.x = ListenerInfo->Top.x;
	up.y = ListenerInfo->Top.y;
	up.z = ListenerInfo->Top.z;
	QSWaveMixSetListenerPosition(QMixer, &position, 0);
	QSWaveMixSetListenerOrientation(QMixer, &direction, &up, 0);
}

void LH_ListenerInfo::UpdateListener(LHAudioPoint* pos, LHAudioPoint* front, LHAudioPoint* top)
{
	if (pos != NULL)
	{
		Pos.x = pos->x;
		Pos.y = pos->y;
		Pos.z = pos->z;
	}
	if (front != NULL)
	{
		Front.x = front->x;
		Front.y = front->y;
		Front.z = front->z;
	}
	if (top != NULL)
	{
		float x = top->x;
		float y = top->y;
		float z = top->z;
		if (x != 0.0f || y != 0.0f || z != 0.0f)
		{
			float scale = 1.0f / (float)sqrt(z * z + y * y + x * x);
			top->x = scale * x;
			top->y = scale * y;
			top->z = scale * z;
		}
		Top.x = top->x;
		Top.y = top->y;
		Top.z = top->z;
	}

	LHAudioPoint direction;
	direction.x = Front.x - Pos.x;
	direction.y = Front.y - Pos.y;
	direction.z = Front.z - Pos.z;
	if (fabs(direction.x) < LH_LISTENER_MIN_DIRECTION && fabs(direction.z) < LH_LISTENER_MIN_DIRECTION)
	{
		direction.x = direction.x > 0.0f ? LH_LISTENER_MIN_DIRECTION : -LH_LISTENER_MIN_DIRECTION;
	}
	direction.Normalise();
	Direction.x = direction.x;
	Direction.y = direction.y;
	Direction.z = direction.z;

	float        dot = direction.DotProduct(Top);
	LHAudioPoint up;
	up.x = Top.x - dot * direction.x;
	up.y = Top.y - dot * direction.y;
	up.z = Top.z - dot * direction.z;
	up.Normalise();

	LHAudioPoint side;
	side.x = up.y * direction.z - up.z * direction.y;
	side.y = up.z * direction.x - up.x * direction.z;
	side.z = up.x * direction.y - up.y * direction.x;
	Matrix[0][0] = side.x;
	Matrix[1][0] = side.y;
	Matrix[2][0] = side.z;
	Matrix[0][1] = up.x;
	Matrix[1][1] = up.y;
	Matrix[2][1] = up.z;
	Matrix[0][2] = direction.x;
	Matrix[1][2] = direction.y;
	Matrix[2][2] = direction.z;
	Matrix[3][0] = -side.x * Pos.x - side.y * Pos.y - side.z * Pos.z;
	Matrix[3][1] = -up.x * Pos.x - up.y * Pos.y - up.z * Pos.z;
	Matrix[3][2] = -direction.x * Pos.x - direction.y * Pos.y - direction.z * Pos.z;
}
