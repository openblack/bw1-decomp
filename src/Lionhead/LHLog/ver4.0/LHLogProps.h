#ifndef BW1_DECOMP_LH_LOG_PROPS_INCLUDED_H
#define BW1_DECOMP_LH_LOG_PROPS_INCLUDED_H

#include <assert.h>  /* For static_assert */
#include <windows.h> /* For INVALID_HANDLE_VALUE */

#include <re_common.h> /* For bool32_t */

#include "LHLogExport.h"

#define LH_LOG_PROPS_MAX_MESSAGES  200
#define LH_LOG_PROPS_FILENAME_SIZE 128
#define LH_LOG_PROPS_FILTER_SIZE   200
#define LH_LOG_PROPS_HOST_IP_SIZE  20

enum LH_LOG_PROPS_LEVEL
{
	LH_LOG_PROPS_LEVEL_ALL = 0,
	LH_LOG_PROPS_LEVEL_ERRORS = 1,
	LH_LOG_PROPS_LEVEL_NONE = 2,
};

class LH_LOG_API LHLogPropsSet
{
public:
	// BW1W120 10003c30 BW1M119 null
	LHLogPropsSet();
	// BW1W120 10005c60 BW1M119 null
	~LHLogPropsSet();

	// BW1W120 10005c30 BW1M119 null
	void Initialise();
	// BW1W120 10003d20 BW1M119 null
	void ClearLogMessageBuffer();
	// BW1W120 10005030 BW1M119 null
	void ClearMessages();
	// BW1W120 10005340 BW1M119 null
	void CopyFrom(LHLogPropsSet* other);

	// BW1W120 100054c0 BW1M119 null
	void ReadFromRegistry();
	// BW1W120 10003d70 BW1M119 null
	void WriteToRegistry();
	// BW1W120 10005130 BW1M119 null
	void ReadFromDialog(void* dialog);
	// BW1W120 10004710 BW1M119 null
	void WriteToDialog(void* dialog);

	// BW1W120 10005cb0 BW1M119 null
	void InsertString(char* text, bool32_t save);
	// BW1W120 100062d0 BW1M119 null
	void ShowDialog();

	// BW1W120 10001180 BW1M119 null
	bool32_t IsDialogRunning() { return DialogHandle != INVALID_HANDLE_VALUE; }

	// BW1W120 10028564 BW1M119 null
	static void* DialogHandle;

private:
	// BW1W120 10005060 BW1M119 null
	void SaveText(char* text);

public:
	bool32_t           Uninitialised;                                /* 0x0 */
	char*              Messages[LH_LOG_PROPS_MAX_MESSAGES];          /* 0x4 */
	uint16_t           MessageIndex;                                 /* 0x324 */
	void*              DialogClosedEvent;                            /* 0x328 */
	char               LogFilename[LH_LOG_PROPS_FILENAME_SIZE];      /* 0x32c */
	char               LogFilter[LH_LOG_PROPS_FILTER_SIZE];          /* 0x3ac */
	char               AssertFilter[LH_LOG_PROPS_FILTER_SIZE];       /* 0x474 */
	char               ActiveAssertFilter[LH_LOG_PROPS_FILTER_SIZE]; /* 0x53c */
	char               HostIP[LH_LOG_PROPS_HOST_IP_SIZE];            /* 0x604 */
	bool32_t           SourceFlag;                                   /* 0x618 */
	bool32_t           LineFlag;                                     /* 0x61c */
	bool32_t           TimeFlag;                                     /* 0x620 */
	bool32_t           SysTimeFlag;                                  /* 0x624 */
	bool32_t           ThreadFlag;                                   /* 0x628 */
	bool32_t           PidFlag;                                      /* 0x62c */
	bool32_t           DebuggerFlag;                                 /* 0x630 */
	bool32_t           FileFlag;                                     /* 0x634 */
	bool32_t           WindowFlag;                                   /* 0x638 */
	bool32_t           RemoteFlag;                                   /* 0x63c */
	bool32_t           AssertFlag;                                   /* 0x640 */
	bool32_t           AutoScrollFlag;                               /* 0x644 */
	bool32_t           DisplayOnStartFlag;                           /* 0x648 */
	bool32_t           TruncateFlag;                                 /* 0x64c */
	bool32_t           InvertLogFilterFlag;                          /* 0x650 */
	bool32_t           DisableFilterFlag;                            /* 0x654 */
	bool32_t           InvertAssertFilterFlag;                       /* 0x658 */
	bool32_t           InvertActiveAssertFilterFlag;                 /* 0x65c */
	bool32_t           AssertFilterAsLogFlag;                        /* 0x660 */
	LH_LOG_PROPS_LEVEL Level;                                        /* 0x664 */
	uint16_t           MessageCount;                                 /* 0x668 */
};

static_assert(sizeof(LHLogPropsSet) == 0x66c, "LHLogPropsSet size is incorrect");

#endif /* BW1_DECOMP_LH_LOG_PROPS_INCLUDED_H */
