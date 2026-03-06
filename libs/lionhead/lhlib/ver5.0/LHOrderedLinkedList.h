#ifndef BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H

/// Every template of the form
///   template<typename T>
///   class OrderedNode<T> {
///     LHFastPointer<OrderedNode<T>> next;
///     T* payload;
///   };
///   template<typename T>
///   class LHOrderedLinkedList<T> {
///     LHFastPointer<OrderedNode<T>> head;
///     uint32_t count;
///     inline OrderedNode<T>* GetStart()
///     {
///       return head.get();
///     }
/// has the same structure

#include <stdint.h> /* For uin32_t */

#ifdef __cplusplus

template<typename T>
class OrderedNode {
  OrderedNode<T>* next;
  T* payload;
};
template<typename T>
class LHOrderedLinkedList {
  OrderedNode<T>* head;
  uint32_t count;
  inline OrderedNode<T>* GetStart()
  {
    return head.get();
  }
};

#else // __cplusplus

#define DECLARE_LH_ORDERED_LINKED_LIST(T)   \
struct OrderedNode__##T             \
{                                   \
  struct OrderedNode__##T* next;    \
  struct T* payload;                \
};                                  \
struct LHOrderedLinkedList__##T     \
{                                   \
  struct OrderedNode__##T* head;    \
  uint32_t count;                   \
};

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_ORDERED_LINKED_LIST_INCLUDED_H */
