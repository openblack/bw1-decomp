#include <Lionhead/LHLib/ver5.0/LHFlic.h>

#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHSprite.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

LH_RETURN FrameChunkHeader::Load(FILE* file)
{
	fread(&Size, sizeof(Size), 1, file);
	fread(&Type, sizeof(Type), 1, file);
	fread(&Chunks, sizeof(Chunks), 1, file);
	fread(Reserved, sizeof(Reserved), 1, file);
	return LH_OK;
}

LH_RETURN LHChunkHeader::Load(FILE* file)
{
	fread(&Size, sizeof(Size), 1, file);
	fread(&Type, sizeof(Type), 1, file);
	return LH_OK;
}

LH_RETURN FlicHeader::LoadHeaderInfo(FILE* file)
{
	fread(&Size, sizeof(Size), 1, file);
	fread(&Magic, sizeof(Magic), 1, file);
	fread(&Frames, sizeof(Frames), 1, file);
	fread(&Width, sizeof(Width), 1, file);
	fread(&Height, sizeof(Height), 1, file);
	fread(&Depth, sizeof(Depth), 1, file);
	fread(&Flags, sizeof(Flags), 1, file);
	fread(&Speed, sizeof(Speed), 1, file);
	fread(&Reserved1, sizeof(Reserved1), 1, file);
	fread(&Created, sizeof(Created), 1, file);
	fread(&Creator, sizeof(Creator), 1, file);
	fread(&Updated, sizeof(Updated), 1, file);
	fread(&Updater, sizeof(Updater), 1, file);
	fread(&AspectX, sizeof(AspectX), 1, file);
	fread(&AspectY, sizeof(AspectY), 1, file);
	fread(Reserved2, sizeof(Reserved2), 1, file);
	fread(&OFrame1, sizeof(OFrame1), 1, file);
	fread(&OFrame2, sizeof(OFrame2), 1, file);
	fread(Reserved3, sizeof(Reserved3), 1, file);
	return LH_OK;
}

LH_RETURN FlicHeader::LoadHeaderInfoOnly(char* file_name)
{
	char  currentDirectory[MAX_PATH];
	FILE* file = fopen(file_name, "rb");
	GetCurrentDirectoryA(MAX_PATH, currentDirectory);
	if (file)
	{
		fread(&Size, sizeof(Size), 1, file);
		fread(&Magic, sizeof(Magic), 1, file);
		fread(&Frames, sizeof(Frames), 1, file);
		fread(&Width, sizeof(Width), 1, file);
		fread(&Height, sizeof(Height), 1, file);
		fread(&Depth, sizeof(Depth), 1, file);
		fread(&Flags, sizeof(Flags), 1, file);
		fread(&Speed, sizeof(Speed), 1, file);
		fread(&Reserved1, sizeof(Reserved1), 1, file);
		fread(&Created, sizeof(Created), 1, file);
		fread(&Creator, sizeof(Creator), 1, file);
		fread(&Updated, sizeof(Updated), 1, file);
		fread(&Updater, sizeof(Updater), 1, file);
		fread(&AspectX, sizeof(AspectX), 1, file);
		fread(&AspectY, sizeof(AspectY), 1, file);
		fread(Reserved2, sizeof(Reserved2), 1, file);
		fread(&OFrame1, sizeof(OFrame1), 1, file);
		fread(&OFrame2, sizeof(OFrame2), 1, file);
		fread(Reserved3, sizeof(Reserved3), 1, file);
		fclose(file);
		return LH_OK;
	}
	return LH_ERROR;
}

unsigned long FlicHeader::ReturnLastModifiedDate(char* file_name)
{
	FILE* file = fopen(file_name, "rb");
	if (file)
	{
		LoadHeaderInfo(file);
		return Updated;
	}
	return -1;
}

LH_RETURN FlicHeader::Load(char* file_name, LHSpriteList* sprite_list, unsigned long flags)
{
	FrameChunkHeader frameChunk;
	unsigned char*   palette[LH_FLIC_PALETTE_SIZE];
	FILE*            file = fopen(file_name, "rb");
	unsigned long    first = sprite_list == NULL ? 0 : sprite_list->Count;
	if (file)
	{
		LoadHeaderInfo(file);
		fseek(file, OFrame1, SEEK_SET);
		for (int i = 0; i < Frames; i++)
		{
			frameChunk.Load(file);
			if (frameChunk.Chunks == 0)
			{
				if (!malloc(frameChunk.Size - sizeof(FrameChunkHeader)))
					return LH_ERROR;
				CopyPreviousSprite(sprite_list);
			}
			else
			{
				LHChunkHeader* chunk = (LHChunkHeader*)malloc(frameChunk.Size - sizeof(FrameChunkHeader));
				if (!chunk)
					return LH_ERROR;
				fread(chunk, frameChunk.Size - sizeof(FrameChunkHeader), 1, file);
				LHChunkHeader* frameData = chunk;
				for (int j = 0; j < frameChunk.Chunks; j++)
				{
					switch (chunk->Type)
					{
					case LH_FLIC_CHUNK_TYPE_BYTE_RUN:
						ReadByterun((unsigned char*)chunk + LH_CHUNK_HEADER_SIZE, sprite_list, palette, Width, Height);
						break;
					case LH_FLIC_CHUNK_TYPE_DELTA_FLC:
						ReadDeltaflc((unsigned char*)chunk + LH_CHUNK_HEADER_SIZE, sprite_list, palette, Width, Height);
						break;
					case LH_FLIC_CHUNK_TYPE_COLOR_256:
						ReadColour256((unsigned char*)chunk + LH_CHUNK_HEADER_SIZE, palette);
						break;
					}
					chunk = (LHChunkHeader*)((unsigned char*)chunk + chunk->Size);
				}
				free(frameData);
			}
		}
		ShrinkToFit(sprite_list, first, sprite_list->Count, flags);
		fclose(file);
		return LH_OK;
	}
	return LH_ERROR;
}

LH_RETURN FlicHeader::CopyPreviousSprite(LHSpriteList* sprite_list)
{
	LHSprite* sprites = (LHSprite*)realloc(sprite_list->Sprites, (sprite_list->Count + 1) * sizeof(LHSprite));
	if (!sprites)
		return LH_ERROR;
	sprite_list->Sprites = sprites;
	memset(&sprite_list->Sprites[sprite_list->Count], 0, sizeof(LHSprite));
	LHSprite* previous = &sprite_list->Sprites[sprite_list->Count - 1];
	LHSprite* sprite = &sprite_list->Sprites[sprite_list->Count];
	uint8_t*  pixels = (uint8_t*)LHSys::TheSystem.mem.Alloc(previous->Width * previous->Height * sizeof(LHColor));
	if (!pixels)
		return LH_NO_MEMORY;
	memcpy(pixels, previous->PixelData, previous->Width * previous->Height * sizeof(LHColor));
	sprite->PixelData = pixels;
	sprite->Width = previous->Width;
	sprite->Height = previous->Height;
	sprite_list->Count++;
	return LH_OK;
}

LH_RETURN FlicHeader::ReadColour256(unsigned char* data, unsigned char** palette)
{
	unsigned char index = 0;
	unsigned long packets = *data;
	data += sizeof(uint16_t);
	for (unsigned long i = 0; i < packets; i++)
	{
		index += *data++;
		unsigned long count = *data++;
		if (count == 0)
			count = LH_FLIC_COLOURS;
		for (unsigned long j = 0; j < count * LH_FLIC_COLOUR_COMPONENTS; j++)
			palette[j] = (unsigned char*)*data++;
	}
	return LH_OK;
}

LH_RETURN FlicHeader::ReadByterun(unsigned char* data, LHSpriteList* sprite_list, unsigned char** palette,
                                  unsigned long width, unsigned long height)
{
	unsigned char index;
	LHColor       color;
	bool32_t      hasBackground = false;
	LHSprite*     sprites = (LHSprite*)realloc(sprite_list->Sprites, (sprite_list->Count + 1) * sizeof(LHSprite));
	if (!sprites)
		return LH_ERROR;
	sprite_list->Sprites = sprites;
	memset(&sprite_list->Sprites[sprite_list->Count], 0, sizeof(LHSprite));
	LHSprite* sprite = &sprite_list->Sprites[sprite_list->Count];
	LHColor*  pixels = (LHColor*)LHSys::TheSystem.mem.Alloc(width * height * sizeof(LHColor));
	if (!pixels)
		return LH_NO_MEMORY;
	sprite->PixelData = (uint8_t*)pixels;
	unsigned long remaining = width * height;
	unsigned long x = 0;
	data++;
	while (remaining > 0)
	{
		char count = *data++;
		if (count > 0)
		{
			remaining -= count;
			x += count;
			index = *data;
			color.Set((uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS],
			          (uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS + 1],
			          (uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS + 2]);
			if (!hasBackground)
			{
				Background.Set(color.GetR(), color.GetG(), color.GetB());
				hasBackground = true;
			}
			if (Background == color)
				color = LHSprite::TransparentColor24;
			while (--count >= 0)
			{
				pixels->Set(color.GetR(), color.GetG(), color.GetB());
				pixels++;
			}
			data++;
		}
		else
		{
			count = -count;
			remaining -= count;
			x += count;
			while (--count >= 0)
			{
				index = *data;
				color.Set((uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS],
				          (uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS + 1],
				          (uint8_t)palette[index * LH_FLIC_COLOUR_COMPONENTS + 2]);
				if (Background == color)
					color = LHSprite::TransparentColor24;
				pixels->Set(color.GetR(), color.GetG(), color.GetB());
				pixels++;
				data++;
			}
		}
		if (x == width)
		{
			data++;
			x = 0;
		}
		else if (x > width)
			return LH_ERROR;
	}
	sprite->Width = width;
	sprite->Height = height;
	sprite_list->Count++;
	return LH_OK;
}

LH_RETURN FlicHeader::ReadDeltaflc(unsigned char* data, LHSpriteList* sprite_list, unsigned char** palette,
                                   unsigned long width, unsigned long height)
{
	LHColor       color;
	unsigned char second;
	LHSprite*     sprites = (LHSprite*)realloc(sprite_list->Sprites, (sprite_list->Count + 1) * sizeof(LHSprite));
	if (!sprites)
		return LH_ERROR;
	sprite_list->Sprites = sprites;
	memset(&sprite_list->Sprites[sprite_list->Count], 0, sizeof(LHSprite));
	LHSprite* previous = &sprite_list->Sprites[sprite_list->Count - 1];
	LHSprite* sprite = &sprite_list->Sprites[sprite_list->Count];
	LHColor*  pixels = (LHColor*)LHSys::TheSystem.mem.Alloc(width * height * sizeof(LHColor));
	if (!pixels)
		return LH_NO_MEMORY;
	memcpy(pixels, previous->PixelData, width * height * sizeof(LHColor));
	sprite->PixelData = (uint8_t*)pixels;
	sprite->Width = width;
	sprite->Height = height;
	unsigned short lines = *data;
	data += sizeof(uint16_t);
	for (int line = 0; line < lines; line++)
	{
		short packets = *(short*)data;
		data += sizeof(uint16_t);
		while ((packets & LH_FLIC_DELTA_LINE_SKIP) == LH_FLIC_DELTA_LINE_SKIP)
		{
			pixels -= packets * width;
			packets = *(short*)data;
			data += sizeof(uint16_t);
		}
		LHColor* lineStart = pixels;
		for (unsigned short i = 0; i < packets; i++)
		{
			unsigned char skip = *data++;
			pixels += skip;
			signed char count = *data++;
			if (count > 0)
			{
				for (int j = 0; j < count; j++)
				{
					unsigned short pair = *(unsigned short*)data;
					unsigned char  first = LOBYTE(pair);
					second = HIBYTE(pair);
					color.Set((uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS],
					          (uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS + 1],
					          (uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS + 2]);
					if (Background == color)
						color = LHSprite::TransparentColor24;
					pixels->Set(color.GetR(), color.GetG(), color.GetB());
					pixels++;
					color.Set((uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS],
					          (uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS + 1],
					          (uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS + 2]);
					if (Background == color)
						color = LHSprite::TransparentColor24;
					pixels->Set(color.GetR(), color.GetG(), color.GetB());
					pixels++;
					data += sizeof(uint16_t);
				}
			}
			else if (count < 0)
			{
				unsigned short pair = *(unsigned short*)data;
				unsigned char  first = LOBYTE(pair);
				second = HIBYTE(pair);
				data += sizeof(uint16_t);
				for (int j = 0; j < -count; j++)
				{
					color.Set((uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS],
					          (uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS + 1],
					          (uint8_t)palette[first * LH_FLIC_COLOUR_COMPONENTS + 2]);
					if (Background == color)
						color = LHSprite::TransparentColor24;
					pixels->Set(color.GetR(), color.GetG(), color.GetB());
					pixels++;
					color.Set((uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS],
					          (uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS + 1],
					          (uint8_t)palette[second * LH_FLIC_COLOUR_COMPONENTS + 2]);
					if (Background == color)
						color = LHSprite::TransparentColor24;
					pixels->Set(color.GetR(), color.GetG(), color.GetB());
					pixels++;
				}
			}
		}
		pixels = lineStart + width;
	}
	sprite_list->Count++;
	return LH_OK;
}

LH_RETURN FlicHeader::ShrinkToFit(LHSpriteList* sprite_list, unsigned long first, unsigned long last,
                                  unsigned long flags)
{
	LHSprite* sprite = &sprite_list->Sprites[first];
	LHColor   transparent = LHSprite::TransparentColor24;
	FindTopLine(sprite);
	FindBottomLine(sprite);
	FindLeftLine(sprite);
	FindRightLine(sprite);
	sprite = &sprite_list->Sprites[first];
	FrameInfos.Init();
	for (unsigned long i = first; i < last; i++)
	{
		long top = FindTopLine(sprite);
		long bottom = FindBottomLine(sprite);
		long left = FindLeftLine(sprite);
		long right = FindRightLine(sprite);
		FrameInfos.Add(left - Width / 2, top - Height / 2);
		for (long j = 0; j < bottom - top; j++)
		{
			memcpy(sprite->PixelData + j * (right - left) * sizeof(LHColor),
			       sprite->PixelData + ((top + j) * sprite->Width + left) * sizeof(LHColor),
			       (right - left + 1) * sizeof(LHColor));
		}
		sprite->Width = right - left;
		sprite->Height = bottom - top;
		sprite->PixelData = (uint8_t*)realloc(sprite->PixelData, sprite->Width * sprite->Height * sizeof(LHColor));
		if (flags & LH_CONVERT_FLAGS_PIXEL16)
		{
			LHColor*   src = (LHColor*)sprite->PixelData;
			LHPixel16* dst = (LHPixel16*)sprite->PixelData;
			for (int k = 0; k < sprite->Width * sprite->Height; k++)
			{
				if (transparent == src)
					*dst = LHSprite::TransparentColor16;
				else
					dst->Set(src);
				dst++;
				src++;
			}
			sprite->PixelData =
				(uint8_t*)realloc(sprite->PixelData, sprite->Width * sprite->Height * sizeof(LHPixel16));
		}
		sprite++;
	}
	return LH_OK;
}

long FlicHeader::FindTopLine(LHSprite* sprite)
{
	LHColor* reference = (LHColor*)sprite->PixelData;
	LHColor* pixel = reference;
	long     line = 0;
	while (true)
	{
		for (unsigned long x = 0; x < sprite->Width; x++)
		{
			if (!(*pixel == reference))
				return line;
			pixel++;
		}
		line++;
	}
}

long FlicHeader::FindBottomLine(LHSprite* sprite)
{
	long     line = sprite->Height;
	LHColor* reference = (LHColor*)sprite->PixelData + (sprite->Width * line - 1);
	LHColor* pixel = reference;
	while (true)
	{
		for (unsigned long x = sprite->Width; x > 0; x--)
		{
			if (!(*pixel == reference))
				return line - 1;
			pixel--;
		}
		line--;
	}
}

long FlicHeader::FindLeftLine(LHSprite* sprite)
{
	LHColor*      reference = (LHColor*)sprite->PixelData;
	LHColor*      pixel = reference;
	unsigned long left = LH_FLIC_MAX_WIDTH;
	for (unsigned long y = 0; y < sprite->Height; y++)
	{
		for (unsigned long x = 0; x < sprite->Width; x++)
		{
			if (!(*pixel == reference))
			{
				if (x < left)
					left = x;
				pixel += sprite->Width - x;
				break;
			}
			pixel++;
		}
	}
	return left;
}

long FlicHeader::FindRightLine(LHSprite* sprite)
{
	LHColor*      reference = (LHColor*)sprite->PixelData + (sprite->Width - 1);
	LHColor*      pixel = reference;
	unsigned long right = 0;
	for (unsigned long y = 0; y < sprite->Height; y++)
	{
		unsigned long x;
		for (x = sprite->Width; x > 0; x--)
		{
			if (!(*pixel == reference))
			{
				if (x > right)
					right = x;
				break;
			}
			pixel--;
		}
		pixel += sprite->Width * 2 - x;
	}
	return right;
}

LH_RETURN FlicHeader::SetupOffset(uint16_t count)
{
	LHSys::TheSystem.mem.Alloc(count * sizeof(uint16_t));
	return LH_OK;
}

unsigned long FlicHeader::GetLastUpdated()
{
	return Updated;
}

bool32_t FlicHeader::SetLastUpdated(unsigned long updated)
{
	Updated = updated;
	return true;
}

LH_RETURN FrameInfo::Set(long x, long y)
{
	X = (short)x;
	Y = (short)y;
	return LH_OK;
}

FrameInfoLinkedList::FrameInfoLinkedList()
{
	Count = 0;
}

LH_RETURN FrameInfoLinkedList::FreeAll()
{
	if (Count > 0)
	{
		for (uint16_t i = Count - 1; i > 0; i--)
			delete Get(i);
	}
	Count = 0;
	return LH_OK;
}

LH_RETURN FrameInfoLinkedList::Init()
{
	Count = 0;
	return LH_OK;
}

LH_RETURN FrameInfoLinkedList::Setup(long x, long y)
{
	Head = NEW(764) FrameInfo;
	Head->Set(x, y);
	Head->Next = NULL;
	Count = 1;
	return LH_OK;
}

LH_RETURN FrameInfoLinkedList::Add(long x, long y)
{
	if (Count == 0)
		return Setup(x, y);
	FrameInfo* info = Head;
	FrameInfo* last;
	for (uint32_t i = 0; i < Count; i++)
	{
		if (!info)
			return LH_ERROR;
		last = info;
		info = info->Next;
	}
	FrameInfo* added = NEW(794) FrameInfo;
	if (!added)
		return LH_NO_MEMORY;
	added->Set(x, y);
	added->Next = NULL;
	last->Next = added;
	Count++;
	return LH_OK;
}

FrameInfo* FrameInfoLinkedList::Get(uint16_t index)
{
	FrameInfo* info = Head;
	for (uint16_t i = 0; i < index; i++)
		info = info->Next;
	return info;
}
