#ifndef BW1_DECOMP_PERSISTENT_INCLUDED_H
#define BW1_DECOMP_PERSISTENT_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct PropertyList;

class Persistent
{
public:

    // Override methods

    // BW1W120 00580a10 BW1M100 102cb7a0 Persistent::VirtualFunc(void)
    virtual void VirtualFunc();
    // BW1W120 00580a20 BW1M100 102cb7e0 Persistent::OnLoaded(void)
    virtual void OnLoaded();
    // BW1W120 00580a40 BW1M100 102cbd80 Persistent::_dt(void)
    virtual ~Persistent();
    // BW1W120 00580a30 BW1M100 102cb810 Persistent::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

class FloatProvider: public Persistent
{
public:

    // Override methods

    // BW1W120 006b80a0 BW1M100 103e5a90 FloatProvider::_dt(void)
    virtual ~FloatProvider();
    // BW1W120 006b8090 BW1M100 103e5b20 FloatProvider::DefineProperties(PropertyList *)
    virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
