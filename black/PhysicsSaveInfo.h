#ifndef BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H
#define BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H

#ifdef __cplusplus

// Forward Declares

struct GameOSFile;

struct PhysicsSaveInfo
{
    // Static methods

    // win1.41 005586c0 mac 1030f570 PhysicsSaveInfo::ReadInfo(GameOSFile &)
    void ReadInfo(GameOSFile& file);
};

#else // __cplusplus

// Forward Declares

struct GameOSFile;

// win1.41 005586c0 mac 1030f570 PhysicsSaveInfo::ReadInfo(GameOSFile &)
void __cdecl ReadInfo__15PhysicsSaveInfoFR10GameOSFile(struct GameOSFile* file) asm("?ReadInfo@PhysicsSaveInfo@@SAXAAVGameOSFile@@@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_PHYSICS_SAVE_INFO_INCLUDED_H */
