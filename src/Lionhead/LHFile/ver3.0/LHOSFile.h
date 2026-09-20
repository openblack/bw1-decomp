#ifndef BW1_DECOMP_LHOS_FILE_INCLUDED_H
#define BW1_DECOMP_LHOS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, enum LH_SEEK_MODE */

// Forward Declares

struct LHDir;

class LHOSFile
{
private:
	void* handle; /* 0x4 */
public:
	// Override methods

	// BW1W120 007bc660 BW1M100 10164ef0 LHOSFile::~LHOSFile(bool)
	virtual ~LHOSFile();
	// BW1W120 007bc730 BW1M100 10164b40 LHOSFile::Open(const char*, LH_FILE_MODE)
	virtual LH_FILE_RESULT Open(const char* path, LH_FILE_MODE mode);

	// Static methods

	// BW1W120 007bc6a0 BW1M100 10164e30 LHOSFile::Exists(const char*)
	static LH_FILE_RESULT Exists(const char* path);
	// BW1W120 007bcc20 LHOSFile::Rename(char const *, char const *)
	static LH_FILE_RESULT __stdcall Rename(const char* from, const char* to);
	// BW1W120 007bcc40 LHOSFile::Delete(char const *)
	static LH_FILE_RESULT __stdcall Delete(const char* path);

	// Constructors

	// BW1W120 007bc650 BW1M100 10164fc0 LHOSFile::LHOSFile(void)
	LHOSFile();

	// Non-virtual methods

	// BW1W120 0046b720 BW1M100 inlined LHOSFile::Write(char *const)
	LH_FILE_RESULT Write(const char* str);
	// BW1W120 007bc860 BW1M100 1061b68c LHOSFile::Close(void)
	LH_FILE_RESULT Close();
	// BW1W120 007bc880 BW1M100 1061beb4 LHOSFile::Seek(long, LH_SEEK_MODE, unsigned long *)
	LH_FILE_RESULT Seek(long distance, LH_SEEK_MODE mode, uint32_t* new_position);
	// BW1W120 007bc8e0 BW1M100 1061cc94 LHOSFile::Read(void* , unsigned long, unsigned long *)
	LH_FILE_RESULT Read(void* buffer, size_t size, size_t* read);
	// BW1W120 007bc920 BW1M100 1061bbb4 LHOSFile::Write(void* , unsigned long, unsigned long *)
	LH_FILE_RESULT Write(const void* data, uint32_t len, uint32_t* written);
	// BW1W120 007bc700 LHOSFile::Position(unsigned long *)
	LH_FILE_RESULT Position(uint32_t* position);
	// BW1W120 007bcae0 LHOSFile::Length(unsigned long *)
	LH_FILE_RESULT Length(uint32_t* length);
	// BW1W120 007bcb10 LHOSFile::DirFindFirst(char const *, LHDir*, unsigned long)
	LH_FILE_RESULT DirFindFirst(const char* pattern, LHDir* dir, uint32_t attributes);
	// BW1W120 007bcba0 LHOSFile::DirFindNext(LHDir*)
	LH_FILE_RESULT DirFindNext(LHDir* dir);
	// BW1W120 007bcc00 LHOSFile::DirFindEnd(LHDir*)
	LH_FILE_RESULT DirFindEnd(LHDir* dir);
	// BW1W120 007bcc60 LHOSFile::ConvertDirInfo(LHDir*)
	void ConvertDirInfo(LHDir* dir);
};

// BW1W120 007bc960 LHFileLength(char const *, unsigned long *)
LH_FILE_RESULT LHFileLength(const char* path, uint32_t* length);
// BW1W120 007bcdf0 LHLoadData(char*, void*, unsigned long, unsigned long *)
uint32_t LHLoadData(char* path, void* buffer, uint32_t length, uint32_t* read);
// BW1W120 007bd030 LHSaveData(char*, void*, unsigned long, unsigned long *)
uint32_t LHSaveData(char* path, void* data, uint32_t length, uint32_t* written);
// BW1W120 007bd0c0 LHLoadDataToMemory(char*, void**, unsigned long *)
uint32_t LHLoadDataToMemory(char* path, void** buffer, uint32_t* length);

#endif /* BW1_DECOMP_LHOS_FILE_INCLUDED_H */
