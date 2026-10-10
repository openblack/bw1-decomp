/******
gutil.h
GameSpy C Engine SDK
  
Copyright 1999-2001 GameSpy Industries, Inc

18002 Skypark Circle
Irvine, California 92614
949.798.4200 (Tel)
949.798.4299 (Fax)
devsupport@gamespy.com

******

 Please see the GameSpy C Engine SDK documentation for more 
 information

******/

typedef unsigned char uchar;


void gs_encode ( uchar *ins, int size, uchar *result );
void gs_encrypt ( uchar *key, int key_len, uchar *buffer_ptr, int buffer_len );
