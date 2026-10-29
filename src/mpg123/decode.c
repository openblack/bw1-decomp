/* 
 * Mpeg Layer-1,2,3 audio decoder 
 * ------------------------------
 * copyright (c) 1995,1996,1997 by Michael Hipp, All rights reserved.
 * See also 'README'
 *
 */

#include <stdlib.h>
#include <math.h>
#include <string.h>

#include "mpg123.h"

#define WRITE_SAMPLE(samples,sum,clip) \
  if( (sum) > 32767.0) { *(samples) = 0x7fff; (clip)++; } \
  else if( (sum) < -32768.0) { *(samples) = -0x8000; (clip)++; } \
  else { *(samples) = sum; }

int synth_1to1_8bit(real *bandPtr,int channel,unsigned char *samples)
{
  short samples_tmp[64];
  short *tmp1 = samples_tmp + channel;
  int i,ret;

  samples += channel;
  ret = synth_1to1(bandPtr,channel,(unsigned char *) samples_tmp);

  for(i=0;i<32;i++) {
    *samples = conv16to8[*tmp1>>4];
    samples += 2;
    tmp1 += 2;
  }

  return ret;
}

int synth_1to1_8bit_mono(real *bandPtr,unsigned char *samples)
{
  short samples_tmp[64];
  short *tmp1 = samples_tmp;
  int i,ret;

  ret = synth_1to1(bandPtr,0,(unsigned char *) samples_tmp);

  for(i=0;i<32;i++) {
    *samples++ = conv16to8[*tmp1>>4];
    *samples++ = conv16to8[*tmp1>>4];
    tmp1 += 2;
  }

  return ret;
}

int synth_1to1_mono(real *bandPtr,unsigned char *samples)
{
  int i,ret = synth_1to1(bandPtr,0,samples);
  for(i=0;i<32;i++) {
    ((short *)samples)[1] = ((short *)samples)[0];
    samples+=4;
  }
  return ret;
}


int synth_1to1(real *bandPtr,int channel,unsigned char *out)
{
  static real buffs[2][2][0x110];
  static int bo = 1;
  short *samples = (short *) out;

  real *b0,(*buf)[0x110];
  int clip = 0; 
  int bo1;
  static const int step = 2;

  if(!channel) {
    bo--;
    bo &= 0xf;
    buf = buffs[0];
  }
  else {
    samples++;
    buf = buffs[1];
  }

  if(bo & 0x1) {
    b0 = buf[0];
    bo1 = bo;
    dct64(buf[1]+((bo+1)&0xf),buf[0]+bo,bandPtr);
  }
  else {
    b0 = buf[1];
    bo1 = bo+1;
    dct64(buf[0]+bo,buf[1]+bo+1,bandPtr);
  }


  {
    register int j;
    real *window = decwin + 16 - bo1;
 
    for (j=16;j;j--,window+=0x10,samples+=step)
    {
      real sum;
      sum  = *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;
      sum += *window++ * *b0++;
      sum -= *window++ * *b0++;

      WRITE_SAMPLE(samples,sum,clip);
    }

    {
      real sum;
      sum  = window[0x0] * b0[0x0];
      sum += window[0x2] * b0[0x2];
      sum += window[0x4] * b0[0x4];
      sum += window[0x6] * b0[0x6];
      sum += window[0x8] * b0[0x8];
      sum += window[0xA] * b0[0xA];
      sum += window[0xC] * b0[0xC];
      sum += window[0xE] * b0[0xE];
      WRITE_SAMPLE(samples,sum,clip);
      b0-=0x10,window-=0x20,samples+=step;
    }
    window += bo1<<1;

    for (j=15;j;j--,b0-=0x20,window-=0x10,samples+=step)
    {
      real sum;
      sum = -*(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;
      sum -= *(--window) * *b0++;

      WRITE_SAMPLE(samples,sum,clip);
    }
  }

  return clip;
}


