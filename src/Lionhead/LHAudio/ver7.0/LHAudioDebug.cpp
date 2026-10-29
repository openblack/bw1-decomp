#define LH_DEBUG_ERROR_TEXT_RESERVE 10

char* LH_AudioSystem::LHDebugGetLastQMixerError()
{
	static LHSPrintf text;
	MMRESULT         error = QSWaveMixGetLastError();
	QSWaveMixGetErrorText(error, text, text.GetBufSize() - LH_DEBUG_ERROR_TEXT_RESERVE);
	text.AppendString("(QmixerErrorCode:%d)", error);
	return text;
}

char* LH_AudioSystem::LHDebugGetQMixerErrorText(unsigned int error)
{
	static LHSPrintf text;
	QSWaveMixGetErrorText(error, text, text.GetBufSize() - LH_DEBUG_ERROR_TEXT_RESERVE);
	text.AppendString("(QmixerErrorCode:%d)", error);
	return text;
}
