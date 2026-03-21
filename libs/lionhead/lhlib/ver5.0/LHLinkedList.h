#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <stdlib.h> /* For malloc */

#ifdef __cplusplus

template<typename T>
class LHLinkedNode {
public:
    LHLinkedNode<T>* next;
    T* payload;
};
template<typename T>
class LHLinkedList {
public:
    LHLinkedNode<T>* head;
    uint32_t count;
    inline LHLinkedNode<T>* GetStart()
    {
        return head.get();
    }
    inline bool Add(T* val)
    {
        if (!val) return false;
        LHLinkedNode<T>* node = new LHLinkedNode<T>(val);
        node->next = head;
        head = node;
        ++count;
        return true;
    }
    inline void Remove(T* val)
    {
        LHLinkedNode<T>* prev = NULL;
        LHLinkedNode<T>* node = head;
        while (node != NULL)
        {
            LHLinkedNode<T>* next = node->next;
            if (node->payload == val)
            {
                if (node == head)
                    head = next;
                else
                    prev->next = next;
                count--;
                delete node;
            }
            else
            {
                prev = node;
            }
            node = next;
        }
    }
    inline bool Contains(T* val)
    {
        for (LHLinkedNode<T>* node = head; node != NULL; node = node->next)
        {
            if (node->payload == val)
            {
                return true;
            }
        }
        return false;
    }
};

#else // __cplusplus

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

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
