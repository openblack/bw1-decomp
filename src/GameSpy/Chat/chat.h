#ifndef BW1_DECOMP_GAMESPY_CHAT_INCLUDED_H
#define BW1_DECOMP_GAMESPY_CHAT_INCLUDED_H

#ifdef __cplusplus
extern "C"
{
#endif

	typedef void* CHAT;

	typedef int CHATBool;
#define CHATFalse 0
#define CHATTrue  1

	typedef struct CHATChannelMode
	{
		CHATBool InviteOnly;
		CHATBool Private;
		CHATBool Secret;
		CHATBool Moderated;
		CHATBool NoExternalMessages;
		CHATBool OnlyOpsChangeTopic;
		int      Limit;
	} CHATChannelMode;

	typedef void (*chatGetChannelModeCallback)(CHAT chat, CHATBool success, const char* channel, CHATChannelMode* mode,
	                                           void* param);
	typedef void (*chatEnumChannelBansCallback)(CHAT chat, CHATBool success, const char* channel, int numBans,
	                                            const char** bans, void* param);
	typedef void (*chatGetUserInfoCallback)(CHAT chat, CHATBool success, const char* nick, const char* user,
	                                        const char* name, const char* address, int numChannels,
	                                        const char** channels, void* param);

	void chatSetChannelMode(CHAT chat, const char* channel, CHATChannelMode* mode);
	void chatGetChannelMode(CHAT chat, const char* channel, chatGetChannelModeCallback callback, void* param,
	                        CHATBool blocking);
	void chatEnumChannelBans(CHAT chat, const char* channel, chatEnumChannelBansCallback callback, void* param,
	                         CHATBool blocking);
	void chatRemoveChannelBan(CHAT chat, const char* channel, const char* ban);
	void chatGetUserInfo(CHAT chat, const char* user, chatGetUserInfoCallback callback, void* param, CHATBool blocking);
	void chatKickUser(CHAT chat, const char* channel, const char* user, const char* reason);
	void chatBanUser(CHAT chat, const char* channel, const char* user);

#ifdef __cplusplus
}
#endif

#endif /* BW1_DECOMP_GAMESPY_CHAT_INCLUDED_H */
