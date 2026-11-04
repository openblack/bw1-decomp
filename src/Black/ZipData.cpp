#include "ZipData.h"

#include <string.h> /* For memcpy */

#include <zlib/zlib.h>

ZipData::ZipData()
{
	CompressedData = NULL;
	UncompressedData = NULL;
	CompressedSize = 0;
	UncompressedSize = 0;
}

ZipData::~ZipData()
{
	Reset();
}

void ZipData::Reset()
{
	if (UncompressedData != NULL)
	{
		delete[] UncompressedData;
		UncompressedData = NULL;
	}
	if (CompressedData != NULL)
	{
		delete[] CompressedData;
		CompressedData = NULL;
	}
	CompressedSize = 0;
	UncompressedSize = 0;
}

bool ZipData::SetCompressedData(char* data, unsigned long length)
{
	Reset();
	UncompressedSize = *(unsigned long*)data;
	CompressedSize = length;
	CompressedData = new char[length];
	memcpy(CompressedData, data + sizeof(UncompressedSize), length);
	UncompressedData = new char[UncompressedSize];
	if (uncompress((Bytef*)UncompressedData, &UncompressedSize, (Bytef*)CompressedData, CompressedSize) != Z_OK)
	{
		return false;
	}
	return true;
}

bool ZipData::SetUncompressedData(char* data, unsigned long length)
{
	Reset();
	UncompressedSize = length;
	UncompressedData = new char[length];
	memcpy(UncompressedData, data, length);
	CompressedSize = length + length / ZIP_DATA_COMPRESS_GROWTH_DIVISOR + ZIP_DATA_COMPRESS_EXTRA_BYTES;
	CompressedData = new char[length + length / ZIP_DATA_COMPRESS_GROWTH_DIVISOR + ZIP_DATA_COMPRESS_EXTRA_BYTES +
	                          sizeof(UncompressedSize)];
	if (compress((Bytef*)CompressedData + sizeof(UncompressedSize), &CompressedSize, (Bytef*)UncompressedData,
	             UncompressedSize) != Z_OK)
	{
		return false;
	}
	*(unsigned long*)CompressedData = UncompressedSize;
	return true;
}
