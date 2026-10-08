#ifndef BW1_DECOMP_GOACENG_INCLUDED_H
#define BW1_DECOMP_GOACENG_INCLUDED_H

#ifdef __cplusplus
extern "C"
{
#endif

	typedef struct GServerImplementation* GServer;

	char* ServerGetStringValue(GServer server, char* key, char* sdefault);
	int ServerGetIntValue(GServer server, char* key, int idefault);
	char* ServerGetPlayerStringValue(GServer server, int playernum, char* key, char* sdefault);
	int ServerGetPlayerIntValue(GServer server, int playernum, char* key, int idefault);

#ifdef __cplusplus
}
#endif

#endif /* BW1_DECOMP_GOACENG_INCLUDED_H */
