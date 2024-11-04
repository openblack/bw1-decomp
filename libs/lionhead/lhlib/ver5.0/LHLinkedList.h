#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

/// Every template of the form
///   template<typename T>
///   class LHLinkedNode<T> {
///     LHFastPointer<LHLinkedNode<T>> next;
///     T* payload;
///   };
///   template<typename T>
///   class LHLinkedList<T> {
///     LHFastPointer<LHLinkedNode<T>> head;
///     uint32_t count;
///     inline LHLinkedNode<T>* GetStart()
///     {
///       return head.get();
///     }
///     inline bool Add(T* val)
///     {
///       if (!val) return false;
///       LHLinkedNode<T>* node = new LHLinkedNode<T>(val);
///       node->next = head;
///       head = node;
///       ++count;
///       return true;
///     }
///   };
/// has the same structure

#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uin32_t */
#include <stdlib.h> /* For malloc */

#define DECLARE_LH_LINKED_LIST(T)   \
struct LHLinkedNode__##T            \
{                                   \
  struct LHLinkedNode__##T* next;   \
  struct T* payload;                \
};                                  \
struct LHLinkedList__##T            \
{                                   \
  struct LHLinkedNode__##T* head;   \
  uint32_t count;                   \
};                                  \
inline struct LHLinkedNode__##T* __fastcall GetStart__LHLinkedList__##T##Fv(struct LHLinkedList__##T* this)          \
{                                                                                                                    \
  return this->head;                                                                                                 \
}                                                                                                                    \
inline bool __fastcall Add__LHLinkedList__##T##FP##T(struct LHLinkedList__##T* this, const void* edx, struct T* val) \
{                                                                                                                    \
  if (val == NULL)                                                                                                   \
  {                                                                                                                  \
    return false;                                                                                                    \
  }                                                                                                                  \
  struct LHLinkedNode__##T* node = (struct LHLinkedNode__##T*)malloc(sizeof(struct LHLinkedNode__##T));              \
  node->payload = val;                                                                                               \
  node->next = this->head;                                                                                           \
  this->head = node;                                                                                                 \
  ++this->count;                                                                                                     \
  return true;                                                                                                       \
}

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
