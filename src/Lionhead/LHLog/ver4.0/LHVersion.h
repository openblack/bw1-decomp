#ifndef BW1_DECOMP_LH_VERSION_INCLUDED_H
#define BW1_DECOMP_LH_VERSION_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

class LHVersion;
template <typename T> class LHLinkedList;
struct HWND__;

enum
{
	LH_VERSION_TAG_LENGTH = 9,
	LH_VERSION_BUILD_LENGTH = 10,
	LH_VERSION_NAME_LENGTH = 32,
	LH_VERSION_NUMBER_LENGTH = 19,
	LH_VERSION_AUTHOR_LENGTH = 42,
	LH_VERSION_DATE_LENGTH = 40,
	LH_VERSION_COMMENTS_LENGTH = 100,
	LH_VERSION_RECIPIENT_LENGTH = 60,
	LH_VERSION_PASSWORD_LENGTH = 16,
	LH_VERSION_CHECKSUM_LENGTH = 4,
};

struct LHVersionBlock
{
	char StartTag[LH_VERSION_TAG_LENGTH];
	char Build[LH_VERSION_BUILD_LENGTH];         /* 0x9 */
	char Name[LH_VERSION_NAME_LENGTH];           /* 0x13 */
	char Major[LH_VERSION_NUMBER_LENGTH];        /* 0x33 */
	char Minor[LH_VERSION_NUMBER_LENGTH];        /* 0x46 */
	char Author[LH_VERSION_AUTHOR_LENGTH];       /* 0x59 */
	char Date[LH_VERSION_DATE_LENGTH];           /* 0x83 */
	char Expiry[LH_VERSION_DATE_LENGTH];         /* 0xab */
	char Comments[LH_VERSION_COMMENTS_LENGTH];   /* 0xd3 */
	char Recipient[LH_VERSION_RECIPIENT_LENGTH]; /* 0x137 */
	char Password[LH_VERSION_PASSWORD_LENGTH];   /* 0x173 */
	char Checksum[LH_VERSION_CHECKSUM_LENGTH];   /* 0x183 */
	char EndTag[LH_VERSION_TAG_LENGTH];          /* 0x187 */
};

class __declspec(dllimport) LHVersion
{
public:
	enum VALIDATION
	{
		VALIDATION_ENCRYPTED = 0,
		VALIDATION_PLAIN = 1,
		VALIDATION_INVALID = 2,
	};

	// BW1W120 10002730 BW1M119 null
	LHVersion() { Block = NULL; }
	// BW1W120 10008890 BW1M119 0116fb00 (LHCombined Release)
	LHVersion(LHVersionBlock* block);
	// BW1W120 10008350 BW1M119 0116ef10 (LHCombined Release)
	~LHVersion();

#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10002740 BW1M119 null
	static char* GetModuleChecksumString() { return ModuleChecksumString; }
#else
	// BW1W120 10002740 BW1M119 null
	static char* GetModuleChecksumString();
#endif
	// BW1W120 10002750 BW1M119 null
	static unsigned long GetModuleChecksum() { return ModuleChecksum; }

	// BW1W120 10006b20 BW1M119 0116f660 (LHCombined Release)
	static unsigned long ChecksumBlock(unsigned char* block, unsigned short length);
	// BW1W120 10006b70 BW1M119 0116f350 (LHCombined Release)
	static void DecryptBlock(unsigned char* block, unsigned short length);
	// BW1W120 10006ba0 BW1M119 0116f180 (LHCombined Release)
	static void EncryptBlock(unsigned char* block, unsigned short length);
	// BW1W120 100070b0 BW1M119 0116f8a0 (LHCombined Release)
	static void SetModuleChecksumString(char* string);
	// BW1W120 10007160 BW1M119 0116f700 (LHCombined Release)
	int CopyrightDialogProc(HWND__* hwnd, unsigned int msg, unsigned int wparam, long lparam);
	// BW1W120 10007eb0 BW1M119 0116f950 (LHCombined Release)
	static void SetModuleChecksumError();
	// BW1W120 10008510 BW1M119 0116ec50 (LHCombined Release)
	static int VersionDialogProc(HWND__* hwnd, unsigned int msg, unsigned int wparam, long lparam);
	// BW1W120 10008760 BW1M119 0116ebb0 (LHCombined Release)
	static LH_RETURN GetMajorMinor(char* module, unsigned long* major, unsigned long* minor);
	// BW1W120 100087a0 BW1M119 0116eaa0 (LHCombined Release)
	static LH_RETURN GetMajorMinorText(char* module, char** text);
	// BW1W120 10008850 BW1M119 0116ea00 (LHCombined Release)
	static LH_RETURN GetMajorMinorULONG(char* module, unsigned long* version);
	// BW1W120 10008ca0 BW1M119 0116ecf0 (LHCombined Release)
	static void ShowVersionDialog(bool32_t show);

private:
	// BW1W120 10006590 BW1M119 011703f0 (LHCombined Release)
	bool32_t CheckForNewerVersion(LHVersionBlock* registry_block);
	// BW1W120 10006850 BW1M119 011701c0 (LHCombined Release)
	LH_RETURN UpdateRegistry(LHVersionBlock* block);
	// BW1W120 10006bd0 BW1M119 0116ff40 (LHCombined Release)
	LH_RETURN ProcessFields();
	// BW1W120 10006f50 BW1M119 0116fa00 (LHCombined Release)
	bool32_t CheckExpiry();
	// BW1W120 10007440 BW1M119 0116f520 (LHCombined Release)
	VALIDATION ValidateBlock();
	// BW1W120 10007f30 BW1M119 0116f7a0 (LHCombined Release)
	void ComputeModuleChecksum();
	// BW1W120 100081d0 BW1M119 0116f760 (LHCombined Release)
	void ShowCopyrightDialog();
	// BW1W120 100083e0 BW1M119 0116ed30 (LHCombined Release)
	static LHVersion* FindKey(char* name);
	// BW1W120 10008420 BW1M119 0116eca0 (LHCombined Release)
	static void RepopulateList(HWND__* hwnd, unsigned long state);

#ifdef LH_MULTIPLAYER_EXPORTS
public:
	// BW1W120 10028be0 BW1M119 null
	static int VersionDialogRunning;

private:
	// BW1W120 10028be4 BW1M119 null
	static unsigned long CurrentListState;
	// BW1W120 10028be8 BW1M119 null
	static LHLinkedList<LHVersion*>* VersionInfo;
	// BW1W120 10028bf0 BW1M119 null
	static char* ModuleChecksumString;
#endif

private:
	// BW1W120 10028bec BW1M119 null
	static unsigned long ModuleChecksum;

	LHVersionBlock* Block;
	LHVersionBlock  RegistryBlock; /* 0x4 */
	bool32_t        Declined;      /* 0x194 */
	unsigned long   MajorVersion;  /* 0x198 */
	unsigned long   MinorVersion;  /* 0x19c */
};

#define LH_VERSION_START_TAG "YyHhTtMm"
#define LH_VERSION_END_TAG   "YyHhTtMM"
#define LH_VERSION_BUILD     "RELEASE"
#define LH_VERSION_NONE      "NULL"

#define LH_VERSION_INFO(name, major, minor, author, date, expiry, comments)                                            \
	static LHVersionBlock VersionBlock = {LH_VERSION_START_TAG,                                                        \
	                                      LH_VERSION_BUILD,                                                            \
	                                      name,                                                                        \
	                                      major,                                                                       \
	                                      minor,                                                                       \
	                                      author,                                                                      \
	                                      date,                                                                        \
	                                      expiry,                                                                      \
	                                      comments,                                                                    \
	                                      LH_VERSION_NONE,                                                             \
	                                      LH_VERSION_NONE,                                                             \
	                                      "",                                                                          \
	                                      LH_VERSION_END_TAG};                                                         \
	static LHVersion      VersionInformation(&VersionBlock);                                                           \
	static LHVersion*     VersionPointer = &VersionInformation

#endif /* BW1_DECOMP_LH_VERSION_INCLUDED_H */
