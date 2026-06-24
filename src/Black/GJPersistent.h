#ifndef BW1_DECOMP_GJPERSISTENT_INCLUDED_H
#define BW1_DECOMP_GJPERSISTENT_INCLUDED_H

void __cdecl operator delete(void* block);

struct PropertyList;
class PersistentOwner;

struct PersistentName
{
    int field_0;
    char* data;
    int length;
    int capacity;

    ~PersistentName()
    {
        if (data != 0)
        {
            char* shared = data - 1;
            char count = *shared;
            if (count == 0 || count == -1)
            {
                ::operator delete(shared);
            }
            else
            {
                *shared = count - 1;
            }
        }
        data = 0;
        length = 0;
        capacity = 0;
    }
};

class Persistent
{
public:
    virtual void VirtualFunc();
    virtual void OnLoaded();
    virtual ~Persistent();
    virtual void DefineProperties(PropertyList* param_1);

private:
    PersistentOwner* m_owner;
    PersistentName* m_name;
};

class FloatProvider : public Persistent
{
public:
    virtual ~FloatProvider();
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_GJPERSISTENT_INCLUDED_H */
