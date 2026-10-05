#ifndef BW1_DECOMP_INFO_LOADERS_INCLUDED_H
#define BW1_DECOMP_INFO_LOADERS_INCLUDED_H

#include <string.h> /* For memcpy */

#include <Lionhead/LHFile/ver3.0/LHFile.h> /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>   /* For operator new(size_t, const char*, uint32_t) */

// fabricated: the macro names are not original, but every info class carries the same set of
// loaders for its slice of the data block that load_variables() (Balance.cpp) fills in, varying
// only in the slice bounds and the header and line that tag the temporary buffer. The Mac build
// names the members (get_start, get_size, SaveBinary, Load, LoadBinary) but inlines most of them.
//
// - INFO_DATA_BLOCK(first, last) declares the slice, from member `first` through member `last`.
// - LoadBinary() reads the slice back from the binary cache segment (scripts\info.dat).
// - Load() copies it out of a parsed text record, writes it through to the cache, advances the
//   record cursor and returns the number of bytes consumed by the whole hierarchy.
//
// The root of a hierarchy assigns the info its ID; a derived level loads its base first.
//
// The tag is the declaring header's path, which moved between releases. The macros take the file
// name alone.

#if defined(VERSION_BW1W100)
#define INFO_SOURCE_PATH "C:\\dev\\black\\"
#elif defined(VERSION_BW1W110)
#define INFO_SOURCE_PATH "C:\\dev\\Black\\"
#else
#define INFO_SOURCE_PATH "C:\\dev\\MP\\Black\\"
#endif

#define INFO_DATA_BLOCK(first, last)                                                                                   \
	char* get_start()                                                                                                  \
	{                                                                                                                  \
		return (char*)&first;                                                                                          \
	}                                                                                                                  \
	unsigned long get_size()                                                                                           \
	{                                                                                                                  \
		return (char*)&last - get_start() + sizeof(last);                                                              \
	}                                                                                                                  \
	void SaveBinary(unsigned char* data, unsigned long size, LHFile* file)                                             \
	{                                                                                                                  \
		file->WriteSegmentData(data, size);                                                                            \
	}

#define INFO_ROOT_LOAD()                                                                                               \
	unsigned long Load(unsigned char** cursor, LHFile* file)                                                           \
	{                                                                                                                  \
		SaveBinary(*cursor, get_size(), file);                                                                         \
		memcpy(get_start(), *cursor, get_size());                                                                      \
		*cursor += get_size();                                                                                         \
		SetInfoID();                                                                                                   \
		return get_size();                                                                                             \
	}

// The temporary buffer of a few classes was allocated untagged.
#define INFO_ROOT_LOADERS_UNTAGGED()                                                                                   \
	INFO_ROOT_LOAD()                                                                                                   \
	void LoadBinary(LHFile* file)                                                                                      \
	{                                                                                                                  \
		unsigned char* temp = new unsigned char[get_size()];                                                           \
		file->GetSegmentData(temp, get_size(), -1);                                                                    \
		memcpy(get_start(), temp, get_size());                                                                         \
		delete[] temp;                                                                                                 \
		SetInfoID();                                                                                                   \
	}

#define INFO_ROOT_LOADERS(file_name, line)                                                                             \
	INFO_ROOT_LOAD()                                                                                                   \
	void LoadBinary(LHFile* file)                                                                                      \
	{                                                                                                                  \
		unsigned char* temp = new (INFO_SOURCE_PATH file_name, line) unsigned char[get_size()];                        \
		file->GetSegmentData(temp, get_size(), -1);                                                                    \
		memcpy(get_start(), temp, get_size());                                                                         \
		delete[] temp;                                                                                                 \
		SetInfoID();                                                                                                   \
	}

#define INFO_DERIVED_LOADERS(base, file_name, line)                                                                    \
	unsigned long Load(unsigned char** cursor, LHFile* file)                                                           \
	{                                                                                                                  \
		unsigned long size = base::Load(cursor, file);                                                                 \
		SaveBinary(*cursor, get_size(), file);                                                                         \
		memcpy(get_start(), *cursor, get_size());                                                                      \
		*cursor += get_size();                                                                                         \
		return size + get_size();                                                                                      \
	}                                                                                                                  \
	void LoadBinary(LHFile* file)                                                                                      \
	{                                                                                                                  \
		base::LoadBinary(file);                                                                                        \
		unsigned char* temp = new (INFO_SOURCE_PATH file_name, line) unsigned char[get_size()];                        \
		file->GetSegmentData(temp, get_size(), -1);                                                                    \
		memcpy(get_start(), temp, get_size());                                                                         \
		delete[] temp;                                                                                                 \
	}

#endif /* BW1_DECOMP_INFO_LOADERS_INCLUDED_H */
