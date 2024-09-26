#ifndef BLACKHACK_LH_LIST_HEAD_H
#define BLACKHACK_LH_LIST_HEAD_H

// On ppc, there are two std::map for some reason
/// Every template of the form
///   template<typename T> // Must have T.next and must be T*
///   class LHListHead<T> {
///     LHFastPointer<T*> head;
///     uint32_t count;
///   };
/// has the same structure

#define DECLARE_LH_LIST_HEAD(T) \
struct LHListHead__##T          \
{                               \
  struct T* head;               \
  uint32_t count;               \
}

#endif  // BLACKHACK_LH_LIST_HEAD_H
