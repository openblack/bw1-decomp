#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

/// Every template of the form
///   template<typename T>
///   class LHLinkedNode<T> {
///     LHFastPointer<LHLinkedNode<T>> next;
///     LHFastPointer<T> payload;
///   };
///   template<typename T>
///   class LHLinkedList<T> {
///     LHFastPointer<LHLinkedNode<T>> head;
///     uint32_t count;
///     inline LHLinkedNode<T>* GetStart()
///     {
///       return head.get();
///     }
///   };
/// has the same structure

#include <stdint.h> /* For uin32_t */

#define DECLARE_LH_LINKED_LIST(T)   \
struct LHLinkedNode__##T            \
{                                   \
  struct LHLinkedNode__##T* next;   \
  struct T payload;                 \
};                                  \
struct LHLinkedList__##T            \
{                                   \
  struct LHLinkedNode__##T* head;   \
  uint32_t count;                   \
};                                  \
inline struct LHLinkedNode__##T* __fastcall GetStart__LHLinkedList__##T##Fv(struct LHLinkedList__##T* this) \
{                                                                                                           \
  return this->head;                                                                                        \
}

#define DECLARE_P_LH_LINKED_LIST(T) \
struct LHLinkedNode__p_##T          \
{                                   \
  struct LHLinkedNode__p_##T* next; \
  struct T* payload;                \
};                                  \
struct LHLinkedList__p_##T          \
{                                   \
  struct LHLinkedNode__p_##T* head; \
  uint32_t count;                   \
};                                  \
inline struct LHLinkedNode__p_##T* __fastcall GetStart__LHLinkedList__p_##T##Fv(struct LHLinkedList__p_##T* this) \
{                                                                                                                 \
  return this->head;                                                                                              \
}


#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
