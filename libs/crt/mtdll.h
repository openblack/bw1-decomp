#ifndef BW1_DECOMP_MTDLL_INCLUDED_H
#define BW1_DECOMP_MTDLL_INCLUDED_H

#include <assert.h>
#include <stdint.h>

struct _tiddata {
  unsigned long _tid; /* thread ID */
  unsigned long _thandle; /* thread handle */
  int _terrno;              /* errno value */
  unsigned long _tdoserrno; /* _doserrno value */
  unsigned int _fpds;       /* Floating Point data segment */
  unsigned long _holdrand;  /* rand() seed value */
  char *_token;             /* ptr to strtok() token */
  wchar_t *_wtoken;       /* ptr to wcstok() token */
  unsigned char *_mtoken; /* ptr to _mbstok() token */
  /* following pointers get malloc'd at runtime */
  char *_errmsg;   /* ptr to strerror()/_strerror() buff */
  char *_namebuf0; /* ptr to tmpnam() buffer */
  wchar_t *_wnamebuf0; /* ptr to _wtmpnam() buffer */
  char *_namebuf1;     /* ptr to tmpfile() buffer */
  wchar_t *_wnamebuf1; /* ptr to _wtmpfile() buffer */
  char *_asctimebuf;   /* ptr to asctime() buffer */
  wchar_t *_wasctimebuf; /* ptr to _wasctime() buffer */
  void *_gmtimebuf;      /* ptr to gmtime() structure */
  char *_cvtbuf;         /* ptr to ecvt()/fcvt buffer */
  /* following fields are needed by _beginthread code */
  void *_initaddr; /* initial user thread address */
  void *_initarg;  /* initial user thread argument */
  /* following three fields are needed to support signal handling and
   * runtime errors */
  void *_pxcptacttab;    /* ptr to exception-action table */
  void *_tpxcptinfoptrs; /* ptr to exception info pointers */
  int _tfpecode;         /* float point exception code */
  /* following field is needed by NLG routines */
  unsigned long _NLG_dwCode;
  /*
   * Per-Thread data needed by C++ Exception Handling
   */
  void *_terminate;    /* terminate() routine */
  void *_unexpected;   /* unexpected() routine */
  void *_translator;   /* S.E. translator */
  void *_curexception; /* current exception */
  void *_curcontext;   /* current exception context */
#if defined(_M_MRX000)
  void *_pFrameInfoChain;
  void *_pUnwindContext;
  void *_pExitContext;
  int _MipsPtdDelta;
  int _MipsPtdEpsilon;
#elif defined(_M_PPC)
  void *_pExitContext;
  void *_pUnwindContext;
  void *_pFrameInfoChain;
  int _FrameInfo[6];
#endif /* defined (_M_PPC) */
};
static_assert(sizeof(struct _tiddata) == 0x74, "Data type is of wrong size");

// win1.41 007d2318 mac inline _initptd(_tiddata*)
void __cdecl _initptd(struct _tiddata* data);

#endif /* BW1_DECOMP_MTDLL_INCLUDED_H */
