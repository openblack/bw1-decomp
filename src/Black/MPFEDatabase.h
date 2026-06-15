#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

class MPFEDatabase
{
public:
    float progress_percentage; /* 0x4 */
    bool32_t populated;

    // Override methods

    // win1.41 0062e4f0 mac 103a35b0 MPFEDatabase::DatabaseError(void)
    virtual void DatabaseError();
    // win1.41 0062e510 mac 103a3520 MPFEDatabase::DatabaseComplete(void)
    virtual void DatabaseComplete();

    // Constructors

    // win1.41 0062e100 mac 103a3ce0 MPFEDatabase::MPFEDatabase(void)
    MPFEDatabase();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
