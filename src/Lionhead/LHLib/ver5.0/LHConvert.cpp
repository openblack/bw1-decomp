#include <Lionhead/LHLib/ver5.0/LHConvert.h>

#include <limits.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LHFile/ver3.0/LHFilePath.h>
#include <Lionhead/LHLib/ver5.0/LHSprite.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

LH_RETURN LHLoadBMP(char* file_name, LHSprite* sprite)
{
	char      path[256];
	BITMAP    bm;
	LH_RETURN result = LH_ERROR;
	bool32_t  is16 = LHSys::GetScreen().Depth() == LH_SCREEN_DEPTH_16;
	strcpy(path, file_name);
	HBITMAP bitmap = (HBITMAP)LoadImageA(NULL, path, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE | LR_CREATEDIBSECTION);
	if (bitmap == NULL)
	{
		sprintf(path, GAME_DRIVE_PATH_FORMAT, g_GameDriveCharacter, file_name);
		bitmap = (HBITMAP)LoadImageA(NULL, path, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE | LR_CREATEDIBSECTION);
		if (bitmap == NULL)
			return LH_ERROR;
	}
	HDC dc = CreateCompatibleDC(NULL);
	if (dc != NULL && SelectObject(dc, bitmap) != NULL && GetObjectA(bitmap, sizeof(BITMAP), &bm) != 0)
	{
		long     rowBytes = bm.bmWidth * bm.bmBitsPixel / CHAR_BIT;
		long     stride = is16 ? bm.bmWidth * sizeof(LHPixel16) : rowBytes;
		uint8_t* pixels = (uint8_t*)LHSys::TheSystem.mem.Alloc(bm.bmHeight * stride);
		if (pixels != NULL)
		{
			sprite->PixelData = pixels;
			sprite->Width = bm.bmWidth;
			sprite->Height = bm.bmHeight;
			long     srcStride = rowBytes + sprite->Width % LH_BITMAP_ROW_ALIGNMENT;
			uint8_t* src = (uint8_t*)bm.bmBits + (bm.bmHeight - 1) * srcStride;
			for (long row = bm.bmHeight; row != 0; row--)
			{
				if (is16)
				{
					LHColor*   srcPixel = (LHColor*)src;
					LHPixel16* dstPixel = (LHPixel16*)pixels;
					for (long x = 0; x < bm.bmWidth; x++, dstPixel++, srcPixel++)
					{
						dstPixel->Set(srcPixel);
					}
				}
				else
				{
					memcpy(pixels, src, rowBytes);
				}
				src -= srcStride;
				pixels += stride;
			}
			result = LH_OK;
		}
	}
	DeleteObject(bitmap);
	return result;
}

LH_RETURN LHLoadABMP(char* file_name, LHSprite* sprite, unsigned long unused)
{
	char      path[256];
	BITMAP    bm;
	LH_RETURN result = LH_ERROR;
	strcpy(path, file_name);
	HBITMAP bitmap = (HBITMAP)LoadImageA(NULL, path, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE | LR_CREATEDIBSECTION);
	if (bitmap == NULL)
	{
		sprintf(path, GAME_DRIVE_PATH_FORMAT, g_GameDriveCharacter, file_name);
		bitmap = (HBITMAP)LoadImageA(NULL, path, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE | LR_CREATEDIBSECTION);
#ifdef VERSION_BW1WCI
		if (bitmap == NULL)
		{
			sprintf(path, PARENT_DIRECTORY_PATH_FORMAT, file_name);
			bitmap = (HBITMAP)LoadImageA(NULL, path, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE | LR_CREATEDIBSECTION);
		}
#endif
		if (bitmap == NULL)
			return LH_ERROR;
	}
	HDC dc = CreateCompatibleDC(NULL);
	if (dc != NULL && SelectObject(dc, bitmap) != NULL && GetObjectA(bitmap, sizeof(BITMAP), &bm) != 0)
	{
		long     rowBytes = bm.bmWidth * bm.bmBitsPixel / CHAR_BIT;
		uint8_t* pixels = (uint8_t*)LHSys::TheSystem.mem.Alloc(bm.bmHeight * rowBytes);
		if (pixels != NULL)
		{
			sprite->PixelData = pixels;
			sprite->Width = bm.bmWidth;
			sprite->Height = bm.bmHeight;
			long     srcStride = rowBytes + sprite->Width % LH_BITMAP_ROW_ALIGNMENT;
			uint8_t* src = (uint8_t*)bm.bmBits + (bm.bmHeight - 1) * srcStride;
			for (long row = bm.bmHeight; row != 0; row--)
			{
				memcpy(pixels, src, rowBytes);
				src -= srcStride;
				pixels += rowBytes;
			}
			result = LH_OK;
		}
	}
	DeleteObject(bitmap);
	return result;
}

LH_RETURN LHConvert::ToSprites(char* file_name, LHSpriteList* sprite_list, LHColor* colors, unsigned long flags,
                               long* sprite_count, FlicHeader* flic_header, unsigned long* unused)
{
	LHSprite   sprite;
	long       spriteCount = 0;
	LHSprite*  newSprites = NULL;
	FlicHeader flic;
	LHSprite*  dst;
	LH_RETURN  result;
	if (sprite_list == NULL)
		return LH_ERROR;
	if (LHLoadABMP(file_name, &sprite, 0) != LH_OK)
	{
		if (flic_header == NULL)
		{
			result = flic.Load(file_name, sprite_list, flags);
			if (sprite_count != NULL)
				*sprite_count = flic.Frames;
			return result;
		}
		result = flic_header->Load(file_name, sprite_list, flags);
		if (sprite_count != NULL)
			*sprite_count = flic_header->Frames;
		return result;
	}
	result = LH_NO_MEMORY;
	LHColor* key = colors != NULL ? colors : (LHColor*)sprite.PixelData;
	for (long pass = 1; pass >= 0; pass--)
	{
		LHColor* row = (LHColor*)sprite.PixelData;
		LHColor* strip = row;
		LHColor* end = row + sprite.Width * sprite.Height;
		for (; row < end; row += sprite.Width)
		{
			if (!(*row == key))
			{
				LHColor* lineEnd = strip + sprite.Width;
				LHColor* left = strip;
				long     rows = (row - strip) / sprite.Width;
				for (; left < lineEnd; left++)
				{
					if (IsColumnAllOneColor(left, sprite.Width, rows, key) != LH_OK)
					{
						LHColor* right;
						for (right = left; right < lineEnd; right++)
						{
							if (IsColumnAllOneColor(right, sprite.Width, rows, key) == LH_OK)
								break;
						}
						if (right < lineEnd)
						{
							long width = right - left;
							if (width > 0)
							{
								LHColor* top;
								for (top = left; top < row; top += sprite.Width)
								{
									if (IsLineAllOneColor(top, top + width, key) != LH_OK)
										break;
								}
								if (top < row)
								{
									LHColor* bottom;
									for (bottom = top; bottom < row; bottom += sprite.Width)
									{
										if (IsLineAllOneColor(bottom, bottom + width, key) == LH_OK)
											break;
									}
									long height = (bottom - top) / sprite.Width;
									if (height > 0)
									{
										if (pass != 0)
										{
											spriteCount++;
										}
										else if (flags & LH_CONVERT_FLAGS_PIXEL16)
										{
											if (CopySpriteIn24To16(dst++, width, height, top, bottom, sprite.Width, key,
											                       row, flags) == LH_NO_MEMORY)
												goto cleanup;
										}
										else
										{
											if (CopySpriteIn24(dst++, width, height, top, bottom, sprite.Width, key,
											                   row, flags) == LH_NO_MEMORY)
												goto cleanup;
										}
									}
									left = right;
								}
							}
						}
					}
				}
				strip = row + sprite.Width;
			}
		}
		if (pass != 0)
		{
			if (spriteCount == 0)
			{
				result = LH_FAIL;
				goto cleanup;
			}
			newSprites =
				(LHSprite*)realloc(sprite_list->Sprites, (sprite_list->Count + spriteCount) * sizeof(LHSprite));
			if (newSprites == NULL)
				goto cleanup;
			sprite_list->Sprites = newSprites;
			_msize(newSprites);
			memset(sprite_list->Sprites + sprite_list->Count, 0, spriteCount * sizeof(LHSprite));
			dst = sprite_list->Sprites + sprite_list->Count;
		}
	}
	sprite_list->Count += spriteCount;
	if (sprite_count != NULL)
		*sprite_count = spriteCount;
	if (sprite.PixelData != NULL)
		LHSys::TheSystem.mem.Free(sprite.PixelData);
	return LH_OK;
cleanup:
	if (newSprites != NULL)
	{
		LHSprite* created = sprite_list->Sprites + sprite_list->Count;
		for (long i = 0; i < spriteCount; i++, created++)
		{
			if (created->PixelData != NULL)
				LHSys::TheSystem.mem.Free(created->PixelData);
		}
		LHSys::TheSystem.mem.Free(sprite_list->Sprites);
	}
	if (sprite.PixelData != NULL)
		LHSys::TheSystem.mem.Free(sprite.PixelData);
	return result;
}

LH_RETURN LHConvert::IsLineAllOneColor(LHColor* start, LHColor* end, LHColor* color)
{
	if (start < end)
	{
		while (*start == color && start < end)
			start++;
		if (start == end)
			return LH_OK;
		return LH_FAIL;
	}
	return LH_ERROR;
}

LH_RETURN LHConvert::IsColumnAllOneColor(LHColor* start, long width, long height, LHColor* color)
{
	if (width > 0 && height > 0)
	{
		long rows = height;
		while (*start == color && rows != 0)
		{
			start += width;
			rows--;
		}
		if (rows == 0)
			return LH_OK;
		return LH_FAIL;
	}
	return LH_ERROR;
}

LH_RETURN LHConvert::CopySpriteIn24To16(LHSprite* sprite, long width, long height, LHColor* start, LHColor* end,
                                        long stride, LHColor* key, LHColor* marker, unsigned long flags)
{
	sprite->Width = width;
	sprite->Height = height;
	LHPixel16* dst = (LHPixel16*)LHSys::TheSystem.mem.Alloc(width * height * sizeof(LHPixel16));
	if (dst == NULL)
		return LH_NO_MEMORY;
	sprite->PixelData = (uint8_t*)dst;
	for (; start < end; start += stride)
	{
		for (LHColor* src = start; src < start + width; src++, dst++)
		{
			if ((flags & LH_CONVERT_FLAGS_MARKER_TRANSPARENT) && *src == marker)
				*dst = LHSprite::TransparentColor16;
			else if (*src == key)
				*dst = LHSprite::TransparentColor16;
			else
				dst->Set(src);
		}
	}
	return LH_OK;
}

LH_RETURN LHConvert::CopySpriteIn24(LHSprite* sprite, long width, long height, LHColor* start, LHColor* end,
                                    long stride, LHColor* key, LHColor* marker, unsigned long flags)
{
	sprite->Width = width;
	sprite->Height = height;
	LHColor* dst = (LHColor*)LHSys::TheSystem.mem.Alloc(width * height * sizeof(LHColor));
	if (dst == NULL)
		return LH_NO_MEMORY;
	sprite->PixelData = (uint8_t*)dst;
	for (; start < end; start += stride)
	{
		for (LHColor* src = start; src < start + width; src++, dst++)
		{
			if ((flags & LH_CONVERT_FLAGS_MARKER_TRANSPARENT) && *src == marker)
				*dst = LHSprite::TransparentColor24;
			else if (*src == key)
				*dst = LHSprite::TransparentColor24;
			else
				*dst = *src;
		}
	}
	return LH_OK;
}
