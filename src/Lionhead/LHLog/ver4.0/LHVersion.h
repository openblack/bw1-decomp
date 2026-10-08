#ifndef BW1_DECOMP_LH_VERSION_INCLUDED_H
#define BW1_DECOMP_LH_VERSION_INCLUDED_H

#include <stddef.h> /* For NULL */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

class LHVersion;
template <typename T> class LHLinkedList;
struct HWND__;

// A module's version record, compiled into the module's .data and registered with LHLogR.dll by
// constructing a static LHVersion from it (see LHConnection.cpp). The tags at both ends delimit it.
// ValidateBlock also accepts an encrypted block: StartTag "31415927", the 0x187 bytes after it
// scrambled (DecryptBlock), and a ChecksumBlock() of the first 0x183 bytes stored in Checksum.
// The Mac build has no version blocks; the layout comes from LHLogR.dll (LHVersion::ProcessFields,
// ValidateBlock, UpdateRegistry and the 0x190-byte struct copy in CheckForNewerVersion).
// TODO: field names fabricated, except where the registry value names written by UpdateRegistry
// ("MajorVersionNumber", "MinorVersionNumber", "Author", "Date", "Comments") name them.
struct LHVersionBlock
{
	char StartTag[9];     // 0x000 "YyHhTtMm" (or "31415927" once encrypted)
	char Build[10];       // 0x009 "RELEASE"
	char Name[32];        // 0x013 registry key / GetMajorMinor() lookup name, e.g. "LHConnectionProtocol"
	char Major[19];       // 0x033 "MajorVersionNumber", parsed with "%u%c"
	char Minor[19];       // 0x046 "MinorVersionNumber", "$Revision: " is stripped before parsing
	char Author[42];      // 0x059 "$Author: ... $"
	char Date[40];        // 0x083 "$Date: ... $"
	char Expiry[40];      // 0x0ab "NULL" or an expiry date checked by CheckExpiry ("%d/%d/%d")
	char Comments[100];   // 0x0d3
	char Field_0x137[60]; // 0x137 "NULL" (blanked); non-empty makes the constructor show the copyright dialog
	char Field_0x173[16]; // 0x173 "NULL" (blanked); likewise, and also gates the expiry check
	char Checksum[4];     // 0x183 only meaningful in an encrypted block
	char EndTag[9];       // 0x187 "YyHhTtMM"
};

// Exported by LHLogR.dll.
// sizeof(LHVersion) == 0x1a0 (the implicit operator= exported by LHLogR.dll copies 0x68 dwords)
class __declspec(dllimport) LHVersion
{
public:
	// TODO: enumerator names fabricated
	enum VALIDATION
	{
		VALIDATION_ENCRYPTED = 0, // decrypted and checksum verified
		VALIDATION_PLAIN = 1,     // StartTag still "YyHhTtMm"
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
	static void ShowVersionDialog(int show);

private:
	// BW1W120 10006590 BW1M119 011703f0 (LHCombined Release)
	int CheckForNewerVersion(LHVersionBlock* registry_block);
	// BW1W120 10006850 BW1M119 011701c0 (LHCombined Release)
	LH_RETURN UpdateRegistry(LHVersionBlock* block);
	// BW1W120 10006bd0 BW1M119 0116ff40 (LHCombined Release)
	LH_RETURN ProcessFields();
	// BW1W120 10006f50 BW1M119 0116fa00 (LHCombined Release)
	int CheckExpiry();
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

	// TODO: every static data member declared here bumps cl's _$E counter in the game TUs that include
	// this header (GameStats.cpp would get _$E25.. instead of the target's _$E20..), so the game does not
	// see them yet. LHMultiplayerR.dll needs them for the inline GetModuleChecksum() and
	// GetModuleChecksumString(), which LHLobby::ProcessLobbyGreeting inlines (it imports ModuleChecksum and
	// ModuleChecksumString); GameStats.cpp calls the exported GetModuleChecksum() instead.
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

	LHVersionBlock* Block;         // 0x000 the module's own block
	LHVersionBlock  RegistryBlock; // 0x004 the block last written to the registry for Block->Name
	int             Declined;      // 0x194 set by CopyrightDialogProc; TODO: name fabricated
	unsigned long   MajorVersion;  // 0x198 parsed from Block->Major
	unsigned long   MinorVersion;  // 0x19c parsed from Block->Minor
};

#endif /* BW1_DECOMP_LH_VERSION_INCLUDED_H */
