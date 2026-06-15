#ifndef _BW1_ASSERT_H_
#define _BW1_ASSERT_H_

#ifdef _MSC_VER
#if _MSC_VER == 1200

template<bool> struct STATIC_ASSERTION_FAILED;
template<> struct STATIC_ASSERTION_FAILED<true> {};
#define _STATIC_ASSERT_CAT_(a, b) a##b
#define _STATIC_ASSERT_CAT(a, b) _STATIC_ASSERT_CAT_(a, b)
#define static_assert(exp, message) typedef char _STATIC_ASSERT_CAT(_StaticAssertArray_, __LINE__)[sizeof(STATIC_ASSERTION_FAILED<(bool)(exp)>)]

#else // _MSC_VER == 1200
#include_next <assert.h>
#endif // _MSC_VER == 1200
#else // _MSC_VER
#include_next <assert.h>
#endif // _MSC_VER

#endif // _BW1_ASSERT_H_
