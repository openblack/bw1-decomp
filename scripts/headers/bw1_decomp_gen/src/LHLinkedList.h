#ifndef BLACKHACK_LH_LINKED_LIST_H
#define BLACKHACK_LH_LINKED_LIST_H

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
///   };
/// has the same structure

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
}


#endif // BLACKHACK_LH_LINKED_LIST_H
