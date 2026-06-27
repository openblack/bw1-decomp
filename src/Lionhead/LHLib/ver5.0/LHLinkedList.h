#ifndef BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H
#define BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H

#include <stdint.h> /* For uint32_t */
#include <stdlib.h> /* For malloc */

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

#endif /* BW1_DECOMP_LH_LINKED_LIST_INCLUDED_H */
