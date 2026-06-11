#ifndef BW1_DECOMP_PERSISTENT_INCLUDED_H
#define BW1_DECOMP_PERSISTENT_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct PropertyList;

class Persistent
{
public:

    // Override methods

    // win1.41 00580a10 mac 102cb7a0 Persistent::VirtualFunc(void)
    virtual void VirtualFunc();
    // win1.41 00580a20 mac 102cb7e0 Persistent::OnLoaded(void)
    virtual void OnLoaded();
    // win1.41 00580a40 mac 102cbd80 Persistent::_dt(void)
    virtual ~Persistent();
    // win1.41 00580a30 mac 102cb810 Persistent::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

class FloatProvider: public Persistent
{
public:

    // Override methods

    // win1.41 006b80a0 mac 103e5a90 FloatProvider::_dt(void)
    virtual ~FloatProvider();
    // win1.41 006b8090 mac 103e5b20 FloatProvider::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
